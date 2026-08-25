#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>
#include <termios.h>
#include <sys/select.h>
#include <time.h>

static void dump(const char *tag, struct termios *t) {
    printf("%s iflag=0x%08lx oflag=0x%08lx cflag=0x%08lx lflag=0x%08lx\n",
           tag,(unsigned long)t->c_iflag,(unsigned long)t->c_oflag,
           (unsigned long)t->c_cflag,(unsigned long)t->c_lflag);
    printf("%s   IGNBRK=%d BRKINT=%d IGNPAR=%d PARMRK=%d INPCK=%d ISTRIP=%d ICRNL=%d IXON=%d\n", tag,
        !!(t->c_iflag&IGNBRK),!!(t->c_iflag&BRKINT),!!(t->c_iflag&IGNPAR),!!(t->c_iflag&PARMRK),
        !!(t->c_iflag&INPCK),!!(t->c_iflag&ISTRIP),!!(t->c_iflag&ICRNL),!!(t->c_iflag&IXON));
    printf("%s   ICANON=%d ECHO=%d ISIG=%d IEXTEN=%d CREAD=%d CLOCAL=%d\n", tag,
        !!(t->c_lflag&ICANON),!!(t->c_lflag&ECHO),!!(t->c_lflag&ISIG),!!(t->c_lflag&IEXTEN),
        !!(t->c_cflag&CREAD),!!(t->c_cflag&CLOCAL));
}

int main(int argc, char **argv) {
    const char *dev = argc>1?argv[1]:"/dev/ttyS0";
    int fix = (argc>2 && !strcmp(argv[2],"fix"));
    int secs = argc>3?atoi(argv[3]):8;
    int fd = open(dev, O_RDWR|O_NOCTTY|O_NONBLOCK);
    if (fd<0){ perror("open"); return 1; }
    struct termios t;
    if (tcgetattr(fd,&t)){ perror("tcgetattr"); return 1; }
    dump("BEFORE",&t);
    if (fix) {
        t.c_iflag &= ~(IGNBRK|BRKINT|PARMRK|ISTRIP|INLCR|IGNCR|ICRNL|IXON|IGNPAR|INPCK);
        t.c_oflag &= ~OPOST;
        t.c_lflag &= ~(ECHO|ECHONL|ICANON|ISIG|IEXTEN);
        t.c_cflag |= (CREAD|CLOCAL|CS8);
        t.c_cflag &= ~(PARENB|CSTOPB);
        t.c_cc[VMIN]=0; t.c_cc[VTIME]=0;
        /* force a HARDWARE change so serial_core actually calls the driver's
           set_termios (tty_termios_hw_change compares c_cflag + speeds only) */
        cfsetispeed(&t,B9600); cfsetospeed(&t,B9600);
        if (tcsetattr(fd,TCSANOW,&t)) perror("tcsetattr(9600)");
        cfsetispeed(&t,B115200); cfsetospeed(&t,B115200);
        if (tcsetattr(fd,TCSANOW,&t)) perror("tcsetattr(115200)");
        struct termios v; tcgetattr(fd,&v); dump("AFTER ",&v);
    }
    printf("READING %s for %ds ...\n", dev, secs); fflush(stdout);
    time_t t0=time(NULL); long total=0; unsigned char buf[512];
    while (time(NULL)-t0 < secs) {
        fd_set r; FD_ZERO(&r); FD_SET(fd,&r);
        struct timeval tv={0,200000};
        if (select(fd+1,&r,NULL,NULL,&tv)>0) {
            int n=read(fd,buf,sizeof buf);
            if (n>0){ total+=n; printf("GOT %d bytes:",n);
                for(int i=0;i<n;i++) printf(" %02x", buf[i]);
                printf("  |"); for(int i=0;i<n;i++) putchar(buf[i]>=32&&buf[i]<127?buf[i]:'.');
                printf("|\n"); fflush(stdout); }
        }
    }
    printf("TOTAL %ld bytes\n", total);
    close(fd); return 0;
}
