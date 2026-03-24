package androidx.lifecycle;

import android.annotation.SuppressLint;
import android.app.Application;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
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
