package c.e.b.k;

import c.e.b.k.e;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class j {
    static boolean[] a = new boolean[3];

    static void a(f fVar, c.e.b.d dVar, e eVar) {
        eVar.l = -1;
        eVar.m = -1;
        if (fVar.Q[0] != e.b.WRAP_CONTENT && eVar.Q[0] == e.b.MATCH_PARENT) {
            int i = eVar.F.g;
            int iR = fVar.R() - eVar.H.g;
            d dVar2 = eVar.F;
            dVar2.i = dVar.q(dVar2);
            d dVar3 = eVar.H;
            dVar3.i = dVar.q(dVar3);
            dVar.f(eVar.F.i, i);
            dVar.f(eVar.H.i, iR);
            eVar.l = 2;
            eVar.y0(i, iR);
        }
        if (fVar.Q[1] == e.b.WRAP_CONTENT || eVar.Q[1] != e.b.MATCH_PARENT) {
            return;
        }
        int i2 = eVar.G.g;
        int iV = fVar.v() - eVar.I.g;
        d dVar4 = eVar.G;
        dVar4.i = dVar.q(dVar4);
        d dVar5 = eVar.I;
        dVar5.i = dVar.q(dVar5);
        dVar.f(eVar.G.i, i2);
        dVar.f(eVar.I.i, iV);
        if (eVar.Y > 0 || eVar.Q() == 8) {
            d dVar6 = eVar.J;
            dVar6.i = dVar.q(dVar6);
            dVar.f(eVar.J.i, eVar.Y + i2);
        }
        eVar.m = 2;
        eVar.P0(i2, iV);
    }

    public static final boolean b(int i, int i2) {
        return (i & i2) == i2;
    }
}
