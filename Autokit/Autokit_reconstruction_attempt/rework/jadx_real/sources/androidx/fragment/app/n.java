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
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.e;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.f;
import androidx.fragment.app.w;
import androidx.fragment.app.x;
import androidx.lifecycle.f;
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

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public abstract class n {
    private static boolean O = false;
    static boolean P = true;
    private androidx.activity.result.c<androidx.activity.result.e> A;
    private androidx.activity.result.c<String[]> B;
    private boolean D;
    private boolean E;
    private boolean F;
    private boolean G;
    private boolean H;
    private ArrayList<androidx.fragment.app.a> I;
    private ArrayList<Boolean> J;
    private ArrayList<Fragment> K;
    private ArrayList<q> L;
    private androidx.fragment.app.q M;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f737b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ArrayList<androidx.fragment.app.a> f739d;
    private ArrayList<Fragment> e;
    private OnBackPressedDispatcher g;
    private ArrayList<InterfaceC0033n> l;
    private androidx.fragment.app.k<?> r;
    private androidx.fragment.app.g s;
    private Fragment t;
    Fragment u;
    private androidx.activity.result.c<Intent> z;
    private final ArrayList<o> a = new ArrayList<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final v f738c = new v();
    private final androidx.fragment.app.l f = new androidx.fragment.app.l(this);
    private final androidx.activity.b h = new c(false);
    private final AtomicInteger i = new AtomicInteger();
    private final Map<String, Bundle> j = Collections.synchronizedMap(new HashMap());
    private final Map<String, Object> k = Collections.synchronizedMap(new HashMap());
    private Map<Fragment, HashSet<c.g.g.b>> m = Collections.synchronizedMap(new HashMap());
    private final x.g n = new d();
    private final androidx.fragment.app.m o = new androidx.fragment.app.m(this);
    private final CopyOnWriteArrayList<r> p = new CopyOnWriteArrayList<>();
    int q = -1;
    private androidx.fragment.app.j v = null;
    private androidx.fragment.app.j w = new e();
    private d0 x = null;
    private d0 y = new f(this);
    ArrayDeque<m> C = new ArrayDeque<>();
    private Runnable N = new g();

    class a implements androidx.activity.result.b<androidx.activity.result.a> {
        a() {
        }

        @Override // androidx.activity.result.b
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(androidx.activity.result.a aVar) {
            m mVarPollFirst = n.this.C.pollFirst();
            if (mVarPollFirst == null) {
                String str = "No IntentSenders were started for " + this;
                return;
            }
            String str2 = mVarPollFirst.f746b;
            int i = mVarPollFirst.f747c;
            Fragment fragmentI = n.this.f738c.i(str2);
            if (fragmentI != null) {
                fragmentI.C0(i, aVar.k(), aVar.j());
                return;
            }
            String str3 = "Intent Sender result delivered for unknown Fragment " + str2;
        }
    }

    class b implements androidx.activity.result.b<Map<String, Boolean>> {
        b() {
        }

        @Override // androidx.activity.result.b
        @SuppressLint({"SyntheticAccessor"})
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(Map<String, Boolean> map) {
            String[] strArr = (String[]) map.keySet().toArray(new String[0]);
            ArrayList arrayList = new ArrayList(map.values());
            int[] iArr = new int[arrayList.size()];
            for (int i = 0; i < arrayList.size(); i++) {
                iArr[i] = ((Boolean) arrayList.get(i)).booleanValue() ? 0 : -1;
            }
            m mVarPollFirst = n.this.C.pollFirst();
            if (mVarPollFirst == null) {
                String str = "No permissions were requested for " + this;
                return;
            }
            String str2 = mVarPollFirst.f746b;
            int i2 = mVarPollFirst.f747c;
            Fragment fragmentI = n.this.f738c.i(str2);
            if (fragmentI != null) {
                fragmentI.b1(i2, strArr, iArr);
                return;
            }
            String str3 = "Permission request result delivered for unknown Fragment " + str2;
        }
    }

    class c extends androidx.activity.b {
        c(boolean z) {
            super(z);
        }

        @Override // androidx.activity.b
        public void b() {
            n.this.A0();
        }
    }

    class d implements x.g {
        d() {
        }

        @Override // androidx.fragment.app.x.g
        public void a(Fragment fragment, c.g.g.b bVar) {
            if (bVar.b()) {
                return;
            }
            n.this.Z0(fragment, bVar);
        }

        @Override // androidx.fragment.app.x.g
        public void b(Fragment fragment, c.g.g.b bVar) {
            n.this.f(fragment, bVar);
        }
    }

    class e extends androidx.fragment.app.j {
        e() {
        }

        @Override // androidx.fragment.app.j
        public Fragment a(ClassLoader classLoader, String str) {
            return n.this.s0().b(n.this.s0().f(), str, null);
        }
    }

    class f implements d0 {
        f(n nVar) {
        }

        @Override // androidx.fragment.app.d0
        public c0 a(ViewGroup viewGroup) {
            return new androidx.fragment.app.c(viewGroup);
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n.this.a0(true);
        }
    }

    class h extends AnimatorListenerAdapter {
        final /* synthetic */ ViewGroup a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f743b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Fragment f744c;

        h(n nVar, ViewGroup viewGroup, View view, Fragment fragment) {
            this.a = viewGroup;
            this.f743b = view;
            this.f744c = fragment;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.a.endViewTransition(this.f743b);
            animator.removeListener(this);
            Fragment fragment = this.f744c;
            View view = fragment.I;
            if (view == null || !fragment.A) {
                return;
            }
            view.setVisibility(8);
        }
    }

    class i implements r {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Fragment f745b;

        i(n nVar, Fragment fragment) {
            this.f745b = fragment;
        }

        @Override // androidx.fragment.app.r
        public void a(n nVar, Fragment fragment) {
            this.f745b.F0(fragment);
        }
    }

    class j implements androidx.activity.result.b<androidx.activity.result.a> {
        j() {
        }

        @Override // androidx.activity.result.b
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(androidx.activity.result.a aVar) {
            m mVarPollFirst = n.this.C.pollFirst();
            if (mVarPollFirst == null) {
                String str = "No Activities were started for result for " + this;
                return;
            }
            String str2 = mVarPollFirst.f746b;
            int i = mVarPollFirst.f747c;
            Fragment fragmentI = n.this.f738c.i(str2);
            if (fragmentI != null) {
                fragmentI.C0(i, aVar.k(), aVar.j());
                return;
            }
            String str3 = "Activity result delivered for unknown Fragment " + str2;
        }
    }

    static class k extends androidx.activity.result.f.a<androidx.activity.result.e, androidx.activity.result.a> {
        k() {
        }

        @Override // androidx.activity.result.f.a
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Intent a(Context context, androidx.activity.result.e eVar) {
            Bundle bundleExtra;
            Intent intent = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST");
            Intent intentJ = eVar.j();
            if (intentJ != null && (bundleExtra = intentJ.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) != null) {
                intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundleExtra);
                intentJ.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                if (intentJ.getBooleanExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", false)) {
                    e.b bVar = new e.b(eVar.m());
                    bVar.b(null);
                    bVar.c(eVar.l(), eVar.k());
                    eVar = bVar.a();
                }
            }
            intent.putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", eVar);
            if (n.E0(2)) {
                String str = "CreateIntent created the following intent: " + intent;
            }
            return intent;
        }

        @Override // androidx.activity.result.f.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public androidx.activity.result.a c(int i, Intent intent) {
            return new androidx.activity.result.a(i, intent);
        }
    }

    public static abstract class l {
        @Deprecated
        public abstract void a(n nVar, Fragment fragment, Bundle bundle);

        public abstract void b(n nVar, Fragment fragment, Context context);

        public abstract void c(n nVar, Fragment fragment, Bundle bundle);

        public abstract void d(n nVar, Fragment fragment);

        public abstract void e(n nVar, Fragment fragment);

        public abstract void f(n nVar, Fragment fragment);

        public abstract void g(n nVar, Fragment fragment, Context context);

        public abstract void h(n nVar, Fragment fragment, Bundle bundle);

        public abstract void i(n nVar, Fragment fragment);

        public abstract void j(n nVar, Fragment fragment, Bundle bundle);

        public abstract void k(n nVar, Fragment fragment);

        public abstract void l(n nVar, Fragment fragment);

        public abstract void m(n nVar, Fragment fragment, View view, Bundle bundle);

        public abstract void n(n nVar, Fragment fragment);
    }

    /* JADX INFO: renamed from: androidx.fragment.app.n$n, reason: collision with other inner class name */
    public interface InterfaceC0033n {
        void a();
    }

    interface o {
        boolean a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2);
    }

    private class p implements o {
        final String a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f748b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final int f749c;

        p(String str, int i, int i2) {
            this.a = str;
            this.f748b = i;
            this.f749c = i2;
        }

        @Override // androidx.fragment.app.n.o
        public boolean a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
            Fragment fragment = n.this.u;
            if (fragment == null || this.f748b >= 0 || this.a != null || !fragment.J().V0()) {
                return n.this.X0(arrayList, arrayList2, this.a, this.f748b, this.f749c);
            }
            return false;
        }
    }

    static class q implements Fragment.k {
        final boolean a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final androidx.fragment.app.a f751b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f752c;

        q(androidx.fragment.app.a aVar, boolean z) {
            this.a = z;
            this.f751b = aVar;
        }

        @Override // androidx.fragment.app.Fragment.k
        public void a() {
            int i = this.f752c - 1;
            this.f752c = i;
            if (i != 0) {
                return;
            }
            this.f751b.r.g1();
        }

        @Override // androidx.fragment.app.Fragment.k
        public void b() {
            this.f752c++;
        }

        void c() {
            androidx.fragment.app.a aVar = this.f751b;
            aVar.r.t(aVar, this.a, false, false);
        }

        void d() {
            boolean z = this.f752c > 0;
            for (Fragment fragment : this.f751b.r.r0()) {
                fragment.W1(null);
                if (z && fragment.v0()) {
                    fragment.f2();
                }
            }
            androidx.fragment.app.a aVar = this.f751b;
            aVar.r.t(aVar, this.a, !z, true);
        }

        public boolean e() {
            return this.f752c == 0;
        }
    }

    static boolean E0(int i2) {
        return O || Log.isLoggable("FragmentManager", i2);
    }

    private boolean F0(Fragment fragment) {
        return (fragment.E && fragment.F) || fragment.v.n();
    }

    private void L(Fragment fragment) {
        if (fragment == null || !fragment.equals(f0(fragment.g))) {
            return;
        }
        fragment.A1();
    }

    private void M0(c.d.b<Fragment> bVar) {
        int size = bVar.size();
        for (int i2 = 0; i2 < size; i2++) {
            Fragment fragmentH = bVar.h(i2);
            if (!fragmentH.m) {
                View viewL1 = fragmentH.L1();
                fragmentH.O = viewL1.getAlpha();
                viewL1.setAlpha(CropImageView.DEFAULT_ASPECT_RATIO);
            }
        }
    }

    private void S(int i2) {
        try {
            this.f737b = true;
            this.f738c.d(i2);
            O0(i2, false);
            if (P) {
                Iterator<c0> it = r().iterator();
                while (it.hasNext()) {
                    it.next().j();
                }
            }
            this.f737b = false;
            a0(true);
        } catch (Throwable th) {
            this.f737b = false;
            throw th;
        }
    }

    private void V() {
        if (this.H) {
            this.H = false;
            m1();
        }
    }

    private boolean W0(String str, int i2, int i3) {
        a0(false);
        Z(true);
        Fragment fragment = this.u;
        if (fragment != null && i2 < 0 && str == null && fragment.J().V0()) {
            return true;
        }
        boolean zX0 = X0(this.I, this.J, str, i2, i3);
        if (zX0) {
            this.f737b = true;
            try {
                b1(this.I, this.J);
            } finally {
                p();
            }
        }
        n1();
        V();
        this.f738c.b();
        return zX0;
    }

    private void X() {
        if (P) {
            Iterator<c0> it = r().iterator();
            while (it.hasNext()) {
                it.next().j();
            }
        } else {
            if (this.m.isEmpty()) {
                return;
            }
            for (Fragment fragment : this.m.keySet()) {
                m(fragment);
                P0(fragment);
            }
        }
    }

    private int Y0(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3, c.d.b<Fragment> bVar) {
        int i4 = i3;
        for (int i5 = i3 - 1; i5 >= i2; i5--) {
            androidx.fragment.app.a aVar = arrayList.get(i5);
            boolean zBooleanValue = arrayList2.get(i5).booleanValue();
            if (aVar.F() && !aVar.D(arrayList, i5 + 1, i3)) {
                if (this.L == null) {
                    this.L = new ArrayList<>();
                }
                q qVar = new q(aVar, zBooleanValue);
                this.L.add(qVar);
                aVar.H(qVar);
                if (zBooleanValue) {
                    aVar.y();
                } else {
                    aVar.z(false);
                }
                i4--;
                if (i5 != i4) {
                    arrayList.remove(i5);
                    arrayList.add(i4, aVar);
                }
                d(bVar);
            }
        }
        return i4;
    }

    private void Z(boolean z) {
        if (this.f737b) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (this.r == null) {
            if (!this.G) {
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            throw new IllegalStateException("FragmentManager has been destroyed");
        }
        if (Looper.myLooper() != this.r.g().getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!z) {
            o();
        }
        if (this.I == null) {
            this.I = new ArrayList<>();
            this.J = new ArrayList<>();
        }
        this.f737b = true;
        try {
            e0(null, null);
        } finally {
            this.f737b = false;
        }
    }

    private void b1(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        e0(arrayList, arrayList2);
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (i2 < size) {
            if (!arrayList.get(i2).p) {
                if (i3 != i2) {
                    d0(arrayList, arrayList2, i3, i2);
                }
                i3 = i2 + 1;
                if (arrayList2.get(i2).booleanValue()) {
                    while (i3 < size && arrayList2.get(i3).booleanValue() && !arrayList.get(i3).p) {
                        i3++;
                    }
                }
                d0(arrayList, arrayList2, i2, i3);
                i2 = i3 - 1;
            }
            i2++;
        }
        if (i3 != size) {
            d0(arrayList, arrayList2, i3, size);
        }
    }

    private static void c0(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        while (i2 < i3) {
            androidx.fragment.app.a aVar = arrayList.get(i2);
            if (arrayList2.get(i2).booleanValue()) {
                aVar.u(-1);
                aVar.z(i2 == i3 + (-1));
            } else {
                aVar.u(1);
                aVar.y();
            }
            i2++;
        }
    }

    private void c1() {
        if (this.l != null) {
            for (int i2 = 0; i2 < this.l.size(); i2++) {
                this.l.get(i2).a();
            }
        }
    }

    private void d(c.d.b<Fragment> bVar) {
        int i2 = this.q;
        if (i2 < 1) {
            return;
        }
        int iMin = Math.min(i2, 5);
        for (Fragment fragment : this.f738c.n()) {
            if (fragment.f648b < iMin) {
                Q0(fragment, iMin);
                if (fragment.I != null && !fragment.A && fragment.M) {
                    bVar.add(fragment);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [boolean, int] */
    private void d0(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        ?? r1;
        boolean z;
        int i4;
        int i5;
        ArrayList<Boolean> arrayList3;
        int i6;
        int iY0;
        ArrayList<Boolean> arrayList4;
        int i7;
        boolean z2;
        boolean z3 = arrayList.get(i2).p;
        ArrayList<Fragment> arrayList5 = this.K;
        if (arrayList5 == null) {
            this.K = new ArrayList<>();
        } else {
            arrayList5.clear();
        }
        this.K.addAll(this.f738c.n());
        Fragment fragmentW0 = w0();
        boolean z4 = false;
        for (int i8 = i2; i8 < i3; i8++) {
            androidx.fragment.app.a aVar = arrayList.get(i8);
            fragmentW0 = !arrayList2.get(i8).booleanValue() ? aVar.A(this.K, fragmentW0) : aVar.I(this.K, fragmentW0);
            z4 = z4 || aVar.g;
        }
        this.K.clear();
        if (z3 || this.q < 1) {
            r1 = 1;
        } else if (P) {
            for (int i9 = i2; i9 < i3; i9++) {
                Iterator<w.a> it = arrayList.get(i9).a.iterator();
                while (it.hasNext()) {
                    Fragment fragment = it.next().f770b;
                    if (fragment != null && fragment.t != null) {
                        this.f738c.p(v(fragment));
                    }
                }
            }
            r1 = 1;
        } else {
            r1 = 1;
            x.C(this.r.f(), this.s, arrayList, arrayList2, i2, i3, false, this.n);
        }
        c0(arrayList, arrayList2, i2, i3);
        if (P) {
            boolean zBooleanValue = arrayList2.get(i3 - 1).booleanValue();
            for (int i10 = i2; i10 < i3; i10++) {
                androidx.fragment.app.a aVar2 = arrayList.get(i10);
                if (zBooleanValue) {
                    for (int size = aVar2.a.size() - r1; size >= 0; size--) {
                        Fragment fragment2 = aVar2.a.get(size).f770b;
                        if (fragment2 != null) {
                            v(fragment2).m();
                        }
                    }
                } else {
                    Iterator<w.a> it2 = aVar2.a.iterator();
                    while (it2.hasNext()) {
                        Fragment fragment3 = it2.next().f770b;
                        if (fragment3 != null) {
                            v(fragment3).m();
                        }
                    }
                }
            }
            O0(this.q, r1);
            for (c0 c0Var : s(arrayList, i2, i3)) {
                c0Var.r(zBooleanValue);
                c0Var.p();
                c0Var.g();
            }
            i7 = i3;
            arrayList4 = arrayList2;
        } else {
            if (z3) {
                c.d.b bVar = new c.d.b();
                d(bVar);
                i6 = 1;
                z = z3;
                i4 = i3;
                i5 = i2;
                arrayList3 = arrayList2;
                iY0 = Y0(arrayList, arrayList2, i2, i3, bVar);
                M0(bVar);
            } else {
                z = z3;
                i4 = i3;
                i5 = i2;
                arrayList3 = arrayList2;
                i6 = 1;
                iY0 = i4;
            }
            if (iY0 == i5 || !z) {
                arrayList4 = arrayList3;
                i7 = i4;
            } else {
                if (this.q >= i6) {
                    arrayList4 = arrayList3;
                    int i11 = iY0;
                    i7 = i4;
                    z2 = true;
                    x.C(this.r.f(), this.s, arrayList, arrayList2, i2, i11, true, this.n);
                } else {
                    arrayList4 = arrayList3;
                    i7 = i4;
                    z2 = true;
                }
                O0(this.q, z2);
            }
        }
        for (int i12 = i2; i12 < i7; i12++) {
            androidx.fragment.app.a aVar3 = arrayList.get(i12);
            if (arrayList4.get(i12).booleanValue() && aVar3.t >= 0) {
                aVar3.t = -1;
            }
            aVar3.G();
        }
        if (z4) {
            c1();
        }
    }

    private void e0(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
        int iIndexOf;
        int iIndexOf2;
        ArrayList<q> arrayList3 = this.L;
        int size = arrayList3 == null ? 0 : arrayList3.size();
        int i2 = 0;
        while (i2 < size) {
            q qVar = this.L.get(i2);
            if (arrayList != null && !qVar.a && (iIndexOf2 = arrayList.indexOf(qVar.f751b)) != -1 && arrayList2 != null && arrayList2.get(iIndexOf2).booleanValue()) {
                this.L.remove(i2);
                i2--;
                size--;
                qVar.c();
            } else if (qVar.e() || (arrayList != null && qVar.f751b.D(arrayList, 0, arrayList.size()))) {
                this.L.remove(i2);
                i2--;
                size--;
                if (arrayList == null || qVar.a || (iIndexOf = arrayList.indexOf(qVar.f751b)) == -1 || arrayList2 == null || !arrayList2.get(iIndexOf).booleanValue()) {
                    qVar.d();
                } else {
                    qVar.c();
                }
            }
            i2++;
        }
    }

    static int e1(int i2) {
        if (i2 == 4097) {
            return 8194;
        }
        if (i2 != 4099) {
            return i2 != 8194 ? 0 : 4097;
        }
        return 4099;
    }

    private void j0() {
        if (P) {
            Iterator<c0> it = r().iterator();
            while (it.hasNext()) {
                it.next().k();
            }
        } else if (this.L != null) {
            while (!this.L.isEmpty()) {
                this.L.remove(0).d();
            }
        }
    }

    private boolean k0(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
        synchronized (this.a) {
            if (this.a.isEmpty()) {
                return false;
            }
            int size = this.a.size();
            boolean zA = false;
            for (int i2 = 0; i2 < size; i2++) {
                zA |= this.a.get(i2).a(arrayList, arrayList2);
            }
            this.a.clear();
            this.r.g().removeCallbacks(this.N);
            return zA;
        }
    }

    private void k1(Fragment fragment) {
        ViewGroup viewGroupO0 = o0(fragment);
        if (viewGroupO0 == null || fragment.L() + fragment.O() + fragment.Z() + fragment.a0() <= 0) {
            return;
        }
        if (viewGroupO0.getTag(c.j.b.visible_removing_fragment_view_tag) == null) {
            viewGroupO0.setTag(c.j.b.visible_removing_fragment_view_tag, fragment);
        }
        ((Fragment) viewGroupO0.getTag(c.j.b.visible_removing_fragment_view_tag)).X1(fragment.Y());
    }

    private void m(Fragment fragment) {
        HashSet<c.g.g.b> hashSet = this.m.get(fragment);
        if (hashSet != null) {
            Iterator<c.g.g.b> it = hashSet.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
            hashSet.clear();
            w(fragment);
            this.m.remove(fragment);
        }
    }

    private androidx.fragment.app.q m0(Fragment fragment) {
        return this.M.l(fragment);
    }

    private void m1() {
        Iterator<u> it = this.f738c.k().iterator();
        while (it.hasNext()) {
            T0(it.next());
        }
    }

    private void n1() {
        synchronized (this.a) {
            if (this.a.isEmpty()) {
                this.h.f(l0() > 0 && H0(this.t));
            } else {
                this.h.f(true);
            }
        }
    }

    private void o() {
        if (J0()) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
    }

    private ViewGroup o0(Fragment fragment) {
        ViewGroup viewGroup = fragment.H;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (fragment.y > 0 && this.s.d()) {
            View viewC = this.s.c(fragment.y);
            if (viewC instanceof ViewGroup) {
                return (ViewGroup) viewC;
            }
        }
        return null;
    }

    private void p() {
        this.f737b = false;
        this.J.clear();
        this.I.clear();
    }

    private Set<c0> r() {
        HashSet hashSet = new HashSet();
        Iterator<u> it = this.f738c.k().iterator();
        while (it.hasNext()) {
            ViewGroup viewGroup = it.next().k().H;
            if (viewGroup != null) {
                hashSet.add(c0.o(viewGroup, x0()));
            }
        }
        return hashSet;
    }

    private Set<c0> s(ArrayList<androidx.fragment.app.a> arrayList, int i2, int i3) {
        ViewGroup viewGroup;
        HashSet hashSet = new HashSet();
        while (i2 < i3) {
            Iterator<w.a> it = arrayList.get(i2).a.iterator();
            while (it.hasNext()) {
                Fragment fragment = it.next().f770b;
                if (fragment != null && (viewGroup = fragment.H) != null) {
                    hashSet.add(c0.n(viewGroup, this));
                }
            }
            i2++;
        }
        return hashSet;
    }

    private void u(Fragment fragment) {
        Animator animator;
        if (fragment.I != null) {
            f.d dVarC = androidx.fragment.app.f.c(this.r.f(), fragment, !fragment.A, fragment.Y());
            if (dVarC == null || (animator = dVarC.f722b) == null) {
                if (dVarC != null) {
                    fragment.I.startAnimation(dVarC.a);
                    dVarC.a.start();
                }
                fragment.I.setVisibility((!fragment.A || fragment.s0()) ? 0 : 8);
                if (fragment.s0()) {
                    fragment.U1(false);
                }
            } else {
                animator.setTarget(fragment.I);
                if (!fragment.A) {
                    fragment.I.setVisibility(0);
                } else if (fragment.s0()) {
                    fragment.U1(false);
                } else {
                    ViewGroup viewGroup = fragment.H;
                    View view = fragment.I;
                    viewGroup.startViewTransition(view);
                    dVarC.f722b.addListener(new h(this, viewGroup, view, fragment));
                }
                dVarC.f722b.start();
            }
        }
        C0(fragment);
        fragment.N = false;
        fragment.R0(fragment.A);
    }

    private void w(Fragment fragment) {
        fragment.q1();
        this.o.n(fragment, false);
        fragment.H = null;
        fragment.I = null;
        fragment.T = null;
        fragment.U.k(null);
        fragment.p = false;
    }

    static Fragment y0(View view) {
        Object tag = view.getTag(c.j.b.fragment_container_view_tag);
        if (tag instanceof Fragment) {
            return (Fragment) tag;
        }
        return null;
    }

    void A(Configuration configuration) {
        for (Fragment fragment : this.f738c.n()) {
            if (fragment != null) {
                fragment.k1(configuration);
            }
        }
    }

    void A0() {
        a0(true);
        if (this.h.c()) {
            V0();
        } else {
            this.g.c();
        }
    }

    boolean B(MenuItem menuItem) {
        if (this.q < 1) {
            return false;
        }
        for (Fragment fragment : this.f738c.n()) {
            if (fragment != null && fragment.l1(menuItem)) {
                return true;
            }
        }
        return false;
    }

    void B0(Fragment fragment) {
        if (E0(2)) {
            String str = "hide: " + fragment;
        }
        if (fragment.A) {
            return;
        }
        fragment.A = true;
        fragment.N = true ^ fragment.N;
        k1(fragment);
    }

    void C() {
        this.E = false;
        this.F = false;
        this.M.r(false);
        S(1);
    }

    void C0(Fragment fragment) {
        if (fragment.m && F0(fragment)) {
            this.D = true;
        }
    }

    boolean D(Menu menu, MenuInflater menuInflater) {
        if (this.q < 1) {
            return false;
        }
        ArrayList<Fragment> arrayList = null;
        boolean z = false;
        for (Fragment fragment : this.f738c.n()) {
            if (fragment != null && G0(fragment) && fragment.n1(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                arrayList.add(fragment);
                z = true;
            }
        }
        if (this.e != null) {
            for (int i2 = 0; i2 < this.e.size(); i2++) {
                Fragment fragment2 = this.e.get(i2);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.N0();
                }
            }
        }
        this.e = arrayList;
        return z;
    }

    public boolean D0() {
        return this.G;
    }

    void E() {
        this.G = true;
        a0(true);
        X();
        S(-1);
        this.r = null;
        this.s = null;
        this.t = null;
        if (this.g != null) {
            this.h.d();
            this.g = null;
        }
        androidx.activity.result.c<Intent> cVar = this.z;
        if (cVar != null) {
            cVar.c();
            this.A.c();
            this.B.c();
        }
    }

    void F() {
        S(1);
    }

    void G() {
        for (Fragment fragment : this.f738c.n()) {
            if (fragment != null) {
                fragment.t1();
            }
        }
    }

    boolean G0(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        return fragment.u0();
    }

    void H(boolean z) {
        for (Fragment fragment : this.f738c.n()) {
            if (fragment != null) {
                fragment.u1(z);
            }
        }
    }

    boolean H0(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        n nVar = fragment.t;
        return fragment.equals(nVar.w0()) && H0(nVar.t);
    }

    void I(Fragment fragment) {
        Iterator<r> it = this.p.iterator();
        while (it.hasNext()) {
            it.next().a(this, fragment);
        }
    }

    boolean I0(int i2) {
        return this.q >= i2;
    }

    boolean J(MenuItem menuItem) {
        if (this.q < 1) {
            return false;
        }
        for (Fragment fragment : this.f738c.n()) {
            if (fragment != null && fragment.v1(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public boolean J0() {
        return this.E || this.F;
    }

    void K(Menu menu) {
        if (this.q < 1) {
            return;
        }
        for (Fragment fragment : this.f738c.n()) {
            if (fragment != null) {
                fragment.w1(menu);
            }
        }
    }

    void K0(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i2, Bundle bundle) {
        if (this.z == null) {
            this.r.k(fragment, intent, i2, bundle);
            return;
        }
        this.C.addLast(new m(fragment.g, i2));
        if (intent != null && bundle != null) {
            intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
        }
        this.z.a(intent);
    }

    void L0(Fragment fragment, @SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i2, Intent intent, int i3, int i4, int i5, Bundle bundle) {
        Intent intent2;
        if (this.A == null) {
            this.r.l(fragment, intentSender, i2, intent, i3, i4, i5, bundle);
            return;
        }
        if (bundle != null) {
            if (intent == null) {
                intent2 = new Intent();
                intent2.putExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", true);
            } else {
                intent2 = intent;
            }
            if (E0(2)) {
                String str = "ActivityOptions " + bundle + " were added to fillInIntent " + intent2 + " for fragment " + fragment;
            }
            intent2.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
        } else {
            intent2 = intent;
        }
        e.b bVar = new e.b(intentSender);
        bVar.b(intent2);
        bVar.c(i4, i3);
        androidx.activity.result.e eVarA = bVar.a();
        this.C.addLast(new m(fragment.g, i2));
        if (E0(2)) {
            String str2 = "Fragment " + fragment + "is launching an IntentSender for result ";
        }
        this.A.a(eVarA);
    }

    void M() {
        S(5);
    }

    void N(boolean z) {
        for (Fragment fragment : this.f738c.n()) {
            if (fragment != null) {
                fragment.y1(z);
            }
        }
    }

    void N0(Fragment fragment) {
        if (!this.f738c.c(fragment.g)) {
            if (E0(3)) {
                String str = "Ignoring moving " + fragment + " to state " + this.q + "since it is not added to " + this;
                return;
            }
            return;
        }
        P0(fragment);
        View view = fragment.I;
        if (view != null && fragment.M && fragment.H != null) {
            float f2 = fragment.O;
            if (f2 > CropImageView.DEFAULT_ASPECT_RATIO) {
                view.setAlpha(f2);
            }
            fragment.O = CropImageView.DEFAULT_ASPECT_RATIO;
            fragment.M = false;
            f.d dVarC = androidx.fragment.app.f.c(this.r.f(), fragment, true, fragment.Y());
            if (dVarC != null) {
                Animation animation = dVarC.a;
                if (animation != null) {
                    fragment.I.startAnimation(animation);
                } else {
                    dVarC.f722b.setTarget(fragment.I);
                    dVarC.f722b.start();
                }
            }
        }
        if (fragment.N) {
            u(fragment);
        }
    }

    boolean O(Menu menu) {
        boolean z = false;
        if (this.q < 1) {
            return false;
        }
        for (Fragment fragment : this.f738c.n()) {
            if (fragment != null && G0(fragment) && fragment.z1(menu)) {
                z = true;
            }
        }
        return z;
    }

    void O0(int i2, boolean z) {
        androidx.fragment.app.k<?> kVar;
        if (this.r == null && i2 != -1) {
            throw new IllegalStateException("No activity");
        }
        if (z || i2 != this.q) {
            this.q = i2;
            if (P) {
                this.f738c.r();
            } else {
                Iterator<Fragment> it = this.f738c.n().iterator();
                while (it.hasNext()) {
                    N0(it.next());
                }
                for (u uVar : this.f738c.k()) {
                    Fragment fragmentK = uVar.k();
                    if (!fragmentK.M) {
                        N0(fragmentK);
                    }
                    if (fragmentK.n && !fragmentK.t0()) {
                        this.f738c.q(uVar);
                    }
                }
            }
            m1();
            if (this.D && (kVar = this.r) != null && this.q == 7) {
                kVar.m();
                this.D = false;
            }
        }
    }

    void P() {
        n1();
        L(this.u);
    }

    void P0(Fragment fragment) {
        Q0(fragment, this.q);
    }

    void Q() {
        this.E = false;
        this.F = false;
        this.M.r(false);
        S(7);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0156  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void Q0(Fragment fragment, int i2) {
        ViewGroup viewGroup;
        u uVarM = this.f738c.m(fragment.g);
        int i3 = 1;
        if (uVarM == null) {
            uVarM = new u(this.o, this.f738c, fragment);
            uVarM.t(1);
        }
        if (fragment.o && fragment.p && fragment.f648b == 2) {
            i2 = Math.max(i2, 2);
        }
        int iMin = Math.min(i2, uVarM.d());
        int i4 = fragment.f648b;
        if (i4 <= iMin) {
            if (i4 < iMin && !this.m.isEmpty()) {
                m(fragment);
            }
            int i5 = fragment.f648b;
            if (i5 != -1) {
                if (i5 != 0) {
                    if (i5 != 1) {
                        if (i5 != 2) {
                            if (i5 != 4) {
                                if (i5 == 5) {
                                }
                            }
                            if (iMin > 5) {
                                uVarM.p();
                            }
                        }
                        if (iMin > 4) {
                            uVarM.u();
                        }
                        if (iMin > 5) {
                        }
                    }
                    if (iMin > 2) {
                        uVarM.a();
                    }
                    if (iMin > 4) {
                    }
                    if (iMin > 5) {
                    }
                }
                if (iMin > -1) {
                    uVarM.j();
                }
                if (iMin > 1) {
                    uVarM.f();
                }
                if (iMin > 2) {
                }
                if (iMin > 4) {
                }
                if (iMin > 5) {
                }
            } else if (iMin > -1) {
                uVarM.c();
            }
            if (iMin > 0) {
                uVarM.e();
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
                    uVarM.i();
                }
                iMin = i3;
            } else {
                if (i4 != 1) {
                    if (i4 != 2) {
                        if (i4 != 4) {
                            if (i4 != 5) {
                                if (i4 == 7) {
                                    if (iMin < 7) {
                                        uVarM.n();
                                    }
                                }
                            }
                            if (iMin < 5) {
                                uVarM.v();
                            }
                        }
                        if (iMin < 4) {
                            if (E0(3)) {
                                String str = "movefrom ACTIVITY_CREATED: " + fragment;
                            }
                            if (fragment.I != null && this.r.j(fragment) && fragment.f650d == null) {
                                uVarM.s();
                            }
                        }
                    }
                    if (iMin < 2) {
                        f.d dVarC = null;
                        View view = fragment.I;
                        if (view != null && (viewGroup = fragment.H) != null) {
                            viewGroup.endViewTransition(view);
                            fragment.I.clearAnimation();
                            if (!fragment.x0()) {
                                if (this.q > -1 && !this.G && fragment.I.getVisibility() == 0 && fragment.O >= CropImageView.DEFAULT_ASPECT_RATIO) {
                                    dVarC = androidx.fragment.app.f.c(this.r.f(), fragment, false, fragment.Y());
                                }
                                fragment.O = CropImageView.DEFAULT_ASPECT_RATIO;
                                ViewGroup viewGroup2 = fragment.H;
                                View view2 = fragment.I;
                                if (dVarC != null) {
                                    androidx.fragment.app.f.a(fragment, dVarC, this.n);
                                }
                                viewGroup2.removeView(view2);
                                if (E0(2)) {
                                    String str2 = "Removing view " + view2 + " for fragment " + fragment + " from container " + viewGroup2;
                                }
                                if (viewGroup2 != fragment.H) {
                                    return;
                                }
                            }
                        }
                        if (this.m.get(fragment) == null) {
                            uVarM.h();
                        }
                    }
                }
                if (iMin < 1) {
                    if (this.m.get(fragment) == null) {
                        uVarM.g();
                        i3 = iMin;
                    }
                    if (i3 < 0) {
                    }
                    iMin = i3;
                }
            }
        }
        if (fragment.f648b != iMin) {
            if (E0(3)) {
                String str3 = "moveToState: Fragment state for " + fragment + " not updated inline; expected state " + iMin + " found " + fragment.f648b;
            }
            fragment.f648b = iMin;
        }
    }

    void R() {
        this.E = false;
        this.F = false;
        this.M.r(false);
        S(5);
    }

    void R0() {
        if (this.r == null) {
            return;
        }
        this.E = false;
        this.F = false;
        this.M.r(false);
        for (Fragment fragment : this.f738c.n()) {
            if (fragment != null) {
                fragment.A0();
            }
        }
    }

    void S0(androidx.fragment.app.h hVar) {
        View view;
        for (u uVar : this.f738c.k()) {
            Fragment fragmentK = uVar.k();
            if (fragmentK.y == hVar.getId() && (view = fragmentK.I) != null && view.getParent() == null) {
                fragmentK.H = hVar;
                uVar.b();
            }
        }
    }

    void T() {
        this.F = true;
        this.M.r(true);
        S(4);
    }

    void T0(u uVar) {
        Fragment fragmentK = uVar.k();
        if (fragmentK.J) {
            if (this.f737b) {
                this.H = true;
                return;
            }
            fragmentK.J = false;
            if (P) {
                uVar.m();
            } else {
                P0(fragmentK);
            }
        }
    }

    void U() {
        S(2);
    }

    public void U0(int i2, int i3) {
        if (i2 >= 0) {
            Y(new p(null, i2, i3), false);
            return;
        }
        throw new IllegalArgumentException("Bad id: " + i2);
    }

    public boolean V0() {
        return W0(null, -1, 0);
    }

    public void W(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        String str2 = str + "    ";
        this.f738c.e(str, fileDescriptor, printWriter, strArr);
        ArrayList<Fragment> arrayList = this.e;
        if (arrayList != null && (size2 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i2 = 0; i2 < size2; i2++) {
                Fragment fragment = this.e.get(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(fragment.toString());
            }
        }
        ArrayList<androidx.fragment.app.a> arrayList2 = this.f739d;
        if (arrayList2 != null && (size = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i3 = 0; i3 < size; i3++) {
                androidx.fragment.app.a aVar = this.f739d.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(aVar.toString());
                aVar.w(str2, printWriter);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.i.get());
        synchronized (this.a) {
            int size3 = this.a.size();
            if (size3 > 0) {
                printWriter.print(str);
                printWriter.println("Pending Actions:");
                for (int i4 = 0; i4 < size3; i4++) {
                    o oVar = this.a.get(i4);
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
        printWriter.println(this.r);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.s);
        if (this.t != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.t);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.q);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.E);
        printWriter.print(" mStopped=");
        printWriter.print(this.F);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.G);
        if (this.D) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.D);
        }
    }

    boolean X0(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, String str, int i2, int i3) {
        int i4;
        ArrayList<androidx.fragment.app.a> arrayList3 = this.f739d;
        if (arrayList3 == null) {
            return false;
        }
        if (str == null && i2 < 0 && (i3 & 1) == 0) {
            int size = arrayList3.size() - 1;
            if (size < 0) {
                return false;
            }
            arrayList.add(this.f739d.remove(size));
            arrayList2.add(Boolean.TRUE);
        } else {
            if (str != null || i2 >= 0) {
                int size2 = this.f739d.size() - 1;
                while (size2 >= 0) {
                    androidx.fragment.app.a aVar = this.f739d.get(size2);
                    if ((str != null && str.equals(aVar.B())) || (i2 >= 0 && i2 == aVar.t)) {
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
                        androidx.fragment.app.a aVar2 = this.f739d.get(size2);
                        if (str == null || !str.equals(aVar2.B())) {
                            if (i2 < 0 || i2 != aVar2.t) {
                                break;
                            }
                        }
                    }
                }
                i4 = size2;
            } else {
                i4 = -1;
            }
            if (i4 == this.f739d.size() - 1) {
                return false;
            }
            for (int size3 = this.f739d.size() - 1; size3 > i4; size3--) {
                arrayList.add(this.f739d.remove(size3));
                arrayList2.add(Boolean.TRUE);
            }
        }
        return true;
    }

    void Y(o oVar, boolean z) {
        if (!z) {
            if (this.r == null) {
                if (!this.G) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            }
            o();
        }
        synchronized (this.a) {
            if (this.r == null) {
                if (!z) {
                    throw new IllegalStateException("Activity has been destroyed");
                }
            } else {
                this.a.add(oVar);
                g1();
            }
        }
    }

    void Z0(Fragment fragment, c.g.g.b bVar) {
        HashSet<c.g.g.b> hashSet = this.m.get(fragment);
        if (hashSet != null && hashSet.remove(bVar) && hashSet.isEmpty()) {
            this.m.remove(fragment);
            if (fragment.f648b < 5) {
                w(fragment);
                P0(fragment);
            }
        }
    }

    boolean a0(boolean z) {
        Z(z);
        boolean z2 = false;
        while (k0(this.I, this.J)) {
            this.f737b = true;
            try {
                b1(this.I, this.J);
                p();
                z2 = true;
            } catch (Throwable th) {
                p();
                throw th;
            }
        }
        n1();
        V();
        this.f738c.b();
        return z2;
    }

    void a1(Fragment fragment) {
        if (E0(2)) {
            String str = "remove: " + fragment + " nesting=" + fragment.s;
        }
        boolean z = !fragment.t0();
        if (!fragment.B || z) {
            this.f738c.s(fragment);
            if (F0(fragment)) {
                this.D = true;
            }
            fragment.n = true;
            k1(fragment);
        }
    }

    void b0(o oVar, boolean z) {
        if (z && (this.r == null || this.G)) {
            return;
        }
        Z(z);
        if (oVar.a(this.I, this.J)) {
            this.f737b = true;
            try {
                b1(this.I, this.J);
            } finally {
                p();
            }
        }
        n1();
        V();
        this.f738c.b();
    }

    void d1(Parcelable parcelable) {
        u uVar;
        if (parcelable == null) {
            return;
        }
        androidx.fragment.app.p pVar = (androidx.fragment.app.p) parcelable;
        if (pVar.f753b == null) {
            return;
        }
        this.f738c.t();
        for (t tVar : pVar.f753b) {
            if (tVar != null) {
                Fragment fragmentK = this.M.k(tVar.f759c);
                if (fragmentK != null) {
                    if (E0(2)) {
                        String str = "restoreSaveState: re-attaching retained " + fragmentK;
                    }
                    uVar = new u(this.o, this.f738c, fragmentK, tVar);
                } else {
                    uVar = new u(this.o, this.f738c, this.r.f().getClassLoader(), p0(), tVar);
                }
                Fragment fragmentK2 = uVar.k();
                fragmentK2.t = this;
                if (E0(2)) {
                    String str2 = "restoreSaveState: active (" + fragmentK2.g + "): " + fragmentK2;
                }
                uVar.o(this.r.f().getClassLoader());
                this.f738c.p(uVar);
                uVar.t(this.q);
            }
        }
        for (Fragment fragment : this.M.n()) {
            if (!this.f738c.c(fragment.g)) {
                if (E0(2)) {
                    String str3 = "Discarding retained Fragment " + fragment + " that was not found in the set of active Fragments " + pVar.f753b;
                }
                this.M.q(fragment);
                fragment.t = this;
                u uVar2 = new u(this.o, this.f738c, fragment);
                uVar2.t(1);
                uVar2.m();
                fragment.n = true;
                uVar2.m();
            }
        }
        this.f738c.u(pVar.f754c);
        if (pVar.f755d != null) {
            this.f739d = new ArrayList<>(pVar.f755d.length);
            int i2 = 0;
            while (true) {
                androidx.fragment.app.b[] bVarArr = pVar.f755d;
                if (i2 >= bVarArr.length) {
                    break;
                }
                androidx.fragment.app.a aVarJ = bVarArr[i2].j(this);
                if (E0(2)) {
                    String str4 = "restoreAllState: back stack #" + i2 + " (index " + aVarJ.t + "): " + aVarJ;
                    PrintWriter printWriter = new PrintWriter(new b0("FragmentManager"));
                    aVarJ.x("  ", printWriter, false);
                    printWriter.close();
                }
                this.f739d.add(aVarJ);
                i2++;
            }
        } else {
            this.f739d = null;
        }
        this.i.set(pVar.e);
        String str5 = pVar.f;
        if (str5 != null) {
            Fragment fragmentF0 = f0(str5);
            this.u = fragmentF0;
            L(fragmentF0);
        }
        ArrayList<String> arrayList = pVar.g;
        if (arrayList != null) {
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                Bundle bundle = pVar.h.get(i3);
                bundle.setClassLoader(this.r.f().getClassLoader());
                this.j.put(arrayList.get(i3), bundle);
            }
        }
        this.C = new ArrayDeque<>(pVar.i);
    }

    void e(androidx.fragment.app.a aVar) {
        if (this.f739d == null) {
            this.f739d = new ArrayList<>();
        }
        this.f739d.add(aVar);
    }

    void f(Fragment fragment, c.g.g.b bVar) {
        if (this.m.get(fragment) == null) {
            this.m.put(fragment, new HashSet<>());
        }
        this.m.get(fragment).add(bVar);
    }

    Fragment f0(String str) {
        return this.f738c.f(str);
    }

    Parcelable f1() {
        int size;
        j0();
        X();
        a0(true);
        this.E = true;
        this.M.r(true);
        ArrayList<t> arrayListV = this.f738c.v();
        androidx.fragment.app.b[] bVarArr = null;
        if (arrayListV.isEmpty()) {
            E0(2);
            return null;
        }
        ArrayList<String> arrayListW = this.f738c.w();
        ArrayList<androidx.fragment.app.a> arrayList = this.f739d;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            bVarArr = new androidx.fragment.app.b[size];
            for (int i2 = 0; i2 < size; i2++) {
                bVarArr[i2] = new androidx.fragment.app.b(this.f739d.get(i2));
                if (E0(2)) {
                    String str = "saveAllState: adding back stack #" + i2 + ": " + this.f739d.get(i2);
                }
            }
        }
        androidx.fragment.app.p pVar = new androidx.fragment.app.p();
        pVar.f753b = arrayListV;
        pVar.f754c = arrayListW;
        pVar.f755d = bVarArr;
        pVar.e = this.i.get();
        Fragment fragment = this.u;
        if (fragment != null) {
            pVar.f = fragment.g;
        }
        pVar.g.addAll(this.j.keySet());
        pVar.h.addAll(this.j.values());
        pVar.i = new ArrayList<>(this.C);
        return pVar;
    }

    u g(Fragment fragment) {
        if (E0(2)) {
            String str = "add: " + fragment;
        }
        u uVarV = v(fragment);
        fragment.t = this;
        this.f738c.p(uVarV);
        if (!fragment.B) {
            this.f738c.a(fragment);
            fragment.n = false;
            if (fragment.I == null) {
                fragment.N = false;
            }
            if (F0(fragment)) {
                this.D = true;
            }
        }
        return uVarV;
    }

    public Fragment g0(int i2) {
        return this.f738c.g(i2);
    }

    void g1() {
        synchronized (this.a) {
            boolean z = (this.L == null || this.L.isEmpty()) ? false : true;
            boolean z2 = this.a.size() == 1;
            if (z || z2) {
                this.r.g().removeCallbacks(this.N);
                this.r.g().post(this.N);
                n1();
            }
        }
    }

    public void h(r rVar) {
        this.p.add(rVar);
    }

    public Fragment h0(String str) {
        return this.f738c.h(str);
    }

    void h1(Fragment fragment, boolean z) {
        ViewGroup viewGroupO0 = o0(fragment);
        if (viewGroupO0 == null || !(viewGroupO0 instanceof androidx.fragment.app.h)) {
            return;
        }
        ((androidx.fragment.app.h) viewGroupO0).setDrawDisappearingViewsLast(!z);
    }

    int i() {
        return this.i.getAndIncrement();
    }

    Fragment i0(String str) {
        return this.f738c.i(str);
    }

    void i1(Fragment fragment, f.c cVar) {
        if (fragment.equals(f0(fragment.g)) && (fragment.u == null || fragment.t == this)) {
            fragment.R = cVar;
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
    void j(androidx.fragment.app.k<?> kVar, androidx.fragment.app.g gVar, Fragment fragment) {
        String str;
        if (this.r != null) {
            throw new IllegalStateException("Already attached");
        }
        this.r = kVar;
        this.s = gVar;
        this.t = fragment;
        if (fragment != null) {
            h(new i(this, fragment));
        } else if (kVar instanceof r) {
            h((r) kVar);
        }
        if (this.t != null) {
            n1();
        }
        if (kVar instanceof androidx.activity.c) {
            androidx.activity.c cVar = (androidx.activity.c) kVar;
            this.g = cVar.getOnBackPressedDispatcher();
            androidx.lifecycle.j jVar = cVar;
            if (fragment != null) {
                jVar = fragment;
            }
            this.g.a(jVar, this.h);
        }
        if (fragment != null) {
            this.M = fragment.t.m0(fragment);
        } else if (kVar instanceof androidx.lifecycle.y) {
            this.M = androidx.fragment.app.q.m(((androidx.lifecycle.y) kVar).getViewModelStore());
        } else {
            this.M = new androidx.fragment.app.q(false);
        }
        this.M.r(J0());
        this.f738c.x(this.M);
        Object obj = this.r;
        if (obj instanceof androidx.activity.result.d) {
            ActivityResultRegistry activityResultRegistry = ((androidx.activity.result.d) obj).getActivityResultRegistry();
            if (fragment != null) {
                str = fragment.g + ":";
            } else {
                str = BuildConfig.FLAVOR;
            }
            String str2 = "FragmentManager:" + str;
            this.z = activityResultRegistry.i(str2 + "StartActivityForResult", new androidx.activity.result.f.d(), new j());
            this.A = activityResultRegistry.i(str2 + "StartIntentSenderForResult", new k(), new a());
            this.B = activityResultRegistry.i(str2 + "RequestPermissions", new androidx.activity.result.f.b(), new b());
        }
    }

    void j1(Fragment fragment) {
        if (fragment == null || (fragment.equals(f0(fragment.g)) && (fragment.u == null || fragment.t == this))) {
            Fragment fragment2 = this.u;
            this.u = fragment;
            L(fragment2);
            L(this.u);
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    void k(Fragment fragment) {
        if (E0(2)) {
            String str = "attach: " + fragment;
        }
        if (fragment.B) {
            fragment.B = false;
            if (fragment.m) {
                return;
            }
            this.f738c.a(fragment);
            if (E0(2)) {
                String str2 = "add from attach: " + fragment;
            }
            if (F0(fragment)) {
                this.D = true;
            }
        }
    }

    public w l() {
        return new androidx.fragment.app.a(this);
    }

    public int l0() {
        ArrayList<androidx.fragment.app.a> arrayList = this.f739d;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    void l1(Fragment fragment) {
        if (E0(2)) {
            String str = "show: " + fragment;
        }
        if (fragment.A) {
            fragment.A = false;
            fragment.N = !fragment.N;
        }
    }

    boolean n() {
        boolean zF0 = false;
        for (Fragment fragment : this.f738c.l()) {
            if (fragment != null) {
                zF0 = F0(fragment);
            }
            if (zF0) {
                return true;
            }
        }
        return false;
    }

    androidx.fragment.app.g n0() {
        return this.s;
    }

    public androidx.fragment.app.j p0() {
        androidx.fragment.app.j jVar = this.v;
        if (jVar != null) {
            return jVar;
        }
        Fragment fragment = this.t;
        return fragment != null ? fragment.t.p0() : this.w;
    }

    public final void q(String str) {
        this.j.remove(str);
    }

    v q0() {
        return this.f738c;
    }

    public List<Fragment> r0() {
        return this.f738c.n();
    }

    androidx.fragment.app.k<?> s0() {
        return this.r;
    }

    void t(androidx.fragment.app.a aVar, boolean z, boolean z2, boolean z3) {
        if (z) {
            aVar.z(z3);
        } else {
            aVar.y();
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(aVar);
        arrayList2.add(Boolean.valueOf(z));
        if (z2 && this.q >= 1) {
            x.C(this.r.f(), this.s, arrayList, arrayList2, 0, 1, true, this.n);
        }
        if (z3) {
            O0(this.q, true);
        }
        for (Fragment fragment : this.f738c.l()) {
            if (fragment != null && fragment.I != null && fragment.M && aVar.C(fragment.y)) {
                float f2 = fragment.O;
                if (f2 > CropImageView.DEFAULT_ASPECT_RATIO) {
                    fragment.I.setAlpha(f2);
                }
                if (z3) {
                    fragment.O = CropImageView.DEFAULT_ASPECT_RATIO;
                } else {
                    fragment.O = -1.0f;
                    fragment.M = false;
                }
            }
        }
    }

    LayoutInflater.Factory2 t0() {
        return this.f;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Fragment fragment = this.t;
        if (fragment != null) {
            sb.append(fragment.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.t)));
            sb.append("}");
        } else {
            androidx.fragment.app.k<?> kVar = this.r;
            if (kVar != null) {
                sb.append(kVar.getClass().getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(this.r)));
                sb.append("}");
            } else {
                sb.append("null");
            }
        }
        sb.append("}}");
        return sb.toString();
    }

    androidx.fragment.app.m u0() {
        return this.o;
    }

    u v(Fragment fragment) {
        u uVarM = this.f738c.m(fragment.g);
        if (uVarM != null) {
            return uVarM;
        }
        u uVar = new u(this.o, this.f738c, fragment);
        uVar.o(this.r.f().getClassLoader());
        uVar.t(this.q);
        return uVar;
    }

    Fragment v0() {
        return this.t;
    }

    public Fragment w0() {
        return this.u;
    }

    void x(Fragment fragment) {
        if (E0(2)) {
            String str = "detach: " + fragment;
        }
        if (fragment.B) {
            return;
        }
        fragment.B = true;
        if (fragment.m) {
            if (E0(2)) {
                String str2 = "remove from detach: " + fragment;
            }
            this.f738c.s(fragment);
            if (F0(fragment)) {
                this.D = true;
            }
            k1(fragment);
        }
    }

    d0 x0() {
        d0 d0Var = this.x;
        if (d0Var != null) {
            return d0Var;
        }
        Fragment fragment = this.t;
        return fragment != null ? fragment.t.x0() : this.y;
    }

    void y() {
        this.E = false;
        this.F = false;
        this.M.r(false);
        S(4);
    }

    void z() {
        this.E = false;
        this.F = false;
        this.M.r(false);
        S(0);
    }

    androidx.lifecycle.x z0(Fragment fragment) {
        return this.M.o(fragment);
    }

    @SuppressLint({"BanParcelableUsage"})
    static class m implements Parcelable {
        public static final Parcelable.Creator<m> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f746b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f747c;

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
            this.f746b = str;
            this.f747c = i;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f746b);
            parcel.writeInt(this.f747c);
        }

        m(Parcel parcel) {
            this.f746b = parcel.readString();
            this.f747c = parcel.readInt();
        }
    }
}
