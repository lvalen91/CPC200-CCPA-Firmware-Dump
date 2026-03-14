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
import androidx.fragment.app.x;
import c.g.g.b;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class f {

    class a implements b.a {
        final /* synthetic */ Fragment a;

        a(Fragment fragment) {
            this.a = fragment;
        }

        @Override // c.g.g.b.a
        public void a() {
            if (this.a.G() != null) {
                View viewG = this.a.G();
                this.a.P1(null);
                viewG.clearAnimation();
            }
            this.a.R1(null);
        }
    }

    class b implements Animation.AnimationListener {
        final /* synthetic */ ViewGroup a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Fragment f715b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ x.g f716c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ c.g.g.b f717d;

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (b.this.f715b.G() != null) {
                    b.this.f715b.P1(null);
                    b bVar = b.this;
                    bVar.f716c.a(bVar.f715b, bVar.f717d);
                }
            }
        }

        b(ViewGroup viewGroup, Fragment fragment, x.g gVar, c.g.g.b bVar) {
            this.a = viewGroup;
            this.f715b = fragment;
            this.f716c = gVar;
            this.f717d = bVar;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.a.post(new a());
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    class c extends AnimatorListenerAdapter {
        final /* synthetic */ ViewGroup a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f719b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Fragment f720c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ x.g f721d;
        final /* synthetic */ c.g.g.b e;

        c(ViewGroup viewGroup, View view, Fragment fragment, x.g gVar, c.g.g.b bVar) {
            this.a = viewGroup;
            this.f719b = view;
            this.f720c = fragment;
            this.f721d = gVar;
            this.e = bVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.a.endViewTransition(this.f719b);
            Animator animatorH = this.f720c.H();
            this.f720c.R1(null);
            if (animatorH == null || this.a.indexOfChild(this.f719b) >= 0) {
                return;
            }
            this.f721d.a(this.f720c, this.e);
        }
    }

    static void a(Fragment fragment, d dVar, x.g gVar) {
        View view = fragment.I;
        ViewGroup viewGroup = fragment.H;
        viewGroup.startViewTransition(view);
        c.g.g.b bVar = new c.g.g.b();
        bVar.c(new a(fragment));
        gVar.b(fragment, bVar);
        if (dVar.a != null) {
            e eVar = new e(dVar.a, viewGroup, view);
            fragment.P1(fragment.I);
            eVar.setAnimationListener(new b(viewGroup, fragment, gVar, bVar));
            fragment.I.startAnimation(eVar);
            return;
        }
        Animator animator = dVar.f722b;
        fragment.R1(animator);
        animator.addListener(new c(viewGroup, view, fragment, gVar, bVar));
        animator.setTarget(fragment.I);
        animator.start();
    }

    private static int b(Fragment fragment, boolean z, boolean z2) {
        return z2 ? z ? fragment.Z() : fragment.a0() : z ? fragment.L() : fragment.O();
    }

    static d c(Context context, Fragment fragment, boolean z, boolean z2) {
        int iV = fragment.V();
        int iB = b(fragment, z, z2);
        boolean z3 = false;
        fragment.Q1(0, 0, 0, 0);
        ViewGroup viewGroup = fragment.H;
        if (viewGroup != null && viewGroup.getTag(c.j.b.visible_removing_fragment_view_tag) != null) {
            fragment.H.setTag(c.j.b.visible_removing_fragment_view_tag, null);
        }
        ViewGroup viewGroup2 = fragment.H;
        if (viewGroup2 != null && viewGroup2.getLayoutTransition() != null) {
            return null;
        }
        Animation animationI0 = fragment.I0(iV, z, iB);
        if (animationI0 != null) {
            return new d(animationI0);
        }
        Animator animatorJ0 = fragment.J0(iV, z, iB);
        if (animatorJ0 != null) {
            return new d(animatorJ0);
        }
        if (iB == 0 && iV != 0) {
            iB = d(iV, z);
        }
        if (iB != 0) {
            boolean zEquals = "anim".equals(context.getResources().getResourceTypeName(iB));
            if (zEquals) {
                try {
                    Animation animationLoadAnimation = AnimationUtils.loadAnimation(context, iB);
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
                    Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(context, iB);
                    if (animatorLoadAnimator != null) {
                        return new d(animatorLoadAnimator);
                    }
                } catch (RuntimeException e3) {
                    if (zEquals) {
                        throw e3;
                    }
                    Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(context, iB);
                    if (animationLoadAnimation2 != null) {
                        return new d(animationLoadAnimation2);
                    }
                }
            }
        }
        return null;
    }

    private static int d(int i, boolean z) {
        if (i == 4097) {
            return z ? c.j.a.fragment_open_enter : c.j.a.fragment_open_exit;
        }
        if (i == 4099) {
            return z ? c.j.a.fragment_fade_enter : c.j.a.fragment_fade_exit;
        }
        if (i != 8194) {
            return -1;
        }
        return z ? c.j.a.fragment_close_enter : c.j.a.fragment_close_exit;
    }

    static class d {
        public final Animation a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Animator f722b;

        d(Animation animation) {
            this.a = animation;
            this.f722b = null;
            if (animation == null) {
                throw new IllegalStateException("Animation cannot be null");
            }
        }

        d(Animator animator) {
            this.a = null;
            this.f722b = animator;
            if (animator == null) {
                throw new IllegalStateException("Animator cannot be null");
            }
        }
    }

    static class e extends AnimationSet implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ViewGroup f723b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final View f724c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f725d;
        private boolean e;
        private boolean f;

        e(Animation animation, ViewGroup viewGroup, View view) {
            super(false);
            this.f = true;
            this.f723b = viewGroup;
            this.f724c = view;
            addAnimation(animation);
            this.f723b.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public boolean getTransformation(long j, Transformation transformation) {
            this.f = true;
            if (this.f725d) {
                return !this.e;
            }
            if (!super.getTransformation(j, transformation)) {
                this.f725d = true;
                androidx.core.view.t.a(this.f723b, this);
            }
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f725d || !this.f) {
                this.f723b.endViewTransition(this.f724c);
                this.e = true;
            } else {
                this.f = false;
                this.f723b.post(this);
            }
        }

        @Override // android.view.animation.Animation
        public boolean getTransformation(long j, Transformation transformation, float f) {
            this.f = true;
            if (this.f725d) {
                return !this.e;
            }
            if (!super.getTransformation(j, transformation, f)) {
                this.f725d = true;
                androidx.core.view.t.a(this.f723b, this);
            }
            return true;
        }
    }
}
