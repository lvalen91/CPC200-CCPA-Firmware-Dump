package cn.manstep.phonemirrorBox.p091x0;

import android.app.Application;
import android.content.Context;
import androidx.lifecycle.C0384a;
import com.stub.StubApp;
import java.lang.ref.WeakReference;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1005c extends C0384a {

    /* JADX INFO: renamed from: d */
    protected final WeakReference<Context> f6272d;

    public C1005c(Application application) {
        super(application);
        this.f6272d = new WeakReference<>(StubApp.getOrigApplicationContext(application.getApplicationContext()));
    }
}
