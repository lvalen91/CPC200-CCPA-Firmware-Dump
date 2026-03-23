package androidx.core.app;

import android.app.PendingIntent;
import androidx.core.graphics.drawable.IconCompat;
import androidx.versionedparcelable.AbstractC0486a;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(AbstractC0486a abstractC0486a) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        remoteActionCompat.f1709a = (IconCompat) abstractC0486a.m4031v(remoteActionCompat.f1709a, 1);
        remoteActionCompat.f1710b = abstractC0486a.m4021l(remoteActionCompat.f1710b, 2);
        remoteActionCompat.f1711c = abstractC0486a.m4021l(remoteActionCompat.f1711c, 3);
        remoteActionCompat.f1712d = (PendingIntent) abstractC0486a.m4027r(remoteActionCompat.f1712d, 4);
        remoteActionCompat.f1713e = abstractC0486a.m4017h(remoteActionCompat.f1713e, 5);
        remoteActionCompat.f1714f = abstractC0486a.m4017h(remoteActionCompat.f1714f, 6);
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, AbstractC0486a abstractC0486a) {
        abstractC0486a.m4033x(false, false);
        abstractC0486a.m4012M(remoteActionCompat.f1709a, 1);
        abstractC0486a.m4003D(remoteActionCompat.f1710b, 2);
        abstractC0486a.m4003D(remoteActionCompat.f1711c, 3);
        abstractC0486a.m4007H(remoteActionCompat.f1712d, 4);
        abstractC0486a.m4035z(remoteActionCompat.f1713e, 5);
        abstractC0486a.m4035z(remoteActionCompat.f1714f, 6);
    }
}
