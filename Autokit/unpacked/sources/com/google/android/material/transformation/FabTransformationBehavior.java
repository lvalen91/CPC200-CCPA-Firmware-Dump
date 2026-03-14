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
import androidx.core.view.C0292v;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;
import java.util.List;
import p093d.p099c.p100a.p101a.C1221f;
import p093d.p099c.p100a.p101a.p104l.C1227a;
import p093d.p099c.p100a.p101a.p104l.C1228b;
import p093d.p099c.p100a.p101a.p104l.C1229c;
import p093d.p099c.p100a.p101a.p104l.C1230d;
import p093d.p099c.p100a.p101a.p104l.C1231e;
import p093d.p099c.p100a.p101a.p104l.C1234h;
import p093d.p099c.p100a.p101a.p104l.C1235i;
import p093d.p099c.p100a.p101a.p104l.C1236j;
import p093d.p099c.p100a.p101a.p108p.C1242a;
import p093d.p099c.p100a.p101a.p108p.C1244c;
import p093d.p099c.p100a.p101a.p108p.InterfaceC1245d;
import p093d.p099c.p100a.p101a.p115v.C1253a;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
@Deprecated
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {

    /* JADX INFO: renamed from: c */
    private final Rect f7488c;

    /* JADX INFO: renamed from: d */
    private final RectF f7489d;

    /* JADX INFO: renamed from: e */
    private final RectF f7490e;

    /* JADX INFO: renamed from: f */
    private final int[] f7491f;

    /* JADX INFO: renamed from: g */
    private float f7492g;

    /* JADX INFO: renamed from: h */
    private float f7493h;

    /* JADX INFO: renamed from: com.google.android.material.transformation.FabTransformationBehavior$a */
    class C1167a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ boolean f7494a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ View f7495b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ View f7496c;

        C1167a(FabTransformationBehavior fabTransformationBehavior, boolean z, View view, View view2) {
            this.f7494a = z;
            this.f7495b = view;
            this.f7496c = view2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f7494a) {
                return;
            }
            this.f7495b.setVisibility(4);
            this.f7496c.setAlpha(1.0f);
            this.f7496c.setVisibility(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (this.f7494a) {
                this.f7495b.setVisibility(0);
                this.f7496c.setAlpha(CropImageView.DEFAULT_ASPECT_RATIO);
                this.f7496c.setVisibility(4);
            }
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.transformation.FabTransformationBehavior$b */
    class C1168b implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ View f7497a;

        C1168b(FabTransformationBehavior fabTransformationBehavior, View view) {
            this.f7497a = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f7497a.invalidate();
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.transformation.FabTransformationBehavior$c */
    class C1169c extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ InterfaceC1245d f7498a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ Drawable f7499b;

        C1169c(FabTransformationBehavior fabTransformationBehavior, InterfaceC1245d interfaceC1245d, Drawable drawable) {
            this.f7498a = interfaceC1245d;
            this.f7499b = drawable;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f7498a.setCircularRevealOverlayDrawable(null);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f7498a.setCircularRevealOverlayDrawable(this.f7499b);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.transformation.FabTransformationBehavior$d */
    class C1170d extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ InterfaceC1245d f7500a;

        C1170d(FabTransformationBehavior fabTransformationBehavior, InterfaceC1245d interfaceC1245d) {
            this.f7500a = interfaceC1245d;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            InterfaceC1245d.e revealInfo = this.f7500a.getRevealInfo();
            revealInfo.f7798c = Float.MAX_VALUE;
            this.f7500a.setRevealInfo(revealInfo);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.transformation.FabTransformationBehavior$e */
    protected static class C1171e {

        /* JADX INFO: renamed from: a */
        public C1234h f7501a;

        /* JADX INFO: renamed from: b */
        public C1236j f7502b;

        protected C1171e() {
        }
    }

    public FabTransformationBehavior() {
        this.f7488c = new Rect();
        this.f7489d = new RectF();
        this.f7490e = new RectF();
        this.f7491f = new int[2];
    }

    /* JADX INFO: renamed from: K */
    private ViewGroup m9006K(View view) {
        View viewFindViewById = view.findViewById(C1221f.mtrl_child_content_container);
        return viewFindViewById != null ? m9026f0(viewFindViewById) : ((view instanceof C1174b) || (view instanceof C1173a)) ? m9026f0(((ViewGroup) view).getChildAt(0)) : m9026f0(view);
    }

    /* JADX INFO: renamed from: L */
    private void m9007L(View view, C1171e c1171e, C1235i c1235i, C1235i c1235i2, float f, float f2, float f3, float f4, RectF rectF) {
        float fM9014S = m9014S(c1171e, c1235i, f, f3);
        float fM9014S2 = m9014S(c1171e, c1235i2, f2, f4);
        Rect rect = this.f7488c;
        view.getWindowVisibleDisplayFrame(rect);
        RectF rectF2 = this.f7489d;
        rectF2.set(rect);
        RectF rectF3 = this.f7490e;
        m9015T(view, rectF3);
        rectF3.offset(fM9014S, fM9014S2);
        rectF3.intersect(rectF2);
        rectF.set(rectF3);
    }

    /* JADX INFO: renamed from: M */
    private void m9008M(View view, RectF rectF) {
        m9015T(view, rectF);
        rectF.offset(this.f7492g, this.f7493h);
    }

    /* JADX INFO: renamed from: N */
    private Pair<C1235i, C1235i> m9009N(float f, float f2, boolean z, C1171e c1171e) {
        C1235i c1235iM9350e;
        C1235i c1235iM9350e2;
        if (f == CropImageView.DEFAULT_ASPECT_RATIO || f2 == CropImageView.DEFAULT_ASPECT_RATIO) {
            c1235iM9350e = c1171e.f7501a.m9350e("translationXLinear");
            c1235iM9350e2 = c1171e.f7501a.m9350e("translationYLinear");
        } else if ((!z || f2 >= CropImageView.DEFAULT_ASPECT_RATIO) && (z || f2 <= CropImageView.DEFAULT_ASPECT_RATIO)) {
            c1235iM9350e = c1171e.f7501a.m9350e("translationXCurveDownwards");
            c1235iM9350e2 = c1171e.f7501a.m9350e("translationYCurveDownwards");
        } else {
            c1235iM9350e = c1171e.f7501a.m9350e("translationXCurveUpwards");
            c1235iM9350e2 = c1171e.f7501a.m9350e("translationYCurveUpwards");
        }
        return new Pair<>(c1235iM9350e, c1235iM9350e2);
    }

    /* JADX INFO: renamed from: O */
    private float m9010O(View view, View view2, C1236j c1236j) {
        RectF rectF = this.f7489d;
        RectF rectF2 = this.f7490e;
        m9008M(view, rectF);
        m9015T(view2, rectF2);
        rectF2.offset(-m9012Q(view, view2, c1236j), CropImageView.DEFAULT_ASPECT_RATIO);
        return rectF.centerX() - rectF2.left;
    }

    /* JADX INFO: renamed from: P */
    private float m9011P(View view, View view2, C1236j c1236j) {
        RectF rectF = this.f7489d;
        RectF rectF2 = this.f7490e;
        m9008M(view, rectF);
        m9015T(view2, rectF2);
        rectF2.offset(CropImageView.DEFAULT_ASPECT_RATIO, -m9013R(view, view2, c1236j));
        return rectF.centerY() - rectF2.top;
    }

    /* JADX INFO: renamed from: Q */
    private float m9012Q(View view, View view2, C1236j c1236j) {
        float fCenterX;
        float fCenterX2;
        float f;
        RectF rectF = this.f7489d;
        RectF rectF2 = this.f7490e;
        m9008M(view, rectF);
        m9015T(view2, rectF2);
        int i = c1236j.f7774a & 7;
        if (i == 1) {
            fCenterX = rectF2.centerX();
            fCenterX2 = rectF.centerX();
        } else if (i == 3) {
            fCenterX = rectF2.left;
            fCenterX2 = rectF.left;
        } else {
            if (i != 5) {
                f = CropImageView.DEFAULT_ASPECT_RATIO;
                return f + c1236j.f7775b;
            }
            fCenterX = rectF2.right;
            fCenterX2 = rectF.right;
        }
        f = fCenterX - fCenterX2;
        return f + c1236j.f7775b;
    }

    /* JADX INFO: renamed from: R */
    private float m9013R(View view, View view2, C1236j c1236j) {
        float fCenterY;
        float fCenterY2;
        float f;
        RectF rectF = this.f7489d;
        RectF rectF2 = this.f7490e;
        m9008M(view, rectF);
        m9015T(view2, rectF2);
        int i = c1236j.f7774a & 112;
        if (i == 16) {
            fCenterY = rectF2.centerY();
            fCenterY2 = rectF.centerY();
        } else if (i == 48) {
            fCenterY = rectF2.top;
            fCenterY2 = rectF.top;
        } else {
            if (i != 80) {
                f = CropImageView.DEFAULT_ASPECT_RATIO;
                return f + c1236j.f7776c;
            }
            fCenterY = rectF2.bottom;
            fCenterY2 = rectF.bottom;
        }
        f = fCenterY - fCenterY2;
        return f + c1236j.f7776c;
    }

    /* JADX INFO: renamed from: S */
    private float m9014S(C1171e c1171e, C1235i c1235i, float f, float f2) {
        long jM9358c = c1235i.m9358c();
        long jM9359d = c1235i.m9359d();
        C1235i c1235iM9350e = c1171e.f7501a.m9350e("expansion");
        return C1227a.m9335a(f, f2, c1235i.m9360e().getInterpolation((((c1235iM9350e.m9358c() + c1235iM9350e.m9359d()) + 17) - jM9358c) / jM9359d));
    }

    /* JADX INFO: renamed from: T */
    private void m9015T(View view, RectF rectF) {
        rectF.set(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, view.getWidth(), view.getHeight());
        view.getLocationInWindow(this.f7491f);
        rectF.offsetTo(r0[0], r0[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    /* JADX INFO: renamed from: U */
    private void m9016U(View view, View view2, boolean z, boolean z2, C1171e c1171e, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ViewGroup viewGroupM9006K;
        ObjectAnimator objectAnimatorOfFloat;
        if (view2 instanceof ViewGroup) {
            if (((view2 instanceof InterfaceC1245d) && C1244c.f7791a == 0) || (viewGroupM9006K = m9006K(view2)) == null) {
                return;
            }
            if (z) {
                if (!z2) {
                    C1230d.f7760a.set(viewGroupM9006K, Float.valueOf(CropImageView.DEFAULT_ASPECT_RATIO));
                }
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewGroupM9006K, C1230d.f7760a, 1.0f);
            } else {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewGroupM9006K, C1230d.f7760a, CropImageView.DEFAULT_ASPECT_RATIO);
            }
            c1171e.f7501a.m9350e("contentFade").m9357a(objectAnimatorOfFloat);
            list.add(objectAnimatorOfFloat);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: V */
    private void m9017V(View view, View view2, boolean z, boolean z2, C1171e c1171e, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimatorOfInt;
        if (view2 instanceof InterfaceC1245d) {
            InterfaceC1245d interfaceC1245d = (InterfaceC1245d) view2;
            int iM9025d0 = m9025d0(view);
            int i = 16777215 & iM9025d0;
            if (z) {
                if (!z2) {
                    interfaceC1245d.setCircularRevealScrimColor(iM9025d0);
                }
                objectAnimatorOfInt = ObjectAnimator.ofInt(interfaceC1245d, InterfaceC1245d.d.f7795a, i);
            } else {
                objectAnimatorOfInt = ObjectAnimator.ofInt(interfaceC1245d, InterfaceC1245d.d.f7795a, iM9025d0);
            }
            objectAnimatorOfInt.setEvaluator(C1229c.m9338b());
            c1171e.f7501a.m9350e("color").m9357a(objectAnimatorOfInt);
            list.add(objectAnimatorOfInt);
        }
    }

    /* JADX INFO: renamed from: W */
    private void m9018W(View view, View view2, boolean z, C1171e c1171e, List<Animator> list) {
        float fM9012Q = m9012Q(view, view2, c1171e.f7502b);
        float fM9013R = m9013R(view, view2, c1171e.f7502b);
        Pair<C1235i, C1235i> pairM9009N = m9009N(fM9012Q, fM9013R, z, c1171e);
        C1235i c1235i = (C1235i) pairM9009N.first;
        C1235i c1235i2 = (C1235i) pairM9009N.second;
        Property property = View.TRANSLATION_X;
        float[] fArr = new float[1];
        if (!z) {
            fM9012Q = this.f7492g;
        }
        fArr[0] = fM9012Q;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, fArr);
        Property property2 = View.TRANSLATION_Y;
        float[] fArr2 = new float[1];
        if (!z) {
            fM9013R = this.f7493h;
        }
        fArr2[0] = fM9013R;
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, (Property<View, Float>) property2, fArr2);
        c1235i.m9357a(objectAnimatorOfFloat);
        c1235i2.m9357a(objectAnimatorOfFloat2);
        list.add(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat2);
    }

    @TargetApi(21)
    /* JADX INFO: renamed from: X */
    private void m9019X(View view, View view2, boolean z, boolean z2, C1171e c1171e, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimatorOfFloat;
        float fM2120w = C0292v.m2120w(view2) - C0292v.m2120w(view);
        if (z) {
            if (!z2) {
                view2.setTranslationZ(-fM2120w);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, CropImageView.DEFAULT_ASPECT_RATIO);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, -fM2120w);
        }
        c1171e.f7501a.m9350e("elevation").m9357a(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: Y */
    private void m9020Y(View view, View view2, boolean z, boolean z2, C1171e c1171e, float f, float f2, List<Animator> list, List<Animator.AnimatorListener> list2) {
        Animator animatorM9406a;
        if (view2 instanceof InterfaceC1245d) {
            InterfaceC1245d interfaceC1245d = (InterfaceC1245d) view2;
            float fM9010O = m9010O(view, view2, c1171e.f7502b);
            float fM9011P = m9011P(view, view2, c1171e.f7502b);
            ((FloatingActionButton) view).m8524i(this.f7488c);
            float fWidth = this.f7488c.width() / 2.0f;
            C1235i c1235iM9350e = c1171e.f7501a.m9350e("expansion");
            if (z) {
                if (!z2) {
                    interfaceC1245d.setRevealInfo(new InterfaceC1245d.e(fM9010O, fM9011P, fWidth));
                }
                if (z2) {
                    fWidth = interfaceC1245d.getRevealInfo().f7798c;
                }
                animatorM9406a = C1242a.m9406a(interfaceC1245d, fM9010O, fM9011P, C1253a.m9445b(fM9010O, fM9011P, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, f, f2));
                animatorM9406a.addListener(new C1170d(this, interfaceC1245d));
                m9023b0(view2, c1235iM9350e.m9358c(), (int) fM9010O, (int) fM9011P, fWidth, list);
            } else {
                float f3 = interfaceC1245d.getRevealInfo().f7798c;
                Animator animatorM9406a2 = C1242a.m9406a(interfaceC1245d, fM9010O, fM9011P, fWidth);
                int i = (int) fM9010O;
                int i2 = (int) fM9011P;
                m9023b0(view2, c1235iM9350e.m9358c(), i, i2, f3, list);
                m9022a0(view2, c1235iM9350e.m9358c(), c1235iM9350e.m9359d(), c1171e.f7501a.m9351f(), i, i2, fWidth, list);
                animatorM9406a = animatorM9406a2;
            }
            c1235iM9350e.m9357a(animatorM9406a);
            list.add(animatorM9406a);
            list2.add(C1242a.m9407b(interfaceC1245d));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: Z */
    private void m9021Z(View view, View view2, boolean z, boolean z2, C1171e c1171e, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimatorOfInt;
        if ((view2 instanceof InterfaceC1245d) && (view instanceof ImageView)) {
            InterfaceC1245d interfaceC1245d = (InterfaceC1245d) view2;
            Drawable drawable = ((ImageView) view).getDrawable();
            if (drawable == null) {
                return;
            }
            drawable.mutate();
            if (z) {
                if (!z2) {
                    drawable.setAlpha(255);
                }
                objectAnimatorOfInt = ObjectAnimator.ofInt(drawable, C1231e.f7761b, 0);
            } else {
                objectAnimatorOfInt = ObjectAnimator.ofInt(drawable, C1231e.f7761b, 255);
            }
            objectAnimatorOfInt.addUpdateListener(new C1168b(this, view2));
            c1171e.f7501a.m9350e("iconFade").m9357a(objectAnimatorOfInt);
            list.add(objectAnimatorOfInt);
            list2.add(new C1169c(this, interfaceC1245d, drawable));
        }
    }

    /* JADX INFO: renamed from: a0 */
    private void m9022a0(View view, long j, long j2, long j3, int i, int i2, float f, List<Animator> list) {
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

    /* JADX INFO: renamed from: b0 */
    private void m9023b0(View view, long j, int i, int i2, float f, List<Animator> list) {
        if (Build.VERSION.SDK_INT < 21 || j <= 0) {
            return;
        }
        Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view, i, i2, f, f);
        animatorCreateCircularReveal.setStartDelay(0L);
        animatorCreateCircularReveal.setDuration(j);
        list.add(animatorCreateCircularReveal);
    }

    /* JADX INFO: renamed from: c0 */
    private void m9024c0(View view, View view2, boolean z, boolean z2, C1171e c1171e, List<Animator> list, List<Animator.AnimatorListener> list2, RectF rectF) {
        ObjectAnimator objectAnimatorOfFloat;
        ObjectAnimator objectAnimatorOfFloat2;
        float fM9012Q = m9012Q(view, view2, c1171e.f7502b);
        float fM9013R = m9013R(view, view2, c1171e.f7502b);
        Pair<C1235i, C1235i> pairM9009N = m9009N(fM9012Q, fM9013R, z, c1171e);
        C1235i c1235i = (C1235i) pairM9009N.first;
        C1235i c1235i2 = (C1235i) pairM9009N.second;
        if (z) {
            if (!z2) {
                view2.setTranslationX(-fM9012Q);
                view2.setTranslationY(-fM9013R);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, CropImageView.DEFAULT_ASPECT_RATIO);
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, CropImageView.DEFAULT_ASPECT_RATIO);
            m9007L(view2, c1171e, c1235i, c1235i2, -fM9012Q, -fM9013R, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, rectF);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, -fM9012Q);
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, -fM9013R);
        }
        c1235i.m9357a(objectAnimatorOfFloat);
        c1235i2.m9357a(objectAnimatorOfFloat2);
        list.add(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat2);
    }

    /* JADX INFO: renamed from: d0 */
    private int m9025d0(View view) {
        ColorStateList colorStateListM2112s = C0292v.m2112s(view);
        if (colorStateListM2112s != null) {
            return colorStateListM2112s.getColorForState(view.getDrawableState(), colorStateListM2112s.getDefaultColor());
        }
        return 0;
    }

    /* JADX INFO: renamed from: f0 */
    private ViewGroup m9026f0(View view) {
        if (view instanceof ViewGroup) {
            return (ViewGroup) view;
        }
        return null;
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    /* JADX INFO: renamed from: J */
    protected AnimatorSet mo9005J(View view, View view2, boolean z, boolean z2) {
        C1171e c1171eMo9027e0 = mo9027e0(view2.getContext(), z);
        if (z) {
            this.f7492g = view.getTranslationX();
            this.f7493h = view.getTranslationY();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (Build.VERSION.SDK_INT >= 21) {
            m9019X(view, view2, z, z2, c1171eMo9027e0, arrayList, arrayList2);
        }
        RectF rectF = this.f7489d;
        m9024c0(view, view2, z, z2, c1171eMo9027e0, arrayList, arrayList2, rectF);
        float fWidth = rectF.width();
        float fHeight = rectF.height();
        m9018W(view, view2, z, c1171eMo9027e0, arrayList);
        m9021Z(view, view2, z, z2, c1171eMo9027e0, arrayList, arrayList2);
        m9020Y(view, view2, z, z2, c1171eMo9027e0, fWidth, fHeight, arrayList, arrayList2);
        m9017V(view, view2, z, z2, c1171eMo9027e0, arrayList, arrayList2);
        m9016U(view, view2, z, z2, c1171eMo9027e0, arrayList, arrayList2);
        AnimatorSet animatorSet = new AnimatorSet();
        C1228b.m9337a(animatorSet, arrayList);
        animatorSet.addListener(new C1167a(this, z, view2, view));
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            animatorSet.addListener(arrayList2.get(i));
        }
        return animatorSet;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
    /* JADX INFO: renamed from: e */
    public boolean mo1577e(CoordinatorLayout coordinatorLayout, View view, View view2) {
        if (view.getVisibility() == 8) {
            throw new IllegalStateException("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
        }
        if (!(view2 instanceof FloatingActionButton)) {
            return false;
        }
        int expandedComponentIdHint = ((FloatingActionButton) view2).getExpandedComponentIdHint();
        return expandedComponentIdHint == 0 || expandedComponentIdHint == view.getId();
    }

    /* JADX INFO: renamed from: e0 */
    protected abstract C1171e mo9027e0(Context context, boolean z);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
    /* JADX INFO: renamed from: g */
    public void mo1579g(CoordinatorLayout.C0224f c0224f) {
        if (c0224f.f1691h == 0) {
            c0224f.f1691h = 80;
        }
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7488c = new Rect();
        this.f7489d = new RectF();
        this.f7490e = new RectF();
        this.f7491f = new int[2];
    }
}
