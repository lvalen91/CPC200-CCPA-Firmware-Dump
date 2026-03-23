package com.google.android.material.bottomsheet;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.d0;
import androidx.core.view.e0.c;
import androidx.core.view.e0.f;
import androidx.core.view.v;
import c.i.b.c;
import com.google.android.material.internal.l;
import com.yalantis.ucrop.view.CropImageView;
import d.c.a.a.a0.k;
import d.c.a.a.j;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.c<V> {
    private static final int Y = j.Widget_Design_BottomSheet_Modal;
    float A;
    int B;
    float C;
    boolean D;
    private boolean E;
    private boolean F;
    int G;
    c.i.b.c H;
    private boolean I;
    private int J;
    private boolean K;
    private int L;
    int M;
    int N;
    WeakReference<V> O;
    WeakReference<View> P;
    private final ArrayList<g> Q;
    private VelocityTracker R;
    int S;
    private int T;
    boolean U;
    private Map<View, Integer> V;
    private int W;
    private final c.AbstractC0060c X;
    private int a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f2041b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f2042c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f2043d;
    private int e;
    private boolean f;
    private int g;
    private int h;
    private boolean i;
    private d.c.a.a.a0.g j;
    private int k;
    private int l;
    private boolean m;
    private boolean n;
    private boolean o;
    private boolean p;
    private boolean q;
    private int r;
    private int s;
    private k t;
    private boolean u;
    private BottomSheetBehavior<V>.i v;
    private ValueAnimator w;
    int x;
    int y;
    int z;

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f2044b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ViewGroup.LayoutParams f2045c;

        a(BottomSheetBehavior bottomSheetBehavior, View view, ViewGroup.LayoutParams layoutParams) {
            this.f2044b = view;
            this.f2045c = layoutParams;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2044b.setLayoutParams(this.f2045c);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f2046b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f2047c;

        b(View view, int i) {
            this.f2046b = view;
            this.f2047c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            BottomSheetBehavior.this.v0(this.f2046b, this.f2047c);
        }
    }

    class c implements ValueAnimator.AnimatorUpdateListener {
        c() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            if (BottomSheetBehavior.this.j != null) {
                BottomSheetBehavior.this.j.X(fFloatValue);
            }
        }
    }

    class d implements l.c {
        final /* synthetic */ boolean a;

        d(boolean z) {
            this.a = z;
        }

        @Override // com.google.android.material.internal.l.c
        public d0 a(View view, d0 d0Var, l.d dVar) {
            BottomSheetBehavior.this.s = d0Var.i();
            boolean zD = l.d(view);
            int paddingBottom = view.getPaddingBottom();
            int paddingLeft = view.getPaddingLeft();
            int paddingRight = view.getPaddingRight();
            if (BottomSheetBehavior.this.n) {
                BottomSheetBehavior.this.r = d0Var.f();
                paddingBottom = dVar.f2171d + BottomSheetBehavior.this.r;
            }
            if (BottomSheetBehavior.this.o) {
                paddingLeft = (zD ? dVar.f2170c : dVar.a) + d0Var.g();
            }
            if (BottomSheetBehavior.this.p) {
                paddingRight = (zD ? dVar.a : dVar.f2170c) + d0Var.h();
            }
            view.setPadding(paddingLeft, view.getPaddingTop(), paddingRight, paddingBottom);
            if (this.a) {
                BottomSheetBehavior.this.l = d0Var.e().f1171d;
            }
            if (BottomSheetBehavior.this.n || this.a) {
                BottomSheetBehavior.this.C0(false);
            }
            return d0Var;
        }
    }

    class e extends c.AbstractC0060c {
        e() {
        }

        private boolean n(View view) {
            int top = view.getTop();
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return top > (bottomSheetBehavior.N + bottomSheetBehavior.b0()) / 2;
        }

        @Override // c.i.b.c.AbstractC0060c
        public int a(View view, int i, int i2) {
            return view.getLeft();
        }

        @Override // c.i.b.c.AbstractC0060c
        public int b(View view, int i, int i2) {
            int iB0 = BottomSheetBehavior.this.b0();
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return c.g.f.a.b(i, iB0, bottomSheetBehavior.D ? bottomSheetBehavior.N : bottomSheetBehavior.B);
        }

        @Override // c.i.b.c.AbstractC0060c
        public int e(View view) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return bottomSheetBehavior.D ? bottomSheetBehavior.N : bottomSheetBehavior.B;
        }

        @Override // c.i.b.c.AbstractC0060c
        public void j(int i) {
            if (i == 1 && BottomSheetBehavior.this.F) {
                BottomSheetBehavior.this.t0(1);
            }
        }

        @Override // c.i.b.c.AbstractC0060c
        public void k(View view, int i, int i2, int i3, int i4) {
            BottomSheetBehavior.this.Z(i2);
        }

        @Override // c.i.b.c.AbstractC0060c
        public void l(View view, float f, float f2) {
            int iB0;
            int i = 4;
            if (f2 < CropImageView.DEFAULT_ASPECT_RATIO) {
                if (BottomSheetBehavior.this.f2041b) {
                    iB0 = BottomSheetBehavior.this.y;
                } else {
                    int top = view.getTop();
                    BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                    int i2 = bottomSheetBehavior.z;
                    if (top > i2) {
                        iB0 = i2;
                        i = 6;
                    } else {
                        iB0 = bottomSheetBehavior.b0();
                    }
                }
                i = 3;
            } else {
                BottomSheetBehavior bottomSheetBehavior2 = BottomSheetBehavior.this;
                if (bottomSheetBehavior2.D && bottomSheetBehavior2.x0(view, f2)) {
                    if ((Math.abs(f) >= Math.abs(f2) || f2 <= 500.0f) && !n(view)) {
                        if (BottomSheetBehavior.this.f2041b) {
                            iB0 = BottomSheetBehavior.this.y;
                        } else if (Math.abs(view.getTop() - BottomSheetBehavior.this.b0()) < Math.abs(view.getTop() - BottomSheetBehavior.this.z)) {
                            iB0 = BottomSheetBehavior.this.b0();
                        } else {
                            iB0 = BottomSheetBehavior.this.z;
                            i = 6;
                        }
                        i = 3;
                    } else {
                        iB0 = BottomSheetBehavior.this.N;
                        i = 5;
                    }
                } else if (f2 == CropImageView.DEFAULT_ASPECT_RATIO || Math.abs(f) > Math.abs(f2)) {
                    int top2 = view.getTop();
                    if (!BottomSheetBehavior.this.f2041b) {
                        BottomSheetBehavior bottomSheetBehavior3 = BottomSheetBehavior.this;
                        int i3 = bottomSheetBehavior3.z;
                        if (top2 < i3) {
                            if (top2 < Math.abs(top2 - bottomSheetBehavior3.B)) {
                                iB0 = BottomSheetBehavior.this.b0();
                                i = 3;
                            } else {
                                iB0 = BottomSheetBehavior.this.z;
                            }
                        } else if (Math.abs(top2 - i3) < Math.abs(top2 - BottomSheetBehavior.this.B)) {
                            iB0 = BottomSheetBehavior.this.z;
                        } else {
                            iB0 = BottomSheetBehavior.this.B;
                        }
                        i = 6;
                    } else if (Math.abs(top2 - BottomSheetBehavior.this.y) < Math.abs(top2 - BottomSheetBehavior.this.B)) {
                        iB0 = BottomSheetBehavior.this.y;
                        i = 3;
                    } else {
                        iB0 = BottomSheetBehavior.this.B;
                    }
                } else if (BottomSheetBehavior.this.f2041b) {
                    iB0 = BottomSheetBehavior.this.B;
                } else {
                    int top3 = view.getTop();
                    if (Math.abs(top3 - BottomSheetBehavior.this.z) < Math.abs(top3 - BottomSheetBehavior.this.B)) {
                        iB0 = BottomSheetBehavior.this.z;
                        i = 6;
                    } else {
                        iB0 = BottomSheetBehavior.this.B;
                    }
                }
            }
            BottomSheetBehavior.this.y0(view, i, iB0, true);
        }

        @Override // c.i.b.c.AbstractC0060c
        public boolean m(View view, int i) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            int i2 = bottomSheetBehavior.G;
            if (i2 == 1 || bottomSheetBehavior.U) {
                return false;
            }
            if (i2 == 3 && bottomSheetBehavior.S == i) {
                WeakReference<View> weakReference = bottomSheetBehavior.P;
                View view2 = weakReference != null ? weakReference.get() : null;
                if (view2 != null && view2.canScrollVertically(-1)) {
                    return false;
                }
            }
            WeakReference<V> weakReference2 = BottomSheetBehavior.this.O;
            return weakReference2 != null && weakReference2.get() == view;
        }
    }

    class f implements androidx.core.view.e0.f {
        final /* synthetic */ int a;

        f(int i) {
            this.a = i;
        }

        @Override // androidx.core.view.e0.f
        public boolean a(View view, f.a aVar) {
            BottomSheetBehavior.this.s0(this.a);
            return true;
        }
    }

    public static abstract class g {
        public abstract void a(View view, float f);

        public abstract void b(View view, int i);
    }

    private class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final View f2052b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f2053c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f2054d;

        i(View view, int i) {
            this.f2052b = view;
            this.f2054d = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            c.i.b.c cVar = BottomSheetBehavior.this.H;
            if (cVar == null || !cVar.k(true)) {
                BottomSheetBehavior.this.t0(this.f2054d);
            } else {
                v.g0(this.f2052b, this);
            }
            this.f2053c = false;
        }
    }

    public BottomSheetBehavior() {
        this.a = 0;
        this.f2041b = true;
        this.f2042c = false;
        this.k = -1;
        this.v = null;
        this.A = 0.5f;
        this.C = -1.0f;
        this.F = true;
        this.G = 4;
        this.Q = new ArrayList<>();
        this.W = -1;
        this.X = new e();
    }

    private void A0(int i2) {
        ValueAnimator valueAnimator;
        if (i2 == 2) {
            return;
        }
        boolean z = i2 == 3;
        if (this.u != z) {
            this.u = z;
            if (this.j == null || (valueAnimator = this.w) == null) {
                return;
            }
            if (valueAnimator.isRunning()) {
                this.w.reverse();
                return;
            }
            float f2 = z ? CropImageView.DEFAULT_ASPECT_RATIO : 1.0f;
            this.w.setFloatValues(1.0f - f2, f2);
            this.w.start();
        }
    }

    private void B0(boolean z) {
        Map<View, Integer> map;
        WeakReference<V> weakReference = this.O;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = weakReference.get().getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (Build.VERSION.SDK_INT >= 16 && z) {
                if (this.V != null) {
                    return;
                } else {
                    this.V = new HashMap(childCount);
                }
            }
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = coordinatorLayout.getChildAt(i2);
                if (childAt != this.O.get()) {
                    if (z) {
                        if (Build.VERSION.SDK_INT >= 16) {
                            this.V.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        }
                        if (this.f2042c) {
                            v.x0(childAt, 4);
                        }
                    } else if (this.f2042c && (map = this.V) != null && map.containsKey(childAt)) {
                        v.x0(childAt, this.V.get(childAt).intValue());
                    }
                }
            }
            if (!z) {
                this.V = null;
            } else if (this.f2042c) {
                this.O.get().sendAccessibilityEvent(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C0(boolean z) {
        V v;
        if (this.O != null) {
            S();
            if (this.G != 4 || (v = this.O.get()) == null) {
                return;
            }
            if (z) {
                w0(this.G);
            } else {
                v.requestLayout();
            }
        }
    }

    private int R(V v, int i2, int i3) {
        return v.b(v, v.getResources().getString(i2), V(i3));
    }

    private void S() {
        int iU = U();
        if (this.f2041b) {
            this.B = Math.max(this.N - iU, this.y);
        } else {
            this.B = this.N - iU;
        }
    }

    private void T() {
        this.z = (int) (this.N * (1.0f - this.A));
    }

    private int U() {
        int i2;
        return this.f ? Math.min(Math.max(this.g, this.N - ((this.M * 9) / 16)), this.L) + this.r : (this.m || this.n || (i2 = this.l) <= 0) ? this.e + this.r : Math.max(this.e, i2 + this.h);
    }

    private androidx.core.view.e0.f V(int i2) {
        return new f(i2);
    }

    private void W(Context context, AttributeSet attributeSet, boolean z) {
        X(context, attributeSet, z, null);
    }

    private void X(Context context, AttributeSet attributeSet, boolean z, ColorStateList colorStateList) {
        if (this.i) {
            this.t = k.e(context, attributeSet, d.c.a.a.b.bottomSheetStyle, Y).m();
            d.c.a.a.a0.g gVar = new d.c.a.a.a0.g(this.t);
            this.j = gVar;
            gVar.M(context);
            if (z && colorStateList != null) {
                this.j.W(colorStateList);
                return;
            }
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.colorBackground, typedValue, true);
            this.j.setTint(typedValue.data);
        }
    }

    private void Y() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(CropImageView.DEFAULT_ASPECT_RATIO, 1.0f);
        this.w = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(500L);
        this.w.addUpdateListener(new c());
    }

    private float c0() {
        VelocityTracker velocityTracker = this.R;
        if (velocityTracker == null) {
            return CropImageView.DEFAULT_ASPECT_RATIO;
        }
        velocityTracker.computeCurrentVelocity(1000, this.f2043d);
        return this.R.getYVelocity(this.S);
    }

    private void e0(V v, c.a aVar, int i2) {
        v.k0(v, aVar, null, V(i2));
    }

    private void f0() {
        this.S = -1;
        VelocityTracker velocityTracker = this.R;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.R = null;
        }
    }

    private void g0(h hVar) {
        int i2 = this.a;
        if (i2 == 0) {
            return;
        }
        if (i2 == -1 || (i2 & 1) == 1) {
            this.e = hVar.e;
        }
        int i3 = this.a;
        if (i3 == -1 || (i3 & 2) == 2) {
            this.f2041b = hVar.f;
        }
        int i4 = this.a;
        if (i4 == -1 || (i4 & 4) == 4) {
            this.D = hVar.g;
        }
        int i5 = this.a;
        if (i5 == -1 || (i5 & 8) == 8) {
            this.E = hVar.h;
        }
    }

    private void u0(View view) {
        boolean z = (Build.VERSION.SDK_INT < 29 || d0() || this.f) ? false : true;
        if (this.n || this.o || this.p || z) {
            l.a(view, new d(z));
        }
    }

    private void w0(int i2) {
        V v = this.O.get();
        if (v == null) {
            return;
        }
        ViewParent parent = v.getParent();
        if (parent != null && parent.isLayoutRequested() && v.S(v)) {
            v.post(new b(v, i2));
        } else {
            v0(v, i2);
        }
    }

    private void z0() {
        V v;
        WeakReference<V> weakReference = this.O;
        if (weakReference == null || (v = weakReference.get()) == null) {
            return;
        }
        v.i0(v, 524288);
        v.i0(v, 262144);
        v.i0(v, 1048576);
        int i2 = this.W;
        if (i2 != -1) {
            v.i0(v, i2);
        }
        if (!this.f2041b && this.G != 6) {
            this.W = R(v, d.c.a.a.i.bottomsheet_action_expand_halfway, 6);
        }
        if (this.D && this.G != 5) {
            e0(v, c.a.j, 5);
        }
        int i3 = this.G;
        if (i3 == 3) {
            e0(v, c.a.i, this.f2041b ? 4 : 6);
            return;
        }
        if (i3 == 4) {
            e0(v, c.a.h, this.f2041b ? 3 : 6);
        } else {
            if (i3 != 6) {
                return;
            }
            e0(v, c.a.i, 4);
            e0(v, c.a.h, 3);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean A(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i2, int i3) {
        this.J = 0;
        this.K = false;
        return (i2 & 2) != 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void C(CoordinatorLayout coordinatorLayout, V v, View view, int i2) {
        int iB0;
        int i3 = 3;
        if (v.getTop() == b0()) {
            t0(3);
            return;
        }
        WeakReference<View> weakReference = this.P;
        if (weakReference != null && view == weakReference.get() && this.K) {
            if (this.J > 0) {
                if (this.f2041b) {
                    iB0 = this.y;
                } else {
                    int top = v.getTop();
                    int i4 = this.z;
                    if (top > i4) {
                        iB0 = i4;
                        i3 = 6;
                    } else {
                        iB0 = b0();
                    }
                }
            } else if (this.D && x0(v, c0())) {
                iB0 = this.N;
                i3 = 5;
            } else if (this.J == 0) {
                int top2 = v.getTop();
                if (!this.f2041b) {
                    int i5 = this.z;
                    if (top2 < i5) {
                        if (top2 < Math.abs(top2 - this.B)) {
                            iB0 = b0();
                        } else {
                            iB0 = this.z;
                        }
                    } else if (Math.abs(top2 - i5) < Math.abs(top2 - this.B)) {
                        iB0 = this.z;
                    } else {
                        iB0 = this.B;
                        i3 = 4;
                    }
                    i3 = 6;
                } else if (Math.abs(top2 - this.y) < Math.abs(top2 - this.B)) {
                    iB0 = this.y;
                } else {
                    iB0 = this.B;
                    i3 = 4;
                }
            } else {
                if (this.f2041b) {
                    iB0 = this.B;
                } else {
                    int top3 = v.getTop();
                    if (Math.abs(top3 - this.z) < Math.abs(top3 - this.B)) {
                        iB0 = this.z;
                        i3 = 6;
                    } else {
                        iB0 = this.B;
                    }
                }
                i3 = 4;
            }
            y0(v, i3, iB0, false);
            this.K = false;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean D(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (!v.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.G == 1 && actionMasked == 0) {
            return true;
        }
        c.i.b.c cVar = this.H;
        if (cVar != null) {
            cVar.z(motionEvent);
        }
        if (actionMasked == 0) {
            f0();
        }
        if (this.R == null) {
            this.R = VelocityTracker.obtain();
        }
        this.R.addMovement(motionEvent);
        if (this.H != null && actionMasked == 2 && !this.I && Math.abs(this.T - motionEvent.getY()) > this.H.u()) {
            this.H.b(v, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.I;
    }

    void Z(int i2) {
        float f2;
        float fB0;
        V v = this.O.get();
        if (v == null || this.Q.isEmpty()) {
            return;
        }
        int i3 = this.B;
        if (i2 > i3 || i3 == b0()) {
            int i4 = this.B;
            f2 = i4 - i2;
            fB0 = this.N - i4;
        } else {
            int i5 = this.B;
            f2 = i5 - i2;
            fB0 = i5 - b0();
        }
        float f3 = f2 / fB0;
        for (int i6 = 0; i6 < this.Q.size(); i6++) {
            this.Q.get(i6).a(v, f3);
        }
    }

    View a0(View view) {
        if (v.U(view)) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View viewA0 = a0(viewGroup.getChildAt(i2));
            if (viewA0 != null) {
                return viewA0;
            }
        }
        return null;
    }

    public int b0() {
        if (this.f2041b) {
            return this.y;
        }
        return Math.max(this.x, this.q ? 0 : this.s);
    }

    public boolean d0() {
        return this.m;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void g(CoordinatorLayout.f fVar) {
        super.g(fVar);
        this.O = null;
        this.H = null;
    }

    public void h0(boolean z) {
        this.F = z;
    }

    public void i0(int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("offset must be greater than or equal to 0");
        }
        this.x = i2;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void j() {
        super.j();
        this.O = null;
        this.H = null;
    }

    public void j0(boolean z) {
        if (this.f2041b == z) {
            return;
        }
        this.f2041b = z;
        if (this.O != null) {
            S();
        }
        t0((this.f2041b && this.G == 6) ? 3 : this.G);
        z0();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean k(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        c.i.b.c cVar;
        if (!v.isShown() || !this.F) {
            this.I = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            f0();
        }
        if (this.R == null) {
            this.R = VelocityTracker.obtain();
        }
        this.R.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x = (int) motionEvent.getX();
            this.T = (int) motionEvent.getY();
            if (this.G != 2) {
                WeakReference<View> weakReference = this.P;
                View view = weakReference != null ? weakReference.get() : null;
                if (view != null && coordinatorLayout.B(view, x, this.T)) {
                    this.S = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.U = true;
                }
            }
            this.I = this.S == -1 && !coordinatorLayout.B(v, x, this.T);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.U = false;
            this.S = -1;
            if (this.I) {
                this.I = false;
                return false;
            }
        }
        if (!this.I && (cVar = this.H) != null && cVar.G(motionEvent)) {
            return true;
        }
        WeakReference<View> weakReference2 = this.P;
        View view2 = weakReference2 != null ? weakReference2.get() : null;
        return (actionMasked != 2 || view2 == null || this.I || this.G == 1 || coordinatorLayout.B(view2, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.H == null || Math.abs(((float) this.T) - motionEvent.getY()) <= ((float) this.H.u())) ? false : true;
    }

    public void k0(boolean z) {
        this.m = z;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean l(CoordinatorLayout coordinatorLayout, V v, int i2) {
        d.c.a.a.a0.g gVar;
        if (v.z(coordinatorLayout) && !v.z(v)) {
            v.setFitsSystemWindows(true);
        }
        if (this.O == null) {
            this.g = coordinatorLayout.getResources().getDimensionPixelSize(d.c.a.a.d.design_bottom_sheet_peek_height_min);
            u0(v);
            this.O = new WeakReference<>(v);
            if (this.i && (gVar = this.j) != null) {
                v.r0(v, gVar);
            }
            d.c.a.a.a0.g gVar2 = this.j;
            if (gVar2 != null) {
                float fW = this.C;
                if (fW == -1.0f) {
                    fW = v.w(v);
                }
                gVar2.V(fW);
                boolean z = this.G == 3;
                this.u = z;
                this.j.X(z ? CropImageView.DEFAULT_ASPECT_RATIO : 1.0f);
            }
            z0();
            if (v.A(v) == 0) {
                v.x0(v, 1);
            }
            int measuredWidth = v.getMeasuredWidth();
            int i3 = this.k;
            if (measuredWidth > i3 && i3 != -1) {
                ViewGroup.LayoutParams layoutParams = v.getLayoutParams();
                layoutParams.width = this.k;
                v.post(new a(this, v, layoutParams));
            }
        }
        if (this.H == null) {
            this.H = c.i.b.c.m(coordinatorLayout, this.X);
        }
        int top = v.getTop();
        coordinatorLayout.I(v, i2);
        this.M = coordinatorLayout.getWidth();
        this.N = coordinatorLayout.getHeight();
        int height = v.getHeight();
        this.L = height;
        int i4 = this.N;
        int i5 = i4 - height;
        int i6 = this.s;
        if (i5 < i6) {
            if (this.q) {
                this.L = i4;
            } else {
                this.L = i4 - i6;
            }
        }
        this.y = Math.max(0, this.N - this.L);
        T();
        S();
        int i7 = this.G;
        if (i7 == 3) {
            v.Z(v, b0());
        } else if (i7 == 6) {
            v.Z(v, this.z);
        } else if (this.D && i7 == 5) {
            v.Z(v, this.N);
        } else {
            int i8 = this.G;
            if (i8 == 4) {
                v.Z(v, this.B);
            } else if (i8 == 1 || i8 == 2) {
                v.Z(v, top - v.getTop());
            }
        }
        this.P = new WeakReference<>(a0(v));
        return true;
    }

    public void l0(float f2) {
        if (f2 <= CropImageView.DEFAULT_ASPECT_RATIO || f2 >= 1.0f) {
            throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
        }
        this.A = f2;
        if (this.O != null) {
            T();
        }
    }

    public void m0(boolean z) {
        if (this.D != z) {
            this.D = z;
            if (!z && this.G == 5) {
                s0(4);
            }
            z0();
        }
    }

    public void n0(int i2) {
        this.k = i2;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean o(CoordinatorLayout coordinatorLayout, V v, View view, float f2, float f3) {
        WeakReference<View> weakReference = this.P;
        if (weakReference == null || view != weakReference.get()) {
            return false;
        }
        return this.G != 3 || super.o(coordinatorLayout, v, view, f2, f3);
    }

    public void o0(int i2) {
        p0(i2, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void p0(int i2, boolean z) {
        boolean z2 = true;
        if (i2 == -1) {
            if (this.f) {
                z2 = false;
            } else {
                this.f = true;
            }
        } else if (this.f || this.e != i2) {
            this.f = false;
            this.e = Math.max(0, i2);
        }
        if (z2) {
            C0(z);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void q(CoordinatorLayout coordinatorLayout, V v, View view, int i2, int i3, int[] iArr, int i4) {
        if (i4 == 1) {
            return;
        }
        WeakReference<View> weakReference = this.P;
        if (view != (weakReference != null ? weakReference.get() : null)) {
            return;
        }
        int top = v.getTop();
        int i5 = top - i3;
        if (i3 > 0) {
            if (i5 < b0()) {
                iArr[1] = top - b0();
                v.Z(v, -iArr[1]);
                t0(3);
            } else {
                if (!this.F) {
                    return;
                }
                iArr[1] = i3;
                v.Z(v, -i3);
                t0(1);
            }
        } else if (i3 < 0 && !view.canScrollVertically(-1)) {
            int i6 = this.B;
            if (i5 > i6 && !this.D) {
                iArr[1] = top - i6;
                v.Z(v, -iArr[1]);
                t0(4);
            } else {
                if (!this.F) {
                    return;
                }
                iArr[1] = i3;
                v.Z(v, -i3);
                t0(1);
            }
        }
        Z(v.getTop());
        this.J = i3;
        this.K = true;
    }

    public void q0(int i2) {
        this.a = i2;
    }

    public void r0(boolean z) {
        this.E = z;
    }

    public void s0(int i2) {
        if (i2 == this.G) {
            return;
        }
        if (this.O != null) {
            w0(i2);
            return;
        }
        if (i2 == 4 || i2 == 3 || i2 == 6 || (this.D && i2 == 5)) {
            this.G = i2;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void t(CoordinatorLayout coordinatorLayout, V v, View view, int i2, int i3, int i4, int i5, int i6, int[] iArr) {
    }

    void t0(int i2) {
        V v;
        if (this.G == i2) {
            return;
        }
        this.G = i2;
        WeakReference<V> weakReference = this.O;
        if (weakReference == null || (v = weakReference.get()) == null) {
            return;
        }
        if (i2 == 3) {
            B0(true);
        } else if (i2 == 6 || i2 == 5 || i2 == 4) {
            B0(false);
        }
        A0(i2);
        for (int i3 = 0; i3 < this.Q.size(); i3++) {
            this.Q.get(i3).b(v, i2);
        }
        z0();
    }

    void v0(View view, int i2) {
        int iB0;
        int i3;
        if (i2 == 4) {
            iB0 = this.B;
        } else if (i2 == 6) {
            int i4 = this.z;
            if (!this.f2041b || i4 > (i3 = this.y)) {
                iB0 = i4;
            } else {
                iB0 = i3;
                i2 = 3;
            }
        } else if (i2 == 3) {
            iB0 = b0();
        } else {
            if (!this.D || i2 != 5) {
                throw new IllegalArgumentException("Illegal state argument: " + i2);
            }
            iB0 = this.N;
        }
        y0(view, i2, iB0, false);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void x(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        h hVar = (h) parcelable;
        super.x(coordinatorLayout, v, hVar.j());
        g0(hVar);
        int i2 = hVar.f2051d;
        if (i2 == 1 || i2 == 2) {
            this.G = 4;
        } else {
            this.G = i2;
        }
    }

    boolean x0(View view, float f2) {
        if (this.E) {
            return true;
        }
        if (view.getTop() < this.B) {
            return false;
        }
        return Math.abs((((float) view.getTop()) + (f2 * 0.1f)) - ((float) this.B)) / ((float) U()) > 0.5f;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public Parcelable y(CoordinatorLayout coordinatorLayout, V v) {
        return new h(super.y(coordinatorLayout, v), (BottomSheetBehavior<?>) this);
    }

    void y0(View view, int i2, int i3, boolean z) {
        c.i.b.c cVar = this.H;
        if (!(cVar != null && (!z ? !cVar.H(view, view.getLeft(), i3) : !cVar.F(view.getLeft(), i3)))) {
            t0(i2);
            return;
        }
        t0(2);
        A0(i2);
        if (this.v == null) {
            this.v = new i(view, i2);
        }
        if (((i) this.v).f2053c) {
            this.v.f2054d = i2;
            return;
        }
        BottomSheetBehavior<V>.i iVar = this.v;
        iVar.f2054d = i2;
        v.g0(view, iVar);
        ((i) this.v).f2053c = true;
    }

    protected static class h extends c.i.a.a {
        public static final Parcelable.Creator<h> CREATOR = new a();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final int f2051d;
        int e;
        boolean f;
        boolean g;
        boolean h;

        static class a implements Parcelable.ClassLoaderCreator<h> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public h createFromParcel(Parcel parcel) {
                return new h(parcel, (ClassLoader) null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public h createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new h(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public h[] newArray(int i) {
                return new h[i];
            }
        }

        public h(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f2051d = parcel.readInt();
            this.e = parcel.readInt();
            this.f = parcel.readInt() == 1;
            this.g = parcel.readInt() == 1;
            this.h = parcel.readInt() == 1;
        }

        @Override // c.i.a.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f2051d);
            parcel.writeInt(this.e);
            parcel.writeInt(this.f ? 1 : 0);
            parcel.writeInt(this.g ? 1 : 0);
            parcel.writeInt(this.h ? 1 : 0);
        }

        public h(Parcelable parcelable, BottomSheetBehavior<?> bottomSheetBehavior) {
            super(parcelable);
            this.f2051d = bottomSheetBehavior.G;
            this.e = ((BottomSheetBehavior) bottomSheetBehavior).e;
            this.f = ((BottomSheetBehavior) bottomSheetBehavior).f2041b;
            this.g = bottomSheetBehavior.D;
            this.h = ((BottomSheetBehavior) bottomSheetBehavior).E;
        }
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        int i2;
        super(context, attributeSet);
        this.a = 0;
        this.f2041b = true;
        this.f2042c = false;
        this.k = -1;
        this.v = null;
        this.A = 0.5f;
        this.C = -1.0f;
        this.F = true;
        this.G = 4;
        this.Q = new ArrayList<>();
        this.W = -1;
        this.X = new e();
        this.h = context.getResources().getDimensionPixelSize(d.c.a.a.d.mtrl_min_touch_target_size);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.c.a.a.k.BottomSheetBehavior_Layout);
        this.i = typedArrayObtainStyledAttributes.hasValue(d.c.a.a.k.BottomSheetBehavior_Layout_shapeAppearance);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(d.c.a.a.k.BottomSheetBehavior_Layout_backgroundTint);
        if (zHasValue) {
            X(context, attributeSet, zHasValue, d.c.a.a.x.c.a(context, typedArrayObtainStyledAttributes, d.c.a.a.k.BottomSheetBehavior_Layout_backgroundTint));
        } else {
            W(context, attributeSet, zHasValue);
        }
        Y();
        if (Build.VERSION.SDK_INT >= 21) {
            this.C = typedArrayObtainStyledAttributes.getDimension(d.c.a.a.k.BottomSheetBehavior_Layout_android_elevation, -1.0f);
        }
        if (typedArrayObtainStyledAttributes.hasValue(d.c.a.a.k.BottomSheetBehavior_Layout_android_maxWidth)) {
            n0(typedArrayObtainStyledAttributes.getDimensionPixelSize(d.c.a.a.k.BottomSheetBehavior_Layout_android_maxWidth, -1));
        }
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(d.c.a.a.k.BottomSheetBehavior_Layout_behavior_peekHeight);
        if (typedValuePeekValue != null && (i2 = typedValuePeekValue.data) == -1) {
            o0(i2);
        } else {
            o0(typedArrayObtainStyledAttributes.getDimensionPixelSize(d.c.a.a.k.BottomSheetBehavior_Layout_behavior_peekHeight, -1));
        }
        m0(typedArrayObtainStyledAttributes.getBoolean(d.c.a.a.k.BottomSheetBehavior_Layout_behavior_hideable, false));
        k0(typedArrayObtainStyledAttributes.getBoolean(d.c.a.a.k.BottomSheetBehavior_Layout_gestureInsetBottomIgnored, false));
        j0(typedArrayObtainStyledAttributes.getBoolean(d.c.a.a.k.BottomSheetBehavior_Layout_behavior_fitToContents, true));
        r0(typedArrayObtainStyledAttributes.getBoolean(d.c.a.a.k.BottomSheetBehavior_Layout_behavior_skipCollapsed, false));
        h0(typedArrayObtainStyledAttributes.getBoolean(d.c.a.a.k.BottomSheetBehavior_Layout_behavior_draggable, true));
        q0(typedArrayObtainStyledAttributes.getInt(d.c.a.a.k.BottomSheetBehavior_Layout_behavior_saveFlags, 0));
        l0(typedArrayObtainStyledAttributes.getFloat(d.c.a.a.k.BottomSheetBehavior_Layout_behavior_halfExpandedRatio, 0.5f));
        TypedValue typedValuePeekValue2 = typedArrayObtainStyledAttributes.peekValue(d.c.a.a.k.BottomSheetBehavior_Layout_behavior_expandedOffset);
        if (typedValuePeekValue2 != null && typedValuePeekValue2.type == 16) {
            i0(typedValuePeekValue2.data);
        } else {
            i0(typedArrayObtainStyledAttributes.getDimensionPixelOffset(d.c.a.a.k.BottomSheetBehavior_Layout_behavior_expandedOffset, 0));
        }
        this.n = typedArrayObtainStyledAttributes.getBoolean(d.c.a.a.k.BottomSheetBehavior_Layout_paddingBottomSystemWindowInsets, false);
        this.o = typedArrayObtainStyledAttributes.getBoolean(d.c.a.a.k.BottomSheetBehavior_Layout_paddingLeftSystemWindowInsets, false);
        this.p = typedArrayObtainStyledAttributes.getBoolean(d.c.a.a.k.BottomSheetBehavior_Layout_paddingRightSystemWindowInsets, false);
        this.q = typedArrayObtainStyledAttributes.getBoolean(d.c.a.a.k.BottomSheetBehavior_Layout_paddingTopSystemWindowInsets, true);
        typedArrayObtainStyledAttributes.recycle();
        this.f2043d = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }
}
