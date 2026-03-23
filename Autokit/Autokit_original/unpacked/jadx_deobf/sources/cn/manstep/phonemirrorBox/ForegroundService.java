package cn.manstep.phonemirrorBox;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import cn.manstep.phonemirrorBox.util.C0982s;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class ForegroundService extends Service {
    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        C0982s.m7373c("ForegroundService,onCreate: ######");
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        C0982s.m7373c("ForegroundService,onLowMemory: ######");
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        C0982s.m7373c("ForegroundService,onLowMemory: ######");
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (Build.VERSION.SDK_INT < 26) {
            startForeground(1, new Notification());
        } else {
            Intent intent2 = new Intent(this, (Class<?>) MainActivity.class);
            intent2.addFlags(268435456);
            PendingIntent activity = PendingIntent.getActivity(this, 0, intent2, 0);
            NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
            NotificationChannel notificationChannel = new NotificationChannel("ForegroundService", "AutoKit", 1);
            if (notificationManager != null) {
                notificationManager.createNotificationChannel(notificationChannel);
                startForeground(1, new Notification.Builder(this, "ForegroundService").setSmallIcon(2131230907).setContentTitle(C0925p.f5864a).setContentText(getResources().getString(2131689573)).setContentIntent(activity).build());
            }
        }
        return super.onStartCommand(intent, i, i2);
    }

    @Override // android.app.Service, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
        C0982s.m7373c("ForegroundService,onTrimMemory: level = " + i);
    }
}
