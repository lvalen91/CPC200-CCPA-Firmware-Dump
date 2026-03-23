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
import cn.manstep.phonemirrorBox.BoxInterface.d;
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

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class AutoStartService extends Service implements d.g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1399b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f1400c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1401d = false;
    private boolean e = false;
    private boolean f = false;
    private ScheduledExecutorService g = null;
    private ScheduledFuture<?> h = null;
    private boolean i = false;
    private int j = -1;
    private boolean k = true;
    private boolean l = true;
    private final CountDownTimer m = new a(8000, 500);
    private boolean n = false;
    private boolean o = false;
    private boolean p = false;
    private boolean q = false;
    private d.b.a.b r = null;
    private h s;

    class a extends CountDownTimer {
        a(long j, long j2) {
            super(j, j2);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            AutoStartService.this.x();
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
            if (AutoStartService.this.k) {
                AutoStartService.this.k = false;
                AutoStartService.this.x();
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AutoStartService.this.A();
        }
    }

    class c extends TimerTask {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f1403b;

        c(String str) {
            this.f1403b = str;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            boolean zB = AutoStartService.this.B(this.f1403b);
            cn.manstep.phonemirrorBox.util.s.c("AutoStartService,startNightModeDetectTimer: " + zB + "," + AutoStartService.this.j);
            if (zB && AutoStartService.this.j == 1) {
                return;
            }
            if (zB || AutoStartService.this.j != 0) {
                cn.manstep.phonemirrorBox.BoxInterface.d.L(zB ? 16 : 17);
                AutoStartService.this.j = zB ? 1 : 0;
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
                return;
            }
            AutoStartService.this.w();
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Intent f1406b;

        e(Intent intent) {
            this.f1406b = intent;
        }

        @Override // java.lang.Runnable
        public void run() {
            AutoStartService.this.sendBroadcast(this.f1406b);
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AutoStartService.this.r.c(new d.b.a.a(48000, 12, 2));
            int iA = AutoStartService.this.r.A();
            byte[] bArr = new byte[iA];
            Arrays.fill(bArr, (byte) 1);
            while (AutoStartService.this.q) {
                AutoStartService.this.r.e(bArr, iA);
                try {
                    Thread.sleep(100L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            AutoStartService.this.r.i();
        }
    }

    public interface g {
        boolean a();

        void b(boolean z);

        void c(boolean z);
    }

    private static class h extends Binder implements g {
        private final WeakReference<AutoStartService> a;

        public h(AutoStartService autoStartService) {
            this.a = new WeakReference<>(autoStartService);
        }

        @Override // cn.manstep.phonemirrorBox.AutoStartService.g
        public boolean a() {
            if (!cn.manstep.phonemirrorBox.BoxInterface.d.i() || cn.manstep.phonemirrorBox.BoxInterface.d.G() || this.a.get() == null) {
                return false;
            }
            return this.a.get().f;
        }

        @Override // cn.manstep.phonemirrorBox.AutoStartService.g
        public void b(boolean z) {
            if (this.a.get() != null) {
                this.a.get().e = z;
                if (!z || !this.a.get().l) {
                    cn.manstep.phonemirrorBox.util.s.p("AutoStartService", "setAutoConnect: autoConnectCountDownTimer.cancel()");
                    this.a.get().m.cancel();
                } else {
                    this.a.get().k = true;
                    this.a.get().f1401d = false;
                    this.a.get().w();
                }
            }
        }

        @Override // cn.manstep.phonemirrorBox.AutoStartService.g
        public void c(boolean z) {
            if (this.a.get() != null) {
                if (z) {
                    this.a.get().I();
                } else {
                    this.a.get().F();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A() {
        cn.manstep.phonemirrorBox.util.s.c("AutoStartService,init");
        if (cn.manstep.phonemirrorBox.v0.e.A() == null) {
            cn.manstep.phonemirrorBox.v0.e.B(this);
        }
        MyApplication.b().j();
        if (cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
            cn.manstep.phonemirrorBox.BoxInterface.d.l.Y0();
        }
        this.i = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean B(String str) {
        String str2 = new SimpleDateFormat("HH:mm", Locale.getDefault()).format(new Date());
        cn.manstep.phonemirrorBox.util.s.c("AutoStartService,isNightTime: " + str + "," + Thread.currentThread().getName() + ":" + Thread.currentThread().getId());
        List<String> listL = cn.manstep.phonemirrorBox.util.c0.l(str, "\\d+:\\d+");
        String str3 = listL.get(0);
        String str4 = listL.get(1);
        cn.manstep.phonemirrorBox.util.s.c("AutoStartService,isNightTime: s=" + str3 + ",e=" + str4 + ",c=" + str2);
        if (str4.compareTo(str3) >= 0) {
            return str2.compareTo(str3) >= 0 && str2.compareTo(str4) <= 0;
        }
        if (str2.compareTo(str3) < 0 || str2.compareTo("23:59") > 0) {
            return str2.compareTo("00:00") >= 0 && str2.compareTo(str4) < 0;
        }
        return true;
    }

    private void C() {
        if (cn.manstep.phonemirrorBox.v0.e.z() == this) {
            cn.manstep.phonemirrorBox.v0.e.F();
        }
        G(2);
        stopSelf();
    }

    private void D() {
        if (this.f1400c) {
            if (this.o) {
                this.o = false;
            } else if (this.f1401d) {
                z();
            }
            this.f1400c = false;
        }
        if (this.f1401d) {
            return;
        }
        w();
    }

    private void E() {
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
            startForeground(1, new Notification.Builder(this, "ForegroundService").setSmallIcon(2131230907).setContentTitle(p.a).setContentText(getResources().getString(2131689573)).setContentIntent(activity).build());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F() {
        if (u.z().V()) {
            if (this.r == null) {
                cn.manstep.phonemirrorBox.BoxInterface.a aVar = new cn.manstep.phonemirrorBox.BoxInterface.a(5, 1, StubApp.getOrigApplicationContext(getApplicationContext()));
                this.r = aVar.i();
                aVar.b(CropImageView.DEFAULT_ASPECT_RATIO);
            }
            this.q = true;
            this.g.execute(new f());
        }
    }

    private void G(int i) {
        boolean zO = b0.i().o("InsertPhoneAutoStart", true);
        cn.manstep.phonemirrorBox.util.s.c("AutoStartService,startMainActivity: Start MainActivity. flag=" + i + "," + zO);
        if (zO) {
            if (q.g().h() != null && q.g().h().d0()) {
                cn.manstep.phonemirrorBox.util.s.d("AutoStartService", "startMainActivity: isVisible");
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putInt("AutoStart", i);
            cn.manstep.phonemirrorBox.util.f.f(this, bundle);
        }
    }

    private void H() {
        if (b0.i().m("NightMode", 2) != 2) {
            return;
        }
        String strN = b0.i().n("nightTime", BuildConfig.FLAVOR);
        if (!TextUtils.isEmpty(strN) && this.h == null) {
            this.h = this.g.scheduleAtFixedRate(new c(strN), 3L, 10L, TimeUnit.SECONDS);
            cn.manstep.phonemirrorBox.util.s.e("AutoStartService,startNightModeDetectTimer: " + this.h);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I() {
        this.q = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        cn.manstep.phonemirrorBox.util.s.d("AutoStartService", "autoConnect: Config.BoxVer=" + p.f1804b);
        if (TextUtils.isEmpty(p.f1804b) || "BOX:unknown".equals(p.f1804b)) {
            this.n = true;
            return;
        }
        if (!cn.manstep.phonemirrorBox.BoxInterface.d.C() && this.e) {
            boolean zO = b0.i().o("InsertPhoneAutoStart", true);
            int iM = b0.i().m("WirelessConnectMode", 0);
            cn.manstep.phonemirrorBox.util.s.c("AutoStartService,autoConnect: isInsertPhoneAutoStart=" + zO + ", wirelessConnMode=" + iM);
            if (iM == 0) {
                this.m.cancel();
                this.m.start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        cn.manstep.phonemirrorBox.BoxInterface.f fVar;
        if (!cn.manstep.phonemirrorBox.BoxInterface.d.i() || cn.manstep.phonemirrorBox.BoxInterface.d.G() || this.f1401d) {
            return;
        }
        int iF = cn.manstep.phonemirrorBox.BoxInterface.d.l.F();
        cn.manstep.phonemirrorBox.util.s.d("AutoStartService", "autoConnect2: count=" + iF);
        if (iF <= 0) {
            return;
        }
        if ((!getResources().getBoolean(2131034115) && !cn.manstep.phonemirrorBox.v0.e.C() && this.f1401d) || cn.manstep.phonemirrorBox.BoxInterface.d.C() || (fVar = cn.manstep.phonemirrorBox.BoxInterface.d.l) == null) {
            return;
        }
        boolean zM0 = fVar.m0();
        if (!zM0) {
            this.n = true;
        }
        cn.manstep.phonemirrorBox.util.s.d("AutoStartService", "autoConnect2: sendAutoConnect: " + p.f1804b + ", " + zM0);
    }

    private void y() {
        ScheduledFuture<?> scheduledFuture = this.h;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        this.j = -1;
    }

    private void z() {
        cn.manstep.phonemirrorBox.util.s.d("AutoStartService", "hideApp: " + this.p);
        if (this.p) {
            this.p = false;
            if (getResources().getBoolean(2131034126)) {
                Intent intent = new Intent("cn.manstep.phonemirror.MirrorService.INTENT_MSG_OUT");
                intent.putExtra("WPARAM", 3);
                intent.putExtra("LPARAM", 0);
                new Handler().postDelayed(new e(intent), 100L);
            }
        }
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void a(int i, Object obj) {
        if (i != 25) {
            return;
        }
        cn.manstep.phonemirrorBox.util.s.d("AutoStartService", "on_Box_Phase: EVT_MANUAL_DISCONNECT_PHONE " + obj);
        z();
        this.f1400c = false;
        this.f1401d = 1 == ((Integer) obj).intValue();
        w();
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void c(int i) {
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void n(cn.manstep.phonemirrorBox.BoxInterface.d dVar) {
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void o(int i) {
        cn.manstep.phonemirrorBox.util.s.c("AutoStartService,on_Box_Phase: phase = (" + i + ")" + cn.manstep.phonemirrorBox.BoxInterface.d.q(i));
        if (i == this.f1399b) {
            return;
        }
        this.f1399b = i;
        if (i != 0) {
            if (i == 15) {
                this.f1400c = true;
                this.f = false;
                this.p = true;
                this.l = true;
                H();
                return;
            }
            if (i == 25) {
                z();
                this.f1400c = false;
                this.f1401d = true;
                this.m.cancel();
                return;
            }
            if (i == 200) {
                this.e = true;
                this.f = false;
                w();
                return;
            }
            if (i != 210) {
                if (i != 2) {
                    if (i == 3 || i == 4) {
                        if (cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
                            this.o = false;
                            G(1);
                            this.f1401d = false;
                            return;
                        }
                        return;
                    }
                    if (i == 12) {
                        this.f1400c = false;
                        this.e = false;
                        y();
                        return;
                    }
                    if (i == 13) {
                        this.o = false;
                        this.k = true;
                        this.f1401d = false;
                        return;
                    }
                    if (i != 35 && i != 36) {
                        if (i == 123) {
                            C();
                            return;
                        }
                        if (i != 124) {
                            switch (i) {
                                case 202:
                                    new Handler().postDelayed(new d(), 5000L);
                                    break;
                                case 203:
                                    this.f = true;
                                    w();
                                    break;
                                case 204:
                                    this.o = true;
                                    w();
                                    break;
                            }
                            return;
                        }
                        if (p.d(p.f1804b)) {
                            if (this.n) {
                                this.n = false;
                                this.k = true;
                                w();
                                return;
                            }
                            return;
                        }
                        cn.manstep.phonemirrorBox.util.s.e("AutoStartService,on_Box_Phase: Error Version: " + p.f1804b);
                        C();
                        return;
                    }
                }
            }
            if (this.n) {
                this.n = false;
                this.k = true;
                w();
                return;
            }
            return;
        }
        D();
        y();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        cn.manstep.phonemirrorBox.util.s.c("AutoStartService,onBind.");
        return this.s;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        cn.manstep.phonemirrorBox.util.s.c("AutoStartService,onCreate: ");
        this.s = new h(this);
        cn.manstep.phonemirrorBox.h0.b bVar = new cn.manstep.phonemirrorBox.h0.b();
        bVar.f("AutoStart-%d");
        this.g = new ScheduledThreadPoolExecutor(1, bVar.b());
        E();
    }

    @Override // android.app.Service
    public void onDestroy() {
        cn.manstep.phonemirrorBox.util.s.f("AutoStartService", "onDestroy: ####");
        cn.manstep.phonemirrorBox.v0.e.S(this);
        y();
        I();
        this.m.cancel();
        ScheduledExecutorService scheduledExecutorService = this.g;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdown();
            this.g = null;
        }
        this.s = null;
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        cn.manstep.phonemirrorBox.util.s.c("AutoStartService,onStartCommand: mInitialized=" + this.i);
        cn.manstep.phonemirrorBox.v0.e.M(this);
        if (!this.i && intent != null) {
            String stringExtra = intent.getStringExtra("starter");
            cn.manstep.phonemirrorBox.util.s.c("AutoStartService,onStartCommand: starter=" + stringExtra);
            if (TextUtils.isEmpty(stringExtra)) {
                A();
            } else if ("Main1Activity".equalsIgnoreCase(stringExtra)) {
                new Handler().postDelayed(new b(), 3000L);
            }
        }
        E();
        return super.onStartCommand(intent, i, i2);
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        cn.manstep.phonemirrorBox.util.s.c("AutoStartService,onUnbind.");
        return super.onUnbind(intent);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void v(byte[] bArr) {
    }
}
