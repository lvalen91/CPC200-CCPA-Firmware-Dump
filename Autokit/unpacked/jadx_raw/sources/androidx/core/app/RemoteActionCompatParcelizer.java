package androidx.core.app;

import android.app.PendingIntent;
import androidx.core.graphics.drawable.IconCompat;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(androidx.versionedparcelable.a aVar) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        remoteActionCompat.a = (IconCompat) aVar.v(remoteActionCompat.a, 1);
        remoteActionCompat.f501b = aVar.l(remoteActionCompat.f501b, 2);
        remoteActionCompat.f502c = aVar.l(remoteActionCompat.f502c, 3);
        remoteActionCompat.f503d = (PendingIntent) aVar.r(remoteActionCompat.f503d, 4);
        remoteActionCompat.e = aVar.h(remoteActionCompat.e, 5);
        remoteActionCompat.f = aVar.h(remoteActionCompat.f, 6);
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, androidx.versionedparcelable.a aVar) {
        aVar.x(false, false);
        aVar.M(remoteActionCompat.a, 1);
        aVar.D(remoteActionCompat.f501b, 2);
        aVar.D(remoteActionCompat.f502c, 3);
        aVar.H(remoteActionCompat.f503d, 4);
        aVar.z(remoteActionCompat.e, 5);
        aVar.z(remoteActionCompat.f, 6);
    }
}
