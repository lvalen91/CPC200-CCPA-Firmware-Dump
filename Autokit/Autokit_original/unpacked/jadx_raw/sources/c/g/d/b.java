package c.g.d;

import android.graphics.Insets;
import android.graphics.Rect;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class b {
    public static final b e = new b(0, 0, 0, 0);
    public final int a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1169b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1170c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1171d;

    private b(int i, int i2, int i3, int i4) {
        this.a = i;
        this.f1169b = i2;
        this.f1170c = i3;
        this.f1171d = i4;
    }

    public static b a(b bVar, b bVar2) {
        return b(Math.max(bVar.a, bVar2.a), Math.max(bVar.f1169b, bVar2.f1169b), Math.max(bVar.f1170c, bVar2.f1170c), Math.max(bVar.f1171d, bVar2.f1171d));
    }

    public static b b(int i, int i2, int i3, int i4) {
        return (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) ? e : new b(i, i2, i3, i4);
    }

    public static b c(Rect rect) {
        return b(rect.left, rect.top, rect.right, rect.bottom);
    }

    public static b d(Insets insets) {
        return b(insets.left, insets.top, insets.right, insets.bottom);
    }

    public Insets e() {
        return Insets.of(this.a, this.f1169b, this.f1170c, this.f1171d);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f1171d == bVar.f1171d && this.a == bVar.a && this.f1170c == bVar.f1170c && this.f1169b == bVar.f1169b;
    }

    public int hashCode() {
        return (((((this.a * 31) + this.f1169b) * 31) + this.f1170c) * 31) + this.f1171d;
    }

    public String toString() {
        return "Insets{left=" + this.a + ", top=" + this.f1169b + ", right=" + this.f1170c + ", bottom=" + this.f1171d + '}';
    }
}
