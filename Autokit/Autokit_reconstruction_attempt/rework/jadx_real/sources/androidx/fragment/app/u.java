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
import androidx.fragment.app.c0;
import androidx.lifecycle.f;
import com.yalantis.ucrop.util.ImageHeaderParser;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class u {
    private final m a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v f761b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Fragment f762c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f763d = false;
    private int e = -1;

    class a implements View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f764b;

        a(u uVar, View view) {
            this.f764b = view;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            this.f764b.removeOnAttachStateChangeListener(this);
            androidx.core.view.v.l0(this.f764b);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    static /* synthetic */ class b {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[f.c.values().length];
            a = iArr;
            try {
                iArr[f.c.RESUMED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[f.c.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[f.c.CREATED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[f.c.INITIALIZED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    u(m mVar, v vVar, Fragment fragment) {
        this.a = mVar;
        this.f761b = vVar;
        this.f762c = fragment;
    }

    private boolean l(View view) {
        if (view == this.f762c.I) {
            return true;
        }
        for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
            if (parent == this.f762c.I) {
                return true;
            }
        }
        return false;
    }

    private Bundle q() {
        Bundle bundle = new Bundle();
        this.f762c.C1(bundle);
        this.a.j(this.f762c, bundle, false);
        if (bundle.isEmpty()) {
            bundle = null;
        }
        if (this.f762c.I != null) {
            s();
        }
        if (this.f762c.f650d != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray("android:view_state", this.f762c.f650d);
        }
        if (this.f762c.e != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBundle("android:view_registry_state", this.f762c.e);
        }
        if (!this.f762c.K) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean("android:user_visible_hint", this.f762c.K);
        }
        return bundle;
    }

    void a() {
        if (n.E0(3)) {
            String str = "moveto ACTIVITY_CREATED: " + this.f762c;
        }
        Fragment fragment = this.f762c;
        fragment.i1(fragment.f649c);
        m mVar = this.a;
        Fragment fragment2 = this.f762c;
        mVar.a(fragment2, fragment2.f649c, false);
    }

    void b() {
        int iJ = this.f761b.j(this.f762c);
        Fragment fragment = this.f762c;
        fragment.H.addView(fragment.I, iJ);
    }

    void c() {
        if (n.E0(3)) {
            String str = "moveto ATTACHED: " + this.f762c;
        }
        Fragment fragment = this.f762c;
        Fragment fragment2 = fragment.i;
        u uVarM = null;
        if (fragment2 != null) {
            u uVarM2 = this.f761b.m(fragment2.g);
            if (uVarM2 == null) {
                throw new IllegalStateException("Fragment " + this.f762c + " declared target fragment " + this.f762c.i + " that does not belong to this FragmentManager!");
            }
            Fragment fragment3 = this.f762c;
            fragment3.j = fragment3.i.g;
            fragment3.i = null;
            uVarM = uVarM2;
        } else {
            String str2 = fragment.j;
            if (str2 != null && (uVarM = this.f761b.m(str2)) == null) {
                throw new IllegalStateException("Fragment " + this.f762c + " declared target fragment " + this.f762c.j + " that does not belong to this FragmentManager!");
            }
        }
        if (uVarM != null && (n.P || uVarM.k().f648b < 1)) {
            uVarM.m();
        }
        Fragment fragment4 = this.f762c;
        fragment4.u = fragment4.t.s0();
        Fragment fragment5 = this.f762c;
        fragment5.w = fragment5.t.v0();
        this.a.g(this.f762c, false);
        this.f762c.j1();
        this.a.b(this.f762c, false);
    }

    int d() {
        Fragment fragment;
        ViewGroup viewGroup;
        Fragment fragment2 = this.f762c;
        if (fragment2.t == null) {
            return fragment2.f648b;
        }
        int iMin = this.e;
        int i = b.a[fragment2.R.ordinal()];
        if (i != 1) {
            iMin = i != 2 ? i != 3 ? i != 4 ? Math.min(iMin, -1) : Math.min(iMin, 0) : Math.min(iMin, 1) : Math.min(iMin, 5);
        }
        Fragment fragment3 = this.f762c;
        if (fragment3.o) {
            if (fragment3.p) {
                iMin = Math.max(this.e, 2);
                View view = this.f762c.I;
                if (view != null && view.getParent() == null) {
                    iMin = Math.min(iMin, 2);
                }
            } else {
                iMin = this.e < 4 ? Math.min(iMin, fragment3.f648b) : Math.min(iMin, 1);
            }
        }
        if (!this.f762c.m) {
            iMin = Math.min(iMin, 1);
        }
        c0.e.b bVarL = null;
        if (n.P && (viewGroup = (fragment = this.f762c).H) != null) {
            bVarL = c0.n(viewGroup, fragment.X()).l(this);
        }
        if (bVarL == c0.e.b.ADDING) {
            iMin = Math.min(iMin, 6);
        } else if (bVarL == c0.e.b.REMOVING) {
            iMin = Math.max(iMin, 3);
        } else {
            Fragment fragment4 = this.f762c;
            if (fragment4.n) {
                iMin = fragment4.t0() ? Math.min(iMin, 1) : Math.min(iMin, -1);
            }
        }
        Fragment fragment5 = this.f762c;
        if (fragment5.J && fragment5.f648b < 5) {
            iMin = Math.min(iMin, 4);
        }
        if (n.E0(2)) {
            String str = "computeExpectedState() of " + iMin + " for " + this.f762c;
        }
        return iMin;
    }

    void e() {
        if (n.E0(3)) {
            String str = "moveto CREATED: " + this.f762c;
        }
        Fragment fragment = this.f762c;
        if (fragment.Q) {
            fragment.M1(fragment.f649c);
            this.f762c.f648b = 1;
            return;
        }
        this.a.h(fragment, fragment.f649c, false);
        Fragment fragment2 = this.f762c;
        fragment2.m1(fragment2.f649c);
        m mVar = this.a;
        Fragment fragment3 = this.f762c;
        mVar.c(fragment3, fragment3.f649c, false);
    }

    void f() {
        String resourceName;
        if (this.f762c.o) {
            return;
        }
        if (n.E0(3)) {
            String str = "moveto CREATE_VIEW: " + this.f762c;
        }
        Fragment fragment = this.f762c;
        LayoutInflater layoutInflaterS1 = fragment.s1(fragment.f649c);
        ViewGroup viewGroup = null;
        Fragment fragment2 = this.f762c;
        ViewGroup viewGroup2 = fragment2.H;
        if (viewGroup2 != null) {
            viewGroup = viewGroup2;
        } else {
            int i = fragment2.y;
            if (i != 0) {
                if (i == -1) {
                    throw new IllegalArgumentException("Cannot create fragment " + this.f762c + " for a container view with no id");
                }
                viewGroup = (ViewGroup) fragment2.t.n0().c(this.f762c.y);
                if (viewGroup == null) {
                    Fragment fragment3 = this.f762c;
                    if (!fragment3.q) {
                        try {
                            resourceName = fragment3.d0().getResourceName(this.f762c.y);
                        } catch (Resources.NotFoundException unused) {
                            resourceName = "unknown";
                        }
                        throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(this.f762c.y) + " (" + resourceName + ") for fragment " + this.f762c);
                    }
                }
            }
        }
        Fragment fragment4 = this.f762c;
        fragment4.H = viewGroup;
        fragment4.o1(layoutInflaterS1, viewGroup, fragment4.f649c);
        View view = this.f762c.I;
        if (view != null) {
            boolean z = false;
            view.setSaveFromParentEnabled(false);
            Fragment fragment5 = this.f762c;
            fragment5.I.setTag(c.j.b.fragment_container_view_tag, fragment5);
            if (viewGroup != null) {
                b();
            }
            Fragment fragment6 = this.f762c;
            if (fragment6.A) {
                fragment6.I.setVisibility(8);
            }
            if (androidx.core.view.v.S(this.f762c.I)) {
                androidx.core.view.v.l0(this.f762c.I);
            } else {
                View view2 = this.f762c.I;
                view2.addOnAttachStateChangeListener(new a(this, view2));
            }
            this.f762c.F1();
            m mVar = this.a;
            Fragment fragment7 = this.f762c;
            mVar.m(fragment7, fragment7.I, fragment7.f649c, false);
            int visibility = this.f762c.I.getVisibility();
            float alpha = this.f762c.I.getAlpha();
            if (n.P) {
                this.f762c.Y1(alpha);
                Fragment fragment8 = this.f762c;
                if (fragment8.H != null && visibility == 0) {
                    View viewFindFocus = fragment8.I.findFocus();
                    if (viewFindFocus != null) {
                        this.f762c.T1(viewFindFocus);
                        if (n.E0(2)) {
                            String str2 = "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + this.f762c;
                        }
                    }
                    this.f762c.I.setAlpha(CropImageView.DEFAULT_ASPECT_RATIO);
                }
            } else {
                Fragment fragment9 = this.f762c;
                if (visibility == 0 && fragment9.H != null) {
                    z = true;
                }
                fragment9.M = z;
            }
        }
        this.f762c.f648b = 2;
    }

    void g() {
        Fragment fragmentF;
        if (n.E0(3)) {
            String str = "movefrom CREATED: " + this.f762c;
        }
        Fragment fragment = this.f762c;
        boolean zIsChangingConfigurations = true;
        boolean z = fragment.n && !fragment.t0();
        if (!(z || this.f761b.o().s(this.f762c))) {
            String str2 = this.f762c.j;
            if (str2 != null && (fragmentF = this.f761b.f(str2)) != null && fragmentF.C) {
                this.f762c.i = fragmentF;
            }
            this.f762c.f648b = 0;
            return;
        }
        k<?> kVar = this.f762c.u;
        if (kVar instanceof androidx.lifecycle.y) {
            zIsChangingConfigurations = this.f761b.o().p();
        } else if (kVar.f() instanceof Activity) {
            zIsChangingConfigurations = true ^ ((Activity) kVar.f()).isChangingConfigurations();
        }
        if (z || zIsChangingConfigurations) {
            this.f761b.o().j(this.f762c);
        }
        this.f762c.p1();
        this.a.d(this.f762c, false);
        for (u uVar : this.f761b.k()) {
            if (uVar != null) {
                Fragment fragmentK = uVar.k();
                if (this.f762c.g.equals(fragmentK.j)) {
                    fragmentK.i = this.f762c;
                    fragmentK.j = null;
                }
            }
        }
        Fragment fragment2 = this.f762c;
        String str3 = fragment2.j;
        if (str3 != null) {
            fragment2.i = this.f761b.f(str3);
        }
        this.f761b.q(this);
    }

    void h() {
        View view;
        if (n.E0(3)) {
            String str = "movefrom CREATE_VIEW: " + this.f762c;
        }
        Fragment fragment = this.f762c;
        ViewGroup viewGroup = fragment.H;
        if (viewGroup != null && (view = fragment.I) != null) {
            viewGroup.removeView(view);
        }
        this.f762c.q1();
        this.a.n(this.f762c, false);
        Fragment fragment2 = this.f762c;
        fragment2.H = null;
        fragment2.I = null;
        fragment2.T = null;
        fragment2.U.k(null);
        this.f762c.p = false;
    }

    void i() {
        if (n.E0(3)) {
            String str = "movefrom ATTACHED: " + this.f762c;
        }
        this.f762c.r1();
        boolean z = false;
        this.a.e(this.f762c, false);
        Fragment fragment = this.f762c;
        fragment.f648b = -1;
        fragment.u = null;
        fragment.w = null;
        fragment.t = null;
        if (fragment.n && !fragment.t0()) {
            z = true;
        }
        if (z || this.f761b.o().s(this.f762c)) {
            if (n.E0(3)) {
                String str2 = "initState called for fragment: " + this.f762c;
            }
            this.f762c.o0();
        }
    }

    void j() {
        Fragment fragment = this.f762c;
        if (fragment.o && fragment.p && !fragment.r) {
            if (n.E0(3)) {
                String str = "moveto CREATE_VIEW: " + this.f762c;
            }
            Fragment fragment2 = this.f762c;
            fragment2.o1(fragment2.s1(fragment2.f649c), null, this.f762c.f649c);
            View view = this.f762c.I;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                Fragment fragment3 = this.f762c;
                fragment3.I.setTag(c.j.b.fragment_container_view_tag, fragment3);
                Fragment fragment4 = this.f762c;
                if (fragment4.A) {
                    fragment4.I.setVisibility(8);
                }
                this.f762c.F1();
                m mVar = this.a;
                Fragment fragment5 = this.f762c;
                mVar.m(fragment5, fragment5.I, fragment5.f649c, false);
                this.f762c.f648b = 2;
            }
        }
    }

    Fragment k() {
        return this.f762c;
    }

    void m() {
        if (this.f763d) {
            if (n.E0(2)) {
                String str = "Ignoring re-entrant call to moveToExpectedState() for " + k();
                return;
            }
            return;
        }
        try {
            this.f763d = true;
            while (true) {
                int iD = d();
                if (iD == this.f762c.f648b) {
                    if (n.P && this.f762c.N) {
                        if (this.f762c.I != null && this.f762c.H != null) {
                            c0 c0VarN = c0.n(this.f762c.H, this.f762c.X());
                            if (this.f762c.A) {
                                c0VarN.c(this);
                            } else {
                                c0VarN.e(this);
                            }
                        }
                        if (this.f762c.t != null) {
                            this.f762c.t.C0(this.f762c);
                        }
                        this.f762c.N = false;
                        this.f762c.R0(this.f762c.A);
                    }
                    return;
                }
                if (iD <= this.f762c.f648b) {
                    switch (this.f762c.f648b - 1) {
                        case ImageHeaderParser.UNKNOWN_ORIENTATION /* -1 */:
                            i();
                            break;
                        case 0:
                            g();
                            break;
                        case 1:
                            h();
                            this.f762c.f648b = 1;
                            break;
                        case 2:
                            this.f762c.p = false;
                            this.f762c.f648b = 2;
                            break;
                        case 3:
                            if (n.E0(3)) {
                                String str2 = "movefrom ACTIVITY_CREATED: " + this.f762c;
                            }
                            if (this.f762c.I != null && this.f762c.f650d == null) {
                                s();
                            }
                            if (this.f762c.I != null && this.f762c.H != null) {
                                c0.n(this.f762c.H, this.f762c.X()).d(this);
                            }
                            this.f762c.f648b = 3;
                            break;
                        case 4:
                            v();
                            break;
                        case 5:
                            this.f762c.f648b = 5;
                            break;
                        case 6:
                            n();
                            break;
                    }
                } else {
                    switch (this.f762c.f648b + 1) {
                        case 0:
                            c();
                            break;
                        case 1:
                            e();
                            break;
                        case 2:
                            j();
                            f();
                            break;
                        case 3:
                            a();
                            break;
                        case 4:
                            if (this.f762c.I != null && this.f762c.H != null) {
                                c0.n(this.f762c.H, this.f762c.X()).b(c0.e.c.b(this.f762c.I.getVisibility()), this);
                            }
                            this.f762c.f648b = 4;
                            break;
                        case 5:
                            u();
                            break;
                        case 6:
                            this.f762c.f648b = 6;
                            break;
                        case 7:
                            p();
                            break;
                    }
                }
            }
        } finally {
            this.f763d = false;
        }
    }

    void n() {
        if (n.E0(3)) {
            String str = "movefrom RESUMED: " + this.f762c;
        }
        this.f762c.x1();
        this.a.f(this.f762c, false);
    }

    void o(ClassLoader classLoader) {
        Bundle bundle = this.f762c.f649c;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        Fragment fragment = this.f762c;
        fragment.f650d = fragment.f649c.getSparseParcelableArray("android:view_state");
        Fragment fragment2 = this.f762c;
        fragment2.e = fragment2.f649c.getBundle("android:view_registry_state");
        Fragment fragment3 = this.f762c;
        fragment3.j = fragment3.f649c.getString("android:target_state");
        Fragment fragment4 = this.f762c;
        if (fragment4.j != null) {
            fragment4.k = fragment4.f649c.getInt("android:target_req_state", 0);
        }
        Fragment fragment5 = this.f762c;
        Boolean bool = fragment5.f;
        if (bool != null) {
            fragment5.K = bool.booleanValue();
            this.f762c.f = null;
        } else {
            fragment5.K = fragment5.f649c.getBoolean("android:user_visible_hint", true);
        }
        Fragment fragment6 = this.f762c;
        if (fragment6.K) {
            return;
        }
        fragment6.J = true;
    }

    void p() {
        if (n.E0(3)) {
            String str = "moveto RESUMED: " + this.f762c;
        }
        View viewR = this.f762c.R();
        if (viewR != null && l(viewR)) {
            boolean zRequestFocus = viewR.requestFocus();
            if (n.E0(2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("requestFocus: Restoring focused view ");
                sb.append(viewR);
                sb.append(" ");
                sb.append(zRequestFocus ? "succeeded" : "failed");
                sb.append(" on Fragment ");
                sb.append(this.f762c);
                sb.append(" resulting in focused view ");
                sb.append(this.f762c.I.findFocus());
                sb.toString();
            }
        }
        this.f762c.T1(null);
        this.f762c.B1();
        this.a.i(this.f762c, false);
        Fragment fragment = this.f762c;
        fragment.f649c = null;
        fragment.f650d = null;
        fragment.e = null;
    }

    t r() {
        t tVar = new t(this.f762c);
        if (this.f762c.f648b <= -1 || tVar.n != null) {
            tVar.n = this.f762c.f649c;
        } else {
            Bundle bundleQ = q();
            tVar.n = bundleQ;
            if (this.f762c.j != null) {
                if (bundleQ == null) {
                    tVar.n = new Bundle();
                }
                tVar.n.putString("android:target_state", this.f762c.j);
                int i = this.f762c.k;
                if (i != 0) {
                    tVar.n.putInt("android:target_req_state", i);
                }
            }
        }
        return tVar;
    }

    void s() {
        if (this.f762c.I == null) {
            return;
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        this.f762c.I.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            this.f762c.f650d = sparseArray;
        }
        Bundle bundle = new Bundle();
        this.f762c.T.e(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        this.f762c.e = bundle;
    }

    void t(int i) {
        this.e = i;
    }

    void u() {
        if (n.E0(3)) {
            String str = "moveto STARTED: " + this.f762c;
        }
        this.f762c.D1();
        this.a.k(this.f762c, false);
    }

    void v() {
        if (n.E0(3)) {
            String str = "movefrom STARTED: " + this.f762c;
        }
        this.f762c.E1();
        this.a.l(this.f762c, false);
    }

    u(m mVar, v vVar, ClassLoader classLoader, j jVar, t tVar) {
        this.a = mVar;
        this.f761b = vVar;
        this.f762c = jVar.a(classLoader, tVar.f758b);
        Bundle bundle = tVar.k;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
        }
        this.f762c.S1(tVar.k);
        Fragment fragment = this.f762c;
        fragment.g = tVar.f759c;
        fragment.o = tVar.f760d;
        fragment.q = true;
        fragment.x = tVar.e;
        fragment.y = tVar.f;
        fragment.z = tVar.g;
        fragment.C = tVar.h;
        fragment.n = tVar.i;
        fragment.B = tVar.j;
        fragment.A = tVar.l;
        fragment.R = f.c.values()[tVar.m];
        Bundle bundle2 = tVar.n;
        if (bundle2 != null) {
            this.f762c.f649c = bundle2;
        } else {
            this.f762c.f649c = new Bundle();
        }
        if (n.E0(2)) {
            String str = "Instantiated fragment " + this.f762c;
        }
    }

    u(m mVar, v vVar, Fragment fragment, t tVar) {
        this.a = mVar;
        this.f761b = vVar;
        this.f762c = fragment;
        fragment.f650d = null;
        fragment.e = null;
        fragment.s = 0;
        fragment.p = false;
        fragment.m = false;
        Fragment fragment2 = fragment.i;
        fragment.j = fragment2 != null ? fragment2.g : null;
        Fragment fragment3 = this.f762c;
        fragment3.i = null;
        Bundle bundle = tVar.n;
        if (bundle != null) {
            fragment3.f649c = bundle;
        } else {
            fragment3.f649c = new Bundle();
        }
    }
}
