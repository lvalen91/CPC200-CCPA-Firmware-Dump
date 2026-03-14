package androidx.fragment.app;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.AbstractC0238h;
import androidx.core.view.C0292v;
import androidx.core.view.ViewTreeObserverOnPreDrawListenerC0290t;
import androidx.fragment.app.AbstractC0375w;
import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import p016c.p032d.C0534a;
import p016c.p041g.p046g.C0604b;

/* JADX INFO: renamed from: androidx.fragment.app.x */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0376x {

    /* JADX INFO: renamed from: a */
    private static final int[] f2407a = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8, 10};

    /* JADX INFO: renamed from: b */
    static final AbstractC0378z f2408b;

    /* JADX INFO: renamed from: c */
    static final AbstractC0378z f2409c;

    /* JADX INFO: renamed from: androidx.fragment.app.x$a */
    class a implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ g f2410b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ Fragment f2411c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ C0604b f2412d;

        a(g gVar, Fragment fragment, C0604b c0604b) {
            this.f2410b = gVar;
            this.f2411c = fragment;
            this.f2412d = c0604b;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2410b.mo2797a(this.f2411c, this.f2412d);
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.x$b */
    class b implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ ArrayList f2413b;

        b(ArrayList arrayList) {
            this.f2413b = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0376x.m2898B(this.f2413b, 4);
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.x$c */
    class c implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ g f2414b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ Fragment f2415c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ C0604b f2416d;

        c(g gVar, Fragment fragment, C0604b c0604b) {
            this.f2414b = gVar;
            this.f2415c = fragment;
            this.f2416d = c0604b;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2414b.mo2797a(this.f2415c, this.f2416d);
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.x$d */
    class d implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ Object f2417b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ AbstractC0378z f2418c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ View f2419d;

        /* JADX INFO: renamed from: e */
        final /* synthetic */ Fragment f2420e;

        /* JADX INFO: renamed from: f */
        final /* synthetic */ ArrayList f2421f;

        /* JADX INFO: renamed from: g */
        final /* synthetic */ ArrayList f2422g;

        /* JADX INFO: renamed from: h */
        final /* synthetic */ ArrayList f2423h;

        /* JADX INFO: renamed from: i */
        final /* synthetic */ Object f2424i;

        d(Object obj, AbstractC0378z abstractC0378z, View view, Fragment fragment, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, Object obj2) {
            this.f2417b = obj;
            this.f2418c = abstractC0378z;
            this.f2419d = view;
            this.f2420e = fragment;
            this.f2421f = arrayList;
            this.f2422g = arrayList2;
            this.f2423h = arrayList3;
            this.f2424i = obj2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Object obj = this.f2417b;
            if (obj != null) {
                this.f2418c.mo2936p(obj, this.f2419d);
                this.f2422g.addAll(C0376x.m2910k(this.f2418c, this.f2417b, this.f2420e, this.f2421f, this.f2419d));
            }
            if (this.f2423h != null) {
                if (this.f2424i != null) {
                    ArrayList<View> arrayList = new ArrayList<>();
                    arrayList.add(this.f2419d);
                    this.f2418c.mo2937q(this.f2424i, this.f2423h, arrayList);
                }
                this.f2423h.clear();
                this.f2423h.add(this.f2419d);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.x$e */
    class e implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ Fragment f2425b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ Fragment f2426c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ boolean f2427d;

        /* JADX INFO: renamed from: e */
        final /* synthetic */ C0534a f2428e;

        /* JADX INFO: renamed from: f */
        final /* synthetic */ View f2429f;

        /* JADX INFO: renamed from: g */
        final /* synthetic */ AbstractC0378z f2430g;

        /* JADX INFO: renamed from: h */
        final /* synthetic */ Rect f2431h;

        e(Fragment fragment, Fragment fragment2, boolean z, C0534a c0534a, View view, AbstractC0378z abstractC0378z, Rect rect) {
            this.f2425b = fragment;
            this.f2426c = fragment2;
            this.f2427d = z;
            this.f2428e = c0534a;
            this.f2429f = view;
            this.f2430g = abstractC0378z;
            this.f2431h = rect;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0376x.m2905f(this.f2425b, this.f2426c, this.f2427d, this.f2428e, false);
            View view = this.f2429f;
            if (view != null) {
                this.f2430g.m2950k(view, this.f2431h);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.x$f */
    class f implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ AbstractC0378z f2432b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ C0534a f2433c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ Object f2434d;

        /* JADX INFO: renamed from: e */
        final /* synthetic */ h f2435e;

        /* JADX INFO: renamed from: f */
        final /* synthetic */ ArrayList f2436f;

        /* JADX INFO: renamed from: g */
        final /* synthetic */ View f2437g;

        /* JADX INFO: renamed from: h */
        final /* synthetic */ Fragment f2438h;

        /* JADX INFO: renamed from: i */
        final /* synthetic */ Fragment f2439i;

        /* JADX INFO: renamed from: j */
        final /* synthetic */ boolean f2440j;

        /* JADX INFO: renamed from: k */
        final /* synthetic */ ArrayList f2441k;

        /* JADX INFO: renamed from: l */
        final /* synthetic */ Object f2442l;

        /* JADX INFO: renamed from: m */
        final /* synthetic */ Rect f2443m;

        f(AbstractC0378z abstractC0378z, C0534a c0534a, Object obj, h hVar, ArrayList arrayList, View view, Fragment fragment, Fragment fragment2, boolean z, ArrayList arrayList2, Object obj2, Rect rect) {
            this.f2432b = abstractC0378z;
            this.f2433c = c0534a;
            this.f2434d = obj;
            this.f2435e = hVar;
            this.f2436f = arrayList;
            this.f2437g = view;
            this.f2438h = fragment;
            this.f2439i = fragment2;
            this.f2440j = z;
            this.f2441k = arrayList2;
            this.f2442l = obj2;
            this.f2443m = rect;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0534a<String, View> c0534aM2907h = C0376x.m2907h(this.f2432b, this.f2433c, this.f2434d, this.f2435e);
            if (c0534aM2907h != null) {
                this.f2436f.addAll(c0534aM2907h.values());
                this.f2436f.add(this.f2437g);
            }
            C0376x.m2905f(this.f2438h, this.f2439i, this.f2440j, c0534aM2907h, false);
            Object obj = this.f2434d;
            if (obj != null) {
                this.f2432b.mo2927A(obj, this.f2441k, this.f2436f);
                View viewM2919t = C0376x.m2919t(c0534aM2907h, this.f2435e, this.f2442l, this.f2440j);
                if (viewM2919t != null) {
                    this.f2432b.m2950k(viewM2919t, this.f2443m);
                }
            }
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.x$g */
    interface g {
        /* JADX INFO: renamed from: a */
        void mo2797a(Fragment fragment, C0604b c0604b);

        /* JADX INFO: renamed from: b */
        void mo2798b(Fragment fragment, C0604b c0604b);
    }

    /* JADX INFO: renamed from: androidx.fragment.app.x$h */
    static class h {

        /* JADX INFO: renamed from: a */
        public Fragment f2444a;

        /* JADX INFO: renamed from: b */
        public boolean f2445b;

        /* JADX INFO: renamed from: c */
        public C0348a f2446c;

        /* JADX INFO: renamed from: d */
        public Fragment f2447d;

        /* JADX INFO: renamed from: e */
        public boolean f2448e;

        /* JADX INFO: renamed from: f */
        public C0348a f2449f;

        h() {
        }
    }

    static {
        f2408b = Build.VERSION.SDK_INT >= 21 ? new C0377y() : null;
        f2409c = m2923x();
    }

    /* JADX INFO: renamed from: A */
    private static void m2897A(AbstractC0378z abstractC0378z, Object obj, Object obj2, C0534a<String, View> c0534a, boolean z, C0348a c0348a) {
        ArrayList<String> arrayList = c0348a.f2395n;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        View view = c0534a.get(z ? c0348a.f2396o.get(0) : c0348a.f2395n.get(0));
        abstractC0378z.mo2941v(obj, view);
        if (obj2 != null) {
            abstractC0378z.mo2941v(obj2, view);
        }
    }

    /* JADX INFO: renamed from: B */
    static void m2898B(ArrayList<View> arrayList, int i) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            arrayList.get(size).setVisibility(i);
        }
    }

    /* JADX INFO: renamed from: C */
    static void m2899C(Context context, AbstractC0359g abstractC0359g, ArrayList<C0348a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, boolean z, g gVar) {
        ViewGroup viewGroup;
        SparseArray sparseArray = new SparseArray();
        for (int i3 = i; i3 < i2; i3++) {
            C0348a c0348a = arrayList.get(i3);
            if (arrayList2.get(i3).booleanValue()) {
                m2904e(c0348a, sparseArray, z);
            } else {
                m2902c(c0348a, sparseArray, z);
            }
        }
        if (sparseArray.size() != 0) {
            View view = new View(context);
            int size = sparseArray.size();
            for (int i4 = 0; i4 < size; i4++) {
                int iKeyAt = sparseArray.keyAt(i4);
                C0534a<String, String> c0534aM2903d = m2903d(iKeyAt, arrayList, arrayList2, i, i2);
                h hVar = (h) sparseArray.valueAt(i4);
                if (abstractC0359g.mo2510d() && (viewGroup = (ViewGroup) abstractC0359g.mo2509c(iKeyAt)) != null) {
                    if (z) {
                        m2914o(viewGroup, hVar, view, c0534aM2903d, gVar);
                    } else {
                        m2913n(viewGroup, hVar, view, c0534aM2903d, gVar);
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: a */
    private static void m2900a(ArrayList<View> arrayList, C0534a<String, View> c0534a, Collection<String> collection) {
        for (int size = c0534a.size() - 1; size >= 0; size--) {
            View viewM4297m = c0534a.m4297m(size);
            if (collection.contains(C0292v.m2061L(viewM4297m))) {
                arrayList.add(viewM4297m);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x008e  */
    /* JADX INFO: renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void m2901b(C0348a c0348a, AbstractC0375w.a aVar, SparseArray<h> sparseArray, boolean z, boolean z2) {
        int i;
        boolean z3;
        boolean z4;
        boolean z5;
        View view;
        Fragment fragment = aVar.f2400b;
        if (fragment == null || (i = fragment.f2094y) == 0) {
            return;
        }
        int i2 = z ? f2407a[aVar.f2399a] : aVar.f2399a;
        boolean z6 = false;
        boolean z7 = true;
        if (i2 == 1) {
            if (z2) {
                z3 = (fragment.f2082m || fragment.f2046A) ? false : true;
                z6 = z3;
                z4 = false;
                z5 = false;
            } else {
                z3 = fragment.f2058M;
                z6 = z3;
                z4 = false;
                z5 = false;
            }
        } else if (i2 == 3) {
            boolean z8 = z2 ? !(!fragment.f2082m || fragment.f2046A) : !(fragment.f2082m || (view = fragment.f2054I) == null || view.getVisibility() != 0 || fragment.f2060O < CropImageView.DEFAULT_ASPECT_RATIO);
            z5 = z8;
            z4 = true;
            z7 = false;
        } else if (i2 == 4) {
            if (!z2 ? !fragment.f2082m || fragment.f2046A : !fragment.f2059N || !fragment.f2082m || !fragment.f2046A) {
            }
            z5 = z8;
            z4 = true;
            z7 = false;
        } else if (i2 != 5) {
            if (i2 != 6) {
                if (i2 != 7) {
                    z4 = false;
                    z7 = false;
                    z5 = false;
                }
                if (z2) {
                }
            }
            if (z2) {
            }
            z5 = z8;
            z4 = true;
            z7 = false;
        } else if (z2) {
            if (!fragment.f2059N || fragment.f2046A || !fragment.f2082m) {
            }
            z6 = z3;
            z4 = false;
            z5 = false;
        } else {
            z3 = fragment.f2046A;
            z6 = z3;
            z4 = false;
            z5 = false;
        }
        h hVarM2915p = sparseArray.get(i);
        if (z6) {
            hVarM2915p = m2915p(hVarM2915p, sparseArray, i);
            hVarM2915p.f2444a = fragment;
            hVarM2915p.f2445b = z;
            hVarM2915p.f2446c = c0348a;
        }
        if (!z2 && z7) {
            if (hVarM2915p != null && hVarM2915p.f2447d == fragment) {
                hVarM2915p.f2447d = null;
            }
            if (!c0348a.f2397p) {
                AbstractC0366n abstractC0366n = c0348a.f2136r;
                abstractC0366n.m2781q0().m2877p(abstractC0366n.m2787v(fragment));
                abstractC0366n.m2739P0(fragment);
            }
        }
        if (z5 && (hVarM2915p == null || hVarM2915p.f2447d == null)) {
            hVarM2915p = m2915p(hVarM2915p, sparseArray, i);
            hVarM2915p.f2447d = fragment;
            hVarM2915p.f2448e = z;
            hVarM2915p.f2449f = c0348a;
        }
        if (z2 || !z4 || hVarM2915p == null || hVarM2915p.f2444a != fragment) {
            return;
        }
        hVarM2915p.f2444a = null;
    }

    /* JADX INFO: renamed from: c */
    public static void m2902c(C0348a c0348a, SparseArray<h> sparseArray, boolean z) {
        int size = c0348a.f2382a.size();
        for (int i = 0; i < size; i++) {
            m2901b(c0348a, c0348a.f2382a.get(i), sparseArray, false, z);
        }
    }

    /* JADX INFO: renamed from: d */
    private static C0534a<String, String> m2903d(int i, ArrayList<C0348a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        ArrayList<String> arrayList3;
        ArrayList<String> arrayList4;
        C0534a<String, String> c0534a = new C0534a<>();
        for (int i4 = i3 - 1; i4 >= i2; i4--) {
            C0348a c0348a = arrayList.get(i4);
            if (c0348a.m2519C(i)) {
                boolean zBooleanValue = arrayList2.get(i4).booleanValue();
                ArrayList<String> arrayList5 = c0348a.f2395n;
                if (arrayList5 != null) {
                    int size = arrayList5.size();
                    if (zBooleanValue) {
                        arrayList3 = c0348a.f2395n;
                        arrayList4 = c0348a.f2396o;
                    } else {
                        ArrayList<String> arrayList6 = c0348a.f2395n;
                        arrayList3 = c0348a.f2396o;
                        arrayList4 = arrayList6;
                    }
                    for (int i5 = 0; i5 < size; i5++) {
                        String str = arrayList4.get(i5);
                        String str2 = arrayList3.get(i5);
                        String strRemove = c0534a.remove(str2);
                        if (strRemove != null) {
                            c0534a.put(str, strRemove);
                        } else {
                            c0534a.put(str, str2);
                        }
                    }
                }
            }
        }
        return c0534a;
    }

    /* JADX INFO: renamed from: e */
    public static void m2904e(C0348a c0348a, SparseArray<h> sparseArray, boolean z) {
        if (c0348a.f2136r.m2778n0().mo2510d()) {
            for (int size = c0348a.f2382a.size() - 1; size >= 0; size--) {
                m2901b(c0348a, c0348a.f2382a.get(size), sparseArray, true, z);
            }
        }
    }

    /* JADX INFO: renamed from: f */
    static void m2905f(Fragment fragment, Fragment fragment2, boolean z, C0534a<String, View> c0534a, boolean z2) {
        AbstractC0238h abstractC0238hM2413N = z ? fragment2.m2413N() : fragment.m2413N();
        if (abstractC0238hM2413N != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int size = c0534a == null ? 0 : c0534a.size();
            for (int i = 0; i < size; i++) {
                arrayList2.add(c0534a.m4293i(i));
                arrayList.add(c0534a.m4297m(i));
            }
            if (z2) {
                abstractC0238hM2413N.m1678f(arrayList2, arrayList, null);
            } else {
                abstractC0238hM2413N.m1677e(arrayList2, arrayList, null);
            }
        }
    }

    /* JADX INFO: renamed from: g */
    private static boolean m2906g(AbstractC0378z abstractC0378z, List<Object> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!abstractC0378z.mo2932e(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: h */
    static C0534a<String, View> m2907h(AbstractC0378z abstractC0378z, C0534a<String, String> c0534a, Object obj, h hVar) {
        AbstractC0238h abstractC0238hM2413N;
        ArrayList<String> arrayList;
        String strM2916q;
        Fragment fragment = hVar.f2444a;
        View viewM2478l0 = fragment.m2478l0();
        if (c0534a.isEmpty() || obj == null || viewM2478l0 == null) {
            c0534a.clear();
            return null;
        }
        C0534a<String, View> c0534a2 = new C0534a<>();
        abstractC0378z.m2949j(c0534a2, viewM2478l0);
        C0348a c0348a = hVar.f2446c;
        if (hVar.f2445b) {
            abstractC0238hM2413N = fragment.m2421Q();
            arrayList = c0348a.f2395n;
        } else {
            abstractC0238hM2413N = fragment.m2413N();
            arrayList = c0348a.f2396o;
        }
        if (arrayList != null) {
            c0534a2.m4230o(arrayList);
            c0534a2.m4230o(c0534a.values());
        }
        if (abstractC0238hM2413N != null) {
            abstractC0238hM2413N.m1675c(arrayList, c0534a2);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view = c0534a2.get(str);
                if (view == null) {
                    String strM2916q2 = m2916q(c0534a, str);
                    if (strM2916q2 != null) {
                        c0534a.remove(strM2916q2);
                    }
                } else if (!str.equals(C0292v.m2061L(view)) && (strM2916q = m2916q(c0534a, str)) != null) {
                    c0534a.put(strM2916q, C0292v.m2061L(view));
                }
            }
        } else {
            m2924y(c0534a, c0534a2);
        }
        return c0534a2;
    }

    /* JADX INFO: renamed from: i */
    private static C0534a<String, View> m2908i(AbstractC0378z abstractC0378z, C0534a<String, String> c0534a, Object obj, h hVar) {
        AbstractC0238h abstractC0238hM2421Q;
        ArrayList<String> arrayList;
        if (c0534a.isEmpty() || obj == null) {
            c0534a.clear();
            return null;
        }
        Fragment fragment = hVar.f2447d;
        C0534a<String, View> c0534a2 = new C0534a<>();
        abstractC0378z.m2949j(c0534a2, fragment.m2409L1());
        C0348a c0348a = hVar.f2449f;
        if (hVar.f2448e) {
            abstractC0238hM2421Q = fragment.m2413N();
            arrayList = c0348a.f2396o;
        } else {
            abstractC0238hM2421Q = fragment.m2421Q();
            arrayList = c0348a.f2395n;
        }
        if (arrayList != null) {
            c0534a2.m4230o(arrayList);
        }
        if (abstractC0238hM2421Q != null) {
            abstractC0238hM2421Q.m1675c(arrayList, c0534a2);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view = c0534a2.get(str);
                if (view == null) {
                    c0534a.remove(str);
                } else if (!str.equals(C0292v.m2061L(view))) {
                    c0534a.put(C0292v.m2061L(view), c0534a.remove(str));
                }
            }
        } else {
            c0534a.m4230o(c0534a2.keySet());
        }
        return c0534a2;
    }

    /* JADX INFO: renamed from: j */
    private static AbstractC0378z m2909j(Fragment fragment, Fragment fragment2) {
        ArrayList arrayList = new ArrayList();
        if (fragment != null) {
            Object objM2418P = fragment.m2418P();
            if (objM2418P != null) {
                arrayList.add(objM2418P);
            }
            Object objM2462e0 = fragment.m2462e0();
            if (objM2462e0 != null) {
                arrayList.add(objM2462e0);
            }
            Object objM2468g0 = fragment.m2468g0();
            if (objM2468g0 != null) {
                arrayList.add(objM2468g0);
            }
        }
        if (fragment2 != null) {
            Object objM2410M = fragment2.m2410M();
            if (objM2410M != null) {
                arrayList.add(objM2410M);
            }
            Object objM2456c0 = fragment2.m2456c0();
            if (objM2456c0 != null) {
                arrayList.add(objM2456c0);
            }
            Object objM2465f0 = fragment2.m2465f0();
            if (objM2465f0 != null) {
                arrayList.add(objM2465f0);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        AbstractC0378z abstractC0378z = f2408b;
        if (abstractC0378z != null && m2906g(abstractC0378z, arrayList)) {
            return f2408b;
        }
        AbstractC0378z abstractC0378z2 = f2409c;
        if (abstractC0378z2 != null && m2906g(abstractC0378z2, arrayList)) {
            return f2409c;
        }
        if (f2408b == null && f2409c == null) {
            return null;
        }
        throw new IllegalArgumentException("Invalid Transition types");
    }

    /* JADX INFO: renamed from: k */
    static ArrayList<View> m2910k(AbstractC0378z abstractC0378z, Object obj, Fragment fragment, ArrayList<View> arrayList, View view) {
        if (obj == null) {
            return null;
        }
        ArrayList<View> arrayList2 = new ArrayList<>();
        View viewM2478l0 = fragment.m2478l0();
        if (viewM2478l0 != null) {
            abstractC0378z.m2948f(arrayList2, viewM2478l0);
        }
        if (arrayList != null) {
            arrayList2.removeAll(arrayList);
        }
        if (arrayList2.isEmpty()) {
            return arrayList2;
        }
        arrayList2.add(view);
        abstractC0378z.mo2930b(obj, arrayList2);
        return arrayList2;
    }

    /* JADX INFO: renamed from: l */
    private static Object m2911l(AbstractC0378z abstractC0378z, ViewGroup viewGroup, View view, C0534a<String, String> c0534a, h hVar, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Object objM2920u;
        C0534a<String, String> c0534a2;
        Object obj3;
        Rect rect;
        Fragment fragment = hVar.f2444a;
        Fragment fragment2 = hVar.f2447d;
        if (fragment == null || fragment2 == null) {
            return null;
        }
        boolean z = hVar.f2445b;
        if (c0534a.isEmpty()) {
            c0534a2 = c0534a;
            objM2920u = null;
        } else {
            objM2920u = m2920u(abstractC0378z, fragment, fragment2, z);
            c0534a2 = c0534a;
        }
        C0534a<String, View> c0534aM2908i = m2908i(abstractC0378z, c0534a2, objM2920u, hVar);
        if (c0534a.isEmpty()) {
            obj3 = null;
        } else {
            arrayList.addAll(c0534aM2908i.values());
            obj3 = objM2920u;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        m2905f(fragment, fragment2, z, c0534aM2908i, true);
        if (obj3 != null) {
            rect = new Rect();
            abstractC0378z.mo2943z(obj3, view, arrayList);
            m2897A(abstractC0378z, obj3, obj2, c0534aM2908i, hVar.f2448e, hVar.f2449f);
            if (obj != null) {
                abstractC0378z.mo2940u(obj, rect);
            }
        } else {
            rect = null;
        }
        ViewTreeObserverOnPreDrawListenerC0290t.m2040a(viewGroup, new f(abstractC0378z, c0534a, obj3, hVar, arrayList2, view, fragment, fragment2, z, arrayList, obj, rect));
        return obj3;
    }

    /* JADX INFO: renamed from: m */
    private static Object m2912m(AbstractC0378z abstractC0378z, ViewGroup viewGroup, View view, C0534a<String, String> c0534a, h hVar, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Object obj3;
        View view2;
        Rect rect;
        Fragment fragment = hVar.f2444a;
        Fragment fragment2 = hVar.f2447d;
        if (fragment != null) {
            fragment.m2409L1().setVisibility(0);
        }
        if (fragment == null || fragment2 == null) {
            return null;
        }
        boolean z = hVar.f2445b;
        Object objM2920u = c0534a.isEmpty() ? null : m2920u(abstractC0378z, fragment, fragment2, z);
        C0534a<String, View> c0534aM2908i = m2908i(abstractC0378z, c0534a, objM2920u, hVar);
        C0534a<String, View> c0534aM2907h = m2907h(abstractC0378z, c0534a, objM2920u, hVar);
        if (c0534a.isEmpty()) {
            if (c0534aM2908i != null) {
                c0534aM2908i.clear();
            }
            if (c0534aM2907h != null) {
                c0534aM2907h.clear();
            }
            obj3 = null;
        } else {
            m2900a(arrayList, c0534aM2908i, c0534a.keySet());
            m2900a(arrayList2, c0534aM2907h, c0534a.values());
            obj3 = objM2920u;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        m2905f(fragment, fragment2, z, c0534aM2908i, true);
        if (obj3 != null) {
            arrayList2.add(view);
            abstractC0378z.mo2943z(obj3, view, arrayList);
            m2897A(abstractC0378z, obj3, obj2, c0534aM2908i, hVar.f2448e, hVar.f2449f);
            Rect rect2 = new Rect();
            View viewM2919t = m2919t(c0534aM2907h, hVar, obj, z);
            if (viewM2919t != null) {
                abstractC0378z.mo2940u(obj, rect2);
            }
            rect = rect2;
            view2 = viewM2919t;
        } else {
            view2 = null;
            rect = null;
        }
        ViewTreeObserverOnPreDrawListenerC0290t.m2040a(viewGroup, new e(fragment, fragment2, z, c0534aM2907h, view2, abstractC0378z, rect));
        return obj3;
    }

    /* JADX INFO: renamed from: n */
    private static void m2913n(ViewGroup viewGroup, h hVar, View view, C0534a<String, String> c0534a, g gVar) {
        Object obj;
        Fragment fragment = hVar.f2444a;
        Fragment fragment2 = hVar.f2447d;
        AbstractC0378z abstractC0378zM2909j = m2909j(fragment2, fragment);
        if (abstractC0378zM2909j == null) {
            return;
        }
        boolean z = hVar.f2445b;
        boolean z2 = hVar.f2448e;
        Object objM2917r = m2917r(abstractC0378zM2909j, fragment, z);
        Object objM2918s = m2918s(abstractC0378zM2909j, fragment2, z2);
        ArrayList arrayList = new ArrayList();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object objM2911l = m2911l(abstractC0378zM2909j, viewGroup, view, c0534a, hVar, arrayList, arrayList2, objM2917r, objM2918s);
        if (objM2917r == null && objM2911l == null) {
            obj = objM2918s;
            if (obj == null) {
                return;
            }
        } else {
            obj = objM2918s;
        }
        ArrayList<View> arrayListM2910k = m2910k(abstractC0378zM2909j, obj, fragment2, arrayList, view);
        if (arrayListM2910k == null || arrayListM2910k.isEmpty()) {
            obj = null;
        }
        Object obj2 = obj;
        abstractC0378zM2909j.mo2929a(objM2917r, view);
        Object objM2921v = m2921v(abstractC0378zM2909j, objM2917r, obj2, objM2911l, fragment, hVar.f2445b);
        if (fragment2 != null && arrayListM2910k != null && (arrayListM2910k.size() > 0 || arrayList.size() > 0)) {
            C0604b c0604b = new C0604b();
            gVar.mo2798b(fragment2, c0604b);
            abstractC0378zM2909j.mo2942w(fragment2, objM2921v, c0604b, new c(gVar, fragment2, c0604b));
        }
        if (objM2921v != null) {
            ArrayList<View> arrayList3 = new ArrayList<>();
            abstractC0378zM2909j.mo2939t(objM2921v, objM2917r, arrayList3, obj2, arrayListM2910k, objM2911l, arrayList2);
            m2925z(abstractC0378zM2909j, viewGroup, fragment, view, arrayList2, objM2917r, arrayList3, obj2, arrayListM2910k);
            abstractC0378zM2909j.m2953x(viewGroup, arrayList2, c0534a);
            abstractC0378zM2909j.mo2931c(viewGroup, objM2921v);
            abstractC0378zM2909j.m2952s(viewGroup, arrayList2, c0534a);
        }
    }

    /* JADX INFO: renamed from: o */
    private static void m2914o(ViewGroup viewGroup, h hVar, View view, C0534a<String, String> c0534a, g gVar) {
        Object obj;
        Fragment fragment = hVar.f2444a;
        Fragment fragment2 = hVar.f2447d;
        AbstractC0378z abstractC0378zM2909j = m2909j(fragment2, fragment);
        if (abstractC0378zM2909j == null) {
            return;
        }
        boolean z = hVar.f2445b;
        boolean z2 = hVar.f2448e;
        ArrayList<View> arrayList = new ArrayList<>();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object objM2917r = m2917r(abstractC0378zM2909j, fragment, z);
        Object objM2918s = m2918s(abstractC0378zM2909j, fragment2, z2);
        Object objM2912m = m2912m(abstractC0378zM2909j, viewGroup, view, c0534a, hVar, arrayList2, arrayList, objM2917r, objM2918s);
        if (objM2917r == null && objM2912m == null) {
            obj = objM2918s;
            if (obj == null) {
                return;
            }
        } else {
            obj = objM2918s;
        }
        ArrayList<View> arrayListM2910k = m2910k(abstractC0378zM2909j, obj, fragment2, arrayList2, view);
        ArrayList<View> arrayListM2910k2 = m2910k(abstractC0378zM2909j, objM2917r, fragment, arrayList, view);
        m2898B(arrayListM2910k2, 4);
        Object objM2921v = m2921v(abstractC0378zM2909j, objM2917r, obj, objM2912m, fragment, z);
        if (fragment2 != null && arrayListM2910k != null && (arrayListM2910k.size() > 0 || arrayList2.size() > 0)) {
            C0604b c0604b = new C0604b();
            gVar.mo2798b(fragment2, c0604b);
            abstractC0378zM2909j.mo2942w(fragment2, objM2921v, c0604b, new a(gVar, fragment2, c0604b));
        }
        if (objM2921v != null) {
            m2922w(abstractC0378zM2909j, obj, fragment2, arrayListM2910k);
            ArrayList<String> arrayListM2951o = abstractC0378zM2909j.m2951o(arrayList);
            abstractC0378zM2909j.mo2939t(objM2921v, objM2917r, arrayListM2910k2, obj, arrayListM2910k, objM2912m, arrayList);
            abstractC0378zM2909j.mo2931c(viewGroup, objM2921v);
            abstractC0378zM2909j.m2954y(viewGroup, arrayList2, arrayList, arrayListM2951o, c0534a);
            m2898B(arrayListM2910k2, 0);
            abstractC0378zM2909j.mo2927A(objM2912m, arrayList2, arrayList);
        }
    }

    /* JADX INFO: renamed from: p */
    private static h m2915p(h hVar, SparseArray<h> sparseArray, int i) {
        if (hVar != null) {
            return hVar;
        }
        h hVar2 = new h();
        sparseArray.put(i, hVar2);
        return hVar2;
    }

    /* JADX INFO: renamed from: q */
    static String m2916q(C0534a<String, String> c0534a, String str) {
        int size = c0534a.size();
        for (int i = 0; i < size; i++) {
            if (str.equals(c0534a.m4297m(i))) {
                return c0534a.m4293i(i);
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: r */
    private static Object m2917r(AbstractC0378z abstractC0378z, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return abstractC0378z.mo2933g(z ? fragment.m2456c0() : fragment.m2410M());
    }

    /* JADX INFO: renamed from: s */
    private static Object m2918s(AbstractC0378z abstractC0378z, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return abstractC0378z.mo2933g(z ? fragment.m2462e0() : fragment.m2418P());
    }

    /* JADX INFO: renamed from: t */
    static View m2919t(C0534a<String, View> c0534a, h hVar, Object obj, boolean z) {
        ArrayList<String> arrayList;
        C0348a c0348a = hVar.f2446c;
        if (obj == null || c0534a == null || (arrayList = c0348a.f2395n) == null || arrayList.isEmpty()) {
            return null;
        }
        return c0534a.get(z ? c0348a.f2395n.get(0) : c0348a.f2396o.get(0));
    }

    /* JADX INFO: renamed from: u */
    private static Object m2920u(AbstractC0378z abstractC0378z, Fragment fragment, Fragment fragment2, boolean z) {
        if (fragment == null || fragment2 == null) {
            return null;
        }
        return abstractC0378z.mo2928B(abstractC0378z.mo2933g(z ? fragment2.m2468g0() : fragment.m2465f0()));
    }

    /* JADX INFO: renamed from: v */
    private static Object m2921v(AbstractC0378z abstractC0378z, Object obj, Object obj2, Object obj3, Fragment fragment, boolean z) {
        return (obj == null || obj2 == null || fragment == null) ? true : z ? fragment.m2391F() : fragment.m2388E() ? abstractC0378z.mo2935n(obj2, obj, obj3) : abstractC0378z.mo2934m(obj2, obj, obj3);
    }

    /* JADX INFO: renamed from: w */
    private static void m2922w(AbstractC0378z abstractC0378z, Object obj, Fragment fragment, ArrayList<View> arrayList) {
        if (fragment != null && obj != null && fragment.f2082m && fragment.f2046A && fragment.f2059N) {
            fragment.m2434U1(true);
            abstractC0378z.mo2938r(obj, fragment.m2478l0(), arrayList);
            ViewTreeObserverOnPreDrawListenerC0290t.m2040a(fragment.f2053H, new b(arrayList));
        }
    }

    /* JADX INFO: renamed from: x */
    private static AbstractC0378z m2923x() {
        try {
            return (AbstractC0378z) Class.forName("c.p.e").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: y */
    static void m2924y(C0534a<String, String> c0534a, C0534a<String, View> c0534a2) {
        for (int size = c0534a.size() - 1; size >= 0; size--) {
            if (!c0534a2.containsKey(c0534a.m4297m(size))) {
                c0534a.m4295k(size);
            }
        }
    }

    /* JADX INFO: renamed from: z */
    private static void m2925z(AbstractC0378z abstractC0378z, ViewGroup viewGroup, Fragment fragment, View view, ArrayList<View> arrayList, Object obj, ArrayList<View> arrayList2, Object obj2, ArrayList<View> arrayList3) {
        ViewTreeObserverOnPreDrawListenerC0290t.m2040a(viewGroup, new d(obj, abstractC0378z, view, fragment, arrayList, arrayList2, arrayList3, obj2));
    }
}
