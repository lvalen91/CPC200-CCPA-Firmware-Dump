package androidx.media;

import android.media.session.MediaSessionManager;
import android.os.Build;

/* JADX INFO: renamed from: androidx.media.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0413a {

    /* JADX INFO: renamed from: a */
    InterfaceC0414b f2570a;

    public C0413a(String str, int i, int i2) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f2570a = new C0415c(str, i, i2);
        } else {
            this.f2570a = new C0416d(str, i, i2);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C0413a) {
            return this.f2570a.equals(((C0413a) obj).f2570a);
        }
        return false;
    }

    public int hashCode() {
        return this.f2570a.hashCode();
    }

    public C0413a(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        this.f2570a = new C0415c(remoteUserInfo);
    }
}
