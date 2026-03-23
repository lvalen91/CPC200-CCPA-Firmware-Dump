package p016c.p033e.p037b;

import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import java.util.Arrays;
import p016c.p033e.p037b.C0545b;

/* JADX INFO: renamed from: c.e.b.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0544a implements C0545b.a {

    /* JADX INFO: renamed from: l */
    private static float f3344l = 0.001f;

    /* JADX INFO: renamed from: b */
    private final C0545b f3346b;

    /* JADX INFO: renamed from: c */
    protected final C0546c f3347c;

    /* JADX INFO: renamed from: a */
    int f3345a = 0;

    /* JADX INFO: renamed from: d */
    private int f3348d = 8;

    /* JADX INFO: renamed from: e */
    private C0552i f3349e = null;

    /* JADX INFO: renamed from: f */
    private int[] f3350f = new int[8];

    /* JADX INFO: renamed from: g */
    private int[] f3351g = new int[8];

    /* JADX INFO: renamed from: h */
    private float[] f3352h = new float[8];

    /* JADX INFO: renamed from: i */
    private int f3353i = -1;

    /* JADX INFO: renamed from: j */
    private int f3354j = -1;

    /* JADX INFO: renamed from: k */
    private boolean f3355k = false;

    C0544a(C0545b c0545b, C0546c c0546c) {
        this.f3346b = c0545b;
        this.f3347c = c0546c;
    }

    @Override // p016c.p033e.p037b.C0545b.a
    /* JADX INFO: renamed from: a */
    public float mo4310a(int i) {
        int i2 = this.f3353i;
        for (int i3 = 0; i2 != -1 && i3 < this.f3345a; i3++) {
            if (i3 == i) {
                return this.f3352h[i2];
            }
            i2 = this.f3351g[i2];
        }
        return CropImageView.DEFAULT_ASPECT_RATIO;
    }

    @Override // p016c.p033e.p037b.C0545b.a
    /* JADX INFO: renamed from: b */
    public float mo4311b(C0545b c0545b, boolean z) {
        float fMo4316g = mo4316g(c0545b.f3356a);
        mo4313d(c0545b.f3356a, z);
        C0545b.a aVar = c0545b.f3360e;
        int iMo4320k = aVar.mo4320k();
        for (int i = 0; i < iMo4320k; i++) {
            C0552i c0552iMo4315f = aVar.mo4315f(i);
            mo4314e(c0552iMo4315f, aVar.mo4316g(c0552iMo4315f) * fMo4316g, z);
        }
        return fMo4316g;
    }

    @Override // p016c.p033e.p037b.C0545b.a
    /* JADX INFO: renamed from: c */
    public final void mo4312c(C0552i c0552i, float f) {
        if (f == CropImageView.DEFAULT_ASPECT_RATIO) {
            mo4313d(c0552i, true);
            return;
        }
        int i = this.f3353i;
        if (i == -1) {
            this.f3353i = 0;
            this.f3352h[0] = f;
            this.f3350f[0] = c0552i.f3431c;
            this.f3351g[0] = -1;
            c0552i.f3441m++;
            c0552i.m4394a(this.f3346b);
            this.f3345a++;
            if (this.f3355k) {
                return;
            }
            int i2 = this.f3354j + 1;
            this.f3354j = i2;
            int[] iArr = this.f3350f;
            if (i2 >= iArr.length) {
                this.f3355k = true;
                this.f3354j = iArr.length - 1;
                return;
            }
            return;
        }
        int i3 = -1;
        for (int i4 = 0; i != -1 && i4 < this.f3345a; i4++) {
            int[] iArr2 = this.f3350f;
            int i5 = iArr2[i];
            int i6 = c0552i.f3431c;
            if (i5 == i6) {
                this.f3352h[i] = f;
                return;
            }
            if (iArr2[i] < i6) {
                i3 = i;
            }
            i = this.f3351g[i];
        }
        int length = this.f3354j;
        int i7 = length + 1;
        if (this.f3355k) {
            int[] iArr3 = this.f3350f;
            if (iArr3[length] != -1) {
                length = iArr3.length;
            }
        } else {
            length = i7;
        }
        int[] iArr4 = this.f3350f;
        if (length >= iArr4.length && this.f3345a < iArr4.length) {
            int i8 = 0;
            while (true) {
                int[] iArr5 = this.f3350f;
                if (i8 >= iArr5.length) {
                    break;
                }
                if (iArr5[i8] == -1) {
                    length = i8;
                    break;
                }
                i8++;
            }
        }
        int[] iArr6 = this.f3350f;
        if (length >= iArr6.length) {
            length = iArr6.length;
            int i9 = this.f3348d * 2;
            this.f3348d = i9;
            this.f3355k = false;
            this.f3354j = length - 1;
            this.f3352h = Arrays.copyOf(this.f3352h, i9);
            this.f3350f = Arrays.copyOf(this.f3350f, this.f3348d);
            this.f3351g = Arrays.copyOf(this.f3351g, this.f3348d);
        }
        this.f3350f[length] = c0552i.f3431c;
        this.f3352h[length] = f;
        if (i3 != -1) {
            int[] iArr7 = this.f3351g;
            iArr7[length] = iArr7[i3];
            iArr7[i3] = length;
        } else {
            this.f3351g[length] = this.f3353i;
            this.f3353i = length;
        }
        c0552i.f3441m++;
        c0552i.m4394a(this.f3346b);
        this.f3345a++;
        if (!this.f3355k) {
            this.f3354j++;
        }
        if (this.f3345a >= this.f3350f.length) {
            this.f3355k = true;
        }
        int i10 = this.f3354j;
        int[] iArr8 = this.f3350f;
        if (i10 >= iArr8.length) {
            this.f3355k = true;
            this.f3354j = iArr8.length - 1;
        }
    }

    @Override // p016c.p033e.p037b.C0545b.a
    public final void clear() {
        int i = this.f3353i;
        for (int i2 = 0; i != -1 && i2 < this.f3345a; i2++) {
            C0552i c0552i = this.f3347c.f3365d[this.f3350f[i]];
            if (c0552i != null) {
                c0552i.m4395c(this.f3346b);
            }
            i = this.f3351g[i];
        }
        this.f3353i = -1;
        this.f3354j = -1;
        this.f3355k = false;
        this.f3345a = 0;
    }

    @Override // p016c.p033e.p037b.C0545b.a
    /* JADX INFO: renamed from: d */
    public final float mo4313d(C0552i c0552i, boolean z) {
        if (this.f3349e == c0552i) {
            this.f3349e = null;
        }
        int i = this.f3353i;
        if (i == -1) {
            return CropImageView.DEFAULT_ASPECT_RATIO;
        }
        int i2 = 0;
        int i3 = -1;
        while (i != -1 && i2 < this.f3345a) {
            if (this.f3350f[i] == c0552i.f3431c) {
                if (i == this.f3353i) {
                    this.f3353i = this.f3351g[i];
                } else {
                    int[] iArr = this.f3351g;
                    iArr[i3] = iArr[i];
                }
                if (z) {
                    c0552i.m4395c(this.f3346b);
                }
                c0552i.f3441m--;
                this.f3345a--;
                this.f3350f[i] = -1;
                if (this.f3355k) {
                    this.f3354j = i;
                }
                return this.f3352h[i];
            }
            i2++;
            i3 = i;
            i = this.f3351g[i];
        }
        return CropImageView.DEFAULT_ASPECT_RATIO;
    }

    @Override // p016c.p033e.p037b.C0545b.a
    /* JADX INFO: renamed from: e */
    public void mo4314e(C0552i c0552i, float f, boolean z) {
        float f2 = f3344l;
        if (f <= (-f2) || f >= f2) {
            int i = this.f3353i;
            if (i == -1) {
                this.f3353i = 0;
                this.f3352h[0] = f;
                this.f3350f[0] = c0552i.f3431c;
                this.f3351g[0] = -1;
                c0552i.f3441m++;
                c0552i.m4394a(this.f3346b);
                this.f3345a++;
                if (this.f3355k) {
                    return;
                }
                int i2 = this.f3354j + 1;
                this.f3354j = i2;
                int[] iArr = this.f3350f;
                if (i2 >= iArr.length) {
                    this.f3355k = true;
                    this.f3354j = iArr.length - 1;
                    return;
                }
                return;
            }
            int i3 = -1;
            for (int i4 = 0; i != -1 && i4 < this.f3345a; i4++) {
                int[] iArr2 = this.f3350f;
                int i5 = iArr2[i];
                int i6 = c0552i.f3431c;
                if (i5 == i6) {
                    float f3 = this.f3352h[i] + f;
                    float f4 = f3344l;
                    if (f3 > (-f4) && f3 < f4) {
                        f3 = CropImageView.DEFAULT_ASPECT_RATIO;
                    }
                    this.f3352h[i] = f3;
                    if (f3 == CropImageView.DEFAULT_ASPECT_RATIO) {
                        if (i == this.f3353i) {
                            this.f3353i = this.f3351g[i];
                        } else {
                            int[] iArr3 = this.f3351g;
                            iArr3[i3] = iArr3[i];
                        }
                        if (z) {
                            c0552i.m4395c(this.f3346b);
                        }
                        if (this.f3355k) {
                            this.f3354j = i;
                        }
                        c0552i.f3441m--;
                        this.f3345a--;
                        return;
                    }
                    return;
                }
                if (iArr2[i] < i6) {
                    i3 = i;
                }
                i = this.f3351g[i];
            }
            int length = this.f3354j;
            int i7 = length + 1;
            if (this.f3355k) {
                int[] iArr4 = this.f3350f;
                if (iArr4[length] != -1) {
                    length = iArr4.length;
                }
            } else {
                length = i7;
            }
            int[] iArr5 = this.f3350f;
            if (length >= iArr5.length && this.f3345a < iArr5.length) {
                int i8 = 0;
                while (true) {
                    int[] iArr6 = this.f3350f;
                    if (i8 >= iArr6.length) {
                        break;
                    }
                    if (iArr6[i8] == -1) {
                        length = i8;
                        break;
                    }
                    i8++;
                }
            }
            int[] iArr7 = this.f3350f;
            if (length >= iArr7.length) {
                length = iArr7.length;
                int i9 = this.f3348d * 2;
                this.f3348d = i9;
                this.f3355k = false;
                this.f3354j = length - 1;
                this.f3352h = Arrays.copyOf(this.f3352h, i9);
                this.f3350f = Arrays.copyOf(this.f3350f, this.f3348d);
                this.f3351g = Arrays.copyOf(this.f3351g, this.f3348d);
            }
            this.f3350f[length] = c0552i.f3431c;
            this.f3352h[length] = f;
            if (i3 != -1) {
                int[] iArr8 = this.f3351g;
                iArr8[length] = iArr8[i3];
                iArr8[i3] = length;
            } else {
                this.f3351g[length] = this.f3353i;
                this.f3353i = length;
            }
            c0552i.f3441m++;
            c0552i.m4394a(this.f3346b);
            this.f3345a++;
            if (!this.f3355k) {
                this.f3354j++;
            }
            int i10 = this.f3354j;
            int[] iArr9 = this.f3350f;
            if (i10 >= iArr9.length) {
                this.f3355k = true;
                this.f3354j = iArr9.length - 1;
            }
        }
    }

    @Override // p016c.p033e.p037b.C0545b.a
    /* JADX INFO: renamed from: f */
    public C0552i mo4315f(int i) {
        int i2 = this.f3353i;
        for (int i3 = 0; i2 != -1 && i3 < this.f3345a; i3++) {
            if (i3 == i) {
                return this.f3347c.f3365d[this.f3350f[i2]];
            }
            i2 = this.f3351g[i2];
        }
        return null;
    }

    @Override // p016c.p033e.p037b.C0545b.a
    /* JADX INFO: renamed from: g */
    public final float mo4316g(C0552i c0552i) {
        int i = this.f3353i;
        for (int i2 = 0; i != -1 && i2 < this.f3345a; i2++) {
            if (this.f3350f[i] == c0552i.f3431c) {
                return this.f3352h[i];
            }
            i = this.f3351g[i];
        }
        return CropImageView.DEFAULT_ASPECT_RATIO;
    }

    @Override // p016c.p033e.p037b.C0545b.a
    /* JADX INFO: renamed from: h */
    public boolean mo4317h(C0552i c0552i) {
        int i = this.f3353i;
        if (i == -1) {
            return false;
        }
        for (int i2 = 0; i != -1 && i2 < this.f3345a; i2++) {
            if (this.f3350f[i] == c0552i.f3431c) {
                return true;
            }
            i = this.f3351g[i];
        }
        return false;
    }

    @Override // p016c.p033e.p037b.C0545b.a
    /* JADX INFO: renamed from: i */
    public void mo4318i(float f) {
        int i = this.f3353i;
        for (int i2 = 0; i != -1 && i2 < this.f3345a; i2++) {
            float[] fArr = this.f3352h;
            fArr[i] = fArr[i] / f;
            i = this.f3351g[i];
        }
    }

    @Override // p016c.p033e.p037b.C0545b.a
    /* JADX INFO: renamed from: j */
    public void mo4319j() {
        int i = this.f3353i;
        for (int i2 = 0; i != -1 && i2 < this.f3345a; i2++) {
            float[] fArr = this.f3352h;
            fArr[i] = fArr[i] * (-1.0f);
            i = this.f3351g[i];
        }
    }

    @Override // p016c.p033e.p037b.C0545b.a
    /* JADX INFO: renamed from: k */
    public int mo4320k() {
        return this.f3345a;
    }

    public String toString() {
        int i = this.f3353i;
        String str = BuildConfig.FLAVOR;
        for (int i2 = 0; i != -1 && i2 < this.f3345a; i2++) {
            str = ((str + " -> ") + this.f3352h[i] + " : ") + this.f3347c.f3365d[this.f3350f[i]];
            i = this.f3351g[i];
        }
        return str;
    }
}
