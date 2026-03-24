package androidx.fragment.app;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.w;
import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class x {
    private static final int[] a = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8, 10};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final z f773b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final z f774c;

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ g f775b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Fragment f776c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ c.g.g.b f777d;

        a(g gVar, Fragment fragment, c.g.g.b bVar) {
            this.f775b = gVar;
            this.f776c = fragment;
            this.f777d = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f775b.a(this.f776c, this.f777d);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArrayList f778b;

        b(ArrayList arrayList) {
            this.f778b = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            x.B(this.f778b, 4);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ g f779b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Fragment f780c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ c.g.g.b f781d;

        c(g gVar, Fragment fragment, c.g.g.b bVar) {
            this.f779b = gVar;
            this.f780c = fragment;
            this.f781d = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f779b.a(this.f780c, this.f781d);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Object f782b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ z f783c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ View f784d;
        final /* synthetic */ Fragment e;
        final /* synthetic */ ArrayList f;
        final /* synthetic */ ArrayList g;
        final /* synthetic */ ArrayList h;
        final /* synthetic */ Object i;

        d(Object obj, z zVar, View view, Fragment fragment, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, Object obj2) {
            this.f782b = obj;
            this.f783c = zVar;
            this.f784d = view;
            this.e = fragment;
            this.f = arrayList;
            this.g = arrayList2;
            this.h = arrayList3;
            this.i = obj2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Object obj = this.f782b;
            if (obj != null) {
                this.f783c.p(obj, this.f784d);
                this.g.addAll(x.k(this.f783c, this.f782b, this.e, this.f, this.f784d));
            }
            if (this.h != null) {
                if (this.i != null) {
                    ArrayList<View> arrayList = new ArrayList<>();
                    arrayList.add(this.f784d);
                    this.f783c.q(this.i, this.h, arrayList);
                }
                this.h.clear();
                this.h.add(this.f784d);
            }
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Fragment f785b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Fragment f786c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f787d;
        final /* synthetic */ c.d.a e;
        final /* synthetic */ View f;
        final /* synthetic */ z g;
        final /* synthetic */ Rect h;

        e(Fragment fragment, Fragment fragment2, boolean z, c.d.a aVar, View view, z zVar, Rect rect) {
            this.f785b = fragment;
            this.f786c = fragment2;
            this.f787d = z;
            this.e = aVar;
            this.f = view;
            this.g = zVar;
            this.h = rect;
        }

        @Override // java.lang.Runnable
        public void run() {
            x.f(this.f785b, this.f786c, this.f787d, this.e, false);
            View view = this.f;
            if (view != null) {
                this.g.k(view, this.h);
            }
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ z f788b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ c.d.a f789c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Object f790d;
        final /* synthetic */ h e;
        final /* synthetic */ ArrayList f;
        final /* synthetic */ View g;
        final /* synthetic */ Fragment h;
        final /* synthetic */ Fragment i;
        final /* synthetic */ boolean j;
        final /* synthetic */ ArrayList k;
        final /* synthetic */ Object l;
        final /* synthetic */ Rect m;

        f(z zVar, c.d.a aVar, Object obj, h hVar, ArrayList arrayList, View view, Fragment fragment, Fragment fragment2, boolean z, ArrayList arrayList2, Object obj2, Rect rect) {
            this.f788b = zVar;
            this.f789c = aVar;
            this.f790d = obj;
            this.e = hVar;
            this.f = arrayList;
            this.g = view;
            this.h = fragment;
            this.i = fragment2;
            this.j = z;
            this.k = arrayList2;
            this.l = obj2;
            this.m = rect;
        }

        @Override // java.lang.Runnable
        public void run() {
            c.d.a<String, View> aVarH = x.h(this.f788b, this.f789c, this.f790d, this.e);
            if (aVarH != null) {
                this.f.addAll(aVarH.values());
                this.f.add(this.g);
            }
            x.f(this.h, this.i, this.j, aVarH, false);
            Object obj = this.f790d;
            if (obj != null) {
                this.f788b.A(obj, this.k, this.f);
                View viewT = x.t(aVarH, this.e, this.l, this.j);
                if (viewT != null) {
                    this.f788b.k(viewT, this.m);
                }
            }
        }
    }

    interface g {
        void a(Fragment fragment, c.g.g.b bVar);

        void b(Fragment fragment, c.g.g.b bVar);
    }

    static class h {
        public Fragment a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f791b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public androidx.fragment.app.a f792c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Fragment f793d;
        public boolean e;
        public androidx.fragment.app.a f;

        h() {
        }
    }

    static {
        f773b = Build.VERSION.SDK_INT >= 21 ? new y() : null;
        f774c = x();
    }

    private static void A(z zVar, Object obj, Object obj2, c.d.a<String, View> aVar, boolean z, androidx.fragment.app.a aVar2) {
        ArrayList<String> arrayList = aVar2.n;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        View view = aVar.get(z ? aVar2.o.get(0) : aVar2.n.get(0));
        zVar.v(obj, view);
        if (obj2 != null) {
            zVar.v(obj2, view);
        }
    }

    static void B(ArrayList<View> arrayList, int i) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            arrayList.get(size).setVisibility(i);
        }
    }

    static void C(Context context, androidx.fragment.app.g gVar, ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, boolean z, g gVar2) {
        ViewGroup viewGroup;
        SparseArray sparseArray = new SparseArray();
        for (int i3 = i; i3 < i2; i3++) {
            androidx.fragment.app.a aVar = arrayList.get(i3);
            if (arrayList2.get(i3).booleanValue()) {
                e(aVar, sparseArray, z);
            } else {
                c(aVar, sparseArray, z);
            }
        }
        if (sparseArray.size() != 0) {
            View view = new View(context);
            int size = sparseArray.size();
            for (int i4 = 0; i4 < size; i4++) {
                int iKeyAt = sparseArray.keyAt(i4);
                c.d.a<String, String> aVarD = d(iKeyAt, arrayList, arrayList2, i, i2);
                h hVar = (h) sparseArray.valueAt(i4);
                if (gVar.d() && (viewGroup = (ViewGroup) gVar.c(iKeyAt)) != null) {
                    if (z) {
                        o(viewGroup, hVar, view, aVarD, gVar2);
                    } else {
                        n(viewGroup, hVar, view, aVarD, gVar2);
                    }
                }
            }
        }
    }

    private static void a(ArrayList<View> arrayList, c.d.a<String, View> aVar, Collection<String> collection) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            View viewM = aVar.m(size);
            if (collection.contains(androidx.core.view.v.L(viewM))) {
                arrayList.add(viewM);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x008e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void b(androidx.fragment.app.a aVar, w.a aVar2, SparseArray<h> sparseArray, boolean z, boolean z2) {
        int i;
        boolean z3;
        boolean z4;
        boolean z5;
        View view;
        Fragment fragment = aVar2.f770b;
        if (fragment == null || (i = fragment.y) == 0) {
            return;
        }
        int i2 = z ? a[aVar2.a] : aVar2.a;
        boolean z6 = false;
        boolean z7 = true;
        if (i2 == 1) {
            if (z2) {
                z3 = (fragment.m || fragment.A) ? false : true;
                z6 = z3;
                z4 = false;
                z5 = false;
            } else {
                z3 = fragment.M;
                z6 = z3;
                z4 = false;
                z5 = false;
            }
        } else if (i2 == 3) {
            boolean z8 = z2 ? !(!fragment.m || fragment.A) : !(fragment.m || (view = fragment.I) == null || view.getVisibility() != 0 || fragment.O < CropImageView.DEFAULT_ASPECT_RATIO);
            z5 = z8;
            z4 = true;
            z7 = false;
        } else if (i2 == 4) {
            if (!z2 ? !fragment.m || fragment.A : !fragment.N || !fragment.m || !fragment.A) {
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
            if (!fragment.N || fragment.A || !fragment.m) {
            }
            z6 = z3;
            z4 = false;
            z5 = false;
        } else {
            z3 = fragment.A;
            z6 = z3;
            z4 = false;
            z5 = false;
        }
        h hVarP = sparseArray.get(i);
        if (z6) {
            hVarP = p(hVarP, sparseArray, i);
            hVarP.a = fragment;
            hVarP.f791b = z;
            hVarP.f792c = aVar;
        }
        if (!z2 && z7) {
            if (hVarP != null && hVarP.f793d == fragment) {
                hVarP.f793d = null;
            }
            if (!aVar.p) {
                n nVar = aVar.r;
                nVar.q0().p(nVar.v(fragment));
                nVar.P0(fragment);
            }
        }
        if (z5 && (hVarP == null || hVarP.f793d == null)) {
            hVarP = p(hVarP, sparseArray, i);
            hVarP.f793d = fragment;
            hVarP.e = z;
            hVarP.f = aVar;
        }
        if (z2 || !z4 || hVarP == null || hVarP.a != fragment) {
            return;
        }
        hVarP.a = null;
    }

    public static void c(androidx.fragment.app.a aVar, SparseArray<h> sparseArray, boolean z) {
        int size = aVar.a.size();
        for (int i = 0; i < size; i++) {
            b(aVar, aVar.a.get(i), sparseArray, false, z);
        }
    }

    private static c.d.a<String, String> d(int i, ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        ArrayList<String> arrayList3;
        ArrayList<String> arrayList4;
        c.d.a<String, String> aVar = new c.d.a<>();
        for (int i4 = i3 - 1; i4 >= i2; i4--) {
            androidx.fragment.app.a aVar2 = arrayList.get(i4);
            if (aVar2.C(i)) {
                boolean zBooleanValue = arrayList2.get(i4).booleanValue();
                ArrayList<String> arrayList5 = aVar2.n;
                if (arrayList5 != null) {
                    int size = arrayList5.size();
                    if (zBooleanValue) {
                        arrayList3 = aVar2.n;
                        arrayList4 = aVar2.o;
                    } else {
                        ArrayList<String> arrayList6 = aVar2.n;
                        arrayList3 = aVar2.o;
                        arrayList4 = arrayList6;
                    }
                    for (int i5 = 0; i5 < size; i5++) {
                        String str = arrayList4.get(i5);
                        String str2 = arrayList3.get(i5);
                        String strRemove = aVar.remove(str2);
                        if (strRemove != null) {
                            aVar.put(str, strRemove);
                        } else {
                            aVar.put(str, str2);
                        }
                    }
                }
            }
        }
        return aVar;
    }

    public static void e(androidx.fragment.app.a aVar, SparseArray<h> sparseArray, boolean z) {
        if (aVar.r.n0().d()) {
            for (int size = aVar.a.size() - 1; size >= 0; size--) {
                b(aVar, aVar.a.get(size), sparseArray, true, z);
            }
        }
    }

    static void f(Fragment fragment, Fragment fragment2, boolean z, c.d.a<String, View> aVar, boolean z2) {
        androidx.core.app.h hVarN = z ? fragment2.N() : fragment.N();
        if (hVarN != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int size = aVar == null ? 0 : aVar.size();
            for (int i = 0; i < size; i++) {
                arrayList2.add(aVar.i(i));
                arrayList.add(aVar.m(i));
            }
            if (z2) {
                hVarN.f(arrayList2, arrayList, null);
            } else {
                hVarN.e(arrayList2, arrayList, null);
            }
        }
    }

    private static boolean g(z zVar, List<Object> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!zVar.e(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    static c.d.a<String, View> h(z zVar, c.d.a<String, String> aVar, Object obj, h hVar) {
        androidx.core.app.h hVarN;
        ArrayList<String> arrayList;
        String strQ;
        Fragment fragment = hVar.a;
        View viewL0 = fragment.l0();
        if (aVar.isEmpty() || obj == null || viewL0 == null) {
            aVar.clear();
            return null;
        }
        c.d.a<String, View> aVar2 = new c.d.a<>();
        zVar.j(aVar2, viewL0);
        androidx.fragment.app.a aVar3 = hVar.f792c;
        if (hVar.f791b) {
            hVarN = fragment.Q();
            arrayList = aVar3.n;
        } else {
            hVarN = fragment.N();
            arrayList = aVar3.o;
        }
        if (arrayList != null) {
            aVar2.o(arrayList);
            aVar2.o(aVar.values());
        }
        if (hVarN != null) {
            hVarN.c(arrayList, aVar2);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view = aVar2.get(str);
                if (view == null) {
                    String strQ2 = q(aVar, str);
                    if (strQ2 != null) {
                        aVar.remove(strQ2);
                    }
                } else if (!str.equals(androidx.core.view.v.L(view)) && (strQ = q(aVar, str)) != null) {
                    aVar.put(strQ, androidx.core.view.v.L(view));
                }
            }
        } else {
            y(aVar, aVar2);
        }
        return aVar2;
    }

    private static c.d.a<String, View> i(z zVar, c.d.a<String, String> aVar, Object obj, h hVar) {
        androidx.core.app.h hVarQ;
        ArrayList<String> arrayList;
        if (aVar.isEmpty() || obj == null) {
            aVar.clear();
            return null;
        }
        Fragment fragment = hVar.f793d;
        c.d.a<String, View> aVar2 = new c.d.a<>();
        zVar.j(aVar2, fragment.L1());
        androidx.fragment.app.a aVar3 = hVar.f;
        if (hVar.e) {
            hVarQ = fragment.N();
            arrayList = aVar3.o;
        } else {
            hVarQ = fragment.Q();
            arrayList = aVar3.n;
        }
        if (arrayList != null) {
            aVar2.o(arrayList);
        }
        if (hVarQ != null) {
            hVarQ.c(arrayList, aVar2);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view = aVar2.get(str);
                if (view == null) {
                    aVar.remove(str);
                } else if (!str.equals(androidx.core.view.v.L(view))) {
                    aVar.put(androidx.core.view.v.L(view), aVar.remove(str));
                }
            }
        } else {
            aVar.o(aVar2.keySet());
        }
        return aVar2;
    }

    private static z j(Fragment fragment, Fragment fragment2) {
        ArrayList arrayList = new ArrayList();
        if (fragment != null) {
            Object objP = fragment.P();
            if (objP != null) {
                arrayList.add(objP);
            }
            Object objE0 = fragment.e0();
            if (objE0 != null) {
                arrayList.add(objE0);
            }
            Object objG0 = fragment.g0();
            if (objG0 != null) {
                arrayList.add(objG0);
            }
        }
        if (fragment2 != null) {
            Object objM = fragment2.M();
            if (objM != null) {
                arrayList.add(objM);
            }
            Object objC0 = fragment2.c0();
            if (objC0 != null) {
                arrayList.add(objC0);
            }
            Object objF0 = fragment2.f0();
            if (objF0 != null) {
                arrayList.add(objF0);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        z zVar = f773b;
        if (zVar != null && g(zVar, arrayList)) {
            return f773b;
        }
        z zVar2 = f774c;
        if (zVar2 != null && g(zVar2, arrayList)) {
            return f774c;
        }
        if (f773b == null && f774c == null) {
            return null;
        }
        throw new IllegalArgumentException("Invalid Transition types");
    }

    static ArrayList<View> k(z zVar, Object obj, Fragment fragment, ArrayList<View> arrayList, View view) {
        if (obj == null) {
            return null;
        }
        ArrayList<View> arrayList2 = new ArrayList<>();
        View viewL0 = fragment.l0();
        if (viewL0 != null) {
            zVar.f(arrayList2, viewL0);
        }
        if (arrayList != null) {
            arrayList2.removeAll(arrayList);
        }
        if (arrayList2.isEmpty()) {
            return arrayList2;
        }
        arrayList2.add(view);
        zVar.b(obj, arrayList2);
        return arrayList2;
    }

    private static Object l(z zVar, ViewGroup viewGroup, View view, c.d.a<String, String> aVar, h hVar, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Object objU;
        c.d.a<String, String> aVar2;
        Object obj3;
        Rect rect;
        Fragment fragment = hVar.a;
        Fragment fragment2 = hVar.f793d;
        if (fragment == null || fragment2 == null) {
            return null;
        }
        boolean z = hVar.f791b;
        if (aVar.isEmpty()) {
            aVar2 = aVar;
            objU = null;
        } else {
            objU = u(zVar, fragment, fragment2, z);
            aVar2 = aVar;
        }
        c.d.a<String, View> aVarI = i(zVar, aVar2, objU, hVar);
        if (aVar.isEmpty()) {
            obj3 = null;
        } else {
            arrayList.addAll(aVarI.values());
            obj3 = objU;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        f(fragment, fragment2, z, aVarI, true);
        if (obj3 != null) {
            rect = new Rect();
            zVar.z(obj3, view, arrayList);
            A(zVar, obj3, obj2, aVarI, hVar.e, hVar.f);
            if (obj != null) {
                zVar.u(obj, rect);
            }
        } else {
            rect = null;
        }
        androidx.core.view.t.a(viewGroup, new f(zVar, aVar, obj3, hVar, arrayList2, view, fragment, fragment2, z, arrayList, obj, rect));
        return obj3;
    }

    private static Object m(z zVar, ViewGroup viewGroup, View view, c.d.a<String, String> aVar, h hVar, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Object obj3;
        View view2;
        Rect rect;
        Fragment fragment = hVar.a;
        Fragment fragment2 = hVar.f793d;
        if (fragment != null) {
            fragment.L1().setVisibility(0);
        }
        if (fragment == null || fragment2 == null) {
            return null;
        }
        boolean z = hVar.f791b;
        Object objU = aVar.isEmpty() ? null : u(zVar, fragment, fragment2, z);
        c.d.a<String, View> aVarI = i(zVar, aVar, objU, hVar);
        c.d.a<String, View> aVarH = h(zVar, aVar, objU, hVar);
        if (aVar.isEmpty()) {
            if (aVarI != null) {
                aVarI.clear();
            }
            if (aVarH != null) {
                aVarH.clear();
            }
            obj3 = null;
        } else {
            a(arrayList, aVarI, aVar.keySet());
            a(arrayList2, aVarH, aVar.values());
            obj3 = objU;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        f(fragment, fragment2, z, aVarI, true);
        if (obj3 != null) {
            arrayList2.add(view);
            zVar.z(obj3, view, arrayList);
            A(zVar, obj3, obj2, aVarI, hVar.e, hVar.f);
            Rect rect2 = new Rect();
            View viewT = t(aVarH, hVar, obj, z);
            if (viewT != null) {
                zVar.u(obj, rect2);
            }
            rect = rect2;
            view2 = viewT;
        } else {
            view2 = null;
            rect = null;
        }
        androidx.core.view.t.a(viewGroup, new e(fragment, fragment2, z, aVarH, view2, zVar, rect));
        return obj3;
    }

    private static void n(ViewGroup viewGroup, h hVar, View view, c.d.a<String, String> aVar, g gVar) {
        Object obj;
        Fragment fragment = hVar.a;
        Fragment fragment2 = hVar.f793d;
        z zVarJ = j(fragment2, fragment);
        if (zVarJ == null) {
            return;
        }
        boolean z = hVar.f791b;
        boolean z2 = hVar.e;
        Object objR = r(zVarJ, fragment, z);
        Object objS = s(zVarJ, fragment2, z2);
        ArrayList arrayList = new ArrayList();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object objL = l(zVarJ, viewGroup, view, aVar, hVar, arrayList, arrayList2, objR, objS);
        if (objR == null && objL == null) {
            obj = objS;
            if (obj == null) {
                return;
            }
        } else {
            obj = objS;
        }
        ArrayList<View> arrayListK = k(zVarJ, obj, fragment2, arrayList, view);
        if (arrayListK == null || arrayListK.isEmpty()) {
            obj = null;
        }
        Object obj2 = obj;
        zVarJ.a(objR, view);
        Object objV = v(zVarJ, objR, obj2, objL, fragment, hVar.f791b);
        if (fragment2 != null && arrayListK != null && (arrayListK.size() > 0 || arrayList.size() > 0)) {
            c.g.g.b bVar = new c.g.g.b();
            gVar.b(fragment2, bVar);
            zVarJ.w(fragment2, objV, bVar, new c(gVar, fragment2, bVar));
        }
        if (objV != null) {
            ArrayList<View> arrayList3 = new ArrayList<>();
            zVarJ.t(objV, objR, arrayList3, obj2, arrayListK, objL, arrayList2);
            z(zVarJ, viewGroup, fragment, view, arrayList2, objR, arrayList3, obj2, arrayListK);
            zVarJ.x(viewGroup, arrayList2, aVar);
            zVarJ.c(viewGroup, objV);
            zVarJ.s(viewGroup, arrayList2, aVar);
        }
    }

    private static void o(ViewGroup viewGroup, h hVar, View view, c.d.a<String, String> aVar, g gVar) {
        Object obj;
        Fragment fragment = hVar.a;
        Fragment fragment2 = hVar.f793d;
        z zVarJ = j(fragment2, fragment);
        if (zVarJ == null) {
            return;
        }
        boolean z = hVar.f791b;
        boolean z2 = hVar.e;
        ArrayList<View> arrayList = new ArrayList<>();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object objR = r(zVarJ, fragment, z);
        Object objS = s(zVarJ, fragment2, z2);
        Object objM = m(zVarJ, viewGroup, view, aVar, hVar, arrayList2, arrayList, objR, objS);
        if (objR == null && objM == null) {
            obj = objS;
            if (obj == null) {
                return;
            }
        } else {
            obj = objS;
        }
        ArrayList<View> arrayListK = k(zVarJ, obj, fragment2, arrayList2, view);
        ArrayList<View> arrayListK2 = k(zVarJ, objR, fragment, arrayList, view);
        B(arrayListK2, 4);
        Object objV = v(zVarJ, objR, obj, objM, fragment, z);
        if (fragment2 != null && arrayListK != null && (arrayListK.size() > 0 || arrayList2.size() > 0)) {
            c.g.g.b bVar = new c.g.g.b();
            gVar.b(fragment2, bVar);
            zVarJ.w(fragment2, objV, bVar, new a(gVar, fragment2, bVar));
        }
        if (objV != null) {
            w(zVarJ, obj, fragment2, arrayListK);
            ArrayList<String> arrayListO = zVarJ.o(arrayList);
            zVarJ.t(objV, objR, arrayListK2, obj, arrayListK, objM, arrayList);
            zVarJ.c(viewGroup, objV);
            zVarJ.y(viewGroup, arrayList2, arrayList, arrayListO, aVar);
            B(arrayListK2, 0);
            zVarJ.A(objM, arrayList2, arrayList);
        }
    }

    private static h p(h hVar, SparseArray<h> sparseArray, int i) {
        if (hVar != null) {
            return hVar;
        }
        h hVar2 = new h();
        sparseArray.put(i, hVar2);
        return hVar2;
    }

    static String q(c.d.a<String, String> aVar, String str) {
        int size = aVar.size();
        for (int i = 0; i < size; i++) {
            if (str.equals(aVar.m(i))) {
                return aVar.i(i);
            }
        }
        return null;
    }

    private static Object r(z zVar, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return zVar.g(z ? fragment.c0() : fragment.M());
    }

    private static Object s(z zVar, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return zVar.g(z ? fragment.e0() : fragment.P());
    }

    static View t(c.d.a<String, View> aVar, h hVar, Object obj, boolean z) {
        ArrayList<String> arrayList;
        androidx.fragment.app.a aVar2 = hVar.f792c;
        if (obj == null || aVar == null || (arrayList = aVar2.n) == null || arrayList.isEmpty()) {
            return null;
        }
        return aVar.get(z ? aVar2.n.get(0) : aVar2.o.get(0));
    }

    private static Object u(z zVar, Fragment fragment, Fragment fragment2, boolean z) {
        if (fragment == null || fragment2 == null) {
            return null;
        }
        return zVar.B(zVar.g(z ? fragment2.g0() : fragment.f0()));
    }

    private static Object v(z zVar, Object obj, Object obj2, Object obj3, Fragment fragment, boolean z) {
        return (obj == null || obj2 == null || fragment == null) ? true : z ? fragment.F() : fragment.E() ? zVar.n(obj2, obj, obj3) : zVar.m(obj2, obj, obj3);
    }

    private static void w(z zVar, Object obj, Fragment fragment, ArrayList<View> arrayList) {
        if (fragment != null && obj != null && fragment.m && fragment.A && fragment.N) {
            fragment.U1(true);
            zVar.r(obj, fragment.l0(), arrayList);
            androidx.core.view.t.a(fragment.H, new b(arrayList));
        }
    }

    private static z x() {
        try {
            return (z) Class.forName("c.p.e").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    static void y(c.d.a<String, String> aVar, c.d.a<String, View> aVar2) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            if (!aVar2.containsKey(aVar.m(size))) {
                aVar.k(size);
            }
        }
    }

    private static void z(z zVar, ViewGroup viewGroup, Fragment fragment, View view, ArrayList<View> arrayList, Object obj, ArrayList<View> arrayList2, Object obj2, ArrayList<View> arrayList3) {
        androidx.core.view.t.a(viewGroup, new d(obj, zVar, view, fragment, arrayList, arrayList2, arrayList3, obj2));
    }
}
