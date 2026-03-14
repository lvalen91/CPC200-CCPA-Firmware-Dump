package p016c.p041g.p046g;

import android.os.Build;
import android.os.CancellationSignal;

/* JADX INFO: renamed from: c.g.g.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0604b {

    /* JADX INFO: renamed from: a */
    private boolean f3723a;

    /* JADX INFO: renamed from: b */
    private a f3724b;

    /* JADX INFO: renamed from: c */
    private Object f3725c;

    /* JADX INFO: renamed from: d */
    private boolean f3726d;

    /* JADX INFO: renamed from: c.g.g.b$a */
    public interface a {
        /* JADX INFO: renamed from: a */
        void mo2557a();
    }

    /* JADX INFO: renamed from: d */
    private void m4752d() {
        while (this.f3726d) {
            try {
                wait();
            } catch (InterruptedException unused) {
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public void m4753a() {
        synchronized (this) {
            if (this.f3723a) {
                return;
            }
            this.f3723a = true;
            this.f3726d = true;
            a aVar = this.f3724b;
            Object obj = this.f3725c;
            if (aVar != null) {
                try {
                    aVar.mo2557a();
                } catch (Throwable th) {
                    synchronized (this) {
                        this.f3726d = false;
                        notifyAll();
                        throw th;
                    }
                }
            }
            if (obj != null && Build.VERSION.SDK_INT >= 16) {
                ((CancellationSignal) obj).cancel();
            }
            synchronized (this) {
                this.f3726d = false;
                notifyAll();
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public boolean m4754b() {
        boolean z;
        synchronized (this) {
            z = this.f3723a;
        }
        return z;
    }

    /* JADX INFO: renamed from: c */
    public void m4755c(a aVar) {
        synchronized (this) {
            m4752d();
            if (this.f3724b == aVar) {
                return;
            }
            this.f3724b = aVar;
            if (this.f3723a && aVar != null) {
                aVar.mo2557a();
            }
        }
    }
}
