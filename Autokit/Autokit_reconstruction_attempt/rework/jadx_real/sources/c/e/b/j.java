package c.e.b;

import c.e.b.b;
import com.yalantis.ucrop.view.CropImageView;
import java.util.Arrays;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class j implements b.a {
    private static float m = 0.001f;
    private int a = 16;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1124b = 16;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int[] f1125c = new int[16];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int[] f1126d = new int[16];
    int[] e = new int[16];
    float[] f = new float[16];
    int[] g = new int[16];
    int[] h = new int[16];
    int i = 0;
    int j = -1;
    private final b k;
    protected final c l;

    j(b bVar, c cVar) {
        this.k = bVar;
        this.l = cVar;
        clear();
    }

    private void l(i iVar, int i) {
        int[] iArr;
        int i2 = iVar.f1119c % this.f1124b;
        int[] iArr2 = this.f1125c;
        int i3 = iArr2[i2];
        if (i3 == -1) {
            iArr2[i2] = i;
        } else {
            while (true) {
                iArr = this.f1126d;
                if (iArr[i3] == -1) {
                    break;
                } else {
                    i3 = iArr[i3];
                }
            }
            iArr[i3] = i;
        }
        this.f1126d[i] = -1;
    }

    private void m(int i, i iVar, float f) {
        this.e[i] = iVar.f1119c;
        this.f[i] = f;
        this.g[i] = -1;
        this.h[i] = -1;
        iVar.a(this.k);
        iVar.m++;
        this.i++;
    }

    private int n() {
        for (int i = 0; i < this.a; i++) {
            if (this.e[i] == -1) {
                return i;
            }
        }
        return -1;
    }

    private void o() {
        int i = this.a * 2;
        this.e = Arrays.copyOf(this.e, i);
        this.f = Arrays.copyOf(this.f, i);
        this.g = Arrays.copyOf(this.g, i);
        this.h = Arrays.copyOf(this.h, i);
        this.f1126d = Arrays.copyOf(this.f1126d, i);
        for (int i2 = this.a; i2 < i; i2++) {
            this.e[i2] = -1;
            this.f1126d[i2] = -1;
        }
        this.a = i;
    }

    private void q(int i, i iVar, float f) {
        int iN = n();
        m(iN, iVar, f);
        if (i != -1) {
            this.g[iN] = i;
            int[] iArr = this.h;
            iArr[iN] = iArr[i];
            iArr[i] = iN;
        } else {
            this.g[iN] = -1;
            if (this.i > 0) {
                this.h[iN] = this.j;
                this.j = iN;
            } else {
                this.h[iN] = -1;
            }
        }
        int[] iArr2 = this.h;
        if (iArr2[iN] != -1) {
            this.g[iArr2[iN]] = iN;
        }
        l(iVar, iN);
    }

    private void r(i iVar) {
        int i = iVar.f1119c;
        int i2 = i % this.f1124b;
        int[] iArr = this.f1125c;
        int i3 = iArr[i2];
        if (i3 == -1) {
            return;
        }
        if (this.e[i3] == i) {
            int[] iArr2 = this.f1126d;
            iArr[i2] = iArr2[i3];
            iArr2[i3] = -1;
            return;
        }
        while (true) {
            int[] iArr3 = this.f1126d;
            if (iArr3[i3] == -1 || this.e[iArr3[i3]] == i) {
                break;
            } else {
                i3 = iArr3[i3];
            }
        }
        int[] iArr4 = this.f1126d;
        int i4 = iArr4[i3];
        if (i4 == -1 || this.e[i4] != i) {
            return;
        }
        iArr4[i3] = iArr4[i4];
        iArr4[i4] = -1;
    }

    @Override // c.e.b.b.a
    public float a(int i) {
        int i2 = this.i;
        int i3 = this.j;
        for (int i4 = 0; i4 < i2; i4++) {
            if (i4 == i) {
                return this.f[i3];
            }
            i3 = this.h[i3];
            if (i3 == -1) {
                return CropImageView.DEFAULT_ASPECT_RATIO;
            }
        }
        return CropImageView.DEFAULT_ASPECT_RATIO;
    }

    @Override // c.e.b.b.a
    public float b(b bVar, boolean z) {
        float fG = g(bVar.a);
        d(bVar.a, z);
        j jVar = (j) bVar.e;
        int iK = jVar.k();
        int i = jVar.j;
        int i2 = 0;
        int i3 = 0;
        while (i2 < iK) {
            int[] iArr = jVar.e;
            if (iArr[i3] != -1) {
                e(this.l.f1108d[iArr[i3]], jVar.f[i3] * fG, z);
                i2++;
            }
            i3++;
        }
        return fG;
    }

    @Override // c.e.b.b.a
    public void c(i iVar, float f) {
        float f2 = m;
        if (f > (-f2) && f < f2) {
            d(iVar, true);
            return;
        }
        if (this.i == 0) {
            m(0, iVar, f);
            l(iVar, 0);
            this.j = 0;
            return;
        }
        int iP = p(iVar);
        if (iP != -1) {
            this.f[iP] = f;
            return;
        }
        if (this.i + 1 >= this.a) {
            o();
        }
        int i = this.i;
        int i2 = this.j;
        int i3 = -1;
        for (int i4 = 0; i4 < i; i4++) {
            int[] iArr = this.e;
            int i5 = iArr[i2];
            int i6 = iVar.f1119c;
            if (i5 == i6) {
                this.f[i2] = f;
                return;
            }
            if (iArr[i2] < i6) {
                i3 = i2;
            }
            i2 = this.h[i2];
            if (i2 == -1) {
                break;
            }
        }
        q(i3, iVar, f);
    }

    @Override // c.e.b.b.a
    public void clear() {
        int i = this.i;
        for (int i2 = 0; i2 < i; i2++) {
            i iVarF = f(i2);
            if (iVarF != null) {
                iVarF.c(this.k);
            }
        }
        for (int i3 = 0; i3 < this.a; i3++) {
            this.e[i3] = -1;
            this.f1126d[i3] = -1;
        }
        for (int i4 = 0; i4 < this.f1124b; i4++) {
            this.f1125c[i4] = -1;
        }
        this.i = 0;
        this.j = -1;
    }

    @Override // c.e.b.b.a
    public float d(i iVar, boolean z) {
        int iP = p(iVar);
        if (iP == -1) {
            return CropImageView.DEFAULT_ASPECT_RATIO;
        }
        r(iVar);
        float f = this.f[iP];
        if (this.j == iP) {
            this.j = this.h[iP];
        }
        this.e[iP] = -1;
        int[] iArr = this.g;
        if (iArr[iP] != -1) {
            int[] iArr2 = this.h;
            iArr2[iArr[iP]] = iArr2[iP];
        }
        int[] iArr3 = this.h;
        if (iArr3[iP] != -1) {
            int[] iArr4 = this.g;
            iArr4[iArr3[iP]] = iArr4[iP];
        }
        this.i--;
        iVar.m--;
        if (z) {
            iVar.c(this.k);
        }
        return f;
    }

    @Override // c.e.b.b.a
    public void e(i iVar, float f, boolean z) {
        float f2 = m;
        if (f <= (-f2) || f >= f2) {
            int iP = p(iVar);
            if (iP == -1) {
                c(iVar, f);
                return;
            }
            float[] fArr = this.f;
            fArr[iP] = fArr[iP] + f;
            float f3 = fArr[iP];
            float f4 = m;
            if (f3 <= (-f4) || fArr[iP] >= f4) {
                return;
            }
            fArr[iP] = 0.0f;
            d(iVar, z);
        }
    }

    @Override // c.e.b.b.a
    public i f(int i) {
        int i2 = this.i;
        if (i2 == 0) {
            return null;
        }
        int i3 = this.j;
        for (int i4 = 0; i4 < i2; i4++) {
            if (i4 == i && i3 != -1) {
                return this.l.f1108d[this.e[i3]];
            }
            i3 = this.h[i3];
            if (i3 == -1) {
                break;
            }
        }
        return null;
    }

    @Override // c.e.b.b.a
    public float g(i iVar) {
        int iP = p(iVar);
        return iP != -1 ? this.f[iP] : CropImageView.DEFAULT_ASPECT_RATIO;
    }

    @Override // c.e.b.b.a
    public boolean h(i iVar) {
        return p(iVar) != -1;
    }

    @Override // c.e.b.b.a
    public void i(float f) {
        int i = this.i;
        int i2 = this.j;
        for (int i3 = 0; i3 < i; i3++) {
            float[] fArr = this.f;
            fArr[i2] = fArr[i2] / f;
            i2 = this.h[i2];
            if (i2 == -1) {
                return;
            }
        }
    }

    @Override // c.e.b.b.a
    public void j() {
        int i = this.i;
        int i2 = this.j;
        for (int i3 = 0; i3 < i; i3++) {
            float[] fArr = this.f;
            fArr[i2] = fArr[i2] * (-1.0f);
            i2 = this.h[i2];
            if (i2 == -1) {
                return;
            }
        }
    }

    @Override // c.e.b.b.a
    public int k() {
        return this.i;
    }

    public int p(i iVar) {
        if (this.i != 0 && iVar != null) {
            int i = iVar.f1119c;
            int i2 = this.f1125c[i % this.f1124b];
            if (i2 == -1) {
                return -1;
            }
            if (this.e[i2] == i) {
                return i2;
            }
            while (true) {
                int[] iArr = this.f1126d;
                if (iArr[i2] == -1 || this.e[iArr[i2]] == i) {
                    break;
                }
                i2 = iArr[i2];
            }
            int[] iArr2 = this.f1126d;
            if (iArr2[i2] != -1 && this.e[iArr2[i2]] == i) {
                return iArr2[i2];
            }
        }
        return -1;
    }

    public String toString() {
        String str = hashCode() + " { ";
        int i = this.i;
        for (int i2 = 0; i2 < i; i2++) {
            i iVarF = f(i2);
            if (iVarF != null) {
                String str2 = str + iVarF + " = " + a(i2) + " ";
                int iP = p(iVarF);
                String str3 = str2 + "[p: ";
                String str4 = (this.g[iP] != -1 ? str3 + this.l.f1108d[this.e[this.g[iP]]] : str3 + "none") + ", n: ";
                str = (this.h[iP] != -1 ? str4 + this.l.f1108d[this.e[this.h[iP]]] : str4 + "none") + "]";
            }
        }
        return str + " }";
    }
}
