package c.e.b;

import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import java.util.Arrays;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class i {
    private static int q = 1;
    public boolean a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f1118b;
    public float f;
    a j;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1119c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f1120d = -1;
    public int e = 0;
    public boolean g = false;
    float[] h = new float[9];
    float[] i = new float[9];
    b[] k = new b[16];
    int l = 0;
    public int m = 0;
    boolean n = false;
    int o = -1;
    float p = CropImageView.DEFAULT_ASPECT_RATIO;

    public enum a {
        UNRESTRICTED,
        CONSTANT,
        SLACK,
        ERROR,
        UNKNOWN
    }

    public i(a aVar, String str) {
        this.j = aVar;
    }

    static void b() {
        q++;
    }

    public final void a(b bVar) {
        int i = 0;
        while (true) {
            int i2 = this.l;
            if (i >= i2) {
                b[] bVarArr = this.k;
                if (i2 >= bVarArr.length) {
                    this.k = (b[]) Arrays.copyOf(bVarArr, bVarArr.length * 2);
                }
                b[] bVarArr2 = this.k;
                int i3 = this.l;
                bVarArr2[i3] = bVar;
                this.l = i3 + 1;
                return;
            }
            if (this.k[i] == bVar) {
                return;
            } else {
                i++;
            }
        }
    }

    public final void c(b bVar) {
        int i = this.l;
        int i2 = 0;
        while (i2 < i) {
            if (this.k[i2] == bVar) {
                while (i2 < i - 1) {
                    b[] bVarArr = this.k;
                    int i3 = i2 + 1;
                    bVarArr[i2] = bVarArr[i3];
                    i2 = i3;
                }
                this.l--;
                return;
            }
            i2++;
        }
    }

    public void d() {
        this.f1118b = null;
        this.j = a.UNKNOWN;
        this.e = 0;
        this.f1119c = -1;
        this.f1120d = -1;
        this.f = CropImageView.DEFAULT_ASPECT_RATIO;
        this.g = false;
        this.n = false;
        this.o = -1;
        this.p = CropImageView.DEFAULT_ASPECT_RATIO;
        int i = this.l;
        for (int i2 = 0; i2 < i; i2++) {
            this.k[i2] = null;
        }
        this.l = 0;
        this.m = 0;
        this.a = false;
        Arrays.fill(this.i, CropImageView.DEFAULT_ASPECT_RATIO);
    }

    public void e(d dVar, float f) {
        this.f = f;
        this.g = true;
        this.n = false;
        this.o = -1;
        this.p = CropImageView.DEFAULT_ASPECT_RATIO;
        int i = this.l;
        this.f1120d = -1;
        for (int i2 = 0; i2 < i; i2++) {
            this.k[i2].A(dVar, this, false);
        }
        this.l = 0;
    }

    public void f(a aVar, String str) {
        this.j = aVar;
    }

    public final void g(d dVar, b bVar) {
        int i = this.l;
        for (int i2 = 0; i2 < i; i2++) {
            this.k[i2].B(dVar, bVar, false);
        }
        this.l = 0;
    }

    public String toString() {
        if (this.f1118b != null) {
            return BuildConfig.FLAVOR + this.f1118b;
        }
        return BuildConfig.FLAVOR + this.f1119c;
    }
}
