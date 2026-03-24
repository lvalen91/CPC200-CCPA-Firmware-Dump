package cn.manstep.phonemirrorBox;

import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.os.Build;
import android.os.SystemClock;
import android.util.Log;
import com.stub.StubApp;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class AutoStartReceiver extends BroadcastReceiver {
    private void a(Context context) {
        cn.manstep.phonemirrorBox.util.s.c("AutoStartReceiver,startAutoStartService: Start AutoStartService");
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
        cn.manstep.phonemirrorBox.util.s.c("AutoStartReceiver,onReceive: " + intent.toString());
        if (!intent.getAction().equals("android.intent.action.BOOT_COMPLETED")) {
            return;
        }
        boolean zO = b0.i().o("BootAutoStart", false);
        cn.manstep.phonemirrorBox.util.s.c("AutoStartReceiver,onReceive: Intent.ACTION_BOOT_COMPLETED: " + SystemClock.elapsedRealtime() + "," + zO);
        a(StubApp.getOrigApplicationContext(context.getApplicationContext()));
        if (!zO) {
            if (u.z().N()) {
                Intent intent2 = new Intent(context, (Class<?>) Main1Activity.class);
                intent2.addFlags(268435456);
                context.startActivity(intent2);
            }
            if (Build.VERSION.SDK_INT < 26) {
                return;
            }
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            if ((Build.VERSION.SDK_INT < 24 || notificationManager.isNotificationPolicyAccessGranted()) && (audioManager = (AudioManager) context.getSystemService("audio")) != null) {
                int iM = b0.i().m("STREAM_MUSIC", -1);
                int iM2 = b0.i().m("STREAM_RING", -1);
                int iM3 = b0.i().m("STREAM_VOICE_CALL", -1);
                if (Build.VERSION.SDK_INT < 24 || notificationManager.isNotificationPolicyAccessGranted()) {
                    if (iM != -1) {
                        try {
                            audioManager.setStreamVolume(3, iM, 4);
                        } catch (Exception e) {
                            cn.manstep.phonemirrorBox.util.s.e("AutoStartReceiver,\n" + Log.getStackTraceString(e));
                            return;
                        }
                    }
                    if (iM2 != -1) {
                        audioManager.setStreamVolume(2, iM2, 4);
                    }
                    if (iM3 != -1) {
                        audioManager.setStreamVolume(0, iM3, 4);
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
