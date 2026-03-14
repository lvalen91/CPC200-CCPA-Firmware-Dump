package androidx.fragment.app;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.view.C0292v;
import androidx.fragment.app.AbstractC0353c0;
import androidx.lifecycle.AbstractC0392f;
import androidx.lifecycle.InterfaceC0411y;
import com.yalantis.ucrop.util.ImageHeaderParser;
import com.yalantis.ucrop.view.CropImageView;
import p016c.p055j.C0635b;

/* JADX INFO: renamed from: androidx.fragment.app.u */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0373u {

    /* JADX INFO: renamed from: a */
    private final C0365m f2372a;

    /* JADX INFO: renamed from: b */
    private final C0374v f2373b;

    /* JADX INFO: renamed from: c */
    private final Fragment f2374c;

    /* JADX INFO: renamed from: d */
    private boolean f2375d = false;

    /* JADX INFO: renamed from: e */
    private int f2376e = -1;

    /* JADX INFO: renamed from: androidx.fragment.app.u$a */
    class a implements View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ View f2377b;

        a(C0373u c0373u, View view) {
            this.f2377b = view;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            this.f2377b.removeOnAttachStateChangeListener(this);
            C0292v.m2099l0(this.f2377b);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.u$b */
    static /* synthetic */ class b {

        /* JADX INFO: renamed from: a */
        static final /* synthetic */ int[] f2378a;

        static {
            int[] iArr = new int[AbstractC0392f.c.values().length];
            f2378a = iArr;
            try {
                iArr[AbstractC0392f.c.RESUMED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2378a[AbstractC0392f.c.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2378a[AbstractC0392f.c.CREATED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2378a[AbstractC0392f.c.INITIALIZED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    C0373u(C0365m c0365m, C0374v c0374v, Fragment fragment) {
        this.f2372a = c0365m;
        this.f2373b = c0374v;
        this.f2374c = fragment;
    }

    /* JADX INFO: renamed from: l */
    private boolean m2840l(View view) {
        if (view == this.f2374c.f2054I) {
            return true;
        }
        for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
            if (parent == this.f2374c.f2054I) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: q */
    private Bundle m2841q() {
        Bundle bundle = new Bundle();
        this.f2374c.m2384C1(bundle);
        this.f2372a.m2672j(this.f2374c, bundle, false);
        if (bundle.isEmpty()) {
            bundle = null;
        }
        if (this.f2374c.f2054I != null) {
            m2858s();
        }
        if (this.f2374c.f2073d != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray("android:view_state", this.f2374c.f2073d);
        }
        if (this.f2374c.f2074e != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBundle("android:view_registry_state", this.f2374c.f2074e);
        }
        if (!this.f2374c.f2056K) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean("android:user_visible_hint", this.f2374c.f2056K);
        }
        return bundle;
    }

    /* JADX INFO: renamed from: a */
    void m2842a() {
        if (AbstractC0366n.m2677E0(3)) {
            String str = "moveto ACTIVITY_CREATED: " + this.f2374c;
        }
        Fragment fragment = this.f2374c;
        fragment.m2473i1(fragment.f2072c);
        C0365m c0365m = this.f2372a;
        Fragment fragment2 = this.f2374c;
        c0365m.m2663a(fragment2, fragment2.f2072c, false);
    }

    /* JADX INFO: renamed from: b */
    void m2843b() {
        int iM2871j = this.f2373b.m2871j(this.f2374c);
        Fragment fragment = this.f2374c;
        fragment.f2053H.addView(fragment.f2054I, iM2871j);
    }

    /* JADX INFO: renamed from: c */
    void m2844c() {
        if (AbstractC0366n.m2677E0(3)) {
            String str = "moveto ATTACHED: " + this.f2374c;
        }
        Fragment fragment = this.f2374c;
        Fragment fragment2 = fragment.f2078i;
        C0373u c0373uM2874m = null;
        if (fragment2 != null) {
            C0373u c0373uM2874m2 = this.f2373b.m2874m(fragment2.f2076g);
            if (c0373uM2874m2 == null) {
                throw new IllegalStateException("Fragment " + this.f2374c + " declared target fragment " + this.f2374c.f2078i + " that does not belong to this FragmentManager!");
            }
            Fragment fragment3 = this.f2374c;
            fragment3.f2079j = fragment3.f2078i.f2076g;
            fragment3.f2078i = null;
            c0373uM2874m = c0373uM2874m2;
        } else {
            String str2 = fragment.f2079j;
            if (str2 != null && (c0373uM2874m = this.f2373b.m2874m(str2)) == null) {
                throw new IllegalStateException("Fragment " + this.f2374c + " declared target fragment " + this.f2374c.f2079j + " that does not belong to this FragmentManager!");
            }
        }
        if (c0373uM2874m != null && (AbstractC0366n.f2282P || c0373uM2874m.m2852k().f2071b < 1)) {
            c0373uM2874m.m2853m();
        }
        Fragment fragment4 = this.f2374c;
        fragment4.f2090u = fragment4.f2089t.m2783s0();
        Fragment fragment5 = this.f2374c;
        fragment5.f2092w = fragment5.f2089t.m2788v0();
        this.f2372a.m2669g(this.f2374c, false);
        this.f2374c.m2475j1();
        this.f2372a.m2664b(this.f2374c, false);
    }

    /* JADX INFO: renamed from: d */
    int m2845d() {
        Fragment fragment;
        ViewGroup viewGroup;
        Fragment fragment2 = this.f2374c;
        if (fragment2.f2089t == null) {
            return fragment2.f2071b;
        }
        int iMin = this.f2376e;
        int i = b.f2378a[fragment2.f2063R.ordinal()];
        if (i != 1) {
            iMin = i != 2 ? i != 3 ? i != 4 ? Math.min(iMin, -1) : Math.min(iMin, 0) : Math.min(iMin, 1) : Math.min(iMin, 5);
        }
        Fragment fragment3 = this.f2374c;
        if (fragment3.f2084o) {
            if (fragment3.f2085p) {
                iMin = Math.max(this.f2376e, 2);
                View view = this.f2374c.f2054I;
                if (view != null && view.getParent() == null) {
                    iMin = Math.min(iMin, 2);
                }
            } else {
                iMin = this.f2376e < 4 ? Math.min(iMin, fragment3.f2071b) : Math.min(iMin, 1);
            }
        }
        if (!this.f2374c.f2082m) {
            iMin = Math.min(iMin, 1);
        }
        AbstractC0353c0.e.b bVarM2582l = null;
        if (AbstractC0366n.f2282P && (viewGroup = (fragment = this.f2374c).f2053H) != null) {
            bVarM2582l = AbstractC0353c0.m2572n(viewGroup, fragment.m2441X()).m2582l(this);
        }
        if (bVarM2582l == AbstractC0353c0.e.b.ADDING) {
            iMin = Math.min(iMin, 6);
        } else if (bVarM2582l == AbstractC0353c0.e.b.REMOVING) {
            iMin = Math.max(iMin, 3);
        } else {
            Fragment fragment4 = this.f2374c;
            if (fragment4.f2083n) {
                iMin = fragment4.m2492t0() ? Math.min(iMin, 1) : Math.min(iMin, -1);
            }
        }
        Fragment fragment5 = this.f2374c;
        if (fragment5.f2055J && fragment5.f2071b < 5) {
            iMin = Math.min(iMin, 4);
        }
        if (AbstractC0366n.m2677E0(2)) {
            String str = "computeExpectedState() of " + iMin + " for " + this.f2374c;
        }
        return iMin;
    }

    /* JADX INFO: renamed from: e */
    void m2846e() {
        if (AbstractC0366n.m2677E0(3)) {
            String str = "moveto CREATED: " + this.f2374c;
        }
        Fragment fragment = this.f2374c;
        if (fragment.f2062Q) {
            fragment.m2412M1(fragment.f2072c);
            this.f2374c.f2071b = 1;
            return;
        }
        this.f2372a.m2670h(fragment, fragment.f2072c, false);
        Fragment fragment2 = this.f2374c;
        fragment2.m2481m1(fragment2.f2072c);
        C0365m c0365m = this.f2372a;
        Fragment fragment3 = this.f2374c;
        c0365m.m2665c(fragment3, fragment3.f2072c, false);
    }

    /* JADX INFO: renamed from: f */
    void m2847f() {
        String resourceName;
        if (this.f2374c.f2084o) {
            return;
        }
        if (AbstractC0366n.m2677E0(3)) {
            String str = "moveto CREATE_VIEW: " + this.f2374c;
        }
        Fragment fragment = this.f2374c;
        LayoutInflater layoutInflaterM2491s1 = fragment.m2491s1(fragment.f2072c);
        ViewGroup viewGroup = null;
        Fragment fragment2 = this.f2374c;
        ViewGroup viewGroup2 = fragment2.f2053H;
        if (viewGroup2 != null) {
            viewGroup = viewGroup2;
        } else {
            int i = fragment2.f2094y;
            if (i != 0) {
                if (i == -1) {
                    throw new IllegalArgumentException("Cannot create fragment " + this.f2374c + " for a container view with no id");
                }
                viewGroup = (ViewGroup) fragment2.f2089t.m2778n0().mo2509c(this.f2374c.f2094y);
                if (viewGroup == null) {
                    Fragment fragment3 = this.f2374c;
                    if (!fragment3.f2086q) {
                        try {
                            resourceName = fragment3.m2459d0().getResourceName(this.f2374c.f2094y);
                        } catch (Resources.NotFoundException unused) {
                            resourceName = "unknown";
                        }
                        throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(this.f2374c.f2094y) + " (" + resourceName + ") for fragment " + this.f2374c);
                    }
                }
            }
        }
        Fragment fragment4 = this.f2374c;
        fragment4.f2053H = viewGroup;
        fragment4.mo2484o1(layoutInflaterM2491s1, viewGroup, fragment4.f2072c);
        View view = this.f2374c.f2054I;
        if (view != null) {
            boolean z = false;
            view.setSaveFromParentEnabled(false);
            Fragment fragment5 = this.f2374c;
            fragment5.f2054I.setTag(C0635b.fragment_container_view_tag, fragment5);
            if (viewGroup != null) {
                m2843b();
            }
            Fragment fragment6 = this.f2374c;
            if (fragment6.f2046A) {
                fragment6.f2054I.setVisibility(8);
            }
            if (C0292v.m2068S(this.f2374c.f2054I)) {
                C0292v.m2099l0(this.f2374c.f2054I);
            } else {
                View view2 = this.f2374c.f2054I;
                view2.addOnAttachStateChangeListener(new a(this, view2));
            }
            this.f2374c.m2393F1();
            C0365m c0365m = this.f2372a;
            Fragment fragment7 = this.f2374c;
            c0365m.m2675m(fragment7, fragment7.f2054I, fragment7.f2072c, false);
            int visibility = this.f2374c.f2054I.getVisibility();
            float alpha = this.f2374c.f2054I.getAlpha();
            if (AbstractC0366n.f2282P) {
                this.f2374c.m2446Y1(alpha);
                Fragment fragment8 = this.f2374c;
                if (fragment8.f2053H != null && visibility == 0) {
                    View viewFindFocus = fragment8.f2054I.findFocus();
                    if (viewFindFocus != null) {
                        this.f2374c.m2432T1(viewFindFocus);
                        if (AbstractC0366n.m2677E0(2)) {
                            String str2 = "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + this.f2374c;
                        }
                    }
                    this.f2374c.f2054I.setAlpha(CropImageView.DEFAULT_ASPECT_RATIO);
                }
            } else {
                Fragment fragment9 = this.f2374c;
                if (visibility == 0 && fragment9.f2053H != null) {
                    z = true;
                }
                fragment9.f2058M = z;
            }
        }
        this.f2374c.f2071b = 2;
    }

    /* JADX INFO: renamed from: g */
    void m2848g() {
        Fragment fragmentM2867f;
        if (AbstractC0366n.m2677E0(3)) {
            String str = "movefrom CREATED: " + this.f2374c;
        }
        Fragment fragment = this.f2374c;
        boolean zIsChangingConfigurations = true;
        boolean z = fragment.f2083n && !fragment.m2492t0();
        if (!(z || this.f2373b.m2876o().m2835s(this.f2374c))) {
            String str2 = this.f2374c.f2079j;
            if (str2 != null && (fragmentM2867f = this.f2373b.m2867f(str2)) != null && fragmentM2867f.f2048C) {
                this.f2374c.f2078i = fragmentM2867f;
            }
            this.f2374c.f2071b = 0;
            return;
        }
        AbstractC0363k<?> abstractC0363k = this.f2374c.f2090u;
        if (abstractC0363k instanceof InterfaceC0411y) {
            zIsChangingConfigurations = this.f2373b.m2876o().m2832p();
        } else if (abstractC0363k.m2659f() instanceof Activity) {
            zIsChangingConfigurations = true ^ ((Activity) abstractC0363k.m2659f()).isChangingConfigurations();
        }
        if (z || zIsChangingConfigurations) {
            this.f2373b.m2876o().m2827j(this.f2374c);
        }
        this.f2374c.m2485p1();
        this.f2372a.m2666d(this.f2374c, false);
        for (C0373u c0373u : this.f2373b.m2872k()) {
            if (c0373u != null) {
                Fragment fragmentM2852k = c0373u.m2852k();
                if (this.f2374c.f2076g.equals(fragmentM2852k.f2079j)) {
                    fragmentM2852k.f2078i = this.f2374c;
                    fragmentM2852k.f2079j = null;
                }
            }
        }
        Fragment fragment2 = this.f2374c;
        String str3 = fragment2.f2079j;
        if (str3 != null) {
            fragment2.f2078i = this.f2373b.m2867f(str3);
        }
        this.f2373b.m2878q(this);
    }

    /* JADX INFO: renamed from: h */
    void m2849h() {
        View view;
        if (AbstractC0366n.m2677E0(3)) {
            String str = "movefrom CREATE_VIEW: " + this.f2374c;
        }
        Fragment fragment = this.f2374c;
        ViewGroup viewGroup = fragment.f2053H;
        if (viewGroup != null && (view = fragment.f2054I) != null) {
            viewGroup.removeView(view);
        }
        this.f2374c.m2487q1();
        this.f2372a.m2676n(this.f2374c, false);
        Fragment fragment2 = this.f2374c;
        fragment2.f2053H = null;
        fragment2.f2054I = null;
        fragment2.f2065T = null;
        fragment2.f2066U.mo2965k(null);
        this.f2374c.f2085p = false;
    }

    /* JADX INFO: renamed from: i */
    void m2850i() {
        if (AbstractC0366n.m2677E0(3)) {
            String str = "movefrom ATTACHED: " + this.f2374c;
        }
        this.f2374c.m2489r1();
        boolean z = false;
        this.f2372a.m2667e(this.f2374c, false);
        Fragment fragment = this.f2374c;
        fragment.f2071b = -1;
        fragment.f2090u = null;
        fragment.f2092w = null;
        fragment.f2089t = null;
        if (fragment.f2083n && !fragment.m2492t0()) {
            z = true;
        }
        if (z || this.f2373b.m2876o().m2835s(this.f2374c)) {
            if (AbstractC0366n.m2677E0(3)) {
                String str2 = "initState called for fragment: " + this.f2374c;
            }
            this.f2374c.m2483o0();
        }
    }

    /* JADX INFO: renamed from: j */
    void m2851j() {
        Fragment fragment = this.f2374c;
        if (fragment.f2084o && fragment.f2085p && !fragment.f2087r) {
            if (AbstractC0366n.m2677E0(3)) {
                String str = "moveto CREATE_VIEW: " + this.f2374c;
            }
            Fragment fragment2 = this.f2374c;
            fragment2.mo2484o1(fragment2.m2491s1(fragment2.f2072c), null, this.f2374c.f2072c);
            View view = this.f2374c.f2054I;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                Fragment fragment3 = this.f2374c;
                fragment3.f2054I.setTag(C0635b.fragment_container_view_tag, fragment3);
                Fragment fragment4 = this.f2374c;
                if (fragment4.f2046A) {
                    fragment4.f2054I.setVisibility(8);
                }
                this.f2374c.m2393F1();
                C0365m c0365m = this.f2372a;
                Fragment fragment5 = this.f2374c;
                c0365m.m2675m(fragment5, fragment5.f2054I, fragment5.f2072c, false);
                this.f2374c.f2071b = 2;
            }
        }
    }

    /* JADX INFO: renamed from: k */
    Fragment m2852k() {
        return this.f2374c;
    }

    /* JADX INFO: renamed from: m */
    void m2853m() {
        if (this.f2375d) {
            if (AbstractC0366n.m2677E0(2)) {
                String str = "Ignoring re-entrant call to moveToExpectedState() for " + m2852k();
                return;
            }
            return;
        }
        try {
            this.f2375d = true;
            while (true) {
                int iM2845d = m2845d();
                if (iM2845d == this.f2374c.f2071b) {
                    if (AbstractC0366n.f2282P && this.f2374c.f2059N) {
                        if (this.f2374c.f2054I != null && this.f2374c.f2053H != null) {
                            AbstractC0353c0 abstractC0353c0M2572n = AbstractC0353c0.m2572n(this.f2374c.f2053H, this.f2374c.m2441X());
                            if (this.f2374c.f2046A) {
                                abstractC0353c0M2572n.m2576c(this);
                            } else {
                                abstractC0353c0M2572n.m2578e(this);
                            }
                        }
                        if (this.f2374c.f2089t != null) {
                            this.f2374c.f2089t.m2717C0(this.f2374c);
                        }
                        this.f2374c.f2059N = false;
                        this.f2374c.mo2425R0(this.f2374c.f2046A);
                    }
                    return;
                }
                if (iM2845d <= this.f2374c.f2071b) {
                    switch (this.f2374c.f2071b - 1) {
                        case ImageHeaderParser.UNKNOWN_ORIENTATION /* -1 */:
                            m2850i();
                            break;
                        case 0:
                            m2848g();
                            break;
                        case 1:
                            m2849h();
                            this.f2374c.f2071b = 1;
                            break;
                        case 2:
                            this.f2374c.f2085p = false;
                            this.f2374c.f2071b = 2;
                            break;
                        case 3:
                            if (AbstractC0366n.m2677E0(3)) {
                                String str2 = "movefrom ACTIVITY_CREATED: " + this.f2374c;
                            }
                            if (this.f2374c.f2054I != null && this.f2374c.f2073d == null) {
                                m2858s();
                            }
                            if (this.f2374c.f2054I != null && this.f2374c.f2053H != null) {
                                AbstractC0353c0.m2572n(this.f2374c.f2053H, this.f2374c.m2441X()).m2577d(this);
                            }
                            this.f2374c.f2071b = 3;
                            break;
                        case 4:
                            m2861v();
                            break;
                        case 5:
                            this.f2374c.f2071b = 5;
                            break;
                        case 6:
                            m2854n();
                            break;
                    }
                } else {
                    switch (this.f2374c.f2071b + 1) {
                        case 0:
                            m2844c();
                            break;
                        case 1:
                            m2846e();
                            break;
                        case 2:
                            m2851j();
                            m2847f();
                            break;
                        case 3:
                            m2842a();
                            break;
                        case 4:
                            if (this.f2374c.f2054I != null && this.f2374c.f2053H != null) {
                                AbstractC0353c0.m2572n(this.f2374c.f2053H, this.f2374c.m2441X()).m2575b(AbstractC0353c0.e.c.m2598b(this.f2374c.f2054I.getVisibility()), this);
                            }
                            this.f2374c.f2071b = 4;
                            break;
                        case 5:
                            m2860u();
                            break;
                        case 6:
                            this.f2374c.f2071b = 6;
                            break;
                        case 7:
                            m2856p();
                            break;
                    }
                }
            }
        } finally {
            this.f2375d = false;
        }
    }

    /* JADX INFO: renamed from: n */
    void m2854n() {
        if (AbstractC0366n.m2677E0(3)) {
            String str = "movefrom RESUMED: " + this.f2374c;
        }
        this.f2374c.m2502x1();
        this.f2372a.m2668f(this.f2374c, false);
    }

    /* JADX INFO: renamed from: o */
    void m2855o(ClassLoader classLoader) {
        Bundle bundle = this.f2374c.f2072c;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        Fragment fragment = this.f2374c;
        fragment.f2073d = fragment.f2072c.getSparseParcelableArray("android:view_state");
        Fragment fragment2 = this.f2374c;
        fragment2.f2074e = fragment2.f2072c.getBundle("android:view_registry_state");
        Fragment fragment3 = this.f2374c;
        fragment3.f2079j = fragment3.f2072c.getString("android:target_state");
        Fragment fragment4 = this.f2374c;
        if (fragment4.f2079j != null) {
            fragment4.f2080k = fragment4.f2072c.getInt("android:target_req_state", 0);
        }
        Fragment fragment5 = this.f2374c;
        Boolean bool = fragment5.f2075f;
        if (bool != null) {
            fragment5.f2056K = bool.booleanValue();
            this.f2374c.f2075f = null;
        } else {
            fragment5.f2056K = fragment5.f2072c.getBoolean("android:user_visible_hint", true);
        }
        Fragment fragment6 = this.f2374c;
        if (fragment6.f2056K) {
            return;
        }
        fragment6.f2055J = true;
    }

    /* JADX INFO: renamed from: p */
    void m2856p() {
        if (AbstractC0366n.m2677E0(3)) {
            String str = "moveto RESUMED: " + this.f2374c;
        }
        View viewM2424R = this.f2374c.m2424R();
        if (viewM2424R != null && m2840l(viewM2424R)) {
            boolean zRequestFocus = viewM2424R.requestFocus();
            if (AbstractC0366n.m2677E0(2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("requestFocus: Restoring focused view ");
                sb.append(viewM2424R);
                sb.append(" ");
                sb.append(zRequestFocus ? "succeeded" : "failed");
                sb.append(" on Fragment ");
                sb.append(this.f2374c);
                sb.append(" resulting in focused view ");
                sb.append(this.f2374c.f2054I.findFocus());
                sb.toString();
            }
        }
        this.f2374c.m2432T1(null);
        this.f2374c.m2381B1();
        this.f2372a.m2671i(this.f2374c, false);
        Fragment fragment = this.f2374c;
        fragment.f2072c = null;
        fragment.f2073d = null;
        fragment.f2074e = null;
    }

    /* JADX INFO: renamed from: r */
    C0372t m2857r() {
        C0372t c0372t = new C0372t(this.f2374c);
        if (this.f2374c.f2071b <= -1 || c0372t.f2371n != null) {
            c0372t.f2371n = this.f2374c.f2072c;
        } else {
            Bundle bundleM2841q = m2841q();
            c0372t.f2371n = bundleM2841q;
            if (this.f2374c.f2079j != null) {
                if (bundleM2841q == null) {
                    c0372t.f2371n = new Bundle();
                }
                c0372t.f2371n.putString("android:target_state", this.f2374c.f2079j);
                int i = this.f2374c.f2080k;
                if (i != 0) {
                    c0372t.f2371n.putInt("android:target_req_state", i);
                }
            }
        }
        return c0372t;
    }

    /* JADX INFO: renamed from: s */
    void m2858s() {
        if (this.f2374c.f2054I == null) {
            return;
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        this.f2374c.f2054I.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            this.f2374c.f2073d = sparseArray;
        }
        Bundle bundle = new Bundle();
        this.f2374c.f2065T.m2544e(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        this.f2374c.f2074e = bundle;
    }

    /* JADX INFO: renamed from: t */
    void m2859t(int i) {
        this.f2376e = i;
    }

    /* JADX INFO: renamed from: u */
    void m2860u() {
        if (AbstractC0366n.m2677E0(3)) {
            String str = "moveto STARTED: " + this.f2374c;
        }
        this.f2374c.m2387D1();
        this.f2372a.m2673k(this.f2374c, false);
    }

    /* JADX INFO: renamed from: v */
    void m2861v() {
        if (AbstractC0366n.m2677E0(3)) {
            String str = "movefrom STARTED: " + this.f2374c;
        }
        this.f2374c.m2390E1();
        this.f2372a.m2674l(this.f2374c, false);
    }

    C0373u(C0365m c0365m, C0374v c0374v, ClassLoader classLoader, C0362j c0362j, C0372t c0372t) {
        this.f2372a = c0365m;
        this.f2373b = c0374v;
        this.f2374c = c0362j.mo2657a(classLoader, c0372t.f2359b);
        Bundle bundle = c0372t.f2368k;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
        }
        this.f2374c.m2429S1(c0372t.f2368k);
        Fragment fragment = this.f2374c;
        fragment.f2076g = c0372t.f2360c;
        fragment.f2084o = c0372t.f2361d;
        fragment.f2086q = true;
        fragment.f2093x = c0372t.f2362e;
        fragment.f2094y = c0372t.f2363f;
        fragment.f2095z = c0372t.f2364g;
        fragment.f2048C = c0372t.f2365h;
        fragment.f2083n = c0372t.f2366i;
        fragment.f2047B = c0372t.f2367j;
        fragment.f2046A = c0372t.f2369l;
        fragment.f2063R = AbstractC0392f.c.values()[c0372t.f2370m];
        Bundle bundle2 = c0372t.f2371n;
        if (bundle2 != null) {
            this.f2374c.f2072c = bundle2;
        } else {
            this.f2374c.f2072c = new Bundle();
        }
        if (AbstractC0366n.m2677E0(2)) {
            String str = "Instantiated fragment " + this.f2374c;
        }
    }

    C0373u(C0365m c0365m, C0374v c0374v, Fragment fragment, C0372t c0372t) {
        this.f2372a = c0365m;
        this.f2373b = c0374v;
        this.f2374c = fragment;
        fragment.f2073d = null;
        fragment.f2074e = null;
        fragment.f2088s = 0;
        fragment.f2085p = false;
        fragment.f2082m = false;
        Fragment fragment2 = fragment.f2078i;
        fragment.f2079j = fragment2 != null ? fragment2.f2076g : null;
        Fragment fragment3 = this.f2374c;
        fragment3.f2078i = null;
        Bundle bundle = c0372t.f2371n;
        if (bundle != null) {
            fragment3.f2072c = bundle;
        } else {
            fragment3.f2072c = new Bundle();
        }
    }
}
