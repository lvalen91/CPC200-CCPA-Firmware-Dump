package c.e.b;

import c.e.b.d;
import c.e.b.i;
import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class b implements d.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f1104c;
    public a e;
    i a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    float f1103b = CropImageView.DEFAULT_ASPECT_RATIO;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ArrayList<i> f1105d = new ArrayList<>();
    boolean f = false;

    public interface a {
        float a(int i);

        float b(b bVar, boolean z);

        void c(i iVar, float f);

        void clear();

        float d(i iVar, boolean z);

        void e(i iVar, float f, boolean z);

        i f(int i);

        float g(i iVar);

        boolean h(i iVar);

        void i(float f);

        void j();

        int k();
    }

    public b() {
    }

    private boolean u(i iVar, d dVar) {
        return iVar.m <= 1;
    }

    private i w(boolean[] zArr, i iVar) {
        i.a aVar;
        int iK = this.e.k();
        i iVar2 = null;
        float f = CropImageView.DEFAULT_ASPECT_RATIO;
        for (int i = 0; i < iK; i++) {
            float fA = this.e.a(i);
            if (fA < CropImageView.DEFAULT_ASPECT_RATIO) {
                i iVarF = this.e.f(i);
                if ((zArr == null || !zArr[iVarF.f1119c]) && iVarF != iVar && (((aVar = iVarF.j) == i.a.SLACK || aVar == i.a.ERROR) && fA < f)) {
                    f = fA;
                    iVar2 = iVarF;
                }
            }
        }
        return iVar2;
    }

    public void A(d dVar, i iVar, boolean z) {
        if (iVar.g) {
            this.f1103b += iVar.f * this.e.g(iVar);
            this.e.d(iVar, z);
            if (z) {
                iVar.c(this);
            }
            if (d.t && iVar != null && this.e.k() == 0) {
                this.f = true;
                dVar.a = true;
            }
        }
    }

    public void B(d dVar, b bVar, boolean z) {
        this.f1103b += bVar.f1103b * this.e.b(bVar, z);
        if (z) {
            bVar.a.c(this);
        }
        if (d.t && this.a != null && this.e.k() == 0) {
            this.f = true;
            dVar.a = true;
        }
    }

    public void C(d dVar, i iVar, boolean z) {
        if (iVar.n) {
            float fG = this.e.g(iVar);
            this.f1103b += iVar.p * fG;
            this.e.d(iVar, z);
            if (z) {
                iVar.c(this);
            }
            this.e.e(dVar.n.f1108d[iVar.o], fG, z);
            if (d.t && iVar != null && this.e.k() == 0) {
                this.f = true;
                dVar.a = true;
            }
        }
    }

    public void D(d dVar) {
        if (dVar.g.length == 0) {
            return;
        }
        boolean z = false;
        while (!z) {
            int iK = this.e.k();
            for (int i = 0; i < iK; i++) {
                i iVarF = this.e.f(i);
                if (iVarF.f1120d != -1 || iVarF.g || iVarF.n) {
                    this.f1105d.add(iVarF);
                }
            }
            int size = this.f1105d.size();
            if (size > 0) {
                for (int i2 = 0; i2 < size; i2++) {
                    i iVar = this.f1105d.get(i2);
                    if (iVar.g) {
                        A(dVar, iVar, true);
                    } else if (iVar.n) {
                        C(dVar, iVar, true);
                    } else {
                        B(dVar, dVar.g[iVar.f1120d], true);
                    }
                }
                this.f1105d.clear();
            } else {
                z = true;
            }
        }
        if (d.t && this.a != null && this.e.k() == 0) {
            this.f = true;
            dVar.a = true;
        }
    }

    @Override // c.e.b.d.a
    public void a(d.a aVar) {
        if (aVar instanceof b) {
            b bVar = (b) aVar;
            this.a = null;
            this.e.clear();
            for (int i = 0; i < bVar.e.k(); i++) {
                this.e.e(bVar.e.f(i), bVar.e.a(i), true);
            }
        }
    }

    @Override // c.e.b.d.a
    public void b(i iVar) {
        int i = iVar.e;
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
        this.e.c(iVar, f);
    }

    @Override // c.e.b.d.a
    public i c(d dVar, boolean[] zArr) {
        return w(zArr, null);
    }

    @Override // c.e.b.d.a
    public void clear() {
        this.e.clear();
        this.a = null;
        this.f1103b = CropImageView.DEFAULT_ASPECT_RATIO;
    }

    public b d(d dVar, int i) {
        this.e.c(dVar.o(i, "ep"), 1.0f);
        this.e.c(dVar.o(i, "em"), -1.0f);
        return this;
    }

    b e(i iVar, int i) {
        this.e.c(iVar, i);
        return this;
    }

    boolean f(d dVar) {
        boolean z;
        i iVarG = g(dVar);
        if (iVarG == null) {
            z = true;
        } else {
            x(iVarG);
            z = false;
        }
        if (this.e.k() == 0) {
            this.f = true;
        }
        return z;
    }

    i g(d dVar) {
        int iK = this.e.k();
        i iVar = null;
        i iVar2 = null;
        boolean z = false;
        boolean z2 = false;
        float f = CropImageView.DEFAULT_ASPECT_RATIO;
        float f2 = CropImageView.DEFAULT_ASPECT_RATIO;
        for (int i = 0; i < iK; i++) {
            float fA = this.e.a(i);
            i iVarF = this.e.f(i);
            if (iVarF.j == i.a.UNRESTRICTED) {
                if (iVar == null || f > fA) {
                    boolean zU = u(iVarF, dVar);
                    z = zU;
                    f = fA;
                    iVar = iVarF;
                } else if (!z && u(iVarF, dVar)) {
                    f = fA;
                    iVar = iVarF;
                    z = true;
                }
            } else if (iVar == null && fA < CropImageView.DEFAULT_ASPECT_RATIO) {
                if (iVar2 == null || f2 > fA) {
                    boolean zU2 = u(iVarF, dVar);
                    z2 = zU2;
                    f2 = fA;
                    iVar2 = iVarF;
                } else if (!z2 && u(iVarF, dVar)) {
                    f2 = fA;
                    iVar2 = iVarF;
                    z2 = true;
                }
            }
        }
        return iVar != null ? iVar : iVar2;
    }

    @Override // c.e.b.d.a
    public i getKey() {
        return this.a;
    }

    b h(i iVar, i iVar2, int i, float f, i iVar3, i iVar4, int i2) {
        if (iVar2 == iVar3) {
            this.e.c(iVar, 1.0f);
            this.e.c(iVar4, 1.0f);
            this.e.c(iVar2, -2.0f);
            return this;
        }
        if (f == 0.5f) {
            this.e.c(iVar, 1.0f);
            this.e.c(iVar2, -1.0f);
            this.e.c(iVar3, -1.0f);
            this.e.c(iVar4, 1.0f);
            if (i > 0 || i2 > 0) {
                this.f1103b = (-i) + i2;
            }
        } else if (f <= CropImageView.DEFAULT_ASPECT_RATIO) {
            this.e.c(iVar, -1.0f);
            this.e.c(iVar2, 1.0f);
            this.f1103b = i;
        } else if (f >= 1.0f) {
            this.e.c(iVar4, -1.0f);
            this.e.c(iVar3, 1.0f);
            this.f1103b = -i2;
        } else {
            float f2 = 1.0f - f;
            this.e.c(iVar, f2 * 1.0f);
            this.e.c(iVar2, f2 * (-1.0f));
            this.e.c(iVar3, (-1.0f) * f);
            this.e.c(iVar4, 1.0f * f);
            if (i > 0 || i2 > 0) {
                this.f1103b = ((-i) * f2) + (i2 * f);
            }
        }
        return this;
    }

    b i(i iVar, int i) {
        this.a = iVar;
        float f = i;
        iVar.f = f;
        this.f1103b = f;
        this.f = true;
        return this;
    }

    @Override // c.e.b.d.a
    public boolean isEmpty() {
        return this.a == null && this.f1103b == CropImageView.DEFAULT_ASPECT_RATIO && this.e.k() == 0;
    }

    b j(i iVar, i iVar2, float f) {
        this.e.c(iVar, -1.0f);
        this.e.c(iVar2, f);
        return this;
    }

    public b k(i iVar, i iVar2, i iVar3, i iVar4, float f) {
        this.e.c(iVar, -1.0f);
        this.e.c(iVar2, 1.0f);
        this.e.c(iVar3, f);
        this.e.c(iVar4, -f);
        return this;
    }

    public b l(float f, float f2, float f3, i iVar, i iVar2, i iVar3, i iVar4) {
        this.f1103b = CropImageView.DEFAULT_ASPECT_RATIO;
        if (f2 == CropImageView.DEFAULT_ASPECT_RATIO || f == f3) {
            this.e.c(iVar, 1.0f);
            this.e.c(iVar2, -1.0f);
            this.e.c(iVar4, 1.0f);
            this.e.c(iVar3, -1.0f);
        } else if (f == CropImageView.DEFAULT_ASPECT_RATIO) {
            this.e.c(iVar, 1.0f);
            this.e.c(iVar2, -1.0f);
        } else if (f3 == CropImageView.DEFAULT_ASPECT_RATIO) {
            this.e.c(iVar3, 1.0f);
            this.e.c(iVar4, -1.0f);
        } else {
            float f4 = (f / f2) / (f3 / f2);
            this.e.c(iVar, 1.0f);
            this.e.c(iVar2, -1.0f);
            this.e.c(iVar4, f4);
            this.e.c(iVar3, -f4);
        }
        return this;
    }

    public b m(i iVar, int i) {
        if (i < 0) {
            this.f1103b = i * (-1);
            this.e.c(iVar, 1.0f);
        } else {
            this.f1103b = i;
            this.e.c(iVar, -1.0f);
        }
        return this;
    }

    public b n(i iVar, i iVar2, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.f1103b = i;
        }
        if (z) {
            this.e.c(iVar, 1.0f);
            this.e.c(iVar2, -1.0f);
        } else {
            this.e.c(iVar, -1.0f);
            this.e.c(iVar2, 1.0f);
        }
        return this;
    }

    public b o(i iVar, i iVar2, i iVar3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.f1103b = i;
        }
        if (z) {
            this.e.c(iVar, 1.0f);
            this.e.c(iVar2, -1.0f);
            this.e.c(iVar3, -1.0f);
        } else {
            this.e.c(iVar, -1.0f);
            this.e.c(iVar2, 1.0f);
            this.e.c(iVar3, 1.0f);
        }
        return this;
    }

    public b p(i iVar, i iVar2, i iVar3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.f1103b = i;
        }
        if (z) {
            this.e.c(iVar, 1.0f);
            this.e.c(iVar2, -1.0f);
            this.e.c(iVar3, 1.0f);
        } else {
            this.e.c(iVar, -1.0f);
            this.e.c(iVar2, 1.0f);
            this.e.c(iVar3, -1.0f);
        }
        return this;
    }

    public b q(i iVar, i iVar2, i iVar3, i iVar4, float f) {
        this.e.c(iVar3, 0.5f);
        this.e.c(iVar4, 0.5f);
        this.e.c(iVar, -0.5f);
        this.e.c(iVar2, -0.5f);
        this.f1103b = -f;
        return this;
    }

    void r() {
        float f = this.f1103b;
        if (f < CropImageView.DEFAULT_ASPECT_RATIO) {
            this.f1103b = f * (-1.0f);
            this.e.j();
        }
    }

    boolean s() {
        i iVar = this.a;
        return iVar != null && (iVar.j == i.a.UNRESTRICTED || this.f1103b >= CropImageView.DEFAULT_ASPECT_RATIO);
    }

    boolean t(i iVar) {
        return this.e.h(iVar);
    }

    public String toString() {
        return z();
    }

    public i v(i iVar) {
        return w(null, iVar);
    }

    void x(i iVar) {
        i iVar2 = this.a;
        if (iVar2 != null) {
            this.e.c(iVar2, -1.0f);
            this.a.f1120d = -1;
            this.a = null;
        }
        float fD = this.e.d(iVar, true) * (-1.0f);
        this.a = iVar;
        if (fD == 1.0f) {
            return;
        }
        this.f1103b /= fD;
        this.e.i(fD);
    }

    public void y() {
        this.a = null;
        this.e.clear();
        this.f1103b = CropImageView.DEFAULT_ASPECT_RATIO;
        this.f = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    String z() {
        boolean z;
        String str = (this.a == null ? BuildConfig.FLAVOR + "0" : BuildConfig.FLAVOR + this.a) + " = ";
        if (this.f1103b != CropImageView.DEFAULT_ASPECT_RATIO) {
            str = str + this.f1103b;
            z = true;
        } else {
            z = false;
        }
        int iK = this.e.k();
        for (int i = 0; i < iK; i++) {
            i iVarF = this.e.f(i);
            if (iVarF != null) {
                float fA = this.e.a(i);
                if (fA != CropImageView.DEFAULT_ASPECT_RATIO) {
                    String string = iVarF.toString();
                    if (!z) {
                        if (fA < CropImageView.DEFAULT_ASPECT_RATIO) {
                            str = str + "- ";
                            fA *= -1.0f;
                        }
                        str = fA == 1.0f ? str + string : str + fA + " " + string;
                        z = true;
                    } else if (fA > CropImageView.DEFAULT_ASPECT_RATIO) {
                        str = str + " + ";
                        if (fA == 1.0f) {
                        }
                        z = true;
                    } else {
                        str = str + " - ";
                        fA *= -1.0f;
                        if (fA == 1.0f) {
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

    public b(c cVar) {
        this.e = new c.e.b.a(this, cVar);
    }
}
