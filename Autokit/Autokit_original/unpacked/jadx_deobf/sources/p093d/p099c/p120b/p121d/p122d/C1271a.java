package p093d.p099c.p120b.p121d.p122d;

/* JADX INFO: renamed from: d.c.b.d.d.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C1271a {

    /* JADX INFO: renamed from: g */
    public static final C1271a f7921g;

    /* JADX INFO: renamed from: h */
    public static final C1271a f7922h;

    /* JADX INFO: renamed from: a */
    private final int[] f7923a;

    /* JADX INFO: renamed from: b */
    private final int[] f7924b;

    /* JADX INFO: renamed from: c */
    private final C1272b f7925c;

    /* JADX INFO: renamed from: d */
    private final int f7926d;

    /* JADX INFO: renamed from: e */
    private final int f7927e;

    /* JADX INFO: renamed from: f */
    private final int f7928f;

    static {
        new C1271a(4201, 4096, 1);
        new C1271a(1033, 1024, 1);
        f7921g = new C1271a(67, 64, 1);
        new C1271a(19, 16, 1);
        f7922h = new C1271a(285, 256, 0);
        new C1271a(301, 256, 1);
    }

    public C1271a(int i, int i2, int i3) {
        this.f7927e = i;
        this.f7926d = i2;
        this.f7928f = i3;
        this.f7923a = new int[i2];
        this.f7924b = new int[i2];
        int i4 = 1;
        for (int i5 = 0; i5 < i2; i5++) {
            this.f7923a[i5] = i4;
            i4 <<= 1;
            if (i4 >= i2) {
                i4 = (i4 ^ i) & (i2 - 1);
            }
        }
        for (int i6 = 0; i6 < i2 - 1; i6++) {
            this.f7924b[this.f7923a[i6]] = i6;
        }
        this.f7925c = new C1272b(this, new int[]{0});
        new C1272b(this, new int[]{1});
    }

    /* JADX INFO: renamed from: a */
    static int m9501a(int i, int i2) {
        return i ^ i2;
    }

    /* JADX INFO: renamed from: b */
    C1272b m9502b(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        if (i2 == 0) {
            return this.f7925c;
        }
        int[] iArr = new int[i + 1];
        iArr[0] = i2;
        return new C1272b(this, iArr);
    }

    /* JADX INFO: renamed from: c */
    int m9503c(int i) {
        return this.f7923a[i];
    }

    /* JADX INFO: renamed from: d */
    public int m9504d() {
        return this.f7928f;
    }

    /* JADX INFO: renamed from: e */
    C1272b m9505e() {
        return this.f7925c;
    }

    /* JADX INFO: renamed from: f */
    int m9506f(int i) {
        if (i != 0) {
            return this.f7923a[(this.f7926d - this.f7924b[i]) - 1];
        }
        throw new ArithmeticException();
    }

    /* JADX INFO: renamed from: g */
    int m9507g(int i) {
        if (i != 0) {
            return this.f7924b[i];
        }
        throw new IllegalArgumentException();
    }

    /* JADX INFO: renamed from: h */
    int m9508h(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return 0;
        }
        int[] iArr = this.f7923a;
        int[] iArr2 = this.f7924b;
        return iArr[(iArr2[i] + iArr2[i2]) % (this.f7926d - 1)];
    }

    public String toString() {
        return "GF(0x" + Integer.toHexString(this.f7927e) + ',' + this.f7926d + ')';
    }
}
