package p016c.p033e.p037b.p038k.p039m;

import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;
import java.util.Iterator;
import p016c.p033e.p037b.p038k.C0557d;
import p016c.p033e.p037b.p038k.C0558e;
import p016c.p033e.p037b.p038k.C0559f;

/* JADX INFO: renamed from: c.e.b.k.m.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0568c extends AbstractC0581p {

    /* JADX INFO: renamed from: k */
    ArrayList<AbstractC0581p> f3630k;

    /* JADX INFO: renamed from: l */
    private int f3631l;

    public C0568c(C0558e c0558e, int i) {
        super(c0558e);
        this.f3630k = new ArrayList<>();
        this.f3683f = i;
        m4600q();
    }

    /* JADX INFO: renamed from: q */
    private void m4600q() {
        C0558e c0558e;
        C0558e c0558e2 = this.f3679b;
        C0558e c0558eM4465J = c0558e2.m4465J(this.f3683f);
        while (true) {
            C0558e c0558e3 = c0558eM4465J;
            c0558e = c0558e2;
            c0558e2 = c0558e3;
            if (c0558e2 == null) {
                break;
            } else {
                c0558eM4465J = c0558e2.m4465J(this.f3683f);
            }
        }
        this.f3679b = c0558e;
        this.f3630k.add(c0558e.m4469L(this.f3683f));
        C0558e c0558eM4461H = c0558e.m4461H(this.f3683f);
        while (c0558eM4461H != null) {
            this.f3630k.add(c0558eM4461H.m4469L(this.f3683f));
            c0558eM4461H = c0558eM4461H.m4461H(this.f3683f);
        }
        for (AbstractC0581p abstractC0581p : this.f3630k) {
            int i = this.f3683f;
            if (i == 0) {
                abstractC0581p.f3679b.f3537b = this;
            } else if (i == 1) {
                abstractC0581p.f3679b.f3539c = this;
            }
        }
        if ((this.f3683f == 0 && ((C0559f) this.f3679b.m4463I()).m4569x1()) && this.f3630k.size() > 1) {
            ArrayList<AbstractC0581p> arrayList = this.f3630k;
            this.f3679b = arrayList.get(arrayList.size() - 1).f3679b;
        }
        this.f3631l = this.f3683f == 0 ? this.f3679b.m4535x() : this.f3679b.m4473N();
    }

    /* JADX INFO: renamed from: r */
    private C0558e m4601r() {
        for (int i = 0; i < this.f3630k.size(); i++) {
            AbstractC0581p abstractC0581p = this.f3630k.get(i);
            if (abstractC0581p.f3679b.m4479Q() != 8) {
                return abstractC0581p.f3679b;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: s */
    private C0558e m4602s() {
        for (int size = this.f3630k.size() - 1; size >= 0; size--) {
            AbstractC0581p abstractC0581p = this.f3630k.get(size);
            if (abstractC0581p.f3679b.m4479Q() != 8) {
                return abstractC0581p.f3679b;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x01c8 A[PHI: r7 r19 r20 r21
      0x01c8: PHI (r7v61 int) = (r7v59 int), (r7v67 int) binds: [B:116:0x01c6, B:107:0x019e] A[DONT_GENERATE, DONT_INLINE]
      0x01c8: PHI (r19v3 float) = (r19v2 float), (r19v5 float) binds: [B:116:0x01c6, B:107:0x019e] A[DONT_GENERATE, DONT_INLINE]
      0x01c8: PHI (r20v5 int) = (r20v4 int), (r20v7 int) binds: [B:116:0x01c6, B:107:0x019e] A[DONT_GENERATE, DONT_INLINE]
      0x01c8: PHI (r21v6 int) = (r21v5 int), (r21v8 int) binds: [B:116:0x01c6, B:107:0x019e] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // p016c.p033e.p037b.p038k.p039m.AbstractC0581p, p016c.p033e.p037b.p038k.p039m.InterfaceC0569d
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void mo4603a(InterfaceC0569d interfaceC0569d) {
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
        if (this.f3685h.f3649j && this.f3686i.f3649j) {
            C0558e c0558eM4463I = this.f3679b.m4463I();
            boolean zM4569x1 = (c0558eM4463I == null || !(c0558eM4463I instanceof C0559f)) ? false : ((C0559f) c0558eM4463I).m4569x1();
            int i10 = this.f3686i.f3646g - this.f3685h.f3646g;
            int size = this.f3630k.size();
            int i11 = 0;
            while (true) {
                i = -1;
                i2 = 8;
                if (i11 >= size) {
                    i11 = -1;
                    break;
                } else if (this.f3630k.get(i11).f3679b.m4479Q() != 8) {
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
                if (this.f3630k.get(i13).f3679b.m4479Q() != 8) {
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
                    AbstractC0581p abstractC0581p = this.f3630k.get(i15);
                    if (abstractC0581p.f3679b.m4479Q() != i2) {
                        i16++;
                        if (i15 > 0 && i15 >= i11) {
                            i4 += abstractC0581p.f3685h.f3645f;
                        }
                        int i17 = abstractC0581p.f3682e.f3646g;
                        boolean z = abstractC0581p.f3681d != C0558e.b.MATCH_CONSTRAINT;
                        if (!z) {
                            if (abstractC0581p.f3678a == 1 && i14 == 0) {
                                i17 = abstractC0581p.f3682e.f3661m;
                                i5++;
                            } else if (abstractC0581p.f3682e.f3649j) {
                            }
                            z = true;
                        } else {
                            if (this.f3683f == 0 && !abstractC0581p.f3679b.f3541d.f3682e.f3649j) {
                                return;
                            }
                            if (this.f3683f == 1 && !abstractC0581p.f3679b.f3543e.f3682e.f3649j) {
                                return;
                            }
                        }
                        if (z) {
                            i4 += i17;
                        } else {
                            i5++;
                            float f3 = abstractC0581p.f3679b.f3554j0[this.f3683f];
                            if (f3 >= CropImageView.DEFAULT_ASPECT_RATIO) {
                                f += f3;
                            }
                        }
                        if (i15 < i12 && i15 < i) {
                            i4 += -abstractC0581p.f3686i.f3645f;
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
            int i18 = this.f3685h.f3646g;
            if (zM4569x1) {
                i18 = this.f3686i.f3646g;
            }
            if (i4 > i10) {
                i18 = zM4569x1 ? i18 + ((int) (((i4 - i10) / 2.0f) + 0.5f)) : i18 - ((int) (((i4 - i10) / 2.0f) + 0.5f));
            }
            if (i5 > 0) {
                float f4 = i10 - i4;
                int i19 = (int) ((f4 / i5) + 0.5f);
                int i20 = 0;
                int i21 = 0;
                while (i20 < size) {
                    AbstractC0581p abstractC0581p2 = this.f3630k.get(i20);
                    int i22 = i19;
                    if (abstractC0581p2.f3679b.m4479Q() == 8 || abstractC0581p2.f3681d != C0558e.b.MATCH_CONSTRAINT || abstractC0581p2.f3682e.f3649j) {
                        i8 = i18;
                        f2 = f4;
                        i9 = i4;
                    } else {
                        int i23 = f > CropImageView.DEFAULT_ASPECT_RATIO ? (int) (((abstractC0581p2.f3679b.f3554j0[this.f3683f] * f4) / f) + 0.5f) : i22;
                        if (this.f3683f == 0) {
                            C0558e c0558e = abstractC0581p2.f3679b;
                            f2 = f4;
                            int i24 = c0558e.f3566r;
                            i9 = i4;
                            i8 = i18;
                            iMax = Math.max(c0558e.f3565q, abstractC0581p2.f3678a == 1 ? Math.min(i23, abstractC0581p2.f3682e.f3661m) : i23);
                            if (i24 > 0) {
                                iMax = Math.min(i24, iMax);
                            }
                            if (iMax != i23) {
                                i21++;
                                i23 = iMax;
                            }
                            abstractC0581p2.f3682e.mo4625d(i23);
                        } else {
                            i8 = i18;
                            f2 = f4;
                            i9 = i4;
                            C0558e c0558e2 = abstractC0581p2.f3679b;
                            int i25 = c0558e2.f3569u;
                            iMax = Math.max(c0558e2.f3568t, abstractC0581p2.f3678a == 1 ? Math.min(i23, abstractC0581p2.f3682e.f3661m) : i23);
                            if (i25 > 0) {
                                iMax = Math.min(i25, iMax);
                            }
                            if (iMax != i23) {
                            }
                            abstractC0581p2.f3682e.mo4625d(i23);
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
                        AbstractC0581p abstractC0581p3 = this.f3630k.get(i28);
                        if (abstractC0581p3.f3679b.m4479Q() != 8) {
                            if (i28 > 0 && i28 >= i11) {
                                i27 += abstractC0581p3.f3685h.f3645f;
                            }
                            i27 += abstractC0581p3.f3682e.f3646g;
                            if (i28 < i12 && i28 < i) {
                                i27 += -abstractC0581p3.f3686i.f3645f;
                            }
                        }
                    }
                    i4 = i27;
                } else {
                    i4 = i26;
                }
                i7 = 2;
                if (this.f3631l == 2 && i21 == 0) {
                    this.f3631l = 0;
                }
            } else {
                i6 = i18;
                i7 = 2;
            }
            if (i4 > i10) {
                this.f3631l = i7;
            }
            if (i3 > 0 && i5 == 0 && i11 == i) {
                this.f3631l = i7;
            }
            int i29 = this.f3631l;
            if (i29 == 1) {
                int i30 = i3 > 1 ? (i10 - i4) / (i3 - 1) : i3 == 1 ? (i10 - i4) / 2 : 0;
                if (i5 > 0) {
                    i30 = 0;
                }
                int i31 = i6;
                for (int i32 = 0; i32 < size; i32++) {
                    AbstractC0581p abstractC0581p4 = this.f3630k.get(zM4569x1 ? size - (i32 + 1) : i32);
                    if (abstractC0581p4.f3679b.m4479Q() == 8) {
                        abstractC0581p4.f3685h.mo4625d(i31);
                        abstractC0581p4.f3686i.mo4625d(i31);
                    } else {
                        if (i32 > 0) {
                            i31 = zM4569x1 ? i31 - i30 : i31 + i30;
                        }
                        if (i32 > 0 && i32 >= i11) {
                            i31 = zM4569x1 ? i31 - abstractC0581p4.f3685h.f3645f : i31 + abstractC0581p4.f3685h.f3645f;
                        }
                        if (zM4569x1) {
                            abstractC0581p4.f3686i.mo4625d(i31);
                        } else {
                            abstractC0581p4.f3685h.mo4625d(i31);
                        }
                        C0572g c0572g = abstractC0581p4.f3682e;
                        int i33 = c0572g.f3646g;
                        if (abstractC0581p4.f3681d == C0558e.b.MATCH_CONSTRAINT && abstractC0581p4.f3678a == 1) {
                            i33 = c0572g.f3661m;
                        }
                        i31 = zM4569x1 ? i31 - i33 : i31 + i33;
                        if (zM4569x1) {
                            abstractC0581p4.f3685h.mo4625d(i31);
                        } else {
                            abstractC0581p4.f3686i.mo4625d(i31);
                        }
                        abstractC0581p4.f3684g = true;
                        if (i32 < i12 && i32 < i) {
                            i31 = zM4569x1 ? i31 - (-abstractC0581p4.f3686i.f3645f) : i31 + (-abstractC0581p4.f3686i.f3645f);
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
                    AbstractC0581p abstractC0581p5 = this.f3630k.get(zM4569x1 ? size - (i36 + 1) : i36);
                    if (abstractC0581p5.f3679b.m4479Q() == 8) {
                        abstractC0581p5.f3685h.mo4625d(i35);
                        abstractC0581p5.f3686i.mo4625d(i35);
                    } else {
                        int i37 = zM4569x1 ? i35 - i34 : i35 + i34;
                        if (i36 > 0 && i36 >= i11) {
                            i37 = zM4569x1 ? i37 - abstractC0581p5.f3685h.f3645f : i37 + abstractC0581p5.f3685h.f3645f;
                        }
                        if (zM4569x1) {
                            abstractC0581p5.f3686i.mo4625d(i37);
                        } else {
                            abstractC0581p5.f3685h.mo4625d(i37);
                        }
                        C0572g c0572g2 = abstractC0581p5.f3682e;
                        int iMin = c0572g2.f3646g;
                        if (abstractC0581p5.f3681d == C0558e.b.MATCH_CONSTRAINT && abstractC0581p5.f3678a == 1) {
                            iMin = Math.min(iMin, c0572g2.f3661m);
                        }
                        i35 = zM4569x1 ? i37 - iMin : i37 + iMin;
                        if (zM4569x1) {
                            abstractC0581p5.f3685h.mo4625d(i35);
                        } else {
                            abstractC0581p5.f3686i.mo4625d(i35);
                        }
                        if (i36 < i12 && i36 < i) {
                            i35 = zM4569x1 ? i35 - (-abstractC0581p5.f3686i.f3645f) : i35 + (-abstractC0581p5.f3686i.f3645f);
                        }
                    }
                }
                return;
            }
            if (i29 == 2) {
                float fM4533w = this.f3683f == 0 ? this.f3679b.m4533w() : this.f3679b.m4471M();
                if (zM4569x1) {
                    fM4533w = 1.0f - fM4533w;
                }
                int i38 = (int) (((i10 - i4) * fM4533w) + 0.5f);
                if (i38 < 0 || i5 > 0) {
                    i38 = 0;
                }
                int i39 = zM4569x1 ? i6 - i38 : i6 + i38;
                for (int i40 = 0; i40 < size; i40++) {
                    AbstractC0581p abstractC0581p6 = this.f3630k.get(zM4569x1 ? size - (i40 + 1) : i40);
                    if (abstractC0581p6.f3679b.m4479Q() == 8) {
                        abstractC0581p6.f3685h.mo4625d(i39);
                        abstractC0581p6.f3686i.mo4625d(i39);
                    } else {
                        if (i40 > 0 && i40 >= i11) {
                            i39 = zM4569x1 ? i39 - abstractC0581p6.f3685h.f3645f : i39 + abstractC0581p6.f3685h.f3645f;
                        }
                        if (zM4569x1) {
                            abstractC0581p6.f3686i.mo4625d(i39);
                        } else {
                            abstractC0581p6.f3685h.mo4625d(i39);
                        }
                        C0572g c0572g3 = abstractC0581p6.f3682e;
                        int i41 = c0572g3.f3646g;
                        if (abstractC0581p6.f3681d == C0558e.b.MATCH_CONSTRAINT && abstractC0581p6.f3678a == 1) {
                            i41 = c0572g3.f3661m;
                        }
                        i39 = zM4569x1 ? i39 - i41 : i39 + i41;
                        if (zM4569x1) {
                            abstractC0581p6.f3685h.mo4625d(i39);
                        } else {
                            abstractC0581p6.f3686i.mo4625d(i39);
                        }
                        if (i40 < i12 && i40 < i) {
                            i39 = zM4569x1 ? i39 - (-abstractC0581p6.f3686i.f3645f) : i39 + (-abstractC0581p6.f3686i.f3645f);
                        }
                    }
                }
            }
        }
    }

    @Override // p016c.p033e.p037b.p038k.p039m.AbstractC0581p
    /* JADX INFO: renamed from: d */
    void mo4604d() {
        Iterator<AbstractC0581p> it = this.f3630k.iterator();
        while (it.hasNext()) {
            it.next().mo4604d();
        }
        int size = this.f3630k.size();
        if (size < 1) {
            return;
        }
        C0558e c0558e = this.f3630k.get(0).f3679b;
        C0558e c0558e2 = this.f3630k.get(size - 1).f3679b;
        if (this.f3683f == 0) {
            C0557d c0557d = c0558e.f3514F;
            C0557d c0557d2 = c0558e2.f3516H;
            C0571f c0571fM4663i = m4663i(c0557d, 0);
            int iM4429e = c0557d.m4429e();
            C0558e c0558eM4601r = m4601r();
            if (c0558eM4601r != null) {
                iM4429e = c0558eM4601r.f3514F.m4429e();
            }
            if (c0571fM4663i != null) {
                m4659b(this.f3685h, c0571fM4663i, iM4429e);
            }
            C0571f c0571fM4663i2 = m4663i(c0557d2, 0);
            int iM4429e2 = c0557d2.m4429e();
            C0558e c0558eM4602s = m4602s();
            if (c0558eM4602s != null) {
                iM4429e2 = c0558eM4602s.f3516H.m4429e();
            }
            if (c0571fM4663i2 != null) {
                m4659b(this.f3686i, c0571fM4663i2, -iM4429e2);
            }
        } else {
            C0557d c0557d3 = c0558e.f3515G;
            C0557d c0557d4 = c0558e2.f3517I;
            C0571f c0571fM4663i3 = m4663i(c0557d3, 1);
            int iM4429e3 = c0557d3.m4429e();
            C0558e c0558eM4601r2 = m4601r();
            if (c0558eM4601r2 != null) {
                iM4429e3 = c0558eM4601r2.f3515G.m4429e();
            }
            if (c0571fM4663i3 != null) {
                m4659b(this.f3685h, c0571fM4663i3, iM4429e3);
            }
            C0571f c0571fM4663i4 = m4663i(c0557d4, 1);
            int iM4429e4 = c0557d4.m4429e();
            C0558e c0558eM4602s2 = m4602s();
            if (c0558eM4602s2 != null) {
                iM4429e4 = c0558eM4602s2.f3517I.m4429e();
            }
            if (c0571fM4663i4 != null) {
                m4659b(this.f3686i, c0571fM4663i4, -iM4429e4);
            }
        }
        this.f3685h.f3640a = this;
        this.f3686i.f3640a = this;
    }

    @Override // p016c.p033e.p037b.p038k.p039m.AbstractC0581p
    /* JADX INFO: renamed from: e */
    public void mo4605e() {
        for (int i = 0; i < this.f3630k.size(); i++) {
            this.f3630k.get(i).mo4605e();
        }
    }

    @Override // p016c.p033e.p037b.p038k.p039m.AbstractC0581p
    /* JADX INFO: renamed from: f */
    void mo4606f() {
        this.f3680c = null;
        Iterator<AbstractC0581p> it = this.f3630k.iterator();
        while (it.hasNext()) {
            it.next().mo4606f();
        }
    }

    @Override // p016c.p033e.p037b.p038k.p039m.AbstractC0581p
    /* JADX INFO: renamed from: j */
    public long mo4607j() {
        int size = this.f3630k.size();
        long jMo4607j = 0;
        for (int i = 0; i < size; i++) {
            AbstractC0581p abstractC0581p = this.f3630k.get(i);
            jMo4607j = jMo4607j + ((long) abstractC0581p.f3685h.f3645f) + abstractC0581p.mo4607j() + ((long) abstractC0581p.f3686i.f3645f);
        }
        return jMo4607j;
    }

    @Override // p016c.p033e.p037b.p038k.p039m.AbstractC0581p
    /* JADX INFO: renamed from: m */
    boolean mo4608m() {
        int size = this.f3630k.size();
        for (int i = 0; i < size; i++) {
            if (!this.f3630k.get(i).mo4608m()) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ChainRun ");
        sb.append(this.f3683f == 0 ? "horizontal : " : "vertical : ");
        String string = sb.toString();
        Iterator<AbstractC0581p> it = this.f3630k.iterator();
        while (it.hasNext()) {
            String str = string + "<";
            string = (str + it.next()) + "> ";
        }
        return string;
    }
}
