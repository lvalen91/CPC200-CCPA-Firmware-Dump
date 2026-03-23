package p016c.p033e.p037b.p038k;

import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import p016c.p033e.p037b.C0545b;
import p016c.p033e.p037b.C0546c;
import p016c.p033e.p037b.C0547d;
import p016c.p033e.p037b.C0548e;
import p016c.p033e.p037b.C0552i;
import p016c.p033e.p037b.p038k.C0557d;
import p016c.p033e.p037b.p038k.p039m.AbstractC0581p;
import p016c.p033e.p037b.p038k.p039m.C0568c;
import p016c.p033e.p037b.p038k.p039m.C0571f;
import p016c.p033e.p037b.p038k.p039m.C0577l;
import p016c.p033e.p037b.p038k.p039m.C0579n;

/* JADX INFO: renamed from: c.e.b.k.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0558e {

    /* JADX INFO: renamed from: o0 */
    public static float f3508o0 = 0.5f;

    /* JADX INFO: renamed from: B */
    private boolean f3510B;

    /* JADX INFO: renamed from: M */
    public C0557d f3521M;

    /* JADX INFO: renamed from: N */
    public C0557d[] f3522N;

    /* JADX INFO: renamed from: O */
    protected ArrayList<C0557d> f3523O;

    /* JADX INFO: renamed from: P */
    private boolean[] f3524P;

    /* JADX INFO: renamed from: Q */
    public b[] f3525Q;

    /* JADX INFO: renamed from: R */
    public C0558e f3526R;

    /* JADX INFO: renamed from: S */
    int f3527S;

    /* JADX INFO: renamed from: T */
    int f3528T;

    /* JADX INFO: renamed from: U */
    public float f3529U;

    /* JADX INFO: renamed from: V */
    protected int f3530V;

    /* JADX INFO: renamed from: W */
    protected int f3531W;

    /* JADX INFO: renamed from: X */
    protected int f3532X;

    /* JADX INFO: renamed from: Y */
    int f3533Y;

    /* JADX INFO: renamed from: Z */
    protected int f3534Z;

    /* JADX INFO: renamed from: a0 */
    protected int f3536a0;

    /* JADX INFO: renamed from: b */
    public C0568c f3537b;

    /* JADX INFO: renamed from: b0 */
    float f3538b0;

    /* JADX INFO: renamed from: c */
    public C0568c f3539c;

    /* JADX INFO: renamed from: c0 */
    float f3540c0;

    /* JADX INFO: renamed from: d0 */
    private Object f3542d0;

    /* JADX INFO: renamed from: e0 */
    private int f3544e0;

    /* JADX INFO: renamed from: f0 */
    private String f3546f0;

    /* JADX INFO: renamed from: g0 */
    private String f3548g0;

    /* JADX INFO: renamed from: h0 */
    int f3550h0;

    /* JADX INFO: renamed from: i0 */
    int f3552i0;

    /* JADX INFO: renamed from: j0 */
    public float[] f3554j0;

    /* JADX INFO: renamed from: k0 */
    protected C0558e[] f3556k0;

    /* JADX INFO: renamed from: l0 */
    protected C0558e[] f3558l0;

    /* JADX INFO: renamed from: m0 */
    public int f3560m0;

    /* JADX INFO: renamed from: n0 */
    public int f3562n0;

    /* JADX INFO: renamed from: a */
    public boolean f3535a = false;

    /* JADX INFO: renamed from: d */
    public C0577l f3541d = null;

    /* JADX INFO: renamed from: e */
    public C0579n f3543e = null;

    /* JADX INFO: renamed from: f */
    public boolean[] f3545f = {true, true};

    /* JADX INFO: renamed from: g */
    private boolean f3547g = true;

    /* JADX INFO: renamed from: h */
    private boolean f3549h = false;

    /* JADX INFO: renamed from: i */
    private boolean f3551i = true;

    /* JADX INFO: renamed from: j */
    private boolean f3553j = false;

    /* JADX INFO: renamed from: k */
    private boolean f3555k = false;

    /* JADX INFO: renamed from: l */
    public int f3557l = -1;

    /* JADX INFO: renamed from: m */
    public int f3559m = -1;

    /* JADX INFO: renamed from: n */
    public int f3561n = 0;

    /* JADX INFO: renamed from: o */
    public int f3563o = 0;

    /* JADX INFO: renamed from: p */
    public int[] f3564p = new int[2];

    /* JADX INFO: renamed from: q */
    public int f3565q = 0;

    /* JADX INFO: renamed from: r */
    public int f3566r = 0;

    /* JADX INFO: renamed from: s */
    public float f3567s = 1.0f;

    /* JADX INFO: renamed from: t */
    public int f3568t = 0;

    /* JADX INFO: renamed from: u */
    public int f3569u = 0;

    /* JADX INFO: renamed from: v */
    public float f3570v = 1.0f;

    /* JADX INFO: renamed from: w */
    int f3571w = -1;

    /* JADX INFO: renamed from: x */
    float f3572x = 1.0f;

    /* JADX INFO: renamed from: y */
    private int[] f3573y = {Integer.MAX_VALUE, Integer.MAX_VALUE};

    /* JADX INFO: renamed from: z */
    private float f3574z = CropImageView.DEFAULT_ASPECT_RATIO;

    /* JADX INFO: renamed from: A */
    private boolean f3509A = false;

    /* JADX INFO: renamed from: C */
    private boolean f3511C = false;

    /* JADX INFO: renamed from: D */
    private int f3512D = 0;

    /* JADX INFO: renamed from: E */
    private int f3513E = 0;

    /* JADX INFO: renamed from: F */
    public C0557d f3514F = new C0557d(this, C0557d.b.LEFT);

    /* JADX INFO: renamed from: G */
    public C0557d f3515G = new C0557d(this, C0557d.b.TOP);

    /* JADX INFO: renamed from: H */
    public C0557d f3516H = new C0557d(this, C0557d.b.RIGHT);

    /* JADX INFO: renamed from: I */
    public C0557d f3517I = new C0557d(this, C0557d.b.BOTTOM);

    /* JADX INFO: renamed from: J */
    public C0557d f3518J = new C0557d(this, C0557d.b.BASELINE);

    /* JADX INFO: renamed from: K */
    C0557d f3519K = new C0557d(this, C0557d.b.CENTER_X);

    /* JADX INFO: renamed from: L */
    C0557d f3520L = new C0557d(this, C0557d.b.CENTER_Y);

    /* JADX INFO: renamed from: c.e.b.k.e$a */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a */
        static final /* synthetic */ int[] f3575a;

        /* JADX INFO: renamed from: b */
        static final /* synthetic */ int[] f3576b;

        static {
            int[] iArr = new int[b.values().length];
            f3576b = iArr;
            try {
                iArr[b.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3576b[b.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3576b[b.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3576b[b.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[C0557d.b.values().length];
            f3575a = iArr2;
            try {
                iArr2[C0557d.b.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3575a[C0557d.b.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f3575a[C0557d.b.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f3575a[C0557d.b.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f3575a[C0557d.b.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f3575a[C0557d.b.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f3575a[C0557d.b.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f3575a[C0557d.b.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f3575a[C0557d.b.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    /* JADX INFO: renamed from: c.e.b.k.e$b */
    public enum b {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    public C0558e() {
        C0557d c0557d = new C0557d(this, C0557d.b.CENTER);
        this.f3521M = c0557d;
        this.f3522N = new C0557d[]{this.f3514F, this.f3516H, this.f3515G, this.f3517I, this.f3518J, c0557d};
        this.f3523O = new ArrayList<>();
        this.f3524P = new boolean[2];
        b bVar = b.FIXED;
        this.f3525Q = new b[]{bVar, bVar};
        this.f3526R = null;
        this.f3527S = 0;
        this.f3528T = 0;
        this.f3529U = CropImageView.DEFAULT_ASPECT_RATIO;
        this.f3530V = -1;
        this.f3531W = 0;
        this.f3532X = 0;
        this.f3533Y = 0;
        float f = f3508o0;
        this.f3538b0 = f;
        this.f3540c0 = f;
        this.f3544e0 = 0;
        this.f3546f0 = null;
        this.f3548g0 = null;
        this.f3550h0 = 0;
        this.f3552i0 = 0;
        this.f3554j0 = new float[]{-1.0f, -1.0f};
        this.f3556k0 = new C0558e[]{null, null};
        this.f3558l0 = new C0558e[]{null, null};
        this.f3560m0 = -1;
        this.f3562n0 = -1;
        m4445d();
    }

    /* JADX INFO: renamed from: Y */
    private boolean m4444Y(int i) {
        int i2 = i * 2;
        C0557d[] c0557dArr = this.f3522N;
        if (c0557dArr[i2].f3493f != null && c0557dArr[i2].f3493f.f3493f != c0557dArr[i2]) {
            int i3 = i2 + 1;
            if (c0557dArr[i3].f3493f != null && c0557dArr[i3].f3493f.f3493f == c0557dArr[i3]) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: d */
    private void m4445d() {
        this.f3523O.add(this.f3514F);
        this.f3523O.add(this.f3515G);
        this.f3523O.add(this.f3516H);
        this.f3523O.add(this.f3517I);
        this.f3523O.add(this.f3519K);
        this.f3523O.add(this.f3520L);
        this.f3523O.add(this.f3521M);
        this.f3523O.add(this.f3518J);
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
    /* JADX INFO: renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m4446i(C0547d c0547d, boolean z, boolean z2, boolean z3, boolean z4, C0552i c0552i, C0552i c0552i2, b bVar, boolean z5, C0557d c0557d, C0557d c0557d2, int i, int i2, int i3, int i4, float f, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, int i5, int i6, int i7, int i8, float f2, boolean z11) {
        int i9;
        boolean z12;
        int iMin;
        C0552i c0552i3;
        int i10;
        int i11;
        C0552i c0552i4;
        C0552i c0552i5;
        int i12;
        C0552i c0552i6;
        boolean z13;
        int i13;
        boolean z14;
        C0552i c0552iM4375q;
        C0552i c0552iM4375q2;
        C0552i c0552i7;
        C0552i c0552i8;
        C0552i c0552i9;
        int i14;
        char c2;
        int i15;
        int i16;
        C0557d c0557d3;
        int i17;
        C0552i c0552i10;
        boolean z15;
        boolean z16;
        C0552i c0552i11;
        int iM4429e;
        boolean z17;
        int i18;
        int i19;
        int i20;
        boolean z18;
        C0552i c0552i12;
        int i21;
        C0558e c0558e;
        C0558e c0558e2;
        C0552i c0552i13;
        int i22;
        boolean z19;
        boolean z20;
        C0558e c0558e3;
        C0552i c0552i14;
        int i23;
        int iMin2;
        C0558e c0558e4;
        int i24;
        int i25;
        int i26;
        boolean z21;
        boolean z22;
        boolean z23;
        int i27;
        int i28;
        C0558e c0558e5;
        C0552i c0552i15;
        int iM4429e2;
        C0558e c0558e6;
        int i29 = i7;
        int i30 = i8;
        C0552i c0552iM4375q3 = c0547d.m4375q(c0557d);
        C0552i c0552iM4375q4 = c0547d.m4375q(c0557d2);
        C0552i c0552iM4375q5 = c0547d.m4375q(c0557d.m4433i());
        C0552i c0552iM4375q6 = c0547d.m4375q(c0557d2.m4433i());
        if (C0547d.m4358w() != null) {
            C0547d.m4358w().f3415w++;
        }
        boolean zM4438n = c0557d.m4438n();
        boolean zM4438n2 = c0557d2.m4438n();
        boolean zM4438n3 = this.f3521M.m4438n();
        int i31 = zM4438n ? 1 : 0;
        if (zM4438n2) {
            i31++;
        }
        if (zM4438n3) {
            i31++;
        }
        int i32 = i31;
        int i33 = z6 ? 3 : i5;
        int i34 = a.f3576b[bVar.ordinal()];
        if (i34 == 1 || i34 == 2 || i34 == 3 || i34 != 4) {
            i9 = i33;
        } else {
            i9 = i33;
            z12 = i9 != 4;
            if (this.f3544e0 != 8) {
                iMin = 0;
                z12 = false;
            } else {
                iMin = i2;
            }
            if (z11) {
                if (!zM4438n && !zM4438n2 && !zM4438n3) {
                    c0547d.m4366f(c0552iM4375q3, i);
                } else if (zM4438n && !zM4438n2) {
                    c0552i3 = c0552iM4375q6;
                    c0547d.m4365e(c0552iM4375q3, c0552iM4375q5, c0557d.m4429e(), 8);
                }
                c0552i3 = c0552iM4375q6;
            } else {
                c0552i3 = c0552iM4375q6;
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
                        c0547d.m4368h(c0552iM4375q4, c0552iM4375q3, i29, 8);
                        iMin = Math.max(iMin, i29);
                    }
                    if (i35 > 0) {
                        if ((z2 && i9 == 1) ? false : true) {
                            i10 = 8;
                            c0547d.m4370j(c0552iM4375q4, c0552iM4375q3, i35, 8);
                        } else {
                            i10 = 8;
                        }
                        iMin = Math.min(iMin, i35);
                    } else {
                        i10 = 8;
                    }
                    if (i9 == 1) {
                        if (z2) {
                            c0547d.m4365e(c0552iM4375q4, c0552iM4375q3, iMin, i10);
                        } else if (z8) {
                            c0547d.m4365e(c0552iM4375q4, c0552iM4375q3, iMin, 5);
                            c0547d.m4370j(c0552iM4375q4, c0552iM4375q3, iMin, i10);
                        } else {
                            c0547d.m4365e(c0552iM4375q4, c0552iM4375q3, iMin, 5);
                            c0547d.m4370j(c0552iM4375q4, c0552iM4375q3, iMin, i10);
                        }
                        z14 = z4;
                        i30 = i35;
                        i11 = i9;
                        c0552i4 = c0552iM4375q4;
                        z13 = z12;
                        c0552i5 = c0552i3;
                        i12 = i32;
                        i13 = i29;
                    } else {
                        if (i9 != 2) {
                            i11 = i9;
                            c0552i4 = c0552iM4375q4;
                            c0552i5 = c0552i3;
                            i12 = i32;
                            c0552i6 = c0552iM4375q5;
                            i30 = i35;
                            z13 = z12;
                            i13 = i29;
                            z14 = true;
                            if (z11) {
                                c0552i7 = c0552i;
                                c0552i8 = c0552i2;
                                c0552i9 = c0552iM4375q3;
                                i14 = 2;
                                c2 = 1;
                                i15 = 8;
                                i16 = i12;
                            } else {
                                if (!z8) {
                                    if ((zM4438n || zM4438n2 || zM4438n3) && (!zM4438n || zM4438n2)) {
                                        if (!zM4438n && zM4438n2) {
                                            c0547d.m4365e(c0552i4, c0552i5, -c0557d2.m4429e(), 8);
                                            if (z2) {
                                                if (this.f3549h && c0552iM4375q3.f3435g && (c0558e5 = this.f3526R) != null) {
                                                    C0559f c0559f = (C0559f) c0558e5;
                                                    if (z) {
                                                        c0559f.m4557i1(c0557d);
                                                    } else {
                                                        c0559f.m4559n1(c0557d);
                                                    }
                                                } else {
                                                    c0547d.m4368h(c0552iM4375q3, c0552i, 0, 5);
                                                }
                                            }
                                        } else if (zM4438n && zM4438n2) {
                                            C0558e c0558e7 = c0557d.f3493f.f3491d;
                                            C0558e c0558e8 = c0557d2.f3493f.f3491d;
                                            C0558e c0558eM4463I = m4463I();
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
                                                    } else if (c0552i6.f3435g && c0552i5.f3435g) {
                                                        c0547d.m4365e(c0552iM4375q3, c0552i6, c0557d.m4429e(), 8);
                                                        c0547d.m4365e(c0552i4, c0552i5, -c0557d2.m4429e(), 8);
                                                        return;
                                                    } else {
                                                        z21 = false;
                                                        z22 = true;
                                                        z23 = false;
                                                        i27 = 8;
                                                        i28 = 8;
                                                    }
                                                    if ((c0558e7 instanceof C0554a) || (c0558e8 instanceof C0554a)) {
                                                        c0552i10 = c0552i2;
                                                        z15 = z23;
                                                        i18 = i27;
                                                        i19 = 6;
                                                        i20 = 4;
                                                        z16 = z21;
                                                        z17 = z22;
                                                    } else {
                                                        c0552i10 = c0552i2;
                                                        z15 = z23;
                                                        i20 = i28;
                                                        i19 = 6;
                                                        z16 = z21;
                                                        i18 = i27;
                                                        z17 = z22;
                                                    }
                                                } else {
                                                    if (i17 == 1) {
                                                        c0552i10 = c0552i2;
                                                        z15 = true;
                                                        z16 = true;
                                                        z17 = false;
                                                        i18 = 8;
                                                    } else if (i17 == 3) {
                                                        if (this.f3571w == -1) {
                                                            if (z9) {
                                                                c0552i10 = c0552i2;
                                                                z15 = true;
                                                                z16 = true;
                                                                z17 = true;
                                                                i18 = 8;
                                                                i19 = z2 ? 5 : 4;
                                                            } else {
                                                                c0552i10 = c0552i2;
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
                                                            c0552i10 = c0552i2;
                                                        } else if (i30 > 0) {
                                                            c0552i10 = c0552i2;
                                                            z15 = true;
                                                            z16 = true;
                                                            z17 = true;
                                                            i18 = 5;
                                                            i19 = 6;
                                                        } else if (i30 != 0 || i13 != 0) {
                                                            c0552i10 = c0552i2;
                                                            z15 = true;
                                                            z16 = true;
                                                            z17 = true;
                                                            i18 = 5;
                                                        } else if (z9) {
                                                            c0552i10 = c0552i2;
                                                            i18 = (c0558e7 == c0558eM4463I || c0558e8 == c0558eM4463I) ? 5 : 4;
                                                            z15 = true;
                                                            z16 = true;
                                                            z17 = true;
                                                        } else {
                                                            c0552i10 = c0552i2;
                                                            z15 = true;
                                                            z16 = true;
                                                            z17 = true;
                                                            i18 = 5;
                                                            i19 = 6;
                                                            i20 = 8;
                                                        }
                                                        i20 = 5;
                                                    } else {
                                                        c0552i10 = c0552i2;
                                                        z15 = false;
                                                        z16 = false;
                                                    }
                                                    i19 = 6;
                                                    i20 = 4;
                                                }
                                                if (z15 || c0552i6 != c0552i5 || c0558e7 == c0558eM4463I) {
                                                    z18 = true;
                                                } else {
                                                    z15 = false;
                                                    z18 = false;
                                                }
                                                if (z16) {
                                                    c0552i12 = c0552i6;
                                                    i21 = i17;
                                                    c0558e = c0558eM4463I;
                                                    c0558e2 = c0558e8;
                                                    c0552i13 = c0552iM4375q3;
                                                    i22 = 8;
                                                    z19 = z2;
                                                } else {
                                                    if (z13 || z7 || z9 || c0552i6 != c0552i || c0552i5 != c0552i10) {
                                                        z19 = z2;
                                                    } else {
                                                        z19 = false;
                                                        i18 = 8;
                                                        i19 = 8;
                                                        z18 = false;
                                                    }
                                                    c0552i12 = c0552i6;
                                                    i22 = 8;
                                                    i21 = i17;
                                                    c0558e = c0558eM4463I;
                                                    c0558e2 = c0558e8;
                                                    c0552i13 = c0552iM4375q3;
                                                    c0547d.m4363c(c0552iM4375q3, c0552i12, c0557d.m4429e(), f, c0552i5, c0552i4, c0557d2.m4429e(), i19);
                                                }
                                                z20 = z18;
                                                if (this.f3544e0 != i22 && !c0557d2.m4436l()) {
                                                    return;
                                                }
                                                C0552i c0552i16 = c0552i12;
                                                if (z15) {
                                                    c0558e3 = c0558e2;
                                                    c0552i14 = c0552i13;
                                                } else {
                                                    if (!z19 || c0552i16 == c0552i5 || z13) {
                                                        c0558e3 = c0558e2;
                                                    } else {
                                                        if (c0558e7 instanceof C0554a) {
                                                            c0558e3 = c0558e2;
                                                        } else {
                                                            c0558e3 = c0558e2;
                                                            if (c0558e3 instanceof C0554a) {
                                                            }
                                                            c0552i14 = c0552i13;
                                                            c0547d.m4368h(c0552i14, c0552i16, c0557d.m4429e(), i24);
                                                            c0547d.m4370j(c0552i4, c0552i5, -c0557d2.m4429e(), i24);
                                                            i18 = i24;
                                                        }
                                                        i24 = 6;
                                                        c0552i14 = c0552i13;
                                                        c0547d.m4368h(c0552i14, c0552i16, c0557d.m4429e(), i24);
                                                        c0547d.m4370j(c0552i4, c0552i5, -c0557d2.m4429e(), i24);
                                                        i18 = i24;
                                                    }
                                                    i24 = i18;
                                                    c0552i14 = c0552i13;
                                                    c0547d.m4368h(c0552i14, c0552i16, c0557d.m4429e(), i24);
                                                    c0547d.m4370j(c0552i4, c0552i5, -c0557d2.m4429e(), i24);
                                                    i18 = i24;
                                                }
                                                if (z19 || !z10 || (c0558e7 instanceof C0554a) || (c0558e3 instanceof C0554a)) {
                                                    i23 = i18;
                                                    iMin2 = i20;
                                                } else {
                                                    i23 = 6;
                                                    iMin2 = 6;
                                                    z20 = true;
                                                }
                                                if (z20) {
                                                    if (!z17 || (z9 && !z3)) {
                                                        c0558e4 = c0558e;
                                                    } else {
                                                        c0558e4 = c0558e;
                                                        if (c0558e7 != c0558e4 && c0558e3 != c0558e4) {
                                                            i36 = iMin2;
                                                        }
                                                        if ((c0558e7 instanceof C0560g) || (c0558e3 instanceof C0560g)) {
                                                            i36 = 5;
                                                        }
                                                        if ((c0558e7 instanceof C0554a) || (c0558e3 instanceof C0554a)) {
                                                            i36 = 5;
                                                        }
                                                        iMin2 = Math.max(z9 ? 5 : i36, iMin2);
                                                    }
                                                    if (z19) {
                                                        iMin2 = (z6 && !z9 && (c0558e7 == c0558e4 || c0558e3 == c0558e4)) ? 4 : Math.min(i23, iMin2);
                                                    }
                                                    c0547d.m4365e(c0552i14, c0552i16, c0557d.m4429e(), iMin2);
                                                    c0547d.m4365e(c0552i4, c0552i5, -c0557d2.m4429e(), iMin2);
                                                }
                                                if (z19) {
                                                    int iM4429e3 = c0552i == c0552i16 ? c0557d.m4429e() : 0;
                                                    if (c0552i16 != c0552i) {
                                                        c0547d.m4368h(c0552i14, c0552i, iM4429e3, 5);
                                                    }
                                                }
                                                if (z19 && z13 && i3 == 0 && i13 == 0) {
                                                    if (z13 || i21 != 3) {
                                                        c0547d.m4368h(c0552i4, c0552i14, 0, 5);
                                                    } else {
                                                        c0547d.m4368h(c0552i4, c0552i14, 0, i22);
                                                    }
                                                }
                                            } else {
                                                i17 = i11;
                                                if (c0552i6.f3435g && c0552i5.f3435g) {
                                                    c0547d.m4363c(c0552iM4375q3, c0552i6, c0557d.m4429e(), f, c0552i5, c0552i4, c0557d2.m4429e(), 8);
                                                    if (z2 && z14) {
                                                        if (c0557d2.f3493f != null) {
                                                            iM4429e = c0557d2.m4429e();
                                                            c0552i11 = c0552i2;
                                                        } else {
                                                            c0552i11 = c0552i2;
                                                            iM4429e = 0;
                                                        }
                                                        if (c0552i5 != c0552i11) {
                                                            c0547d.m4368h(c0552i11, c0552i4, iM4429e, 5);
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                    return;
                                                }
                                                c0552i10 = c0552i2;
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
                                                if (this.f3544e0 != i22) {
                                                }
                                                C0552i c0552i162 = c0552i12;
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
                                                            c0547d.m4368h(c0552i4, c0552i14, 0, 5);
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
                                        if (c0557d2.f3493f != null) {
                                            iM4429e2 = c0557d2.m4429e();
                                            c0552i15 = c0552i2;
                                        } else {
                                            c0552i15 = c0552i2;
                                            iM4429e2 = 0;
                                        }
                                        if (c0552i5 != c0552i15) {
                                            if (!this.f3549h || !c0552i4.f3435g || (c0558e6 = this.f3526R) == null) {
                                                c0547d.m4368h(c0552i15, c0552i4, iM4429e2, 5);
                                                return;
                                            }
                                            C0559f c0559f2 = (C0559f) c0558e6;
                                            if (z) {
                                                c0559f2.m4556h1(c0557d2);
                                                return;
                                            } else {
                                                c0559f2.m4558m1(c0557d2);
                                                return;
                                            }
                                        }
                                        return;
                                    }
                                    return;
                                }
                                c0552i7 = c0552i;
                                c0552i8 = c0552i2;
                                c0552i9 = c0552iM4375q3;
                                i16 = i12;
                                i14 = 2;
                                c2 = 1;
                                i15 = 8;
                            }
                            if (i16 >= i14 && z2 && z14) {
                                c0547d.m4368h(c0552i9, c0552i7, 0, i15);
                                boolean z24 = z || this.f3518J.f3493f == null;
                                if (!z && (c0557d3 = this.f3518J.f3493f) != null) {
                                    C0558e c0558e9 = c0557d3.f3491d;
                                    if (c0558e9.f3529U != CropImageView.DEFAULT_ASPECT_RATIO) {
                                        b[] bVarArr = c0558e9.f3525Q;
                                        b bVar2 = bVarArr[0];
                                        b bVar3 = b.MATCH_CONSTRAINT;
                                        z24 = bVar2 == bVar3 && bVarArr[c2] == bVar3;
                                    }
                                }
                                if (z24) {
                                    c0547d.m4368h(c0552i8, c0552i4, 0, i15);
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        if (c0557d.m4434j() == C0557d.b.TOP || c0557d.m4434j() == C0557d.b.BOTTOM) {
                            c0552iM4375q = c0547d.m4375q(this.f3526R.mo4513m(C0557d.b.TOP));
                            c0552iM4375q2 = c0547d.m4375q(this.f3526R.mo4513m(C0557d.b.BOTTOM));
                        } else {
                            c0552iM4375q = c0547d.m4375q(this.f3526R.mo4513m(C0557d.b.LEFT));
                            c0552iM4375q2 = c0547d.m4375q(this.f3526R.mo4513m(C0557d.b.RIGHT));
                        }
                        C0552i c0552i17 = c0552iM4375q;
                        C0545b c0545bM4376r = c0547d.m4376r();
                        i11 = i9;
                        c0552i5 = c0552i3;
                        i12 = i32;
                        c0552i6 = c0552iM4375q5;
                        c0552i4 = c0552iM4375q4;
                        c0545bM4376r.m4337k(c0552iM4375q4, c0552iM4375q3, c0552iM4375q2, c0552i17, f2);
                        c0547d.m4364d(c0545bM4376r);
                        i30 = i35;
                        i13 = i29;
                        z13 = false;
                    }
                } else {
                    int iMax = Math.max(i29, iMin);
                    if (i30 > 0) {
                        iMax = Math.min(i30, iMax);
                    }
                    c0547d.m4365e(c0552iM4375q4, c0552iM4375q3, iMax, 8);
                    z14 = z4;
                    i13 = i29;
                    i11 = i9;
                    c0552i4 = c0552iM4375q4;
                    c0552i5 = c0552i3;
                    z13 = false;
                    i12 = i32;
                }
                c0552i6 = c0552iM4375q5;
                if (z11) {
                }
                if (i16 >= i14) {
                    return;
                } else {
                    return;
                }
            }
            if (z5) {
                c0547d.m4365e(c0552iM4375q4, c0552iM4375q3, 0, 3);
                if (i3 > 0) {
                    c0547d.m4368h(c0552iM4375q4, c0552iM4375q3, i3, 8);
                }
                if (i4 < Integer.MAX_VALUE) {
                    c0547d.m4370j(c0552iM4375q4, c0552iM4375q3, i4, 8);
                }
            } else {
                c0547d.m4365e(c0552iM4375q4, c0552iM4375q3, iMin, 8);
            }
            i11 = i9;
            c0552i6 = c0552iM4375q5;
            c0552i4 = c0552iM4375q4;
            z13 = z12;
            c0552i5 = c0552i3;
            i13 = i29;
            i12 = i32;
            z14 = z4;
            if (z11) {
            }
            if (i16 >= i14) {
            }
        }
        if (this.f3544e0 != 8) {
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

    /* JADX INFO: renamed from: A */
    public int m4447A() {
        return this.f3512D;
    }

    /* JADX INFO: renamed from: A0 */
    public void m4448A0(int i, int i2, int i3, float f) {
        this.f3561n = i;
        this.f3565q = i2;
        if (i3 == Integer.MAX_VALUE) {
            i3 = 0;
        }
        this.f3566r = i3;
        this.f3567s = f;
        if (f <= CropImageView.DEFAULT_ASPECT_RATIO || f >= 1.0f || this.f3561n != 0) {
            return;
        }
        this.f3561n = 2;
    }

    /* JADX INFO: renamed from: B */
    public int m4449B() {
        return this.f3513E;
    }

    /* JADX INFO: renamed from: B0 */
    public void m4450B0(float f) {
        this.f3554j0[0] = f;
    }

    /* JADX INFO: renamed from: C */
    public int m4451C(int i) {
        if (i == 0) {
            return m4481R();
        }
        if (i == 1) {
            return m4531v();
        }
        return 0;
    }

    /* JADX INFO: renamed from: C0 */
    protected void m4452C0(int i, boolean z) {
        this.f3524P[i] = z;
    }

    /* JADX INFO: renamed from: D */
    public int m4453D() {
        return this.f3573y[1];
    }

    /* JADX INFO: renamed from: D0 */
    public void m4454D0(boolean z) {
        this.f3510B = z;
    }

    /* JADX INFO: renamed from: E */
    public int m4455E() {
        return this.f3573y[0];
    }

    /* JADX INFO: renamed from: E0 */
    public void m4456E0(boolean z) {
        this.f3511C = z;
    }

    /* JADX INFO: renamed from: F */
    public int m4457F() {
        return this.f3536a0;
    }

    /* JADX INFO: renamed from: F0 */
    public void m4458F0(int i, int i2) {
        this.f3512D = i;
        this.f3513E = i2;
        m4464I0(false);
    }

    /* JADX INFO: renamed from: G */
    public int m4459G() {
        return this.f3534Z;
    }

    /* JADX INFO: renamed from: G0 */
    public void m4460G0(int i) {
        this.f3573y[1] = i;
    }

    /* JADX INFO: renamed from: H */
    public C0558e m4461H(int i) {
        C0557d c0557d;
        C0557d c0557d2;
        if (i != 0) {
            if (i == 1 && (c0557d2 = (c0557d = this.f3517I).f3493f) != null && c0557d2.f3493f == c0557d) {
                return c0557d2.f3491d;
            }
            return null;
        }
        C0557d c0557d3 = this.f3516H;
        C0557d c0557d4 = c0557d3.f3493f;
        if (c0557d4 == null || c0557d4.f3493f != c0557d3) {
            return null;
        }
        return c0557d4.f3491d;
    }

    /* JADX INFO: renamed from: H0 */
    public void m4462H0(int i) {
        this.f3573y[0] = i;
    }

    /* JADX INFO: renamed from: I */
    public C0558e m4463I() {
        return this.f3526R;
    }

    /* JADX INFO: renamed from: I0 */
    public void m4464I0(boolean z) {
        this.f3547g = z;
    }

    /* JADX INFO: renamed from: J */
    public C0558e m4465J(int i) {
        C0557d c0557d;
        C0557d c0557d2;
        if (i != 0) {
            if (i == 1 && (c0557d2 = (c0557d = this.f3515G).f3493f) != null && c0557d2.f3493f == c0557d) {
                return c0557d2.f3491d;
            }
            return null;
        }
        C0557d c0557d3 = this.f3514F;
        C0557d c0557d4 = c0557d3.f3493f;
        if (c0557d4 == null || c0557d4.f3493f != c0557d3) {
            return null;
        }
        return c0557d4.f3491d;
    }

    /* JADX INFO: renamed from: J0 */
    public void m4466J0(int i) {
        if (i < 0) {
            this.f3536a0 = 0;
        } else {
            this.f3536a0 = i;
        }
    }

    /* JADX INFO: renamed from: K */
    public int m4467K() {
        return m4483S() + this.f3527S;
    }

    /* JADX INFO: renamed from: K0 */
    public void m4468K0(int i) {
        if (i < 0) {
            this.f3534Z = 0;
        } else {
            this.f3534Z = i;
        }
    }

    /* JADX INFO: renamed from: L */
    public AbstractC0581p m4469L(int i) {
        if (i == 0) {
            return this.f3541d;
        }
        if (i == 1) {
            return this.f3543e;
        }
        return null;
    }

    /* JADX INFO: renamed from: L0 */
    public void m4470L0(int i, int i2) {
        this.f3531W = i;
        this.f3532X = i2;
    }

    /* JADX INFO: renamed from: M */
    public float m4471M() {
        return this.f3540c0;
    }

    /* JADX INFO: renamed from: M0 */
    public void m4472M0(C0558e c0558e) {
        this.f3526R = c0558e;
    }

    /* JADX INFO: renamed from: N */
    public int m4473N() {
        return this.f3552i0;
    }

    /* JADX INFO: renamed from: N0 */
    public void m4474N0(float f) {
        this.f3540c0 = f;
    }

    /* JADX INFO: renamed from: O */
    public b m4475O() {
        return this.f3525Q[1];
    }

    /* JADX INFO: renamed from: O0 */
    public void m4476O0(int i) {
        this.f3552i0 = i;
    }

    /* JADX INFO: renamed from: P */
    public int m4477P() {
        int i = this.f3514F != null ? 0 + this.f3515G.f3494g : 0;
        return this.f3516H != null ? i + this.f3517I.f3494g : i;
    }

    /* JADX INFO: renamed from: P0 */
    public void m4478P0(int i, int i2) {
        this.f3532X = i;
        int i3 = i2 - i;
        this.f3528T = i3;
        int i4 = this.f3536a0;
        if (i3 < i4) {
            this.f3528T = i4;
        }
    }

    /* JADX INFO: renamed from: Q */
    public int m4479Q() {
        return this.f3544e0;
    }

    /* JADX INFO: renamed from: Q0 */
    public void m4480Q0(b bVar) {
        this.f3525Q[1] = bVar;
    }

    /* JADX INFO: renamed from: R */
    public int m4481R() {
        if (this.f3544e0 == 8) {
            return 0;
        }
        return this.f3527S;
    }

    /* JADX INFO: renamed from: R0 */
    public void m4482R0(int i, int i2, int i3, float f) {
        this.f3563o = i;
        this.f3568t = i2;
        if (i3 == Integer.MAX_VALUE) {
            i3 = 0;
        }
        this.f3569u = i3;
        this.f3570v = f;
        if (f <= CropImageView.DEFAULT_ASPECT_RATIO || f >= 1.0f || this.f3563o != 0) {
            return;
        }
        this.f3563o = 2;
    }

    /* JADX INFO: renamed from: S */
    public int m4483S() {
        C0558e c0558e = this.f3526R;
        return (c0558e == null || !(c0558e instanceof C0559f)) ? this.f3531W : ((C0559f) c0558e).f3598w0 + this.f3531W;
    }

    /* JADX INFO: renamed from: S0 */
    public void m4484S0(float f) {
        this.f3554j0[1] = f;
    }

    /* JADX INFO: renamed from: T */
    public int m4485T() {
        C0558e c0558e = this.f3526R;
        return (c0558e == null || !(c0558e instanceof C0559f)) ? this.f3532X : ((C0559f) c0558e).f3599x0 + this.f3532X;
    }

    /* JADX INFO: renamed from: T0 */
    public void m4486T0(int i) {
        this.f3544e0 = i;
    }

    /* JADX INFO: renamed from: U */
    public boolean m4487U() {
        return this.f3509A;
    }

    /* JADX INFO: renamed from: U0 */
    public void m4488U0(int i) {
        this.f3527S = i;
        int i2 = this.f3534Z;
        if (i < i2) {
            this.f3527S = i2;
        }
    }

    /* JADX INFO: renamed from: V */
    public boolean m4489V(int i) {
        if (i == 0) {
            return (this.f3514F.f3493f != null ? 1 : 0) + (this.f3516H.f3493f != null ? 1 : 0) < 2;
        }
        return ((this.f3515G.f3493f != null ? 1 : 0) + (this.f3517I.f3493f != null ? 1 : 0)) + (this.f3518J.f3493f != null ? 1 : 0) < 2;
    }

    /* JADX INFO: renamed from: V0 */
    public void m4490V0(int i) {
        this.f3531W = i;
    }

    /* JADX INFO: renamed from: W */
    public boolean m4491W() {
        int size = this.f3523O.size();
        for (int i = 0; i < size; i++) {
            if (this.f3523O.get(i).m4436l()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: W0 */
    public void m4492W0(int i) {
        this.f3532X = i;
    }

    /* JADX INFO: renamed from: X */
    public void m4493X(C0557d.b bVar, C0558e c0558e, C0557d.b bVar2, int i, int i2) {
        mo4513m(bVar).m4425a(c0558e.mo4513m(bVar2), i, i2, true);
    }

    /* JADX INFO: renamed from: X0 */
    public void m4494X0(boolean z, boolean z2, boolean z3, boolean z4) {
        if (this.f3571w == -1) {
            if (z3 && !z4) {
                this.f3571w = 0;
            } else if (!z3 && z4) {
                this.f3571w = 1;
                if (this.f3530V == -1) {
                    this.f3572x = 1.0f / this.f3572x;
                }
            }
        }
        if (this.f3571w == 0 && (!this.f3515G.m4438n() || !this.f3517I.m4438n())) {
            this.f3571w = 1;
        } else if (this.f3571w == 1 && (!this.f3514F.m4438n() || !this.f3516H.m4438n())) {
            this.f3571w = 0;
        }
        if (this.f3571w == -1 && (!this.f3515G.m4438n() || !this.f3517I.m4438n() || !this.f3514F.m4438n() || !this.f3516H.m4438n())) {
            if (this.f3515G.m4438n() && this.f3517I.m4438n()) {
                this.f3571w = 0;
            } else if (this.f3514F.m4438n() && this.f3516H.m4438n()) {
                this.f3572x = 1.0f / this.f3572x;
                this.f3571w = 1;
            }
        }
        if (this.f3571w == -1) {
            if (this.f3565q > 0 && this.f3568t == 0) {
                this.f3571w = 0;
            } else {
                if (this.f3565q != 0 || this.f3568t <= 0) {
                    return;
                }
                this.f3572x = 1.0f / this.f3572x;
                this.f3571w = 1;
            }
        }
    }

    /* JADX INFO: renamed from: Y0 */
    public void mo4495Y0(boolean z, boolean z2) {
        int i;
        int i2;
        boolean zM4664k = z & this.f3541d.m4664k();
        boolean zM4664k2 = z2 & this.f3543e.m4664k();
        C0577l c0577l = this.f3541d;
        int i3 = c0577l.f3685h.f3646g;
        C0579n c0579n = this.f3543e;
        int i4 = c0579n.f3685h.f3646g;
        int i5 = c0577l.f3686i.f3646g;
        int i6 = c0579n.f3686i.f3646g;
        int i7 = i6 - i4;
        if (i5 - i3 < 0 || i7 < 0 || i3 == Integer.MIN_VALUE || i3 == Integer.MAX_VALUE || i4 == Integer.MIN_VALUE || i4 == Integer.MAX_VALUE || i5 == Integer.MIN_VALUE || i5 == Integer.MAX_VALUE || i6 == Integer.MIN_VALUE || i6 == Integer.MAX_VALUE) {
            i5 = 0;
            i3 = 0;
            i6 = 0;
            i4 = 0;
        }
        int i8 = i5 - i3;
        int i9 = i6 - i4;
        if (zM4664k) {
            this.f3531W = i3;
        }
        if (zM4664k2) {
            this.f3532X = i4;
        }
        if (this.f3544e0 == 8) {
            this.f3527S = 0;
            this.f3528T = 0;
            return;
        }
        if (zM4664k) {
            if (this.f3525Q[0] == b.FIXED && i8 < (i2 = this.f3527S)) {
                i8 = i2;
            }
            this.f3527S = i8;
            int i10 = this.f3534Z;
            if (i8 < i10) {
                this.f3527S = i10;
            }
        }
        if (zM4664k2) {
            if (this.f3525Q[1] == b.FIXED && i9 < (i = this.f3528T)) {
                i9 = i;
            }
            this.f3528T = i9;
            int i11 = this.f3536a0;
            if (i9 < i11) {
                this.f3528T = i11;
            }
        }
    }

    /* JADX INFO: renamed from: Z */
    public boolean m4496Z() {
        C0557d c0557d = this.f3514F;
        C0557d c0557d2 = c0557d.f3493f;
        if (c0557d2 != null && c0557d2.f3493f == c0557d) {
            return true;
        }
        C0557d c0557d3 = this.f3516H;
        C0557d c0557d4 = c0557d3.f3493f;
        return c0557d4 != null && c0557d4.f3493f == c0557d3;
    }

    /* JADX INFO: renamed from: Z0 */
    public void mo4497Z0(C0547d c0547d, boolean z) {
        C0579n c0579n;
        C0577l c0577l;
        int iM4379x = c0547d.m4379x(this.f3514F);
        int iM4379x2 = c0547d.m4379x(this.f3515G);
        int iM4379x3 = c0547d.m4379x(this.f3516H);
        int iM4379x4 = c0547d.m4379x(this.f3517I);
        if (z && (c0577l = this.f3541d) != null) {
            C0571f c0571f = c0577l.f3685h;
            if (c0571f.f3649j) {
                C0571f c0571f2 = c0577l.f3686i;
                if (c0571f2.f3649j) {
                    iM4379x = c0571f.f3646g;
                    iM4379x3 = c0571f2.f3646g;
                }
            }
        }
        if (z && (c0579n = this.f3543e) != null) {
            C0571f c0571f3 = c0579n.f3685h;
            if (c0571f3.f3649j) {
                C0571f c0571f4 = c0579n.f3686i;
                if (c0571f4.f3649j) {
                    iM4379x2 = c0571f3.f3646g;
                    iM4379x4 = c0571f4.f3646g;
                }
            }
        }
        int i = iM4379x4 - iM4379x2;
        if (iM4379x3 - iM4379x < 0 || i < 0 || iM4379x == Integer.MIN_VALUE || iM4379x == Integer.MAX_VALUE || iM4379x2 == Integer.MIN_VALUE || iM4379x2 == Integer.MAX_VALUE || iM4379x3 == Integer.MIN_VALUE || iM4379x3 == Integer.MAX_VALUE || iM4379x4 == Integer.MIN_VALUE || iM4379x4 == Integer.MAX_VALUE) {
            iM4379x4 = 0;
            iM4379x = 0;
            iM4379x2 = 0;
            iM4379x3 = 0;
        }
        m4528t0(iM4379x, iM4379x2, iM4379x3, iM4379x4);
    }

    /* JADX INFO: renamed from: a0 */
    public boolean m4498a0() {
        return this.f3510B;
    }

    /* JADX INFO: renamed from: b0 */
    public boolean m4499b0() {
        C0557d c0557d = this.f3515G;
        C0557d c0557d2 = c0557d.f3493f;
        if (c0557d2 != null && c0557d2.f3493f == c0557d) {
            return true;
        }
        C0557d c0557d3 = this.f3517I;
        C0557d c0557d4 = c0557d3.f3493f;
        return c0557d4 != null && c0557d4.f3493f == c0557d3;
    }

    /* JADX INFO: renamed from: c0 */
    public boolean m4500c0() {
        return this.f3511C;
    }

    /* JADX INFO: renamed from: d0 */
    public boolean m4501d0() {
        return this.f3547g && this.f3544e0 != 8;
    }

    /* JADX INFO: renamed from: e */
    public void m4502e(C0559f c0559f, C0547d c0547d, HashSet<C0558e> hashSet, int i, boolean z) {
        if (z) {
            if (!hashSet.contains(this)) {
                return;
            }
            C0563j.m4587a(c0559f, c0547d, this);
            hashSet.remove(this);
            mo4413g(c0547d, c0559f.m4547B1(64));
        }
        if (i == 0) {
            HashSet<C0557d> hashSetM4427c = this.f3514F.m4427c();
            if (hashSetM4427c != null) {
                Iterator<C0557d> it = hashSetM4427c.iterator();
                while (it.hasNext()) {
                    it.next().f3491d.m4502e(c0559f, c0547d, hashSet, i, true);
                }
            }
            HashSet<C0557d> hashSetM4427c2 = this.f3516H.m4427c();
            if (hashSetM4427c2 != null) {
                Iterator<C0557d> it2 = hashSetM4427c2.iterator();
                while (it2.hasNext()) {
                    it2.next().f3491d.m4502e(c0559f, c0547d, hashSet, i, true);
                }
                return;
            }
            return;
        }
        HashSet<C0557d> hashSetM4427c3 = this.f3515G.m4427c();
        if (hashSetM4427c3 != null) {
            Iterator<C0557d> it3 = hashSetM4427c3.iterator();
            while (it3.hasNext()) {
                it3.next().f3491d.m4502e(c0559f, c0547d, hashSet, i, true);
            }
        }
        HashSet<C0557d> hashSetM4427c4 = this.f3517I.m4427c();
        if (hashSetM4427c4 != null) {
            Iterator<C0557d> it4 = hashSetM4427c4.iterator();
            while (it4.hasNext()) {
                it4.next().f3491d.m4502e(c0559f, c0547d, hashSet, i, true);
            }
        }
        HashSet<C0557d> hashSetM4427c5 = this.f3518J.m4427c();
        if (hashSetM4427c5 != null) {
            Iterator<C0557d> it5 = hashSetM4427c5.iterator();
            while (it5.hasNext()) {
                it5.next().f3491d.m4502e(c0559f, c0547d, hashSet, i, true);
            }
        }
    }

    /* JADX INFO: renamed from: e0 */
    public boolean mo4409e0() {
        return this.f3553j || (this.f3514F.m4437m() && this.f3516H.m4437m());
    }

    /* JADX INFO: renamed from: f */
    boolean m4503f() {
        return (this instanceof C0564k) || (this instanceof C0560g);
    }

    /* JADX INFO: renamed from: f0 */
    public boolean mo4411f0() {
        return this.f3555k || (this.f3515G.m4437m() && this.f3517I.m4437m());
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
    /* JADX INFO: renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void mo4413g(C0547d c0547d, boolean z) {
        boolean z2;
        boolean z3;
        C0558e c0558e;
        C0558e c0558e2;
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
        C0552i c0552i;
        C0552i c0552i2;
        C0552i c0552i3;
        C0552i c0552i4;
        C0552i c0552i5;
        int i6;
        int i7;
        char c2;
        C0558e c0558e3;
        C0547d c0547d2;
        C0552i c0552i6;
        C0552i c0552i7;
        C0552i c0552i8;
        boolean z9;
        C0552i c0552i9;
        C0552i c0552i10;
        C0558e c0558e4;
        boolean z10;
        C0577l c0577l;
        int i8;
        int i9;
        boolean zM4496Z;
        boolean zM4499b0;
        C0577l c0577l2;
        C0579n c0579n;
        C0552i c0552iM4375q = c0547d.m4375q(this.f3514F);
        C0552i c0552iM4375q2 = c0547d.m4375q(this.f3516H);
        C0552i c0552iM4375q3 = c0547d.m4375q(this.f3515G);
        C0552i c0552iM4375q4 = c0547d.m4375q(this.f3517I);
        C0552i c0552iM4375q5 = c0547d.m4375q(this.f3518J);
        C0558e c0558e5 = this.f3526R;
        if (c0558e5 != null) {
            boolean z11 = c0558e5 != null && c0558e5.f3525Q[0] == b.WRAP_CONTENT;
            C0558e c0558e6 = this.f3526R;
            z2 = z11;
            z3 = c0558e6 != null && c0558e6.f3525Q[1] == b.WRAP_CONTENT;
        } else {
            z2 = false;
            z3 = false;
        }
        if (this.f3544e0 == 8 && !m4491W()) {
            boolean[] zArr = this.f3524P;
            if (!zArr[0] && !zArr[1]) {
                return;
            }
        }
        if (this.f3553j || this.f3555k) {
            if (this.f3553j) {
                c0547d.m4366f(c0552iM4375q, this.f3531W);
                c0547d.m4366f(c0552iM4375q2, this.f3531W + this.f3527S);
                if (z2 && (c0558e2 = this.f3526R) != null) {
                    if (this.f3551i) {
                        C0559f c0559f = (C0559f) c0558e2;
                        c0559f.m4559n1(this.f3514F);
                        c0559f.m4556h1(this.f3516H);
                    } else {
                        c0547d.m4368h(c0547d.m4375q(c0558e2.f3516H), c0552iM4375q2, 0, 5);
                    }
                }
            }
            if (this.f3555k) {
                c0547d.m4366f(c0552iM4375q3, this.f3532X);
                c0547d.m4366f(c0552iM4375q4, this.f3532X + this.f3528T);
                if (this.f3518J.m4436l()) {
                    c0547d.m4366f(c0552iM4375q5, this.f3532X + this.f3533Y);
                }
                if (z3 && (c0558e = this.f3526R) != null) {
                    if (this.f3551i) {
                        C0559f c0559f2 = (C0559f) c0558e;
                        c0559f2.m4559n1(this.f3515G);
                        c0559f2.m4558m1(this.f3517I);
                    } else {
                        c0547d.m4368h(c0547d.m4375q(c0558e.f3517I), c0552iM4375q4, 0, 5);
                    }
                }
            }
            if (this.f3553j && this.f3555k) {
                this.f3553j = false;
                this.f3555k = false;
                return;
            }
        }
        C0548e c0548e = C0547d.f3372x;
        if (c0548e != null) {
            c0548e.f3417y++;
        }
        if (z && (c0577l2 = this.f3541d) != null && (c0579n = this.f3543e) != null && c0577l2.f3685h.f3649j && c0577l2.f3686i.f3649j && c0579n.f3685h.f3649j && c0579n.f3686i.f3649j) {
            C0548e c0548e2 = C0547d.f3372x;
            if (c0548e2 != null) {
                c0548e2.f3410r++;
            }
            c0547d.m4366f(c0552iM4375q, this.f3541d.f3685h.f3646g);
            c0547d.m4366f(c0552iM4375q2, this.f3541d.f3686i.f3646g);
            c0547d.m4366f(c0552iM4375q3, this.f3543e.f3685h.f3646g);
            c0547d.m4366f(c0552iM4375q4, this.f3543e.f3686i.f3646g);
            c0547d.m4366f(c0552iM4375q5, this.f3543e.f3669k.f3646g);
            if (this.f3526R != null) {
                if (z2 && this.f3545f[0] && !m4496Z()) {
                    c0547d.m4368h(c0547d.m4375q(this.f3526R.f3516H), c0552iM4375q2, 0, 8);
                }
                if (z3 && this.f3545f[1] && !m4499b0()) {
                    c0547d.m4368h(c0547d.m4375q(this.f3526R.f3517I), c0552iM4375q4, 0, 8);
                }
            }
            this.f3553j = false;
            this.f3555k = false;
            return;
        }
        C0548e c0548e3 = C0547d.f3372x;
        if (c0548e3 != null) {
            c0548e3.f3411s++;
        }
        if (this.f3526R != null) {
            if (m4444Y(0)) {
                ((C0559f) this.f3526R).m4554e1(this, 0);
                zM4496Z = true;
            } else {
                zM4496Z = m4496Z();
            }
            if (m4444Y(1)) {
                ((C0559f) this.f3526R).m4554e1(this, 1);
                zM4499b0 = true;
            } else {
                zM4499b0 = m4499b0();
            }
            if (!zM4496Z && z2 && this.f3544e0 != 8 && this.f3514F.f3493f == null && this.f3516H.f3493f == null) {
                c0547d.m4368h(c0547d.m4375q(this.f3526R.f3516H), c0552iM4375q2, 0, 1);
            }
            if (!zM4499b0 && z3 && this.f3544e0 != 8 && this.f3515G.f3493f == null && this.f3517I.f3493f == null && this.f3518J == null) {
                c0547d.m4368h(c0547d.m4375q(this.f3526R.f3517I), c0552iM4375q4, 0, 1);
            }
            z5 = zM4496Z;
            z4 = zM4499b0;
        } else {
            z4 = false;
            z5 = false;
        }
        int i10 = this.f3527S;
        int i11 = this.f3534Z;
        if (i10 < i11) {
            i10 = i11;
        }
        int i12 = this.f3528T;
        int i13 = this.f3536a0;
        if (i12 < i13) {
            i12 = i13;
        }
        boolean z12 = this.f3525Q[0] != b.MATCH_CONSTRAINT;
        boolean z13 = this.f3525Q[1] != b.MATCH_CONSTRAINT;
        this.f3571w = this.f3530V;
        float f = this.f3529U;
        this.f3572x = f;
        int i14 = this.f3561n;
        int i15 = this.f3563o;
        int i16 = i10;
        if (f <= CropImageView.DEFAULT_ASPECT_RATIO || this.f3544e0 == 8) {
            i = i15;
            i2 = i14;
            i3 = i16;
            i4 = i12;
            z6 = false;
        } else {
            int i17 = i12;
            if (this.f3525Q[0] == b.MATCH_CONSTRAINT && i14 == 0) {
                i14 = 3;
            }
            if (this.f3525Q[1] == b.MATCH_CONSTRAINT && i15 == 0) {
                i15 = 3;
            }
            b[] bVarArr = this.f3525Q;
            b bVar = bVarArr[0];
            b bVar2 = b.MATCH_CONSTRAINT;
            if (bVar == bVar2 && bVarArr[1] == bVar2) {
                i9 = 3;
                if (i14 == 3 && i15 == 3) {
                    m4494X0(z2, z3, z12, z13);
                }
                i = i15;
                i2 = i14;
                i3 = i16;
                i4 = i17;
                z6 = true;
            } else {
                i9 = 3;
            }
            b[] bVarArr2 = this.f3525Q;
            b bVar3 = bVarArr2[0];
            b bVar4 = b.MATCH_CONSTRAINT;
            if (bVar3 == bVar4 && i14 == i9) {
                this.f3571w = 0;
                i3 = (int) (this.f3572x * this.f3528T);
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
                if (this.f3525Q[1] == b.MATCH_CONSTRAINT && i15 == 3) {
                    this.f3571w = 1;
                    if (this.f3530V == -1) {
                        this.f3572x = 1.0f / this.f3572x;
                    }
                    i4 = (int) (this.f3572x * this.f3527S);
                    if (this.f3525Q[0] != b.MATCH_CONSTRAINT) {
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
        int[] iArr = this.f3564p;
        iArr[0] = i2;
        iArr[1] = i;
        if (z6) {
            int i18 = this.f3571w;
            i5 = -1;
            boolean z14 = i18 == 0 || i18 == -1;
            boolean z15 = !z6 && ((i8 = this.f3571w) == 1 || i8 == i5);
            boolean z16 = this.f3525Q[0] != b.WRAP_CONTENT && (this instanceof C0559f);
            int i19 = !z16 ? 0 : i3;
            boolean z17 = !this.f3521M.m4438n();
            boolean[] zArr2 = this.f3524P;
            boolean z18 = zArr2[0];
            boolean z19 = zArr2[1];
            if (this.f3557l != 2 || this.f3553j) {
                z7 = z2;
                z8 = z3;
                c0552i = c0552iM4375q5;
                c0552i2 = c0552iM4375q4;
                c0552i3 = c0552iM4375q3;
                c0552i4 = c0552iM4375q2;
                c0552i5 = c0552iM4375q;
            } else {
                if (z && (c0577l = this.f3541d) != null) {
                    C0571f c0571f = c0577l.f3685h;
                    if (c0571f.f3649j && c0577l.f3686i.f3649j) {
                        if (z) {
                            c0547d.m4366f(c0552iM4375q, c0571f.f3646g);
                            c0547d.m4366f(c0552iM4375q2, this.f3541d.f3686i.f3646g);
                            if (this.f3526R != null && z2 && this.f3545f[0] && !m4496Z()) {
                                c0547d.m4368h(c0547d.m4375q(this.f3526R.f3516H), c0552iM4375q2, 0, 8);
                            }
                        }
                        z7 = z2;
                        z8 = z3;
                        c0552i = c0552iM4375q5;
                        c0552i2 = c0552iM4375q4;
                        c0552i3 = c0552iM4375q3;
                        c0552i4 = c0552iM4375q2;
                        c0552i5 = c0552iM4375q;
                    }
                }
                C0558e c0558e7 = this.f3526R;
                C0552i c0552iM4375q6 = c0558e7 != null ? c0547d.m4375q(c0558e7.f3516H) : null;
                C0558e c0558e8 = this.f3526R;
                C0552i c0552iM4375q7 = c0558e8 != null ? c0547d.m4375q(c0558e8.f3514F) : null;
                boolean z20 = this.f3545f[0];
                b[] bVarArr3 = this.f3525Q;
                z7 = z2;
                z8 = z3;
                c0552i = c0552iM4375q5;
                c0552i2 = c0552iM4375q4;
                c0552i3 = c0552iM4375q3;
                c0552i4 = c0552iM4375q2;
                c0552i5 = c0552iM4375q;
                m4446i(c0547d, true, z2, z3, z20, c0552iM4375q7, c0552iM4375q6, bVarArr3[0], z16, this.f3514F, this.f3516H, this.f3531W, i19, this.f3534Z, this.f3573y[0], this.f3538b0, z14, bVarArr3[1] == b.MATCH_CONSTRAINT, z5, z4, z18, i2, i, this.f3565q, this.f3566r, this.f3567s, z17);
            }
            if (z) {
                i6 = 8;
                i7 = 0;
                c2 = 1;
                c0558e3 = this;
                c0547d2 = c0547d;
                c0552i6 = c0552i;
                c0552i7 = c0552i2;
                c0552i8 = c0552i3;
            } else {
                c0558e3 = this;
                C0579n c0579n2 = c0558e3.f3543e;
                if (c0579n2 != null) {
                    C0571f c0571f2 = c0579n2.f3685h;
                    if (c0571f2.f3649j && c0579n2.f3686i.f3649j) {
                        c0547d2 = c0547d;
                        c0552i8 = c0552i3;
                        c0547d2.m4366f(c0552i8, c0571f2.f3646g);
                        c0552i7 = c0552i2;
                        c0547d2.m4366f(c0552i7, c0558e3.f3543e.f3686i.f3646g);
                        c0552i6 = c0552i;
                        c0547d2.m4366f(c0552i6, c0558e3.f3543e.f3669k.f3646g);
                        C0558e c0558e9 = c0558e3.f3526R;
                        if (c0558e9 == null || z4 || !z8) {
                            i6 = 8;
                            i7 = 0;
                            c2 = 1;
                        } else {
                            c2 = 1;
                            if (c0558e3.f3545f[1]) {
                                i6 = 8;
                                i7 = 0;
                                c0547d2.m4368h(c0547d2.m4375q(c0558e9.f3517I), c0552i7, 0, 8);
                            } else {
                                i6 = 8;
                                i7 = 0;
                            }
                        }
                        z9 = false;
                        if (!(c0558e3.f3559m == 2 ? false : z9) || c0558e3.f3555k) {
                            c0552i9 = c0552i7;
                            c0552i10 = c0552i8;
                        } else {
                            boolean z21 = c0558e3.f3525Q[c2] == b.WRAP_CONTENT && (c0558e3 instanceof C0559f);
                            if (z21) {
                                i4 = 0;
                            }
                            C0558e c0558e10 = c0558e3.f3526R;
                            C0552i c0552iM4375q8 = c0558e10 != null ? c0547d2.m4375q(c0558e10.f3517I) : null;
                            C0558e c0558e11 = c0558e3.f3526R;
                            C0552i c0552iM4375q9 = c0558e11 != null ? c0547d2.m4375q(c0558e11.f3515G) : null;
                            if (c0558e3.f3533Y <= 0 && c0558e3.f3544e0 != i6) {
                                z10 = z17;
                                boolean z22 = c0558e3.f3545f[c2];
                                b[] bVarArr4 = c0558e3.f3525Q;
                                c0552i9 = c0552i7;
                                c0552i10 = c0552i8;
                                m4446i(c0547d, false, z8, z7, z22, c0552iM4375q9, c0552iM4375q8, bVarArr4[c2], z21, c0558e3.f3515G, c0558e3.f3517I, c0558e3.f3532X, i4, c0558e3.f3536a0, c0558e3.f3573y[c2], c0558e3.f3540c0, z15, bVarArr4[0] == b.MATCH_CONSTRAINT, z4, z5, z19, i, i2, c0558e3.f3568t, c0558e3.f3569u, c0558e3.f3570v, z10);
                            } else if (c0558e3.f3518J.f3493f != null) {
                                c0547d2.m4365e(c0552i6, c0552i8, m4515n(), i6);
                                c0547d2.m4365e(c0552i6, c0547d2.m4375q(c0558e3.f3518J.f3493f), i7, i6);
                                if (z8) {
                                    c0547d2.m4368h(c0552iM4375q8, c0547d2.m4375q(c0558e3.f3517I), i7, 5);
                                }
                                z10 = false;
                                boolean z222 = c0558e3.f3545f[c2];
                                b[] bVarArr42 = c0558e3.f3525Q;
                                c0552i9 = c0552i7;
                                c0552i10 = c0552i8;
                                m4446i(c0547d, false, z8, z7, z222, c0552iM4375q9, c0552iM4375q8, bVarArr42[c2], z21, c0558e3.f3515G, c0558e3.f3517I, c0558e3.f3532X, i4, c0558e3.f3536a0, c0558e3.f3573y[c2], c0558e3.f3540c0, z15, bVarArr42[0] == b.MATCH_CONSTRAINT, z4, z5, z19, i, i2, c0558e3.f3568t, c0558e3.f3569u, c0558e3.f3570v, z10);
                            } else {
                                if (c0558e3.f3544e0 == i6) {
                                    c0547d2.m4365e(c0552i6, c0552i8, i7, i6);
                                } else {
                                    c0547d2.m4365e(c0552i6, c0552i8, m4515n(), i6);
                                }
                                z10 = z17;
                                boolean z2222 = c0558e3.f3545f[c2];
                                b[] bVarArr422 = c0558e3.f3525Q;
                                c0552i9 = c0552i7;
                                c0552i10 = c0552i8;
                                m4446i(c0547d, false, z8, z7, z2222, c0552iM4375q9, c0552iM4375q8, bVarArr422[c2], z21, c0558e3.f3515G, c0558e3.f3517I, c0558e3.f3532X, i4, c0558e3.f3536a0, c0558e3.f3573y[c2], c0558e3.f3540c0, z15, bVarArr422[0] == b.MATCH_CONSTRAINT, z4, z5, z19, i, i2, c0558e3.f3568t, c0558e3.f3569u, c0558e3.f3570v, z10);
                            }
                        }
                        if (z6) {
                            c0558e4 = this;
                            if (c0558e4.f3571w == 1) {
                                c0547d.m4371k(c0552i9, c0552i10, c0552i4, c0552i5, c0558e4.f3572x, 8);
                            } else {
                                c0547d.m4371k(c0552i4, c0552i5, c0552i9, c0552i10, c0558e4.f3572x, 8);
                            }
                        } else {
                            c0558e4 = this;
                        }
                        if (c0558e4.f3521M.m4438n()) {
                            c0547d.m4362b(c0558e4, c0558e4.f3521M.m4433i().m4431g(), (float) Math.toRadians(c0558e4.f3574z + 90.0f), c0558e4.f3521M.m4429e());
                        }
                        c0558e4.f3553j = false;
                        c0558e4.f3555k = false;
                    }
                }
                c0547d2 = c0547d;
                c0552i6 = c0552i;
                c0552i7 = c0552i2;
                c0552i8 = c0552i3;
                i6 = 8;
                i7 = 0;
                c2 = 1;
            }
            z9 = true;
            if (c0558e3.f3559m == 2 ? false : z9) {
                c0552i9 = c0552i7;
                c0552i10 = c0552i8;
            }
            if (z6) {
            }
            if (c0558e4.f3521M.m4438n()) {
            }
            c0558e4.f3553j = false;
            c0558e4.f3555k = false;
        }
        i5 = -1;
        if (z6) {
        }
        if (this.f3525Q[0] != b.WRAP_CONTENT) {
        }
        if (!z16) {
        }
        boolean z172 = !this.f3521M.m4438n();
        boolean[] zArr22 = this.f3524P;
        boolean z182 = zArr22[0];
        boolean z192 = zArr22[1];
        if (this.f3557l != 2) {
            z7 = z2;
            z8 = z3;
            c0552i = c0552iM4375q5;
            c0552i2 = c0552iM4375q4;
            c0552i3 = c0552iM4375q3;
            c0552i4 = c0552iM4375q2;
            c0552i5 = c0552iM4375q;
        }
        if (z) {
        }
        z9 = true;
        if (c0558e3.f3559m == 2 ? false : z9) {
        }
        if (z6) {
        }
        if (c0558e4.f3521M.m4438n()) {
        }
        c0558e4.f3553j = false;
        c0558e4.f3555k = false;
    }

    /* JADX INFO: renamed from: g0 */
    public boolean m4504g0() {
        b[] bVarArr = this.f3525Q;
        b bVar = bVarArr[0];
        b bVar2 = b.MATCH_CONSTRAINT;
        return bVar == bVar2 && bVarArr[1] == bVar2;
    }

    /* JADX INFO: renamed from: h */
    public boolean mo4415h() {
        return this.f3544e0 != 8;
    }

    /* JADX INFO: renamed from: h0 */
    public void mo4505h0() {
        this.f3514F.m4440p();
        this.f3515G.m4440p();
        this.f3516H.m4440p();
        this.f3517I.m4440p();
        this.f3518J.m4440p();
        this.f3519K.m4440p();
        this.f3520L.m4440p();
        this.f3521M.m4440p();
        this.f3526R = null;
        this.f3574z = CropImageView.DEFAULT_ASPECT_RATIO;
        this.f3527S = 0;
        this.f3528T = 0;
        this.f3529U = CropImageView.DEFAULT_ASPECT_RATIO;
        this.f3530V = -1;
        this.f3531W = 0;
        this.f3532X = 0;
        this.f3533Y = 0;
        this.f3534Z = 0;
        this.f3536a0 = 0;
        float f = f3508o0;
        this.f3538b0 = f;
        this.f3540c0 = f;
        b[] bVarArr = this.f3525Q;
        b bVar = b.FIXED;
        bVarArr[0] = bVar;
        bVarArr[1] = bVar;
        this.f3542d0 = null;
        this.f3544e0 = 0;
        this.f3548g0 = null;
        this.f3550h0 = 0;
        this.f3552i0 = 0;
        float[] fArr = this.f3554j0;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.f3557l = -1;
        this.f3559m = -1;
        int[] iArr = this.f3573y;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.f3561n = 0;
        this.f3563o = 0;
        this.f3567s = 1.0f;
        this.f3570v = 1.0f;
        this.f3566r = Integer.MAX_VALUE;
        this.f3569u = Integer.MAX_VALUE;
        this.f3565q = 0;
        this.f3568t = 0;
        this.f3571w = -1;
        this.f3572x = 1.0f;
        boolean[] zArr = this.f3545f;
        zArr[0] = true;
        zArr[1] = true;
        this.f3511C = false;
        boolean[] zArr2 = this.f3524P;
        zArr2[0] = false;
        zArr2[1] = false;
        this.f3547g = true;
    }

    /* JADX INFO: renamed from: i0 */
    public void m4506i0() {
        this.f3553j = false;
        this.f3555k = false;
        int size = this.f3523O.size();
        for (int i = 0; i < size; i++) {
            this.f3523O.get(i).m4441q();
        }
    }

    /* JADX INFO: renamed from: j */
    public void m4507j(C0558e c0558e, float f, int i) {
        C0557d.b bVar = C0557d.b.CENTER;
        m4493X(bVar, c0558e, bVar, i, 0);
        this.f3574z = f;
    }

    /* JADX INFO: renamed from: j0 */
    public void mo4508j0(C0546c c0546c) {
        this.f3514F.m4442r(c0546c);
        this.f3515G.m4442r(c0546c);
        this.f3516H.m4442r(c0546c);
        this.f3517I.m4442r(c0546c);
        this.f3518J.m4442r(c0546c);
        this.f3521M.m4442r(c0546c);
        this.f3519K.m4442r(c0546c);
        this.f3520L.m4442r(c0546c);
    }

    /* JADX INFO: renamed from: k */
    public void m4509k(C0547d c0547d) {
        c0547d.m4375q(this.f3514F);
        c0547d.m4375q(this.f3515G);
        c0547d.m4375q(this.f3516H);
        c0547d.m4375q(this.f3517I);
        if (this.f3533Y > 0) {
            c0547d.m4375q(this.f3518J);
        }
    }

    /* JADX INFO: renamed from: k0 */
    public void m4510k0(int i) {
        this.f3533Y = i;
        this.f3509A = i > 0;
    }

    /* JADX INFO: renamed from: l */
    public void m4511l() {
        if (this.f3541d == null) {
            this.f3541d = new C0577l(this);
        }
        if (this.f3543e == null) {
            this.f3543e = new C0579n(this);
        }
    }

    /* JADX INFO: renamed from: l0 */
    public void m4512l0(Object obj) {
        this.f3542d0 = obj;
    }

    /* JADX INFO: renamed from: m */
    public C0557d mo4513m(C0557d.b bVar) {
        switch (a.f3575a[bVar.ordinal()]) {
            case 1:
                return this.f3514F;
            case 2:
                return this.f3515G;
            case 3:
                return this.f3516H;
            case 4:
                return this.f3517I;
            case 5:
                return this.f3518J;
            case 6:
                return this.f3521M;
            case 7:
                return this.f3519K;
            case 8:
                return this.f3520L;
            case 9:
                return null;
            default:
                throw new AssertionError(bVar.name());
        }
    }

    /* JADX INFO: renamed from: m0 */
    public void m4514m0(String str) {
        this.f3546f0 = str;
    }

    /* JADX INFO: renamed from: n */
    public int m4515n() {
        return this.f3533Y;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0084 A[PHI: r0
      0x0084: PHI (r0v2 int) = (r0v1 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int) binds: [B:45:0x0084, B:35:0x007d, B:23:0x004f, B:25:0x0055, B:27:0x0061, B:29:0x0065] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0084 -> B:39:0x0085). Please report as a decompilation issue!!! */
    /* JADX INFO: renamed from: n0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m4516n0(String str) {
        float fAbs;
        int i = 0;
        if (str == null || str.length() == 0) {
            this.f3529U = CropImageView.DEFAULT_ASPECT_RATIO;
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
            this.f3529U = fAbs;
            this.f3530V = i2;
        }
    }

    /* JADX INFO: renamed from: o */
    public float m4517o(int i) {
        if (i == 0) {
            return this.f3538b0;
        }
        if (i == 1) {
            return this.f3540c0;
        }
        return -1.0f;
    }

    /* JADX INFO: renamed from: o0 */
    public void m4518o0(int i) {
        if (this.f3509A) {
            int i2 = i - this.f3533Y;
            int i3 = this.f3528T + i2;
            this.f3532X = i2;
            this.f3515G.m4443s(i2);
            this.f3517I.m4443s(i3);
            this.f3518J.m4443s(i);
            this.f3555k = true;
        }
    }

    /* JADX INFO: renamed from: p */
    public int m4519p() {
        return m4485T() + this.f3528T;
    }

    /* JADX INFO: renamed from: p0 */
    public void m4520p0(int i, int i2) {
        this.f3514F.m4443s(i);
        this.f3516H.m4443s(i2);
        this.f3531W = i;
        this.f3527S = i2 - i;
        this.f3553j = true;
    }

    /* JADX INFO: renamed from: q */
    public Object m4521q() {
        return this.f3542d0;
    }

    /* JADX INFO: renamed from: q0 */
    public void m4522q0(int i) {
        this.f3514F.m4443s(i);
        this.f3531W = i;
    }

    /* JADX INFO: renamed from: r */
    public String m4523r() {
        return this.f3546f0;
    }

    /* JADX INFO: renamed from: r0 */
    public void m4524r0(int i) {
        this.f3515G.m4443s(i);
        this.f3532X = i;
    }

    /* JADX INFO: renamed from: s */
    public b m4525s(int i) {
        if (i == 0) {
            return m4537y();
        }
        if (i == 1) {
            return m4475O();
        }
        return null;
    }

    /* JADX INFO: renamed from: s0 */
    public void m4526s0(int i, int i2) {
        this.f3515G.m4443s(i);
        this.f3517I.m4443s(i2);
        this.f3532X = i;
        this.f3528T = i2 - i;
        if (this.f3509A) {
            this.f3518J.m4443s(i + this.f3533Y);
        }
        this.f3555k = true;
    }

    /* JADX INFO: renamed from: t */
    public float m4527t() {
        return this.f3529U;
    }

    /* JADX INFO: renamed from: t0 */
    public void m4528t0(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7 = i3 - i;
        int i8 = i4 - i2;
        this.f3531W = i;
        this.f3532X = i2;
        if (this.f3544e0 == 8) {
            this.f3527S = 0;
            this.f3528T = 0;
            return;
        }
        if (this.f3525Q[0] == b.FIXED && i7 < (i6 = this.f3527S)) {
            i7 = i6;
        }
        if (this.f3525Q[1] == b.FIXED && i8 < (i5 = this.f3528T)) {
            i8 = i5;
        }
        this.f3527S = i7;
        this.f3528T = i8;
        int i9 = this.f3536a0;
        if (i8 < i9) {
            this.f3528T = i9;
        }
        int i10 = this.f3527S;
        int i11 = this.f3534Z;
        if (i10 < i11) {
            this.f3527S = i11;
        }
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        String str2 = this.f3548g0;
        String str3 = BuildConfig.FLAVOR;
        if (str2 != null) {
            str = "type: " + this.f3548g0 + " ";
        } else {
            str = BuildConfig.FLAVOR;
        }
        sb.append(str);
        if (this.f3546f0 != null) {
            str3 = "id: " + this.f3546f0 + " ";
        }
        sb.append(str3);
        sb.append("(");
        sb.append(this.f3531W);
        sb.append(", ");
        sb.append(this.f3532X);
        sb.append(") - (");
        sb.append(this.f3527S);
        sb.append(" x ");
        sb.append(this.f3528T);
        sb.append(")");
        return sb.toString();
    }

    /* JADX INFO: renamed from: u */
    public int m4529u() {
        return this.f3530V;
    }

    /* JADX INFO: renamed from: u0 */
    public void m4530u0(boolean z) {
        this.f3509A = z;
    }

    /* JADX INFO: renamed from: v */
    public int m4531v() {
        if (this.f3544e0 == 8) {
            return 0;
        }
        return this.f3528T;
    }

    /* JADX INFO: renamed from: v0 */
    public void m4532v0(int i) {
        this.f3528T = i;
        int i2 = this.f3536a0;
        if (i < i2) {
            this.f3528T = i2;
        }
    }

    /* JADX INFO: renamed from: w */
    public float m4533w() {
        return this.f3538b0;
    }

    /* JADX INFO: renamed from: w0 */
    public void m4534w0(float f) {
        this.f3538b0 = f;
    }

    /* JADX INFO: renamed from: x */
    public int m4535x() {
        return this.f3550h0;
    }

    /* JADX INFO: renamed from: x0 */
    public void m4536x0(int i) {
        this.f3550h0 = i;
    }

    /* JADX INFO: renamed from: y */
    public b m4537y() {
        return this.f3525Q[0];
    }

    /* JADX INFO: renamed from: y0 */
    public void m4538y0(int i, int i2) {
        this.f3531W = i;
        int i3 = i2 - i;
        this.f3527S = i3;
        int i4 = this.f3534Z;
        if (i3 < i4) {
            this.f3527S = i4;
        }
    }

    /* JADX INFO: renamed from: z */
    public int m4539z() {
        C0557d c0557d = this.f3514F;
        int i = c0557d != null ? 0 + c0557d.f3494g : 0;
        C0557d c0557d2 = this.f3516H;
        return c0557d2 != null ? i + c0557d2.f3494g : i;
    }

    /* JADX INFO: renamed from: z0 */
    public void m4540z0(b bVar) {
        this.f3525Q[0] = bVar;
    }
}
