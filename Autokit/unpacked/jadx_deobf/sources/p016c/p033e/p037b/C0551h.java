package p016c.p033e.p037b;

import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import java.util.Arrays;
import java.util.Comparator;
import p016c.p033e.p037b.C0545b;

/* JADX INFO: renamed from: c.e.b.h */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0551h extends C0545b {

    /* JADX INFO: renamed from: g */
    private int f3421g;

    /* JADX INFO: renamed from: h */
    private C0552i[] f3422h;

    /* JADX INFO: renamed from: i */
    private C0552i[] f3423i;

    /* JADX INFO: renamed from: j */
    private int f3424j;

    /* JADX INFO: renamed from: k */
    b f3425k;

    /* JADX INFO: renamed from: c.e.b.h$a */
    class a implements Comparator<C0552i> {
        a(C0551h c0551h) {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(C0552i c0552i, C0552i c0552i2) {
            return c0552i.f3431c - c0552i2.f3431c;
        }
    }

    /* JADX INFO: renamed from: c.e.b.h$b */
    class b implements Comparable {

        /* JADX INFO: renamed from: b */
        C0552i f3426b;

        public b(C0551h c0551h) {
        }

        /* JADX INFO: renamed from: a */
        public boolean m4388a(C0552i c0552i, float f) {
            boolean z = true;
            if (!this.f3426b.f3429a) {
                for (int i = 0; i < 9; i++) {
                    float f2 = c0552i.f3437i[i];
                    if (f2 != CropImageView.DEFAULT_ASPECT_RATIO) {
                        float f3 = f2 * f;
                        if (Math.abs(f3) < 1.0E-4f) {
                            f3 = CropImageView.DEFAULT_ASPECT_RATIO;
                        }
                        this.f3426b.f3437i[i] = f3;
                    } else {
                        this.f3426b.f3437i[i] = 0.0f;
                    }
                }
                return true;
            }
            for (int i2 = 0; i2 < 9; i2++) {
                float[] fArr = this.f3426b.f3437i;
                fArr[i2] = fArr[i2] + (c0552i.f3437i[i2] * f);
                if (Math.abs(fArr[i2]) < 1.0E-4f) {
                    this.f3426b.f3437i[i2] = 0.0f;
                } else {
                    z = false;
                }
            }
            if (z) {
                C0551h.this.m4386G(this.f3426b);
            }
            return false;
        }

        /* JADX INFO: renamed from: b */
        public void m4389b(C0552i c0552i) {
            this.f3426b = c0552i;
        }

        /* JADX INFO: renamed from: c */
        public final boolean m4390c() {
            for (int i = 8; i >= 0; i--) {
                float f = this.f3426b.f3437i[i];
                if (f > CropImageView.DEFAULT_ASPECT_RATIO) {
                    return false;
                }
                if (f < CropImageView.DEFAULT_ASPECT_RATIO) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            return this.f3426b.f3431c - ((C0552i) obj).f3431c;
        }

        /* JADX INFO: renamed from: d */
        public final boolean m4391d(C0552i c0552i) {
            int i = 8;
            while (true) {
                if (i < 0) {
                    break;
                }
                float f = c0552i.f3437i[i];
                float f2 = this.f3426b.f3437i[i];
                if (f2 == f) {
                    i--;
                } else if (f2 < f) {
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: renamed from: e */
        public void m4392e() {
            Arrays.fill(this.f3426b.f3437i, CropImageView.DEFAULT_ASPECT_RATIO);
        }

        public String toString() {
            String str = "[ ";
            if (this.f3426b != null) {
                for (int i = 0; i < 9; i++) {
                    str = str + this.f3426b.f3437i[i] + " ";
                }
            }
            return str + "] " + this.f3426b;
        }
    }

    public C0551h(C0546c c0546c) {
        super(c0546c);
        this.f3421g = 128;
        this.f3422h = new C0552i[128];
        this.f3423i = new C0552i[128];
        this.f3424j = 0;
        this.f3425k = new b(this);
    }

    /* JADX INFO: renamed from: F */
    private final void m4385F(C0552i c0552i) {
        int i;
        int i2 = this.f3424j + 1;
        C0552i[] c0552iArr = this.f3422h;
        if (i2 > c0552iArr.length) {
            C0552i[] c0552iArr2 = (C0552i[]) Arrays.copyOf(c0552iArr, c0552iArr.length * 2);
            this.f3422h = c0552iArr2;
            this.f3423i = (C0552i[]) Arrays.copyOf(c0552iArr2, c0552iArr2.length * 2);
        }
        C0552i[] c0552iArr3 = this.f3422h;
        int i3 = this.f3424j;
        c0552iArr3[i3] = c0552i;
        int i4 = i3 + 1;
        this.f3424j = i4;
        if (i4 > 1 && c0552iArr3[i4 - 1].f3431c > c0552i.f3431c) {
            int i5 = 0;
            while (true) {
                i = this.f3424j;
                if (i5 >= i) {
                    break;
                }
                this.f3423i[i5] = this.f3422h[i5];
                i5++;
            }
            Arrays.sort(this.f3423i, 0, i, new a(this));
            for (int i6 = 0; i6 < this.f3424j; i6++) {
                this.f3422h[i6] = this.f3423i[i6];
            }
        }
        c0552i.f3429a = true;
        c0552i.m4394a(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: G */
    public final void m4386G(C0552i c0552i) {
        int i = 0;
        while (i < this.f3424j) {
            if (this.f3422h[i] == c0552i) {
                while (true) {
                    int i2 = this.f3424j;
                    if (i >= i2 - 1) {
                        this.f3424j = i2 - 1;
                        c0552i.f3429a = false;
                        return;
                    } else {
                        C0552i[] c0552iArr = this.f3422h;
                        int i3 = i + 1;
                        c0552iArr[i] = c0552iArr[i3];
                        i = i3;
                    }
                }
            } else {
                i++;
            }
        }
    }

    @Override // p016c.p033e.p037b.C0545b
    /* JADX INFO: renamed from: B */
    public void mo4324B(C0547d c0547d, C0545b c0545b, boolean z) {
        C0552i c0552i = c0545b.f3356a;
        if (c0552i == null) {
            return;
        }
        C0545b.a aVar = c0545b.f3360e;
        int iMo4320k = aVar.mo4320k();
        for (int i = 0; i < iMo4320k; i++) {
            C0552i c0552iMo4315f = aVar.mo4315f(i);
            float fMo4310a = aVar.mo4310a(i);
            this.f3425k.m4389b(c0552iMo4315f);
            if (this.f3425k.m4388a(c0552i, fMo4310a)) {
                m4385F(c0552iMo4315f);
            }
            this.f3357b += c0545b.f3357b * fMo4310a;
        }
        m4386G(c0552i);
    }

    @Override // p016c.p033e.p037b.C0545b, p016c.p033e.p037b.C0547d.a
    /* JADX INFO: renamed from: b */
    public void mo4328b(C0552i c0552i) {
        this.f3425k.m4389b(c0552i);
        this.f3425k.m4392e();
        c0552i.f3437i[c0552i.f3433e] = 1.0f;
        m4385F(c0552i);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    @Override // p016c.p033e.p037b.C0545b, p016c.p033e.p037b.C0547d.a
    /* JADX INFO: renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C0552i mo4329c(C0547d c0547d, boolean[] zArr) {
        int i = -1;
        for (int i2 = 0; i2 < this.f3424j; i2++) {
            C0552i c0552i = this.f3422h[i2];
            if (!zArr[c0552i.f3431c]) {
                this.f3425k.m4389b(c0552i);
                if (i == -1) {
                    if (this.f3425k.m4390c()) {
                        i = i2;
                    }
                } else if (this.f3425k.m4391d(this.f3422h[i])) {
                }
            }
        }
        if (i == -1) {
            return null;
        }
        return this.f3422h[i];
    }

    @Override // p016c.p033e.p037b.C0545b, p016c.p033e.p037b.C0547d.a
    public void clear() {
        this.f3424j = 0;
        this.f3357b = CropImageView.DEFAULT_ASPECT_RATIO;
    }

    @Override // p016c.p033e.p037b.C0545b, p016c.p033e.p037b.C0547d.a
    public boolean isEmpty() {
        return this.f3424j == 0;
    }

    @Override // p016c.p033e.p037b.C0545b
    public String toString() {
        String str = BuildConfig.FLAVOR + " goal -> (" + this.f3357b + ") : ";
        for (int i = 0; i < this.f3424j; i++) {
            this.f3425k.m4389b(this.f3422h[i]);
            str = str + this.f3425k + " ";
        }
        return str;
    }
}
