package cn.manstep.phonemirrorBox.x0;

import android.app.Application;
import android.content.Context;
import com.stub.StubApp;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class c extends androidx.lifecycle.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final WeakReference<Context> f1964d;

    public c(Application application) {
        super(application);
        this.f1964d = new WeakReference<>(StubApp.getOrigApplicationContext(application.getApplicationContext()));
    }
}
