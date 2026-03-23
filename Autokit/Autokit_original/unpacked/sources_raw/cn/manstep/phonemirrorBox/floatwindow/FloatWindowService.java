package cn.manstep.phonemirrorBox.floatwindow;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.provider.Settings;
import cn.manstep.phonemirrorBox.util.h;
import cn.manstep.phonemirrorBox.util.j;
import cn.manstep.phonemirrorBox.util.u;
import com.stub.StubApp;
import java.lang.ref.WeakReference;
import java.util.TimerTask;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class FloatWindowService extends Service implements cn.manstep.phonemirrorBox.v0.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final u f1631b = new u();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Handler f1632c = new f(this);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ScheduledExecutorService f1633d = null;
    private cn.manstep.phonemirrorBox.h0.a e;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (Settings.canDrawOverlays(StubApp.getOrigApplicationContext(FloatWindowService.this.getApplicationContext()))) {
                FloatWindowService.this.f1632c.sendEmptyMessage(1);
            }
        }
    }

    class b implements Runnable {
        b(FloatWindowService floatWindowService) {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (cn.manstep.phonemirrorBox.floatwindow.e.g().f() != null) {
                cn.manstep.phonemirrorBox.floatwindow.e.g().f().b(false);
            }
            cn.manstep.phonemirrorBox.floatwindow.e.g().n();
        }
    }

    class c implements Runnable {
        c(FloatWindowService floatWindowService) {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (cn.manstep.phonemirrorBox.floatwindow.e.g().f() != null) {
                cn.manstep.phonemirrorBox.floatwindow.e.g().f().b(true);
            }
            cn.manstep.phonemirrorBox.floatwindow.e.g().n();
        }
    }

    class d implements Runnable {
        d(FloatWindowService floatWindowService) {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (cn.manstep.phonemirrorBox.floatwindow.e.g().f() != null) {
                cn.manstep.phonemirrorBox.floatwindow.e.g().f().c(cn.manstep.phonemirrorBox.v0.a.t().y());
            }
        }
    }

    class e implements Runnable {
        e(FloatWindowService floatWindowService) {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (cn.manstep.phonemirrorBox.floatwindow.e.g().f() != null) {
                cn.manstep.phonemirrorBox.floatwindow.e.g().f().c(cn.manstep.phonemirrorBox.v0.a.t().y());
            }
        }
    }

    private static class f extends Handler {
        private final WeakReference<FloatWindowService> a;

        public f(FloatWindowService floatWindowService) {
            this.a = new WeakReference<>(floatWindowService);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (this.a.get() == null || message.what != 1) {
                return;
            }
            this.a.get().q();
        }
    }

    private class g extends TimerTask {

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
                    cn.manstep.phonemirrorBox.floatwindow.e.g().t(FloatWindowService.this);
                } else {
                    cn.manstep.phonemirrorBox.floatwindow.e.g().j(FloatWindowService.this);
                }
            }
        }

        private g() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (Build.VERSION.SDK_INT < 23 || Settings.canDrawOverlays(FloatWindowService.this)) {
                if (FloatWindowService.this.getResources().getBoolean(2131034128)) {
                    FloatWindowService.this.f1631b.b(new a(), 2000L);
                } else if (!cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
                    cn.manstep.phonemirrorBox.floatwindow.e.g().t(FloatWindowService.this);
                    return;
                }
                cn.manstep.phonemirrorBox.BoxInterface.f fVar = cn.manstep.phonemirrorBox.BoxInterface.d.l;
                if (fVar == null || fVar.J() == null || cn.manstep.phonemirrorBox.BoxInterface.d.l.J().k()) {
                    return;
                }
                cn.manstep.phonemirrorBox.floatwindow.e.g().j(FloatWindowService.this);
            }
        }

        /* synthetic */ g(FloatWindowService floatWindowService, a aVar) {
            this();
        }
    }

    private void o(Context context) {
        cn.manstep.phonemirrorBox.floatwindow.e.g().r(false);
        j.d(new b(this));
    }

    private void p(Context context) {
        cn.manstep.phonemirrorBox.floatwindow.e.g().r(true);
        j.d(new c(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        this.e.b("ShowQuickBallTimer");
        cn.manstep.phonemirrorBox.floatwindow.e.g().t(this);
    }

    @Override // cn.manstep.phonemirrorBox.v0.b
    public void a() {
    }

    @Override // cn.manstep.phonemirrorBox.v0.b
    public void b() {
    }

    @Override // cn.manstep.phonemirrorBox.v0.b
    public void c() {
    }

    @Override // cn.manstep.phonemirrorBox.v0.b
    public void d(String str) {
        if (str.endsWith("Mirror")) {
            cn.manstep.phonemirrorBox.floatwindow.e.g().j(this);
        }
    }

    @Override // cn.manstep.phonemirrorBox.v0.b
    public void e() {
    }

    @Override // cn.manstep.phonemirrorBox.v0.b
    public void f() {
    }

    @Override // cn.manstep.phonemirrorBox.v0.b
    public void g() {
    }

    @Override // cn.manstep.phonemirrorBox.v0.b
    public void h() {
        o(this);
    }

    @Override // cn.manstep.phonemirrorBox.v0.b
    public void i() {
        this.f1632c.post(new d(this));
    }

    @Override // cn.manstep.phonemirrorBox.v0.b
    public void j() {
        this.f1632c.post(new e(this));
    }

    @Override // cn.manstep.phonemirrorBox.v0.b
    public void k() {
        p(this);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        cn.manstep.phonemirrorBox.v0.a.t().r(this);
    }

    @Override // android.app.Service
    public void onDestroy() {
        ScheduledExecutorService scheduledExecutorService = this.f1633d;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdown();
            this.f1633d = null;
        }
        cn.manstep.phonemirrorBox.h0.a aVar = this.e;
        if (aVar != null) {
            aVar.e();
            this.e = null;
        }
        cn.manstep.phonemirrorBox.floatwindow.e.g().j(this);
        cn.manstep.phonemirrorBox.v0.a.t().F(this);
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (!getResources().getBoolean(2131034128) || cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
            if (Build.VERSION.SDK_INT < 23 || Settings.canDrawOverlays(StubApp.getOrigApplicationContext(getApplicationContext()))) {
                cn.manstep.phonemirrorBox.floatwindow.e.g().t(this);
            } else {
                if (this.e == null) {
                    this.e = new cn.manstep.phonemirrorBox.h0.a();
                }
                this.e.f("ShowQuickBallTimer", new a(), 500L, 500L);
            }
        }
        if (this.f1633d == null) {
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, new h("BallRefresh"));
            this.f1633d = scheduledThreadPoolExecutor;
            scheduledThreadPoolExecutor.scheduleAtFixedRate(new g(this, null), 0L, 500L, TimeUnit.MILLISECONDS);
        }
        return super.onStartCommand(intent, i, i2);
    }
}
