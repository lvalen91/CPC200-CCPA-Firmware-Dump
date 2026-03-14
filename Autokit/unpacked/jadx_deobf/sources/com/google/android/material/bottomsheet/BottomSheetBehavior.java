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
import androidx.core.view.C0265d0;
import androidx.core.view.C0292v;
import androidx.core.view.p004e0.C0269c;
import androidx.core.view.p004e0.InterfaceC0272f;
import com.google.android.material.internal.C1123l;
import com.yalantis.ucrop.view.CropImageView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import p016c.p041g.p045f.C0602a;
import p016c.p052i.p053a.AbstractC0630a;
import p016c.p052i.p054b.C0633c;
import p093d.p099c.p100a.p101a.C1216b;
import p093d.p099c.p100a.p101a.C1219d;
import p093d.p099c.p100a.p101a.C1224i;
import p093d.p099c.p100a.p101a.C1225j;
import p093d.p099c.p100a.p101a.C1226k;
import p093d.p099c.p100a.p101a.p102a0.C1208g;
import p093d.p099c.p100a.p101a.p102a0.C1212k;
import p093d.p099c.p100a.p101a.p117x.C1257c;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.AbstractC0221c<V> {

    /* JADX INFO: renamed from: Y */
    private static final int f6621Y = C1225j.Widget_Design_BottomSheet_Modal;

    /* JADX INFO: renamed from: A */
    float f6622A;

    /* JADX INFO: renamed from: B */
    int f6623B;

    /* JADX INFO: renamed from: C */
    float f6624C;

    /* JADX INFO: renamed from: D */
    boolean f6625D;

    /* JADX INFO: renamed from: E */
    private boolean f6626E;

    /* JADX INFO: renamed from: F */
    private boolean f6627F;

    /* JADX INFO: renamed from: G */
    int f6628G;

    /* JADX INFO: renamed from: H */
    C0633c f6629H;

    /* JADX INFO: renamed from: I */
    private boolean f6630I;

    /* JADX INFO: renamed from: J */
    private int f6631J;

    /* JADX INFO: renamed from: K */
    private boolean f6632K;

    /* JADX INFO: renamed from: L */
    private int f6633L;

    /* JADX INFO: renamed from: M */
    int f6634M;

    /* JADX INFO: renamed from: N */
    int f6635N;

    /* JADX INFO: renamed from: O */
    WeakReference<V> f6636O;

    /* JADX INFO: renamed from: P */
    WeakReference<View> f6637P;

    /* JADX INFO: renamed from: Q */
    private final ArrayList<AbstractC1052g> f6638Q;

    /* JADX INFO: renamed from: R */
    private VelocityTracker f6639R;

    /* JADX INFO: renamed from: S */
    int f6640S;

    /* JADX INFO: renamed from: T */
    private int f6641T;

    /* JADX INFO: renamed from: U */
    boolean f6642U;

    /* JADX INFO: renamed from: V */
    private Map<View, Integer> f6643V;

    /* JADX INFO: renamed from: W */
    private int f6644W;

    /* JADX INFO: renamed from: X */
    private final C0633c.c f6645X;

    /* JADX INFO: renamed from: a */
    private int f6646a;

    /* JADX INFO: renamed from: b */
    private boolean f6647b;

    /* JADX INFO: renamed from: c */
    private boolean f6648c;

    /* JADX INFO: renamed from: d */
    private float f6649d;

    /* JADX INFO: renamed from: e */
    private int f6650e;

    /* JADX INFO: renamed from: f */
    private boolean f6651f;

    /* JADX INFO: renamed from: g */
    private int f6652g;

    /* JADX INFO: renamed from: h */
    private int f6653h;

    /* JADX INFO: renamed from: i */
    private boolean f6654i;

    /* JADX INFO: renamed from: j */
    private C1208g f6655j;

    /* JADX INFO: renamed from: k */
    private int f6656k;

    /* JADX INFO: renamed from: l */
    private int f6657l;

    /* JADX INFO: renamed from: m */
    private boolean f6658m;

    /* JADX INFO: renamed from: n */
    private boolean f6659n;

    /* JADX INFO: renamed from: o */
    private boolean f6660o;

    /* JADX INFO: renamed from: p */
    private boolean f6661p;

    /* JADX INFO: renamed from: q */
    private boolean f6662q;

    /* JADX INFO: renamed from: r */
    private int f6663r;

    /* JADX INFO: renamed from: s */
    private int f6664s;

    /* JADX INFO: renamed from: t */
    private C1212k f6665t;

    /* JADX INFO: renamed from: u */
    private boolean f6666u;

    /* JADX INFO: renamed from: v */
    private BottomSheetBehavior<V>.RunnableC1054i f6667v;

    /* JADX INFO: renamed from: w */
    private ValueAnimator f6668w;

    /* JADX INFO: renamed from: x */
    int f6669x;

    /* JADX INFO: renamed from: y */
    int f6670y;

    /* JADX INFO: renamed from: z */
    int f6671z;

    /* JADX INFO: renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$a */
    class RunnableC1046a implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ View f6672b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ ViewGroup.LayoutParams f6673c;

        RunnableC1046a(BottomSheetBehavior bottomSheetBehavior, View view, ViewGroup.LayoutParams layoutParams) {
            this.f6672b = view;
            this.f6673c = layoutParams;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f6672b.setLayoutParams(this.f6673c);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$b */
    class RunnableC1047b implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ View f6674b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ int f6675c;

        RunnableC1047b(View view, int i) {
            this.f6674b = view;
            this.f6675c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            BottomSheetBehavior.this.m8059v0(this.f6674b, this.f6675c);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$c */
    class C1048c implements ValueAnimator.AnimatorUpdateListener {
        C1048c() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            if (BottomSheetBehavior.this.f6655j != null) {
                BottomSheetBehavior.this.f6655j.m9185X(fFloatValue);
            }
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$d */
    class C1049d implements C1123l.c {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ boolean f6678a;

        C1049d(boolean z) {
            this.f6678a = z;
        }

        @Override // com.google.android.material.internal.C1123l.c
        /* JADX INFO: renamed from: a */
        public C0265d0 mo8062a(View view, C0265d0 c0265d0, C1123l.d dVar) {
            BottomSheetBehavior.this.f6664s = c0265d0.m1842i();
            boolean zM8734d = C1123l.m8734d(view);
            int paddingBottom = view.getPaddingBottom();
            int paddingLeft = view.getPaddingLeft();
            int paddingRight = view.getPaddingRight();
            if (BottomSheetBehavior.this.f6659n) {
                BottomSheetBehavior.this.f6663r = c0265d0.m1839f();
                paddingBottom = dVar.f7205d + BottomSheetBehavior.this.f6663r;
            }
            if (BottomSheetBehavior.this.f6660o) {
                paddingLeft = (zM8734d ? dVar.f7204c : dVar.f7202a) + c0265d0.m1840g();
            }
            if (BottomSheetBehavior.this.f6661p) {
                paddingRight = (zM8734d ? dVar.f7202a : dVar.f7204c) + c0265d0.m1841h();
            }
            view.setPadding(paddingLeft, view.getPaddingTop(), paddingRight, paddingBottom);
            if (this.f6678a) {
                BottomSheetBehavior.this.f6657l = c0265d0.m1838e().f3698d;
            }
            if (BottomSheetBehavior.this.f6659n || this.f6678a) {
                BottomSheetBehavior.this.m8013C0(false);
            }
            return c0265d0;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$e */
    class C1050e extends C0633c.c {
        C1050e() {
        }

        /* JADX INFO: renamed from: n */
        private boolean m8063n(View view) {
            int top = view.getTop();
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return top > (bottomSheetBehavior.f6635N + bottomSheetBehavior.m8044b0()) / 2;
        }

        @Override // p016c.p052i.p054b.C0633c.c
        /* JADX INFO: renamed from: a */
        public int mo4957a(View view, int i, int i2) {
            return view.getLeft();
        }

        @Override // p016c.p052i.p054b.C0633c.c
        /* JADX INFO: renamed from: b */
        public int mo4958b(View view, int i, int i2) {
            int iM8044b0 = BottomSheetBehavior.this.m8044b0();
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return C0602a.m4750b(i, iM8044b0, bottomSheetBehavior.f6625D ? bottomSheetBehavior.f6635N : bottomSheetBehavior.f6623B);
        }

        @Override // p016c.p052i.p054b.C0633c.c
        /* JADX INFO: renamed from: e */
        public int mo4961e(View view) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return bottomSheetBehavior.f6625D ? bottomSheetBehavior.f6635N : bottomSheetBehavior.f6623B;
        }

        @Override // p016c.p052i.p054b.C0633c.c
        /* JADX INFO: renamed from: j */
        public void mo4966j(int i) {
            if (i == 1 && BottomSheetBehavior.this.f6627F) {
                BottomSheetBehavior.this.m8058t0(1);
            }
        }

        @Override // p016c.p052i.p054b.C0633c.c
        /* JADX INFO: renamed from: k */
        public void mo4967k(View view, int i, int i2, int i3, int i4) {
            BottomSheetBehavior.this.m8042Z(i2);
        }

        @Override // p016c.p052i.p054b.C0633c.c
        /* JADX INFO: renamed from: l */
        public void mo4968l(View view, float f, float f2) {
            int iM8044b0;
            int i = 4;
            if (f2 < CropImageView.DEFAULT_ASPECT_RATIO) {
                if (BottomSheetBehavior.this.f6647b) {
                    iM8044b0 = BottomSheetBehavior.this.f6670y;
                } else {
                    int top = view.getTop();
                    BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                    int i2 = bottomSheetBehavior.f6671z;
                    if (top > i2) {
                        iM8044b0 = i2;
                        i = 6;
                    } else {
                        iM8044b0 = bottomSheetBehavior.m8044b0();
                    }
                }
                i = 3;
            } else {
                BottomSheetBehavior bottomSheetBehavior2 = BottomSheetBehavior.this;
                if (bottomSheetBehavior2.f6625D && bottomSheetBehavior2.m8060x0(view, f2)) {
                    if ((Math.abs(f) >= Math.abs(f2) || f2 <= 500.0f) && !m8063n(view)) {
                        if (BottomSheetBehavior.this.f6647b) {
                            iM8044b0 = BottomSheetBehavior.this.f6670y;
                        } else if (Math.abs(view.getTop() - BottomSheetBehavior.this.m8044b0()) < Math.abs(view.getTop() - BottomSheetBehavior.this.f6671z)) {
                            iM8044b0 = BottomSheetBehavior.this.m8044b0();
                        } else {
                            iM8044b0 = BottomSheetBehavior.this.f6671z;
                            i = 6;
                        }
                        i = 3;
                    } else {
                        iM8044b0 = BottomSheetBehavior.this.f6635N;
                        i = 5;
                    }
                } else if (f2 == CropImageView.DEFAULT_ASPECT_RATIO || Math.abs(f) > Math.abs(f2)) {
                    int top2 = view.getTop();
                    if (!BottomSheetBehavior.this.f6647b) {
                        BottomSheetBehavior bottomSheetBehavior3 = BottomSheetBehavior.this;
                        int i3 = bottomSheetBehavior3.f6671z;
                        if (top2 < i3) {
                            if (top2 < Math.abs(top2 - bottomSheetBehavior3.f6623B)) {
                                iM8044b0 = BottomSheetBehavior.this.m8044b0();
                                i = 3;
                            } else {
                                iM8044b0 = BottomSheetBehavior.this.f6671z;
                            }
                        } else if (Math.abs(top2 - i3) < Math.abs(top2 - BottomSheetBehavior.this.f6623B)) {
                            iM8044b0 = BottomSheetBehavior.this.f6671z;
                        } else {
                            iM8044b0 = BottomSheetBehavior.this.f6623B;
                        }
                        i = 6;
                    } else if (Math.abs(top2 - BottomSheetBehavior.this.f6670y) < Math.abs(top2 - BottomSheetBehavior.this.f6623B)) {
                        iM8044b0 = BottomSheetBehavior.this.f6670y;
                        i = 3;
                    } else {
                        iM8044b0 = BottomSheetBehavior.this.f6623B;
                    }
                } else if (BottomSheetBehavior.this.f6647b) {
                    iM8044b0 = BottomSheetBehavior.this.f6623B;
                } else {
                    int top3 = view.getTop();
                    if (Math.abs(top3 - BottomSheetBehavior.this.f6671z) < Math.abs(top3 - BottomSheetBehavior.this.f6623B)) {
                        iM8044b0 = BottomSheetBehavior.this.f6671z;
                        i = 6;
                    } else {
                        iM8044b0 = BottomSheetBehavior.this.f6623B;
                    }
                }
            }
            BottomSheetBehavior.this.m8061y0(view, i, iM8044b0, true);
        }

        @Override // p016c.p052i.p054b.C0633c.c
        /* JADX INFO: renamed from: m */
        public boolean mo4969m(View view, int i) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            int i2 = bottomSheetBehavior.f6628G;
            if (i2 == 1 || bottomSheetBehavior.f6642U) {
                return false;
            }
            if (i2 == 3 && bottomSheetBehavior.f6640S == i) {
                WeakReference<View> weakReference = bottomSheetBehavior.f6637P;
                View view2 = weakReference != null ? weakReference.get() : null;
                if (view2 != null && view2.canScrollVertically(-1)) {
                    return false;
                }
            }
            WeakReference<V> weakReference2 = BottomSheetBehavior.this.f6636O;
            return weakReference2 != null && weakReference2.get() == view;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$f */
    class C1051f implements InterfaceC0272f {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ int f6681a;

        C1051f(int i) {
            this.f6681a = i;
        }

        @Override // androidx.core.view.p004e0.InterfaceC0272f
        /* JADX INFO: renamed from: a */
        public boolean mo1975a(View view, InterfaceC0272f.a aVar) {
            BottomSheetBehavior.this.m8057s0(this.f6681a);
            return true;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$g */
    public static abstract class AbstractC1052g {
        /* JADX INFO: renamed from: a */
        public abstract void m8064a(View view, float f);

        /* JADX INFO: renamed from: b */
        public abstract void m8065b(View view, int i);
    }

    /* JADX INFO: renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$i */
    private class RunnableC1054i implements Runnable {

        /* JADX INFO: renamed from: b */
        private final View f6688b;

        /* JADX INFO: renamed from: c */
        private boolean f6689c;

        /* JADX INFO: renamed from: d */
        int f6690d;

        RunnableC1054i(View view, int i) {
            this.f6688b = view;
            this.f6690d = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0633c c0633c = BottomSheetBehavior.this.f6629H;
            if (c0633c == null || !c0633c.m4950k(true)) {
                BottomSheetBehavior.this.m8058t0(this.f6690d);
            } else {
                C0292v.m2089g0(this.f6688b, this);
            }
            this.f6689c = false;
        }
    }

    public BottomSheetBehavior() {
        this.f6646a = 0;
        this.f6647b = true;
        this.f6648c = false;
        this.f6656k = -1;
        this.f6667v = null;
        this.f6622A = 0.5f;
        this.f6624C = -1.0f;
        this.f6627F = true;
        this.f6628G = 4;
        this.f6638Q = new ArrayList<>();
        this.f6644W = -1;
        this.f6645X = new C1050e();
    }

    /* JADX INFO: renamed from: A0 */
    private void m8011A0(int i) {
        ValueAnimator valueAnimator;
        if (i == 2) {
            return;
        }
        boolean z = i == 3;
        if (this.f6666u != z) {
            this.f6666u = z;
            if (this.f6655j == null || (valueAnimator = this.f6668w) == null) {
                return;
            }
            if (valueAnimator.isRunning()) {
                this.f6668w.reverse();
                return;
            }
            float f = z ? CropImageView.DEFAULT_ASPECT_RATIO : 1.0f;
            this.f6668w.setFloatValues(1.0f - f, f);
            this.f6668w.start();
        }
    }

    /* JADX INFO: renamed from: B0 */
    private void m8012B0(boolean z) {
        Map<View, Integer> map;
        WeakReference<V> weakReference = this.f6636O;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = weakReference.get().getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (Build.VERSION.SDK_INT >= 16 && z) {
                if (this.f6643V != null) {
                    return;
                } else {
                    this.f6643V = new HashMap(childCount);
                }
            }
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if (childAt != this.f6636O.get()) {
                    if (z) {
                        if (Build.VERSION.SDK_INT >= 16) {
                            this.f6643V.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        }
                        if (this.f6648c) {
                            C0292v.m2123x0(childAt, 4);
                        }
                    } else if (this.f6648c && (map = this.f6643V) != null && map.containsKey(childAt)) {
                        C0292v.m2123x0(childAt, this.f6643V.get(childAt).intValue());
                    }
                }
            }
            if (!z) {
                this.f6643V = null;
            } else if (this.f6648c) {
                this.f6636O.get().sendAccessibilityEvent(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: C0 */
    public void m8013C0(boolean z) {
        V v;
        if (this.f6636O != null) {
            m8028S();
            if (this.f6628G != 4 || (v = this.f6636O.get()) == null) {
                return;
            }
            if (z) {
                m8040w0(this.f6628G);
            } else {
                v.requestLayout();
            }
        }
    }

    /* JADX INFO: renamed from: R */
    private int m8027R(V v, int i, int i2) {
        return C0292v.m2078b(v, v.getResources().getString(i), m8031V(i2));
    }

    /* JADX INFO: renamed from: S */
    private void m8028S() {
        int iM8030U = m8030U();
        if (this.f6647b) {
            this.f6623B = Math.max(this.f6635N - iM8030U, this.f6670y);
        } else {
            this.f6623B = this.f6635N - iM8030U;
        }
    }

    /* JADX INFO: renamed from: T */
    private void m8029T() {
        this.f6671z = (int) (this.f6635N * (1.0f - this.f6622A));
    }

    /* JADX INFO: renamed from: U */
    private int m8030U() {
        int i;
        return this.f6651f ? Math.min(Math.max(this.f6652g, this.f6635N - ((this.f6634M * 9) / 16)), this.f6633L) + this.f6663r : (this.f6658m || this.f6659n || (i = this.f6657l) <= 0) ? this.f6650e + this.f6663r : Math.max(this.f6650e, i + this.f6653h);
    }

    /* JADX INFO: renamed from: V */
    private InterfaceC0272f m8031V(int i) {
        return new C1051f(i);
    }

    /* JADX INFO: renamed from: W */
    private void m8032W(Context context, AttributeSet attributeSet, boolean z) {
        m8033X(context, attributeSet, z, null);
    }

    /* JADX INFO: renamed from: X */
    private void m8033X(Context context, AttributeSet attributeSet, boolean z, ColorStateList colorStateList) {
        if (this.f6654i) {
            this.f6665t = C1212k.m9216e(context, attributeSet, C1216b.bottomSheetStyle, f6621Y).m9256m();
            C1208g c1208g = new C1208g(this.f6665t);
            this.f6655j = c1208g;
            c1208g.m9178M(context);
            if (z && colorStateList != null) {
                this.f6655j.m9184W(colorStateList);
                return;
            }
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.colorBackground, typedValue, true);
            this.f6655j.setTint(typedValue.data);
        }
    }

    /* JADX INFO: renamed from: Y */
    private void m8034Y() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(CropImageView.DEFAULT_ASPECT_RATIO, 1.0f);
        this.f6668w = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(500L);
        this.f6668w.addUpdateListener(new C1048c());
    }

    /* JADX INFO: renamed from: c0 */
    private float m8035c0() {
        VelocityTracker velocityTracker = this.f6639R;
        if (velocityTracker == null) {
            return CropImageView.DEFAULT_ASPECT_RATIO;
        }
        velocityTracker.computeCurrentVelocity(1000, this.f6649d);
        return this.f6639R.getYVelocity(this.f6640S);
    }

    /* JADX INFO: renamed from: e0 */
    private void m8036e0(V v, C0269c.a aVar, int i) {
        C0292v.m2097k0(v, aVar, null, m8031V(i));
    }

    /* JADX INFO: renamed from: f0 */
    private void m8037f0() {
        this.f6640S = -1;
        VelocityTracker velocityTracker = this.f6639R;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f6639R = null;
        }
    }

    /* JADX INFO: renamed from: g0 */
    private void m8038g0(C1053h c1053h) {
        int i = this.f6646a;
        if (i == 0) {
            return;
        }
        if (i == -1 || (i & 1) == 1) {
            this.f6650e = c1053h.f6684e;
        }
        int i2 = this.f6646a;
        if (i2 == -1 || (i2 & 2) == 2) {
            this.f6647b = c1053h.f6685f;
        }
        int i3 = this.f6646a;
        if (i3 == -1 || (i3 & 4) == 4) {
            this.f6625D = c1053h.f6686g;
        }
        int i4 = this.f6646a;
        if (i4 == -1 || (i4 & 8) == 8) {
            this.f6626E = c1053h.f6687h;
        }
    }

    /* JADX INFO: renamed from: u0 */
    private void m8039u0(View view) {
        boolean z = (Build.VERSION.SDK_INT < 29 || m8045d0() || this.f6651f) ? false : true;
        if (this.f6659n || this.f6660o || this.f6661p || z) {
            C1123l.m8731a(view, new C1049d(z));
        }
    }

    /* JADX INFO: renamed from: w0 */
    private void m8040w0(int i) {
        V v = this.f6636O.get();
        if (v == null) {
            return;
        }
        ViewParent parent = v.getParent();
        if (parent != null && parent.isLayoutRequested() && C0292v.m2068S(v)) {
            v.post(new RunnableC1047b(v, i));
        } else {
            m8059v0(v, i);
        }
    }

    /* JADX INFO: renamed from: z0 */
    private void m8041z0() {
        V v;
        WeakReference<V> weakReference = this.f6636O;
        if (weakReference == null || (v = weakReference.get()) == null) {
            return;
        }
        C0292v.m2093i0(v, 524288);
        C0292v.m2093i0(v, 262144);
        C0292v.m2093i0(v, 1048576);
        int i = this.f6644W;
        if (i != -1) {
            C0292v.m2093i0(v, i);
        }
        if (!this.f6647b && this.f6628G != 6) {
            this.f6644W = m8027R(v, C1224i.bottomsheet_action_expand_halfway, 6);
        }
        if (this.f6625D && this.f6628G != 5) {
            m8036e0(v, C0269c.a.f1864j, 5);
        }
        int i2 = this.f6628G;
        if (i2 == 3) {
            m8036e0(v, C0269c.a.f1863i, this.f6647b ? 4 : 6);
            return;
        }
        if (i2 == 4) {
            m8036e0(v, C0269c.a.f1862h, this.f6647b ? 3 : 6);
        } else {
            if (i2 != 6) {
                return;
            }
            m8036e0(v, C0269c.a.f1863i, 4);
            m8036e0(v, C0269c.a.f1862h, 3);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
    /* JADX INFO: renamed from: A */
    public boolean mo1569A(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
        this.f6631J = 0;
        this.f6632K = false;
        return (i & 2) != 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
    /* JADX INFO: renamed from: C */
    public void mo1571C(CoordinatorLayout coordinatorLayout, V v, View view, int i) {
        int iM8044b0;
        int i2 = 3;
        if (v.getTop() == m8044b0()) {
            m8058t0(3);
            return;
        }
        WeakReference<View> weakReference = this.f6637P;
        if (weakReference != null && view == weakReference.get() && this.f6632K) {
            if (this.f6631J > 0) {
                if (this.f6647b) {
                    iM8044b0 = this.f6670y;
                } else {
                    int top = v.getTop();
                    int i3 = this.f6671z;
                    if (top > i3) {
                        iM8044b0 = i3;
                        i2 = 6;
                    } else {
                        iM8044b0 = m8044b0();
                    }
                }
            } else if (this.f6625D && m8060x0(v, m8035c0())) {
                iM8044b0 = this.f6635N;
                i2 = 5;
            } else if (this.f6631J == 0) {
                int top2 = v.getTop();
                if (!this.f6647b) {
                    int i4 = this.f6671z;
                    if (top2 < i4) {
                        if (top2 < Math.abs(top2 - this.f6623B)) {
                            iM8044b0 = m8044b0();
                        } else {
                            iM8044b0 = this.f6671z;
                        }
                    } else if (Math.abs(top2 - i4) < Math.abs(top2 - this.f6623B)) {
                        iM8044b0 = this.f6671z;
                    } else {
                        iM8044b0 = this.f6623B;
                        i2 = 4;
                    }
                    i2 = 6;
                } else if (Math.abs(top2 - this.f6670y) < Math.abs(top2 - this.f6623B)) {
                    iM8044b0 = this.f6670y;
                } else {
                    iM8044b0 = this.f6623B;
                    i2 = 4;
                }
            } else {
                if (this.f6647b) {
                    iM8044b0 = this.f6623B;
                } else {
                    int top3 = v.getTop();
                    if (Math.abs(top3 - this.f6671z) < Math.abs(top3 - this.f6623B)) {
                        iM8044b0 = this.f6671z;
                        i2 = 6;
                    } else {
                        iM8044b0 = this.f6623B;
                    }
                }
                i2 = 4;
            }
            m8061y0(v, i2, iM8044b0, false);
            this.f6632K = false;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
    /* JADX INFO: renamed from: D */
    public boolean mo1572D(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (!v.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.f6628G == 1 && actionMasked == 0) {
            return true;
        }
        C0633c c0633c = this.f6629H;
        if (c0633c != null) {
            c0633c.m4956z(motionEvent);
        }
        if (actionMasked == 0) {
            m8037f0();
        }
        if (this.f6639R == null) {
            this.f6639R = VelocityTracker.obtain();
        }
        this.f6639R.addMovement(motionEvent);
        if (this.f6629H != null && actionMasked == 2 && !this.f6630I && Math.abs(this.f6641T - motionEvent.getY()) > this.f6629H.m4952u()) {
            this.f6629H.m4949b(v, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.f6630I;
    }

    /* JADX INFO: renamed from: Z */
    void m8042Z(int i) {
        float f;
        float fM8044b0;
        V v = this.f6636O.get();
        if (v == null || this.f6638Q.isEmpty()) {
            return;
        }
        int i2 = this.f6623B;
        if (i > i2 || i2 == m8044b0()) {
            int i3 = this.f6623B;
            f = i3 - i;
            fM8044b0 = this.f6635N - i3;
        } else {
            int i4 = this.f6623B;
            f = i4 - i;
            fM8044b0 = i4 - m8044b0();
        }
        float f2 = f / fM8044b0;
        for (int i5 = 0; i5 < this.f6638Q.size(); i5++) {
            this.f6638Q.get(i5).m8064a(v, f2);
        }
    }

    /* JADX INFO: renamed from: a0 */
    View m8043a0(View view) {
        if (C0292v.m2070U(view)) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View viewM8043a0 = m8043a0(viewGroup.getChildAt(i));
            if (viewM8043a0 != null) {
                return viewM8043a0;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: b0 */
    public int m8044b0() {
        if (this.f6647b) {
            return this.f6670y;
        }
        return Math.max(this.f6669x, this.f6662q ? 0 : this.f6664s);
    }

    /* JADX INFO: renamed from: d0 */
    public boolean m8045d0() {
        return this.f6658m;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
    /* JADX INFO: renamed from: g */
    public void mo1579g(CoordinatorLayout.C0224f c0224f) {
        super.mo1579g(c0224f);
        this.f6636O = null;
        this.f6629H = null;
    }

    /* JADX INFO: renamed from: h0 */
    public void m8046h0(boolean z) {
        this.f6627F = z;
    }

    /* JADX INFO: renamed from: i0 */
    public void m8047i0(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("offset must be greater than or equal to 0");
        }
        this.f6669x = i;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
    /* JADX INFO: renamed from: j */
    public void mo1582j() {
        super.mo1582j();
        this.f6636O = null;
        this.f6629H = null;
    }

    /* JADX INFO: renamed from: j0 */
    public void m8048j0(boolean z) {
        if (this.f6647b == z) {
            return;
        }
        this.f6647b = z;
        if (this.f6636O != null) {
            m8028S();
        }
        m8058t0((this.f6647b && this.f6628G == 6) ? 3 : this.f6628G);
        m8041z0();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
    /* JADX INFO: renamed from: k */
    public boolean mo1583k(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        C0633c c0633c;
        if (!v.isShown() || !this.f6627F) {
            this.f6630I = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            m8037f0();
        }
        if (this.f6639R == null) {
            this.f6639R = VelocityTracker.obtain();
        }
        this.f6639R.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x = (int) motionEvent.getX();
            this.f6641T = (int) motionEvent.getY();
            if (this.f6628G != 2) {
                WeakReference<View> weakReference = this.f6637P;
                View view = weakReference != null ? weakReference.get() : null;
                if (view != null && coordinatorLayout.m1548B(view, x, this.f6641T)) {
                    this.f6640S = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.f6642U = true;
                }
            }
            this.f6630I = this.f6640S == -1 && !coordinatorLayout.m1548B(v, x, this.f6641T);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f6642U = false;
            this.f6640S = -1;
            if (this.f6630I) {
                this.f6630I = false;
                return false;
            }
        }
        if (!this.f6630I && (c0633c = this.f6629H) != null && c0633c.m4945G(motionEvent)) {
            return true;
        }
        WeakReference<View> weakReference2 = this.f6637P;
        View view2 = weakReference2 != null ? weakReference2.get() : null;
        return (actionMasked != 2 || view2 == null || this.f6630I || this.f6628G == 1 || coordinatorLayout.m1548B(view2, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.f6629H == null || Math.abs(((float) this.f6641T) - motionEvent.getY()) <= ((float) this.f6629H.m4952u())) ? false : true;
    }

    /* JADX INFO: renamed from: k0 */
    public void m8049k0(boolean z) {
        this.f6658m = z;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
    /* JADX INFO: renamed from: l */
    public boolean mo1584l(CoordinatorLayout coordinatorLayout, V v, int i) {
        C1208g c1208g;
        if (C0292v.m2126z(coordinatorLayout) && !C0292v.m2126z(v)) {
            v.setFitsSystemWindows(true);
        }
        if (this.f6636O == null) {
            this.f6652g = coordinatorLayout.getResources().getDimensionPixelSize(C1219d.design_bottom_sheet_peek_height_min);
            m8039u0(v);
            this.f6636O = new WeakReference<>(v);
            if (this.f6654i && (c1208g = this.f6655j) != null) {
                C0292v.m2111r0(v, c1208g);
            }
            C1208g c1208g2 = this.f6655j;
            if (c1208g2 != null) {
                float fM2120w = this.f6624C;
                if (fM2120w == -1.0f) {
                    fM2120w = C0292v.m2120w(v);
                }
                c1208g2.m9183V(fM2120w);
                boolean z = this.f6628G == 3;
                this.f6666u = z;
                this.f6655j.m9185X(z ? CropImageView.DEFAULT_ASPECT_RATIO : 1.0f);
            }
            m8041z0();
            if (C0292v.m2042A(v) == 0) {
                C0292v.m2123x0(v, 1);
            }
            int measuredWidth = v.getMeasuredWidth();
            int i2 = this.f6656k;
            if (measuredWidth > i2 && i2 != -1) {
                ViewGroup.LayoutParams layoutParams = v.getLayoutParams();
                layoutParams.width = this.f6656k;
                v.post(new RunnableC1046a(this, v, layoutParams));
            }
        }
        if (this.f6629H == null) {
            this.f6629H = C0633c.m4935m(coordinatorLayout, this.f6645X);
        }
        int top = v.getTop();
        coordinatorLayout.m1551I(v, i);
        this.f6634M = coordinatorLayout.getWidth();
        this.f6635N = coordinatorLayout.getHeight();
        int height = v.getHeight();
        this.f6633L = height;
        int i3 = this.f6635N;
        int i4 = i3 - height;
        int i5 = this.f6664s;
        if (i4 < i5) {
            if (this.f6662q) {
                this.f6633L = i3;
            } else {
                this.f6633L = i3 - i5;
            }
        }
        this.f6670y = Math.max(0, this.f6635N - this.f6633L);
        m8029T();
        m8028S();
        int i6 = this.f6628G;
        if (i6 == 3) {
            C0292v.m2075Z(v, m8044b0());
        } else if (i6 == 6) {
            C0292v.m2075Z(v, this.f6671z);
        } else if (this.f6625D && i6 == 5) {
            C0292v.m2075Z(v, this.f6635N);
        } else {
            int i7 = this.f6628G;
            if (i7 == 4) {
                C0292v.m2075Z(v, this.f6623B);
            } else if (i7 == 1 || i7 == 2) {
                C0292v.m2075Z(v, top - v.getTop());
            }
        }
        this.f6637P = new WeakReference<>(m8043a0(v));
        return true;
    }

    /* JADX INFO: renamed from: l0 */
    public void m8050l0(float f) {
        if (f <= CropImageView.DEFAULT_ASPECT_RATIO || f >= 1.0f) {
            throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
        }
        this.f6622A = f;
        if (this.f6636O != null) {
            m8029T();
        }
    }

    /* JADX INFO: renamed from: m0 */
    public void m8051m0(boolean z) {
        if (this.f6625D != z) {
            this.f6625D = z;
            if (!z && this.f6628G == 5) {
                m8057s0(4);
            }
            m8041z0();
        }
    }

    /* JADX INFO: renamed from: n0 */
    public void m8052n0(int i) {
        this.f6656k = i;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
    /* JADX INFO: renamed from: o */
    public boolean mo1587o(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2) {
        WeakReference<View> weakReference = this.f6637P;
        if (weakReference == null || view != weakReference.get()) {
            return false;
        }
        return this.f6628G != 3 || super.mo1587o(coordinatorLayout, v, view, f, f2);
    }

    /* JADX INFO: renamed from: o0 */
    public void m8053o0(int i) {
        m8054p0(i, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0015  */
    /* JADX INFO: renamed from: p0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m8054p0(int i, boolean z) {
        boolean z2 = true;
        if (i == -1) {
            if (this.f6651f) {
                z2 = false;
            } else {
                this.f6651f = true;
            }
        } else if (this.f6651f || this.f6650e != i) {
            this.f6651f = false;
            this.f6650e = Math.max(0, i);
        }
        if (z2) {
            m8013C0(z);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
    /* JADX INFO: renamed from: q */
    public void mo1589q(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr, int i3) {
        if (i3 == 1) {
            return;
        }
        WeakReference<View> weakReference = this.f6637P;
        if (view != (weakReference != null ? weakReference.get() : null)) {
            return;
        }
        int top = v.getTop();
        int i4 = top - i2;
        if (i2 > 0) {
            if (i4 < m8044b0()) {
                iArr[1] = top - m8044b0();
                C0292v.m2075Z(v, -iArr[1]);
                m8058t0(3);
            } else {
                if (!this.f6627F) {
                    return;
                }
                iArr[1] = i2;
                C0292v.m2075Z(v, -i2);
                m8058t0(1);
            }
        } else if (i2 < 0 && !view.canScrollVertically(-1)) {
            int i5 = this.f6623B;
            if (i4 > i5 && !this.f6625D) {
                iArr[1] = top - i5;
                C0292v.m2075Z(v, -iArr[1]);
                m8058t0(4);
            } else {
                if (!this.f6627F) {
                    return;
                }
                iArr[1] = i2;
                C0292v.m2075Z(v, -i2);
                m8058t0(1);
            }
        }
        m8042Z(v.getTop());
        this.f6631J = i2;
        this.f6632K = true;
    }

    /* JADX INFO: renamed from: q0 */
    public void m8055q0(int i) {
        this.f6646a = i;
    }

    /* JADX INFO: renamed from: r0 */
    public void m8056r0(boolean z) {
        this.f6626E = z;
    }

    /* JADX INFO: renamed from: s0 */
    public void m8057s0(int i) {
        if (i == this.f6628G) {
            return;
        }
        if (this.f6636O != null) {
            m8040w0(i);
            return;
        }
        if (i == 4 || i == 3 || i == 6 || (this.f6625D && i == 5)) {
            this.f6628G = i;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
    /* JADX INFO: renamed from: t */
    public void mo1592t(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
    }

    /* JADX INFO: renamed from: t0 */
    void m8058t0(int i) {
        V v;
        if (this.f6628G == i) {
            return;
        }
        this.f6628G = i;
        WeakReference<V> weakReference = this.f6636O;
        if (weakReference == null || (v = weakReference.get()) == null) {
            return;
        }
        if (i == 3) {
            m8012B0(true);
        } else if (i == 6 || i == 5 || i == 4) {
            m8012B0(false);
        }
        m8011A0(i);
        for (int i2 = 0; i2 < this.f6638Q.size(); i2++) {
            this.f6638Q.get(i2).m8065b(v, i);
        }
        m8041z0();
    }

    /* JADX INFO: renamed from: v0 */
    void m8059v0(View view, int i) {
        int iM8044b0;
        int i2;
        if (i == 4) {
            iM8044b0 = this.f6623B;
        } else if (i == 6) {
            int i3 = this.f6671z;
            if (!this.f6647b || i3 > (i2 = this.f6670y)) {
                iM8044b0 = i3;
            } else {
                iM8044b0 = i2;
                i = 3;
            }
        } else if (i == 3) {
            iM8044b0 = m8044b0();
        } else {
            if (!this.f6625D || i != 5) {
                throw new IllegalArgumentException("Illegal state argument: " + i);
            }
            iM8044b0 = this.f6635N;
        }
        m8061y0(view, i, iM8044b0, false);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
    /* JADX INFO: renamed from: x */
    public void mo1596x(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        C1053h c1053h = (C1053h) parcelable;
        super.mo1596x(coordinatorLayout, v, c1053h.m4862j());
        m8038g0(c1053h);
        int i = c1053h.f6683d;
        if (i == 1 || i == 2) {
            this.f6628G = 4;
        } else {
            this.f6628G = i;
        }
    }

    /* JADX INFO: renamed from: x0 */
    boolean m8060x0(View view, float f) {
        if (this.f6626E) {
            return true;
        }
        if (view.getTop() < this.f6623B) {
            return false;
        }
        return Math.abs((((float) view.getTop()) + (f * 0.1f)) - ((float) this.f6623B)) / ((float) m8030U()) > 0.5f;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
    /* JADX INFO: renamed from: y */
    public Parcelable mo1597y(CoordinatorLayout coordinatorLayout, V v) {
        return new C1053h(super.mo1597y(coordinatorLayout, v), (BottomSheetBehavior<?>) this);
    }

    /* JADX INFO: renamed from: y0 */
    void m8061y0(View view, int i, int i2, boolean z) {
        C0633c c0633c = this.f6629H;
        if (!(c0633c != null && (!z ? !c0633c.m4946H(view, view.getLeft(), i2) : !c0633c.m4944F(view.getLeft(), i2)))) {
            m8058t0(i);
            return;
        }
        m8058t0(2);
        m8011A0(i);
        if (this.f6667v == null) {
            this.f6667v = new RunnableC1054i(view, i);
        }
        if (((RunnableC1054i) this.f6667v).f6689c) {
            this.f6667v.f6690d = i;
            return;
        }
        BottomSheetBehavior<V>.RunnableC1054i runnableC1054i = this.f6667v;
        runnableC1054i.f6690d = i;
        C0292v.m2089g0(view, runnableC1054i);
        ((RunnableC1054i) this.f6667v).f6689c = true;
    }

    /* JADX INFO: renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$h */
    protected static class C1053h extends AbstractC0630a {
        public static final Parcelable.Creator<C1053h> CREATOR = new a();

        /* JADX INFO: renamed from: d */
        final int f6683d;

        /* JADX INFO: renamed from: e */
        int f6684e;

        /* JADX INFO: renamed from: f */
        boolean f6685f;

        /* JADX INFO: renamed from: g */
        boolean f6686g;

        /* JADX INFO: renamed from: h */
        boolean f6687h;

        /* JADX INFO: renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$h$a */
        static class a implements Parcelable.ClassLoaderCreator<C1053h> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public C1053h createFromParcel(Parcel parcel) {
                return new C1053h(parcel, (ClassLoader) null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public C1053h createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C1053h(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public C1053h[] newArray(int i) {
                return new C1053h[i];
            }
        }

        public C1053h(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f6683d = parcel.readInt();
            this.f6684e = parcel.readInt();
            this.f6685f = parcel.readInt() == 1;
            this.f6686g = parcel.readInt() == 1;
            this.f6687h = parcel.readInt() == 1;
        }

        @Override // p016c.p052i.p053a.AbstractC0630a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f6683d);
            parcel.writeInt(this.f6684e);
            parcel.writeInt(this.f6685f ? 1 : 0);
            parcel.writeInt(this.f6686g ? 1 : 0);
            parcel.writeInt(this.f6687h ? 1 : 0);
        }

        public C1053h(Parcelable parcelable, BottomSheetBehavior<?> bottomSheetBehavior) {
            super(parcelable);
            this.f6683d = bottomSheetBehavior.f6628G;
            this.f6684e = ((BottomSheetBehavior) bottomSheetBehavior).f6650e;
            this.f6685f = ((BottomSheetBehavior) bottomSheetBehavior).f6647b;
            this.f6686g = bottomSheetBehavior.f6625D;
            this.f6687h = ((BottomSheetBehavior) bottomSheetBehavior).f6626E;
        }
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        int i;
        super(context, attributeSet);
        this.f6646a = 0;
        this.f6647b = true;
        this.f6648c = false;
        this.f6656k = -1;
        this.f6667v = null;
        this.f6622A = 0.5f;
        this.f6624C = -1.0f;
        this.f6627F = true;
        this.f6628G = 4;
        this.f6638Q = new ArrayList<>();
        this.f6644W = -1;
        this.f6645X = new C1050e();
        this.f6653h = context.getResources().getDimensionPixelSize(C1219d.mtrl_min_touch_target_size);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1226k.BottomSheetBehavior_Layout);
        this.f6654i = typedArrayObtainStyledAttributes.hasValue(C1226k.BottomSheetBehavior_Layout_shapeAppearance);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(C1226k.BottomSheetBehavior_Layout_backgroundTint);
        if (zHasValue) {
            m8033X(context, attributeSet, zHasValue, C1257c.m9454a(context, typedArrayObtainStyledAttributes, C1226k.BottomSheetBehavior_Layout_backgroundTint));
        } else {
            m8032W(context, attributeSet, zHasValue);
        }
        m8034Y();
        if (Build.VERSION.SDK_INT >= 21) {
            this.f6624C = typedArrayObtainStyledAttributes.getDimension(C1226k.BottomSheetBehavior_Layout_android_elevation, -1.0f);
        }
        if (typedArrayObtainStyledAttributes.hasValue(C1226k.BottomSheetBehavior_Layout_android_maxWidth)) {
            m8052n0(typedArrayObtainStyledAttributes.getDimensionPixelSize(C1226k.BottomSheetBehavior_Layout_android_maxWidth, -1));
        }
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(C1226k.BottomSheetBehavior_Layout_behavior_peekHeight);
        if (typedValuePeekValue != null && (i = typedValuePeekValue.data) == -1) {
            m8053o0(i);
        } else {
            m8053o0(typedArrayObtainStyledAttributes.getDimensionPixelSize(C1226k.BottomSheetBehavior_Layout_behavior_peekHeight, -1));
        }
        m8051m0(typedArrayObtainStyledAttributes.getBoolean(C1226k.BottomSheetBehavior_Layout_behavior_hideable, false));
        m8049k0(typedArrayObtainStyledAttributes.getBoolean(C1226k.BottomSheetBehavior_Layout_gestureInsetBottomIgnored, false));
        m8048j0(typedArrayObtainStyledAttributes.getBoolean(C1226k.BottomSheetBehavior_Layout_behavior_fitToContents, true));
        m8056r0(typedArrayObtainStyledAttributes.getBoolean(C1226k.BottomSheetBehavior_Layout_behavior_skipCollapsed, false));
        m8046h0(typedArrayObtainStyledAttributes.getBoolean(C1226k.BottomSheetBehavior_Layout_behavior_draggable, true));
        m8055q0(typedArrayObtainStyledAttributes.getInt(C1226k.BottomSheetBehavior_Layout_behavior_saveFlags, 0));
        m8050l0(typedArrayObtainStyledAttributes.getFloat(C1226k.BottomSheetBehavior_Layout_behavior_halfExpandedRatio, 0.5f));
        TypedValue typedValuePeekValue2 = typedArrayObtainStyledAttributes.peekValue(C1226k.BottomSheetBehavior_Layout_behavior_expandedOffset);
        if (typedValuePeekValue2 != null && typedValuePeekValue2.type == 16) {
            m8047i0(typedValuePeekValue2.data);
        } else {
            m8047i0(typedArrayObtainStyledAttributes.getDimensionPixelOffset(C1226k.BottomSheetBehavior_Layout_behavior_expandedOffset, 0));
        }
        this.f6659n = typedArrayObtainStyledAttributes.getBoolean(C1226k.BottomSheetBehavior_Layout_paddingBottomSystemWindowInsets, false);
        this.f6660o = typedArrayObtainStyledAttributes.getBoolean(C1226k.BottomSheetBehavior_Layout_paddingLeftSystemWindowInsets, false);
        this.f6661p = typedArrayObtainStyledAttributes.getBoolean(C1226k.BottomSheetBehavior_Layout_paddingRightSystemWindowInsets, false);
        this.f6662q = typedArrayObtainStyledAttributes.getBoolean(C1226k.BottomSheetBehavior_Layout_paddingTopSystemWindowInsets, true);
        typedArrayObtainStyledAttributes.recycle();
        this.f6649d = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }
}
