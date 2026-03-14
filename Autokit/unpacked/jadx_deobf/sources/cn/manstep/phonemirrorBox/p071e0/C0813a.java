package cn.manstep.phonemirrorBox.p071e0;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import cn.manstep.phonemirrorBox.util.C0982s;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.e0.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0813a implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: c */
    private static C0813a f4865c;

    /* JADX INFO: renamed from: a */
    private int f4866a = 0;

    /* JADX INFO: renamed from: b */
    private boolean f4867b;

    private C0813a() {
    }

    /* JADX INFO: renamed from: a */
    public static C0813a m6190a() {
        if (f4865c == null) {
            synchronized (C0813a.class) {
                if (f4865c == null) {
                    f4865c = new C0813a();
                }
            }
        }
        return f4865c;
    }

    /* JADX INFO: renamed from: b */
    public boolean m6191b() {
        return this.f4867b;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        int i = this.f4866a - 1;
        this.f4866a = i;
        if (this.f4867b && i == 0) {
            this.f4867b = false;
        }
        C0982s.m7374d("ActivityTracker", "onActivityPaused: bAppShow=" + this.f4867b + "," + activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        int i = this.f4866a + 1;
        this.f4866a = i;
        if (!this.f4867b && i > 0) {
            this.f4867b = true;
        }
        C0982s.m7374d("ActivityTracker", "onActivityResumed: bAppShow=" + this.f4867b + "," + activity);
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
