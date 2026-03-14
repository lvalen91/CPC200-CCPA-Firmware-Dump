package cn.manstep.phonemirrorBox;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Binder;
import android.os.IBinder;
import cn.manstep.phonemirrorBox.BoxInterface.C0731b;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.p089v0.C0991a;
import cn.manstep.phonemirrorBox.p089v0.C0995e;
import cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b;
import cn.manstep.phonemirrorBox.util.C0969f;
import cn.manstep.phonemirrorBox.util.C0973j;
import cn.manstep.phonemirrorBox.util.C0982s;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class ModeChangeService extends Service implements InterfaceC0992b {

    /* JADX INFO: renamed from: b */
    private BinderC0789c f4689b;

    /* JADX INFO: renamed from: c */
    private boolean f4690c = true;

    /* JADX INFO: renamed from: d */
    private final BroadcastReceiver f4691d = new C0787a();

    /* JADX INFO: renamed from: e */
    private boolean f4692e = false;

    /* JADX INFO: renamed from: f */
    private WeakReference<MainActivity> f4693f;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.ModeChangeService$a */
    class C0787a extends BroadcastReceiver {
        C0787a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            byte[] byteArrayExtra;
            if ("com.szchoiceway.eventcenter.EventUtils.ACTION_MCU_CMD_EVENT".equals(intent.getAction()) && (byteArrayExtra = intent.getByteArrayExtra("EventUtils.MCU_CMD_DATA")) != null && byteArrayExtra.length == 2 && byteArrayExtra[0] == 25 && byteArrayExtra[1] == 0 && ModeChangeService.this.f4690c && C0731b.f4351h) {
                Intent intent2 = new Intent("com.szchoiceway.eventcenter.EventUtils.ACTION_MCU_CMD_EVENT");
                intent2.putExtra("EventUtils.MCU_CMD_DATA", new byte[]{25, 1});
                ModeChangeService.this.sendBroadcast(intent2);
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.ModeChangeService$b */
    class RunnableC0788b implements Runnable {
        RunnableC0788b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!C0991a.m7412t().m7413A() || ModeChangeService.this.f4690c) {
                return;
            }
            if (!C0991a.m7412t().m7423w() && !C0991a.m7412t().m7422v()) {
                ModeChangeService.this.f4692e = true;
            }
            if (C0995e.m7430C() || !C0733d.m5574G()) {
                return;
            }
            C0969f.m7240f(ModeChangeService.this, null);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.ModeChangeService$c */
    public static class BinderC0789c extends Binder {

        /* JADX INFO: renamed from: a */
        private final WeakReference<ModeChangeService> f4696a;

        public BinderC0789c(ModeChangeService modeChangeService) {
            this.f4696a = new WeakReference<>(modeChangeService);
        }

        /* JADX INFO: renamed from: a */
        public ModeChangeService m5995a() {
            return this.f4696a.get();
        }
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b
    /* JADX INFO: renamed from: a */
    public void mo5982a() {
        C0982s.m7374d("ModeChangeService", "onCallIncoming: isForeground=" + this.f4690c);
        if (this.f4690c) {
            this.f4692e = false;
            return;
        }
        if (!C0991a.m7412t().m7423w() && !C0991a.m7412t().m7422v()) {
            this.f4692e = true;
        }
        C0982s.m7374d("ModeChangeService", "onCallIncoming: isVisible=" + C0995e.m7430C());
        if (C0995e.m7430C()) {
            return;
        }
        C0982s.m7374d("ModeChangeService", "onCallIncoming: startMainActivity");
        C0969f.m7240f(this, null);
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b
    /* JADX INFO: renamed from: b */
    public void mo5983b() {
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b
    /* JADX INFO: renamed from: c */
    public void mo5984c() {
        C0982s.m7374d("ModeChangeService", "onCallStop: isBackPressed=" + this.f4692e);
        if (this.f4692e) {
            WeakReference<MainActivity> weakReference = this.f4693f;
            if (weakReference != null && weakReference.get() != null) {
                this.f4693f.get().onBackPressed();
            }
            this.f4692e = false;
        }
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b
    /* JADX INFO: renamed from: d */
    public void mo5985d(String str) {
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b
    /* JADX INFO: renamed from: e */
    public void mo5986e() {
        C0973j.m7257c().m7260e("onMicStart", 1000L, new RunnableC0788b());
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b
    /* JADX INFO: renamed from: f */
    public void mo5987f() {
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b
    /* JADX INFO: renamed from: g */
    public void mo5988g() {
        C0982s.m7374d("ModeChangeService", "onCallStart: isForeground=" + this.f4690c);
        if (this.f4690c) {
            this.f4692e = false;
            return;
        }
        this.f4692e = true;
        C0982s.m7374d("ModeChangeService", "onCallStart: isVisible=" + C0995e.m7430C());
        if (C0995e.m7430C()) {
            return;
        }
        C0982s.m7374d("ModeChangeService", "onCallStart: startMainActivity");
        C0969f.m7240f(this, null);
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b
    /* JADX INFO: renamed from: h */
    public void mo5989h() {
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b
    /* JADX INFO: renamed from: i */
    public void mo5990i() {
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b
    /* JADX INFO: renamed from: j */
    public void mo5991j() {
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b
    /* JADX INFO: renamed from: k */
    public void mo5992k() {
    }

    /* JADX INFO: renamed from: n */
    public void m5993n(boolean z) {
        this.f4690c = z;
    }

    /* JADX INFO: renamed from: o */
    public void m5994o(MainActivity mainActivity) {
        this.f4693f = new WeakReference<>(mainActivity);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f4689b;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f4689b = new BinderC0789c(this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.szchoiceway.eventcenter.EventUtils.ACTION_MCU_CMD_EVENT");
        registerReceiver(this.f4691d, intentFilter);
        C0991a.m7412t().m7419r(this);
    }

    @Override // android.app.Service
    public void onDestroy() {
        unregisterReceiver(this.f4691d);
        C0991a.m7412t().m7418F(this);
        this.f4689b = null;
        super.onDestroy();
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        return super.onUnbind(intent);
    }
}
