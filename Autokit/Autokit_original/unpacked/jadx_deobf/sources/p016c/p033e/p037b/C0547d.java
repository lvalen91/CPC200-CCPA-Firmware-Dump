package p016c.p033e.p037b;

import com.yalantis.ucrop.view.CropImageView;
import java.util.Arrays;
import java.util.HashMap;
import p016c.p033e.p037b.C0552i;
import p016c.p033e.p037b.p038k.C0557d;
import p016c.p033e.p037b.p038k.C0558e;

/* JADX INFO: renamed from: c.e.b.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0547d {

    /* JADX INFO: renamed from: r */
    public static boolean f3366r = false;

    /* JADX INFO: renamed from: s */
    public static boolean f3367s = true;

    /* JADX INFO: renamed from: t */
    public static boolean f3368t = true;

    /* JADX INFO: renamed from: u */
    public static boolean f3369u = true;

    /* JADX INFO: renamed from: v */
    public static boolean f3370v = false;

    /* JADX INFO: renamed from: w */
    private static int f3371w = 1000;

    /* JADX INFO: renamed from: x */
    public static C0548e f3372x;

    /* JADX INFO: renamed from: y */
    public static long f3373y;

    /* JADX INFO: renamed from: z */
    public static long f3374z;

    /* JADX INFO: renamed from: d */
    private a f3378d;

    /* JADX INFO: renamed from: g */
    C0545b[] f3381g;

    /* JADX INFO: renamed from: n */
    final C0546c f3388n;

    /* JADX INFO: renamed from: q */
    private a f3391q;

    /* JADX INFO: renamed from: a */
    public boolean f3375a = false;

    /* JADX INFO: renamed from: b */
    int f3376b = 0;

    /* JADX INFO: renamed from: c */
    private HashMap<String, C0552i> f3377c = null;

    /* JADX INFO: renamed from: e */
    private int f3379e = 32;

    /* JADX INFO: renamed from: f */
    private int f3380f = 32;

    /* JADX INFO: renamed from: h */
    public boolean f3382h = false;

    /* JADX INFO: renamed from: i */
    public boolean f3383i = false;

    /* JADX INFO: renamed from: j */
    private boolean[] f3384j = new boolean[32];

    /* JADX INFO: renamed from: k */
    int f3385k = 1;

    /* JADX INFO: renamed from: l */
    int f3386l = 0;

    /* JADX INFO: renamed from: m */
    private int f3387m = 32;

    /* JADX INFO: renamed from: o */
    private C0552i[] f3389o = new C0552i[f3371w];

    /* JADX INFO: renamed from: p */
    private int f3390p = 0;

    /* JADX INFO: renamed from: c.e.b.d$a */
    interface a {
        /* JADX INFO: renamed from: a */
        void mo4327a(a aVar);

        /* JADX INFO: renamed from: b */
        void mo4328b(C0552i c0552i);

        /* JADX INFO: renamed from: c */
        C0552i mo4329c(C0547d c0547d, boolean[] zArr);

        void clear();

        C0552i getKey();

        boolean isEmpty();
    }

    /* JADX INFO: renamed from: c.e.b.d$b */
    class b extends C0545b {
        public b(C0547d c0547d, C0546c c0546c) {
            this.f3360e = new C0553j(this, c0546c);
        }
    }

    public C0547d() {
        this.f3381g = null;
        this.f3381g = new C0545b[32];
        m4352C();
        C0546c c0546c = new C0546c();
        this.f3388n = c0546c;
        this.f3378d = new C0551h(c0546c);
        if (f3370v) {
            this.f3391q = new b(this, this.f3388n);
        } else {
            this.f3391q = new C0545b(this.f3388n);
        }
    }

    /* JADX INFO: renamed from: B */
    private final int m4351B(a aVar, boolean z) {
        C0548e c0548e = f3372x;
        if (c0548e != null) {
            c0548e.f3400h++;
        }
        for (int i = 0; i < this.f3385k; i++) {
            this.f3384j[i] = false;
        }
        boolean z2 = false;
        int i2 = 0;
        while (!z2) {
            C0548e c0548e2 = f3372x;
            if (c0548e2 != null) {
                c0548e2.f3401i++;
            }
            i2++;
            if (i2 >= this.f3385k * 2) {
                return i2;
            }
            if (aVar.getKey() != null) {
                this.f3384j[aVar.getKey().f3431c] = true;
            }
            C0552i c0552iMo4329c = aVar.mo4329c(this, this.f3384j);
            if (c0552iMo4329c != null) {
                boolean[] zArr = this.f3384j;
                int i3 = c0552iMo4329c.f3431c;
                if (zArr[i3]) {
                    return i2;
                }
                zArr[i3] = true;
            }
            if (c0552iMo4329c != null) {
                float f = Float.MAX_VALUE;
                int i4 = -1;
                for (int i5 = 0; i5 < this.f3386l; i5++) {
                    C0545b c0545b = this.f3381g[i5];
                    if (c0545b.f3356a.f3438j != C0552i.a.UNRESTRICTED && !c0545b.f3361f && c0545b.m4346t(c0552iMo4329c)) {
                        float fMo4316g = c0545b.f3360e.mo4316g(c0552iMo4329c);
                        if (fMo4316g < CropImageView.DEFAULT_ASPECT_RATIO) {
                            float f2 = (-c0545b.f3357b) / fMo4316g;
                            if (f2 < f) {
                                i4 = i5;
                                f = f2;
                            }
                        }
                    }
                }
                if (i4 > -1) {
                    C0545b c0545b2 = this.f3381g[i4];
                    c0545b2.f3356a.f3432d = -1;
                    C0548e c0548e3 = f3372x;
                    if (c0548e3 != null) {
                        c0548e3.f3402j++;
                    }
                    c0545b2.m4348x(c0552iMo4329c);
                    C0552i c0552i = c0545b2.f3356a;
                    c0552i.f3432d = i4;
                    c0552i.m4399g(this, c0545b2);
                }
            } else {
                z2 = true;
            }
        }
        return i2;
    }

    /* JADX INFO: renamed from: C */
    private void m4352C() {
        int i = 0;
        if (f3370v) {
            while (i < this.f3386l) {
                C0545b c0545b = this.f3381g[i];
                if (c0545b != null) {
                    this.f3388n.f3362a.mo4381a(c0545b);
                }
                this.f3381g[i] = null;
                i++;
            }
            return;
        }
        while (i < this.f3386l) {
            C0545b c0545b2 = this.f3381g[i];
            if (c0545b2 != null) {
                this.f3388n.f3363b.mo4381a(c0545b2);
            }
            this.f3381g[i] = null;
            i++;
        }
    }

    /* JADX INFO: renamed from: a */
    private C0552i m4353a(C0552i.a aVar, String str) {
        C0552i c0552iMo4382b = this.f3388n.f3364c.mo4382b();
        if (c0552iMo4382b == null) {
            c0552iMo4382b = new C0552i(aVar, str);
            c0552iMo4382b.m4398f(aVar, str);
        } else {
            c0552iMo4382b.m4396d();
            c0552iMo4382b.m4398f(aVar, str);
        }
        int i = this.f3390p;
        int i2 = f3371w;
        if (i >= i2) {
            int i3 = i2 * 2;
            f3371w = i3;
            this.f3389o = (C0552i[]) Arrays.copyOf(this.f3389o, i3);
        }
        C0552i[] c0552iArr = this.f3389o;
        int i4 = this.f3390p;
        this.f3390p = i4 + 1;
        c0552iArr[i4] = c0552iMo4382b;
        return c0552iMo4382b;
    }

    /* JADX INFO: renamed from: l */
    private final void m4354l(C0545b c0545b) {
        int i;
        if (f3368t && c0545b.f3361f) {
            c0545b.f3356a.m4397e(this, c0545b.f3357b);
        } else {
            C0545b[] c0545bArr = this.f3381g;
            int i2 = this.f3386l;
            c0545bArr[i2] = c0545b;
            C0552i c0552i = c0545b.f3356a;
            c0552i.f3432d = i2;
            this.f3386l = i2 + 1;
            c0552i.m4399g(this, c0545b);
        }
        if (f3368t && this.f3375a) {
            int i3 = 0;
            while (i3 < this.f3386l) {
                if (this.f3381g[i3] == null) {
                    System.out.println("WTF");
                }
                C0545b[] c0545bArr2 = this.f3381g;
                if (c0545bArr2[i3] != null && c0545bArr2[i3].f3361f) {
                    C0545b c0545b2 = c0545bArr2[i3];
                    c0545b2.f3356a.m4397e(this, c0545b2.f3357b);
                    if (f3370v) {
                        this.f3388n.f3362a.mo4381a(c0545b2);
                    } else {
                        this.f3388n.f3363b.mo4381a(c0545b2);
                    }
                    this.f3381g[i3] = null;
                    int i4 = i3 + 1;
                    int i5 = i4;
                    while (true) {
                        i = this.f3386l;
                        if (i4 >= i) {
                            break;
                        }
                        C0545b[] c0545bArr3 = this.f3381g;
                        int i6 = i4 - 1;
                        c0545bArr3[i6] = c0545bArr3[i4];
                        if (c0545bArr3[i6].f3356a.f3432d == i4) {
                            c0545bArr3[i6].f3356a.f3432d = i6;
                        }
                        i5 = i4;
                        i4++;
                    }
                    if (i5 < i) {
                        this.f3381g[i5] = null;
                    }
                    this.f3386l--;
                    i3--;
                }
                i3++;
            }
            this.f3375a = false;
        }
    }

    /* JADX INFO: renamed from: n */
    private void m4355n() {
        for (int i = 0; i < this.f3386l; i++) {
            C0545b c0545b = this.f3381g[i];
            c0545b.f3356a.f3434f = c0545b.f3357b;
        }
    }

    /* JADX INFO: renamed from: s */
    public static C0545b m4356s(C0547d c0547d, C0552i c0552i, C0552i c0552i2, float f) {
        C0545b c0545bM4376r = c0547d.m4376r();
        c0545bM4376r.m4336j(c0552i, c0552i2, f);
        return c0545bM4376r;
    }

    /* JADX INFO: renamed from: u */
    private int m4357u(a aVar) {
        boolean z;
        int i = 0;
        while (true) {
            if (i >= this.f3386l) {
                z = false;
                break;
            }
            C0545b[] c0545bArr = this.f3381g;
            if (c0545bArr[i].f3356a.f3438j != C0552i.a.UNRESTRICTED && c0545bArr[i].f3357b < CropImageView.DEFAULT_ASPECT_RATIO) {
                z = true;
                break;
            }
            i++;
        }
        if (!z) {
            return 0;
        }
        boolean z2 = false;
        int i2 = 0;
        while (!z2) {
            C0548e c0548e = f3372x;
            if (c0548e != null) {
                c0548e.f3403k++;
            }
            i2++;
            float f = Float.MAX_VALUE;
            int i3 = -1;
            int i4 = -1;
            int i5 = 0;
            for (int i6 = 0; i6 < this.f3386l; i6++) {
                C0545b c0545b = this.f3381g[i6];
                if (c0545b.f3356a.f3438j != C0552i.a.UNRESTRICTED && !c0545b.f3361f && c0545b.f3357b < CropImageView.DEFAULT_ASPECT_RATIO) {
                    int i7 = 9;
                    if (f3369u) {
                        int iMo4320k = c0545b.f3360e.mo4320k();
                        int i8 = 0;
                        while (i8 < iMo4320k) {
                            C0552i c0552iMo4315f = c0545b.f3360e.mo4315f(i8);
                            float fMo4316g = c0545b.f3360e.mo4316g(c0552iMo4315f);
                            if (fMo4316g > CropImageView.DEFAULT_ASPECT_RATIO) {
                                int i9 = 0;
                                while (i9 < i7) {
                                    float f2 = c0552iMo4315f.f3436h[i9] / fMo4316g;
                                    if ((f2 < f && i9 == i5) || i9 > i5) {
                                        i4 = c0552iMo4315f.f3431c;
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
                        for (int i10 = 1; i10 < this.f3385k; i10++) {
                            C0552i c0552i = this.f3388n.f3365d[i10];
                            float fMo4316g2 = c0545b.f3360e.mo4316g(c0552i);
                            if (fMo4316g2 > CropImageView.DEFAULT_ASPECT_RATIO) {
                                for (int i11 = 0; i11 < 9; i11++) {
                                    float f3 = c0552i.f3436h[i11] / fMo4316g2;
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
                C0545b c0545b2 = this.f3381g[i3];
                c0545b2.f3356a.f3432d = -1;
                C0548e c0548e2 = f3372x;
                if (c0548e2 != null) {
                    c0548e2.f3402j++;
                }
                c0545b2.m4348x(this.f3388n.f3365d[i4]);
                C0552i c0552i2 = c0545b2.f3356a;
                c0552i2.f3432d = i3;
                c0552i2.m4399g(this, c0545b2);
            } else {
                z2 = true;
            }
            if (i2 > this.f3385k / 2) {
                z2 = true;
            }
        }
        return i2;
    }

    /* JADX INFO: renamed from: w */
    public static C0548e m4358w() {
        return f3372x;
    }

    /* JADX INFO: renamed from: y */
    private void m4359y() {
        int i = this.f3379e * 2;
        this.f3379e = i;
        this.f3381g = (C0545b[]) Arrays.copyOf(this.f3381g, i);
        C0546c c0546c = this.f3388n;
        c0546c.f3365d = (C0552i[]) Arrays.copyOf(c0546c.f3365d, this.f3379e);
        int i2 = this.f3379e;
        this.f3384j = new boolean[i2];
        this.f3380f = i2;
        this.f3387m = i2;
        C0548e c0548e = f3372x;
        if (c0548e != null) {
            c0548e.f3396d++;
            c0548e.f3407o = Math.max(c0548e.f3407o, i2);
            C0548e c0548e2 = f3372x;
            c0548e2.f3416x = c0548e2.f3407o;
        }
    }

    /* JADX INFO: renamed from: A */
    void m4360A(a aVar) {
        C0548e c0548e = f3372x;
        if (c0548e != null) {
            c0548e.f3412t++;
            c0548e.f3413u = Math.max(c0548e.f3413u, this.f3385k);
            C0548e c0548e2 = f3372x;
            c0548e2.f3414v = Math.max(c0548e2.f3414v, this.f3386l);
        }
        m4357u(aVar);
        m4351B(aVar, false);
        m4355n();
    }

    /* JADX INFO: renamed from: D */
    public void m4361D() {
        C0546c c0546c;
        int i = 0;
        while (true) {
            c0546c = this.f3388n;
            C0552i[] c0552iArr = c0546c.f3365d;
            if (i >= c0552iArr.length) {
                break;
            }
            C0552i c0552i = c0552iArr[i];
            if (c0552i != null) {
                c0552i.m4396d();
            }
            i++;
        }
        c0546c.f3364c.mo4383c(this.f3389o, this.f3390p);
        this.f3390p = 0;
        Arrays.fill(this.f3388n.f3365d, (Object) null);
        HashMap<String, C0552i> map = this.f3377c;
        if (map != null) {
            map.clear();
        }
        this.f3376b = 0;
        this.f3378d.clear();
        this.f3385k = 1;
        for (int i2 = 0; i2 < this.f3386l; i2++) {
            C0545b[] c0545bArr = this.f3381g;
            if (c0545bArr[i2] != null) {
                c0545bArr[i2].f3358c = false;
            }
        }
        m4352C();
        this.f3386l = 0;
        if (f3370v) {
            this.f3391q = new b(this, this.f3388n);
        } else {
            this.f3391q = new C0545b(this.f3388n);
        }
    }

    /* JADX INFO: renamed from: b */
    public void m4362b(C0558e c0558e, C0558e c0558e2, float f, int i) {
        C0552i c0552iM4375q = m4375q(c0558e.mo4513m(C0557d.b.LEFT));
        C0552i c0552iM4375q2 = m4375q(c0558e.mo4513m(C0557d.b.TOP));
        C0552i c0552iM4375q3 = m4375q(c0558e.mo4513m(C0557d.b.RIGHT));
        C0552i c0552iM4375q4 = m4375q(c0558e.mo4513m(C0557d.b.BOTTOM));
        C0552i c0552iM4375q5 = m4375q(c0558e2.mo4513m(C0557d.b.LEFT));
        C0552i c0552iM4375q6 = m4375q(c0558e2.mo4513m(C0557d.b.TOP));
        C0552i c0552iM4375q7 = m4375q(c0558e2.mo4513m(C0557d.b.RIGHT));
        C0552i c0552iM4375q8 = m4375q(c0558e2.mo4513m(C0557d.b.BOTTOM));
        C0545b c0545bM4376r = m4376r();
        double d2 = f;
        double dSin = Math.sin(d2);
        double d3 = i;
        Double.isNaN(d3);
        c0545bM4376r.m4343q(c0552iM4375q2, c0552iM4375q4, c0552iM4375q6, c0552iM4375q8, (float) (dSin * d3));
        m4364d(c0545bM4376r);
        C0545b c0545bM4376r2 = m4376r();
        double dCos = Math.cos(d2);
        Double.isNaN(d3);
        c0545bM4376r2.m4343q(c0552iM4375q, c0552iM4375q3, c0552iM4375q5, c0552iM4375q7, (float) (dCos * d3));
        m4364d(c0545bM4376r2);
    }

    /* JADX INFO: renamed from: c */
    public void m4363c(C0552i c0552i, C0552i c0552i2, int i, float f, C0552i c0552i3, C0552i c0552i4, int i2, int i3) {
        C0545b c0545bM4376r = m4376r();
        c0545bM4376r.m4334h(c0552i, c0552i2, i, f, c0552i3, c0552i4, i2);
        if (i3 != 8) {
            c0545bM4376r.m4330d(this, i3);
        }
        m4364d(c0545bM4376r);
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0098  */
    /* JADX INFO: renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m4364d(C0545b c0545b) {
        C0552i c0552iM4347v;
        if (c0545b == null) {
            return;
        }
        C0548e c0548e = f3372x;
        if (c0548e != null) {
            c0548e.f3398f++;
            if (c0545b.f3361f) {
                c0548e.f3399g++;
            }
        }
        boolean z = true;
        if (this.f3386l + 1 >= this.f3387m || this.f3385k + 1 >= this.f3380f) {
            m4359y();
        }
        boolean z2 = false;
        if (!c0545b.f3361f) {
            c0545b.m4326D(this);
            if (c0545b.isEmpty()) {
                return;
            }
            c0545b.m4344r();
            if (c0545b.m4332f(this)) {
                C0552i c0552iM4374p = m4374p();
                c0545b.f3356a = c0552iM4374p;
                int i = this.f3386l;
                m4354l(c0545b);
                if (this.f3386l == i + 1) {
                    this.f3391q.mo4327a(c0545b);
                    m4351B(this.f3391q, true);
                    if (c0552iM4374p.f3432d == -1) {
                        if (c0545b.f3356a == c0552iM4374p && (c0552iM4347v = c0545b.m4347v(c0552iM4374p)) != null) {
                            C0548e c0548e2 = f3372x;
                            if (c0548e2 != null) {
                                c0548e2.f3402j++;
                            }
                            c0545b.m4348x(c0552iM4347v);
                        }
                        if (!c0545b.f3361f) {
                            c0545b.f3356a.m4399g(this, c0545b);
                        }
                        if (f3370v) {
                            this.f3388n.f3362a.mo4381a(c0545b);
                        } else {
                            this.f3388n.f3363b.mo4381a(c0545b);
                        }
                        this.f3386l--;
                    }
                } else {
                    z = false;
                }
                if (!c0545b.m4345s()) {
                    return;
                } else {
                    z2 = z;
                }
            }
        }
        if (z2) {
            return;
        }
        m4354l(c0545b);
    }

    /* JADX INFO: renamed from: e */
    public C0545b m4365e(C0552i c0552i, C0552i c0552i2, int i, int i2) {
        if (f3367s && i2 == 8 && c0552i2.f3435g && c0552i.f3432d == -1) {
            c0552i.m4397e(this, c0552i2.f3434f + i);
            return null;
        }
        C0545b c0545bM4376r = m4376r();
        c0545bM4376r.m4340n(c0552i, c0552i2, i);
        if (i2 != 8) {
            c0545bM4376r.m4330d(this, i2);
        }
        m4364d(c0545bM4376r);
        return c0545bM4376r;
    }

    /* JADX INFO: renamed from: f */
    public void m4366f(C0552i c0552i, int i) {
        if (f3367s && c0552i.f3432d == -1) {
            float f = i;
            c0552i.m4397e(this, f);
            for (int i2 = 0; i2 < this.f3376b + 1; i2++) {
                C0552i c0552i2 = this.f3388n.f3365d[i2];
                if (c0552i2 != null && c0552i2.f3442n && c0552i2.f3443o == c0552i.f3431c) {
                    c0552i2.m4397e(this, c0552i2.f3444p + f);
                }
            }
            return;
        }
        int i3 = c0552i.f3432d;
        if (i3 == -1) {
            C0545b c0545bM4376r = m4376r();
            c0545bM4376r.m4335i(c0552i, i);
            m4364d(c0545bM4376r);
            return;
        }
        C0545b c0545b = this.f3381g[i3];
        if (c0545b.f3361f) {
            c0545b.f3357b = i;
            return;
        }
        if (c0545b.f3360e.mo4320k() == 0) {
            c0545b.f3361f = true;
            c0545b.f3357b = i;
        } else {
            C0545b c0545bM4376r2 = m4376r();
            c0545bM4376r2.m4339m(c0552i, i);
            m4364d(c0545bM4376r2);
        }
    }

    /* JADX INFO: renamed from: g */
    public void m4367g(C0552i c0552i, C0552i c0552i2, int i, boolean z) {
        C0545b c0545bM4376r = m4376r();
        C0552i c0552iM4377t = m4377t();
        c0552iM4377t.f3433e = 0;
        c0545bM4376r.m4341o(c0552i, c0552i2, c0552iM4377t, i);
        m4364d(c0545bM4376r);
    }

    /* JADX INFO: renamed from: h */
    public void m4368h(C0552i c0552i, C0552i c0552i2, int i, int i2) {
        C0545b c0545bM4376r = m4376r();
        C0552i c0552iM4377t = m4377t();
        c0552iM4377t.f3433e = 0;
        c0545bM4376r.m4341o(c0552i, c0552i2, c0552iM4377t, i);
        if (i2 != 8) {
            m4372m(c0545bM4376r, (int) (c0545bM4376r.f3360e.mo4316g(c0552iM4377t) * (-1.0f)), i2);
        }
        m4364d(c0545bM4376r);
    }

    /* JADX INFO: renamed from: i */
    public void m4369i(C0552i c0552i, C0552i c0552i2, int i, boolean z) {
        C0545b c0545bM4376r = m4376r();
        C0552i c0552iM4377t = m4377t();
        c0552iM4377t.f3433e = 0;
        c0545bM4376r.m4342p(c0552i, c0552i2, c0552iM4377t, i);
        m4364d(c0545bM4376r);
    }

    /* JADX INFO: renamed from: j */
    public void m4370j(C0552i c0552i, C0552i c0552i2, int i, int i2) {
        C0545b c0545bM4376r = m4376r();
        C0552i c0552iM4377t = m4377t();
        c0552iM4377t.f3433e = 0;
        c0545bM4376r.m4342p(c0552i, c0552i2, c0552iM4377t, i);
        if (i2 != 8) {
            m4372m(c0545bM4376r, (int) (c0545bM4376r.f3360e.mo4316g(c0552iM4377t) * (-1.0f)), i2);
        }
        m4364d(c0545bM4376r);
    }

    /* JADX INFO: renamed from: k */
    public void m4371k(C0552i c0552i, C0552i c0552i2, C0552i c0552i3, C0552i c0552i4, float f, int i) {
        C0545b c0545bM4376r = m4376r();
        c0545bM4376r.m4337k(c0552i, c0552i2, c0552i3, c0552i4, f);
        if (i != 8) {
            c0545bM4376r.m4330d(this, i);
        }
        m4364d(c0545bM4376r);
    }

    /* JADX INFO: renamed from: m */
    void m4372m(C0545b c0545b, int i, int i2) {
        c0545b.m4331e(m4373o(i2, null), i);
    }

    /* JADX INFO: renamed from: o */
    public C0552i m4373o(int i, String str) {
        C0548e c0548e = f3372x;
        if (c0548e != null) {
            c0548e.f3404l++;
        }
        if (this.f3385k + 1 >= this.f3380f) {
            m4359y();
        }
        C0552i c0552iM4353a = m4353a(C0552i.a.ERROR, str);
        int i2 = this.f3376b + 1;
        this.f3376b = i2;
        this.f3385k++;
        c0552iM4353a.f3431c = i2;
        c0552iM4353a.f3433e = i;
        this.f3388n.f3365d[i2] = c0552iM4353a;
        this.f3378d.mo4328b(c0552iM4353a);
        return c0552iM4353a;
    }

    /* JADX INFO: renamed from: p */
    public C0552i m4374p() {
        C0548e c0548e = f3372x;
        if (c0548e != null) {
            c0548e.f3406n++;
        }
        if (this.f3385k + 1 >= this.f3380f) {
            m4359y();
        }
        C0552i c0552iM4353a = m4353a(C0552i.a.SLACK, null);
        int i = this.f3376b + 1;
        this.f3376b = i;
        this.f3385k++;
        c0552iM4353a.f3431c = i;
        this.f3388n.f3365d[i] = c0552iM4353a;
        return c0552iM4353a;
    }

    /* JADX INFO: renamed from: q */
    public C0552i m4375q(Object obj) {
        C0552i c0552iM4432h = null;
        if (obj == null) {
            return null;
        }
        if (this.f3385k + 1 >= this.f3380f) {
            m4359y();
        }
        if (obj instanceof C0557d) {
            C0557d c0557d = (C0557d) obj;
            c0552iM4432h = c0557d.m4432h();
            if (c0552iM4432h == null) {
                c0557d.m4442r(this.f3388n);
                c0552iM4432h = c0557d.m4432h();
            }
            int i = c0552iM4432h.f3431c;
            if (i == -1 || i > this.f3376b || this.f3388n.f3365d[i] == null) {
                if (c0552iM4432h.f3431c != -1) {
                    c0552iM4432h.m4396d();
                }
                int i2 = this.f3376b + 1;
                this.f3376b = i2;
                this.f3385k++;
                c0552iM4432h.f3431c = i2;
                c0552iM4432h.f3438j = C0552i.a.UNRESTRICTED;
                this.f3388n.f3365d[i2] = c0552iM4432h;
            }
        }
        return c0552iM4432h;
    }

    /* JADX INFO: renamed from: r */
    public C0545b m4376r() {
        C0545b c0545bMo4382b;
        if (f3370v) {
            c0545bMo4382b = this.f3388n.f3362a.mo4382b();
            if (c0545bMo4382b == null) {
                c0545bMo4382b = new b(this, this.f3388n);
                f3374z++;
            } else {
                c0545bMo4382b.m4349y();
            }
        } else {
            c0545bMo4382b = this.f3388n.f3363b.mo4382b();
            if (c0545bMo4382b == null) {
                c0545bMo4382b = new C0545b(this.f3388n);
                f3373y++;
            } else {
                c0545bMo4382b.m4349y();
            }
        }
        C0552i.m4393b();
        return c0545bMo4382b;
    }

    /* JADX INFO: renamed from: t */
    public C0552i m4377t() {
        C0548e c0548e = f3372x;
        if (c0548e != null) {
            c0548e.f3405m++;
        }
        if (this.f3385k + 1 >= this.f3380f) {
            m4359y();
        }
        C0552i c0552iM4353a = m4353a(C0552i.a.SLACK, null);
        int i = this.f3376b + 1;
        this.f3376b = i;
        this.f3385k++;
        c0552iM4353a.f3431c = i;
        this.f3388n.f3365d[i] = c0552iM4353a;
        return c0552iM4353a;
    }

    /* JADX INFO: renamed from: v */
    public C0546c m4378v() {
        return this.f3388n;
    }

    /* JADX INFO: renamed from: x */
    public int m4379x(Object obj) {
        C0552i c0552iM4432h = ((C0557d) obj).m4432h();
        if (c0552iM4432h != null) {
            return (int) (c0552iM4432h.f3434f + 0.5f);
        }
        return 0;
    }

    /* JADX INFO: renamed from: z */
    public void m4380z() {
        C0548e c0548e = f3372x;
        if (c0548e != null) {
            c0548e.f3397e++;
        }
        if (this.f3378d.isEmpty()) {
            m4355n();
            return;
        }
        if (!this.f3382h && !this.f3383i) {
            m4360A(this.f3378d);
            return;
        }
        C0548e c0548e2 = f3372x;
        if (c0548e2 != null) {
            c0548e2.f3409q++;
        }
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= this.f3386l) {
                z = true;
                break;
            } else if (!this.f3381g[i].f3361f) {
                break;
            } else {
                i++;
            }
        }
        if (!z) {
            m4360A(this.f3378d);
            return;
        }
        C0548e c0548e3 = f3372x;
        if (c0548e3 != null) {
            c0548e3.f3408p++;
        }
        m4355n();
    }
}
