package androidx.media;

import android.media.session.MediaSessionManager;
import p016c.p041g.p049j.C0621c;

/* JADX INFO: renamed from: androidx.media.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
final class C0415c implements InterfaceC0414b {

    /* JADX INFO: renamed from: a */
    final MediaSessionManager.RemoteUserInfo f2571a;

    C0415c(String str, int i, int i2) {
        this.f2571a = new MediaSessionManager.RemoteUserInfo(str, i, i2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C0415c) {
            return this.f2571a.equals(((C0415c) obj).f2571a);
        }
        return false;
    }

    public int hashCode() {
        return C0621c.m4847b(this.f2571a);
    }

    C0415c(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        this.f2571a = remoteUserInfo;
    }
}
