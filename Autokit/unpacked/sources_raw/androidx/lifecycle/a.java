package androidx.lifecycle;

import android.annotation.SuppressLint;
import android.app.Application;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class a extends v {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private Application f816c;

    public a(Application application) {
        this.f816c = application;
    }

    public <T extends Application> T i() {
        return (T) this.f816c;
    }
}
