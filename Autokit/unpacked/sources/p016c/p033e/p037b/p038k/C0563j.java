package p016c.p033e.p037b.p038k;

import p016c.p033e.p037b.C0547d;
import p016c.p033e.p037b.p038k.C0558e;

/* JADX INFO: renamed from: c.e.b.k.j */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0563j {

    /* JADX INFO: renamed from: a */
    static boolean[] f3611a = new boolean[3];

    /* JADX INFO: renamed from: a */
    static void m4587a(C0559f c0559f, C0547d c0547d, C0558e c0558e) {
        c0558e.f3557l = -1;
        c0558e.f3559m = -1;
        if (c0559f.f3525Q[0] != C0558e.b.WRAP_CONTENT && c0558e.f3525Q[0] == C0558e.b.MATCH_PARENT) {
            int i = c0558e.f3514F.f3494g;
            int iM4481R = c0559f.m4481R() - c0558e.f3516H.f3494g;
            C0557d c0557d = c0558e.f3514F;
            c0557d.f3496i = c0547d.m4375q(c0557d);
            C0557d c0557d2 = c0558e.f3516H;
            c0557d2.f3496i = c0547d.m4375q(c0557d2);
            c0547d.m4366f(c0558e.f3514F.f3496i, i);
            c0547d.m4366f(c0558e.f3516H.f3496i, iM4481R);
            c0558e.f3557l = 2;
            c0558e.m4538y0(i, iM4481R);
        }
        if (c0559f.f3525Q[1] == C0558e.b.WRAP_CONTENT || c0558e.f3525Q[1] != C0558e.b.MATCH_PARENT) {
            return;
        }
        int i2 = c0558e.f3515G.f3494g;
        int iM4531v = c0559f.m4531v() - c0558e.f3517I.f3494g;
        C0557d c0557d3 = c0558e.f3515G;
        c0557d3.f3496i = c0547d.m4375q(c0557d3);
        C0557d c0557d4 = c0558e.f3517I;
        c0557d4.f3496i = c0547d.m4375q(c0557d4);
        c0547d.m4366f(c0558e.f3515G.f3496i, i2);
        c0547d.m4366f(c0558e.f3517I.f3496i, iM4531v);
        if (c0558e.f3533Y > 0 || c0558e.m4479Q() == 8) {
            C0557d c0557d5 = c0558e.f3518J;
            c0557d5.f3496i = c0547d.m4375q(c0557d5);
            c0547d.m4366f(c0558e.f3518J.f3496i, c0558e.f3533Y + i2);
        }
        c0558e.f3559m = 2;
        c0558e.m4478P0(i2, iM4531v);
    }

    /* JADX INFO: renamed from: b */
    public static final boolean m4588b(int i, int i2) {
        return (i & i2) == i2;
    }
}
