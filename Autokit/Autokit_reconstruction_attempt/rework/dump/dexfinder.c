#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>
#include <errno.h>

int main(int argc, char *argv[]) {
    if (argc < 2) { fprintf(stderr, "Usage: %s <pid>\n", argv[0]); return 1; }
    
    int pid = atoi(argv[1]);
    char maps_path[256], mem_path[256];
    snprintf(maps_path, sizeof(maps_path), "/proc/%d/maps", pid);
    snprintf(mem_path, sizeof(mem_path), "/proc/%d/mem", pid);
    
    FILE *maps = fopen(maps_path, "r");
    if (!maps) { perror("fopen maps"); return 1; }
    
    int mem_fd = open(mem_path, O_RDONLY);
    if (mem_fd < 0) { perror("open mem"); return 1; }
    
    char line[512];
    unsigned char buf[8];
    int found = 0;
    
    while (fgets(line, sizeof(line), maps)) {
        unsigned long long start, end;
        char perms[8];
        if (sscanf(line, "%llx-%llx %s", &start, &end, perms) != 3) continue;
        if (perms[0] != 'r') continue;
        
        unsigned long long size = end - start;
        if (size < 112 || size > 256*1024*1024) continue;
        
        if (lseek(mem_fd, (off_t)start, SEEK_SET) < 0) continue;
        if (read(mem_fd, buf, 8) != 8) continue;
        
        // Check for "dex\n035\0" or "dex\n036\0" etc
        if (buf[0] == 'd' && buf[1] == 'e' && buf[2] == 'x' && buf[3] == '\n' &&
            buf[4] == '0' && buf[5] == '3') {
            // Read DEX file_size at offset 32
            unsigned int dex_size = 0;
            if (lseek(mem_fd, (off_t)(start + 32), SEEK_SET) >= 0) {
                read(mem_fd, &dex_size, 4);
            }
            printf("DEX at 0x%llx size_field=%u region_size=%llu perms=%s\n", start, dex_size, size, perms);
            
            // Dump it
            char outpath[256];
            snprintf(outpath, sizeof(outpath), "/data/local/tmp/dumped_dex_%d_%llx.dex", found, start);
            FILE *out = fopen(outpath, "wb");
            if (out && dex_size > 0 && dex_size <= size) {
                unsigned char *data = malloc(dex_size);
                if (data) {
                    lseek(mem_fd, (off_t)start, SEEK_SET);
                    size_t total = 0;
                    while (total < dex_size) {
                        ssize_t n = read(mem_fd, data + total, dex_size - total > 65536 ? 65536 : dex_size - total);
                        if (n <= 0) break;
                        total += n;
                    }
                    fwrite(data, 1, total, out);
                    printf("  -> dumped %zu bytes to %s\n", total, outpath);
                    free(data);
                }
                fclose(out);
            }
            found++;
        }
    }
    
    close(mem_fd);
    fclose(maps);
    printf("Total DEX found: %d\n", found);
    return 0;
}
