package cn.manstep.phonemirrorBox.p088u0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.util.C0982s;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.u0.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0957d extends BroadcastReceiver {
    /* JADX INFO: renamed from: a */
    private void m7133a(int i) {
        C0982s.m7373c("ZlinkReceiver,onKeyDown: cmd=" + i);
        if (i != 1) {
            if (i != 2) {
                if (i == 4) {
                    C0733d.m5578L(106);
                    return;
                }
                if (i == 5) {
                    C0733d.m5578L(300);
                    return;
                }
                if (i == 6) {
                    C0733d.m5578L(301);
                    return;
                }
                if (i == 19) {
                    C0733d.m5578L(102);
                    return;
                }
                if (i == 20) {
                    C0733d.m5578L(103);
                    return;
                }
                if (i == 66) {
                    C0733d.m5578L(104);
                    C0733d.m5578L(105);
                    return;
                }
                if (i == 85) {
                    C0733d.m5578L(203);
                    return;
                }
                if (i == 87) {
                    C0733d.m5578L(204);
                    return;
                }
                if (i == 88) {
                    C0733d.m5578L(205);
                    return;
                }
                if (i == 126) {
                    C0733d.m5578L(201);
                    return;
                }
                if (i == 127) {
                    C0733d.m5578L(202);
                    return;
                }
                switch (i) {
                    case 1500:
                        C0733d.m5578L(5);
                        C0733d.m5578L(6);
                        break;
                    case 1501:
                        break;
                    case 1502:
                        break;
                    default:
                        switch (i) {
                            case 1504:
                                C0733d.m5578L(400);
                                break;
                            case 1505:
                                C0733d.m5578L(401);
                                break;
                            case 1506:
                                C0733d.m5578L(402);
                                break;
                            case 1507:
                                C0733d.m5578L(403);
                                break;
                            case 1508:
                                C0733d.m5578L(200);
                                break;
                        }
                        break;
                }
            }
            C0733d.m5578L(101);
            return;
        }
        C0733d.m5578L(100);
    }

    /* JADX INFO: renamed from: b */
    public void m7134b(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.zjinnova.zlink");
        intentFilter.addAction("com.zjinnova.zlink.action.BACKCAR_START");
        intentFilter.addAction("com.zjinnova.zlink.action.BACKCAR_STOP");
        intentFilter.addAction("com.zjinnova.zlink.action.OUT_DARK_START");
        intentFilter.addAction("com.zjinnova.zlink.action.OUT_DARK_STOP");
        context.registerReceiver(this, intentFilter);
    }

    /* JADX INFO: renamed from: c */
    public void m7135c(Context context) {
        context.unregisterReceiver(this);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        C0982s.m7373c("ZlinkReceiver,onReceive: " + action);
        if (action != null) {
            byte b2 = -1;
            switch (action.hashCode()) {
                case 448328082:
                    if (action.equals("com.zjinnova.zlink.action.BACKCAR_START")) {
                        b2 = 2;
                    }
                    break;
                case 568651954:
                    if (action.equals("com.zjinnova.zlink.action.BACKCAR_STOP")) {
                        b2 = 3;
                    }
                    break;
                case 978935124:
                    if (action.equals("com.zjinnova.zlink")) {
                        b2 = 4;
                    }
                    break;
                case 1023038972:
                    if (action.equals("com.zjinnova.zlink.action.OUT_DARK_STOP")) {
                        b2 = 1;
                    }
                    break;
                case 1649423752:
                    if (action.equals("com.zjinnova.zlink.action.OUT_DARK_START")) {
                        b2 = 0;
                    }
                    break;
            }
            if (b2 == 4 && "REQ_SPEC_FUNC_CMD".equals(intent.getStringExtra("command"))) {
                m7133a(intent.getIntExtra("specFuncCode", 0));
            }
        }
    }
}
