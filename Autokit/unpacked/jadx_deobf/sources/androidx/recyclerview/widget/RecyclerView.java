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
import androidx.core.view.C0258a;
import androidx.core.view.C0280j;
import androidx.core.view.C0282l;
import androidx.core.view.C0292v;
import androidx.core.view.C0293w;
import androidx.core.view.InterfaceC0281k;
import androidx.core.view.p004e0.C0268b;
import androidx.core.view.p004e0.C0269c;
import androidx.core.widget.C0303d;
import androidx.recyclerview.widget.C0461a;
import androidx.recyclerview.widget.C0462b;
import androidx.recyclerview.widget.C0471k;
import androidx.recyclerview.widget.C0475o;
import androidx.recyclerview.widget.C0476p;
import androidx.recyclerview.widget.RunnableC0465e;
import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p016c.p041g.p046g.C0605c;
import p016c.p041g.p049j.C0626h;
import p016c.p052i.p053a.AbstractC0630a;
import p016c.p063n.C0647a;
import p016c.p063n.C0648b;
import p016c.p063n.C0649c;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class RecyclerView extends ViewGroup implements InterfaceC0281k {

    /* JADX INFO: renamed from: A0 */
    static final boolean f2631A0;

    /* JADX INFO: renamed from: B0 */
    static final boolean f2632B0;

    /* JADX INFO: renamed from: C0 */
    private static final boolean f2633C0;

    /* JADX INFO: renamed from: D0 */
    private static final boolean f2634D0;

    /* JADX INFO: renamed from: E0 */
    private static final Class<?>[] f2635E0;

    /* JADX INFO: renamed from: F0 */
    static final Interpolator f2636F0;

    /* JADX INFO: renamed from: y0 */
    private static final int[] f2637y0 = {R.attr.nestedScrollingEnabled};

    /* JADX INFO: renamed from: z0 */
    static final boolean f2638z0;

    /* JADX INFO: renamed from: A */
    boolean f2639A;

    /* JADX INFO: renamed from: B */
    private final AccessibilityManager f2640B;

    /* JADX INFO: renamed from: C */
    private List<InterfaceC0444p> f2641C;

    /* JADX INFO: renamed from: D */
    boolean f2642D;

    /* JADX INFO: renamed from: E */
    boolean f2643E;

    /* JADX INFO: renamed from: F */
    private int f2644F;

    /* JADX INFO: renamed from: G */
    private int f2645G;

    /* JADX INFO: renamed from: H */
    private C0438j f2646H;

    /* JADX INFO: renamed from: I */
    private EdgeEffect f2647I;

    /* JADX INFO: renamed from: J */
    private EdgeEffect f2648J;

    /* JADX INFO: renamed from: K */
    private EdgeEffect f2649K;

    /* JADX INFO: renamed from: L */
    private EdgeEffect f2650L;

    /* JADX INFO: renamed from: M */
    AbstractC0439k f2651M;

    /* JADX INFO: renamed from: N */
    private int f2652N;

    /* JADX INFO: renamed from: O */
    private int f2653O;

    /* JADX INFO: renamed from: P */
    private VelocityTracker f2654P;

    /* JADX INFO: renamed from: Q */
    private int f2655Q;

    /* JADX INFO: renamed from: R */
    private int f2656R;

    /* JADX INFO: renamed from: S */
    private int f2657S;

    /* JADX INFO: renamed from: T */
    private int f2658T;

    /* JADX INFO: renamed from: U */
    private int f2659U;

    /* JADX INFO: renamed from: V */
    private AbstractC0445q f2660V;

    /* JADX INFO: renamed from: W */
    private final int f2661W;

    /* JADX INFO: renamed from: a0 */
    private final int f2662a0;

    /* JADX INFO: renamed from: b */
    private final C0451w f2663b;

    /* JADX INFO: renamed from: b0 */
    private float f2664b0;

    /* JADX INFO: renamed from: c */
    final C0449u f2665c;

    /* JADX INFO: renamed from: c0 */
    private float f2666c0;

    /* JADX INFO: renamed from: d */
    private C0452x f2667d;

    /* JADX INFO: renamed from: d0 */
    private boolean f2668d0;

    /* JADX INFO: renamed from: e */
    C0461a f2669e;

    /* JADX INFO: renamed from: e0 */
    final RunnableC0429b0 f2670e0;

    /* JADX INFO: renamed from: f */
    C0462b f2671f;

    /* JADX INFO: renamed from: f0 */
    RunnableC0465e f2672f0;

    /* JADX INFO: renamed from: g */
    final C0476p f2673g;

    /* JADX INFO: renamed from: g0 */
    RunnableC0465e.b f2674g0;

    /* JADX INFO: renamed from: h */
    boolean f2675h;

    /* JADX INFO: renamed from: h0 */
    final C0454z f2676h0;

    /* JADX INFO: renamed from: i */
    final Rect f2677i;

    /* JADX INFO: renamed from: i0 */
    private AbstractC0447s f2678i0;

    /* JADX INFO: renamed from: j */
    private final Rect f2679j;

    /* JADX INFO: renamed from: j0 */
    private List<AbstractC0447s> f2680j0;

    /* JADX INFO: renamed from: k */
    final RectF f2681k;

    /* JADX INFO: renamed from: k0 */
    boolean f2682k0;

    /* JADX INFO: renamed from: l */
    AbstractC0434f f2683l;

    /* JADX INFO: renamed from: l0 */
    boolean f2684l0;

    /* JADX INFO: renamed from: m */
    AbstractC0442n f2685m;

    /* JADX INFO: renamed from: m0 */
    private AbstractC0439k.b f2686m0;

    /* JADX INFO: renamed from: n */
    InterfaceC0450v f2687n;

    /* JADX INFO: renamed from: n0 */
    boolean f2688n0;

    /* JADX INFO: renamed from: o */
    final ArrayList<AbstractC0441m> f2689o;

    /* JADX INFO: renamed from: o0 */
    C0471k f2690o0;

    /* JADX INFO: renamed from: p */
    private final ArrayList<InterfaceC0446r> f2691p;

    /* JADX INFO: renamed from: p0 */
    private InterfaceC0437i f2692p0;

    /* JADX INFO: renamed from: q */
    private InterfaceC0446r f2693q;

    /* JADX INFO: renamed from: q0 */
    private final int[] f2694q0;

    /* JADX INFO: renamed from: r */
    boolean f2695r;

    /* JADX INFO: renamed from: r0 */
    private C0282l f2696r0;

    /* JADX INFO: renamed from: s */
    boolean f2697s;

    /* JADX INFO: renamed from: s0 */
    private final int[] f2698s0;

    /* JADX INFO: renamed from: t */
    boolean f2699t;

    /* JADX INFO: renamed from: t0 */
    private final int[] f2700t0;

    /* JADX INFO: renamed from: u */
    boolean f2701u;

    /* JADX INFO: renamed from: u0 */
    final int[] f2702u0;

    /* JADX INFO: renamed from: v */
    private int f2703v;

    /* JADX INFO: renamed from: v0 */
    final List<AbstractC0431c0> f2704v0;

    /* JADX INFO: renamed from: w */
    boolean f2705w;

    /* JADX INFO: renamed from: w0 */
    private Runnable f2706w0;

    /* JADX INFO: renamed from: x */
    boolean f2707x;

    /* JADX INFO: renamed from: x0 */
    private final C0476p.b f2708x0;

    /* JADX INFO: renamed from: y */
    private boolean f2709y;

    /* JADX INFO: renamed from: z */
    private int f2710z;

    /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$a */
    class RunnableC0426a implements Runnable {
        RunnableC0426a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC0439k abstractC0439k = RecyclerView.this.f2651M;
            if (abstractC0439k != null) {
                abstractC0439k.mo3450u();
            }
            RecyclerView.this.f2688n0 = false;
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$a0 */
    public static abstract class AbstractC0427a0 {
        /* JADX INFO: renamed from: a */
        public abstract View m3335a(C0449u c0449u, int i, int i2);
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$b */
    static class InterpolatorC0428b implements Interpolator {
        InterpolatorC0428b() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$b0 */
    class RunnableC0429b0 implements Runnable {

        /* JADX INFO: renamed from: b */
        private int f2712b;

        /* JADX INFO: renamed from: c */
        private int f2713c;

        /* JADX INFO: renamed from: d */
        OverScroller f2714d;

        /* JADX INFO: renamed from: e */
        Interpolator f2715e = RecyclerView.f2636F0;

        /* JADX INFO: renamed from: f */
        private boolean f2716f = false;

        /* JADX INFO: renamed from: g */
        private boolean f2717g = false;

        RunnableC0429b0() {
            this.f2714d = new OverScroller(RecyclerView.this.getContext(), RecyclerView.f2636F0);
        }

        /* JADX INFO: renamed from: a */
        private int m3336a(int i, int i2, int i3, int i4) {
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
            float fM3337b = f2 + (m3337b(Math.min(1.0f, (iSqrt2 * 1.0f) / f)) * f2);
            if (iSqrt > 0) {
                iRound = Math.round(Math.abs(fM3337b / iSqrt) * 1000.0f) * 4;
            } else {
                if (!z) {
                    iAbs = iAbs2;
                }
                iRound = (int) (((iAbs / f) + 1.0f) * 300.0f);
            }
            return Math.min(iRound, 2000);
        }

        /* JADX INFO: renamed from: b */
        private float m3337b(float f) {
            return (float) Math.sin((f - 0.5f) * 0.47123894f);
        }

        /* JADX INFO: renamed from: d */
        private void m3338d() {
            RecyclerView.this.removeCallbacks(this);
            C0292v.m2089g0(RecyclerView.this, this);
        }

        /* JADX INFO: renamed from: c */
        public void m3339c(int i, int i2) {
            RecyclerView.this.setScrollState(2);
            this.f2713c = 0;
            this.f2712b = 0;
            Interpolator interpolator = this.f2715e;
            Interpolator interpolator2 = RecyclerView.f2636F0;
            if (interpolator != interpolator2) {
                this.f2715e = interpolator2;
                this.f2714d = new OverScroller(RecyclerView.this.getContext(), RecyclerView.f2636F0);
            }
            this.f2714d.fling(0, 0, i, i2, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
            m3340e();
        }

        /* JADX INFO: renamed from: e */
        void m3340e() {
            if (this.f2716f) {
                this.f2717g = true;
            } else {
                m3338d();
            }
        }

        /* JADX INFO: renamed from: f */
        public void m3341f(int i, int i2, int i3, Interpolator interpolator) {
            if (i3 == Integer.MIN_VALUE) {
                i3 = m3336a(i, i2, 0, 0);
            }
            int i4 = i3;
            if (interpolator == null) {
                interpolator = RecyclerView.f2636F0;
            }
            if (this.f2715e != interpolator) {
                this.f2715e = interpolator;
                this.f2714d = new OverScroller(RecyclerView.this.getContext(), interpolator);
            }
            this.f2713c = 0;
            this.f2712b = 0;
            RecyclerView.this.setScrollState(2);
            this.f2714d.startScroll(0, 0, i, i2, i4);
            if (Build.VERSION.SDK_INT < 23) {
                this.f2714d.computeScrollOffset();
            }
            m3340e();
        }

        /* JADX INFO: renamed from: g */
        public void m3342g() {
            RecyclerView.this.removeCallbacks(this);
            this.f2714d.abortAnimation();
        }

        @Override // java.lang.Runnable
        public void run() {
            int i;
            int i2;
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.f2685m == null) {
                m3342g();
                return;
            }
            this.f2717g = false;
            this.f2716f = true;
            recyclerView.m3325u();
            OverScroller overScroller = this.f2714d;
            if (overScroller.computeScrollOffset()) {
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                int i3 = currX - this.f2712b;
                int i4 = currY - this.f2713c;
                this.f2712b = currX;
                this.f2713c = currY;
                RecyclerView recyclerView2 = RecyclerView.this;
                int[] iArr = recyclerView2.f2702u0;
                iArr[0] = 0;
                iArr[1] = 0;
                if (recyclerView2.m3256F(i3, i4, iArr, null, 1)) {
                    int[] iArr2 = RecyclerView.this.f2702u0;
                    i3 -= iArr2[0];
                    i4 -= iArr2[1];
                }
                if (RecyclerView.this.getOverScrollMode() != 2) {
                    RecyclerView.this.m3322t(i3, i4);
                }
                RecyclerView recyclerView3 = RecyclerView.this;
                if (recyclerView3.f2683l != null) {
                    int[] iArr3 = recyclerView3.f2702u0;
                    iArr3[0] = 0;
                    iArr3[1] = 0;
                    recyclerView3.m3294f1(i3, i4, iArr3);
                    RecyclerView recyclerView4 = RecyclerView.this;
                    int[] iArr4 = recyclerView4.f2702u0;
                    i2 = iArr4[0];
                    i = iArr4[1];
                    i3 -= i2;
                    i4 -= i;
                    AbstractC0453y abstractC0453y = recyclerView4.f2685m.f2758g;
                    if (abstractC0453y != null && !abstractC0453y.m3644g() && abstractC0453y.m3645h()) {
                        int iM3662b = RecyclerView.this.f2676h0.m3662b();
                        if (iM3662b == 0) {
                            abstractC0453y.m3655r();
                        } else if (abstractC0453y.m3643f() >= iM3662b) {
                            abstractC0453y.m3653p(iM3662b - 1);
                            abstractC0453y.m3647j(i2, i);
                        } else {
                            abstractC0453y.m3647j(i2, i);
                        }
                    }
                } else {
                    i = 0;
                    i2 = 0;
                }
                if (!RecyclerView.this.f2689o.isEmpty()) {
                    RecyclerView.this.invalidate();
                }
                RecyclerView recyclerView5 = RecyclerView.this;
                int[] iArr5 = recyclerView5.f2702u0;
                iArr5[0] = 0;
                iArr5[1] = 0;
                recyclerView5.m3258G(i2, i, i3, i4, null, 1, iArr5);
                int[] iArr6 = RecyclerView.this.f2702u0;
                int i5 = i3 - iArr6[0];
                int i6 = i4 - iArr6[1];
                if (i2 != 0 || i != 0) {
                    RecyclerView.this.m3262I(i2, i);
                }
                if (!RecyclerView.this.awakenScrollBars()) {
                    RecyclerView.this.invalidate();
                }
                boolean z = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i5 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i6 != 0));
                AbstractC0453y abstractC0453y2 = RecyclerView.this.f2685m.f2758g;
                if ((abstractC0453y2 != null && abstractC0453y2.m3644g()) || !z) {
                    m3340e();
                    RecyclerView recyclerView6 = RecyclerView.this;
                    RunnableC0465e runnableC0465e = recyclerView6.f2672f0;
                    if (runnableC0465e != null) {
                        runnableC0465e.m3868f(recyclerView6, i2, i);
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
                        RecyclerView.this.m3286a(i7, currVelocity);
                    }
                    if (RecyclerView.f2632B0) {
                        RecyclerView.this.f2674g0.m3872b();
                    }
                }
            }
            AbstractC0453y abstractC0453y3 = RecyclerView.this.f2685m.f2758g;
            if (abstractC0453y3 != null && abstractC0453y3.m3644g()) {
                abstractC0453y3.m3647j(0, 0);
            }
            this.f2716f = false;
            if (this.f2717g) {
                m3338d();
            } else {
                RecyclerView.this.setScrollState(0);
                RecyclerView.this.m3321s1(1);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$c */
    class C0430c implements C0476p.b {
        C0430c() {
        }

        @Override // androidx.recyclerview.widget.C0476p.b
        /* JADX INFO: renamed from: a */
        public void mo3343a(AbstractC0431c0 abstractC0431c0) {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.f2685m.m3541m1(abstractC0431c0.f2721a, recyclerView.f2665c);
        }

        @Override // androidx.recyclerview.widget.C0476p.b
        /* JADX INFO: renamed from: b */
        public void mo3344b(AbstractC0431c0 abstractC0431c0, AbstractC0439k.c cVar, AbstractC0439k.c cVar2) {
            RecyclerView.this.m3304l(abstractC0431c0, cVar, cVar2);
        }

        @Override // androidx.recyclerview.widget.C0476p.b
        /* JADX INFO: renamed from: c */
        public void mo3345c(AbstractC0431c0 abstractC0431c0, AbstractC0439k.c cVar, AbstractC0439k.c cVar2) {
            RecyclerView.this.f2665c.m3606J(abstractC0431c0);
            RecyclerView.this.m3308n(abstractC0431c0, cVar, cVar2);
        }

        @Override // androidx.recyclerview.widget.C0476p.b
        /* JADX INFO: renamed from: d */
        public void mo3346d(AbstractC0431c0 abstractC0431c0, AbstractC0439k.c cVar, AbstractC0439k.c cVar2) {
            abstractC0431c0.m3354G(false);
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.f2642D) {
                if (recyclerView.f2651M.mo3432b(abstractC0431c0, abstractC0431c0, cVar, cVar2)) {
                    RecyclerView.this.m3267L0();
                }
            } else if (recyclerView.f2651M.mo3434d(abstractC0431c0, cVar, cVar2)) {
                RecyclerView.this.m3267L0();
            }
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$c0 */
    public static abstract class AbstractC0431c0 {

        /* JADX INFO: renamed from: s */
        private static final List<Object> f2720s = Collections.emptyList();

        /* JADX INFO: renamed from: a */
        public final View f2721a;

        /* JADX INFO: renamed from: b */
        WeakReference<RecyclerView> f2722b;

        /* JADX INFO: renamed from: j */
        int f2730j;

        /* JADX INFO: renamed from: r */
        RecyclerView f2738r;

        /* JADX INFO: renamed from: c */
        int f2723c = -1;

        /* JADX INFO: renamed from: d */
        int f2724d = -1;

        /* JADX INFO: renamed from: e */
        long f2725e = -1;

        /* JADX INFO: renamed from: f */
        int f2726f = -1;

        /* JADX INFO: renamed from: g */
        int f2727g = -1;

        /* JADX INFO: renamed from: h */
        AbstractC0431c0 f2728h = null;

        /* JADX INFO: renamed from: i */
        AbstractC0431c0 f2729i = null;

        /* JADX INFO: renamed from: k */
        List<Object> f2731k = null;

        /* JADX INFO: renamed from: l */
        List<Object> f2732l = null;

        /* JADX INFO: renamed from: m */
        private int f2733m = 0;

        /* JADX INFO: renamed from: n */
        C0449u f2734n = null;

        /* JADX INFO: renamed from: o */
        boolean f2735o = false;

        /* JADX INFO: renamed from: p */
        private int f2736p = 0;

        /* JADX INFO: renamed from: q */
        int f2737q = -1;

        public AbstractC0431c0(View view) {
            if (view == null) {
                throw new IllegalArgumentException("itemView may not be null");
            }
            this.f2721a = view;
        }

        /* JADX INFO: renamed from: g */
        private void m3347g() {
            if (this.f2731k == null) {
                ArrayList arrayList = new ArrayList();
                this.f2731k = arrayList;
                this.f2732l = Collections.unmodifiableList(arrayList);
            }
        }

        /* JADX INFO: renamed from: A */
        void m3348A(int i, boolean z) {
            if (this.f2724d == -1) {
                this.f2724d = this.f2723c;
            }
            if (this.f2727g == -1) {
                this.f2727g = this.f2723c;
            }
            if (z) {
                this.f2727g += i;
            }
            this.f2723c += i;
            if (this.f2721a.getLayoutParams() != null) {
                ((C0443o) this.f2721a.getLayoutParams()).f2778c = true;
            }
        }

        /* JADX INFO: renamed from: B */
        void m3349B(RecyclerView recyclerView) {
            int i = this.f2737q;
            if (i != -1) {
                this.f2736p = i;
            } else {
                this.f2736p = C0292v.m2042A(this.f2721a);
            }
            recyclerView.m3298i1(this, 4);
        }

        /* JADX INFO: renamed from: C */
        void m3350C(RecyclerView recyclerView) {
            recyclerView.m3298i1(this, this.f2736p);
            this.f2736p = 0;
        }

        /* JADX INFO: renamed from: D */
        void m3351D() {
            this.f2730j = 0;
            this.f2723c = -1;
            this.f2724d = -1;
            this.f2725e = -1L;
            this.f2727g = -1;
            this.f2733m = 0;
            this.f2728h = null;
            this.f2729i = null;
            m3363d();
            this.f2736p = 0;
            this.f2737q = -1;
            RecyclerView.m3245r(this);
        }

        /* JADX INFO: renamed from: E */
        void m3352E() {
            if (this.f2724d == -1) {
                this.f2724d = this.f2723c;
            }
        }

        /* JADX INFO: renamed from: F */
        void m3353F(int i, int i2) {
            this.f2730j = (i & i2) | (this.f2730j & (i2 ^ (-1)));
        }

        /* JADX INFO: renamed from: G */
        public final void m3354G(boolean z) {
            int i = this.f2733m;
            int i2 = z ? i - 1 : i + 1;
            this.f2733m = i2;
            if (i2 < 0) {
                this.f2733m = 0;
                String str = "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this;
                return;
            }
            if (!z && i2 == 1) {
                this.f2730j |= 16;
            } else if (z && this.f2733m == 0) {
                this.f2730j &= -17;
            }
        }

        /* JADX INFO: renamed from: H */
        void m3355H(C0449u c0449u, boolean z) {
            this.f2734n = c0449u;
            this.f2735o = z;
        }

        /* JADX INFO: renamed from: I */
        boolean m3356I() {
            return (this.f2730j & 16) != 0;
        }

        /* JADX INFO: renamed from: J */
        boolean m3357J() {
            return (this.f2730j & 128) != 0;
        }

        /* JADX INFO: renamed from: K */
        void m3358K() {
            this.f2734n.m3606J(this);
        }

        /* JADX INFO: renamed from: L */
        boolean m3359L() {
            return (this.f2730j & 32) != 0;
        }

        /* JADX INFO: renamed from: a */
        void m3360a(Object obj) {
            if (obj == null) {
                m3361b(1024);
            } else if ((1024 & this.f2730j) == 0) {
                m3347g();
                this.f2731k.add(obj);
            }
        }

        /* JADX INFO: renamed from: b */
        void m3361b(int i) {
            this.f2730j = i | this.f2730j;
        }

        /* JADX INFO: renamed from: c */
        void m3362c() {
            this.f2724d = -1;
            this.f2727g = -1;
        }

        /* JADX INFO: renamed from: d */
        void m3363d() {
            List<Object> list = this.f2731k;
            if (list != null) {
                list.clear();
            }
            this.f2730j &= -1025;
        }

        /* JADX INFO: renamed from: e */
        void m3364e() {
            this.f2730j &= -33;
        }

        /* JADX INFO: renamed from: f */
        void m3365f() {
            this.f2730j &= -257;
        }

        /* JADX INFO: renamed from: h */
        boolean m3366h() {
            return (this.f2730j & 16) == 0 && C0292v.m2066Q(this.f2721a);
        }

        /* JADX INFO: renamed from: i */
        void m3367i(int i, int i2, boolean z) {
            m3361b(8);
            m3348A(i2, z);
            this.f2723c = i;
        }

        /* JADX INFO: renamed from: j */
        public final int m3368j() {
            RecyclerView recyclerView = this.f2738r;
            if (recyclerView == null) {
                return -1;
            }
            return recyclerView.m3288b0(this);
        }

        /* JADX INFO: renamed from: k */
        public final long m3369k() {
            return this.f2725e;
        }

        /* JADX INFO: renamed from: l */
        public final int m3370l() {
            return this.f2726f;
        }

        /* JADX INFO: renamed from: m */
        public final int m3371m() {
            int i = this.f2727g;
            return i == -1 ? this.f2723c : i;
        }

        /* JADX INFO: renamed from: n */
        public final int m3372n() {
            return this.f2724d;
        }

        /* JADX INFO: renamed from: o */
        List<Object> m3373o() {
            if ((this.f2730j & 1024) != 0) {
                return f2720s;
            }
            List<Object> list = this.f2731k;
            return (list == null || list.size() == 0) ? f2720s : this.f2732l;
        }

        /* JADX INFO: renamed from: p */
        boolean m3374p(int i) {
            return (i & this.f2730j) != 0;
        }

        /* JADX INFO: renamed from: q */
        boolean m3375q() {
            return (this.f2730j & 512) != 0 || m3378t();
        }

        /* JADX INFO: renamed from: r */
        boolean m3376r() {
            return (this.f2721a.getParent() == null || this.f2721a.getParent() == this.f2738r) ? false : true;
        }

        /* JADX INFO: renamed from: s */
        boolean m3377s() {
            return (this.f2730j & 1) != 0;
        }

        /* JADX INFO: renamed from: t */
        boolean m3378t() {
            return (this.f2730j & 4) != 0;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder((getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName()) + "{" + Integer.toHexString(hashCode()) + " position=" + this.f2723c + " id=" + this.f2725e + ", oldPos=" + this.f2724d + ", pLpos:" + this.f2727g);
            if (m3381w()) {
                sb.append(" scrap ");
                sb.append(this.f2735o ? "[changeScrap]" : "[attachedScrap]");
            }
            if (m3378t()) {
                sb.append(" invalid");
            }
            if (!m3377s()) {
                sb.append(" unbound");
            }
            if (m3384z()) {
                sb.append(" update");
            }
            if (m3380v()) {
                sb.append(" removed");
            }
            if (m3357J()) {
                sb.append(" ignored");
            }
            if (m3382x()) {
                sb.append(" tmpDetached");
            }
            if (!m3379u()) {
                sb.append(" not recyclable(" + this.f2733m + ")");
            }
            if (m3375q()) {
                sb.append(" undefined adapter position");
            }
            if (this.f2721a.getParent() == null) {
                sb.append(" no parent");
            }
            sb.append("}");
            return sb.toString();
        }

        /* JADX INFO: renamed from: u */
        public final boolean m3379u() {
            return (this.f2730j & 16) == 0 && !C0292v.m2066Q(this.f2721a);
        }

        /* JADX INFO: renamed from: v */
        boolean m3380v() {
            return (this.f2730j & 8) != 0;
        }

        /* JADX INFO: renamed from: w */
        boolean m3381w() {
            return this.f2734n != null;
        }

        /* JADX INFO: renamed from: x */
        boolean m3382x() {
            return (this.f2730j & 256) != 0;
        }

        /* JADX INFO: renamed from: y */
        boolean m3383y() {
            return (this.f2730j & 2) != 0;
        }

        /* JADX INFO: renamed from: z */
        boolean m3384z() {
            return (this.f2730j & 2) != 0;
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$d */
    class C0432d implements C0462b.b {
        C0432d() {
        }

        @Override // androidx.recyclerview.widget.C0462b.b
        /* JADX INFO: renamed from: a */
        public View mo3385a(int i) {
            return RecyclerView.this.getChildAt(i);
        }

        @Override // androidx.recyclerview.widget.C0462b.b
        /* JADX INFO: renamed from: b */
        public void mo3386b(View view) {
            AbstractC0431c0 abstractC0431c0M3233f0 = RecyclerView.m3233f0(view);
            if (abstractC0431c0M3233f0 != null) {
                abstractC0431c0M3233f0.m3349B(RecyclerView.this);
            }
        }

        @Override // androidx.recyclerview.widget.C0462b.b
        /* JADX INFO: renamed from: c */
        public void mo3387c(int i) {
            View childAt = RecyclerView.this.getChildAt(i);
            if (childAt != null) {
                RecyclerView.this.m3333z(childAt);
                childAt.clearAnimation();
            }
            RecyclerView.this.removeViewAt(i);
        }

        @Override // androidx.recyclerview.widget.C0462b.b
        /* JADX INFO: renamed from: d */
        public void mo3388d() {
            int iMo3395k = mo3395k();
            for (int i = 0; i < iMo3395k; i++) {
                View viewMo3385a = mo3385a(i);
                RecyclerView.this.m3333z(viewMo3385a);
                viewMo3385a.clearAnimation();
            }
            RecyclerView.this.removeAllViews();
        }

        @Override // androidx.recyclerview.widget.C0462b.b
        /* JADX INFO: renamed from: e */
        public AbstractC0431c0 mo3389e(View view) {
            return RecyclerView.m3233f0(view);
        }

        @Override // androidx.recyclerview.widget.C0462b.b
        /* JADX INFO: renamed from: f */
        public void mo3390f(int i) {
            AbstractC0431c0 abstractC0431c0M3233f0;
            View viewMo3385a = mo3385a(i);
            if (viewMo3385a != null && (abstractC0431c0M3233f0 = RecyclerView.m3233f0(viewMo3385a)) != null) {
                if (abstractC0431c0M3233f0.m3382x() && !abstractC0431c0M3233f0.m3357J()) {
                    throw new IllegalArgumentException("called detach on an already detached child " + abstractC0431c0M3233f0 + RecyclerView.this.m3272P());
                }
                abstractC0431c0M3233f0.m3361b(256);
            }
            RecyclerView.this.detachViewFromParent(i);
        }

        @Override // androidx.recyclerview.widget.C0462b.b
        /* JADX INFO: renamed from: g */
        public void mo3391g(View view) {
            AbstractC0431c0 abstractC0431c0M3233f0 = RecyclerView.m3233f0(view);
            if (abstractC0431c0M3233f0 != null) {
                abstractC0431c0M3233f0.m3350C(RecyclerView.this);
            }
        }

        @Override // androidx.recyclerview.widget.C0462b.b
        /* JADX INFO: renamed from: h */
        public void mo3392h(View view, int i, ViewGroup.LayoutParams layoutParams) {
            AbstractC0431c0 abstractC0431c0M3233f0 = RecyclerView.m3233f0(view);
            if (abstractC0431c0M3233f0 != null) {
                if (!abstractC0431c0M3233f0.m3382x() && !abstractC0431c0M3233f0.m3357J()) {
                    throw new IllegalArgumentException("Called attach on a child which is not detached: " + abstractC0431c0M3233f0 + RecyclerView.this.m3272P());
                }
                abstractC0431c0M3233f0.m3365f();
            }
            RecyclerView.this.attachViewToParent(view, i, layoutParams);
        }

        @Override // androidx.recyclerview.widget.C0462b.b
        /* JADX INFO: renamed from: i */
        public void mo3393i(View view, int i) {
            RecyclerView.this.addView(view, i);
            RecyclerView.this.m3331y(view);
        }

        @Override // androidx.recyclerview.widget.C0462b.b
        /* JADX INFO: renamed from: j */
        public int mo3394j(View view) {
            return RecyclerView.this.indexOfChild(view);
        }

        @Override // androidx.recyclerview.widget.C0462b.b
        /* JADX INFO: renamed from: k */
        public int mo3395k() {
            return RecyclerView.this.getChildCount();
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$e */
    class C0433e implements C0461a.a {
        C0433e() {
        }

        @Override // androidx.recyclerview.widget.C0461a.a
        /* JADX INFO: renamed from: a */
        public void mo3396a(int i, int i2) {
            RecyclerView.this.m3252B0(i, i2);
            RecyclerView.this.f2682k0 = true;
        }

        @Override // androidx.recyclerview.widget.C0461a.a
        /* JADX INFO: renamed from: b */
        public void mo3397b(C0461a.b bVar) {
            m3404i(bVar);
        }

        @Override // androidx.recyclerview.widget.C0461a.a
        /* JADX INFO: renamed from: c */
        public AbstractC0431c0 mo3398c(int i) {
            AbstractC0431c0 abstractC0431c0M3285Z = RecyclerView.this.m3285Z(i, true);
            if (abstractC0431c0M3285Z == null || RecyclerView.this.f2671f.m3813n(abstractC0431c0M3285Z.f2721a)) {
                return null;
            }
            return abstractC0431c0M3285Z;
        }

        @Override // androidx.recyclerview.widget.C0461a.a
        /* JADX INFO: renamed from: d */
        public void mo3399d(int i, int i2) {
            RecyclerView.this.m3253C0(i, i2, true);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.f2682k0 = true;
            recyclerView.f2676h0.f2815d += i2;
        }

        @Override // androidx.recyclerview.widget.C0461a.a
        /* JADX INFO: renamed from: e */
        public void mo3400e(int i, int i2) {
            RecyclerView.this.m3253C0(i, i2, false);
            RecyclerView.this.f2682k0 = true;
        }

        @Override // androidx.recyclerview.widget.C0461a.a
        /* JADX INFO: renamed from: f */
        public void mo3401f(C0461a.b bVar) {
            m3404i(bVar);
        }

        @Override // androidx.recyclerview.widget.C0461a.a
        /* JADX INFO: renamed from: g */
        public void mo3402g(int i, int i2) {
            RecyclerView.this.m3250A0(i, i2);
            RecyclerView.this.f2682k0 = true;
        }

        @Override // androidx.recyclerview.widget.C0461a.a
        /* JADX INFO: renamed from: h */
        public void mo3403h(int i, int i2, Object obj) {
            RecyclerView.this.m3327v1(i, i2, obj);
            RecyclerView.this.f2684l0 = true;
        }

        /* JADX INFO: renamed from: i */
        void m3404i(C0461a.b bVar) {
            int i = bVar.f2893a;
            if (i == 1) {
                RecyclerView recyclerView = RecyclerView.this;
                recyclerView.f2685m.mo3098R0(recyclerView, bVar.f2894b, bVar.f2896d);
                return;
            }
            if (i == 2) {
                RecyclerView recyclerView2 = RecyclerView.this;
                recyclerView2.f2685m.mo3101U0(recyclerView2, bVar.f2894b, bVar.f2896d);
            } else if (i == 4) {
                RecyclerView recyclerView3 = RecyclerView.this;
                recyclerView3.f2685m.mo3102W0(recyclerView3, bVar.f2894b, bVar.f2896d, bVar.f2895c);
            } else {
                if (i != 8) {
                    return;
                }
                RecyclerView recyclerView4 = RecyclerView.this;
                recyclerView4.f2685m.mo3100T0(recyclerView4, bVar.f2894b, bVar.f2896d, 1);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$f */
    public static abstract class AbstractC0434f<VH extends AbstractC0431c0> {

        /* JADX INFO: renamed from: a */
        private final C0435g f2741a = new C0435g();

        /* JADX INFO: renamed from: b */
        private boolean f2742b = false;

        /* JADX INFO: renamed from: a */
        public final void m3405a(VH vh, int i) {
            vh.f2723c = i;
            if (m3411g()) {
                vh.f2725e = mo3408d(i);
            }
            vh.m3353F(1, 519);
            C0605c.m4756a("RV OnBindView");
            m3415k(vh, i, vh.m3373o());
            vh.m3363d();
            ViewGroup.LayoutParams layoutParams = vh.f2721a.getLayoutParams();
            if (layoutParams instanceof C0443o) {
                ((C0443o) layoutParams).f2778c = true;
            }
            C0605c.m4757b();
        }

        /* JADX INFO: renamed from: b */
        public final VH m3406b(ViewGroup viewGroup, int i) {
            try {
                C0605c.m4756a("RV CreateView");
                VH vh = (VH) mo3416l(viewGroup, i);
                if (vh.f2721a.getParent() != null) {
                    throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
                }
                vh.f2726f = i;
                return vh;
            } finally {
                C0605c.m4757b();
            }
        }

        /* JADX INFO: renamed from: c */
        public abstract int mo3407c();

        /* JADX INFO: renamed from: d */
        public long mo3408d(int i) {
            return -1L;
        }

        /* JADX INFO: renamed from: e */
        public int m3409e(int i) {
            return 0;
        }

        /* JADX INFO: renamed from: f */
        public final boolean m3410f() {
            return this.f2741a.m3425a();
        }

        /* JADX INFO: renamed from: g */
        public final boolean m3411g() {
            return this.f2742b;
        }

        /* JADX INFO: renamed from: h */
        public final void m3412h() {
            this.f2741a.m3426b();
        }

        /* JADX INFO: renamed from: i */
        public void m3413i(RecyclerView recyclerView) {
        }

        /* JADX INFO: renamed from: j */
        public abstract void mo3414j(VH vh, int i);

        /* JADX INFO: renamed from: k */
        public void m3415k(VH vh, int i, List<Object> list) {
            mo3414j(vh, i);
        }

        /* JADX INFO: renamed from: l */
        public abstract VH mo3416l(ViewGroup viewGroup, int i);

        /* JADX INFO: renamed from: m */
        public void m3417m(RecyclerView recyclerView) {
        }

        /* JADX INFO: renamed from: n */
        public boolean m3418n(VH vh) {
            return false;
        }

        /* JADX INFO: renamed from: o */
        public void m3419o(VH vh) {
        }

        /* JADX INFO: renamed from: p */
        public void m3420p(VH vh) {
        }

        /* JADX INFO: renamed from: q */
        public void m3421q(VH vh) {
        }

        /* JADX INFO: renamed from: r */
        public void m3422r(AbstractC0436h abstractC0436h) {
            this.f2741a.registerObserver(abstractC0436h);
        }

        /* JADX INFO: renamed from: s */
        public void m3423s(boolean z) {
            if (m3410f()) {
                throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
            }
            this.f2742b = z;
        }

        /* JADX INFO: renamed from: t */
        public void m3424t(AbstractC0436h abstractC0436h) {
            this.f2741a.unregisterObserver(abstractC0436h);
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$g */
    static class C0435g extends Observable<AbstractC0436h> {
        C0435g() {
        }

        /* JADX INFO: renamed from: a */
        public boolean m3425a() {
            return !((Observable) this).mObservers.isEmpty();
        }

        /* JADX INFO: renamed from: b */
        public void m3426b() {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC0436h) ((Observable) this).mObservers.get(size)).mo3427a();
            }
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$h */
    public static abstract class AbstractC0436h {
        /* JADX INFO: renamed from: a */
        public void mo3427a() {
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$i */
    public interface InterfaceC0437i {
        /* JADX INFO: renamed from: a */
        int m3428a(int i, int i2);
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$j */
    public static class C0438j {
        /* JADX INFO: renamed from: a */
        protected EdgeEffect m3429a(RecyclerView recyclerView, int i) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$k */
    public static abstract class AbstractC0439k {

        /* JADX INFO: renamed from: a */
        private b f2743a = null;

        /* JADX INFO: renamed from: b */
        private ArrayList<a> f2744b = new ArrayList<>();

        /* JADX INFO: renamed from: c */
        private long f2745c = 120;

        /* JADX INFO: renamed from: d */
        private long f2746d = 120;

        /* JADX INFO: renamed from: e */
        private long f2747e = 250;

        /* JADX INFO: renamed from: f */
        private long f2748f = 250;

        /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$k$a */
        public interface a {
            /* JADX INFO: renamed from: a */
            void m3452a();
        }

        /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$k$b */
        interface b {
            /* JADX INFO: renamed from: a */
            void mo3453a(AbstractC0431c0 abstractC0431c0);
        }

        /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$k$c */
        public static class c {

            /* JADX INFO: renamed from: a */
            public int f2749a;

            /* JADX INFO: renamed from: b */
            public int f2750b;

            /* JADX INFO: renamed from: a */
            public c m3454a(AbstractC0431c0 abstractC0431c0) {
                m3455b(abstractC0431c0, 0);
                return this;
            }

            /* JADX INFO: renamed from: b */
            public c m3455b(AbstractC0431c0 abstractC0431c0, int i) {
                View view = abstractC0431c0.f2721a;
                this.f2749a = view.getLeft();
                this.f2750b = view.getTop();
                view.getRight();
                view.getBottom();
                return this;
            }
        }

        /* JADX INFO: renamed from: e */
        static int m3430e(AbstractC0431c0 abstractC0431c0) {
            int i = abstractC0431c0.f2730j & 14;
            if (abstractC0431c0.m3378t()) {
                return 4;
            }
            if ((i & 4) != 0) {
                return i;
            }
            int iM3372n = abstractC0431c0.m3372n();
            int iM3368j = abstractC0431c0.m3368j();
            return (iM3372n == -1 || iM3368j == -1 || iM3372n == iM3368j) ? i : i | 2048;
        }

        /* JADX INFO: renamed from: a */
        public abstract boolean mo3431a(AbstractC0431c0 abstractC0431c0, c cVar, c cVar2);

        /* JADX INFO: renamed from: b */
        public abstract boolean mo3432b(AbstractC0431c0 abstractC0431c0, AbstractC0431c0 abstractC0431c02, c cVar, c cVar2);

        /* JADX INFO: renamed from: c */
        public abstract boolean mo3433c(AbstractC0431c0 abstractC0431c0, c cVar, c cVar2);

        /* JADX INFO: renamed from: d */
        public abstract boolean mo3434d(AbstractC0431c0 abstractC0431c0, c cVar, c cVar2);

        /* JADX INFO: renamed from: f */
        public abstract boolean mo3435f(AbstractC0431c0 abstractC0431c0);

        /* JADX INFO: renamed from: g */
        public boolean mo3436g(AbstractC0431c0 abstractC0431c0, List<Object> list) {
            return mo3435f(abstractC0431c0);
        }

        /* JADX INFO: renamed from: h */
        public final void m3437h(AbstractC0431c0 abstractC0431c0) {
            m3447r(abstractC0431c0);
            b bVar = this.f2743a;
            if (bVar != null) {
                bVar.mo3453a(abstractC0431c0);
            }
        }

        /* JADX INFO: renamed from: i */
        public final void m3438i() {
            int size = this.f2744b.size();
            for (int i = 0; i < size; i++) {
                this.f2744b.get(i).m3452a();
            }
            this.f2744b.clear();
        }

        /* JADX INFO: renamed from: j */
        public abstract void mo3439j(AbstractC0431c0 abstractC0431c0);

        /* JADX INFO: renamed from: k */
        public abstract void mo3440k();

        /* JADX INFO: renamed from: l */
        public long m3441l() {
            return this.f2745c;
        }

        /* JADX INFO: renamed from: m */
        public long m3442m() {
            return this.f2748f;
        }

        /* JADX INFO: renamed from: n */
        public long m3443n() {
            return this.f2747e;
        }

        /* JADX INFO: renamed from: o */
        public long m3444o() {
            return this.f2746d;
        }

        /* JADX INFO: renamed from: p */
        public abstract boolean mo3445p();

        /* JADX INFO: renamed from: q */
        public c m3446q() {
            return new c();
        }

        /* JADX INFO: renamed from: r */
        public void m3447r(AbstractC0431c0 abstractC0431c0) {
        }

        /* JADX INFO: renamed from: s */
        public c m3448s(C0454z c0454z, AbstractC0431c0 abstractC0431c0) {
            c cVarM3446q = m3446q();
            cVarM3446q.m3454a(abstractC0431c0);
            return cVarM3446q;
        }

        /* JADX INFO: renamed from: t */
        public c m3449t(C0454z c0454z, AbstractC0431c0 abstractC0431c0, int i, List<Object> list) {
            c cVarM3446q = m3446q();
            cVarM3446q.m3454a(abstractC0431c0);
            return cVarM3446q;
        }

        /* JADX INFO: renamed from: u */
        public abstract void mo3450u();

        /* JADX INFO: renamed from: v */
        void m3451v(b bVar) {
            this.f2743a = bVar;
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$l */
    private class C0440l implements AbstractC0439k.b {
        C0440l() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0439k.b
        /* JADX INFO: renamed from: a */
        public void mo3453a(AbstractC0431c0 abstractC0431c0) {
            abstractC0431c0.m3354G(true);
            if (abstractC0431c0.f2728h != null && abstractC0431c0.f2729i == null) {
                abstractC0431c0.f2728h = null;
            }
            abstractC0431c0.f2729i = null;
            if (abstractC0431c0.m3356I() || RecyclerView.this.m3278U0(abstractC0431c0.f2721a) || !abstractC0431c0.m3382x()) {
                return;
            }
            RecyclerView.this.removeDetachedView(abstractC0431c0.f2721a, false);
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$m */
    public static abstract class AbstractC0441m {
        @Deprecated
        /* JADX INFO: renamed from: d */
        public void m3456d(Rect rect, int i, RecyclerView recyclerView) {
            rect.set(0, 0, 0, 0);
        }

        /* JADX INFO: renamed from: e */
        public void m3457e(Rect rect, View view, RecyclerView recyclerView, C0454z c0454z) {
            m3456d(rect, ((C0443o) view.getLayoutParams()).m3570a(), recyclerView);
        }

        @Deprecated
        /* JADX INFO: renamed from: f */
        public void m3458f(Canvas canvas, RecyclerView recyclerView) {
        }

        /* JADX INFO: renamed from: g */
        public void mo3459g(Canvas canvas, RecyclerView recyclerView, C0454z c0454z) {
            m3458f(canvas, recyclerView);
        }

        @Deprecated
        /* JADX INFO: renamed from: h */
        public void m3460h(Canvas canvas, RecyclerView recyclerView) {
        }

        /* JADX INFO: renamed from: i */
        public void mo3461i(Canvas canvas, RecyclerView recyclerView, C0454z c0454z) {
            m3460h(canvas, recyclerView);
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$n */
    public static abstract class AbstractC0442n {

        /* JADX INFO: renamed from: a */
        C0462b f2752a;

        /* JADX INFO: renamed from: b */
        RecyclerView f2753b;

        /* JADX INFO: renamed from: g */
        AbstractC0453y f2758g;

        /* JADX INFO: renamed from: m */
        int f2764m;

        /* JADX INFO: renamed from: n */
        boolean f2765n;

        /* JADX INFO: renamed from: o */
        private int f2766o;

        /* JADX INFO: renamed from: p */
        private int f2767p;

        /* JADX INFO: renamed from: q */
        private int f2768q;

        /* JADX INFO: renamed from: r */
        private int f2769r;

        /* JADX INFO: renamed from: c */
        private final C0475o.b f2754c = new a();

        /* JADX INFO: renamed from: d */
        private final C0475o.b f2755d = new b();

        /* JADX INFO: renamed from: e */
        C0475o f2756e = new C0475o(this.f2754c);

        /* JADX INFO: renamed from: f */
        C0475o f2757f = new C0475o(this.f2755d);

        /* JADX INFO: renamed from: h */
        boolean f2759h = false;

        /* JADX INFO: renamed from: i */
        boolean f2760i = false;

        /* JADX INFO: renamed from: j */
        boolean f2761j = false;

        /* JADX INFO: renamed from: k */
        private boolean f2762k = true;

        /* JADX INFO: renamed from: l */
        private boolean f2763l = true;

        /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$n$a */
        class a implements C0475o.b {
            a() {
            }

            @Override // androidx.recyclerview.widget.C0475o.b
            /* JADX INFO: renamed from: a */
            public View mo3564a(int i) {
                return AbstractC0442n.this.m3489I(i);
            }

            @Override // androidx.recyclerview.widget.C0475o.b
            /* JADX INFO: renamed from: b */
            public int mo3565b() {
                return AbstractC0442n.this.m3544o0() - AbstractC0442n.this.m3525f0();
            }

            @Override // androidx.recyclerview.widget.C0475o.b
            /* JADX INFO: renamed from: c */
            public int mo3566c() {
                return AbstractC0442n.this.m3523e0();
            }

            @Override // androidx.recyclerview.widget.C0475o.b
            /* JADX INFO: renamed from: d */
            public int mo3567d(View view) {
                return AbstractC0442n.this.m3504T(view) + ((ViewGroup.MarginLayoutParams) ((C0443o) view.getLayoutParams())).rightMargin;
            }

            @Override // androidx.recyclerview.widget.C0475o.b
            /* JADX INFO: renamed from: e */
            public int mo3568e(View view) {
                return AbstractC0442n.this.m3500Q(view) - ((ViewGroup.MarginLayoutParams) ((C0443o) view.getLayoutParams())).leftMargin;
            }
        }

        /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$n$b */
        class b implements C0475o.b {
            b() {
            }

            @Override // androidx.recyclerview.widget.C0475o.b
            /* JADX INFO: renamed from: a */
            public View mo3564a(int i) {
                return AbstractC0442n.this.m3489I(i);
            }

            @Override // androidx.recyclerview.widget.C0475o.b
            /* JADX INFO: renamed from: b */
            public int mo3565b() {
                return AbstractC0442n.this.m3508W() - AbstractC0442n.this.m3521d0();
            }

            @Override // androidx.recyclerview.widget.C0475o.b
            /* JADX INFO: renamed from: c */
            public int mo3566c() {
                return AbstractC0442n.this.m3527g0();
            }

            @Override // androidx.recyclerview.widget.C0475o.b
            /* JADX INFO: renamed from: d */
            public int mo3567d(View view) {
                return AbstractC0442n.this.m3497O(view) + ((ViewGroup.MarginLayoutParams) ((C0443o) view.getLayoutParams())).bottomMargin;
            }

            @Override // androidx.recyclerview.widget.C0475o.b
            /* JADX INFO: renamed from: e */
            public int mo3568e(View view) {
                return AbstractC0442n.this.m3505U(view) - ((ViewGroup.MarginLayoutParams) ((C0443o) view.getLayoutParams())).topMargin;
            }
        }

        /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$n$c */
        public interface c {
            /* JADX INFO: renamed from: a */
            void mo3569a(int i, int i2);
        }

        /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$n$d */
        public static class d {

            /* JADX INFO: renamed from: a */
            public int f2772a;

            /* JADX INFO: renamed from: b */
            public int f2773b;

            /* JADX INFO: renamed from: c */
            public boolean f2774c;

            /* JADX INFO: renamed from: d */
            public boolean f2775d;
        }

        /* JADX INFO: renamed from: K */
        public static int m3462K(int i, int i2, int i3, int i4, boolean z) {
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

        /* JADX INFO: renamed from: L */
        private int[] m3463L(View view, Rect rect) {
            int[] iArr = new int[2];
            int iM3523e0 = m3523e0();
            int iM3527g0 = m3527g0();
            int iM3544o0 = m3544o0() - m3525f0();
            int iM3508W = m3508W() - m3521d0();
            int left = (view.getLeft() + rect.left) - view.getScrollX();
            int top = (view.getTop() + rect.top) - view.getScrollY();
            int iWidth = rect.width() + left;
            int iHeight = rect.height() + top;
            int i = left - iM3523e0;
            int iMin = Math.min(0, i);
            int i2 = top - iM3527g0;
            int iMin2 = Math.min(0, i2);
            int i3 = iWidth - iM3544o0;
            int iMax = Math.max(0, i3);
            int iMax2 = Math.max(0, iHeight - iM3508W);
            if (m3511Z() != 1) {
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

        /* JADX INFO: renamed from: f */
        private void m3464f(View view, int i, boolean z) {
            AbstractC0431c0 abstractC0431c0M3233f0 = RecyclerView.m3233f0(view);
            if (z || abstractC0431c0M3233f0.m3380v()) {
                this.f2753b.f2673g.m3964b(abstractC0431c0M3233f0);
            } else {
                this.f2753b.f2673g.m3977p(abstractC0431c0M3233f0);
            }
            C0443o c0443o = (C0443o) view.getLayoutParams();
            if (abstractC0431c0M3233f0.m3359L() || abstractC0431c0M3233f0.m3381w()) {
                if (abstractC0431c0M3233f0.m3381w()) {
                    abstractC0431c0M3233f0.m3358K();
                } else {
                    abstractC0431c0M3233f0.m3364e();
                }
                this.f2752a.m3804c(view, i, view.getLayoutParams(), false);
            } else if (view.getParent() == this.f2753b) {
                int iM3812m = this.f2752a.m3812m(view);
                if (i == -1) {
                    i = this.f2752a.m3808g();
                }
                if (iM3812m == -1) {
                    throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.f2753b.indexOfChild(view) + this.f2753b.m3272P());
                }
                if (iM3812m != i) {
                    this.f2753b.f2685m.m3475B0(iM3812m, i);
                }
            } else {
                this.f2752a.m3802a(view, i, false);
                c0443o.f2778c = true;
                AbstractC0453y abstractC0453y = this.f2758g;
                if (abstractC0453y != null && abstractC0453y.m3645h()) {
                    this.f2758g.m3648k(view);
                }
            }
            if (c0443o.f2779d) {
                abstractC0431c0M3233f0.f2721a.invalidate();
                c0443o.f2779d = false;
            }
        }

        /* JADX INFO: renamed from: i0 */
        public static d m3465i0(Context context, AttributeSet attributeSet, int i, int i2) {
            d dVar = new d();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0649c.RecyclerView, i, i2);
            dVar.f2772a = typedArrayObtainStyledAttributes.getInt(C0649c.RecyclerView_android_orientation, 1);
            dVar.f2773b = typedArrayObtainStyledAttributes.getInt(C0649c.RecyclerView_spanCount, 1);
            dVar.f2774c = typedArrayObtainStyledAttributes.getBoolean(C0649c.RecyclerView_reverseLayout, false);
            dVar.f2775d = typedArrayObtainStyledAttributes.getBoolean(C0649c.RecyclerView_stackFromEnd, false);
            typedArrayObtainStyledAttributes.recycle();
            return dVar;
        }

        /* JADX INFO: renamed from: n */
        public static int m3466n(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            return mode != Integer.MIN_VALUE ? mode != 1073741824 ? Math.max(i2, i3) : size : Math.min(size, Math.max(i2, i3));
        }

        /* JADX INFO: renamed from: t0 */
        private boolean m3467t0(RecyclerView recyclerView, int i, int i2) {
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild == null) {
                return false;
            }
            int iM3523e0 = m3523e0();
            int iM3527g0 = m3527g0();
            int iM3544o0 = m3544o0() - m3525f0();
            int iM3508W = m3508W() - m3521d0();
            Rect rect = this.f2753b.f2677i;
            m3499P(focusedChild, rect);
            return rect.left - i < iM3544o0 && rect.right - i > iM3523e0 && rect.top - i2 < iM3508W && rect.bottom - i2 > iM3527g0;
        }

        /* JADX INFO: renamed from: v1 */
        private void m3468v1(C0449u c0449u, int i, View view) {
            AbstractC0431c0 abstractC0431c0M3233f0 = RecyclerView.m3233f0(view);
            if (abstractC0431c0M3233f0.m3357J()) {
                return;
            }
            if (abstractC0431c0M3233f0.m3378t() && !abstractC0431c0M3233f0.m3380v() && !this.f2753b.f2683l.m3411g()) {
                m3549q1(i);
                c0449u.m3600C(abstractC0431c0M3233f0);
            } else {
                m3558x(i);
                c0449u.m3601D(view);
                this.f2753b.f2673g.m3973k(abstractC0431c0M3233f0);
            }
        }

        /* JADX INFO: renamed from: w0 */
        private static boolean m3469w0(int i, int i2, int i3) {
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

        /* JADX INFO: renamed from: y */
        private void m3470y(int i, View view) {
            this.f2752a.m3805d(i);
        }

        /* JADX INFO: renamed from: A */
        void m3471A(RecyclerView recyclerView, C0449u c0449u) {
            this.f2760i = false;
            mo3163I0(recyclerView, c0449u);
        }

        /* JADX INFO: renamed from: A0 */
        public void m3472A0(View view, int i, int i2) {
            C0443o c0443o = (C0443o) view.getLayoutParams();
            Rect rectM3300j0 = this.f2753b.m3300j0(view);
            int i3 = i + rectM3300j0.left + rectM3300j0.right;
            int i4 = i2 + rectM3300j0.top + rectM3300j0.bottom;
            int iM3462K = m3462K(m3544o0(), m3546p0(), m3523e0() + m3525f0() + ((ViewGroup.MarginLayoutParams) c0443o).leftMargin + ((ViewGroup.MarginLayoutParams) c0443o).rightMargin + i3, ((ViewGroup.MarginLayoutParams) c0443o).width, mo3181k());
            int iM3462K2 = m3462K(m3508W(), m3509X(), m3527g0() + m3521d0() + ((ViewGroup.MarginLayoutParams) c0443o).topMargin + ((ViewGroup.MarginLayoutParams) c0443o).bottomMargin + i4, ((ViewGroup.MarginLayoutParams) c0443o).height, mo3182l());
            if (m3483F1(view, iM3462K, iM3462K2, c0443o)) {
                view.measure(iM3462K, iM3462K2);
            }
        }

        /* JADX INFO: renamed from: A1 */
        void m3473A1(int i, int i2) {
            this.f2768q = View.MeasureSpec.getSize(i);
            int mode = View.MeasureSpec.getMode(i);
            this.f2766o = mode;
            if (mode == 0 && !RecyclerView.f2631A0) {
                this.f2768q = 0;
            }
            this.f2769r = View.MeasureSpec.getSize(i2);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.f2767p = mode2;
            if (mode2 != 0 || RecyclerView.f2631A0) {
                return;
            }
            this.f2769r = 0;
        }

        /* JADX INFO: renamed from: B */
        public View m3474B(View view) {
            View viewM3275R;
            RecyclerView recyclerView = this.f2753b;
            if (recyclerView == null || (viewM3275R = recyclerView.m3275R(view)) == null || this.f2752a.m3813n(viewM3275R)) {
                return null;
            }
            return viewM3275R;
        }

        /* JADX INFO: renamed from: B0 */
        public void m3475B0(int i, int i2) {
            View viewM3489I = m3489I(i);
            if (viewM3489I != null) {
                m3558x(i);
                m3529h(viewM3489I, i2);
            } else {
                throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i + this.f2753b.toString());
            }
        }

        /* JADX INFO: renamed from: B1 */
        public void m3476B1(int i, int i2) {
            this.f2753b.setMeasuredDimension(i, i2);
        }

        /* JADX INFO: renamed from: C */
        public View mo3159C(int i) {
            int iM3490J = m3490J();
            for (int i2 = 0; i2 < iM3490J; i2++) {
                View viewM3489I = m3489I(i2);
                AbstractC0431c0 abstractC0431c0M3233f0 = RecyclerView.m3233f0(viewM3489I);
                if (abstractC0431c0M3233f0 != null && abstractC0431c0M3233f0.m3371m() == i && !abstractC0431c0M3233f0.m3357J() && (this.f2753b.f2676h0.m3665e() || !abstractC0431c0M3233f0.m3380v())) {
                    return viewM3489I;
                }
            }
            return null;
        }

        /* JADX INFO: renamed from: C0 */
        public void mo3477C0(int i) {
            RecyclerView recyclerView = this.f2753b;
            if (recyclerView != null) {
                recyclerView.m3332y0(i);
            }
        }

        /* JADX INFO: renamed from: C1 */
        public void mo3088C1(Rect rect, int i, int i2) {
            m3476B1(m3466n(i, rect.width() + m3523e0() + m3525f0(), m3519c0()), m3466n(i2, rect.height() + m3527g0() + m3521d0(), m3516b0()));
        }

        /* JADX INFO: renamed from: D */
        public abstract C0443o mo3089D();

        /* JADX INFO: renamed from: D0 */
        public void mo3478D0(int i) {
            RecyclerView recyclerView = this.f2753b;
            if (recyclerView != null) {
                recyclerView.m3334z0(i);
            }
        }

        /* JADX INFO: renamed from: D1 */
        void m3479D1(int i, int i2) {
            int iM3490J = m3490J();
            if (iM3490J == 0) {
                this.f2753b.m3328w(i, i2);
                return;
            }
            int i3 = Integer.MIN_VALUE;
            int i4 = Integer.MIN_VALUE;
            int i5 = Integer.MAX_VALUE;
            int i6 = Integer.MAX_VALUE;
            for (int i7 = 0; i7 < iM3490J; i7++) {
                View viewM3489I = m3489I(i7);
                Rect rect = this.f2753b.f2677i;
                m3499P(viewM3489I, rect);
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
            this.f2753b.f2677i.set(i5, i6, i3, i4);
            mo3088C1(this.f2753b.f2677i, i, i2);
        }

        /* JADX INFO: renamed from: E */
        public C0443o mo3090E(Context context, AttributeSet attributeSet) {
            return new C0443o(context, attributeSet);
        }

        /* JADX INFO: renamed from: E0 */
        public void m3480E0(AbstractC0434f abstractC0434f, AbstractC0434f abstractC0434f2) {
        }

        /* JADX INFO: renamed from: E1 */
        void m3481E1(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.f2753b = null;
                this.f2752a = null;
                this.f2768q = 0;
                this.f2769r = 0;
            } else {
                this.f2753b = recyclerView;
                this.f2752a = recyclerView.f2671f;
                this.f2768q = recyclerView.getWidth();
                this.f2769r = recyclerView.getHeight();
            }
            this.f2766o = 1073741824;
            this.f2767p = 1073741824;
        }

        /* JADX INFO: renamed from: F */
        public C0443o mo3092F(ViewGroup.LayoutParams layoutParams) {
            return layoutParams instanceof C0443o ? new C0443o((C0443o) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0443o((ViewGroup.MarginLayoutParams) layoutParams) : new C0443o(layoutParams);
        }

        /* JADX INFO: renamed from: F0 */
        public boolean m3482F0(RecyclerView recyclerView, ArrayList<View> arrayList, int i, int i2) {
            return false;
        }

        /* JADX INFO: renamed from: F1 */
        boolean m3483F1(View view, int i, int i2, C0443o c0443o) {
            return (!view.isLayoutRequested() && this.f2762k && m3469w0(view.getWidth(), i, ((ViewGroup.MarginLayoutParams) c0443o).width) && m3469w0(view.getHeight(), i2, ((ViewGroup.MarginLayoutParams) c0443o).height)) ? false : true;
        }

        /* JADX INFO: renamed from: G */
        public int m3484G() {
            return -1;
        }

        /* JADX INFO: renamed from: G0 */
        public void m3485G0(RecyclerView recyclerView) {
        }

        /* JADX INFO: renamed from: G1 */
        boolean mo3162G1() {
            return false;
        }

        /* JADX INFO: renamed from: H */
        public int m3486H(View view) {
            return ((C0443o) view.getLayoutParams()).f2777b.bottom;
        }

        @Deprecated
        /* JADX INFO: renamed from: H0 */
        public void m3487H0(RecyclerView recyclerView) {
        }

        /* JADX INFO: renamed from: H1 */
        boolean m3488H1(View view, int i, int i2, C0443o c0443o) {
            return (this.f2762k && m3469w0(view.getMeasuredWidth(), i, ((ViewGroup.MarginLayoutParams) c0443o).width) && m3469w0(view.getMeasuredHeight(), i2, ((ViewGroup.MarginLayoutParams) c0443o).height)) ? false : true;
        }

        /* JADX INFO: renamed from: I */
        public View m3489I(int i) {
            C0462b c0462b = this.f2752a;
            if (c0462b != null) {
                return c0462b.m3807f(i);
            }
            return null;
        }

        /* JADX INFO: renamed from: I0 */
        public void mo3163I0(RecyclerView recyclerView, C0449u c0449u) {
            m3487H0(recyclerView);
        }

        /* JADX INFO: renamed from: I1 */
        public void mo3164I1(RecyclerView recyclerView, C0454z c0454z, int i) {
        }

        /* JADX INFO: renamed from: J */
        public int m3490J() {
            C0462b c0462b = this.f2752a;
            if (c0462b != null) {
                return c0462b.m3808g();
            }
            return 0;
        }

        /* JADX INFO: renamed from: J0 */
        public View mo3093J0(View view, int i, C0449u c0449u, C0454z c0454z) {
            return null;
        }

        /* JADX INFO: renamed from: J1 */
        public void m3491J1(AbstractC0453y abstractC0453y) {
            AbstractC0453y abstractC0453y2 = this.f2758g;
            if (abstractC0453y2 != null && abstractC0453y != abstractC0453y2 && abstractC0453y2.m3645h()) {
                this.f2758g.m3655r();
            }
            this.f2758g = abstractC0453y;
            abstractC0453y.m3654q(this.f2753b, this);
        }

        /* JADX INFO: renamed from: K0 */
        public void mo3165K0(AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.f2753b;
            m3493L0(recyclerView.f2665c, recyclerView.f2676h0, accessibilityEvent);
        }

        /* JADX INFO: renamed from: K1 */
        void m3492K1() {
            AbstractC0453y abstractC0453y = this.f2758g;
            if (abstractC0453y != null) {
                abstractC0453y.m3655r();
            }
        }

        /* JADX INFO: renamed from: L0 */
        public void m3493L0(C0449u c0449u, C0454z c0454z, AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.f2753b;
            if (recyclerView == null || accessibilityEvent == null) {
                return;
            }
            boolean z = true;
            if (!recyclerView.canScrollVertically(1) && !this.f2753b.canScrollVertically(-1) && !this.f2753b.canScrollHorizontally(-1) && !this.f2753b.canScrollHorizontally(1)) {
                z = false;
            }
            accessibilityEvent.setScrollable(z);
            AbstractC0434f abstractC0434f = this.f2753b.f2683l;
            if (abstractC0434f != null) {
                accessibilityEvent.setItemCount(abstractC0434f.mo3407c());
            }
        }

        /* JADX INFO: renamed from: L1 */
        public boolean mo3094L1() {
            return false;
        }

        /* JADX INFO: renamed from: M */
        public boolean m3494M() {
            RecyclerView recyclerView = this.f2753b;
            return recyclerView != null && recyclerView.f2675h;
        }

        /* JADX INFO: renamed from: M0 */
        void m3495M0(C0269c c0269c) {
            RecyclerView recyclerView = this.f2753b;
            m3496N0(recyclerView.f2665c, recyclerView.f2676h0, c0269c);
        }

        /* JADX INFO: renamed from: N */
        public int mo3095N(C0449u c0449u, C0454z c0454z) {
            RecyclerView recyclerView = this.f2753b;
            if (recyclerView == null || recyclerView.f2683l == null || !mo3181k()) {
                return 1;
            }
            return this.f2753b.f2683l.mo3407c();
        }

        /* JADX INFO: renamed from: N0 */
        public void m3496N0(C0449u c0449u, C0454z c0454z, C0269c c0269c) {
            if (this.f2753b.canScrollVertically(-1) || this.f2753b.canScrollHorizontally(-1)) {
                c0269c.m1923a(8192);
                c0269c.m1945n0(true);
            }
            if (this.f2753b.canScrollVertically(1) || this.f2753b.canScrollHorizontally(1)) {
                c0269c.m1923a(4096);
                c0269c.m1945n0(true);
            }
            c0269c.m1921Y(C0269c.b.m1964a(mo3109k0(c0449u, c0454z), mo3095N(c0449u, c0454z), m3556v0(c0449u, c0454z), m3538l0(c0449u, c0454z)));
        }

        /* JADX INFO: renamed from: O */
        public int m3497O(View view) {
            return view.getBottom() + m3486H(view);
        }

        /* JADX INFO: renamed from: O0 */
        void m3498O0(View view, C0269c c0269c) {
            AbstractC0431c0 abstractC0431c0M3233f0 = RecyclerView.m3233f0(view);
            if (abstractC0431c0M3233f0 == null || abstractC0431c0M3233f0.m3380v() || this.f2752a.m3813n(abstractC0431c0M3233f0.f2721a)) {
                return;
            }
            RecyclerView recyclerView = this.f2753b;
            mo3097P0(recyclerView.f2665c, recyclerView.f2676h0, view, c0269c);
        }

        /* JADX INFO: renamed from: P */
        public void m3499P(View view, Rect rect) {
            RecyclerView.m3235g0(view, rect);
        }

        /* JADX INFO: renamed from: P0 */
        public void mo3097P0(C0449u c0449u, C0454z c0454z, View view, C0269c c0269c) {
            c0269c.m1922Z(C0269c.c.m1965a(mo3182l() ? m3530h0(view) : 0, 1, mo3181k() ? m3530h0(view) : 0, 1, false, false));
        }

        /* JADX INFO: renamed from: Q */
        public int m3500Q(View view) {
            return view.getLeft() - m3513a0(view);
        }

        /* JADX INFO: renamed from: Q0 */
        public View m3501Q0(View view, int i) {
            return null;
        }

        /* JADX INFO: renamed from: R */
        public int m3502R(View view) {
            Rect rect = ((C0443o) view.getLayoutParams()).f2777b;
            return view.getMeasuredHeight() + rect.top + rect.bottom;
        }

        /* JADX INFO: renamed from: R0 */
        public void mo3098R0(RecyclerView recyclerView, int i, int i2) {
        }

        /* JADX INFO: renamed from: S */
        public int m3503S(View view) {
            Rect rect = ((C0443o) view.getLayoutParams()).f2777b;
            return view.getMeasuredWidth() + rect.left + rect.right;
        }

        /* JADX INFO: renamed from: S0 */
        public void mo3099S0(RecyclerView recyclerView) {
        }

        /* JADX INFO: renamed from: T */
        public int m3504T(View view) {
            return view.getRight() + m3535j0(view);
        }

        /* JADX INFO: renamed from: T0 */
        public void mo3100T0(RecyclerView recyclerView, int i, int i2, int i3) {
        }

        /* JADX INFO: renamed from: U */
        public int m3505U(View view) {
            return view.getTop() - m3540m0(view);
        }

        /* JADX INFO: renamed from: U0 */
        public void mo3101U0(RecyclerView recyclerView, int i, int i2) {
        }

        /* JADX INFO: renamed from: V */
        public View m3506V() {
            View focusedChild;
            RecyclerView recyclerView = this.f2753b;
            if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.f2752a.m3813n(focusedChild)) {
                return null;
            }
            return focusedChild;
        }

        /* JADX INFO: renamed from: V0 */
        public void m3507V0(RecyclerView recyclerView, int i, int i2) {
        }

        /* JADX INFO: renamed from: W */
        public int m3508W() {
            return this.f2769r;
        }

        /* JADX INFO: renamed from: W0 */
        public void mo3102W0(RecyclerView recyclerView, int i, int i2, Object obj) {
            m3507V0(recyclerView, i, i2);
        }

        /* JADX INFO: renamed from: X */
        public int m3509X() {
            return this.f2767p;
        }

        /* JADX INFO: renamed from: X0 */
        public void mo3104X0(C0449u c0449u, C0454z c0454z) {
        }

        /* JADX INFO: renamed from: Y */
        public int m3510Y() {
            RecyclerView recyclerView = this.f2753b;
            AbstractC0434f adapter = recyclerView != null ? recyclerView.getAdapter() : null;
            if (adapter != null) {
                return adapter.mo3407c();
            }
            return 0;
        }

        /* JADX INFO: renamed from: Y0 */
        public void mo3106Y0(C0454z c0454z) {
        }

        /* JADX INFO: renamed from: Z */
        public int m3511Z() {
            return C0292v.m2046C(this.f2753b);
        }

        /* JADX INFO: renamed from: Z0 */
        public void m3512Z0(C0449u c0449u, C0454z c0454z, int i, int i2) {
            this.f2753b.m3328w(i, i2);
        }

        /* JADX INFO: renamed from: a0 */
        public int m3513a0(View view) {
            return ((C0443o) view.getLayoutParams()).f2777b.left;
        }

        @Deprecated
        /* JADX INFO: renamed from: a1 */
        public boolean m3514a1(RecyclerView recyclerView, View view, View view2) {
            return m3559x0() || recyclerView.m3323t0();
        }

        /* JADX INFO: renamed from: b */
        public void m3515b(View view) {
            m3518c(view, -1);
        }

        /* JADX INFO: renamed from: b0 */
        public int m3516b0() {
            return C0292v.m2048D(this.f2753b);
        }

        /* JADX INFO: renamed from: b1 */
        public boolean m3517b1(RecyclerView recyclerView, C0454z c0454z, View view, View view2) {
            return m3514a1(recyclerView, view, view2);
        }

        /* JADX INFO: renamed from: c */
        public void m3518c(View view, int i) {
            m3464f(view, i, true);
        }

        /* JADX INFO: renamed from: c0 */
        public int m3519c0() {
            return C0292v.m2050E(this.f2753b);
        }

        /* JADX INFO: renamed from: c1 */
        public void mo3175c1(Parcelable parcelable) {
        }

        /* JADX INFO: renamed from: d */
        public void m3520d(View view) {
            m3522e(view, -1);
        }

        /* JADX INFO: renamed from: d0 */
        public int m3521d0() {
            RecyclerView recyclerView = this.f2753b;
            if (recyclerView != null) {
                return recyclerView.getPaddingBottom();
            }
            return 0;
        }

        /* JADX INFO: renamed from: d1 */
        public Parcelable mo3177d1() {
            return null;
        }

        /* JADX INFO: renamed from: e */
        public void m3522e(View view, int i) {
            m3464f(view, i, false);
        }

        /* JADX INFO: renamed from: e0 */
        public int m3523e0() {
            RecyclerView recyclerView = this.f2753b;
            if (recyclerView != null) {
                return recyclerView.getPaddingLeft();
            }
            return 0;
        }

        /* JADX INFO: renamed from: e1 */
        public void mo3524e1(int i) {
        }

        /* JADX INFO: renamed from: f0 */
        public int m3525f0() {
            RecyclerView recyclerView = this.f2753b;
            if (recyclerView != null) {
                return recyclerView.getPaddingRight();
            }
            return 0;
        }

        /* JADX INFO: renamed from: f1 */
        void m3526f1(AbstractC0453y abstractC0453y) {
            if (this.f2758g == abstractC0453y) {
                this.f2758g = null;
            }
        }

        /* JADX INFO: renamed from: g */
        public void mo3180g(String str) {
            RecyclerView recyclerView = this.f2753b;
            if (recyclerView != null) {
                recyclerView.m3311o(str);
            }
        }

        /* JADX INFO: renamed from: g0 */
        public int m3527g0() {
            RecyclerView recyclerView = this.f2753b;
            if (recyclerView != null) {
                return recyclerView.getPaddingTop();
            }
            return 0;
        }

        /* JADX INFO: renamed from: g1 */
        boolean m3528g1(int i, Bundle bundle) {
            RecyclerView recyclerView = this.f2753b;
            return m3531h1(recyclerView.f2665c, recyclerView.f2676h0, i, bundle);
        }

        /* JADX INFO: renamed from: h */
        public void m3529h(View view, int i) {
            m3532i(view, i, (C0443o) view.getLayoutParams());
        }

        /* JADX INFO: renamed from: h0 */
        public int m3530h0(View view) {
            return ((C0443o) view.getLayoutParams()).m3570a();
        }

        /* JADX INFO: renamed from: h1 */
        public boolean m3531h1(C0449u c0449u, C0454z c0454z, int i, Bundle bundle) {
            int iM3508W;
            int iM3544o0;
            int i2;
            int i3;
            RecyclerView recyclerView = this.f2753b;
            if (recyclerView == null) {
                return false;
            }
            if (i == 4096) {
                iM3508W = recyclerView.canScrollVertically(1) ? (m3508W() - m3527g0()) - m3521d0() : 0;
                if (this.f2753b.canScrollHorizontally(1)) {
                    iM3544o0 = (m3544o0() - m3523e0()) - m3525f0();
                    i2 = iM3508W;
                    i3 = iM3544o0;
                }
                i2 = iM3508W;
                i3 = 0;
            } else if (i != 8192) {
                i3 = 0;
                i2 = 0;
            } else {
                iM3508W = recyclerView.canScrollVertically(-1) ? -((m3508W() - m3527g0()) - m3521d0()) : 0;
                if (this.f2753b.canScrollHorizontally(-1)) {
                    iM3544o0 = -((m3544o0() - m3523e0()) - m3525f0());
                    i2 = iM3508W;
                    i3 = iM3544o0;
                }
                i2 = iM3508W;
                i3 = 0;
            }
            if (i2 == 0 && i3 == 0) {
                return false;
            }
            this.f2753b.m3310n1(i3, i2, null, Integer.MIN_VALUE, true);
            return true;
        }

        /* JADX INFO: renamed from: i */
        public void m3532i(View view, int i, C0443o c0443o) {
            AbstractC0431c0 abstractC0431c0M3233f0 = RecyclerView.m3233f0(view);
            if (abstractC0431c0M3233f0.m3380v()) {
                this.f2753b.f2673g.m3964b(abstractC0431c0M3233f0);
            } else {
                this.f2753b.f2673g.m3977p(abstractC0431c0M3233f0);
            }
            this.f2752a.m3804c(view, i, c0443o, abstractC0431c0M3233f0.m3380v());
        }

        /* JADX INFO: renamed from: i1 */
        boolean m3533i1(View view, int i, Bundle bundle) {
            RecyclerView recyclerView = this.f2753b;
            return m3536j1(recyclerView.f2665c, recyclerView.f2676h0, view, i, bundle);
        }

        /* JADX INFO: renamed from: j */
        public void m3534j(View view, Rect rect) {
            RecyclerView recyclerView = this.f2753b;
            if (recyclerView == null) {
                rect.set(0, 0, 0, 0);
            } else {
                rect.set(recyclerView.m3300j0(view));
            }
        }

        /* JADX INFO: renamed from: j0 */
        public int m3535j0(View view) {
            return ((C0443o) view.getLayoutParams()).f2777b.right;
        }

        /* JADX INFO: renamed from: j1 */
        public boolean m3536j1(C0449u c0449u, C0454z c0454z, View view, int i, Bundle bundle) {
            return false;
        }

        /* JADX INFO: renamed from: k */
        public boolean mo3181k() {
            return false;
        }

        /* JADX INFO: renamed from: k0 */
        public int mo3109k0(C0449u c0449u, C0454z c0454z) {
            RecyclerView recyclerView = this.f2753b;
            if (recyclerView == null || recyclerView.f2683l == null || !mo3182l()) {
                return 1;
            }
            return this.f2753b.f2683l.mo3407c();
        }

        /* JADX INFO: renamed from: k1 */
        public void m3537k1(C0449u c0449u) {
            for (int iM3490J = m3490J() - 1; iM3490J >= 0; iM3490J--) {
                if (!RecyclerView.m3233f0(m3489I(iM3490J)).m3357J()) {
                    m3543n1(iM3490J, c0449u);
                }
            }
        }

        /* JADX INFO: renamed from: l */
        public boolean mo3182l() {
            return false;
        }

        /* JADX INFO: renamed from: l0 */
        public int m3538l0(C0449u c0449u, C0454z c0454z) {
            return 0;
        }

        /* JADX INFO: renamed from: l1 */
        void m3539l1(C0449u c0449u) {
            int iM3618j = c0449u.m3618j();
            for (int i = iM3618j - 1; i >= 0; i--) {
                View viewM3622n = c0449u.m3622n(i);
                AbstractC0431c0 abstractC0431c0M3233f0 = RecyclerView.m3233f0(viewM3622n);
                if (!abstractC0431c0M3233f0.m3357J()) {
                    abstractC0431c0M3233f0.m3354G(false);
                    if (abstractC0431c0M3233f0.m3382x()) {
                        this.f2753b.removeDetachedView(viewM3622n, false);
                    }
                    AbstractC0439k abstractC0439k = this.f2753b.f2651M;
                    if (abstractC0439k != null) {
                        abstractC0439k.mo3439j(abstractC0431c0M3233f0);
                    }
                    abstractC0431c0M3233f0.m3354G(true);
                    c0449u.m3631y(viewM3622n);
                }
            }
            c0449u.m3613e();
            if (iM3618j > 0) {
                this.f2753b.invalidate();
            }
        }

        /* JADX INFO: renamed from: m */
        public boolean mo3110m(C0443o c0443o) {
            return c0443o != null;
        }

        /* JADX INFO: renamed from: m0 */
        public int m3540m0(View view) {
            return ((C0443o) view.getLayoutParams()).f2777b.top;
        }

        /* JADX INFO: renamed from: m1 */
        public void m3541m1(View view, C0449u c0449u) {
            m3547p1(view);
            c0449u.m3599B(view);
        }

        /* JADX INFO: renamed from: n0 */
        public void m3542n0(View view, boolean z, Rect rect) {
            Matrix matrix;
            if (z) {
                Rect rect2 = ((C0443o) view.getLayoutParams()).f2777b;
                rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            } else {
                rect.set(0, 0, view.getWidth(), view.getHeight());
            }
            if (this.f2753b != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
                RectF rectF = this.f2753b.f2681k;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        /* JADX INFO: renamed from: n1 */
        public void m3543n1(int i, C0449u c0449u) {
            View viewM3489I = m3489I(i);
            m3549q1(i);
            c0449u.m3599B(viewM3489I);
        }

        /* JADX INFO: renamed from: o */
        public void mo3183o(int i, int i2, C0454z c0454z, c cVar) {
        }

        /* JADX INFO: renamed from: o0 */
        public int m3544o0() {
            return this.f2768q;
        }

        /* JADX INFO: renamed from: o1 */
        public boolean m3545o1(Runnable runnable) {
            RecyclerView recyclerView = this.f2753b;
            if (recyclerView != null) {
                return recyclerView.removeCallbacks(runnable);
            }
            return false;
        }

        /* JADX INFO: renamed from: p */
        public void mo3185p(int i, c cVar) {
        }

        /* JADX INFO: renamed from: p0 */
        public int m3546p0() {
            return this.f2766o;
        }

        /* JADX INFO: renamed from: p1 */
        public void m3547p1(View view) {
            this.f2752a.m3815p(view);
        }

        /* JADX INFO: renamed from: q */
        public int mo3187q(C0454z c0454z) {
            return 0;
        }

        /* JADX INFO: renamed from: q0 */
        boolean m3548q0() {
            int iM3490J = m3490J();
            for (int i = 0; i < iM3490J; i++) {
                ViewGroup.LayoutParams layoutParams = m3489I(i).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: renamed from: q1 */
        public void m3549q1(int i) {
            if (m3489I(i) != null) {
                this.f2752a.m3816q(i);
            }
        }

        /* JADX INFO: renamed from: r */
        public int mo3111r(C0454z c0454z) {
            return 0;
        }

        /* JADX INFO: renamed from: r0 */
        public boolean m3550r0() {
            return this.f2760i;
        }

        /* JADX INFO: renamed from: r1 */
        public boolean m3551r1(RecyclerView recyclerView, View view, Rect rect, boolean z) {
            return m3552s1(recyclerView, view, rect, z, false);
        }

        /* JADX INFO: renamed from: s */
        public int mo3112s(C0454z c0454z) {
            return 0;
        }

        /* JADX INFO: renamed from: s0 */
        public boolean mo3190s0() {
            return this.f2761j;
        }

        /* JADX INFO: renamed from: s1 */
        public boolean m3552s1(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
            int[] iArrM3463L = m3463L(view, rect);
            int i = iArrM3463L[0];
            int i2 = iArrM3463L[1];
            if ((z2 && !m3467t0(recyclerView, i, i2)) || (i == 0 && i2 == 0)) {
                return false;
            }
            if (z) {
                recyclerView.scrollBy(i, i2);
            } else {
                recyclerView.m3303k1(i, i2);
            }
            return true;
        }

        /* JADX INFO: renamed from: t */
        public int mo3191t(C0454z c0454z) {
            return 0;
        }

        /* JADX INFO: renamed from: t1 */
        public void m3553t1() {
            RecyclerView recyclerView = this.f2753b;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }

        /* JADX INFO: renamed from: u */
        public int mo3114u(C0454z c0454z) {
            return 0;
        }

        /* JADX INFO: renamed from: u0 */
        public final boolean m3554u0() {
            return this.f2763l;
        }

        /* JADX INFO: renamed from: u1 */
        public void m3555u1() {
            this.f2759h = true;
        }

        /* JADX INFO: renamed from: v */
        public int mo3116v(C0454z c0454z) {
            return 0;
        }

        /* JADX INFO: renamed from: v0 */
        public boolean m3556v0(C0449u c0449u, C0454z c0454z) {
            return false;
        }

        /* JADX INFO: renamed from: w */
        public void m3557w(C0449u c0449u) {
            for (int iM3490J = m3490J() - 1; iM3490J >= 0; iM3490J--) {
                m3468v1(c0449u, iM3490J, m3489I(iM3490J));
            }
        }

        /* JADX INFO: renamed from: w1 */
        public int mo3117w1(int i, C0449u c0449u, C0454z c0454z) {
            return 0;
        }

        /* JADX INFO: renamed from: x */
        public void m3558x(int i) {
            m3470y(i, m3489I(i));
        }

        /* JADX INFO: renamed from: x0 */
        public boolean m3559x0() {
            AbstractC0453y abstractC0453y = this.f2758g;
            return abstractC0453y != null && abstractC0453y.m3645h();
        }

        /* JADX INFO: renamed from: x1 */
        public void mo3192x1(int i) {
        }

        /* JADX INFO: renamed from: y0 */
        public boolean m3560y0(View view, boolean z, boolean z2) {
            boolean z3 = this.f2756e.m3956b(view, 24579) && this.f2757f.m3956b(view, 24579);
            return z ? z3 : !z3;
        }

        /* JADX INFO: renamed from: y1 */
        public int mo3118y1(int i, C0449u c0449u, C0454z c0454z) {
            return 0;
        }

        /* JADX INFO: renamed from: z */
        void m3561z(RecyclerView recyclerView) {
            this.f2760i = true;
            m3485G0(recyclerView);
        }

        /* JADX INFO: renamed from: z0 */
        public void m3562z0(View view, int i, int i2, int i3, int i4) {
            C0443o c0443o = (C0443o) view.getLayoutParams();
            Rect rect = c0443o.f2777b;
            view.layout(i + rect.left + ((ViewGroup.MarginLayoutParams) c0443o).leftMargin, i2 + rect.top + ((ViewGroup.MarginLayoutParams) c0443o).topMargin, (i3 - rect.right) - ((ViewGroup.MarginLayoutParams) c0443o).rightMargin, (i4 - rect.bottom) - ((ViewGroup.MarginLayoutParams) c0443o).bottomMargin);
        }

        /* JADX INFO: renamed from: z1 */
        void m3563z1(RecyclerView recyclerView) {
            m3473A1(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$p */
    public interface InterfaceC0444p {
        /* JADX INFO: renamed from: a */
        void m3574a(View view);

        /* JADX INFO: renamed from: b */
        void m3575b(View view);
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$q */
    public static abstract class AbstractC0445q {
        /* JADX INFO: renamed from: a */
        public abstract boolean mo3576a(int i, int i2);
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$r */
    public interface InterfaceC0446r {
        /* JADX INFO: renamed from: a */
        boolean mo3577a(RecyclerView recyclerView, MotionEvent motionEvent);

        /* JADX INFO: renamed from: b */
        void mo3578b(RecyclerView recyclerView, MotionEvent motionEvent);

        /* JADX INFO: renamed from: c */
        void mo3579c(boolean z);
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$s */
    public static abstract class AbstractC0447s {
        /* JADX INFO: renamed from: a */
        public void mo3580a(RecyclerView recyclerView, int i) {
        }

        /* JADX INFO: renamed from: b */
        public void mo3581b(RecyclerView recyclerView, int i, int i2) {
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$t */
    public static class C0448t {

        /* JADX INFO: renamed from: a */
        SparseArray<a> f2780a = new SparseArray<>();

        /* JADX INFO: renamed from: b */
        private int f2781b = 0;

        /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$t$a */
        static class a {

            /* JADX INFO: renamed from: a */
            final ArrayList<AbstractC0431c0> f2782a = new ArrayList<>();

            /* JADX INFO: renamed from: b */
            int f2783b = 5;

            /* JADX INFO: renamed from: c */
            long f2784c = 0;

            /* JADX INFO: renamed from: d */
            long f2785d = 0;

            a() {
            }
        }

        /* JADX INFO: renamed from: g */
        private a m3582g(int i) {
            a aVar = this.f2780a.get(i);
            if (aVar != null) {
                return aVar;
            }
            a aVar2 = new a();
            this.f2780a.put(i, aVar2);
            return aVar2;
        }

        /* JADX INFO: renamed from: a */
        void m3583a() {
            this.f2781b++;
        }

        /* JADX INFO: renamed from: b */
        public void m3584b() {
            for (int i = 0; i < this.f2780a.size(); i++) {
                this.f2780a.valueAt(i).f2782a.clear();
            }
        }

        /* JADX INFO: renamed from: c */
        void m3585c() {
            this.f2781b--;
        }

        /* JADX INFO: renamed from: d */
        void m3586d(int i, long j) {
            a aVarM3582g = m3582g(i);
            aVarM3582g.f2785d = m3591j(aVarM3582g.f2785d, j);
        }

        /* JADX INFO: renamed from: e */
        void m3587e(int i, long j) {
            a aVarM3582g = m3582g(i);
            aVarM3582g.f2784c = m3591j(aVarM3582g.f2784c, j);
        }

        /* JADX INFO: renamed from: f */
        public AbstractC0431c0 m3588f(int i) {
            a aVar = this.f2780a.get(i);
            if (aVar == null || aVar.f2782a.isEmpty()) {
                return null;
            }
            ArrayList<AbstractC0431c0> arrayList = aVar.f2782a;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (!arrayList.get(size).m3376r()) {
                    return arrayList.remove(size);
                }
            }
            return null;
        }

        /* JADX INFO: renamed from: h */
        void m3589h(AbstractC0434f abstractC0434f, AbstractC0434f abstractC0434f2, boolean z) {
            if (abstractC0434f != null) {
                m3585c();
            }
            if (!z && this.f2781b == 0) {
                m3584b();
            }
            if (abstractC0434f2 != null) {
                m3583a();
            }
        }

        /* JADX INFO: renamed from: i */
        public void m3590i(AbstractC0431c0 abstractC0431c0) {
            int iM3370l = abstractC0431c0.m3370l();
            ArrayList<AbstractC0431c0> arrayList = m3582g(iM3370l).f2782a;
            if (this.f2780a.get(iM3370l).f2783b <= arrayList.size()) {
                return;
            }
            abstractC0431c0.m3351D();
            arrayList.add(abstractC0431c0);
        }

        /* JADX INFO: renamed from: j */
        long m3591j(long j, long j2) {
            return j == 0 ? j2 : ((j / 4) * 3) + (j2 / 4);
        }

        /* JADX INFO: renamed from: k */
        boolean m3592k(int i, long j, long j2) {
            long j3 = m3582g(i).f2785d;
            return j3 == 0 || j + j3 < j2;
        }

        /* JADX INFO: renamed from: l */
        boolean m3593l(int i, long j, long j2) {
            long j3 = m3582g(i).f2784c;
            return j3 == 0 || j + j3 < j2;
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$u */
    public final class C0449u {

        /* JADX INFO: renamed from: a */
        final ArrayList<AbstractC0431c0> f2786a = new ArrayList<>();

        /* JADX INFO: renamed from: b */
        ArrayList<AbstractC0431c0> f2787b = null;

        /* JADX INFO: renamed from: c */
        final ArrayList<AbstractC0431c0> f2788c = new ArrayList<>();

        /* JADX INFO: renamed from: d */
        private final List<AbstractC0431c0> f2789d = Collections.unmodifiableList(this.f2786a);

        /* JADX INFO: renamed from: e */
        private int f2790e = 2;

        /* JADX INFO: renamed from: f */
        int f2791f = 2;

        /* JADX INFO: renamed from: g */
        C0448t f2792g;

        /* JADX INFO: renamed from: h */
        private AbstractC0427a0 f2793h;

        public C0449u() {
        }

        /* JADX INFO: renamed from: H */
        private boolean m3594H(AbstractC0431c0 abstractC0431c0, int i, int i2, long j) {
            abstractC0431c0.f2738r = RecyclerView.this;
            int iM3370l = abstractC0431c0.m3370l();
            long nanoTime = RecyclerView.this.getNanoTime();
            if (j != Long.MAX_VALUE && !this.f2792g.m3592k(iM3370l, nanoTime, j)) {
                return false;
            }
            RecyclerView.this.f2683l.m3405a(abstractC0431c0, i);
            this.f2792g.m3586d(abstractC0431c0.m3370l(), RecyclerView.this.getNanoTime() - nanoTime);
            m3595b(abstractC0431c0);
            if (!RecyclerView.this.f2676h0.m3665e()) {
                return true;
            }
            abstractC0431c0.f2727g = i2;
            return true;
        }

        /* JADX INFO: renamed from: b */
        private void m3595b(AbstractC0431c0 abstractC0431c0) {
            if (RecyclerView.this.m3320s0()) {
                View view = abstractC0431c0.f2721a;
                if (C0292v.m2042A(view) == 0) {
                    C0292v.m2123x0(view, 1);
                }
                C0471k c0471k = RecyclerView.this.f2690o0;
                if (c0471k == null) {
                    return;
                }
                C0258a c0258aM3926n = c0471k.m3926n();
                if (c0258aM3926n instanceof C0471k.a) {
                    ((C0471k.a) c0258aM3926n).m3929o(view);
                }
                C0292v.m2105o0(view, c0258aM3926n);
            }
        }

        /* JADX INFO: renamed from: q */
        private void m3596q(ViewGroup viewGroup, boolean z) {
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (childAt instanceof ViewGroup) {
                    m3596q((ViewGroup) childAt, true);
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

        /* JADX INFO: renamed from: r */
        private void m3597r(AbstractC0431c0 abstractC0431c0) {
            View view = abstractC0431c0.f2721a;
            if (view instanceof ViewGroup) {
                m3596q((ViewGroup) view, false);
            }
        }

        /* JADX INFO: renamed from: A */
        void m3598A(int i) {
            m3610a(this.f2788c.get(i), true);
            this.f2788c.remove(i);
        }

        /* JADX INFO: renamed from: B */
        public void m3599B(View view) {
            AbstractC0431c0 abstractC0431c0M3233f0 = RecyclerView.m3233f0(view);
            if (abstractC0431c0M3233f0.m3382x()) {
                RecyclerView.this.removeDetachedView(view, false);
            }
            if (abstractC0431c0M3233f0.m3381w()) {
                abstractC0431c0M3233f0.m3358K();
            } else if (abstractC0431c0M3233f0.m3359L()) {
                abstractC0431c0M3233f0.m3364e();
            }
            m3600C(abstractC0431c0M3233f0);
            if (RecyclerView.this.f2651M == null || abstractC0431c0M3233f0.m3379u()) {
                return;
            }
            RecyclerView.this.f2651M.mo3439j(abstractC0431c0M3233f0);
        }

        /* JADX INFO: renamed from: C */
        void m3600C(AbstractC0431c0 abstractC0431c0) {
            boolean z;
            boolean z2 = true;
            if (abstractC0431c0.m3381w() || abstractC0431c0.f2721a.getParent() != null) {
                StringBuilder sb = new StringBuilder();
                sb.append("Scrapped or attached views may not be recycled. isScrap:");
                sb.append(abstractC0431c0.m3381w());
                sb.append(" isAttached:");
                sb.append(abstractC0431c0.f2721a.getParent() != null);
                sb.append(RecyclerView.this.m3272P());
                throw new IllegalArgumentException(sb.toString());
            }
            if (abstractC0431c0.m3382x()) {
                throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + abstractC0431c0 + RecyclerView.this.m3272P());
            }
            if (abstractC0431c0.m3357J()) {
                throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle." + RecyclerView.this.m3272P());
            }
            boolean zM3366h = abstractC0431c0.m3366h();
            AbstractC0434f abstractC0434f = RecyclerView.this.f2683l;
            if ((abstractC0434f != null && zM3366h && abstractC0434f.m3418n(abstractC0431c0)) || abstractC0431c0.m3379u()) {
                if (this.f2791f <= 0 || abstractC0431c0.m3374p(526)) {
                    z = false;
                } else {
                    int size = this.f2788c.size();
                    if (size >= this.f2791f && size > 0) {
                        m3598A(0);
                        size--;
                    }
                    if (RecyclerView.f2632B0 && size > 0 && !RecyclerView.this.f2674g0.m3874d(abstractC0431c0.f2723c)) {
                        int i = size - 1;
                        while (i >= 0) {
                            if (!RecyclerView.this.f2674g0.m3874d(this.f2788c.get(i).f2723c)) {
                                break;
                            } else {
                                i--;
                            }
                        }
                        size = i + 1;
                    }
                    this.f2788c.add(size, abstractC0431c0);
                    z = true;
                }
                if (z) {
                    z = z;
                    z2 = false;
                } else {
                    m3610a(abstractC0431c0, true);
                    z = z;
                }
            } else {
                z2 = false;
            }
            RecyclerView.this.f2673g.m3978q(abstractC0431c0);
            if (z || z2 || !zM3366h) {
                return;
            }
            abstractC0431c0.f2738r = null;
        }

        /* JADX INFO: renamed from: D */
        void m3601D(View view) {
            AbstractC0431c0 abstractC0431c0M3233f0 = RecyclerView.m3233f0(view);
            if (!abstractC0431c0M3233f0.m3374p(12) && abstractC0431c0M3233f0.m3383y() && !RecyclerView.this.m3313p(abstractC0431c0M3233f0)) {
                if (this.f2787b == null) {
                    this.f2787b = new ArrayList<>();
                }
                abstractC0431c0M3233f0.m3355H(this, true);
                this.f2787b.add(abstractC0431c0M3233f0);
                return;
            }
            if (!abstractC0431c0M3233f0.m3378t() || abstractC0431c0M3233f0.m3380v() || RecyclerView.this.f2683l.m3411g()) {
                abstractC0431c0M3233f0.m3355H(this, false);
                this.f2786a.add(abstractC0431c0M3233f0);
            } else {
                throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + RecyclerView.this.m3272P());
            }
        }

        /* JADX INFO: renamed from: E */
        void m3602E(C0448t c0448t) {
            C0448t c0448t2 = this.f2792g;
            if (c0448t2 != null) {
                c0448t2.m3585c();
            }
            this.f2792g = c0448t;
            if (c0448t == null || RecyclerView.this.getAdapter() == null) {
                return;
            }
            this.f2792g.m3583a();
        }

        /* JADX INFO: renamed from: F */
        void m3603F(AbstractC0427a0 abstractC0427a0) {
            this.f2793h = abstractC0427a0;
        }

        /* JADX INFO: renamed from: G */
        public void m3604G(int i) {
            this.f2790e = i;
            m3607K();
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
        /* JADX INFO: renamed from: I */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        AbstractC0431c0 m3605I(int i, boolean z, long j) {
            AbstractC0431c0 abstractC0431c0M3292e0;
            AbstractC0431c0 abstractC0431c0;
            boolean z2;
            ViewGroup.LayoutParams layoutParams;
            C0443o c0443o;
            RecyclerView recyclerViewM3223V;
            AbstractC0427a0 abstractC0427a0;
            View viewM3335a;
            if (i < 0 || i >= RecyclerView.this.f2676h0.m3662b()) {
                throw new IndexOutOfBoundsException("Invalid item position " + i + "(" + i + "). Item count:" + RecyclerView.this.f2676h0.m3662b() + RecyclerView.this.m3272P());
            }
            if (RecyclerView.this.f2676h0.m3665e()) {
                abstractC0431c0M3292e0 = m3616h(i);
                boolean z3 = abstractC0431c0M3292e0 != null;
                if (abstractC0431c0M3292e0 == null && (abstractC0431c0M3292e0 = m3621m(i, z)) != null) {
                    if (m3608L(abstractC0431c0M3292e0)) {
                        if (!z) {
                            abstractC0431c0M3292e0.m3361b(4);
                            if (abstractC0431c0M3292e0.m3381w()) {
                                RecyclerView.this.removeDetachedView(abstractC0431c0M3292e0.f2721a, false);
                                abstractC0431c0M3292e0.m3358K();
                            } else if (abstractC0431c0M3292e0.m3359L()) {
                                abstractC0431c0M3292e0.m3364e();
                            }
                            m3600C(abstractC0431c0M3292e0);
                        }
                        abstractC0431c0M3292e0 = null;
                    } else {
                        z3 = true;
                    }
                }
                if (abstractC0431c0M3292e0 != null) {
                    abstractC0431c0 = abstractC0431c0M3292e0;
                } else {
                    int iM3790m = RecyclerView.this.f2669e.m3790m(i);
                    if (iM3790m < 0 || iM3790m >= RecyclerView.this.f2683l.mo3407c()) {
                        throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + i + "(offset:" + iM3790m + ").state:" + RecyclerView.this.f2676h0.m3662b() + RecyclerView.this.m3272P());
                    }
                    int iM3409e = RecyclerView.this.f2683l.m3409e(iM3790m);
                    if (RecyclerView.this.f2683l.m3411g() && (abstractC0431c0M3292e0 = m3620l(RecyclerView.this.f2683l.mo3408d(iM3790m), iM3409e, z)) != null) {
                        abstractC0431c0M3292e0.f2723c = iM3790m;
                        z3 = true;
                    }
                    if (abstractC0431c0M3292e0 == null && (abstractC0427a0 = this.f2793h) != null && (viewM3335a = abstractC0427a0.m3335a(this, i, iM3409e)) != null) {
                        abstractC0431c0M3292e0 = RecyclerView.this.m3292e0(viewM3335a);
                        if (abstractC0431c0M3292e0 == null) {
                            throw new IllegalArgumentException("getViewForPositionAndType returned a view which does not have a ViewHolder" + RecyclerView.this.m3272P());
                        }
                        if (abstractC0431c0M3292e0.m3357J()) {
                            throw new IllegalArgumentException("getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view." + RecyclerView.this.m3272P());
                        }
                    }
                    if (abstractC0431c0M3292e0 == null) {
                        AbstractC0431c0 abstractC0431c0M3588f = m3617i().m3588f(iM3409e);
                        if (abstractC0431c0M3588f != null) {
                            abstractC0431c0M3588f.m3351D();
                            if (RecyclerView.f2638z0) {
                                m3597r(abstractC0431c0M3588f);
                            }
                        }
                        abstractC0431c0M3292e0 = abstractC0431c0M3588f;
                    }
                    if (abstractC0431c0M3292e0 == null) {
                        long nanoTime = RecyclerView.this.getNanoTime();
                        if (j != Long.MAX_VALUE && !this.f2792g.m3593l(iM3409e, nanoTime, j)) {
                            return null;
                        }
                        RecyclerView recyclerView = RecyclerView.this;
                        AbstractC0431c0 abstractC0431c0M3406b = recyclerView.f2683l.m3406b(recyclerView, iM3409e);
                        if (RecyclerView.f2632B0 && (recyclerViewM3223V = RecyclerView.m3223V(abstractC0431c0M3406b.f2721a)) != null) {
                            abstractC0431c0M3406b.f2722b = new WeakReference<>(recyclerViewM3223V);
                        }
                        this.f2792g.m3587e(iM3409e, RecyclerView.this.getNanoTime() - nanoTime);
                        abstractC0431c0 = abstractC0431c0M3406b;
                    }
                }
                z2 = z3;
                if (z2 && !RecyclerView.this.f2676h0.m3665e() && abstractC0431c0.m3374p(8192)) {
                    abstractC0431c0.m3353F(0, 8192);
                    if (RecyclerView.this.f2676h0.f2822k) {
                        int iM3430e = AbstractC0439k.m3430e(abstractC0431c0) | 4096;
                        RecyclerView recyclerView2 = RecyclerView.this;
                        RecyclerView.this.m3274Q0(abstractC0431c0, recyclerView2.f2651M.m3449t(recyclerView2.f2676h0, abstractC0431c0, iM3430e, abstractC0431c0.m3373o()));
                    }
                }
                if (RecyclerView.this.f2676h0.m3665e() || !abstractC0431c0.m3377s()) {
                    boolean zM3594H = (abstractC0431c0.m3377s() || abstractC0431c0.m3384z() || abstractC0431c0.m3378t()) ? m3594H(abstractC0431c0, RecyclerView.this.f2669e.m3790m(i), i, j) : false;
                    layoutParams = abstractC0431c0.f2721a.getLayoutParams();
                    if (layoutParams == null) {
                        c0443o = (C0443o) RecyclerView.this.generateDefaultLayoutParams();
                        abstractC0431c0.f2721a.setLayoutParams(c0443o);
                    } else if (RecyclerView.this.checkLayoutParams(layoutParams)) {
                        c0443o = (C0443o) layoutParams;
                    } else {
                        c0443o = (C0443o) RecyclerView.this.generateLayoutParams(layoutParams);
                        abstractC0431c0.f2721a.setLayoutParams(c0443o);
                    }
                    c0443o.f2776a = abstractC0431c0;
                    c0443o.f2779d = z2 && zM3594H;
                    return abstractC0431c0;
                }
                abstractC0431c0.f2727g = i;
                layoutParams = abstractC0431c0.f2721a.getLayoutParams();
                if (layoutParams == null) {
                }
                c0443o.f2776a = abstractC0431c0;
                c0443o.f2779d = z2 && zM3594H;
                return abstractC0431c0;
            }
            abstractC0431c0M3292e0 = null;
            if (abstractC0431c0M3292e0 == null) {
                if (m3608L(abstractC0431c0M3292e0)) {
                }
            }
            if (abstractC0431c0M3292e0 != null) {
            }
            z2 = z3;
            if (z2) {
                abstractC0431c0.m3353F(0, 8192);
                if (RecyclerView.this.f2676h0.f2822k) {
                }
            }
            if (RecyclerView.this.f2676h0.m3665e()) {
                if (abstractC0431c0.m3377s()) {
                }
            }
            layoutParams = abstractC0431c0.f2721a.getLayoutParams();
            if (layoutParams == null) {
            }
            c0443o.f2776a = abstractC0431c0;
            c0443o.f2779d = z2 && zM3594H;
            return abstractC0431c0;
        }

        /* JADX INFO: renamed from: J */
        void m3606J(AbstractC0431c0 abstractC0431c0) {
            if (abstractC0431c0.f2735o) {
                this.f2787b.remove(abstractC0431c0);
            } else {
                this.f2786a.remove(abstractC0431c0);
            }
            abstractC0431c0.f2734n = null;
            abstractC0431c0.f2735o = false;
            abstractC0431c0.m3364e();
        }

        /* JADX INFO: renamed from: K */
        void m3607K() {
            AbstractC0442n abstractC0442n = RecyclerView.this.f2685m;
            this.f2791f = this.f2790e + (abstractC0442n != null ? abstractC0442n.f2764m : 0);
            for (int size = this.f2788c.size() - 1; size >= 0 && this.f2788c.size() > this.f2791f; size--) {
                m3598A(size);
            }
        }

        /* JADX INFO: renamed from: L */
        boolean m3608L(AbstractC0431c0 abstractC0431c0) {
            if (abstractC0431c0.m3380v()) {
                return RecyclerView.this.f2676h0.m3665e();
            }
            int i = abstractC0431c0.f2723c;
            if (i >= 0 && i < RecyclerView.this.f2683l.mo3407c()) {
                if (RecyclerView.this.f2676h0.m3665e() || RecyclerView.this.f2683l.m3409e(abstractC0431c0.f2723c) == abstractC0431c0.m3370l()) {
                    return !RecyclerView.this.f2683l.m3411g() || abstractC0431c0.m3369k() == RecyclerView.this.f2683l.mo3408d(abstractC0431c0.f2723c);
                }
                return false;
            }
            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + abstractC0431c0 + RecyclerView.this.m3272P());
        }

        /* JADX INFO: renamed from: M */
        void m3609M(int i, int i2) {
            int i3;
            int i4 = i2 + i;
            for (int size = this.f2788c.size() - 1; size >= 0; size--) {
                AbstractC0431c0 abstractC0431c0 = this.f2788c.get(size);
                if (abstractC0431c0 != null && (i3 = abstractC0431c0.f2723c) >= i && i3 < i4) {
                    abstractC0431c0.m3361b(2);
                    m3598A(size);
                }
            }
        }

        /* JADX INFO: renamed from: a */
        void m3610a(AbstractC0431c0 abstractC0431c0, boolean z) {
            RecyclerView.m3245r(abstractC0431c0);
            View view = abstractC0431c0.f2721a;
            C0471k c0471k = RecyclerView.this.f2690o0;
            if (c0471k != null) {
                C0258a c0258aM3926n = c0471k.m3926n();
                C0292v.m2105o0(view, c0258aM3926n instanceof C0471k.a ? ((C0471k.a) c0258aM3926n).m3928n(view) : null);
            }
            if (z) {
                m3615g(abstractC0431c0);
            }
            abstractC0431c0.f2738r = null;
            m3617i().m3590i(abstractC0431c0);
        }

        /* JADX INFO: renamed from: c */
        public void m3611c() {
            this.f2786a.clear();
            m3632z();
        }

        /* JADX INFO: renamed from: d */
        void m3612d() {
            int size = this.f2788c.size();
            for (int i = 0; i < size; i++) {
                this.f2788c.get(i).m3362c();
            }
            int size2 = this.f2786a.size();
            for (int i2 = 0; i2 < size2; i2++) {
                this.f2786a.get(i2).m3362c();
            }
            ArrayList<AbstractC0431c0> arrayList = this.f2787b;
            if (arrayList != null) {
                int size3 = arrayList.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    this.f2787b.get(i3).m3362c();
                }
            }
        }

        /* JADX INFO: renamed from: e */
        void m3613e() {
            this.f2786a.clear();
            ArrayList<AbstractC0431c0> arrayList = this.f2787b;
            if (arrayList != null) {
                arrayList.clear();
            }
        }

        /* JADX INFO: renamed from: f */
        public int m3614f(int i) {
            if (i >= 0 && i < RecyclerView.this.f2676h0.m3662b()) {
                return !RecyclerView.this.f2676h0.m3665e() ? i : RecyclerView.this.f2669e.m3790m(i);
            }
            throw new IndexOutOfBoundsException("invalid position " + i + ". State item count is " + RecyclerView.this.f2676h0.m3662b() + RecyclerView.this.m3272P());
        }

        /* JADX INFO: renamed from: g */
        void m3615g(AbstractC0431c0 abstractC0431c0) {
            InterfaceC0450v interfaceC0450v = RecyclerView.this.f2687n;
            if (interfaceC0450v != null) {
                interfaceC0450v.m3633a(abstractC0431c0);
            }
            AbstractC0434f abstractC0434f = RecyclerView.this.f2683l;
            if (abstractC0434f != null) {
                abstractC0434f.m3421q(abstractC0431c0);
            }
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.f2676h0 != null) {
                recyclerView.f2673g.m3978q(abstractC0431c0);
            }
        }

        /* JADX INFO: renamed from: h */
        AbstractC0431c0 m3616h(int i) {
            int size;
            int iM3790m;
            ArrayList<AbstractC0431c0> arrayList = this.f2787b;
            if (arrayList != null && (size = arrayList.size()) != 0) {
                for (int i2 = 0; i2 < size; i2++) {
                    AbstractC0431c0 abstractC0431c0 = this.f2787b.get(i2);
                    if (!abstractC0431c0.m3359L() && abstractC0431c0.m3371m() == i) {
                        abstractC0431c0.m3361b(32);
                        return abstractC0431c0;
                    }
                }
                if (RecyclerView.this.f2683l.m3411g() && (iM3790m = RecyclerView.this.f2669e.m3790m(i)) > 0 && iM3790m < RecyclerView.this.f2683l.mo3407c()) {
                    long jMo3408d = RecyclerView.this.f2683l.mo3408d(iM3790m);
                    for (int i3 = 0; i3 < size; i3++) {
                        AbstractC0431c0 abstractC0431c02 = this.f2787b.get(i3);
                        if (!abstractC0431c02.m3359L() && abstractC0431c02.m3369k() == jMo3408d) {
                            abstractC0431c02.m3361b(32);
                            return abstractC0431c02;
                        }
                    }
                }
            }
            return null;
        }

        /* JADX INFO: renamed from: i */
        C0448t m3617i() {
            if (this.f2792g == null) {
                this.f2792g = new C0448t();
            }
            return this.f2792g;
        }

        /* JADX INFO: renamed from: j */
        int m3618j() {
            return this.f2786a.size();
        }

        /* JADX INFO: renamed from: k */
        public List<AbstractC0431c0> m3619k() {
            return this.f2789d;
        }

        /* JADX INFO: renamed from: l */
        AbstractC0431c0 m3620l(long j, int i, boolean z) {
            for (int size = this.f2786a.size() - 1; size >= 0; size--) {
                AbstractC0431c0 abstractC0431c0 = this.f2786a.get(size);
                if (abstractC0431c0.m3369k() == j && !abstractC0431c0.m3359L()) {
                    if (i == abstractC0431c0.m3370l()) {
                        abstractC0431c0.m3361b(32);
                        if (abstractC0431c0.m3380v() && !RecyclerView.this.f2676h0.m3665e()) {
                            abstractC0431c0.m3353F(2, 14);
                        }
                        return abstractC0431c0;
                    }
                    if (!z) {
                        this.f2786a.remove(size);
                        RecyclerView.this.removeDetachedView(abstractC0431c0.f2721a, false);
                        m3631y(abstractC0431c0.f2721a);
                    }
                }
            }
            int size2 = this.f2788c.size();
            while (true) {
                size2--;
                if (size2 < 0) {
                    return null;
                }
                AbstractC0431c0 abstractC0431c02 = this.f2788c.get(size2);
                if (abstractC0431c02.m3369k() == j && !abstractC0431c02.m3376r()) {
                    if (i == abstractC0431c02.m3370l()) {
                        if (!z) {
                            this.f2788c.remove(size2);
                        }
                        return abstractC0431c02;
                    }
                    if (!z) {
                        m3598A(size2);
                        return null;
                    }
                }
            }
        }

        /* JADX INFO: renamed from: m */
        AbstractC0431c0 m3621m(int i, boolean z) {
            View viewM3806e;
            int size = this.f2786a.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC0431c0 abstractC0431c0 = this.f2786a.get(i2);
                if (!abstractC0431c0.m3359L() && abstractC0431c0.m3371m() == i && !abstractC0431c0.m3378t() && (RecyclerView.this.f2676h0.f2819h || !abstractC0431c0.m3380v())) {
                    abstractC0431c0.m3361b(32);
                    return abstractC0431c0;
                }
            }
            if (z || (viewM3806e = RecyclerView.this.f2671f.m3806e(i)) == null) {
                int size2 = this.f2788c.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    AbstractC0431c0 abstractC0431c02 = this.f2788c.get(i3);
                    if (!abstractC0431c02.m3378t() && abstractC0431c02.m3371m() == i && !abstractC0431c02.m3376r()) {
                        if (!z) {
                            this.f2788c.remove(i3);
                        }
                        return abstractC0431c02;
                    }
                }
                return null;
            }
            AbstractC0431c0 abstractC0431c0M3233f0 = RecyclerView.m3233f0(viewM3806e);
            RecyclerView.this.f2671f.m3818s(viewM3806e);
            int iM3812m = RecyclerView.this.f2671f.m3812m(viewM3806e);
            if (iM3812m != -1) {
                RecyclerView.this.f2671f.m3805d(iM3812m);
                m3601D(viewM3806e);
                abstractC0431c0M3233f0.m3361b(8224);
                return abstractC0431c0M3233f0;
            }
            throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + abstractC0431c0M3233f0 + RecyclerView.this.m3272P());
        }

        /* JADX INFO: renamed from: n */
        View m3622n(int i) {
            return this.f2786a.get(i).f2721a;
        }

        /* JADX INFO: renamed from: o */
        public View m3623o(int i) {
            return m3624p(i, false);
        }

        /* JADX INFO: renamed from: p */
        View m3624p(int i, boolean z) {
            return m3605I(i, z, Long.MAX_VALUE).f2721a;
        }

        /* JADX INFO: renamed from: s */
        void m3625s() {
            int size = this.f2788c.size();
            for (int i = 0; i < size; i++) {
                C0443o c0443o = (C0443o) this.f2788c.get(i).f2721a.getLayoutParams();
                if (c0443o != null) {
                    c0443o.f2778c = true;
                }
            }
        }

        /* JADX INFO: renamed from: t */
        void m3626t() {
            int size = this.f2788c.size();
            for (int i = 0; i < size; i++) {
                AbstractC0431c0 abstractC0431c0 = this.f2788c.get(i);
                if (abstractC0431c0 != null) {
                    abstractC0431c0.m3361b(6);
                    abstractC0431c0.m3360a(null);
                }
            }
            AbstractC0434f abstractC0434f = RecyclerView.this.f2683l;
            if (abstractC0434f == null || !abstractC0434f.m3411g()) {
                m3632z();
            }
        }

        /* JADX INFO: renamed from: u */
        void m3627u(int i, int i2) {
            int size = this.f2788c.size();
            for (int i3 = 0; i3 < size; i3++) {
                AbstractC0431c0 abstractC0431c0 = this.f2788c.get(i3);
                if (abstractC0431c0 != null && abstractC0431c0.f2723c >= i) {
                    abstractC0431c0.m3348A(i2, true);
                }
            }
        }

        /* JADX INFO: renamed from: v */
        void m3628v(int i, int i2) {
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
            int size = this.f2788c.size();
            for (int i7 = 0; i7 < size; i7++) {
                AbstractC0431c0 abstractC0431c0 = this.f2788c.get(i7);
                if (abstractC0431c0 != null && (i6 = abstractC0431c0.f2723c) >= i5 && i6 <= i4) {
                    if (i6 == i) {
                        abstractC0431c0.m3348A(i2 - i, false);
                    } else {
                        abstractC0431c0.m3348A(i3, false);
                    }
                }
            }
        }

        /* JADX INFO: renamed from: w */
        void m3629w(int i, int i2, boolean z) {
            int i3 = i + i2;
            for (int size = this.f2788c.size() - 1; size >= 0; size--) {
                AbstractC0431c0 abstractC0431c0 = this.f2788c.get(size);
                if (abstractC0431c0 != null) {
                    int i4 = abstractC0431c0.f2723c;
                    if (i4 >= i3) {
                        abstractC0431c0.m3348A(-i2, z);
                    } else if (i4 >= i) {
                        abstractC0431c0.m3361b(8);
                        m3598A(size);
                    }
                }
            }
        }

        /* JADX INFO: renamed from: x */
        void m3630x(AbstractC0434f abstractC0434f, AbstractC0434f abstractC0434f2, boolean z) {
            m3611c();
            m3617i().m3589h(abstractC0434f, abstractC0434f2, z);
        }

        /* JADX INFO: renamed from: y */
        void m3631y(View view) {
            AbstractC0431c0 abstractC0431c0M3233f0 = RecyclerView.m3233f0(view);
            abstractC0431c0M3233f0.f2734n = null;
            abstractC0431c0M3233f0.f2735o = false;
            abstractC0431c0M3233f0.m3364e();
            m3600C(abstractC0431c0M3233f0);
        }

        /* JADX INFO: renamed from: z */
        void m3632z() {
            for (int size = this.f2788c.size() - 1; size >= 0; size--) {
                m3598A(size);
            }
            this.f2788c.clear();
            if (RecyclerView.f2632B0) {
                RecyclerView.this.f2674g0.m3872b();
            }
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$v */
    public interface InterfaceC0450v {
        /* JADX INFO: renamed from: a */
        void m3633a(AbstractC0431c0 abstractC0431c0);
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$w */
    private class C0451w extends AbstractC0436h {
        C0451w() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0436h
        /* JADX INFO: renamed from: a */
        public void mo3427a() {
            RecyclerView.this.m3311o(null);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.f2676h0.f2818g = true;
            recyclerView.m3271O0(true);
            if (RecyclerView.this.f2669e.m3793p()) {
                return;
            }
            RecyclerView.this.requestLayout();
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$y */
    public static abstract class AbstractC0453y {

        /* JADX INFO: renamed from: b */
        private RecyclerView f2798b;

        /* JADX INFO: renamed from: c */
        private AbstractC0442n f2799c;

        /* JADX INFO: renamed from: d */
        private boolean f2800d;

        /* JADX INFO: renamed from: e */
        private boolean f2801e;

        /* JADX INFO: renamed from: f */
        private View f2802f;

        /* JADX INFO: renamed from: h */
        private boolean f2804h;

        /* JADX INFO: renamed from: a */
        private int f2797a = -1;

        /* JADX INFO: renamed from: g */
        private final a f2803g = new a(0, 0);

        /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$y$a */
        public static class a {

            /* JADX INFO: renamed from: a */
            private int f2805a;

            /* JADX INFO: renamed from: b */
            private int f2806b;

            /* JADX INFO: renamed from: c */
            private int f2807c;

            /* JADX INFO: renamed from: d */
            private int f2808d;

            /* JADX INFO: renamed from: e */
            private Interpolator f2809e;

            /* JADX INFO: renamed from: f */
            private boolean f2810f;

            /* JADX INFO: renamed from: g */
            private int f2811g;

            public a(int i, int i2) {
                this(i, i2, Integer.MIN_VALUE, null);
            }

            /* JADX INFO: renamed from: e */
            private void m3656e() {
                if (this.f2809e != null && this.f2807c < 1) {
                    throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                }
                if (this.f2807c < 1) {
                    throw new IllegalStateException("Scroll duration must be a positive number");
                }
            }

            /* JADX INFO: renamed from: a */
            boolean m3657a() {
                return this.f2808d >= 0;
            }

            /* JADX INFO: renamed from: b */
            public void m3658b(int i) {
                this.f2808d = i;
            }

            /* JADX INFO: renamed from: c */
            void m3659c(RecyclerView recyclerView) {
                int i = this.f2808d;
                if (i >= 0) {
                    this.f2808d = -1;
                    recyclerView.m3326v0(i);
                    this.f2810f = false;
                } else {
                    if (!this.f2810f) {
                        this.f2811g = 0;
                        return;
                    }
                    m3656e();
                    recyclerView.f2670e0.m3341f(this.f2805a, this.f2806b, this.f2807c, this.f2809e);
                    this.f2811g++;
                    this.f2810f = false;
                }
            }

            /* JADX INFO: renamed from: d */
            public void m3660d(int i, int i2, int i3, Interpolator interpolator) {
                this.f2805a = i;
                this.f2806b = i2;
                this.f2807c = i3;
                this.f2809e = interpolator;
                this.f2810f = true;
            }

            public a(int i, int i2, int i3, Interpolator interpolator) {
                this.f2808d = -1;
                this.f2810f = false;
                this.f2811g = 0;
                this.f2805a = i;
                this.f2806b = i2;
                this.f2807c = i3;
                this.f2809e = interpolator;
            }
        }

        /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$y$b */
        public interface b {
            /* JADX INFO: renamed from: a */
            PointF mo3174a(int i);
        }

        /* JADX INFO: renamed from: a */
        public PointF m3638a(int i) {
            Object objM3642e = m3642e();
            if (objM3642e instanceof b) {
                return ((b) objM3642e).mo3174a(i);
            }
            String str = "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + b.class.getCanonicalName();
            return null;
        }

        /* JADX INFO: renamed from: b */
        public View m3639b(int i) {
            return this.f2798b.f2685m.mo3159C(i);
        }

        /* JADX INFO: renamed from: c */
        public int m3640c() {
            return this.f2798b.f2685m.m3490J();
        }

        /* JADX INFO: renamed from: d */
        public int m3641d(View view) {
            return this.f2798b.m3290d0(view);
        }

        /* JADX INFO: renamed from: e */
        public AbstractC0442n m3642e() {
            return this.f2799c;
        }

        /* JADX INFO: renamed from: f */
        public int m3643f() {
            return this.f2797a;
        }

        /* JADX INFO: renamed from: g */
        public boolean m3644g() {
            return this.f2800d;
        }

        /* JADX INFO: renamed from: h */
        public boolean m3645h() {
            return this.f2801e;
        }

        /* JADX INFO: renamed from: i */
        protected void m3646i(PointF pointF) {
            float f = pointF.x;
            float f2 = pointF.y;
            float fSqrt = (float) Math.sqrt((f * f) + (f2 * f2));
            pointF.x /= fSqrt;
            pointF.y /= fSqrt;
        }

        /* JADX INFO: renamed from: j */
        void m3647j(int i, int i2) {
            PointF pointFM3638a;
            RecyclerView recyclerView = this.f2798b;
            if (this.f2797a == -1 || recyclerView == null) {
                m3655r();
            }
            if (this.f2800d && this.f2802f == null && this.f2799c != null && (pointFM3638a = m3638a(this.f2797a)) != null && (pointFM3638a.x != CropImageView.DEFAULT_ASPECT_RATIO || pointFM3638a.y != CropImageView.DEFAULT_ASPECT_RATIO)) {
                recyclerView.m3294f1((int) Math.signum(pointFM3638a.x), (int) Math.signum(pointFM3638a.y), null);
            }
            this.f2800d = false;
            View view = this.f2802f;
            if (view != null) {
                if (m3641d(view) == this.f2797a) {
                    mo3652o(this.f2802f, recyclerView.f2676h0, this.f2803g);
                    this.f2803g.m3659c(recyclerView);
                    m3655r();
                } else {
                    this.f2802f = null;
                }
            }
            if (this.f2801e) {
                mo3649l(i, i2, recyclerView.f2676h0, this.f2803g);
                boolean zM3657a = this.f2803g.m3657a();
                this.f2803g.m3659c(recyclerView);
                if (zM3657a && this.f2801e) {
                    this.f2800d = true;
                    recyclerView.f2670e0.m3340e();
                }
            }
        }

        /* JADX INFO: renamed from: k */
        protected void m3648k(View view) {
            if (m3641d(view) == m3643f()) {
                this.f2802f = view;
            }
        }

        /* JADX INFO: renamed from: l */
        protected abstract void mo3649l(int i, int i2, C0454z c0454z, a aVar);

        /* JADX INFO: renamed from: m */
        protected abstract void mo3650m();

        /* JADX INFO: renamed from: n */
        protected abstract void mo3651n();

        /* JADX INFO: renamed from: o */
        protected abstract void mo3652o(View view, C0454z c0454z, a aVar);

        /* JADX INFO: renamed from: p */
        public void m3653p(int i) {
            this.f2797a = i;
        }

        /* JADX INFO: renamed from: q */
        void m3654q(RecyclerView recyclerView, AbstractC0442n abstractC0442n) {
            recyclerView.f2670e0.m3342g();
            if (this.f2804h) {
                String str = "An instance of " + getClass().getSimpleName() + " was started more than once. Each instance of" + getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.";
            }
            this.f2798b = recyclerView;
            this.f2799c = abstractC0442n;
            int i = this.f2797a;
            if (i == -1) {
                throw new IllegalArgumentException("Invalid target position");
            }
            recyclerView.f2676h0.f2812a = i;
            this.f2801e = true;
            this.f2800d = true;
            this.f2802f = m3639b(m3643f());
            mo3650m();
            this.f2798b.f2670e0.m3340e();
            this.f2804h = true;
        }

        /* JADX INFO: renamed from: r */
        protected final void m3655r() {
            if (this.f2801e) {
                this.f2801e = false;
                mo3651n();
                this.f2798b.f2676h0.f2812a = -1;
                this.f2802f = null;
                this.f2797a = -1;
                this.f2800d = false;
                this.f2799c.m3526f1(this);
                this.f2799c = null;
                this.f2798b = null;
            }
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$z */
    public static class C0454z {

        /* JADX INFO: renamed from: b */
        private SparseArray<Object> f2813b;

        /* JADX INFO: renamed from: m */
        int f2824m;

        /* JADX INFO: renamed from: n */
        long f2825n;

        /* JADX INFO: renamed from: o */
        int f2826o;

        /* JADX INFO: renamed from: p */
        int f2827p;

        /* JADX INFO: renamed from: q */
        int f2828q;

        /* JADX INFO: renamed from: a */
        int f2812a = -1;

        /* JADX INFO: renamed from: c */
        int f2814c = 0;

        /* JADX INFO: renamed from: d */
        int f2815d = 0;

        /* JADX INFO: renamed from: e */
        int f2816e = 1;

        /* JADX INFO: renamed from: f */
        int f2817f = 0;

        /* JADX INFO: renamed from: g */
        boolean f2818g = false;

        /* JADX INFO: renamed from: h */
        boolean f2819h = false;

        /* JADX INFO: renamed from: i */
        boolean f2820i = false;

        /* JADX INFO: renamed from: j */
        boolean f2821j = false;

        /* JADX INFO: renamed from: k */
        boolean f2822k = false;

        /* JADX INFO: renamed from: l */
        boolean f2823l = false;

        /* JADX INFO: renamed from: a */
        void m3661a(int i) {
            if ((this.f2816e & i) != 0) {
                return;
            }
            throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i) + " but it is " + Integer.toBinaryString(this.f2816e));
        }

        /* JADX INFO: renamed from: b */
        public int m3662b() {
            return this.f2819h ? this.f2814c - this.f2815d : this.f2817f;
        }

        /* JADX INFO: renamed from: c */
        public int m3663c() {
            return this.f2812a;
        }

        /* JADX INFO: renamed from: d */
        public boolean m3664d() {
            return this.f2812a != -1;
        }

        /* JADX INFO: renamed from: e */
        public boolean m3665e() {
            return this.f2819h;
        }

        /* JADX INFO: renamed from: f */
        void m3666f(AbstractC0434f abstractC0434f) {
            this.f2816e = 1;
            this.f2817f = abstractC0434f.mo3407c();
            this.f2819h = false;
            this.f2820i = false;
            this.f2821j = false;
        }

        /* JADX INFO: renamed from: g */
        public boolean m3667g() {
            return this.f2823l;
        }

        public String toString() {
            return "State{mTargetPosition=" + this.f2812a + ", mData=" + this.f2813b + ", mItemCount=" + this.f2817f + ", mIsMeasuring=" + this.f2821j + ", mPreviousLayoutItemCount=" + this.f2814c + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f2815d + ", mStructureChanged=" + this.f2818g + ", mInPreLayout=" + this.f2819h + ", mRunSimpleAnimations=" + this.f2822k + ", mRunPredictiveAnimations=" + this.f2823l + '}';
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        f2638z0 = i == 18 || i == 19 || i == 20;
        f2631A0 = Build.VERSION.SDK_INT >= 23;
        int i2 = Build.VERSION.SDK_INT;
        f2632B0 = Build.VERSION.SDK_INT >= 21;
        f2633C0 = Build.VERSION.SDK_INT <= 15;
        f2634D0 = Build.VERSION.SDK_INT <= 15;
        Class<?> cls = Integer.TYPE;
        f2635E0 = new Class[]{Context.class, AttributeSet.class, cls, cls};
        f2636F0 = new InterpolatorC0428b();
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0647a.recyclerViewStyle);
    }

    /* JADX INFO: renamed from: A */
    private void m3210A() {
        int i = this.f2710z;
        this.f2710z = 0;
        if (i == 0 || !m3320s0()) {
            return;
        }
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
        accessibilityEventObtain.setEventType(2048);
        C0268b.m1885b(accessibilityEventObtain, i);
        sendAccessibilityEventUnchecked(accessibilityEventObtain);
    }

    /* JADX INFO: renamed from: C */
    private void m3211C() {
        this.f2676h0.m3661a(1);
        m3273Q(this.f2676h0);
        this.f2676h0.f2821j = false;
        m3314p1();
        this.f2673g.m3968f();
        m3257F0();
        m3217N0();
        m3229c1();
        C0454z c0454z = this.f2676h0;
        c0454z.f2820i = c0454z.f2822k && this.f2684l0;
        this.f2684l0 = false;
        this.f2682k0 = false;
        C0454z c0454z2 = this.f2676h0;
        c0454z2.f2819h = c0454z2.f2823l;
        c0454z2.f2817f = this.f2683l.mo3407c();
        m3222U(this.f2694q0);
        if (this.f2676h0.f2822k) {
            int iM3808g = this.f2671f.m3808g();
            for (int i = 0; i < iM3808g; i++) {
                AbstractC0431c0 abstractC0431c0M3233f0 = m3233f0(this.f2671f.m3807f(i));
                if (!abstractC0431c0M3233f0.m3357J() && (!abstractC0431c0M3233f0.m3378t() || this.f2683l.m3411g())) {
                    this.f2673g.m3967e(abstractC0431c0M3233f0, this.f2651M.m3449t(this.f2676h0, abstractC0431c0M3233f0, AbstractC0439k.m3430e(abstractC0431c0M3233f0), abstractC0431c0M3233f0.m3373o()));
                    if (this.f2676h0.f2820i && abstractC0431c0M3233f0.m3383y() && !abstractC0431c0M3233f0.m3380v() && !abstractC0431c0M3233f0.m3357J() && !abstractC0431c0M3233f0.m3378t()) {
                        this.f2673g.m3965c(m3289c0(abstractC0431c0M3233f0), abstractC0431c0M3233f0);
                    }
                }
            }
        }
        if (this.f2676h0.f2823l) {
            m3291d1();
            C0454z c0454z3 = this.f2676h0;
            boolean z = c0454z3.f2818g;
            c0454z3.f2818g = false;
            this.f2685m.mo3104X0(this.f2665c, c0454z3);
            this.f2676h0.f2818g = z;
            for (int i2 = 0; i2 < this.f2671f.m3808g(); i2++) {
                AbstractC0431c0 abstractC0431c0M3233f02 = m3233f0(this.f2671f.m3807f(i2));
                if (!abstractC0431c0M3233f02.m3357J() && !this.f2673g.m3971i(abstractC0431c0M3233f02)) {
                    int iM3430e = AbstractC0439k.m3430e(abstractC0431c0M3233f02);
                    boolean zM3374p = abstractC0431c0M3233f02.m3374p(8192);
                    if (!zM3374p) {
                        iM3430e |= 4096;
                    }
                    AbstractC0439k.c cVarM3449t = this.f2651M.m3449t(this.f2676h0, abstractC0431c0M3233f02, iM3430e, abstractC0431c0M3233f02.m3373o());
                    if (zM3374p) {
                        m3274Q0(abstractC0431c0M3233f02, cVarM3449t);
                    } else {
                        this.f2673g.m3963a(abstractC0431c0M3233f02, cVarM3449t);
                    }
                }
            }
            m3319s();
        } else {
            m3319s();
        }
        m3259G0();
        m3318r1(false);
        this.f2676h0.f2816e = 2;
    }

    /* JADX INFO: renamed from: D */
    private void m3212D() {
        m3314p1();
        m3257F0();
        this.f2676h0.m3661a(6);
        this.f2669e.m3788j();
        this.f2676h0.f2817f = this.f2683l.mo3407c();
        C0454z c0454z = this.f2676h0;
        c0454z.f2815d = 0;
        c0454z.f2819h = false;
        this.f2685m.mo3104X0(this.f2665c, c0454z);
        C0454z c0454z2 = this.f2676h0;
        c0454z2.f2818g = false;
        this.f2667d = null;
        c0454z2.f2822k = c0454z2.f2822k && this.f2651M != null;
        this.f2676h0.f2816e = 4;
        m3259G0();
        m3318r1(false);
    }

    /* JADX INFO: renamed from: E */
    private void m3213E() {
        this.f2676h0.m3661a(4);
        m3314p1();
        m3257F0();
        C0454z c0454z = this.f2676h0;
        c0454z.f2816e = 1;
        if (c0454z.f2822k) {
            for (int iM3808g = this.f2671f.m3808g() - 1; iM3808g >= 0; iM3808g--) {
                AbstractC0431c0 abstractC0431c0M3233f0 = m3233f0(this.f2671f.m3807f(iM3808g));
                if (!abstractC0431c0M3233f0.m3357J()) {
                    long jM3289c0 = m3289c0(abstractC0431c0M3233f0);
                    AbstractC0439k.c cVarM3448s = this.f2651M.m3448s(this.f2676h0, abstractC0431c0M3233f0);
                    AbstractC0431c0 abstractC0431c0M3969g = this.f2673g.m3969g(jM3289c0);
                    if (abstractC0431c0M3969g == null || abstractC0431c0M3969g.m3357J()) {
                        this.f2673g.m3966d(abstractC0431c0M3233f0, cVarM3448s);
                    } else {
                        boolean zM3970h = this.f2673g.m3970h(abstractC0431c0M3969g);
                        boolean zM3970h2 = this.f2673g.m3970h(abstractC0431c0M3233f0);
                        if (zM3970h && abstractC0431c0M3969g == abstractC0431c0M3233f0) {
                            this.f2673g.m3966d(abstractC0431c0M3233f0, cVarM3448s);
                        } else {
                            AbstractC0439k.c cVarM3975n = this.f2673g.m3975n(abstractC0431c0M3969g);
                            this.f2673g.m3966d(abstractC0431c0M3233f0, cVarM3448s);
                            AbstractC0439k.c cVarM3974m = this.f2673g.m3974m(abstractC0431c0M3233f0);
                            if (cVarM3975n == null) {
                                m3239k0(jM3289c0, abstractC0431c0M3233f0, abstractC0431c0M3969g);
                            } else {
                                m3240m(abstractC0431c0M3969g, abstractC0431c0M3233f0, cVarM3975n, cVarM3974m, zM3970h, zM3970h2);
                            }
                        }
                    }
                }
            }
            this.f2673g.m3976o(this.f2708x0);
        }
        this.f2685m.m3539l1(this.f2665c);
        C0454z c0454z2 = this.f2676h0;
        c0454z2.f2814c = c0454z2.f2817f;
        this.f2642D = false;
        this.f2643E = false;
        c0454z2.f2822k = false;
        c0454z2.f2823l = false;
        this.f2685m.f2759h = false;
        ArrayList<AbstractC0431c0> arrayList = this.f2665c.f2787b;
        if (arrayList != null) {
            arrayList.clear();
        }
        AbstractC0442n abstractC0442n = this.f2685m;
        if (abstractC0442n.f2765n) {
            abstractC0442n.f2764m = 0;
            abstractC0442n.f2765n = false;
            this.f2665c.m3607K();
        }
        this.f2685m.mo3106Y0(this.f2676h0);
        m3259G0();
        m3318r1(false);
        this.f2673g.m3968f();
        int[] iArr = this.f2694q0;
        if (m3249x(iArr[0], iArr[1])) {
            m3262I(0, 0);
        }
        m3219R0();
        m3226a1();
    }

    /* JADX INFO: renamed from: I0 */
    private void m3214I0(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f2653O) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f2653O = motionEvent.getPointerId(i);
            int x = (int) (motionEvent.getX(i) + 0.5f);
            this.f2657S = x;
            this.f2655Q = x;
            int y = (int) (motionEvent.getY(i) + 0.5f);
            this.f2658T = y;
            this.f2656R = y;
        }
    }

    /* JADX INFO: renamed from: K */
    private boolean m3215K(MotionEvent motionEvent) {
        InterfaceC0446r interfaceC0446r = this.f2693q;
        if (interfaceC0446r == null) {
            if (motionEvent.getAction() == 0) {
                return false;
            }
            return m3221T(motionEvent);
        }
        interfaceC0446r.mo3578b(this, motionEvent);
        int action = motionEvent.getAction();
        if (action == 3 || action == 1) {
            this.f2693q = null;
        }
        return true;
    }

    /* JADX INFO: renamed from: M0 */
    private boolean m3216M0() {
        return this.f2651M != null && this.f2685m.mo3094L1();
    }

    /* JADX INFO: renamed from: N0 */
    private void m3217N0() {
        if (this.f2642D) {
            this.f2669e.m3797u();
            if (this.f2643E) {
                this.f2685m.mo3099S0(this);
            }
        }
        if (m3216M0()) {
            this.f2669e.m3795s();
        } else {
            this.f2669e.m3788j();
        }
        boolean z = false;
        boolean z2 = this.f2682k0 || this.f2684l0;
        this.f2676h0.f2822k = this.f2701u && this.f2651M != null && (this.f2642D || z2 || this.f2685m.f2759h) && (!this.f2642D || this.f2683l.m3411g());
        C0454z c0454z = this.f2676h0;
        if (c0454z.f2822k && z2 && !this.f2642D && m3216M0()) {
            z = true;
        }
        c0454z.f2823l = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0056  */
    /* JADX INFO: renamed from: P0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m3218P0(float f, float f2, float f3, float f4) {
        boolean z;
        boolean z2 = true;
        if (f2 < CropImageView.DEFAULT_ASPECT_RATIO) {
            m3268M();
            C0303d.m2267a(this.f2647I, (-f2) / getWidth(), 1.0f - (f3 / getHeight()));
        } else {
            if (f2 <= CropImageView.DEFAULT_ASPECT_RATIO) {
                z = false;
                if (f4 >= CropImageView.DEFAULT_ASPECT_RATIO) {
                    m3270O();
                    C0303d.m2267a(this.f2648J, (-f4) / getHeight(), f / getWidth());
                } else if (f4 > CropImageView.DEFAULT_ASPECT_RATIO) {
                    m3266L();
                    C0303d.m2267a(this.f2650L, f4 / getHeight(), 1.0f - (f / getWidth()));
                } else {
                    z2 = z;
                }
                if (z2 && f2 == CropImageView.DEFAULT_ASPECT_RATIO && f4 == CropImageView.DEFAULT_ASPECT_RATIO) {
                    return;
                }
                C0292v.m2087f0(this);
            }
            m3269N();
            C0303d.m2267a(this.f2649K, f2 / getWidth(), f3 / getHeight());
        }
        z = true;
        if (f4 >= CropImageView.DEFAULT_ASPECT_RATIO) {
        }
        if (z2) {
        }
        C0292v.m2087f0(this);
    }

    /* JADX INFO: renamed from: R0 */
    private void m3219R0() {
        View viewFindViewById;
        if (!this.f2668d0 || this.f2683l == null || !hasFocus() || getDescendantFocusability() == 393216) {
            return;
        }
        if (getDescendantFocusability() == 131072 && isFocused()) {
            return;
        }
        if (!isFocused()) {
            View focusedChild = getFocusedChild();
            if (!f2634D0 || (focusedChild.getParent() != null && focusedChild.hasFocus())) {
                if (!this.f2671f.m3813n(focusedChild)) {
                    return;
                }
            } else if (this.f2671f.m3808g() == 0) {
                requestFocus();
                return;
            }
        }
        View viewM3224W = null;
        AbstractC0431c0 abstractC0431c0M3283Y = (this.f2676h0.f2825n == -1 || !this.f2683l.m3411g()) ? null : m3283Y(this.f2676h0.f2825n);
        if (abstractC0431c0M3283Y != null && !this.f2671f.m3813n(abstractC0431c0M3283Y.f2721a) && abstractC0431c0M3283Y.f2721a.hasFocusable()) {
            viewM3224W = abstractC0431c0M3283Y.f2721a;
        } else if (this.f2671f.m3808g() > 0) {
            viewM3224W = m3224W();
        }
        if (viewM3224W != null) {
            int i = this.f2676h0.f2826o;
            if (i != -1 && (viewFindViewById = viewM3224W.findViewById(i)) != null && viewFindViewById.isFocusable()) {
                viewM3224W = viewFindViewById;
            }
            viewM3224W.requestFocus();
        }
    }

    /* JADX INFO: renamed from: S0 */
    private void m3220S0() {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.f2647I;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            zIsFinished = this.f2647I.isFinished();
        } else {
            zIsFinished = false;
        }
        EdgeEffect edgeEffect2 = this.f2648J;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            zIsFinished |= this.f2648J.isFinished();
        }
        EdgeEffect edgeEffect3 = this.f2649K;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            zIsFinished |= this.f2649K.isFinished();
        }
        EdgeEffect edgeEffect4 = this.f2650L;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            zIsFinished |= this.f2650L.isFinished();
        }
        if (zIsFinished) {
            C0292v.m2087f0(this);
        }
    }

    /* JADX INFO: renamed from: T */
    private boolean m3221T(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int size = this.f2691p.size();
        for (int i = 0; i < size; i++) {
            InterfaceC0446r interfaceC0446r = this.f2691p.get(i);
            if (interfaceC0446r.mo3577a(this, motionEvent) && action != 3) {
                this.f2693q = interfaceC0446r;
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: U */
    private void m3222U(int[] iArr) {
        int iM3808g = this.f2671f.m3808g();
        if (iM3808g == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i = Integer.MAX_VALUE;
        int i2 = Integer.MIN_VALUE;
        for (int i3 = 0; i3 < iM3808g; i3++) {
            AbstractC0431c0 abstractC0431c0M3233f0 = m3233f0(this.f2671f.m3807f(i3));
            if (!abstractC0431c0M3233f0.m3357J()) {
                int iM3371m = abstractC0431c0M3233f0.m3371m();
                if (iM3371m < i) {
                    i = iM3371m;
                }
                if (iM3371m > i2) {
                    i2 = iM3371m;
                }
            }
        }
        iArr[0] = i;
        iArr[1] = i2;
    }

    /* JADX INFO: renamed from: V */
    static RecyclerView m3223V(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            RecyclerView recyclerViewM3223V = m3223V(viewGroup.getChildAt(i));
            if (recyclerViewM3223V != null) {
                return recyclerViewM3223V;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: W */
    private View m3224W() {
        AbstractC0431c0 abstractC0431c0M3281X;
        int i = this.f2676h0.f2824m;
        if (i == -1) {
            i = 0;
        }
        int iM3662b = this.f2676h0.m3662b();
        for (int i2 = i; i2 < iM3662b; i2++) {
            AbstractC0431c0 abstractC0431c0M3281X2 = m3281X(i2);
            if (abstractC0431c0M3281X2 == null) {
                break;
            }
            if (abstractC0431c0M3281X2.f2721a.hasFocusable()) {
                return abstractC0431c0M3281X2.f2721a;
            }
        }
        int iMin = Math.min(iM3662b, i);
        do {
            iMin--;
            if (iMin < 0 || (abstractC0431c0M3281X = m3281X(iMin)) == null) {
                return null;
            }
        } while (!abstractC0431c0M3281X.f2721a.hasFocusable());
        return abstractC0431c0M3281X.f2721a;
    }

    /* JADX INFO: renamed from: Z0 */
    private void m3225Z0(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        this.f2677i.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof C0443o) {
            C0443o c0443o = (C0443o) layoutParams;
            if (!c0443o.f2778c) {
                Rect rect = c0443o.f2777b;
                Rect rect2 = this.f2677i;
                rect2.left -= rect.left;
                rect2.right += rect.right;
                rect2.top -= rect.top;
                rect2.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.f2677i);
            offsetRectIntoDescendantCoords(view, this.f2677i);
        }
        this.f2685m.m3552s1(this, view, this.f2677i, !this.f2701u, view2 == null);
    }

    /* JADX INFO: renamed from: a1 */
    private void m3226a1() {
        C0454z c0454z = this.f2676h0;
        c0454z.f2825n = -1L;
        c0454z.f2824m = -1;
        c0454z.f2826o = -1;
    }

    /* JADX INFO: renamed from: b1 */
    private void m3227b1() {
        VelocityTracker velocityTracker = this.f2654P;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        m3321s1(0);
        m3220S0();
    }

    /* JADX INFO: renamed from: c1 */
    private void m3229c1() {
        View focusedChild = (this.f2668d0 && hasFocus() && this.f2683l != null) ? getFocusedChild() : null;
        AbstractC0431c0 abstractC0431c0M3276S = focusedChild != null ? m3276S(focusedChild) : null;
        if (abstractC0431c0M3276S == null) {
            m3226a1();
            return;
        }
        this.f2676h0.f2825n = this.f2683l.m3411g() ? abstractC0431c0M3276S.m3369k() : -1L;
        this.f2676h0.f2824m = this.f2642D ? -1 : abstractC0431c0M3276S.m3380v() ? abstractC0431c0M3276S.f2724d : abstractC0431c0M3276S.m3368j();
        this.f2676h0.f2826o = m3236h0(abstractC0431c0M3276S.f2721a);
    }

    /* JADX INFO: renamed from: f0 */
    static AbstractC0431c0 m3233f0(View view) {
        if (view == null) {
            return null;
        }
        return ((C0443o) view.getLayoutParams()).f2776a;
    }

    /* JADX INFO: renamed from: g */
    private void m3234g(AbstractC0431c0 abstractC0431c0) {
        View view = abstractC0431c0.f2721a;
        boolean z = view.getParent() == this;
        this.f2665c.m3606J(m3292e0(view));
        if (abstractC0431c0.m3382x()) {
            this.f2671f.m3804c(view, -1, view.getLayoutParams(), true);
        } else if (z) {
            this.f2671f.m3811k(view);
        } else {
            this.f2671f.m3803b(view, true);
        }
    }

    /* JADX INFO: renamed from: g0 */
    static void m3235g0(View view, Rect rect) {
        C0443o c0443o = (C0443o) view.getLayoutParams();
        Rect rect2 = c0443o.f2777b;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) c0443o).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) c0443o).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) c0443o).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) c0443o).bottomMargin);
    }

    private C0282l getScrollingChildHelper() {
        if (this.f2696r0 == null) {
            this.f2696r0 = new C0282l(this);
        }
        return this.f2696r0;
    }

    /* JADX INFO: renamed from: h0 */
    private int m3236h0(View view) {
        int id = view.getId();
        while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
            view = ((ViewGroup) view).getFocusedChild();
            if (view.getId() != -1) {
                id = view.getId();
            }
        }
        return id;
    }

    /* JADX INFO: renamed from: h1 */
    private void m3237h1(AbstractC0434f abstractC0434f, boolean z, boolean z2) {
        AbstractC0434f abstractC0434f2 = this.f2683l;
        if (abstractC0434f2 != null) {
            abstractC0434f2.m3424t(this.f2663b);
            this.f2683l.m3417m(this);
        }
        if (!z || z2) {
            m3277T0();
        }
        this.f2669e.m3797u();
        AbstractC0434f abstractC0434f3 = this.f2683l;
        this.f2683l = abstractC0434f;
        if (abstractC0434f != null) {
            abstractC0434f.m3422r(this.f2663b);
            abstractC0434f.m3413i(this);
        }
        AbstractC0442n abstractC0442n = this.f2685m;
        if (abstractC0442n != null) {
            abstractC0442n.m3480E0(abstractC0434f3, this.f2683l);
        }
        this.f2665c.m3630x(abstractC0434f3, this.f2683l, z);
        this.f2676h0.f2818g = true;
    }

    /* JADX INFO: renamed from: i0 */
    private String m3238i0(Context context, String str) {
        if (str.charAt(0) == '.') {
            return context.getPackageName() + str;
        }
        if (str.contains(".")) {
            return str;
        }
        return RecyclerView.class.getPackage().getName() + '.' + str;
    }

    /* JADX INFO: renamed from: k0 */
    private void m3239k0(long j, AbstractC0431c0 abstractC0431c0, AbstractC0431c0 abstractC0431c02) {
        int iM3808g = this.f2671f.m3808g();
        for (int i = 0; i < iM3808g; i++) {
            AbstractC0431c0 abstractC0431c0M3233f0 = m3233f0(this.f2671f.m3807f(i));
            if (abstractC0431c0M3233f0 != abstractC0431c0 && m3289c0(abstractC0431c0M3233f0) == j) {
                AbstractC0434f abstractC0434f = this.f2683l;
                if (abstractC0434f == null || !abstractC0434f.m3411g()) {
                    throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + abstractC0431c0M3233f0 + " \n View Holder 2:" + abstractC0431c0 + m3272P());
                }
                throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + abstractC0431c0M3233f0 + " \n View Holder 2:" + abstractC0431c0 + m3272P());
            }
        }
        String str = "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + abstractC0431c02 + " cannot be found but it is necessary for " + abstractC0431c0 + m3272P();
    }

    /* JADX INFO: renamed from: m */
    private void m3240m(AbstractC0431c0 abstractC0431c0, AbstractC0431c0 abstractC0431c02, AbstractC0439k.c cVar, AbstractC0439k.c cVar2, boolean z, boolean z2) {
        abstractC0431c0.m3354G(false);
        if (z) {
            m3234g(abstractC0431c0);
        }
        if (abstractC0431c0 != abstractC0431c02) {
            if (z2) {
                m3234g(abstractC0431c02);
            }
            abstractC0431c0.f2728h = abstractC0431c02;
            m3234g(abstractC0431c0);
            this.f2665c.m3606J(abstractC0431c0);
            abstractC0431c02.m3354G(false);
            abstractC0431c02.f2729i = abstractC0431c0;
        }
        if (this.f2651M.mo3432b(abstractC0431c0, abstractC0431c02, cVar, cVar2)) {
            m3267L0();
        }
    }

    /* JADX INFO: renamed from: m0 */
    private boolean m3241m0() {
        int iM3808g = this.f2671f.m3808g();
        for (int i = 0; i < iM3808g; i++) {
            AbstractC0431c0 abstractC0431c0M3233f0 = m3233f0(this.f2671f.m3807f(i));
            if (abstractC0431c0M3233f0 != null && !abstractC0431c0M3233f0.m3357J() && abstractC0431c0M3233f0.m3383y()) {
                return true;
            }
        }
        return false;
    }

    @SuppressLint({"InlinedApi"})
    /* JADX INFO: renamed from: o0 */
    private void m3242o0() {
        if (C0292v.m2044B(this) == 0) {
            C0292v.m2125y0(this, 8);
        }
    }

    /* JADX INFO: renamed from: p0 */
    private void m3243p0() {
        this.f2671f = new C0462b(new C0432d());
    }

    /* JADX INFO: renamed from: q */
    private void m3244q() {
        m3227b1();
        setScrollState(0);
    }

    /* JADX INFO: renamed from: r */
    static void m3245r(AbstractC0431c0 abstractC0431c0) {
        WeakReference<RecyclerView> weakReference = abstractC0431c0.f2722b;
        if (weakReference != null) {
            RecyclerView recyclerView = weakReference.get();
            while (recyclerView != null) {
                if (recyclerView == abstractC0431c0.f2721a) {
                    return;
                }
                Object parent = recyclerView.getParent();
                recyclerView = parent instanceof View ? (View) parent : null;
            }
            abstractC0431c0.f2722b = null;
        }
    }

    /* JADX INFO: renamed from: u0 */
    private boolean m3246u0(View view, View view2, int i) {
        int i2;
        if (view2 == null || view2 == this || m3275R(view2) == null) {
            return false;
        }
        if (view == null || m3275R(view) == null) {
            return true;
        }
        this.f2677i.set(0, 0, view.getWidth(), view.getHeight());
        this.f2679j.set(0, 0, view2.getWidth(), view2.getHeight());
        offsetDescendantRectToMyCoords(view, this.f2677i);
        offsetDescendantRectToMyCoords(view2, this.f2679j);
        byte b2 = -1;
        int i3 = this.f2685m.m3511Z() == 1 ? -1 : 1;
        Rect rect = this.f2677i;
        int i4 = rect.left;
        int i5 = this.f2679j.left;
        if ((i4 < i5 || rect.right <= i5) && this.f2677i.right < this.f2679j.right) {
            i2 = 1;
        } else {
            Rect rect2 = this.f2677i;
            int i6 = rect2.right;
            int i7 = this.f2679j.right;
            i2 = ((i6 > i7 || rect2.left >= i7) && this.f2677i.left > this.f2679j.left) ? -1 : 0;
        }
        Rect rect3 = this.f2677i;
        int i8 = rect3.top;
        int i9 = this.f2679j.top;
        if ((i8 < i9 || rect3.bottom <= i9) && this.f2677i.bottom < this.f2679j.bottom) {
            b2 = 1;
        } else {
            Rect rect4 = this.f2677i;
            int i10 = rect4.bottom;
            int i11 = this.f2679j.bottom;
            if ((i10 <= i11 && rect4.top < i11) || this.f2677i.top <= this.f2679j.top) {
                b2 = 0;
            }
        }
        if (i == 1) {
            return b2 < 0 || (b2 == 0 && i2 * i3 <= 0);
        }
        if (i == 2) {
            return b2 > 0 || (b2 == 0 && i2 * i3 >= 0);
        }
        if (i == 17) {
            return i2 < 0;
        }
        if (i == 33) {
            return b2 < 0;
        }
        if (i == 66) {
            return i2 > 0;
        }
        if (i == 130) {
            return b2 > 0;
        }
        throw new IllegalArgumentException("Invalid direction: " + i + m3272P());
    }

    /* JADX INFO: renamed from: u1 */
    private void m3247u1() {
        this.f2670e0.m3342g();
        AbstractC0442n abstractC0442n = this.f2685m;
        if (abstractC0442n != null) {
            abstractC0442n.m3492K1();
        }
    }

    /* JADX INFO: renamed from: v */
    private void m3248v(Context context, String str, AttributeSet attributeSet, int i, int i2) {
        Constructor constructor;
        if (str != null) {
            String strTrim = str.trim();
            if (strTrim.isEmpty()) {
                return;
            }
            String strM3238i0 = m3238i0(context, strTrim);
            try {
                Class<? extends U> clsAsSubclass = Class.forName(strM3238i0, false, isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).asSubclass(AbstractC0442n.class);
                Object[] objArr = null;
                try {
                    constructor = clsAsSubclass.getConstructor(f2635E0);
                    objArr = new Object[]{context, attributeSet, Integer.valueOf(i), Integer.valueOf(i2)};
                } catch (NoSuchMethodException e) {
                    try {
                        constructor = clsAsSubclass.getConstructor(new Class[0]);
                    } catch (NoSuchMethodException e2) {
                        e2.initCause(e);
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + strM3238i0, e2);
                    }
                }
                constructor.setAccessible(true);
                setLayoutManager((AbstractC0442n) constructor.newInstance(objArr));
            } catch (ClassCastException e3) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + strM3238i0, e3);
            } catch (ClassNotFoundException e4) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + strM3238i0, e4);
            } catch (IllegalAccessException e5) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + strM3238i0, e5);
            } catch (InstantiationException e6) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + strM3238i0, e6);
            } catch (InvocationTargetException e7) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + strM3238i0, e7);
            }
        }
    }

    /* JADX INFO: renamed from: x */
    private boolean m3249x(int i, int i2) {
        m3222U(this.f2694q0);
        int[] iArr = this.f2694q0;
        return (iArr[0] == i && iArr[1] == i2) ? false : true;
    }

    /* JADX INFO: renamed from: A0 */
    void m3250A0(int i, int i2) {
        int iM3810j = this.f2671f.m3810j();
        for (int i3 = 0; i3 < iM3810j; i3++) {
            AbstractC0431c0 abstractC0431c0M3233f0 = m3233f0(this.f2671f.m3809i(i3));
            if (abstractC0431c0M3233f0 != null && !abstractC0431c0M3233f0.m3357J() && abstractC0431c0M3233f0.f2723c >= i) {
                abstractC0431c0M3233f0.m3348A(i2, false);
                this.f2676h0.f2818g = true;
            }
        }
        this.f2665c.m3627u(i, i2);
        requestLayout();
    }

    /* JADX INFO: renamed from: B */
    void m3251B() {
        if (this.f2683l == null || this.f2685m == null) {
            return;
        }
        C0454z c0454z = this.f2676h0;
        c0454z.f2821j = false;
        if (c0454z.f2816e == 1) {
            m3211C();
            this.f2685m.m3563z1(this);
            m3212D();
        } else if (!this.f2669e.m3794q() && this.f2685m.m3544o0() == getWidth() && this.f2685m.m3508W() == getHeight()) {
            this.f2685m.m3563z1(this);
        } else {
            this.f2685m.m3563z1(this);
            m3212D();
        }
        m3213E();
    }

    /* JADX INFO: renamed from: B0 */
    void m3252B0(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int iM3810j = this.f2671f.m3810j();
        if (i < i2) {
            i5 = -1;
            i4 = i;
            i3 = i2;
        } else {
            i3 = i;
            i4 = i2;
            i5 = 1;
        }
        for (int i7 = 0; i7 < iM3810j; i7++) {
            AbstractC0431c0 abstractC0431c0M3233f0 = m3233f0(this.f2671f.m3809i(i7));
            if (abstractC0431c0M3233f0 != null && (i6 = abstractC0431c0M3233f0.f2723c) >= i4 && i6 <= i3) {
                if (i6 == i) {
                    abstractC0431c0M3233f0.m3348A(i2 - i, false);
                } else {
                    abstractC0431c0M3233f0.m3348A(i5, false);
                }
                this.f2676h0.f2818g = true;
            }
        }
        this.f2665c.m3628v(i, i2);
        requestLayout();
    }

    /* JADX INFO: renamed from: C0 */
    void m3253C0(int i, int i2, boolean z) {
        int i3 = i + i2;
        int iM3810j = this.f2671f.m3810j();
        for (int i4 = 0; i4 < iM3810j; i4++) {
            AbstractC0431c0 abstractC0431c0M3233f0 = m3233f0(this.f2671f.m3809i(i4));
            if (abstractC0431c0M3233f0 != null && !abstractC0431c0M3233f0.m3357J()) {
                int i5 = abstractC0431c0M3233f0.f2723c;
                if (i5 >= i3) {
                    abstractC0431c0M3233f0.m3348A(-i2, z);
                    this.f2676h0.f2818g = true;
                } else if (i5 >= i) {
                    abstractC0431c0M3233f0.m3367i(i - 1, -i2, z);
                    this.f2676h0.f2818g = true;
                }
            }
        }
        this.f2665c.m3629w(i, i2, z);
        requestLayout();
    }

    /* JADX INFO: renamed from: D0 */
    public void m3254D0(View view) {
    }

    /* JADX INFO: renamed from: E0 */
    public void m3255E0(View view) {
    }

    /* JADX INFO: renamed from: F */
    public boolean m3256F(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return getScrollingChildHelper().m2024d(i, i2, iArr, iArr2, i3);
    }

    /* JADX INFO: renamed from: F0 */
    void m3257F0() {
        this.f2644F++;
    }

    /* JADX INFO: renamed from: G */
    public final void m3258G(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        getScrollingChildHelper().m2025e(i, i2, i3, i4, iArr, i5, iArr2);
    }

    /* JADX INFO: renamed from: G0 */
    void m3259G0() {
        m3261H0(true);
    }

    /* JADX INFO: renamed from: H */
    void m3260H(int i) {
        AbstractC0442n abstractC0442n = this.f2685m;
        if (abstractC0442n != null) {
            abstractC0442n.mo3524e1(i);
        }
        m3264J0(i);
        AbstractC0447s abstractC0447s = this.f2678i0;
        if (abstractC0447s != null) {
            abstractC0447s.mo3580a(this, i);
        }
        List<AbstractC0447s> list = this.f2680j0;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f2680j0.get(size).mo3580a(this, i);
            }
        }
    }

    /* JADX INFO: renamed from: H0 */
    void m3261H0(boolean z) {
        int i = this.f2644F - 1;
        this.f2644F = i;
        if (i < 1) {
            this.f2644F = 0;
            if (z) {
                m3210A();
                m3263J();
            }
        }
    }

    /* JADX INFO: renamed from: I */
    void m3262I(int i, int i2) {
        this.f2645G++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i, scrollY - i2);
        m3265K0(i, i2);
        AbstractC0447s abstractC0447s = this.f2678i0;
        if (abstractC0447s != null) {
            abstractC0447s.mo3581b(this, i, i2);
        }
        List<AbstractC0447s> list = this.f2680j0;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f2680j0.get(size).mo3581b(this, i, i2);
            }
        }
        this.f2645G--;
    }

    /* JADX INFO: renamed from: J */
    void m3263J() {
        int i;
        for (int size = this.f2704v0.size() - 1; size >= 0; size--) {
            AbstractC0431c0 abstractC0431c0 = this.f2704v0.get(size);
            if (abstractC0431c0.f2721a.getParent() == this && !abstractC0431c0.m3357J() && (i = abstractC0431c0.f2737q) != -1) {
                C0292v.m2123x0(abstractC0431c0.f2721a, i);
                abstractC0431c0.f2737q = -1;
            }
        }
        this.f2704v0.clear();
    }

    /* JADX INFO: renamed from: J0 */
    public void m3264J0(int i) {
    }

    /* JADX INFO: renamed from: K0 */
    public void m3265K0(int i, int i2) {
    }

    /* JADX INFO: renamed from: L */
    void m3266L() {
        if (this.f2650L != null) {
            return;
        }
        EdgeEffect edgeEffectM3429a = this.f2646H.m3429a(this, 3);
        this.f2650L = edgeEffectM3429a;
        if (this.f2675h) {
            edgeEffectM3429a.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffectM3429a.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    /* JADX INFO: renamed from: L0 */
    void m3267L0() {
        if (this.f2688n0 || !this.f2695r) {
            return;
        }
        C0292v.m2089g0(this, this.f2706w0);
        this.f2688n0 = true;
    }

    /* JADX INFO: renamed from: M */
    void m3268M() {
        if (this.f2647I != null) {
            return;
        }
        EdgeEffect edgeEffectM3429a = this.f2646H.m3429a(this, 0);
        this.f2647I = edgeEffectM3429a;
        if (this.f2675h) {
            edgeEffectM3429a.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffectM3429a.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    /* JADX INFO: renamed from: N */
    void m3269N() {
        if (this.f2649K != null) {
            return;
        }
        EdgeEffect edgeEffectM3429a = this.f2646H.m3429a(this, 2);
        this.f2649K = edgeEffectM3429a;
        if (this.f2675h) {
            edgeEffectM3429a.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffectM3429a.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    /* JADX INFO: renamed from: O */
    void m3270O() {
        if (this.f2648J != null) {
            return;
        }
        EdgeEffect edgeEffectM3429a = this.f2646H.m3429a(this, 1);
        this.f2648J = edgeEffectM3429a;
        if (this.f2675h) {
            edgeEffectM3429a.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffectM3429a.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    /* JADX INFO: renamed from: O0 */
    void m3271O0(boolean z) {
        this.f2643E = z | this.f2643E;
        this.f2642D = true;
        m3330x0();
    }

    /* JADX INFO: renamed from: P */
    String m3272P() {
        return " " + super.toString() + ", adapter:" + this.f2683l + ", layout:" + this.f2685m + ", context:" + getContext();
    }

    /* JADX INFO: renamed from: Q */
    final void m3273Q(C0454z c0454z) {
        if (getScrollState() != 2) {
            c0454z.f2827p = 0;
            c0454z.f2828q = 0;
        } else {
            OverScroller overScroller = this.f2670e0.f2714d;
            c0454z.f2827p = overScroller.getFinalX() - overScroller.getCurrX();
            c0454z.f2828q = overScroller.getFinalY() - overScroller.getCurrY();
        }
    }

    /* JADX INFO: renamed from: Q0 */
    void m3274Q0(AbstractC0431c0 abstractC0431c0, AbstractC0439k.c cVar) {
        abstractC0431c0.m3353F(0, 8192);
        if (this.f2676h0.f2820i && abstractC0431c0.m3383y() && !abstractC0431c0.m3380v() && !abstractC0431c0.m3357J()) {
            this.f2673g.m3965c(m3289c0(abstractC0431c0), abstractC0431c0);
        }
        this.f2673g.m3967e(abstractC0431c0, cVar);
    }

    /* JADX INFO: renamed from: R */
    public View m3275R(View view) {
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

    /* JADX INFO: renamed from: S */
    public AbstractC0431c0 m3276S(View view) {
        View viewM3275R = m3275R(view);
        if (viewM3275R == null) {
            return null;
        }
        return m3292e0(viewM3275R);
    }

    /* JADX INFO: renamed from: T0 */
    void m3277T0() {
        AbstractC0439k abstractC0439k = this.f2651M;
        if (abstractC0439k != null) {
            abstractC0439k.mo3440k();
        }
        AbstractC0442n abstractC0442n = this.f2685m;
        if (abstractC0442n != null) {
            abstractC0442n.m3537k1(this.f2665c);
            this.f2685m.m3539l1(this.f2665c);
        }
        this.f2665c.m3611c();
    }

    /* JADX INFO: renamed from: U0 */
    boolean m3278U0(View view) {
        m3314p1();
        boolean zM3817r = this.f2671f.m3817r(view);
        if (zM3817r) {
            AbstractC0431c0 abstractC0431c0M3233f0 = m3233f0(view);
            this.f2665c.m3606J(abstractC0431c0M3233f0);
            this.f2665c.m3600C(abstractC0431c0M3233f0);
        }
        m3318r1(!zM3817r);
        return zM3817r;
    }

    /* JADX INFO: renamed from: V0 */
    public void m3279V0(AbstractC0441m abstractC0441m) {
        AbstractC0442n abstractC0442n = this.f2685m;
        if (abstractC0442n != null) {
            abstractC0442n.mo3180g("Cannot remove item decoration during a scroll  or layout");
        }
        this.f2689o.remove(abstractC0441m);
        if (this.f2689o.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        m3329w0();
        requestLayout();
    }

    /* JADX INFO: renamed from: W0 */
    public void m3280W0(InterfaceC0446r interfaceC0446r) {
        this.f2691p.remove(interfaceC0446r);
        if (this.f2693q == interfaceC0446r) {
            this.f2693q = null;
        }
    }

    /* JADX INFO: renamed from: X */
    public AbstractC0431c0 m3281X(int i) {
        AbstractC0431c0 abstractC0431c0 = null;
        if (this.f2642D) {
            return null;
        }
        int iM3810j = this.f2671f.m3810j();
        for (int i2 = 0; i2 < iM3810j; i2++) {
            AbstractC0431c0 abstractC0431c0M3233f0 = m3233f0(this.f2671f.m3809i(i2));
            if (abstractC0431c0M3233f0 != null && !abstractC0431c0M3233f0.m3380v() && m3288b0(abstractC0431c0M3233f0) == i) {
                if (!this.f2671f.m3813n(abstractC0431c0M3233f0.f2721a)) {
                    return abstractC0431c0M3233f0;
                }
                abstractC0431c0 = abstractC0431c0M3233f0;
            }
        }
        return abstractC0431c0;
    }

    /* JADX INFO: renamed from: X0 */
    public void m3282X0(AbstractC0447s abstractC0447s) {
        List<AbstractC0447s> list = this.f2680j0;
        if (list != null) {
            list.remove(abstractC0447s);
        }
    }

    /* JADX INFO: renamed from: Y */
    public AbstractC0431c0 m3283Y(long j) {
        AbstractC0434f abstractC0434f = this.f2683l;
        AbstractC0431c0 abstractC0431c0 = null;
        if (abstractC0434f != null && abstractC0434f.m3411g()) {
            int iM3810j = this.f2671f.m3810j();
            for (int i = 0; i < iM3810j; i++) {
                AbstractC0431c0 abstractC0431c0M3233f0 = m3233f0(this.f2671f.m3809i(i));
                if (abstractC0431c0M3233f0 != null && !abstractC0431c0M3233f0.m3380v() && abstractC0431c0M3233f0.m3369k() == j) {
                    if (!this.f2671f.m3813n(abstractC0431c0M3233f0.f2721a)) {
                        return abstractC0431c0M3233f0;
                    }
                    abstractC0431c0 = abstractC0431c0M3233f0;
                }
            }
        }
        return abstractC0431c0;
    }

    /* JADX INFO: renamed from: Y0 */
    void m3284Y0() {
        AbstractC0431c0 abstractC0431c0;
        int iM3808g = this.f2671f.m3808g();
        for (int i = 0; i < iM3808g; i++) {
            View viewM3807f = this.f2671f.m3807f(i);
            AbstractC0431c0 abstractC0431c0M3292e0 = m3292e0(viewM3807f);
            if (abstractC0431c0M3292e0 != null && (abstractC0431c0 = abstractC0431c0M3292e0.f2729i) != null) {
                View view = abstractC0431c0.f2721a;
                int left = viewM3807f.getLeft();
                int top = viewM3807f.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002a  */
    /* JADX INFO: renamed from: Z */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    AbstractC0431c0 m3285Z(int i, boolean z) {
        int iM3810j = this.f2671f.m3810j();
        AbstractC0431c0 abstractC0431c0 = null;
        for (int i2 = 0; i2 < iM3810j; i2++) {
            AbstractC0431c0 abstractC0431c0M3233f0 = m3233f0(this.f2671f.m3809i(i2));
            if (abstractC0431c0M3233f0 != null && !abstractC0431c0M3233f0.m3380v()) {
                if (z) {
                    if (abstractC0431c0M3233f0.f2723c != i) {
                        continue;
                    } else {
                        if (!this.f2671f.m3813n(abstractC0431c0M3233f0.f2721a)) {
                            return abstractC0431c0M3233f0;
                        }
                        abstractC0431c0 = abstractC0431c0M3233f0;
                    }
                } else if (abstractC0431c0M3233f0.m3371m() != i) {
                    continue;
                }
            }
        }
        return abstractC0431c0;
    }

    /* JADX INFO: renamed from: a */
    void m3286a(int i, int i2) {
        if (i < 0) {
            m3268M();
            if (this.f2647I.isFinished()) {
                this.f2647I.onAbsorb(-i);
            }
        } else if (i > 0) {
            m3269N();
            if (this.f2649K.isFinished()) {
                this.f2649K.onAbsorb(i);
            }
        }
        if (i2 < 0) {
            m3270O();
            if (this.f2648J.isFinished()) {
                this.f2648J.onAbsorb(-i2);
            }
        } else if (i2 > 0) {
            m3266L();
            if (this.f2650L.isFinished()) {
                this.f2650L.onAbsorb(i2);
            }
        }
        if (i == 0 && i2 == 0) {
            return;
        }
        C0292v.m2087f0(this);
    }

    /* JADX INFO: renamed from: a0 */
    public boolean m3287a0(int i, int i2) {
        AbstractC0442n abstractC0442n = this.f2685m;
        if (abstractC0442n == null || this.f2707x) {
            return false;
        }
        boolean zMo3181k = abstractC0442n.mo3181k();
        boolean zMo3182l = this.f2685m.mo3182l();
        if (!zMo3181k || Math.abs(i) < this.f2661W) {
            i = 0;
        }
        if (!zMo3182l || Math.abs(i2) < this.f2661W) {
            i2 = 0;
        }
        if (i == 0 && i2 == 0) {
            return false;
        }
        float f = i;
        float f2 = i2;
        if (!dispatchNestedPreFling(f, f2)) {
            boolean z = zMo3181k || zMo3182l;
            dispatchNestedFling(f, f2, z);
            AbstractC0445q abstractC0445q = this.f2660V;
            if (abstractC0445q != null && abstractC0445q.mo3576a(i, i2)) {
                return true;
            }
            if (z) {
                int i3 = zMo3181k ? 1 : 0;
                if (zMo3182l) {
                    i3 |= 2;
                }
                m3316q1(i3, 1);
                int i4 = this.f2662a0;
                int iMax = Math.max(-i4, Math.min(i, i4));
                int i5 = this.f2662a0;
                this.f2670e0.m3339c(iMax, Math.max(-i5, Math.min(i2, i5)));
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        AbstractC0442n abstractC0442n = this.f2685m;
        if (abstractC0442n == null || !abstractC0442n.m3482F0(this, arrayList, i, i2)) {
            super.addFocusables(arrayList, i, i2);
        }
    }

    /* JADX INFO: renamed from: b0 */
    int m3288b0(AbstractC0431c0 abstractC0431c0) {
        if (abstractC0431c0.m3374p(524) || !abstractC0431c0.m3377s()) {
            return -1;
        }
        return this.f2669e.m3786e(abstractC0431c0.f2723c);
    }

    /* JADX INFO: renamed from: c0 */
    long m3289c0(AbstractC0431c0 abstractC0431c0) {
        return this.f2683l.m3411g() ? abstractC0431c0.m3369k() : abstractC0431c0.f2723c;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C0443o) && this.f2685m.mo3110m((C0443o) layoutParams);
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        AbstractC0442n abstractC0442n = this.f2685m;
        if (abstractC0442n != null && abstractC0442n.mo3181k()) {
            return this.f2685m.mo3187q(this.f2676h0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        AbstractC0442n abstractC0442n = this.f2685m;
        if (abstractC0442n != null && abstractC0442n.mo3181k()) {
            return this.f2685m.mo3111r(this.f2676h0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        AbstractC0442n abstractC0442n = this.f2685m;
        if (abstractC0442n != null && abstractC0442n.mo3181k()) {
            return this.f2685m.mo3112s(this.f2676h0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        AbstractC0442n abstractC0442n = this.f2685m;
        if (abstractC0442n != null && abstractC0442n.mo3182l()) {
            return this.f2685m.mo3191t(this.f2676h0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        AbstractC0442n abstractC0442n = this.f2685m;
        if (abstractC0442n != null && abstractC0442n.mo3182l()) {
            return this.f2685m.mo3114u(this.f2676h0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        AbstractC0442n abstractC0442n = this.f2685m;
        if (abstractC0442n != null && abstractC0442n.mo3182l()) {
            return this.f2685m.mo3116v(this.f2676h0);
        }
        return 0;
    }

    /* JADX INFO: renamed from: d0 */
    public int m3290d0(View view) {
        AbstractC0431c0 abstractC0431c0M3233f0 = m3233f0(view);
        if (abstractC0431c0M3233f0 != null) {
            return abstractC0431c0M3233f0.m3371m();
        }
        return -1;
    }

    /* JADX INFO: renamed from: d1 */
    void m3291d1() {
        int iM3810j = this.f2671f.m3810j();
        for (int i = 0; i < iM3810j; i++) {
            AbstractC0431c0 abstractC0431c0M3233f0 = m3233f0(this.f2671f.m3809i(i));
            if (!abstractC0431c0M3233f0.m3357J()) {
                abstractC0431c0M3233f0.m3352E();
            }
        }
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return getScrollingChildHelper().m2021a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return getScrollingChildHelper().m2022b(f, f2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().m2023c(i, i2, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return getScrollingChildHelper().m2026f(i, i2, i3, i4, iArr);
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
        boolean z;
        super.draw(canvas);
        int size = this.f2689o.size();
        boolean z2 = false;
        for (int i = 0; i < size; i++) {
            this.f2689o.get(i).mo3461i(canvas, this, this.f2676h0);
        }
        EdgeEffect edgeEffect = this.f2647I;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z = false;
        } else {
            int iSave = canvas.save();
            int paddingBottom = this.f2675h ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, CropImageView.DEFAULT_ASPECT_RATIO);
            EdgeEffect edgeEffect2 = this.f2647I;
            z = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(iSave);
        }
        EdgeEffect edgeEffect3 = this.f2648J;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int iSave2 = canvas.save();
            if (this.f2675h) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.f2648J;
            z |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(iSave2);
        }
        EdgeEffect edgeEffect5 = this.f2649K;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int iSave3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.f2675h ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(-paddingTop, -width);
            EdgeEffect edgeEffect6 = this.f2649K;
            z |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(iSave3);
        }
        EdgeEffect edgeEffect7 = this.f2650L;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int iSave4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.f2675h) {
                canvas.translate((-getWidth()) + getPaddingRight(), (-getHeight()) + getPaddingBottom());
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.f2650L;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z2 = true;
            }
            z |= z2;
            canvas.restoreToCount(iSave4);
        }
        if ((z || this.f2651M == null || this.f2689o.size() <= 0 || !this.f2651M.mo3445p()) ? z : true) {
            C0292v.m2087f0(this);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        return super.drawChild(canvas, view, j);
    }

    /* JADX INFO: renamed from: e0 */
    public AbstractC0431c0 m3292e0(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return m3233f0(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    /* JADX INFO: renamed from: e1 */
    boolean m3293e1(int i, int i2, MotionEvent motionEvent) {
        int i3;
        int i4;
        int i5;
        int i6;
        m3325u();
        if (this.f2683l != null) {
            int[] iArr = this.f2702u0;
            iArr[0] = 0;
            iArr[1] = 0;
            m3294f1(i, i2, iArr);
            int[] iArr2 = this.f2702u0;
            int i7 = iArr2[0];
            int i8 = iArr2[1];
            i3 = i8;
            i4 = i7;
            i5 = i - i7;
            i6 = i2 - i8;
        } else {
            i3 = 0;
            i4 = 0;
            i5 = 0;
            i6 = 0;
        }
        if (!this.f2689o.isEmpty()) {
            invalidate();
        }
        int[] iArr3 = this.f2702u0;
        iArr3[0] = 0;
        iArr3[1] = 0;
        m3258G(i4, i3, i5, i6, this.f2698s0, 0, iArr3);
        int[] iArr4 = this.f2702u0;
        int i9 = i5 - iArr4[0];
        int i10 = i6 - iArr4[1];
        boolean z = (iArr4[0] == 0 && iArr4[1] == 0) ? false : true;
        int i11 = this.f2657S;
        int[] iArr5 = this.f2698s0;
        this.f2657S = i11 - iArr5[0];
        this.f2658T -= iArr5[1];
        int[] iArr6 = this.f2700t0;
        iArr6[0] = iArr6[0] + iArr5[0];
        iArr6[1] = iArr6[1] + iArr5[1];
        if (getOverScrollMode() != 2) {
            if (motionEvent != null && !C0280j.m2016a(motionEvent, 8194)) {
                m3218P0(motionEvent.getX(), i9, motionEvent.getY(), i10);
            }
            m3322t(i, i2);
        }
        if (i4 != 0 || i3 != 0) {
            m3262I(i4, i3);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (!z && i4 == 0 && i3 == 0) ? false : true;
    }

    /* JADX INFO: renamed from: f1 */
    void m3294f1(int i, int i2, int[] iArr) {
        m3314p1();
        m3257F0();
        C0605c.m4756a("RV Scroll");
        m3273Q(this.f2676h0);
        int iMo3117w1 = i != 0 ? this.f2685m.mo3117w1(i, this.f2665c, this.f2676h0) : 0;
        int iMo3118y1 = i2 != 0 ? this.f2685m.mo3118y1(i2, this.f2665c, this.f2676h0) : 0;
        C0605c.m4757b();
        m3284Y0();
        m3259G0();
        m3318r1(false);
        if (iArr != null) {
            iArr[0] = iMo3117w1;
            iArr[1] = iMo3118y1;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public View focusSearch(View view, int i) {
        View viewMo3093J0;
        boolean z;
        View viewM3501Q0 = this.f2685m.m3501Q0(view, i);
        if (viewM3501Q0 != null) {
            return viewM3501Q0;
        }
        boolean z2 = (this.f2683l == null || this.f2685m == null || m3323t0() || this.f2707x) ? false : true;
        FocusFinder focusFinder = FocusFinder.getInstance();
        if (z2 && (i == 2 || i == 1)) {
            if (this.f2685m.mo3182l()) {
                int i2 = i == 2 ? 130 : 33;
                z = focusFinder.findNextFocus(this, view, i2) == null;
                if (f2633C0) {
                    i = i2;
                }
            } else {
                z = false;
            }
            if (!z && this.f2685m.mo3181k()) {
                int i3 = (this.f2685m.m3511Z() == 1) ^ (i == 2) ? 66 : 17;
                boolean z3 = focusFinder.findNextFocus(this, view, i3) == null;
                if (f2633C0) {
                    i = i3;
                }
                z = z3;
            }
            if (z) {
                m3325u();
                if (m3275R(view) == null) {
                    return null;
                }
                m3314p1();
                this.f2685m.mo3093J0(view, i, this.f2665c, this.f2676h0);
                m3318r1(false);
            }
            viewMo3093J0 = focusFinder.findNextFocus(this, view, i);
        } else {
            View viewFindNextFocus = focusFinder.findNextFocus(this, view, i);
            if (viewFindNextFocus == null && z2) {
                m3325u();
                if (m3275R(view) == null) {
                    return null;
                }
                m3314p1();
                viewMo3093J0 = this.f2685m.mo3093J0(view, i, this.f2665c, this.f2676h0);
                m3318r1(false);
            } else {
                viewMo3093J0 = viewFindNextFocus;
            }
        }
        if (viewMo3093J0 == null || viewMo3093J0.hasFocusable()) {
            return m3246u0(view, viewMo3093J0, i) ? viewMo3093J0 : super.focusSearch(view, i);
        }
        if (getFocusedChild() == null) {
            return super.focusSearch(view, i);
        }
        m3225Z0(viewMo3093J0, null);
        return view;
    }

    /* JADX INFO: renamed from: g1 */
    public void m3295g1(int i) {
        if (this.f2707x) {
            return;
        }
        m3324t1();
        AbstractC0442n abstractC0442n = this.f2685m;
        if (abstractC0442n == null) {
            return;
        }
        abstractC0442n.mo3192x1(i);
        awakenScrollBars();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        AbstractC0442n abstractC0442n = this.f2685m;
        if (abstractC0442n != null) {
            return abstractC0442n.mo3089D();
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + m3272P());
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        AbstractC0442n abstractC0442n = this.f2685m;
        if (abstractC0442n != null) {
            return abstractC0442n.mo3090E(getContext(), attributeSet);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + m3272P());
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public AbstractC0434f getAdapter() {
        return this.f2683l;
    }

    @Override // android.view.View
    public int getBaseline() {
        AbstractC0442n abstractC0442n = this.f2685m;
        return abstractC0442n != null ? abstractC0442n.m3484G() : super.getBaseline();
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        InterfaceC0437i interfaceC0437i = this.f2692p0;
        return interfaceC0437i == null ? super.getChildDrawingOrder(i, i2) : interfaceC0437i.m3428a(i, i2);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.f2675h;
    }

    public C0471k getCompatAccessibilityDelegate() {
        return this.f2690o0;
    }

    public C0438j getEdgeEffectFactory() {
        return this.f2646H;
    }

    public AbstractC0439k getItemAnimator() {
        return this.f2651M;
    }

    public int getItemDecorationCount() {
        return this.f2689o.size();
    }

    public AbstractC0442n getLayoutManager() {
        return this.f2685m;
    }

    public int getMaxFlingVelocity() {
        return this.f2662a0;
    }

    public int getMinFlingVelocity() {
        return this.f2661W;
    }

    long getNanoTime() {
        if (f2632B0) {
            return System.nanoTime();
        }
        return 0L;
    }

    public AbstractC0445q getOnFlingListener() {
        return this.f2660V;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.f2668d0;
    }

    public C0448t getRecycledViewPool() {
        return this.f2665c.m3617i();
    }

    public int getScrollState() {
        return this.f2652N;
    }

    /* JADX INFO: renamed from: h */
    public void m3296h(AbstractC0441m abstractC0441m) {
        m3297i(abstractC0441m, -1);
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().m2027j();
    }

    /* JADX INFO: renamed from: i */
    public void m3297i(AbstractC0441m abstractC0441m, int i) {
        AbstractC0442n abstractC0442n = this.f2685m;
        if (abstractC0442n != null) {
            abstractC0442n.mo3180g("Cannot add item decoration during a scroll  or layout");
        }
        if (this.f2689o.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i < 0) {
            this.f2689o.add(abstractC0441m);
        } else {
            this.f2689o.add(i, abstractC0441m);
        }
        m3329w0();
        requestLayout();
    }

    /* JADX INFO: renamed from: i1 */
    boolean m3298i1(AbstractC0431c0 abstractC0431c0, int i) {
        if (!m3323t0()) {
            C0292v.m2123x0(abstractC0431c0.f2721a, i);
            return true;
        }
        abstractC0431c0.f2737q = i;
        this.f2704v0.add(abstractC0431c0);
        return false;
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.f2695r;
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.f2707x;
    }

    @Override // android.view.View, androidx.core.view.InterfaceC0281k
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().m2029l();
    }

    /* JADX INFO: renamed from: j */
    public void m3299j(InterfaceC0446r interfaceC0446r) {
        this.f2691p.add(interfaceC0446r);
    }

    /* JADX INFO: renamed from: j0 */
    Rect m3300j0(View view) {
        C0443o c0443o = (C0443o) view.getLayoutParams();
        if (!c0443o.f2778c) {
            return c0443o.f2777b;
        }
        if (this.f2676h0.m3665e() && (c0443o.m3571b() || c0443o.m3573d())) {
            return c0443o.f2777b;
        }
        Rect rect = c0443o.f2777b;
        rect.set(0, 0, 0, 0);
        int size = this.f2689o.size();
        for (int i = 0; i < size; i++) {
            this.f2677i.set(0, 0, 0, 0);
            this.f2689o.get(i).m3457e(this.f2677i, view, this, this.f2676h0);
            int i2 = rect.left;
            Rect rect2 = this.f2677i;
            rect.left = i2 + rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        c0443o.f2778c = false;
        return rect;
    }

    /* JADX INFO: renamed from: j1 */
    boolean m3301j1(AccessibilityEvent accessibilityEvent) {
        if (!m3323t0()) {
            return false;
        }
        int iM1884a = accessibilityEvent != null ? C0268b.m1884a(accessibilityEvent) : 0;
        this.f2710z |= iM1884a != 0 ? iM1884a : 0;
        return true;
    }

    /* JADX INFO: renamed from: k */
    public void m3302k(AbstractC0447s abstractC0447s) {
        if (this.f2680j0 == null) {
            this.f2680j0 = new ArrayList();
        }
        this.f2680j0.add(abstractC0447s);
    }

    /* JADX INFO: renamed from: k1 */
    public void m3303k1(int i, int i2) {
        m3306l1(i, i2, null);
    }

    /* JADX INFO: renamed from: l */
    void m3304l(AbstractC0431c0 abstractC0431c0, AbstractC0439k.c cVar, AbstractC0439k.c cVar2) {
        abstractC0431c0.m3354G(false);
        if (this.f2651M.mo3431a(abstractC0431c0, cVar, cVar2)) {
            m3267L0();
        }
    }

    /* JADX INFO: renamed from: l0 */
    public boolean m3305l0() {
        return !this.f2701u || this.f2642D || this.f2669e.m3793p();
    }

    /* JADX INFO: renamed from: l1 */
    public void m3306l1(int i, int i2, Interpolator interpolator) {
        m3307m1(i, i2, interpolator, Integer.MIN_VALUE);
    }

    /* JADX INFO: renamed from: m1 */
    public void m3307m1(int i, int i2, Interpolator interpolator, int i3) {
        m3310n1(i, i2, interpolator, i3, false);
    }

    /* JADX INFO: renamed from: n */
    void m3308n(AbstractC0431c0 abstractC0431c0, AbstractC0439k.c cVar, AbstractC0439k.c cVar2) {
        m3234g(abstractC0431c0);
        abstractC0431c0.m3354G(false);
        if (this.f2651M.mo3433c(abstractC0431c0, cVar, cVar2)) {
            m3267L0();
        }
    }

    /* JADX INFO: renamed from: n0 */
    void m3309n0() {
        this.f2669e = new C0461a(new C0433e());
    }

    /* JADX INFO: renamed from: n1 */
    void m3310n1(int i, int i2, Interpolator interpolator, int i3, boolean z) {
        AbstractC0442n abstractC0442n = this.f2685m;
        if (abstractC0442n == null || this.f2707x) {
            return;
        }
        if (!abstractC0442n.mo3181k()) {
            i = 0;
        }
        if (!this.f2685m.mo3182l()) {
            i2 = 0;
        }
        if (i == 0 && i2 == 0) {
            return;
        }
        if (!(i3 == Integer.MIN_VALUE || i3 > 0)) {
            scrollBy(i, i2);
            return;
        }
        if (z) {
            int i4 = i != 0 ? 1 : 0;
            if (i2 != 0) {
                i4 |= 2;
            }
            m3316q1(i4, 1);
        }
        this.f2670e0.m3341f(i, i2, i3, interpolator);
    }

    /* JADX INFO: renamed from: o */
    void m3311o(String str) {
        if (m3323t0()) {
            if (str != null) {
                throw new IllegalStateException(str);
            }
            throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling" + m3272P());
        }
        if (this.f2645G > 0) {
            new IllegalStateException(BuildConfig.FLAVOR + m3272P());
        }
    }

    /* JADX INFO: renamed from: o1 */
    public void m3312o1(int i) {
        AbstractC0442n abstractC0442n;
        if (this.f2707x || (abstractC0442n = this.f2685m) == null) {
            return;
        }
        abstractC0442n.mo3164I1(this, this.f2676h0, i);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f2644F = 0;
        this.f2695r = true;
        this.f2701u = this.f2701u && !isLayoutRequested();
        AbstractC0442n abstractC0442n = this.f2685m;
        if (abstractC0442n != null) {
            abstractC0442n.m3561z(this);
        }
        this.f2688n0 = false;
        if (f2632B0) {
            RunnableC0465e runnableC0465e = RunnableC0465e.f2989f.get();
            this.f2672f0 = runnableC0465e;
            if (runnableC0465e == null) {
                this.f2672f0 = new RunnableC0465e();
                Display displayM2118v = C0292v.m2118v(this);
                float f = 60.0f;
                if (!isInEditMode() && displayM2118v != null) {
                    float refreshRate = displayM2118v.getRefreshRate();
                    if (refreshRate >= 30.0f) {
                        f = refreshRate;
                    }
                }
                RunnableC0465e runnableC0465e2 = this.f2672f0;
                runnableC0465e2.f2993d = (long) (1.0E9f / f);
                RunnableC0465e.f2989f.set(runnableC0465e2);
            }
            this.f2672f0.m3867a(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        RunnableC0465e runnableC0465e;
        super.onDetachedFromWindow();
        AbstractC0439k abstractC0439k = this.f2651M;
        if (abstractC0439k != null) {
            abstractC0439k.mo3440k();
        }
        m3324t1();
        this.f2695r = false;
        AbstractC0442n abstractC0442n = this.f2685m;
        if (abstractC0442n != null) {
            abstractC0442n.m3471A(this, this.f2665c);
        }
        this.f2704v0.clear();
        removeCallbacks(this.f2706w0);
        this.f2673g.m3972j();
        if (!f2632B0 || (runnableC0465e = this.f2672f0) == null) {
            return;
        }
        runnableC0465e.m3870j(this);
        this.f2672f0 = null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.f2689o.size();
        for (int i = 0; i < size; i++) {
            this.f2689o.get(i).mo3459g(canvas, this, this.f2676h0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006a  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float f;
        float axisValue;
        if (this.f2685m != null && !this.f2707x && motionEvent.getAction() == 8) {
            if ((motionEvent.getSource() & 2) != 0) {
                f = this.f2685m.mo3182l() ? -motionEvent.getAxisValue(9) : CropImageView.DEFAULT_ASPECT_RATIO;
                axisValue = this.f2685m.mo3181k() ? motionEvent.getAxisValue(10) : CropImageView.DEFAULT_ASPECT_RATIO;
                if (f != CropImageView.DEFAULT_ASPECT_RATIO || axisValue != CropImageView.DEFAULT_ASPECT_RATIO) {
                    m3293e1((int) (axisValue * this.f2664b0), (int) (f * this.f2666c0), motionEvent);
                }
            } else if ((motionEvent.getSource() & 4194304) != 0) {
                float axisValue2 = motionEvent.getAxisValue(26);
                if (this.f2685m.mo3182l()) {
                    f = -axisValue2;
                    if (f != CropImageView.DEFAULT_ASPECT_RATIO) {
                        m3293e1((int) (axisValue * this.f2664b0), (int) (f * this.f2666c0), motionEvent);
                    }
                } else {
                    if (this.f2685m.mo3181k()) {
                        axisValue = axisValue2;
                        f = CropImageView.DEFAULT_ASPECT_RATIO;
                        if (f != CropImageView.DEFAULT_ASPECT_RATIO) {
                        }
                    }
                    f = CropImageView.DEFAULT_ASPECT_RATIO;
                    if (f != CropImageView.DEFAULT_ASPECT_RATIO) {
                    }
                }
            } else {
                f = CropImageView.DEFAULT_ASPECT_RATIO;
                if (f != CropImageView.DEFAULT_ASPECT_RATIO) {
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        if (this.f2707x) {
            return false;
        }
        this.f2693q = null;
        if (m3221T(motionEvent)) {
            m3244q();
            return true;
        }
        AbstractC0442n abstractC0442n = this.f2685m;
        if (abstractC0442n == null) {
            return false;
        }
        boolean zMo3181k = abstractC0442n.mo3181k();
        boolean zMo3182l = this.f2685m.mo3182l();
        if (this.f2654P == null) {
            this.f2654P = VelocityTracker.obtain();
        }
        this.f2654P.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.f2709y) {
                this.f2709y = false;
            }
            this.f2653O = motionEvent.getPointerId(0);
            int x = (int) (motionEvent.getX() + 0.5f);
            this.f2657S = x;
            this.f2655Q = x;
            int y = (int) (motionEvent.getY() + 0.5f);
            this.f2658T = y;
            this.f2656R = y;
            if (this.f2652N == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
                m3321s1(1);
            }
            int[] iArr = this.f2700t0;
            iArr[1] = 0;
            iArr[0] = 0;
            int i = zMo3181k ? 1 : 0;
            if (zMo3182l) {
                i |= 2;
            }
            m3316q1(i, 0);
        } else if (actionMasked == 1) {
            this.f2654P.clear();
            m3321s1(0);
        } else if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.f2653O);
            if (iFindPointerIndex < 0) {
                String str = "Error processing scroll; pointer index for id " + this.f2653O + " not found. Did any MotionEvents get skipped?";
                return false;
            }
            int x2 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
            int y2 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
            if (this.f2652N != 1) {
                int i2 = x2 - this.f2655Q;
                int i3 = y2 - this.f2656R;
                if (!zMo3181k || Math.abs(i2) <= this.f2659U) {
                    z = false;
                } else {
                    this.f2657S = x2;
                    z = true;
                }
                if (zMo3182l && Math.abs(i3) > this.f2659U) {
                    this.f2658T = y2;
                    z = true;
                }
                if (z) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            m3244q();
        } else if (actionMasked == 5) {
            this.f2653O = motionEvent.getPointerId(actionIndex);
            int x3 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.f2657S = x3;
            this.f2655Q = x3;
            int y3 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.f2658T = y3;
            this.f2656R = y3;
        } else if (actionMasked == 6) {
            m3214I0(motionEvent);
        }
        return this.f2652N == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        C0605c.m4756a("RV OnLayout");
        m3251B();
        C0605c.m4757b();
        this.f2701u = true;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        AbstractC0442n abstractC0442n = this.f2685m;
        if (abstractC0442n == null) {
            m3328w(i, i2);
            return;
        }
        boolean z = false;
        if (abstractC0442n.mo3190s0()) {
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.f2685m.m3512Z0(this.f2665c, this.f2676h0, i, i2);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z = true;
            }
            if (z || this.f2683l == null) {
                return;
            }
            if (this.f2676h0.f2816e == 1) {
                m3211C();
            }
            this.f2685m.m3473A1(i, i2);
            this.f2676h0.f2821j = true;
            m3212D();
            this.f2685m.m3479D1(i, i2);
            if (this.f2685m.mo3162G1()) {
                this.f2685m.m3473A1(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                this.f2676h0.f2821j = true;
                m3212D();
                this.f2685m.m3479D1(i, i2);
                return;
            }
            return;
        }
        if (this.f2697s) {
            this.f2685m.m3512Z0(this.f2665c, this.f2676h0, i, i2);
            return;
        }
        if (this.f2639A) {
            m3314p1();
            m3257F0();
            m3217N0();
            m3259G0();
            C0454z c0454z = this.f2676h0;
            if (c0454z.f2823l) {
                c0454z.f2819h = true;
            } else {
                this.f2669e.m3788j();
                this.f2676h0.f2819h = false;
            }
            this.f2639A = false;
            m3318r1(false);
        } else if (this.f2676h0.f2823l) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        AbstractC0434f abstractC0434f = this.f2683l;
        if (abstractC0434f != null) {
            this.f2676h0.f2817f = abstractC0434f.mo3407c();
        } else {
            this.f2676h0.f2817f = 0;
        }
        m3314p1();
        this.f2685m.m3512Z0(this.f2665c, this.f2676h0, i, i2);
        m3318r1(false);
        this.f2676h0.f2819h = false;
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        if (m3323t0()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i, rect);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof C0452x)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0452x c0452x = (C0452x) parcelable;
        this.f2667d = c0452x;
        super.onRestoreInstanceState(c0452x.m4862j());
        AbstractC0442n abstractC0442n = this.f2685m;
        if (abstractC0442n == null || (parcelable2 = this.f2667d.f2796d) == null) {
            return;
        }
        abstractC0442n.mo3175c1(parcelable2);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        C0452x c0452x = new C0452x(super.onSaveInstanceState());
        C0452x c0452x2 = this.f2667d;
        if (c0452x2 != null) {
            c0452x.m3634k(c0452x2);
        } else {
            AbstractC0442n abstractC0442n = this.f2685m;
            if (abstractC0442n != null) {
                c0452x.f2796d = abstractC0442n.mo3177d1();
            } else {
                c0452x.f2796d = null;
            }
        }
        return c0452x;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i == i3 && i2 == i4) {
            return;
        }
        m3317r0();
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
        boolean z;
        boolean z2 = false;
        if (this.f2707x || this.f2709y) {
            return false;
        }
        if (m3215K(motionEvent)) {
            m3244q();
            return true;
        }
        AbstractC0442n abstractC0442n = this.f2685m;
        if (abstractC0442n == null) {
            return false;
        }
        boolean zMo3181k = abstractC0442n.mo3181k();
        boolean zMo3182l = this.f2685m.mo3182l();
        if (this.f2654P == null) {
            this.f2654P = VelocityTracker.obtain();
        }
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            int[] iArr = this.f2700t0;
            iArr[1] = 0;
            iArr[0] = 0;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        int[] iArr2 = this.f2700t0;
        motionEventObtain.offsetLocation(iArr2[0], iArr2[1]);
        if (actionMasked == 0) {
            this.f2653O = motionEvent.getPointerId(0);
            int x = (int) (motionEvent.getX() + 0.5f);
            this.f2657S = x;
            this.f2655Q = x;
            int y = (int) (motionEvent.getY() + 0.5f);
            this.f2658T = y;
            this.f2656R = y;
            int i = zMo3181k ? 1 : 0;
            if (zMo3182l) {
                i |= 2;
            }
            m3316q1(i, 0);
        } else if (actionMasked == 1) {
            this.f2654P.addMovement(motionEventObtain);
            this.f2654P.computeCurrentVelocity(1000, this.f2662a0);
            float f = zMo3181k ? -this.f2654P.getXVelocity(this.f2653O) : CropImageView.DEFAULT_ASPECT_RATIO;
            float f2 = zMo3182l ? -this.f2654P.getYVelocity(this.f2653O) : CropImageView.DEFAULT_ASPECT_RATIO;
            if ((f == CropImageView.DEFAULT_ASPECT_RATIO && f2 == CropImageView.DEFAULT_ASPECT_RATIO) || !m3287a0((int) f, (int) f2)) {
                setScrollState(0);
            }
            m3227b1();
            z2 = true;
        } else if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.f2653O);
            if (iFindPointerIndex < 0) {
                String str = "Error processing scroll; pointer index for id " + this.f2653O + " not found. Did any MotionEvents get skipped?";
                return false;
            }
            int x2 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
            int y2 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
            int iMax = this.f2657S - x2;
            int iMax2 = this.f2658T - y2;
            if (this.f2652N != 1) {
                if (zMo3181k) {
                    iMax = iMax > 0 ? Math.max(0, iMax - this.f2659U) : Math.min(0, iMax + this.f2659U);
                    if (iMax != 0) {
                        z = true;
                    }
                    if (zMo3182l) {
                    }
                    if (z) {
                    }
                } else {
                    z = false;
                    if (zMo3182l) {
                        iMax2 = iMax2 > 0 ? Math.max(0, iMax2 - this.f2659U) : Math.min(0, iMax2 + this.f2659U);
                        if (iMax2 != 0) {
                            z = true;
                        }
                    }
                    if (z) {
                        setScrollState(1);
                    }
                }
            }
            int i2 = iMax;
            int i3 = iMax2;
            if (this.f2652N == 1) {
                int[] iArr3 = this.f2702u0;
                iArr3[0] = 0;
                iArr3[1] = 0;
                if (m3256F(zMo3181k ? i2 : 0, zMo3182l ? i3 : 0, this.f2702u0, this.f2698s0, 0)) {
                    int[] iArr4 = this.f2702u0;
                    i2 -= iArr4[0];
                    i3 -= iArr4[1];
                    int[] iArr5 = this.f2700t0;
                    int i4 = iArr5[0];
                    int[] iArr6 = this.f2698s0;
                    iArr5[0] = i4 + iArr6[0];
                    iArr5[1] = iArr5[1] + iArr6[1];
                    getParent().requestDisallowInterceptTouchEvent(true);
                }
                int i5 = i3;
                int[] iArr7 = this.f2698s0;
                this.f2657S = x2 - iArr7[0];
                this.f2658T = y2 - iArr7[1];
                if (m3293e1(zMo3181k ? i2 : 0, zMo3182l ? i5 : 0, motionEvent)) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                }
                if (this.f2672f0 != null && (i2 != 0 || i5 != 0)) {
                    this.f2672f0.m3868f(this, i2, i5);
                }
            }
        } else if (actionMasked == 3) {
            m3244q();
        } else if (actionMasked == 5) {
            this.f2653O = motionEvent.getPointerId(actionIndex);
            int x3 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.f2657S = x3;
            this.f2655Q = x3;
            int y3 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.f2658T = y3;
            this.f2656R = y3;
        } else if (actionMasked == 6) {
            m3214I0(motionEvent);
        }
        if (!z2) {
            this.f2654P.addMovement(motionEventObtain);
        }
        motionEventObtain.recycle();
        return true;
    }

    /* JADX INFO: renamed from: p */
    boolean m3313p(AbstractC0431c0 abstractC0431c0) {
        AbstractC0439k abstractC0439k = this.f2651M;
        return abstractC0439k == null || abstractC0439k.mo3436g(abstractC0431c0, abstractC0431c0.m3373o());
    }

    /* JADX INFO: renamed from: p1 */
    void m3314p1() {
        int i = this.f2703v + 1;
        this.f2703v = i;
        if (i != 1 || this.f2707x) {
            return;
        }
        this.f2705w = false;
    }

    /* JADX INFO: renamed from: q0 */
    void m3315q0(StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2) {
        if (stateListDrawable != null && drawable != null && stateListDrawable2 != null && drawable2 != null) {
            Resources resources = getContext().getResources();
            new C0464d(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(C0648b.fastscroll_default_thickness), resources.getDimensionPixelSize(C0648b.fastscroll_minimum_range), resources.getDimensionPixelOffset(C0648b.fastscroll_margin));
        } else {
            throw new IllegalArgumentException("Trying to set fast scroller without both required drawables." + m3272P());
        }
    }

    /* JADX INFO: renamed from: q1 */
    public boolean m3316q1(int i, int i2) {
        return getScrollingChildHelper().m2032p(i, i2);
    }

    /* JADX INFO: renamed from: r0 */
    void m3317r0() {
        this.f2650L = null;
        this.f2648J = null;
        this.f2649K = null;
        this.f2647I = null;
    }

    /* JADX INFO: renamed from: r1 */
    void m3318r1(boolean z) {
        if (this.f2703v < 1) {
            this.f2703v = 1;
        }
        if (!z && !this.f2707x) {
            this.f2705w = false;
        }
        if (this.f2703v == 1) {
            if (z && this.f2705w && !this.f2707x && this.f2685m != null && this.f2683l != null) {
                m3251B();
            }
            if (!this.f2707x) {
                this.f2705w = false;
            }
        }
        this.f2703v--;
    }

    @Override // android.view.ViewGroup
    protected void removeDetachedView(View view, boolean z) {
        AbstractC0431c0 abstractC0431c0M3233f0 = m3233f0(view);
        if (abstractC0431c0M3233f0 != null) {
            if (abstractC0431c0M3233f0.m3382x()) {
                abstractC0431c0M3233f0.m3365f();
            } else if (!abstractC0431c0M3233f0.m3357J()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + abstractC0431c0M3233f0 + m3272P());
            }
        }
        view.clearAnimation();
        m3333z(view);
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.f2685m.m3517b1(this, this.f2676h0, view, view2) && view2 != null) {
            m3225Z0(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return this.f2685m.m3551r1(this, view, rect, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        int size = this.f2691p.size();
        for (int i = 0; i < size; i++) {
            this.f2691p.get(i).mo3579c(z);
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.f2703v != 0 || this.f2707x) {
            this.f2705w = true;
        } else {
            super.requestLayout();
        }
    }

    /* JADX INFO: renamed from: s */
    void m3319s() {
        int iM3810j = this.f2671f.m3810j();
        for (int i = 0; i < iM3810j; i++) {
            AbstractC0431c0 abstractC0431c0M3233f0 = m3233f0(this.f2671f.m3809i(i));
            if (!abstractC0431c0M3233f0.m3357J()) {
                abstractC0431c0M3233f0.m3362c();
            }
        }
        this.f2665c.m3612d();
    }

    /* JADX INFO: renamed from: s0 */
    boolean m3320s0() {
        AccessibilityManager accessibilityManager = this.f2640B;
        return accessibilityManager != null && accessibilityManager.isEnabled();
    }

    /* JADX INFO: renamed from: s1 */
    public void m3321s1(int i) {
        getScrollingChildHelper().m2034r(i);
    }

    @Override // android.view.View
    public void scrollBy(int i, int i2) {
        AbstractC0442n abstractC0442n = this.f2685m;
        if (abstractC0442n == null || this.f2707x) {
            return;
        }
        boolean zMo3181k = abstractC0442n.mo3181k();
        boolean zMo3182l = this.f2685m.mo3182l();
        if (zMo3181k || zMo3182l) {
            if (!zMo3181k) {
                i = 0;
            }
            if (!zMo3182l) {
                i2 = 0;
            }
            m3293e1(i, i2, null);
        }
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (m3301j1(accessibilityEvent)) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(C0471k c0471k) {
        this.f2690o0 = c0471k;
        C0292v.m2105o0(this, c0471k);
    }

    public void setAdapter(AbstractC0434f abstractC0434f) {
        setLayoutFrozen(false);
        m3237h1(abstractC0434f, false, true);
        m3271O0(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(InterfaceC0437i interfaceC0437i) {
        if (interfaceC0437i == this.f2692p0) {
            return;
        }
        this.f2692p0 = interfaceC0437i;
        setChildrenDrawingOrderEnabled(interfaceC0437i != null);
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z) {
        if (z != this.f2675h) {
            m3317r0();
        }
        this.f2675h = z;
        super.setClipToPadding(z);
        if (this.f2701u) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(C0438j c0438j) {
        C0626h.m4855e(c0438j);
        this.f2646H = c0438j;
        m3317r0();
    }

    public void setHasFixedSize(boolean z) {
        this.f2697s = z;
    }

    public void setItemAnimator(AbstractC0439k abstractC0439k) {
        AbstractC0439k abstractC0439k2 = this.f2651M;
        if (abstractC0439k2 != null) {
            abstractC0439k2.mo3440k();
            this.f2651M.m3451v(null);
        }
        this.f2651M = abstractC0439k;
        if (abstractC0439k != null) {
            abstractC0439k.m3451v(this.f2686m0);
        }
    }

    public void setItemViewCacheSize(int i) {
        this.f2665c.m3604G(i);
    }

    @Deprecated
    public void setLayoutFrozen(boolean z) {
        suppressLayout(z);
    }

    public void setLayoutManager(AbstractC0442n abstractC0442n) {
        if (abstractC0442n == this.f2685m) {
            return;
        }
        m3324t1();
        if (this.f2685m != null) {
            AbstractC0439k abstractC0439k = this.f2651M;
            if (abstractC0439k != null) {
                abstractC0439k.mo3440k();
            }
            this.f2685m.m3537k1(this.f2665c);
            this.f2685m.m3539l1(this.f2665c);
            this.f2665c.m3611c();
            if (this.f2695r) {
                this.f2685m.m3471A(this, this.f2665c);
            }
            this.f2685m.m3481E1(null);
            this.f2685m = null;
        } else {
            this.f2665c.m3611c();
        }
        this.f2671f.m3814o();
        this.f2685m = abstractC0442n;
        if (abstractC0442n != null) {
            if (abstractC0442n.f2753b != null) {
                throw new IllegalArgumentException("LayoutManager " + abstractC0442n + " is already attached to a RecyclerView:" + abstractC0442n.f2753b.m3272P());
            }
            abstractC0442n.m3481E1(this);
            if (this.f2695r) {
                this.f2685m.m3561z(this);
            }
        }
        this.f2665c.m3607K();
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
    public void setNestedScrollingEnabled(boolean z) {
        getScrollingChildHelper().m2030m(z);
    }

    public void setOnFlingListener(AbstractC0445q abstractC0445q) {
        this.f2660V = abstractC0445q;
    }

    @Deprecated
    public void setOnScrollListener(AbstractC0447s abstractC0447s) {
        this.f2678i0 = abstractC0447s;
    }

    public void setPreserveFocusAfterLayout(boolean z) {
        this.f2668d0 = z;
    }

    public void setRecycledViewPool(C0448t c0448t) {
        this.f2665c.m3602E(c0448t);
    }

    public void setRecyclerListener(InterfaceC0450v interfaceC0450v) {
        this.f2687n = interfaceC0450v;
    }

    void setScrollState(int i) {
        if (i == this.f2652N) {
            return;
        }
        this.f2652N = i;
        if (i != 2) {
            m3247u1();
        }
        m3260H(i);
    }

    public void setScrollingTouchSlop(int i) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i != 0) {
            if (i == 1) {
                this.f2659U = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
            String str = "setScrollingTouchSlop(): bad argument constant " + i + "; using default value";
        }
        this.f2659U = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(AbstractC0427a0 abstractC0427a0) {
        this.f2665c.m3603F(abstractC0427a0);
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return getScrollingChildHelper().m2031o(i);
    }

    @Override // android.view.View, androidx.core.view.InterfaceC0281k
    public void stopNestedScroll() {
        getScrollingChildHelper().m2033q();
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z) {
        if (z != this.f2707x) {
            m3311o("Do not suppressLayout in layout or scroll");
            if (z) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 0));
                this.f2707x = true;
                this.f2709y = true;
                m3324t1();
                return;
            }
            this.f2707x = false;
            if (this.f2705w && this.f2685m != null && this.f2683l != null) {
                requestLayout();
            }
            this.f2705w = false;
        }
    }

    /* JADX INFO: renamed from: t */
    void m3322t(int i, int i2) {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.f2647I;
        if (edgeEffect == null || edgeEffect.isFinished() || i <= 0) {
            zIsFinished = false;
        } else {
            this.f2647I.onRelease();
            zIsFinished = this.f2647I.isFinished();
        }
        EdgeEffect edgeEffect2 = this.f2649K;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i < 0) {
            this.f2649K.onRelease();
            zIsFinished |= this.f2649K.isFinished();
        }
        EdgeEffect edgeEffect3 = this.f2648J;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i2 > 0) {
            this.f2648J.onRelease();
            zIsFinished |= this.f2648J.isFinished();
        }
        EdgeEffect edgeEffect4 = this.f2650L;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i2 < 0) {
            this.f2650L.onRelease();
            zIsFinished |= this.f2650L.isFinished();
        }
        if (zIsFinished) {
            C0292v.m2087f0(this);
        }
    }

    /* JADX INFO: renamed from: t0 */
    public boolean m3323t0() {
        return this.f2644F > 0;
    }

    /* JADX INFO: renamed from: t1 */
    public void m3324t1() {
        setScrollState(0);
        m3247u1();
    }

    /* JADX INFO: renamed from: u */
    void m3325u() {
        if (!this.f2701u || this.f2642D) {
            C0605c.m4756a("RV FullInvalidate");
            m3251B();
            C0605c.m4757b();
            return;
        }
        if (this.f2669e.m3793p()) {
            if (!this.f2669e.m3792o(4) || this.f2669e.m3792o(11)) {
                if (this.f2669e.m3793p()) {
                    C0605c.m4756a("RV FullInvalidate");
                    m3251B();
                    C0605c.m4757b();
                    return;
                }
                return;
            }
            C0605c.m4756a("RV PartialInvalidate");
            m3314p1();
            m3257F0();
            this.f2669e.m3795s();
            if (!this.f2705w) {
                if (m3241m0()) {
                    m3251B();
                } else {
                    this.f2669e.m3787i();
                }
            }
            m3318r1(true);
            m3259G0();
            C0605c.m4757b();
        }
    }

    /* JADX INFO: renamed from: v0 */
    void m3326v0(int i) {
        if (this.f2685m == null) {
            return;
        }
        setScrollState(2);
        this.f2685m.mo3192x1(i);
        awakenScrollBars();
    }

    /* JADX INFO: renamed from: v1 */
    void m3327v1(int i, int i2, Object obj) {
        int i3;
        int iM3810j = this.f2671f.m3810j();
        int i4 = i + i2;
        for (int i5 = 0; i5 < iM3810j; i5++) {
            View viewM3809i = this.f2671f.m3809i(i5);
            AbstractC0431c0 abstractC0431c0M3233f0 = m3233f0(viewM3809i);
            if (abstractC0431c0M3233f0 != null && !abstractC0431c0M3233f0.m3357J() && (i3 = abstractC0431c0M3233f0.f2723c) >= i && i3 < i4) {
                abstractC0431c0M3233f0.m3361b(2);
                abstractC0431c0M3233f0.m3360a(obj);
                ((C0443o) viewM3809i.getLayoutParams()).f2778c = true;
            }
        }
        this.f2665c.m3609M(i, i2);
    }

    /* JADX INFO: renamed from: w */
    void m3328w(int i, int i2) {
        setMeasuredDimension(AbstractC0442n.m3466n(i, getPaddingLeft() + getPaddingRight(), C0292v.m2050E(this)), AbstractC0442n.m3466n(i2, getPaddingTop() + getPaddingBottom(), C0292v.m2048D(this)));
    }

    /* JADX INFO: renamed from: w0 */
    void m3329w0() {
        int iM3810j = this.f2671f.m3810j();
        for (int i = 0; i < iM3810j; i++) {
            ((C0443o) this.f2671f.m3809i(i).getLayoutParams()).f2778c = true;
        }
        this.f2665c.m3625s();
    }

    /* JADX INFO: renamed from: x0 */
    void m3330x0() {
        int iM3810j = this.f2671f.m3810j();
        for (int i = 0; i < iM3810j; i++) {
            AbstractC0431c0 abstractC0431c0M3233f0 = m3233f0(this.f2671f.m3809i(i));
            if (abstractC0431c0M3233f0 != null && !abstractC0431c0M3233f0.m3357J()) {
                abstractC0431c0M3233f0.m3361b(6);
            }
        }
        m3329w0();
        this.f2665c.m3626t();
    }

    /* JADX INFO: renamed from: y */
    void m3331y(View view) {
        AbstractC0431c0 abstractC0431c0M3233f0 = m3233f0(view);
        m3254D0(view);
        AbstractC0434f abstractC0434f = this.f2683l;
        if (abstractC0434f != null && abstractC0431c0M3233f0 != null) {
            abstractC0434f.m3419o(abstractC0431c0M3233f0);
        }
        List<InterfaceC0444p> list = this.f2641C;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f2641C.get(size).m3574a(view);
            }
        }
    }

    /* JADX INFO: renamed from: y0 */
    public void m3332y0(int i) {
        int iM3808g = this.f2671f.m3808g();
        for (int i2 = 0; i2 < iM3808g; i2++) {
            this.f2671f.m3807f(i2).offsetLeftAndRight(i);
        }
    }

    /* JADX INFO: renamed from: z */
    void m3333z(View view) {
        AbstractC0431c0 abstractC0431c0M3233f0 = m3233f0(view);
        m3255E0(view);
        AbstractC0434f abstractC0434f = this.f2683l;
        if (abstractC0434f != null && abstractC0431c0M3233f0 != null) {
            abstractC0434f.m3420p(abstractC0431c0M3233f0);
        }
        List<InterfaceC0444p> list = this.f2641C;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f2641C.get(size).m3575b(view);
            }
        }
    }

    /* JADX INFO: renamed from: z0 */
    public void m3334z0(int i) {
        int iM3808g = this.f2671f.m3808g();
        for (int i2 = 0; i2 < iM3808g; i2++) {
            this.f2671f.m3807f(i2).offsetTopAndBottom(i);
        }
    }

    public RecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2663b = new C0451w();
        this.f2665c = new C0449u();
        this.f2673g = new C0476p();
        this.f2677i = new Rect();
        this.f2679j = new Rect();
        this.f2681k = new RectF();
        this.f2689o = new ArrayList<>();
        this.f2691p = new ArrayList<>();
        this.f2703v = 0;
        this.f2642D = false;
        this.f2643E = false;
        this.f2644F = 0;
        this.f2645G = 0;
        this.f2646H = new C0438j();
        this.f2651M = new C0463c();
        this.f2652N = 0;
        this.f2653O = -1;
        this.f2664b0 = Float.MIN_VALUE;
        this.f2666c0 = Float.MIN_VALUE;
        boolean z = true;
        this.f2668d0 = true;
        this.f2670e0 = new RunnableC0429b0();
        this.f2674g0 = f2632B0 ? new RunnableC0465e.b() : null;
        this.f2676h0 = new C0454z();
        this.f2682k0 = false;
        this.f2684l0 = false;
        this.f2686m0 = new C0440l();
        this.f2688n0 = false;
        this.f2694q0 = new int[2];
        this.f2698s0 = new int[2];
        this.f2700t0 = new int[2];
        this.f2702u0 = new int[2];
        this.f2704v0 = new ArrayList();
        this.f2706w0 = new RunnableC0426a();
        this.f2708x0 = new C0430c();
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f2659U = viewConfiguration.getScaledTouchSlop();
        this.f2664b0 = C0293w.m2165b(viewConfiguration, context);
        this.f2666c0 = C0293w.m2167d(viewConfiguration, context);
        this.f2661W = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f2662a0 = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.f2651M.m3451v(this.f2686m0);
        m3309n0();
        m3243p0();
        m3242o0();
        if (C0292v.m2042A(this) == 0) {
            C0292v.m2123x0(this, 1);
        }
        this.f2640B = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new C0471k(this));
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0649c.RecyclerView, i, 0);
        if (Build.VERSION.SDK_INT >= 29) {
            saveAttributeDataForStyleable(context, C0649c.RecyclerView, attributeSet, typedArrayObtainStyledAttributes, i, 0);
        }
        String string = typedArrayObtainStyledAttributes.getString(C0649c.RecyclerView_layoutManager);
        if (typedArrayObtainStyledAttributes.getInt(C0649c.RecyclerView_android_descendantFocusability, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.f2675h = typedArrayObtainStyledAttributes.getBoolean(C0649c.RecyclerView_android_clipToPadding, true);
        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(C0649c.RecyclerView_fastScrollEnabled, false);
        this.f2699t = z2;
        if (z2) {
            m3315q0((StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(C0649c.RecyclerView_fastScrollVerticalThumbDrawable), typedArrayObtainStyledAttributes.getDrawable(C0649c.RecyclerView_fastScrollVerticalTrackDrawable), (StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(C0649c.RecyclerView_fastScrollHorizontalThumbDrawable), typedArrayObtainStyledAttributes.getDrawable(C0649c.RecyclerView_fastScrollHorizontalTrackDrawable));
        }
        typedArrayObtainStyledAttributes.recycle();
        m3248v(context, string, attributeSet, i, 0);
        if (Build.VERSION.SDK_INT >= 21) {
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, f2637y0, i, 0);
            if (Build.VERSION.SDK_INT >= 29) {
                saveAttributeDataForStyleable(context, f2637y0, attributeSet, typedArrayObtainStyledAttributes2, i, 0);
            }
            z = typedArrayObtainStyledAttributes2.getBoolean(0, true);
            typedArrayObtainStyledAttributes2.recycle();
        }
        setNestedScrollingEnabled(z);
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$o */
    public static class C0443o extends ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: a */
        AbstractC0431c0 f2776a;

        /* JADX INFO: renamed from: b */
        final Rect f2777b;

        /* JADX INFO: renamed from: c */
        boolean f2778c;

        /* JADX INFO: renamed from: d */
        boolean f2779d;

        public C0443o(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f2777b = new Rect();
            this.f2778c = true;
            this.f2779d = false;
        }

        /* JADX INFO: renamed from: a */
        public int m3570a() {
            return this.f2776a.m3371m();
        }

        /* JADX INFO: renamed from: b */
        public boolean m3571b() {
            return this.f2776a.m3383y();
        }

        /* JADX INFO: renamed from: c */
        public boolean m3572c() {
            return this.f2776a.m3380v();
        }

        /* JADX INFO: renamed from: d */
        public boolean m3573d() {
            return this.f2776a.m3378t();
        }

        public C0443o(int i, int i2) {
            super(i, i2);
            this.f2777b = new Rect();
            this.f2778c = true;
            this.f2779d = false;
        }

        public C0443o(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f2777b = new Rect();
            this.f2778c = true;
            this.f2779d = false;
        }

        public C0443o(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f2777b = new Rect();
            this.f2778c = true;
            this.f2779d = false;
        }

        public C0443o(C0443o c0443o) {
            super((ViewGroup.LayoutParams) c0443o);
            this.f2777b = new Rect();
            this.f2778c = true;
            this.f2779d = false;
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$x */
    public static class C0452x extends AbstractC0630a {
        public static final Parcelable.Creator<C0452x> CREATOR = new a();

        /* JADX INFO: renamed from: d */
        Parcelable f2796d;

        /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$x$a */
        static class a implements Parcelable.ClassLoaderCreator<C0452x> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public C0452x createFromParcel(Parcel parcel) {
                return new C0452x(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public C0452x createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C0452x(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public C0452x[] newArray(int i) {
                return new C0452x[i];
            }
        }

        C0452x(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f2796d = parcel.readParcelable(classLoader == null ? AbstractC0442n.class.getClassLoader() : classLoader);
        }

        /* JADX INFO: renamed from: k */
        void m3634k(C0452x c0452x) {
            this.f2796d = c0452x.f2796d;
        }

        @Override // p016c.p052i.p053a.AbstractC0630a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeParcelable(this.f2796d, 0);
        }

        C0452x(Parcelable parcelable) {
            super(parcelable);
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        AbstractC0442n abstractC0442n = this.f2685m;
        if (abstractC0442n != null) {
            return abstractC0442n.mo3092F(layoutParams);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + m3272P());
    }
}
