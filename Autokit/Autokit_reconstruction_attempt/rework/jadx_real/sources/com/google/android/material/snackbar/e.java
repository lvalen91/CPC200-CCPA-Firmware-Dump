package com.google.android.material.snackbar;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class e {
    private static e e;
    private final Object a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f2179b = new Handler(Looper.getMainLooper(), new a());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f2180c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c f2181d;

    class a implements Handler.Callback {
        a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            e.this.c((c) message.obj);
            return true;
        }
    }

    interface b {
        void a(int i);
    }

    private static class c {
        final WeakReference<b> a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f2182b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f2183c;

        boolean a(b bVar) {
            return bVar != null && this.a.get() == bVar;
        }
    }

    private e() {
    }

    private boolean a(c cVar, int i) {
        b bVar = cVar.a.get();
        if (bVar == null) {
            return false;
        }
        this.f2179b.removeCallbacksAndMessages(cVar);
        bVar.a(i);
        return true;
    }

    static e b() {
        if (e == null) {
            e = new e();
        }
        return e;
    }

    private boolean d(b bVar) {
        c cVar = this.f2180c;
        return cVar != null && cVar.a(bVar);
    }

    private void g(c cVar) {
        int i = cVar.f2182b;
        if (i == -2) {
            return;
        }
        if (i <= 0) {
            i = i == -1 ? 1500 : 2750;
        }
        this.f2179b.removeCallbacksAndMessages(cVar);
        Handler handler = this.f2179b;
        handler.sendMessageDelayed(Message.obtain(handler, 0, cVar), i);
    }

    void c(c cVar) {
        synchronized (this.a) {
            if (this.f2180c == cVar || this.f2181d == cVar) {
                a(cVar, 2);
            }
        }
    }

    public void e(b bVar) {
        synchronized (this.a) {
            if (d(bVar) && !this.f2180c.f2183c) {
                this.f2180c.f2183c = true;
                this.f2179b.removeCallbacksAndMessages(this.f2180c);
            }
        }
    }

    public void f(b bVar) {
        synchronized (this.a) {
            if (d(bVar) && this.f2180c.f2183c) {
                this.f2180c.f2183c = false;
                g(this.f2180c);
            }
        }
    }
}
