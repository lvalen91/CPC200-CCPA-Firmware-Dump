package d.c.b.d;

import java.util.Arrays;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public final class b implements Cloneable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f2360b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f2361c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f2362d;
    private final int[] e;

    public b(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            throw new IllegalArgumentException("Both dimensions must be greater than 0");
        }
        this.f2360b = i;
        this.f2361c = i2;
        int i3 = (i + 31) / 32;
        this.f2362d = i3;
        this.e = new int[i3 * i2];
    }

    private String a(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(this.f2361c * (this.f2360b + 1));
        for (int i = 0; i < this.f2361c; i++) {
            for (int i2 = 0; i2 < this.f2360b; i2++) {
                sb.append(c(i2, i) ? str : str2);
            }
            sb.append(str3);
        }
        return sb.toString();
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public b clone() {
        return new b(this.f2360b, this.f2361c, this.f2362d, (int[]) this.e.clone());
    }

    public boolean c(int i, int i2) {
        return ((this.e[(i2 * this.f2362d) + (i / 32)] >>> (i & 31)) & 1) != 0;
    }

    public void d(int i, int i2, int i3, int i4) {
        if (i2 < 0 || i < 0) {
            throw new IllegalArgumentException("Left and top must be nonnegative");
        }
        if (i4 <= 0 || i3 <= 0) {
            throw new IllegalArgumentException("Height and width must be at least 1");
        }
        int i5 = i3 + i;
        int i6 = i4 + i2;
        if (i6 > this.f2361c || i5 > this.f2360b) {
            throw new IllegalArgumentException("The region must fit inside the matrix");
        }
        while (i2 < i6) {
            int i7 = this.f2362d * i2;
            for (int i8 = i; i8 < i5; i8++) {
                int[] iArr = this.e;
                int i9 = (i8 / 32) + i7;
                iArr[i9] = iArr[i9] | (1 << (i8 & 31));
            }
            i2++;
        }
    }

    public String e(String str, String str2) {
        return a(str, str2, "\n");
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f2360b == bVar.f2360b && this.f2361c == bVar.f2361c && this.f2362d == bVar.f2362d && Arrays.equals(this.e, bVar.e);
    }

    public int hashCode() {
        int i = this.f2360b;
        return (((((((i * 31) + i) * 31) + this.f2361c) * 31) + this.f2362d) * 31) + Arrays.hashCode(this.e);
    }

    public String toString() {
        return e("X ", "  ");
    }

    private b(int i, int i2, int i3, int[] iArr) {
        this.f2360b = i;
        this.f2361c = i2;
        this.f2362d = i3;
        this.e = iArr;
    }
}
