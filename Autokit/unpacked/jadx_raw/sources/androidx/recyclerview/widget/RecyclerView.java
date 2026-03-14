package androidx.recyclerview.widget;

import android.R;
import android.animation.LayoutTransition;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Display;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.core.view.e0.c;
import androidx.recyclerview.widget.a;
import androidx.recyclerview.widget.b;
import androidx.recyclerview.widget.e;
import androidx.recyclerview.widget.k;
import androidx.recyclerview.widget.o;
import androidx.recyclerview.widget.p;
import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class RecyclerView extends ViewGroup implements androidx.core.view.k {
    static final boolean A0;
    static final boolean B0;
    private static final boolean C0;
    private static final boolean D0;
    private static final Class<?>[] E0;
    static final Interpolator F0;
    private static final int[] y0 = {R.attr.nestedScrollingEnabled};
    static final boolean z0;
    boolean A;
    private final AccessibilityManager B;
    private List<p> C;
    boolean D;
    boolean E;
    private int F;
    private int G;
    private j H;
    private EdgeEffect I;
    private EdgeEffect J;
    private EdgeEffect K;
    private EdgeEffect L;
    k M;
    private int N;
    private int O;
    private VelocityTracker P;
    private int Q;
    private int R;
    private int S;
    private int T;
    private int U;
    private q V;
    private final int W;
    private final int a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final w f867b;
    private float b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final u f868c;
    private float c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private x f869d;
    private boolean d0;
    androidx.recyclerview.widget.a e;
    final b0 e0;
    androidx.recyclerview.widget.b f;
    androidx.recyclerview.widget.e f0;
    final androidx.recyclerview.widget.p g;
    e.b g0;
    boolean h;
    final z h0;
    final Rect i;
    private s i0;
    private final Rect j;
    private List<s> j0;
    final RectF k;
    boolean k0;
    f l;
    boolean l0;
    n m;
    private k.b m0;
    v n;
    boolean n0;
    final ArrayList<m> o;
    androidx.recyclerview.widget.k o0;
    private final ArrayList<r> p;
    private i p0;
    private r q;
    private final int[] q0;
    boolean r;
    private androidx.core.view.l r0;
    boolean s;
    private final int[] s0;
    boolean t;
    private final int[] t0;
    boolean u;
    final int[] u0;
    private int v;
    final List<c0> v0;
    boolean w;
    private Runnable w0;
    boolean x;
    private final p.b x0;
    private boolean y;
    private int z;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k kVar = RecyclerView.this.M;
            if (kVar != null) {
                kVar.u();
            }
            RecyclerView.this.n0 = false;
        }
    }

    public static abstract class a0 {
        public abstract View a(u uVar, int i, int i2);
    }

    static class b implements Interpolator {
        b() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    class b0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f871b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f872c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        OverScroller f873d;
        Interpolator e = RecyclerView.F0;
        private boolean f = false;
        private boolean g = false;

        b0() {
            this.f873d = new OverScroller(RecyclerView.this.getContext(), RecyclerView.F0);
        }

        private int a(int i, int i2, int i3, int i4) {
            int iRound;
            int iAbs = Math.abs(i);
            int iAbs2 = Math.abs(i2);
            boolean z = iAbs > iAbs2;
            int iSqrt = (int) Math.sqrt((i3 * i3) + (i4 * i4));
            int iSqrt2 = (int) Math.sqrt((i * i) + (i2 * i2));
            RecyclerView recyclerView = RecyclerView.this;
            int width = z ? recyclerView.getWidth() : recyclerView.getHeight();
            int i5 = width / 2;
            float f = width;
            float f2 = i5;
            float fB = f2 + (b(Math.min(1.0f, (iSqrt2 * 1.0f) / f)) * f2);
            if (iSqrt > 0) {
                iRound = Math.round(Math.abs(fB / iSqrt) * 1000.0f) * 4;
            } else {
                if (!z) {
                    iAbs = iAbs2;
                }
                iRound = (int) (((iAbs / f) + 1.0f) * 300.0f);
            }
            return Math.min(iRound, 2000);
        }

        private float b(float f) {
            return (float) Math.sin((f - 0.5f) * 0.47123894f);
        }

        private void d() {
            RecyclerView.this.removeCallbacks(this);
            androidx.core.view.v.g0(RecyclerView.this, this);
        }

        public void c(int i, int i2) {
            RecyclerView.this.setScrollState(2);
            this.f872c = 0;
            this.f871b = 0;
            Interpolator interpolator = this.e;
            Interpolator interpolator2 = RecyclerView.F0;
            if (interpolator != interpolator2) {
                this.e = interpolator2;
                this.f873d = new OverScroller(RecyclerView.this.getContext(), RecyclerView.F0);
            }
            this.f873d.fling(0, 0, i, i2, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
            e();
        }

        void e() {
            if (this.f) {
                this.g = true;
            } else {
                d();
            }
        }

        public void f(int i, int i2, int i3, Interpolator interpolator) {
            if (i3 == Integer.MIN_VALUE) {
                i3 = a(i, i2, 0, 0);
            }
            int i4 = i3;
            if (interpolator == null) {
                interpolator = RecyclerView.F0;
            }
            if (this.e != interpolator) {
                this.e = interpolator;
                this.f873d = new OverScroller(RecyclerView.this.getContext(), interpolator);
            }
            this.f872c = 0;
            this.f871b = 0;
            RecyclerView.this.setScrollState(2);
            this.f873d.startScroll(0, 0, i, i2, i4);
            if (Build.VERSION.SDK_INT < 23) {
                this.f873d.computeScrollOffset();
            }
            e();
        }

        public void g() {
            RecyclerView.this.removeCallbacks(this);
            this.f873d.abortAnimation();
        }

        @Override // java.lang.Runnable
        public void run() {
            int i;
            int i2;
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.m == null) {
                g();
                return;
            }
            this.g = false;
            this.f = true;
            recyclerView.u();
            OverScroller overScroller = this.f873d;
            if (overScroller.computeScrollOffset()) {
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                int i3 = currX - this.f871b;
                int i4 = currY - this.f872c;
                this.f871b = currX;
                this.f872c = currY;
                RecyclerView recyclerView2 = RecyclerView.this;
                int[] iArr = recyclerView2.u0;
                iArr[0] = 0;
                iArr[1] = 0;
                if (recyclerView2.F(i3, i4, iArr, null, 1)) {
                    int[] iArr2 = RecyclerView.this.u0;
                    i3 -= iArr2[0];
                    i4 -= iArr2[1];
                }
                if (RecyclerView.this.getOverScrollMode() != 2) {
                    RecyclerView.this.t(i3, i4);
                }
                RecyclerView recyclerView3 = RecyclerView.this;
                if (recyclerView3.l != null) {
                    int[] iArr3 = recyclerView3.u0;
                    iArr3[0] = 0;
                    iArr3[1] = 0;
                    recyclerView3.f1(i3, i4, iArr3);
                    RecyclerView recyclerView4 = RecyclerView.this;
                    int[] iArr4 = recyclerView4.u0;
                    i2 = iArr4[0];
                    i = iArr4[1];
                    i3 -= i2;
                    i4 -= i;
                    y yVar = recyclerView4.m.g;
                    if (yVar != null && !yVar.g() && yVar.h()) {
                        int iB = RecyclerView.this.h0.b();
                        if (iB == 0) {
                            yVar.r();
                        } else if (yVar.f() >= iB) {
                            yVar.p(iB - 1);
                            yVar.j(i2, i);
                        } else {
                            yVar.j(i2, i);
                        }
                    }
                } else {
                    i = 0;
                    i2 = 0;
                }
                if (!RecyclerView.this.o.isEmpty()) {
                    RecyclerView.this.invalidate();
                }
                RecyclerView recyclerView5 = RecyclerView.this;
                int[] iArr5 = recyclerView5.u0;
                iArr5[0] = 0;
                iArr5[1] = 0;
                recyclerView5.G(i2, i, i3, i4, null, 1, iArr5);
                int[] iArr6 = RecyclerView.this.u0;
                int i5 = i3 - iArr6[0];
                int i6 = i4 - iArr6[1];
                if (i2 != 0 || i != 0) {
                    RecyclerView.this.I(i2, i);
                }
                if (!RecyclerView.this.awakenScrollBars()) {
                    RecyclerView.this.invalidate();
                }
                boolean z = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i5 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i6 != 0));
                y yVar2 = RecyclerView.this.m.g;
                if ((yVar2 != null && yVar2.g()) || !z) {
                    e();
                    RecyclerView recyclerView6 = RecyclerView.this;
                    androidx.recyclerview.widget.e eVar = recyclerView6.f0;
                    if (eVar != null) {
                        eVar.f(recyclerView6, i2, i);
                    }
                } else {
                    if (RecyclerView.this.getOverScrollMode() != 2) {
                        int currVelocity = (int) overScroller.getCurrVelocity();
                        int i7 = i5 < 0 ? -currVelocity : i5 > 0 ? currVelocity : 0;
                        if (i6 < 0) {
                            currVelocity = -currVelocity;
                        } else if (i6 <= 0) {
                            currVelocity = 0;
                        }
                        RecyclerView.this.a(i7, currVelocity);
                    }
                    if (RecyclerView.B0) {
                        RecyclerView.this.g0.b();
                    }
                }
            }
            y yVar3 = RecyclerView.this.m.g;
            if (yVar3 != null && yVar3.g()) {
                yVar3.j(0, 0);
            }
            this.f = false;
            if (this.g) {
                d();
            } else {
                RecyclerView.this.setScrollState(0);
                RecyclerView.this.s1(1);
            }
        }
    }

    class c implements p.b {
        c() {
        }

        @Override // androidx.recyclerview.widget.p.b
        public void a(c0 c0Var) {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.m.m1(c0Var.a, recyclerView.f868c);
        }

        @Override // androidx.recyclerview.widget.p.b
        public void b(c0 c0Var, k.c cVar, k.c cVar2) {
            RecyclerView.this.l(c0Var, cVar, cVar2);
        }

        @Override // androidx.recyclerview.widget.p.b
        public void c(c0 c0Var, k.c cVar, k.c cVar2) {
            RecyclerView.this.f868c.J(c0Var);
            RecyclerView.this.n(c0Var, cVar, cVar2);
        }

        @Override // androidx.recyclerview.widget.p.b
        public void d(c0 c0Var, k.c cVar, k.c cVar2) {
            c0Var.G(false);
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.D) {
                if (recyclerView.M.b(c0Var, c0Var, cVar, cVar2)) {
                    RecyclerView.this.L0();
                }
            } else if (recyclerView.M.d(c0Var, cVar, cVar2)) {
                RecyclerView.this.L0();
            }
        }
    }

    public static abstract class c0 {
        private static final List<Object> s = Collections.emptyList();
        public final View a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        WeakReference<RecyclerView> f874b;
        int j;
        RecyclerView r;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f875c = -1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f876d = -1;
        long e = -1;
        int f = -1;
        int g = -1;
        c0 h = null;
        c0 i = null;
        List<Object> k = null;
        List<Object> l = null;
        private int m = 0;
        u n = null;
        boolean o = false;
        private int p = 0;
        int q = -1;

        public c0(View view) {
            if (view == null) {
                throw new IllegalArgumentException("itemView may not be null");
            }
            this.a = view;
        }

        private void g() {
            if (this.k == null) {
                ArrayList arrayList = new ArrayList();
                this.k = arrayList;
                this.l = Collections.unmodifiableList(arrayList);
            }
        }

        void A(int i, boolean z) {
            if (this.f876d == -1) {
                this.f876d = this.f875c;
            }
            if (this.g == -1) {
                this.g = this.f875c;
            }
            if (z) {
                this.g += i;
            }
            this.f875c += i;
            if (this.a.getLayoutParams() != null) {
                ((o) this.a.getLayoutParams()).f889c = true;
            }
        }

        void B(RecyclerView recyclerView) {
            int i = this.q;
            if (i != -1) {
                this.p = i;
            } else {
                this.p = androidx.core.view.v.A(this.a);
            }
            recyclerView.i1(this, 4);
        }

        void C(RecyclerView recyclerView) {
            recyclerView.i1(this, this.p);
            this.p = 0;
        }

        void D() {
            this.j = 0;
            this.f875c = -1;
            this.f876d = -1;
            this.e = -1L;
            this.g = -1;
            this.m = 0;
            this.h = null;
            this.i = null;
            d();
            this.p = 0;
            this.q = -1;
            RecyclerView.r(this);
        }

        void E() {
            if (this.f876d == -1) {
                this.f876d = this.f875c;
            }
        }

        void F(int i, int i2) {
            this.j = (i & i2) | (this.j & (i2 ^ (-1)));
        }

        public final void G(boolean z) {
            int i = this.m;
            int i2 = z ? i - 1 : i + 1;
            this.m = i2;
            if (i2 < 0) {
                this.m = 0;
                String str = "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this;
                return;
            }
            if (!z && i2 == 1) {
                this.j |= 16;
            } else if (z && this.m == 0) {
                this.j &= -17;
            }
        }

        void H(u uVar, boolean z) {
            this.n = uVar;
            this.o = z;
        }

        boolean I() {
            return (this.j & 16) != 0;
        }

        boolean J() {
            return (this.j & 128) != 0;
        }

        void K() {
            this.n.J(this);
        }

        boolean L() {
            return (this.j & 32) != 0;
        }

        void a(Object obj) {
            if (obj == null) {
                b(1024);
            } else if ((1024 & this.j) == 0) {
                g();
                this.k.add(obj);
            }
        }

        void b(int i) {
            this.j = i | this.j;
        }

        void c() {
            this.f876d = -1;
            this.g = -1;
        }

        void d() {
            List<Object> list = this.k;
            if (list != null) {
                list.clear();
            }
            this.j &= -1025;
        }

        void e() {
            this.j &= -33;
        }

        void f() {
            this.j &= -257;
        }

        boolean h() {
            return (this.j & 16) == 0 && androidx.core.view.v.Q(this.a);
        }

        void i(int i, int i2, boolean z) {
            b(8);
            A(i2, z);
            this.f875c = i;
        }

        public final int j() {
            RecyclerView recyclerView = this.r;
            if (recyclerView == null) {
                return -1;
            }
            return recyclerView.b0(this);
        }

        public final long k() {
            return this.e;
        }

        public final int l() {
            return this.f;
        }

        public final int m() {
            int i = this.g;
            return i == -1 ? this.f875c : i;
        }

        public final int n() {
            return this.f876d;
        }

        List<Object> o() {
            if ((this.j & 1024) != 0) {
                return s;
            }
            List<Object> list = this.k;
            return (list == null || list.size() == 0) ? s : this.l;
        }

        boolean p(int i) {
            return (i & this.j) != 0;
        }

        boolean q() {
            return (this.j & 512) != 0 || t();
        }

        boolean r() {
            return (this.a.getParent() == null || this.a.getParent() == this.r) ? false : true;
        }

        boolean s() {
            return (this.j & 1) != 0;
        }

        boolean t() {
            return (this.j & 4) != 0;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder((getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName()) + "{" + Integer.toHexString(hashCode()) + " position=" + this.f875c + " id=" + this.e + ", oldPos=" + this.f876d + ", pLpos:" + this.g);
            if (w()) {
                sb.append(" scrap ");
                sb.append(this.o ? "[changeScrap]" : "[attachedScrap]");
            }
            if (t()) {
                sb.append(" invalid");
            }
            if (!s()) {
                sb.append(" unbound");
            }
            if (z()) {
                sb.append(" update");
            }
            if (v()) {
                sb.append(" removed");
            }
            if (J()) {
                sb.append(" ignored");
            }
            if (x()) {
                sb.append(" tmpDetached");
            }
            if (!u()) {
                sb.append(" not recyclable(" + this.m + ")");
            }
            if (q()) {
                sb.append(" undefined adapter position");
            }
            if (this.a.getParent() == null) {
                sb.append(" no parent");
            }
            sb.append("}");
            return sb.toString();
        }

        public final boolean u() {
            return (this.j & 16) == 0 && !androidx.core.view.v.Q(this.a);
        }

        boolean v() {
            return (this.j & 8) != 0;
        }

        boolean w() {
            return this.n != null;
        }

        boolean x() {
            return (this.j & 256) != 0;
        }

        boolean y() {
            return (this.j & 2) != 0;
        }

        boolean z() {
            return (this.j & 2) != 0;
        }
    }

    class d implements b.InterfaceC0037b {
        d() {
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0037b
        public View a(int i) {
            return RecyclerView.this.getChildAt(i);
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0037b
        public void b(View view) {
            c0 c0VarF0 = RecyclerView.f0(view);
            if (c0VarF0 != null) {
                c0VarF0.B(RecyclerView.this);
            }
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0037b
        public void c(int i) {
            View childAt = RecyclerView.this.getChildAt(i);
            if (childAt != null) {
                RecyclerView.this.z(childAt);
                childAt.clearAnimation();
            }
            RecyclerView.this.removeViewAt(i);
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0037b
        public void d() {
            int iK = k();
            for (int i = 0; i < iK; i++) {
                View viewA = a(i);
                RecyclerView.this.z(viewA);
                viewA.clearAnimation();
            }
            RecyclerView.this.removeAllViews();
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0037b
        public c0 e(View view) {
            return RecyclerView.f0(view);
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0037b
        public void f(int i) {
            c0 c0VarF0;
            View viewA = a(i);
            if (viewA != null && (c0VarF0 = RecyclerView.f0(viewA)) != null) {
                if (c0VarF0.x() && !c0VarF0.J()) {
                    throw new IllegalArgumentException("called detach on an already detached child " + c0VarF0 + RecyclerView.this.P());
                }
                c0VarF0.b(256);
            }
            RecyclerView.this.detachViewFromParent(i);
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0037b
        public void g(View view) {
            c0 c0VarF0 = RecyclerView.f0(view);
            if (c0VarF0 != null) {
                c0VarF0.C(RecyclerView.this);
            }
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0037b
        public void h(View view, int i, ViewGroup.LayoutParams layoutParams) {
            c0 c0VarF0 = RecyclerView.f0(view);
            if (c0VarF0 != null) {
                if (!c0VarF0.x() && !c0VarF0.J()) {
                    throw new IllegalArgumentException("Called attach on a child which is not detached: " + c0VarF0 + RecyclerView.this.P());
                }
                c0VarF0.f();
            }
            RecyclerView.this.attachViewToParent(view, i, layoutParams);
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0037b
        public void i(View view, int i) {
            RecyclerView.this.addView(view, i);
            RecyclerView.this.y(view);
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0037b
        public int j(View view) {
            return RecyclerView.this.indexOfChild(view);
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0037b
        public int k() {
            return RecyclerView.this.getChildCount();
        }
    }

    class e implements a.InterfaceC0036a {
        e() {
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0036a
        public void a(int i, int i2) {
            RecyclerView.this.B0(i, i2);
            RecyclerView.this.k0 = true;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0036a
        public void b(a.b bVar) {
            i(bVar);
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0036a
        public c0 c(int i) {
            c0 c0VarZ = RecyclerView.this.Z(i, true);
            if (c0VarZ == null || RecyclerView.this.f.n(c0VarZ.a)) {
                return null;
            }
            return c0VarZ;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0036a
        public void d(int i, int i2) {
            RecyclerView.this.C0(i, i2, true);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.k0 = true;
            recyclerView.h0.f907d += i2;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0036a
        public void e(int i, int i2) {
            RecyclerView.this.C0(i, i2, false);
            RecyclerView.this.k0 = true;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0036a
        public void f(a.b bVar) {
            i(bVar);
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0036a
        public void g(int i, int i2) {
            RecyclerView.this.A0(i, i2);
            RecyclerView.this.k0 = true;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0036a
        public void h(int i, int i2, Object obj) {
            RecyclerView.this.v1(i, i2, obj);
            RecyclerView.this.l0 = true;
        }

        void i(a.b bVar) {
            int i = bVar.a;
            if (i == 1) {
                RecyclerView recyclerView = RecyclerView.this;
                recyclerView.m.R0(recyclerView, bVar.f925b, bVar.f927d);
                return;
            }
            if (i == 2) {
                RecyclerView recyclerView2 = RecyclerView.this;
                recyclerView2.m.U0(recyclerView2, bVar.f925b, bVar.f927d);
            } else if (i == 4) {
                RecyclerView recyclerView3 = RecyclerView.this;
                recyclerView3.m.W0(recyclerView3, bVar.f925b, bVar.f927d, bVar.f926c);
            } else {
                if (i != 8) {
                    return;
                }
                RecyclerView recyclerView4 = RecyclerView.this;
                recyclerView4.m.T0(recyclerView4, bVar.f925b, bVar.f927d, 1);
            }
        }
    }

    public static abstract class f<VH extends c0> {
        private final g a = new g();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f877b = false;

        public final void a(VH vh, int i) {
            vh.f875c = i;
            if (g()) {
                vh.e = d(i);
            }
            vh.F(1, 519);
            c.g.g.c.a("RV OnBindView");
            k(vh, i, vh.o());
            vh.d();
            ViewGroup.LayoutParams layoutParams = vh.a.getLayoutParams();
            if (layoutParams instanceof o) {
                ((o) layoutParams).f889c = true;
            }
            c.g.g.c.b();
        }

        public final VH b(ViewGroup viewGroup, int i) {
            try {
                c.g.g.c.a("RV CreateView");
                VH vh = (VH) l(viewGroup, i);
                if (vh.a.getParent() != null) {
                    throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
                }
                vh.f = i;
                return vh;
            } finally {
                c.g.g.c.b();
            }
        }

        public abstract int c();

        public long d(int i) {
            return -1L;
        }

        public int e(int i) {
            return 0;
        }

        public final boolean f() {
            return this.a.a();
        }

        public final boolean g() {
            return this.f877b;
        }

        public final void h() {
            this.a.b();
        }

        public void i(RecyclerView recyclerView) {
        }

        public abstract void j(VH vh, int i);

        public void k(VH vh, int i, List<Object> list) {
            j(vh, i);
        }

        public abstract VH l(ViewGroup viewGroup, int i);

        public void m(RecyclerView recyclerView) {
        }

        public boolean n(VH vh) {
            return false;
        }

        public void o(VH vh) {
        }

        public void p(VH vh) {
        }

        public void q(VH vh) {
        }

        public void r(h hVar) {
            this.a.registerObserver(hVar);
        }

        public void s(boolean z) {
            if (f()) {
                throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
            }
            this.f877b = z;
        }

        public void t(h hVar) {
            this.a.unregisterObserver(hVar);
        }
    }

    static class g extends Observable<h> {
        g() {
        }

        public boolean a() {
            return !((Observable) this).mObservers.isEmpty();
        }

        public void b() {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((h) ((Observable) this).mObservers.get(size)).a();
            }
        }
    }

    public static abstract class h {
        public void a() {
        }
    }

    public interface i {
        int a(int i, int i2);
    }

    public static class j {
        protected EdgeEffect a(RecyclerView recyclerView, int i) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    public static abstract class k {
        private b a = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ArrayList<a> f878b = new ArrayList<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f879c = 120;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f880d = 120;
        private long e = 250;
        private long f = 250;

        public interface a {
            void a();
        }

        interface b {
            void a(c0 c0Var);
        }

        public static class c {
            public int a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f881b;

            public c a(c0 c0Var) {
                b(c0Var, 0);
                return this;
            }

            public c b(c0 c0Var, int i) {
                View view = c0Var.a;
                this.a = view.getLeft();
                this.f881b = view.getTop();
                view.getRight();
                view.getBottom();
                return this;
            }
        }

        static int e(c0 c0Var) {
            int i = c0Var.j & 14;
            if (c0Var.t()) {
                return 4;
            }
            if ((i & 4) != 0) {
                return i;
            }
            int iN = c0Var.n();
            int iJ = c0Var.j();
            return (iN == -1 || iJ == -1 || iN == iJ) ? i : i | 2048;
        }

        public abstract boolean a(c0 c0Var, c cVar, c cVar2);

        public abstract boolean b(c0 c0Var, c0 c0Var2, c cVar, c cVar2);

        public abstract boolean c(c0 c0Var, c cVar, c cVar2);

        public abstract boolean d(c0 c0Var, c cVar, c cVar2);

        public abstract boolean f(c0 c0Var);

        public boolean g(c0 c0Var, List<Object> list) {
            return f(c0Var);
        }

        public final void h(c0 c0Var) {
            r(c0Var);
            b bVar = this.a;
            if (bVar != null) {
                bVar.a(c0Var);
            }
        }

        public final void i() {
            int size = this.f878b.size();
            for (int i = 0; i < size; i++) {
                this.f878b.get(i).a();
            }
            this.f878b.clear();
        }

        public abstract void j(c0 c0Var);

        public abstract void k();

        public long l() {
            return this.f879c;
        }

        public long m() {
            return this.f;
        }

        public long n() {
            return this.e;
        }

        public long o() {
            return this.f880d;
        }

        public abstract boolean p();

        public c q() {
            return new c();
        }

        public void r(c0 c0Var) {
        }

        public c s(z zVar, c0 c0Var) {
            c cVarQ = q();
            cVarQ.a(c0Var);
            return cVarQ;
        }

        public c t(z zVar, c0 c0Var, int i, List<Object> list) {
            c cVarQ = q();
            cVarQ.a(c0Var);
            return cVarQ;
        }

        public abstract void u();

        void v(b bVar) {
            this.a = bVar;
        }
    }

    private class l implements k.b {
        l() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.k.b
        public void a(c0 c0Var) {
            c0Var.G(true);
            if (c0Var.h != null && c0Var.i == null) {
                c0Var.h = null;
            }
            c0Var.i = null;
            if (c0Var.I() || RecyclerView.this.U0(c0Var.a) || !c0Var.x()) {
                return;
            }
            RecyclerView.this.removeDetachedView(c0Var.a, false);
        }
    }

    public static abstract class m {
        @Deprecated
        public void d(Rect rect, int i, RecyclerView recyclerView) {
            rect.set(0, 0, 0, 0);
        }

        public void e(Rect rect, View view, RecyclerView recyclerView, z zVar) {
            d(rect, ((o) view.getLayoutParams()).a(), recyclerView);
        }

        @Deprecated
        public void f(Canvas canvas, RecyclerView recyclerView) {
        }

        public void g(Canvas canvas, RecyclerView recyclerView, z zVar) {
            f(canvas, recyclerView);
        }

        @Deprecated
        public void h(Canvas canvas, RecyclerView recyclerView) {
        }

        public void i(Canvas canvas, RecyclerView recyclerView, z zVar) {
            h(canvas, recyclerView);
        }
    }

    public static abstract class n {
        androidx.recyclerview.widget.b a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        RecyclerView f882b;
        y g;
        int m;
        boolean n;
        private int o;
        private int p;
        private int q;
        private int r;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final o.b f883c = new a();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final o.b f884d = new b();
        androidx.recyclerview.widget.o e = new androidx.recyclerview.widget.o(this.f883c);
        androidx.recyclerview.widget.o f = new androidx.recyclerview.widget.o(this.f884d);
        boolean h = false;
        boolean i = false;
        boolean j = false;
        private boolean k = true;
        private boolean l = true;

        class a implements o.b {
            a() {
            }

            @Override // androidx.recyclerview.widget.o.b
            public View a(int i) {
                return n.this.I(i);
            }

            @Override // androidx.recyclerview.widget.o.b
            public int b() {
                return n.this.o0() - n.this.f0();
            }

            @Override // androidx.recyclerview.widget.o.b
            public int c() {
                return n.this.e0();
            }

            @Override // androidx.recyclerview.widget.o.b
            public int d(View view) {
                return n.this.T(view) + ((ViewGroup.MarginLayoutParams) ((o) view.getLayoutParams())).rightMargin;
            }

            @Override // androidx.recyclerview.widget.o.b
            public int e(View view) {
                return n.this.Q(view) - ((ViewGroup.MarginLayoutParams) ((o) view.getLayoutParams())).leftMargin;
            }
        }

        class b implements o.b {
            b() {
            }

            @Override // androidx.recyclerview.widget.o.b
            public View a(int i) {
                return n.this.I(i);
            }

            @Override // androidx.recyclerview.widget.o.b
            public int b() {
                return n.this.W() - n.this.d0();
            }

            @Override // androidx.recyclerview.widget.o.b
            public int c() {
                return n.this.g0();
            }

            @Override // androidx.recyclerview.widget.o.b
            public int d(View view) {
                return n.this.O(view) + ((ViewGroup.MarginLayoutParams) ((o) view.getLayoutParams())).bottomMargin;
            }

            @Override // androidx.recyclerview.widget.o.b
            public int e(View view) {
                return n.this.U(view) - ((ViewGroup.MarginLayoutParams) ((o) view.getLayoutParams())).topMargin;
            }
        }

        public interface c {
            void a(int i, int i2);
        }

        public static class d {
            public int a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f885b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public boolean f886c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public boolean f887d;
        }

        public static int K(int i, int i2, int i3, int i4, boolean z) {
            int iMax = Math.max(0, i - i3);
            if (z) {
                if (i4 < 0) {
                    if (i4 != -1 || (i2 != Integer.MIN_VALUE && (i2 == 0 || i2 != 1073741824))) {
                        i2 = 0;
                        i4 = 0;
                    } else {
                        i4 = iMax;
                    }
                }
                i2 = 1073741824;
            } else {
                if (i4 < 0) {
                    if (i4 != -1) {
                        if (i4 == -2) {
                            i2 = (i2 == Integer.MIN_VALUE || i2 == 1073741824) ? Integer.MIN_VALUE : 0;
                        }
                        i2 = 0;
                        i4 = 0;
                    }
                    i4 = iMax;
                }
                i2 = 1073741824;
            }
            return View.MeasureSpec.makeMeasureSpec(i4, i2);
        }

        private int[] L(View view, Rect rect) {
            int[] iArr = new int[2];
            int iE0 = e0();
            int iG0 = g0();
            int iO0 = o0() - f0();
            int iW = W() - d0();
            int left = (view.getLeft() + rect.left) - view.getScrollX();
            int top = (view.getTop() + rect.top) - view.getScrollY();
            int iWidth = rect.width() + left;
            int iHeight = rect.height() + top;
            int i = left - iE0;
            int iMin = Math.min(0, i);
            int i2 = top - iG0;
            int iMin2 = Math.min(0, i2);
            int i3 = iWidth - iO0;
            int iMax = Math.max(0, i3);
            int iMax2 = Math.max(0, iHeight - iW);
            if (Z() != 1) {
                if (iMin == 0) {
                    iMin = Math.min(i, iMax);
                }
                iMax = iMin;
            } else if (iMax == 0) {
                iMax = Math.max(iMin, i3);
            }
            if (iMin2 == 0) {
                iMin2 = Math.min(i2, iMax2);
            }
            iArr[0] = iMax;
            iArr[1] = iMin2;
            return iArr;
        }

        private void f(View view, int i, boolean z) {
            c0 c0VarF0 = RecyclerView.f0(view);
            if (z || c0VarF0.v()) {
                this.f882b.g.b(c0VarF0);
            } else {
                this.f882b.g.p(c0VarF0);
            }
            o oVar = (o) view.getLayoutParams();
            if (c0VarF0.L() || c0VarF0.w()) {
                if (c0VarF0.w()) {
                    c0VarF0.K();
                } else {
                    c0VarF0.e();
                }
                this.a.c(view, i, view.getLayoutParams(), false);
            } else if (view.getParent() == this.f882b) {
                int iM = this.a.m(view);
                if (i == -1) {
                    i = this.a.g();
                }
                if (iM == -1) {
                    throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.f882b.indexOfChild(view) + this.f882b.P());
                }
                if (iM != i) {
                    this.f882b.m.B0(iM, i);
                }
            } else {
                this.a.a(view, i, false);
                oVar.f889c = true;
                y yVar = this.g;
                if (yVar != null && yVar.h()) {
                    this.g.k(view);
                }
            }
            if (oVar.f890d) {
                c0VarF0.a.invalidate();
                oVar.f890d = false;
            }
        }

        public static d i0(Context context, AttributeSet attributeSet, int i, int i2) {
            d dVar = new d();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.n.c.RecyclerView, i, i2);
            dVar.a = typedArrayObtainStyledAttributes.getInt(c.n.c.RecyclerView_android_orientation, 1);
            dVar.f885b = typedArrayObtainStyledAttributes.getInt(c.n.c.RecyclerView_spanCount, 1);
            dVar.f886c = typedArrayObtainStyledAttributes.getBoolean(c.n.c.RecyclerView_reverseLayout, false);
            dVar.f887d = typedArrayObtainStyledAttributes.getBoolean(c.n.c.RecyclerView_stackFromEnd, false);
            typedArrayObtainStyledAttributes.recycle();
            return dVar;
        }

        public static int n(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            return mode != Integer.MIN_VALUE ? mode != 1073741824 ? Math.max(i2, i3) : size : Math.min(size, Math.max(i2, i3));
        }

        private boolean t0(RecyclerView recyclerView, int i, int i2) {
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild == null) {
                return false;
            }
            int iE0 = e0();
            int iG0 = g0();
            int iO0 = o0() - f0();
            int iW = W() - d0();
            Rect rect = this.f882b.i;
            P(focusedChild, rect);
            return rect.left - i < iO0 && rect.right - i > iE0 && rect.top - i2 < iW && rect.bottom - i2 > iG0;
        }

        private void v1(u uVar, int i, View view) {
            c0 c0VarF0 = RecyclerView.f0(view);
            if (c0VarF0.J()) {
                return;
            }
            if (c0VarF0.t() && !c0VarF0.v() && !this.f882b.l.g()) {
                q1(i);
                uVar.C(c0VarF0);
            } else {
                x(i);
                uVar.D(view);
                this.f882b.g.k(c0VarF0);
            }
        }

        private static boolean w0(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            if (i3 > 0 && i != i3) {
                return false;
            }
            if (mode == Integer.MIN_VALUE) {
                return size >= i;
            }
            if (mode != 0) {
                return mode == 1073741824 && size == i;
            }
            return true;
        }

        private void y(int i, View view) {
            this.a.d(i);
        }

        void A(RecyclerView recyclerView, u uVar) {
            this.i = false;
            I0(recyclerView, uVar);
        }

        public void A0(View view, int i, int i2) {
            o oVar = (o) view.getLayoutParams();
            Rect rectJ0 = this.f882b.j0(view);
            int i3 = i + rectJ0.left + rectJ0.right;
            int i4 = i2 + rectJ0.top + rectJ0.bottom;
            int iK = K(o0(), p0(), e0() + f0() + ((ViewGroup.MarginLayoutParams) oVar).leftMargin + ((ViewGroup.MarginLayoutParams) oVar).rightMargin + i3, ((ViewGroup.MarginLayoutParams) oVar).width, k());
            int iK2 = K(W(), X(), g0() + d0() + ((ViewGroup.MarginLayoutParams) oVar).topMargin + ((ViewGroup.MarginLayoutParams) oVar).bottomMargin + i4, ((ViewGroup.MarginLayoutParams) oVar).height, l());
            if (F1(view, iK, iK2, oVar)) {
                view.measure(iK, iK2);
            }
        }

        void A1(int i, int i2) {
            this.q = View.MeasureSpec.getSize(i);
            int mode = View.MeasureSpec.getMode(i);
            this.o = mode;
            if (mode == 0 && !RecyclerView.A0) {
                this.q = 0;
            }
            this.r = View.MeasureSpec.getSize(i2);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.p = mode2;
            if (mode2 != 0 || RecyclerView.A0) {
                return;
            }
            this.r = 0;
        }

        public View B(View view) {
            View viewR;
            RecyclerView recyclerView = this.f882b;
            if (recyclerView == null || (viewR = recyclerView.R(view)) == null || this.a.n(viewR)) {
                return null;
            }
            return viewR;
        }

        public void B0(int i, int i2) {
            View viewI = I(i);
            if (viewI != null) {
                x(i);
                h(viewI, i2);
            } else {
                throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i + this.f882b.toString());
            }
        }

        public void B1(int i, int i2) {
            this.f882b.setMeasuredDimension(i, i2);
        }

        public View C(int i) {
            int iJ = J();
            for (int i2 = 0; i2 < iJ; i2++) {
                View viewI = I(i2);
                c0 c0VarF0 = RecyclerView.f0(viewI);
                if (c0VarF0 != null && c0VarF0.m() == i && !c0VarF0.J() && (this.f882b.h0.e() || !c0VarF0.v())) {
                    return viewI;
                }
            }
            return null;
        }

        public void C0(int i) {
            RecyclerView recyclerView = this.f882b;
            if (recyclerView != null) {
                recyclerView.y0(i);
            }
        }

        public void C1(Rect rect, int i, int i2) {
            B1(n(i, rect.width() + e0() + f0(), c0()), n(i2, rect.height() + g0() + d0(), b0()));
        }

        public abstract o D();

        public void D0(int i) {
            RecyclerView recyclerView = this.f882b;
            if (recyclerView != null) {
                recyclerView.z0(i);
            }
        }

        void D1(int i, int i2) {
            int iJ = J();
            if (iJ == 0) {
                this.f882b.w(i, i2);
                return;
            }
            int i3 = Integer.MIN_VALUE;
            int i4 = Integer.MIN_VALUE;
            int i5 = Integer.MAX_VALUE;
            int i6 = Integer.MAX_VALUE;
            for (int i7 = 0; i7 < iJ; i7++) {
                View viewI = I(i7);
                Rect rect = this.f882b.i;
                P(viewI, rect);
                int i8 = rect.left;
                if (i8 < i5) {
                    i5 = i8;
                }
                int i9 = rect.right;
                if (i9 > i3) {
                    i3 = i9;
                }
                int i10 = rect.top;
                if (i10 < i6) {
                    i6 = i10;
                }
                int i11 = rect.bottom;
                if (i11 > i4) {
                    i4 = i11;
                }
            }
            this.f882b.i.set(i5, i6, i3, i4);
            C1(this.f882b.i, i, i2);
        }

        public o E(Context context, AttributeSet attributeSet) {
            return new o(context, attributeSet);
        }

        public void E0(f fVar, f fVar2) {
        }

        void E1(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.f882b = null;
                this.a = null;
                this.q = 0;
                this.r = 0;
            } else {
                this.f882b = recyclerView;
                this.a = recyclerView.f;
                this.q = recyclerView.getWidth();
                this.r = recyclerView.getHeight();
            }
            this.o = 1073741824;
            this.p = 1073741824;
        }

        public o F(ViewGroup.LayoutParams layoutParams) {
            return layoutParams instanceof o ? new o((o) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new o((ViewGroup.MarginLayoutParams) layoutParams) : new o(layoutParams);
        }

        public boolean F0(RecyclerView recyclerView, ArrayList<View> arrayList, int i, int i2) {
            return false;
        }

        boolean F1(View view, int i, int i2, o oVar) {
            return (!view.isLayoutRequested() && this.k && w0(view.getWidth(), i, ((ViewGroup.MarginLayoutParams) oVar).width) && w0(view.getHeight(), i2, ((ViewGroup.MarginLayoutParams) oVar).height)) ? false : true;
        }

        public int G() {
            return -1;
        }

        public void G0(RecyclerView recyclerView) {
        }

        boolean G1() {
            return false;
        }

        public int H(View view) {
            return ((o) view.getLayoutParams()).f888b.bottom;
        }

        @Deprecated
        public void H0(RecyclerView recyclerView) {
        }

        boolean H1(View view, int i, int i2, o oVar) {
            return (this.k && w0(view.getMeasuredWidth(), i, ((ViewGroup.MarginLayoutParams) oVar).width) && w0(view.getMeasuredHeight(), i2, ((ViewGroup.MarginLayoutParams) oVar).height)) ? false : true;
        }

        public View I(int i) {
            androidx.recyclerview.widget.b bVar = this.a;
            if (bVar != null) {
                return bVar.f(i);
            }
            return null;
        }

        public void I0(RecyclerView recyclerView, u uVar) {
            H0(recyclerView);
        }

        public void I1(RecyclerView recyclerView, z zVar, int i) {
        }

        public int J() {
            androidx.recyclerview.widget.b bVar = this.a;
            if (bVar != null) {
                return bVar.g();
            }
            return 0;
        }

        public View J0(View view, int i, u uVar, z zVar) {
            return null;
        }

        public void J1(y yVar) {
            y yVar2 = this.g;
            if (yVar2 != null && yVar != yVar2 && yVar2.h()) {
                this.g.r();
            }
            this.g = yVar;
            yVar.q(this.f882b, this);
        }

        public void K0(AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.f882b;
            L0(recyclerView.f868c, recyclerView.h0, accessibilityEvent);
        }

        void K1() {
            y yVar = this.g;
            if (yVar != null) {
                yVar.r();
            }
        }

        public void L0(u uVar, z zVar, AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.f882b;
            if (recyclerView == null || accessibilityEvent == null) {
                return;
            }
            boolean z = true;
            if (!recyclerView.canScrollVertically(1) && !this.f882b.canScrollVertically(-1) && !this.f882b.canScrollHorizontally(-1) && !this.f882b.canScrollHorizontally(1)) {
                z = false;
            }
            accessibilityEvent.setScrollable(z);
            f fVar = this.f882b.l;
            if (fVar != null) {
                accessibilityEvent.setItemCount(fVar.c());
            }
        }

        public boolean L1() {
            return false;
        }

        public boolean M() {
            RecyclerView recyclerView = this.f882b;
            return recyclerView != null && recyclerView.h;
        }

        void M0(androidx.core.view.e0.c cVar) {
            RecyclerView recyclerView = this.f882b;
            N0(recyclerView.f868c, recyclerView.h0, cVar);
        }

        public int N(u uVar, z zVar) {
            RecyclerView recyclerView = this.f882b;
            if (recyclerView == null || recyclerView.l == null || !k()) {
                return 1;
            }
            return this.f882b.l.c();
        }

        public void N0(u uVar, z zVar, androidx.core.view.e0.c cVar) {
            if (this.f882b.canScrollVertically(-1) || this.f882b.canScrollHorizontally(-1)) {
                cVar.a(8192);
                cVar.n0(true);
            }
            if (this.f882b.canScrollVertically(1) || this.f882b.canScrollHorizontally(1)) {
                cVar.a(4096);
                cVar.n0(true);
            }
            cVar.Y(c.b.a(k0(uVar, zVar), N(uVar, zVar), v0(uVar, zVar), l0(uVar, zVar)));
        }

        public int O(View view) {
            return view.getBottom() + H(view);
        }

        void O0(View view, androidx.core.view.e0.c cVar) {
            c0 c0VarF0 = RecyclerView.f0(view);
            if (c0VarF0 == null || c0VarF0.v() || this.a.n(c0VarF0.a)) {
                return;
            }
            RecyclerView recyclerView = this.f882b;
            P0(recyclerView.f868c, recyclerView.h0, view, cVar);
        }

        public void P(View view, Rect rect) {
            RecyclerView.g0(view, rect);
        }

        public void P0(u uVar, z zVar, View view, androidx.core.view.e0.c cVar) {
            cVar.Z(c.C0024c.a(l() ? h0(view) : 0, 1, k() ? h0(view) : 0, 1, false, false));
        }

        public int Q(View view) {
            return view.getLeft() - a0(view);
        }

        public View Q0(View view, int i) {
            return null;
        }

        public int R(View view) {
            Rect rect = ((o) view.getLayoutParams()).f888b;
            return view.getMeasuredHeight() + rect.top + rect.bottom;
        }

        public void R0(RecyclerView recyclerView, int i, int i2) {
        }

        public int S(View view) {
            Rect rect = ((o) view.getLayoutParams()).f888b;
            return view.getMeasuredWidth() + rect.left + rect.right;
        }

        public void S0(RecyclerView recyclerView) {
        }

        public int T(View view) {
            return view.getRight() + j0(view);
        }

        public void T0(RecyclerView recyclerView, int i, int i2, int i3) {
        }

        public int U(View view) {
            return view.getTop() - m0(view);
        }

        public void U0(RecyclerView recyclerView, int i, int i2) {
        }

        public View V() {
            View focusedChild;
            RecyclerView recyclerView = this.f882b;
            if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.a.n(focusedChild)) {
                return null;
            }
            return focusedChild;
        }

        public void V0(RecyclerView recyclerView, int i, int i2) {
        }

        public int W() {
            return this.r;
        }

        public void W0(RecyclerView recyclerView, int i, int i2, Object obj) {
            V0(recyclerView, i, i2);
        }

        public int X() {
            return this.p;
        }

        public void X0(u uVar, z zVar) {
        }

        public int Y() {
            RecyclerView recyclerView = this.f882b;
            f adapter = recyclerView != null ? recyclerView.getAdapter() : null;
            if (adapter != null) {
                return adapter.c();
            }
            return 0;
        }

        public void Y0(z zVar) {
        }

        public int Z() {
            return androidx.core.view.v.C(this.f882b);
        }

        public void Z0(u uVar, z zVar, int i, int i2) {
            this.f882b.w(i, i2);
        }

        public int a0(View view) {
            return ((o) view.getLayoutParams()).f888b.left;
        }

        @Deprecated
        public boolean a1(RecyclerView recyclerView, View view, View view2) {
            return x0() || recyclerView.t0();
        }

        public void b(View view) {
            c(view, -1);
        }

        public int b0() {
            return androidx.core.view.v.D(this.f882b);
        }

        public boolean b1(RecyclerView recyclerView, z zVar, View view, View view2) {
            return a1(recyclerView, view, view2);
        }

        public void c(View view, int i) {
            f(view, i, true);
        }

        public int c0() {
            return androidx.core.view.v.E(this.f882b);
        }

        public void c1(Parcelable parcelable) {
        }

        public void d(View view) {
            e(view, -1);
        }

        public int d0() {
            RecyclerView recyclerView = this.f882b;
            if (recyclerView != null) {
                return recyclerView.getPaddingBottom();
            }
            return 0;
        }

        public Parcelable d1() {
            return null;
        }

        public void e(View view, int i) {
            f(view, i, false);
        }

        public int e0() {
            RecyclerView recyclerView = this.f882b;
            if (recyclerView != null) {
                return recyclerView.getPaddingLeft();
            }
            return 0;
        }

        public void e1(int i) {
        }

        public int f0() {
            RecyclerView recyclerView = this.f882b;
            if (recyclerView != null) {
                return recyclerView.getPaddingRight();
            }
            return 0;
        }

        void f1(y yVar) {
            if (this.g == yVar) {
                this.g = null;
            }
        }

        public void g(String str) {
            RecyclerView recyclerView = this.f882b;
            if (recyclerView != null) {
                recyclerView.o(str);
            }
        }

        public int g0() {
            RecyclerView recyclerView = this.f882b;
            if (recyclerView != null) {
                return recyclerView.getPaddingTop();
            }
            return 0;
        }

        boolean g1(int i, Bundle bundle) {
            RecyclerView recyclerView = this.f882b;
            return h1(recyclerView.f868c, recyclerView.h0, i, bundle);
        }

        public void h(View view, int i) {
            i(view, i, (o) view.getLayoutParams());
        }

        public int h0(View view) {
            return ((o) view.getLayoutParams()).a();
        }

        public boolean h1(u uVar, z zVar, int i, Bundle bundle) {
            int iW;
            int iO0;
            int i2;
            int i3;
            RecyclerView recyclerView = this.f882b;
            if (recyclerView == null) {
                return false;
            }
            if (i == 4096) {
                iW = recyclerView.canScrollVertically(1) ? (W() - g0()) - d0() : 0;
                if (this.f882b.canScrollHorizontally(1)) {
                    iO0 = (o0() - e0()) - f0();
                    i2 = iW;
                    i3 = iO0;
                }
                i2 = iW;
                i3 = 0;
            } else if (i != 8192) {
                i3 = 0;
                i2 = 0;
            } else {
                iW = recyclerView.canScrollVertically(-1) ? -((W() - g0()) - d0()) : 0;
                if (this.f882b.canScrollHorizontally(-1)) {
                    iO0 = -((o0() - e0()) - f0());
                    i2 = iW;
                    i3 = iO0;
                }
                i2 = iW;
                i3 = 0;
            }
            if (i2 == 0 && i3 == 0) {
                return false;
            }
            this.f882b.n1(i3, i2, null, Integer.MIN_VALUE, true);
            return true;
        }

        public void i(View view, int i, o oVar) {
            c0 c0VarF0 = RecyclerView.f0(view);
            if (c0VarF0.v()) {
                this.f882b.g.b(c0VarF0);
            } else {
                this.f882b.g.p(c0VarF0);
            }
            this.a.c(view, i, oVar, c0VarF0.v());
        }

        boolean i1(View view, int i, Bundle bundle) {
            RecyclerView recyclerView = this.f882b;
            return j1(recyclerView.f868c, recyclerView.h0, view, i, bundle);
        }

        public void j(View view, Rect rect) {
            RecyclerView recyclerView = this.f882b;
            if (recyclerView == null) {
                rect.set(0, 0, 0, 0);
            } else {
                rect.set(recyclerView.j0(view));
            }
        }

        public int j0(View view) {
            return ((o) view.getLayoutParams()).f888b.right;
        }

        public boolean j1(u uVar, z zVar, View view, int i, Bundle bundle) {
            return false;
        }

        public boolean k() {
            return false;
        }

        public int k0(u uVar, z zVar) {
            RecyclerView recyclerView = this.f882b;
            if (recyclerView == null || recyclerView.l == null || !l()) {
                return 1;
            }
            return this.f882b.l.c();
        }

        public void k1(u uVar) {
            for (int iJ = J() - 1; iJ >= 0; iJ--) {
                if (!RecyclerView.f0(I(iJ)).J()) {
                    n1(iJ, uVar);
                }
            }
        }

        public boolean l() {
            return false;
        }

        public int l0(u uVar, z zVar) {
            return 0;
        }

        void l1(u uVar) {
            int iJ = uVar.j();
            for (int i = iJ - 1; i >= 0; i--) {
                View viewN = uVar.n(i);
                c0 c0VarF0 = RecyclerView.f0(viewN);
                if (!c0VarF0.J()) {
                    c0VarF0.G(false);
                    if (c0VarF0.x()) {
                        this.f882b.removeDetachedView(viewN, false);
                    }
                    k kVar = this.f882b.M;
                    if (kVar != null) {
                        kVar.j(c0VarF0);
                    }
                    c0VarF0.G(true);
                    uVar.y(viewN);
                }
            }
            uVar.e();
            if (iJ > 0) {
                this.f882b.invalidate();
            }
        }

        public boolean m(o oVar) {
            return oVar != null;
        }

        public int m0(View view) {
            return ((o) view.getLayoutParams()).f888b.top;
        }

        public void m1(View view, u uVar) {
            p1(view);
            uVar.B(view);
        }

        public void n0(View view, boolean z, Rect rect) {
            Matrix matrix;
            if (z) {
                Rect rect2 = ((o) view.getLayoutParams()).f888b;
                rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            } else {
                rect.set(0, 0, view.getWidth(), view.getHeight());
            }
            if (this.f882b != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
                RectF rectF = this.f882b.k;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        public void n1(int i, u uVar) {
            View viewI = I(i);
            q1(i);
            uVar.B(viewI);
        }

        public void o(int i, int i2, z zVar, c cVar) {
        }

        public int o0() {
            return this.q;
        }

        public boolean o1(Runnable runnable) {
            RecyclerView recyclerView = this.f882b;
            if (recyclerView != null) {
                return recyclerView.removeCallbacks(runnable);
            }
            return false;
        }

        public void p(int i, c cVar) {
        }

        public int p0() {
            return this.o;
        }

        public void p1(View view) {
            this.a.p(view);
        }

        public int q(z zVar) {
            return 0;
        }

        boolean q0() {
            int iJ = J();
            for (int i = 0; i < iJ; i++) {
                ViewGroup.LayoutParams layoutParams = I(i).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
            return false;
        }

        public void q1(int i) {
            if (I(i) != null) {
                this.a.q(i);
            }
        }

        public int r(z zVar) {
            return 0;
        }

        public boolean r0() {
            return this.i;
        }

        public boolean r1(RecyclerView recyclerView, View view, Rect rect, boolean z) {
            return s1(recyclerView, view, rect, z, false);
        }

        public int s(z zVar) {
            return 0;
        }

        public boolean s0() {
            return this.j;
        }

        public boolean s1(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
            int[] iArrL = L(view, rect);
            int i = iArrL[0];
            int i2 = iArrL[1];
            if ((z2 && !t0(recyclerView, i, i2)) || (i == 0 && i2 == 0)) {
                return false;
            }
            if (z) {
                recyclerView.scrollBy(i, i2);
            } else {
                recyclerView.k1(i, i2);
            }
            return true;
        }

        public int t(z zVar) {
            return 0;
        }

        public void t1() {
            RecyclerView recyclerView = this.f882b;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }

        public int u(z zVar) {
            return 0;
        }

        public final boolean u0() {
            return this.l;
        }

        public void u1() {
            this.h = true;
        }

        public int v(z zVar) {
            return 0;
        }

        public boolean v0(u uVar, z zVar) {
            return false;
        }

        public void w(u uVar) {
            for (int iJ = J() - 1; iJ >= 0; iJ--) {
                v1(uVar, iJ, I(iJ));
            }
        }

        public int w1(int i, u uVar, z zVar) {
            return 0;
        }

        public void x(int i) {
            y(i, I(i));
        }

        public boolean x0() {
            y yVar = this.g;
            return yVar != null && yVar.h();
        }

        public void x1(int i) {
        }

        public boolean y0(View view, boolean z, boolean z2) {
            boolean z3 = this.e.b(view, 24579) && this.f.b(view, 24579);
            return z ? z3 : !z3;
        }

        public int y1(int i, u uVar, z zVar) {
            return 0;
        }

        void z(RecyclerView recyclerView) {
            this.i = true;
            G0(recyclerView);
        }

        public void z0(View view, int i, int i2, int i3, int i4) {
            o oVar = (o) view.getLayoutParams();
            Rect rect = oVar.f888b;
            view.layout(i + rect.left + ((ViewGroup.MarginLayoutParams) oVar).leftMargin, i2 + rect.top + ((ViewGroup.MarginLayoutParams) oVar).topMargin, (i3 - rect.right) - ((ViewGroup.MarginLayoutParams) oVar).rightMargin, (i4 - rect.bottom) - ((ViewGroup.MarginLayoutParams) oVar).bottomMargin);
        }

        void z1(RecyclerView recyclerView) {
            A1(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
        }
    }

    public interface p {
        void a(View view);

        void b(View view);
    }

    public static abstract class q {
        public abstract boolean a(int i, int i2);
    }

    public interface r {
        boolean a(RecyclerView recyclerView, MotionEvent motionEvent);

        void b(RecyclerView recyclerView, MotionEvent motionEvent);

        void c(boolean z);
    }

    public static abstract class s {
        public void a(RecyclerView recyclerView, int i) {
        }

        public void b(RecyclerView recyclerView, int i, int i2) {
        }
    }

    public static class t {
        SparseArray<a> a = new SparseArray<>();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f891b = 0;

        static class a {
            final ArrayList<c0> a = new ArrayList<>();

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            int f892b = 5;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            long f893c = 0;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            long f894d = 0;

            a() {
            }
        }

        private a g(int i) {
            a aVar = this.a.get(i);
            if (aVar != null) {
                return aVar;
            }
            a aVar2 = new a();
            this.a.put(i, aVar2);
            return aVar2;
        }

        void a() {
            this.f891b++;
        }

        public void b() {
            for (int i = 0; i < this.a.size(); i++) {
                this.a.valueAt(i).a.clear();
            }
        }

        void c() {
            this.f891b--;
        }

        void d(int i, long j) {
            a aVarG = g(i);
            aVarG.f894d = j(aVarG.f894d, j);
        }

        void e(int i, long j) {
            a aVarG = g(i);
            aVarG.f893c = j(aVarG.f893c, j);
        }

        public c0 f(int i) {
            a aVar = this.a.get(i);
            if (aVar == null || aVar.a.isEmpty()) {
                return null;
            }
            ArrayList<c0> arrayList = aVar.a;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (!arrayList.get(size).r()) {
                    return arrayList.remove(size);
                }
            }
            return null;
        }

        void h(f fVar, f fVar2, boolean z) {
            if (fVar != null) {
                c();
            }
            if (!z && this.f891b == 0) {
                b();
            }
            if (fVar2 != null) {
                a();
            }
        }

        public void i(c0 c0Var) {
            int iL = c0Var.l();
            ArrayList<c0> arrayList = g(iL).a;
            if (this.a.get(iL).f892b <= arrayList.size()) {
                return;
            }
            c0Var.D();
            arrayList.add(c0Var);
        }

        long j(long j, long j2) {
            return j == 0 ? j2 : ((j / 4) * 3) + (j2 / 4);
        }

        boolean k(int i, long j, long j2) {
            long j3 = g(i).f894d;
            return j3 == 0 || j + j3 < j2;
        }

        boolean l(int i, long j, long j2) {
            long j3 = g(i).f893c;
            return j3 == 0 || j + j3 < j2;
        }
    }

    public final class u {
        final ArrayList<c0> a = new ArrayList<>();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ArrayList<c0> f895b = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final ArrayList<c0> f896c = new ArrayList<>();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final List<c0> f897d = Collections.unmodifiableList(this.a);
        private int e = 2;
        int f = 2;
        t g;
        private a0 h;

        public u() {
        }

        private boolean H(c0 c0Var, int i, int i2, long j) {
            c0Var.r = RecyclerView.this;
            int iL = c0Var.l();
            long nanoTime = RecyclerView.this.getNanoTime();
            if (j != Long.MAX_VALUE && !this.g.k(iL, nanoTime, j)) {
                return false;
            }
            RecyclerView.this.l.a(c0Var, i);
            this.g.d(c0Var.l(), RecyclerView.this.getNanoTime() - nanoTime);
            b(c0Var);
            if (!RecyclerView.this.h0.e()) {
                return true;
            }
            c0Var.g = i2;
            return true;
        }

        private void b(c0 c0Var) {
            if (RecyclerView.this.s0()) {
                View view = c0Var.a;
                if (androidx.core.view.v.A(view) == 0) {
                    androidx.core.view.v.x0(view, 1);
                }
                androidx.recyclerview.widget.k kVar = RecyclerView.this.o0;
                if (kVar == null) {
                    return;
                }
                androidx.core.view.a aVarN = kVar.n();
                if (aVarN instanceof k.a) {
                    ((k.a) aVarN).o(view);
                }
                androidx.core.view.v.o0(view, aVarN);
            }
        }

        private void q(ViewGroup viewGroup, boolean z) {
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (childAt instanceof ViewGroup) {
                    q((ViewGroup) childAt, true);
                }
            }
            if (z) {
                if (viewGroup.getVisibility() == 4) {
                    viewGroup.setVisibility(0);
                    viewGroup.setVisibility(4);
                } else {
                    int visibility = viewGroup.getVisibility();
                    viewGroup.setVisibility(4);
                    viewGroup.setVisibility(visibility);
                }
            }
        }

        private void r(c0 c0Var) {
            View view = c0Var.a;
            if (view instanceof ViewGroup) {
                q((ViewGroup) view, false);
            }
        }

        void A(int i) {
            a(this.f896c.get(i), true);
            this.f896c.remove(i);
        }

        public void B(View view) {
            c0 c0VarF0 = RecyclerView.f0(view);
            if (c0VarF0.x()) {
                RecyclerView.this.removeDetachedView(view, false);
            }
            if (c0VarF0.w()) {
                c0VarF0.K();
            } else if (c0VarF0.L()) {
                c0VarF0.e();
            }
            C(c0VarF0);
            if (RecyclerView.this.M == null || c0VarF0.u()) {
                return;
            }
            RecyclerView.this.M.j(c0VarF0);
        }

        void C(c0 c0Var) {
            boolean z;
            boolean z2 = true;
            if (c0Var.w() || c0Var.a.getParent() != null) {
                StringBuilder sb = new StringBuilder();
                sb.append("Scrapped or attached views may not be recycled. isScrap:");
                sb.append(c0Var.w());
                sb.append(" isAttached:");
                sb.append(c0Var.a.getParent() != null);
                sb.append(RecyclerView.this.P());
                throw new IllegalArgumentException(sb.toString());
            }
            if (c0Var.x()) {
                throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + c0Var + RecyclerView.this.P());
            }
            if (c0Var.J()) {
                throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle." + RecyclerView.this.P());
            }
            boolean zH = c0Var.h();
            f fVar = RecyclerView.this.l;
            if ((fVar != null && zH && fVar.n(c0Var)) || c0Var.u()) {
                if (this.f <= 0 || c0Var.p(526)) {
                    z = false;
                } else {
                    int size = this.f896c.size();
                    if (size >= this.f && size > 0) {
                        A(0);
                        size--;
                    }
                    if (RecyclerView.B0 && size > 0 && !RecyclerView.this.g0.d(c0Var.f875c)) {
                        int i = size - 1;
                        while (i >= 0) {
                            if (!RecyclerView.this.g0.d(this.f896c.get(i).f875c)) {
                                break;
                            } else {
                                i--;
                            }
                        }
                        size = i + 1;
                    }
                    this.f896c.add(size, c0Var);
                    z = true;
                }
                if (z) {
                    z = z;
                    z2 = false;
                } else {
                    a(c0Var, true);
                    z = z;
                }
            } else {
                z2 = false;
            }
            RecyclerView.this.g.q(c0Var);
            if (z || z2 || !zH) {
                return;
            }
            c0Var.r = null;
        }

        void D(View view) {
            c0 c0VarF0 = RecyclerView.f0(view);
            if (!c0VarF0.p(12) && c0VarF0.y() && !RecyclerView.this.p(c0VarF0)) {
                if (this.f895b == null) {
                    this.f895b = new ArrayList<>();
                }
                c0VarF0.H(this, true);
                this.f895b.add(c0VarF0);
                return;
            }
            if (!c0VarF0.t() || c0VarF0.v() || RecyclerView.this.l.g()) {
                c0VarF0.H(this, false);
                this.a.add(c0VarF0);
            } else {
                throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + RecyclerView.this.P());
            }
        }

        void E(t tVar) {
            t tVar2 = this.g;
            if (tVar2 != null) {
                tVar2.c();
            }
            this.g = tVar;
            if (tVar == null || RecyclerView.this.getAdapter() == null) {
                return;
            }
            this.g.a();
        }

        void F(a0 a0Var) {
            this.h = a0Var;
        }

        public void G(int i) {
            this.e = i;
            K();
        }

        /* JADX WARN: Removed duplicated region for block: B:100:0x020c  */
        /* JADX WARN: Removed duplicated region for block: B:106:0x0228 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:108:0x022b  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x005c  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x005f  */
        /* JADX WARN: Removed duplicated region for block: B:73:0x0181 A[PHI: r1 r4
          0x0181: PHI (r1v12 androidx.recyclerview.widget.RecyclerView$c0) = (r1v11 androidx.recyclerview.widget.RecyclerView$c0), (r1v31 androidx.recyclerview.widget.RecyclerView$c0) binds: [B:28:0x005d, B:59:0x0102] A[DONT_GENERATE, DONT_INLINE]
          0x0181: PHI (r4v3 boolean) = (r4v2 boolean), (r4v7 boolean) binds: [B:28:0x005d, B:59:0x0102] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:82:0x01a2  */
        /* JADX WARN: Removed duplicated region for block: B:88:0x01ce  */
        /* JADX WARN: Removed duplicated region for block: B:99:0x01fe  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        c0 I(int i, boolean z, long j) {
            c0 c0VarE0;
            c0 c0Var;
            boolean z2;
            ViewGroup.LayoutParams layoutParams;
            o oVar;
            RecyclerView recyclerViewV;
            a0 a0Var;
            View viewA;
            if (i < 0 || i >= RecyclerView.this.h0.b()) {
                throw new IndexOutOfBoundsException("Invalid item position " + i + "(" + i + "). Item count:" + RecyclerView.this.h0.b() + RecyclerView.this.P());
            }
            if (RecyclerView.this.h0.e()) {
                c0VarE0 = h(i);
                boolean z3 = c0VarE0 != null;
                if (c0VarE0 == null && (c0VarE0 = m(i, z)) != null) {
                    if (L(c0VarE0)) {
                        if (!z) {
                            c0VarE0.b(4);
                            if (c0VarE0.w()) {
                                RecyclerView.this.removeDetachedView(c0VarE0.a, false);
                                c0VarE0.K();
                            } else if (c0VarE0.L()) {
                                c0VarE0.e();
                            }
                            C(c0VarE0);
                        }
                        c0VarE0 = null;
                    } else {
                        z3 = true;
                    }
                }
                if (c0VarE0 != null) {
                    c0Var = c0VarE0;
                } else {
                    int iM = RecyclerView.this.e.m(i);
                    if (iM < 0 || iM >= RecyclerView.this.l.c()) {
                        throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + i + "(offset:" + iM + ").state:" + RecyclerView.this.h0.b() + RecyclerView.this.P());
                    }
                    int iE = RecyclerView.this.l.e(iM);
                    if (RecyclerView.this.l.g() && (c0VarE0 = l(RecyclerView.this.l.d(iM), iE, z)) != null) {
                        c0VarE0.f875c = iM;
                        z3 = true;
                    }
                    if (c0VarE0 == null && (a0Var = this.h) != null && (viewA = a0Var.a(this, i, iE)) != null) {
                        c0VarE0 = RecyclerView.this.e0(viewA);
                        if (c0VarE0 == null) {
                            throw new IllegalArgumentException("getViewForPositionAndType returned a view which does not have a ViewHolder" + RecyclerView.this.P());
                        }
                        if (c0VarE0.J()) {
                            throw new IllegalArgumentException("getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view." + RecyclerView.this.P());
                        }
                    }
                    if (c0VarE0 == null) {
                        c0 c0VarF = i().f(iE);
                        if (c0VarF != null) {
                            c0VarF.D();
                            if (RecyclerView.z0) {
                                r(c0VarF);
                            }
                        }
                        c0VarE0 = c0VarF;
                    }
                    if (c0VarE0 == null) {
                        long nanoTime = RecyclerView.this.getNanoTime();
                        if (j != Long.MAX_VALUE && !this.g.l(iE, nanoTime, j)) {
                            return null;
                        }
                        RecyclerView recyclerView = RecyclerView.this;
                        c0 c0VarB = recyclerView.l.b(recyclerView, iE);
                        if (RecyclerView.B0 && (recyclerViewV = RecyclerView.V(c0VarB.a)) != null) {
                            c0VarB.f874b = new WeakReference<>(recyclerViewV);
                        }
                        this.g.e(iE, RecyclerView.this.getNanoTime() - nanoTime);
                        c0Var = c0VarB;
                    }
                }
                z2 = z3;
                if (z2 && !RecyclerView.this.h0.e() && c0Var.p(8192)) {
                    c0Var.F(0, 8192);
                    if (RecyclerView.this.h0.k) {
                        int iE2 = k.e(c0Var) | 4096;
                        RecyclerView recyclerView2 = RecyclerView.this;
                        RecyclerView.this.Q0(c0Var, recyclerView2.M.t(recyclerView2.h0, c0Var, iE2, c0Var.o()));
                    }
                }
                if (RecyclerView.this.h0.e() || !c0Var.s()) {
                    boolean zH = (c0Var.s() || c0Var.z() || c0Var.t()) ? H(c0Var, RecyclerView.this.e.m(i), i, j) : false;
                    layoutParams = c0Var.a.getLayoutParams();
                    if (layoutParams == null) {
                        oVar = (o) RecyclerView.this.generateDefaultLayoutParams();
                        c0Var.a.setLayoutParams(oVar);
                    } else if (RecyclerView.this.checkLayoutParams(layoutParams)) {
                        oVar = (o) layoutParams;
                    } else {
                        oVar = (o) RecyclerView.this.generateLayoutParams(layoutParams);
                        c0Var.a.setLayoutParams(oVar);
                    }
                    oVar.a = c0Var;
                    oVar.f890d = z2 && zH;
                    return c0Var;
                }
                c0Var.g = i;
                layoutParams = c0Var.a.getLayoutParams();
                if (layoutParams == null) {
                }
                oVar.a = c0Var;
                oVar.f890d = z2 && zH;
                return c0Var;
            }
            c0VarE0 = null;
            if (c0VarE0 == null) {
                if (L(c0VarE0)) {
                }
            }
            if (c0VarE0 != null) {
            }
            z2 = z3;
            if (z2) {
                c0Var.F(0, 8192);
                if (RecyclerView.this.h0.k) {
                }
            }
            if (RecyclerView.this.h0.e()) {
                if (c0Var.s()) {
                }
            }
            layoutParams = c0Var.a.getLayoutParams();
            if (layoutParams == null) {
            }
            oVar.a = c0Var;
            oVar.f890d = z2 && zH;
            return c0Var;
        }

        void J(c0 c0Var) {
            if (c0Var.o) {
                this.f895b.remove(c0Var);
            } else {
                this.a.remove(c0Var);
            }
            c0Var.n = null;
            c0Var.o = false;
            c0Var.e();
        }

        void K() {
            n nVar = RecyclerView.this.m;
            this.f = this.e + (nVar != null ? nVar.m : 0);
            for (int size = this.f896c.size() - 1; size >= 0 && this.f896c.size() > this.f; size--) {
                A(size);
            }
        }

        boolean L(c0 c0Var) {
            if (c0Var.v()) {
                return RecyclerView.this.h0.e();
            }
            int i = c0Var.f875c;
            if (i >= 0 && i < RecyclerView.this.l.c()) {
                if (RecyclerView.this.h0.e() || RecyclerView.this.l.e(c0Var.f875c) == c0Var.l()) {
                    return !RecyclerView.this.l.g() || c0Var.k() == RecyclerView.this.l.d(c0Var.f875c);
                }
                return false;
            }
            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + c0Var + RecyclerView.this.P());
        }

        void M(int i, int i2) {
            int i3;
            int i4 = i2 + i;
            for (int size = this.f896c.size() - 1; size >= 0; size--) {
                c0 c0Var = this.f896c.get(size);
                if (c0Var != null && (i3 = c0Var.f875c) >= i && i3 < i4) {
                    c0Var.b(2);
                    A(size);
                }
            }
        }

        void a(c0 c0Var, boolean z) {
            RecyclerView.r(c0Var);
            View view = c0Var.a;
            androidx.recyclerview.widget.k kVar = RecyclerView.this.o0;
            if (kVar != null) {
                androidx.core.view.a aVarN = kVar.n();
                androidx.core.view.v.o0(view, aVarN instanceof k.a ? ((k.a) aVarN).n(view) : null);
            }
            if (z) {
                g(c0Var);
            }
            c0Var.r = null;
            i().i(c0Var);
        }

        public void c() {
            this.a.clear();
            z();
        }

        void d() {
            int size = this.f896c.size();
            for (int i = 0; i < size; i++) {
                this.f896c.get(i).c();
            }
            int size2 = this.a.size();
            for (int i2 = 0; i2 < size2; i2++) {
                this.a.get(i2).c();
            }
            ArrayList<c0> arrayList = this.f895b;
            if (arrayList != null) {
                int size3 = arrayList.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    this.f895b.get(i3).c();
                }
            }
        }

        void e() {
            this.a.clear();
            ArrayList<c0> arrayList = this.f895b;
            if (arrayList != null) {
                arrayList.clear();
            }
        }

        public int f(int i) {
            if (i >= 0 && i < RecyclerView.this.h0.b()) {
                return !RecyclerView.this.h0.e() ? i : RecyclerView.this.e.m(i);
            }
            throw new IndexOutOfBoundsException("invalid position " + i + ". State item count is " + RecyclerView.this.h0.b() + RecyclerView.this.P());
        }

        void g(c0 c0Var) {
            v vVar = RecyclerView.this.n;
            if (vVar != null) {
                vVar.a(c0Var);
            }
            f fVar = RecyclerView.this.l;
            if (fVar != null) {
                fVar.q(c0Var);
            }
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.h0 != null) {
                recyclerView.g.q(c0Var);
            }
        }

        c0 h(int i) {
            int size;
            int iM;
            ArrayList<c0> arrayList = this.f895b;
            if (arrayList != null && (size = arrayList.size()) != 0) {
                for (int i2 = 0; i2 < size; i2++) {
                    c0 c0Var = this.f895b.get(i2);
                    if (!c0Var.L() && c0Var.m() == i) {
                        c0Var.b(32);
                        return c0Var;
                    }
                }
                if (RecyclerView.this.l.g() && (iM = RecyclerView.this.e.m(i)) > 0 && iM < RecyclerView.this.l.c()) {
                    long jD = RecyclerView.this.l.d(iM);
                    for (int i3 = 0; i3 < size; i3++) {
                        c0 c0Var2 = this.f895b.get(i3);
                        if (!c0Var2.L() && c0Var2.k() == jD) {
                            c0Var2.b(32);
                            return c0Var2;
                        }
                    }
                }
            }
            return null;
        }

        t i() {
            if (this.g == null) {
                this.g = new t();
            }
            return this.g;
        }

        int j() {
            return this.a.size();
        }

        public List<c0> k() {
            return this.f897d;
        }

        c0 l(long j, int i, boolean z) {
            for (int size = this.a.size() - 1; size >= 0; size--) {
                c0 c0Var = this.a.get(size);
                if (c0Var.k() == j && !c0Var.L()) {
                    if (i == c0Var.l()) {
                        c0Var.b(32);
                        if (c0Var.v() && !RecyclerView.this.h0.e()) {
                            c0Var.F(2, 14);
                        }
                        return c0Var;
                    }
                    if (!z) {
                        this.a.remove(size);
                        RecyclerView.this.removeDetachedView(c0Var.a, false);
                        y(c0Var.a);
                    }
                }
            }
            int size2 = this.f896c.size();
            while (true) {
                size2--;
                if (size2 < 0) {
                    return null;
                }
                c0 c0Var2 = this.f896c.get(size2);
                if (c0Var2.k() == j && !c0Var2.r()) {
                    if (i == c0Var2.l()) {
                        if (!z) {
                            this.f896c.remove(size2);
                        }
                        return c0Var2;
                    }
                    if (!z) {
                        A(size2);
                        return null;
                    }
                }
            }
        }

        c0 m(int i, boolean z) {
            View viewE;
            int size = this.a.size();
            for (int i2 = 0; i2 < size; i2++) {
                c0 c0Var = this.a.get(i2);
                if (!c0Var.L() && c0Var.m() == i && !c0Var.t() && (RecyclerView.this.h0.h || !c0Var.v())) {
                    c0Var.b(32);
                    return c0Var;
                }
            }
            if (z || (viewE = RecyclerView.this.f.e(i)) == null) {
                int size2 = this.f896c.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    c0 c0Var2 = this.f896c.get(i3);
                    if (!c0Var2.t() && c0Var2.m() == i && !c0Var2.r()) {
                        if (!z) {
                            this.f896c.remove(i3);
                        }
                        return c0Var2;
                    }
                }
                return null;
            }
            c0 c0VarF0 = RecyclerView.f0(viewE);
            RecyclerView.this.f.s(viewE);
            int iM = RecyclerView.this.f.m(viewE);
            if (iM != -1) {
                RecyclerView.this.f.d(iM);
                D(viewE);
                c0VarF0.b(8224);
                return c0VarF0;
            }
            throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + c0VarF0 + RecyclerView.this.P());
        }

        View n(int i) {
            return this.a.get(i).a;
        }

        public View o(int i) {
            return p(i, false);
        }

        View p(int i, boolean z) {
            return I(i, z, Long.MAX_VALUE).a;
        }

        void s() {
            int size = this.f896c.size();
            for (int i = 0; i < size; i++) {
                o oVar = (o) this.f896c.get(i).a.getLayoutParams();
                if (oVar != null) {
                    oVar.f889c = true;
                }
            }
        }

        void t() {
            int size = this.f896c.size();
            for (int i = 0; i < size; i++) {
                c0 c0Var = this.f896c.get(i);
                if (c0Var != null) {
                    c0Var.b(6);
                    c0Var.a(null);
                }
            }
            f fVar = RecyclerView.this.l;
            if (fVar == null || !fVar.g()) {
                z();
            }
        }

        void u(int i, int i2) {
            int size = this.f896c.size();
            for (int i3 = 0; i3 < size; i3++) {
                c0 c0Var = this.f896c.get(i3);
                if (c0Var != null && c0Var.f875c >= i) {
                    c0Var.A(i2, true);
                }
            }
        }

        void v(int i, int i2) {
            int i3;
            int i4;
            int i5;
            int i6;
            if (i < i2) {
                i3 = -1;
                i5 = i;
                i4 = i2;
            } else {
                i3 = 1;
                i4 = i;
                i5 = i2;
            }
            int size = this.f896c.size();
            for (int i7 = 0; i7 < size; i7++) {
                c0 c0Var = this.f896c.get(i7);
                if (c0Var != null && (i6 = c0Var.f875c) >= i5 && i6 <= i4) {
                    if (i6 == i) {
                        c0Var.A(i2 - i, false);
                    } else {
                        c0Var.A(i3, false);
                    }
                }
            }
        }

        void w(int i, int i2, boolean z) {
            int i3 = i + i2;
            for (int size = this.f896c.size() - 1; size >= 0; size--) {
                c0 c0Var = this.f896c.get(size);
                if (c0Var != null) {
                    int i4 = c0Var.f875c;
                    if (i4 >= i3) {
                        c0Var.A(-i2, z);
                    } else if (i4 >= i) {
                        c0Var.b(8);
                        A(size);
                    }
                }
            }
        }

        void x(f fVar, f fVar2, boolean z) {
            c();
            i().h(fVar, fVar2, z);
        }

        void y(View view) {
            c0 c0VarF0 = RecyclerView.f0(view);
            c0VarF0.n = null;
            c0VarF0.o = false;
            c0VarF0.e();
            C(c0VarF0);
        }

        void z() {
            for (int size = this.f896c.size() - 1; size >= 0; size--) {
                A(size);
            }
            this.f896c.clear();
            if (RecyclerView.B0) {
                RecyclerView.this.g0.b();
            }
        }
    }

    public interface v {
        void a(c0 c0Var);
    }

    private class w extends h {
        w() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.h
        public void a() {
            RecyclerView.this.o(null);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.h0.g = true;
            recyclerView.O0(true);
            if (RecyclerView.this.e.p()) {
                return;
            }
            RecyclerView.this.requestLayout();
        }
    }

    public static abstract class y {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private RecyclerView f899b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private n f900c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f901d;
        private boolean e;
        private View f;
        private boolean h;
        private int a = -1;
        private final a g = new a(0, 0);

        public static class a {
            private int a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private int f902b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private int f903c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f904d;
            private Interpolator e;
            private boolean f;
            private int g;

            public a(int i, int i2) {
                this(i, i2, Integer.MIN_VALUE, null);
            }

            private void e() {
                if (this.e != null && this.f903c < 1) {
                    throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                }
                if (this.f903c < 1) {
                    throw new IllegalStateException("Scroll duration must be a positive number");
                }
            }

            boolean a() {
                return this.f904d >= 0;
            }

            public void b(int i) {
                this.f904d = i;
            }

            void c(RecyclerView recyclerView) {
                int i = this.f904d;
                if (i >= 0) {
                    this.f904d = -1;
                    recyclerView.v0(i);
                    this.f = false;
                } else {
                    if (!this.f) {
                        this.g = 0;
                        return;
                    }
                    e();
                    recyclerView.e0.f(this.a, this.f902b, this.f903c, this.e);
                    this.g++;
                    this.f = false;
                }
            }

            public void d(int i, int i2, int i3, Interpolator interpolator) {
                this.a = i;
                this.f902b = i2;
                this.f903c = i3;
                this.e = interpolator;
                this.f = true;
            }

            public a(int i, int i2, int i3, Interpolator interpolator) {
                this.f904d = -1;
                this.f = false;
                this.g = 0;
                this.a = i;
                this.f902b = i2;
                this.f903c = i3;
                this.e = interpolator;
            }
        }

        public interface b {
            PointF a(int i);
        }

        public PointF a(int i) {
            Object objE = e();
            if (objE instanceof b) {
                return ((b) objE).a(i);
            }
            String str = "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + b.class.getCanonicalName();
            return null;
        }

        public View b(int i) {
            return this.f899b.m.C(i);
        }

        public int c() {
            return this.f899b.m.J();
        }

        public int d(View view) {
            return this.f899b.d0(view);
        }

        public n e() {
            return this.f900c;
        }

        public int f() {
            return this.a;
        }

        public boolean g() {
            return this.f901d;
        }

        public boolean h() {
            return this.e;
        }

        protected void i(PointF pointF) {
            float f = pointF.x;
            float f2 = pointF.y;
            float fSqrt = (float) Math.sqrt((f * f) + (f2 * f2));
            pointF.x /= fSqrt;
            pointF.y /= fSqrt;
        }

        void j(int i, int i2) {
            PointF pointFA;
            RecyclerView recyclerView = this.f899b;
            if (this.a == -1 || recyclerView == null) {
                r();
            }
            if (this.f901d && this.f == null && this.f900c != null && (pointFA = a(this.a)) != null && (pointFA.x != CropImageView.DEFAULT_ASPECT_RATIO || pointFA.y != CropImageView.DEFAULT_ASPECT_RATIO)) {
                recyclerView.f1((int) Math.signum(pointFA.x), (int) Math.signum(pointFA.y), null);
            }
            this.f901d = false;
            View view = this.f;
            if (view != null) {
                if (d(view) == this.a) {
                    o(this.f, recyclerView.h0, this.g);
                    this.g.c(recyclerView);
                    r();
                } else {
                    this.f = null;
                }
            }
            if (this.e) {
                l(i, i2, recyclerView.h0, this.g);
                boolean zA = this.g.a();
                this.g.c(recyclerView);
                if (zA && this.e) {
                    this.f901d = true;
                    recyclerView.e0.e();
                }
            }
        }

        protected void k(View view) {
            if (d(view) == f()) {
                this.f = view;
            }
        }

        protected abstract void l(int i, int i2, z zVar, a aVar);

        protected abstract void m();

        protected abstract void n();

        protected abstract void o(View view, z zVar, a aVar);

        public void p(int i) {
            this.a = i;
        }

        void q(RecyclerView recyclerView, n nVar) {
            recyclerView.e0.g();
            if (this.h) {
                String str = "An instance of " + getClass().getSimpleName() + " was started more than once. Each instance of" + getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.";
            }
            this.f899b = recyclerView;
            this.f900c = nVar;
            int i = this.a;
            if (i == -1) {
                throw new IllegalArgumentException("Invalid target position");
            }
            recyclerView.h0.a = i;
            this.e = true;
            this.f901d = true;
            this.f = b(f());
            m();
            this.f899b.e0.e();
            this.h = true;
        }

        protected final void r() {
            if (this.e) {
                this.e = false;
                n();
                this.f899b.h0.a = -1;
                this.f = null;
                this.a = -1;
                this.f901d = false;
                this.f900c.f1(this);
                this.f900c = null;
                this.f899b = null;
            }
        }
    }

    public static class z {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private SparseArray<Object> f905b;
        int m;
        long n;
        int o;
        int p;
        int q;
        int a = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f906c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f907d = 0;
        int e = 1;
        int f = 0;
        boolean g = false;
        boolean h = false;
        boolean i = false;
        boolean j = false;
        boolean k = false;
        boolean l = false;

        void a(int i) {
            if ((this.e & i) != 0) {
                return;
            }
            throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i) + " but it is " + Integer.toBinaryString(this.e));
        }

        public int b() {
            return this.h ? this.f906c - this.f907d : this.f;
        }

        public int c() {
            return this.a;
        }

        public boolean d() {
            return this.a != -1;
        }

        public boolean e() {
            return this.h;
        }

        void f(f fVar) {
            this.e = 1;
            this.f = fVar.c();
            this.h = false;
            this.i = false;
            this.j = false;
        }

        public boolean g() {
            return this.l;
        }

        public String toString() {
            return "State{mTargetPosition=" + this.a + ", mData=" + this.f905b + ", mItemCount=" + this.f + ", mIsMeasuring=" + this.j + ", mPreviousLayoutItemCount=" + this.f906c + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f907d + ", mStructureChanged=" + this.g + ", mInPreLayout=" + this.h + ", mRunSimpleAnimations=" + this.k + ", mRunPredictiveAnimations=" + this.l + '}';
        }
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        z0 = i2 == 18 || i2 == 19 || i2 == 20;
        A0 = Build.VERSION.SDK_INT >= 23;
        int i3 = Build.VERSION.SDK_INT;
        B0 = Build.VERSION.SDK_INT >= 21;
        C0 = Build.VERSION.SDK_INT <= 15;
        D0 = Build.VERSION.SDK_INT <= 15;
        Class<?> cls = Integer.TYPE;
        E0 = new Class[]{Context.class, AttributeSet.class, cls, cls};
        F0 = new b();
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, c.n.a.recyclerViewStyle);
    }

    private void A() {
        int i2 = this.z;
        this.z = 0;
        if (i2 == 0 || !s0()) {
            return;
        }
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
        accessibilityEventObtain.setEventType(2048);
        androidx.core.view.e0.b.b(accessibilityEventObtain, i2);
        sendAccessibilityEventUnchecked(accessibilityEventObtain);
    }

    private void C() {
        this.h0.a(1);
        Q(this.h0);
        this.h0.j = false;
        p1();
        this.g.f();
        F0();
        N0();
        c1();
        z zVar = this.h0;
        zVar.i = zVar.k && this.l0;
        this.l0 = false;
        this.k0 = false;
        z zVar2 = this.h0;
        zVar2.h = zVar2.l;
        zVar2.f = this.l.c();
        U(this.q0);
        if (this.h0.k) {
            int iG = this.f.g();
            for (int i2 = 0; i2 < iG; i2++) {
                c0 c0VarF0 = f0(this.f.f(i2));
                if (!c0VarF0.J() && (!c0VarF0.t() || this.l.g())) {
                    this.g.e(c0VarF0, this.M.t(this.h0, c0VarF0, k.e(c0VarF0), c0VarF0.o()));
                    if (this.h0.i && c0VarF0.y() && !c0VarF0.v() && !c0VarF0.J() && !c0VarF0.t()) {
                        this.g.c(c0(c0VarF0), c0VarF0);
                    }
                }
            }
        }
        if (this.h0.l) {
            d1();
            z zVar3 = this.h0;
            boolean z2 = zVar3.g;
            zVar3.g = false;
            this.m.X0(this.f868c, zVar3);
            this.h0.g = z2;
            for (int i3 = 0; i3 < this.f.g(); i3++) {
                c0 c0VarF02 = f0(this.f.f(i3));
                if (!c0VarF02.J() && !this.g.i(c0VarF02)) {
                    int iE = k.e(c0VarF02);
                    boolean zP = c0VarF02.p(8192);
                    if (!zP) {
                        iE |= 4096;
                    }
                    k.c cVarT = this.M.t(this.h0, c0VarF02, iE, c0VarF02.o());
                    if (zP) {
                        Q0(c0VarF02, cVarT);
                    } else {
                        this.g.a(c0VarF02, cVarT);
                    }
                }
            }
            s();
        } else {
            s();
        }
        G0();
        r1(false);
        this.h0.e = 2;
    }

    private void D() {
        p1();
        F0();
        this.h0.a(6);
        this.e.j();
        this.h0.f = this.l.c();
        z zVar = this.h0;
        zVar.f907d = 0;
        zVar.h = false;
        this.m.X0(this.f868c, zVar);
        z zVar2 = this.h0;
        zVar2.g = false;
        this.f869d = null;
        zVar2.k = zVar2.k && this.M != null;
        this.h0.e = 4;
        G0();
        r1(false);
    }

    private void E() {
        this.h0.a(4);
        p1();
        F0();
        z zVar = this.h0;
        zVar.e = 1;
        if (zVar.k) {
            for (int iG = this.f.g() - 1; iG >= 0; iG--) {
                c0 c0VarF0 = f0(this.f.f(iG));
                if (!c0VarF0.J()) {
                    long jC0 = c0(c0VarF0);
                    k.c cVarS = this.M.s(this.h0, c0VarF0);
                    c0 c0VarG = this.g.g(jC0);
                    if (c0VarG == null || c0VarG.J()) {
                        this.g.d(c0VarF0, cVarS);
                    } else {
                        boolean zH = this.g.h(c0VarG);
                        boolean zH2 = this.g.h(c0VarF0);
                        if (zH && c0VarG == c0VarF0) {
                            this.g.d(c0VarF0, cVarS);
                        } else {
                            k.c cVarN = this.g.n(c0VarG);
                            this.g.d(c0VarF0, cVarS);
                            k.c cVarM = this.g.m(c0VarF0);
                            if (cVarN == null) {
                                k0(jC0, c0VarF0, c0VarG);
                            } else {
                                m(c0VarG, c0VarF0, cVarN, cVarM, zH, zH2);
                            }
                        }
                    }
                }
            }
            this.g.o(this.x0);
        }
        this.m.l1(this.f868c);
        z zVar2 = this.h0;
        zVar2.f906c = zVar2.f;
        this.D = false;
        this.E = false;
        zVar2.k = false;
        zVar2.l = false;
        this.m.h = false;
        ArrayList<c0> arrayList = this.f868c.f895b;
        if (arrayList != null) {
            arrayList.clear();
        }
        n nVar = this.m;
        if (nVar.n) {
            nVar.m = 0;
            nVar.n = false;
            this.f868c.K();
        }
        this.m.Y0(this.h0);
        G0();
        r1(false);
        this.g.f();
        int[] iArr = this.q0;
        if (x(iArr[0], iArr[1])) {
            I(0, 0);
        }
        R0();
        a1();
    }

    private void I0(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.O) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.O = motionEvent.getPointerId(i2);
            int x2 = (int) (motionEvent.getX(i2) + 0.5f);
            this.S = x2;
            this.Q = x2;
            int y2 = (int) (motionEvent.getY(i2) + 0.5f);
            this.T = y2;
            this.R = y2;
        }
    }

    private boolean K(MotionEvent motionEvent) {
        r rVar = this.q;
        if (rVar == null) {
            if (motionEvent.getAction() == 0) {
                return false;
            }
            return T(motionEvent);
        }
        rVar.b(this, motionEvent);
        int action = motionEvent.getAction();
        if (action == 3 || action == 1) {
            this.q = null;
        }
        return true;
    }

    private boolean M0() {
        return this.M != null && this.m.L1();
    }

    private void N0() {
        if (this.D) {
            this.e.u();
            if (this.E) {
                this.m.S0(this);
            }
        }
        if (M0()) {
            this.e.s();
        } else {
            this.e.j();
        }
        boolean z2 = false;
        boolean z3 = this.k0 || this.l0;
        this.h0.k = this.u && this.M != null && (this.D || z3 || this.m.h) && (!this.D || this.l.g());
        z zVar = this.h0;
        if (zVar.k && z3 && !this.D && M0()) {
            z2 = true;
        }
        zVar.l = z2;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void P0(float f2, float f3, float f4, float f5) {
        boolean z2;
        boolean z3 = true;
        if (f3 < CropImageView.DEFAULT_ASPECT_RATIO) {
            M();
            androidx.core.widget.d.a(this.I, (-f3) / getWidth(), 1.0f - (f4 / getHeight()));
        } else {
            if (f3 <= CropImageView.DEFAULT_ASPECT_RATIO) {
                z2 = false;
                if (f5 >= CropImageView.DEFAULT_ASPECT_RATIO) {
                    O();
                    androidx.core.widget.d.a(this.J, (-f5) / getHeight(), f2 / getWidth());
                } else if (f5 > CropImageView.DEFAULT_ASPECT_RATIO) {
                    L();
                    androidx.core.widget.d.a(this.L, f5 / getHeight(), 1.0f - (f2 / getWidth()));
                } else {
                    z3 = z2;
                }
                if (z3 && f3 == CropImageView.DEFAULT_ASPECT_RATIO && f5 == CropImageView.DEFAULT_ASPECT_RATIO) {
                    return;
                }
                androidx.core.view.v.f0(this);
            }
            N();
            androidx.core.widget.d.a(this.K, f3 / getWidth(), f4 / getHeight());
        }
        z2 = true;
        if (f5 >= CropImageView.DEFAULT_ASPECT_RATIO) {
        }
        if (z3) {
        }
        androidx.core.view.v.f0(this);
    }

    private void R0() {
        View viewFindViewById;
        if (!this.d0 || this.l == null || !hasFocus() || getDescendantFocusability() == 393216) {
            return;
        }
        if (getDescendantFocusability() == 131072 && isFocused()) {
            return;
        }
        if (!isFocused()) {
            View focusedChild = getFocusedChild();
            if (!D0 || (focusedChild.getParent() != null && focusedChild.hasFocus())) {
                if (!this.f.n(focusedChild)) {
                    return;
                }
            } else if (this.f.g() == 0) {
                requestFocus();
                return;
            }
        }
        View viewW = null;
        c0 c0VarY = (this.h0.n == -1 || !this.l.g()) ? null : Y(this.h0.n);
        if (c0VarY != null && !this.f.n(c0VarY.a) && c0VarY.a.hasFocusable()) {
            viewW = c0VarY.a;
        } else if (this.f.g() > 0) {
            viewW = W();
        }
        if (viewW != null) {
            int i2 = this.h0.o;
            if (i2 != -1 && (viewFindViewById = viewW.findViewById(i2)) != null && viewFindViewById.isFocusable()) {
                viewW = viewFindViewById;
            }
            viewW.requestFocus();
        }
    }

    private void S0() {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.I;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            zIsFinished = this.I.isFinished();
        } else {
            zIsFinished = false;
        }
        EdgeEffect edgeEffect2 = this.J;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            zIsFinished |= this.J.isFinished();
        }
        EdgeEffect edgeEffect3 = this.K;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            zIsFinished |= this.K.isFinished();
        }
        EdgeEffect edgeEffect4 = this.L;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            zIsFinished |= this.L.isFinished();
        }
        if (zIsFinished) {
            androidx.core.view.v.f0(this);
        }
    }

    private boolean T(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int size = this.p.size();
        for (int i2 = 0; i2 < size; i2++) {
            r rVar = this.p.get(i2);
            if (rVar.a(this, motionEvent) && action != 3) {
                this.q = rVar;
                return true;
            }
        }
        return false;
    }

    private void U(int[] iArr) {
        int iG = this.f.g();
        if (iG == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i2 = Integer.MAX_VALUE;
        int i3 = Integer.MIN_VALUE;
        for (int i4 = 0; i4 < iG; i4++) {
            c0 c0VarF0 = f0(this.f.f(i4));
            if (!c0VarF0.J()) {
                int iM = c0VarF0.m();
                if (iM < i2) {
                    i2 = iM;
                }
                if (iM > i3) {
                    i3 = iM;
                }
            }
        }
        iArr[0] = i2;
        iArr[1] = i3;
    }

    static RecyclerView V(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            RecyclerView recyclerViewV = V(viewGroup.getChildAt(i2));
            if (recyclerViewV != null) {
                return recyclerViewV;
            }
        }
        return null;
    }

    private View W() {
        c0 c0VarX;
        int i2 = this.h0.m;
        if (i2 == -1) {
            i2 = 0;
        }
        int iB = this.h0.b();
        for (int i3 = i2; i3 < iB; i3++) {
            c0 c0VarX2 = X(i3);
            if (c0VarX2 == null) {
                break;
            }
            if (c0VarX2.a.hasFocusable()) {
                return c0VarX2.a;
            }
        }
        int iMin = Math.min(iB, i2);
        do {
            iMin--;
            if (iMin < 0 || (c0VarX = X(iMin)) == null) {
                return null;
            }
        } while (!c0VarX.a.hasFocusable());
        return c0VarX.a;
    }

    private void Z0(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        this.i.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof o) {
            o oVar = (o) layoutParams;
            if (!oVar.f889c) {
                Rect rect = oVar.f888b;
                Rect rect2 = this.i;
                rect2.left -= rect.left;
                rect2.right += rect.right;
                rect2.top -= rect.top;
                rect2.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.i);
            offsetRectIntoDescendantCoords(view, this.i);
        }
        this.m.s1(this, view, this.i, !this.u, view2 == null);
    }

    private void a1() {
        z zVar = this.h0;
        zVar.n = -1L;
        zVar.m = -1;
        zVar.o = -1;
    }

    private void b1() {
        VelocityTracker velocityTracker = this.P;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        s1(0);
        S0();
    }

    private void c1() {
        View focusedChild = (this.d0 && hasFocus() && this.l != null) ? getFocusedChild() : null;
        c0 c0VarS = focusedChild != null ? S(focusedChild) : null;
        if (c0VarS == null) {
            a1();
            return;
        }
        this.h0.n = this.l.g() ? c0VarS.k() : -1L;
        this.h0.m = this.D ? -1 : c0VarS.v() ? c0VarS.f876d : c0VarS.j();
        this.h0.o = h0(c0VarS.a);
    }

    static c0 f0(View view) {
        if (view == null) {
            return null;
        }
        return ((o) view.getLayoutParams()).a;
    }

    private void g(c0 c0Var) {
        View view = c0Var.a;
        boolean z2 = view.getParent() == this;
        this.f868c.J(e0(view));
        if (c0Var.x()) {
            this.f.c(view, -1, view.getLayoutParams(), true);
        } else if (z2) {
            this.f.k(view);
        } else {
            this.f.b(view, true);
        }
    }

    static void g0(View view, Rect rect) {
        o oVar = (o) view.getLayoutParams();
        Rect rect2 = oVar.f888b;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) oVar).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) oVar).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) oVar).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) oVar).bottomMargin);
    }

    private androidx.core.view.l getScrollingChildHelper() {
        if (this.r0 == null) {
            this.r0 = new androidx.core.view.l(this);
        }
        return this.r0;
    }

    private int h0(View view) {
        int id = view.getId();
        while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
            view = ((ViewGroup) view).getFocusedChild();
            if (view.getId() != -1) {
                id = view.getId();
            }
        }
        return id;
    }

    private void h1(f fVar, boolean z2, boolean z3) {
        f fVar2 = this.l;
        if (fVar2 != null) {
            fVar2.t(this.f867b);
            this.l.m(this);
        }
        if (!z2 || z3) {
            T0();
        }
        this.e.u();
        f fVar3 = this.l;
        this.l = fVar;
        if (fVar != null) {
            fVar.r(this.f867b);
            fVar.i(this);
        }
        n nVar = this.m;
        if (nVar != null) {
            nVar.E0(fVar3, this.l);
        }
        this.f868c.x(fVar3, this.l, z2);
        this.h0.g = true;
    }

    private String i0(Context context, String str) {
        if (str.charAt(0) == '.') {
            return context.getPackageName() + str;
        }
        if (str.contains(".")) {
            return str;
        }
        return RecyclerView.class.getPackage().getName() + '.' + str;
    }

    private void k0(long j2, c0 c0Var, c0 c0Var2) {
        int iG = this.f.g();
        for (int i2 = 0; i2 < iG; i2++) {
            c0 c0VarF0 = f0(this.f.f(i2));
            if (c0VarF0 != c0Var && c0(c0VarF0) == j2) {
                f fVar = this.l;
                if (fVar == null || !fVar.g()) {
                    throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + c0VarF0 + " \n View Holder 2:" + c0Var + P());
                }
                throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + c0VarF0 + " \n View Holder 2:" + c0Var + P());
            }
        }
        String str = "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + c0Var2 + " cannot be found but it is necessary for " + c0Var + P();
    }

    private void m(c0 c0Var, c0 c0Var2, k.c cVar, k.c cVar2, boolean z2, boolean z3) {
        c0Var.G(false);
        if (z2) {
            g(c0Var);
        }
        if (c0Var != c0Var2) {
            if (z3) {
                g(c0Var2);
            }
            c0Var.h = c0Var2;
            g(c0Var);
            this.f868c.J(c0Var);
            c0Var2.G(false);
            c0Var2.i = c0Var;
        }
        if (this.M.b(c0Var, c0Var2, cVar, cVar2)) {
            L0();
        }
    }

    private boolean m0() {
        int iG = this.f.g();
        for (int i2 = 0; i2 < iG; i2++) {
            c0 c0VarF0 = f0(this.f.f(i2));
            if (c0VarF0 != null && !c0VarF0.J() && c0VarF0.y()) {
                return true;
            }
        }
        return false;
    }

    @SuppressLint({"InlinedApi"})
    private void o0() {
        if (androidx.core.view.v.B(this) == 0) {
            androidx.core.view.v.y0(this, 8);
        }
    }

    private void p0() {
        this.f = new androidx.recyclerview.widget.b(new d());
    }

    private void q() {
        b1();
        setScrollState(0);
    }

    static void r(c0 c0Var) {
        WeakReference<RecyclerView> weakReference = c0Var.f874b;
        if (weakReference != null) {
            RecyclerView recyclerView = weakReference.get();
            while (recyclerView != null) {
                if (recyclerView == c0Var.a) {
                    return;
                }
                Object parent = recyclerView.getParent();
                recyclerView = parent instanceof View ? (View) parent : null;
            }
            c0Var.f874b = null;
        }
    }

    private boolean u0(View view, View view2, int i2) {
        int i3;
        if (view2 == null || view2 == this || R(view2) == null) {
            return false;
        }
        if (view == null || R(view) == null) {
            return true;
        }
        this.i.set(0, 0, view.getWidth(), view.getHeight());
        this.j.set(0, 0, view2.getWidth(), view2.getHeight());
        offsetDescendantRectToMyCoords(view, this.i);
        offsetDescendantRectToMyCoords(view2, this.j);
        byte b2 = -1;
        int i4 = this.m.Z() == 1 ? -1 : 1;
        Rect rect = this.i;
        int i5 = rect.left;
        int i6 = this.j.left;
        if ((i5 < i6 || rect.right <= i6) && this.i.right < this.j.right) {
            i3 = 1;
        } else {
            Rect rect2 = this.i;
            int i7 = rect2.right;
            int i8 = this.j.right;
            i3 = ((i7 > i8 || rect2.left >= i8) && this.i.left > this.j.left) ? -1 : 0;
        }
        Rect rect3 = this.i;
        int i9 = rect3.top;
        int i10 = this.j.top;
        if ((i9 < i10 || rect3.bottom <= i10) && this.i.bottom < this.j.bottom) {
            b2 = 1;
        } else {
            Rect rect4 = this.i;
            int i11 = rect4.bottom;
            int i12 = this.j.bottom;
            if ((i11 <= i12 && rect4.top < i12) || this.i.top <= this.j.top) {
                b2 = 0;
            }
        }
        if (i2 == 1) {
            return b2 < 0 || (b2 == 0 && i3 * i4 <= 0);
        }
        if (i2 == 2) {
            return b2 > 0 || (b2 == 0 && i3 * i4 >= 0);
        }
        if (i2 == 17) {
            return i3 < 0;
        }
        if (i2 == 33) {
            return b2 < 0;
        }
        if (i2 == 66) {
            return i3 > 0;
        }
        if (i2 == 130) {
            return b2 > 0;
        }
        throw new IllegalArgumentException("Invalid direction: " + i2 + P());
    }

    private void u1() {
        this.e0.g();
        n nVar = this.m;
        if (nVar != null) {
            nVar.K1();
        }
    }

    private void v(Context context, String str, AttributeSet attributeSet, int i2, int i3) {
        Constructor constructor;
        if (str != null) {
            String strTrim = str.trim();
            if (strTrim.isEmpty()) {
                return;
            }
            String strI0 = i0(context, strTrim);
            try {
                Class<? extends U> clsAsSubclass = Class.forName(strI0, false, isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).asSubclass(n.class);
                Object[] objArr = null;
                try {
                    constructor = clsAsSubclass.getConstructor(E0);
                    objArr = new Object[]{context, attributeSet, Integer.valueOf(i2), Integer.valueOf(i3)};
                } catch (NoSuchMethodException e2) {
                    try {
                        constructor = clsAsSubclass.getConstructor(new Class[0]);
                    } catch (NoSuchMethodException e3) {
                        e3.initCause(e2);
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + strI0, e3);
                    }
                }
                constructor.setAccessible(true);
                setLayoutManager((n) constructor.newInstance(objArr));
            } catch (ClassCastException e4) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + strI0, e4);
            } catch (ClassNotFoundException e5) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + strI0, e5);
            } catch (IllegalAccessException e6) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + strI0, e6);
            } catch (InstantiationException e7) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + strI0, e7);
            } catch (InvocationTargetException e8) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + strI0, e8);
            }
        }
    }

    private boolean x(int i2, int i3) {
        U(this.q0);
        int[] iArr = this.q0;
        return (iArr[0] == i2 && iArr[1] == i3) ? false : true;
    }

    void A0(int i2, int i3) {
        int iJ = this.f.j();
        for (int i4 = 0; i4 < iJ; i4++) {
            c0 c0VarF0 = f0(this.f.i(i4));
            if (c0VarF0 != null && !c0VarF0.J() && c0VarF0.f875c >= i2) {
                c0VarF0.A(i3, false);
                this.h0.g = true;
            }
        }
        this.f868c.u(i2, i3);
        requestLayout();
    }

    void B() {
        if (this.l == null || this.m == null) {
            return;
        }
        z zVar = this.h0;
        zVar.j = false;
        if (zVar.e == 1) {
            C();
            this.m.z1(this);
            D();
        } else if (!this.e.q() && this.m.o0() == getWidth() && this.m.W() == getHeight()) {
            this.m.z1(this);
        } else {
            this.m.z1(this);
            D();
        }
        E();
    }

    void B0(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int iJ = this.f.j();
        if (i2 < i3) {
            i6 = -1;
            i5 = i2;
            i4 = i3;
        } else {
            i4 = i2;
            i5 = i3;
            i6 = 1;
        }
        for (int i8 = 0; i8 < iJ; i8++) {
            c0 c0VarF0 = f0(this.f.i(i8));
            if (c0VarF0 != null && (i7 = c0VarF0.f875c) >= i5 && i7 <= i4) {
                if (i7 == i2) {
                    c0VarF0.A(i3 - i2, false);
                } else {
                    c0VarF0.A(i6, false);
                }
                this.h0.g = true;
            }
        }
        this.f868c.v(i2, i3);
        requestLayout();
    }

    void C0(int i2, int i3, boolean z2) {
        int i4 = i2 + i3;
        int iJ = this.f.j();
        for (int i5 = 0; i5 < iJ; i5++) {
            c0 c0VarF0 = f0(this.f.i(i5));
            if (c0VarF0 != null && !c0VarF0.J()) {
                int i6 = c0VarF0.f875c;
                if (i6 >= i4) {
                    c0VarF0.A(-i3, z2);
                    this.h0.g = true;
                } else if (i6 >= i2) {
                    c0VarF0.i(i2 - 1, -i3, z2);
                    this.h0.g = true;
                }
            }
        }
        this.f868c.w(i2, i3, z2);
        requestLayout();
    }

    public void D0(View view) {
    }

    public void E0(View view) {
    }

    public boolean F(int i2, int i3, int[] iArr, int[] iArr2, int i4) {
        return getScrollingChildHelper().d(i2, i3, iArr, iArr2, i4);
    }

    void F0() {
        this.F++;
    }

    public final void G(int i2, int i3, int i4, int i5, int[] iArr, int i6, int[] iArr2) {
        getScrollingChildHelper().e(i2, i3, i4, i5, iArr, i6, iArr2);
    }

    void G0() {
        H0(true);
    }

    void H(int i2) {
        n nVar = this.m;
        if (nVar != null) {
            nVar.e1(i2);
        }
        J0(i2);
        s sVar = this.i0;
        if (sVar != null) {
            sVar.a(this, i2);
        }
        List<s> list = this.j0;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.j0.get(size).a(this, i2);
            }
        }
    }

    void H0(boolean z2) {
        int i2 = this.F - 1;
        this.F = i2;
        if (i2 < 1) {
            this.F = 0;
            if (z2) {
                A();
                J();
            }
        }
    }

    void I(int i2, int i3) {
        this.G++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i2, scrollY - i3);
        K0(i2, i3);
        s sVar = this.i0;
        if (sVar != null) {
            sVar.b(this, i2, i3);
        }
        List<s> list = this.j0;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.j0.get(size).b(this, i2, i3);
            }
        }
        this.G--;
    }

    void J() {
        int i2;
        for (int size = this.v0.size() - 1; size >= 0; size--) {
            c0 c0Var = this.v0.get(size);
            if (c0Var.a.getParent() == this && !c0Var.J() && (i2 = c0Var.q) != -1) {
                androidx.core.view.v.x0(c0Var.a, i2);
                c0Var.q = -1;
            }
        }
        this.v0.clear();
    }

    public void J0(int i2) {
    }

    public void K0(int i2, int i3) {
    }

    void L() {
        if (this.L != null) {
            return;
        }
        EdgeEffect edgeEffectA = this.H.a(this, 3);
        this.L = edgeEffectA;
        if (this.h) {
            edgeEffectA.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffectA.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    void L0() {
        if (this.n0 || !this.r) {
            return;
        }
        androidx.core.view.v.g0(this, this.w0);
        this.n0 = true;
    }

    void M() {
        if (this.I != null) {
            return;
        }
        EdgeEffect edgeEffectA = this.H.a(this, 0);
        this.I = edgeEffectA;
        if (this.h) {
            edgeEffectA.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffectA.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    void N() {
        if (this.K != null) {
            return;
        }
        EdgeEffect edgeEffectA = this.H.a(this, 2);
        this.K = edgeEffectA;
        if (this.h) {
            edgeEffectA.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffectA.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    void O() {
        if (this.J != null) {
            return;
        }
        EdgeEffect edgeEffectA = this.H.a(this, 1);
        this.J = edgeEffectA;
        if (this.h) {
            edgeEffectA.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffectA.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    void O0(boolean z2) {
        this.E = z2 | this.E;
        this.D = true;
        x0();
    }

    String P() {
        return " " + super.toString() + ", adapter:" + this.l + ", layout:" + this.m + ", context:" + getContext();
    }

    final void Q(z zVar) {
        if (getScrollState() != 2) {
            zVar.p = 0;
            zVar.q = 0;
        } else {
            OverScroller overScroller = this.e0.f873d;
            zVar.p = overScroller.getFinalX() - overScroller.getCurrX();
            zVar.q = overScroller.getFinalY() - overScroller.getCurrY();
        }
    }

    void Q0(c0 c0Var, k.c cVar) {
        c0Var.F(0, 8192);
        if (this.h0.i && c0Var.y() && !c0Var.v() && !c0Var.J()) {
            this.g.c(c0(c0Var), c0Var);
        }
        this.g.e(c0Var, cVar);
    }

    public View R(View view) {
        ViewParent parent = view.getParent();
        while (parent != null && parent != this && (parent instanceof View)) {
            view = parent;
            parent = view.getParent();
        }
        if (parent == this) {
            return view;
        }
        return null;
    }

    public c0 S(View view) {
        View viewR = R(view);
        if (viewR == null) {
            return null;
        }
        return e0(viewR);
    }

    void T0() {
        k kVar = this.M;
        if (kVar != null) {
            kVar.k();
        }
        n nVar = this.m;
        if (nVar != null) {
            nVar.k1(this.f868c);
            this.m.l1(this.f868c);
        }
        this.f868c.c();
    }

    boolean U0(View view) {
        p1();
        boolean zR = this.f.r(view);
        if (zR) {
            c0 c0VarF0 = f0(view);
            this.f868c.J(c0VarF0);
            this.f868c.C(c0VarF0);
        }
        r1(!zR);
        return zR;
    }

    public void V0(m mVar) {
        n nVar = this.m;
        if (nVar != null) {
            nVar.g("Cannot remove item decoration during a scroll  or layout");
        }
        this.o.remove(mVar);
        if (this.o.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        w0();
        requestLayout();
    }

    public void W0(r rVar) {
        this.p.remove(rVar);
        if (this.q == rVar) {
            this.q = null;
        }
    }

    public c0 X(int i2) {
        c0 c0Var = null;
        if (this.D) {
            return null;
        }
        int iJ = this.f.j();
        for (int i3 = 0; i3 < iJ; i3++) {
            c0 c0VarF0 = f0(this.f.i(i3));
            if (c0VarF0 != null && !c0VarF0.v() && b0(c0VarF0) == i2) {
                if (!this.f.n(c0VarF0.a)) {
                    return c0VarF0;
                }
                c0Var = c0VarF0;
            }
        }
        return c0Var;
    }

    public void X0(s sVar) {
        List<s> list = this.j0;
        if (list != null) {
            list.remove(sVar);
        }
    }

    public c0 Y(long j2) {
        f fVar = this.l;
        c0 c0Var = null;
        if (fVar != null && fVar.g()) {
            int iJ = this.f.j();
            for (int i2 = 0; i2 < iJ; i2++) {
                c0 c0VarF0 = f0(this.f.i(i2));
                if (c0VarF0 != null && !c0VarF0.v() && c0VarF0.k() == j2) {
                    if (!this.f.n(c0VarF0.a)) {
                        return c0VarF0;
                    }
                    c0Var = c0VarF0;
                }
            }
        }
        return c0Var;
    }

    void Y0() {
        c0 c0Var;
        int iG = this.f.g();
        for (int i2 = 0; i2 < iG; i2++) {
            View viewF = this.f.f(i2);
            c0 c0VarE0 = e0(viewF);
            if (c0VarE0 != null && (c0Var = c0VarE0.i) != null) {
                View view = c0Var.a;
                int left = viewF.getLeft();
                int top = viewF.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    c0 Z(int i2, boolean z2) {
        int iJ = this.f.j();
        c0 c0Var = null;
        for (int i3 = 0; i3 < iJ; i3++) {
            c0 c0VarF0 = f0(this.f.i(i3));
            if (c0VarF0 != null && !c0VarF0.v()) {
                if (z2) {
                    if (c0VarF0.f875c != i2) {
                        continue;
                    } else {
                        if (!this.f.n(c0VarF0.a)) {
                            return c0VarF0;
                        }
                        c0Var = c0VarF0;
                    }
                } else if (c0VarF0.m() != i2) {
                    continue;
                }
            }
        }
        return c0Var;
    }

    void a(int i2, int i3) {
        if (i2 < 0) {
            M();
            if (this.I.isFinished()) {
                this.I.onAbsorb(-i2);
            }
        } else if (i2 > 0) {
            N();
            if (this.K.isFinished()) {
                this.K.onAbsorb(i2);
            }
        }
        if (i3 < 0) {
            O();
            if (this.J.isFinished()) {
                this.J.onAbsorb(-i3);
            }
        } else if (i3 > 0) {
            L();
            if (this.L.isFinished()) {
                this.L.onAbsorb(i3);
            }
        }
        if (i2 == 0 && i3 == 0) {
            return;
        }
        androidx.core.view.v.f0(this);
    }

    public boolean a0(int i2, int i3) {
        n nVar = this.m;
        if (nVar == null || this.x) {
            return false;
        }
        boolean zK = nVar.k();
        boolean zL = this.m.l();
        if (!zK || Math.abs(i2) < this.W) {
            i2 = 0;
        }
        if (!zL || Math.abs(i3) < this.W) {
            i3 = 0;
        }
        if (i2 == 0 && i3 == 0) {
            return false;
        }
        float f2 = i2;
        float f3 = i3;
        if (!dispatchNestedPreFling(f2, f3)) {
            boolean z2 = zK || zL;
            dispatchNestedFling(f2, f3, z2);
            q qVar = this.V;
            if (qVar != null && qVar.a(i2, i3)) {
                return true;
            }
            if (z2) {
                int i4 = zK ? 1 : 0;
                if (zL) {
                    i4 |= 2;
                }
                q1(i4, 1);
                int i5 = this.a0;
                int iMax = Math.max(-i5, Math.min(i2, i5));
                int i6 = this.a0;
                this.e0.c(iMax, Math.max(-i6, Math.min(i3, i6)));
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        n nVar = this.m;
        if (nVar == null || !nVar.F0(this, arrayList, i2, i3)) {
            super.addFocusables(arrayList, i2, i3);
        }
    }

    int b0(c0 c0Var) {
        if (c0Var.p(524) || !c0Var.s()) {
            return -1;
        }
        return this.e.e(c0Var.f875c);
    }

    long c0(c0 c0Var) {
        return this.l.g() ? c0Var.k() : c0Var.f875c;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof o) && this.m.m((o) layoutParams);
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        n nVar = this.m;
        if (nVar != null && nVar.k()) {
            return this.m.q(this.h0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        n nVar = this.m;
        if (nVar != null && nVar.k()) {
            return this.m.r(this.h0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        n nVar = this.m;
        if (nVar != null && nVar.k()) {
            return this.m.s(this.h0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        n nVar = this.m;
        if (nVar != null && nVar.l()) {
            return this.m.t(this.h0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        n nVar = this.m;
        if (nVar != null && nVar.l()) {
            return this.m.u(this.h0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        n nVar = this.m;
        if (nVar != null && nVar.l()) {
            return this.m.v(this.h0);
        }
        return 0;
    }

    public int d0(View view) {
        c0 c0VarF0 = f0(view);
        if (c0VarF0 != null) {
            return c0VarF0.m();
        }
        return -1;
    }

    void d1() {
        int iJ = this.f.j();
        for (int i2 = 0; i2 < iJ; i2++) {
            c0 c0VarF0 = f0(this.f.i(i2));
            if (!c0VarF0.J()) {
                c0VarF0.E();
            }
        }
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f2, float f3, boolean z2) {
        return getScrollingChildHelper().a(f2, f3, z2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f2, float f3) {
        return getScrollingChildHelper().b(f2, f3);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i2, int i3, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().c(i2, i3, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr) {
        return getScrollingChildHelper().f(i2, i3, i4, i5, iArr);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z2;
        super.draw(canvas);
        int size = this.o.size();
        boolean z3 = false;
        for (int i2 = 0; i2 < size; i2++) {
            this.o.get(i2).i(canvas, this, this.h0);
        }
        EdgeEffect edgeEffect = this.I;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z2 = false;
        } else {
            int iSave = canvas.save();
            int paddingBottom = this.h ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, CropImageView.DEFAULT_ASPECT_RATIO);
            EdgeEffect edgeEffect2 = this.I;
            z2 = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(iSave);
        }
        EdgeEffect edgeEffect3 = this.J;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int iSave2 = canvas.save();
            if (this.h) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.J;
            z2 |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(iSave2);
        }
        EdgeEffect edgeEffect5 = this.K;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int iSave3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.h ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(-paddingTop, -width);
            EdgeEffect edgeEffect6 = this.K;
            z2 |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(iSave3);
        }
        EdgeEffect edgeEffect7 = this.L;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int iSave4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.h) {
                canvas.translate((-getWidth()) + getPaddingRight(), (-getHeight()) + getPaddingBottom());
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.L;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z3 = true;
            }
            z2 |= z3;
            canvas.restoreToCount(iSave4);
        }
        if ((z2 || this.M == null || this.o.size() <= 0 || !this.M.p()) ? z2 : true) {
            androidx.core.view.v.f0(this);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j2) {
        return super.drawChild(canvas, view, j2);
    }

    public c0 e0(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return f0(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    boolean e1(int i2, int i3, MotionEvent motionEvent) {
        int i4;
        int i5;
        int i6;
        int i7;
        u();
        if (this.l != null) {
            int[] iArr = this.u0;
            iArr[0] = 0;
            iArr[1] = 0;
            f1(i2, i3, iArr);
            int[] iArr2 = this.u0;
            int i8 = iArr2[0];
            int i9 = iArr2[1];
            i4 = i9;
            i5 = i8;
            i6 = i2 - i8;
            i7 = i3 - i9;
        } else {
            i4 = 0;
            i5 = 0;
            i6 = 0;
            i7 = 0;
        }
        if (!this.o.isEmpty()) {
            invalidate();
        }
        int[] iArr3 = this.u0;
        iArr3[0] = 0;
        iArr3[1] = 0;
        G(i5, i4, i6, i7, this.s0, 0, iArr3);
        int[] iArr4 = this.u0;
        int i10 = i6 - iArr4[0];
        int i11 = i7 - iArr4[1];
        boolean z2 = (iArr4[0] == 0 && iArr4[1] == 0) ? false : true;
        int i12 = this.S;
        int[] iArr5 = this.s0;
        this.S = i12 - iArr5[0];
        this.T -= iArr5[1];
        int[] iArr6 = this.t0;
        iArr6[0] = iArr6[0] + iArr5[0];
        iArr6[1] = iArr6[1] + iArr5[1];
        if (getOverScrollMode() != 2) {
            if (motionEvent != null && !androidx.core.view.j.a(motionEvent, 8194)) {
                P0(motionEvent.getX(), i10, motionEvent.getY(), i11);
            }
            t(i2, i3);
        }
        if (i5 != 0 || i4 != 0) {
            I(i5, i4);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (!z2 && i5 == 0 && i4 == 0) ? false : true;
    }

    void f1(int i2, int i3, int[] iArr) {
        p1();
        F0();
        c.g.g.c.a("RV Scroll");
        Q(this.h0);
        int iW1 = i2 != 0 ? this.m.w1(i2, this.f868c, this.h0) : 0;
        int iY1 = i3 != 0 ? this.m.y1(i3, this.f868c, this.h0) : 0;
        c.g.g.c.b();
        Y0();
        G0();
        r1(false);
        if (iArr != null) {
            iArr[0] = iW1;
            iArr[1] = iY1;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public View focusSearch(View view, int i2) {
        View viewJ0;
        boolean z2;
        View viewQ0 = this.m.Q0(view, i2);
        if (viewQ0 != null) {
            return viewQ0;
        }
        boolean z3 = (this.l == null || this.m == null || t0() || this.x) ? false : true;
        FocusFinder focusFinder = FocusFinder.getInstance();
        if (z3 && (i2 == 2 || i2 == 1)) {
            if (this.m.l()) {
                int i3 = i2 == 2 ? 130 : 33;
                z2 = focusFinder.findNextFocus(this, view, i3) == null;
                if (C0) {
                    i2 = i3;
                }
            } else {
                z2 = false;
            }
            if (!z2 && this.m.k()) {
                int i4 = (this.m.Z() == 1) ^ (i2 == 2) ? 66 : 17;
                boolean z4 = focusFinder.findNextFocus(this, view, i4) == null;
                if (C0) {
                    i2 = i4;
                }
                z2 = z4;
            }
            if (z2) {
                u();
                if (R(view) == null) {
                    return null;
                }
                p1();
                this.m.J0(view, i2, this.f868c, this.h0);
                r1(false);
            }
            viewJ0 = focusFinder.findNextFocus(this, view, i2);
        } else {
            View viewFindNextFocus = focusFinder.findNextFocus(this, view, i2);
            if (viewFindNextFocus == null && z3) {
                u();
                if (R(view) == null) {
                    return null;
                }
                p1();
                viewJ0 = this.m.J0(view, i2, this.f868c, this.h0);
                r1(false);
            } else {
                viewJ0 = viewFindNextFocus;
            }
        }
        if (viewJ0 == null || viewJ0.hasFocusable()) {
            return u0(view, viewJ0, i2) ? viewJ0 : super.focusSearch(view, i2);
        }
        if (getFocusedChild() == null) {
            return super.focusSearch(view, i2);
        }
        Z0(viewJ0, null);
        return view;
    }

    public void g1(int i2) {
        if (this.x) {
            return;
        }
        t1();
        n nVar = this.m;
        if (nVar == null) {
            return;
        }
        nVar.x1(i2);
        awakenScrollBars();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        n nVar = this.m;
        if (nVar != null) {
            return nVar.D();
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + P());
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        n nVar = this.m;
        if (nVar != null) {
            return nVar.E(getContext(), attributeSet);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + P());
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public f getAdapter() {
        return this.l;
    }

    @Override // android.view.View
    public int getBaseline() {
        n nVar = this.m;
        return nVar != null ? nVar.G() : super.getBaseline();
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i2, int i3) {
        i iVar = this.p0;
        return iVar == null ? super.getChildDrawingOrder(i2, i3) : iVar.a(i2, i3);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.h;
    }

    public androidx.recyclerview.widget.k getCompatAccessibilityDelegate() {
        return this.o0;
    }

    public j getEdgeEffectFactory() {
        return this.H;
    }

    public k getItemAnimator() {
        return this.M;
    }

    public int getItemDecorationCount() {
        return this.o.size();
    }

    public n getLayoutManager() {
        return this.m;
    }

    public int getMaxFlingVelocity() {
        return this.a0;
    }

    public int getMinFlingVelocity() {
        return this.W;
    }

    long getNanoTime() {
        if (B0) {
            return System.nanoTime();
        }
        return 0L;
    }

    public q getOnFlingListener() {
        return this.V;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.d0;
    }

    public t getRecycledViewPool() {
        return this.f868c.i();
    }

    public int getScrollState() {
        return this.N;
    }

    public void h(m mVar) {
        i(mVar, -1);
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().j();
    }

    public void i(m mVar, int i2) {
        n nVar = this.m;
        if (nVar != null) {
            nVar.g("Cannot add item decoration during a scroll  or layout");
        }
        if (this.o.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i2 < 0) {
            this.o.add(mVar);
        } else {
            this.o.add(i2, mVar);
        }
        w0();
        requestLayout();
    }

    boolean i1(c0 c0Var, int i2) {
        if (!t0()) {
            androidx.core.view.v.x0(c0Var.a, i2);
            return true;
        }
        c0Var.q = i2;
        this.v0.add(c0Var);
        return false;
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.r;
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.x;
    }

    @Override // android.view.View, androidx.core.view.k
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().l();
    }

    public void j(r rVar) {
        this.p.add(rVar);
    }

    Rect j0(View view) {
        o oVar = (o) view.getLayoutParams();
        if (!oVar.f889c) {
            return oVar.f888b;
        }
        if (this.h0.e() && (oVar.b() || oVar.d())) {
            return oVar.f888b;
        }
        Rect rect = oVar.f888b;
        rect.set(0, 0, 0, 0);
        int size = this.o.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.i.set(0, 0, 0, 0);
            this.o.get(i2).e(this.i, view, this, this.h0);
            int i3 = rect.left;
            Rect rect2 = this.i;
            rect.left = i3 + rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        oVar.f889c = false;
        return rect;
    }

    boolean j1(AccessibilityEvent accessibilityEvent) {
        if (!t0()) {
            return false;
        }
        int iA = accessibilityEvent != null ? androidx.core.view.e0.b.a(accessibilityEvent) : 0;
        this.z |= iA != 0 ? iA : 0;
        return true;
    }

    public void k(s sVar) {
        if (this.j0 == null) {
            this.j0 = new ArrayList();
        }
        this.j0.add(sVar);
    }

    public void k1(int i2, int i3) {
        l1(i2, i3, null);
    }

    void l(c0 c0Var, k.c cVar, k.c cVar2) {
        c0Var.G(false);
        if (this.M.a(c0Var, cVar, cVar2)) {
            L0();
        }
    }

    public boolean l0() {
        return !this.u || this.D || this.e.p();
    }

    public void l1(int i2, int i3, Interpolator interpolator) {
        m1(i2, i3, interpolator, Integer.MIN_VALUE);
    }

    public void m1(int i2, int i3, Interpolator interpolator, int i4) {
        n1(i2, i3, interpolator, i4, false);
    }

    void n(c0 c0Var, k.c cVar, k.c cVar2) {
        g(c0Var);
        c0Var.G(false);
        if (this.M.c(c0Var, cVar, cVar2)) {
            L0();
        }
    }

    void n0() {
        this.e = new androidx.recyclerview.widget.a(new e());
    }

    void n1(int i2, int i3, Interpolator interpolator, int i4, boolean z2) {
        n nVar = this.m;
        if (nVar == null || this.x) {
            return;
        }
        if (!nVar.k()) {
            i2 = 0;
        }
        if (!this.m.l()) {
            i3 = 0;
        }
        if (i2 == 0 && i3 == 0) {
            return;
        }
        if (!(i4 == Integer.MIN_VALUE || i4 > 0)) {
            scrollBy(i2, i3);
            return;
        }
        if (z2) {
            int i5 = i2 != 0 ? 1 : 0;
            if (i3 != 0) {
                i5 |= 2;
            }
            q1(i5, 1);
        }
        this.e0.f(i2, i3, i4, interpolator);
    }

    void o(String str) {
        if (t0()) {
            if (str != null) {
                throw new IllegalStateException(str);
            }
            throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling" + P());
        }
        if (this.G > 0) {
            new IllegalStateException(BuildConfig.FLAVOR + P());
        }
    }

    public void o1(int i2) {
        n nVar;
        if (this.x || (nVar = this.m) == null) {
            return;
        }
        nVar.I1(this, this.h0, i2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.F = 0;
        this.r = true;
        this.u = this.u && !isLayoutRequested();
        n nVar = this.m;
        if (nVar != null) {
            nVar.z(this);
        }
        this.n0 = false;
        if (B0) {
            androidx.recyclerview.widget.e eVar = androidx.recyclerview.widget.e.f.get();
            this.f0 = eVar;
            if (eVar == null) {
                this.f0 = new androidx.recyclerview.widget.e();
                Display displayV = androidx.core.view.v.v(this);
                float f2 = 60.0f;
                if (!isInEditMode() && displayV != null) {
                    float refreshRate = displayV.getRefreshRate();
                    if (refreshRate >= 30.0f) {
                        f2 = refreshRate;
                    }
                }
                androidx.recyclerview.widget.e eVar2 = this.f0;
                eVar2.f965d = (long) (1.0E9f / f2);
                androidx.recyclerview.widget.e.f.set(eVar2);
            }
            this.f0.a(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        androidx.recyclerview.widget.e eVar;
        super.onDetachedFromWindow();
        k kVar = this.M;
        if (kVar != null) {
            kVar.k();
        }
        t1();
        this.r = false;
        n nVar = this.m;
        if (nVar != null) {
            nVar.A(this, this.f868c);
        }
        this.v0.clear();
        removeCallbacks(this.w0);
        this.g.j();
        if (!B0 || (eVar = this.f0) == null) {
            return;
        }
        eVar.j(this);
        this.f0 = null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.o.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.o.get(i2).g(canvas, this, this.h0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006a  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float f2;
        float axisValue;
        if (this.m != null && !this.x && motionEvent.getAction() == 8) {
            if ((motionEvent.getSource() & 2) != 0) {
                f2 = this.m.l() ? -motionEvent.getAxisValue(9) : CropImageView.DEFAULT_ASPECT_RATIO;
                axisValue = this.m.k() ? motionEvent.getAxisValue(10) : CropImageView.DEFAULT_ASPECT_RATIO;
                if (f2 != CropImageView.DEFAULT_ASPECT_RATIO || axisValue != CropImageView.DEFAULT_ASPECT_RATIO) {
                    e1((int) (axisValue * this.b0), (int) (f2 * this.c0), motionEvent);
                }
            } else if ((motionEvent.getSource() & 4194304) != 0) {
                float axisValue2 = motionEvent.getAxisValue(26);
                if (this.m.l()) {
                    f2 = -axisValue2;
                    if (f2 != CropImageView.DEFAULT_ASPECT_RATIO) {
                        e1((int) (axisValue * this.b0), (int) (f2 * this.c0), motionEvent);
                    }
                } else {
                    if (this.m.k()) {
                        axisValue = axisValue2;
                        f2 = CropImageView.DEFAULT_ASPECT_RATIO;
                        if (f2 != CropImageView.DEFAULT_ASPECT_RATIO) {
                        }
                    }
                    f2 = CropImageView.DEFAULT_ASPECT_RATIO;
                    if (f2 != CropImageView.DEFAULT_ASPECT_RATIO) {
                    }
                }
            } else {
                f2 = CropImageView.DEFAULT_ASPECT_RATIO;
                if (f2 != CropImageView.DEFAULT_ASPECT_RATIO) {
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        if (this.x) {
            return false;
        }
        this.q = null;
        if (T(motionEvent)) {
            q();
            return true;
        }
        n nVar = this.m;
        if (nVar == null) {
            return false;
        }
        boolean zK = nVar.k();
        boolean zL = this.m.l();
        if (this.P == null) {
            this.P = VelocityTracker.obtain();
        }
        this.P.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.y) {
                this.y = false;
            }
            this.O = motionEvent.getPointerId(0);
            int x2 = (int) (motionEvent.getX() + 0.5f);
            this.S = x2;
            this.Q = x2;
            int y2 = (int) (motionEvent.getY() + 0.5f);
            this.T = y2;
            this.R = y2;
            if (this.N == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
                s1(1);
            }
            int[] iArr = this.t0;
            iArr[1] = 0;
            iArr[0] = 0;
            int i2 = zK ? 1 : 0;
            if (zL) {
                i2 |= 2;
            }
            q1(i2, 0);
        } else if (actionMasked == 1) {
            this.P.clear();
            s1(0);
        } else if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.O);
            if (iFindPointerIndex < 0) {
                String str = "Error processing scroll; pointer index for id " + this.O + " not found. Did any MotionEvents get skipped?";
                return false;
            }
            int x3 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
            int y3 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
            if (this.N != 1) {
                int i3 = x3 - this.Q;
                int i4 = y3 - this.R;
                if (!zK || Math.abs(i3) <= this.U) {
                    z2 = false;
                } else {
                    this.S = x3;
                    z2 = true;
                }
                if (zL && Math.abs(i4) > this.U) {
                    this.T = y3;
                    z2 = true;
                }
                if (z2) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            q();
        } else if (actionMasked == 5) {
            this.O = motionEvent.getPointerId(actionIndex);
            int x4 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.S = x4;
            this.Q = x4;
            int y4 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.T = y4;
            this.R = y4;
        } else if (actionMasked == 6) {
            I0(motionEvent);
        }
        return this.N == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        c.g.g.c.a("RV OnLayout");
        B();
        c.g.g.c.b();
        this.u = true;
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i3) {
        n nVar = this.m;
        if (nVar == null) {
            w(i2, i3);
            return;
        }
        boolean z2 = false;
        if (nVar.s0()) {
            int mode = View.MeasureSpec.getMode(i2);
            int mode2 = View.MeasureSpec.getMode(i3);
            this.m.Z0(this.f868c, this.h0, i2, i3);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z2 = true;
            }
            if (z2 || this.l == null) {
                return;
            }
            if (this.h0.e == 1) {
                C();
            }
            this.m.A1(i2, i3);
            this.h0.j = true;
            D();
            this.m.D1(i2, i3);
            if (this.m.G1()) {
                this.m.A1(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                this.h0.j = true;
                D();
                this.m.D1(i2, i3);
                return;
            }
            return;
        }
        if (this.s) {
            this.m.Z0(this.f868c, this.h0, i2, i3);
            return;
        }
        if (this.A) {
            p1();
            F0();
            N0();
            G0();
            z zVar = this.h0;
            if (zVar.l) {
                zVar.h = true;
            } else {
                this.e.j();
                this.h0.h = false;
            }
            this.A = false;
            r1(false);
        } else if (this.h0.l) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        f fVar = this.l;
        if (fVar != null) {
            this.h0.f = fVar.c();
        } else {
            this.h0.f = 0;
        }
        p1();
        this.m.Z0(this.f868c, this.h0, i2, i3);
        r1(false);
        this.h0.h = false;
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i2, Rect rect) {
        if (t0()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i2, rect);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof x)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        x xVar = (x) parcelable;
        this.f869d = xVar;
        super.onRestoreInstanceState(xVar.j());
        n nVar = this.m;
        if (nVar == null || (parcelable2 = this.f869d.f898d) == null) {
            return;
        }
        nVar.c1(parcelable2);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        x xVar = new x(super.onSaveInstanceState());
        x xVar2 = this.f869d;
        if (xVar2 != null) {
            xVar.k(xVar2);
        } else {
            n nVar = this.m;
            if (nVar != null) {
                xVar.f898d = nVar.d1();
            } else {
                xVar.f898d = null;
            }
        }
        return xVar;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 == i4 && i3 == i5) {
            return;
        }
        r0();
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00d9 A[PHI: r0
      0x00d9: PHI (r0v42 int) = (r0v31 int), (r0v46 int) binds: [B:41:0x00c2, B:45:0x00d5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00f2  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        boolean z3 = false;
        if (this.x || this.y) {
            return false;
        }
        if (K(motionEvent)) {
            q();
            return true;
        }
        n nVar = this.m;
        if (nVar == null) {
            return false;
        }
        boolean zK = nVar.k();
        boolean zL = this.m.l();
        if (this.P == null) {
            this.P = VelocityTracker.obtain();
        }
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            int[] iArr = this.t0;
            iArr[1] = 0;
            iArr[0] = 0;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        int[] iArr2 = this.t0;
        motionEventObtain.offsetLocation(iArr2[0], iArr2[1]);
        if (actionMasked == 0) {
            this.O = motionEvent.getPointerId(0);
            int x2 = (int) (motionEvent.getX() + 0.5f);
            this.S = x2;
            this.Q = x2;
            int y2 = (int) (motionEvent.getY() + 0.5f);
            this.T = y2;
            this.R = y2;
            int i2 = zK ? 1 : 0;
            if (zL) {
                i2 |= 2;
            }
            q1(i2, 0);
        } else if (actionMasked == 1) {
            this.P.addMovement(motionEventObtain);
            this.P.computeCurrentVelocity(1000, this.a0);
            float f2 = zK ? -this.P.getXVelocity(this.O) : CropImageView.DEFAULT_ASPECT_RATIO;
            float f3 = zL ? -this.P.getYVelocity(this.O) : CropImageView.DEFAULT_ASPECT_RATIO;
            if ((f2 == CropImageView.DEFAULT_ASPECT_RATIO && f3 == CropImageView.DEFAULT_ASPECT_RATIO) || !a0((int) f2, (int) f3)) {
                setScrollState(0);
            }
            b1();
            z3 = true;
        } else if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.O);
            if (iFindPointerIndex < 0) {
                String str = "Error processing scroll; pointer index for id " + this.O + " not found. Did any MotionEvents get skipped?";
                return false;
            }
            int x3 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
            int y3 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
            int iMax = this.S - x3;
            int iMax2 = this.T - y3;
            if (this.N != 1) {
                if (zK) {
                    iMax = iMax > 0 ? Math.max(0, iMax - this.U) : Math.min(0, iMax + this.U);
                    if (iMax != 0) {
                        z2 = true;
                    }
                    if (zL) {
                    }
                    if (z2) {
                    }
                } else {
                    z2 = false;
                    if (zL) {
                        iMax2 = iMax2 > 0 ? Math.max(0, iMax2 - this.U) : Math.min(0, iMax2 + this.U);
                        if (iMax2 != 0) {
                            z2 = true;
                        }
                    }
                    if (z2) {
                        setScrollState(1);
                    }
                }
            }
            int i3 = iMax;
            int i4 = iMax2;
            if (this.N == 1) {
                int[] iArr3 = this.u0;
                iArr3[0] = 0;
                iArr3[1] = 0;
                if (F(zK ? i3 : 0, zL ? i4 : 0, this.u0, this.s0, 0)) {
                    int[] iArr4 = this.u0;
                    i3 -= iArr4[0];
                    i4 -= iArr4[1];
                    int[] iArr5 = this.t0;
                    int i5 = iArr5[0];
                    int[] iArr6 = this.s0;
                    iArr5[0] = i5 + iArr6[0];
                    iArr5[1] = iArr5[1] + iArr6[1];
                    getParent().requestDisallowInterceptTouchEvent(true);
                }
                int i6 = i4;
                int[] iArr7 = this.s0;
                this.S = x3 - iArr7[0];
                this.T = y3 - iArr7[1];
                if (e1(zK ? i3 : 0, zL ? i6 : 0, motionEvent)) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                }
                if (this.f0 != null && (i3 != 0 || i6 != 0)) {
                    this.f0.f(this, i3, i6);
                }
            }
        } else if (actionMasked == 3) {
            q();
        } else if (actionMasked == 5) {
            this.O = motionEvent.getPointerId(actionIndex);
            int x4 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.S = x4;
            this.Q = x4;
            int y4 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.T = y4;
            this.R = y4;
        } else if (actionMasked == 6) {
            I0(motionEvent);
        }
        if (!z3) {
            this.P.addMovement(motionEventObtain);
        }
        motionEventObtain.recycle();
        return true;
    }

    boolean p(c0 c0Var) {
        k kVar = this.M;
        return kVar == null || kVar.g(c0Var, c0Var.o());
    }

    void p1() {
        int i2 = this.v + 1;
        this.v = i2;
        if (i2 != 1 || this.x) {
            return;
        }
        this.w = false;
    }

    void q0(StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2) {
        if (stateListDrawable != null && drawable != null && stateListDrawable2 != null && drawable2 != null) {
            Resources resources = getContext().getResources();
            new androidx.recyclerview.widget.d(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(c.n.b.fastscroll_default_thickness), resources.getDimensionPixelSize(c.n.b.fastscroll_minimum_range), resources.getDimensionPixelOffset(c.n.b.fastscroll_margin));
        } else {
            throw new IllegalArgumentException("Trying to set fast scroller without both required drawables." + P());
        }
    }

    public boolean q1(int i2, int i3) {
        return getScrollingChildHelper().p(i2, i3);
    }

    void r0() {
        this.L = null;
        this.J = null;
        this.K = null;
        this.I = null;
    }

    void r1(boolean z2) {
        if (this.v < 1) {
            this.v = 1;
        }
        if (!z2 && !this.x) {
            this.w = false;
        }
        if (this.v == 1) {
            if (z2 && this.w && !this.x && this.m != null && this.l != null) {
                B();
            }
            if (!this.x) {
                this.w = false;
            }
        }
        this.v--;
    }

    @Override // android.view.ViewGroup
    protected void removeDetachedView(View view, boolean z2) {
        c0 c0VarF0 = f0(view);
        if (c0VarF0 != null) {
            if (c0VarF0.x()) {
                c0VarF0.f();
            } else if (!c0VarF0.J()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + c0VarF0 + P());
            }
        }
        view.clearAnimation();
        z(view);
        super.removeDetachedView(view, z2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.m.b1(this, this.h0, view, view2) && view2 != null) {
            Z0(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z2) {
        return this.m.r1(this, view, rect, z2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z2) {
        int size = this.p.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.p.get(i2).c(z2);
        }
        super.requestDisallowInterceptTouchEvent(z2);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.v != 0 || this.x) {
            this.w = true;
        } else {
            super.requestLayout();
        }
    }

    void s() {
        int iJ = this.f.j();
        for (int i2 = 0; i2 < iJ; i2++) {
            c0 c0VarF0 = f0(this.f.i(i2));
            if (!c0VarF0.J()) {
                c0VarF0.c();
            }
        }
        this.f868c.d();
    }

    boolean s0() {
        AccessibilityManager accessibilityManager = this.B;
        return accessibilityManager != null && accessibilityManager.isEnabled();
    }

    public void s1(int i2) {
        getScrollingChildHelper().r(i2);
    }

    @Override // android.view.View
    public void scrollBy(int i2, int i3) {
        n nVar = this.m;
        if (nVar == null || this.x) {
            return;
        }
        boolean zK = nVar.k();
        boolean zL = this.m.l();
        if (zK || zL) {
            if (!zK) {
                i2 = 0;
            }
            if (!zL) {
                i3 = 0;
            }
            e1(i2, i3, null);
        }
    }

    @Override // android.view.View
    public void scrollTo(int i2, int i3) {
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (j1(accessibilityEvent)) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(androidx.recyclerview.widget.k kVar) {
        this.o0 = kVar;
        androidx.core.view.v.o0(this, kVar);
    }

    public void setAdapter(f fVar) {
        setLayoutFrozen(false);
        h1(fVar, false, true);
        O0(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(i iVar) {
        if (iVar == this.p0) {
            return;
        }
        this.p0 = iVar;
        setChildrenDrawingOrderEnabled(iVar != null);
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z2) {
        if (z2 != this.h) {
            r0();
        }
        this.h = z2;
        super.setClipToPadding(z2);
        if (this.u) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(j jVar) {
        c.g.j.h.e(jVar);
        this.H = jVar;
        r0();
    }

    public void setHasFixedSize(boolean z2) {
        this.s = z2;
    }

    public void setItemAnimator(k kVar) {
        k kVar2 = this.M;
        if (kVar2 != null) {
            kVar2.k();
            this.M.v(null);
        }
        this.M = kVar;
        if (kVar != null) {
            kVar.v(this.m0);
        }
    }

    public void setItemViewCacheSize(int i2) {
        this.f868c.G(i2);
    }

    @Deprecated
    public void setLayoutFrozen(boolean z2) {
        suppressLayout(z2);
    }

    public void setLayoutManager(n nVar) {
        if (nVar == this.m) {
            return;
        }
        t1();
        if (this.m != null) {
            k kVar = this.M;
            if (kVar != null) {
                kVar.k();
            }
            this.m.k1(this.f868c);
            this.m.l1(this.f868c);
            this.f868c.c();
            if (this.r) {
                this.m.A(this, this.f868c);
            }
            this.m.E1(null);
            this.m = null;
        } else {
            this.f868c.c();
        }
        this.f.o();
        this.m = nVar;
        if (nVar != null) {
            if (nVar.f882b != null) {
                throw new IllegalArgumentException("LayoutManager " + nVar + " is already attached to a RecyclerView:" + nVar.f882b.P());
            }
            nVar.E1(this);
            if (this.r) {
                this.m.z(this);
            }
        }
        this.f868c.K();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (Build.VERSION.SDK_INT < 18) {
            if (layoutTransition == null) {
                suppressLayout(false);
                return;
            } else if (layoutTransition.getAnimator(0) == null && layoutTransition.getAnimator(1) == null && layoutTransition.getAnimator(2) == null && layoutTransition.getAnimator(3) == null && layoutTransition.getAnimator(4) == null) {
                suppressLayout(true);
                return;
            }
        }
        if (layoutTransition != null) {
            throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
        }
        super.setLayoutTransition(null);
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z2) {
        getScrollingChildHelper().m(z2);
    }

    public void setOnFlingListener(q qVar) {
        this.V = qVar;
    }

    @Deprecated
    public void setOnScrollListener(s sVar) {
        this.i0 = sVar;
    }

    public void setPreserveFocusAfterLayout(boolean z2) {
        this.d0 = z2;
    }

    public void setRecycledViewPool(t tVar) {
        this.f868c.E(tVar);
    }

    public void setRecyclerListener(v vVar) {
        this.n = vVar;
    }

    void setScrollState(int i2) {
        if (i2 == this.N) {
            return;
        }
        this.N = i2;
        if (i2 != 2) {
            u1();
        }
        H(i2);
    }

    public void setScrollingTouchSlop(int i2) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i2 != 0) {
            if (i2 == 1) {
                this.U = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
            String str = "setScrollingTouchSlop(): bad argument constant " + i2 + "; using default value";
        }
        this.U = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(a0 a0Var) {
        this.f868c.F(a0Var);
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i2) {
        return getScrollingChildHelper().o(i2);
    }

    @Override // android.view.View, androidx.core.view.k
    public void stopNestedScroll() {
        getScrollingChildHelper().q();
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z2) {
        if (z2 != this.x) {
            o("Do not suppressLayout in layout or scroll");
            if (z2) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 0));
                this.x = true;
                this.y = true;
                t1();
                return;
            }
            this.x = false;
            if (this.w && this.m != null && this.l != null) {
                requestLayout();
            }
            this.w = false;
        }
    }

    void t(int i2, int i3) {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.I;
        if (edgeEffect == null || edgeEffect.isFinished() || i2 <= 0) {
            zIsFinished = false;
        } else {
            this.I.onRelease();
            zIsFinished = this.I.isFinished();
        }
        EdgeEffect edgeEffect2 = this.K;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i2 < 0) {
            this.K.onRelease();
            zIsFinished |= this.K.isFinished();
        }
        EdgeEffect edgeEffect3 = this.J;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i3 > 0) {
            this.J.onRelease();
            zIsFinished |= this.J.isFinished();
        }
        EdgeEffect edgeEffect4 = this.L;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i3 < 0) {
            this.L.onRelease();
            zIsFinished |= this.L.isFinished();
        }
        if (zIsFinished) {
            androidx.core.view.v.f0(this);
        }
    }

    public boolean t0() {
        return this.F > 0;
    }

    public void t1() {
        setScrollState(0);
        u1();
    }

    void u() {
        if (!this.u || this.D) {
            c.g.g.c.a("RV FullInvalidate");
            B();
            c.g.g.c.b();
            return;
        }
        if (this.e.p()) {
            if (!this.e.o(4) || this.e.o(11)) {
                if (this.e.p()) {
                    c.g.g.c.a("RV FullInvalidate");
                    B();
                    c.g.g.c.b();
                    return;
                }
                return;
            }
            c.g.g.c.a("RV PartialInvalidate");
            p1();
            F0();
            this.e.s();
            if (!this.w) {
                if (m0()) {
                    B();
                } else {
                    this.e.i();
                }
            }
            r1(true);
            G0();
            c.g.g.c.b();
        }
    }

    void v0(int i2) {
        if (this.m == null) {
            return;
        }
        setScrollState(2);
        this.m.x1(i2);
        awakenScrollBars();
    }

    void v1(int i2, int i3, Object obj) {
        int i4;
        int iJ = this.f.j();
        int i5 = i2 + i3;
        for (int i6 = 0; i6 < iJ; i6++) {
            View viewI = this.f.i(i6);
            c0 c0VarF0 = f0(viewI);
            if (c0VarF0 != null && !c0VarF0.J() && (i4 = c0VarF0.f875c) >= i2 && i4 < i5) {
                c0VarF0.b(2);
                c0VarF0.a(obj);
                ((o) viewI.getLayoutParams()).f889c = true;
            }
        }
        this.f868c.M(i2, i3);
    }

    void w(int i2, int i3) {
        setMeasuredDimension(n.n(i2, getPaddingLeft() + getPaddingRight(), androidx.core.view.v.E(this)), n.n(i3, getPaddingTop() + getPaddingBottom(), androidx.core.view.v.D(this)));
    }

    void w0() {
        int iJ = this.f.j();
        for (int i2 = 0; i2 < iJ; i2++) {
            ((o) this.f.i(i2).getLayoutParams()).f889c = true;
        }
        this.f868c.s();
    }

    void x0() {
        int iJ = this.f.j();
        for (int i2 = 0; i2 < iJ; i2++) {
            c0 c0VarF0 = f0(this.f.i(i2));
            if (c0VarF0 != null && !c0VarF0.J()) {
                c0VarF0.b(6);
            }
        }
        w0();
        this.f868c.t();
    }

    void y(View view) {
        c0 c0VarF0 = f0(view);
        D0(view);
        f fVar = this.l;
        if (fVar != null && c0VarF0 != null) {
            fVar.o(c0VarF0);
        }
        List<p> list = this.C;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.C.get(size).a(view);
            }
        }
    }

    public void y0(int i2) {
        int iG = this.f.g();
        for (int i3 = 0; i3 < iG; i3++) {
            this.f.f(i3).offsetLeftAndRight(i2);
        }
    }

    void z(View view) {
        c0 c0VarF0 = f0(view);
        E0(view);
        f fVar = this.l;
        if (fVar != null && c0VarF0 != null) {
            fVar.p(c0VarF0);
        }
        List<p> list = this.C;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.C.get(size).b(view);
            }
        }
    }

    public void z0(int i2) {
        int iG = this.f.g();
        for (int i3 = 0; i3 < iG; i3++) {
            this.f.f(i3).offsetTopAndBottom(i2);
        }
    }

    public RecyclerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f867b = new w();
        this.f868c = new u();
        this.g = new androidx.recyclerview.widget.p();
        this.i = new Rect();
        this.j = new Rect();
        this.k = new RectF();
        this.o = new ArrayList<>();
        this.p = new ArrayList<>();
        this.v = 0;
        this.D = false;
        this.E = false;
        this.F = 0;
        this.G = 0;
        this.H = new j();
        this.M = new androidx.recyclerview.widget.c();
        this.N = 0;
        this.O = -1;
        this.b0 = Float.MIN_VALUE;
        this.c0 = Float.MIN_VALUE;
        boolean z2 = true;
        this.d0 = true;
        this.e0 = new b0();
        this.g0 = B0 ? new e.b() : null;
        this.h0 = new z();
        this.k0 = false;
        this.l0 = false;
        this.m0 = new l();
        this.n0 = false;
        this.q0 = new int[2];
        this.s0 = new int[2];
        this.t0 = new int[2];
        this.u0 = new int[2];
        this.v0 = new ArrayList();
        this.w0 = new a();
        this.x0 = new c();
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.U = viewConfiguration.getScaledTouchSlop();
        this.b0 = androidx.core.view.w.b(viewConfiguration, context);
        this.c0 = androidx.core.view.w.d(viewConfiguration, context);
        this.W = viewConfiguration.getScaledMinimumFlingVelocity();
        this.a0 = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.M.v(this.m0);
        n0();
        p0();
        o0();
        if (androidx.core.view.v.A(this) == 0) {
            androidx.core.view.v.x0(this, 1);
        }
        this.B = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new androidx.recyclerview.widget.k(this));
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.n.c.RecyclerView, i2, 0);
        if (Build.VERSION.SDK_INT >= 29) {
            saveAttributeDataForStyleable(context, c.n.c.RecyclerView, attributeSet, typedArrayObtainStyledAttributes, i2, 0);
        }
        String string = typedArrayObtainStyledAttributes.getString(c.n.c.RecyclerView_layoutManager);
        if (typedArrayObtainStyledAttributes.getInt(c.n.c.RecyclerView_android_descendantFocusability, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.h = typedArrayObtainStyledAttributes.getBoolean(c.n.c.RecyclerView_android_clipToPadding, true);
        boolean z3 = typedArrayObtainStyledAttributes.getBoolean(c.n.c.RecyclerView_fastScrollEnabled, false);
        this.t = z3;
        if (z3) {
            q0((StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(c.n.c.RecyclerView_fastScrollVerticalThumbDrawable), typedArrayObtainStyledAttributes.getDrawable(c.n.c.RecyclerView_fastScrollVerticalTrackDrawable), (StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(c.n.c.RecyclerView_fastScrollHorizontalThumbDrawable), typedArrayObtainStyledAttributes.getDrawable(c.n.c.RecyclerView_fastScrollHorizontalTrackDrawable));
        }
        typedArrayObtainStyledAttributes.recycle();
        v(context, string, attributeSet, i2, 0);
        if (Build.VERSION.SDK_INT >= 21) {
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, y0, i2, 0);
            if (Build.VERSION.SDK_INT >= 29) {
                saveAttributeDataForStyleable(context, y0, attributeSet, typedArrayObtainStyledAttributes2, i2, 0);
            }
            z2 = typedArrayObtainStyledAttributes2.getBoolean(0, true);
            typedArrayObtainStyledAttributes2.recycle();
        }
        setNestedScrollingEnabled(z2);
    }

    public static class o extends ViewGroup.MarginLayoutParams {
        c0 a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Rect f888b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f889c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f890d;

        public o(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f888b = new Rect();
            this.f889c = true;
            this.f890d = false;
        }

        public int a() {
            return this.a.m();
        }

        public boolean b() {
            return this.a.y();
        }

        public boolean c() {
            return this.a.v();
        }

        public boolean d() {
            return this.a.t();
        }

        public o(int i, int i2) {
            super(i, i2);
            this.f888b = new Rect();
            this.f889c = true;
            this.f890d = false;
        }

        public o(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f888b = new Rect();
            this.f889c = true;
            this.f890d = false;
        }

        public o(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f888b = new Rect();
            this.f889c = true;
            this.f890d = false;
        }

        public o(o oVar) {
            super((ViewGroup.LayoutParams) oVar);
            this.f888b = new Rect();
            this.f889c = true;
            this.f890d = false;
        }
    }

    public static class x extends c.i.a.a {
        public static final Parcelable.Creator<x> CREATOR = new a();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Parcelable f898d;

        static class a implements Parcelable.ClassLoaderCreator<x> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public x createFromParcel(Parcel parcel) {
                return new x(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public x createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new x(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public x[] newArray(int i) {
                return new x[i];
            }
        }

        x(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f898d = parcel.readParcelable(classLoader == null ? n.class.getClassLoader() : classLoader);
        }

        void k(x xVar) {
            this.f898d = xVar.f898d;
        }

        @Override // c.i.a.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeParcelable(this.f898d, 0);
        }

        x(Parcelable parcelable) {
            super(parcelable);
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        n nVar = this.m;
        if (nVar != null) {
            return nVar.F(layoutParams);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + P());
    }
}
