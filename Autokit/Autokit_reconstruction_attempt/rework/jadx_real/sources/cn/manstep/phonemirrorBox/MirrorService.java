package cn.manstep.phonemirrorBox;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import cn.manstep.phonemirrorBox.v0.e;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class MirrorService extends Service implements e.d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final IBinder f1536b = new b(this);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    BroadcastReceiver f1537c = new a();

    class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String stringExtra;
            cn.manstep.phonemirrorBox.util.s.c(intent.getAction());
            if (!intent.getAction().equals("cn.manstep.phonemirror.MirrorService.INTENT_MSG_IN") || (stringExtra = intent.getStringExtra("Action")) == null) {
                return;
            }
            if (stringExtra.equals("onResume")) {
                cn.manstep.phonemirrorBox.v0.e.Q(true);
                return;
            }
            if (stringExtra.equals("onStop")) {
                cn.manstep.phonemirrorBox.v0.e.Q(false);
                return;
            }
            if (stringExtra.equals("onDestroy")) {
                MirrorService.this.stopSelf();
            } else if (stringExtra.equals("OnRestart")) {
                cn.manstep.phonemirrorBox.v0.e.x(3);
                cn.manstep.phonemirrorBox.v0.e.x(4);
                cn.manstep.phonemirrorBox.v0.e.Q(true);
            }
        }
    }

    public class b extends Binder {
        public b(MirrorService mirrorService) {
        }
    }

    @Override // cn.manstep.phonemirrorBox.v0.e.d
    public void g(int i, int i2, int i3) {
        cn.manstep.phonemirrorBox.util.s.e("MirrorService " + i + " " + i2 + " " + i3);
        Intent intent = new Intent("cn.manstep.phonemirror.MirrorService.INTENT_MSG_OUT");
        intent.putExtra("WPARAM", 1);
        intent.putExtra("LPARAM", i2);
        sendBroadcast(intent);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        IBinder iBinder = this.f1536b;
        if (iBinder != null) {
            return iBinder;
        }
        throw new UnsupportedOperationException("Not yet implemented");
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        cn.manstep.phonemirrorBox.util.s.c("Serivice onCreate");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("cn.manstep.phonemirror.MirrorService.INTENT_MSG_IN");
        registerReceiver(this.f1537c, intentFilter);
        cn.manstep.phonemirrorBox.v0.e.B(this);
        cn.manstep.phonemirrorBox.v0.e.O(this);
        cn.manstep.phonemirrorBox.v0.e.Q(true);
    }

    @Override // android.app.Service
    public void onDestroy() {
        cn.manstep.phonemirrorBox.util.s.c("Serivice onDestroy");
        cn.manstep.phonemirrorBox.v0.e.F();
        unregisterReceiver(this.f1537c);
        super.onDestroy();
    }

    @Override // cn.manstep.phonemirrorBox.v0.e.d
    public void s(int i, int i2, Bundle bundle) {
    }

    @Override // cn.manstep.phonemirrorBox.v0.e.d
    public void x(int i, int i2, String str) {
    }
}
