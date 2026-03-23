package cn.manstep.phonemirrorBox.BoxInterface;

import cn.manstep.phonemirrorBox.BoxInterface.f;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class g {
    public static int a() {
        return f.k.d();
    }

    public static int b() {
        return f.k.f();
    }

    public static int c() {
        return d(f.k.f(), f.k.d());
    }

    public static int d(int i, int i2) {
        if (i2 == 0) {
            if (i == 2) {
                return 3;
            }
            if (i == 4) {
                return 1;
            }
        }
        if (i != 4) {
            return 0;
        }
        if (i2 == 1) {
            return 4;
        }
        if (i2 == 2) {
            return 5;
        }
        if (i2 == 3) {
            return 2;
        }
        if (i2 != 4) {
            return i2 != 5 ? 0 : 7;
        }
        return 6;
    }

    public static String e(int i) {
        return i != 3 ? i != 4 ? i != 6 ? i != 7 ? "Unknown" : "CarLink" : "HiCar" : "AndroidAuto" : "CarPlay";
    }

    public static void f(int i) {
        if (i == c()) {
            return;
        }
        switch (i) {
            case 1:
                f.k.b(0);
                f.k.c(4);
                break;
            case 2:
                f.k.c(4);
                f.k.b(3);
                break;
            case 3:
                f.k.c(2);
                f.k.b(0);
                break;
            case 4:
                f.k.c(4);
                f.k.b(1);
                break;
            case 5:
                f.k.c(4);
                f.k.b(2);
                break;
            case 6:
                f.k.c(4);
                f.k.b(4);
                break;
            case 7:
                f.k.c(4);
                f.k.b(5);
                break;
            default:
                return;
        }
        if (d.i()) {
            d.l.Y0();
        }
    }
}
