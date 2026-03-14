package p093d.p099c.p120b.p121d;

import java.util.Arrays;

/* JADX INFO: renamed from: d.c.b.d.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C1269b implements Cloneable {

    /* JADX INFO: renamed from: b */
    private final int f7885b;

    /* JADX INFO: renamed from: c */
    private final int f7886c;

    /* JADX INFO: renamed from: d */
    private final int f7887d;

    /* JADX INFO: renamed from: e */
    private final int[] f7888e;

    public C1269b(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            throw new IllegalArgumentException("Both dimensions must be greater than 0");
        }
        this.f7885b = i;
        this.f7886c = i2;
        int i3 = (i + 31) / 32;
        this.f7887d = i3;
        this.f7888e = new int[i3 * i2];
    }

    /* JADX INFO: renamed from: a */
    private String m9494a(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(this.f7886c * (this.f7885b + 1));
        for (int i = 0; i < this.f7886c; i++) {
            for (int i2 = 0; i2 < this.f7885b; i2++) {
                sb.append(m9496c(i2, i) ? str : str2);
            }
            sb.append(str3);
        }
        return sb.toString();
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public C1269b clone() {
        return new C1269b(this.f7885b, this.f7886c, this.f7887d, (int[]) this.f7888e.clone());
    }

    /* JADX INFO: renamed from: c */
    public boolean m9496c(int i, int i2) {
        return ((this.f7888e[(i2 * this.f7887d) + (i / 32)] >>> (i & 31)) & 1) != 0;
    }

    /* JADX INFO: renamed from: d */
    public void m9497d(int i, int i2, int i3, int i4) {
        if (i2 < 0 || i < 0) {
            throw new IllegalArgumentException("Left and top must be nonnegative");
        }
        if (i4 <= 0 || i3 <= 0) {
            throw new IllegalArgumentException("Height and width must be at least 1");
        }
        int i5 = i3 + i;
        int i6 = i4 + i2;
        if (i6 > this.f7886c || i5 > this.f7885b) {
            throw new IllegalArgumentException("The region must fit inside the matrix");
        }
        while (i2 < i6) {
            int i7 = this.f7887d * i2;
            for (int i8 = i; i8 < i5; i8++) {
                int[] iArr = this.f7888e;
                int i9 = (i8 / 32) + i7;
                iArr[i9] = iArr[i9] | (1 << (i8 & 31));
            }
            i2++;
        }
    }

    /* JADX INFO: renamed from: e */
    public String m9498e(String str, String str2) {
        return m9494a(str, str2, "\n");
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C1269b)) {
            return false;
        }
        C1269b c1269b = (C1269b) obj;
        return this.f7885b == c1269b.f7885b && this.f7886c == c1269b.f7886c && this.f7887d == c1269b.f7887d && Arrays.equals(this.f7888e, c1269b.f7888e);
    }

    public int hashCode() {
        int i = this.f7885b;
        return (((((((i * 31) + i) * 31) + this.f7886c) * 31) + this.f7887d) * 31) + Arrays.hashCode(this.f7888e);
    }

    public String toString() {
        return m9498e("X ", "  ");
    }

    private C1269b(int i, int i2, int i3, int[] iArr) {
        this.f7885b = i;
        this.f7886c = i2;
        this.f7887d = i3;
        this.f7888e = iArr;
    }
}
