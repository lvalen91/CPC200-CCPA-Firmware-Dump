package c.e.b.k.m;

import c.e.b.k.e;
import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class c extends p {
    ArrayList<p> k;
    private int l;

    public c(c.e.b.k.e eVar, int i) {
        super(eVar);
        this.k = new ArrayList<>();
        this.f = i;
        q();
    }

    private void q() {
        c.e.b.k.e eVar;
        c.e.b.k.e eVar2 = this.f1163b;
        c.e.b.k.e eVarJ = eVar2.J(this.f);
        while (true) {
            c.e.b.k.e eVar3 = eVarJ;
            eVar = eVar2;
            eVar2 = eVar3;
            if (eVar2 == null) {
                break;
            } else {
                eVarJ = eVar2.J(this.f);
            }
        }
        this.f1163b = eVar;
        this.k.add(eVar.L(this.f));
        c.e.b.k.e eVarH = eVar.H(this.f);
        while (eVarH != null) {
            this.k.add(eVarH.L(this.f));
            eVarH = eVarH.H(this.f);
        }
        for (p pVar : this.k) {
            int i = this.f;
            if (i == 0) {
                pVar.f1163b.f1136b = this;
            } else if (i == 1) {
                pVar.f1163b.f1137c = this;
            }
        }
        if ((this.f == 0 && ((c.e.b.k.f) this.f1163b.I()).x1()) && this.k.size() > 1) {
            ArrayList<p> arrayList = this.k;
            this.f1163b = arrayList.get(arrayList.size() - 1).f1163b;
        }
        this.l = this.f == 0 ? this.f1163b.x() : this.f1163b.N();
    }

    private c.e.b.k.e r() {
        for (int i = 0; i < this.k.size(); i++) {
            p pVar = this.k.get(i);
            if (pVar.f1163b.Q() != 8) {
                return pVar.f1163b;
            }
        }
        return null;
    }

    private c.e.b.k.e s() {
        for (int size = this.k.size() - 1; size >= 0; size--) {
            p pVar = this.k.get(size);
            if (pVar.f1163b.Q() != 8) {
                return pVar.f1163b;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x01c8 A[PHI: r7 r19 r20 r21
      0x01c8: PHI (r7v61 int) = (r7v59 int), (r7v67 int) binds: [B:116:0x01c6, B:107:0x019e] A[DONT_GENERATE, DONT_INLINE]
      0x01c8: PHI (r19v3 float) = (r19v2 float), (r19v5 float) binds: [B:116:0x01c6, B:107:0x019e] A[DONT_GENERATE, DONT_INLINE]
      0x01c8: PHI (r20v5 int) = (r20v4 int), (r20v7 int) binds: [B:116:0x01c6, B:107:0x019e] A[DONT_GENERATE, DONT_INLINE]
      0x01c8: PHI (r21v6 int) = (r21v5 int), (r21v8 int) binds: [B:116:0x01c6, B:107:0x019e] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // c.e.b.k.m.p, c.e.b.k.m.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(d dVar) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        float f;
        int i6;
        int i7;
        int i8;
        float f2;
        int i9;
        int iMax;
        if (this.h.j && this.i.j) {
            c.e.b.k.e eVarI = this.f1163b.I();
            boolean zX1 = (eVarI == null || !(eVarI instanceof c.e.b.k.f)) ? false : ((c.e.b.k.f) eVarI).x1();
            int i10 = this.i.g - this.h.g;
            int size = this.k.size();
            int i11 = 0;
            while (true) {
                i = -1;
                i2 = 8;
                if (i11 >= size) {
                    i11 = -1;
                    break;
                } else if (this.k.get(i11).f1163b.Q() != 8) {
                    break;
                } else {
                    i11++;
                }
            }
            int i12 = size - 1;
            int i13 = i12;
            while (true) {
                if (i13 < 0) {
                    break;
                }
                if (this.k.get(i13).f1163b.Q() != 8) {
                    i = i13;
                    break;
                }
                i13--;
            }
            int i14 = 0;
            while (i14 < 2) {
                int i15 = 0;
                i4 = 0;
                i5 = 0;
                int i16 = 0;
                f = CropImageView.DEFAULT_ASPECT_RATIO;
                while (i15 < size) {
                    p pVar = this.k.get(i15);
                    if (pVar.f1163b.Q() != i2) {
                        i16++;
                        if (i15 > 0 && i15 >= i11) {
                            i4 += pVar.h.f;
                        }
                        int i17 = pVar.e.g;
                        boolean z = pVar.f1165d != e.b.MATCH_CONSTRAINT;
                        if (!z) {
                            if (pVar.a == 1 && i14 == 0) {
                                i17 = pVar.e.m;
                                i5++;
                            } else if (pVar.e.j) {
                            }
                            z = true;
                        } else {
                            if (this.f == 0 && !pVar.f1163b.f1138d.e.j) {
                                return;
                            }
                            if (this.f == 1 && !pVar.f1163b.e.e.j) {
                                return;
                            }
                        }
                        if (z) {
                            i4 += i17;
                        } else {
                            i5++;
                            float f3 = pVar.f1163b.j0[this.f];
                            if (f3 >= CropImageView.DEFAULT_ASPECT_RATIO) {
                                f += f3;
                            }
                        }
                        if (i15 < i12 && i15 < i) {
                            i4 += -pVar.i.f;
                        }
                    }
                    i15++;
                    i2 = 8;
                }
                if (i4 < i10 || i5 == 0) {
                    i3 = i16;
                    break;
                } else {
                    i14++;
                    i2 = 8;
                }
            }
            i3 = 0;
            i4 = 0;
            i5 = 0;
            f = CropImageView.DEFAULT_ASPECT_RATIO;
            int i18 = this.h.g;
            if (zX1) {
                i18 = this.i.g;
            }
            if (i4 > i10) {
                i18 = zX1 ? i18 + ((int) (((i4 - i10) / 2.0f) + 0.5f)) : i18 - ((int) (((i4 - i10) / 2.0f) + 0.5f));
            }
            if (i5 > 0) {
                float f4 = i10 - i4;
                int i19 = (int) ((f4 / i5) + 0.5f);
                int i20 = 0;
                int i21 = 0;
                while (i20 < size) {
                    p pVar2 = this.k.get(i20);
                    int i22 = i19;
                    if (pVar2.f1163b.Q() == 8 || pVar2.f1165d != e.b.MATCH_CONSTRAINT || pVar2.e.j) {
                        i8 = i18;
                        f2 = f4;
                        i9 = i4;
                    } else {
                        int i23 = f > CropImageView.DEFAULT_ASPECT_RATIO ? (int) (((pVar2.f1163b.j0[this.f] * f4) / f) + 0.5f) : i22;
                        if (this.f == 0) {
                            c.e.b.k.e eVar = pVar2.f1163b;
                            f2 = f4;
                            int i24 = eVar.r;
                            i9 = i4;
                            i8 = i18;
                            iMax = Math.max(eVar.q, pVar2.a == 1 ? Math.min(i23, pVar2.e.m) : i23);
                            if (i24 > 0) {
                                iMax = Math.min(i24, iMax);
                            }
                            if (iMax != i23) {
                                i21++;
                                i23 = iMax;
                            }
                            pVar2.e.d(i23);
                        } else {
                            i8 = i18;
                            f2 = f4;
                            i9 = i4;
                            c.e.b.k.e eVar2 = pVar2.f1163b;
                            int i25 = eVar2.u;
                            iMax = Math.max(eVar2.t, pVar2.a == 1 ? Math.min(i23, pVar2.e.m) : i23);
                            if (i25 > 0) {
                                iMax = Math.min(i25, iMax);
                            }
                            if (iMax != i23) {
                            }
                            pVar2.e.d(i23);
                        }
                    }
                    i20++;
                    i19 = i22;
                    f4 = f2;
                    i4 = i9;
                    i18 = i8;
                }
                i6 = i18;
                int i26 = i4;
                if (i21 > 0) {
                    i5 -= i21;
                    int i27 = 0;
                    for (int i28 = 0; i28 < size; i28++) {
                        p pVar3 = this.k.get(i28);
                        if (pVar3.f1163b.Q() != 8) {
                            if (i28 > 0 && i28 >= i11) {
                                i27 += pVar3.h.f;
                            }
                            i27 += pVar3.e.g;
                            if (i28 < i12 && i28 < i) {
                                i27 += -pVar3.i.f;
                            }
                        }
                    }
                    i4 = i27;
                } else {
                    i4 = i26;
                }
                i7 = 2;
                if (this.l == 2 && i21 == 0) {
                    this.l = 0;
                }
            } else {
                i6 = i18;
                i7 = 2;
            }
            if (i4 > i10) {
                this.l = i7;
            }
            if (i3 > 0 && i5 == 0 && i11 == i) {
                this.l = i7;
            }
            int i29 = this.l;
            if (i29 == 1) {
                int i30 = i3 > 1 ? (i10 - i4) / (i3 - 1) : i3 == 1 ? (i10 - i4) / 2 : 0;
                if (i5 > 0) {
                    i30 = 0;
                }
                int i31 = i6;
                for (int i32 = 0; i32 < size; i32++) {
                    p pVar4 = this.k.get(zX1 ? size - (i32 + 1) : i32);
                    if (pVar4.f1163b.Q() == 8) {
                        pVar4.h.d(i31);
                        pVar4.i.d(i31);
                    } else {
                        if (i32 > 0) {
                            i31 = zX1 ? i31 - i30 : i31 + i30;
                        }
                        if (i32 > 0 && i32 >= i11) {
                            i31 = zX1 ? i31 - pVar4.h.f : i31 + pVar4.h.f;
                        }
                        if (zX1) {
                            pVar4.i.d(i31);
                        } else {
                            pVar4.h.d(i31);
                        }
                        g gVar = pVar4.e;
                        int i33 = gVar.g;
                        if (pVar4.f1165d == e.b.MATCH_CONSTRAINT && pVar4.a == 1) {
                            i33 = gVar.m;
                        }
                        i31 = zX1 ? i31 - i33 : i31 + i33;
                        if (zX1) {
                            pVar4.h.d(i31);
                        } else {
                            pVar4.i.d(i31);
                        }
                        pVar4.g = true;
                        if (i32 < i12 && i32 < i) {
                            i31 = zX1 ? i31 - (-pVar4.i.f) : i31 + (-pVar4.i.f);
                        }
                    }
                }
                return;
            }
            if (i29 == 0) {
                int i34 = (i10 - i4) / (i3 + 1);
                if (i5 > 0) {
                    i34 = 0;
                }
                int i35 = i6;
                for (int i36 = 0; i36 < size; i36++) {
                    p pVar5 = this.k.get(zX1 ? size - (i36 + 1) : i36);
                    if (pVar5.f1163b.Q() == 8) {
                        pVar5.h.d(i35);
                        pVar5.i.d(i35);
                    } else {
                        int i37 = zX1 ? i35 - i34 : i35 + i34;
                        if (i36 > 0 && i36 >= i11) {
                            i37 = zX1 ? i37 - pVar5.h.f : i37 + pVar5.h.f;
                        }
                        if (zX1) {
                            pVar5.i.d(i37);
                        } else {
                            pVar5.h.d(i37);
                        }
                        g gVar2 = pVar5.e;
                        int iMin = gVar2.g;
                        if (pVar5.f1165d == e.b.MATCH_CONSTRAINT && pVar5.a == 1) {
                            iMin = Math.min(iMin, gVar2.m);
                        }
                        i35 = zX1 ? i37 - iMin : i37 + iMin;
                        if (zX1) {
                            pVar5.h.d(i35);
                        } else {
                            pVar5.i.d(i35);
                        }
                        if (i36 < i12 && i36 < i) {
                            i35 = zX1 ? i35 - (-pVar5.i.f) : i35 + (-pVar5.i.f);
                        }
                    }
                }
                return;
            }
            if (i29 == 2) {
                float fW = this.f == 0 ? this.f1163b.w() : this.f1163b.M();
                if (zX1) {
                    fW = 1.0f - fW;
                }
                int i38 = (int) (((i10 - i4) * fW) + 0.5f);
                if (i38 < 0 || i5 > 0) {
                    i38 = 0;
                }
                int i39 = zX1 ? i6 - i38 : i6 + i38;
                for (int i40 = 0; i40 < size; i40++) {
                    p pVar6 = this.k.get(zX1 ? size - (i40 + 1) : i40);
                    if (pVar6.f1163b.Q() == 8) {
                        pVar6.h.d(i39);
                        pVar6.i.d(i39);
                    } else {
                        if (i40 > 0 && i40 >= i11) {
                            i39 = zX1 ? i39 - pVar6.h.f : i39 + pVar6.h.f;
                        }
                        if (zX1) {
                            pVar6.i.d(i39);
                        } else {
                            pVar6.h.d(i39);
                        }
                        g gVar3 = pVar6.e;
                        int i41 = gVar3.g;
                        if (pVar6.f1165d == e.b.MATCH_CONSTRAINT && pVar6.a == 1) {
                            i41 = gVar3.m;
                        }
                        i39 = zX1 ? i39 - i41 : i39 + i41;
                        if (zX1) {
                            pVar6.h.d(i39);
                        } else {
                            pVar6.i.d(i39);
                        }
                        if (i40 < i12 && i40 < i) {
                            i39 = zX1 ? i39 - (-pVar6.i.f) : i39 + (-pVar6.i.f);
                        }
                    }
                }
            }
        }
    }

    @Override // c.e.b.k.m.p
    void d() {
        Iterator<p> it = this.k.iterator();
        while (it.hasNext()) {
            it.next().d();
        }
        int size = this.k.size();
        if (size < 1) {
            return;
        }
        c.e.b.k.e eVar = this.k.get(0).f1163b;
        c.e.b.k.e eVar2 = this.k.get(size - 1).f1163b;
        if (this.f == 0) {
            c.e.b.k.d dVar = eVar.F;
            c.e.b.k.d dVar2 = eVar2.H;
            f fVarI = i(dVar, 0);
            int iE = dVar.e();
            c.e.b.k.e eVarR = r();
            if (eVarR != null) {
                iE = eVarR.F.e();
            }
            if (fVarI != null) {
                b(this.h, fVarI, iE);
            }
            f fVarI2 = i(dVar2, 0);
            int iE2 = dVar2.e();
            c.e.b.k.e eVarS = s();
            if (eVarS != null) {
                iE2 = eVarS.H.e();
            }
            if (fVarI2 != null) {
                b(this.i, fVarI2, -iE2);
            }
        } else {
            c.e.b.k.d dVar3 = eVar.G;
            c.e.b.k.d dVar4 = eVar2.I;
            f fVarI3 = i(dVar3, 1);
            int iE3 = dVar3.e();
            c.e.b.k.e eVarR2 = r();
            if (eVarR2 != null) {
                iE3 = eVarR2.G.e();
            }
            if (fVarI3 != null) {
                b(this.h, fVarI3, iE3);
            }
            f fVarI4 = i(dVar4, 1);
            int iE4 = dVar4.e();
            c.e.b.k.e eVarS2 = s();
            if (eVarS2 != null) {
                iE4 = eVarS2.I.e();
            }
            if (fVarI4 != null) {
                b(this.i, fVarI4, -iE4);
            }
        }
        this.h.a = this;
        this.i.a = this;
    }

    @Override // c.e.b.k.m.p
    public void e() {
        for (int i = 0; i < this.k.size(); i++) {
            this.k.get(i).e();
        }
    }

    @Override // c.e.b.k.m.p
    void f() {
        this.f1164c = null;
        Iterator<p> it = this.k.iterator();
        while (it.hasNext()) {
            it.next().f();
        }
    }

    @Override // c.e.b.k.m.p
    public long j() {
        int size = this.k.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            p pVar = this.k.get(i);
            j = j + ((long) pVar.h.f) + pVar.j() + ((long) pVar.i.f);
        }
        return j;
    }

    @Override // c.e.b.k.m.p
    boolean m() {
        int size = this.k.size();
        for (int i = 0; i < size; i++) {
            if (!this.k.get(i).m()) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ChainRun ");
        sb.append(this.f == 0 ? "horizontal : " : "vertical : ");
        String string = sb.toString();
        Iterator<p> it = this.k.iterator();
        while (it.hasNext()) {
            String str = string + "<";
            string = (str + it.next()) + "> ";
        }
        return string;
    }
}
