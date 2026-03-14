package p093d.p094a.p095a.p096b;

import com.yalantis.ucrop.view.CropImageView;
import java.nio.FloatBuffer;

/* JADX INFO: renamed from: d.a.a.b.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1191a {

    /* JADX INFO: renamed from: h */
    private static final float[] f7517h;

    /* JADX INFO: renamed from: i */
    private static final float[] f7518i;

    /* JADX INFO: renamed from: j */
    private static final FloatBuffer f7519j;

    /* JADX INFO: renamed from: k */
    private static final FloatBuffer f7520k;

    /* JADX INFO: renamed from: l */
    private static final float[] f7521l;

    /* JADX INFO: renamed from: m */
    private static final float[] f7522m;

    /* JADX INFO: renamed from: n */
    private static final FloatBuffer f7523n;

    /* JADX INFO: renamed from: o */
    private static final FloatBuffer f7524o;

    /* JADX INFO: renamed from: p */
    private static final float[] f7525p;

    /* JADX INFO: renamed from: q */
    private static final float[] f7526q;

    /* JADX INFO: renamed from: r */
    private static final FloatBuffer f7527r;

    /* JADX INFO: renamed from: s */
    private static final FloatBuffer f7528s;

    /* JADX INFO: renamed from: a */
    private FloatBuffer f7529a;

    /* JADX INFO: renamed from: b */
    private FloatBuffer f7530b;

    /* JADX INFO: renamed from: c */
    private int f7531c;

    /* JADX INFO: renamed from: d */
    private int f7532d;

    /* JADX INFO: renamed from: e */
    private int f7533e;

    /* JADX INFO: renamed from: f */
    private int f7534f;

    /* JADX INFO: renamed from: g */
    private b f7535g;

    /* JADX INFO: renamed from: d.a.a.b.a$a */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a */
        static final /* synthetic */ int[] f7536a;

        static {
            int[] iArr = new int[b.values().length];
            f7536a = iArr;
            try {
                iArr[b.TRIANGLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7536a[b.RECTANGLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7536a[b.FULL_RECTANGLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: renamed from: d.a.a.b.a$b */
    public enum b {
        TRIANGLE,
        RECTANGLE,
        FULL_RECTANGLE
    }

    static {
        float[] fArr = {CropImageView.DEFAULT_ASPECT_RATIO, 0.57735026f, -0.5f, -0.28867513f, 0.5f, -0.28867513f};
        f7517h = fArr;
        f7518i = new float[]{0.5f, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f, 1.0f, 1.0f};
        f7519j = C1194d.m9074c(fArr);
        f7520k = C1194d.m9074c(f7518i);
        float[] fArr2 = {-0.5f, -0.5f, 0.5f, -0.5f, -0.5f, 0.5f, 0.5f, 0.5f};
        f7521l = fArr2;
        f7522m = new float[]{CropImageView.DEFAULT_ASPECT_RATIO, 1.0f, 1.0f, 1.0f, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f, CropImageView.DEFAULT_ASPECT_RATIO};
        f7523n = C1194d.m9074c(fArr2);
        f7524o = C1194d.m9074c(f7522m);
        float[] fArr3 = {-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f};
        f7525p = fArr3;
        f7526q = new float[]{CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f, 1.0f, 1.0f};
        f7527r = C1194d.m9074c(fArr3);
        f7528s = C1194d.m9074c(f7526q);
    }

    public C1191a(b bVar) {
        int i = a.f7536a[bVar.ordinal()];
        if (i == 1) {
            this.f7529a = f7519j;
            this.f7530b = f7520k;
            this.f7532d = 2;
            this.f7533e = 2 * 4;
            this.f7531c = f7517h.length / 2;
        } else if (i == 2) {
            this.f7529a = f7523n;
            this.f7530b = f7524o;
            this.f7532d = 2;
            this.f7533e = 2 * 4;
            this.f7531c = f7521l.length / 2;
        } else {
            if (i != 3) {
                throw new RuntimeException("Unknown shape " + bVar);
            }
            this.f7529a = f7527r;
            this.f7530b = f7528s;
            this.f7532d = 2;
            this.f7533e = 2 * 4;
            this.f7531c = f7525p.length / 2;
        }
        this.f7534f = 8;
        this.f7535g = bVar;
    }

    /* JADX INFO: renamed from: a */
    public int m9051a() {
        return this.f7532d;
    }

    /* JADX INFO: renamed from: b */
    public FloatBuffer mo9049b() {
        return this.f7530b;
    }

    /* JADX INFO: renamed from: c */
    public int m9052c() {
        return this.f7534f;
    }

    /* JADX INFO: renamed from: d */
    public FloatBuffer m9053d() {
        return this.f7529a;
    }

    /* JADX INFO: renamed from: e */
    public int m9054e() {
        return this.f7531c;
    }

    /* JADX INFO: renamed from: f */
    public int m9055f() {
        return this.f7533e;
    }

    /* JADX INFO: renamed from: g */
    public void m9056g(FloatBuffer floatBuffer) {
        this.f7530b = floatBuffer;
    }

    public String toString() {
        if (this.f7535g == null) {
            return "[Drawable2d: ...]";
        }
        return "[Drawable2d: " + this.f7535g + "]";
    }
}
