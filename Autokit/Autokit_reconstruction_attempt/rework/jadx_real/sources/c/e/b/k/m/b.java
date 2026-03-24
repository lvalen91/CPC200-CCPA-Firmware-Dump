package c.e.b.k.m;

import c.e.b.k.d;
import c.e.b.k.e;
import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class b {
    private final ArrayList<c.e.b.k.e> a = new ArrayList<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f1143b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c.e.b.k.f f1144c;

    public static class a {
        public static int k = 0;
        public static int l = 1;
        public static int m = 2;
        public e.b a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public e.b f1145b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1146c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f1147d;
        public int e;
        public int f;
        public int g;
        public boolean h;
        public boolean i;
        public int j;
    }

    /* JADX INFO: renamed from: c.e.b.k.m.b$b, reason: collision with other inner class name */
    public interface InterfaceC0049b {
        void a(c.e.b.k.e eVar, a aVar);

        void b();
    }

    public b(c.e.b.k.f fVar) {
        this.f1144c = fVar;
    }

    private boolean a(InterfaceC0049b interfaceC0049b, c.e.b.k.e eVar, int i) {
        this.f1143b.a = eVar.y();
        this.f1143b.f1145b = eVar.O();
        this.f1143b.f1146c = eVar.R();
        this.f1143b.f1147d = eVar.v();
        a aVar = this.f1143b;
        aVar.i = false;
        aVar.j = i;
        boolean z = aVar.a == e.b.MATCH_CONSTRAINT;
        boolean z2 = this.f1143b.f1145b == e.b.MATCH_CONSTRAINT;
        boolean z3 = z && eVar.U > CropImageView.DEFAULT_ASPECT_RATIO;
        boolean z4 = z2 && eVar.U > CropImageView.DEFAULT_ASPECT_RATIO;
        if (z3 && eVar.p[0] == 4) {
            this.f1143b.a = e.b.FIXED;
        }
        if (z4 && eVar.p[1] == 4) {
            this.f1143b.f1145b = e.b.FIXED;
        }
        interfaceC0049b.a(eVar, this.f1143b);
        eVar.U0(this.f1143b.e);
        eVar.v0(this.f1143b.f);
        eVar.u0(this.f1143b.h);
        eVar.k0(this.f1143b.g);
        a aVar2 = this.f1143b;
        aVar2.j = a.k;
        return aVar2.i;
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x009e A[PHI: r9
      0x009e: PHI (r9v3 boolean) = (r9v2 boolean), (r9v2 boolean), (r9v2 boolean), (r9v5 boolean), (r9v5 boolean) binds: [B:32:0x0062, B:34:0x0068, B:36:0x006c, B:57:0x009b, B:55:0x0094] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00b2 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void b(c.e.b.k.f fVar) {
        l lVar;
        n nVar;
        int size = fVar.p0.size();
        boolean zB1 = fVar.B1(64);
        InterfaceC0049b interfaceC0049bR1 = fVar.r1();
        for (int i = 0; i < size; i++) {
            c.e.b.k.e eVar = fVar.p0.get(i);
            if (!(eVar instanceof c.e.b.k.g) && !(eVar instanceof c.e.b.k.a) && !eVar.c0() && (!zB1 || (lVar = eVar.f1138d) == null || (nVar = eVar.e) == null || !lVar.e.j || !nVar.e.j)) {
                e.b bVarS = eVar.s(0);
                boolean z = true;
                e.b bVarS2 = eVar.s(1);
                e.b bVar = e.b.MATCH_CONSTRAINT;
                boolean z2 = bVarS == bVar && eVar.n != 1 && bVarS2 == bVar && eVar.o != 1;
                if (z2 || !fVar.B1(1) || (eVar instanceof c.e.b.k.k)) {
                    z = z2;
                    if (z) {
                        a(interfaceC0049bR1, eVar, a.k);
                        c.e.b.e eVar2 = fVar.u0;
                        if (eVar2 != null) {
                            eVar2.a++;
                        }
                    }
                } else {
                    e.b bVar2 = e.b.MATCH_CONSTRAINT;
                    if (bVarS == bVar2 && eVar.n == 0 && bVarS2 != bVar2 && !eVar.Z()) {
                        z2 = true;
                    }
                    e.b bVar3 = e.b.MATCH_CONSTRAINT;
                    if (bVarS2 == bVar3 && eVar.o == 0 && bVarS != bVar3 && !eVar.Z()) {
                        z2 = true;
                    }
                    e.b bVar4 = e.b.MATCH_CONSTRAINT;
                    if ((bVarS != bVar4 && bVarS2 != bVar4) || eVar.U <= CropImageView.DEFAULT_ASPECT_RATIO) {
                    }
                    if (z) {
                    }
                }
            }
        }
        interfaceC0049bR1.b();
    }

    private void c(c.e.b.k.f fVar, String str, int i, int i2) {
        int iG = fVar.G();
        int iF = fVar.F();
        fVar.K0(0);
        fVar.J0(0);
        fVar.U0(i);
        fVar.v0(i2);
        fVar.K0(iG);
        fVar.J0(iF);
        this.f1144c.b1();
    }

    public long d(c.e.b.k.f fVar, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        boolean zQ1;
        int i10;
        int i11;
        boolean z;
        boolean z2;
        boolean z3;
        int i12;
        InterfaceC0049b interfaceC0049b;
        int i13;
        int i14;
        int i15;
        boolean z4;
        c.e.b.e eVar;
        InterfaceC0049b interfaceC0049bR1 = fVar.r1();
        int size = fVar.p0.size();
        int iR = fVar.R();
        int iV = fVar.v();
        boolean zB = c.e.b.k.j.b(i, 128);
        boolean z5 = zB || c.e.b.k.j.b(i, 64);
        if (z5) {
            for (int i16 = 0; i16 < size; i16++) {
                c.e.b.k.e eVar2 = fVar.p0.get(i16);
                boolean z6 = (eVar2.y() == e.b.MATCH_CONSTRAINT) && (eVar2.O() == e.b.MATCH_CONSTRAINT) && eVar2.t() > CropImageView.DEFAULT_ASPECT_RATIO;
                if ((eVar2.Z() && z6) || ((eVar2.b0() && z6) || (eVar2 instanceof c.e.b.k.k) || eVar2.Z() || eVar2.b0())) {
                    z5 = false;
                    break;
                }
            }
        }
        if (z5 && (eVar = c.e.b.d.x) != null) {
            eVar.f1113c++;
        }
        boolean z7 = z5 & ((i4 == 1073741824 && i6 == 1073741824) || zB);
        if (z7) {
            int iMin = Math.min(fVar.E(), i5);
            int iMin2 = Math.min(fVar.D(), i7);
            if (i4 == 1073741824 && fVar.R() != iMin) {
                fVar.U0(iMin);
                fVar.u1();
            }
            if (i6 == 1073741824 && fVar.v() != iMin2) {
                fVar.v0(iMin2);
                fVar.u1();
            }
            if (i4 == 1073741824 && i6 == 1073741824) {
                zQ1 = fVar.o1(zB);
                i10 = 2;
            } else {
                boolean zP1 = fVar.p1(zB);
                if (i4 == 1073741824) {
                    zP1 &= fVar.q1(zB, 0);
                    i10 = 1;
                } else {
                    i10 = 0;
                }
                if (i6 == 1073741824) {
                    zQ1 = fVar.q1(zB, 1) & zP1;
                    i10++;
                } else {
                    zQ1 = zP1;
                }
            }
            if (zQ1) {
                fVar.Y0(i4 == 1073741824, i6 == 1073741824);
            }
        } else {
            zQ1 = false;
            i10 = 0;
        }
        if (zQ1 && i10 == 2) {
            return 0L;
        }
        int iS1 = fVar.s1();
        if (size > 0) {
            b(fVar);
        }
        e(fVar);
        int size2 = this.a.size();
        if (size > 0) {
            c(fVar, "First pass", iR, iV);
        }
        if (size2 > 0) {
            boolean z8 = fVar.y() == e.b.WRAP_CONTENT;
            boolean z9 = fVar.O() == e.b.WRAP_CONTENT;
            int iMax = Math.max(fVar.R(), this.f1144c.G());
            int iMax2 = Math.max(fVar.v(), this.f1144c.F());
            int i17 = 0;
            boolean zD1 = false;
            while (i17 < size2) {
                c.e.b.k.e eVar3 = this.a.get(i17);
                if (eVar3 instanceof c.e.b.k.k) {
                    int iR2 = eVar3.R();
                    i13 = iS1;
                    int iV2 = eVar3.v();
                    i14 = iR;
                    boolean zA = a(interfaceC0049bR1, eVar3, a.l) | zD1;
                    c.e.b.e eVar4 = fVar.u0;
                    i15 = iV;
                    if (eVar4 != null) {
                        eVar4.f1112b++;
                    }
                    int iR3 = eVar3.R();
                    int iV3 = eVar3.v();
                    if (iR3 != iR2) {
                        eVar3.U0(iR3);
                        if (z8 && eVar3.K() > iMax) {
                            iMax = Math.max(iMax, eVar3.K() + eVar3.m(d.b.RIGHT).e());
                        }
                        z4 = true;
                    } else {
                        z4 = zA;
                    }
                    if (iV3 != iV2) {
                        eVar3.v0(iV3);
                        if (z9 && eVar3.p() > iMax2) {
                            iMax2 = Math.max(iMax2, eVar3.p() + eVar3.m(d.b.BOTTOM).e());
                        }
                        z4 = true;
                    }
                    zD1 = z4 | ((c.e.b.k.k) eVar3).d1();
                } else {
                    i13 = iS1;
                    i14 = iR;
                    i15 = iV;
                }
                i17++;
                iS1 = i13;
                iR = i14;
                iV = i15;
            }
            int i18 = iS1;
            int i19 = iR;
            int i20 = iV;
            int i21 = 0;
            int i22 = 2;
            while (i21 < i22) {
                int i23 = 0;
                while (i23 < size2) {
                    c.e.b.k.e eVar5 = this.a.get(i23);
                    if (((eVar5 instanceof c.e.b.k.h) && !(eVar5 instanceof c.e.b.k.k)) || (eVar5 instanceof c.e.b.k.g) || eVar5.Q() == 8 || ((z7 && eVar5.f1138d.e.j && eVar5.e.e.j) || (eVar5 instanceof c.e.b.k.k))) {
                        z3 = z7;
                        i12 = size2;
                        interfaceC0049b = interfaceC0049bR1;
                    } else {
                        int iR4 = eVar5.R();
                        int iV4 = eVar5.v();
                        int iN = eVar5.n();
                        int i24 = a.l;
                        z3 = z7;
                        if (i21 == 1) {
                            i24 = a.m;
                        }
                        boolean zA2 = a(interfaceC0049bR1, eVar5, i24) | zD1;
                        c.e.b.e eVar6 = fVar.u0;
                        i12 = size2;
                        interfaceC0049b = interfaceC0049bR1;
                        if (eVar6 != null) {
                            eVar6.f1112b++;
                        }
                        int iR5 = eVar5.R();
                        int iV5 = eVar5.v();
                        if (iR5 != iR4) {
                            eVar5.U0(iR5);
                            if (z8 && eVar5.K() > iMax) {
                                iMax = Math.max(iMax, eVar5.K() + eVar5.m(d.b.RIGHT).e());
                            }
                            zA2 = true;
                        }
                        if (iV5 != iV4) {
                            eVar5.v0(iV5);
                            if (z9 && eVar5.p() > iMax2) {
                                iMax2 = Math.max(iMax2, eVar5.p() + eVar5.m(d.b.BOTTOM).e());
                            }
                            zA2 = true;
                        }
                        zD1 = (!eVar5.U() || iN == eVar5.n()) ? zA2 : true;
                    }
                    i23++;
                    size2 = i12;
                    interfaceC0049bR1 = interfaceC0049b;
                    z7 = z3;
                }
                boolean z10 = z7;
                int i25 = size2;
                InterfaceC0049b interfaceC0049b2 = interfaceC0049bR1;
                if (!zD1) {
                    break;
                }
                c(fVar, "intermediate pass", i19, i20);
                i21++;
                interfaceC0049bR1 = interfaceC0049b2;
                z7 = z10;
                i22 = 2;
                zD1 = false;
                size2 = i25;
            }
            if (zD1) {
                c(fVar, "2nd pass", i19, i20);
                if (fVar.R() < iMax) {
                    fVar.U0(iMax);
                    z = true;
                } else {
                    z = false;
                }
                if (fVar.v() < iMax2) {
                    fVar.v0(iMax2);
                    z2 = true;
                } else {
                    z2 = z;
                }
                if (z2) {
                    c(fVar, "3rd pass", i19, i20);
                }
            }
            i11 = i18;
        } else {
            i11 = iS1;
        }
        fVar.E1(i11);
        return 0L;
    }

    public void e(c.e.b.k.f fVar) {
        this.a.clear();
        int size = fVar.p0.size();
        for (int i = 0; i < size; i++) {
            c.e.b.k.e eVar = fVar.p0.get(i);
            if (eVar.y() == e.b.MATCH_CONSTRAINT || eVar.O() == e.b.MATCH_CONSTRAINT) {
                this.a.add(eVar);
            }
        }
        fVar.u1();
    }
}
