package d.a.a.b;

import com.yalantis.ucrop.view.CropImageView;
import java.nio.FloatBuffer;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class a {
    private static final float[] h;
    private static final float[] i;
    private static final FloatBuffer j;
    private static final FloatBuffer k;
    private static final float[] l;
    private static final float[] m;
    private static final FloatBuffer n;
    private static final FloatBuffer o;
    private static final float[] p;
    private static final float[] q;
    private static final FloatBuffer r;
    private static final FloatBuffer s;
    private FloatBuffer a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private FloatBuffer f2252b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2253c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2254d;
    private int e;
    private int f;
    private b g;

    /* JADX INFO: renamed from: d.a.a.b.a$a, reason: collision with other inner class name */
    static /* synthetic */ class C0119a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[b.values().length];
            a = iArr;
            try {
                iArr[b.TRIANGLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[b.RECTANGLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[b.FULL_RECTANGLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum b {
        TRIANGLE,
        RECTANGLE,
        FULL_RECTANGLE
    }

    static {
        float[] fArr = {CropImageView.DEFAULT_ASPECT_RATIO, 0.57735026f, -0.5f, -0.28867513f, 0.5f, -0.28867513f};
        h = fArr;
        i = new float[]{0.5f, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f, 1.0f, 1.0f};
        j = d.c(fArr);
        k = d.c(i);
        float[] fArr2 = {-0.5f, -0.5f, 0.5f, -0.5f, -0.5f, 0.5f, 0.5f, 0.5f};
        l = fArr2;
        m = new float[]{CropImageView.DEFAULT_ASPECT_RATIO, 1.0f, 1.0f, 1.0f, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f, CropImageView.DEFAULT_ASPECT_RATIO};
        n = d.c(fArr2);
        o = d.c(m);
        float[] fArr3 = {-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f};
        p = fArr3;
        q = new float[]{CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f, 1.0f, 1.0f};
        r = d.c(fArr3);
        s = d.c(q);
    }

    public a(b bVar) {
        int i2 = C0119a.a[bVar.ordinal()];
        if (i2 == 1) {
            this.a = j;
            this.f2252b = k;
            this.f2254d = 2;
            this.e = 2 * 4;
            this.f2253c = h.length / 2;
        } else if (i2 == 2) {
            this.a = n;
            this.f2252b = o;
            this.f2254d = 2;
            this.e = 2 * 4;
            this.f2253c = l.length / 2;
        } else {
            if (i2 != 3) {
                throw new RuntimeException("Unknown shape " + bVar);
            }
            this.a = r;
            this.f2252b = s;
            this.f2254d = 2;
            this.e = 2 * 4;
            this.f2253c = p.length / 2;
        }
        this.f = 8;
        this.g = bVar;
    }

    public int a() {
        return this.f2254d;
    }

    public FloatBuffer b() {
        return this.f2252b;
    }

    public int c() {
        return this.f;
    }

    public FloatBuffer d() {
        return this.a;
    }

    public int e() {
        return this.f2253c;
    }

    public int f() {
        return this.e;
    }

    public void g(FloatBuffer floatBuffer) {
        this.f2252b = floatBuffer;
    }

    public String toString() {
        if (this.g == null) {
            return "[Drawable2d: ...]";
        }
        return "[Drawable2d: " + this.g + "]";
    }
}
