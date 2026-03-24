package cn.manstep.phonemirrorBox.x0;

import android.app.Application;
import android.content.Context;
import com.stub.StubApp;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class c extends androidx.lifecycle.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final WeakReference<Context> f1964d;

    public c(Application application) {
        super(application);
        this.f1964d = new WeakReference<>(StubApp.getOrigApplicationContext(application.getApplicationContext()));
    }
}
