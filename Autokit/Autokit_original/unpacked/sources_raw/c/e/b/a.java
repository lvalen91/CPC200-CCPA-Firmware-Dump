package c.e.b;

import c.e.b.b;
import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import java.util.Arrays;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class a implements b.a {
    private static float l = 0.001f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f1100b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final c f1101c;
    int a = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1102d = 8;
    private i e = null;
    private int[] f = new int[8];
    private int[] g = new int[8];
    private float[] h = new float[8];
    private int i = -1;
    private int j = -1;
    private boolean k = false;

    a(b bVar, c cVar) {
        this.f1100b = bVar;
        this.f1101c = cVar;
    }

    @Override // c.e.b.b.a
    public float a(int i) {
        int i2 = this.i;
        for (int i3 = 0; i2 != -1 && i3 < this.a; i3++) {
            if (i3 == i) {
                return this.h[i2];
            }
            i2 = this.g[i2];
        }
        return CropImageView.DEFAULT_ASPECT_RATIO;
    }

    @Override // c.e.b.b.a
    public float b(b bVar, boolean z) {
        float fG = g(bVar.a);
        d(bVar.a, z);
        b.a aVar = bVar.e;
        int iK = aVar.k();
        for (int i = 0; i < iK; i++) {
            i iVarF = aVar.f(i);
            e(iVarF, aVar.g(iVarF) * fG, z);
        }
        return fG;
    }

    @Override // c.e.b.b.a
    public final void c(i iVar, float f) {
        if (f == CropImageView.DEFAULT_ASPECT_RATIO) {
            d(iVar, true);
            return;
        }
        int i = this.i;
        if (i == -1) {
            this.i = 0;
            this.h[0] = f;
            this.f[0] = iVar.f1119c;
            this.g[0] = -1;
            iVar.m++;
            iVar.a(this.f1100b);
            this.a++;
            if (this.k) {
                return;
            }
            int i2 = this.j + 1;
            this.j = i2;
            int[] iArr = this.f;
            if (i2 >= iArr.length) {
                this.k = true;
                this.j = iArr.length - 1;
                return;
            }
            return;
        }
        int i3 = -1;
        for (int i4 = 0; i != -1 && i4 < this.a; i4++) {
            int[] iArr2 = this.f;
            int i5 = iArr2[i];
            int i6 = iVar.f1119c;
            if (i5 == i6) {
                this.h[i] = f;
                return;
            }
            if (iArr2[i] < i6) {
                i3 = i;
            }
            i = this.g[i];
        }
        int length = this.j;
        int i7 = length + 1;
        if (this.k) {
            int[] iArr3 = this.f;
            if (iArr3[length] != -1) {
                length = iArr3.length;
            }
        } else {
            length = i7;
        }
        int[] iArr4 = this.f;
        if (length >= iArr4.length && this.a < iArr4.length) {
            int i8 = 0;
            while (true) {
                int[] iArr5 = this.f;
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
        int[] iArr6 = this.f;
        if (length >= iArr6.length) {
            length = iArr6.length;
            int i9 = this.f1102d * 2;
            this.f1102d = i9;
            this.k = false;
            this.j = length - 1;
            this.h = Arrays.copyOf(this.h, i9);
            this.f = Arrays.copyOf(this.f, this.f1102d);
            this.g = Arrays.copyOf(this.g, this.f1102d);
        }
        this.f[length] = iVar.f1119c;
        this.h[length] = f;
        if (i3 != -1) {
            int[] iArr7 = this.g;
            iArr7[length] = iArr7[i3];
            iArr7[i3] = length;
        } else {
            this.g[length] = this.i;
            this.i = length;
        }
        iVar.m++;
        iVar.a(this.f1100b);
        this.a++;
        if (!this.k) {
            this.j++;
        }
        if (this.a >= this.f.length) {
            this.k = true;
        }
        int i10 = this.j;
        int[] iArr8 = this.f;
        if (i10 >= iArr8.length) {
            this.k = true;
            this.j = iArr8.length - 1;
        }
    }

    @Override // c.e.b.b.a
    public final void clear() {
        int i = this.i;
        for (int i2 = 0; i != -1 && i2 < this.a; i2++) {
            i iVar = this.f1101c.f1108d[this.f[i]];
            if (iVar != null) {
                iVar.c(this.f1100b);
            }
            i = this.g[i];
        }
        this.i = -1;
        this.j = -1;
        this.k = false;
        this.a = 0;
    }

    @Override // c.e.b.b.a
    public final float d(i iVar, boolean z) {
        if (this.e == iVar) {
            this.e = null;
        }
        int i = this.i;
        if (i == -1) {
            return CropImageView.DEFAULT_ASPECT_RATIO;
        }
        int i2 = 0;
        int i3 = -1;
        while (i != -1 && i2 < this.a) {
            if (this.f[i] == iVar.f1119c) {
                if (i == this.i) {
                    this.i = this.g[i];
                } else {
                    int[] iArr = this.g;
                    iArr[i3] = iArr[i];
                }
                if (z) {
                    iVar.c(this.f1100b);
                }
                iVar.m--;
                this.a--;
                this.f[i] = -1;
                if (this.k) {
                    this.j = i;
                }
                return this.h[i];
            }
            i2++;
            i3 = i;
            i = this.g[i];
        }
        return CropImageView.DEFAULT_ASPECT_RATIO;
    }

    @Override // c.e.b.b.a
    public void e(i iVar, float f, boolean z) {
        float f2 = l;
        if (f <= (-f2) || f >= f2) {
            int i = this.i;
            if (i == -1) {
                this.i = 0;
                this.h[0] = f;
                this.f[0] = iVar.f1119c;
                this.g[0] = -1;
                iVar.m++;
                iVar.a(this.f1100b);
                this.a++;
                if (this.k) {
                    return;
                }
                int i2 = this.j + 1;
                this.j = i2;
                int[] iArr = this.f;
                if (i2 >= iArr.length) {
                    this.k = true;
                    this.j = iArr.length - 1;
                    return;
                }
                return;
            }
            int i3 = -1;
            for (int i4 = 0; i != -1 && i4 < this.a; i4++) {
                int[] iArr2 = this.f;
                int i5 = iArr2[i];
                int i6 = iVar.f1119c;
                if (i5 == i6) {
                    float f3 = this.h[i] + f;
                    float f4 = l;
                    if (f3 > (-f4) && f3 < f4) {
                        f3 = CropImageView.DEFAULT_ASPECT_RATIO;
                    }
                    this.h[i] = f3;
                    if (f3 == CropImageView.DEFAULT_ASPECT_RATIO) {
                        if (i == this.i) {
                            this.i = this.g[i];
                        } else {
                            int[] iArr3 = this.g;
                            iArr3[i3] = iArr3[i];
                        }
                        if (z) {
                            iVar.c(this.f1100b);
                        }
                        if (this.k) {
                            this.j = i;
                        }
                        iVar.m--;
                        this.a--;
                        return;
                    }
                    return;
                }
                if (iArr2[i] < i6) {
                    i3 = i;
                }
                i = this.g[i];
            }
            int length = this.j;
            int i7 = length + 1;
            if (this.k) {
                int[] iArr4 = this.f;
                if (iArr4[length] != -1) {
                    length = iArr4.length;
                }
            } else {
                length = i7;
            }
            int[] iArr5 = this.f;
            if (length >= iArr5.length && this.a < iArr5.length) {
                int i8 = 0;
                while (true) {
                    int[] iArr6 = this.f;
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
            int[] iArr7 = this.f;
            if (length >= iArr7.length) {
                length = iArr7.length;
                int i9 = this.f1102d * 2;
                this.f1102d = i9;
                this.k = false;
                this.j = length - 1;
                this.h = Arrays.copyOf(this.h, i9);
                this.f = Arrays.copyOf(this.f, this.f1102d);
                this.g = Arrays.copyOf(this.g, this.f1102d);
            }
            this.f[length] = iVar.f1119c;
            this.h[length] = f;
            if (i3 != -1) {
                int[] iArr8 = this.g;
                iArr8[length] = iArr8[i3];
                iArr8[i3] = length;
            } else {
                this.g[length] = this.i;
                this.i = length;
            }
            iVar.m++;
            iVar.a(this.f1100b);
            this.a++;
            if (!this.k) {
                this.j++;
            }
            int i10 = this.j;
            int[] iArr9 = this.f;
            if (i10 >= iArr9.length) {
                this.k = true;
                this.j = iArr9.length - 1;
            }
        }
    }

    @Override // c.e.b.b.a
    public i f(int i) {
        int i2 = this.i;
        for (int i3 = 0; i2 != -1 && i3 < this.a; i3++) {
            if (i3 == i) {
                return this.f1101c.f1108d[this.f[i2]];
            }
            i2 = this.g[i2];
        }
        return null;
    }

    @Override // c.e.b.b.a
    public final float g(i iVar) {
        int i = this.i;
        for (int i2 = 0; i != -1 && i2 < this.a; i2++) {
            if (this.f[i] == iVar.f1119c) {
                return this.h[i];
            }
            i = this.g[i];
        }
        return CropImageView.DEFAULT_ASPECT_RATIO;
    }

    @Override // c.e.b.b.a
    public boolean h(i iVar) {
        int i = this.i;
        if (i == -1) {
            return false;
        }
        for (int i2 = 0; i != -1 && i2 < this.a; i2++) {
            if (this.f[i] == iVar.f1119c) {
                return true;
            }
            i = this.g[i];
        }
        return false;
    }

    @Override // c.e.b.b.a
    public void i(float f) {
        int i = this.i;
        for (int i2 = 0; i != -1 && i2 < this.a; i2++) {
            float[] fArr = this.h;
            fArr[i] = fArr[i] / f;
            i = this.g[i];
        }
    }

    @Override // c.e.b.b.a
    public void j() {
        int i = this.i;
        for (int i2 = 0; i != -1 && i2 < this.a; i2++) {
            float[] fArr = this.h;
            fArr[i] = fArr[i] * (-1.0f);
            i = this.g[i];
        }
    }

    @Override // c.e.b.b.a
    public int k() {
        return this.a;
    }

    public String toString() {
        int i = this.i;
        String str = BuildConfig.FLAVOR;
        for (int i2 = 0; i != -1 && i2 < this.a; i2++) {
            str = ((str + " -> ") + this.h[i] + " : ") + this.f1101c.f1108d[this.f[i]];
            i = this.g[i];
        }
        return str;
    }
}
