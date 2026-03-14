package androidx.core.view;

import android.view.MotionEvent;

/* JADX INFO: renamed from: androidx.core.view.j */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0280j {
    /* JADX INFO: renamed from: a */
    public static boolean m2016a(MotionEvent motionEvent, int i) {
        return (motionEvent.getSource() & i) == i;
    }
}
