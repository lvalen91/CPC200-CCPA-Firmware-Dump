package p093d.p099c.p120b.p123e.p125c;

import java.lang.reflect.Array;

/* JADX INFO: renamed from: d.c.b.e.c.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C1279b {

    /* JADX INFO: renamed from: a */
    private final byte[][] f7962a;

    /* JADX INFO: renamed from: b */
    private final int f7963b;

    /* JADX INFO: renamed from: c */
    private final int f7964c;

    public C1279b(int i, int i2) {
        this.f7962a = (byte[][]) Array.newInstance((Class<?>) byte.class, i2, i);
        this.f7963b = i;
        this.f7964c = i2;
    }

    /* JADX INFO: renamed from: a */
    public void m9538a(byte b2) {
        for (int i = 0; i < this.f7964c; i++) {
            for (int i2 = 0; i2 < this.f7963b; i2++) {
                this.f7962a[i][i2] = b2;
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public byte m9539b(int i, int i2) {
        return this.f7962a[i2][i];
    }

    /* JADX INFO: renamed from: c */
    public byte[][] m9540c() {
        return this.f7962a;
    }

    /* JADX INFO: renamed from: d */
    public int m9541d() {
        return this.f7964c;
    }

    /* JADX INFO: renamed from: e */
    public int m9542e() {
        return this.f7963b;
    }

    /* JADX INFO: renamed from: f */
    public void m9543f(int i, int i2, int i3) {
        this.f7962a[i2][i] = (byte) i3;
    }

    /* JADX INFO: renamed from: g */
    public void m9544g(int i, int i2, boolean z) {
        this.f7962a[i2][i] = z ? (byte) 1 : (byte) 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder((this.f7963b * 2 * this.f7964c) + 2);
        for (int i = 0; i < this.f7964c; i++) {
            for (int i2 = 0; i2 < this.f7963b; i2++) {
                byte b2 = this.f7962a[i][i2];
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
