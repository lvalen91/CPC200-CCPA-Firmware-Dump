package d.a.a.b;

import android.view.Surface;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class g extends c {
    private Surface e;
    private boolean f;

    public g(b bVar, Surface surface, boolean z) {
        super(bVar);
        a(surface);
        this.e = surface;
        this.f = z;
    }

    public void g() {
        e();
        Surface surface = this.e;
        if (surface != null) {
            if (this.f) {
                surface.release();
            }
            this.e = null;
        }
    }
}
