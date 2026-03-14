package androidx.fragment.app;

import android.animation.Animator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.activity.result.ActivityResultRegistry;
import androidx.core.view.LayoutInflaterCompat;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.f;
import androidx.savedstate.SavedStateRegistry;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class Fragment implements ComponentCallbacks, View.OnCreateContextMenuListener, androidx.lifecycle.j, androidx.lifecycle.y, androidx.savedstate.c {
    static final Object Z = new Object();
    boolean A;
    boolean B;
    boolean C;
    boolean D;
    boolean E;
    private boolean G;
    ViewGroup H;
    View I;
    boolean J;
    h L;
    boolean M;
    boolean N;
    float O;
    LayoutInflater P;
    boolean Q;
    androidx.lifecycle.k S;
    a0 T;
    androidx.savedstate.b V;
    private int W;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Bundle f649c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    SparseArray<Parcelable> f650d;
    Bundle e;
    Boolean f;
    Bundle h;
    Fragment i;
    int k;
    boolean m;
    boolean n;
    boolean o;
    boolean p;
    boolean q;
    boolean r;
    int s;
    n t;
    androidx.fragment.app.k<?> u;
    Fragment w;
    int x;
    int y;
    String z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f648b = -1;
    String g = UUID.randomUUID().toString();
    String j = null;
    private Boolean l = null;
    n v = new o();
    boolean F = true;
    boolean K = true;
    f.c R = f.c.RESUMED;
    androidx.lifecycle.o<androidx.lifecycle.j> U = new androidx.lifecycle.o<>();
    private final AtomicInteger X = new AtomicInteger();
    private final ArrayList<j> Y = new ArrayList<>();

    class a implements Runnable {
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Fragment.this.w(false);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ c0 f652b;

        c(Fragment fragment, c0 c0Var) {
            this.f652b = c0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f652b.g();
        }
    }

    class d extends androidx.fragment.app.g {
        d() {
        }

        @Override // androidx.fragment.app.g
        public View c(int i) {
            View view = Fragment.this.I;
            if (view != null) {
                return view.findViewById(i);
            }
            throw new IllegalStateException("Fragment " + Fragment.this + " does not have a view");
        }

        @Override // androidx.fragment.app.g
        public boolean d() {
            return Fragment.this.I != null;
        }
    }

    class e implements c.b.a.c.a<Void, ActivityResultRegistry> {
        e() {
        }

        @Override // c.b.a.c.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public ActivityResultRegistry a(Void r3) {
            Fragment fragment = Fragment.this;
            Object obj = fragment.u;
            return obj instanceof androidx.activity.result.d ? ((androidx.activity.result.d) obj).getActivityResultRegistry() : fragment.J1().getActivityResultRegistry();
        }
    }

    class f extends j {
        final /* synthetic */ c.b.a.c.a a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AtomicReference f653b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ androidx.activity.result.f.a f654c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ androidx.activity.result.b f655d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(c.b.a.c.a aVar, AtomicReference atomicReference, androidx.activity.result.f.a aVar2, androidx.activity.result.b bVar) {
            super(null);
            this.a = aVar;
            this.f653b = atomicReference;
            this.f654c = aVar2;
            this.f655d = bVar;
        }

        @Override // androidx.fragment.app.Fragment.j
        void a() {
            String strC = Fragment.this.C();
            this.f653b.set(((ActivityResultRegistry) this.a.a(null)).j(strC, Fragment.this, this.f654c, this.f655d));
        }
    }

    /* JADX INFO: Add missing generic type declarations: [I] */
    class g<I> extends androidx.activity.result.c<I> {
        final /* synthetic */ AtomicReference a;

        g(Fragment fragment, AtomicReference atomicReference, androidx.activity.result.f.a aVar) {
            this.a = atomicReference;
        }

        @Override // androidx.activity.result.c
        public void b(I i, androidx.core.app.b bVar) {
            androidx.activity.result.c cVar = (androidx.activity.result.c) this.a.get();
            if (cVar == null) {
                throw new IllegalStateException("Operation cannot be started before fragment is in created state");
            }
            cVar.b(i, bVar);
        }

        @Override // androidx.activity.result.c
        public void c() {
            androidx.activity.result.c cVar = (androidx.activity.result.c) this.a.getAndSet(null);
            if (cVar != null) {
                cVar.c();
            }
        }
    }

    static class h {
        View a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Animator f656b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f657c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f658d;
        int e;
        int f;
        int g;
        int h;
        ArrayList<String> i;
        ArrayList<String> j;
        Object k = null;
        Object l;
        Object m;
        Object n;
        Object o;
        Object p;
        Boolean q;
        Boolean r;
        androidx.core.app.h s;
        androidx.core.app.h t;
        float u;
        View v;
        boolean w;
        k x;
        boolean y;

        h() {
            Object obj = Fragment.Z;
            this.l = obj;
            this.m = null;
            this.n = obj;
            this.o = null;
            this.p = obj;
            this.s = null;
            this.t = null;
            this.u = 1.0f;
            this.v = null;
        }
    }

    public static class i extends RuntimeException {
        public i(String str, Exception exc) {
            super(str, exc);
        }
    }

    private static abstract class j {
        private j() {
        }

        abstract void a();

        /* synthetic */ j(a aVar) {
            this();
        }
    }

    interface k {
        void a();

        void b();
    }

    public Fragment() {
        n0();
    }

    private h A() {
        if (this.L == null) {
            this.L = new h();
        }
        return this.L;
    }

    private <I, O> androidx.activity.result.c<I> G1(androidx.activity.result.f.a<I, O> aVar, c.b.a.c.a<Void, ActivityResultRegistry> aVar2, androidx.activity.result.b<O> bVar) {
        if (this.f648b <= 1) {
            AtomicReference atomicReference = new AtomicReference();
            I1(new f(aVar2, atomicReference, aVar, bVar));
            return new g(this, atomicReference, aVar);
        }
        throw new IllegalStateException("Fragment " + this + " is attempting to registerForActivityResult after being created. Fragments must call registerForActivityResult() before they are created (i.e. initialization, onAttach(), or onCreate()).");
    }

    private void I1(j jVar) {
        if (this.f648b >= 0) {
            jVar.a();
        } else {
            this.Y.add(jVar);
        }
    }

    private void N1() {
        if (n.E0(3)) {
            String str = "moveto RESTORE_VIEW_STATE: " + this;
        }
        if (this.I != null) {
            O1(this.f649c);
        }
        this.f649c = null;
    }

    private int U() {
        f.c cVar = this.R;
        return (cVar == f.c.INITIALIZED || this.w == null) ? this.R.ordinal() : Math.min(cVar.ordinal(), this.w.U());
    }

    private void n0() {
        this.S = new androidx.lifecycle.k(this);
        this.V = androidx.savedstate.b.a(this);
    }

    @Deprecated
    public static Fragment p0(Context context, String str, Bundle bundle) {
        try {
            Fragment fragmentNewInstance = androidx.fragment.app.j.d(context.getClassLoader(), str).getConstructor(new Class[0]).newInstance(new Object[0]);
            if (bundle != null) {
                bundle.setClassLoader(fragmentNewInstance.getClass().getClassLoader());
                fragmentNewInstance.S1(bundle);
            }
            return fragmentNewInstance;
        } catch (IllegalAccessException e2) {
            throw new i("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e2);
        } catch (InstantiationException e3) {
            throw new i("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e3);
        } catch (NoSuchMethodException e4) {
            throw new i("Unable to instantiate fragment " + str + ": could not find Fragment constructor", e4);
        } catch (InvocationTargetException e5) {
            throw new i("Unable to instantiate fragment " + str + ": calling Fragment constructor caused an exception", e5);
        }
    }

    void A0() {
        this.v.R0();
    }

    void A1() {
        boolean zH0 = this.t.H0(this);
        Boolean bool = this.l;
        if (bool == null || bool.booleanValue() != zH0) {
            this.l = Boolean.valueOf(zH0);
            a1(zH0);
            this.v.P();
        }
    }

    Fragment B(String str) {
        return str.equals(this.g) ? this : this.v.i0(str);
    }

    @Deprecated
    public void B0(Bundle bundle) {
        this.G = true;
    }

    void B1() {
        this.v.R0();
        this.v.a0(true);
        this.f648b = 7;
        this.G = false;
        c1();
        if (this.G) {
            this.S.h(f.b.ON_RESUME);
            if (this.I != null) {
                this.T.a(f.b.ON_RESUME);
            }
            this.v.Q();
            return;
        }
        throw new e0("Fragment " + this + " did not call through to super.onResume()");
    }

    String C() {
        return "fragment_" + this.g + "_rq#" + this.X.getAndIncrement();
    }

    @Deprecated
    public void C0(int i2, int i3, Intent intent) {
        if (n.E0(2)) {
            String str = "Fragment " + this + " received the following in onActivityResult(): requestCode: " + i2 + " resultCode: " + i3 + " data: " + intent;
        }
    }

    void C1(Bundle bundle) {
        d1(bundle);
        this.V.d(bundle);
        Parcelable parcelableF1 = this.v.f1();
        if (parcelableF1 != null) {
            bundle.putParcelable("android:support:fragments", parcelableF1);
        }
    }

    public final androidx.fragment.app.e D() {
        androidx.fragment.app.k<?> kVar = this.u;
        if (kVar == null) {
            return null;
        }
        return (androidx.fragment.app.e) kVar.e();
    }

    @Deprecated
    public void D0(Activity activity) {
        this.G = true;
    }

    void D1() {
        this.v.R0();
        this.v.a0(true);
        this.f648b = 5;
        this.G = false;
        e1();
        if (this.G) {
            this.S.h(f.b.ON_START);
            if (this.I != null) {
                this.T.a(f.b.ON_START);
            }
            this.v.R();
            return;
        }
        throw new e0("Fragment " + this + " did not call through to super.onStart()");
    }

    public boolean E() {
        Boolean bool;
        h hVar = this.L;
        if (hVar == null || (bool = hVar.r) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public void E0(Context context) {
        this.G = true;
        androidx.fragment.app.k<?> kVar = this.u;
        Activity activityE = kVar == null ? null : kVar.e();
        if (activityE != null) {
            this.G = false;
            D0(activityE);
        }
    }

    void E1() {
        this.v.T();
        if (this.I != null) {
            this.T.a(f.b.ON_STOP);
        }
        this.S.h(f.b.ON_STOP);
        this.f648b = 4;
        this.G = false;
        f1();
        if (this.G) {
            return;
        }
        throw new e0("Fragment " + this + " did not call through to super.onStop()");
    }

    public boolean F() {
        Boolean bool;
        h hVar = this.L;
        if (hVar == null || (bool = hVar.q) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    @Deprecated
    public void F0(Fragment fragment) {
    }

    void F1() {
        g1(this.I, this.f649c);
        this.v.U();
    }

    View G() {
        h hVar = this.L;
        if (hVar == null) {
            return null;
        }
        return hVar.a;
    }

    public boolean G0(MenuItem menuItem) {
        return false;
    }

    Animator H() {
        h hVar = this.L;
        if (hVar == null) {
            return null;
        }
        return hVar.f656b;
    }

    public void H0(Bundle bundle) {
        this.G = true;
        M1(bundle);
        if (this.v.I0(1)) {
            return;
        }
        this.v.C();
    }

    public final <I, O> androidx.activity.result.c<I> H1(androidx.activity.result.f.a<I, O> aVar, androidx.activity.result.b<O> bVar) {
        return G1(aVar, new e(), bVar);
    }

    public final Bundle I() {
        return this.h;
    }

    public Animation I0(int i2, boolean z, int i3) {
        return null;
    }

    public final n J() {
        if (this.u != null) {
            return this.v;
        }
        throw new IllegalStateException("Fragment " + this + " has not been attached yet.");
    }

    public Animator J0(int i2, boolean z, int i3) {
        return null;
    }

    public final androidx.fragment.app.e J1() {
        androidx.fragment.app.e eVarD = D();
        if (eVarD != null) {
            return eVarD;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to an activity.");
    }

    public Context K() {
        androidx.fragment.app.k<?> kVar = this.u;
        if (kVar == null) {
            return null;
        }
        return kVar.f();
    }

    public void K0(Menu menu, MenuInflater menuInflater) {
    }

    public final Context K1() {
        Context contextK = K();
        if (contextK != null) {
            return contextK;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to a context.");
    }

    int L() {
        h hVar = this.L;
        if (hVar == null) {
            return 0;
        }
        return hVar.f658d;
    }

    public View L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i2 = this.W;
        if (i2 != 0) {
            return layoutInflater.inflate(i2, viewGroup, false);
        }
        return null;
    }

    public final View L1() {
        View viewL0 = l0();
        if (viewL0 != null) {
            return viewL0;
        }
        throw new IllegalStateException("Fragment " + this + " did not return a View from onCreateView() or this was called before onCreateView().");
    }

    public Object M() {
        h hVar = this.L;
        if (hVar == null) {
            return null;
        }
        return hVar.k;
    }

    public void M0() {
        this.G = true;
    }

    void M1(Bundle bundle) {
        Parcelable parcelable;
        if (bundle == null || (parcelable = bundle.getParcelable("android:support:fragments")) == null) {
            return;
        }
        this.v.d1(parcelable);
        this.v.C();
    }

    androidx.core.app.h N() {
        h hVar = this.L;
        if (hVar == null) {
            return null;
        }
        return hVar.s;
    }

    public void N0() {
    }

    int O() {
        h hVar = this.L;
        if (hVar == null) {
            return 0;
        }
        return hVar.e;
    }

    public void O0() {
        this.G = true;
    }

    final void O1(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = this.f650d;
        if (sparseArray != null) {
            this.I.restoreHierarchyState(sparseArray);
            this.f650d = null;
        }
        if (this.I != null) {
            this.T.d(this.e);
            this.e = null;
        }
        this.G = false;
        h1(bundle);
        if (this.G) {
            if (this.I != null) {
                this.T.a(f.b.ON_CREATE);
            }
        } else {
            throw new e0("Fragment " + this + " did not call through to super.onViewStateRestored()");
        }
    }

    public Object P() {
        h hVar = this.L;
        if (hVar == null) {
            return null;
        }
        return hVar.m;
    }

    public void P0() {
        this.G = true;
    }

    void P1(View view) {
        A().a = view;
    }

    androidx.core.app.h Q() {
        h hVar = this.L;
        if (hVar == null) {
            return null;
        }
        return hVar.t;
    }

    public LayoutInflater Q0(Bundle bundle) {
        return T(bundle);
    }

    void Q1(int i2, int i3, int i4, int i5) {
        if (this.L == null && i2 == 0 && i3 == 0 && i4 == 0 && i5 == 0) {
            return;
        }
        A().f658d = i2;
        A().e = i3;
        A().f = i4;
        A().g = i5;
    }

    View R() {
        h hVar = this.L;
        if (hVar == null) {
            return null;
        }
        return hVar.v;
    }

    public void R0(boolean z) {
    }

    void R1(Animator animator) {
        A().f656b = animator;
    }

    public final Object S() {
        androidx.fragment.app.k<?> kVar = this.u;
        if (kVar == null) {
            return null;
        }
        return kVar.h();
    }

    @Deprecated
    public void S0(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        this.G = true;
    }

    public void S1(Bundle bundle) {
        if (this.t != null && y0()) {
            throw new IllegalStateException("Fragment already added and state has been saved");
        }
        this.h = bundle;
    }

    @Deprecated
    public LayoutInflater T(Bundle bundle) {
        androidx.fragment.app.k<?> kVar = this.u;
        if (kVar == null) {
            throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
        }
        LayoutInflater layoutInflaterI = kVar.i();
        LayoutInflaterCompat.setFactory2(layoutInflaterI, this.v.t0());
        return layoutInflaterI;
    }

    public void T0(Context context, AttributeSet attributeSet, Bundle bundle) {
        this.G = true;
        androidx.fragment.app.k<?> kVar = this.u;
        Activity activityE = kVar == null ? null : kVar.e();
        if (activityE != null) {
            this.G = false;
            S0(activityE, attributeSet, bundle);
        }
    }

    void T1(View view) {
        A().v = view;
    }

    public void U0(boolean z) {
    }

    void U1(boolean z) {
        A().y = z;
    }

    int V() {
        h hVar = this.L;
        if (hVar == null) {
            return 0;
        }
        return hVar.h;
    }

    public boolean V0(MenuItem menuItem) {
        return false;
    }

    void V1(int i2) {
        if (this.L == null && i2 == 0) {
            return;
        }
        A();
        this.L.h = i2;
    }

    public final Fragment W() {
        return this.w;
    }

    public void W0(Menu menu) {
    }

    void W1(k kVar) {
        A();
        k kVar2 = this.L.x;
        if (kVar == kVar2) {
            return;
        }
        if (kVar != null && kVar2 != null) {
            throw new IllegalStateException("Trying to set a replacement startPostponedEnterTransition on " + this);
        }
        h hVar = this.L;
        if (hVar.w) {
            hVar.x = kVar;
        }
        if (kVar != null) {
            kVar.b();
        }
    }

    public final n X() {
        n nVar = this.t;
        if (nVar != null) {
            return nVar;
        }
        throw new IllegalStateException("Fragment " + this + " not associated with a fragment manager.");
    }

    public void X0() {
        this.G = true;
    }

    void X1(boolean z) {
        if (this.L == null) {
            return;
        }
        A().f657c = z;
    }

    boolean Y() {
        h hVar = this.L;
        if (hVar == null) {
            return false;
        }
        return hVar.f657c;
    }

    public void Y0(boolean z) {
    }

    void Y1(float f2) {
        A().u = f2;
    }

    int Z() {
        h hVar = this.L;
        if (hVar == null) {
            return 0;
        }
        return hVar.f;
    }

    public void Z0(Menu menu) {
    }

    void Z1(ArrayList<String> arrayList, ArrayList<String> arrayList2) {
        A();
        h hVar = this.L;
        hVar.i = arrayList;
        hVar.j = arrayList2;
    }

    int a0() {
        h hVar = this.L;
        if (hVar == null) {
            return 0;
        }
        return hVar.g;
    }

    public void a1(boolean z) {
    }

    public void a2(@SuppressLint({"UnknownNullness"}) Intent intent) {
        b2(intent, null);
    }

    float b0() {
        h hVar = this.L;
        if (hVar == null) {
            return 1.0f;
        }
        return hVar.u;
    }

    @Deprecated
    public void b1(int i2, String[] strArr, int[] iArr) {
    }

    public void b2(@SuppressLint({"UnknownNullness"}) Intent intent, Bundle bundle) {
        androidx.fragment.app.k<?> kVar = this.u;
        if (kVar != null) {
            kVar.k(this, intent, -1, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    public Object c0() {
        h hVar = this.L;
        if (hVar == null) {
            return null;
        }
        Object obj = hVar.n;
        return obj == Z ? P() : obj;
    }

    public void c1() {
        this.G = true;
    }

    @Deprecated
    public void c2(@SuppressLint({"UnknownNullness"}) Intent intent, int i2) {
        d2(intent, i2, null);
    }

    public final Resources d0() {
        return K1().getResources();
    }

    public void d1(Bundle bundle) {
    }

    @Deprecated
    public void d2(@SuppressLint({"UnknownNullness"}) Intent intent, int i2, Bundle bundle) {
        if (this.u != null) {
            X().K0(this, intent, i2, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    public Object e0() {
        h hVar = this.L;
        if (hVar == null) {
            return null;
        }
        Object obj = hVar.l;
        return obj == Z ? M() : obj;
    }

    public void e1() {
        this.G = true;
    }

    @Deprecated
    public void e2(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i2, Intent intent, int i3, int i4, int i5, Bundle bundle) {
        if (this.u == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        if (n.E0(2)) {
            String str = "Fragment " + this + " received the following in startIntentSenderForResult() requestCode: " + i2 + " IntentSender: " + intentSender + " fillInIntent: " + intent + " options: " + bundle;
        }
        X().L0(this, intentSender, i2, intent, i3, i4, i5, bundle);
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    public Object f0() {
        h hVar = this.L;
        if (hVar == null) {
            return null;
        }
        return hVar.o;
    }

    public void f1() {
        this.G = true;
    }

    public void f2() {
        if (this.L == null || !A().w) {
            return;
        }
        if (this.u == null) {
            A().w = false;
        } else if (Looper.myLooper() != this.u.g().getLooper()) {
            this.u.g().postAtFrontOfQueue(new b());
        } else {
            w(true);
        }
    }

    public Object g0() {
        h hVar = this.L;
        if (hVar == null) {
            return null;
        }
        Object obj = hVar.p;
        return obj == Z ? f0() : obj;
    }

    public void g1(View view, Bundle bundle) {
    }

    @Override // androidx.lifecycle.j
    public androidx.lifecycle.f getLifecycle() {
        return this.S;
    }

    @Override // androidx.savedstate.c
    public final SavedStateRegistry getSavedStateRegistry() {
        return this.V.b();
    }

    @Override // androidx.lifecycle.y
    public androidx.lifecycle.x getViewModelStore() {
        if (this.t == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (U() != f.c.INITIALIZED.ordinal()) {
            return this.t.z0(this);
        }
        throw new IllegalStateException("Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported");
    }

    ArrayList<String> h0() {
        ArrayList<String> arrayList;
        h hVar = this.L;
        return (hVar == null || (arrayList = hVar.i) == null) ? new ArrayList<>() : arrayList;
    }

    public void h1(Bundle bundle) {
        this.G = true;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    ArrayList<String> i0() {
        ArrayList<String> arrayList;
        h hVar = this.L;
        return (hVar == null || (arrayList = hVar.j) == null) ? new ArrayList<>() : arrayList;
    }

    void i1(Bundle bundle) {
        this.v.R0();
        this.f648b = 3;
        this.G = false;
        B0(bundle);
        if (this.G) {
            N1();
            this.v.y();
        } else {
            throw new e0("Fragment " + this + " did not call through to super.onActivityCreated()");
        }
    }

    public final String j0(int i2) {
        return d0().getString(i2);
    }

    void j1() {
        Iterator<j> it = this.Y.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
        this.Y.clear();
        this.v.j(this.u, y(), this);
        this.f648b = 0;
        this.G = false;
        E0(this.u.f());
        if (this.G) {
            this.t.I(this);
            this.v.z();
        } else {
            throw new e0("Fragment " + this + " did not call through to super.onAttach()");
        }
    }

    @Deprecated
    public final Fragment k0() {
        String str;
        Fragment fragment = this.i;
        if (fragment != null) {
            return fragment;
        }
        n nVar = this.t;
        if (nVar == null || (str = this.j) == null) {
            return null;
        }
        return nVar.f0(str);
    }

    void k1(Configuration configuration) {
        onConfigurationChanged(configuration);
        this.v.A(configuration);
    }

    public View l0() {
        return this.I;
    }

    boolean l1(MenuItem menuItem) {
        if (this.A) {
            return false;
        }
        if (G0(menuItem)) {
            return true;
        }
        return this.v.B(menuItem);
    }

    public LiveData<androidx.lifecycle.j> m0() {
        return this.U;
    }

    void m1(Bundle bundle) {
        this.v.R0();
        this.f648b = 1;
        this.G = false;
        if (Build.VERSION.SDK_INT >= 19) {
            this.S.a(new androidx.lifecycle.h() { // from class: androidx.fragment.app.Fragment.5
                @Override // androidx.lifecycle.h
                public void d(androidx.lifecycle.j jVar, f.b bVar) {
                    View view;
                    if (bVar != f.b.ON_STOP || (view = Fragment.this.I) == null) {
                        return;
                    }
                    view.cancelPendingInputEvents();
                }
            });
        }
        this.V.c(bundle);
        H0(bundle);
        this.Q = true;
        if (this.G) {
            this.S.h(f.b.ON_CREATE);
            return;
        }
        throw new e0("Fragment " + this + " did not call through to super.onCreate()");
    }

    boolean n1(Menu menu, MenuInflater menuInflater) {
        boolean z = false;
        if (this.A) {
            return false;
        }
        if (this.E && this.F) {
            z = true;
            K0(menu, menuInflater);
        }
        return z | this.v.D(menu, menuInflater);
    }

    void o0() {
        n0();
        this.g = UUID.randomUUID().toString();
        this.m = false;
        this.n = false;
        this.o = false;
        this.p = false;
        this.q = false;
        this.s = 0;
        this.t = null;
        this.v = new o();
        this.u = null;
        this.x = 0;
        this.y = 0;
        this.z = null;
        this.A = false;
        this.B = false;
    }

    void o1(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.v.R0();
        this.r = true;
        this.T = new a0(this, getViewModelStore());
        View viewL0 = L0(layoutInflater, viewGroup, bundle);
        this.I = viewL0;
        if (viewL0 == null) {
            if (this.T.c()) {
                throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
            }
            this.T = null;
        } else {
            this.T.b();
            androidx.lifecycle.z.a(this.I, this.T);
            androidx.lifecycle.a0.a(this.I, this.T);
            androidx.savedstate.d.a(this.I, this.T);
            this.U.k(this.T);
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.G = true;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        J1().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        this.G = true;
    }

    void p1() {
        this.v.E();
        this.S.h(f.b.ON_DESTROY);
        this.f648b = 0;
        this.G = false;
        this.Q = false;
        M0();
        if (this.G) {
            return;
        }
        throw new e0("Fragment " + this + " did not call through to super.onDestroy()");
    }

    public final boolean q0() {
        return this.u != null && this.m;
    }

    void q1() {
        this.v.F();
        if (this.I != null && this.T.getLifecycle().b().a(f.c.CREATED)) {
            this.T.a(f.b.ON_DESTROY);
        }
        this.f648b = 1;
        this.G = false;
        O0();
        if (this.G) {
            c.l.a.a.b(this).c();
            this.r = false;
        } else {
            throw new e0("Fragment " + this + " did not call through to super.onDestroyView()");
        }
    }

    public final boolean r0() {
        return this.A;
    }

    void r1() {
        this.f648b = -1;
        this.G = false;
        P0();
        this.P = null;
        if (this.G) {
            if (this.v.D0()) {
                return;
            }
            this.v.E();
            this.v = new o();
            return;
        }
        throw new e0("Fragment " + this + " did not call through to super.onDetach()");
    }

    boolean s0() {
        h hVar = this.L;
        if (hVar == null) {
            return false;
        }
        return hVar.y;
    }

    LayoutInflater s1(Bundle bundle) {
        LayoutInflater layoutInflaterQ0 = Q0(bundle);
        this.P = layoutInflaterQ0;
        return layoutInflaterQ0;
    }

    final boolean t0() {
        return this.s > 0;
    }

    void t1() {
        onLowMemory();
        this.v.G();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(getClass().getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("}");
        sb.append(" (");
        sb.append(this.g);
        if (this.x != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.x));
        }
        if (this.z != null) {
            sb.append(" tag=");
            sb.append(this.z);
        }
        sb.append(")");
        return sb.toString();
    }

    public final boolean u0() {
        n nVar;
        return this.F && ((nVar = this.t) == null || nVar.G0(this.w));
    }

    void u1(boolean z) {
        U0(z);
        this.v.H(z);
    }

    boolean v0() {
        h hVar = this.L;
        if (hVar == null) {
            return false;
        }
        return hVar.w;
    }

    boolean v1(MenuItem menuItem) {
        if (this.A) {
            return false;
        }
        if (this.E && this.F && V0(menuItem)) {
            return true;
        }
        return this.v.J(menuItem);
    }

    void w(boolean z) {
        ViewGroup viewGroup;
        n nVar;
        h hVar = this.L;
        k kVar = null;
        if (hVar != null) {
            hVar.w = false;
            k kVar2 = hVar.x;
            hVar.x = null;
            kVar = kVar2;
        }
        if (kVar != null) {
            kVar.a();
            return;
        }
        if (!n.P || this.I == null || (viewGroup = this.H) == null || (nVar = this.t) == null) {
            return;
        }
        c0 c0VarN = c0.n(viewGroup, nVar);
        c0VarN.p();
        if (z) {
            this.u.g().post(new c(this, c0VarN));
        } else {
            c0VarN.g();
        }
    }

    public final boolean w0() {
        return this.n;
    }

    void w1(Menu menu) {
        if (this.A) {
            return;
        }
        if (this.E && this.F) {
            W0(menu);
        }
        this.v.K(menu);
    }

    final boolean x0() {
        Fragment fragmentW = W();
        return fragmentW != null && (fragmentW.w0() || fragmentW.x0());
    }

    void x1() {
        this.v.M();
        if (this.I != null) {
            this.T.a(f.b.ON_PAUSE);
        }
        this.S.h(f.b.ON_PAUSE);
        this.f648b = 6;
        this.G = false;
        X0();
        if (this.G) {
            return;
        }
        throw new e0("Fragment " + this + " did not call through to super.onPause()");
    }

    androidx.fragment.app.g y() {
        return new d();
    }

    public final boolean y0() {
        n nVar = this.t;
        if (nVar == null) {
            return false;
        }
        return nVar.J0();
    }

    void y1(boolean z) {
        Y0(z);
        this.v.N(z);
    }

    public void z(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.x));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.y));
        printWriter.print(" mTag=");
        printWriter.println(this.z);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.f648b);
        printWriter.print(" mWho=");
        printWriter.print(this.g);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.s);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.m);
        printWriter.print(" mRemoving=");
        printWriter.print(this.n);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.o);
        printWriter.print(" mInLayout=");
        printWriter.println(this.p);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.A);
        printWriter.print(" mDetached=");
        printWriter.print(this.B);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.F);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.E);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.C);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.K);
        if (this.t != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.t);
        }
        if (this.u != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.u);
        }
        if (this.w != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.w);
        }
        if (this.h != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.h);
        }
        if (this.f649c != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.f649c);
        }
        if (this.f650d != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.f650d);
        }
        if (this.e != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewRegistryState=");
            printWriter.println(this.e);
        }
        Fragment fragmentK0 = k0();
        if (fragmentK0 != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(fragmentK0);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.k);
        }
        printWriter.print(str);
        printWriter.print("mPopDirection=");
        printWriter.println(Y());
        if (L() != 0) {
            printWriter.print(str);
            printWriter.print("getEnterAnim=");
            printWriter.println(L());
        }
        if (O() != 0) {
            printWriter.print(str);
            printWriter.print("getExitAnim=");
            printWriter.println(O());
        }
        if (Z() != 0) {
            printWriter.print(str);
            printWriter.print("getPopEnterAnim=");
            printWriter.println(Z());
        }
        if (a0() != 0) {
            printWriter.print(str);
            printWriter.print("getPopExitAnim=");
            printWriter.println(a0());
        }
        if (this.H != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.H);
        }
        if (this.I != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.I);
        }
        if (G() != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(G());
        }
        if (K() != null) {
            c.l.a.a.b(this).a(str, fileDescriptor, printWriter, strArr);
        }
        printWriter.print(str);
        printWriter.println("Child " + this.v + ":");
        this.v.W(str + "  ", fileDescriptor, printWriter, strArr);
    }

    public final boolean z0() {
        View view;
        return (!q0() || r0() || (view = this.I) == null || view.getWindowToken() == null || this.I.getVisibility() != 0) ? false : true;
    }

    boolean z1(Menu menu) {
        boolean z = false;
        if (this.A) {
            return false;
        }
        if (this.E && this.F) {
            z = true;
            Z0(menu);
        }
        return z | this.v.O(menu);
    }
}
