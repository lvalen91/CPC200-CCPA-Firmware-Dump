package cn.manstep.phonemirrorBox.u0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import cn.manstep.phonemirrorBox.util.s;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class d extends BroadcastReceiver {
    private void a(int i) {
        s.c("ZlinkReceiver,onKeyDown: cmd=" + i);
        if (i != 1) {
            if (i != 2) {
                if (i == 4) {
                    cn.manstep.phonemirrorBox.BoxInterface.d.L(106);
                    return;
                }
                if (i == 5) {
                    cn.manstep.phonemirrorBox.BoxInterface.d.L(300);
                    return;
                }
                if (i == 6) {
                    cn.manstep.phonemirrorBox.BoxInterface.d.L(301);
                    return;
                }
                if (i == 19) {
                    cn.manstep.phonemirrorBox.BoxInterface.d.L(102);
                    return;
                }
                if (i == 20) {
                    cn.manstep.phonemirrorBox.BoxInterface.d.L(103);
                    return;
                }
                if (i == 66) {
                    cn.manstep.phonemirrorBox.BoxInterface.d.L(104);
                    cn.manstep.phonemirrorBox.BoxInterface.d.L(105);
                    return;
                }
                if (i == 85) {
                    cn.manstep.phonemirrorBox.BoxInterface.d.L(203);
                    return;
                }
                if (i == 87) {
                    cn.manstep.phonemirrorBox.BoxInterface.d.L(204);
                    return;
                }
                if (i == 88) {
                    cn.manstep.phonemirrorBox.BoxInterface.d.L(205);
                    return;
                }
                if (i == 126) {
                    cn.manstep.phonemirrorBox.BoxInterface.d.L(201);
                    return;
                }
                if (i == 127) {
                    cn.manstep.phonemirrorBox.BoxInterface.d.L(202);
                    return;
                }
                switch (i) {
                    case 1500:
                        cn.manstep.phonemirrorBox.BoxInterface.d.L(5);
                        cn.manstep.phonemirrorBox.BoxInterface.d.L(6);
                        break;
                    case 1501:
                        break;
                    case 1502:
                        break;
                    default:
                        switch (i) {
                            case 1504:
                                cn.manstep.phonemirrorBox.BoxInterface.d.L(400);
                                break;
                            case 1505:
                                cn.manstep.phonemirrorBox.BoxInterface.d.L(401);
                                break;
                            case 1506:
                                cn.manstep.phonemirrorBox.BoxInterface.d.L(402);
                                break;
                            case 1507:
                                cn.manstep.phonemirrorBox.BoxInterface.d.L(403);
                                break;
                            case 1508:
                                cn.manstep.phonemirrorBox.BoxInterface.d.L(200);
                                break;
                        }
                        break;
                }
            }
            cn.manstep.phonemirrorBox.BoxInterface.d.L(101);
            return;
        }
        cn.manstep.phonemirrorBox.BoxInterface.d.L(100);
    }

    public void b(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.zjinnova.zlink");
        intentFilter.addAction("com.zjinnova.zlink.action.BACKCAR_START");
        intentFilter.addAction("com.zjinnova.zlink.action.BACKCAR_STOP");
        intentFilter.addAction("com.zjinnova.zlink.action.OUT_DARK_START");
        intentFilter.addAction("com.zjinnova.zlink.action.OUT_DARK_STOP");
        context.registerReceiver(this, intentFilter);
    }

    public void c(Context context) {
        context.unregisterReceiver(this);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        s.c("ZlinkReceiver,onReceive: " + action);
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
                a(intent.getIntExtra("specFuncCode", 0));
            }
        }
    }
}
