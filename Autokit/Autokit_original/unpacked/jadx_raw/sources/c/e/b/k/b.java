package c.e.b.k;

import c.e.b.k.e;
import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class b {
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static void a(f fVar, c.e.b.d dVar, int i, int i2, c cVar) {
        boolean z;
        boolean z2;
        boolean z3;
        int i3;
        e eVar;
        int i4;
        d dVar2;
        c.e.b.i iVar;
        c.e.b.i iVar2;
        e eVar2;
        d dVar3;
        c.e.b.i iVar3;
        c.e.b.i iVar4;
        e eVar3;
        ?? r5;
        int size;
        ArrayList<e> arrayList;
        int i5;
        boolean z4;
        e eVar4;
        boolean z5;
        int i6;
        e eVar5 = cVar.a;
        e eVar6 = cVar.f1128c;
        e eVar7 = cVar.f1127b;
        e eVar8 = cVar.f1129d;
        e eVar9 = cVar.e;
        float f = cVar.k;
        e eVar10 = cVar.f;
        e eVar11 = cVar.g;
        boolean z6 = fVar.Q[i] == e.b.WRAP_CONTENT;
        if (i == 0) {
            z = eVar9.h0 == 0;
            z2 = eVar9.h0 == 1;
            z3 = eVar9.h0 == 2;
        } else {
            z = eVar9.i0 == 0;
            z2 = eVar9.i0 == 1;
            if (eVar9.i0 == 2) {
            }
        }
        ?? r7 = eVar5;
        boolean z7 = z2;
        boolean z8 = z;
        boolean z9 = false;
        while (true) {
            if (z9) {
                break;
            }
            d dVar4 = r7.N[i2];
            int i7 = z3 ? 1 : 4;
            int iE = dVar4.e();
            float f2 = f;
            boolean z10 = z9;
            boolean z11 = r7.Q[i] == e.b.MATCH_CONSTRAINT && r7.p[i] == 0;
            d dVar5 = dVar4.f;
            if (dVar5 != null && r7 != eVar5) {
                iE += dVar5.e();
            }
            int i8 = iE;
            if (!z3 || r7 == eVar5 || r7 == eVar7) {
                z4 = z7;
            } else {
                z4 = z7;
                i7 = 8;
            }
            d dVar6 = dVar4.f;
            if (dVar6 != null) {
                if (r7 == eVar7) {
                    z5 = z8;
                    eVar4 = eVar9;
                    dVar.h(dVar4.i, dVar6.i, i8, 6);
                } else {
                    eVar4 = eVar9;
                    z5 = z8;
                    dVar.h(dVar4.i, dVar6.i, i8, 8);
                }
                dVar.e(dVar4.i, dVar4.f.i, i8, (!z11 || z3) ? i7 : 5);
            } else {
                eVar4 = eVar9;
                z5 = z8;
            }
            if (z6) {
                if (r7.Q() == 8 || r7.Q[i] != e.b.MATCH_CONSTRAINT) {
                    i6 = 0;
                } else {
                    d[] dVarArr = r7.N;
                    i6 = 0;
                    dVar.h(dVarArr[i2 + 1].i, dVarArr[i2].i, 0, 5);
                }
                dVar.h(r7.N[i2].i, fVar.N[i2].i, i6, 8);
            }
            d dVar7 = r7.N[i2 + 1].f;
            if (dVar7 != null) {
                e eVar12 = dVar7.f1132d;
                d[] dVarArr2 = eVar12.N;
                if (dVarArr2[i2].f != null && dVarArr2[i2].f.f1132d == r7) {
                    obj = eVar12;
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
            eVar9 = eVar4;
            r7 = r7;
        }
        e eVar13 = eVar9;
        float f3 = f;
        boolean z12 = z8;
        boolean z13 = z7;
        if (eVar8 != null) {
            int i9 = i2 + 1;
            if (eVar6.N[i9].f != null) {
                d dVar8 = eVar8.N[i9];
                if (!(eVar8.Q[i] == e.b.MATCH_CONSTRAINT && eVar8.p[i] == 0) || z3) {
                    if (z3) {
                        d dVar9 = dVar8.f;
                        if (dVar9.f1132d == fVar) {
                            dVar.e(dVar8.i, dVar9.i, -dVar8.e(), 4);
                        }
                    }
                    dVar.j(dVar8.i, eVar6.N[i9].f.i, -dVar8.e(), 6);
                } else {
                    d dVar10 = dVar8.f;
                    if (dVar10.f1132d == fVar) {
                        dVar.e(dVar8.i, dVar10.i, -dVar8.e(), 5);
                    }
                    dVar.j(dVar8.i, eVar6.N[i9].f.i, -dVar8.e(), 6);
                }
            }
        }
        if (z6) {
            int i10 = i2 + 1;
            c.e.b.i iVar5 = fVar.N[i10].i;
            d[] dVarArr3 = eVar6.N;
            dVar.h(iVar5, dVarArr3[i10].i, dVarArr3[i10].e(), 8);
        }
        ArrayList<e> arrayList2 = cVar.h;
        if (arrayList2 != null && (size = arrayList2.size()) > 1) {
            float f4 = (!cVar.q || cVar.s) ? f3 : cVar.j;
            float f5 = CropImageView.DEFAULT_ASPECT_RATIO;
            e eVar14 = null;
            int i11 = 0;
            float f6 = CropImageView.DEFAULT_ASPECT_RATIO;
            while (i11 < size) {
                e eVar15 = arrayList2.get(i11);
                float f7 = eVar15.j0[i];
                if (f7 < f5) {
                    if (cVar.s) {
                        d[] dVarArr4 = eVar15.N;
                        dVar.e(dVarArr4[i2 + 1].i, dVarArr4[i2].i, 0, 4);
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
                    d[] dVarArr5 = eVar15.N;
                    dVar.e(dVarArr5[i2 + 1].i, dVarArr5[i2].i, 0, 8);
                    arrayList = arrayList2;
                    i5 = size;
                    i11++;
                    size = i5;
                    arrayList2 = arrayList;
                    f5 = CropImageView.DEFAULT_ASPECT_RATIO;
                } else {
                    if (eVar14 != null) {
                        d[] dVarArr6 = eVar14.N;
                        c.e.b.i iVar6 = dVarArr6[i2].i;
                        int i12 = i2 + 1;
                        c.e.b.i iVar7 = dVarArr6[i12].i;
                        d[] dVarArr7 = eVar15.N;
                        arrayList = arrayList2;
                        c.e.b.i iVar8 = dVarArr7[i2].i;
                        c.e.b.i iVar9 = dVarArr7[i12].i;
                        i5 = size;
                        c.e.b.b bVarR = dVar.r();
                        bVarR.l(f6, f4, f7, iVar6, iVar7, iVar8, iVar9);
                        dVar.d(bVarR);
                    } else {
                        arrayList = arrayList2;
                        i5 = size;
                    }
                    f6 = f7;
                    eVar14 = eVar15;
                    i11++;
                    size = i5;
                    arrayList2 = arrayList;
                    f5 = CropImageView.DEFAULT_ASPECT_RATIO;
                }
            }
        }
        if (eVar7 != null && (eVar7 == eVar8 || z3)) {
            d dVar11 = eVar5.N[i2];
            int i13 = i2 + 1;
            d dVar12 = eVar6.N[i13];
            d dVar13 = dVar11.f;
            c.e.b.i iVar10 = dVar13 != null ? dVar13.i : null;
            d dVar14 = dVar12.f;
            c.e.b.i iVar11 = dVar14 != null ? dVar14.i : null;
            d dVar15 = eVar7.N[i2];
            d dVar16 = eVar8.N[i13];
            if (iVar10 != null && iVar11 != null) {
                dVar.c(dVar15.i, iVar10, dVar15.e(), i == 0 ? eVar13.b0 : eVar13.c0, iVar11, dVar16.i, dVar16.e(), 7);
            }
        } else if (!z12 || eVar7 == null) {
            int i14 = 8;
            if (z13 && eVar7 != null) {
                int i15 = cVar.j;
                boolean z14 = i15 > 0 && cVar.i == i15;
                e eVar16 = eVar7;
                e eVar17 = eVar16;
                while (eVar16 != null) {
                    e eVar18 = eVar16.l0[i];
                    while (eVar18 != null && eVar18.Q() == i14) {
                        eVar18 = eVar18.l0[i];
                    }
                    if (eVar16 == eVar7 || eVar16 == eVar8 || eVar18 == null) {
                        eVar = eVar17;
                        i4 = 8;
                    } else {
                        e eVar19 = eVar18 == eVar8 ? null : eVar18;
                        d dVar17 = eVar16.N[i2];
                        c.e.b.i iVar12 = dVar17.i;
                        d dVar18 = dVar17.f;
                        if (dVar18 != null) {
                            c.e.b.i iVar13 = dVar18.i;
                        }
                        int i16 = i2 + 1;
                        c.e.b.i iVar14 = eVar17.N[i16].i;
                        int iE2 = dVar17.e();
                        int iE3 = eVar16.N[i16].e();
                        if (eVar19 != null) {
                            dVar2 = eVar19.N[i2];
                            iVar = dVar2.i;
                            d dVar19 = dVar2.f;
                            iVar2 = dVar19 != null ? dVar19.i : null;
                        } else {
                            dVar2 = eVar8.N[i2];
                            iVar = dVar2 != null ? dVar2.i : null;
                            iVar2 = eVar16.N[i16].i;
                        }
                        if (dVar2 != null) {
                            iE3 += dVar2.e();
                        }
                        int i17 = iE3;
                        if (eVar17 != null) {
                            iE2 += eVar17.N[i16].e();
                        }
                        int i18 = iE2;
                        int i19 = z14 ? 8 : 4;
                        if (iVar12 == null || iVar14 == null || iVar == null || iVar2 == null) {
                            eVar2 = eVar19;
                            eVar = eVar17;
                            i4 = 8;
                        } else {
                            eVar2 = eVar19;
                            eVar = eVar17;
                            i4 = 8;
                            dVar.c(iVar12, iVar14, i18, 0.5f, iVar, iVar2, i17, i19);
                        }
                        eVar18 = eVar2;
                    }
                    if (eVar16.Q() == i4) {
                        eVar16 = eVar;
                    }
                    eVar17 = eVar16;
                    i14 = 8;
                    eVar16 = eVar18;
                }
                d dVar20 = eVar7.N[i2];
                d dVar21 = eVar5.N[i2].f;
                int i20 = i2 + 1;
                d dVar22 = eVar8.N[i20];
                d dVar23 = eVar6.N[i20].f;
                if (dVar21 == null) {
                    i3 = 5;
                } else if (eVar7 != eVar8) {
                    i3 = 5;
                    dVar.e(dVar20.i, dVar21.i, dVar20.e(), 5);
                } else {
                    i3 = 5;
                    if (dVar23 != null) {
                        dVar.c(dVar20.i, dVar21.i, dVar20.e(), 0.5f, dVar22.i, dVar23.i, dVar22.e(), 5);
                    }
                }
                if (dVar23 != null && eVar7 != eVar8) {
                    dVar.e(dVar22.i, dVar23.i, -dVar22.e(), i3);
                }
            }
        } else {
            int i21 = cVar.j;
            boolean z15 = i21 > 0 && cVar.i == i21;
            e eVar20 = eVar7;
            e eVar21 = eVar20;
            while (eVar20 != null) {
                e eVar22 = eVar20.l0[i];
                while (eVar22 != null && eVar22.Q() == 8) {
                    eVar22 = eVar22.l0[i];
                }
                if (eVar22 != null || eVar20 == eVar8) {
                    d dVar24 = eVar20.N[i2];
                    c.e.b.i iVar15 = dVar24.i;
                    d dVar25 = dVar24.f;
                    c.e.b.i iVar16 = dVar25 != null ? dVar25.i : null;
                    if (eVar21 != eVar20) {
                        iVar16 = eVar21.N[i2 + 1].i;
                    } else if (eVar20 == eVar7 && eVar21 == eVar20) {
                        d[] dVarArr8 = eVar5.N;
                        iVar16 = dVarArr8[i2].f != null ? dVarArr8[i2].f.i : null;
                    }
                    int iE4 = dVar24.e();
                    int i22 = i2 + 1;
                    int iE5 = eVar20.N[i22].e();
                    if (eVar22 != null) {
                        dVar3 = eVar22.N[i2];
                        c.e.b.i iVar17 = dVar3.i;
                        iVar4 = eVar20.N[i22].i;
                        iVar3 = iVar17;
                    } else {
                        dVar3 = eVar6.N[i22].f;
                        iVar3 = dVar3 != null ? dVar3.i : null;
                        iVar4 = eVar20.N[i22].i;
                    }
                    if (dVar3 != null) {
                        iE5 += dVar3.e();
                    }
                    if (eVar21 != null) {
                        iE4 += eVar21.N[i22].e();
                    }
                    if (iVar15 == null || iVar16 == null || iVar3 == null || iVar4 == null) {
                        eVar3 = eVar22;
                    } else {
                        if (eVar20 == eVar7) {
                            iE4 = eVar7.N[i2].e();
                        }
                        int i23 = iE4;
                        eVar3 = eVar22;
                        dVar.c(iVar15, iVar16, i23, 0.5f, iVar3, iVar4, eVar20 == eVar8 ? eVar8.N[i22].e() : iE5, z15 ? 8 : 5);
                    }
                }
                if (eVar20.Q() != 8) {
                    eVar21 = eVar20;
                }
                eVar20 = eVar3;
            }
        }
        if ((!z12 && !z13) || eVar7 == null || eVar7 == eVar8) {
            return;
        }
        d dVar26 = eVar7.N[i2];
        int i24 = i2 + 1;
        d dVar27 = eVar8.N[i24];
        d dVar28 = dVar26.f;
        c.e.b.i iVar18 = dVar28 != null ? dVar28.i : null;
        d dVar29 = dVar27.f;
        c.e.b.i iVar19 = dVar29 != null ? dVar29.i : null;
        if (eVar6 != eVar8) {
            d dVar30 = eVar6.N[i24].f;
            r5 = dVar30 != null ? dVar30.i : null;
        } else {
            r5 = iVar19;
        }
        if (eVar7 == eVar8) {
            d[] dVarArr9 = eVar7.N;
            d dVar31 = dVarArr9[i2];
            dVar27 = dVarArr9[i24];
            dVar26 = dVar31;
        }
        if (iVar18 == null || r5 == 0) {
            return;
        }
        int iE6 = dVar26.e();
        if (eVar8 != null) {
            eVar6 = eVar8;
        }
        dVar.c(dVar26.i, iVar18, iE6, 0.5f, r5, dVar27.i, eVar6.N[i24].e(), 5);
    }

    public static void b(f fVar, c.e.b.d dVar, ArrayList<e> arrayList, int i) {
        c[] cVarArr;
        int i2;
        int i3;
        if (i == 0) {
            i2 = fVar.y0;
            cVarArr = fVar.B0;
            i3 = 0;
        } else {
            int i4 = fVar.z0;
            cVarArr = fVar.A0;
            i2 = i4;
            i3 = 2;
        }
        for (int i5 = 0; i5 < i2; i5++) {
            c cVar = cVarArr[i5];
            cVar.a();
            if (arrayList == null || (arrayList != null && arrayList.contains(cVar.a))) {
                a(fVar, dVar, i, i3, cVar);
            }
        }
    }
}
