package c.g.g;

import android.os.Build;
import android.os.CancellationSignal;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public final class b {
    private boolean a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f1181b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object f1182c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1183d;

    public interface a {
        void a();
    }

    private void d() {
        while (this.f1183d) {
            try {
                wait();
            } catch (InterruptedException unused) {
            }
        }
    }

    public void a() {
        synchronized (this) {
            if (this.a) {
                return;
            }
            this.a = true;
            this.f1183d = true;
            a aVar = this.f1181b;
            Object obj = this.f1182c;
            if (aVar != null) {
                try {
                    aVar.a();
                } catch (Throwable th) {
                    synchronized (this) {
                        this.f1183d = false;
                        notifyAll();
                        throw th;
                    }
                }
            }
            if (obj != null && Build.VERSION.SDK_INT >= 16) {
                ((CancellationSignal) obj).cancel();
            }
            synchronized (this) {
                this.f1183d = false;
                notifyAll();
            }
        }
    }

    public boolean b() {
        boolean z;
        synchronized (this) {
            z = this.a;
        }
        return z;
    }

    public void c(a aVar) {
        synchronized (this) {
            d();
            if (this.f1181b == aVar) {
                return;
            }
            this.f1181b = aVar;
            if (this.a && aVar != null) {
                aVar.a();
            }
        }
    }
}
