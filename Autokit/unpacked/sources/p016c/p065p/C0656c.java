package p016c.p065p;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.C0292v;
import com.yalantis.ucrop.view.CropImageView;
import java.util.Map;

/* JADX INFO: renamed from: c.p.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0656c extends AbstractC0676m {

    /* JADX INFO: renamed from: N */
    private static final String[] f3910N = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};

    /* JADX INFO: renamed from: O */
    private static final Property<Drawable, PointF> f3911O = new b(PointF.class, "boundsOrigin");

    /* JADX INFO: renamed from: P */
    private static final Property<k, PointF> f3912P = new c(PointF.class, "topLeft");

    /* JADX INFO: renamed from: Q */
    private static final Property<k, PointF> f3913Q = new d(PointF.class, "bottomRight");

    /* JADX INFO: renamed from: R */
    private static final Property<View, PointF> f3914R = new e(PointF.class, "bottomRight");

    /* JADX INFO: renamed from: S */
    private static final Property<View, PointF> f3915S = new f(PointF.class, "topLeft");

    /* JADX INFO: renamed from: T */
    private static final Property<View, PointF> f3916T = new g(PointF.class, "position");

    /* JADX INFO: renamed from: U */
    private static C0672k f3917U = new C0672k();

    /* JADX INFO: renamed from: K */
    private int[] f3918K = new int[2];

    /* JADX INFO: renamed from: L */
    private boolean f3919L = false;

    /* JADX INFO: renamed from: M */
    private boolean f3920M = false;

    /* JADX INFO: renamed from: c.p.c$a */
    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ ViewGroup f3921a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ BitmapDrawable f3922b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ View f3923c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ float f3924d;

        a(C0656c c0656c, ViewGroup viewGroup, BitmapDrawable bitmapDrawable, View view, float f) {
            this.f3921a = viewGroup;
            this.f3922b = bitmapDrawable;
            this.f3923c = view;
            this.f3924d = f;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C0657c0.m5059b(this.f3921a).mo5031d(this.f3922b);
            C0657c0.m5064g(this.f3923c, this.f3924d);
        }
    }

    /* JADX INFO: renamed from: c.p.c$b */
    static class b extends Property<Drawable, PointF> {

        /* JADX INFO: renamed from: a */
        private Rect f3925a;

        b(Class cls, String str) {
            super(cls, str);
            this.f3925a = new Rect();
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(Drawable drawable) {
            drawable.copyBounds(this.f3925a);
            Rect rect = this.f3925a;
            return new PointF(rect.left, rect.top);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(Drawable drawable, PointF pointF) {
            drawable.copyBounds(this.f3925a);
            this.f3925a.offsetTo(Math.round(pointF.x), Math.round(pointF.y));
            drawable.setBounds(this.f3925a);
        }
    }

    /* JADX INFO: renamed from: c.p.c$c */
    static class c extends Property<k, PointF> {
        c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(k kVar) {
            return null;
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(k kVar, PointF pointF) {
            kVar.m5057c(pointF);
        }
    }

    /* JADX INFO: renamed from: c.p.c$d */
    static class d extends Property<k, PointF> {
        d(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(k kVar) {
            return null;
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(k kVar, PointF pointF) {
            kVar.m5056a(pointF);
        }
    }

    /* JADX INFO: renamed from: c.p.c$e */
    static class e extends Property<View, PointF> {
        e(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, PointF pointF) {
            C0657c0.m5063f(view, view.getLeft(), view.getTop(), Math.round(pointF.x), Math.round(pointF.y));
        }
    }

    /* JADX INFO: renamed from: c.p.c$f */
    static class f extends Property<View, PointF> {
        f(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, PointF pointF) {
            C0657c0.m5063f(view, Math.round(pointF.x), Math.round(pointF.y), view.getRight(), view.getBottom());
        }
    }

    /* JADX INFO: renamed from: c.p.c$g */
    static class g extends Property<View, PointF> {
        g(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, PointF pointF) {
            int iRound = Math.round(pointF.x);
            int iRound2 = Math.round(pointF.y);
            C0657c0.m5063f(view, iRound, iRound2, view.getWidth() + iRound, view.getHeight() + iRound2);
        }
    }

    /* JADX INFO: renamed from: c.p.c$h */
    class h extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ k f3926a;
        private k mViewBounds;

        h(C0656c c0656c, k kVar) {
            this.f3926a = kVar;
            this.mViewBounds = this.f3926a;
        }
    }

    /* JADX INFO: renamed from: c.p.c$i */
    class i extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a */
        private boolean f3927a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ View f3928b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ Rect f3929c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ int f3930d;

        /* JADX INFO: renamed from: e */
        final /* synthetic */ int f3931e;

        /* JADX INFO: renamed from: f */
        final /* synthetic */ int f3932f;

        /* JADX INFO: renamed from: g */
        final /* synthetic */ int f3933g;

        i(C0656c c0656c, View view, Rect rect, int i, int i2, int i3, int i4) {
            this.f3928b = view;
            this.f3929c = rect;
            this.f3930d = i;
            this.f3931e = i2;
            this.f3932f = i3;
            this.f3933g = i4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f3927a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f3927a) {
                return;
            }
            C0292v.m2117u0(this.f3928b, this.f3929c);
            C0657c0.m5063f(this.f3928b, this.f3930d, this.f3931e, this.f3932f, this.f3933g);
        }
    }

    /* JADX INFO: renamed from: c.p.c$j */
    class j extends C0678n {

        /* JADX INFO: renamed from: a */
        boolean f3934a = false;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ ViewGroup f3935b;

        j(C0656c c0656c, ViewGroup viewGroup) {
            this.f3935b = viewGroup;
        }

        @Override // p016c.p065p.C0678n, p016c.p065p.AbstractC0676m.f
        /* JADX INFO: renamed from: a */
        public void mo5051a(AbstractC0676m abstractC0676m) {
            C0688x.m5181c(this.f3935b, false);
        }

        @Override // p016c.p065p.C0678n, p016c.p065p.AbstractC0676m.f
        /* JADX INFO: renamed from: b */
        public void mo5052b(AbstractC0676m abstractC0676m) {
            C0688x.m5181c(this.f3935b, true);
        }

        @Override // p016c.p065p.C0678n, p016c.p065p.AbstractC0676m.f
        /* JADX INFO: renamed from: d */
        public void mo5053d(AbstractC0676m abstractC0676m) {
            C0688x.m5181c(this.f3935b, false);
            this.f3934a = true;
        }

        @Override // p016c.p065p.AbstractC0676m.f
        /* JADX INFO: renamed from: e */
        public void mo5054e(AbstractC0676m abstractC0676m) {
            if (!this.f3934a) {
                C0688x.m5181c(this.f3935b, false);
            }
            abstractC0676m.mo5121O(this);
        }
    }

    /* JADX INFO: renamed from: c.p.c$k */
    private static class k {

        /* JADX INFO: renamed from: a */
        private int f3936a;

        /* JADX INFO: renamed from: b */
        private int f3937b;

        /* JADX INFO: renamed from: c */
        private int f3938c;

        /* JADX INFO: renamed from: d */
        private int f3939d;

        /* JADX INFO: renamed from: e */
        private View f3940e;

        /* JADX INFO: renamed from: f */
        private int f3941f;

        /* JADX INFO: renamed from: g */
        private int f3942g;

        k(View view) {
            this.f3940e = view;
        }

        /* JADX INFO: renamed from: b */
        private void m5055b() {
            C0657c0.m5063f(this.f3940e, this.f3936a, this.f3937b, this.f3938c, this.f3939d);
            this.f3941f = 0;
            this.f3942g = 0;
        }

        /* JADX INFO: renamed from: a */
        void m5056a(PointF pointF) {
            this.f3938c = Math.round(pointF.x);
            this.f3939d = Math.round(pointF.y);
            int i = this.f3942g + 1;
            this.f3942g = i;
            if (this.f3941f == i) {
                m5055b();
            }
        }

        /* JADX INFO: renamed from: c */
        void m5057c(PointF pointF) {
            this.f3936a = Math.round(pointF.x);
            this.f3937b = Math.round(pointF.y);
            int i = this.f3941f + 1;
            this.f3941f = i;
            if (i == this.f3942g) {
                m5055b();
            }
        }
    }

    /* JADX INFO: renamed from: b0 */
    private void m5033b0(C0683s c0683s) {
        View view = c0683s.f4056b;
        if (!C0292v.m2069T(view) && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        c0683s.f4055a.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        c0683s.f4055a.put("android:changeBounds:parent", c0683s.f4056b.getParent());
        if (this.f3920M) {
            c0683s.f4056b.getLocationInWindow(this.f3918K);
            c0683s.f4055a.put("android:changeBounds:windowX", Integer.valueOf(this.f3918K[0]));
            c0683s.f4055a.put("android:changeBounds:windowY", Integer.valueOf(this.f3918K[1]));
        }
        if (this.f3919L) {
            c0683s.f4055a.put("android:changeBounds:clip", C0292v.m2116u(view));
        }
    }

    /* JADX INFO: renamed from: c0 */
    private boolean m5034c0(View view, View view2) {
        if (!this.f3920M) {
            return true;
        }
        C0683s c0683sM5145s = m5145s(view, true);
        if (c0683sM5145s == null) {
            if (view == view2) {
                return true;
            }
        } else if (view2 == c0683sM5145s.f4056b) {
            return true;
        }
        return false;
    }

    @Override // p016c.p065p.AbstractC0676m
    /* JADX INFO: renamed from: C */
    public String[] mo5035C() {
        return f3910N;
    }

    @Override // p016c.p065p.AbstractC0676m
    /* JADX INFO: renamed from: f */
    public void mo5036f(C0683s c0683s) {
        m5033b0(c0683s);
    }

    @Override // p016c.p065p.AbstractC0676m
    /* JADX INFO: renamed from: i */
    public void mo5037i(C0683s c0683s) {
        m5033b0(c0683s);
    }

    @Override // p016c.p065p.AbstractC0676m
    /* JADX INFO: renamed from: m */
    public Animator mo5038m(ViewGroup viewGroup, C0683s c0683s, C0683s c0683s2) {
        int i2;
        View view;
        int i3;
        Rect rect;
        ObjectAnimator objectAnimator;
        Animator animatorM5175c;
        if (c0683s == null || c0683s2 == null) {
            return null;
        }
        Map<String, Object> map = c0683s.f4055a;
        Map<String, Object> map2 = c0683s2.f4055a;
        ViewGroup viewGroup2 = (ViewGroup) map.get("android:changeBounds:parent");
        ViewGroup viewGroup3 = (ViewGroup) map2.get("android:changeBounds:parent");
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        View view2 = c0683s2.f4056b;
        if (!m5034c0(viewGroup2, viewGroup3)) {
            int iIntValue = ((Integer) c0683s.f4055a.get("android:changeBounds:windowX")).intValue();
            int iIntValue2 = ((Integer) c0683s.f4055a.get("android:changeBounds:windowY")).intValue();
            int iIntValue3 = ((Integer) c0683s2.f4055a.get("android:changeBounds:windowX")).intValue();
            int iIntValue4 = ((Integer) c0683s2.f4055a.get("android:changeBounds:windowY")).intValue();
            if (iIntValue == iIntValue3 && iIntValue2 == iIntValue4) {
                return null;
            }
            viewGroup.getLocationInWindow(this.f3918K);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view2.getWidth(), view2.getHeight(), Bitmap.Config.ARGB_8888);
            view2.draw(new Canvas(bitmapCreateBitmap));
            BitmapDrawable bitmapDrawable = new BitmapDrawable(bitmapCreateBitmap);
            float fM5060c = C0657c0.m5060c(view2);
            C0657c0.m5064g(view2, CropImageView.DEFAULT_ASPECT_RATIO);
            C0657c0.m5059b(viewGroup).mo5030b(bitmapDrawable);
            AbstractC0664g abstractC0664gM5147u = m5147u();
            int[] iArr = this.f3918K;
            ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(bitmapDrawable, C0668i.m5090a(f3911O, abstractC0664gM5147u.mo5086a(iIntValue - iArr[0], iIntValue2 - iArr[1], iIntValue3 - iArr[0], iIntValue4 - iArr[1])));
            objectAnimatorOfPropertyValuesHolder.addListener(new a(this, viewGroup, bitmapDrawable, view2, fM5060c));
            return objectAnimatorOfPropertyValuesHolder;
        }
        Rect rect2 = (Rect) c0683s.f4055a.get("android:changeBounds:bounds");
        Rect rect3 = (Rect) c0683s2.f4055a.get("android:changeBounds:bounds");
        int i4 = rect2.left;
        int i5 = rect3.left;
        int i6 = rect2.top;
        int i7 = rect3.top;
        int i8 = rect2.right;
        int i9 = rect3.right;
        int i10 = rect2.bottom;
        int i11 = rect3.bottom;
        int i12 = i8 - i4;
        int i13 = i10 - i6;
        int i14 = i9 - i5;
        int i15 = i11 - i7;
        Rect rect4 = (Rect) c0683s.f4055a.get("android:changeBounds:clip");
        Rect rect5 = (Rect) c0683s2.f4055a.get("android:changeBounds:clip");
        if ((i12 == 0 || i13 == 0) && (i14 == 0 || i15 == 0)) {
            i2 = 0;
        } else {
            i2 = (i4 == i5 && i6 == i7) ? 0 : 1;
            if (i8 != i9 || i10 != i11) {
                i2++;
            }
        }
        if ((rect4 != null && !rect4.equals(rect5)) || (rect4 == null && rect5 != null)) {
            i2++;
        }
        if (i2 <= 0) {
            return null;
        }
        if (this.f3919L) {
            view = view2;
            C0657c0.m5063f(view, i4, i6, Math.max(i12, i14) + i4, Math.max(i13, i15) + i6);
            ObjectAnimator objectAnimatorM5084a = (i4 == i5 && i6 == i7) ? null : C0662f.m5084a(view, f3916T, m5147u().mo5086a(i4, i6, i5, i7));
            if (rect4 == null) {
                i3 = 0;
                rect = new Rect(0, 0, i12, i13);
            } else {
                i3 = 0;
                rect = rect4;
            }
            Rect rect6 = rect5 == null ? new Rect(i3, i3, i14, i15) : rect5;
            if (rect.equals(rect6)) {
                objectAnimator = null;
            } else {
                C0292v.m2117u0(view, rect);
                C0672k c0672k = f3917U;
                Object[] objArr = new Object[2];
                objArr[i3] = rect;
                objArr[1] = rect6;
                ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(view, "clipBounds", c0672k, objArr);
                objectAnimatorOfObject.addListener(new i(this, view, rect5, i5, i7, i9, i11));
                objectAnimator = objectAnimatorOfObject;
            }
            animatorM5175c = C0682r.m5175c(objectAnimatorM5084a, objectAnimator);
        } else {
            view = view2;
            C0657c0.m5063f(view, i4, i6, i8, i10);
            if (i2 != 2) {
                animatorM5175c = (i4 == i5 && i6 == i7) ? C0662f.m5084a(view, f3914R, m5147u().mo5086a(i8, i10, i9, i11)) : C0662f.m5084a(view, f3915S, m5147u().mo5086a(i4, i6, i5, i7));
            } else if (i12 == i14 && i13 == i15) {
                animatorM5175c = C0662f.m5084a(view, f3916T, m5147u().mo5086a(i4, i6, i5, i7));
            } else {
                k kVar = new k(view);
                ObjectAnimator objectAnimatorM5084a2 = C0662f.m5084a(kVar, f3912P, m5147u().mo5086a(i4, i6, i5, i7));
                ObjectAnimator objectAnimatorM5084a3 = C0662f.m5084a(kVar, f3913Q, m5147u().mo5086a(i8, i10, i9, i11));
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(objectAnimatorM5084a2, objectAnimatorM5084a3);
                animatorSet.addListener(new h(this, kVar));
                animatorM5175c = animatorSet;
            }
        }
        if (view.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup4 = (ViewGroup) view.getParent();
            C0688x.m5181c(viewGroup4, true);
            mo5132a(new j(this, viewGroup4));
        }
        return animatorM5175c;
    }
}
