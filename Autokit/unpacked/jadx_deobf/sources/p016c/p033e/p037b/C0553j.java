package p016c.p033e.p037b;

import com.yalantis.ucrop.view.CropImageView;
import java.util.Arrays;
import p016c.p033e.p037b.C0545b;

/* JADX INFO: renamed from: c.e.b.j */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0553j implements C0545b.a {

    /* JADX INFO: renamed from: m */
    private static float f3451m = 0.001f;

    /* JADX INFO: renamed from: a */
    private int f3452a = 16;

    /* JADX INFO: renamed from: b */
    private int f3453b = 16;

    /* JADX INFO: renamed from: c */
    int[] f3454c = new int[16];

    /* JADX INFO: renamed from: d */
    int[] f3455d = new int[16];

    /* JADX INFO: renamed from: e */
    int[] f3456e = new int[16];

    /* JADX INFO: renamed from: f */
    float[] f3457f = new float[16];

    /* JADX INFO: renamed from: g */
    int[] f3458g = new int[16];

    /* JADX INFO: renamed from: h */
    int[] f3459h = new int[16];

    /* JADX INFO: renamed from: i */
    int f3460i = 0;

    /* JADX INFO: renamed from: j */
    int f3461j = -1;

    /* JADX INFO: renamed from: k */
    private final C0545b f3462k;

    /* JADX INFO: renamed from: l */
    protected final C0546c f3463l;

    C0553j(C0545b c0545b, C0546c c0546c) {
        this.f3462k = c0545b;
        this.f3463l = c0546c;
        clear();
    }

    /* JADX INFO: renamed from: l */
    private void m4400l(C0552i c0552i, int i) {
        int[] iArr;
        int i2 = c0552i.f3431c % this.f3453b;
        int[] iArr2 = this.f3454c;
        int i3 = iArr2[i2];
        if (i3 == -1) {
            iArr2[i2] = i;
        } else {
            while (true) {
                iArr = this.f3455d;
                if (iArr[i3] == -1) {
                    break;
                } else {
                    i3 = iArr[i3];
                }
            }
            iArr[i3] = i;
        }
        this.f3455d[i] = -1;
    }

    /* JADX INFO: renamed from: m */
    private void m4401m(int i, C0552i c0552i, float f) {
        this.f3456e[i] = c0552i.f3431c;
        this.f3457f[i] = f;
        this.f3458g[i] = -1;
        this.f3459h[i] = -1;
        c0552i.m4394a(this.f3462k);
        c0552i.f3441m++;
        this.f3460i++;
    }

    /* JADX INFO: renamed from: n */
    private int m4402n() {
        for (int i = 0; i < this.f3452a; i++) {
            if (this.f3456e[i] == -1) {
                return i;
            }
        }
        return -1;
    }

    /* JADX INFO: renamed from: o */
    private void m4403o() {
        int i = this.f3452a * 2;
        this.f3456e = Arrays.copyOf(this.f3456e, i);
        this.f3457f = Arrays.copyOf(this.f3457f, i);
        this.f3458g = Arrays.copyOf(this.f3458g, i);
        this.f3459h = Arrays.copyOf(this.f3459h, i);
        this.f3455d = Arrays.copyOf(this.f3455d, i);
        for (int i2 = this.f3452a; i2 < i; i2++) {
            this.f3456e[i2] = -1;
            this.f3455d[i2] = -1;
        }
        this.f3452a = i;
    }

    /* JADX INFO: renamed from: q */
    private void m4404q(int i, C0552i c0552i, float f) {
        int iM4402n = m4402n();
        m4401m(iM4402n, c0552i, f);
        if (i != -1) {
            this.f3458g[iM4402n] = i;
            int[] iArr = this.f3459h;
            iArr[iM4402n] = iArr[i];
            iArr[i] = iM4402n;
        } else {
            this.f3458g[iM4402n] = -1;
            if (this.f3460i > 0) {
                this.f3459h[iM4402n] = this.f3461j;
                this.f3461j = iM4402n;
            } else {
                this.f3459h[iM4402n] = -1;
            }
        }
        int[] iArr2 = this.f3459h;
        if (iArr2[iM4402n] != -1) {
            this.f3458g[iArr2[iM4402n]] = iM4402n;
        }
        m4400l(c0552i, iM4402n);
    }

    /* JADX INFO: renamed from: r */
    private void m4405r(C0552i c0552i) {
        int i = c0552i.f3431c;
        int i2 = i % this.f3453b;
        int[] iArr = this.f3454c;
        int i3 = iArr[i2];
        if (i3 == -1) {
            return;
        }
        if (this.f3456e[i3] == i) {
            int[] iArr2 = this.f3455d;
            iArr[i2] = iArr2[i3];
            iArr2[i3] = -1;
            return;
        }
        while (true) {
            int[] iArr3 = this.f3455d;
            if (iArr3[i3] == -1 || this.f3456e[iArr3[i3]] == i) {
                break;
            } else {
                i3 = iArr3[i3];
            }
        }
        int[] iArr4 = this.f3455d;
        int i4 = iArr4[i3];
        if (i4 == -1 || this.f3456e[i4] != i) {
            return;
        }
        iArr4[i3] = iArr4[i4];
        iArr4[i4] = -1;
    }

    @Override // p016c.p033e.p037b.C0545b.a
    /* JADX INFO: renamed from: a */
    public float mo4310a(int i) {
        int i2 = this.f3460i;
        int i3 = this.f3461j;
        for (int i4 = 0; i4 < i2; i4++) {
            if (i4 == i) {
                return this.f3457f[i3];
            }
            i3 = this.f3459h[i3];
            if (i3 == -1) {
                return CropImageView.DEFAULT_ASPECT_RATIO;
            }
        }
        return CropImageView.DEFAULT_ASPECT_RATIO;
    }

    @Override // p016c.p033e.p037b.C0545b.a
    /* JADX INFO: renamed from: b */
    public float mo4311b(C0545b c0545b, boolean z) {
        float fMo4316g = mo4316g(c0545b.f3356a);
        mo4313d(c0545b.f3356a, z);
        C0553j c0553j = (C0553j) c0545b.f3360e;
        int iMo4320k = c0553j.mo4320k();
        int i = c0553j.f3461j;
        int i2 = 0;
        int i3 = 0;
        while (i2 < iMo4320k) {
            int[] iArr = c0553j.f3456e;
            if (iArr[i3] != -1) {
                mo4314e(this.f3463l.f3365d[iArr[i3]], c0553j.f3457f[i3] * fMo4316g, z);
                i2++;
            }
            i3++;
        }
        return fMo4316g;
    }

    @Override // p016c.p033e.p037b.C0545b.a
    /* JADX INFO: renamed from: c */
    public void mo4312c(C0552i c0552i, float f) {
        float f2 = f3451m;
        if (f > (-f2) && f < f2) {
            mo4313d(c0552i, true);
            return;
        }
        if (this.f3460i == 0) {
            m4401m(0, c0552i, f);
            m4400l(c0552i, 0);
            this.f3461j = 0;
            return;
        }
        int iM4406p = m4406p(c0552i);
        if (iM4406p != -1) {
            this.f3457f[iM4406p] = f;
            return;
        }
        if (this.f3460i + 1 >= this.f3452a) {
            m4403o();
        }
        int i = this.f3460i;
        int i2 = this.f3461j;
        int i3 = -1;
        for (int i4 = 0; i4 < i; i4++) {
            int[] iArr = this.f3456e;
            int i5 = iArr[i2];
            int i6 = c0552i.f3431c;
            if (i5 == i6) {
                this.f3457f[i2] = f;
                return;
            }
            if (iArr[i2] < i6) {
                i3 = i2;
            }
            i2 = this.f3459h[i2];
            if (i2 == -1) {
                break;
            }
        }
        m4404q(i3, c0552i, f);
    }

    @Override // p016c.p033e.p037b.C0545b.a
    public void clear() {
        int i = this.f3460i;
        for (int i2 = 0; i2 < i; i2++) {
            C0552i c0552iMo4315f = mo4315f(i2);
            if (c0552iMo4315f != null) {
                c0552iMo4315f.m4395c(this.f3462k);
            }
        }
        for (int i3 = 0; i3 < this.f3452a; i3++) {
            this.f3456e[i3] = -1;
            this.f3455d[i3] = -1;
        }
        for (int i4 = 0; i4 < this.f3453b; i4++) {
            this.f3454c[i4] = -1;
        }
        this.f3460i = 0;
        this.f3461j = -1;
    }

    @Override // p016c.p033e.p037b.C0545b.a
    /* JADX INFO: renamed from: d */
    public float mo4313d(C0552i c0552i, boolean z) {
        int iM4406p = m4406p(c0552i);
        if (iM4406p == -1) {
            return CropImageView.DEFAULT_ASPECT_RATIO;
        }
        m4405r(c0552i);
        float f = this.f3457f[iM4406p];
        if (this.f3461j == iM4406p) {
            this.f3461j = this.f3459h[iM4406p];
        }
        this.f3456e[iM4406p] = -1;
        int[] iArr = this.f3458g;
        if (iArr[iM4406p] != -1) {
            int[] iArr2 = this.f3459h;
            iArr2[iArr[iM4406p]] = iArr2[iM4406p];
        }
        int[] iArr3 = this.f3459h;
        if (iArr3[iM4406p] != -1) {
            int[] iArr4 = this.f3458g;
            iArr4[iArr3[iM4406p]] = iArr4[iM4406p];
        }
        this.f3460i--;
        c0552i.f3441m--;
        if (z) {
            c0552i.m4395c(this.f3462k);
        }
        return f;
    }

    @Override // p016c.p033e.p037b.C0545b.a
    /* JADX INFO: renamed from: e */
    public void mo4314e(C0552i c0552i, float f, boolean z) {
        float f2 = f3451m;
        if (f <= (-f2) || f >= f2) {
            int iM4406p = m4406p(c0552i);
            if (iM4406p == -1) {
                mo4312c(c0552i, f);
                return;
            }
            float[] fArr = this.f3457f;
            fArr[iM4406p] = fArr[iM4406p] + f;
            float f3 = fArr[iM4406p];
            float f4 = f3451m;
            if (f3 <= (-f4) || fArr[iM4406p] >= f4) {
                return;
            }
            fArr[iM4406p] = 0.0f;
            mo4313d(c0552i, z);
        }
    }

    @Override // p016c.p033e.p037b.C0545b.a
    /* JADX INFO: renamed from: f */
    public C0552i mo4315f(int i) {
        int i2 = this.f3460i;
        if (i2 == 0) {
            return null;
        }
        int i3 = this.f3461j;
        for (int i4 = 0; i4 < i2; i4++) {
            if (i4 == i && i3 != -1) {
                return this.f3463l.f3365d[this.f3456e[i3]];
            }
            i3 = this.f3459h[i3];
            if (i3 == -1) {
                break;
            }
        }
        return null;
    }

    @Override // p016c.p033e.p037b.C0545b.a
    /* JADX INFO: renamed from: g */
    public float mo4316g(C0552i c0552i) {
        int iM4406p = m4406p(c0552i);
        return iM4406p != -1 ? this.f3457f[iM4406p] : CropImageView.DEFAULT_ASPECT_RATIO;
    }

    @Override // p016c.p033e.p037b.C0545b.a
    /* JADX INFO: renamed from: h */
    public boolean mo4317h(C0552i c0552i) {
        return m4406p(c0552i) != -1;
    }

    @Override // p016c.p033e.p037b.C0545b.a
    /* JADX INFO: renamed from: i */
    public void mo4318i(float f) {
        int i = this.f3460i;
        int i2 = this.f3461j;
        for (int i3 = 0; i3 < i; i3++) {
            float[] fArr = this.f3457f;
            fArr[i2] = fArr[i2] / f;
            i2 = this.f3459h[i2];
            if (i2 == -1) {
                return;
            }
        }
    }

    @Override // p016c.p033e.p037b.C0545b.a
    /* JADX INFO: renamed from: j */
    public void mo4319j() {
        int i = this.f3460i;
        int i2 = this.f3461j;
        for (int i3 = 0; i3 < i; i3++) {
            float[] fArr = this.f3457f;
            fArr[i2] = fArr[i2] * (-1.0f);
            i2 = this.f3459h[i2];
            if (i2 == -1) {
                return;
            }
        }
    }

    @Override // p016c.p033e.p037b.C0545b.a
    /* JADX INFO: renamed from: k */
    public int mo4320k() {
        return this.f3460i;
    }

    /* JADX INFO: renamed from: p */
    public int m4406p(C0552i c0552i) {
        if (this.f3460i != 0 && c0552i != null) {
            int i = c0552i.f3431c;
            int i2 = this.f3454c[i % this.f3453b];
            if (i2 == -1) {
                return -1;
            }
            if (this.f3456e[i2] == i) {
                return i2;
            }
            while (true) {
                int[] iArr = this.f3455d;
                if (iArr[i2] == -1 || this.f3456e[iArr[i2]] == i) {
                    break;
                }
                i2 = iArr[i2];
            }
            int[] iArr2 = this.f3455d;
            if (iArr2[i2] != -1 && this.f3456e[iArr2[i2]] == i) {
                return iArr2[i2];
            }
        }
        return -1;
    }

    public String toString() {
        String str = hashCode() + " { ";
        int i = this.f3460i;
        for (int i2 = 0; i2 < i; i2++) {
            C0552i c0552iMo4315f = mo4315f(i2);
            if (c0552iMo4315f != null) {
                String str2 = str + c0552iMo4315f + " = " + mo4310a(i2) + " ";
                int iM4406p = m4406p(c0552iMo4315f);
                String str3 = str2 + "[p: ";
                String str4 = (this.f3458g[iM4406p] != -1 ? str3 + this.f3463l.f3365d[this.f3456e[this.f3458g[iM4406p]]] : str3 + "none") + ", n: ";
                str = (this.f3459h[iM4406p] != -1 ? str4 + this.f3463l.f3365d[this.f3456e[this.f3459h[iM4406p]]] : str4 + "none") + "]";
            }
        }
        return str + " }";
    }
}
