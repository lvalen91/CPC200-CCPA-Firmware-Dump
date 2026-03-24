package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.v;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.yalantis.ucrop.view.CropImageView;
import d.c.a.a.f;
import d.c.a.a.l.h;
import d.c.a.a.l.i;
import d.c.a.a.l.j;
import d.c.a.a.p.d;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
@Deprecated
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Rect f2243c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final RectF f2244d;
    private final RectF e;
    private final int[] f;
    private float g;
    private float h;

    class a extends AnimatorListenerAdapter {
        final /* synthetic */ boolean a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f2245b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f2246c;

        a(FabTransformationBehavior fabTransformationBehavior, boolean z, View view, View view2) {
            this.a = z;
            this.f2245b = view;
            this.f2246c = view2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.a) {
                return;
            }
            this.f2245b.setVisibility(4);
            this.f2246c.setAlpha(1.0f);
            this.f2246c.setVisibility(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (this.a) {
                this.f2245b.setVisibility(0);
                this.f2246c.setAlpha(CropImageView.DEFAULT_ASPECT_RATIO);
                this.f2246c.setVisibility(4);
            }
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {
        final /* synthetic */ View a;

        b(FabTransformationBehavior fabTransformationBehavior, View view) {
            this.a = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.a.invalidate();
        }
    }

    class c extends AnimatorListenerAdapter {
        final /* synthetic */ d.c.a.a.p.d a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Drawable f2247b;

        c(FabTransformationBehavior fabTransformationBehavior, d.c.a.a.p.d dVar, Drawable drawable) {
            this.a = dVar;
            this.f2247b = drawable;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.a.setCircularRevealOverlayDrawable(null);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.a.setCircularRevealOverlayDrawable(this.f2247b);
        }
    }

    class d extends AnimatorListenerAdapter {
        final /* synthetic */ d.c.a.a.p.d a;

        d(FabTransformationBehavior fabTransformationBehavior, d.c.a.a.p.d dVar) {
            this.a = dVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            d.e revealInfo = this.a.getRevealInfo();
            revealInfo.f2330c = Float.MAX_VALUE;
            this.a.setRevealInfo(revealInfo);
        }
    }

    protected static class e {
        public h a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public j f2248b;

        protected e() {
        }
    }

    public FabTransformationBehavior() {
        this.f2243c = new Rect();
        this.f2244d = new RectF();
        this.e = new RectF();
        this.f = new int[2];
    }

    private ViewGroup K(View view) {
        View viewFindViewById = view.findViewById(f.mtrl_child_content_container);
        return viewFindViewById != null ? f0(viewFindViewById) : ((view instanceof com.google.android.material.transformation.b) || (view instanceof com.google.android.material.transformation.a)) ? f0(((ViewGroup) view).getChildAt(0)) : f0(view);
    }

    private void L(View view, e eVar, i iVar, i iVar2, float f, float f2, float f3, float f4, RectF rectF) {
        float fS = S(eVar, iVar, f, f3);
        float fS2 = S(eVar, iVar2, f2, f4);
        Rect rect = this.f2243c;
        view.getWindowVisibleDisplayFrame(rect);
        RectF rectF2 = this.f2244d;
        rectF2.set(rect);
        RectF rectF3 = this.e;
        T(view, rectF3);
        rectF3.offset(fS, fS2);
        rectF3.intersect(rectF2);
        rectF.set(rectF3);
    }

    private void M(View view, RectF rectF) {
        T(view, rectF);
        rectF.offset(this.g, this.h);
    }

    private Pair<i, i> N(float f, float f2, boolean z, e eVar) {
        i iVarE;
        i iVarE2;
        if (f == CropImageView.DEFAULT_ASPECT_RATIO || f2 == CropImageView.DEFAULT_ASPECT_RATIO) {
            iVarE = eVar.a.e("translationXLinear");
            iVarE2 = eVar.a.e("translationYLinear");
        } else if ((!z || f2 >= CropImageView.DEFAULT_ASPECT_RATIO) && (z || f2 <= CropImageView.DEFAULT_ASPECT_RATIO)) {
            iVarE = eVar.a.e("translationXCurveDownwards");
            iVarE2 = eVar.a.e("translationYCurveDownwards");
        } else {
            iVarE = eVar.a.e("translationXCurveUpwards");
            iVarE2 = eVar.a.e("translationYCurveUpwards");
        }
        return new Pair<>(iVarE, iVarE2);
    }

    private float O(View view, View view2, j jVar) {
        RectF rectF = this.f2244d;
        RectF rectF2 = this.e;
        M(view, rectF);
        T(view2, rectF2);
        rectF2.offset(-Q(view, view2, jVar), CropImageView.DEFAULT_ASPECT_RATIO);
        return rectF.centerX() - rectF2.left;
    }

    private float P(View view, View view2, j jVar) {
        RectF rectF = this.f2244d;
        RectF rectF2 = this.e;
        M(view, rectF);
        T(view2, rectF2);
        rectF2.offset(CropImageView.DEFAULT_ASPECT_RATIO, -R(view, view2, jVar));
        return rectF.centerY() - rectF2.top;
    }

    private float Q(View view, View view2, j jVar) {
        float fCenterX;
        float fCenterX2;
        float f;
        RectF rectF = this.f2244d;
        RectF rectF2 = this.e;
        M(view, rectF);
        T(view2, rectF2);
        int i = jVar.a & 7;
        if (i == 1) {
            fCenterX = rectF2.centerX();
            fCenterX2 = rectF.centerX();
        } else if (i == 3) {
            fCenterX = rectF2.left;
            fCenterX2 = rectF.left;
        } else {
            if (i != 5) {
                f = CropImageView.DEFAULT_ASPECT_RATIO;
                return f + jVar.f2325b;
            }
            fCenterX = rectF2.right;
            fCenterX2 = rectF.right;
        }
        f = fCenterX - fCenterX2;
        return f + jVar.f2325b;
    }

    private float R(View view, View view2, j jVar) {
        float fCenterY;
        float fCenterY2;
        float f;
        RectF rectF = this.f2244d;
        RectF rectF2 = this.e;
        M(view, rectF);
        T(view2, rectF2);
        int i = jVar.a & 112;
        if (i == 16) {
            fCenterY = rectF2.centerY();
            fCenterY2 = rectF.centerY();
        } else if (i == 48) {
            fCenterY = rectF2.top;
            fCenterY2 = rectF.top;
        } else {
            if (i != 80) {
                f = CropImageView.DEFAULT_ASPECT_RATIO;
                return f + jVar.f2326c;
            }
            fCenterY = rectF2.bottom;
            fCenterY2 = rectF.bottom;
        }
        f = fCenterY - fCenterY2;
        return f + jVar.f2326c;
    }

    private float S(e eVar, i iVar, float f, float f2) {
        long jC = iVar.c();
        long jD = iVar.d();
        i iVarE = eVar.a.e("expansion");
        return d.c.a.a.l.a.a(f, f2, iVar.e().getInterpolation((((iVarE.c() + iVarE.d()) + 17) - jC) / jD));
    }

    private void T(View view, RectF rectF) {
        rectF.set(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, view.getWidth(), view.getHeight());
        view.getLocationInWindow(this.f);
        rectF.offsetTo(r0[0], r0[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    private void U(View view, View view2, boolean z, boolean z2, e eVar, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ViewGroup viewGroupK;
        ObjectAnimator objectAnimatorOfFloat;
        if (view2 instanceof ViewGroup) {
            if (((view2 instanceof d.c.a.a.p.d) && d.c.a.a.p.c.a == 0) || (viewGroupK = K(view2)) == null) {
                return;
            }
            if (z) {
                if (!z2) {
                    d.c.a.a.l.d.a.set(viewGroupK, Float.valueOf(CropImageView.DEFAULT_ASPECT_RATIO));
                }
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewGroupK, d.c.a.a.l.d.a, 1.0f);
            } else {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewGroupK, d.c.a.a.l.d.a, CropImageView.DEFAULT_ASPECT_RATIO);
            }
            eVar.a.e("contentFade").a(objectAnimatorOfFloat);
            list.add(objectAnimatorOfFloat);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void V(View view, View view2, boolean z, boolean z2, e eVar, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimatorOfInt;
        if (view2 instanceof d.c.a.a.p.d) {
            d.c.a.a.p.d dVar = (d.c.a.a.p.d) view2;
            int iD0 = d0(view);
            int i = 16777215 & iD0;
            if (z) {
                if (!z2) {
                    dVar.setCircularRevealScrimColor(iD0);
                }
                objectAnimatorOfInt = ObjectAnimator.ofInt(dVar, d.C0123d.a, i);
            } else {
                objectAnimatorOfInt = ObjectAnimator.ofInt(dVar, d.C0123d.a, iD0);
            }
            objectAnimatorOfInt.setEvaluator(d.c.a.a.l.c.b());
            eVar.a.e("color").a(objectAnimatorOfInt);
            list.add(objectAnimatorOfInt);
        }
    }

    private void W(View view, View view2, boolean z, e eVar, List<Animator> list) {
        float fQ = Q(view, view2, eVar.f2248b);
        float fR = R(view, view2, eVar.f2248b);
        Pair<i, i> pairN = N(fQ, fR, z, eVar);
        i iVar = (i) pairN.first;
        i iVar2 = (i) pairN.second;
        Property property = View.TRANSLATION_X;
        float[] fArr = new float[1];
        if (!z) {
            fQ = this.g;
        }
        fArr[0] = fQ;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, fArr);
        Property property2 = View.TRANSLATION_Y;
        float[] fArr2 = new float[1];
        if (!z) {
            fR = this.h;
        }
        fArr2[0] = fR;
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, (Property<View, Float>) property2, fArr2);
        iVar.a(objectAnimatorOfFloat);
        iVar2.a(objectAnimatorOfFloat2);
        list.add(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat2);
    }

    @TargetApi(21)
    private void X(View view, View view2, boolean z, boolean z2, e eVar, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimatorOfFloat;
        float fW = v.w(view2) - v.w(view);
        if (z) {
            if (!z2) {
                view2.setTranslationZ(-fW);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, CropImageView.DEFAULT_ASPECT_RATIO);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, -fW);
        }
        eVar.a.e("elevation").a(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void Y(View view, View view2, boolean z, boolean z2, e eVar, float f, float f2, List<Animator> list, List<Animator.AnimatorListener> list2) {
        Animator animatorA;
        if (view2 instanceof d.c.a.a.p.d) {
            d.c.a.a.p.d dVar = (d.c.a.a.p.d) view2;
            float fO = O(view, view2, eVar.f2248b);
            float fP = P(view, view2, eVar.f2248b);
            ((FloatingActionButton) view).i(this.f2243c);
            float fWidth = this.f2243c.width() / 2.0f;
            i iVarE = eVar.a.e("expansion");
            if (z) {
                if (!z2) {
                    dVar.setRevealInfo(new d.e(fO, fP, fWidth));
                }
                if (z2) {
                    fWidth = dVar.getRevealInfo().f2330c;
                }
                animatorA = d.c.a.a.p.a.a(dVar, fO, fP, d.c.a.a.v.a.b(fO, fP, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, f, f2));
                animatorA.addListener(new d(this, dVar));
                b0(view2, iVarE.c(), (int) fO, (int) fP, fWidth, list);
            } else {
                float f3 = dVar.getRevealInfo().f2330c;
                Animator animatorA2 = d.c.a.a.p.a.a(dVar, fO, fP, fWidth);
                int i = (int) fO;
                int i2 = (int) fP;
                b0(view2, iVarE.c(), i, i2, f3, list);
                a0(view2, iVarE.c(), iVarE.d(), eVar.a.f(), i, i2, fWidth, list);
                animatorA = animatorA2;
            }
            iVarE.a(animatorA);
            list.add(animatorA);
            list2.add(d.c.a.a.p.a.b(dVar));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void Z(View view, View view2, boolean z, boolean z2, e eVar, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimatorOfInt;
        if ((view2 instanceof d.c.a.a.p.d) && (view instanceof ImageView)) {
            d.c.a.a.p.d dVar = (d.c.a.a.p.d) view2;
            Drawable drawable = ((ImageView) view).getDrawable();
            if (drawable == null) {
                return;
            }
            drawable.mutate();
            if (z) {
                if (!z2) {
                    drawable.setAlpha(255);
                }
                objectAnimatorOfInt = ObjectAnimator.ofInt(drawable, d.c.a.a.l.e.f2318b, 0);
            } else {
                objectAnimatorOfInt = ObjectAnimator.ofInt(drawable, d.c.a.a.l.e.f2318b, 255);
            }
            objectAnimatorOfInt.addUpdateListener(new b(this, view2));
            eVar.a.e("iconFade").a(objectAnimatorOfInt);
            list.add(objectAnimatorOfInt);
            list2.add(new c(this, dVar, drawable));
        }
    }

    private void a0(View view, long j, long j2, long j3, int i, int i2, float f, List<Animator> list) {
        if (Build.VERSION.SDK_INT >= 21) {
            long j4 = j + j2;
            if (j4 < j3) {
                Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view, i, i2, f, f);
                animatorCreateCircularReveal.setStartDelay(j4);
                animatorCreateCircularReveal.setDuration(j3 - j4);
                list.add(animatorCreateCircularReveal);
            }
        }
    }

    private void b0(View view, long j, int i, int i2, float f, List<Animator> list) {
        if (Build.VERSION.SDK_INT < 21 || j <= 0) {
            return;
        }
        Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view, i, i2, f, f);
        animatorCreateCircularReveal.setStartDelay(0L);
        animatorCreateCircularReveal.setDuration(j);
        list.add(animatorCreateCircularReveal);
    }

    private void c0(View view, View view2, boolean z, boolean z2, e eVar, List<Animator> list, List<Animator.AnimatorListener> list2, RectF rectF) {
        ObjectAnimator objectAnimatorOfFloat;
        ObjectAnimator objectAnimatorOfFloat2;
        float fQ = Q(view, view2, eVar.f2248b);
        float fR = R(view, view2, eVar.f2248b);
        Pair<i, i> pairN = N(fQ, fR, z, eVar);
        i iVar = (i) pairN.first;
        i iVar2 = (i) pairN.second;
        if (z) {
            if (!z2) {
                view2.setTranslationX(-fQ);
                view2.setTranslationY(-fR);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, CropImageView.DEFAULT_ASPECT_RATIO);
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, CropImageView.DEFAULT_ASPECT_RATIO);
            L(view2, eVar, iVar, iVar2, -fQ, -fR, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, rectF);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, -fQ);
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, -fR);
        }
        iVar.a(objectAnimatorOfFloat);
        iVar2.a(objectAnimatorOfFloat2);
        list.add(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat2);
    }

    private int d0(View view) {
        ColorStateList colorStateListS = v.s(view);
        if (colorStateListS != null) {
            return colorStateListS.getColorForState(view.getDrawableState(), colorStateListS.getDefaultColor());
        }
        return 0;
    }

    private ViewGroup f0(View view) {
        if (view instanceof ViewGroup) {
            return (ViewGroup) view;
        }
        return null;
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    protected AnimatorSet J(View view, View view2, boolean z, boolean z2) {
        e eVarE0 = e0(view2.getContext(), z);
        if (z) {
            this.g = view.getTranslationX();
            this.h = view.getTranslationY();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (Build.VERSION.SDK_INT >= 21) {
            X(view, view2, z, z2, eVarE0, arrayList, arrayList2);
        }
        RectF rectF = this.f2244d;
        c0(view, view2, z, z2, eVarE0, arrayList, arrayList2, rectF);
        float fWidth = rectF.width();
        float fHeight = rectF.height();
        W(view, view2, z, eVarE0, arrayList);
        Z(view, view2, z, z2, eVarE0, arrayList, arrayList2);
        Y(view, view2, z, z2, eVarE0, fWidth, fHeight, arrayList, arrayList2);
        V(view, view2, z, z2, eVarE0, arrayList, arrayList2);
        U(view, view2, z, z2, eVarE0, arrayList, arrayList2);
        AnimatorSet animatorSet = new AnimatorSet();
        d.c.a.a.l.b.a(animatorSet, arrayList);
        animatorSet.addListener(new a(this, z, view2, view));
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            animatorSet.addListener(arrayList2.get(i));
        }
        return animatorSet;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean e(CoordinatorLayout coordinatorLayout, View view, View view2) {
        if (view.getVisibility() == 8) {
            throw new IllegalStateException("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
        }
        if (!(view2 instanceof FloatingActionButton)) {
            return false;
        }
        int expandedComponentIdHint = ((FloatingActionButton) view2).getExpandedComponentIdHint();
        return expandedComponentIdHint == 0 || expandedComponentIdHint == view.getId();
    }

    protected abstract e e0(Context context, boolean z);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void g(CoordinatorLayout.f fVar) {
        if (fVar.h == 0) {
            fVar.h = 80;
        }
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2243c = new Rect();
        this.f2244d = new RectF();
        this.e = new RectF();
        this.f = new int[2];
    }
}
