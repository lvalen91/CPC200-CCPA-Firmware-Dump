package androidx.core.widget;

import android.os.Build;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public interface b {
    public static final boolean a;

    static {
        a = Build.VERSION.SDK_INT >= 27;
    }
}
