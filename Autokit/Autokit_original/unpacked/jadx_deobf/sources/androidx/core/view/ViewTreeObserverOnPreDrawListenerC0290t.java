package androidx.core.view;

import android.view.View;
import android.view.ViewTreeObserver;

/* JADX INFO: renamed from: androidx.core.view.t */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class ViewTreeObserverOnPreDrawListenerC0290t implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: b */
    private final View f1894b;

    /* JADX INFO: renamed from: c */
    private ViewTreeObserver f1895c;

    /* JADX INFO: renamed from: d */
    private final Runnable f1896d;

    private ViewTreeObserverOnPreDrawListenerC0290t(View view, Runnable runnable) {
        this.f1894b = view;
        this.f1895c = view.getViewTreeObserver();
        this.f1896d = runnable;
    }

    /* JADX INFO: renamed from: a */
    public static ViewTreeObserverOnPreDrawListenerC0290t m2040a(View view, Runnable runnable) {
        if (view == null) {
            throw new NullPointerException("view == null");
        }
        if (runnable == null) {
            throw new NullPointerException("runnable == null");
        }
        ViewTreeObserverOnPreDrawListenerC0290t viewTreeObserverOnPreDrawListenerC0290t = new ViewTreeObserverOnPreDrawListenerC0290t(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(viewTreeObserverOnPreDrawListenerC0290t);
        view.addOnAttachStateChangeListener(viewTreeObserverOnPreDrawListenerC0290t);
        return viewTreeObserverOnPreDrawListenerC0290t;
    }

    /* JADX INFO: renamed from: b */
    public void m2041b() {
        if (this.f1895c.isAlive()) {
            this.f1895c.removeOnPreDrawListener(this);
        } else {
            this.f1894b.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.f1894b.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        m2041b();
        this.f1896d.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        this.f1895c = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        m2041b();
    }
}
