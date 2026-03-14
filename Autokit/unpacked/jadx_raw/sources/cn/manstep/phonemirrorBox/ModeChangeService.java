package cn.manstep.phonemirrorBox;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Binder;
import android.os.IBinder;
import cn.manstep.phonemirrorBox.BoxInterface.d;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class ModeChangeService extends Service implements cn.manstep.phonemirrorBox.v0.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f1538b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f1539c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final BroadcastReceiver f1540d = new a();
    private boolean e = false;
    private WeakReference<MainActivity> f;

    class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            byte[] byteArrayExtra;
            if ("com.szchoiceway.eventcenter.EventUtils.ACTION_MCU_CMD_EVENT".equals(intent.getAction()) && (byteArrayExtra = intent.getByteArrayExtra("EventUtils.MCU_CMD_DATA")) != null && byteArrayExtra.length == 2 && byteArrayExtra[0] == 25 && byteArrayExtra[1] == 0 && ModeChangeService.this.f1539c && cn.manstep.phonemirrorBox.BoxInterface.b.h) {
                Intent intent2 = new Intent("com.szchoiceway.eventcenter.EventUtils.ACTION_MCU_CMD_EVENT");
                intent2.putExtra("EventUtils.MCU_CMD_DATA", new byte[]{25, 1});
                ModeChangeService.this.sendBroadcast(intent2);
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!cn.manstep.phonemirrorBox.v0.a.t().A() || ModeChangeService.this.f1539c) {
                return;
            }
            if (!cn.manstep.phonemirrorBox.v0.a.t().w() && !cn.manstep.phonemirrorBox.v0.a.t().v()) {
                ModeChangeService.this.e = true;
            }
            if (cn.manstep.phonemirrorBox.v0.e.C() || !d.G()) {
                return;
            }
            cn.manstep.phonemirrorBox.util.f.f(ModeChangeService.this, null);
        }
    }

    public static class c extends Binder {
        private final WeakReference<ModeChangeService> a;

        public c(ModeChangeService modeChangeService) {
            this.a = new WeakReference<>(modeChangeService);
        }

        public ModeChangeService a() {
            return this.a.get();
        }
    }

    @Override // cn.manstep.phonemirrorBox.v0.b
    public void a() {
        cn.manstep.phonemirrorBox.util.s.d("ModeChangeService", "onCallIncoming: isForeground=" + this.f1539c);
        if (this.f1539c) {
            this.e = false;
            return;
        }
        if (!cn.manstep.phonemirrorBox.v0.a.t().w() && !cn.manstep.phonemirrorBox.v0.a.t().v()) {
            this.e = true;
        }
        cn.manstep.phonemirrorBox.util.s.d("ModeChangeService", "onCallIncoming: isVisible=" + cn.manstep.phonemirrorBox.v0.e.C());
        if (cn.manstep.phonemirrorBox.v0.e.C()) {
            return;
        }
        cn.manstep.phonemirrorBox.util.s.d("ModeChangeService", "onCallIncoming: startMainActivity");
        cn.manstep.phonemirrorBox.util.f.f(this, null);
    }

    @Override // cn.manstep.phonemirrorBox.v0.b
    public void b() {
    }

    @Override // cn.manstep.phonemirrorBox.v0.b
    public void c() {
        cn.manstep.phonemirrorBox.util.s.d("ModeChangeService", "onCallStop: isBackPressed=" + this.e);
        if (this.e) {
            WeakReference<MainActivity> weakReference = this.f;
            if (weakReference != null && weakReference.get() != null) {
                this.f.get().onBackPressed();
            }
            this.e = false;
        }
    }

    @Override // cn.manstep.phonemirrorBox.v0.b
    public void d(String str) {
    }

    @Override // cn.manstep.phonemirrorBox.v0.b
    public void e() {
        cn.manstep.phonemirrorBox.util.j.c().e("onMicStart", 1000L, new b());
    }

    @Override // cn.manstep.phonemirrorBox.v0.b
    public void f() {
    }

    @Override // cn.manstep.phonemirrorBox.v0.b
    public void g() {
        cn.manstep.phonemirrorBox.util.s.d("ModeChangeService", "onCallStart: isForeground=" + this.f1539c);
        if (this.f1539c) {
            this.e = false;
            return;
        }
        this.e = true;
        cn.manstep.phonemirrorBox.util.s.d("ModeChangeService", "onCallStart: isVisible=" + cn.manstep.phonemirrorBox.v0.e.C());
        if (cn.manstep.phonemirrorBox.v0.e.C()) {
            return;
        }
        cn.manstep.phonemirrorBox.util.s.d("ModeChangeService", "onCallStart: startMainActivity");
        cn.manstep.phonemirrorBox.util.f.f(this, null);
    }

    @Override // cn.manstep.phonemirrorBox.v0.b
    public void h() {
    }

    @Override // cn.manstep.phonemirrorBox.v0.b
    public void i() {
    }

    @Override // cn.manstep.phonemirrorBox.v0.b
    public void j() {
    }

    @Override // cn.manstep.phonemirrorBox.v0.b
    public void k() {
    }

    public void n(boolean z) {
        this.f1539c = z;
    }

    public void o(MainActivity mainActivity) {
        this.f = new WeakReference<>(mainActivity);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f1538b;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f1538b = new c(this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.szchoiceway.eventcenter.EventUtils.ACTION_MCU_CMD_EVENT");
        registerReceiver(this.f1540d, intentFilter);
        cn.manstep.phonemirrorBox.v0.a.t().r(this);
    }

    @Override // android.app.Service
    public void onDestroy() {
        unregisterReceiver(this.f1540d);
        cn.manstep.phonemirrorBox.v0.a.t().F(this);
        this.f1538b = null;
        super.onDestroy();
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        return super.onUnbind(intent);
    }
}
