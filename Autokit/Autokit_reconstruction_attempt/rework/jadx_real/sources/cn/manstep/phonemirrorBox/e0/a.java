package cn.manstep.phonemirrorBox.e0;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import cn.manstep.phonemirrorBox.util.s;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class a implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static a f1619c;
    private int a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f1620b;

    private a() {
    }

    public static a a() {
        if (f1619c == null) {
            synchronized (a.class) {
                if (f1619c == null) {
                    f1619c = new a();
                }
            }
        }
        return f1619c;
    }

    public boolean b() {
        return this.f1620b;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        int i = this.a - 1;
        this.a = i;
        if (this.f1620b && i == 0) {
            this.f1620b = false;
        }
        s.d("ActivityTracker", "onActivityPaused: bAppShow=" + this.f1620b + "," + activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        int i = this.a + 1;
        this.a = i;
        if (!this.f1620b && i > 0) {
            this.f1620b = true;
        }
        s.d("ActivityTracker", "onActivityResumed: bAppShow=" + this.f1620b + "," + activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }
}
