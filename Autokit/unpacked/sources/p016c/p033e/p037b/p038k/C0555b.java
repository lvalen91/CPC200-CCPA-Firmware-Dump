package p016c.p033e.p037b.p038k;

import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;
import p016c.p033e.p037b.C0545b;
import p016c.p033e.p037b.C0547d;
import p016c.p033e.p037b.C0552i;
import p016c.p033e.p037b.p038k.C0558e;

/* JADX INFO: renamed from: c.e.b.k.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0555b {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x02ec  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x004a A[PHI: r8 r14
      0x004a: PHI (r8v4 boolean) = (r8v2 boolean), (r8v50 boolean) binds: [B:28:0x0048, B:17:0x0035] A[DONT_GENERATE, DONT_INLINE]
      0x004a: PHI (r14v4 boolean) = (r14v2 boolean), (r14v36 boolean) binds: [B:28:0x0048, B:17:0x0035] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x004c A[PHI: r8 r14
      0x004c: PHI (r8v47 boolean) = (r8v2 boolean), (r8v50 boolean) binds: [B:28:0x0048, B:17:0x0035] A[DONT_GENERATE, DONT_INLINE]
      0x004c: PHI (r14v33 boolean) = (r14v2 boolean), (r14v36 boolean) binds: [B:28:0x0048, B:17:0x0035] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r37v0, types: [c.e.b.d] */
    /* JADX WARN: Type inference failed for: r5v25 */
    /* JADX WARN: Type inference failed for: r5v26, types: [c.e.b.i] */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [c.e.b.k.e] */
    /* JADX WARN: Type inference failed for: r7v32 */
    /* JADX WARN: Type inference failed for: r7v33 */
    /* JADX WARN: Type inference failed for: r7v34 */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static void m4420a(C0559f c0559f, C0547d c0547d, int i, int i2, C0556c c0556c) {
        boolean z;
        boolean z2;
        boolean z3;
        int i3;
        C0558e c0558e;
        int i4;
        C0557d c0557d;
        C0552i c0552i;
        C0552i c0552i2;
        C0558e c0558e2;
        C0557d c0557d2;
        C0552i c0552i3;
        C0552i c0552i4;
        C0558e c0558e3;
        ?? r5;
        int size;
        ArrayList<C0558e> arrayList;
        int i5;
        boolean z4;
        C0558e c0558e4;
        boolean z5;
        int i6;
        C0558e c0558e5 = c0556c.f3468a;
        C0558e c0558e6 = c0556c.f3470c;
        C0558e c0558e7 = c0556c.f3469b;
        C0558e c0558e8 = c0556c.f3471d;
        C0558e c0558e9 = c0556c.f3472e;
        float f = c0556c.f3478k;
        C0558e c0558e10 = c0556c.f3473f;
        C0558e c0558e11 = c0556c.f3474g;
        boolean z6 = c0559f.f3525Q[i] == C0558e.b.WRAP_CONTENT;
        if (i == 0) {
            z = c0558e9.f3550h0 == 0;
            z2 = c0558e9.f3550h0 == 1;
            z3 = c0558e9.f3550h0 == 2;
        } else {
            z = c0558e9.f3552i0 == 0;
            z2 = c0558e9.f3552i0 == 1;
            if (c0558e9.f3552i0 == 2) {
            }
        }
        ?? r7 = c0558e5;
        boolean z7 = z2;
        boolean z8 = z;
        boolean z9 = false;
        while (true) {
            if (z9) {
                break;
            }
            C0557d c0557d3 = r7.f3522N[i2];
            int i7 = z3 ? 1 : 4;
            int iM4429e = c0557d3.m4429e();
            float f2 = f;
            boolean z10 = z9;
            boolean z11 = r7.f3525Q[i] == C0558e.b.MATCH_CONSTRAINT && r7.f3564p[i] == 0;
            C0557d c0557d4 = c0557d3.f3493f;
            if (c0557d4 != null && r7 != c0558e5) {
                iM4429e += c0557d4.m4429e();
            }
            int i8 = iM4429e;
            if (!z3 || r7 == c0558e5 || r7 == c0558e7) {
                z4 = z7;
            } else {
                z4 = z7;
                i7 = 8;
            }
            C0557d c0557d5 = c0557d3.f3493f;
            if (c0557d5 != null) {
                if (r7 == c0558e7) {
                    z5 = z8;
                    c0558e4 = c0558e9;
                    c0547d.m4368h(c0557d3.f3496i, c0557d5.f3496i, i8, 6);
                } else {
                    c0558e4 = c0558e9;
                    z5 = z8;
                    c0547d.m4368h(c0557d3.f3496i, c0557d5.f3496i, i8, 8);
                }
                c0547d.m4365e(c0557d3.f3496i, c0557d3.f3493f.f3496i, i8, (!z11 || z3) ? i7 : 5);
            } else {
                c0558e4 = c0558e9;
                z5 = z8;
            }
            if (z6) {
                if (r7.m4479Q() == 8 || r7.f3525Q[i] != C0558e.b.MATCH_CONSTRAINT) {
                    i6 = 0;
                } else {
                    C0557d[] c0557dArr = r7.f3522N;
                    i6 = 0;
                    c0547d.m4368h(c0557dArr[i2 + 1].f3496i, c0557dArr[i2].f3496i, 0, 5);
                }
                c0547d.m4368h(r7.f3522N[i2].f3496i, c0559f.f3522N[i2].f3496i, i6, 8);
            }
            C0557d c0557d6 = r7.f3522N[i2 + 1].f3493f;
            if (c0557d6 != null) {
                C0558e c0558e12 = c0557d6.f3491d;
                C0557d[] c0557dArr2 = c0558e12.f3522N;
                if (c0557dArr2[i2].f3493f != null && c0557dArr2[i2].f3493f.f3491d == r7) {
                    obj = c0558e12;
                }
            }
            if (obj != null) {
                r7 = obj;
                z9 = z10;
            } else {
                z9 = true;
            }
            z7 = z4;
            f = f2;
            z8 = z5;
            c0558e9 = c0558e4;
            r7 = r7;
        }
        C0558e c0558e13 = c0558e9;
        float f3 = f;
        boolean z12 = z8;
        boolean z13 = z7;
        if (c0558e8 != null) {
            int i9 = i2 + 1;
            if (c0558e6.f3522N[i9].f3493f != null) {
                C0557d c0557d7 = c0558e8.f3522N[i9];
                if (!(c0558e8.f3525Q[i] == C0558e.b.MATCH_CONSTRAINT && c0558e8.f3564p[i] == 0) || z3) {
                    if (z3) {
                        C0557d c0557d8 = c0557d7.f3493f;
                        if (c0557d8.f3491d == c0559f) {
                            c0547d.m4365e(c0557d7.f3496i, c0557d8.f3496i, -c0557d7.m4429e(), 4);
                        }
                    }
                    c0547d.m4370j(c0557d7.f3496i, c0558e6.f3522N[i9].f3493f.f3496i, -c0557d7.m4429e(), 6);
                } else {
                    C0557d c0557d9 = c0557d7.f3493f;
                    if (c0557d9.f3491d == c0559f) {
                        c0547d.m4365e(c0557d7.f3496i, c0557d9.f3496i, -c0557d7.m4429e(), 5);
                    }
                    c0547d.m4370j(c0557d7.f3496i, c0558e6.f3522N[i9].f3493f.f3496i, -c0557d7.m4429e(), 6);
                }
            }
        }
        if (z6) {
            int i10 = i2 + 1;
            C0552i c0552i5 = c0559f.f3522N[i10].f3496i;
            C0557d[] c0557dArr3 = c0558e6.f3522N;
            c0547d.m4368h(c0552i5, c0557dArr3[i10].f3496i, c0557dArr3[i10].m4429e(), 8);
        }
        ArrayList<C0558e> arrayList2 = c0556c.f3475h;
        if (arrayList2 != null && (size = arrayList2.size()) > 1) {
            float f4 = (!c0556c.f3484q || c0556c.f3486s) ? f3 : c0556c.f3477j;
            float f5 = CropImageView.DEFAULT_ASPECT_RATIO;
            C0558e c0558e14 = null;
            int i11 = 0;
            float f6 = CropImageView.DEFAULT_ASPECT_RATIO;
            while (i11 < size) {
                C0558e c0558e15 = arrayList2.get(i11);
                float f7 = c0558e15.f3554j0[i];
                if (f7 < f5) {
                    if (c0556c.f3486s) {
                        C0557d[] c0557dArr4 = c0558e15.f3522N;
                        c0547d.m4365e(c0557dArr4[i2 + 1].f3496i, c0557dArr4[i2].f3496i, 0, 4);
                        arrayList = arrayList2;
                        i5 = size;
                        i11++;
                        size = i5;
                        arrayList2 = arrayList;
                        f5 = CropImageView.DEFAULT_ASPECT_RATIO;
                    } else {
                        f7 = 1.0f;
                        f5 = CropImageView.DEFAULT_ASPECT_RATIO;
                    }
                }
                if (f7 == f5) {
                    C0557d[] c0557dArr5 = c0558e15.f3522N;
                    c0547d.m4365e(c0557dArr5[i2 + 1].f3496i, c0557dArr5[i2].f3496i, 0, 8);
                    arrayList = arrayList2;
                    i5 = size;
                    i11++;
                    size = i5;
                    arrayList2 = arrayList;
                    f5 = CropImageView.DEFAULT_ASPECT_RATIO;
                } else {
                    if (c0558e14 != null) {
                        C0557d[] c0557dArr6 = c0558e14.f3522N;
                        C0552i c0552i6 = c0557dArr6[i2].f3496i;
                        int i12 = i2 + 1;
                        C0552i c0552i7 = c0557dArr6[i12].f3496i;
                        C0557d[] c0557dArr7 = c0558e15.f3522N;
                        arrayList = arrayList2;
                        C0552i c0552i8 = c0557dArr7[i2].f3496i;
                        C0552i c0552i9 = c0557dArr7[i12].f3496i;
                        i5 = size;
                        C0545b c0545bM4376r = c0547d.m4376r();
                        c0545bM4376r.m4338l(f6, f4, f7, c0552i6, c0552i7, c0552i8, c0552i9);
                        c0547d.m4364d(c0545bM4376r);
                    } else {
                        arrayList = arrayList2;
                        i5 = size;
                    }
                    f6 = f7;
                    c0558e14 = c0558e15;
                    i11++;
                    size = i5;
                    arrayList2 = arrayList;
                    f5 = CropImageView.DEFAULT_ASPECT_RATIO;
                }
            }
        }
        if (c0558e7 != null && (c0558e7 == c0558e8 || z3)) {
            C0557d c0557d10 = c0558e5.f3522N[i2];
            int i13 = i2 + 1;
            C0557d c0557d11 = c0558e6.f3522N[i13];
            C0557d c0557d12 = c0557d10.f3493f;
            C0552i c0552i10 = c0557d12 != null ? c0557d12.f3496i : null;
            C0557d c0557d13 = c0557d11.f3493f;
            C0552i c0552i11 = c0557d13 != null ? c0557d13.f3496i : null;
            C0557d c0557d14 = c0558e7.f3522N[i2];
            C0557d c0557d15 = c0558e8.f3522N[i13];
            if (c0552i10 != null && c0552i11 != null) {
                c0547d.m4363c(c0557d14.f3496i, c0552i10, c0557d14.m4429e(), i == 0 ? c0558e13.f3538b0 : c0558e13.f3540c0, c0552i11, c0557d15.f3496i, c0557d15.m4429e(), 7);
            }
        } else if (!z12 || c0558e7 == null) {
            int i14 = 8;
            if (z13 && c0558e7 != null) {
                int i15 = c0556c.f3477j;
                boolean z14 = i15 > 0 && c0556c.f3476i == i15;
                C0558e c0558e16 = c0558e7;
                C0558e c0558e17 = c0558e16;
                while (c0558e16 != null) {
                    C0558e c0558e18 = c0558e16.f3558l0[i];
                    while (c0558e18 != null && c0558e18.m4479Q() == i14) {
                        c0558e18 = c0558e18.f3558l0[i];
                    }
                    if (c0558e16 == c0558e7 || c0558e16 == c0558e8 || c0558e18 == null) {
                        c0558e = c0558e17;
                        i4 = 8;
                    } else {
                        C0558e c0558e19 = c0558e18 == c0558e8 ? null : c0558e18;
                        C0557d c0557d16 = c0558e16.f3522N[i2];
                        C0552i c0552i12 = c0557d16.f3496i;
                        C0557d c0557d17 = c0557d16.f3493f;
                        if (c0557d17 != null) {
                            C0552i c0552i13 = c0557d17.f3496i;
                        }
                        int i16 = i2 + 1;
                        C0552i c0552i14 = c0558e17.f3522N[i16].f3496i;
                        int iM4429e2 = c0557d16.m4429e();
                        int iM4429e3 = c0558e16.f3522N[i16].m4429e();
                        if (c0558e19 != null) {
                            c0557d = c0558e19.f3522N[i2];
                            c0552i = c0557d.f3496i;
                            C0557d c0557d18 = c0557d.f3493f;
                            c0552i2 = c0557d18 != null ? c0557d18.f3496i : null;
                        } else {
                            c0557d = c0558e8.f3522N[i2];
                            c0552i = c0557d != null ? c0557d.f3496i : null;
                            c0552i2 = c0558e16.f3522N[i16].f3496i;
                        }
                        if (c0557d != null) {
                            iM4429e3 += c0557d.m4429e();
                        }
                        int i17 = iM4429e3;
                        if (c0558e17 != null) {
                            iM4429e2 += c0558e17.f3522N[i16].m4429e();
                        }
                        int i18 = iM4429e2;
                        int i19 = z14 ? 8 : 4;
                        if (c0552i12 == null || c0552i14 == null || c0552i == null || c0552i2 == null) {
                            c0558e2 = c0558e19;
                            c0558e = c0558e17;
                            i4 = 8;
                        } else {
                            c0558e2 = c0558e19;
                            c0558e = c0558e17;
                            i4 = 8;
                            c0547d.m4363c(c0552i12, c0552i14, i18, 0.5f, c0552i, c0552i2, i17, i19);
                        }
                        c0558e18 = c0558e2;
                    }
                    if (c0558e16.m4479Q() == i4) {
                        c0558e16 = c0558e;
                    }
                    c0558e17 = c0558e16;
                    i14 = 8;
                    c0558e16 = c0558e18;
                }
                C0557d c0557d19 = c0558e7.f3522N[i2];
                C0557d c0557d20 = c0558e5.f3522N[i2].f3493f;
                int i20 = i2 + 1;
                C0557d c0557d21 = c0558e8.f3522N[i20];
                C0557d c0557d22 = c0558e6.f3522N[i20].f3493f;
                if (c0557d20 == null) {
                    i3 = 5;
                } else if (c0558e7 != c0558e8) {
                    i3 = 5;
                    c0547d.m4365e(c0557d19.f3496i, c0557d20.f3496i, c0557d19.m4429e(), 5);
                } else {
                    i3 = 5;
                    if (c0557d22 != null) {
                        c0547d.m4363c(c0557d19.f3496i, c0557d20.f3496i, c0557d19.m4429e(), 0.5f, c0557d21.f3496i, c0557d22.f3496i, c0557d21.m4429e(), 5);
                    }
                }
                if (c0557d22 != null && c0558e7 != c0558e8) {
                    c0547d.m4365e(c0557d21.f3496i, c0557d22.f3496i, -c0557d21.m4429e(), i3);
                }
            }
        } else {
            int i21 = c0556c.f3477j;
            boolean z15 = i21 > 0 && c0556c.f3476i == i21;
            C0558e c0558e20 = c0558e7;
            C0558e c0558e21 = c0558e20;
            while (c0558e20 != null) {
                C0558e c0558e22 = c0558e20.f3558l0[i];
                while (c0558e22 != null && c0558e22.m4479Q() == 8) {
                    c0558e22 = c0558e22.f3558l0[i];
                }
                if (c0558e22 != null || c0558e20 == c0558e8) {
                    C0557d c0557d23 = c0558e20.f3522N[i2];
                    C0552i c0552i15 = c0557d23.f3496i;
                    C0557d c0557d24 = c0557d23.f3493f;
                    C0552i c0552i16 = c0557d24 != null ? c0557d24.f3496i : null;
                    if (c0558e21 != c0558e20) {
                        c0552i16 = c0558e21.f3522N[i2 + 1].f3496i;
                    } else if (c0558e20 == c0558e7 && c0558e21 == c0558e20) {
                        C0557d[] c0557dArr8 = c0558e5.f3522N;
                        c0552i16 = c0557dArr8[i2].f3493f != null ? c0557dArr8[i2].f3493f.f3496i : null;
                    }
                    int iM4429e4 = c0557d23.m4429e();
                    int i22 = i2 + 1;
                    int iM4429e5 = c0558e20.f3522N[i22].m4429e();
                    if (c0558e22 != null) {
                        c0557d2 = c0558e22.f3522N[i2];
                        C0552i c0552i17 = c0557d2.f3496i;
                        c0552i4 = c0558e20.f3522N[i22].f3496i;
                        c0552i3 = c0552i17;
                    } else {
                        c0557d2 = c0558e6.f3522N[i22].f3493f;
                        c0552i3 = c0557d2 != null ? c0557d2.f3496i : null;
                        c0552i4 = c0558e20.f3522N[i22].f3496i;
                    }
                    if (c0557d2 != null) {
                        iM4429e5 += c0557d2.m4429e();
                    }
                    if (c0558e21 != null) {
                        iM4429e4 += c0558e21.f3522N[i22].m4429e();
                    }
                    if (c0552i15 == null || c0552i16 == null || c0552i3 == null || c0552i4 == null) {
                        c0558e3 = c0558e22;
                    } else {
                        if (c0558e20 == c0558e7) {
                            iM4429e4 = c0558e7.f3522N[i2].m4429e();
                        }
                        int i23 = iM4429e4;
                        c0558e3 = c0558e22;
                        c0547d.m4363c(c0552i15, c0552i16, i23, 0.5f, c0552i3, c0552i4, c0558e20 == c0558e8 ? c0558e8.f3522N[i22].m4429e() : iM4429e5, z15 ? 8 : 5);
                    }
                }
                if (c0558e20.m4479Q() != 8) {
                    c0558e21 = c0558e20;
                }
                c0558e20 = c0558e3;
            }
        }
        if ((!z12 && !z13) || c0558e7 == null || c0558e7 == c0558e8) {
            return;
        }
        C0557d c0557d25 = c0558e7.f3522N[i2];
        int i24 = i2 + 1;
        C0557d c0557d26 = c0558e8.f3522N[i24];
        C0557d c0557d27 = c0557d25.f3493f;
        C0552i c0552i18 = c0557d27 != null ? c0557d27.f3496i : null;
        C0557d c0557d28 = c0557d26.f3493f;
        C0552i c0552i19 = c0557d28 != null ? c0557d28.f3496i : null;
        if (c0558e6 != c0558e8) {
            C0557d c0557d29 = c0558e6.f3522N[i24].f3493f;
            r5 = c0557d29 != null ? c0557d29.f3496i : null;
        } else {
            r5 = c0552i19;
        }
        if (c0558e7 == c0558e8) {
            C0557d[] c0557dArr9 = c0558e7.f3522N;
            C0557d c0557d30 = c0557dArr9[i2];
            c0557d26 = c0557dArr9[i24];
            c0557d25 = c0557d30;
        }
        if (c0552i18 == null || r5 == 0) {
            return;
        }
        int iM4429e6 = c0557d25.m4429e();
        if (c0558e8 != null) {
            c0558e6 = c0558e8;
        }
        c0547d.m4363c(c0557d25.f3496i, c0552i18, iM4429e6, 0.5f, r5, c0557d26.f3496i, c0558e6.f3522N[i24].m4429e(), 5);
    }

    /* JADX INFO: renamed from: b */
    public static void m4421b(C0559f c0559f, C0547d c0547d, ArrayList<C0558e> arrayList, int i) {
        C0556c[] c0556cArr;
        int i2;
        int i3;
        if (i == 0) {
            i2 = c0559f.f3600y0;
            c0556cArr = c0559f.f3583B0;
            i3 = 0;
        } else {
            int i4 = c0559f.f3601z0;
            c0556cArr = c0559f.f3582A0;
            i2 = i4;
            i3 = 2;
        }
        for (int i5 = 0; i5 < i2; i5++) {
            C0556c c0556c = c0556cArr[i5];
            c0556c.m4424a();
            if (arrayList == null || (arrayList != null && arrayList.contains(c0556c.f3468a))) {
                m4420a(c0559f, c0547d, i, i3, c0556c);
            }
        }
    }
}
