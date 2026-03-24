package d.c.b.d.d;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public final class a {
    public static final a g;
    public static final a h;
    private final int[] a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int[] f2366b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b f2367c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f2368d;
    private final int e;
    private final int f;

    static {
        new a(4201, 4096, 1);
        new a(1033, 1024, 1);
        g = new a(67, 64, 1);
        new a(19, 16, 1);
        h = new a(285, 256, 0);
        new a(301, 256, 1);
    }

    public a(int i, int i2, int i3) {
        this.e = i;
        this.f2368d = i2;
        this.f = i3;
        this.a = new int[i2];
        this.f2366b = new int[i2];
        int i4 = 1;
        for (int i5 = 0; i5 < i2; i5++) {
            this.a[i5] = i4;
            i4 <<= 1;
            if (i4 >= i2) {
                i4 = (i4 ^ i) & (i2 - 1);
            }
        }
        for (int i6 = 0; i6 < i2 - 1; i6++) {
            this.f2366b[this.a[i6]] = i6;
        }
        this.f2367c = new b(this, new int[]{0});
        new b(this, new int[]{1});
    }

    static int a(int i, int i2) {
        return i ^ i2;
    }

    b b(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        if (i2 == 0) {
            return this.f2367c;
        }
        int[] iArr = new int[i + 1];
        iArr[0] = i2;
        return new b(this, iArr);
    }

    int c(int i) {
        return this.a[i];
    }

    public int d() {
        return this.f;
    }

    b e() {
        return this.f2367c;
    }

    int f(int i) {
        if (i != 0) {
            return this.a[(this.f2368d - this.f2366b[i]) - 1];
        }
        throw new ArithmeticException();
    }

    int g(int i) {
        if (i != 0) {
            return this.f2366b[i];
        }
        throw new IllegalArgumentException();
    }

    int h(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return 0;
        }
        int[] iArr = this.a;
        int[] iArr2 = this.f2366b;
        return iArr[(iArr2[i] + iArr2[i2]) % (this.f2368d - 1)];
    }

    public String toString() {
        return "GF(0x" + Integer.toHexString(this.e) + ',' + this.f2368d + ')';
    }
}
