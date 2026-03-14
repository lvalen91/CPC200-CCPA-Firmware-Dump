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

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class k<E> extends g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Activity f729b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f730c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Handler f731d;
    final n e;

    k(e eVar) {
        this(eVar, eVar, new Handler(), 0);
    }

    @Override // androidx.fragment.app.g
    public View c(int i) {
        return null;
    }

    @Override // androidx.fragment.app.g
    public boolean d() {
        return true;
    }

    Activity e() {
        return this.f729b;
    }

    Context f() {
        return this.f730c;
    }

    Handler g() {
        return this.f731d;
    }

    public abstract E h();

    public LayoutInflater i() {
        return LayoutInflater.from(this.f730c);
    }

    public boolean j(Fragment fragment) {
        return true;
    }

    public void k(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i, Bundle bundle) {
        if (i != -1) {
            throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
        }
        androidx.core.content.a.h(this.f730c, intent, bundle);
    }

    @Deprecated
    public void l(Fragment fragment, @SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        if (i != -1) {
            throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
        }
        androidx.core.app.a.r(this.f729b, intentSender, i, intent, i2, i3, i4, bundle);
    }

    public void m() {
    }

    k(Activity activity, Context context, Handler handler, int i) {
        this.e = new o();
        this.f729b = activity;
        c.g.j.h.f(context, "context == null");
        this.f730c = context;
        c.g.j.h.f(handler, "handler == null");
        this.f731d = handler;
    }
}
