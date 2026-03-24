package d.c.b.d;

import java.util.Arrays;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public final class a implements Cloneable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int[] f2358b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2359c;

    public a() {
        this.f2359c = 0;
        this.f2358b = new int[1];
    }

    private void e(int i) {
        if (i > (this.f2358b.length << 5)) {
            int[] iArrI = i(i);
            int[] iArr = this.f2358b;
            System.arraycopy(iArr, 0, iArrI, 0, iArr.length);
            this.f2358b = iArrI;
        }
    }

    private static int[] i(int i) {
        return new int[(i + 31) / 32];
    }

    public void a(boolean z) {
        e(this.f2359c + 1);
        if (z) {
            int[] iArr = this.f2358b;
            int i = this.f2359c;
            int i2 = i / 32;
            iArr[i2] = (1 << (i & 31)) | iArr[i2];
        }
        this.f2359c++;
    }

    public void b(a aVar) {
        int i = aVar.f2359c;
        e(this.f2359c + i);
        for (int i2 = 0; i2 < i; i2++) {
            a(aVar.f(i2));
        }
    }

    public void c(int i, int i2) {
        if (i2 < 0 || i2 > 32) {
            throw new IllegalArgumentException("Num bits must be between 0 and 32");
        }
        e(this.f2359c + i2);
        while (i2 > 0) {
            boolean z = true;
            if (((i >> (i2 - 1)) & 1) != 1) {
                z = false;
            }
            a(z);
            i2--;
        }
    }

    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public a clone() {
        return new a((int[]) this.f2358b.clone(), this.f2359c);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f2359c == aVar.f2359c && Arrays.equals(this.f2358b, aVar.f2358b);
    }

    public boolean f(int i) {
        return ((1 << (i & 31)) & this.f2358b[i / 32]) != 0;
    }

    public int g() {
        return this.f2359c;
    }

    public int h() {
        return (this.f2359c + 7) / 8;
    }

    public int hashCode() {
        return (this.f2359c * 31) + Arrays.hashCode(this.f2358b);
    }

    public void j(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = 0;
            for (int i6 = 0; i6 < 8; i6++) {
                if (f(i)) {
                    i5 |= 1 << (7 - i6);
                }
                i++;
            }
            bArr[i2 + i4] = (byte) i5;
        }
    }

    public void k(a aVar) {
        if (this.f2359c != aVar.f2359c) {
            throw new IllegalArgumentException("Sizes don't match");
        }
        int i = 0;
        while (true) {
            int[] iArr = this.f2358b;
            if (i >= iArr.length) {
                return;
            }
            iArr[i] = iArr[i] ^ aVar.f2358b[i];
            i++;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(this.f2359c);
        for (int i = 0; i < this.f2359c; i++) {
            if ((i & 7) == 0) {
                sb.append(' ');
            }
            sb.append(f(i) ? 'X' : '.');
        }
        return sb.toString();
    }

    a(int[] iArr, int i) {
        this.f2358b = iArr;
        this.f2359c = i;
    }
}
