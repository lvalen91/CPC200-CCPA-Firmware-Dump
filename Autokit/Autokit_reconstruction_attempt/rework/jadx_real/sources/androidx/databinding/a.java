package androidx.databinding;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class a {
    private transient i a;

    public void d(int i) {
        synchronized (this) {
            if (this.a == null) {
                return;
            }
            this.a.a(this, i, null);
        }
    }
}
