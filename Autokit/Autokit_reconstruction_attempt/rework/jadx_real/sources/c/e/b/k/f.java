package c.e.b.k;

import c.e.b.k.e;
import c.e.b.k.m.b;
import com.yalantis.ucrop.view.CropImageView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class f extends l {
    public c.e.b.e u0;
    int w0;
    int x0;
    c.e.b.k.m.b q0 = new c.e.b.k.m.b(this);
    public c.e.b.k.m.e r0 = new c.e.b.k.m.e(this);
    protected b.InterfaceC0049b s0 = null;
    private boolean t0 = false;
    protected c.e.b.d v0 = new c.e.b.d();
    public int y0 = 0;
    public int z0 = 0;
    c[] A0 = new c[4];
    c[] B0 = new c[4];
    private int C0 = 257;
    private boolean D0 = false;
    private boolean E0 = false;
    private WeakReference<d> F0 = null;
    private WeakReference<d> G0 = null;
    private WeakReference<d> H0 = null;
    private WeakReference<d> I0 = null;
    public b.a J0 = new b.a();

    public static boolean A1(e eVar, b.InterfaceC0049b interfaceC0049b, b.a aVar, int i) {
        int i2;
        int i3;
        if (interfaceC0049b == null) {
            return false;
        }
        aVar.a = eVar.y();
        aVar.f1145b = eVar.O();
        aVar.f1146c = eVar.R();
        aVar.f1147d = eVar.v();
        aVar.i = false;
        aVar.j = i;
        boolean z = aVar.a == e.b.MATCH_CONSTRAINT;
        boolean z2 = aVar.f1145b == e.b.MATCH_CONSTRAINT;
        boolean z3 = z && eVar.U > CropImageView.DEFAULT_ASPECT_RATIO;
        boolean z4 = z2 && eVar.U > CropImageView.DEFAULT_ASPECT_RATIO;
        if (z && eVar.V(0) && eVar.n == 0 && !z3) {
            aVar.a = e.b.WRAP_CONTENT;
            if (z2 && eVar.o == 0) {
                aVar.a = e.b.FIXED;
            }
            z = false;
        }
        if (z2 && eVar.V(1) && eVar.o == 0 && !z4) {
            aVar.f1145b = e.b.WRAP_CONTENT;
            if (z && eVar.n == 0) {
                aVar.f1145b = e.b.FIXED;
            }
            z2 = false;
        }
        if (eVar.e0()) {
            aVar.a = e.b.FIXED;
            z = false;
        }
        if (eVar.f0()) {
            aVar.f1145b = e.b.FIXED;
            z2 = false;
        }
        if (z3) {
            if (eVar.p[0] == 4) {
                aVar.a = e.b.FIXED;
            } else if (!z2) {
                if (aVar.f1145b == e.b.FIXED) {
                    i3 = aVar.f1147d;
                } else {
                    aVar.a = e.b.WRAP_CONTENT;
                    interfaceC0049b.a(eVar, aVar);
                    i3 = aVar.f;
                }
                aVar.a = e.b.FIXED;
                int i4 = eVar.V;
                if (i4 == 0 || i4 == -1) {
                    aVar.f1146c = (int) (eVar.t() * i3);
                } else {
                    aVar.f1146c = (int) (eVar.t() / i3);
                }
            }
        }
        if (z4) {
            if (eVar.p[1] == 4) {
                aVar.f1145b = e.b.FIXED;
            } else if (!z) {
                if (aVar.a == e.b.FIXED) {
                    i2 = aVar.f1146c;
                } else {
                    aVar.f1145b = e.b.WRAP_CONTENT;
                    interfaceC0049b.a(eVar, aVar);
                    i2 = aVar.e;
                }
                aVar.f1145b = e.b.FIXED;
                int i5 = eVar.V;
                if (i5 == 0 || i5 == -1) {
                    aVar.f1147d = (int) (i2 / eVar.t());
                } else {
                    aVar.f1147d = (int) (i2 * eVar.t());
                }
            }
        }
        interfaceC0049b.a(eVar, aVar);
        eVar.U0(aVar.e);
        eVar.v0(aVar.f);
        eVar.u0(aVar.h);
        eVar.k0(aVar.g);
        aVar.j = b.a.k;
        return aVar.i;
    }

    private void C1() {
        this.y0 = 0;
        this.z0 = 0;
    }

    private void g1(e eVar) {
        int i = this.y0 + 1;
        c[] cVarArr = this.B0;
        if (i >= cVarArr.length) {
            this.B0 = (c[]) Arrays.copyOf(cVarArr, cVarArr.length * 2);
        }
        this.B0[this.y0] = new c(eVar, 0, x1());
        this.y0++;
    }

    private void j1(d dVar, c.e.b.i iVar) {
        this.v0.h(iVar, this.v0.q(dVar), 0, 5);
    }

    private void k1(d dVar, c.e.b.i iVar) {
        this.v0.h(this.v0.q(dVar), iVar, 0, 5);
    }

    private void l1(e eVar) {
        int i = this.z0 + 1;
        c[] cVarArr = this.A0;
        if (i >= cVarArr.length) {
            this.A0 = (c[]) Arrays.copyOf(cVarArr, cVarArr.length * 2);
        }
        this.A0[this.z0] = new c(eVar, 1, x1());
        this.z0++;
    }

    public boolean B1(int i) {
        return (this.C0 & i) == i;
    }

    public void D1(b.InterfaceC0049b interfaceC0049b) {
        this.s0 = interfaceC0049b;
        this.r0.n(interfaceC0049b);
    }

    public void E1(int i) {
        this.C0 = i;
        c.e.b.d.r = B1(512);
    }

    public void F1(boolean z) {
        this.t0 = z;
    }

    public void G1(c.e.b.d dVar, boolean[] zArr) {
        zArr[2] = false;
        boolean zB1 = B1(64);
        Z0(dVar, zB1);
        int size = this.p0.size();
        for (int i = 0; i < size; i++) {
            this.p0.get(i).Z0(dVar, zB1);
        }
    }

    public void H1() {
        this.q0.e(this);
    }

    @Override // c.e.b.k.e
    public void Y0(boolean z, boolean z2) {
        super.Y0(z, z2);
        int size = this.p0.size();
        for (int i = 0; i < size; i++) {
            this.p0.get(i).Y0(z, z2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:156:0x0316 A[PHI: r0 r13
      0x0316: PHI (r0v20 boolean) = (r0v19 boolean), (r0v22 boolean), (r0v22 boolean), (r0v22 boolean) binds: [B:143:0x02d8, B:151:0x02fe, B:152:0x0300, B:154:0x0306] A[DONT_GENERATE, DONT_INLINE]
      0x0316: PHI (r13v9 boolean) = (r13v8 boolean), (r13v11 boolean), (r13v11 boolean), (r13v11 boolean) binds: [B:143:0x02d8, B:151:0x02fe, B:152:0x0300, B:154:0x0306] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8, types: [boolean] */
    @Override // c.e.b.k.l
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void b1() {
        int i;
        int i2;
        boolean z;
        boolean z2;
        ?? r6;
        e.b bVar;
        this.W = 0;
        this.X = 0;
        this.D0 = false;
        this.E0 = false;
        int size = this.p0.size();
        int iMax = Math.max(0, R());
        int iMax2 = Math.max(0, v());
        e.b[] bVarArr = this.Q;
        e.b bVar2 = bVarArr[1];
        e.b bVar3 = bVarArr[0];
        c.e.b.e eVar = this.u0;
        if (eVar != null) {
            eVar.z++;
        }
        if (j.b(this.C0, 1)) {
            c.e.b.k.m.h.h(this, r1());
            for (int i3 = 0; i3 < size; i3++) {
                e eVar2 = this.p0.get(i3);
                if (eVar2.d0() && !(eVar2 instanceof g) && !(eVar2 instanceof a) && !(eVar2 instanceof k) && !eVar2.c0()) {
                    e.b bVarS = eVar2.s(0);
                    e.b bVarS2 = eVar2.s(1);
                    e.b bVar4 = e.b.MATCH_CONSTRAINT;
                    if (!(bVarS == bVar4 && eVar2.n != 1 && bVarS2 == bVar4 && eVar2.o != 1)) {
                        A1(eVar2, this.s0, new b.a(), b.a.k);
                    }
                }
            }
        }
        if (size <= 2 || !((bVar3 == (bVar = e.b.WRAP_CONTENT) || bVar2 == bVar) && j.b(this.C0, 1024) && c.e.b.k.m.i.c(this, r1()))) {
            i = iMax2;
            i2 = iMax;
            z = false;
        } else {
            if (bVar3 == e.b.WRAP_CONTENT) {
                if (iMax >= R() || iMax <= 0) {
                    iMax = R();
                } else {
                    U0(iMax);
                    this.D0 = true;
                }
            }
            if (bVar2 == e.b.WRAP_CONTENT) {
                if (iMax2 >= v() || iMax2 <= 0) {
                    iMax2 = v();
                } else {
                    v0(iMax2);
                    this.E0 = true;
                }
            }
            i = iMax2;
            i2 = iMax;
            z = true;
        }
        boolean z3 = B1(64) || B1(128);
        c.e.b.d dVar = this.v0;
        dVar.h = false;
        dVar.i = false;
        if (this.C0 != 0 && z3) {
            dVar.i = true;
        }
        ArrayList<e> arrayList = this.p0;
        boolean z4 = y() == e.b.WRAP_CONTENT || O() == e.b.WRAP_CONTENT;
        C1();
        for (int i4 = 0; i4 < size; i4++) {
            e eVar3 = this.p0.get(i4);
            if (eVar3 instanceof l) {
                ((l) eVar3).b1();
            }
        }
        boolean zB1 = B1(64);
        boolean z5 = z;
        int i5 = 0;
        boolean zF1 = true;
        while (zF1) {
            int i6 = i5 + 1;
            try {
                this.v0.D();
                C1();
                k(this.v0);
                for (int i7 = 0; i7 < size; i7++) {
                    this.p0.get(i7).k(this.v0);
                }
                zF1 = f1(this.v0);
                if (this.F0 != null && this.F0.get() != null) {
                    k1(this.F0.get(), this.v0.q(this.G));
                    this.F0 = null;
                }
                if (this.H0 != null && this.H0.get() != null) {
                    j1(this.H0.get(), this.v0.q(this.I));
                    this.H0 = null;
                }
                if (this.G0 != null && this.G0.get() != null) {
                    k1(this.G0.get(), this.v0.q(this.F));
                    this.G0 = null;
                }
                if (this.I0 != null && this.I0.get() != null) {
                    j1(this.I0.get(), this.v0.q(this.H));
                    this.I0 = null;
                }
                if (zF1) {
                    this.v0.z();
                }
            } catch (Exception e) {
                e.printStackTrace();
                System.out.println("EXCEPTION : " + e);
            }
            if (zF1) {
                G1(this.v0, j.a);
            } else {
                Z0(this.v0, zB1);
                for (int i8 = 0; i8 < size; i8++) {
                    this.p0.get(i8).Z0(this.v0, zB1);
                }
            }
            if (z4 && i6 < 8 && j.a[2]) {
                int iMax3 = 0;
                int iMax4 = 0;
                for (int i9 = 0; i9 < size; i9++) {
                    e eVar4 = this.p0.get(i9);
                    iMax3 = Math.max(iMax3, eVar4.W + eVar4.R());
                    iMax4 = Math.max(iMax4, eVar4.X + eVar4.v());
                }
                int iMax5 = Math.max(this.Z, iMax3);
                int iMax6 = Math.max(this.a0, iMax4);
                if (bVar3 != e.b.WRAP_CONTENT || R() >= iMax5) {
                    z2 = false;
                } else {
                    U0(iMax5);
                    this.Q[0] = e.b.WRAP_CONTENT;
                    z2 = true;
                    z5 = true;
                }
                if (bVar2 == e.b.WRAP_CONTENT && v() < iMax6) {
                    v0(iMax6);
                    this.Q[1] = e.b.WRAP_CONTENT;
                    z2 = true;
                    z5 = true;
                }
            } else {
                z2 = false;
            }
            int iMax7 = Math.max(this.Z, R());
            if (iMax7 > R()) {
                U0(iMax7);
                this.Q[0] = e.b.FIXED;
                z2 = true;
                z5 = true;
            }
            int iMax8 = Math.max(this.a0, v());
            if (iMax8 > v()) {
                v0(iMax8);
                r6 = 1;
                this.Q[1] = e.b.FIXED;
                z2 = true;
                z5 = true;
            } else {
                r6 = 1;
            }
            if (z5) {
                zF1 = z2;
            } else {
                if (this.Q[0] == e.b.WRAP_CONTENT && i2 > 0 && R() > i2) {
                    this.D0 = r6;
                    this.Q[0] = e.b.FIXED;
                    U0(i2);
                    z2 = true;
                    z5 = true;
                }
                if (this.Q[r6] == e.b.WRAP_CONTENT && i > 0 && v() > i) {
                    this.E0 = r6;
                    this.Q[r6] = e.b.FIXED;
                    v0(i);
                    z5 = true;
                    zF1 = true;
                }
            }
            i5 = i6;
        }
        this.p0 = arrayList;
        if (z5) {
            e.b[] bVarArr2 = this.Q;
            bVarArr2[0] = bVar3;
            bVarArr2[1] = bVar2;
        }
        j0(this.v0.v());
    }

    void e1(e eVar, int i) {
        if (i == 0) {
            g1(eVar);
        } else if (i == 1) {
            l1(eVar);
        }
    }

    public boolean f1(c.e.b.d dVar) {
        boolean zB1 = B1(64);
        g(dVar, zB1);
        int size = this.p0.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            e eVar = this.p0.get(i);
            eVar.C0(0, false);
            eVar.C0(1, false);
            if (eVar instanceof a) {
                z = true;
            }
        }
        if (z) {
            for (int i2 = 0; i2 < size; i2++) {
                e eVar2 = this.p0.get(i2);
                if (eVar2 instanceof a) {
                    ((a) eVar2).h1();
                }
            }
        }
        for (int i3 = 0; i3 < size; i3++) {
            e eVar3 = this.p0.get(i3);
            if (eVar3.f()) {
                eVar3.g(dVar, zB1);
            }
        }
        if (c.e.b.d.r) {
            HashSet<e> hashSet = new HashSet<>();
            for (int i4 = 0; i4 < size; i4++) {
                e eVar4 = this.p0.get(i4);
                if (!eVar4.f()) {
                    hashSet.add(eVar4);
                }
            }
            e(this, dVar, hashSet, y() == e.b.WRAP_CONTENT ? 0 : 1, false);
            for (e eVar5 : hashSet) {
                j.a(this, dVar, eVar5);
                eVar5.g(dVar, zB1);
            }
        } else {
            for (int i5 = 0; i5 < size; i5++) {
                e eVar6 = this.p0.get(i5);
                if (eVar6 instanceof f) {
                    e.b[] bVarArr = eVar6.Q;
                    e.b bVar = bVarArr[0];
                    e.b bVar2 = bVarArr[1];
                    if (bVar == e.b.WRAP_CONTENT) {
                        eVar6.z0(e.b.FIXED);
                    }
                    if (bVar2 == e.b.WRAP_CONTENT) {
                        eVar6.Q0(e.b.FIXED);
                    }
                    eVar6.g(dVar, zB1);
                    if (bVar == e.b.WRAP_CONTENT) {
                        eVar6.z0(bVar);
                    }
                    if (bVar2 == e.b.WRAP_CONTENT) {
                        eVar6.Q0(bVar2);
                    }
                } else {
                    j.a(this, dVar, eVar6);
                    if (!eVar6.f()) {
                        eVar6.g(dVar, zB1);
                    }
                }
            }
        }
        if (this.y0 > 0) {
            b.b(this, dVar, null, 0);
        }
        if (this.z0 > 0) {
            b.b(this, dVar, null, 1);
        }
        return true;
    }

    @Override // c.e.b.k.l, c.e.b.k.e
    public void h0() {
        this.v0.D();
        this.w0 = 0;
        this.x0 = 0;
        super.h0();
    }

    public void h1(d dVar) {
        WeakReference<d> weakReference = this.I0;
        if (weakReference == null || weakReference.get() == null || dVar.d() > this.I0.get().d()) {
            this.I0 = new WeakReference<>(dVar);
        }
    }

    public void i1(d dVar) {
        WeakReference<d> weakReference = this.G0;
        if (weakReference == null || weakReference.get() == null || dVar.d() > this.G0.get().d()) {
            this.G0 = new WeakReference<>(dVar);
        }
    }

    void m1(d dVar) {
        WeakReference<d> weakReference = this.H0;
        if (weakReference == null || weakReference.get() == null || dVar.d() > this.H0.get().d()) {
            this.H0 = new WeakReference<>(dVar);
        }
    }

    void n1(d dVar) {
        WeakReference<d> weakReference = this.F0;
        if (weakReference == null || weakReference.get() == null || dVar.d() > this.F0.get().d()) {
            this.F0 = new WeakReference<>(dVar);
        }
    }

    public boolean o1(boolean z) {
        return this.r0.f(z);
    }

    public boolean p1(boolean z) {
        return this.r0.g(z);
    }

    public boolean q1(boolean z, int i) {
        return this.r0.h(z, i);
    }

    public b.InterfaceC0049b r1() {
        return this.s0;
    }

    public int s1() {
        return this.C0;
    }

    public c.e.b.d t1() {
        return this.v0;
    }

    public void u1() {
        this.r0.j();
    }

    public void v1() {
        this.r0.k();
    }

    public boolean w1() {
        return this.E0;
    }

    public boolean x1() {
        return this.t0;
    }

    public boolean y1() {
        return this.D0;
    }

    public long z1(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        this.w0 = i8;
        this.x0 = i9;
        return this.q0.d(this, i, i8, i9, i2, i3, i4, i5, i6, i7);
    }
}
