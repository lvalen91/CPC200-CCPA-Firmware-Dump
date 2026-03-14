package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.C0292v;
import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import p016c.p041g.p046g.C0604b;
import p016c.p055j.C0635b;

/* JADX INFO: renamed from: androidx.fragment.app.c0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
abstract class AbstractC0353c0 {

    /* JADX INFO: renamed from: a */
    private final ViewGroup f2192a;

    /* JADX INFO: renamed from: b */
    final ArrayList<e> f2193b = new ArrayList<>();

    /* JADX INFO: renamed from: c */
    final ArrayList<e> f2194c = new ArrayList<>();

    /* JADX INFO: renamed from: d */
    boolean f2195d = false;

    /* JADX INFO: renamed from: e */
    boolean f2196e = false;

    /* JADX INFO: renamed from: androidx.fragment.app.c0$a */
    class a implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ d f2197b;

        a(d dVar) {
            this.f2197b = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AbstractC0353c0.this.f2193b.contains(this.f2197b)) {
                this.f2197b.m2591e().m2600a(this.f2197b.m2592f().f2054I);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.c0$b */
    class b implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ d f2199b;

        b(d dVar) {
            this.f2199b = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC0353c0.this.f2193b.remove(this.f2199b);
            AbstractC0353c0.this.f2194c.remove(this.f2199b);
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.c0$c */
    static /* synthetic */ class c {

        /* JADX INFO: renamed from: a */
        static final /* synthetic */ int[] f2201a;

        /* JADX INFO: renamed from: b */
        static final /* synthetic */ int[] f2202b;

        static {
            int[] iArr = new int[e.b.values().length];
            f2202b = iArr;
            try {
                iArr[e.b.ADDING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2202b[e.b.REMOVING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2202b[e.b.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[e.c.values().length];
            f2201a = iArr2;
            try {
                iArr2[e.c.REMOVED.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2201a[e.c.VISIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2201a[e.c.GONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2201a[e.c.INVISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.c0$d */
    private static class d extends e {

        /* JADX INFO: renamed from: h */
        private final C0373u f2203h;

        d(e.c cVar, e.b bVar, C0373u c0373u, C0604b c0604b) {
            super(cVar, bVar, c0373u.m2852k(), c0604b);
            this.f2203h = c0373u;
        }

        @Override // androidx.fragment.app.AbstractC0353c0.e
        /* JADX INFO: renamed from: c */
        public void mo2586c() {
            super.mo2586c();
            this.f2203h.m2853m();
        }

        @Override // androidx.fragment.app.AbstractC0353c0.e
        /* JADX INFO: renamed from: l */
        void mo2587l() {
            if (m2593g() == e.b.ADDING) {
                Fragment fragmentM2852k = this.f2203h.m2852k();
                View viewFindFocus = fragmentM2852k.f2054I.findFocus();
                if (viewFindFocus != null) {
                    fragmentM2852k.m2432T1(viewFindFocus);
                    if (AbstractC0366n.m2677E0(2)) {
                        String str = "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + fragmentM2852k;
                    }
                }
                View viewM2409L1 = m2592f().m2409L1();
                if (viewM2409L1.getParent() == null) {
                    this.f2203h.m2843b();
                    viewM2409L1.setAlpha(CropImageView.DEFAULT_ASPECT_RATIO);
                }
                if (viewM2409L1.getAlpha() == CropImageView.DEFAULT_ASPECT_RATIO && viewM2409L1.getVisibility() == 0) {
                    viewM2409L1.setVisibility(4);
                }
                viewM2409L1.setAlpha(fragmentM2852k.m2453b0());
            }
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.c0$e */
    static class e {

        /* JADX INFO: renamed from: a */
        private c f2204a;

        /* JADX INFO: renamed from: b */
        private b f2205b;

        /* JADX INFO: renamed from: c */
        private final Fragment f2206c;

        /* JADX INFO: renamed from: d */
        private final List<Runnable> f2207d = new ArrayList();

        /* JADX INFO: renamed from: e */
        private final HashSet<C0604b> f2208e = new HashSet<>();

        /* JADX INFO: renamed from: f */
        private boolean f2209f = false;

        /* JADX INFO: renamed from: g */
        private boolean f2210g = false;

        /* JADX INFO: renamed from: androidx.fragment.app.c0$e$a */
        class a implements C0604b.a {
            a() {
            }

            @Override // p016c.p041g.p046g.C0604b.a
            /* JADX INFO: renamed from: a */
            public void mo2557a() {
                e.this.m2589b();
            }
        }

        /* JADX INFO: renamed from: androidx.fragment.app.c0$e$b */
        enum b {
            NONE,
            ADDING,
            REMOVING
        }

        /* JADX INFO: renamed from: androidx.fragment.app.c0$e$c */
        enum c {
            REMOVED,
            VISIBLE,
            GONE,
            INVISIBLE;

            /* JADX INFO: renamed from: b */
            static c m2598b(int i) {
                if (i == 0) {
                    return VISIBLE;
                }
                if (i == 4) {
                    return INVISIBLE;
                }
                if (i == 8) {
                    return GONE;
                }
                throw new IllegalArgumentException("Unknown visibility " + i);
            }

            /* JADX INFO: renamed from: c */
            static c m2599c(View view) {
                return (view.getAlpha() == CropImageView.DEFAULT_ASPECT_RATIO && view.getVisibility() == 0) ? INVISIBLE : m2598b(view.getVisibility());
            }

            /* JADX INFO: renamed from: a */
            void m2600a(View view) {
                int i = c.f2201a[ordinal()];
                if (i == 1) {
                    ViewGroup viewGroup = (ViewGroup) view.getParent();
                    if (viewGroup != null) {
                        if (AbstractC0366n.m2677E0(2)) {
                            String str = "SpecialEffectsController: Removing view " + view + " from container " + viewGroup;
                        }
                        viewGroup.removeView(view);
                        return;
                    }
                    return;
                }
                if (i == 2) {
                    if (AbstractC0366n.m2677E0(2)) {
                        String str2 = "SpecialEffectsController: Setting view " + view + " to VISIBLE";
                    }
                    view.setVisibility(0);
                    return;
                }
                if (i == 3) {
                    if (AbstractC0366n.m2677E0(2)) {
                        String str3 = "SpecialEffectsController: Setting view " + view + " to GONE";
                    }
                    view.setVisibility(8);
                    return;
                }
                if (i != 4) {
                    return;
                }
                if (AbstractC0366n.m2677E0(2)) {
                    String str4 = "SpecialEffectsController: Setting view " + view + " to INVISIBLE";
                }
                view.setVisibility(4);
            }
        }

        e(c cVar, b bVar, Fragment fragment, C0604b c0604b) {
            this.f2204a = cVar;
            this.f2205b = bVar;
            this.f2206c = fragment;
            c0604b.m4755c(new a());
        }

        /* JADX INFO: renamed from: a */
        final void m2588a(Runnable runnable) {
            this.f2207d.add(runnable);
        }

        /* JADX INFO: renamed from: b */
        final void m2589b() {
            if (m2594h()) {
                return;
            }
            this.f2209f = true;
            if (this.f2208e.isEmpty()) {
                mo2586c();
                return;
            }
            Iterator it = new ArrayList(this.f2208e).iterator();
            while (it.hasNext()) {
                ((C0604b) it.next()).m4753a();
            }
        }

        /* JADX INFO: renamed from: c */
        public void mo2586c() {
            if (this.f2210g) {
                return;
            }
            if (AbstractC0366n.m2677E0(2)) {
                String str = "SpecialEffectsController: " + this + " has called complete.";
            }
            this.f2210g = true;
            Iterator<Runnable> it = this.f2207d.iterator();
            while (it.hasNext()) {
                it.next().run();
            }
        }

        /* JADX INFO: renamed from: d */
        public final void m2590d(C0604b c0604b) {
            if (this.f2208e.remove(c0604b) && this.f2208e.isEmpty()) {
                mo2586c();
            }
        }

        /* JADX INFO: renamed from: e */
        public c m2591e() {
            return this.f2204a;
        }

        /* JADX INFO: renamed from: f */
        public final Fragment m2592f() {
            return this.f2206c;
        }

        /* JADX INFO: renamed from: g */
        b m2593g() {
            return this.f2205b;
        }

        /* JADX INFO: renamed from: h */
        final boolean m2594h() {
            return this.f2209f;
        }

        /* JADX INFO: renamed from: i */
        final boolean m2595i() {
            return this.f2210g;
        }

        /* JADX INFO: renamed from: j */
        public final void m2596j(C0604b c0604b) {
            mo2587l();
            this.f2208e.add(c0604b);
        }

        /* JADX INFO: renamed from: k */
        final void m2597k(c cVar, b bVar) {
            int i = c.f2202b[bVar.ordinal()];
            if (i == 1) {
                if (this.f2204a == c.REMOVED) {
                    if (AbstractC0366n.m2677E0(2)) {
                        String str = "SpecialEffectsController: For fragment " + this.f2206c + " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = " + this.f2205b + " to ADDING.";
                    }
                    this.f2204a = c.VISIBLE;
                    this.f2205b = b.ADDING;
                    return;
                }
                return;
            }
            if (i == 2) {
                if (AbstractC0366n.m2677E0(2)) {
                    String str2 = "SpecialEffectsController: For fragment " + this.f2206c + " mFinalState = " + this.f2204a + " -> REMOVED. mLifecycleImpact  = " + this.f2205b + " to REMOVING.";
                }
                this.f2204a = c.REMOVED;
                this.f2205b = b.REMOVING;
                return;
            }
            if (i == 3 && this.f2204a != c.REMOVED) {
                if (AbstractC0366n.m2677E0(2)) {
                    String str3 = "SpecialEffectsController: For fragment " + this.f2206c + " mFinalState = " + this.f2204a + " -> " + cVar + ". ";
                }
                this.f2204a = cVar;
            }
        }

        /* JADX INFO: renamed from: l */
        void mo2587l() {
        }

        public String toString() {
            return "Operation {" + Integer.toHexString(System.identityHashCode(this)) + "} {mFinalState = " + this.f2204a + "} {mLifecycleImpact = " + this.f2205b + "} {mFragment = " + this.f2206c + "}";
        }
    }

    AbstractC0353c0(ViewGroup viewGroup) {
        this.f2192a = viewGroup;
    }

    /* JADX INFO: renamed from: a */
    private void m2569a(e.c cVar, e.b bVar, C0373u c0373u) {
        synchronized (this.f2193b) {
            C0604b c0604b = new C0604b();
            e eVarM2570h = m2570h(c0373u.m2852k());
            if (eVarM2570h != null) {
                eVarM2570h.m2597k(cVar, bVar);
                return;
            }
            d dVar = new d(cVar, bVar, c0373u, c0604b);
            this.f2193b.add(dVar);
            dVar.m2588a(new a(dVar));
            dVar.m2588a(new b(dVar));
        }
    }

    /* JADX INFO: renamed from: h */
    private e m2570h(Fragment fragment) {
        for (e eVar : this.f2193b) {
            if (eVar.m2592f().equals(fragment) && !eVar.m2594h()) {
                return eVar;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: i */
    private e m2571i(Fragment fragment) {
        for (e eVar : this.f2194c) {
            if (eVar.m2592f().equals(fragment) && !eVar.m2594h()) {
                return eVar;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: n */
    static AbstractC0353c0 m2572n(ViewGroup viewGroup, AbstractC0366n abstractC0366n) {
        return m2573o(viewGroup, abstractC0366n.m2791x0());
    }

    /* JADX INFO: renamed from: o */
    static AbstractC0353c0 m2573o(ViewGroup viewGroup, InterfaceC0355d0 interfaceC0355d0) {
        Object tag = viewGroup.getTag(C0635b.special_effects_controller_view_tag);
        if (tag instanceof AbstractC0353c0) {
            return (AbstractC0353c0) tag;
        }
        AbstractC0353c0 abstractC0353c0Mo2617a = interfaceC0355d0.mo2617a(viewGroup);
        viewGroup.setTag(C0635b.special_effects_controller_view_tag, abstractC0353c0Mo2617a);
        return abstractC0353c0Mo2617a;
    }

    /* JADX INFO: renamed from: q */
    private void m2574q() {
        for (e eVar : this.f2193b) {
            if (eVar.m2593g() == e.b.ADDING) {
                eVar.m2597k(e.c.m2598b(eVar.m2592f().m2409L1().getVisibility()), e.b.NONE);
            }
        }
    }

    /* JADX INFO: renamed from: b */
    void m2575b(e.c cVar, C0373u c0373u) {
        if (AbstractC0366n.m2677E0(2)) {
            String str = "SpecialEffectsController: Enqueuing add operation for fragment " + c0373u.m2852k();
        }
        m2569a(cVar, e.b.ADDING, c0373u);
    }

    /* JADX INFO: renamed from: c */
    void m2576c(C0373u c0373u) {
        if (AbstractC0366n.m2677E0(2)) {
            String str = "SpecialEffectsController: Enqueuing hide operation for fragment " + c0373u.m2852k();
        }
        m2569a(e.c.GONE, e.b.NONE, c0373u);
    }

    /* JADX INFO: renamed from: d */
    void m2577d(C0373u c0373u) {
        if (AbstractC0366n.m2677E0(2)) {
            String str = "SpecialEffectsController: Enqueuing remove operation for fragment " + c0373u.m2852k();
        }
        m2569a(e.c.REMOVED, e.b.REMOVING, c0373u);
    }

    /* JADX INFO: renamed from: e */
    void m2578e(C0373u c0373u) {
        if (AbstractC0366n.m2677E0(2)) {
            String str = "SpecialEffectsController: Enqueuing show operation for fragment " + c0373u.m2852k();
        }
        m2569a(e.c.VISIBLE, e.b.NONE, c0373u);
    }

    /* JADX INFO: renamed from: f */
    abstract void mo2552f(List<e> list, boolean z);

    /* JADX INFO: renamed from: g */
    void m2579g() {
        if (this.f2196e) {
            return;
        }
        if (!C0292v.m2068S(this.f2192a)) {
            m2580j();
            this.f2195d = false;
            return;
        }
        synchronized (this.f2193b) {
            if (!this.f2193b.isEmpty()) {
                ArrayList<e> arrayList = new ArrayList(this.f2194c);
                this.f2194c.clear();
                for (e eVar : arrayList) {
                    if (AbstractC0366n.m2677E0(2)) {
                        String str = "SpecialEffectsController: Cancelling operation " + eVar;
                    }
                    eVar.m2589b();
                    if (!eVar.m2595i()) {
                        this.f2194c.add(eVar);
                    }
                }
                m2574q();
                ArrayList arrayList2 = new ArrayList(this.f2193b);
                this.f2193b.clear();
                this.f2194c.addAll(arrayList2);
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((e) it.next()).mo2587l();
                }
                mo2552f(arrayList2, this.f2195d);
                this.f2195d = false;
            }
        }
    }

    /* JADX INFO: renamed from: j */
    void m2580j() {
        boolean zM2068S = C0292v.m2068S(this.f2192a);
        synchronized (this.f2193b) {
            m2574q();
            Iterator<e> it = this.f2193b.iterator();
            while (it.hasNext()) {
                it.next().mo2587l();
            }
            for (e eVar : new ArrayList(this.f2194c)) {
                if (AbstractC0366n.m2677E0(2)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("SpecialEffectsController: ");
                    sb.append(zM2068S ? BuildConfig.FLAVOR : "Container " + this.f2192a + " is not attached to window. ");
                    sb.append("Cancelling running operation ");
                    sb.append(eVar);
                    sb.toString();
                }
                eVar.m2589b();
            }
            for (e eVar2 : new ArrayList(this.f2193b)) {
                if (AbstractC0366n.m2677E0(2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("SpecialEffectsController: ");
                    sb2.append(zM2068S ? BuildConfig.FLAVOR : "Container " + this.f2192a + " is not attached to window. ");
                    sb2.append("Cancelling pending operation ");
                    sb2.append(eVar2);
                    sb2.toString();
                }
                eVar2.m2589b();
            }
        }
    }

    /* JADX INFO: renamed from: k */
    void m2581k() {
        if (this.f2196e) {
            this.f2196e = false;
            m2579g();
        }
    }

    /* JADX INFO: renamed from: l */
    e.b m2582l(C0373u c0373u) {
        e eVarM2570h = m2570h(c0373u.m2852k());
        if (eVarM2570h != null) {
            return eVarM2570h.m2593g();
        }
        e eVarM2571i = m2571i(c0373u.m2852k());
        if (eVarM2571i != null) {
            return eVarM2571i.m2593g();
        }
        return null;
    }

    /* JADX INFO: renamed from: m */
    public ViewGroup m2583m() {
        return this.f2192a;
    }

    /* JADX INFO: renamed from: p */
    void m2584p() {
        synchronized (this.f2193b) {
            m2574q();
            this.f2196e = false;
            int size = this.f2193b.size() - 1;
            while (true) {
                if (size < 0) {
                    break;
                }
                e eVar = this.f2193b.get(size);
                e.c cVarM2599c = e.c.m2599c(eVar.m2592f().f2054I);
                if (eVar.m2591e() == e.c.VISIBLE && cVarM2599c != e.c.VISIBLE) {
                    this.f2196e = eVar.m2592f().m2496v0();
                    break;
                }
                size--;
            }
        }
    }

    /* JADX INFO: renamed from: r */
    void m2585r(boolean z) {
        this.f2195d = z;
    }
}
