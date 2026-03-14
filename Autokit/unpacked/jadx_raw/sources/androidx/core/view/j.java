package androidx.core.view;

import android.view.MotionEvent;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class j {
    public static boolean a(MotionEvent motionEvent, int i) {
        return (motionEvent.getSource() & i) == i;
    }
}
