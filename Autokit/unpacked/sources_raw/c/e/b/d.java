package c.e.b;

import c.e.b.i;
import c.e.b.k.d;
import com.yalantis.ucrop.view.CropImageView;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class d {
    public static boolean r = false;
    public static boolean s = true;
    public static boolean t = true;
    public static boolean u = true;
    public static boolean v = false;
    private static int w = 1000;
    public static e x;
    public static long y;
    public static long z;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f1111d;
    c.e.b.b[] g;
    final c n;
    private a q;
    public boolean a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f1109b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private HashMap<String, i> f1110c = null;
    private int e = 32;
    private int f = 32;
    public boolean h = false;
    public boolean i = false;
    private boolean[] j = new boolean[32];
    int k = 1;
    int l = 0;
    private int m = 32;
    private i[] o = new i[w];
    private int p = 0;

    interface a {
        void a(a aVar);

        void b(i iVar);

        i c(d dVar, boolean[] zArr);

        void clear();

        i getKey();

        boolean isEmpty();
    }

    class b extends c.e.b.b {
        public b(d dVar, c cVar) {
            this.e = new j(this, cVar);
        }
    }

    public d() {
        this.g = null;
        this.g = new c.e.b.b[32];
        C();
        c cVar = new c();
        this.n = cVar;
        this.f1111d = new h(cVar);
        if (v) {
            this.q = new b(this, this.n);
        } else {
            this.q = new c.e.b.b(this.n);
        }
    }

    private final int B(a aVar, boolean z2) {
        e eVar = x;
        if (eVar != null) {
            eVar.h++;
        }
        for (int i = 0; i < this.k; i++) {
            this.j[i] = false;
        }
        boolean z3 = false;
        int i2 = 0;
        while (!z3) {
            e eVar2 = x;
            if (eVar2 != null) {
                eVar2.i++;
            }
            i2++;
            if (i2 >= this.k * 2) {
                return i2;
            }
            if (aVar.getKey() != null) {
                this.j[aVar.getKey().f1119c] = true;
            }
            i iVarC = aVar.c(this, this.j);
            if (iVarC != null) {
                boolean[] zArr = this.j;
                int i3 = iVarC.f1119c;
                if (zArr[i3]) {
                    return i2;
                }
                zArr[i3] = true;
            }
            if (iVarC != null) {
                float f = Float.MAX_VALUE;
                int i4 = -1;
                for (int i5 = 0; i5 < this.l; i5++) {
                    c.e.b.b bVar = this.g[i5];
                    if (bVar.a.j != i.a.UNRESTRICTED && !bVar.f && bVar.t(iVarC)) {
                        float fG = bVar.e.g(iVarC);
                        if (fG < CropImageView.DEFAULT_ASPECT_RATIO) {
                            float f2 = (-bVar.f1103b) / fG;
                            if (f2 < f) {
                                i4 = i5;
                                f = f2;
                            }
                        }
                    }
                }
                if (i4 > -1) {
                    c.e.b.b bVar2 = this.g[i4];
                    bVar2.a.f1120d = -1;
                    e eVar3 = x;
                    if (eVar3 != null) {
                        eVar3.j++;
                    }
                    bVar2.x(iVarC);
                    i iVar = bVar2.a;
                    iVar.f1120d = i4;
                    iVar.g(this, bVar2);
                }
            } else {
                z3 = true;
            }
        }
        return i2;
    }

    private void C() {
        int i = 0;
        if (v) {
            while (i < this.l) {
                c.e.b.b bVar = this.g[i];
                if (bVar != null) {
                    this.n.a.a(bVar);
                }
                this.g[i] = null;
                i++;
            }
            return;
        }
        while (i < this.l) {
            c.e.b.b bVar2 = this.g[i];
            if (bVar2 != null) {
                this.n.f1106b.a(bVar2);
            }
            this.g[i] = null;
            i++;
        }
    }

    private i a(i.a aVar, String str) {
        i iVarB = this.n.f1107c.b();
        if (iVarB == null) {
            iVarB = new i(aVar, str);
            iVarB.f(aVar, str);
        } else {
            iVarB.d();
            iVarB.f(aVar, str);
        }
        int i = this.p;
        int i2 = w;
        if (i >= i2) {
            int i3 = i2 * 2;
            w = i3;
            this.o = (i[]) Arrays.copyOf(this.o, i3);
        }
        i[] iVarArr = this.o;
        int i4 = this.p;
        this.p = i4 + 1;
        iVarArr[i4] = iVarB;
        return iVarB;
    }

    private final void l(c.e.b.b bVar) {
        int i;
        if (t && bVar.f) {
            bVar.a.e(this, bVar.f1103b);
        } else {
            c.e.b.b[] bVarArr = this.g;
            int i2 = this.l;
            bVarArr[i2] = bVar;
            i iVar = bVar.a;
            iVar.f1120d = i2;
            this.l = i2 + 1;
            iVar.g(this, bVar);
        }
        if (t && this.a) {
            int i3 = 0;
            while (i3 < this.l) {
                if (this.g[i3] == null) {
                    System.out.println("WTF");
                }
                c.e.b.b[] bVarArr2 = this.g;
                if (bVarArr2[i3] != null && bVarArr2[i3].f) {
                    c.e.b.b bVar2 = bVarArr2[i3];
                    bVar2.a.e(this, bVar2.f1103b);
                    if (v) {
                        this.n.a.a(bVar2);
                    } else {
                        this.n.f1106b.a(bVar2);
                    }
                    this.g[i3] = null;
                    int i4 = i3 + 1;
                    int i5 = i4;
                    while (true) {
                        i = this.l;
                        if (i4 >= i) {
                            break;
                        }
                        c.e.b.b[] bVarArr3 = this.g;
                        int i6 = i4 - 1;
                        bVarArr3[i6] = bVarArr3[i4];
                        if (bVarArr3[i6].a.f1120d == i4) {
                            bVarArr3[i6].a.f1120d = i6;
                        }
                        i5 = i4;
                        i4++;
                    }
                    if (i5 < i) {
                        this.g[i5] = null;
                    }
                    this.l--;
                    i3--;
                }
                i3++;
            }
            this.a = false;
        }
    }

    private void n() {
        for (int i = 0; i < this.l; i++) {
            c.e.b.b bVar = this.g[i];
            bVar.a.f = bVar.f1103b;
        }
    }

    public static c.e.b.b s(d dVar, i iVar, i iVar2, float f) {
        c.e.b.b bVarR = dVar.r();
        bVarR.j(iVar, iVar2, f);
        return bVarR;
    }

    private int u(a aVar) {
        boolean z2;
        int i = 0;
        while (true) {
            if (i >= this.l) {
                z2 = false;
                break;
            }
            c.e.b.b[] bVarArr = this.g;
            if (bVarArr[i].a.j != i.a.UNRESTRICTED && bVarArr[i].f1103b < CropImageView.DEFAULT_ASPECT_RATIO) {
                z2 = true;
                break;
            }
            i++;
        }
        if (!z2) {
            return 0;
        }
        boolean z3 = false;
        int i2 = 0;
        while (!z3) {
            e eVar = x;
            if (eVar != null) {
                eVar.k++;
            }
            i2++;
            float f = Float.MAX_VALUE;
            int i3 = -1;
            int i4 = -1;
            int i5 = 0;
            for (int i6 = 0; i6 < this.l; i6++) {
                c.e.b.b bVar = this.g[i6];
                if (bVar.a.j != i.a.UNRESTRICTED && !bVar.f && bVar.f1103b < CropImageView.DEFAULT_ASPECT_RATIO) {
                    int i7 = 9;
                    if (u) {
                        int iK = bVar.e.k();
                        int i8 = 0;
                        while (i8 < iK) {
                            i iVarF = bVar.e.f(i8);
                            float fG = bVar.e.g(iVarF);
                            if (fG > CropImageView.DEFAULT_ASPECT_RATIO) {
                                int i9 = 0;
                                while (i9 < i7) {
                                    float f2 = iVarF.h[i9] / fG;
                                    if ((f2 < f && i9 == i5) || i9 > i5) {
                                        i4 = iVarF.f1119c;
                                        i5 = i9;
                                        i3 = i6;
                                        f = f2;
                                    }
                                    i9++;
                                    i7 = 9;
                                }
                            }
                            i8++;
                            i7 = 9;
                        }
                    } else {
                        for (int i10 = 1; i10 < this.k; i10++) {
                            i iVar = this.n.f1108d[i10];
                            float fG2 = bVar.e.g(iVar);
                            if (fG2 > CropImageView.DEFAULT_ASPECT_RATIO) {
                                for (int i11 = 0; i11 < 9; i11++) {
                                    float f3 = iVar.h[i11] / fG2;
                                    if ((f3 < f && i11 == i5) || i11 > i5) {
                                        i4 = i10;
                                        i5 = i11;
                                        i3 = i6;
                                        f = f3;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            if (i3 != -1) {
                c.e.b.b bVar2 = this.g[i3];
                bVar2.a.f1120d = -1;
                e eVar2 = x;
                if (eVar2 != null) {
                    eVar2.j++;
                }
                bVar2.x(this.n.f1108d[i4]);
                i iVar2 = bVar2.a;
                iVar2.f1120d = i3;
                iVar2.g(this, bVar2);
            } else {
                z3 = true;
            }
            if (i2 > this.k / 2) {
                z3 = true;
            }
        }
        return i2;
    }

    public static e w() {
        return x;
    }

    private void y() {
        int i = this.e * 2;
        this.e = i;
        this.g = (c.e.b.b[]) Arrays.copyOf(this.g, i);
        c cVar = this.n;
        cVar.f1108d = (i[]) Arrays.copyOf(cVar.f1108d, this.e);
        int i2 = this.e;
        this.j = new boolean[i2];
        this.f = i2;
        this.m = i2;
        e eVar = x;
        if (eVar != null) {
            eVar.f1114d++;
            eVar.o = Math.max(eVar.o, i2);
            e eVar2 = x;
            eVar2.x = eVar2.o;
        }
    }

    void A(a aVar) {
        e eVar = x;
        if (eVar != null) {
            eVar.t++;
            eVar.u = Math.max(eVar.u, this.k);
            e eVar2 = x;
            eVar2.v = Math.max(eVar2.v, this.l);
        }
        u(aVar);
        B(aVar, false);
        n();
    }

    public void D() {
        c cVar;
        int i = 0;
        while (true) {
            cVar = this.n;
            i[] iVarArr = cVar.f1108d;
            if (i >= iVarArr.length) {
                break;
            }
            i iVar = iVarArr[i];
            if (iVar != null) {
                iVar.d();
            }
            i++;
        }
        cVar.f1107c.c(this.o, this.p);
        this.p = 0;
        Arrays.fill(this.n.f1108d, (Object) null);
        HashMap<String, i> map = this.f1110c;
        if (map != null) {
            map.clear();
        }
        this.f1109b = 0;
        this.f1111d.clear();
        this.k = 1;
        for (int i2 = 0; i2 < this.l; i2++) {
            c.e.b.b[] bVarArr = this.g;
            if (bVarArr[i2] != null) {
                bVarArr[i2].f1104c = false;
            }
        }
        C();
        this.l = 0;
        if (v) {
            this.q = new b(this, this.n);
        } else {
            this.q = new c.e.b.b(this.n);
        }
    }

    public void b(c.e.b.k.e eVar, c.e.b.k.e eVar2, float f, int i) {
        i iVarQ = q(eVar.m(d.b.LEFT));
        i iVarQ2 = q(eVar.m(d.b.TOP));
        i iVarQ3 = q(eVar.m(d.b.RIGHT));
        i iVarQ4 = q(eVar.m(d.b.BOTTOM));
        i iVarQ5 = q(eVar2.m(d.b.LEFT));
        i iVarQ6 = q(eVar2.m(d.b.TOP));
        i iVarQ7 = q(eVar2.m(d.b.RIGHT));
        i iVarQ8 = q(eVar2.m(d.b.BOTTOM));
        c.e.b.b bVarR = r();
        double d2 = f;
        double dSin = Math.sin(d2);
        double d3 = i;
        Double.isNaN(d3);
        bVarR.q(iVarQ2, iVarQ4, iVarQ6, iVarQ8, (float) (dSin * d3));
        d(bVarR);
        c.e.b.b bVarR2 = r();
        double dCos = Math.cos(d2);
        Double.isNaN(d3);
        bVarR2.q(iVarQ, iVarQ3, iVarQ5, iVarQ7, (float) (dCos * d3));
        d(bVarR2);
    }

    public void c(i iVar, i iVar2, int i, float f, i iVar3, i iVar4, int i2, int i3) {
        c.e.b.b bVarR = r();
        bVarR.h(iVar, iVar2, i, f, iVar3, iVar4, i2);
        if (i3 != 8) {
            bVarR.d(this, i3);
        }
        d(bVarR);
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0098  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void d(c.e.b.b bVar) {
        i iVarV;
        if (bVar == null) {
            return;
        }
        e eVar = x;
        if (eVar != null) {
            eVar.f++;
            if (bVar.f) {
                eVar.g++;
            }
        }
        boolean z2 = true;
        if (this.l + 1 >= this.m || this.k + 1 >= this.f) {
            y();
        }
        boolean z3 = false;
        if (!bVar.f) {
            bVar.D(this);
            if (bVar.isEmpty()) {
                return;
            }
            bVar.r();
            if (bVar.f(this)) {
                i iVarP = p();
                bVar.a = iVarP;
                int i = this.l;
                l(bVar);
                if (this.l == i + 1) {
                    this.q.a(bVar);
                    B(this.q, true);
                    if (iVarP.f1120d == -1) {
                        if (bVar.a == iVarP && (iVarV = bVar.v(iVarP)) != null) {
                            e eVar2 = x;
                            if (eVar2 != null) {
                                eVar2.j++;
                            }
                            bVar.x(iVarV);
                        }
                        if (!bVar.f) {
                            bVar.a.g(this, bVar);
                        }
                        if (v) {
                            this.n.a.a(bVar);
                        } else {
                            this.n.f1106b.a(bVar);
                        }
                        this.l--;
                    }
                } else {
                    z2 = false;
                }
                if (!bVar.s()) {
                    return;
                } else {
                    z3 = z2;
                }
            }
        }
        if (z3) {
            return;
        }
        l(bVar);
    }

    public c.e.b.b e(i iVar, i iVar2, int i, int i2) {
        if (s && i2 == 8 && iVar2.g && iVar.f1120d == -1) {
            iVar.e(this, iVar2.f + i);
            return null;
        }
        c.e.b.b bVarR = r();
        bVarR.n(iVar, iVar2, i);
        if (i2 != 8) {
            bVarR.d(this, i2);
        }
        d(bVarR);
        return bVarR;
    }

    public void f(i iVar, int i) {
        if (s && iVar.f1120d == -1) {
            float f = i;
            iVar.e(this, f);
            for (int i2 = 0; i2 < this.f1109b + 1; i2++) {
                i iVar2 = this.n.f1108d[i2];
                if (iVar2 != null && iVar2.n && iVar2.o == iVar.f1119c) {
                    iVar2.e(this, iVar2.p + f);
                }
            }
            return;
        }
        int i3 = iVar.f1120d;
        if (i3 == -1) {
            c.e.b.b bVarR = r();
            bVarR.i(iVar, i);
            d(bVarR);
            return;
        }
        c.e.b.b bVar = this.g[i3];
        if (bVar.f) {
            bVar.f1103b = i;
            return;
        }
        if (bVar.e.k() == 0) {
            bVar.f = true;
            bVar.f1103b = i;
        } else {
            c.e.b.b bVarR2 = r();
            bVarR2.m(iVar, i);
            d(bVarR2);
        }
    }

    public void g(i iVar, i iVar2, int i, boolean z2) {
        c.e.b.b bVarR = r();
        i iVarT = t();
        iVarT.e = 0;
        bVarR.o(iVar, iVar2, iVarT, i);
        d(bVarR);
    }

    public void h(i iVar, i iVar2, int i, int i2) {
        c.e.b.b bVarR = r();
        i iVarT = t();
        iVarT.e = 0;
        bVarR.o(iVar, iVar2, iVarT, i);
        if (i2 != 8) {
            m(bVarR, (int) (bVarR.e.g(iVarT) * (-1.0f)), i2);
        }
        d(bVarR);
    }

    public void i(i iVar, i iVar2, int i, boolean z2) {
        c.e.b.b bVarR = r();
        i iVarT = t();
        iVarT.e = 0;
        bVarR.p(iVar, iVar2, iVarT, i);
        d(bVarR);
    }

    public void j(i iVar, i iVar2, int i, int i2) {
        c.e.b.b bVarR = r();
        i iVarT = t();
        iVarT.e = 0;
        bVarR.p(iVar, iVar2, iVarT, i);
        if (i2 != 8) {
            m(bVarR, (int) (bVarR.e.g(iVarT) * (-1.0f)), i2);
        }
        d(bVarR);
    }

    public void k(i iVar, i iVar2, i iVar3, i iVar4, float f, int i) {
        c.e.b.b bVarR = r();
        bVarR.k(iVar, iVar2, iVar3, iVar4, f);
        if (i != 8) {
            bVarR.d(this, i);
        }
        d(bVarR);
    }

    void m(c.e.b.b bVar, int i, int i2) {
        bVar.e(o(i2, null), i);
    }

    public i o(int i, String str) {
        e eVar = x;
        if (eVar != null) {
            eVar.l++;
        }
        if (this.k + 1 >= this.f) {
            y();
        }
        i iVarA = a(i.a.ERROR, str);
        int i2 = this.f1109b + 1;
        this.f1109b = i2;
        this.k++;
        iVarA.f1119c = i2;
        iVarA.e = i;
        this.n.f1108d[i2] = iVarA;
        this.f1111d.b(iVarA);
        return iVarA;
    }

    public i p() {
        e eVar = x;
        if (eVar != null) {
            eVar.n++;
        }
        if (this.k + 1 >= this.f) {
            y();
        }
        i iVarA = a(i.a.SLACK, null);
        int i = this.f1109b + 1;
        this.f1109b = i;
        this.k++;
        iVarA.f1119c = i;
        this.n.f1108d[i] = iVarA;
        return iVarA;
    }

    public i q(Object obj) {
        i iVarH = null;
        if (obj == null) {
            return null;
        }
        if (this.k + 1 >= this.f) {
            y();
        }
        if (obj instanceof c.e.b.k.d) {
            c.e.b.k.d dVar = (c.e.b.k.d) obj;
            iVarH = dVar.h();
            if (iVarH == null) {
                dVar.r(this.n);
                iVarH = dVar.h();
            }
            int i = iVarH.f1119c;
            if (i == -1 || i > this.f1109b || this.n.f1108d[i] == null) {
                if (iVarH.f1119c != -1) {
                    iVarH.d();
                }
                int i2 = this.f1109b + 1;
                this.f1109b = i2;
                this.k++;
                iVarH.f1119c = i2;
                iVarH.j = i.a.UNRESTRICTED;
                this.n.f1108d[i2] = iVarH;
            }
        }
        return iVarH;
    }

    public c.e.b.b r() {
        c.e.b.b bVarB;
        if (v) {
            bVarB = this.n.a.b();
            if (bVarB == null) {
                bVarB = new b(this, this.n);
                z++;
            } else {
                bVarB.y();
            }
        } else {
            bVarB = this.n.f1106b.b();
            if (bVarB == null) {
                bVarB = new c.e.b.b(this.n);
                y++;
            } else {
                bVarB.y();
            }
        }
        i.b();
        return bVarB;
    }

    public i t() {
        e eVar = x;
        if (eVar != null) {
            eVar.m++;
        }
        if (this.k + 1 >= this.f) {
            y();
        }
        i iVarA = a(i.a.SLACK, null);
        int i = this.f1109b + 1;
        this.f1109b = i;
        this.k++;
        iVarA.f1119c = i;
        this.n.f1108d[i] = iVarA;
        return iVarA;
    }

    public c v() {
        return this.n;
    }

    public int x(Object obj) {
        i iVarH = ((c.e.b.k.d) obj).h();
        if (iVarH != null) {
            return (int) (iVarH.f + 0.5f);
        }
        return 0;
    }

    public void z() {
        e eVar = x;
        if (eVar != null) {
            eVar.e++;
        }
        if (this.f1111d.isEmpty()) {
            n();
            return;
        }
        if (!this.h && !this.i) {
            A(this.f1111d);
            return;
        }
        e eVar2 = x;
        if (eVar2 != null) {
            eVar2.q++;
        }
        boolean z2 = false;
        int i = 0;
        while (true) {
            if (i >= this.l) {
                z2 = true;
                break;
            } else if (!this.g[i].f) {
                break;
            } else {
                i++;
            }
        }
        if (!z2) {
            A(this.f1111d);
            return;
        }
        e eVar3 = x;
        if (eVar3 != null) {
            eVar3.p++;
        }
        n();
    }
}
