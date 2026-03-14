package c.p;

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
import com.yalantis.ucrop.view.CropImageView;
import java.util.Map;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class c extends m {
    private static final String[] N = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};
    private static final Property<Drawable, PointF> O = new b(PointF.class, "boundsOrigin");
    private static final Property<k, PointF> P = new C0066c(PointF.class, "topLeft");
    private static final Property<k, PointF> Q = new d(PointF.class, "bottomRight");
    private static final Property<View, PointF> R = new e(PointF.class, "bottomRight");
    private static final Property<View, PointF> S = new f(PointF.class, "topLeft");
    private static final Property<View, PointF> T = new g(PointF.class, "position");
    private static c.p.k U = new c.p.k();
    private int[] K = new int[2];
    private boolean L = false;
    private boolean M = false;

    class a extends AnimatorListenerAdapter {
        final /* synthetic */ ViewGroup a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ BitmapDrawable f1270b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f1271c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ float f1272d;

        a(c cVar, ViewGroup viewGroup, BitmapDrawable bitmapDrawable, View view, float f) {
            this.a = viewGroup;
            this.f1270b = bitmapDrawable;
            this.f1271c = view;
            this.f1272d = f;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            c0.b(this.a).d(this.f1270b);
            c0.g(this.f1271c, this.f1272d);
        }
    }

    static class b extends Property<Drawable, PointF> {
        private Rect a;

        b(Class cls, String str) {
            super(cls, str);
            this.a = new Rect();
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(Drawable drawable) {
            drawable.copyBounds(this.a);
            Rect rect = this.a;
            return new PointF(rect.left, rect.top);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(Drawable drawable, PointF pointF) {
            drawable.copyBounds(this.a);
            this.a.offsetTo(Math.round(pointF.x), Math.round(pointF.y));
            drawable.setBounds(this.a);
        }
    }

    /* JADX INFO: renamed from: c.p.c$c, reason: collision with other inner class name */
    static class C0066c extends Property<k, PointF> {
        C0066c(Class cls, String str) {
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
            kVar.c(pointF);
        }
    }

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
            kVar.a(pointF);
        }
    }

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
            c0.f(view, view.getLeft(), view.getTop(), Math.round(pointF.x), Math.round(pointF.y));
        }
    }

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
            c0.f(view, Math.round(pointF.x), Math.round(pointF.y), view.getRight(), view.getBottom());
        }
    }

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
            c0.f(view, iRound, iRound2, view.getWidth() + iRound, view.getHeight() + iRound2);
        }
    }

    class h extends AnimatorListenerAdapter {
        final /* synthetic */ k a;
        private k mViewBounds;

        h(c cVar, k kVar) {
            this.a = kVar;
            this.mViewBounds = this.a;
        }
    }

    class i extends AnimatorListenerAdapter {
        private boolean a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f1273b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Rect f1274c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f1275d;
        final /* synthetic */ int e;
        final /* synthetic */ int f;
        final /* synthetic */ int g;

        i(c cVar, View view, Rect rect, int i, int i2, int i3, int i4) {
            this.f1273b = view;
            this.f1274c = rect;
            this.f1275d = i;
            this.e = i2;
            this.f = i3;
            this.g = i4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.a) {
                return;
            }
            androidx.core.view.v.u0(this.f1273b, this.f1274c);
            c0.f(this.f1273b, this.f1275d, this.e, this.f, this.g);
        }
    }

    class j extends n {
        boolean a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewGroup f1276b;

        j(c cVar, ViewGroup viewGroup) {
            this.f1276b = viewGroup;
        }

        @Override // c.p.n, c.p.m.f
        public void a(m mVar) {
            x.c(this.f1276b, false);
        }

        @Override // c.p.n, c.p.m.f
        public void b(m mVar) {
            x.c(this.f1276b, true);
        }

        @Override // c.p.n, c.p.m.f
        public void d(m mVar) {
            x.c(this.f1276b, false);
            this.a = true;
        }

        @Override // c.p.m.f
        public void e(m mVar) {
            if (!this.a) {
                x.c(this.f1276b, false);
            }
            mVar.O(this);
        }
    }

    private static class k {
        private int a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f1277b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f1278c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f1279d;
        private View e;
        private int f;
        private int g;

        k(View view) {
            this.e = view;
        }

        private void b() {
            c0.f(this.e, this.a, this.f1277b, this.f1278c, this.f1279d);
            this.f = 0;
            this.g = 0;
        }

        void a(PointF pointF) {
            this.f1278c = Math.round(pointF.x);
            this.f1279d = Math.round(pointF.y);
            int i = this.g + 1;
            this.g = i;
            if (this.f == i) {
                b();
            }
        }

        void c(PointF pointF) {
            this.a = Math.round(pointF.x);
            this.f1277b = Math.round(pointF.y);
            int i = this.f + 1;
            this.f = i;
            if (i == this.g) {
                b();
            }
        }
    }

    private void b0(s sVar) {
        View view = sVar.f1316b;
        if (!androidx.core.view.v.T(view) && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        sVar.a.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        sVar.a.put("android:changeBounds:parent", sVar.f1316b.getParent());
        if (this.M) {
            sVar.f1316b.getLocationInWindow(this.K);
            sVar.a.put("android:changeBounds:windowX", Integer.valueOf(this.K[0]));
            sVar.a.put("android:changeBounds:windowY", Integer.valueOf(this.K[1]));
        }
        if (this.L) {
            sVar.a.put("android:changeBounds:clip", androidx.core.view.v.u(view));
        }
    }

    private boolean c0(View view, View view2) {
        if (!this.M) {
            return true;
        }
        s sVarS = s(view, true);
        if (sVarS == null) {
            if (view == view2) {
                return true;
            }
        } else if (view2 == sVarS.f1316b) {
            return true;
        }
        return false;
    }

    @Override // c.p.m
    public String[] C() {
        return N;
    }

    @Override // c.p.m
    public void f(s sVar) {
        b0(sVar);
    }

    @Override // c.p.m
    public void i(s sVar) {
        b0(sVar);
    }

    @Override // c.p.m
    public Animator m(ViewGroup viewGroup, s sVar, s sVar2) {
        int i2;
        View view;
        int i3;
        Rect rect;
        ObjectAnimator objectAnimator;
        Animator animatorC;
        if (sVar == null || sVar2 == null) {
            return null;
        }
        Map<String, Object> map = sVar.a;
        Map<String, Object> map2 = sVar2.a;
        ViewGroup viewGroup2 = (ViewGroup) map.get("android:changeBounds:parent");
        ViewGroup viewGroup3 = (ViewGroup) map2.get("android:changeBounds:parent");
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        View view2 = sVar2.f1316b;
        if (!c0(viewGroup2, viewGroup3)) {
            int iIntValue = ((Integer) sVar.a.get("android:changeBounds:windowX")).intValue();
            int iIntValue2 = ((Integer) sVar.a.get("android:changeBounds:windowY")).intValue();
            int iIntValue3 = ((Integer) sVar2.a.get("android:changeBounds:windowX")).intValue();
            int iIntValue4 = ((Integer) sVar2.a.get("android:changeBounds:windowY")).intValue();
            if (iIntValue == iIntValue3 && iIntValue2 == iIntValue4) {
                return null;
            }
            viewGroup.getLocationInWindow(this.K);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view2.getWidth(), view2.getHeight(), Bitmap.Config.ARGB_8888);
            view2.draw(new Canvas(bitmapCreateBitmap));
            BitmapDrawable bitmapDrawable = new BitmapDrawable(bitmapCreateBitmap);
            float fC = c0.c(view2);
            c0.g(view2, CropImageView.DEFAULT_ASPECT_RATIO);
            c0.b(viewGroup).b(bitmapDrawable);
            c.p.g gVarU = u();
            int[] iArr = this.K;
            ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(bitmapDrawable, c.p.i.a(O, gVarU.a(iIntValue - iArr[0], iIntValue2 - iArr[1], iIntValue3 - iArr[0], iIntValue4 - iArr[1])));
            objectAnimatorOfPropertyValuesHolder.addListener(new a(this, viewGroup, bitmapDrawable, view2, fC));
            return objectAnimatorOfPropertyValuesHolder;
        }
        Rect rect2 = (Rect) sVar.a.get("android:changeBounds:bounds");
        Rect rect3 = (Rect) sVar2.a.get("android:changeBounds:bounds");
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
        Rect rect4 = (Rect) sVar.a.get("android:changeBounds:clip");
        Rect rect5 = (Rect) sVar2.a.get("android:changeBounds:clip");
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
        if (this.L) {
            view = view2;
            c0.f(view, i4, i6, Math.max(i12, i14) + i4, Math.max(i13, i15) + i6);
            ObjectAnimator objectAnimatorA = (i4 == i5 && i6 == i7) ? null : c.p.f.a(view, T, u().a(i4, i6, i5, i7));
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
                androidx.core.view.v.u0(view, rect);
                c.p.k kVar = U;
                Object[] objArr = new Object[2];
                objArr[i3] = rect;
                objArr[1] = rect6;
                ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(view, "clipBounds", kVar, objArr);
                objectAnimatorOfObject.addListener(new i(this, view, rect5, i5, i7, i9, i11));
                objectAnimator = objectAnimatorOfObject;
            }
            animatorC = r.c(objectAnimatorA, objectAnimator);
        } else {
            view = view2;
            c0.f(view, i4, i6, i8, i10);
            if (i2 != 2) {
                animatorC = (i4 == i5 && i6 == i7) ? c.p.f.a(view, R, u().a(i8, i10, i9, i11)) : c.p.f.a(view, S, u().a(i4, i6, i5, i7));
            } else if (i12 == i14 && i13 == i15) {
                animatorC = c.p.f.a(view, T, u().a(i4, i6, i5, i7));
            } else {
                k kVar2 = new k(view);
                ObjectAnimator objectAnimatorA2 = c.p.f.a(kVar2, P, u().a(i4, i6, i5, i7));
                ObjectAnimator objectAnimatorA3 = c.p.f.a(kVar2, Q, u().a(i8, i10, i9, i11));
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(objectAnimatorA2, objectAnimatorA3);
                animatorSet.addListener(new h(this, kVar2));
                animatorC = animatorSet;
            }
        }
        if (view.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup4 = (ViewGroup) view.getParent();
            x.c(viewGroup4, true);
            a(new j(this, viewGroup4));
        }
        return animatorC;
    }
}
