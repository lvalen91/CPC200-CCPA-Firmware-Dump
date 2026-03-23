package com.google.android.material.snackbar;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

/* JADX INFO: renamed from: com.google.android.material.snackbar.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C1129e {

    /* JADX INFO: renamed from: e */
    private static C1129e f7221e;

    /* JADX INFO: renamed from: a */
    private final Object f7222a = new Object();

    /* JADX INFO: renamed from: b */
    private final Handler f7223b = new Handler(Looper.getMainLooper(), new a());

    /* JADX INFO: renamed from: c */
    private c f7224c;

    /* JADX INFO: renamed from: d */
    private c f7225d;

    /* JADX INFO: renamed from: com.google.android.material.snackbar.e$a */
    class a implements Handler.Callback {
        a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            C1129e.this.m8748c((c) message.obj);
            return true;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.snackbar.e$b */
    interface b {
        /* JADX INFO: renamed from: a */
        void m8751a(int i);
    }

    /* JADX INFO: renamed from: com.google.android.material.snackbar.e$c */
    private static class c {

        /* JADX INFO: renamed from: a */
        final WeakReference<b> f7227a;

        /* JADX INFO: renamed from: b */
        int f7228b;

        /* JADX INFO: renamed from: c */
        boolean f7229c;

        /* JADX INFO: renamed from: a */
        boolean m8752a(b bVar) {
            return bVar != null && this.f7227a.get() == bVar;
        }
    }

    private C1129e() {
    }

    /* JADX INFO: renamed from: a */
    private boolean m8744a(c cVar, int i) {
        b bVar = cVar.f7227a.get();
        if (bVar == null) {
            return false;
        }
        this.f7223b.removeCallbacksAndMessages(cVar);
        bVar.m8751a(i);
        return true;
    }

    /* JADX INFO: renamed from: b */
    static C1129e m8745b() {
        if (f7221e == null) {
            f7221e = new C1129e();
        }
        return f7221e;
    }

    /* JADX INFO: renamed from: d */
    private boolean m8746d(b bVar) {
        c cVar = this.f7224c;
        return cVar != null && cVar.m8752a(bVar);
    }

    /* JADX INFO: renamed from: g */
    private void m8747g(c cVar) {
        int i = cVar.f7228b;
        if (i == -2) {
            return;
        }
        if (i <= 0) {
            i = i == -1 ? 1500 : 2750;
        }
        this.f7223b.removeCallbacksAndMessages(cVar);
        Handler handler = this.f7223b;
        handler.sendMessageDelayed(Message.obtain(handler, 0, cVar), i);
    }

    /* JADX INFO: renamed from: c */
    void m8748c(c cVar) {
        synchronized (this.f7222a) {
            if (this.f7224c == cVar || this.f7225d == cVar) {
                m8744a(cVar, 2);
            }
        }
    }

    /* JADX INFO: renamed from: e */
    public void m8749e(b bVar) {
        synchronized (this.f7222a) {
            if (m8746d(bVar) && !this.f7224c.f7229c) {
                this.f7224c.f7229c = true;
                this.f7223b.removeCallbacksAndMessages(this.f7224c);
            }
        }
    }

    /* JADX INFO: renamed from: f */
    public void m8750f(b bVar) {
        synchronized (this.f7222a) {
            if (m8746d(bVar) && this.f7224c.f7229c) {
                this.f7224c.f7229c = false;
                m8747g(this.f7224c);
            }
        }
    }
}
