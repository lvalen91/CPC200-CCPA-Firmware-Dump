package p016c.p033e.p037b;

import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;
import p016c.p033e.p037b.C0547d;
import p016c.p033e.p037b.C0552i;

/* JADX INFO: renamed from: c.e.b.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0545b implements C0547d.a {

    /* JADX INFO: renamed from: c */
    boolean f3358c;

    /* JADX INFO: renamed from: e */
    public a f3360e;

    /* JADX INFO: renamed from: a */
    C0552i f3356a = null;

    /* JADX INFO: renamed from: b */
    float f3357b = CropImageView.DEFAULT_ASPECT_RATIO;

    /* JADX INFO: renamed from: d */
    ArrayList<C0552i> f3359d = new ArrayList<>();

    /* JADX INFO: renamed from: f */
    boolean f3361f = false;

    /* JADX INFO: renamed from: c.e.b.b$a */
    public interface a {
        /* JADX INFO: renamed from: a */
        float mo4310a(int i);

        /* JADX INFO: renamed from: b */
        float mo4311b(C0545b c0545b, boolean z);

        /* JADX INFO: renamed from: c */
        void mo4312c(C0552i c0552i, float f);

        void clear();

        /* JADX INFO: renamed from: d */
        float mo4313d(C0552i c0552i, boolean z);

        /* JADX INFO: renamed from: e */
        void mo4314e(C0552i c0552i, float f, boolean z);

        /* JADX INFO: renamed from: f */
        C0552i mo4315f(int i);

        /* JADX INFO: renamed from: g */
        float mo4316g(C0552i c0552i);

        /* JADX INFO: renamed from: h */
        boolean mo4317h(C0552i c0552i);

        /* JADX INFO: renamed from: i */
        void mo4318i(float f);

        /* JADX INFO: renamed from: j */
        void mo4319j();

        /* JADX INFO: renamed from: k */
        int mo4320k();
    }

    public C0545b() {
    }

    /* JADX INFO: renamed from: u */
    private boolean m4321u(C0552i c0552i, C0547d c0547d) {
        return c0552i.f3441m <= 1;
    }

    /* JADX INFO: renamed from: w */
    private C0552i m4322w(boolean[] zArr, C0552i c0552i) {
        C0552i.a aVar;
        int iMo4320k = this.f3360e.mo4320k();
        C0552i c0552i2 = null;
        float f = CropImageView.DEFAULT_ASPECT_RATIO;
        for (int i = 0; i < iMo4320k; i++) {
            float fMo4310a = this.f3360e.mo4310a(i);
            if (fMo4310a < CropImageView.DEFAULT_ASPECT_RATIO) {
                C0552i c0552iMo4315f = this.f3360e.mo4315f(i);
                if ((zArr == null || !zArr[c0552iMo4315f.f3431c]) && c0552iMo4315f != c0552i && (((aVar = c0552iMo4315f.f3438j) == C0552i.a.SLACK || aVar == C0552i.a.ERROR) && fMo4310a < f)) {
                    f = fMo4310a;
                    c0552i2 = c0552iMo4315f;
                }
            }
        }
        return c0552i2;
    }

    /* JADX INFO: renamed from: A */
    public void m4323A(C0547d c0547d, C0552i c0552i, boolean z) {
        if (c0552i.f3435g) {
            this.f3357b += c0552i.f3434f * this.f3360e.mo4316g(c0552i);
            this.f3360e.mo4313d(c0552i, z);
            if (z) {
                c0552i.m4395c(this);
            }
            if (C0547d.f3368t && c0552i != null && this.f3360e.mo4320k() == 0) {
                this.f3361f = true;
                c0547d.f3375a = true;
            }
        }
    }

    /* JADX INFO: renamed from: B */
    public void mo4324B(C0547d c0547d, C0545b c0545b, boolean z) {
        this.f3357b += c0545b.f3357b * this.f3360e.mo4311b(c0545b, z);
        if (z) {
            c0545b.f3356a.m4395c(this);
        }
        if (C0547d.f3368t && this.f3356a != null && this.f3360e.mo4320k() == 0) {
            this.f3361f = true;
            c0547d.f3375a = true;
        }
    }

    /* JADX INFO: renamed from: C */
    public void m4325C(C0547d c0547d, C0552i c0552i, boolean z) {
        if (c0552i.f3442n) {
            float fMo4316g = this.f3360e.mo4316g(c0552i);
            this.f3357b += c0552i.f3444p * fMo4316g;
            this.f3360e.mo4313d(c0552i, z);
            if (z) {
                c0552i.m4395c(this);
            }
            this.f3360e.mo4314e(c0547d.f3388n.f3365d[c0552i.f3443o], fMo4316g, z);
            if (C0547d.f3368t && c0552i != null && this.f3360e.mo4320k() == 0) {
                this.f3361f = true;
                c0547d.f3375a = true;
            }
        }
    }

    /* JADX INFO: renamed from: D */
    public void m4326D(C0547d c0547d) {
        if (c0547d.f3381g.length == 0) {
            return;
        }
        boolean z = false;
        while (!z) {
            int iMo4320k = this.f3360e.mo4320k();
            for (int i = 0; i < iMo4320k; i++) {
                C0552i c0552iMo4315f = this.f3360e.mo4315f(i);
                if (c0552iMo4315f.f3432d != -1 || c0552iMo4315f.f3435g || c0552iMo4315f.f3442n) {
                    this.f3359d.add(c0552iMo4315f);
                }
            }
            int size = this.f3359d.size();
            if (size > 0) {
                for (int i2 = 0; i2 < size; i2++) {
                    C0552i c0552i = this.f3359d.get(i2);
                    if (c0552i.f3435g) {
                        m4323A(c0547d, c0552i, true);
                    } else if (c0552i.f3442n) {
                        m4325C(c0547d, c0552i, true);
                    } else {
                        mo4324B(c0547d, c0547d.f3381g[c0552i.f3432d], true);
                    }
                }
                this.f3359d.clear();
            } else {
                z = true;
            }
        }
        if (C0547d.f3368t && this.f3356a != null && this.f3360e.mo4320k() == 0) {
            this.f3361f = true;
            c0547d.f3375a = true;
        }
    }

    @Override // p016c.p033e.p037b.C0547d.a
    /* JADX INFO: renamed from: a */
    public void mo4327a(C0547d.a aVar) {
        if (aVar instanceof C0545b) {
            C0545b c0545b = (C0545b) aVar;
            this.f3356a = null;
            this.f3360e.clear();
            for (int i = 0; i < c0545b.f3360e.mo4320k(); i++) {
                this.f3360e.mo4314e(c0545b.f3360e.mo4315f(i), c0545b.f3360e.mo4310a(i), true);
            }
        }
    }

    @Override // p016c.p033e.p037b.C0547d.a
    /* JADX INFO: renamed from: b */
    public void mo4328b(C0552i c0552i) {
        int i = c0552i.f3433e;
        float f = 1.0f;
        if (i != 1) {
            if (i == 2) {
                f = 1000.0f;
            } else if (i == 3) {
                f = 1000000.0f;
            } else if (i == 4) {
                f = 1.0E9f;
            } else if (i == 5) {
                f = 1.0E12f;
            }
        }
        this.f3360e.mo4312c(c0552i, f);
    }

    @Override // p016c.p033e.p037b.C0547d.a
    /* JADX INFO: renamed from: c */
    public C0552i mo4329c(C0547d c0547d, boolean[] zArr) {
        return m4322w(zArr, null);
    }

    @Override // p016c.p033e.p037b.C0547d.a
    public void clear() {
        this.f3360e.clear();
        this.f3356a = null;
        this.f3357b = CropImageView.DEFAULT_ASPECT_RATIO;
    }

    /* JADX INFO: renamed from: d */
    public C0545b m4330d(C0547d c0547d, int i) {
        this.f3360e.mo4312c(c0547d.m4373o(i, "ep"), 1.0f);
        this.f3360e.mo4312c(c0547d.m4373o(i, "em"), -1.0f);
        return this;
    }

    /* JADX INFO: renamed from: e */
    C0545b m4331e(C0552i c0552i, int i) {
        this.f3360e.mo4312c(c0552i, i);
        return this;
    }

    /* JADX INFO: renamed from: f */
    boolean m4332f(C0547d c0547d) {
        boolean z;
        C0552i c0552iM4333g = m4333g(c0547d);
        if (c0552iM4333g == null) {
            z = true;
        } else {
            m4348x(c0552iM4333g);
            z = false;
        }
        if (this.f3360e.mo4320k() == 0) {
            this.f3361f = true;
        }
        return z;
    }

    /* JADX INFO: renamed from: g */
    C0552i m4333g(C0547d c0547d) {
        int iMo4320k = this.f3360e.mo4320k();
        C0552i c0552i = null;
        C0552i c0552i2 = null;
        boolean z = false;
        boolean z2 = false;
        float f = CropImageView.DEFAULT_ASPECT_RATIO;
        float f2 = CropImageView.DEFAULT_ASPECT_RATIO;
        for (int i = 0; i < iMo4320k; i++) {
            float fMo4310a = this.f3360e.mo4310a(i);
            C0552i c0552iMo4315f = this.f3360e.mo4315f(i);
            if (c0552iMo4315f.f3438j == C0552i.a.UNRESTRICTED) {
                if (c0552i == null || f > fMo4310a) {
                    boolean zM4321u = m4321u(c0552iMo4315f, c0547d);
                    z = zM4321u;
                    f = fMo4310a;
                    c0552i = c0552iMo4315f;
                } else if (!z && m4321u(c0552iMo4315f, c0547d)) {
                    f = fMo4310a;
                    c0552i = c0552iMo4315f;
                    z = true;
                }
            } else if (c0552i == null && fMo4310a < CropImageView.DEFAULT_ASPECT_RATIO) {
                if (c0552i2 == null || f2 > fMo4310a) {
                    boolean zM4321u2 = m4321u(c0552iMo4315f, c0547d);
                    z2 = zM4321u2;
                    f2 = fMo4310a;
                    c0552i2 = c0552iMo4315f;
                } else if (!z2 && m4321u(c0552iMo4315f, c0547d)) {
                    f2 = fMo4310a;
                    c0552i2 = c0552iMo4315f;
                    z2 = true;
                }
            }
        }
        return c0552i != null ? c0552i : c0552i2;
    }

    @Override // p016c.p033e.p037b.C0547d.a
    public C0552i getKey() {
        return this.f3356a;
    }

    /* JADX INFO: renamed from: h */
    C0545b m4334h(C0552i c0552i, C0552i c0552i2, int i, float f, C0552i c0552i3, C0552i c0552i4, int i2) {
        if (c0552i2 == c0552i3) {
            this.f3360e.mo4312c(c0552i, 1.0f);
            this.f3360e.mo4312c(c0552i4, 1.0f);
            this.f3360e.mo4312c(c0552i2, -2.0f);
            return this;
        }
        if (f == 0.5f) {
            this.f3360e.mo4312c(c0552i, 1.0f);
            this.f3360e.mo4312c(c0552i2, -1.0f);
            this.f3360e.mo4312c(c0552i3, -1.0f);
            this.f3360e.mo4312c(c0552i4, 1.0f);
            if (i > 0 || i2 > 0) {
                this.f3357b = (-i) + i2;
            }
        } else if (f <= CropImageView.DEFAULT_ASPECT_RATIO) {
            this.f3360e.mo4312c(c0552i, -1.0f);
            this.f3360e.mo4312c(c0552i2, 1.0f);
            this.f3357b = i;
        } else if (f >= 1.0f) {
            this.f3360e.mo4312c(c0552i4, -1.0f);
            this.f3360e.mo4312c(c0552i3, 1.0f);
            this.f3357b = -i2;
        } else {
            float f2 = 1.0f - f;
            this.f3360e.mo4312c(c0552i, f2 * 1.0f);
            this.f3360e.mo4312c(c0552i2, f2 * (-1.0f));
            this.f3360e.mo4312c(c0552i3, (-1.0f) * f);
            this.f3360e.mo4312c(c0552i4, 1.0f * f);
            if (i > 0 || i2 > 0) {
                this.f3357b = ((-i) * f2) + (i2 * f);
            }
        }
        return this;
    }

    /* JADX INFO: renamed from: i */
    C0545b m4335i(C0552i c0552i, int i) {
        this.f3356a = c0552i;
        float f = i;
        c0552i.f3434f = f;
        this.f3357b = f;
        this.f3361f = true;
        return this;
    }

    @Override // p016c.p033e.p037b.C0547d.a
    public boolean isEmpty() {
        return this.f3356a == null && this.f3357b == CropImageView.DEFAULT_ASPECT_RATIO && this.f3360e.mo4320k() == 0;
    }

    /* JADX INFO: renamed from: j */
    C0545b m4336j(C0552i c0552i, C0552i c0552i2, float f) {
        this.f3360e.mo4312c(c0552i, -1.0f);
        this.f3360e.mo4312c(c0552i2, f);
        return this;
    }

    /* JADX INFO: renamed from: k */
    public C0545b m4337k(C0552i c0552i, C0552i c0552i2, C0552i c0552i3, C0552i c0552i4, float f) {
        this.f3360e.mo4312c(c0552i, -1.0f);
        this.f3360e.mo4312c(c0552i2, 1.0f);
        this.f3360e.mo4312c(c0552i3, f);
        this.f3360e.mo4312c(c0552i4, -f);
        return this;
    }

    /* JADX INFO: renamed from: l */
    public C0545b m4338l(float f, float f2, float f3, C0552i c0552i, C0552i c0552i2, C0552i c0552i3, C0552i c0552i4) {
        this.f3357b = CropImageView.DEFAULT_ASPECT_RATIO;
        if (f2 == CropImageView.DEFAULT_ASPECT_RATIO || f == f3) {
            this.f3360e.mo4312c(c0552i, 1.0f);
            this.f3360e.mo4312c(c0552i2, -1.0f);
            this.f3360e.mo4312c(c0552i4, 1.0f);
            this.f3360e.mo4312c(c0552i3, -1.0f);
        } else if (f == CropImageView.DEFAULT_ASPECT_RATIO) {
            this.f3360e.mo4312c(c0552i, 1.0f);
            this.f3360e.mo4312c(c0552i2, -1.0f);
        } else if (f3 == CropImageView.DEFAULT_ASPECT_RATIO) {
            this.f3360e.mo4312c(c0552i3, 1.0f);
            this.f3360e.mo4312c(c0552i4, -1.0f);
        } else {
            float f4 = (f / f2) / (f3 / f2);
            this.f3360e.mo4312c(c0552i, 1.0f);
            this.f3360e.mo4312c(c0552i2, -1.0f);
            this.f3360e.mo4312c(c0552i4, f4);
            this.f3360e.mo4312c(c0552i3, -f4);
        }
        return this;
    }

    /* JADX INFO: renamed from: m */
    public C0545b m4339m(C0552i c0552i, int i) {
        if (i < 0) {
            this.f3357b = i * (-1);
            this.f3360e.mo4312c(c0552i, 1.0f);
        } else {
            this.f3357b = i;
            this.f3360e.mo4312c(c0552i, -1.0f);
        }
        return this;
    }

    /* JADX INFO: renamed from: n */
    public C0545b m4340n(C0552i c0552i, C0552i c0552i2, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.f3357b = i;
        }
        if (z) {
            this.f3360e.mo4312c(c0552i, 1.0f);
            this.f3360e.mo4312c(c0552i2, -1.0f);
        } else {
            this.f3360e.mo4312c(c0552i, -1.0f);
            this.f3360e.mo4312c(c0552i2, 1.0f);
        }
        return this;
    }

    /* JADX INFO: renamed from: o */
    public C0545b m4341o(C0552i c0552i, C0552i c0552i2, C0552i c0552i3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.f3357b = i;
        }
        if (z) {
            this.f3360e.mo4312c(c0552i, 1.0f);
            this.f3360e.mo4312c(c0552i2, -1.0f);
            this.f3360e.mo4312c(c0552i3, -1.0f);
        } else {
            this.f3360e.mo4312c(c0552i, -1.0f);
            this.f3360e.mo4312c(c0552i2, 1.0f);
            this.f3360e.mo4312c(c0552i3, 1.0f);
        }
        return this;
    }

    /* JADX INFO: renamed from: p */
    public C0545b m4342p(C0552i c0552i, C0552i c0552i2, C0552i c0552i3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.f3357b = i;
        }
        if (z) {
            this.f3360e.mo4312c(c0552i, 1.0f);
            this.f3360e.mo4312c(c0552i2, -1.0f);
            this.f3360e.mo4312c(c0552i3, 1.0f);
        } else {
            this.f3360e.mo4312c(c0552i, -1.0f);
            this.f3360e.mo4312c(c0552i2, 1.0f);
            this.f3360e.mo4312c(c0552i3, -1.0f);
        }
        return this;
    }

    /* JADX INFO: renamed from: q */
    public C0545b m4343q(C0552i c0552i, C0552i c0552i2, C0552i c0552i3, C0552i c0552i4, float f) {
        this.f3360e.mo4312c(c0552i3, 0.5f);
        this.f3360e.mo4312c(c0552i4, 0.5f);
        this.f3360e.mo4312c(c0552i, -0.5f);
        this.f3360e.mo4312c(c0552i2, -0.5f);
        this.f3357b = -f;
        return this;
    }

    /* JADX INFO: renamed from: r */
    void m4344r() {
        float f = this.f3357b;
        if (f < CropImageView.DEFAULT_ASPECT_RATIO) {
            this.f3357b = f * (-1.0f);
            this.f3360e.mo4319j();
        }
    }

    /* JADX INFO: renamed from: s */
    boolean m4345s() {
        C0552i c0552i = this.f3356a;
        return c0552i != null && (c0552i.f3438j == C0552i.a.UNRESTRICTED || this.f3357b >= CropImageView.DEFAULT_ASPECT_RATIO);
    }

    /* JADX INFO: renamed from: t */
    boolean m4346t(C0552i c0552i) {
        return this.f3360e.mo4317h(c0552i);
    }

    public String toString() {
        return m4350z();
    }

    /* JADX INFO: renamed from: v */
    public C0552i m4347v(C0552i c0552i) {
        return m4322w(null, c0552i);
    }

    /* JADX INFO: renamed from: x */
    void m4348x(C0552i c0552i) {
        C0552i c0552i2 = this.f3356a;
        if (c0552i2 != null) {
            this.f3360e.mo4312c(c0552i2, -1.0f);
            this.f3356a.f3432d = -1;
            this.f3356a = null;
        }
        float fMo4313d = this.f3360e.mo4313d(c0552i, true) * (-1.0f);
        this.f3356a = c0552i;
        if (fMo4313d == 1.0f) {
            return;
        }
        this.f3357b /= fMo4313d;
        this.f3360e.mo4318i(fMo4313d);
    }

    /* JADX INFO: renamed from: y */
    public void m4349y() {
        this.f3356a = null;
        this.f3360e.clear();
        this.f3357b = CropImageView.DEFAULT_ASPECT_RATIO;
        this.f3361f = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d2  */
    /* JADX INFO: renamed from: z */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    String m4350z() {
        boolean z;
        String str = (this.f3356a == null ? BuildConfig.FLAVOR + "0" : BuildConfig.FLAVOR + this.f3356a) + " = ";
        if (this.f3357b != CropImageView.DEFAULT_ASPECT_RATIO) {
            str = str + this.f3357b;
            z = true;
        } else {
            z = false;
        }
        int iMo4320k = this.f3360e.mo4320k();
        for (int i = 0; i < iMo4320k; i++) {
            C0552i c0552iMo4315f = this.f3360e.mo4315f(i);
            if (c0552iMo4315f != null) {
                float fMo4310a = this.f3360e.mo4310a(i);
                if (fMo4310a != CropImageView.DEFAULT_ASPECT_RATIO) {
                    String string = c0552iMo4315f.toString();
                    if (!z) {
                        if (fMo4310a < CropImageView.DEFAULT_ASPECT_RATIO) {
                            str = str + "- ";
                            fMo4310a *= -1.0f;
                        }
                        str = fMo4310a == 1.0f ? str + string : str + fMo4310a + " " + string;
                        z = true;
                    } else if (fMo4310a > CropImageView.DEFAULT_ASPECT_RATIO) {
                        str = str + " + ";
                        if (fMo4310a == 1.0f) {
                        }
                        z = true;
                    } else {
                        str = str + " - ";
                        fMo4310a *= -1.0f;
                        if (fMo4310a == 1.0f) {
                        }
                        z = true;
                    }
                }
            }
        }
        if (z) {
            return str;
        }
        return str + "0.0";
    }

    public C0545b(C0546c c0546c) {
        this.f3360e = new C0544a(this, c0546c);
    }
}
