package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import androidx.core.app.C0231a;
import androidx.core.content.C0242a;
import p016c.p041g.p049j.C0626h;

/* JADX INFO: renamed from: androidx.fragment.app.k */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0363k<E> extends AbstractC0359g {

    /* JADX INFO: renamed from: b */
    private final Activity f2270b;

    /* JADX INFO: renamed from: c */
    private final Context f2271c;

    /* JADX INFO: renamed from: d */
    private final Handler f2272d;

    /* JADX INFO: renamed from: e */
    final AbstractC0366n f2273e;

    AbstractC0363k(ActivityC0356e activityC0356e) {
        this(activityC0356e, activityC0356e, new Handler(), 0);
    }

    @Override // androidx.fragment.app.AbstractC0359g
    /* JADX INFO: renamed from: c */
    public View mo2509c(int i) {
        return null;
    }

    @Override // androidx.fragment.app.AbstractC0359g
    /* JADX INFO: renamed from: d */
    public boolean mo2510d() {
        return true;
    }

    /* JADX INFO: renamed from: e */
    Activity m2658e() {
        return this.f2270b;
    }

    /* JADX INFO: renamed from: f */
    Context m2659f() {
        return this.f2271c;
    }

    /* JADX INFO: renamed from: g */
    Handler m2660g() {
        return this.f2272d;
    }

    /* JADX INFO: renamed from: h */
    public abstract E mo2619h();

    /* JADX INFO: renamed from: i */
    public LayoutInflater mo2620i() {
        return LayoutInflater.from(this.f2271c);
    }

    /* JADX INFO: renamed from: j */
    public boolean mo2621j(Fragment fragment) {
        return true;
    }

    /* JADX INFO: renamed from: k */
    public void m2661k(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i, Bundle bundle) {
        if (i != -1) {
            throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
        }
        C0242a.m1703h(this.f2271c, intent, bundle);
    }

    @Deprecated
    /* JADX INFO: renamed from: l */
    public void m2662l(Fragment fragment, @SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        if (i != -1) {
            throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
        }
        C0231a.m1648r(this.f2270b, intentSender, i, intent, i2, i3, i4, bundle);
    }

    /* JADX INFO: renamed from: m */
    public void mo2622m() {
    }

    AbstractC0363k(Activity activity, Context context, Handler handler, int i) {
        this.f2273e = new C0367o();
        this.f2270b = activity;
        C0626h.m4856f(context, "context == null");
        this.f2271c = context;
        C0626h.m4856f(handler, "handler == null");
        this.f2272d = handler;
    }
}
