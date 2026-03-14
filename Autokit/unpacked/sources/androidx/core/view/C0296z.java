package androidx.core.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;

/* JADX INFO: renamed from: androidx.core.view.z */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0296z {

    /* JADX INFO: renamed from: a */
    private WeakReference<View> f1922a;

    /* JADX INFO: renamed from: b */
    Runnable f1923b = null;

    /* JADX INFO: renamed from: c */
    Runnable f1924c = null;

    /* JADX INFO: renamed from: d */
    int f1925d = -1;

    /* JADX INFO: renamed from: androidx.core.view.z$a */
    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ InterfaceC0259a0 f1926a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ View f1927b;

        a(C0296z c0296z, InterfaceC0259a0 interfaceC0259a0, View view) {
            this.f1926a = interfaceC0259a0;
            this.f1927b = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f1926a.mo1019c(this.f1927b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f1926a.mo530a(this.f1927b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f1926a.mo531b(this.f1927b);
        }
    }

    /* JADX INFO: renamed from: androidx.core.view.z$b */
    class b implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ InterfaceC0263c0 f1928a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ View f1929b;

        b(C0296z c0296z, InterfaceC0263c0 interfaceC0263c0, View view) {
            this.f1928a = interfaceC0263c0;
            this.f1929b = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f1928a.mo626a(this.f1929b);
        }
    }

    /* JADX INFO: renamed from: androidx.core.view.z$c */
    static class c implements InterfaceC0259a0 {

        /* JADX INFO: renamed from: a */
        C0296z f1930a;

        /* JADX INFO: renamed from: b */
        boolean f1931b;

        c(C0296z c0296z) {
            this.f1930a = c0296z;
        }

        @Override // androidx.core.view.InterfaceC0259a0
        @SuppressLint({"WrongConstant"})
        /* JADX INFO: renamed from: a */
        public void mo530a(View view) {
            int i = this.f1930a.f1925d;
            if (i > -1) {
                view.setLayerType(i, null);
                this.f1930a.f1925d = -1;
            }
            if (Build.VERSION.SDK_INT >= 16 || !this.f1931b) {
                C0296z c0296z = this.f1930a;
                Runnable runnable = c0296z.f1924c;
                if (runnable != null) {
                    c0296z.f1924c = null;
                    runnable.run();
                }
                Object tag = view.getTag(2113929216);
                InterfaceC0259a0 interfaceC0259a0 = tag instanceof InterfaceC0259a0 ? (InterfaceC0259a0) tag : null;
                if (interfaceC0259a0 != null) {
                    interfaceC0259a0.mo530a(view);
                }
                this.f1931b = true;
            }
        }

        @Override // androidx.core.view.InterfaceC0259a0
        /* JADX INFO: renamed from: b */
        public void mo531b(View view) {
            this.f1931b = false;
            if (this.f1930a.f1925d > -1) {
                view.setLayerType(2, null);
            }
            C0296z c0296z = this.f1930a;
            Runnable runnable = c0296z.f1923b;
            if (runnable != null) {
                c0296z.f1923b = null;
                runnable.run();
            }
            Object tag = view.getTag(2113929216);
            InterfaceC0259a0 interfaceC0259a0 = tag instanceof InterfaceC0259a0 ? (InterfaceC0259a0) tag : null;
            if (interfaceC0259a0 != null) {
                interfaceC0259a0.mo531b(view);
            }
        }

        @Override // androidx.core.view.InterfaceC0259a0
        /* JADX INFO: renamed from: c */
        public void mo1019c(View view) {
            Object tag = view.getTag(2113929216);
            InterfaceC0259a0 interfaceC0259a0 = tag instanceof InterfaceC0259a0 ? (InterfaceC0259a0) tag : null;
            if (interfaceC0259a0 != null) {
                interfaceC0259a0.mo1019c(view);
            }
        }
    }

    C0296z(View view) {
        this.f1922a = new WeakReference<>(view);
    }

    /* JADX INFO: renamed from: g */
    private void m2178g(View view, InterfaceC0259a0 interfaceC0259a0) {
        if (interfaceC0259a0 != null) {
            view.animate().setListener(new a(this, interfaceC0259a0, view));
        } else {
            view.animate().setListener(null);
        }
    }

    /* JADX INFO: renamed from: a */
    public C0296z m2179a(float f) {
        View view = this.f1922a.get();
        if (view != null) {
            view.animate().alpha(f);
        }
        return this;
    }

    /* JADX INFO: renamed from: b */
    public void m2180b() {
        View view = this.f1922a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    /* JADX INFO: renamed from: c */
    public long m2181c() {
        View view = this.f1922a.get();
        if (view != null) {
            return view.animate().getDuration();
        }
        return 0L;
    }

    /* JADX INFO: renamed from: d */
    public C0296z m2182d(long j) {
        View view = this.f1922a.get();
        if (view != null) {
            view.animate().setDuration(j);
        }
        return this;
    }

    /* JADX INFO: renamed from: e */
    public C0296z m2183e(Interpolator interpolator) {
        View view = this.f1922a.get();
        if (view != null) {
            view.animate().setInterpolator(interpolator);
        }
        return this;
    }

    /* JADX INFO: renamed from: f */
    public C0296z m2184f(InterfaceC0259a0 interfaceC0259a0) {
        View view = this.f1922a.get();
        if (view != null) {
            if (Build.VERSION.SDK_INT >= 16) {
                m2178g(view, interfaceC0259a0);
            } else {
                view.setTag(2113929216, interfaceC0259a0);
                m2178g(view, new c(this));
            }
        }
        return this;
    }

    /* JADX INFO: renamed from: h */
    public C0296z m2185h(long j) {
        View view = this.f1922a.get();
        if (view != null) {
            view.animate().setStartDelay(j);
        }
        return this;
    }

    /* JADX INFO: renamed from: i */
    public C0296z m2186i(InterfaceC0263c0 interfaceC0263c0) {
        View view = this.f1922a.get();
        if (view != null && Build.VERSION.SDK_INT >= 19) {
            view.animate().setUpdateListener(interfaceC0263c0 != null ? new b(this, interfaceC0263c0, view) : null);
        }
        return this;
    }

    /* JADX INFO: renamed from: j */
    public void m2187j() {
        View view = this.f1922a.get();
        if (view != null) {
            view.animate().start();
        }
    }

    /* JADX INFO: renamed from: k */
    public C0296z m2188k(float f) {
        View view = this.f1922a.get();
        if (view != null) {
            view.animate().translationY(f);
        }
        return this;
    }
}
