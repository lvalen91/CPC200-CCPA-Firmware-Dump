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
import androidx.activity.result.AbstractC0063c;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.InterfaceC0062b;
import androidx.activity.result.InterfaceC0064d;
import androidx.activity.result.p002f.AbstractC0066a;
import androidx.core.app.AbstractC0238h;
import androidx.core.app.C0232b;
import androidx.core.view.LayoutInflaterCompat;
import androidx.lifecycle.AbstractC0392f;
import androidx.lifecycle.C0385a0;
import androidx.lifecycle.C0397k;
import androidx.lifecycle.C0401o;
import androidx.lifecycle.C0410x;
import androidx.lifecycle.C0412z;
import androidx.lifecycle.InterfaceC0394h;
import androidx.lifecycle.InterfaceC0396j;
import androidx.lifecycle.InterfaceC0411y;
import androidx.lifecycle.LiveData;
import androidx.savedstate.C0482b;
import androidx.savedstate.C0484d;
import androidx.savedstate.InterfaceC0483c;
import androidx.savedstate.SavedStateRegistry;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p016c.p025b.p026a.p029c.InterfaceC0525a;
import p016c.p059l.p060a.AbstractC0641a;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class Fragment implements ComponentCallbacks, View.OnCreateContextMenuListener, InterfaceC0396j, InterfaceC0411y, InterfaceC0483c {

    /* JADX INFO: renamed from: Z */
    static final Object f2045Z = new Object();

    /* JADX INFO: renamed from: A */
    boolean f2046A;

    /* JADX INFO: renamed from: B */
    boolean f2047B;

    /* JADX INFO: renamed from: C */
    boolean f2048C;

    /* JADX INFO: renamed from: D */
    boolean f2049D;

    /* JADX INFO: renamed from: E */
    boolean f2050E;

    /* JADX INFO: renamed from: G */
    private boolean f2052G;

    /* JADX INFO: renamed from: H */
    ViewGroup f2053H;

    /* JADX INFO: renamed from: I */
    View f2054I;

    /* JADX INFO: renamed from: J */
    boolean f2055J;

    /* JADX INFO: renamed from: L */
    C0344h f2057L;

    /* JADX INFO: renamed from: M */
    boolean f2058M;

    /* JADX INFO: renamed from: N */
    boolean f2059N;

    /* JADX INFO: renamed from: O */
    float f2060O;

    /* JADX INFO: renamed from: P */
    LayoutInflater f2061P;

    /* JADX INFO: renamed from: Q */
    boolean f2062Q;

    /* JADX INFO: renamed from: S */
    C0397k f2064S;

    /* JADX INFO: renamed from: T */
    C0349a0 f2065T;

    /* JADX INFO: renamed from: V */
    C0482b f2067V;

    /* JADX INFO: renamed from: W */
    private int f2068W;

    /* JADX INFO: renamed from: c */
    Bundle f2072c;

    /* JADX INFO: renamed from: d */
    SparseArray<Parcelable> f2073d;

    /* JADX INFO: renamed from: e */
    Bundle f2074e;

    /* JADX INFO: renamed from: f */
    Boolean f2075f;

    /* JADX INFO: renamed from: h */
    Bundle f2077h;

    /* JADX INFO: renamed from: i */
    Fragment f2078i;

    /* JADX INFO: renamed from: k */
    int f2080k;

    /* JADX INFO: renamed from: m */
    boolean f2082m;

    /* JADX INFO: renamed from: n */
    boolean f2083n;

    /* JADX INFO: renamed from: o */
    boolean f2084o;

    /* JADX INFO: renamed from: p */
    boolean f2085p;

    /* JADX INFO: renamed from: q */
    boolean f2086q;

    /* JADX INFO: renamed from: r */
    boolean f2087r;

    /* JADX INFO: renamed from: s */
    int f2088s;

    /* JADX INFO: renamed from: t */
    AbstractC0366n f2089t;

    /* JADX INFO: renamed from: u */
    AbstractC0363k<?> f2090u;

    /* JADX INFO: renamed from: w */
    Fragment f2092w;

    /* JADX INFO: renamed from: x */
    int f2093x;

    /* JADX INFO: renamed from: y */
    int f2094y;

    /* JADX INFO: renamed from: z */
    String f2095z;

    /* JADX INFO: renamed from: b */
    int f2071b = -1;

    /* JADX INFO: renamed from: g */
    String f2076g = UUID.randomUUID().toString();

    /* JADX INFO: renamed from: j */
    String f2079j = null;

    /* JADX INFO: renamed from: l */
    private Boolean f2081l = null;

    /* JADX INFO: renamed from: v */
    AbstractC0366n f2091v = new C0367o();

    /* JADX INFO: renamed from: F */
    boolean f2051F = true;

    /* JADX INFO: renamed from: K */
    boolean f2056K = true;

    /* JADX INFO: renamed from: R */
    AbstractC0392f.c f2063R = AbstractC0392f.c.RESUMED;

    /* JADX INFO: renamed from: U */
    C0401o<InterfaceC0396j> f2066U = new C0401o<>();

    /* JADX INFO: renamed from: X */
    private final AtomicInteger f2069X = new AtomicInteger();

    /* JADX INFO: renamed from: Y */
    private final ArrayList<AbstractC0346j> f2070Y = new ArrayList<>();

    /* JADX INFO: renamed from: androidx.fragment.app.Fragment$a */
    class RunnableC0337a implements Runnable {
    }

    /* JADX INFO: renamed from: androidx.fragment.app.Fragment$b */
    class RunnableC0338b implements Runnable {
        RunnableC0338b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Fragment.this.m2498w(false);
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.Fragment$c */
    class RunnableC0339c implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ AbstractC0353c0 f2098b;

        RunnableC0339c(Fragment fragment, AbstractC0353c0 abstractC0353c0) {
            this.f2098b = abstractC0353c0;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2098b.m2579g();
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.Fragment$d */
    class C0340d extends AbstractC0359g {
        C0340d() {
        }

        @Override // androidx.fragment.app.AbstractC0359g
        /* JADX INFO: renamed from: c */
        public View mo2509c(int i) {
            View view = Fragment.this.f2054I;
            if (view != null) {
                return view.findViewById(i);
            }
            throw new IllegalStateException("Fragment " + Fragment.this + " does not have a view");
        }

        @Override // androidx.fragment.app.AbstractC0359g
        /* JADX INFO: renamed from: d */
        public boolean mo2510d() {
            return Fragment.this.f2054I != null;
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.Fragment$e */
    class C0341e implements InterfaceC0525a<Void, ActivityResultRegistry> {
        C0341e() {
        }

        @Override // p016c.p025b.p026a.p029c.InterfaceC0525a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public ActivityResultRegistry mo2511a(Void r3) {
            Fragment fragment = Fragment.this;
            Object obj = fragment.f2090u;
            return obj instanceof InterfaceC0064d ? ((InterfaceC0064d) obj).getActivityResultRegistry() : fragment.m2403J1().getActivityResultRegistry();
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.Fragment$f */
    class C0342f extends AbstractC0346j {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ InterfaceC0525a f2101a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ AtomicReference f2102b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ AbstractC0066a f2103c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ InterfaceC0062b f2104d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0342f(InterfaceC0525a interfaceC0525a, AtomicReference atomicReference, AbstractC0066a abstractC0066a, InterfaceC0062b interfaceC0062b) {
            super(null);
            this.f2101a = interfaceC0525a;
            this.f2102b = atomicReference;
            this.f2103c = abstractC0066a;
            this.f2104d = interfaceC0062b;
        }

        @Override // androidx.fragment.app.Fragment.AbstractC0346j
        /* JADX INFO: renamed from: a */
        void mo2513a() {
            String strM2382C = Fragment.this.m2382C();
            this.f2102b.set(((ActivityResultRegistry) this.f2101a.mo2511a(null)).m330j(strM2382C, Fragment.this, this.f2103c, this.f2104d));
        }
    }

    /* JADX INFO: Add missing generic type declarations: [I] */
    /* JADX INFO: renamed from: androidx.fragment.app.Fragment$g */
    class C0343g<I> extends AbstractC0063c<I> {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ AtomicReference f2106a;

        C0343g(Fragment fragment, AtomicReference atomicReference, AbstractC0066a abstractC0066a) {
            this.f2106a = atomicReference;
        }

        @Override // androidx.activity.result.AbstractC0063c
        /* JADX INFO: renamed from: b */
        public void mo332b(I i, C0232b c0232b) {
            AbstractC0063c abstractC0063c = (AbstractC0063c) this.f2106a.get();
            if (abstractC0063c == null) {
                throw new IllegalStateException("Operation cannot be started before fragment is in created state");
            }
            abstractC0063c.mo332b(i, c0232b);
        }

        @Override // androidx.activity.result.AbstractC0063c
        /* JADX INFO: renamed from: c */
        public void mo333c() {
            AbstractC0063c abstractC0063c = (AbstractC0063c) this.f2106a.getAndSet(null);
            if (abstractC0063c != null) {
                abstractC0063c.mo333c();
            }
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.Fragment$h */
    static class C0344h {

        /* JADX INFO: renamed from: a */
        View f2107a;

        /* JADX INFO: renamed from: b */
        Animator f2108b;

        /* JADX INFO: renamed from: c */
        boolean f2109c;

        /* JADX INFO: renamed from: d */
        int f2110d;

        /* JADX INFO: renamed from: e */
        int f2111e;

        /* JADX INFO: renamed from: f */
        int f2112f;

        /* JADX INFO: renamed from: g */
        int f2113g;

        /* JADX INFO: renamed from: h */
        int f2114h;

        /* JADX INFO: renamed from: i */
        ArrayList<String> f2115i;

        /* JADX INFO: renamed from: j */
        ArrayList<String> f2116j;

        /* JADX INFO: renamed from: k */
        Object f2117k = null;

        /* JADX INFO: renamed from: l */
        Object f2118l;

        /* JADX INFO: renamed from: m */
        Object f2119m;

        /* JADX INFO: renamed from: n */
        Object f2120n;

        /* JADX INFO: renamed from: o */
        Object f2121o;

        /* JADX INFO: renamed from: p */
        Object f2122p;

        /* JADX INFO: renamed from: q */
        Boolean f2123q;

        /* JADX INFO: renamed from: r */
        Boolean f2124r;

        /* JADX INFO: renamed from: s */
        AbstractC0238h f2125s;

        /* JADX INFO: renamed from: t */
        AbstractC0238h f2126t;

        /* JADX INFO: renamed from: u */
        float f2127u;

        /* JADX INFO: renamed from: v */
        View f2128v;

        /* JADX INFO: renamed from: w */
        boolean f2129w;

        /* JADX INFO: renamed from: x */
        InterfaceC0347k f2130x;

        /* JADX INFO: renamed from: y */
        boolean f2131y;

        C0344h() {
            Object obj = Fragment.f2045Z;
            this.f2118l = obj;
            this.f2119m = null;
            this.f2120n = obj;
            this.f2121o = null;
            this.f2122p = obj;
            this.f2125s = null;
            this.f2126t = null;
            this.f2127u = 1.0f;
            this.f2128v = null;
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.Fragment$i */
    public static class C0345i extends RuntimeException {
        public C0345i(String str, Exception exc) {
            super(str, exc);
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.Fragment$j */
    private static abstract class AbstractC0346j {
        private AbstractC0346j() {
        }

        /* JADX INFO: renamed from: a */
        abstract void mo2513a();

        /* synthetic */ AbstractC0346j(RunnableC0337a runnableC0337a) {
            this();
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.Fragment$k */
    interface InterfaceC0347k {
        /* JADX INFO: renamed from: a */
        void mo2514a();

        /* JADX INFO: renamed from: b */
        void mo2515b();
    }

    public Fragment() {
        m2375n0();
    }

    /* JADX INFO: renamed from: A */
    private C0344h m2370A() {
        if (this.f2057L == null) {
            this.f2057L = new C0344h();
        }
        return this.f2057L;
    }

    /* JADX INFO: renamed from: G1 */
    private <I, O> AbstractC0063c<I> m2371G1(AbstractC0066a<I, O> abstractC0066a, InterfaceC0525a<Void, ActivityResultRegistry> interfaceC0525a, InterfaceC0062b<O> interfaceC0062b) {
        if (this.f2071b <= 1) {
            AtomicReference atomicReference = new AtomicReference();
            m2372I1(new C0342f(interfaceC0525a, atomicReference, abstractC0066a, interfaceC0062b));
            return new C0343g(this, atomicReference, abstractC0066a);
        }
        throw new IllegalStateException("Fragment " + this + " is attempting to registerForActivityResult after being created. Fragments must call registerForActivityResult() before they are created (i.e. initialization, onAttach(), or onCreate()).");
    }

    /* JADX INFO: renamed from: I1 */
    private void m2372I1(AbstractC0346j abstractC0346j) {
        if (this.f2071b >= 0) {
            abstractC0346j.mo2513a();
        } else {
            this.f2070Y.add(abstractC0346j);
        }
    }

    /* JADX INFO: renamed from: N1 */
    private void m2373N1() {
        if (AbstractC0366n.m2677E0(3)) {
            String str = "moveto RESTORE_VIEW_STATE: " + this;
        }
        if (this.f2054I != null) {
            m2417O1(this.f2072c);
        }
        this.f2072c = null;
    }

    /* JADX INFO: renamed from: U */
    private int m2374U() {
        AbstractC0392f.c cVar = this.f2063R;
        return (cVar == AbstractC0392f.c.INITIALIZED || this.f2092w == null) ? this.f2063R.ordinal() : Math.min(cVar.ordinal(), this.f2092w.m2374U());
    }

    /* JADX INFO: renamed from: n0 */
    private void m2375n0() {
        this.f2064S = new C0397k(this);
        this.f2067V = C0482b.m3989a(this);
    }

    @Deprecated
    /* JADX INFO: renamed from: p0 */
    public static Fragment m2376p0(Context context, String str, Bundle bundle) {
        try {
            Fragment fragmentNewInstance = C0362j.m2656d(context.getClassLoader(), str).getConstructor(new Class[0]).newInstance(new Object[0]);
            if (bundle != null) {
                bundle.setClassLoader(fragmentNewInstance.getClass().getClassLoader());
                fragmentNewInstance.m2429S1(bundle);
            }
            return fragmentNewInstance;
        } catch (IllegalAccessException e) {
            throw new C0345i("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e);
        } catch (InstantiationException e2) {
            throw new C0345i("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e2);
        } catch (NoSuchMethodException e3) {
            throw new C0345i("Unable to instantiate fragment " + str + ": could not find Fragment constructor", e3);
        } catch (InvocationTargetException e4) {
            throw new C0345i("Unable to instantiate fragment " + str + ": calling Fragment constructor caused an exception", e4);
        }
    }

    /* JADX INFO: renamed from: A0 */
    void m2377A0() {
        this.f2091v.m2743R0();
    }

    /* JADX INFO: renamed from: A1 */
    void m2378A1() {
        boolean zM2725H0 = this.f2089t.m2725H0(this);
        Boolean bool = this.f2081l;
        if (bool == null || bool.booleanValue() != zM2725H0) {
            this.f2081l = Boolean.valueOf(zM2725H0);
            m2451a1(zM2725H0);
            this.f2091v.m2738P();
        }
    }

    /* JADX INFO: renamed from: B */
    Fragment m2379B(String str) {
        return str.equals(this.f2076g) ? this : this.f2091v.m2769i0(str);
    }

    @Deprecated
    /* JADX INFO: renamed from: B0 */
    public void mo2380B0(Bundle bundle) {
        this.f2052G = true;
    }

    /* JADX INFO: renamed from: B1 */
    void m2381B1() {
        this.f2091v.m2743R0();
        this.f2091v.m2754a0(true);
        this.f2071b = 7;
        this.f2052G = false;
        mo2457c1();
        if (this.f2052G) {
            this.f2064S.m3012h(AbstractC0392f.b.ON_RESUME);
            if (this.f2054I != null) {
                this.f2065T.m2540a(AbstractC0392f.b.ON_RESUME);
            }
            this.f2091v.m2740Q();
            return;
        }
        throw new C0357e0("Fragment " + this + " did not call through to super.onResume()");
    }

    /* JADX INFO: renamed from: C */
    String m2382C() {
        return "fragment_" + this.f2076g + "_rq#" + this.f2069X.getAndIncrement();
    }

    @Deprecated
    /* JADX INFO: renamed from: C0 */
    public void mo2383C0(int i, int i2, Intent intent) {
        if (AbstractC0366n.m2677E0(2)) {
            String str = "Fragment " + this + " received the following in onActivityResult(): requestCode: " + i + " resultCode: " + i2 + " data: " + intent;
        }
    }

    /* JADX INFO: renamed from: C1 */
    void m2384C1(Bundle bundle) {
        mo2460d1(bundle);
        this.f2067V.m3992d(bundle);
        Parcelable parcelableM2761f1 = this.f2091v.m2761f1();
        if (parcelableM2761f1 != null) {
            bundle.putParcelable("android:support:fragments", parcelableM2761f1);
        }
    }

    /* JADX INFO: renamed from: D */
    public final ActivityC0356e m2385D() {
        AbstractC0363k<?> abstractC0363k = this.f2090u;
        if (abstractC0363k == null) {
            return null;
        }
        return (ActivityC0356e) abstractC0363k.m2658e();
    }

    @Deprecated
    /* JADX INFO: renamed from: D0 */
    public void m2386D0(Activity activity) {
        this.f2052G = true;
    }

    /* JADX INFO: renamed from: D1 */
    void m2387D1() {
        this.f2091v.m2743R0();
        this.f2091v.m2754a0(true);
        this.f2071b = 5;
        this.f2052G = false;
        mo2463e1();
        if (this.f2052G) {
            this.f2064S.m3012h(AbstractC0392f.b.ON_START);
            if (this.f2054I != null) {
                this.f2065T.m2540a(AbstractC0392f.b.ON_START);
            }
            this.f2091v.m2742R();
            return;
        }
        throw new C0357e0("Fragment " + this + " did not call through to super.onStart()");
    }

    /* JADX INFO: renamed from: E */
    public boolean m2388E() {
        Boolean bool;
        C0344h c0344h = this.f2057L;
        if (c0344h == null || (bool = c0344h.f2124r) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    /* JADX INFO: renamed from: E0 */
    public void mo2389E0(Context context) {
        this.f2052G = true;
        AbstractC0363k<?> abstractC0363k = this.f2090u;
        Activity activityM2658e = abstractC0363k == null ? null : abstractC0363k.m2658e();
        if (activityM2658e != null) {
            this.f2052G = false;
            m2386D0(activityM2658e);
        }
    }

    /* JADX INFO: renamed from: E1 */
    void m2390E1() {
        this.f2091v.m2745T();
        if (this.f2054I != null) {
            this.f2065T.m2540a(AbstractC0392f.b.ON_STOP);
        }
        this.f2064S.m3012h(AbstractC0392f.b.ON_STOP);
        this.f2071b = 4;
        this.f2052G = false;
        mo2466f1();
        if (this.f2052G) {
            return;
        }
        throw new C0357e0("Fragment " + this + " did not call through to super.onStop()");
    }

    /* JADX INFO: renamed from: F */
    public boolean m2391F() {
        Boolean bool;
        C0344h c0344h = this.f2057L;
        if (c0344h == null || (bool = c0344h.f2123q) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    @Deprecated
    /* JADX INFO: renamed from: F0 */
    public void m2392F0(Fragment fragment) {
    }

    /* JADX INFO: renamed from: F1 */
    void m2393F1() {
        mo2469g1(this.f2054I, this.f2072c);
        this.f2091v.m2747U();
    }

    /* JADX INFO: renamed from: G */
    View m2394G() {
        C0344h c0344h = this.f2057L;
        if (c0344h == null) {
            return null;
        }
        return c0344h.f2107a;
    }

    /* JADX INFO: renamed from: G0 */
    public boolean m2395G0(MenuItem menuItem) {
        return false;
    }

    /* JADX INFO: renamed from: H */
    Animator m2396H() {
        C0344h c0344h = this.f2057L;
        if (c0344h == null) {
            return null;
        }
        return c0344h.f2108b;
    }

    /* JADX INFO: renamed from: H0 */
    public void mo2397H0(Bundle bundle) {
        this.f2052G = true;
        m2412M1(bundle);
        if (this.f2091v.m2727I0(1)) {
            return;
        }
        this.f2091v.m2716C();
    }

    /* JADX INFO: renamed from: H1 */
    public final <I, O> AbstractC0063c<I> m2398H1(AbstractC0066a<I, O> abstractC0066a, InterfaceC0062b<O> interfaceC0062b) {
        return m2371G1(abstractC0066a, new C0341e(), interfaceC0062b);
    }

    /* JADX INFO: renamed from: I */
    public final Bundle m2399I() {
        return this.f2077h;
    }

    /* JADX INFO: renamed from: I0 */
    public Animation mo2400I0(int i, boolean z, int i2) {
        return null;
    }

    /* JADX INFO: renamed from: J */
    public final AbstractC0366n m2401J() {
        if (this.f2090u != null) {
            return this.f2091v;
        }
        throw new IllegalStateException("Fragment " + this + " has not been attached yet.");
    }

    /* JADX INFO: renamed from: J0 */
    public Animator m2402J0(int i, boolean z, int i2) {
        return null;
    }

    /* JADX INFO: renamed from: J1 */
    public final ActivityC0356e m2403J1() {
        ActivityC0356e activityC0356eM2385D = m2385D();
        if (activityC0356eM2385D != null) {
            return activityC0356eM2385D;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to an activity.");
    }

    /* JADX INFO: renamed from: K */
    public Context m2404K() {
        AbstractC0363k<?> abstractC0363k = this.f2090u;
        if (abstractC0363k == null) {
            return null;
        }
        return abstractC0363k.m2659f();
    }

    /* JADX INFO: renamed from: K0 */
    public void m2405K0(Menu menu, MenuInflater menuInflater) {
    }

    /* JADX INFO: renamed from: K1 */
    public final Context m2406K1() {
        Context contextM2404K = m2404K();
        if (contextM2404K != null) {
            return contextM2404K;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to a context.");
    }

    /* JADX INFO: renamed from: L */
    int m2407L() {
        C0344h c0344h = this.f2057L;
        if (c0344h == null) {
            return 0;
        }
        return c0344h.f2110d;
    }

    /* JADX INFO: renamed from: L0 */
    public View mo2408L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i = this.f2068W;
        if (i != 0) {
            return layoutInflater.inflate(i, viewGroup, false);
        }
        return null;
    }

    /* JADX INFO: renamed from: L1 */
    public final View m2409L1() {
        View viewM2478l0 = m2478l0();
        if (viewM2478l0 != null) {
            return viewM2478l0;
        }
        throw new IllegalStateException("Fragment " + this + " did not return a View from onCreateView() or this was called before onCreateView().");
    }

    /* JADX INFO: renamed from: M */
    public Object m2410M() {
        C0344h c0344h = this.f2057L;
        if (c0344h == null) {
            return null;
        }
        return c0344h.f2117k;
    }

    /* JADX INFO: renamed from: M0 */
    public void mo2411M0() {
        this.f2052G = true;
    }

    /* JADX INFO: renamed from: M1 */
    void m2412M1(Bundle bundle) {
        Parcelable parcelable;
        if (bundle == null || (parcelable = bundle.getParcelable("android:support:fragments")) == null) {
            return;
        }
        this.f2091v.m2757d1(parcelable);
        this.f2091v.m2716C();
    }

    /* JADX INFO: renamed from: N */
    AbstractC0238h m2413N() {
        C0344h c0344h = this.f2057L;
        if (c0344h == null) {
            return null;
        }
        return c0344h.f2125s;
    }

    /* JADX INFO: renamed from: N0 */
    public void m2414N0() {
    }

    /* JADX INFO: renamed from: O */
    int m2415O() {
        C0344h c0344h = this.f2057L;
        if (c0344h == null) {
            return 0;
        }
        return c0344h.f2111e;
    }

    /* JADX INFO: renamed from: O0 */
    public void mo2416O0() {
        this.f2052G = true;
    }

    /* JADX INFO: renamed from: O1 */
    final void m2417O1(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = this.f2073d;
        if (sparseArray != null) {
            this.f2054I.restoreHierarchyState(sparseArray);
            this.f2073d = null;
        }
        if (this.f2054I != null) {
            this.f2065T.m2543d(this.f2074e);
            this.f2074e = null;
        }
        this.f2052G = false;
        mo2471h1(bundle);
        if (this.f2052G) {
            if (this.f2054I != null) {
                this.f2065T.m2540a(AbstractC0392f.b.ON_CREATE);
            }
        } else {
            throw new C0357e0("Fragment " + this + " did not call through to super.onViewStateRestored()");
        }
    }

    /* JADX INFO: renamed from: P */
    public Object m2418P() {
        C0344h c0344h = this.f2057L;
        if (c0344h == null) {
            return null;
        }
        return c0344h.f2119m;
    }

    /* JADX INFO: renamed from: P0 */
    public void mo2419P0() {
        this.f2052G = true;
    }

    /* JADX INFO: renamed from: P1 */
    void m2420P1(View view) {
        m2370A().f2107a = view;
    }

    /* JADX INFO: renamed from: Q */
    AbstractC0238h m2421Q() {
        C0344h c0344h = this.f2057L;
        if (c0344h == null) {
            return null;
        }
        return c0344h.f2126t;
    }

    /* JADX INFO: renamed from: Q0 */
    public LayoutInflater mo2422Q0(Bundle bundle) {
        return m2430T(bundle);
    }

    /* JADX INFO: renamed from: Q1 */
    void m2423Q1(int i, int i2, int i3, int i4) {
        if (this.f2057L == null && i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            return;
        }
        m2370A().f2110d = i;
        m2370A().f2111e = i2;
        m2370A().f2112f = i3;
        m2370A().f2113g = i4;
    }

    /* JADX INFO: renamed from: R */
    View m2424R() {
        C0344h c0344h = this.f2057L;
        if (c0344h == null) {
            return null;
        }
        return c0344h.f2128v;
    }

    /* JADX INFO: renamed from: R0 */
    public void mo2425R0(boolean z) {
    }

    /* JADX INFO: renamed from: R1 */
    void m2426R1(Animator animator) {
        m2370A().f2108b = animator;
    }

    /* JADX INFO: renamed from: S */
    public final Object m2427S() {
        AbstractC0363k<?> abstractC0363k = this.f2090u;
        if (abstractC0363k == null) {
            return null;
        }
        return abstractC0363k.mo2619h();
    }

    @Deprecated
    /* JADX INFO: renamed from: S0 */
    public void m2428S0(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        this.f2052G = true;
    }

    /* JADX INFO: renamed from: S1 */
    public void m2429S1(Bundle bundle) {
        if (this.f2089t != null && m2504y0()) {
            throw new IllegalStateException("Fragment already added and state has been saved");
        }
        this.f2077h = bundle;
    }

    @Deprecated
    /* JADX INFO: renamed from: T */
    public LayoutInflater m2430T(Bundle bundle) {
        AbstractC0363k<?> abstractC0363k = this.f2090u;
        if (abstractC0363k == null) {
            throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
        }
        LayoutInflater layoutInflaterMo2620i = abstractC0363k.mo2620i();
        LayoutInflaterCompat.setFactory2(layoutInflaterMo2620i, this.f2091v.m2785t0());
        return layoutInflaterMo2620i;
    }

    /* JADX INFO: renamed from: T0 */
    public void m2431T0(Context context, AttributeSet attributeSet, Bundle bundle) {
        this.f2052G = true;
        AbstractC0363k<?> abstractC0363k = this.f2090u;
        Activity activityM2658e = abstractC0363k == null ? null : abstractC0363k.m2658e();
        if (activityM2658e != null) {
            this.f2052G = false;
            m2428S0(activityM2658e, attributeSet, bundle);
        }
    }

    /* JADX INFO: renamed from: T1 */
    void m2432T1(View view) {
        m2370A().f2128v = view;
    }

    /* JADX INFO: renamed from: U0 */
    public void m2433U0(boolean z) {
    }

    /* JADX INFO: renamed from: U1 */
    void m2434U1(boolean z) {
        m2370A().f2131y = z;
    }

    /* JADX INFO: renamed from: V */
    int m2435V() {
        C0344h c0344h = this.f2057L;
        if (c0344h == null) {
            return 0;
        }
        return c0344h.f2114h;
    }

    /* JADX INFO: renamed from: V0 */
    public boolean m2436V0(MenuItem menuItem) {
        return false;
    }

    /* JADX INFO: renamed from: V1 */
    void m2437V1(int i) {
        if (this.f2057L == null && i == 0) {
            return;
        }
        m2370A();
        this.f2057L.f2114h = i;
    }

    /* JADX INFO: renamed from: W */
    public final Fragment m2438W() {
        return this.f2092w;
    }

    /* JADX INFO: renamed from: W0 */
    public void m2439W0(Menu menu) {
    }

    /* JADX INFO: renamed from: W1 */
    void m2440W1(InterfaceC0347k interfaceC0347k) {
        m2370A();
        InterfaceC0347k interfaceC0347k2 = this.f2057L.f2130x;
        if (interfaceC0347k == interfaceC0347k2) {
            return;
        }
        if (interfaceC0347k != null && interfaceC0347k2 != null) {
            throw new IllegalStateException("Trying to set a replacement startPostponedEnterTransition on " + this);
        }
        C0344h c0344h = this.f2057L;
        if (c0344h.f2129w) {
            c0344h.f2130x = interfaceC0347k;
        }
        if (interfaceC0347k != null) {
            interfaceC0347k.mo2515b();
        }
    }

    /* JADX INFO: renamed from: X */
    public final AbstractC0366n m2441X() {
        AbstractC0366n abstractC0366n = this.f2089t;
        if (abstractC0366n != null) {
            return abstractC0366n;
        }
        throw new IllegalStateException("Fragment " + this + " not associated with a fragment manager.");
    }

    /* JADX INFO: renamed from: X0 */
    public void m2442X0() {
        this.f2052G = true;
    }

    /* JADX INFO: renamed from: X1 */
    void m2443X1(boolean z) {
        if (this.f2057L == null) {
            return;
        }
        m2370A().f2109c = z;
    }

    /* JADX INFO: renamed from: Y */
    boolean m2444Y() {
        C0344h c0344h = this.f2057L;
        if (c0344h == null) {
            return false;
        }
        return c0344h.f2109c;
    }

    /* JADX INFO: renamed from: Y0 */
    public void m2445Y0(boolean z) {
    }

    /* JADX INFO: renamed from: Y1 */
    void m2446Y1(float f) {
        m2370A().f2127u = f;
    }

    /* JADX INFO: renamed from: Z */
    int m2447Z() {
        C0344h c0344h = this.f2057L;
        if (c0344h == null) {
            return 0;
        }
        return c0344h.f2112f;
    }

    /* JADX INFO: renamed from: Z0 */
    public void m2448Z0(Menu menu) {
    }

    /* JADX INFO: renamed from: Z1 */
    void m2449Z1(ArrayList<String> arrayList, ArrayList<String> arrayList2) {
        m2370A();
        C0344h c0344h = this.f2057L;
        c0344h.f2115i = arrayList;
        c0344h.f2116j = arrayList2;
    }

    /* JADX INFO: renamed from: a0 */
    int m2450a0() {
        C0344h c0344h = this.f2057L;
        if (c0344h == null) {
            return 0;
        }
        return c0344h.f2113g;
    }

    /* JADX INFO: renamed from: a1 */
    public void m2451a1(boolean z) {
    }

    /* JADX INFO: renamed from: a2 */
    public void m2452a2(@SuppressLint({"UnknownNullness"}) Intent intent) {
        m2455b2(intent, null);
    }

    /* JADX INFO: renamed from: b0 */
    float m2453b0() {
        C0344h c0344h = this.f2057L;
        if (c0344h == null) {
            return 1.0f;
        }
        return c0344h.f2127u;
    }

    @Deprecated
    /* JADX INFO: renamed from: b1 */
    public void m2454b1(int i, String[] strArr, int[] iArr) {
    }

    /* JADX INFO: renamed from: b2 */
    public void m2455b2(@SuppressLint({"UnknownNullness"}) Intent intent, Bundle bundle) {
        AbstractC0363k<?> abstractC0363k = this.f2090u;
        if (abstractC0363k != null) {
            abstractC0363k.m2661k(this, intent, -1, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    /* JADX INFO: renamed from: c0 */
    public Object m2456c0() {
        C0344h c0344h = this.f2057L;
        if (c0344h == null) {
            return null;
        }
        Object obj = c0344h.f2120n;
        return obj == f2045Z ? m2418P() : obj;
    }

    /* JADX INFO: renamed from: c1 */
    public void mo2457c1() {
        this.f2052G = true;
    }

    @Deprecated
    /* JADX INFO: renamed from: c2 */
    public void m2458c2(@SuppressLint({"UnknownNullness"}) Intent intent, int i) {
        m2461d2(intent, i, null);
    }

    /* JADX INFO: renamed from: d0 */
    public final Resources m2459d0() {
        return m2406K1().getResources();
    }

    /* JADX INFO: renamed from: d1 */
    public void mo2460d1(Bundle bundle) {
    }

    @Deprecated
    /* JADX INFO: renamed from: d2 */
    public void m2461d2(@SuppressLint({"UnknownNullness"}) Intent intent, int i, Bundle bundle) {
        if (this.f2090u != null) {
            m2441X().m2731K0(this, intent, i, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    /* JADX INFO: renamed from: e0 */
    public Object m2462e0() {
        C0344h c0344h = this.f2057L;
        if (c0344h == null) {
            return null;
        }
        Object obj = c0344h.f2118l;
        return obj == f2045Z ? m2410M() : obj;
    }

    /* JADX INFO: renamed from: e1 */
    public void mo2463e1() {
        this.f2052G = true;
    }

    @Deprecated
    /* JADX INFO: renamed from: e2 */
    public void m2464e2(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        if (this.f2090u == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        if (AbstractC0366n.m2677E0(2)) {
            String str = "Fragment " + this + " received the following in startIntentSenderForResult() requestCode: " + i + " IntentSender: " + intentSender + " fillInIntent: " + intent + " options: " + bundle;
        }
        m2441X().m2732L0(this, intentSender, i, intent, i2, i3, i4, bundle);
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    /* JADX INFO: renamed from: f0 */
    public Object m2465f0() {
        C0344h c0344h = this.f2057L;
        if (c0344h == null) {
            return null;
        }
        return c0344h.f2121o;
    }

    /* JADX INFO: renamed from: f1 */
    public void mo2466f1() {
        this.f2052G = true;
    }

    /* JADX INFO: renamed from: f2 */
    public void m2467f2() {
        if (this.f2057L == null || !m2370A().f2129w) {
            return;
        }
        if (this.f2090u == null) {
            m2370A().f2129w = false;
        } else if (Looper.myLooper() != this.f2090u.m2660g().getLooper()) {
            this.f2090u.m2660g().postAtFrontOfQueue(new RunnableC0338b());
        } else {
            m2498w(true);
        }
    }

    /* JADX INFO: renamed from: g0 */
    public Object m2468g0() {
        C0344h c0344h = this.f2057L;
        if (c0344h == null) {
            return null;
        }
        Object obj = c0344h.f2122p;
        return obj == f2045Z ? m2465f0() : obj;
    }

    /* JADX INFO: renamed from: g1 */
    public void mo2469g1(View view, Bundle bundle) {
    }

    @Override // androidx.lifecycle.InterfaceC0396j
    public AbstractC0392f getLifecycle() {
        return this.f2064S;
    }

    @Override // androidx.savedstate.InterfaceC0483c
    public final SavedStateRegistry getSavedStateRegistry() {
        return this.f2067V.m3990b();
    }

    @Override // androidx.lifecycle.InterfaceC0411y
    public C0410x getViewModelStore() {
        if (this.f2089t == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (m2374U() != AbstractC0392f.c.INITIALIZED.ordinal()) {
            return this.f2089t.m2794z0(this);
        }
        throw new IllegalStateException("Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported");
    }

    /* JADX INFO: renamed from: h0 */
    ArrayList<String> m2470h0() {
        ArrayList<String> arrayList;
        C0344h c0344h = this.f2057L;
        return (c0344h == null || (arrayList = c0344h.f2115i) == null) ? new ArrayList<>() : arrayList;
    }

    /* JADX INFO: renamed from: h1 */
    public void mo2471h1(Bundle bundle) {
        this.f2052G = true;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    /* JADX INFO: renamed from: i0 */
    ArrayList<String> m2472i0() {
        ArrayList<String> arrayList;
        C0344h c0344h = this.f2057L;
        return (c0344h == null || (arrayList = c0344h.f2116j) == null) ? new ArrayList<>() : arrayList;
    }

    /* JADX INFO: renamed from: i1 */
    void m2473i1(Bundle bundle) {
        this.f2091v.m2743R0();
        this.f2071b = 3;
        this.f2052G = false;
        mo2380B0(bundle);
        if (this.f2052G) {
            m2373N1();
            this.f2091v.m2792y();
        } else {
            throw new C0357e0("Fragment " + this + " did not call through to super.onActivityCreated()");
        }
    }

    /* JADX INFO: renamed from: j0 */
    public final String m2474j0(int i) {
        return m2459d0().getString(i);
    }

    /* JADX INFO: renamed from: j1 */
    void m2475j1() {
        Iterator<AbstractC0346j> it = this.f2070Y.iterator();
        while (it.hasNext()) {
            it.next().mo2513a();
        }
        this.f2070Y.clear();
        this.f2091v.m2771j(this.f2090u, mo2503y(), this);
        this.f2071b = 0;
        this.f2052G = false;
        mo2389E0(this.f2090u.m2659f());
        if (this.f2052G) {
            this.f2089t.m2726I(this);
            this.f2091v.m2793z();
        } else {
            throw new C0357e0("Fragment " + this + " did not call through to super.onAttach()");
        }
    }

    @Deprecated
    /* JADX INFO: renamed from: k0 */
    public final Fragment m2476k0() {
        String str;
        Fragment fragment = this.f2078i;
        if (fragment != null) {
            return fragment;
        }
        AbstractC0366n abstractC0366n = this.f2089t;
        if (abstractC0366n == null || (str = this.f2079j) == null) {
            return null;
        }
        return abstractC0366n.m2760f0(str);
    }

    /* JADX INFO: renamed from: k1 */
    void m2477k1(Configuration configuration) {
        onConfigurationChanged(configuration);
        this.f2091v.m2712A(configuration);
    }

    /* JADX INFO: renamed from: l0 */
    public View m2478l0() {
        return this.f2054I;
    }

    /* JADX INFO: renamed from: l1 */
    boolean m2479l1(MenuItem menuItem) {
        if (this.f2046A) {
            return false;
        }
        if (m2395G0(menuItem)) {
            return true;
        }
        return this.f2091v.m2714B(menuItem);
    }

    /* JADX INFO: renamed from: m0 */
    public LiveData<InterfaceC0396j> m2480m0() {
        return this.f2066U;
    }

    /* JADX INFO: renamed from: m1 */
    void m2481m1(Bundle bundle) {
        this.f2091v.m2743R0();
        this.f2071b = 1;
        this.f2052G = false;
        if (Build.VERSION.SDK_INT >= 19) {
            this.f2064S.mo2994a(new InterfaceC0394h() { // from class: androidx.fragment.app.Fragment.5
                @Override // androidx.lifecycle.InterfaceC0394h
                /* JADX INFO: renamed from: d */
                public void mo303d(InterfaceC0396j interfaceC0396j, AbstractC0392f.b bVar) {
                    View view;
                    if (bVar != AbstractC0392f.b.ON_STOP || (view = Fragment.this.f2054I) == null) {
                        return;
                    }
                    view.cancelPendingInputEvents();
                }
            });
        }
        this.f2067V.m3991c(bundle);
        mo2397H0(bundle);
        this.f2062Q = true;
        if (this.f2052G) {
            this.f2064S.m3012h(AbstractC0392f.b.ON_CREATE);
            return;
        }
        throw new C0357e0("Fragment " + this + " did not call through to super.onCreate()");
    }

    /* JADX INFO: renamed from: n1 */
    boolean m2482n1(Menu menu, MenuInflater menuInflater) {
        boolean z = false;
        if (this.f2046A) {
            return false;
        }
        if (this.f2050E && this.f2051F) {
            z = true;
            m2405K0(menu, menuInflater);
        }
        return z | this.f2091v.m2718D(menu, menuInflater);
    }

    /* JADX INFO: renamed from: o0 */
    void m2483o0() {
        m2375n0();
        this.f2076g = UUID.randomUUID().toString();
        this.f2082m = false;
        this.f2083n = false;
        this.f2084o = false;
        this.f2085p = false;
        this.f2086q = false;
        this.f2088s = 0;
        this.f2089t = null;
        this.f2091v = new C0367o();
        this.f2090u = null;
        this.f2093x = 0;
        this.f2094y = 0;
        this.f2095z = null;
        this.f2046A = false;
        this.f2047B = false;
    }

    /* JADX INFO: renamed from: o1 */
    void mo2484o1(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f2091v.m2743R0();
        this.f2087r = true;
        this.f2065T = new C0349a0(this, getViewModelStore());
        View viewMo2408L0 = mo2408L0(layoutInflater, viewGroup, bundle);
        this.f2054I = viewMo2408L0;
        if (viewMo2408L0 == null) {
            if (this.f2065T.m2542c()) {
                throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
            }
            this.f2065T = null;
        } else {
            this.f2065T.m2541b();
            C0412z.m3061a(this.f2054I, this.f2065T);
            C0385a0.m2978a(this.f2054I, this.f2065T);
            C0484d.m3993a(this.f2054I, this.f2065T);
            this.f2066U.mo2965k(this.f2065T);
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.f2052G = true;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        m2403J1().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        this.f2052G = true;
    }

    /* JADX INFO: renamed from: p1 */
    void m2485p1() {
        this.f2091v.m2720E();
        this.f2064S.m3012h(AbstractC0392f.b.ON_DESTROY);
        this.f2071b = 0;
        this.f2052G = false;
        this.f2062Q = false;
        mo2411M0();
        if (this.f2052G) {
            return;
        }
        throw new C0357e0("Fragment " + this + " did not call through to super.onDestroy()");
    }

    /* JADX INFO: renamed from: q0 */
    public final boolean m2486q0() {
        return this.f2090u != null && this.f2082m;
    }

    /* JADX INFO: renamed from: q1 */
    void m2487q1() {
        this.f2091v.m2721F();
        if (this.f2054I != null && this.f2065T.getLifecycle().mo2995b().m3000a(AbstractC0392f.c.CREATED)) {
            this.f2065T.m2540a(AbstractC0392f.b.ON_DESTROY);
        }
        this.f2071b = 1;
        this.f2052G = false;
        mo2416O0();
        if (this.f2052G) {
            AbstractC0641a.m4970b(this).mo4972c();
            this.f2087r = false;
        } else {
            throw new C0357e0("Fragment " + this + " did not call through to super.onDestroyView()");
        }
    }

    /* JADX INFO: renamed from: r0 */
    public final boolean m2488r0() {
        return this.f2046A;
    }

    /* JADX INFO: renamed from: r1 */
    void m2489r1() {
        this.f2071b = -1;
        this.f2052G = false;
        mo2419P0();
        this.f2061P = null;
        if (this.f2052G) {
            if (this.f2091v.m2719D0()) {
                return;
            }
            this.f2091v.m2720E();
            this.f2091v = new C0367o();
            return;
        }
        throw new C0357e0("Fragment " + this + " did not call through to super.onDetach()");
    }

    /* JADX INFO: renamed from: s0 */
    boolean m2490s0() {
        C0344h c0344h = this.f2057L;
        if (c0344h == null) {
            return false;
        }
        return c0344h.f2131y;
    }

    /* JADX INFO: renamed from: s1 */
    LayoutInflater m2491s1(Bundle bundle) {
        LayoutInflater layoutInflaterMo2422Q0 = mo2422Q0(bundle);
        this.f2061P = layoutInflaterMo2422Q0;
        return layoutInflaterMo2422Q0;
    }

    /* JADX INFO: renamed from: t0 */
    final boolean m2492t0() {
        return this.f2088s > 0;
    }

    /* JADX INFO: renamed from: t1 */
    void m2493t1() {
        onLowMemory();
        this.f2091v.m2722G();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(getClass().getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("}");
        sb.append(" (");
        sb.append(this.f2076g);
        if (this.f2093x != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.f2093x));
        }
        if (this.f2095z != null) {
            sb.append(" tag=");
            sb.append(this.f2095z);
        }
        sb.append(")");
        return sb.toString();
    }

    /* JADX INFO: renamed from: u0 */
    public final boolean m2494u0() {
        AbstractC0366n abstractC0366n;
        return this.f2051F && ((abstractC0366n = this.f2089t) == null || abstractC0366n.m2723G0(this.f2092w));
    }

    /* JADX INFO: renamed from: u1 */
    void m2495u1(boolean z) {
        m2433U0(z);
        this.f2091v.m2724H(z);
    }

    /* JADX INFO: renamed from: v0 */
    boolean m2496v0() {
        C0344h c0344h = this.f2057L;
        if (c0344h == null) {
            return false;
        }
        return c0344h.f2129w;
    }

    /* JADX INFO: renamed from: v1 */
    boolean m2497v1(MenuItem menuItem) {
        if (this.f2046A) {
            return false;
        }
        if (this.f2050E && this.f2051F && m2436V0(menuItem)) {
            return true;
        }
        return this.f2091v.m2728J(menuItem);
    }

    /* JADX INFO: renamed from: w */
    void m2498w(boolean z) {
        ViewGroup viewGroup;
        AbstractC0366n abstractC0366n;
        C0344h c0344h = this.f2057L;
        InterfaceC0347k interfaceC0347k = null;
        if (c0344h != null) {
            c0344h.f2129w = false;
            InterfaceC0347k interfaceC0347k2 = c0344h.f2130x;
            c0344h.f2130x = null;
            interfaceC0347k = interfaceC0347k2;
        }
        if (interfaceC0347k != null) {
            interfaceC0347k.mo2514a();
            return;
        }
        if (!AbstractC0366n.f2282P || this.f2054I == null || (viewGroup = this.f2053H) == null || (abstractC0366n = this.f2089t) == null) {
            return;
        }
        AbstractC0353c0 abstractC0353c0M2572n = AbstractC0353c0.m2572n(viewGroup, abstractC0366n);
        abstractC0353c0M2572n.m2584p();
        if (z) {
            this.f2090u.m2660g().post(new RunnableC0339c(this, abstractC0353c0M2572n));
        } else {
            abstractC0353c0M2572n.m2579g();
        }
    }

    /* JADX INFO: renamed from: w0 */
    public final boolean m2499w0() {
        return this.f2083n;
    }

    /* JADX INFO: renamed from: w1 */
    void m2500w1(Menu menu) {
        if (this.f2046A) {
            return;
        }
        if (this.f2050E && this.f2051F) {
            m2439W0(menu);
        }
        this.f2091v.m2730K(menu);
    }

    /* JADX INFO: renamed from: x0 */
    final boolean m2501x0() {
        Fragment fragmentM2438W = m2438W();
        return fragmentM2438W != null && (fragmentM2438W.m2499w0() || fragmentM2438W.m2501x0());
    }

    /* JADX INFO: renamed from: x1 */
    void m2502x1() {
        this.f2091v.m2733M();
        if (this.f2054I != null) {
            this.f2065T.m2540a(AbstractC0392f.b.ON_PAUSE);
        }
        this.f2064S.m3012h(AbstractC0392f.b.ON_PAUSE);
        this.f2071b = 6;
        this.f2052G = false;
        m2442X0();
        if (this.f2052G) {
            return;
        }
        throw new C0357e0("Fragment " + this + " did not call through to super.onPause()");
    }

    /* JADX INFO: renamed from: y */
    AbstractC0359g mo2503y() {
        return new C0340d();
    }

    /* JADX INFO: renamed from: y0 */
    public final boolean m2504y0() {
        AbstractC0366n abstractC0366n = this.f2089t;
        if (abstractC0366n == null) {
            return false;
        }
        return abstractC0366n.m2729J0();
    }

    /* JADX INFO: renamed from: y1 */
    void m2505y1(boolean z) {
        m2445Y0(z);
        this.f2091v.m2734N(z);
    }

    /* JADX INFO: renamed from: z */
    public void m2506z(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.f2093x));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.f2094y));
        printWriter.print(" mTag=");
        printWriter.println(this.f2095z);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.f2071b);
        printWriter.print(" mWho=");
        printWriter.print(this.f2076g);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.f2088s);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.f2082m);
        printWriter.print(" mRemoving=");
        printWriter.print(this.f2083n);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.f2084o);
        printWriter.print(" mInLayout=");
        printWriter.println(this.f2085p);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.f2046A);
        printWriter.print(" mDetached=");
        printWriter.print(this.f2047B);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.f2051F);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.f2050E);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.f2048C);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.f2056K);
        if (this.f2089t != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.f2089t);
        }
        if (this.f2090u != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.f2090u);
        }
        if (this.f2092w != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.f2092w);
        }
        if (this.f2077h != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.f2077h);
        }
        if (this.f2072c != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.f2072c);
        }
        if (this.f2073d != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.f2073d);
        }
        if (this.f2074e != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewRegistryState=");
            printWriter.println(this.f2074e);
        }
        Fragment fragmentM2476k0 = m2476k0();
        if (fragmentM2476k0 != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(fragmentM2476k0);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.f2080k);
        }
        printWriter.print(str);
        printWriter.print("mPopDirection=");
        printWriter.println(m2444Y());
        if (m2407L() != 0) {
            printWriter.print(str);
            printWriter.print("getEnterAnim=");
            printWriter.println(m2407L());
        }
        if (m2415O() != 0) {
            printWriter.print(str);
            printWriter.print("getExitAnim=");
            printWriter.println(m2415O());
        }
        if (m2447Z() != 0) {
            printWriter.print(str);
            printWriter.print("getPopEnterAnim=");
            printWriter.println(m2447Z());
        }
        if (m2450a0() != 0) {
            printWriter.print(str);
            printWriter.print("getPopExitAnim=");
            printWriter.println(m2450a0());
        }
        if (this.f2053H != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.f2053H);
        }
        if (this.f2054I != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.f2054I);
        }
        if (m2394G() != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(m2394G());
        }
        if (m2404K() != null) {
            AbstractC0641a.m4970b(this).mo4971a(str, fileDescriptor, printWriter, strArr);
        }
        printWriter.print(str);
        printWriter.println("Child " + this.f2091v + ":");
        this.f2091v.m2750W(str + "  ", fileDescriptor, printWriter, strArr);
    }

    /* JADX INFO: renamed from: z0 */
    public final boolean m2507z0() {
        View view;
        return (!m2486q0() || m2488r0() || (view = this.f2054I) == null || view.getWindowToken() == null || this.f2054I.getVisibility() != 0) ? false : true;
    }

    /* JADX INFO: renamed from: z1 */
    boolean m2508z1(Menu menu) {
        boolean z = false;
        if (this.f2046A) {
            return false;
        }
        if (this.f2050E && this.f2051F) {
            z = true;
            m2448Z0(menu);
        }
        return z | this.f2091v.m2736O(menu);
    }
}
