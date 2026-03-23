package cn.manstep.phonemirrorBox;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.IBinder;
import android.text.TextUtils;
import cn.manstep.phonemirrorBox.BoxInterface.C0730a;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.BoxInterface.C0735f;
import cn.manstep.phonemirrorBox.p074h0.C0853b;
import cn.manstep.phonemirrorBox.p089v0.C0995e;
import cn.manstep.phonemirrorBox.util.C0964c0;
import cn.manstep.phonemirrorBox.util.C0969f;
import cn.manstep.phonemirrorBox.util.C0982s;
import com.stub.StubApp;
import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.TimerTask;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p093d.p097b.p098a.C1198a;
import p093d.p097b.p098a.C1199b;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class AutoStartService extends Service implements C0733d.g {

    /* JADX INFO: renamed from: b */
    private int f4293b = -1;

    /* JADX INFO: renamed from: c */
    private boolean f4294c = false;

    /* JADX INFO: renamed from: d */
    private boolean f4295d = false;

    /* JADX INFO: renamed from: e */
    private boolean f4296e = false;

    /* JADX INFO: renamed from: f */
    private boolean f4297f = false;

    /* JADX INFO: renamed from: g */
    private ScheduledExecutorService f4298g = null;

    /* JADX INFO: renamed from: h */
    private ScheduledFuture<?> f4299h = null;

    /* JADX INFO: renamed from: i */
    private boolean f4300i = false;

    /* JADX INFO: renamed from: j */
    private int f4301j = -1;

    /* JADX INFO: renamed from: k */
    private boolean f4302k = true;

    /* JADX INFO: renamed from: l */
    private boolean f4303l = true;

    /* JADX INFO: renamed from: m */
    private final CountDownTimer f4304m = new CountDownTimerC0722a(8000, 500);

    /* JADX INFO: renamed from: n */
    private boolean f4305n = false;

    /* JADX INFO: renamed from: o */
    private boolean f4306o = false;

    /* JADX INFO: renamed from: p */
    private boolean f4307p = false;

    /* JADX INFO: renamed from: q */
    private boolean f4308q = false;

    /* JADX INFO: renamed from: r */
    private C1199b f4309r = null;

    /* JADX INFO: renamed from: s */
    private BinderC0729h f4310s;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AutoStartService$a */
    class CountDownTimerC0722a extends CountDownTimer {
        CountDownTimerC0722a(long j, long j2) {
            super(j, j2);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            AutoStartService.this.m5411x();
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
            if (AutoStartService.this.f4302k) {
                AutoStartService.this.f4302k = false;
                AutoStartService.this.m5411x();
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AutoStartService$b */
    class RunnableC0723b implements Runnable {
        RunnableC0723b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AutoStartService.this.m5384A();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AutoStartService$c */
    class C0724c extends TimerTask {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ String f4313b;

        C0724c(String str) {
            this.f4313b = str;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            boolean zM5385B = AutoStartService.this.m5385B(this.f4313b);
            C0982s.m7373c("AutoStartService,startNightModeDetectTimer: " + zM5385B + "," + AutoStartService.this.f4301j);
            if (zM5385B && AutoStartService.this.f4301j == 1) {
                return;
            }
            if (zM5385B || AutoStartService.this.f4301j != 0) {
                C0733d.m5578L(zM5385B ? 16 : 17);
                AutoStartService.this.f4301j = zM5385B ? 1 : 0;
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AutoStartService$d */
    class RunnableC0725d implements Runnable {
        RunnableC0725d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C0733d.m5574G()) {
                return;
            }
            AutoStartService.this.m5410w();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AutoStartService$e */
    class RunnableC0726e implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ Intent f4316b;

        RunnableC0726e(Intent intent) {
            this.f4316b = intent;
        }

        @Override // java.lang.Runnable
        public void run() {
            AutoStartService.this.sendBroadcast(this.f4316b);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AutoStartService$f */
    class RunnableC0727f implements Runnable {
        RunnableC0727f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AutoStartService.this.f4309r.m9109c(new C1198a(48000, 12, 2));
            int iM9103A = AutoStartService.this.f4309r.m9103A();
            byte[] bArr = new byte[iM9103A];
            Arrays.fill(bArr, (byte) 1);
            while (AutoStartService.this.f4308q) {
                AutoStartService.this.f4309r.m9111e(bArr, iM9103A);
                try {
                    Thread.sleep(100L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            AutoStartService.this.f4309r.m9115i();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AutoStartService$g */
    public interface InterfaceC0728g {
        /* JADX INFO: renamed from: a */
        boolean mo5414a();

        /* JADX INFO: renamed from: b */
        void mo5415b(boolean z);

        /* JADX INFO: renamed from: c */
        void mo5416c(boolean z);
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AutoStartService$h */
    private static class BinderC0729h extends Binder implements InterfaceC0728g {

        /* JADX INFO: renamed from: a */
        private final WeakReference<AutoStartService> f4319a;

        public BinderC0729h(AutoStartService autoStartService) {
            this.f4319a = new WeakReference<>(autoStartService);
        }

        @Override // cn.manstep.phonemirrorBox.AutoStartService.InterfaceC0728g
        /* JADX INFO: renamed from: a */
        public boolean mo5414a() {
            if (!C0733d.m5591i() || C0733d.m5574G() || this.f4319a.get() == null) {
                return false;
            }
            return this.f4319a.get().f4297f;
        }

        @Override // cn.manstep.phonemirrorBox.AutoStartService.InterfaceC0728g
        /* JADX INFO: renamed from: b */
        public void mo5415b(boolean z) {
            if (this.f4319a.get() != null) {
                this.f4319a.get().f4296e = z;
                if (!z || !this.f4319a.get().f4303l) {
                    C0982s.m7386p("AutoStartService", "setAutoConnect: autoConnectCountDownTimer.cancel()");
                    this.f4319a.get().f4304m.cancel();
                } else {
                    this.f4319a.get().f4302k = true;
                    this.f4319a.get().f4295d = false;
                    this.f4319a.get().m5410w();
                }
            }
        }

        @Override // cn.manstep.phonemirrorBox.AutoStartService.InterfaceC0728g
        /* JADX INFO: renamed from: c */
        public void mo5416c(boolean z) {
            if (this.f4319a.get() != null) {
                if (z) {
                    this.f4319a.get().m5392I();
                } else {
                    this.f4319a.get().m5389F();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: A */
    public void m5384A() {
        C0982s.m7373c("AutoStartService,init");
        if (C0995e.m7428A() == null) {
            C0995e.m7429B(this);
        }
        MyApplication.m5997b().m6006j();
        if (C0733d.m5591i()) {
            C0733d.f4428l.m5707Y0();
        }
        this.f4300i = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: B */
    public boolean m5385B(String str) {
        String str2 = new SimpleDateFormat("HH:mm", Locale.getDefault()).format(new Date());
        C0982s.m7373c("AutoStartService,isNightTime: " + str + "," + Thread.currentThread().getName() + ":" + Thread.currentThread().getId());
        List<String> listM7188l = C0964c0.m7188l(str, "\\d+:\\d+");
        String str3 = listM7188l.get(0);
        String str4 = listM7188l.get(1);
        C0982s.m7373c("AutoStartService,isNightTime: s=" + str3 + ",e=" + str4 + ",c=" + str2);
        if (str4.compareTo(str3) >= 0) {
            return str2.compareTo(str3) >= 0 && str2.compareTo(str4) <= 0;
        }
        if (str2.compareTo(str3) < 0 || str2.compareTo("23:59") > 0) {
            return str2.compareTo("00:00") >= 0 && str2.compareTo(str4) < 0;
        }
        return true;
    }

    /* JADX INFO: renamed from: C */
    private void m5386C() {
        if (C0995e.m7462z() == this) {
            C0995e.m7433F();
        }
        m5390G(2);
        stopSelf();
    }

    /* JADX INFO: renamed from: D */
    private void m5387D() {
        if (this.f4294c) {
            if (this.f4306o) {
                this.f4306o = false;
            } else if (this.f4295d) {
                m5413z();
            }
            this.f4294c = false;
        }
        if (this.f4295d) {
            return;
        }
        m5410w();
    }

    /* JADX INFO: renamed from: E */
    private void m5388E() {
        Intent intent = new Intent(this, (Class<?>) MainActivity.class);
        intent.addFlags(268435456);
        PendingIntent activity = PendingIntent.getActivity(this, 0, intent, 0);
        if (Build.VERSION.SDK_INT < 26) {
            Notification notification = new Notification();
            notification.contentIntent = activity;
            notification.priority = -2;
            startForeground(1, notification);
            return;
        }
        NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
        NotificationChannel notificationChannel = new NotificationChannel("ForegroundService", "AutoKit", 1);
        if (notificationManager != null) {
            notificationManager.createNotificationChannel(notificationChannel);
            startForeground(1, new Notification.Builder(this, "ForegroundService").setSmallIcon(2131230907).setContentTitle(C0925p.f5864a).setContentText(getResources().getString(2131689573)).setContentIntent(activity).build());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: F */
    public void m5389F() {
        if (C0953u.m7001z().m7023V()) {
            if (this.f4309r == null) {
                C0730a c0730a = new C0730a(5, 1, StubApp.getOrigApplicationContext(getApplicationContext()));
                this.f4309r = c0730a.m5453i();
                c0730a.m5451b(CropImageView.DEFAULT_ASPECT_RATIO);
            }
            this.f4308q = true;
            this.f4298g.execute(new RunnableC0727f());
        }
    }

    /* JADX INFO: renamed from: G */
    private void m5390G(int i) {
        boolean zM6093o = C0795b0.m6071i().m6093o("InsertPhoneAutoStart", true);
        C0982s.m7373c("AutoStartService,startMainActivity: Start MainActivity. flag=" + i + "," + zM6093o);
        if (zM6093o) {
            if (C0930q.m6906g().m6913h() != null && C0930q.m6906g().m6913h().m6513d0()) {
                C0982s.m7374d("AutoStartService", "startMainActivity: isVisible");
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putInt("AutoStart", i);
            C0969f.m7240f(this, bundle);
        }
    }

    /* JADX INFO: renamed from: H */
    private void m5391H() {
        if (C0795b0.m6071i().m6091m("NightMode", 2) != 2) {
            return;
        }
        String strM6092n = C0795b0.m6071i().m6092n("nightTime", BuildConfig.FLAVOR);
        if (!TextUtils.isEmpty(strM6092n) && this.f4299h == null) {
            this.f4299h = this.f4298g.scheduleAtFixedRate(new C0724c(strM6092n), 3L, 10L, TimeUnit.SECONDS);
            C0982s.m7375e("AutoStartService,startNightModeDetectTimer: " + this.f4299h);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: I */
    public void m5392I() {
        this.f4308q = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: w */
    public void m5410w() {
        C0982s.m7374d("AutoStartService", "autoConnect: Config.BoxVer=" + C0925p.f5865b);
        if (TextUtils.isEmpty(C0925p.f5865b) || "BOX:unknown".equals(C0925p.f5865b)) {
            this.f4305n = true;
            return;
        }
        if (!C0733d.m5571C() && this.f4296e) {
            boolean zM6093o = C0795b0.m6071i().m6093o("InsertPhoneAutoStart", true);
            int iM6091m = C0795b0.m6071i().m6091m("WirelessConnectMode", 0);
            C0982s.m7373c("AutoStartService,autoConnect: isInsertPhoneAutoStart=" + zM6093o + ", wirelessConnMode=" + iM6091m);
            if (iM6091m == 0) {
                this.f4304m.cancel();
                this.f4304m.start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: x */
    public void m5411x() {
        C0735f c0735f;
        if (!C0733d.m5591i() || C0733d.m5574G() || this.f4295d) {
            return;
        }
        int iM5675F = C0733d.f4428l.m5675F();
        C0982s.m7374d("AutoStartService", "autoConnect2: count=" + iM5675F);
        if (iM5675F <= 0) {
            return;
        }
        if ((!getResources().getBoolean(2131034115) && !C0995e.m7430C() && this.f4295d) || C0733d.m5571C() || (c0735f = C0733d.f4428l) == null) {
            return;
        }
        boolean zM5734m0 = c0735f.m5734m0();
        if (!zM5734m0) {
            this.f4305n = true;
        }
        C0982s.m7374d("AutoStartService", "autoConnect2: sendAutoConnect: " + C0925p.f5865b + ", " + zM5734m0);
    }

    /* JADX INFO: renamed from: y */
    private void m5412y() {
        ScheduledFuture<?> scheduledFuture = this.f4299h;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        this.f4301j = -1;
    }

    /* JADX INFO: renamed from: z */
    private void m5413z() {
        C0982s.m7374d("AutoStartService", "hideApp: " + this.f4307p);
        if (this.f4307p) {
            this.f4307p = false;
            if (getResources().getBoolean(2131034126)) {
                Intent intent = new Intent("cn.manstep.phonemirror.MirrorService.INTENT_MSG_OUT");
                intent.putExtra("WPARAM", 3);
                intent.putExtra("LPARAM", 0);
                new Handler().postDelayed(new RunnableC0726e(intent), 100L);
            }
        }
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: a */
    public void mo5274a(int i, Object obj) {
        if (i != 25) {
            return;
        }
        C0982s.m7374d("AutoStartService", "on_Box_Phase: EVT_MANUAL_DISCONNECT_PHONE " + obj);
        m5413z();
        this.f4294c = false;
        this.f4295d = 1 == ((Integer) obj).intValue();
        m5410w();
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: c */
    public void mo5276c(int i) {
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: n */
    public void mo5277n(C0733d c0733d) {
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: o */
    public void mo5278o(int i) {
        C0982s.m7373c("AutoStartService,on_Box_Phase: phase = (" + i + ")" + C0733d.m5596q(i));
        if (i == this.f4293b) {
            return;
        }
        this.f4293b = i;
        if (i != 0) {
            if (i == 15) {
                this.f4294c = true;
                this.f4297f = false;
                this.f4307p = true;
                this.f4303l = true;
                m5391H();
                return;
            }
            if (i == 25) {
                m5413z();
                this.f4294c = false;
                this.f4295d = true;
                this.f4304m.cancel();
                return;
            }
            if (i == 200) {
                this.f4296e = true;
                this.f4297f = false;
                m5410w();
                return;
            }
            if (i != 210) {
                if (i != 2) {
                    if (i == 3 || i == 4) {
                        if (C0733d.m5591i()) {
                            this.f4306o = false;
                            m5390G(1);
                            this.f4295d = false;
                            return;
                        }
                        return;
                    }
                    if (i == 12) {
                        this.f4294c = false;
                        this.f4296e = false;
                        m5412y();
                        return;
                    }
                    if (i == 13) {
                        this.f4306o = false;
                        this.f4302k = true;
                        this.f4295d = false;
                        return;
                    }
                    if (i != 35 && i != 36) {
                        if (i == 123) {
                            m5386C();
                            return;
                        }
                        if (i != 124) {
                            switch (i) {
                                case 202:
                                    new Handler().postDelayed(new RunnableC0725d(), 5000L);
                                    break;
                                case 203:
                                    this.f4297f = true;
                                    m5410w();
                                    break;
                                case 204:
                                    this.f4306o = true;
                                    m5410w();
                                    break;
                            }
                            return;
                        }
                        if (C0925p.m6860d(C0925p.f5865b)) {
                            if (this.f4305n) {
                                this.f4305n = false;
                                this.f4302k = true;
                                m5410w();
                                return;
                            }
                            return;
                        }
                        C0982s.m7375e("AutoStartService,on_Box_Phase: Error Version: " + C0925p.f5865b);
                        m5386C();
                        return;
                    }
                }
            }
            if (this.f4305n) {
                this.f4305n = false;
                this.f4302k = true;
                m5410w();
                return;
            }
            return;
        }
        m5387D();
        m5412y();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        C0982s.m7373c("AutoStartService,onBind.");
        return this.f4310s;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        C0982s.m7373c("AutoStartService,onCreate: ");
        this.f4310s = new BinderC0729h(this);
        C0853b c0853b = new C0853b();
        c0853b.m6344f("AutoStart-%d");
        this.f4298g = new ScheduledThreadPoolExecutor(1, c0853b.m6343b());
        m5388E();
    }

    @Override // android.app.Service
    public void onDestroy() {
        C0982s.m7376f("AutoStartService", "onDestroy: ####");
        C0995e.m7446S(this);
        m5412y();
        m5392I();
        this.f4304m.cancel();
        ScheduledExecutorService scheduledExecutorService = this.f4298g;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdown();
            this.f4298g = null;
        }
        this.f4310s = null;
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        C0982s.m7373c("AutoStartService,onStartCommand: mInitialized=" + this.f4300i);
        C0995e.m7440M(this);
        if (!this.f4300i && intent != null) {
            String stringExtra = intent.getStringExtra("starter");
            C0982s.m7373c("AutoStartService,onStartCommand: starter=" + stringExtra);
            if (TextUtils.isEmpty(stringExtra)) {
                m5384A();
            } else if ("Main1Activity".equalsIgnoreCase(stringExtra)) {
                new Handler().postDelayed(new RunnableC0723b(), 3000L);
            }
        }
        m5388E();
        return super.onStartCommand(intent, i, i2);
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        C0982s.m7373c("AutoStartService,onUnbind.");
        return super.onUnbind(intent);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: v */
    public void mo5279v(byte[] bArr) {
    }
}
