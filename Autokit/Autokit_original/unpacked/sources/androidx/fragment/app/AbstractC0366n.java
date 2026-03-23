package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.activity.AbstractC0052b;
import androidx.activity.InterfaceC0053c;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.result.AbstractC0063c;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.C0061a;
import androidx.activity.result.C0065e;
import androidx.activity.result.InterfaceC0062b;
import androidx.activity.result.InterfaceC0064d;
import androidx.activity.result.p002f.AbstractC0066a;
import androidx.activity.result.p002f.C0067b;
import androidx.activity.result.p002f.C0069d;
import androidx.fragment.app.AbstractC0375w;
import androidx.fragment.app.C0358f;
import androidx.fragment.app.C0376x;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.AbstractC0392f;
import androidx.lifecycle.C0410x;
import androidx.lifecycle.InterfaceC0396j;
import androidx.lifecycle.InterfaceC0411y;
import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import p016c.p032d.C0535b;
import p016c.p041g.p046g.C0604b;
import p016c.p055j.C0635b;

/* JADX INFO: renamed from: androidx.fragment.app.n */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0366n {

    /* JADX INFO: renamed from: O */
    private static boolean f2281O = false;

    /* JADX INFO: renamed from: P */
    static boolean f2282P = true;

    /* JADX INFO: renamed from: A */
    private AbstractC0063c<C0065e> f2283A;

    /* JADX INFO: renamed from: B */
    private AbstractC0063c<String[]> f2284B;

    /* JADX INFO: renamed from: D */
    private boolean f2286D;

    /* JADX INFO: renamed from: E */
    private boolean f2287E;

    /* JADX INFO: renamed from: F */
    private boolean f2288F;

    /* JADX INFO: renamed from: G */
    private boolean f2289G;

    /* JADX INFO: renamed from: H */
    private boolean f2290H;

    /* JADX INFO: renamed from: I */
    private ArrayList<C0348a> f2291I;

    /* JADX INFO: renamed from: J */
    private ArrayList<Boolean> f2292J;

    /* JADX INFO: renamed from: K */
    private ArrayList<Fragment> f2293K;

    /* JADX INFO: renamed from: L */
    private ArrayList<q> f2294L;

    /* JADX INFO: renamed from: M */
    private C0369q f2295M;

    /* JADX INFO: renamed from: b */
    private boolean f2298b;

    /* JADX INFO: renamed from: d */
    ArrayList<C0348a> f2300d;

    /* JADX INFO: renamed from: e */
    private ArrayList<Fragment> f2301e;

    /* JADX INFO: renamed from: g */
    private OnBackPressedDispatcher f2303g;

    /* JADX INFO: renamed from: l */
    private ArrayList<n> f2308l;

    /* JADX INFO: renamed from: r */
    private AbstractC0363k<?> f2314r;

    /* JADX INFO: renamed from: s */
    private AbstractC0359g f2315s;

    /* JADX INFO: renamed from: t */
    private Fragment f2316t;

    /* JADX INFO: renamed from: u */
    Fragment f2317u;

    /* JADX INFO: renamed from: z */
    private AbstractC0063c<Intent> f2322z;

    /* JADX INFO: renamed from: a */
    private final ArrayList<o> f2297a = new ArrayList<>();

    /* JADX INFO: renamed from: c */
    private final C0374v f2299c = new C0374v();

    /* JADX INFO: renamed from: f */
    private final LayoutInflaterFactory2C0364l f2302f = new LayoutInflaterFactory2C0364l(this);

    /* JADX INFO: renamed from: h */
    private final AbstractC0052b f2304h = new c(false);

    /* JADX INFO: renamed from: i */
    private final AtomicInteger f2305i = new AtomicInteger();

    /* JADX INFO: renamed from: j */
    private final Map<String, Bundle> f2306j = Collections.synchronizedMap(new HashMap());

    /* JADX INFO: renamed from: k */
    private final Map<String, Object> f2307k = Collections.synchronizedMap(new HashMap());

    /* JADX INFO: renamed from: m */
    private Map<Fragment, HashSet<C0604b>> f2309m = Collections.synchronizedMap(new HashMap());

    /* JADX INFO: renamed from: n */
    private final C0376x.g f2310n = new d();

    /* JADX INFO: renamed from: o */
    private final C0365m f2311o = new C0365m(this);

    /* JADX INFO: renamed from: p */
    private final CopyOnWriteArrayList<InterfaceC0370r> f2312p = new CopyOnWriteArrayList<>();

    /* JADX INFO: renamed from: q */
    int f2313q = -1;

    /* JADX INFO: renamed from: v */
    private C0362j f2318v = null;

    /* JADX INFO: renamed from: w */
    private C0362j f2319w = new e();

    /* JADX INFO: renamed from: x */
    private InterfaceC0355d0 f2320x = null;

    /* JADX INFO: renamed from: y */
    private InterfaceC0355d0 f2321y = new f(this);

    /* JADX INFO: renamed from: C */
    ArrayDeque<m> f2285C = new ArrayDeque<>();

    /* JADX INFO: renamed from: N */
    private Runnable f2296N = new g();

    /* JADX INFO: renamed from: androidx.fragment.app.n$a */
    class a implements InterfaceC0062b<C0061a> {
        a() {
        }

        @Override // androidx.activity.result.InterfaceC0062b
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void mo341a(C0061a c0061a) {
            m mVarPollFirst = AbstractC0366n.this.f2285C.pollFirst();
            if (mVarPollFirst == null) {
                String str = "No IntentSenders were started for " + this;
                return;
            }
            String str2 = mVarPollFirst.f2334b;
            int i = mVarPollFirst.f2335c;
            Fragment fragmentM2870i = AbstractC0366n.this.f2299c.m2870i(str2);
            if (fragmentM2870i != null) {
                fragmentM2870i.mo2383C0(i, c0061a.m338k(), c0061a.m337j());
                return;
            }
            String str3 = "Intent Sender result delivered for unknown Fragment " + str2;
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.n$b */
    class b implements InterfaceC0062b<Map<String, Boolean>> {
        b() {
        }

        @Override // androidx.activity.result.InterfaceC0062b
        @SuppressLint({"SyntheticAccessor"})
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void mo341a(Map<String, Boolean> map) {
            String[] strArr = (String[]) map.keySet().toArray(new String[0]);
            ArrayList arrayList = new ArrayList(map.values());
            int[] iArr = new int[arrayList.size()];
            for (int i = 0; i < arrayList.size(); i++) {
                iArr[i] = ((Boolean) arrayList.get(i)).booleanValue() ? 0 : -1;
            }
            m mVarPollFirst = AbstractC0366n.this.f2285C.pollFirst();
            if (mVarPollFirst == null) {
                String str = "No permissions were requested for " + this;
                return;
            }
            String str2 = mVarPollFirst.f2334b;
            int i2 = mVarPollFirst.f2335c;
            Fragment fragmentM2870i = AbstractC0366n.this.f2299c.m2870i(str2);
            if (fragmentM2870i != null) {
                fragmentM2870i.m2454b1(i2, strArr, iArr);
                return;
            }
            String str3 = "Permission request result delivered for unknown Fragment " + str2;
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.n$c */
    class c extends AbstractC0052b {
        c(boolean z) {
            super(z);
        }

        @Override // androidx.activity.AbstractC0052b
        /* JADX INFO: renamed from: b */
        public void mo310b() {
            AbstractC0366n.this.m2713A0();
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.n$d */
    class d implements C0376x.g {
        d() {
        }

        @Override // androidx.fragment.app.C0376x.g
        /* JADX INFO: renamed from: a */
        public void mo2797a(Fragment fragment, C0604b c0604b) {
            if (c0604b.m4754b()) {
                return;
            }
            AbstractC0366n.this.m2753Z0(fragment, c0604b);
        }

        @Override // androidx.fragment.app.C0376x.g
        /* JADX INFO: renamed from: b */
        public void mo2798b(Fragment fragment, C0604b c0604b) {
            AbstractC0366n.this.m2759f(fragment, c0604b);
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.n$e */
    class e extends C0362j {
        e() {
        }

        @Override // androidx.fragment.app.C0362j
        /* JADX INFO: renamed from: a */
        public Fragment mo2657a(ClassLoader classLoader, String str) {
            return AbstractC0366n.this.m2783s0().m2628b(AbstractC0366n.this.m2783s0().m2659f(), str, null);
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.n$f */
    class f implements InterfaceC0355d0 {
        f(AbstractC0366n abstractC0366n) {
        }

        @Override // androidx.fragment.app.InterfaceC0355d0
        /* JADX INFO: renamed from: a */
        public AbstractC0353c0 mo2617a(ViewGroup viewGroup) {
            return new C0352c(viewGroup);
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.n$g */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC0366n.this.m2754a0(true);
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.n$h */
    class h extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ ViewGroup f2329a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ View f2330b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ Fragment f2331c;

        h(AbstractC0366n abstractC0366n, ViewGroup viewGroup, View view, Fragment fragment) {
            this.f2329a = viewGroup;
            this.f2330b = view;
            this.f2331c = fragment;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f2329a.endViewTransition(this.f2330b);
            animator.removeListener(this);
            Fragment fragment = this.f2331c;
            View view = fragment.f2054I;
            if (view == null || !fragment.f2046A) {
                return;
            }
            view.setVisibility(8);
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.n$i */
    class i implements InterfaceC0370r {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ Fragment f2332b;

        i(AbstractC0366n abstractC0366n, Fragment fragment) {
            this.f2332b = fragment;
        }

        @Override // androidx.fragment.app.InterfaceC0370r
        /* JADX INFO: renamed from: a */
        public void mo2618a(AbstractC0366n abstractC0366n, Fragment fragment) {
            this.f2332b.m2392F0(fragment);
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.n$j */
    class j implements InterfaceC0062b<C0061a> {
        j() {
        }

        @Override // androidx.activity.result.InterfaceC0062b
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void mo341a(C0061a c0061a) {
            m mVarPollFirst = AbstractC0366n.this.f2285C.pollFirst();
            if (mVarPollFirst == null) {
                String str = "No Activities were started for result for " + this;
                return;
            }
            String str2 = mVarPollFirst.f2334b;
            int i = mVarPollFirst.f2335c;
            Fragment fragmentM2870i = AbstractC0366n.this.f2299c.m2870i(str2);
            if (fragmentM2870i != null) {
                fragmentM2870i.mo2383C0(i, c0061a.m338k(), c0061a.m337j());
                return;
            }
            String str3 = "Activity result delivered for unknown Fragment " + str2;
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.n$k */
    static class k extends AbstractC0066a<C0065e, C0061a> {
        k() {
        }

        @Override // androidx.activity.result.p002f.AbstractC0066a
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Intent mo352a(Context context, C0065e c0065e) {
            Bundle bundleExtra;
            Intent intent = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST");
            Intent intentM343j = c0065e.m343j();
            if (intentM343j != null && (bundleExtra = intentM343j.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) != null) {
                intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundleExtra);
                intentM343j.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                if (intentM343j.getBooleanExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", false)) {
                    C0065e.b bVar = new C0065e.b(c0065e.m346m());
                    bVar.m350b(null);
                    bVar.m351c(c0065e.m345l(), c0065e.m344k());
                    c0065e = bVar.m349a();
                }
            }
            intent.putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", c0065e);
            if (AbstractC0366n.m2677E0(2)) {
                String str = "CreateIntent created the following intent: " + intent;
            }
            return intent;
        }

        @Override // androidx.activity.result.p002f.AbstractC0066a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public C0061a mo354c(int i, Intent intent) {
            return new C0061a(i, intent);
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.n$l */
    public static abstract class l {
        @Deprecated
        /* JADX INFO: renamed from: a */
        public abstract void m2802a(AbstractC0366n abstractC0366n, Fragment fragment, Bundle bundle);

        /* JADX INFO: renamed from: b */
        public abstract void m2803b(AbstractC0366n abstractC0366n, Fragment fragment, Context context);

        /* JADX INFO: renamed from: c */
        public abstract void m2804c(AbstractC0366n abstractC0366n, Fragment fragment, Bundle bundle);

        /* JADX INFO: renamed from: d */
        public abstract void m2805d(AbstractC0366n abstractC0366n, Fragment fragment);

        /* JADX INFO: renamed from: e */
        public abstract void m2806e(AbstractC0366n abstractC0366n, Fragment fragment);

        /* JADX INFO: renamed from: f */
        public abstract void m2807f(AbstractC0366n abstractC0366n, Fragment fragment);

        /* JADX INFO: renamed from: g */
        public abstract void m2808g(AbstractC0366n abstractC0366n, Fragment fragment, Context context);

        /* JADX INFO: renamed from: h */
        public abstract void m2809h(AbstractC0366n abstractC0366n, Fragment fragment, Bundle bundle);

        /* JADX INFO: renamed from: i */
        public abstract void m2810i(AbstractC0366n abstractC0366n, Fragment fragment);

        /* JADX INFO: renamed from: j */
        public abstract void m2811j(AbstractC0366n abstractC0366n, Fragment fragment, Bundle bundle);

        /* JADX INFO: renamed from: k */
        public abstract void m2812k(AbstractC0366n abstractC0366n, Fragment fragment);

        /* JADX INFO: renamed from: l */
        public abstract void m2813l(AbstractC0366n abstractC0366n, Fragment fragment);

        /* JADX INFO: renamed from: m */
        public abstract void m2814m(AbstractC0366n abstractC0366n, Fragment fragment, View view, Bundle bundle);

        /* JADX INFO: renamed from: n */
        public abstract void m2815n(AbstractC0366n abstractC0366n, Fragment fragment);
    }

    /* JADX INFO: renamed from: androidx.fragment.app.n$n */
    public interface n {
        /* JADX INFO: renamed from: a */
        void m2818a();
    }

    /* JADX INFO: renamed from: androidx.fragment.app.n$o */
    interface o {
        /* JADX INFO: renamed from: a */
        boolean mo2525a(ArrayList<C0348a> arrayList, ArrayList<Boolean> arrayList2);
    }

    /* JADX INFO: renamed from: androidx.fragment.app.n$p */
    private class p implements o {

        /* JADX INFO: renamed from: a */
        final String f2336a;

        /* JADX INFO: renamed from: b */
        final int f2337b;

        /* JADX INFO: renamed from: c */
        final int f2338c;

        p(String str, int i, int i2) {
            this.f2336a = str;
            this.f2337b = i;
            this.f2338c = i2;
        }

        @Override // androidx.fragment.app.AbstractC0366n.o
        /* JADX INFO: renamed from: a */
        public boolean mo2525a(ArrayList<C0348a> arrayList, ArrayList<Boolean> arrayList2) {
            Fragment fragment = AbstractC0366n.this.f2317u;
            if (fragment == null || this.f2337b >= 0 || this.f2336a != null || !fragment.m2401J().m2749V0()) {
                return AbstractC0366n.this.m2751X0(arrayList, arrayList2, this.f2336a, this.f2337b, this.f2338c);
            }
            return false;
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.n$q */
    static class q implements Fragment.InterfaceC0347k {

        /* JADX INFO: renamed from: a */
        final boolean f2340a;

        /* JADX INFO: renamed from: b */
        final C0348a f2341b;

        /* JADX INFO: renamed from: c */
        private int f2342c;

        q(C0348a c0348a, boolean z) {
            this.f2340a = z;
            this.f2341b = c0348a;
        }

        @Override // androidx.fragment.app.Fragment.InterfaceC0347k
        /* JADX INFO: renamed from: a */
        public void mo2514a() {
            int i = this.f2342c - 1;
            this.f2342c = i;
            if (i != 0) {
                return;
            }
            this.f2341b.f2136r.m2764g1();
        }

        @Override // androidx.fragment.app.Fragment.InterfaceC0347k
        /* JADX INFO: renamed from: b */
        public void mo2515b() {
            this.f2342c++;
        }

        /* JADX INFO: renamed from: c */
        void m2819c() {
            C0348a c0348a = this.f2341b;
            c0348a.f2136r.m2784t(c0348a, this.f2340a, false, false);
        }

        /* JADX INFO: renamed from: d */
        void m2820d() {
            boolean z = this.f2342c > 0;
            for (Fragment fragment : this.f2341b.f2136r.m2782r0()) {
                fragment.m2440W1(null);
                if (z && fragment.m2496v0()) {
                    fragment.m2467f2();
                }
            }
            C0348a c0348a = this.f2341b;
            c0348a.f2136r.m2784t(c0348a, this.f2340a, !z, true);
        }

        /* JADX INFO: renamed from: e */
        public boolean m2821e() {
            return this.f2342c == 0;
        }
    }

    /* JADX INFO: renamed from: E0 */
    static boolean m2677E0(int i2) {
        return f2281O || Log.isLoggable("FragmentManager", i2);
    }

    /* JADX INFO: renamed from: F0 */
    private boolean m2678F0(Fragment fragment) {
        return (fragment.f2050E && fragment.f2051F) || fragment.f2091v.m2777n();
    }

    /* JADX INFO: renamed from: L */
    private void m2679L(Fragment fragment) {
        if (fragment == null || !fragment.equals(m2760f0(fragment.f2076g))) {
            return;
        }
        fragment.m2378A1();
    }

    /* JADX INFO: renamed from: M0 */
    private void m2680M0(C0535b<Fragment> c0535b) {
        int size = c0535b.size();
        for (int i2 = 0; i2 < size; i2++) {
            Fragment fragmentM4247h = c0535b.m4247h(i2);
            if (!fragmentM4247h.f2082m) {
                View viewM2409L1 = fragmentM4247h.m2409L1();
                fragmentM4247h.f2060O = viewM2409L1.getAlpha();
                viewM2409L1.setAlpha(CropImageView.DEFAULT_ASPECT_RATIO);
            }
        }
    }

    /* JADX INFO: renamed from: S */
    private void m2681S(int i2) {
        try {
            this.f2298b = true;
            this.f2299c.m2865d(i2);
            m2737O0(i2, false);
            if (f2282P) {
                Iterator<AbstractC0353c0> it = m2707r().iterator();
                while (it.hasNext()) {
                    it.next().m2580j();
                }
            }
            this.f2298b = false;
            m2754a0(true);
        } catch (Throwable th) {
            this.f2298b = false;
            throw th;
        }
    }

    /* JADX INFO: renamed from: V */
    private void m2682V() {
        if (this.f2290H) {
            this.f2290H = false;
            m2702m1();
        }
    }

    /* JADX INFO: renamed from: W0 */
    private boolean m2683W0(String str, int i2, int i3) {
        m2754a0(false);
        m2686Z(true);
        Fragment fragment = this.f2317u;
        if (fragment != null && i2 < 0 && str == null && fragment.m2401J().m2749V0()) {
            return true;
        }
        boolean zM2751X0 = m2751X0(this.f2291I, this.f2292J, str, i2, i3);
        if (zM2751X0) {
            this.f2298b = true;
            try {
                m2689b1(this.f2291I, this.f2292J);
            } finally {
                m2706p();
            }
        }
        m2703n1();
        m2682V();
        this.f2299c.m2863b();
        return zM2751X0;
    }

    /* JADX INFO: renamed from: X */
    private void m2684X() {
        if (f2282P) {
            Iterator<AbstractC0353c0> it = m2707r().iterator();
            while (it.hasNext()) {
                it.next().m2580j();
            }
        } else {
            if (this.f2309m.isEmpty()) {
                return;
            }
            for (Fragment fragment : this.f2309m.keySet()) {
                m2700m(fragment);
                m2739P0(fragment);
            }
        }
    }

    /* JADX INFO: renamed from: Y0 */
    private int m2685Y0(ArrayList<C0348a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3, C0535b<Fragment> c0535b) {
        int i4 = i3;
        for (int i5 = i3 - 1; i5 >= i2; i5--) {
            C0348a c0348a = arrayList.get(i5);
            boolean zBooleanValue = arrayList2.get(i5).booleanValue();
            if (c0348a.m2521F() && !c0348a.m2520D(arrayList, i5 + 1, i3)) {
                if (this.f2294L == null) {
                    this.f2294L = new ArrayList<>();
                }
                q qVar = new q(c0348a, zBooleanValue);
                this.f2294L.add(qVar);
                c0348a.m2523H(qVar);
                if (zBooleanValue) {
                    c0348a.m2538y();
                } else {
                    c0348a.m2539z(false);
                }
                i4--;
                if (i5 != i4) {
                    arrayList.remove(i5);
                    arrayList.add(i4, c0348a);
                }
                m2693d(c0535b);
            }
        }
        return i4;
    }

    /* JADX INFO: renamed from: Z */
    private void m2686Z(boolean z) {
        if (this.f2298b) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (this.f2314r == null) {
            if (!this.f2289G) {
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            throw new IllegalStateException("FragmentManager has been destroyed");
        }
        if (Looper.myLooper() != this.f2314r.m2660g().getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!z) {
            m2704o();
        }
        if (this.f2291I == null) {
            this.f2291I = new ArrayList<>();
            this.f2292J = new ArrayList<>();
        }
        this.f2298b = true;
        try {
            m2695e0(null, null);
        } finally {
            this.f2298b = false;
        }
    }

    /* JADX INFO: renamed from: b1 */
    private void m2689b1(ArrayList<C0348a> arrayList, ArrayList<Boolean> arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        m2695e0(arrayList, arrayList2);
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (i2 < size) {
            if (!arrayList.get(i2).f2397p) {
                if (i3 != i2) {
                    m2694d0(arrayList, arrayList2, i3, i2);
                }
                i3 = i2 + 1;
                if (arrayList2.get(i2).booleanValue()) {
                    while (i3 < size && arrayList2.get(i3).booleanValue() && !arrayList.get(i3).f2397p) {
                        i3++;
                    }
                }
                m2694d0(arrayList, arrayList2, i2, i3);
                i2 = i3 - 1;
            }
            i2++;
        }
        if (i3 != size) {
            m2694d0(arrayList, arrayList2, i3, size);
        }
    }

    /* JADX INFO: renamed from: c0 */
    private static void m2691c0(ArrayList<C0348a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        while (i2 < i3) {
            C0348a c0348a = arrayList.get(i2);
            if (arrayList2.get(i2).booleanValue()) {
                c0348a.m2534u(-1);
                c0348a.m2539z(i2 == i3 + (-1));
            } else {
                c0348a.m2534u(1);
                c0348a.m2538y();
            }
            i2++;
        }
    }

    /* JADX INFO: renamed from: c1 */
    private void m2692c1() {
        if (this.f2308l != null) {
            for (int i2 = 0; i2 < this.f2308l.size(); i2++) {
                this.f2308l.get(i2).m2818a();
            }
        }
    }

    /* JADX INFO: renamed from: d */
    private void m2693d(C0535b<Fragment> c0535b) {
        int i2 = this.f2313q;
        if (i2 < 1) {
            return;
        }
        int iMin = Math.min(i2, 5);
        for (Fragment fragment : this.f2299c.m2875n()) {
            if (fragment.f2071b < iMin) {
                m2741Q0(fragment, iMin);
                if (fragment.f2054I != null && !fragment.f2046A && fragment.f2058M) {
                    c0535b.add(fragment);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [boolean, int] */
    /* JADX INFO: renamed from: d0 */
    private void m2694d0(ArrayList<C0348a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        ?? r1;
        boolean z;
        int i4;
        int i5;
        ArrayList<Boolean> arrayList3;
        int i6;
        int iM2685Y0;
        ArrayList<Boolean> arrayList4;
        int i7;
        boolean z2;
        boolean z3 = arrayList.get(i2).f2397p;
        ArrayList<Fragment> arrayList5 = this.f2293K;
        if (arrayList5 == null) {
            this.f2293K = new ArrayList<>();
        } else {
            arrayList5.clear();
        }
        this.f2293K.addAll(this.f2299c.m2875n());
        Fragment fragmentM2789w0 = m2789w0();
        boolean z4 = false;
        for (int i8 = i2; i8 < i3; i8++) {
            C0348a c0348a = arrayList.get(i8);
            fragmentM2789w0 = !arrayList2.get(i8).booleanValue() ? c0348a.m2517A(this.f2293K, fragmentM2789w0) : c0348a.m2524I(this.f2293K, fragmentM2789w0);
            z4 = z4 || c0348a.f2388g;
        }
        this.f2293K.clear();
        if (z3 || this.f2313q < 1) {
            r1 = 1;
        } else if (f2282P) {
            for (int i9 = i2; i9 < i3; i9++) {
                Iterator<AbstractC0375w.a> it = arrayList.get(i9).f2382a.iterator();
                while (it.hasNext()) {
                    Fragment fragment = it.next().f2400b;
                    if (fragment != null && fragment.f2089t != null) {
                        this.f2299c.m2877p(m2787v(fragment));
                    }
                }
            }
            r1 = 1;
        } else {
            r1 = 1;
            C0376x.m2899C(this.f2314r.m2659f(), this.f2315s, arrayList, arrayList2, i2, i3, false, this.f2310n);
        }
        m2691c0(arrayList, arrayList2, i2, i3);
        if (f2282P) {
            boolean zBooleanValue = arrayList2.get(i3 - 1).booleanValue();
            for (int i10 = i2; i10 < i3; i10++) {
                C0348a c0348a2 = arrayList.get(i10);
                if (zBooleanValue) {
                    for (int size = c0348a2.f2382a.size() - r1; size >= 0; size--) {
                        Fragment fragment2 = c0348a2.f2382a.get(size).f2400b;
                        if (fragment2 != null) {
                            m2787v(fragment2).m2853m();
                        }
                    }
                } else {
                    Iterator<AbstractC0375w.a> it2 = c0348a2.f2382a.iterator();
                    while (it2.hasNext()) {
                        Fragment fragment3 = it2.next().f2400b;
                        if (fragment3 != null) {
                            m2787v(fragment3).m2853m();
                        }
                    }
                }
            }
            m2737O0(this.f2313q, r1);
            for (AbstractC0353c0 abstractC0353c0 : m2708s(arrayList, i2, i3)) {
                abstractC0353c0.m2585r(zBooleanValue);
                abstractC0353c0.m2584p();
                abstractC0353c0.m2579g();
            }
            i7 = i3;
            arrayList4 = arrayList2;
        } else {
            if (z3) {
                C0535b c0535b = new C0535b();
                m2693d(c0535b);
                i6 = 1;
                z = z3;
                i4 = i3;
                i5 = i2;
                arrayList3 = arrayList2;
                iM2685Y0 = m2685Y0(arrayList, arrayList2, i2, i3, c0535b);
                m2680M0(c0535b);
            } else {
                z = z3;
                i4 = i3;
                i5 = i2;
                arrayList3 = arrayList2;
                i6 = 1;
                iM2685Y0 = i4;
            }
            if (iM2685Y0 == i5 || !z) {
                arrayList4 = arrayList3;
                i7 = i4;
            } else {
                if (this.f2313q >= i6) {
                    arrayList4 = arrayList3;
                    int i11 = iM2685Y0;
                    i7 = i4;
                    z2 = true;
                    C0376x.m2899C(this.f2314r.m2659f(), this.f2315s, arrayList, arrayList2, i2, i11, true, this.f2310n);
                } else {
                    arrayList4 = arrayList3;
                    i7 = i4;
                    z2 = true;
                }
                m2737O0(this.f2313q, z2);
            }
        }
        for (int i12 = i2; i12 < i7; i12++) {
            C0348a c0348a3 = arrayList.get(i12);
            if (arrayList4.get(i12).booleanValue() && c0348a3.f2138t >= 0) {
                c0348a3.f2138t = -1;
            }
            c0348a3.m2522G();
        }
        if (z4) {
            m2692c1();
        }
    }

    /* JADX INFO: renamed from: e0 */
    private void m2695e0(ArrayList<C0348a> arrayList, ArrayList<Boolean> arrayList2) {
        int iIndexOf;
        int iIndexOf2;
        ArrayList<q> arrayList3 = this.f2294L;
        int size = arrayList3 == null ? 0 : arrayList3.size();
        int i2 = 0;
        while (i2 < size) {
            q qVar = this.f2294L.get(i2);
            if (arrayList != null && !qVar.f2340a && (iIndexOf2 = arrayList.indexOf(qVar.f2341b)) != -1 && arrayList2 != null && arrayList2.get(iIndexOf2).booleanValue()) {
                this.f2294L.remove(i2);
                i2--;
                size--;
                qVar.m2819c();
            } else if (qVar.m2821e() || (arrayList != null && qVar.f2341b.m2520D(arrayList, 0, arrayList.size()))) {
                this.f2294L.remove(i2);
                i2--;
                size--;
                if (arrayList == null || qVar.f2340a || (iIndexOf = arrayList.indexOf(qVar.f2341b)) == -1 || arrayList2 == null || !arrayList2.get(iIndexOf).booleanValue()) {
                    qVar.m2820d();
                } else {
                    qVar.m2819c();
                }
            }
            i2++;
        }
    }

    /* JADX INFO: renamed from: e1 */
    static int m2696e1(int i2) {
        if (i2 == 4097) {
            return 8194;
        }
        if (i2 != 4099) {
            return i2 != 8194 ? 0 : 4097;
        }
        return 4099;
    }

    /* JADX INFO: renamed from: j0 */
    private void m2697j0() {
        if (f2282P) {
            Iterator<AbstractC0353c0> it = m2707r().iterator();
            while (it.hasNext()) {
                it.next().m2581k();
            }
        } else if (this.f2294L != null) {
            while (!this.f2294L.isEmpty()) {
                this.f2294L.remove(0).m2820d();
            }
        }
    }

    /* JADX INFO: renamed from: k0 */
    private boolean m2698k0(ArrayList<C0348a> arrayList, ArrayList<Boolean> arrayList2) {
        synchronized (this.f2297a) {
            if (this.f2297a.isEmpty()) {
                return false;
            }
            int size = this.f2297a.size();
            boolean zMo2525a = false;
            for (int i2 = 0; i2 < size; i2++) {
                zMo2525a |= this.f2297a.get(i2).mo2525a(arrayList, arrayList2);
            }
            this.f2297a.clear();
            this.f2314r.m2660g().removeCallbacks(this.f2296N);
            return zMo2525a;
        }
    }

    /* JADX INFO: renamed from: k1 */
    private void m2699k1(Fragment fragment) {
        ViewGroup viewGroupM2705o0 = m2705o0(fragment);
        if (viewGroupM2705o0 == null || fragment.m2407L() + fragment.m2415O() + fragment.m2447Z() + fragment.m2450a0() <= 0) {
            return;
        }
        if (viewGroupM2705o0.getTag(C0635b.visible_removing_fragment_view_tag) == null) {
            viewGroupM2705o0.setTag(C0635b.visible_removing_fragment_view_tag, fragment);
        }
        ((Fragment) viewGroupM2705o0.getTag(C0635b.visible_removing_fragment_view_tag)).m2443X1(fragment.m2444Y());
    }

    /* JADX INFO: renamed from: m */
    private void m2700m(Fragment fragment) {
        HashSet<C0604b> hashSet = this.f2309m.get(fragment);
        if (hashSet != null) {
            Iterator<C0604b> it = hashSet.iterator();
            while (it.hasNext()) {
                it.next().m4753a();
            }
            hashSet.clear();
            m2710w(fragment);
            this.f2309m.remove(fragment);
        }
    }

    /* JADX INFO: renamed from: m0 */
    private C0369q m2701m0(Fragment fragment) {
        return this.f2295M.m2829l(fragment);
    }

    /* JADX INFO: renamed from: m1 */
    private void m2702m1() {
        Iterator<C0373u> it = this.f2299c.m2872k().iterator();
        while (it.hasNext()) {
            m2746T0(it.next());
        }
    }

    /* JADX INFO: renamed from: n1 */
    private void m2703n1() {
        synchronized (this.f2297a) {
            if (this.f2297a.isEmpty()) {
                this.f2304h.m314f(m2775l0() > 0 && m2725H0(this.f2316t));
            } else {
                this.f2304h.m314f(true);
            }
        }
    }

    /* JADX INFO: renamed from: o */
    private void m2704o() {
        if (m2729J0()) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
    }

    /* JADX INFO: renamed from: o0 */
    private ViewGroup m2705o0(Fragment fragment) {
        ViewGroup viewGroup = fragment.f2053H;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (fragment.f2094y > 0 && this.f2315s.mo2510d()) {
            View viewMo2509c = this.f2315s.mo2509c(fragment.f2094y);
            if (viewMo2509c instanceof ViewGroup) {
                return (ViewGroup) viewMo2509c;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: p */
    private void m2706p() {
        this.f2298b = false;
        this.f2292J.clear();
        this.f2291I.clear();
    }

    /* JADX INFO: renamed from: r */
    private Set<AbstractC0353c0> m2707r() {
        HashSet hashSet = new HashSet();
        Iterator<C0373u> it = this.f2299c.m2872k().iterator();
        while (it.hasNext()) {
            ViewGroup viewGroup = it.next().m2852k().f2053H;
            if (viewGroup != null) {
                hashSet.add(AbstractC0353c0.m2573o(viewGroup, m2791x0()));
            }
        }
        return hashSet;
    }

    /* JADX INFO: renamed from: s */
    private Set<AbstractC0353c0> m2708s(ArrayList<C0348a> arrayList, int i2, int i3) {
        ViewGroup viewGroup;
        HashSet hashSet = new HashSet();
        while (i2 < i3) {
            Iterator<AbstractC0375w.a> it = arrayList.get(i2).f2382a.iterator();
            while (it.hasNext()) {
                Fragment fragment = it.next().f2400b;
                if (fragment != null && (viewGroup = fragment.f2053H) != null) {
                    hashSet.add(AbstractC0353c0.m2572n(viewGroup, this));
                }
            }
            i2++;
        }
        return hashSet;
    }

    /* JADX INFO: renamed from: u */
    private void m2709u(Fragment fragment) {
        Animator animator;
        if (fragment.f2054I != null) {
            C0358f.d dVarM2626c = C0358f.m2626c(this.f2314r.m2659f(), fragment, !fragment.f2046A, fragment.m2444Y());
            if (dVarM2626c == null || (animator = dVarM2626c.f2258b) == null) {
                if (dVarM2626c != null) {
                    fragment.f2054I.startAnimation(dVarM2626c.f2257a);
                    dVarM2626c.f2257a.start();
                }
                fragment.f2054I.setVisibility((!fragment.f2046A || fragment.m2490s0()) ? 0 : 8);
                if (fragment.m2490s0()) {
                    fragment.m2434U1(false);
                }
            } else {
                animator.setTarget(fragment.f2054I);
                if (!fragment.f2046A) {
                    fragment.f2054I.setVisibility(0);
                } else if (fragment.m2490s0()) {
                    fragment.m2434U1(false);
                } else {
                    ViewGroup viewGroup = fragment.f2053H;
                    View view = fragment.f2054I;
                    viewGroup.startViewTransition(view);
                    dVarM2626c.f2258b.addListener(new h(this, viewGroup, view, fragment));
                }
                dVarM2626c.f2258b.start();
            }
        }
        m2717C0(fragment);
        fragment.f2059N = false;
        fragment.mo2425R0(fragment.f2046A);
    }

    /* JADX INFO: renamed from: w */
    private void m2710w(Fragment fragment) {
        fragment.m2487q1();
        this.f2311o.m2676n(fragment, false);
        fragment.f2053H = null;
        fragment.f2054I = null;
        fragment.f2065T = null;
        fragment.f2066U.mo2965k(null);
        fragment.f2085p = false;
    }

    /* JADX INFO: renamed from: y0 */
    static Fragment m2711y0(View view) {
        Object tag = view.getTag(C0635b.fragment_container_view_tag);
        if (tag instanceof Fragment) {
            return (Fragment) tag;
        }
        return null;
    }

    /* JADX INFO: renamed from: A */
    void m2712A(Configuration configuration) {
        for (Fragment fragment : this.f2299c.m2875n()) {
            if (fragment != null) {
                fragment.m2477k1(configuration);
            }
        }
    }

    /* JADX INFO: renamed from: A0 */
    void m2713A0() {
        m2754a0(true);
        if (this.f2304h.m311c()) {
            m2749V0();
        } else {
            this.f2303g.m308c();
        }
    }

    /* JADX INFO: renamed from: B */
    boolean m2714B(MenuItem menuItem) {
        if (this.f2313q < 1) {
            return false;
        }
        for (Fragment fragment : this.f2299c.m2875n()) {
            if (fragment != null && fragment.m2479l1(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: B0 */
    void m2715B0(Fragment fragment) {
        if (m2677E0(2)) {
            String str = "hide: " + fragment;
        }
        if (fragment.f2046A) {
            return;
        }
        fragment.f2046A = true;
        fragment.f2059N = true ^ fragment.f2059N;
        m2699k1(fragment);
    }

    /* JADX INFO: renamed from: C */
    void m2716C() {
        this.f2287E = false;
        this.f2288F = false;
        this.f2295M.m2834r(false);
        m2681S(1);
    }

    /* JADX INFO: renamed from: C0 */
    void m2717C0(Fragment fragment) {
        if (fragment.f2082m && m2678F0(fragment)) {
            this.f2286D = true;
        }
    }

    /* JADX INFO: renamed from: D */
    boolean m2718D(Menu menu, MenuInflater menuInflater) {
        if (this.f2313q < 1) {
            return false;
        }
        ArrayList<Fragment> arrayList = null;
        boolean z = false;
        for (Fragment fragment : this.f2299c.m2875n()) {
            if (fragment != null && m2723G0(fragment) && fragment.m2482n1(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                arrayList.add(fragment);
                z = true;
            }
        }
        if (this.f2301e != null) {
            for (int i2 = 0; i2 < this.f2301e.size(); i2++) {
                Fragment fragment2 = this.f2301e.get(i2);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.m2414N0();
                }
            }
        }
        this.f2301e = arrayList;
        return z;
    }

    /* JADX INFO: renamed from: D0 */
    public boolean m2719D0() {
        return this.f2289G;
    }

    /* JADX INFO: renamed from: E */
    void m2720E() {
        this.f2289G = true;
        m2754a0(true);
        m2684X();
        m2681S(-1);
        this.f2314r = null;
        this.f2315s = null;
        this.f2316t = null;
        if (this.f2303g != null) {
            this.f2304h.m312d();
            this.f2303g = null;
        }
        AbstractC0063c<Intent> abstractC0063c = this.f2322z;
        if (abstractC0063c != null) {
            abstractC0063c.mo333c();
            this.f2283A.mo333c();
            this.f2284B.mo333c();
        }
    }

    /* JADX INFO: renamed from: F */
    void m2721F() {
        m2681S(1);
    }

    /* JADX INFO: renamed from: G */
    void m2722G() {
        for (Fragment fragment : this.f2299c.m2875n()) {
            if (fragment != null) {
                fragment.m2493t1();
            }
        }
    }

    /* JADX INFO: renamed from: G0 */
    boolean m2723G0(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        return fragment.m2494u0();
    }

    /* JADX INFO: renamed from: H */
    void m2724H(boolean z) {
        for (Fragment fragment : this.f2299c.m2875n()) {
            if (fragment != null) {
                fragment.m2495u1(z);
            }
        }
    }

    /* JADX INFO: renamed from: H0 */
    boolean m2725H0(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        AbstractC0366n abstractC0366n = fragment.f2089t;
        return fragment.equals(abstractC0366n.m2789w0()) && m2725H0(abstractC0366n.f2316t);
    }

    /* JADX INFO: renamed from: I */
    void m2726I(Fragment fragment) {
        Iterator<InterfaceC0370r> it = this.f2312p.iterator();
        while (it.hasNext()) {
            it.next().mo2618a(this, fragment);
        }
    }

    /* JADX INFO: renamed from: I0 */
    boolean m2727I0(int i2) {
        return this.f2313q >= i2;
    }

    /* JADX INFO: renamed from: J */
    boolean m2728J(MenuItem menuItem) {
        if (this.f2313q < 1) {
            return false;
        }
        for (Fragment fragment : this.f2299c.m2875n()) {
            if (fragment != null && fragment.m2497v1(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: J0 */
    public boolean m2729J0() {
        return this.f2287E || this.f2288F;
    }

    /* JADX INFO: renamed from: K */
    void m2730K(Menu menu) {
        if (this.f2313q < 1) {
            return;
        }
        for (Fragment fragment : this.f2299c.m2875n()) {
            if (fragment != null) {
                fragment.m2500w1(menu);
            }
        }
    }

    /* JADX INFO: renamed from: K0 */
    void m2731K0(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i2, Bundle bundle) {
        if (this.f2322z == null) {
            this.f2314r.m2661k(fragment, intent, i2, bundle);
            return;
        }
        this.f2285C.addLast(new m(fragment.f2076g, i2));
        if (intent != null && bundle != null) {
            intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
        }
        this.f2322z.m342a(intent);
    }

    /* JADX INFO: renamed from: L0 */
    void m2732L0(Fragment fragment, @SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i2, Intent intent, int i3, int i4, int i5, Bundle bundle) {
        Intent intent2;
        if (this.f2283A == null) {
            this.f2314r.m2662l(fragment, intentSender, i2, intent, i3, i4, i5, bundle);
            return;
        }
        if (bundle != null) {
            if (intent == null) {
                intent2 = new Intent();
                intent2.putExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", true);
            } else {
                intent2 = intent;
            }
            if (m2677E0(2)) {
                String str = "ActivityOptions " + bundle + " were added to fillInIntent " + intent2 + " for fragment " + fragment;
            }
            intent2.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
        } else {
            intent2 = intent;
        }
        C0065e.b bVar = new C0065e.b(intentSender);
        bVar.m350b(intent2);
        bVar.m351c(i4, i3);
        C0065e c0065eM349a = bVar.m349a();
        this.f2285C.addLast(new m(fragment.f2076g, i2));
        if (m2677E0(2)) {
            String str2 = "Fragment " + fragment + "is launching an IntentSender for result ";
        }
        this.f2283A.m342a(c0065eM349a);
    }

    /* JADX INFO: renamed from: M */
    void m2733M() {
        m2681S(5);
    }

    /* JADX INFO: renamed from: N */
    void m2734N(boolean z) {
        for (Fragment fragment : this.f2299c.m2875n()) {
            if (fragment != null) {
                fragment.m2505y1(z);
            }
        }
    }

    /* JADX INFO: renamed from: N0 */
    void m2735N0(Fragment fragment) {
        if (!this.f2299c.m2864c(fragment.f2076g)) {
            if (m2677E0(3)) {
                String str = "Ignoring moving " + fragment + " to state " + this.f2313q + "since it is not added to " + this;
                return;
            }
            return;
        }
        m2739P0(fragment);
        View view = fragment.f2054I;
        if (view != null && fragment.f2058M && fragment.f2053H != null) {
            float f2 = fragment.f2060O;
            if (f2 > CropImageView.DEFAULT_ASPECT_RATIO) {
                view.setAlpha(f2);
            }
            fragment.f2060O = CropImageView.DEFAULT_ASPECT_RATIO;
            fragment.f2058M = false;
            C0358f.d dVarM2626c = C0358f.m2626c(this.f2314r.m2659f(), fragment, true, fragment.m2444Y());
            if (dVarM2626c != null) {
                Animation animation = dVarM2626c.f2257a;
                if (animation != null) {
                    fragment.f2054I.startAnimation(animation);
                } else {
                    dVarM2626c.f2258b.setTarget(fragment.f2054I);
                    dVarM2626c.f2258b.start();
                }
            }
        }
        if (fragment.f2059N) {
            m2709u(fragment);
        }
    }

    /* JADX INFO: renamed from: O */
    boolean m2736O(Menu menu) {
        boolean z = false;
        if (this.f2313q < 1) {
            return false;
        }
        for (Fragment fragment : this.f2299c.m2875n()) {
            if (fragment != null && m2723G0(fragment) && fragment.m2508z1(menu)) {
                z = true;
            }
        }
        return z;
    }

    /* JADX INFO: renamed from: O0 */
    void m2737O0(int i2, boolean z) {
        AbstractC0363k<?> abstractC0363k;
        if (this.f2314r == null && i2 != -1) {
            throw new IllegalStateException("No activity");
        }
        if (z || i2 != this.f2313q) {
            this.f2313q = i2;
            if (f2282P) {
                this.f2299c.m2879r();
            } else {
                Iterator<Fragment> it = this.f2299c.m2875n().iterator();
                while (it.hasNext()) {
                    m2735N0(it.next());
                }
                for (C0373u c0373u : this.f2299c.m2872k()) {
                    Fragment fragmentM2852k = c0373u.m2852k();
                    if (!fragmentM2852k.f2058M) {
                        m2735N0(fragmentM2852k);
                    }
                    if (fragmentM2852k.f2083n && !fragmentM2852k.m2492t0()) {
                        this.f2299c.m2878q(c0373u);
                    }
                }
            }
            m2702m1();
            if (this.f2286D && (abstractC0363k = this.f2314r) != null && this.f2313q == 7) {
                abstractC0363k.mo2622m();
                this.f2286D = false;
            }
        }
    }

    /* JADX INFO: renamed from: P */
    void m2738P() {
        m2703n1();
        m2679L(this.f2317u);
    }

    /* JADX INFO: renamed from: P0 */
    void m2739P0(Fragment fragment) {
        m2741Q0(fragment, this.f2313q);
    }

    /* JADX INFO: renamed from: Q */
    void m2740Q() {
        this.f2287E = false;
        this.f2288F = false;
        this.f2295M.m2834r(false);
        m2681S(7);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0156  */
    /* JADX INFO: renamed from: Q0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void m2741Q0(Fragment fragment, int i2) {
        ViewGroup viewGroup;
        C0373u c0373uM2874m = this.f2299c.m2874m(fragment.f2076g);
        int i3 = 1;
        if (c0373uM2874m == null) {
            c0373uM2874m = new C0373u(this.f2311o, this.f2299c, fragment);
            c0373uM2874m.m2859t(1);
        }
        if (fragment.f2084o && fragment.f2085p && fragment.f2071b == 2) {
            i2 = Math.max(i2, 2);
        }
        int iMin = Math.min(i2, c0373uM2874m.m2845d());
        int i4 = fragment.f2071b;
        if (i4 <= iMin) {
            if (i4 < iMin && !this.f2309m.isEmpty()) {
                m2700m(fragment);
            }
            int i5 = fragment.f2071b;
            if (i5 != -1) {
                if (i5 != 0) {
                    if (i5 != 1) {
                        if (i5 != 2) {
                            if (i5 != 4) {
                                if (i5 == 5) {
                                }
                            }
                            if (iMin > 5) {
                                c0373uM2874m.m2856p();
                            }
                        }
                        if (iMin > 4) {
                            c0373uM2874m.m2860u();
                        }
                        if (iMin > 5) {
                        }
                    }
                    if (iMin > 2) {
                        c0373uM2874m.m2842a();
                    }
                    if (iMin > 4) {
                    }
                    if (iMin > 5) {
                    }
                }
                if (iMin > -1) {
                    c0373uM2874m.m2851j();
                }
                if (iMin > 1) {
                    c0373uM2874m.m2847f();
                }
                if (iMin > 2) {
                }
                if (iMin > 4) {
                }
                if (iMin > 5) {
                }
            } else if (iMin > -1) {
                c0373uM2874m.m2844c();
            }
            if (iMin > 0) {
                c0373uM2874m.m2846e();
            }
            if (iMin > -1) {
            }
            if (iMin > 1) {
            }
            if (iMin > 2) {
            }
            if (iMin > 4) {
            }
            if (iMin > 5) {
            }
        } else if (i4 > iMin) {
            if (i4 == 0) {
                i3 = iMin;
                if (i3 < 0) {
                    c0373uM2874m.m2850i();
                }
                iMin = i3;
            } else {
                if (i4 != 1) {
                    if (i4 != 2) {
                        if (i4 != 4) {
                            if (i4 != 5) {
                                if (i4 == 7) {
                                    if (iMin < 7) {
                                        c0373uM2874m.m2854n();
                                    }
                                }
                            }
                            if (iMin < 5) {
                                c0373uM2874m.m2861v();
                            }
                        }
                        if (iMin < 4) {
                            if (m2677E0(3)) {
                                String str = "movefrom ACTIVITY_CREATED: " + fragment;
                            }
                            if (fragment.f2054I != null && this.f2314r.mo2621j(fragment) && fragment.f2073d == null) {
                                c0373uM2874m.m2858s();
                            }
                        }
                    }
                    if (iMin < 2) {
                        C0358f.d dVarM2626c = null;
                        View view = fragment.f2054I;
                        if (view != null && (viewGroup = fragment.f2053H) != null) {
                            viewGroup.endViewTransition(view);
                            fragment.f2054I.clearAnimation();
                            if (!fragment.m2501x0()) {
                                if (this.f2313q > -1 && !this.f2289G && fragment.f2054I.getVisibility() == 0 && fragment.f2060O >= CropImageView.DEFAULT_ASPECT_RATIO) {
                                    dVarM2626c = C0358f.m2626c(this.f2314r.m2659f(), fragment, false, fragment.m2444Y());
                                }
                                fragment.f2060O = CropImageView.DEFAULT_ASPECT_RATIO;
                                ViewGroup viewGroup2 = fragment.f2053H;
                                View view2 = fragment.f2054I;
                                if (dVarM2626c != null) {
                                    C0358f.m2624a(fragment, dVarM2626c, this.f2310n);
                                }
                                viewGroup2.removeView(view2);
                                if (m2677E0(2)) {
                                    String str2 = "Removing view " + view2 + " for fragment " + fragment + " from container " + viewGroup2;
                                }
                                if (viewGroup2 != fragment.f2053H) {
                                    return;
                                }
                            }
                        }
                        if (this.f2309m.get(fragment) == null) {
                            c0373uM2874m.m2849h();
                        }
                    }
                }
                if (iMin < 1) {
                    if (this.f2309m.get(fragment) == null) {
                        c0373uM2874m.m2848g();
                        i3 = iMin;
                    }
                    if (i3 < 0) {
                    }
                    iMin = i3;
                }
            }
        }
        if (fragment.f2071b != iMin) {
            if (m2677E0(3)) {
                String str3 = "moveToState: Fragment state for " + fragment + " not updated inline; expected state " + iMin + " found " + fragment.f2071b;
            }
            fragment.f2071b = iMin;
        }
    }

    /* JADX INFO: renamed from: R */
    void m2742R() {
        this.f2287E = false;
        this.f2288F = false;
        this.f2295M.m2834r(false);
        m2681S(5);
    }

    /* JADX INFO: renamed from: R0 */
    void m2743R0() {
        if (this.f2314r == null) {
            return;
        }
        this.f2287E = false;
        this.f2288F = false;
        this.f2295M.m2834r(false);
        for (Fragment fragment : this.f2299c.m2875n()) {
            if (fragment != null) {
                fragment.m2377A0();
            }
        }
    }

    /* JADX INFO: renamed from: S0 */
    void m2744S0(C0360h c0360h) {
        View view;
        for (C0373u c0373u : this.f2299c.m2872k()) {
            Fragment fragmentM2852k = c0373u.m2852k();
            if (fragmentM2852k.f2094y == c0360h.getId() && (view = fragmentM2852k.f2054I) != null && view.getParent() == null) {
                fragmentM2852k.f2053H = c0360h;
                c0373u.m2843b();
            }
        }
    }

    /* JADX INFO: renamed from: T */
    void m2745T() {
        this.f2288F = true;
        this.f2295M.m2834r(true);
        m2681S(4);
    }

    /* JADX INFO: renamed from: T0 */
    void m2746T0(C0373u c0373u) {
        Fragment fragmentM2852k = c0373u.m2852k();
        if (fragmentM2852k.f2055J) {
            if (this.f2298b) {
                this.f2290H = true;
                return;
            }
            fragmentM2852k.f2055J = false;
            if (f2282P) {
                c0373u.m2853m();
            } else {
                m2739P0(fragmentM2852k);
            }
        }
    }

    /* JADX INFO: renamed from: U */
    void m2747U() {
        m2681S(2);
    }

    /* JADX INFO: renamed from: U0 */
    public void m2748U0(int i2, int i3) {
        if (i2 >= 0) {
            m2752Y(new p(null, i2, i3), false);
            return;
        }
        throw new IllegalArgumentException("Bad id: " + i2);
    }

    /* JADX INFO: renamed from: V0 */
    public boolean m2749V0() {
        return m2683W0(null, -1, 0);
    }

    /* JADX INFO: renamed from: W */
    public void m2750W(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        String str2 = str + "    ";
        this.f2299c.m2866e(str, fileDescriptor, printWriter, strArr);
        ArrayList<Fragment> arrayList = this.f2301e;
        if (arrayList != null && (size2 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i2 = 0; i2 < size2; i2++) {
                Fragment fragment = this.f2301e.get(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(fragment.toString());
            }
        }
        ArrayList<C0348a> arrayList2 = this.f2300d;
        if (arrayList2 != null && (size = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i3 = 0; i3 < size; i3++) {
                C0348a c0348a = this.f2300d.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(c0348a.toString());
                c0348a.m2536w(str2, printWriter);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.f2305i.get());
        synchronized (this.f2297a) {
            int size3 = this.f2297a.size();
            if (size3 > 0) {
                printWriter.print(str);
                printWriter.println("Pending Actions:");
                for (int i4 = 0; i4 < size3; i4++) {
                    o oVar = this.f2297a.get(i4);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i4);
                    printWriter.print(": ");
                    printWriter.println(oVar);
                }
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.f2314r);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.f2315s);
        if (this.f2316t != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.f2316t);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.f2313q);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.f2287E);
        printWriter.print(" mStopped=");
        printWriter.print(this.f2288F);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.f2289G);
        if (this.f2286D) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.f2286D);
        }
    }

    /* JADX INFO: renamed from: X0 */
    boolean m2751X0(ArrayList<C0348a> arrayList, ArrayList<Boolean> arrayList2, String str, int i2, int i3) {
        int i4;
        ArrayList<C0348a> arrayList3 = this.f2300d;
        if (arrayList3 == null) {
            return false;
        }
        if (str == null && i2 < 0 && (i3 & 1) == 0) {
            int size = arrayList3.size() - 1;
            if (size < 0) {
                return false;
            }
            arrayList.add(this.f2300d.remove(size));
            arrayList2.add(Boolean.TRUE);
        } else {
            if (str != null || i2 >= 0) {
                int size2 = this.f2300d.size() - 1;
                while (size2 >= 0) {
                    C0348a c0348a = this.f2300d.get(size2);
                    if ((str != null && str.equals(c0348a.m2518B())) || (i2 >= 0 && i2 == c0348a.f2138t)) {
                        break;
                    }
                    size2--;
                }
                if (size2 < 0) {
                    return false;
                }
                if ((i3 & 1) != 0) {
                    while (true) {
                        size2--;
                        if (size2 < 0) {
                            break;
                        }
                        C0348a c0348a2 = this.f2300d.get(size2);
                        if (str == null || !str.equals(c0348a2.m2518B())) {
                            if (i2 < 0 || i2 != c0348a2.f2138t) {
                                break;
                            }
                        }
                    }
                }
                i4 = size2;
            } else {
                i4 = -1;
            }
            if (i4 == this.f2300d.size() - 1) {
                return false;
            }
            for (int size3 = this.f2300d.size() - 1; size3 > i4; size3--) {
                arrayList.add(this.f2300d.remove(size3));
                arrayList2.add(Boolean.TRUE);
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: Y */
    void m2752Y(o oVar, boolean z) {
        if (!z) {
            if (this.f2314r == null) {
                if (!this.f2289G) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            }
            m2704o();
        }
        synchronized (this.f2297a) {
            if (this.f2314r == null) {
                if (!z) {
                    throw new IllegalStateException("Activity has been destroyed");
                }
            } else {
                this.f2297a.add(oVar);
                m2764g1();
            }
        }
    }

    /* JADX INFO: renamed from: Z0 */
    void m2753Z0(Fragment fragment, C0604b c0604b) {
        HashSet<C0604b> hashSet = this.f2309m.get(fragment);
        if (hashSet != null && hashSet.remove(c0604b) && hashSet.isEmpty()) {
            this.f2309m.remove(fragment);
            if (fragment.f2071b < 5) {
                m2710w(fragment);
                m2739P0(fragment);
            }
        }
    }

    /* JADX INFO: renamed from: a0 */
    boolean m2754a0(boolean z) {
        m2686Z(z);
        boolean z2 = false;
        while (m2698k0(this.f2291I, this.f2292J)) {
            this.f2298b = true;
            try {
                m2689b1(this.f2291I, this.f2292J);
                m2706p();
                z2 = true;
            } catch (Throwable th) {
                m2706p();
                throw th;
            }
        }
        m2703n1();
        m2682V();
        this.f2299c.m2863b();
        return z2;
    }

    /* JADX INFO: renamed from: a1 */
    void m2755a1(Fragment fragment) {
        if (m2677E0(2)) {
            String str = "remove: " + fragment + " nesting=" + fragment.f2088s;
        }
        boolean z = !fragment.m2492t0();
        if (!fragment.f2047B || z) {
            this.f2299c.m2880s(fragment);
            if (m2678F0(fragment)) {
                this.f2286D = true;
            }
            fragment.f2083n = true;
            m2699k1(fragment);
        }
    }

    /* JADX INFO: renamed from: b0 */
    void m2756b0(o oVar, boolean z) {
        if (z && (this.f2314r == null || this.f2289G)) {
            return;
        }
        m2686Z(z);
        if (oVar.mo2525a(this.f2291I, this.f2292J)) {
            this.f2298b = true;
            try {
                m2689b1(this.f2291I, this.f2292J);
            } finally {
                m2706p();
            }
        }
        m2703n1();
        m2682V();
        this.f2299c.m2863b();
    }

    /* JADX INFO: renamed from: d1 */
    void m2757d1(Parcelable parcelable) {
        C0373u c0373u;
        if (parcelable == null) {
            return;
        }
        C0368p c0368p = (C0368p) parcelable;
        if (c0368p.f2343b == null) {
            return;
        }
        this.f2299c.m2881t();
        for (C0372t c0372t : c0368p.f2343b) {
            if (c0372t != null) {
                Fragment fragmentM2828k = this.f2295M.m2828k(c0372t.f2360c);
                if (fragmentM2828k != null) {
                    if (m2677E0(2)) {
                        String str = "restoreSaveState: re-attaching retained " + fragmentM2828k;
                    }
                    c0373u = new C0373u(this.f2311o, this.f2299c, fragmentM2828k, c0372t);
                } else {
                    c0373u = new C0373u(this.f2311o, this.f2299c, this.f2314r.m2659f().getClassLoader(), m2779p0(), c0372t);
                }
                Fragment fragmentM2852k = c0373u.m2852k();
                fragmentM2852k.f2089t = this;
                if (m2677E0(2)) {
                    String str2 = "restoreSaveState: active (" + fragmentM2852k.f2076g + "): " + fragmentM2852k;
                }
                c0373u.m2855o(this.f2314r.m2659f().getClassLoader());
                this.f2299c.m2877p(c0373u);
                c0373u.m2859t(this.f2313q);
            }
        }
        for (Fragment fragment : this.f2295M.m2830n()) {
            if (!this.f2299c.m2864c(fragment.f2076g)) {
                if (m2677E0(2)) {
                    String str3 = "Discarding retained Fragment " + fragment + " that was not found in the set of active Fragments " + c0368p.f2343b;
                }
                this.f2295M.m2833q(fragment);
                fragment.f2089t = this;
                C0373u c0373u2 = new C0373u(this.f2311o, this.f2299c, fragment);
                c0373u2.m2859t(1);
                c0373u2.m2853m();
                fragment.f2083n = true;
                c0373u2.m2853m();
            }
        }
        this.f2299c.m2882u(c0368p.f2344c);
        if (c0368p.f2345d != null) {
            this.f2300d = new ArrayList<>(c0368p.f2345d.length);
            int i2 = 0;
            while (true) {
                C0350b[] c0350bArr = c0368p.f2345d;
                if (i2 >= c0350bArr.length) {
                    break;
                }
                C0348a c0348aM2546j = c0350bArr[i2].m2546j(this);
                if (m2677E0(2)) {
                    String str4 = "restoreAllState: back stack #" + i2 + " (index " + c0348aM2546j.f2138t + "): " + c0348aM2546j;
                    PrintWriter printWriter = new PrintWriter(new C0351b0("FragmentManager"));
                    c0348aM2546j.m2537x("  ", printWriter, false);
                    printWriter.close();
                }
                this.f2300d.add(c0348aM2546j);
                i2++;
            }
        } else {
            this.f2300d = null;
        }
        this.f2305i.set(c0368p.f2346e);
        String str5 = c0368p.f2347f;
        if (str5 != null) {
            Fragment fragmentM2760f0 = m2760f0(str5);
            this.f2317u = fragmentM2760f0;
            m2679L(fragmentM2760f0);
        }
        ArrayList<String> arrayList = c0368p.f2348g;
        if (arrayList != null) {
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                Bundle bundle = c0368p.f2349h.get(i3);
                bundle.setClassLoader(this.f2314r.m2659f().getClassLoader());
                this.f2306j.put(arrayList.get(i3), bundle);
            }
        }
        this.f2285C = new ArrayDeque<>(c0368p.f2350i);
    }

    /* JADX INFO: renamed from: e */
    void m2758e(C0348a c0348a) {
        if (this.f2300d == null) {
            this.f2300d = new ArrayList<>();
        }
        this.f2300d.add(c0348a);
    }

    /* JADX INFO: renamed from: f */
    void m2759f(Fragment fragment, C0604b c0604b) {
        if (this.f2309m.get(fragment) == null) {
            this.f2309m.put(fragment, new HashSet<>());
        }
        this.f2309m.get(fragment).add(c0604b);
    }

    /* JADX INFO: renamed from: f0 */
    Fragment m2760f0(String str) {
        return this.f2299c.m2867f(str);
    }

    /* JADX INFO: renamed from: f1 */
    Parcelable m2761f1() {
        int size;
        m2697j0();
        m2684X();
        m2754a0(true);
        this.f2287E = true;
        this.f2295M.m2834r(true);
        ArrayList<C0372t> arrayListM2883v = this.f2299c.m2883v();
        C0350b[] c0350bArr = null;
        if (arrayListM2883v.isEmpty()) {
            m2677E0(2);
            return null;
        }
        ArrayList<String> arrayListM2884w = this.f2299c.m2884w();
        ArrayList<C0348a> arrayList = this.f2300d;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            c0350bArr = new C0350b[size];
            for (int i2 = 0; i2 < size; i2++) {
                c0350bArr[i2] = new C0350b(this.f2300d.get(i2));
                if (m2677E0(2)) {
                    String str = "saveAllState: adding back stack #" + i2 + ": " + this.f2300d.get(i2);
                }
            }
        }
        C0368p c0368p = new C0368p();
        c0368p.f2343b = arrayListM2883v;
        c0368p.f2344c = arrayListM2884w;
        c0368p.f2345d = c0350bArr;
        c0368p.f2346e = this.f2305i.get();
        Fragment fragment = this.f2317u;
        if (fragment != null) {
            c0368p.f2347f = fragment.f2076g;
        }
        c0368p.f2348g.addAll(this.f2306j.keySet());
        c0368p.f2349h.addAll(this.f2306j.values());
        c0368p.f2350i = new ArrayList<>(this.f2285C);
        return c0368p;
    }

    /* JADX INFO: renamed from: g */
    C0373u m2762g(Fragment fragment) {
        if (m2677E0(2)) {
            String str = "add: " + fragment;
        }
        C0373u c0373uM2787v = m2787v(fragment);
        fragment.f2089t = this;
        this.f2299c.m2877p(c0373uM2787v);
        if (!fragment.f2047B) {
            this.f2299c.m2862a(fragment);
            fragment.f2083n = false;
            if (fragment.f2054I == null) {
                fragment.f2059N = false;
            }
            if (m2678F0(fragment)) {
                this.f2286D = true;
            }
        }
        return c0373uM2787v;
    }

    /* JADX INFO: renamed from: g0 */
    public Fragment m2763g0(int i2) {
        return this.f2299c.m2868g(i2);
    }

    /* JADX INFO: renamed from: g1 */
    void m2764g1() {
        synchronized (this.f2297a) {
            boolean z = (this.f2294L == null || this.f2294L.isEmpty()) ? false : true;
            boolean z2 = this.f2297a.size() == 1;
            if (z || z2) {
                this.f2314r.m2660g().removeCallbacks(this.f2296N);
                this.f2314r.m2660g().post(this.f2296N);
                m2703n1();
            }
        }
    }

    /* JADX INFO: renamed from: h */
    public void m2765h(InterfaceC0370r interfaceC0370r) {
        this.f2312p.add(interfaceC0370r);
    }

    /* JADX INFO: renamed from: h0 */
    public Fragment m2766h0(String str) {
        return this.f2299c.m2869h(str);
    }

    /* JADX INFO: renamed from: h1 */
    void m2767h1(Fragment fragment, boolean z) {
        ViewGroup viewGroupM2705o0 = m2705o0(fragment);
        if (viewGroupM2705o0 == null || !(viewGroupM2705o0 instanceof C0360h)) {
            return;
        }
        ((C0360h) viewGroupM2705o0).setDrawDisappearingViewsLast(!z);
    }

    /* JADX INFO: renamed from: i */
    int m2768i() {
        return this.f2305i.getAndIncrement();
    }

    /* JADX INFO: renamed from: i0 */
    Fragment m2769i0(String str) {
        return this.f2299c.m2870i(str);
    }

    /* JADX INFO: renamed from: i1 */
    void m2770i1(Fragment fragment, AbstractC0392f.c cVar) {
        if (fragment.equals(m2760f0(fragment.f2076g)) && (fragment.f2090u == null || fragment.f2089t == this)) {
            fragment.f2063R = cVar;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @SuppressLint({"SyntheticAccessor"})
    /* JADX INFO: renamed from: j */
    void m2771j(AbstractC0363k<?> abstractC0363k, AbstractC0359g abstractC0359g, Fragment fragment) {
        String str;
        if (this.f2314r != null) {
            throw new IllegalStateException("Already attached");
        }
        this.f2314r = abstractC0363k;
        this.f2315s = abstractC0359g;
        this.f2316t = fragment;
        if (fragment != null) {
            m2765h(new i(this, fragment));
        } else if (abstractC0363k instanceof InterfaceC0370r) {
            m2765h((InterfaceC0370r) abstractC0363k);
        }
        if (this.f2316t != null) {
            m2703n1();
        }
        if (abstractC0363k instanceof InterfaceC0053c) {
            InterfaceC0053c interfaceC0053c = (InterfaceC0053c) abstractC0363k;
            this.f2303g = interfaceC0053c.getOnBackPressedDispatcher();
            InterfaceC0396j interfaceC0396j = interfaceC0053c;
            if (fragment != null) {
                interfaceC0396j = fragment;
            }
            this.f2303g.m306a(interfaceC0396j, this.f2304h);
        }
        if (fragment != null) {
            this.f2295M = fragment.f2089t.m2701m0(fragment);
        } else if (abstractC0363k instanceof InterfaceC0411y) {
            this.f2295M = C0369q.m2824m(((InterfaceC0411y) abstractC0363k).getViewModelStore());
        } else {
            this.f2295M = new C0369q(false);
        }
        this.f2295M.m2834r(m2729J0());
        this.f2299c.m2885x(this.f2295M);
        Object obj = this.f2314r;
        if (obj instanceof InterfaceC0064d) {
            ActivityResultRegistry activityResultRegistry = ((InterfaceC0064d) obj).getActivityResultRegistry();
            if (fragment != null) {
                str = fragment.f2076g + ":";
            } else {
                str = BuildConfig.FLAVOR;
            }
            String str2 = "FragmentManager:" + str;
            this.f2322z = activityResultRegistry.m329i(str2 + "StartActivityForResult", new C0069d(), new j());
            this.f2283A = activityResultRegistry.m329i(str2 + "StartIntentSenderForResult", new k(), new a());
            this.f2284B = activityResultRegistry.m329i(str2 + "RequestPermissions", new C0067b(), new b());
        }
    }

    /* JADX INFO: renamed from: j1 */
    void m2772j1(Fragment fragment) {
        if (fragment == null || (fragment.equals(m2760f0(fragment.f2076g)) && (fragment.f2090u == null || fragment.f2089t == this))) {
            Fragment fragment2 = this.f2317u;
            this.f2317u = fragment;
            m2679L(fragment2);
            m2679L(this.f2317u);
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    /* JADX INFO: renamed from: k */
    void m2773k(Fragment fragment) {
        if (m2677E0(2)) {
            String str = "attach: " + fragment;
        }
        if (fragment.f2047B) {
            fragment.f2047B = false;
            if (fragment.f2082m) {
                return;
            }
            this.f2299c.m2862a(fragment);
            if (m2677E0(2)) {
                String str2 = "add from attach: " + fragment;
            }
            if (m2678F0(fragment)) {
                this.f2286D = true;
            }
        }
    }

    /* JADX INFO: renamed from: l */
    public AbstractC0375w m2774l() {
        return new C0348a(this);
    }

    /* JADX INFO: renamed from: l0 */
    public int m2775l0() {
        ArrayList<C0348a> arrayList = this.f2300d;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    /* JADX INFO: renamed from: l1 */
    void m2776l1(Fragment fragment) {
        if (m2677E0(2)) {
            String str = "show: " + fragment;
        }
        if (fragment.f2046A) {
            fragment.f2046A = false;
            fragment.f2059N = !fragment.f2059N;
        }
    }

    /* JADX INFO: renamed from: n */
    boolean m2777n() {
        boolean zM2678F0 = false;
        for (Fragment fragment : this.f2299c.m2873l()) {
            if (fragment != null) {
                zM2678F0 = m2678F0(fragment);
            }
            if (zM2678F0) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: n0 */
    AbstractC0359g m2778n0() {
        return this.f2315s;
    }

    /* JADX INFO: renamed from: p0 */
    public C0362j m2779p0() {
        C0362j c0362j = this.f2318v;
        if (c0362j != null) {
            return c0362j;
        }
        Fragment fragment = this.f2316t;
        return fragment != null ? fragment.f2089t.m2779p0() : this.f2319w;
    }

    /* JADX INFO: renamed from: q */
    public final void m2780q(String str) {
        this.f2306j.remove(str);
    }

    /* JADX INFO: renamed from: q0 */
    C0374v m2781q0() {
        return this.f2299c;
    }

    /* JADX INFO: renamed from: r0 */
    public List<Fragment> m2782r0() {
        return this.f2299c.m2875n();
    }

    /* JADX INFO: renamed from: s0 */
    AbstractC0363k<?> m2783s0() {
        return this.f2314r;
    }

    /* JADX INFO: renamed from: t */
    void m2784t(C0348a c0348a, boolean z, boolean z2, boolean z3) {
        if (z) {
            c0348a.m2539z(z3);
        } else {
            c0348a.m2538y();
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(c0348a);
        arrayList2.add(Boolean.valueOf(z));
        if (z2 && this.f2313q >= 1) {
            C0376x.m2899C(this.f2314r.m2659f(), this.f2315s, arrayList, arrayList2, 0, 1, true, this.f2310n);
        }
        if (z3) {
            m2737O0(this.f2313q, true);
        }
        for (Fragment fragment : this.f2299c.m2873l()) {
            if (fragment != null && fragment.f2054I != null && fragment.f2058M && c0348a.m2519C(fragment.f2094y)) {
                float f2 = fragment.f2060O;
                if (f2 > CropImageView.DEFAULT_ASPECT_RATIO) {
                    fragment.f2054I.setAlpha(f2);
                }
                if (z3) {
                    fragment.f2060O = CropImageView.DEFAULT_ASPECT_RATIO;
                } else {
                    fragment.f2060O = -1.0f;
                    fragment.f2058M = false;
                }
            }
        }
    }

    /* JADX INFO: renamed from: t0 */
    LayoutInflater.Factory2 m2785t0() {
        return this.f2302f;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Fragment fragment = this.f2316t;
        if (fragment != null) {
            sb.append(fragment.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.f2316t)));
            sb.append("}");
        } else {
            AbstractC0363k<?> abstractC0363k = this.f2314r;
            if (abstractC0363k != null) {
                sb.append(abstractC0363k.getClass().getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(this.f2314r)));
                sb.append("}");
            } else {
                sb.append("null");
            }
        }
        sb.append("}}");
        return sb.toString();
    }

    /* JADX INFO: renamed from: u0 */
    C0365m m2786u0() {
        return this.f2311o;
    }

    /* JADX INFO: renamed from: v */
    C0373u m2787v(Fragment fragment) {
        C0373u c0373uM2874m = this.f2299c.m2874m(fragment.f2076g);
        if (c0373uM2874m != null) {
            return c0373uM2874m;
        }
        C0373u c0373u = new C0373u(this.f2311o, this.f2299c, fragment);
        c0373u.m2855o(this.f2314r.m2659f().getClassLoader());
        c0373u.m2859t(this.f2313q);
        return c0373u;
    }

    /* JADX INFO: renamed from: v0 */
    Fragment m2788v0() {
        return this.f2316t;
    }

    /* JADX INFO: renamed from: w0 */
    public Fragment m2789w0() {
        return this.f2317u;
    }

    /* JADX INFO: renamed from: x */
    void m2790x(Fragment fragment) {
        if (m2677E0(2)) {
            String str = "detach: " + fragment;
        }
        if (fragment.f2047B) {
            return;
        }
        fragment.f2047B = true;
        if (fragment.f2082m) {
            if (m2677E0(2)) {
                String str2 = "remove from detach: " + fragment;
            }
            this.f2299c.m2880s(fragment);
            if (m2678F0(fragment)) {
                this.f2286D = true;
            }
            m2699k1(fragment);
        }
    }

    /* JADX INFO: renamed from: x0 */
    InterfaceC0355d0 m2791x0() {
        InterfaceC0355d0 interfaceC0355d0 = this.f2320x;
        if (interfaceC0355d0 != null) {
            return interfaceC0355d0;
        }
        Fragment fragment = this.f2316t;
        return fragment != null ? fragment.f2089t.m2791x0() : this.f2321y;
    }

    /* JADX INFO: renamed from: y */
    void m2792y() {
        this.f2287E = false;
        this.f2288F = false;
        this.f2295M.m2834r(false);
        m2681S(4);
    }

    /* JADX INFO: renamed from: z */
    void m2793z() {
        this.f2287E = false;
        this.f2288F = false;
        this.f2295M.m2834r(false);
        m2681S(0);
    }

    /* JADX INFO: renamed from: z0 */
    C0410x m2794z0(Fragment fragment) {
        return this.f2295M.m2831o(fragment);
    }

    /* JADX INFO: renamed from: androidx.fragment.app.n$m */
    @SuppressLint({"BanParcelableUsage"})
    static class m implements Parcelable {
        public static final Parcelable.Creator<m> CREATOR = new a();

        /* JADX INFO: renamed from: b */
        String f2334b;

        /* JADX INFO: renamed from: c */
        int f2335c;

        /* JADX INFO: renamed from: androidx.fragment.app.n$m$a */
        class a implements Parcelable.Creator<m> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public m createFromParcel(Parcel parcel) {
                return new m(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public m[] newArray(int i) {
                return new m[i];
            }
        }

        m(String str, int i) {
            this.f2334b = str;
            this.f2335c = i;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f2334b);
            parcel.writeInt(this.f2335c);
        }

        m(Parcel parcel) {
            this.f2334b = parcel.readString();
            this.f2335c = parcel.readInt();
        }
    }
}
