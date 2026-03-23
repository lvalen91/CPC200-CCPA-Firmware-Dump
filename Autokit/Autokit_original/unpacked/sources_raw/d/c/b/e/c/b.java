package d.c.b.e.c;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class b {
    private final byte[][] a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f2383b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f2384c;

    public b(int i, int i2) {
        this.a = (byte[][]) Array.newInstance((Class<?>) byte.class, i2, i);
        this.f2383b = i;
        this.f2384c = i2;
    }

    public void a(byte b2) {
        for (int i = 0; i < this.f2384c; i++) {
            for (int i2 = 0; i2 < this.f2383b; i2++) {
                this.a[i][i2] = b2;
            }
        }
    }

    public byte b(int i, int i2) {
        return this.a[i2][i];
    }

    public byte[][] c() {
        return this.a;
    }

    public int d() {
        return this.f2384c;
    }

    public int e() {
        return this.f2383b;
    }

    public void f(int i, int i2, int i3) {
        this.a[i2][i] = (byte) i3;
    }

    public void g(int i, int i2, boolean z) {
        this.a[i2][i] = z ? (byte) 1 : (byte) 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder((this.f2383b * 2 * this.f2384c) + 2);
        for (int i = 0; i < this.f2384c; i++) {
            for (int i2 = 0; i2 < this.f2383b; i2++) {
                byte b2 = this.a[i][i2];
                if (b2 == 0) {
                    sb.append(" 0");
                } else if (b2 != 1) {
                    sb.append("  ");
                } else {
                    sb.append(" 1");
                }
            }
            sb.append('\n');
        }
        return sb.toString();
    }
}
