package p016c.p041g.p049j;

/* JADX INFO: renamed from: c.g.j.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0622d<F, S> {

    /* JADX INFO: renamed from: a */
    public final F f3812a;

    /* JADX INFO: renamed from: b */
    public final S f3813b;

    public boolean equals(Object obj) {
        if (!(obj instanceof C0622d)) {
            return false;
        }
        C0622d c0622d = (C0622d) obj;
        return C0621c.m4846a(c0622d.f3812a, this.f3812a) && C0621c.m4846a(c0622d.f3813b, this.f3813b);
    }

    public int hashCode() {
        F f = this.f3812a;
        int iHashCode = f == null ? 0 : f.hashCode();
        S s = this.f3813b;
        return iHashCode ^ (s != null ? s.hashCode() : 0);
    }

    public String toString() {
        return "Pair{" + this.f3812a + " " + this.f3813b + "}";
    }
}
