package p016c.p033e.p037b;

import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import java.util.Arrays;

/* JADX INFO: renamed from: c.e.b.i */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0552i {

    /* JADX INFO: renamed from: q */
    private static int f3428q = 1;

    /* JADX INFO: renamed from: a */
    public boolean f3429a;

    /* JADX INFO: renamed from: b */
    private String f3430b;

    /* JADX INFO: renamed from: f */
    public float f3434f;

    /* JADX INFO: renamed from: j */
    a f3438j;

    /* JADX INFO: renamed from: c */
    public int f3431c = -1;

    /* JADX INFO: renamed from: d */
    int f3432d = -1;

    /* JADX INFO: renamed from: e */
    public int f3433e = 0;

    /* JADX INFO: renamed from: g */
    public boolean f3435g = false;

    /* JADX INFO: renamed from: h */
    float[] f3436h = new float[9];

    /* JADX INFO: renamed from: i */
    float[] f3437i = new float[9];

    /* JADX INFO: renamed from: k */
    C0545b[] f3439k = new C0545b[16];

    /* JADX INFO: renamed from: l */
    int f3440l = 0;

    /* JADX INFO: renamed from: m */
    public int f3441m = 0;

    /* JADX INFO: renamed from: n */
    boolean f3442n = false;

    /* JADX INFO: renamed from: o */
    int f3443o = -1;

    /* JADX INFO: renamed from: p */
    float f3444p = CropImageView.DEFAULT_ASPECT_RATIO;

    /* JADX INFO: renamed from: c.e.b.i$a */
    public enum a {
        UNRESTRICTED,
        CONSTANT,
        SLACK,
        ERROR,
        UNKNOWN
    }

    public C0552i(a aVar, String str) {
        this.f3438j = aVar;
    }

    /* JADX INFO: renamed from: b */
    static void m4393b() {
        f3428q++;
    }

    /* JADX INFO: renamed from: a */
    public final void m4394a(C0545b c0545b) {
        int i = 0;
        while (true) {
            int i2 = this.f3440l;
            if (i >= i2) {
                C0545b[] c0545bArr = this.f3439k;
                if (i2 >= c0545bArr.length) {
                    this.f3439k = (C0545b[]) Arrays.copyOf(c0545bArr, c0545bArr.length * 2);
                }
                C0545b[] c0545bArr2 = this.f3439k;
                int i3 = this.f3440l;
                c0545bArr2[i3] = c0545b;
                this.f3440l = i3 + 1;
                return;
            }
            if (this.f3439k[i] == c0545b) {
                return;
            } else {
                i++;
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m4395c(C0545b c0545b) {
        int i = this.f3440l;
        int i2 = 0;
        while (i2 < i) {
            if (this.f3439k[i2] == c0545b) {
                while (i2 < i - 1) {
                    C0545b[] c0545bArr = this.f3439k;
                    int i3 = i2 + 1;
                    c0545bArr[i2] = c0545bArr[i3];
                    i2 = i3;
                }
                this.f3440l--;
                return;
            }
            i2++;
        }
    }

    /* JADX INFO: renamed from: d */
    public void m4396d() {
        this.f3430b = null;
        this.f3438j = a.UNKNOWN;
        this.f3433e = 0;
        this.f3431c = -1;
        this.f3432d = -1;
        this.f3434f = CropImageView.DEFAULT_ASPECT_RATIO;
        this.f3435g = false;
        this.f3442n = false;
        this.f3443o = -1;
        this.f3444p = CropImageView.DEFAULT_ASPECT_RATIO;
        int i = this.f3440l;
        for (int i2 = 0; i2 < i; i2++) {
            this.f3439k[i2] = null;
        }
        this.f3440l = 0;
        this.f3441m = 0;
        this.f3429a = false;
        Arrays.fill(this.f3437i, CropImageView.DEFAULT_ASPECT_RATIO);
    }

    /* JADX INFO: renamed from: e */
    public void m4397e(C0547d c0547d, float f) {
        this.f3434f = f;
        this.f3435g = true;
        this.f3442n = false;
        this.f3443o = -1;
        this.f3444p = CropImageView.DEFAULT_ASPECT_RATIO;
        int i = this.f3440l;
        this.f3432d = -1;
        for (int i2 = 0; i2 < i; i2++) {
            this.f3439k[i2].m4323A(c0547d, this, false);
        }
        this.f3440l = 0;
    }

    /* JADX INFO: renamed from: f */
    public void m4398f(a aVar, String str) {
        this.f3438j = aVar;
    }

    /* JADX INFO: renamed from: g */
    public final void m4399g(C0547d c0547d, C0545b c0545b) {
        int i = this.f3440l;
        for (int i2 = 0; i2 < i; i2++) {
            this.f3439k[i2].mo4324B(c0547d, c0545b, false);
        }
        this.f3440l = 0;
    }

    public String toString() {
        if (this.f3430b != null) {
            return BuildConfig.FLAVOR + this.f3430b;
        }
        return BuildConfig.FLAVOR + this.f3431c;
    }
}
