package p093d.p099c.p120b.p121d.p122d;

/* JADX INFO: renamed from: d.c.b.d.d.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
final class C1272b {

    /* JADX INFO: renamed from: a */
    private final C1271a f7929a;

    /* JADX INFO: renamed from: b */
    private final int[] f7930b;

    C1272b(C1271a c1271a, int[] iArr) {
        if (iArr.length == 0) {
            throw new IllegalArgumentException();
        }
        this.f7929a = c1271a;
        int length = iArr.length;
        if (length <= 1 || iArr[0] != 0) {
            this.f7930b = iArr;
            return;
        }
        int i = 1;
        while (i < length && iArr[i] == 0) {
            i++;
        }
        if (i == length) {
            this.f7930b = new int[]{0};
            return;
        }
        int[] iArr2 = new int[length - i];
        this.f7930b = iArr2;
        System.arraycopy(iArr, i, iArr2, 0, iArr2.length);
    }

    /* JADX INFO: renamed from: a */
    C1272b m9509a(C1272b c1272b) {
        if (!this.f7929a.equals(c1272b.f7929a)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (m9514f()) {
            return c1272b;
        }
        if (c1272b.m9514f()) {
            return this;
        }
        int[] iArr = this.f7930b;
        int[] iArr2 = c1272b.f7930b;
        if (iArr.length <= iArr2.length) {
            iArr = iArr2;
            iArr2 = iArr;
        }
        int[] iArr3 = new int[iArr.length];
        int length = iArr.length - iArr2.length;
        System.arraycopy(iArr, 0, iArr3, 0, length);
        for (int i = length; i < iArr.length; i++) {
            iArr3[i] = C1271a.m9501a(iArr2[i - length], iArr[i]);
        }
        return new C1272b(this.f7929a, iArr3);
    }

    /* JADX INFO: renamed from: b */
    C1272b[] m9510b(C1272b c1272b) {
        if (!this.f7929a.equals(c1272b.f7929a)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (c1272b.m9514f()) {
            throw new IllegalArgumentException("Divide by 0");
        }
        C1272b c1272bM9505e = this.f7929a.m9505e();
        int iM9506f = this.f7929a.m9506f(c1272b.m9511c(c1272b.m9513e()));
        C1272b c1272bM9509a = this;
        while (c1272bM9509a.m9513e() >= c1272b.m9513e() && !c1272bM9509a.m9514f()) {
            int iM9513e = c1272bM9509a.m9513e() - c1272b.m9513e();
            int iM9508h = this.f7929a.m9508h(c1272bM9509a.m9511c(c1272bM9509a.m9513e()), iM9506f);
            C1272b c1272bM9516h = c1272b.m9516h(iM9513e, iM9508h);
            c1272bM9505e = c1272bM9505e.m9509a(this.f7929a.m9502b(iM9513e, iM9508h));
            c1272bM9509a = c1272bM9509a.m9509a(c1272bM9516h);
        }
        return new C1272b[]{c1272bM9505e, c1272bM9509a};
    }

    /* JADX INFO: renamed from: c */
    int m9511c(int i) {
        return this.f7930b[(r0.length - 1) - i];
    }

    /* JADX INFO: renamed from: d */
    int[] m9512d() {
        return this.f7930b;
    }

    /* JADX INFO: renamed from: e */
    int m9513e() {
        return this.f7930b.length - 1;
    }

    /* JADX INFO: renamed from: f */
    boolean m9514f() {
        return this.f7930b[0] == 0;
    }

    /* JADX INFO: renamed from: g */
    C1272b m9515g(C1272b c1272b) {
        if (!this.f7929a.equals(c1272b.f7929a)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (m9514f() || c1272b.m9514f()) {
            return this.f7929a.m9505e();
        }
        int[] iArr = this.f7930b;
        int length = iArr.length;
        int[] iArr2 = c1272b.f7930b;
        int length2 = iArr2.length;
        int[] iArr3 = new int[(length + length2) - 1];
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            for (int i3 = 0; i3 < length2; i3++) {
                int i4 = i + i3;
                iArr3[i4] = C1271a.m9501a(iArr3[i4], this.f7929a.m9508h(i2, iArr2[i3]));
            }
        }
        return new C1272b(this.f7929a, iArr3);
    }

    /* JADX INFO: renamed from: h */
    C1272b m9516h(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        if (i2 == 0) {
            return this.f7929a.m9505e();
        }
        int length = this.f7930b.length;
        int[] iArr = new int[i + length];
        for (int i3 = 0; i3 < length; i3++) {
            iArr[i3] = this.f7929a.m9508h(this.f7930b[i3], i2);
        }
        return new C1272b(this.f7929a, iArr);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(m9513e() * 8);
        for (int iM9513e = m9513e(); iM9513e >= 0; iM9513e--) {
            int iM9511c = m9511c(iM9513e);
            if (iM9511c != 0) {
                if (iM9511c < 0) {
                    sb.append(" - ");
                    iM9511c = -iM9511c;
                } else if (sb.length() > 0) {
                    sb.append(" + ");
                }
                if (iM9513e == 0 || iM9511c != 1) {
                    int iM9507g = this.f7929a.m9507g(iM9511c);
                    if (iM9507g == 0) {
                        sb.append('1');
                    } else if (iM9507g == 1) {
                        sb.append('a');
                    } else {
                        sb.append("a^");
                        sb.append(iM9507g);
                    }
                }
                if (iM9513e != 0) {
                    if (iM9513e == 1) {
                        sb.append('x');
                    } else {
                        sb.append("x^");
                        sb.append(iM9513e);
                    }
                }
            }
        }
        return sb.toString();
    }
}
