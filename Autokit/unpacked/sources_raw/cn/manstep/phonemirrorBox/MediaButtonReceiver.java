package cn.manstep.phonemirrorBox;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import cn.manstep.phonemirrorBox.BoxInterface.d;
import com.stub.StubApp;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class MediaButtonReceiver extends BroadcastReceiver {
    private static boolean a;

    public interface a {
        void E(int i, boolean z);
    }

    public static class b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static b f1535b;
        private a a = null;

        private b() {
        }

        public static b a() {
            if (f1535b == null) {
                synchronized (b.class) {
                    if (f1535b == null) {
                        f1535b = new b();
                    }
                }
            }
            return f1535b;
        }

        public void b(int i, boolean z) {
            a aVar = this.a;
            if (aVar != null) {
                aVar.E(i, z);
            }
        }

        public void c(a aVar) {
            this.a = aVar;
        }
    }

    static {
        StubApp.interface11(1529);
    }

    public static void a(Intent intent, String str) {
        if (intent == null || str == null) {
            return;
        }
        Bundle extras = intent.getExtras();
        StringBuilder sb = new StringBuilder(str);
        if (extras == null) {
            cn.manstep.phonemirrorBox.util.s.f("MediaButtonReceiver", "getExtras: " + str + " no extras");
            return;
        }
        for (String str2 : extras.keySet()) {
            Object obj = extras.get(str2);
            if (obj != null) {
                if (obj instanceof Integer) {
                    sb.append("\n");
                    sb.append(str2);
                    sb.append("==int==");
                    sb.append(obj);
                    sb.append("====");
                    sb.append(obj.getClass());
                } else if (obj instanceof String) {
                    sb.append("\n");
                    sb.append(str2);
                    sb.append("==String==");
                    sb.append(obj);
                } else if (obj instanceof Boolean) {
                    sb.append("\n");
                    sb.append(str2);
                    sb.append("==boolean==");
                    sb.append(obj);
                } else {
                    System.out.println(str + "====" + obj);
                    sb.append("\n");
                    sb.append(str2);
                    sb.append("==");
                    sb.append(obj.getClass());
                    sb.append("==");
                    sb.append(obj);
                }
            }
        }
        cn.manstep.phonemirrorBox.util.s.d("MediaButtonReceiver", "getExtras: " + ((Object) sb));
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (context == null) {
            cn.manstep.phonemirrorBox.util.s.f("MediaButtonReceiver", "onReceive: context = null");
            return;
        }
        if (intent == null) {
            cn.manstep.phonemirrorBox.util.s.f("MediaButtonReceiver", "onReceive: intent = null");
            return;
        }
        String action = intent.getAction();
        if (action == null) {
            cn.manstep.phonemirrorBox.util.s.f("MediaButtonReceiver", "onReceive: action = null");
            return;
        }
        cn.manstep.phonemirrorBox.util.s.d("MediaButtonReceiver", "onReceive: action=" + action);
        if (action.equals("android.intent.action.MEDIA_BUTTON") || action.equals("hy.intent.action.MEDIA_BUTTON")) {
            KeyEvent keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT");
            if (keyEvent == null) {
                cn.manstep.phonemirrorBox.util.s.f("MediaButtonReceiver", "onReceive: KeyEvent = null");
                a(intent, action);
                return;
            }
            int keyCode = keyEvent.getKeyCode();
            int action2 = keyEvent.getAction();
            int repeatCount = keyEvent.getRepeatCount();
            cn.manstep.phonemirrorBox.util.s.d("MediaButtonReceiver", "keyCode: " + keyCode + ", keyAction: " + action2 + ", repeatCount: " + repeatCount);
            cn.manstep.phonemirrorBox.util.s.d("MediaButtonReceiver", keyEvent.toString());
            if (action2 != 1) {
                if (repeatCount > 0) {
                    a = true;
                    return;
                } else {
                    a = false;
                    return;
                }
            }
            cn.manstep.phonemirrorBox.BoxInterface.a.G();
            if (d.s() == null || !d.s().e()) {
                cn.manstep.phonemirrorBox.util.s.d("MediaButtonReceiver", "KeyCodeNotify: keyCode=" + keyCode + ", bLongPressKey=" + a);
                b.a().b(keyCode, a);
                return;
            }
            if (a) {
                int iG = b0.g(context, keyCode);
                cn.manstep.phonemirrorBox.v0.e.I(iG);
                cn.manstep.phonemirrorBox.util.s.d("MediaButtonReceiver", "sendCarControlByKey: cmd=" + iG + ", bLongPressKey=" + a);
                return;
            }
            int iF = b0.f(context, keyCode);
            cn.manstep.phonemirrorBox.v0.e.I(iF);
            cn.manstep.phonemirrorBox.util.s.d("MediaButtonReceiver", "sendCarControlByKey: cmd=" + iF + ", bLongPressKey=" + a);
        }
    }
}
