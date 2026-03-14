package cn.manstep.phonemirrorBox;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import cn.manstep.phonemirrorBox.BoxInterface.C0730a;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.p089v0.C0995e;
import cn.manstep.phonemirrorBox.util.C0982s;
import com.stub.StubApp;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class MediaButtonReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a */
    private static boolean f4683a;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MediaButtonReceiver$a */
    public interface InterfaceC0783a {
        /* JADX INFO: renamed from: E */
        void mo5869E(int i, boolean z);
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MediaButtonReceiver$b */
    public static class C0784b {

        /* JADX INFO: renamed from: b */
        private static C0784b f4684b;

        /* JADX INFO: renamed from: a */
        private InterfaceC0783a f4685a = null;

        private C0784b() {
        }

        /* JADX INFO: renamed from: a */
        public static C0784b m5977a() {
            if (f4684b == null) {
                synchronized (C0784b.class) {
                    if (f4684b == null) {
                        f4684b = new C0784b();
                    }
                }
            }
            return f4684b;
        }

        /* JADX INFO: renamed from: b */
        public void m5978b(int i, boolean z) {
            InterfaceC0783a interfaceC0783a = this.f4685a;
            if (interfaceC0783a != null) {
                interfaceC0783a.mo5869E(i, z);
            }
        }

        /* JADX INFO: renamed from: c */
        public void m5979c(InterfaceC0783a interfaceC0783a) {
            this.f4685a = interfaceC0783a;
        }
    }

    static {
        StubApp.interface11(1529);
    }

    /* JADX INFO: renamed from: a */
    public static void m5976a(Intent intent, String str) {
        if (intent == null || str == null) {
            return;
        }
        Bundle extras = intent.getExtras();
        StringBuilder sb = new StringBuilder(str);
        if (extras == null) {
            C0982s.m7376f("MediaButtonReceiver", "getExtras: " + str + " no extras");
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
        C0982s.m7374d("MediaButtonReceiver", "getExtras: " + ((Object) sb));
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (context == null) {
            C0982s.m7376f("MediaButtonReceiver", "onReceive: context = null");
            return;
        }
        if (intent == null) {
            C0982s.m7376f("MediaButtonReceiver", "onReceive: intent = null");
            return;
        }
        String action = intent.getAction();
        if (action == null) {
            C0982s.m7376f("MediaButtonReceiver", "onReceive: action = null");
            return;
        }
        C0982s.m7374d("MediaButtonReceiver", "onReceive: action=" + action);
        if (action.equals("android.intent.action.MEDIA_BUTTON") || action.equals("hy.intent.action.MEDIA_BUTTON")) {
            KeyEvent keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT");
            if (keyEvent == null) {
                C0982s.m7376f("MediaButtonReceiver", "onReceive: KeyEvent = null");
                m5976a(intent, action);
                return;
            }
            int keyCode = keyEvent.getKeyCode();
            int action2 = keyEvent.getAction();
            int repeatCount = keyEvent.getRepeatCount();
            C0982s.m7374d("MediaButtonReceiver", "keyCode: " + keyCode + ", keyAction: " + action2 + ", repeatCount: " + repeatCount);
            C0982s.m7374d("MediaButtonReceiver", keyEvent.toString());
            if (action2 != 1) {
                if (repeatCount > 0) {
                    f4683a = true;
                    return;
                } else {
                    f4683a = false;
                    return;
                }
            }
            C0730a.m5423G();
            if (C0733d.m5598s() == null || !C0733d.m5598s().mo6923e()) {
                C0982s.m7374d("MediaButtonReceiver", "KeyCodeNotify: keyCode=" + keyCode + ", bLongPressKey=" + f4683a);
                C0784b.m5977a().m5978b(keyCode, f4683a);
                return;
            }
            if (f4683a) {
                int iM6069g = C0795b0.m6069g(context, keyCode);
                C0995e.m7436I(iM6069g);
                C0982s.m7374d("MediaButtonReceiver", "sendCarControlByKey: cmd=" + iM6069g + ", bLongPressKey=" + f4683a);
                return;
            }
            int iM6068f = C0795b0.m6068f(context, keyCode);
            C0995e.m7436I(iM6068f);
            C0982s.m7374d("MediaButtonReceiver", "sendCarControlByKey: cmd=" + iM6068f + ", bLongPressKey=" + f4683a);
        }
    }
}
