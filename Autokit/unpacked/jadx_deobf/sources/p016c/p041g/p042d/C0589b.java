package p016c.p041g.p042d;

import android.graphics.Insets;
import android.graphics.Rect;

/* JADX INFO: renamed from: c.g.d.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0589b {

    /* JADX INFO: renamed from: e */
    public static final C0589b f3694e = new C0589b(0, 0, 0, 0);

    /* JADX INFO: renamed from: a */
    public final int f3695a;

    /* JADX INFO: renamed from: b */
    public final int f3696b;

    /* JADX INFO: renamed from: c */
    public final int f3697c;

    /* JADX INFO: renamed from: d */
    public final int f3698d;

    private C0589b(int i, int i2, int i3, int i4) {
        this.f3695a = i;
        this.f3696b = i2;
        this.f3697c = i3;
        this.f3698d = i4;
    }

    /* JADX INFO: renamed from: a */
    public static C0589b m4672a(C0589b c0589b, C0589b c0589b2) {
        return m4673b(Math.max(c0589b.f3695a, c0589b2.f3695a), Math.max(c0589b.f3696b, c0589b2.f3696b), Math.max(c0589b.f3697c, c0589b2.f3697c), Math.max(c0589b.f3698d, c0589b2.f3698d));
    }

    /* JADX INFO: renamed from: b */
    public static C0589b m4673b(int i, int i2, int i3, int i4) {
        return (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) ? f3694e : new C0589b(i, i2, i3, i4);
    }

    /* JADX INFO: renamed from: c */
    public static C0589b m4674c(Rect rect) {
        return m4673b(rect.left, rect.top, rect.right, rect.bottom);
    }

    /* JADX INFO: renamed from: d */
    public static C0589b m4675d(Insets insets) {
        return m4673b(insets.left, insets.top, insets.right, insets.bottom);
    }

    /* JADX INFO: renamed from: e */
    public Insets m4676e() {
        return Insets.of(this.f3695a, this.f3696b, this.f3697c, this.f3698d);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0589b.class != obj.getClass()) {
            return false;
        }
        C0589b c0589b = (C0589b) obj;
        return this.f3698d == c0589b.f3698d && this.f3695a == c0589b.f3695a && this.f3697c == c0589b.f3697c && this.f3696b == c0589b.f3696b;
    }

    public int hashCode() {
        return (((((this.f3695a * 31) + this.f3696b) * 31) + this.f3697c) * 31) + this.f3698d;
    }

    public String toString() {
        return "Insets{left=" + this.f3695a + ", top=" + this.f3696b + ", right=" + this.f3697c + ", bottom=" + this.f3698d + '}';
    }
}
