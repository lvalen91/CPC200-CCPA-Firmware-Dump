package cn.manstep.phonemirrorBox;

import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.os.Build;
import android.os.SystemClock;
import android.util.Log;
import cn.manstep.phonemirrorBox.util.C0982s;
import com.stub.StubApp;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class AutoStartReceiver extends BroadcastReceiver {
    /* JADX INFO: renamed from: a */
    private void m5383a(Context context) {
        C0982s.m7373c("AutoStartReceiver,startAutoStartService: Start AutoStartService");
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                context.startForegroundService(new Intent(context, (Class<?>) AutoStartService.class));
            } else {
                context.startService(new Intent(context, (Class<?>) AutoStartService.class));
            }
        } catch (Error | Exception unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x008b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x008c  */
    @Override // android.content.BroadcastReceiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onReceive(Context context, Intent intent) {
        AudioManager audioManager;
        C0982s.m7373c("AutoStartReceiver,onReceive: " + intent.toString());
        if (!intent.getAction().equals("android.intent.action.BOOT_COMPLETED")) {
            return;
        }
        boolean zM6093o = C0795b0.m6071i().m6093o("BootAutoStart", false);
        C0982s.m7373c("AutoStartReceiver,onReceive: Intent.ACTION_BOOT_COMPLETED: " + SystemClock.elapsedRealtime() + "," + zM6093o);
        m5383a(StubApp.getOrigApplicationContext(context.getApplicationContext()));
        if (!zM6093o) {
            if (C0953u.m7001z().m7015N()) {
                Intent intent2 = new Intent(context, (Class<?>) Main1Activity.class);
                intent2.addFlags(268435456);
                context.startActivity(intent2);
            }
            if (Build.VERSION.SDK_INT < 26) {
                return;
            }
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            if ((Build.VERSION.SDK_INT < 24 || notificationManager.isNotificationPolicyAccessGranted()) && (audioManager = (AudioManager) context.getSystemService("audio")) != null) {
                int iM6091m = C0795b0.m6071i().m6091m("STREAM_MUSIC", -1);
                int iM6091m2 = C0795b0.m6071i().m6091m("STREAM_RING", -1);
                int iM6091m3 = C0795b0.m6071i().m6091m("STREAM_VOICE_CALL", -1);
                if (Build.VERSION.SDK_INT < 24 || notificationManager.isNotificationPolicyAccessGranted()) {
                    if (iM6091m != -1) {
                        try {
                            audioManager.setStreamVolume(3, iM6091m, 4);
                        } catch (Exception e) {
                            C0982s.m7375e("AutoStartReceiver,\n" + Log.getStackTraceString(e));
                            return;
                        }
                    }
                    if (iM6091m2 != -1) {
                        audioManager.setStreamVolume(2, iM6091m2, 4);
                    }
                    if (iM6091m3 != -1) {
                        audioManager.setStreamVolume(0, iM6091m3, 4);
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        Intent intent3 = new Intent(context, (Class<?>) MainActivity.class);
        intent3.addFlags(268435456);
        context.startActivity(intent3);
        if (Build.VERSION.SDK_INT < 26) {
        }
    }
}
