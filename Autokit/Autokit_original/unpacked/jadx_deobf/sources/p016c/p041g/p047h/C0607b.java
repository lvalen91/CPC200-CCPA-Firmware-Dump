package p016c.p041g.p047h;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: renamed from: c.g.h.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0607b {
    /* JADX INFO: renamed from: a */
    static Handler m4761a() {
        return Looper.myLooper() == null ? new Handler(Looper.getMainLooper()) : new Handler();
    }
}
