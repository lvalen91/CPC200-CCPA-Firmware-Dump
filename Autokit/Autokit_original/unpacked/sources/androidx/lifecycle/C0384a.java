package androidx.lifecycle;

import android.annotation.SuppressLint;
import android.app.Application;

/* JADX INFO: renamed from: androidx.lifecycle.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0384a extends AbstractC0408v {

    /* JADX INFO: renamed from: c */
    @SuppressLint({"StaticFieldLeak"})
    private Application f2500c;

    public C0384a(Application application) {
        this.f2500c = application;
    }

    /* JADX INFO: renamed from: i */
    public <T extends Application> T m2977i() {
        return (T) this.f2500c;
    }
}
