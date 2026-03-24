package c.g.j;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class d<F, S> {
    public final F a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final S f1237b;

    public boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return c.a(dVar.a, this.a) && c.a(dVar.f1237b, this.f1237b);
    }

    public int hashCode() {
        F f = this.a;
        int iHashCode = f == null ? 0 : f.hashCode();
        S s = this.f1237b;
        return iHashCode ^ (s != null ? s.hashCode() : 0);
    }

    public String toString() {
        return "Pair{" + this.a + " " + this.f1237b + "}";
    }
}
