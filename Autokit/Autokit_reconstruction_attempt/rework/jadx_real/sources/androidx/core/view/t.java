package androidx.core.view;

import android.view.View;
import android.view.ViewTreeObserver;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public final class t implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final View f596b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ViewTreeObserver f597c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Runnable f598d;

    private t(View view, Runnable runnable) {
        this.f596b = view;
        this.f597c = view.getViewTreeObserver();
        this.f598d = runnable;
    }

    public static t a(View view, Runnable runnable) {
        if (view == null) {
            throw new NullPointerException("view == null");
        }
        if (runnable == null) {
            throw new NullPointerException("runnable == null");
        }
        t tVar = new t(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(tVar);
        view.addOnAttachStateChangeListener(tVar);
        return tVar;
    }

    public void b() {
        if (this.f597c.isAlive()) {
            this.f597c.removeOnPreDrawListener(this);
        } else {
            this.f596b.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.f596b.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        b();
        this.f598d.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        this.f597c = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        b();
    }
}
