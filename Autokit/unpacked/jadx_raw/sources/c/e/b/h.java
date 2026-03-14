package c.e.b;

import c.e.b.b;
import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class h extends c.e.b.b {
    private int g;
    private i[] h;
    private i[] i;
    private int j;
    b k;

    class a implements Comparator<i> {
        a(h hVar) {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(i iVar, i iVar2) {
            return iVar.f1119c - iVar2.f1119c;
        }
    }

    class b implements Comparable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        i f1116b;

        public b(h hVar) {
        }

        public boolean a(i iVar, float f) {
            boolean z = true;
            if (!this.f1116b.a) {
                for (int i = 0; i < 9; i++) {
                    float f2 = iVar.i[i];
                    if (f2 != CropImageView.DEFAULT_ASPECT_RATIO) {
                        float f3 = f2 * f;
                        if (Math.abs(f3) < 1.0E-4f) {
                            f3 = CropImageView.DEFAULT_ASPECT_RATIO;
                        }
                        this.f1116b.i[i] = f3;
                    } else {
                        this.f1116b.i[i] = 0.0f;
                    }
                }
                return true;
            }
            for (int i2 = 0; i2 < 9; i2++) {
                float[] fArr = this.f1116b.i;
                fArr[i2] = fArr[i2] + (iVar.i[i2] * f);
                if (Math.abs(fArr[i2]) < 1.0E-4f) {
                    this.f1116b.i[i2] = 0.0f;
                } else {
                    z = false;
                }
            }
            if (z) {
                h.this.G(this.f1116b);
            }
            return false;
        }

        public void b(i iVar) {
            this.f1116b = iVar;
        }

        public final boolean c() {
            for (int i = 8; i >= 0; i--) {
                float f = this.f1116b.i[i];
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
            return this.f1116b.f1119c - ((i) obj).f1119c;
        }

        public final boolean d(i iVar) {
            int i = 8;
            while (true) {
                if (i < 0) {
                    break;
                }
                float f = iVar.i[i];
                float f2 = this.f1116b.i[i];
                if (f2 == f) {
                    i--;
                } else if (f2 < f) {
                    return true;
                }
            }
            return false;
        }

        public void e() {
            Arrays.fill(this.f1116b.i, CropImageView.DEFAULT_ASPECT_RATIO);
        }

        public String toString() {
            String str = "[ ";
            if (this.f1116b != null) {
                for (int i = 0; i < 9; i++) {
                    str = str + this.f1116b.i[i] + " ";
                }
            }
            return str + "] " + this.f1116b;
        }
    }

    public h(c cVar) {
        super(cVar);
        this.g = 128;
        this.h = new i[128];
        this.i = new i[128];
        this.j = 0;
        this.k = new b(this);
    }

    private final void F(i iVar) {
        int i;
        int i2 = this.j + 1;
        i[] iVarArr = this.h;
        if (i2 > iVarArr.length) {
            i[] iVarArr2 = (i[]) Arrays.copyOf(iVarArr, iVarArr.length * 2);
            this.h = iVarArr2;
            this.i = (i[]) Arrays.copyOf(iVarArr2, iVarArr2.length * 2);
        }
        i[] iVarArr3 = this.h;
        int i3 = this.j;
        iVarArr3[i3] = iVar;
        int i4 = i3 + 1;
        this.j = i4;
        if (i4 > 1 && iVarArr3[i4 - 1].f1119c > iVar.f1119c) {
            int i5 = 0;
            while (true) {
                i = this.j;
                if (i5 >= i) {
                    break;
                }
                this.i[i5] = this.h[i5];
                i5++;
            }
            Arrays.sort(this.i, 0, i, new a(this));
            for (int i6 = 0; i6 < this.j; i6++) {
                this.h[i6] = this.i[i6];
            }
        }
        iVar.a = true;
        iVar.a(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G(i iVar) {
        int i = 0;
        while (i < this.j) {
            if (this.h[i] == iVar) {
                while (true) {
                    int i2 = this.j;
                    if (i >= i2 - 1) {
                        this.j = i2 - 1;
                        iVar.a = false;
                        return;
                    } else {
                        i[] iVarArr = this.h;
                        int i3 = i + 1;
                        iVarArr[i] = iVarArr[i3];
                        i = i3;
                    }
                }
            } else {
                i++;
            }
        }
    }

    @Override // c.e.b.b
    public void B(d dVar, c.e.b.b bVar, boolean z) {
        i iVar = bVar.a;
        if (iVar == null) {
            return;
        }
        b.a aVar = bVar.e;
        int iK = aVar.k();
        for (int i = 0; i < iK; i++) {
            i iVarF = aVar.f(i);
            float fA = aVar.a(i);
            this.k.b(iVarF);
            if (this.k.a(iVar, fA)) {
                F(iVarF);
            }
            this.f1103b += bVar.f1103b * fA;
        }
        G(iVar);
    }

    @Override // c.e.b.b, c.e.b.d.a
    public void b(i iVar) {
        this.k.b(iVar);
        this.k.e();
        iVar.i[iVar.e] = 1.0f;
        F(iVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    @Override // c.e.b.b, c.e.b.d.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public i c(d dVar, boolean[] zArr) {
        int i = -1;
        for (int i2 = 0; i2 < this.j; i2++) {
            i iVar = this.h[i2];
            if (!zArr[iVar.f1119c]) {
                this.k.b(iVar);
                if (i == -1) {
                    if (this.k.c()) {
                        i = i2;
                    }
                } else if (this.k.d(this.h[i])) {
                }
            }
        }
        if (i == -1) {
            return null;
        }
        return this.h[i];
    }

    @Override // c.e.b.b, c.e.b.d.a
    public void clear() {
        this.j = 0;
        this.f1103b = CropImageView.DEFAULT_ASPECT_RATIO;
    }

    @Override // c.e.b.b, c.e.b.d.a
    public boolean isEmpty() {
        return this.j == 0;
    }

    @Override // c.e.b.b
    public String toString() {
        String str = BuildConfig.FLAVOR + " goal -> (" + this.f1103b + ") : ";
        for (int i = 0; i < this.j; i++) {
            this.k.b(this.h[i]);
            str = str + this.k + " ";
        }
        return str;
    }
}
