package p093d.p099c.p120b.p121d;

import java.util.Arrays;

/* JADX INFO: renamed from: d.c.b.d.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C1268a implements Cloneable {

    /* JADX INFO: renamed from: b */
    private int[] f7883b;

    /* JADX INFO: renamed from: c */
    private int f7884c;

    public C1268a() {
        this.f7884c = 0;
        this.f7883b = new int[1];
    }

    /* JADX INFO: renamed from: e */
    private void m9483e(int i) {
        if (i > (this.f7883b.length << 5)) {
            int[] iArrM9484i = m9484i(i);
            int[] iArr = this.f7883b;
            System.arraycopy(iArr, 0, iArrM9484i, 0, iArr.length);
            this.f7883b = iArrM9484i;
        }
    }

    /* JADX INFO: renamed from: i */
    private static int[] m9484i(int i) {
        return new int[(i + 31) / 32];
    }

    /* JADX INFO: renamed from: a */
    public void m9485a(boolean z) {
        m9483e(this.f7884c + 1);
        if (z) {
            int[] iArr = this.f7883b;
            int i = this.f7884c;
            int i2 = i / 32;
            iArr[i2] = (1 << (i & 31)) | iArr[i2];
        }
        this.f7884c++;
    }

    /* JADX INFO: renamed from: b */
    public void m9486b(C1268a c1268a) {
        int i = c1268a.f7884c;
        m9483e(this.f7884c + i);
        for (int i2 = 0; i2 < i; i2++) {
            m9485a(c1268a.m9489f(i2));
        }
    }

    /* JADX INFO: renamed from: c */
    public void m9487c(int i, int i2) {
        if (i2 < 0 || i2 > 32) {
            throw new IllegalArgumentException("Num bits must be between 0 and 32");
        }
        m9483e(this.f7884c + i2);
        while (i2 > 0) {
            boolean z = true;
            if (((i >> (i2 - 1)) & 1) != 1) {
                z = false;
            }
            m9485a(z);
            i2--;
        }
    }

    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public C1268a clone() {
        return new C1268a((int[]) this.f7883b.clone(), this.f7884c);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C1268a)) {
            return false;
        }
        C1268a c1268a = (C1268a) obj;
        return this.f7884c == c1268a.f7884c && Arrays.equals(this.f7883b, c1268a.f7883b);
    }

    /* JADX INFO: renamed from: f */
    public boolean m9489f(int i) {
        return ((1 << (i & 31)) & this.f7883b[i / 32]) != 0;
    }

    /* JADX INFO: renamed from: g */
    public int m9490g() {
        return this.f7884c;
    }

    /* JADX INFO: renamed from: h */
    public int m9491h() {
        return (this.f7884c + 7) / 8;
    }

    public int hashCode() {
        return (this.f7884c * 31) + Arrays.hashCode(this.f7883b);
    }

    /* JADX INFO: renamed from: j */
    public void m9492j(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = 0;
            for (int i6 = 0; i6 < 8; i6++) {
                if (m9489f(i)) {
                    i5 |= 1 << (7 - i6);
                }
                i++;
            }
            bArr[i2 + i4] = (byte) i5;
        }
    }

    /* JADX INFO: renamed from: k */
    public void m9493k(C1268a c1268a) {
        if (this.f7884c != c1268a.f7884c) {
            throw new IllegalArgumentException("Sizes don't match");
        }
        int i = 0;
        while (true) {
            int[] iArr = this.f7883b;
            if (i >= iArr.length) {
                return;
            }
            iArr[i] = iArr[i] ^ c1268a.f7883b[i];
            i++;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(this.f7884c);
        for (int i = 0; i < this.f7884c; i++) {
            if ((i & 7) == 0) {
                sb.append(' ');
            }
            sb.append(m9489f(i) ? 'X' : '.');
        }
        return sb.toString();
    }

    C1268a(int[] iArr, int i) {
        this.f7883b = iArr;
        this.f7884c = i;
    }
}
