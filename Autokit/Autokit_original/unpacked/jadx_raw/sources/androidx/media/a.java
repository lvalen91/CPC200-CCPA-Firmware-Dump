package androidx.media;

import android.media.session.MediaSessionManager;
import android.os.Build;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class a {
    b a;

    public a(String str, int i, int i2) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.a = new c(str, i, i2);
        } else {
            this.a = new d(str, i, i2);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof a) {
            return this.a.equals(((a) obj).a);
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public a(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        this.a = new c(remoteUserInfo);
    }
}
