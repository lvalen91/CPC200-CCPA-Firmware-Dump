package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.Transformation;
import androidx.core.view.ViewTreeObserverOnPreDrawListenerC0290t;
import androidx.fragment.app.C0376x;
import p016c.p041g.p046g.C0604b;
import p016c.p055j.C0634a;
import p016c.p055j.C0635b;

/* JADX INFO: renamed from: androidx.fragment.app.f */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0358f {

    /* JADX INFO: renamed from: androidx.fragment.app.f$a */
    class a implements C0604b.a {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ Fragment f2246a;

        a(Fragment fragment) {
            this.f2246a = fragment;
        }

        @Override // p016c.p041g.p046g.C0604b.a
        /* JADX INFO: renamed from: a */
        public void mo2557a() {
            if (this.f2246a.m2394G() != null) {
                View viewM2394G = this.f2246a.m2394G();
                this.f2246a.m2420P1(null);
                viewM2394G.clearAnimation();
            }
            this.f2246a.m2426R1(null);
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.f$b */
    class b implements Animation.AnimationListener {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ ViewGroup f2247a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ Fragment f2248b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ C0376x.g f2249c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ C0604b f2250d;

        /* JADX INFO: renamed from: androidx.fragment.app.f$b$a */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (b.this.f2248b.m2394G() != null) {
                    b.this.f2248b.m2420P1(null);
                    b bVar = b.this;
                    bVar.f2249c.mo2797a(bVar.f2248b, bVar.f2250d);
                }
            }
        }

        b(ViewGroup viewGroup, Fragment fragment, C0376x.g gVar, C0604b c0604b) {
            this.f2247a = viewGroup;
            this.f2248b = fragment;
            this.f2249c = gVar;
            this.f2250d = c0604b;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f2247a.post(new a());
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.f$c */
    class c extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ ViewGroup f2252a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ View f2253b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ Fragment f2254c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ C0376x.g f2255d;

        /* JADX INFO: renamed from: e */
        final /* synthetic */ C0604b f2256e;

        c(ViewGroup viewGroup, View view, Fragment fragment, C0376x.g gVar, C0604b c0604b) {
            this.f2252a = viewGroup;
            this.f2253b = view;
            this.f2254c = fragment;
            this.f2255d = gVar;
            this.f2256e = c0604b;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f2252a.endViewTransition(this.f2253b);
            Animator animatorM2396H = this.f2254c.m2396H();
            this.f2254c.m2426R1(null);
            if (animatorM2396H == null || this.f2252a.indexOfChild(this.f2253b) >= 0) {
                return;
            }
            this.f2255d.mo2797a(this.f2254c, this.f2256e);
        }
    }

    /* JADX INFO: renamed from: a */
    static void m2624a(Fragment fragment, d dVar, C0376x.g gVar) {
        View view = fragment.f2054I;
        ViewGroup viewGroup = fragment.f2053H;
        viewGroup.startViewTransition(view);
        C0604b c0604b = new C0604b();
        c0604b.m4755c(new a(fragment));
        gVar.mo2798b(fragment, c0604b);
        if (dVar.f2257a != null) {
            e eVar = new e(dVar.f2257a, viewGroup, view);
            fragment.m2420P1(fragment.f2054I);
            eVar.setAnimationListener(new b(viewGroup, fragment, gVar, c0604b));
            fragment.f2054I.startAnimation(eVar);
            return;
        }
        Animator animator = dVar.f2258b;
        fragment.m2426R1(animator);
        animator.addListener(new c(viewGroup, view, fragment, gVar, c0604b));
        animator.setTarget(fragment.f2054I);
        animator.start();
    }

    /* JADX INFO: renamed from: b */
    private static int m2625b(Fragment fragment, boolean z, boolean z2) {
        return z2 ? z ? fragment.m2447Z() : fragment.m2450a0() : z ? fragment.m2407L() : fragment.m2415O();
    }

    /* JADX INFO: renamed from: c */
    static d m2626c(Context context, Fragment fragment, boolean z, boolean z2) {
        int iM2435V = fragment.m2435V();
        int iM2625b = m2625b(fragment, z, z2);
        boolean z3 = false;
        fragment.m2423Q1(0, 0, 0, 0);
        ViewGroup viewGroup = fragment.f2053H;
        if (viewGroup != null && viewGroup.getTag(C0635b.visible_removing_fragment_view_tag) != null) {
            fragment.f2053H.setTag(C0635b.visible_removing_fragment_view_tag, null);
        }
        ViewGroup viewGroup2 = fragment.f2053H;
        if (viewGroup2 != null && viewGroup2.getLayoutTransition() != null) {
            return null;
        }
        Animation animationMo2400I0 = fragment.mo2400I0(iM2435V, z, iM2625b);
        if (animationMo2400I0 != null) {
            return new d(animationMo2400I0);
        }
        Animator animatorM2402J0 = fragment.m2402J0(iM2435V, z, iM2625b);
        if (animatorM2402J0 != null) {
            return new d(animatorM2402J0);
        }
        if (iM2625b == 0 && iM2435V != 0) {
            iM2625b = m2627d(iM2435V, z);
        }
        if (iM2625b != 0) {
            boolean zEquals = "anim".equals(context.getResources().getResourceTypeName(iM2625b));
            if (zEquals) {
                try {
                    Animation animationLoadAnimation = AnimationUtils.loadAnimation(context, iM2625b);
                    if (animationLoadAnimation != null) {
                        return new d(animationLoadAnimation);
                    }
                    z3 = true;
                } catch (Resources.NotFoundException e2) {
                    throw e2;
                } catch (RuntimeException unused) {
                }
            }
            if (!z3) {
                try {
                    Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(context, iM2625b);
                    if (animatorLoadAnimator != null) {
                        return new d(animatorLoadAnimator);
                    }
                } catch (RuntimeException e3) {
                    if (zEquals) {
                        throw e3;
                    }
                    Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(context, iM2625b);
                    if (animationLoadAnimation2 != null) {
                        return new d(animationLoadAnimation2);
                    }
                }
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: d */
    private static int m2627d(int i, boolean z) {
        if (i == 4097) {
            return z ? C0634a.fragment_open_enter : C0634a.fragment_open_exit;
        }
        if (i == 4099) {
            return z ? C0634a.fragment_fade_enter : C0634a.fragment_fade_exit;
        }
        if (i != 8194) {
            return -1;
        }
        return z ? C0634a.fragment_close_enter : C0634a.fragment_close_exit;
    }

    /* JADX INFO: renamed from: androidx.fragment.app.f$d */
    static class d {

        /* JADX INFO: renamed from: a */
        public final Animation f2257a;

        /* JADX INFO: renamed from: b */
        public final Animator f2258b;

        d(Animation animation) {
            this.f2257a = animation;
            this.f2258b = null;
            if (animation == null) {
                throw new IllegalStateException("Animation cannot be null");
            }
        }

        d(Animator animator) {
            this.f2257a = null;
            this.f2258b = animator;
            if (animator == null) {
                throw new IllegalStateException("Animator cannot be null");
            }
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.f$e */
    static class e extends AnimationSet implements Runnable {

        /* JADX INFO: renamed from: b */
        private final ViewGroup f2259b;

        /* JADX INFO: renamed from: c */
        private final View f2260c;

        /* JADX INFO: renamed from: d */
        private boolean f2261d;

        /* JADX INFO: renamed from: e */
        private boolean f2262e;

        /* JADX INFO: renamed from: f */
        private boolean f2263f;

        e(Animation animation, ViewGroup viewGroup, View view) {
            super(false);
            this.f2263f = true;
            this.f2259b = viewGroup;
            this.f2260c = view;
            addAnimation(animation);
            this.f2259b.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public boolean getTransformation(long j, Transformation transformation) {
            this.f2263f = true;
            if (this.f2261d) {
                return !this.f2262e;
            }
            if (!super.getTransformation(j, transformation)) {
                this.f2261d = true;
                ViewTreeObserverOnPreDrawListenerC0290t.m2040a(this.f2259b, this);
            }
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f2261d || !this.f2263f) {
                this.f2259b.endViewTransition(this.f2260c);
                this.f2262e = true;
            } else {
                this.f2263f = false;
                this.f2259b.post(this);
            }
        }

        @Override // android.view.animation.Animation
        public boolean getTransformation(long j, Transformation transformation, float f) {
            this.f2263f = true;
            if (this.f2261d) {
                return !this.f2262e;
            }
            if (!super.getTransformation(j, transformation, f)) {
                this.f2261d = true;
                ViewTreeObserverOnPreDrawListenerC0290t.m2040a(this.f2259b, this);
            }
            return true;
        }
    }
}
