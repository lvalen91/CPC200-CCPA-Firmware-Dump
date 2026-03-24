package androidx.media;

import android.media.session.MediaSessionManager;
import android.os.Build;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
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
