package c.e.b.k;

import c.e.b.k.d;
import c.e.b.k.m.n;
import c.e.b.k.m.p;
import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class e {
    public static float o0 = 0.5f;
    private boolean B;
    public d M;
    public d[] N;
    protected ArrayList<d> O;
    private boolean[] P;
    public b[] Q;
    public e R;
    int S;
    int T;
    public float U;
    protected int V;
    protected int W;
    protected int X;
    int Y;
    protected int Z;
    protected int a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public c.e.b.k.m.c f1136b;
    float b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public c.e.b.k.m.c f1137c;
    float c0;
    private Object d0;
    private int e0;
    private String f0;
    private String g0;
    int h0;
    int i0;
    public float[] j0;
    protected e[] k0;
    protected e[] l0;
    public int m0;
    public int n0;
    public boolean a = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public c.e.b.k.m.l f1138d = null;
    public n e = null;
    public boolean[] f = {true, true};
    private boolean g = true;
    private boolean h = false;
    private boolean i = true;
    private boolean j = false;
    private boolean k = false;
    public int l = -1;
    public int m = -1;
    public int n = 0;
    public int o = 0;
    public int[] p = new int[2];
    public int q = 0;
    public int r = 0;
    public float s = 1.0f;
    public int t = 0;
    public int u = 0;
    public float v = 1.0f;
    int w = -1;
    float x = 1.0f;
    private int[] y = {Integer.MAX_VALUE, Integer.MAX_VALUE};
    private float z = CropImageView.DEFAULT_ASPECT_RATIO;
    private boolean A = false;
    private boolean C = false;
    private int D = 0;
    private int E = 0;
    public d F = new d(this, d.b.LEFT);
    public d G = new d(this, d.b.TOP);
    public d H = new d(this, d.b.RIGHT);
    public d I = new d(this, d.b.BOTTOM);
    public d J = new d(this, d.b.BASELINE);
    d K = new d(this, d.b.CENTER_X);
    d L = new d(this, d.b.CENTER_Y);

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f1139b;

        static {
            int[] iArr = new int[b.values().length];
            f1139b = iArr;
            try {
                iArr[b.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1139b[b.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1139b[b.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1139b[b.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[d.b.values().length];
            a = iArr2;
            try {
                iArr2[d.b.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[d.b.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[d.b.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[d.b.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[d.b.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                a[d.b.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                a[d.b.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                a[d.b.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                a[d.b.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    public enum b {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    public e() {
        d dVar = new d(this, d.b.CENTER);
        this.M = dVar;
        this.N = new d[]{this.F, this.H, this.G, this.I, this.J, dVar};
        this.O = new ArrayList<>();
        this.P = new boolean[2];
        b bVar = b.FIXED;
        this.Q = new b[]{bVar, bVar};
        this.R = null;
        this.S = 0;
        this.T = 0;
        this.U = CropImageView.DEFAULT_ASPECT_RATIO;
        this.V = -1;
        this.W = 0;
        this.X = 0;
        this.Y = 0;
        float f = o0;
        this.b0 = f;
        this.c0 = f;
        this.e0 = 0;
        this.f0 = null;
        this.g0 = null;
        this.h0 = 0;
        this.i0 = 0;
        this.j0 = new float[]{-1.0f, -1.0f};
        this.k0 = new e[]{null, null};
        this.l0 = new e[]{null, null};
        this.m0 = -1;
        this.n0 = -1;
        d();
    }

    private boolean Y(int i) {
        int i2 = i * 2;
        d[] dVarArr = this.N;
        if (dVarArr[i2].f != null && dVarArr[i2].f.f != dVarArr[i2]) {
            int i3 = i2 + 1;
            if (dVarArr[i3].f != null && dVarArr[i3].f.f == dVarArr[i3]) {
                return true;
            }
        }
        return false;
    }

    private void d() {
        this.O.add(this.F);
        this.O.add(this.G);
        this.O.add(this.H);
        this.O.add(this.I);
        this.O.add(this.K);
        this.O.add(this.L);
        this.O.add(this.M);
        this.O.add(this.J);
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x03d1  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x03d5  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0411  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x0430  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x045d  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x0471  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x0477  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x04c9  */
    /* JADX WARN: Removed duplicated region for block: B:306:0x04ed  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:328:0x0528  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:330:0x0535 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:349:0x0569  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:360:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00e2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void i(c.e.b.d dVar, boolean z, boolean z2, boolean z3, boolean z4, c.e.b.i iVar, c.e.b.i iVar2, b bVar, boolean z5, d dVar2, d dVar3, int i, int i2, int i3, int i4, float f, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, int i5, int i6, int i7, int i8, float f2, boolean z11) {
        int i9;
        boolean z12;
        int iMin;
        c.e.b.i iVar3;
        int i10;
        int i11;
        c.e.b.i iVar4;
        c.e.b.i iVar5;
        int i12;
        c.e.b.i iVar6;
        boolean z13;
        int i13;
        boolean z14;
        c.e.b.i iVarQ;
        c.e.b.i iVarQ2;
        c.e.b.i iVar7;
        c.e.b.i iVar8;
        c.e.b.i iVar9;
        int i14;
        char c2;
        int i15;
        int i16;
        d dVar4;
        int i17;
        c.e.b.i iVar10;
        boolean z15;
        boolean z16;
        c.e.b.i iVar11;
        int iE;
        boolean z17;
        int i18;
        int i19;
        int i20;
        boolean z18;
        c.e.b.i iVar12;
        int i21;
        e eVar;
        e eVar2;
        c.e.b.i iVar13;
        int i22;
        boolean z19;
        boolean z20;
        e eVar3;
        c.e.b.i iVar14;
        int i23;
        int iMin2;
        e eVar4;
        int i24;
        int i25;
        int i26;
        boolean z21;
        boolean z22;
        boolean z23;
        int i27;
        int i28;
        e eVar5;
        c.e.b.i iVar15;
        int iE2;
        e eVar6;
        int i29 = i7;
        int i30 = i8;
        c.e.b.i iVarQ3 = dVar.q(dVar2);
        c.e.b.i iVarQ4 = dVar.q(dVar3);
        c.e.b.i iVarQ5 = dVar.q(dVar2.i());
        c.e.b.i iVarQ6 = dVar.q(dVar3.i());
        if (c.e.b.d.w() != null) {
            c.e.b.d.w().w++;
        }
        boolean zN = dVar2.n();
        boolean zN2 = dVar3.n();
        boolean zN3 = this.M.n();
        int i31 = zN ? 1 : 0;
        if (zN2) {
            i31++;
        }
        if (zN3) {
            i31++;
        }
        int i32 = i31;
        int i33 = z6 ? 3 : i5;
        int i34 = a.f1139b[bVar.ordinal()];
        if (i34 == 1 || i34 == 2 || i34 == 3 || i34 != 4) {
            i9 = i33;
        } else {
            i9 = i33;
            z12 = i9 != 4;
            if (this.e0 != 8) {
                iMin = 0;
                z12 = false;
            } else {
                iMin = i2;
            }
            if (z11) {
                if (!zN && !zN2 && !zN3) {
                    dVar.f(iVarQ3, i);
                } else if (zN && !zN2) {
                    iVar3 = iVarQ6;
                    dVar.e(iVarQ3, iVarQ5, dVar2.e(), 8);
                }
                iVar3 = iVarQ6;
            } else {
                iVar3 = iVarQ6;
            }
            if (!z12) {
                if (i32 == 2 || z6 || !(i9 == 1 || i9 == 0)) {
                    if (i29 == -2) {
                        i29 = iMin;
                    }
                    int i35 = i30 == -2 ? iMin : i30;
                    if (iMin > 0 && i9 != 1) {
                        iMin = 0;
                    }
                    if (i29 > 0) {
                        dVar.h(iVarQ4, iVarQ3, i29, 8);
                        iMin = Math.max(iMin, i29);
                    }
                    if (i35 > 0) {
                        if ((z2 && i9 == 1) ? false : true) {
                            i10 = 8;
                            dVar.j(iVarQ4, iVarQ3, i35, 8);
                        } else {
                            i10 = 8;
                        }
                        iMin = Math.min(iMin, i35);
                    } else {
                        i10 = 8;
                    }
                    if (i9 == 1) {
                        if (z2) {
                            dVar.e(iVarQ4, iVarQ3, iMin, i10);
                        } else if (z8) {
                            dVar.e(iVarQ4, iVarQ3, iMin, 5);
                            dVar.j(iVarQ4, iVarQ3, iMin, i10);
                        } else {
                            dVar.e(iVarQ4, iVarQ3, iMin, 5);
                            dVar.j(iVarQ4, iVarQ3, iMin, i10);
                        }
                        z14 = z4;
                        i30 = i35;
                        i11 = i9;
                        iVar4 = iVarQ4;
                        z13 = z12;
                        iVar5 = iVar3;
                        i12 = i32;
                        i13 = i29;
                    } else {
                        if (i9 != 2) {
                            i11 = i9;
                            iVar4 = iVarQ4;
                            iVar5 = iVar3;
                            i12 = i32;
                            iVar6 = iVarQ5;
                            i30 = i35;
                            z13 = z12;
                            i13 = i29;
                            z14 = true;
                            if (z11) {
                                iVar7 = iVar;
                                iVar8 = iVar2;
                                iVar9 = iVarQ3;
                                i14 = 2;
                                c2 = 1;
                                i15 = 8;
                                i16 = i12;
                            } else {
                                if (!z8) {
                                    if ((zN || zN2 || zN3) && (!zN || zN2)) {
                                        if (!zN && zN2) {
                                            dVar.e(iVar4, iVar5, -dVar3.e(), 8);
                                            if (z2) {
                                                if (this.h && iVarQ3.g && (eVar5 = this.R) != null) {
                                                    f fVar = (f) eVar5;
                                                    if (z) {
                                                        fVar.i1(dVar2);
                                                    } else {
                                                        fVar.n1(dVar2);
                                                    }
                                                } else {
                                                    dVar.h(iVarQ3, iVar, 0, 5);
                                                }
                                            }
                                        } else if (zN && zN2) {
                                            e eVar7 = dVar2.f.f1132d;
                                            e eVar8 = dVar3.f.f1132d;
                                            e eVarI = I();
                                            int i36 = 6;
                                            if (z13) {
                                                i17 = i11;
                                                if (i17 == 0) {
                                                    if (i30 != 0 || i13 != 0) {
                                                        z21 = true;
                                                        z22 = false;
                                                        z23 = true;
                                                        i27 = 5;
                                                        i28 = 5;
                                                    } else if (iVar6.g && iVar5.g) {
                                                        dVar.e(iVarQ3, iVar6, dVar2.e(), 8);
                                                        dVar.e(iVar4, iVar5, -dVar3.e(), 8);
                                                        return;
                                                    } else {
                                                        z21 = false;
                                                        z22 = true;
                                                        z23 = false;
                                                        i27 = 8;
                                                        i28 = 8;
                                                    }
                                                    if ((eVar7 instanceof c.e.b.k.a) || (eVar8 instanceof c.e.b.k.a)) {
                                                        iVar10 = iVar2;
                                                        z15 = z23;
                                                        i18 = i27;
                                                        i19 = 6;
                                                        i20 = 4;
                                                        z16 = z21;
                                                        z17 = z22;
                                                    } else {
                                                        iVar10 = iVar2;
                                                        z15 = z23;
                                                        i20 = i28;
                                                        i19 = 6;
                                                        z16 = z21;
                                                        i18 = i27;
                                                        z17 = z22;
                                                    }
                                                } else {
                                                    if (i17 == 1) {
                                                        iVar10 = iVar2;
                                                        z15 = true;
                                                        z16 = true;
                                                        z17 = false;
                                                        i18 = 8;
                                                    } else if (i17 == 3) {
                                                        if (this.w == -1) {
                                                            if (z9) {
                                                                iVar10 = iVar2;
                                                                z15 = true;
                                                                z16 = true;
                                                                z17 = true;
                                                                i18 = 8;
                                                                i19 = z2 ? 5 : 4;
                                                            } else {
                                                                iVar10 = iVar2;
                                                                z15 = true;
                                                                z16 = true;
                                                                z17 = true;
                                                                i18 = 8;
                                                                i19 = 8;
                                                            }
                                                        } else if (z6) {
                                                            if (i6 == 2 || i6 == 1) {
                                                                i25 = 5;
                                                                i26 = 4;
                                                            } else {
                                                                i25 = 8;
                                                                i26 = 5;
                                                            }
                                                            i18 = i25;
                                                            i20 = i26;
                                                            z15 = true;
                                                            z16 = true;
                                                            z17 = true;
                                                            i19 = 6;
                                                            iVar10 = iVar2;
                                                        } else if (i30 > 0) {
                                                            iVar10 = iVar2;
                                                            z15 = true;
                                                            z16 = true;
                                                            z17 = true;
                                                            i18 = 5;
                                                            i19 = 6;
                                                        } else if (i30 != 0 || i13 != 0) {
                                                            iVar10 = iVar2;
                                                            z15 = true;
                                                            z16 = true;
                                                            z17 = true;
                                                            i18 = 5;
                                                        } else if (z9) {
                                                            iVar10 = iVar2;
                                                            i18 = (eVar7 == eVarI || eVar8 == eVarI) ? 5 : 4;
                                                            z15 = true;
                                                            z16 = true;
                                                            z17 = true;
                                                        } else {
                                                            iVar10 = iVar2;
                                                            z15 = true;
                                                            z16 = true;
                                                            z17 = true;
                                                            i18 = 5;
                                                            i19 = 6;
                                                            i20 = 8;
                                                        }
                                                        i20 = 5;
                                                    } else {
                                                        iVar10 = iVar2;
                                                        z15 = false;
                                                        z16 = false;
                                                    }
                                                    i19 = 6;
                                                    i20 = 4;
                                                }
                                                if (z15 || iVar6 != iVar5 || eVar7 == eVarI) {
                                                    z18 = true;
                                                } else {
                                                    z15 = false;
                                                    z18 = false;
                                                }
                                                if (z16) {
                                                    iVar12 = iVar6;
                                                    i21 = i17;
                                                    eVar = eVarI;
                                                    eVar2 = eVar8;
                                                    iVar13 = iVarQ3;
                                                    i22 = 8;
                                                    z19 = z2;
                                                } else {
                                                    if (z13 || z7 || z9 || iVar6 != iVar || iVar5 != iVar10) {
                                                        z19 = z2;
                                                    } else {
                                                        z19 = false;
                                                        i18 = 8;
                                                        i19 = 8;
                                                        z18 = false;
                                                    }
                                                    iVar12 = iVar6;
                                                    i22 = 8;
                                                    i21 = i17;
                                                    eVar = eVarI;
                                                    eVar2 = eVar8;
                                                    iVar13 = iVarQ3;
                                                    dVar.c(iVarQ3, iVar12, dVar2.e(), f, iVar5, iVar4, dVar3.e(), i19);
                                                }
                                                z20 = z18;
                                                if (this.e0 != i22 && !dVar3.l()) {
                                                    return;
                                                }
                                                c.e.b.i iVar16 = iVar12;
                                                if (z15) {
                                                    eVar3 = eVar2;
                                                    iVar14 = iVar13;
                                                } else {
                                                    if (!z19 || iVar16 == iVar5 || z13) {
                                                        eVar3 = eVar2;
                                                    } else {
                                                        if (eVar7 instanceof c.e.b.k.a) {
                                                            eVar3 = eVar2;
                                                        } else {
                                                            eVar3 = eVar2;
                                                            if (eVar3 instanceof c.e.b.k.a) {
                                                            }
                                                            iVar14 = iVar13;
                                                            dVar.h(iVar14, iVar16, dVar2.e(), i24);
                                                            dVar.j(iVar4, iVar5, -dVar3.e(), i24);
                                                            i18 = i24;
                                                        }
                                                        i24 = 6;
                                                        iVar14 = iVar13;
                                                        dVar.h(iVar14, iVar16, dVar2.e(), i24);
                                                        dVar.j(iVar4, iVar5, -dVar3.e(), i24);
                                                        i18 = i24;
                                                    }
                                                    i24 = i18;
                                                    iVar14 = iVar13;
                                                    dVar.h(iVar14, iVar16, dVar2.e(), i24);
                                                    dVar.j(iVar4, iVar5, -dVar3.e(), i24);
                                                    i18 = i24;
                                                }
                                                if (z19 || !z10 || (eVar7 instanceof c.e.b.k.a) || (eVar3 instanceof c.e.b.k.a)) {
                                                    i23 = i18;
                                                    iMin2 = i20;
                                                } else {
                                                    i23 = 6;
                                                    iMin2 = 6;
                                                    z20 = true;
                                                }
                                                if (z20) {
                                                    if (!z17 || (z9 && !z3)) {
                                                        eVar4 = eVar;
                                                    } else {
                                                        eVar4 = eVar;
                                                        if (eVar7 != eVar4 && eVar3 != eVar4) {
                                                            i36 = iMin2;
                                                        }
                                                        if ((eVar7 instanceof g) || (eVar3 instanceof g)) {
                                                            i36 = 5;
                                                        }
                                                        if ((eVar7 instanceof c.e.b.k.a) || (eVar3 instanceof c.e.b.k.a)) {
                                                            i36 = 5;
                                                        }
                                                        iMin2 = Math.max(z9 ? 5 : i36, iMin2);
                                                    }
                                                    if (z19) {
                                                        iMin2 = (z6 && !z9 && (eVar7 == eVar4 || eVar3 == eVar4)) ? 4 : Math.min(i23, iMin2);
                                                    }
                                                    dVar.e(iVar14, iVar16, dVar2.e(), iMin2);
                                                    dVar.e(iVar4, iVar5, -dVar3.e(), iMin2);
                                                }
                                                if (z19) {
                                                    int iE3 = iVar == iVar16 ? dVar2.e() : 0;
                                                    if (iVar16 != iVar) {
                                                        dVar.h(iVar14, iVar, iE3, 5);
                                                    }
                                                }
                                                if (z19 && z13 && i3 == 0 && i13 == 0) {
                                                    if (z13 || i21 != 3) {
                                                        dVar.h(iVar4, iVar14, 0, 5);
                                                    } else {
                                                        dVar.h(iVar4, iVar14, 0, i22);
                                                    }
                                                }
                                            } else {
                                                i17 = i11;
                                                if (iVar6.g && iVar5.g) {
                                                    dVar.c(iVarQ3, iVar6, dVar2.e(), f, iVar5, iVar4, dVar3.e(), 8);
                                                    if (z2 && z14) {
                                                        if (dVar3.f != null) {
                                                            iE = dVar3.e();
                                                            iVar11 = iVar2;
                                                        } else {
                                                            iVar11 = iVar2;
                                                            iE = 0;
                                                        }
                                                        if (iVar5 != iVar11) {
                                                            dVar.h(iVar11, iVar4, iE, 5);
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                    return;
                                                }
                                                iVar10 = iVar2;
                                                z15 = true;
                                                z16 = true;
                                            }
                                            z17 = false;
                                            i18 = 5;
                                            i19 = 6;
                                            i20 = 4;
                                            if (z15) {
                                                z18 = true;
                                                if (z16) {
                                                }
                                                z20 = z18;
                                                if (this.e0 != i22) {
                                                }
                                                c.e.b.i iVar162 = iVar12;
                                                if (z15) {
                                                }
                                                if (z19) {
                                                    i23 = i18;
                                                    iMin2 = i20;
                                                    if (z20) {
                                                    }
                                                    if (z19) {
                                                    }
                                                    if (z19) {
                                                        if (z13) {
                                                            dVar.h(iVar4, iVar14, 0, 5);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        z19 = z2;
                                    } else {
                                        z19 = z2;
                                    }
                                    if (z19 && z14) {
                                        if (dVar3.f != null) {
                                            iE2 = dVar3.e();
                                            iVar15 = iVar2;
                                        } else {
                                            iVar15 = iVar2;
                                            iE2 = 0;
                                        }
                                        if (iVar5 != iVar15) {
                                            if (!this.h || !iVar4.g || (eVar6 = this.R) == null) {
                                                dVar.h(iVar15, iVar4, iE2, 5);
                                                return;
                                            }
                                            f fVar2 = (f) eVar6;
                                            if (z) {
                                                fVar2.h1(dVar3);
                                                return;
                                            } else {
                                                fVar2.m1(dVar3);
                                                return;
                                            }
                                        }
                                        return;
                                    }
                                    return;
                                }
                                iVar7 = iVar;
                                iVar8 = iVar2;
                                iVar9 = iVarQ3;
                                i16 = i12;
                                i14 = 2;
                                c2 = 1;
                                i15 = 8;
                            }
                            if (i16 >= i14 && z2 && z14) {
                                dVar.h(iVar9, iVar7, 0, i15);
                                boolean z24 = z || this.J.f == null;
                                if (!z && (dVar4 = this.J.f) != null) {
                                    e eVar9 = dVar4.f1132d;
                                    if (eVar9.U != CropImageView.DEFAULT_ASPECT_RATIO) {
                                        b[] bVarArr = eVar9.Q;
                                        b bVar2 = bVarArr[0];
                                        b bVar3 = b.MATCH_CONSTRAINT;
                                        z24 = bVar2 == bVar3 && bVarArr[c2] == bVar3;
                                    }
                                }
                                if (z24) {
                                    dVar.h(iVar8, iVar4, 0, i15);
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        if (dVar2.j() == d.b.TOP || dVar2.j() == d.b.BOTTOM) {
                            iVarQ = dVar.q(this.R.m(d.b.TOP));
                            iVarQ2 = dVar.q(this.R.m(d.b.BOTTOM));
                        } else {
                            iVarQ = dVar.q(this.R.m(d.b.LEFT));
                            iVarQ2 = dVar.q(this.R.m(d.b.RIGHT));
                        }
                        c.e.b.i iVar17 = iVarQ;
                        c.e.b.b bVarR = dVar.r();
                        i11 = i9;
                        iVar5 = iVar3;
                        i12 = i32;
                        iVar6 = iVarQ5;
                        iVar4 = iVarQ4;
                        bVarR.k(iVarQ4, iVarQ3, iVarQ2, iVar17, f2);
                        dVar.d(bVarR);
                        i30 = i35;
                        i13 = i29;
                        z13 = false;
                    }
                } else {
                    int iMax = Math.max(i29, iMin);
                    if (i30 > 0) {
                        iMax = Math.min(i30, iMax);
                    }
                    dVar.e(iVarQ4, iVarQ3, iMax, 8);
                    z14 = z4;
                    i13 = i29;
                    i11 = i9;
                    iVar4 = iVarQ4;
                    iVar5 = iVar3;
                    z13 = false;
                    i12 = i32;
                }
                iVar6 = iVarQ5;
                if (z11) {
                }
                if (i16 >= i14) {
                    return;
                } else {
                    return;
                }
            }
            if (z5) {
                dVar.e(iVarQ4, iVarQ3, 0, 3);
                if (i3 > 0) {
                    dVar.h(iVarQ4, iVarQ3, i3, 8);
                }
                if (i4 < Integer.MAX_VALUE) {
                    dVar.j(iVarQ4, iVarQ3, i4, 8);
                }
            } else {
                dVar.e(iVarQ4, iVarQ3, iMin, 8);
            }
            i11 = i9;
            iVar6 = iVarQ5;
            iVar4 = iVarQ4;
            z13 = z12;
            iVar5 = iVar3;
            i13 = i29;
            i12 = i32;
            z14 = z4;
            if (z11) {
            }
            if (i16 >= i14) {
            }
        }
        if (this.e0 != 8) {
        }
        if (z11) {
        }
        if (!z12) {
        }
        z14 = z4;
        if (z11) {
        }
        if (i16 >= i14) {
        }
    }

    public int A() {
        return this.D;
    }

    public void A0(int i, int i2, int i3, float f) {
        this.n = i;
        this.q = i2;
        if (i3 == Integer.MAX_VALUE) {
            i3 = 0;
        }
        this.r = i3;
        this.s = f;
        if (f <= CropImageView.DEFAULT_ASPECT_RATIO || f >= 1.0f || this.n != 0) {
            return;
        }
        this.n = 2;
    }

    public int B() {
        return this.E;
    }

    public void B0(float f) {
        this.j0[0] = f;
    }

    public int C(int i) {
        if (i == 0) {
            return R();
        }
        if (i == 1) {
            return v();
        }
        return 0;
    }

    protected void C0(int i, boolean z) {
        this.P[i] = z;
    }

    public int D() {
        return this.y[1];
    }

    public void D0(boolean z) {
        this.B = z;
    }

    public int E() {
        return this.y[0];
    }

    public void E0(boolean z) {
        this.C = z;
    }

    public int F() {
        return this.a0;
    }

    public void F0(int i, int i2) {
        this.D = i;
        this.E = i2;
        I0(false);
    }

    public int G() {
        return this.Z;
    }

    public void G0(int i) {
        this.y[1] = i;
    }

    public e H(int i) {
        d dVar;
        d dVar2;
        if (i != 0) {
            if (i == 1 && (dVar2 = (dVar = this.I).f) != null && dVar2.f == dVar) {
                return dVar2.f1132d;
            }
            return null;
        }
        d dVar3 = this.H;
        d dVar4 = dVar3.f;
        if (dVar4 == null || dVar4.f != dVar3) {
            return null;
        }
        return dVar4.f1132d;
    }

    public void H0(int i) {
        this.y[0] = i;
    }

    public e I() {
        return this.R;
    }

    public void I0(boolean z) {
        this.g = z;
    }

    public e J(int i) {
        d dVar;
        d dVar2;
        if (i != 0) {
            if (i == 1 && (dVar2 = (dVar = this.G).f) != null && dVar2.f == dVar) {
                return dVar2.f1132d;
            }
            return null;
        }
        d dVar3 = this.F;
        d dVar4 = dVar3.f;
        if (dVar4 == null || dVar4.f != dVar3) {
            return null;
        }
        return dVar4.f1132d;
    }

    public void J0(int i) {
        if (i < 0) {
            this.a0 = 0;
        } else {
            this.a0 = i;
        }
    }

    public int K() {
        return S() + this.S;
    }

    public void K0(int i) {
        if (i < 0) {
            this.Z = 0;
        } else {
            this.Z = i;
        }
    }

    public p L(int i) {
        if (i == 0) {
            return this.f1138d;
        }
        if (i == 1) {
            return this.e;
        }
        return null;
    }

    public void L0(int i, int i2) {
        this.W = i;
        this.X = i2;
    }

    public float M() {
        return this.c0;
    }

    public void M0(e eVar) {
        this.R = eVar;
    }

    public int N() {
        return this.i0;
    }

    public void N0(float f) {
        this.c0 = f;
    }

    public b O() {
        return this.Q[1];
    }

    public void O0(int i) {
        this.i0 = i;
    }

    public int P() {
        int i = this.F != null ? 0 + this.G.g : 0;
        return this.H != null ? i + this.I.g : i;
    }

    public void P0(int i, int i2) {
        this.X = i;
        int i3 = i2 - i;
        this.T = i3;
        int i4 = this.a0;
        if (i3 < i4) {
            this.T = i4;
        }
    }

    public int Q() {
        return this.e0;
    }

    public void Q0(b bVar) {
        this.Q[1] = bVar;
    }

    public int R() {
        if (this.e0 == 8) {
            return 0;
        }
        return this.S;
    }

    public void R0(int i, int i2, int i3, float f) {
        this.o = i;
        this.t = i2;
        if (i3 == Integer.MAX_VALUE) {
            i3 = 0;
        }
        this.u = i3;
        this.v = f;
        if (f <= CropImageView.DEFAULT_ASPECT_RATIO || f >= 1.0f || this.o != 0) {
            return;
        }
        this.o = 2;
    }

    public int S() {
        e eVar = this.R;
        return (eVar == null || !(eVar instanceof f)) ? this.W : ((f) eVar).w0 + this.W;
    }

    public void S0(float f) {
        this.j0[1] = f;
    }

    public int T() {
        e eVar = this.R;
        return (eVar == null || !(eVar instanceof f)) ? this.X : ((f) eVar).x0 + this.X;
    }

    public void T0(int i) {
        this.e0 = i;
    }

    public boolean U() {
        return this.A;
    }

    public void U0(int i) {
        this.S = i;
        int i2 = this.Z;
        if (i < i2) {
            this.S = i2;
        }
    }

    public boolean V(int i) {
        if (i == 0) {
            return (this.F.f != null ? 1 : 0) + (this.H.f != null ? 1 : 0) < 2;
        }
        return ((this.G.f != null ? 1 : 0) + (this.I.f != null ? 1 : 0)) + (this.J.f != null ? 1 : 0) < 2;
    }

    public void V0(int i) {
        this.W = i;
    }

    public boolean W() {
        int size = this.O.size();
        for (int i = 0; i < size; i++) {
            if (this.O.get(i).l()) {
                return true;
            }
        }
        return false;
    }

    public void W0(int i) {
        this.X = i;
    }

    public void X(d.b bVar, e eVar, d.b bVar2, int i, int i2) {
        m(bVar).a(eVar.m(bVar2), i, i2, true);
    }

    public void X0(boolean z, boolean z2, boolean z3, boolean z4) {
        if (this.w == -1) {
            if (z3 && !z4) {
                this.w = 0;
            } else if (!z3 && z4) {
                this.w = 1;
                if (this.V == -1) {
                    this.x = 1.0f / this.x;
                }
            }
        }
        if (this.w == 0 && (!this.G.n() || !this.I.n())) {
            this.w = 1;
        } else if (this.w == 1 && (!this.F.n() || !this.H.n())) {
            this.w = 0;
        }
        if (this.w == -1 && (!this.G.n() || !this.I.n() || !this.F.n() || !this.H.n())) {
            if (this.G.n() && this.I.n()) {
                this.w = 0;
            } else if (this.F.n() && this.H.n()) {
                this.x = 1.0f / this.x;
                this.w = 1;
            }
        }
        if (this.w == -1) {
            if (this.q > 0 && this.t == 0) {
                this.w = 0;
            } else {
                if (this.q != 0 || this.t <= 0) {
                    return;
                }
                this.x = 1.0f / this.x;
                this.w = 1;
            }
        }
    }

    public void Y0(boolean z, boolean z2) {
        int i;
        int i2;
        boolean zK = z & this.f1138d.k();
        boolean zK2 = z2 & this.e.k();
        c.e.b.k.m.l lVar = this.f1138d;
        int i3 = lVar.h.g;
        n nVar = this.e;
        int i4 = nVar.h.g;
        int i5 = lVar.i.g;
        int i6 = nVar.i.g;
        int i7 = i6 - i4;
        if (i5 - i3 < 0 || i7 < 0 || i3 == Integer.MIN_VALUE || i3 == Integer.MAX_VALUE || i4 == Integer.MIN_VALUE || i4 == Integer.MAX_VALUE || i5 == Integer.MIN_VALUE || i5 == Integer.MAX_VALUE || i6 == Integer.MIN_VALUE || i6 == Integer.MAX_VALUE) {
            i5 = 0;
            i3 = 0;
            i6 = 0;
            i4 = 0;
        }
        int i8 = i5 - i3;
        int i9 = i6 - i4;
        if (zK) {
            this.W = i3;
        }
        if (zK2) {
            this.X = i4;
        }
        if (this.e0 == 8) {
            this.S = 0;
            this.T = 0;
            return;
        }
        if (zK) {
            if (this.Q[0] == b.FIXED && i8 < (i2 = this.S)) {
                i8 = i2;
            }
            this.S = i8;
            int i10 = this.Z;
            if (i8 < i10) {
                this.S = i10;
            }
        }
        if (zK2) {
            if (this.Q[1] == b.FIXED && i9 < (i = this.T)) {
                i9 = i;
            }
            this.T = i9;
            int i11 = this.a0;
            if (i9 < i11) {
                this.T = i11;
            }
        }
    }

    public boolean Z() {
        d dVar = this.F;
        d dVar2 = dVar.f;
        if (dVar2 != null && dVar2.f == dVar) {
            return true;
        }
        d dVar3 = this.H;
        d dVar4 = dVar3.f;
        return dVar4 != null && dVar4.f == dVar3;
    }

    public void Z0(c.e.b.d dVar, boolean z) {
        n nVar;
        c.e.b.k.m.l lVar;
        int iX = dVar.x(this.F);
        int iX2 = dVar.x(this.G);
        int iX3 = dVar.x(this.H);
        int iX4 = dVar.x(this.I);
        if (z && (lVar = this.f1138d) != null) {
            c.e.b.k.m.f fVar = lVar.h;
            if (fVar.j) {
                c.e.b.k.m.f fVar2 = lVar.i;
                if (fVar2.j) {
                    iX = fVar.g;
                    iX3 = fVar2.g;
                }
            }
        }
        if (z && (nVar = this.e) != null) {
            c.e.b.k.m.f fVar3 = nVar.h;
            if (fVar3.j) {
                c.e.b.k.m.f fVar4 = nVar.i;
                if (fVar4.j) {
                    iX2 = fVar3.g;
                    iX4 = fVar4.g;
                }
            }
        }
        int i = iX4 - iX2;
        if (iX3 - iX < 0 || i < 0 || iX == Integer.MIN_VALUE || iX == Integer.MAX_VALUE || iX2 == Integer.MIN_VALUE || iX2 == Integer.MAX_VALUE || iX3 == Integer.MIN_VALUE || iX3 == Integer.MAX_VALUE || iX4 == Integer.MIN_VALUE || iX4 == Integer.MAX_VALUE) {
            iX4 = 0;
            iX = 0;
            iX2 = 0;
            iX3 = 0;
        }
        t0(iX, iX2, iX3, iX4);
    }

    public boolean a0() {
        return this.B;
    }

    public boolean b0() {
        d dVar = this.G;
        d dVar2 = dVar.f;
        if (dVar2 != null && dVar2.f == dVar) {
            return true;
        }
        d dVar3 = this.I;
        d dVar4 = dVar3.f;
        return dVar4 != null && dVar4.f == dVar3;
    }

    public boolean c0() {
        return this.C;
    }

    public boolean d0() {
        return this.g && this.e0 != 8;
    }

    public void e(f fVar, c.e.b.d dVar, HashSet<e> hashSet, int i, boolean z) {
        if (z) {
            if (!hashSet.contains(this)) {
                return;
            }
            j.a(fVar, dVar, this);
            hashSet.remove(this);
            g(dVar, fVar.B1(64));
        }
        if (i == 0) {
            HashSet<d> hashSetC = this.F.c();
            if (hashSetC != null) {
                Iterator<d> it = hashSetC.iterator();
                while (it.hasNext()) {
                    it.next().f1132d.e(fVar, dVar, hashSet, i, true);
                }
            }
            HashSet<d> hashSetC2 = this.H.c();
            if (hashSetC2 != null) {
                Iterator<d> it2 = hashSetC2.iterator();
                while (it2.hasNext()) {
                    it2.next().f1132d.e(fVar, dVar, hashSet, i, true);
                }
                return;
            }
            return;
        }
        HashSet<d> hashSetC3 = this.G.c();
        if (hashSetC3 != null) {
            Iterator<d> it3 = hashSetC3.iterator();
            while (it3.hasNext()) {
                it3.next().f1132d.e(fVar, dVar, hashSet, i, true);
            }
        }
        HashSet<d> hashSetC4 = this.I.c();
        if (hashSetC4 != null) {
            Iterator<d> it4 = hashSetC4.iterator();
            while (it4.hasNext()) {
                it4.next().f1132d.e(fVar, dVar, hashSet, i, true);
            }
        }
        HashSet<d> hashSetC5 = this.J.c();
        if (hashSetC5 != null) {
            Iterator<d> it5 = hashSetC5.iterator();
            while (it5.hasNext()) {
                it5.next().f1132d.e(fVar, dVar, hashSet, i, true);
            }
        }
    }

    public boolean e0() {
        return this.j || (this.F.m() && this.H.m());
    }

    boolean f() {
        return (this instanceof k) || (this instanceof g);
    }

    public boolean f0() {
        return this.k || (this.G.m() && this.I.m());
    }

    /* JADX WARN: Removed duplicated region for block: B:198:0x031b  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x032d  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0331  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0334  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0432  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0442  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x04a6  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x04ba  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x04bc  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x04bf  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x0550  */
    /* JADX WARN: Removed duplicated region for block: B:304:0x0553  */
    /* JADX WARN: Removed duplicated region for block: B:306:0x0593  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x0599  */
    /* JADX WARN: Removed duplicated region for block: B:312:0x05c4  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x05ce  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void g(c.e.b.d dVar, boolean z) {
        boolean z2;
        boolean z3;
        e eVar;
        e eVar2;
        boolean z4;
        boolean z5;
        int i;
        int i2;
        int i3;
        int i4;
        boolean z6;
        int i5;
        boolean z7;
        boolean z8;
        c.e.b.i iVar;
        c.e.b.i iVar2;
        c.e.b.i iVar3;
        c.e.b.i iVar4;
        c.e.b.i iVar5;
        int i6;
        int i7;
        char c2;
        e eVar3;
        c.e.b.d dVar2;
        c.e.b.i iVar6;
        c.e.b.i iVar7;
        c.e.b.i iVar8;
        boolean z9;
        c.e.b.i iVar9;
        c.e.b.i iVar10;
        e eVar4;
        boolean z10;
        c.e.b.k.m.l lVar;
        int i8;
        int i9;
        boolean Z;
        boolean zB0;
        c.e.b.k.m.l lVar2;
        n nVar;
        c.e.b.i iVarQ = dVar.q(this.F);
        c.e.b.i iVarQ2 = dVar.q(this.H);
        c.e.b.i iVarQ3 = dVar.q(this.G);
        c.e.b.i iVarQ4 = dVar.q(this.I);
        c.e.b.i iVarQ5 = dVar.q(this.J);
        e eVar5 = this.R;
        if (eVar5 != null) {
            boolean z11 = eVar5 != null && eVar5.Q[0] == b.WRAP_CONTENT;
            e eVar6 = this.R;
            z2 = z11;
            z3 = eVar6 != null && eVar6.Q[1] == b.WRAP_CONTENT;
        } else {
            z2 = false;
            z3 = false;
        }
        if (this.e0 == 8 && !W()) {
            boolean[] zArr = this.P;
            if (!zArr[0] && !zArr[1]) {
                return;
            }
        }
        if (this.j || this.k) {
            if (this.j) {
                dVar.f(iVarQ, this.W);
                dVar.f(iVarQ2, this.W + this.S);
                if (z2 && (eVar2 = this.R) != null) {
                    if (this.i) {
                        f fVar = (f) eVar2;
                        fVar.n1(this.F);
                        fVar.h1(this.H);
                    } else {
                        dVar.h(dVar.q(eVar2.H), iVarQ2, 0, 5);
                    }
                }
            }
            if (this.k) {
                dVar.f(iVarQ3, this.X);
                dVar.f(iVarQ4, this.X + this.T);
                if (this.J.l()) {
                    dVar.f(iVarQ5, this.X + this.Y);
                }
                if (z3 && (eVar = this.R) != null) {
                    if (this.i) {
                        f fVar2 = (f) eVar;
                        fVar2.n1(this.G);
                        fVar2.m1(this.I);
                    } else {
                        dVar.h(dVar.q(eVar.I), iVarQ4, 0, 5);
                    }
                }
            }
            if (this.j && this.k) {
                this.j = false;
                this.k = false;
                return;
            }
        }
        c.e.b.e eVar7 = c.e.b.d.x;
        if (eVar7 != null) {
            eVar7.y++;
        }
        if (z && (lVar2 = this.f1138d) != null && (nVar = this.e) != null && lVar2.h.j && lVar2.i.j && nVar.h.j && nVar.i.j) {
            c.e.b.e eVar8 = c.e.b.d.x;
            if (eVar8 != null) {
                eVar8.r++;
            }
            dVar.f(iVarQ, this.f1138d.h.g);
            dVar.f(iVarQ2, this.f1138d.i.g);
            dVar.f(iVarQ3, this.e.h.g);
            dVar.f(iVarQ4, this.e.i.g);
            dVar.f(iVarQ5, this.e.k.g);
            if (this.R != null) {
                if (z2 && this.f[0] && !Z()) {
                    dVar.h(dVar.q(this.R.H), iVarQ2, 0, 8);
                }
                if (z3 && this.f[1] && !b0()) {
                    dVar.h(dVar.q(this.R.I), iVarQ4, 0, 8);
                }
            }
            this.j = false;
            this.k = false;
            return;
        }
        c.e.b.e eVar9 = c.e.b.d.x;
        if (eVar9 != null) {
            eVar9.s++;
        }
        if (this.R != null) {
            if (Y(0)) {
                ((f) this.R).e1(this, 0);
                Z = true;
            } else {
                Z = Z();
            }
            if (Y(1)) {
                ((f) this.R).e1(this, 1);
                zB0 = true;
            } else {
                zB0 = b0();
            }
            if (!Z && z2 && this.e0 != 8 && this.F.f == null && this.H.f == null) {
                dVar.h(dVar.q(this.R.H), iVarQ2, 0, 1);
            }
            if (!zB0 && z3 && this.e0 != 8 && this.G.f == null && this.I.f == null && this.J == null) {
                dVar.h(dVar.q(this.R.I), iVarQ4, 0, 1);
            }
            z5 = Z;
            z4 = zB0;
        } else {
            z4 = false;
            z5 = false;
        }
        int i10 = this.S;
        int i11 = this.Z;
        if (i10 < i11) {
            i10 = i11;
        }
        int i12 = this.T;
        int i13 = this.a0;
        if (i12 < i13) {
            i12 = i13;
        }
        boolean z12 = this.Q[0] != b.MATCH_CONSTRAINT;
        boolean z13 = this.Q[1] != b.MATCH_CONSTRAINT;
        this.w = this.V;
        float f = this.U;
        this.x = f;
        int i14 = this.n;
        int i15 = this.o;
        int i16 = i10;
        if (f <= CropImageView.DEFAULT_ASPECT_RATIO || this.e0 == 8) {
            i = i15;
            i2 = i14;
            i3 = i16;
            i4 = i12;
            z6 = false;
        } else {
            int i17 = i12;
            if (this.Q[0] == b.MATCH_CONSTRAINT && i14 == 0) {
                i14 = 3;
            }
            if (this.Q[1] == b.MATCH_CONSTRAINT && i15 == 0) {
                i15 = 3;
            }
            b[] bVarArr = this.Q;
            b bVar = bVarArr[0];
            b bVar2 = b.MATCH_CONSTRAINT;
            if (bVar == bVar2 && bVarArr[1] == bVar2) {
                i9 = 3;
                if (i14 == 3 && i15 == 3) {
                    X0(z2, z3, z12, z13);
                }
                i = i15;
                i2 = i14;
                i3 = i16;
                i4 = i17;
                z6 = true;
            } else {
                i9 = 3;
            }
            b[] bVarArr2 = this.Q;
            b bVar3 = bVarArr2[0];
            b bVar4 = b.MATCH_CONSTRAINT;
            if (bVar3 == bVar4 && i14 == i9) {
                this.w = 0;
                i3 = (int) (this.x * this.T);
                i = i15;
                if (bVarArr2[1] != bVar4) {
                    i4 = i17;
                    z6 = false;
                    i2 = 4;
                } else {
                    i2 = i14;
                    i4 = i17;
                    z6 = true;
                }
            } else {
                if (this.Q[1] == b.MATCH_CONSTRAINT && i15 == 3) {
                    this.w = 1;
                    if (this.V == -1) {
                        this.x = 1.0f / this.x;
                    }
                    i4 = (int) (this.x * this.S);
                    if (this.Q[0] != b.MATCH_CONSTRAINT) {
                        i2 = i14;
                        i3 = i16;
                        z6 = false;
                        i = 4;
                    } else {
                        i = i15;
                        i2 = i14;
                        i3 = i16;
                        z6 = true;
                    }
                }
                i = i15;
                i2 = i14;
                i3 = i16;
                i4 = i17;
                z6 = true;
            }
        }
        int[] iArr = this.p;
        iArr[0] = i2;
        iArr[1] = i;
        if (z6) {
            int i18 = this.w;
            i5 = -1;
            boolean z14 = i18 == 0 || i18 == -1;
            boolean z15 = !z6 && ((i8 = this.w) == 1 || i8 == i5);
            boolean z16 = this.Q[0] != b.WRAP_CONTENT && (this instanceof f);
            int i19 = !z16 ? 0 : i3;
            boolean z17 = !this.M.n();
            boolean[] zArr2 = this.P;
            boolean z18 = zArr2[0];
            boolean z19 = zArr2[1];
            if (this.l != 2 || this.j) {
                z7 = z2;
                z8 = z3;
                iVar = iVarQ5;
                iVar2 = iVarQ4;
                iVar3 = iVarQ3;
                iVar4 = iVarQ2;
                iVar5 = iVarQ;
            } else {
                if (z && (lVar = this.f1138d) != null) {
                    c.e.b.k.m.f fVar3 = lVar.h;
                    if (fVar3.j && lVar.i.j) {
                        if (z) {
                            dVar.f(iVarQ, fVar3.g);
                            dVar.f(iVarQ2, this.f1138d.i.g);
                            if (this.R != null && z2 && this.f[0] && !Z()) {
                                dVar.h(dVar.q(this.R.H), iVarQ2, 0, 8);
                            }
                        }
                        z7 = z2;
                        z8 = z3;
                        iVar = iVarQ5;
                        iVar2 = iVarQ4;
                        iVar3 = iVarQ3;
                        iVar4 = iVarQ2;
                        iVar5 = iVarQ;
                    }
                }
                e eVar10 = this.R;
                c.e.b.i iVarQ6 = eVar10 != null ? dVar.q(eVar10.H) : null;
                e eVar11 = this.R;
                c.e.b.i iVarQ7 = eVar11 != null ? dVar.q(eVar11.F) : null;
                boolean z20 = this.f[0];
                b[] bVarArr3 = this.Q;
                z7 = z2;
                z8 = z3;
                iVar = iVarQ5;
                iVar2 = iVarQ4;
                iVar3 = iVarQ3;
                iVar4 = iVarQ2;
                iVar5 = iVarQ;
                i(dVar, true, z2, z3, z20, iVarQ7, iVarQ6, bVarArr3[0], z16, this.F, this.H, this.W, i19, this.Z, this.y[0], this.b0, z14, bVarArr3[1] == b.MATCH_CONSTRAINT, z5, z4, z18, i2, i, this.q, this.r, this.s, z17);
            }
            if (z) {
                i6 = 8;
                i7 = 0;
                c2 = 1;
                eVar3 = this;
                dVar2 = dVar;
                iVar6 = iVar;
                iVar7 = iVar2;
                iVar8 = iVar3;
            } else {
                eVar3 = this;
                n nVar2 = eVar3.e;
                if (nVar2 != null) {
                    c.e.b.k.m.f fVar4 = nVar2.h;
                    if (fVar4.j && nVar2.i.j) {
                        dVar2 = dVar;
                        iVar8 = iVar3;
                        dVar2.f(iVar8, fVar4.g);
                        iVar7 = iVar2;
                        dVar2.f(iVar7, eVar3.e.i.g);
                        iVar6 = iVar;
                        dVar2.f(iVar6, eVar3.e.k.g);
                        e eVar12 = eVar3.R;
                        if (eVar12 == null || z4 || !z8) {
                            i6 = 8;
                            i7 = 0;
                            c2 = 1;
                        } else {
                            c2 = 1;
                            if (eVar3.f[1]) {
                                i6 = 8;
                                i7 = 0;
                                dVar2.h(dVar2.q(eVar12.I), iVar7, 0, 8);
                            } else {
                                i6 = 8;
                                i7 = 0;
                            }
                        }
                        z9 = false;
                        if (!(eVar3.m == 2 ? false : z9) || eVar3.k) {
                            iVar9 = iVar7;
                            iVar10 = iVar8;
                        } else {
                            boolean z21 = eVar3.Q[c2] == b.WRAP_CONTENT && (eVar3 instanceof f);
                            if (z21) {
                                i4 = 0;
                            }
                            e eVar13 = eVar3.R;
                            c.e.b.i iVarQ8 = eVar13 != null ? dVar2.q(eVar13.I) : null;
                            e eVar14 = eVar3.R;
                            c.e.b.i iVarQ9 = eVar14 != null ? dVar2.q(eVar14.G) : null;
                            if (eVar3.Y <= 0 && eVar3.e0 != i6) {
                                z10 = z17;
                                boolean z22 = eVar3.f[c2];
                                b[] bVarArr4 = eVar3.Q;
                                iVar9 = iVar7;
                                iVar10 = iVar8;
                                i(dVar, false, z8, z7, z22, iVarQ9, iVarQ8, bVarArr4[c2], z21, eVar3.G, eVar3.I, eVar3.X, i4, eVar3.a0, eVar3.y[c2], eVar3.c0, z15, bVarArr4[0] == b.MATCH_CONSTRAINT, z4, z5, z19, i, i2, eVar3.t, eVar3.u, eVar3.v, z10);
                            } else if (eVar3.J.f != null) {
                                dVar2.e(iVar6, iVar8, n(), i6);
                                dVar2.e(iVar6, dVar2.q(eVar3.J.f), i7, i6);
                                if (z8) {
                                    dVar2.h(iVarQ8, dVar2.q(eVar3.I), i7, 5);
                                }
                                z10 = false;
                                boolean z222 = eVar3.f[c2];
                                b[] bVarArr42 = eVar3.Q;
                                iVar9 = iVar7;
                                iVar10 = iVar8;
                                i(dVar, false, z8, z7, z222, iVarQ9, iVarQ8, bVarArr42[c2], z21, eVar3.G, eVar3.I, eVar3.X, i4, eVar3.a0, eVar3.y[c2], eVar3.c0, z15, bVarArr42[0] == b.MATCH_CONSTRAINT, z4, z5, z19, i, i2, eVar3.t, eVar3.u, eVar3.v, z10);
                            } else {
                                if (eVar3.e0 == i6) {
                                    dVar2.e(iVar6, iVar8, i7, i6);
                                } else {
                                    dVar2.e(iVar6, iVar8, n(), i6);
                                }
                                z10 = z17;
                                boolean z2222 = eVar3.f[c2];
                                b[] bVarArr422 = eVar3.Q;
                                iVar9 = iVar7;
                                iVar10 = iVar8;
                                i(dVar, false, z8, z7, z2222, iVarQ9, iVarQ8, bVarArr422[c2], z21, eVar3.G, eVar3.I, eVar3.X, i4, eVar3.a0, eVar3.y[c2], eVar3.c0, z15, bVarArr422[0] == b.MATCH_CONSTRAINT, z4, z5, z19, i, i2, eVar3.t, eVar3.u, eVar3.v, z10);
                            }
                        }
                        if (z6) {
                            eVar4 = this;
                            if (eVar4.w == 1) {
                                dVar.k(iVar9, iVar10, iVar4, iVar5, eVar4.x, 8);
                            } else {
                                dVar.k(iVar4, iVar5, iVar9, iVar10, eVar4.x, 8);
                            }
                        } else {
                            eVar4 = this;
                        }
                        if (eVar4.M.n()) {
                            dVar.b(eVar4, eVar4.M.i().g(), (float) Math.toRadians(eVar4.z + 90.0f), eVar4.M.e());
                        }
                        eVar4.j = false;
                        eVar4.k = false;
                    }
                }
                dVar2 = dVar;
                iVar6 = iVar;
                iVar7 = iVar2;
                iVar8 = iVar3;
                i6 = 8;
                i7 = 0;
                c2 = 1;
            }
            z9 = true;
            if (eVar3.m == 2 ? false : z9) {
                iVar9 = iVar7;
                iVar10 = iVar8;
            }
            if (z6) {
            }
            if (eVar4.M.n()) {
            }
            eVar4.j = false;
            eVar4.k = false;
        }
        i5 = -1;
        if (z6) {
        }
        if (this.Q[0] != b.WRAP_CONTENT) {
        }
        if (!z16) {
        }
        boolean z172 = !this.M.n();
        boolean[] zArr22 = this.P;
        boolean z182 = zArr22[0];
        boolean z192 = zArr22[1];
        if (this.l != 2) {
            z7 = z2;
            z8 = z3;
            iVar = iVarQ5;
            iVar2 = iVarQ4;
            iVar3 = iVarQ3;
            iVar4 = iVarQ2;
            iVar5 = iVarQ;
        }
        if (z) {
        }
        z9 = true;
        if (eVar3.m == 2 ? false : z9) {
        }
        if (z6) {
        }
        if (eVar4.M.n()) {
        }
        eVar4.j = false;
        eVar4.k = false;
    }

    public boolean g0() {
        b[] bVarArr = this.Q;
        b bVar = bVarArr[0];
        b bVar2 = b.MATCH_CONSTRAINT;
        return bVar == bVar2 && bVarArr[1] == bVar2;
    }

    public boolean h() {
        return this.e0 != 8;
    }

    public void h0() {
        this.F.p();
        this.G.p();
        this.H.p();
        this.I.p();
        this.J.p();
        this.K.p();
        this.L.p();
        this.M.p();
        this.R = null;
        this.z = CropImageView.DEFAULT_ASPECT_RATIO;
        this.S = 0;
        this.T = 0;
        this.U = CropImageView.DEFAULT_ASPECT_RATIO;
        this.V = -1;
        this.W = 0;
        this.X = 0;
        this.Y = 0;
        this.Z = 0;
        this.a0 = 0;
        float f = o0;
        this.b0 = f;
        this.c0 = f;
        b[] bVarArr = this.Q;
        b bVar = b.FIXED;
        bVarArr[0] = bVar;
        bVarArr[1] = bVar;
        this.d0 = null;
        this.e0 = 0;
        this.g0 = null;
        this.h0 = 0;
        this.i0 = 0;
        float[] fArr = this.j0;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.l = -1;
        this.m = -1;
        int[] iArr = this.y;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.n = 0;
        this.o = 0;
        this.s = 1.0f;
        this.v = 1.0f;
        this.r = Integer.MAX_VALUE;
        this.u = Integer.MAX_VALUE;
        this.q = 0;
        this.t = 0;
        this.w = -1;
        this.x = 1.0f;
        boolean[] zArr = this.f;
        zArr[0] = true;
        zArr[1] = true;
        this.C = false;
        boolean[] zArr2 = this.P;
        zArr2[0] = false;
        zArr2[1] = false;
        this.g = true;
    }

    public void i0() {
        this.j = false;
        this.k = false;
        int size = this.O.size();
        for (int i = 0; i < size; i++) {
            this.O.get(i).q();
        }
    }

    public void j(e eVar, float f, int i) {
        d.b bVar = d.b.CENTER;
        X(bVar, eVar, bVar, i, 0);
        this.z = f;
    }

    public void j0(c.e.b.c cVar) {
        this.F.r(cVar);
        this.G.r(cVar);
        this.H.r(cVar);
        this.I.r(cVar);
        this.J.r(cVar);
        this.M.r(cVar);
        this.K.r(cVar);
        this.L.r(cVar);
    }

    public void k(c.e.b.d dVar) {
        dVar.q(this.F);
        dVar.q(this.G);
        dVar.q(this.H);
        dVar.q(this.I);
        if (this.Y > 0) {
            dVar.q(this.J);
        }
    }

    public void k0(int i) {
        this.Y = i;
        this.A = i > 0;
    }

    public void l() {
        if (this.f1138d == null) {
            this.f1138d = new c.e.b.k.m.l(this);
        }
        if (this.e == null) {
            this.e = new n(this);
        }
    }

    public void l0(Object obj) {
        this.d0 = obj;
    }

    public d m(d.b bVar) {
        switch (a.a[bVar.ordinal()]) {
            case 1:
                return this.F;
            case 2:
                return this.G;
            case 3:
                return this.H;
            case 4:
                return this.I;
            case 5:
                return this.J;
            case 6:
                return this.M;
            case 7:
                return this.K;
            case 8:
                return this.L;
            case 9:
                return null;
            default:
                throw new AssertionError(bVar.name());
        }
    }

    public void m0(String str) {
        this.f0 = str;
    }

    public int n() {
        return this.Y;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0084 A[PHI: r0
      0x0084: PHI (r0v2 int) = (r0v1 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int) binds: [B:45:0x0084, B:35:0x007d, B:23:0x004f, B:25:0x0055, B:27:0x0061, B:29:0x0065] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0084 -> B:39:0x0085). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void n0(String str) {
        float fAbs;
        int i = 0;
        if (str == null || str.length() == 0) {
            this.U = CropImageView.DEFAULT_ASPECT_RATIO;
            return;
        }
        int i2 = -1;
        int length = str.length();
        int iIndexOf = str.indexOf(44);
        int i3 = 0;
        if (iIndexOf > 0 && iIndexOf < length - 1) {
            String strSubstring = str.substring(0, iIndexOf);
            if (strSubstring.equalsIgnoreCase("W")) {
                i2 = 0;
            } else if (strSubstring.equalsIgnoreCase("H")) {
                i2 = 1;
            }
            i3 = iIndexOf + 1;
        }
        int iIndexOf2 = str.indexOf(58);
        if (iIndexOf2 < 0 || iIndexOf2 >= length - 1) {
            String strSubstring2 = str.substring(i3);
            fAbs = strSubstring2.length() > 0 ? Float.parseFloat(strSubstring2) : CropImageView.DEFAULT_ASPECT_RATIO;
        } else {
            String strSubstring3 = str.substring(i3, iIndexOf2);
            String strSubstring4 = str.substring(iIndexOf2 + 1);
            if (strSubstring3.length() > 0 && strSubstring4.length() > 0) {
                float f = Float.parseFloat(strSubstring3);
                float f2 = Float.parseFloat(strSubstring4);
                if (f > CropImageView.DEFAULT_ASPECT_RATIO && f2 > CropImageView.DEFAULT_ASPECT_RATIO) {
                    fAbs = i2 == 1 ? Math.abs(f2 / f) : Math.abs(f / f2);
                }
            }
        }
        i = (fAbs > i ? 1 : (fAbs == i ? 0 : -1));
        if (i > 0) {
            this.U = fAbs;
            this.V = i2;
        }
    }

    public float o(int i) {
        if (i == 0) {
            return this.b0;
        }
        if (i == 1) {
            return this.c0;
        }
        return -1.0f;
    }

    public void o0(int i) {
        if (this.A) {
            int i2 = i - this.Y;
            int i3 = this.T + i2;
            this.X = i2;
            this.G.s(i2);
            this.I.s(i3);
            this.J.s(i);
            this.k = true;
        }
    }

    public int p() {
        return T() + this.T;
    }

    public void p0(int i, int i2) {
        this.F.s(i);
        this.H.s(i2);
        this.W = i;
        this.S = i2 - i;
        this.j = true;
    }

    public Object q() {
        return this.d0;
    }

    public void q0(int i) {
        this.F.s(i);
        this.W = i;
    }

    public String r() {
        return this.f0;
    }

    public void r0(int i) {
        this.G.s(i);
        this.X = i;
    }

    public b s(int i) {
        if (i == 0) {
            return y();
        }
        if (i == 1) {
            return O();
        }
        return null;
    }

    public void s0(int i, int i2) {
        this.G.s(i);
        this.I.s(i2);
        this.X = i;
        this.T = i2 - i;
        if (this.A) {
            this.J.s(i + this.Y);
        }
        this.k = true;
    }

    public float t() {
        return this.U;
    }

    public void t0(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7 = i3 - i;
        int i8 = i4 - i2;
        this.W = i;
        this.X = i2;
        if (this.e0 == 8) {
            this.S = 0;
            this.T = 0;
            return;
        }
        if (this.Q[0] == b.FIXED && i7 < (i6 = this.S)) {
            i7 = i6;
        }
        if (this.Q[1] == b.FIXED && i8 < (i5 = this.T)) {
            i8 = i5;
        }
        this.S = i7;
        this.T = i8;
        int i9 = this.a0;
        if (i8 < i9) {
            this.T = i9;
        }
        int i10 = this.S;
        int i11 = this.Z;
        if (i10 < i11) {
            this.S = i11;
        }
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        String str2 = this.g0;
        String str3 = BuildConfig.FLAVOR;
        if (str2 != null) {
            str = "type: " + this.g0 + " ";
        } else {
            str = BuildConfig.FLAVOR;
        }
        sb.append(str);
        if (this.f0 != null) {
            str3 = "id: " + this.f0 + " ";
        }
        sb.append(str3);
        sb.append("(");
        sb.append(this.W);
        sb.append(", ");
        sb.append(this.X);
        sb.append(") - (");
        sb.append(this.S);
        sb.append(" x ");
        sb.append(this.T);
        sb.append(")");
        return sb.toString();
    }

    public int u() {
        return this.V;
    }

    public void u0(boolean z) {
        this.A = z;
    }

    public int v() {
        if (this.e0 == 8) {
            return 0;
        }
        return this.T;
    }

    public void v0(int i) {
        this.T = i;
        int i2 = this.a0;
        if (i < i2) {
            this.T = i2;
        }
    }

    public float w() {
        return this.b0;
    }

    public void w0(float f) {
        this.b0 = f;
    }

    public int x() {
        return this.h0;
    }

    public void x0(int i) {
        this.h0 = i;
    }

    public b y() {
        return this.Q[0];
    }

    public void y0(int i, int i2) {
        this.W = i;
        int i3 = i2 - i;
        this.S = i3;
        int i4 = this.Z;
        if (i3 < i4) {
            this.S = i4;
        }
    }

    public int z() {
        d dVar = this.F;
        int i = dVar != null ? 0 + dVar.g : 0;
        d dVar2 = this.H;
        return dVar2 != null ? i + dVar2.g : i;
    }

    public void z0(b bVar) {
        this.Q[0] = bVar;
    }
}
