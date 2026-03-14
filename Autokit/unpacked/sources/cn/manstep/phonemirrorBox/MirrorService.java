package cn.manstep.phonemirrorBox;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import cn.manstep.phonemirrorBox.p089v0.C0995e;
import cn.manstep.phonemirrorBox.util.C0982s;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class MirrorService extends Service implements C0995e.d {

    /* JADX INFO: renamed from: b */
    private final IBinder f4686b = new BinderC0786b(this);

    /* JADX INFO: renamed from: c */
    BroadcastReceiver f4687c = new C0785a();

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MirrorService$a */
    class C0785a extends BroadcastReceiver {
        C0785a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String stringExtra;
            C0982s.m7373c(intent.getAction());
            if (!intent.getAction().equals("cn.manstep.phonemirror.MirrorService.INTENT_MSG_IN") || (stringExtra = intent.getStringExtra("Action")) == null) {
                return;
            }
            if (stringExtra.equals("onResume")) {
                C0995e.m7444Q(true);
                return;
            }
            if (stringExtra.equals("onStop")) {
                C0995e.m7444Q(false);
                return;
            }
            if (stringExtra.equals("onDestroy")) {
                MirrorService.this.stopSelf();
            } else if (stringExtra.equals("OnRestart")) {
                C0995e.m7460x(3);
                C0995e.m7460x(4);
                C0995e.m7444Q(true);
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MirrorService$b */
    public class BinderC0786b extends Binder {
        public BinderC0786b(MirrorService mirrorService) {
        }
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.C0995e.d
    /* JADX INFO: renamed from: g */
    public void mo5834g(int i, int i2, int i3) {
        C0982s.m7375e("MirrorService " + i + " " + i2 + " " + i3);
        Intent intent = new Intent("cn.manstep.phonemirror.MirrorService.INTENT_MSG_OUT");
        intent.putExtra("WPARAM", 1);
        intent.putExtra("LPARAM", i2);
        sendBroadcast(intent);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        IBinder iBinder = this.f4686b;
        if (iBinder != null) {
            return iBinder;
        }
        throw new UnsupportedOperationException("Not yet implemented");
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        C0982s.m7373c("Serivice onCreate");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("cn.manstep.phonemirror.MirrorService.INTENT_MSG_IN");
        registerReceiver(this.f4687c, intentFilter);
        C0995e.m7429B(this);
        C0995e.m7442O(this);
        C0995e.m7444Q(true);
    }

    @Override // android.app.Service
    public void onDestroy() {
        C0982s.m7373c("Serivice onDestroy");
        C0995e.m7433F();
        unregisterReceiver(this.f4687c);
        super.onDestroy();
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.C0995e.d
    /* JADX INFO: renamed from: s */
    public void mo5835s(int i, int i2, Bundle bundle) {
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.C0995e.d
    /* JADX INFO: renamed from: x */
    public void mo5836x(int i, int i2, String str) {
    }
}
