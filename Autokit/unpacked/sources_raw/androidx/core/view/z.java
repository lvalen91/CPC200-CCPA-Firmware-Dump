package androidx.core.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class z {
    private WeakReference<View> a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Runnable f611b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Runnable f612c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f613d = -1;

    class a extends AnimatorListenerAdapter {
        final /* synthetic */ a0 a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f614b;

        a(z zVar, a0 a0Var, View view) {
            this.a = a0Var;
            this.f614b = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.a.c(this.f614b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.a.a(this.f614b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.a.b(this.f614b);
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {
        final /* synthetic */ c0 a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f615b;

        b(z zVar, c0 c0Var, View view) {
            this.a = c0Var;
            this.f615b = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.a.a(this.f615b);
        }
    }

    static class c implements a0 {
        z a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f616b;

        c(z zVar) {
            this.a = zVar;
        }

        @Override // androidx.core.view.a0
        @SuppressLint({"WrongConstant"})
        public void a(View view) {
            int i = this.a.f613d;
            if (i > -1) {
                view.setLayerType(i, null);
                this.a.f613d = -1;
            }
            if (Build.VERSION.SDK_INT >= 16 || !this.f616b) {
                z zVar = this.a;
                Runnable runnable = zVar.f612c;
                if (runnable != null) {
                    zVar.f612c = null;
                    runnable.run();
                }
                Object tag = view.getTag(2113929216);
                a0 a0Var = tag instanceof a0 ? (a0) tag : null;
                if (a0Var != null) {
                    a0Var.a(view);
                }
                this.f616b = true;
            }
        }

        @Override // androidx.core.view.a0
        public void b(View view) {
            this.f616b = false;
            if (this.a.f613d > -1) {
                view.setLayerType(2, null);
            }
            z zVar = this.a;
            Runnable runnable = zVar.f611b;
            if (runnable != null) {
                zVar.f611b = null;
                runnable.run();
            }
            Object tag = view.getTag(2113929216);
            a0 a0Var = tag instanceof a0 ? (a0) tag : null;
            if (a0Var != null) {
                a0Var.b(view);
            }
        }

        @Override // androidx.core.view.a0
        public void c(View view) {
            Object tag = view.getTag(2113929216);
            a0 a0Var = tag instanceof a0 ? (a0) tag : null;
            if (a0Var != null) {
                a0Var.c(view);
            }
        }
    }

    z(View view) {
        this.a = new WeakReference<>(view);
    }

    private void g(View view, a0 a0Var) {
        if (a0Var != null) {
            view.animate().setListener(new a(this, a0Var, view));
        } else {
            view.animate().setListener(null);
        }
    }

    public z a(float f) {
        View view = this.a.get();
        if (view != null) {
            view.animate().alpha(f);
        }
        return this;
    }

    public void b() {
        View view = this.a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public long c() {
        View view = this.a.get();
        if (view != null) {
            return view.animate().getDuration();
        }
        return 0L;
    }

    public z d(long j) {
        View view = this.a.get();
        if (view != null) {
            view.animate().setDuration(j);
        }
        return this;
    }

    public z e(Interpolator interpolator) {
        View view = this.a.get();
        if (view != null) {
            view.animate().setInterpolator(interpolator);
        }
        return this;
    }

    public z f(a0 a0Var) {
        View view = this.a.get();
        if (view != null) {
            if (Build.VERSION.SDK_INT >= 16) {
                g(view, a0Var);
            } else {
                view.setTag(2113929216, a0Var);
                g(view, new c(this));
            }
        }
        return this;
    }

    public z h(long j) {
        View view = this.a.get();
        if (view != null) {
            view.animate().setStartDelay(j);
        }
        return this;
    }

    public z i(c0 c0Var) {
        View view = this.a.get();
        if (view != null && Build.VERSION.SDK_INT >= 19) {
            view.animate().setUpdateListener(c0Var != null ? new b(this, c0Var, view) : null);
        }
        return this;
    }

    public void j() {
        View view = this.a.get();
        if (view != null) {
            view.animate().start();
        }
    }

    public z k(float f) {
        View view = this.a.get();
        if (view != null) {
            view.animate().translationY(f);
        }
        return this;
    }
}
