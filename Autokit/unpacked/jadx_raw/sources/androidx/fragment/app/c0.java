package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
import c.g.g.b;
import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
abstract class c0 {
    private final ViewGroup a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ArrayList<e> f694b = new ArrayList<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final ArrayList<e> f695c = new ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f696d = false;
    boolean e = false;

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ d f697b;

        a(d dVar) {
            this.f697b = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c0.this.f694b.contains(this.f697b)) {
                this.f697b.e().a(this.f697b.f().I);
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ d f699b;

        b(d dVar) {
            this.f699b = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            c0.this.f694b.remove(this.f699b);
            c0.this.f695c.remove(this.f699b);
        }
    }

    static /* synthetic */ class c {
        static final /* synthetic */ int[] a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f701b;

        static {
            int[] iArr = new int[e.b.values().length];
            f701b = iArr;
            try {
                iArr[e.b.ADDING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f701b[e.b.REMOVING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f701b[e.b.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[e.c.values().length];
            a = iArr2;
            try {
                iArr2[e.c.REMOVED.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[e.c.VISIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[e.c.GONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[e.c.INVISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    private static class d extends e {
        private final u h;

        d(e.c cVar, e.b bVar, u uVar, c.g.g.b bVar2) {
            super(cVar, bVar, uVar.k(), bVar2);
            this.h = uVar;
        }

        @Override // androidx.fragment.app.c0.e
        public void c() {
            super.c();
            this.h.m();
        }

        @Override // androidx.fragment.app.c0.e
        void l() {
            if (g() == e.b.ADDING) {
                Fragment fragmentK = this.h.k();
                View viewFindFocus = fragmentK.I.findFocus();
                if (viewFindFocus != null) {
                    fragmentK.T1(viewFindFocus);
                    if (n.E0(2)) {
                        String str = "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + fragmentK;
                    }
                }
                View viewL1 = f().L1();
                if (viewL1.getParent() == null) {
                    this.h.b();
                    viewL1.setAlpha(CropImageView.DEFAULT_ASPECT_RATIO);
                }
                if (viewL1.getAlpha() == CropImageView.DEFAULT_ASPECT_RATIO && viewL1.getVisibility() == 0) {
                    viewL1.setVisibility(4);
                }
                viewL1.setAlpha(fragmentK.b0());
            }
        }
    }

    static class e {
        private c a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private b f702b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Fragment f703c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final List<Runnable> f704d = new ArrayList();
        private final HashSet<c.g.g.b> e = new HashSet<>();
        private boolean f = false;
        private boolean g = false;

        class a implements b.a {
            a() {
            }

            @Override // c.g.g.b.a
            public void a() {
                e.this.b();
            }
        }

        enum b {
            NONE,
            ADDING,
            REMOVING
        }

        enum c {
            REMOVED,
            VISIBLE,
            GONE,
            INVISIBLE;

            static c b(int i) {
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

            static c c(View view) {
                return (view.getAlpha() == CropImageView.DEFAULT_ASPECT_RATIO && view.getVisibility() == 0) ? INVISIBLE : b(view.getVisibility());
            }

            void a(View view) {
                int i = c.a[ordinal()];
                if (i == 1) {
                    ViewGroup viewGroup = (ViewGroup) view.getParent();
                    if (viewGroup != null) {
                        if (n.E0(2)) {
                            String str = "SpecialEffectsController: Removing view " + view + " from container " + viewGroup;
                        }
                        viewGroup.removeView(view);
                        return;
                    }
                    return;
                }
                if (i == 2) {
                    if (n.E0(2)) {
                        String str2 = "SpecialEffectsController: Setting view " + view + " to VISIBLE";
                    }
                    view.setVisibility(0);
                    return;
                }
                if (i == 3) {
                    if (n.E0(2)) {
                        String str3 = "SpecialEffectsController: Setting view " + view + " to GONE";
                    }
                    view.setVisibility(8);
                    return;
                }
                if (i != 4) {
                    return;
                }
                if (n.E0(2)) {
                    String str4 = "SpecialEffectsController: Setting view " + view + " to INVISIBLE";
                }
                view.setVisibility(4);
            }
        }

        e(c cVar, b bVar, Fragment fragment, c.g.g.b bVar2) {
            this.a = cVar;
            this.f702b = bVar;
            this.f703c = fragment;
            bVar2.c(new a());
        }

        final void a(Runnable runnable) {
            this.f704d.add(runnable);
        }

        final void b() {
            if (h()) {
                return;
            }
            this.f = true;
            if (this.e.isEmpty()) {
                c();
                return;
            }
            Iterator it = new ArrayList(this.e).iterator();
            while (it.hasNext()) {
                ((c.g.g.b) it.next()).a();
            }
        }

        public void c() {
            if (this.g) {
                return;
            }
            if (n.E0(2)) {
                String str = "SpecialEffectsController: " + this + " has called complete.";
            }
            this.g = true;
            Iterator<Runnable> it = this.f704d.iterator();
            while (it.hasNext()) {
                it.next().run();
            }
        }

        public final void d(c.g.g.b bVar) {
            if (this.e.remove(bVar) && this.e.isEmpty()) {
                c();
            }
        }

        public c e() {
            return this.a;
        }

        public final Fragment f() {
            return this.f703c;
        }

        b g() {
            return this.f702b;
        }

        final boolean h() {
            return this.f;
        }

        final boolean i() {
            return this.g;
        }

        public final void j(c.g.g.b bVar) {
            l();
            this.e.add(bVar);
        }

        final void k(c cVar, b bVar) {
            int i = c.f701b[bVar.ordinal()];
            if (i == 1) {
                if (this.a == c.REMOVED) {
                    if (n.E0(2)) {
                        String str = "SpecialEffectsController: For fragment " + this.f703c + " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = " + this.f702b + " to ADDING.";
                    }
                    this.a = c.VISIBLE;
                    this.f702b = b.ADDING;
                    return;
                }
                return;
            }
            if (i == 2) {
                if (n.E0(2)) {
                    String str2 = "SpecialEffectsController: For fragment " + this.f703c + " mFinalState = " + this.a + " -> REMOVED. mLifecycleImpact  = " + this.f702b + " to REMOVING.";
                }
                this.a = c.REMOVED;
                this.f702b = b.REMOVING;
                return;
            }
            if (i == 3 && this.a != c.REMOVED) {
                if (n.E0(2)) {
                    String str3 = "SpecialEffectsController: For fragment " + this.f703c + " mFinalState = " + this.a + " -> " + cVar + ". ";
                }
                this.a = cVar;
            }
        }

        void l() {
        }

        public String toString() {
            return "Operation {" + Integer.toHexString(System.identityHashCode(this)) + "} {mFinalState = " + this.a + "} {mLifecycleImpact = " + this.f702b + "} {mFragment = " + this.f703c + "}";
        }
    }

    c0(ViewGroup viewGroup) {
        this.a = viewGroup;
    }

    private void a(e.c cVar, e.b bVar, u uVar) {
        synchronized (this.f694b) {
            c.g.g.b bVar2 = new c.g.g.b();
            e eVarH = h(uVar.k());
            if (eVarH != null) {
                eVarH.k(cVar, bVar);
                return;
            }
            d dVar = new d(cVar, bVar, uVar, bVar2);
            this.f694b.add(dVar);
            dVar.a(new a(dVar));
            dVar.a(new b(dVar));
        }
    }

    private e h(Fragment fragment) {
        for (e eVar : this.f694b) {
            if (eVar.f().equals(fragment) && !eVar.h()) {
                return eVar;
            }
        }
        return null;
    }

    private e i(Fragment fragment) {
        for (e eVar : this.f695c) {
            if (eVar.f().equals(fragment) && !eVar.h()) {
                return eVar;
            }
        }
        return null;
    }

    static c0 n(ViewGroup viewGroup, n nVar) {
        return o(viewGroup, nVar.x0());
    }

    static c0 o(ViewGroup viewGroup, d0 d0Var) {
        Object tag = viewGroup.getTag(c.j.b.special_effects_controller_view_tag);
        if (tag instanceof c0) {
            return (c0) tag;
        }
        c0 c0VarA = d0Var.a(viewGroup);
        viewGroup.setTag(c.j.b.special_effects_controller_view_tag, c0VarA);
        return c0VarA;
    }

    private void q() {
        for (e eVar : this.f694b) {
            if (eVar.g() == e.b.ADDING) {
                eVar.k(e.c.b(eVar.f().L1().getVisibility()), e.b.NONE);
            }
        }
    }

    void b(e.c cVar, u uVar) {
        if (n.E0(2)) {
            String str = "SpecialEffectsController: Enqueuing add operation for fragment " + uVar.k();
        }
        a(cVar, e.b.ADDING, uVar);
    }

    void c(u uVar) {
        if (n.E0(2)) {
            String str = "SpecialEffectsController: Enqueuing hide operation for fragment " + uVar.k();
        }
        a(e.c.GONE, e.b.NONE, uVar);
    }

    void d(u uVar) {
        if (n.E0(2)) {
            String str = "SpecialEffectsController: Enqueuing remove operation for fragment " + uVar.k();
        }
        a(e.c.REMOVED, e.b.REMOVING, uVar);
    }

    void e(u uVar) {
        if (n.E0(2)) {
            String str = "SpecialEffectsController: Enqueuing show operation for fragment " + uVar.k();
        }
        a(e.c.VISIBLE, e.b.NONE, uVar);
    }

    abstract void f(List<e> list, boolean z);

    void g() {
        if (this.e) {
            return;
        }
        if (!androidx.core.view.v.S(this.a)) {
            j();
            this.f696d = false;
            return;
        }
        synchronized (this.f694b) {
            if (!this.f694b.isEmpty()) {
                ArrayList<e> arrayList = new ArrayList(this.f695c);
                this.f695c.clear();
                for (e eVar : arrayList) {
                    if (n.E0(2)) {
                        String str = "SpecialEffectsController: Cancelling operation " + eVar;
                    }
                    eVar.b();
                    if (!eVar.i()) {
                        this.f695c.add(eVar);
                    }
                }
                q();
                ArrayList arrayList2 = new ArrayList(this.f694b);
                this.f694b.clear();
                this.f695c.addAll(arrayList2);
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((e) it.next()).l();
                }
                f(arrayList2, this.f696d);
                this.f696d = false;
            }
        }
    }

    void j() {
        boolean zS = androidx.core.view.v.S(this.a);
        synchronized (this.f694b) {
            q();
            Iterator<e> it = this.f694b.iterator();
            while (it.hasNext()) {
                it.next().l();
            }
            for (e eVar : new ArrayList(this.f695c)) {
                if (n.E0(2)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("SpecialEffectsController: ");
                    sb.append(zS ? BuildConfig.FLAVOR : "Container " + this.a + " is not attached to window. ");
                    sb.append("Cancelling running operation ");
                    sb.append(eVar);
                    sb.toString();
                }
                eVar.b();
            }
            for (e eVar2 : new ArrayList(this.f694b)) {
                if (n.E0(2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("SpecialEffectsController: ");
                    sb2.append(zS ? BuildConfig.FLAVOR : "Container " + this.a + " is not attached to window. ");
                    sb2.append("Cancelling pending operation ");
                    sb2.append(eVar2);
                    sb2.toString();
                }
                eVar2.b();
            }
        }
    }

    void k() {
        if (this.e) {
            this.e = false;
            g();
        }
    }

    e.b l(u uVar) {
        e eVarH = h(uVar.k());
        if (eVarH != null) {
            return eVarH.g();
        }
        e eVarI = i(uVar.k());
        if (eVarI != null) {
            return eVarI.g();
        }
        return null;
    }

    public ViewGroup m() {
        return this.a;
    }

    void p() {
        synchronized (this.f694b) {
            q();
            this.e = false;
            int size = this.f694b.size() - 1;
            while (true) {
                if (size < 0) {
                    break;
                }
                e eVar = this.f694b.get(size);
                e.c cVarC = e.c.c(eVar.f().I);
                if (eVar.e() == e.c.VISIBLE && cVarC != e.c.VISIBLE) {
                    this.e = eVar.f().v0();
                    break;
                }
                size--;
            }
        }
    }

    void r(boolean z) {
        this.f696d = z;
    }
}
