package cn.manstep.phonemirrorBox.floatwindow;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.provider.Settings;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.BoxInterface.C0735f;
import cn.manstep.phonemirrorBox.p074h0.C0852a;
import cn.manstep.phonemirrorBox.p089v0.C0991a;
import cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b;
import cn.manstep.phonemirrorBox.util.C0973j;
import cn.manstep.phonemirrorBox.util.C0984u;
import cn.manstep.phonemirrorBox.util.ThreadFactoryC0971h;
import com.stub.StubApp;
import java.lang.ref.WeakReference;
import java.util.TimerTask;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class FloatWindowService extends Service implements InterfaceC0992b {

    /* JADX INFO: renamed from: b */
    private final C0984u f4917b = new C0984u();

    /* JADX INFO: renamed from: c */
    private final Handler f4918c = new HandlerC0837f(this);

    /* JADX INFO: renamed from: d */
    private ScheduledExecutorService f4919d = null;

    /* JADX INFO: renamed from: e */
    private C0852a f4920e;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.floatwindow.FloatWindowService$a */
    class RunnableC0832a implements Runnable {
        RunnableC0832a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (Settings.canDrawOverlays(StubApp.getOrigApplicationContext(FloatWindowService.this.getApplicationContext()))) {
                FloatWindowService.this.f4918c.sendEmptyMessage(1);
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.floatwindow.FloatWindowService$b */
    class RunnableC0833b implements Runnable {
        RunnableC0833b(FloatWindowService floatWindowService) {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C0843e.m6289g().m6295f() != null) {
                C0843e.m6289g().m6295f().m6282b(false);
            }
            C0843e.m6289g().m6299n();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.floatwindow.FloatWindowService$c */
    class RunnableC0834c implements Runnable {
        RunnableC0834c(FloatWindowService floatWindowService) {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C0843e.m6289g().m6295f() != null) {
                C0843e.m6289g().m6295f().m6282b(true);
            }
            C0843e.m6289g().m6299n();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.floatwindow.FloatWindowService$d */
    class RunnableC0835d implements Runnable {
        RunnableC0835d(FloatWindowService floatWindowService) {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C0843e.m6289g().m6295f() != null) {
                C0843e.m6289g().m6295f().m6283c(C0991a.m7412t().m7425y());
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.floatwindow.FloatWindowService$e */
    class RunnableC0836e implements Runnable {
        RunnableC0836e(FloatWindowService floatWindowService) {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C0843e.m6289g().m6295f() != null) {
                C0843e.m6289g().m6295f().m6283c(C0991a.m7412t().m7425y());
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.floatwindow.FloatWindowService$f */
    private static class HandlerC0837f extends Handler {

        /* JADX INFO: renamed from: a */
        private final WeakReference<FloatWindowService> f4922a;

        public HandlerC0837f(FloatWindowService floatWindowService) {
            this.f4922a = new WeakReference<>(floatWindowService);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (this.f4922a.get() == null || message.what != 1) {
                return;
            }
            this.f4922a.get().m6270q();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.floatwindow.FloatWindowService$g */
    private class C0838g extends TimerTask {

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.floatwindow.FloatWindowService$g$a */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (C0733d.m5591i()) {
                    C0843e.m6289g().m6305t(FloatWindowService.this);
                } else {
                    C0843e.m6289g().m6297j(FloatWindowService.this);
                }
            }
        }

        private C0838g() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (Build.VERSION.SDK_INT < 23 || Settings.canDrawOverlays(FloatWindowService.this)) {
                if (FloatWindowService.this.getResources().getBoolean(2131034128)) {
                    FloatWindowService.this.f4917b.m7391b(new a(), 2000L);
                } else if (!C0733d.m5574G()) {
                    C0843e.m6289g().m6305t(FloatWindowService.this);
                    return;
                }
                C0735f c0735f = C0733d.f4428l;
                if (c0735f == null || c0735f.m5683J() == null || C0733d.f4428l.m5683J().mo6929k()) {
                    return;
                }
                C0843e.m6289g().m6297j(FloatWindowService.this);
            }
        }

        /* synthetic */ C0838g(FloatWindowService floatWindowService, RunnableC0832a runnableC0832a) {
            this();
        }
    }

    /* JADX INFO: renamed from: o */
    private void m6268o(Context context) {
        C0843e.m6289g().m6303r(false);
        C0973j.m7258d(new RunnableC0833b(this));
    }

    /* JADX INFO: renamed from: p */
    private void m6269p(Context context) {
        C0843e.m6289g().m6303r(true);
        C0973j.m7258d(new RunnableC0834c(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: q */
    public void m6270q() {
        this.f4920e.m6336b("ShowQuickBallTimer");
        C0843e.m6289g().m6305t(this);
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b
    /* JADX INFO: renamed from: a */
    public void mo5982a() {
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b
    /* JADX INFO: renamed from: b */
    public void mo5983b() {
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b
    /* JADX INFO: renamed from: c */
    public void mo5984c() {
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b
    /* JADX INFO: renamed from: d */
    public void mo5985d(String str) {
        if (str.endsWith("Mirror")) {
            C0843e.m6289g().m6297j(this);
        }
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b
    /* JADX INFO: renamed from: e */
    public void mo5986e() {
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b
    /* JADX INFO: renamed from: f */
    public void mo5987f() {
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b
    /* JADX INFO: renamed from: g */
    public void mo5988g() {
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b
    /* JADX INFO: renamed from: h */
    public void mo5989h() {
        m6268o(this);
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b
    /* JADX INFO: renamed from: i */
    public void mo5990i() {
        this.f4918c.post(new RunnableC0835d(this));
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b
    /* JADX INFO: renamed from: j */
    public void mo5991j() {
        this.f4918c.post(new RunnableC0836e(this));
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b
    /* JADX INFO: renamed from: k */
    public void mo5992k() {
        m6269p(this);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        C0991a.m7412t().m7419r(this);
    }

    @Override // android.app.Service
    public void onDestroy() {
        ScheduledExecutorService scheduledExecutorService = this.f4919d;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdown();
            this.f4919d = null;
        }
        C0852a c0852a = this.f4920e;
        if (c0852a != null) {
            c0852a.m6337e();
            this.f4920e = null;
        }
        C0843e.m6289g().m6297j(this);
        C0991a.m7412t().m7418F(this);
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (!getResources().getBoolean(2131034128) || C0733d.m5591i()) {
            if (Build.VERSION.SDK_INT < 23 || Settings.canDrawOverlays(StubApp.getOrigApplicationContext(getApplicationContext()))) {
                C0843e.m6289g().m6305t(this);
            } else {
                if (this.f4920e == null) {
                    this.f4920e = new C0852a();
                }
                this.f4920e.m6338f("ShowQuickBallTimer", new RunnableC0832a(), 500L, 500L);
            }
        }
        if (this.f4919d == null) {
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, new ThreadFactoryC0971h("BallRefresh"));
            this.f4919d = scheduledThreadPoolExecutor;
            scheduledThreadPoolExecutor.scheduleAtFixedRate(new C0838g(this, null), 0L, 500L, TimeUnit.MILLISECONDS);
        }
        return super.onStartCommand(intent, i, i2);
    }
}
