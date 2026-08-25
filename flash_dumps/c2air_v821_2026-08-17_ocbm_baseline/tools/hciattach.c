/* Minimal hciattach for AIC8800 BT on Allwinner V821 (ttyS1 @ 500000, H4).
   Firmware/patch load is done in-kernel by aicbsp, so all that's needed is:
   set the port up, switch the line discipline to N_HCI, select the H4 proto,
   then hold the fd open (the attach lives only as long as this fd does). */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <fcntl.h>
#include <unistd.h>
#include <termios.h>
#include <sys/ioctl.h>
#include <sys/socket.h>

#define N_HCI            15
#define HCIUARTSETPROTO  _IOW('U', 200, int)
#define HCIUARTGETDEVICE _IOR('U', 202, int)
#define HCIUARTSETFLAGS  _IOW('U', 203, int)
#define HCI_UART_H4      0
#define AF_BLUETOOTH     31
#define BTPROTO_HCI      1
#define HCIDEVUP         _IOW('H', 201, int)

int main(int argc, char **argv) {
    const char *dev = argc > 1 ? argv[1] : "/dev/ttyS1";
    int flow = (argc > 2) ? atoi(argv[2]) : 1;     /* ly_bt_bdrate=500000, flowctrl=1 */
    int fd = open(dev, O_RDWR | O_NOCTTY);
    if (fd < 0) { perror("open"); return 1; }

    struct termios t;
    if (tcgetattr(fd, &t)) { perror("tcgetattr"); return 1; }
    cfmakeraw(&t);
    t.c_cflag |= CLOCAL | CREAD;
    if (flow) t.c_cflag |= CRTSCTS; else t.c_cflag &= ~CRTSCTS;
    cfsetispeed(&t, B500000); cfsetospeed(&t, B500000);
    if (tcsetattr(fd, TCSANOW, &t)) { perror("tcsetattr"); return 1; }
    tcflush(fd, TCIOFLUSH);
    printf("port %s raw 500000 8N1 flow=%d\n", dev, flow);

    int ld = N_HCI;
    if (ioctl(fd, TIOCSETD, &ld) < 0) { perror("TIOCSETD(N_HCI)"); return 1; }
    printf("line discipline -> N_HCI (%d)\n", N_HCI);

    int proto = HCI_UART_H4;
    if (ioctl(fd, HCIUARTSETPROTO, proto) < 0) { perror("HCIUARTSETPROTO(H4)"); return 1; }
    printf("proto -> H4\n");

    int id = 0;
    if (ioctl(fd, HCIUARTGETDEVICE, &id) < 0) perror("HCIUARTGETDEVICE (non-fatal)");
    else printf("attached as hci%d\n", id);

    int s = socket(AF_BLUETOOTH, SOCK_RAW, BTPROTO_HCI);
    if (s < 0) perror("bt socket (non-fatal)");
    else {
        if (ioctl(s, HCIDEVUP, id) < 0 && errno != EALREADY)
            fprintf(stderr, "HCIDEVUP: %s\n", strerror(errno));
        else printf("hci%d UP\n", id);
        close(s);
    }
    printf("holding attach open (pid %d)\n", getpid());
    fflush(stdout);
    if (argc > 3 && !strcmp(argv[3], "-t")) { sleep(atoi(argv[4] ? argv[4] : "10")); return 0; }
    for (;;) pause();
}
