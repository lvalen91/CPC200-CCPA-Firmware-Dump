package cn.manstep.phonemirrorBox.BoxInterface;

import cn.manstep.phonemirrorBox.BoxInterface.C0735f;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.g */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0736g {
    /* JADX INFO: renamed from: a */
    public static int m5794a() {
        return C0735f.k.m5775d();
    }

    /* JADX INFO: renamed from: b */
    public static int m5795b() {
        return C0735f.k.m5776f();
    }

    /* JADX INFO: renamed from: c */
    public static int m5796c() {
        return m5797d(C0735f.k.m5776f(), C0735f.k.m5775d());
    }

    /* JADX INFO: renamed from: d */
    public static int m5797d(int i, int i2) {
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

    /* JADX INFO: renamed from: e */
    public static String m5798e(int i) {
        return i != 3 ? i != 4 ? i != 6 ? i != 7 ? "Unknown" : "CarLink" : "HiCar" : "AndroidAuto" : "CarPlay";
    }

    /* JADX INFO: renamed from: f */
    public static void m5799f(int i) {
        if (i == m5796c()) {
            return;
        }
        switch (i) {
            case 1:
                C0735f.k.m5773b(0);
                C0735f.k.m5774c(4);
                break;
            case 2:
                C0735f.k.m5774c(4);
                C0735f.k.m5773b(3);
                break;
            case 3:
                C0735f.k.m5774c(2);
                C0735f.k.m5773b(0);
                break;
            case 4:
                C0735f.k.m5774c(4);
                C0735f.k.m5773b(1);
                break;
            case 5:
                C0735f.k.m5774c(4);
                C0735f.k.m5773b(2);
                break;
            case 6:
                C0735f.k.m5774c(4);
                C0735f.k.m5773b(4);
                break;
            case 7:
                C0735f.k.m5774c(4);
                C0735f.k.m5773b(5);
                break;
            default:
                return;
        }
        if (C0733d.m5591i()) {
            C0733d.f4428l.m5707Y0();
        }
    }
}
