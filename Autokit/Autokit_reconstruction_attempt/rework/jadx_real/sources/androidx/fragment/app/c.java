package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.fragment.app.c0;
import androidx.fragment.app.f;
import c.g.g.b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class c extends c0 {

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[c0.e.c.values().length];
            a = iArr;
            try {
                iArr[c0.e.c.GONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[c0.e.c.INVISIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[c0.e.c.REMOVED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[c0.e.c.VISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f670b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ c0.e f671c;

        b(List list, c0.e eVar) {
            this.f670b = list;
            this.f671c = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f670b.contains(this.f671c)) {
                this.f670b.remove(this.f671c);
                c.this.s(this.f671c);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.c$c, reason: collision with other inner class name */
    class C0031c extends AnimatorListenerAdapter {
        final /* synthetic */ ViewGroup a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f673b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f674c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ c0.e f675d;
        final /* synthetic */ k e;

        C0031c(c cVar, ViewGroup viewGroup, View view, boolean z, c0.e eVar, k kVar) {
            this.a = viewGroup;
            this.f673b = view;
            this.f674c = z;
            this.f675d = eVar;
            this.e = kVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.a.endViewTransition(this.f673b);
            if (this.f674c) {
                this.f675d.e().a(this.f673b);
            }
            this.e.a();
        }
    }

    class d implements b.a {
        final /* synthetic */ Animator a;

        d(c cVar, Animator animator) {
            this.a = animator;
        }

        @Override // c.g.g.b.a
        public void a() {
            this.a.end();
        }
    }

    class e implements Animation.AnimationListener {
        final /* synthetic */ ViewGroup a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f676b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ k f677c;

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                e eVar = e.this;
                eVar.a.endViewTransition(eVar.f676b);
                e.this.f677c.a();
            }
        }

        e(c cVar, ViewGroup viewGroup, View view, k kVar) {
            this.a = viewGroup;
            this.f676b = view;
            this.f677c = kVar;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.a.post(new a());
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    class f implements b.a {
        final /* synthetic */ View a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewGroup f679b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ k f680c;

        f(c cVar, View view, ViewGroup viewGroup, k kVar) {
            this.a = view;
            this.f679b = viewGroup;
            this.f680c = kVar;
        }

        @Override // c.g.g.b.a
        public void a() {
            this.a.clearAnimation();
            this.f679b.endViewTransition(this.a);
            this.f680c.a();
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ c0.e f681b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ c0.e f682c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f683d;
        final /* synthetic */ c.d.a e;

        g(c cVar, c0.e eVar, c0.e eVar2, boolean z, c.d.a aVar) {
            this.f681b = eVar;
            this.f682c = eVar2;
            this.f683d = z;
            this.e = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            x.f(this.f681b.f(), this.f682c.f(), this.f683d, this.e, false);
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ z f684b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f685c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Rect f686d;

        h(c cVar, z zVar, View view, Rect rect) {
            this.f684b = zVar;
            this.f685c = view;
            this.f686d = rect;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f684b.k(this.f685c, this.f686d);
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArrayList f687b;

        i(c cVar, ArrayList arrayList) {
            this.f687b = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            x.B(this.f687b, 4);
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ m f688b;

        j(c cVar, m mVar) {
            this.f688b = mVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f688b.a();
        }
    }

    private static class k extends l {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f689c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f690d;
        private f.d e;

        k(c0.e eVar, c.g.g.b bVar, boolean z) {
            super(eVar, bVar);
            this.f690d = false;
            this.f689c = z;
        }

        f.d e(Context context) {
            if (this.f690d) {
                return this.e;
            }
            f.d dVarC = androidx.fragment.app.f.c(context, b().f(), b().e() == c0.e.c.VISIBLE, this.f689c);
            this.e = dVarC;
            this.f690d = true;
            return dVarC;
        }
    }

    private static class l {
        private final c0.e a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final c.g.g.b f691b;

        l(c0.e eVar, c.g.g.b bVar) {
            this.a = eVar;
            this.f691b = bVar;
        }

        void a() {
            this.a.d(this.f691b);
        }

        c0.e b() {
            return this.a;
        }

        c.g.g.b c() {
            return this.f691b;
        }

        boolean d() {
            c0.e.c cVar;
            c0.e.c cVarC = c0.e.c.c(this.a.f().I);
            c0.e.c cVarE = this.a.e();
            return cVarC == cVarE || !(cVarC == (cVar = c0.e.c.VISIBLE) || cVarE == cVar);
        }
    }

    private static class m extends l {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Object f692c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f693d;
        private final Object e;

        m(c0.e eVar, c.g.g.b bVar, boolean z, boolean z2) {
            super(eVar, bVar);
            if (eVar.e() == c0.e.c.VISIBLE) {
                this.f692c = z ? eVar.f().c0() : eVar.f().M();
                this.f693d = z ? eVar.f().F() : eVar.f().E();
            } else {
                this.f692c = z ? eVar.f().e0() : eVar.f().P();
                this.f693d = true;
            }
            if (!z2) {
                this.e = null;
            } else if (z) {
                this.e = eVar.f().g0();
            } else {
                this.e = eVar.f().f0();
            }
        }

        private z f(Object obj) {
            if (obj == null) {
                return null;
            }
            z zVar = x.f773b;
            if (zVar != null && zVar.e(obj)) {
                return x.f773b;
            }
            z zVar2 = x.f774c;
            if (zVar2 != null && zVar2.e(obj)) {
                return x.f774c;
            }
            throw new IllegalArgumentException("Transition " + obj + " for fragment " + b().f() + " is not a valid framework Transition or AndroidX Transition");
        }

        z e() {
            z zVarF = f(this.f692c);
            z zVarF2 = f(this.e);
            if (zVarF == null || zVarF2 == null || zVarF == zVarF2) {
                return zVarF != null ? zVarF : zVarF2;
            }
            throw new IllegalArgumentException("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + b().f() + " returned Transition " + this.f692c + " which uses a different Transition  type than its shared element transition " + this.e);
        }

        public Object g() {
            return this.e;
        }

        Object h() {
            return this.f692c;
        }

        public boolean i() {
            return this.e != null;
        }

        boolean j() {
            return this.f693d;
        }
    }

    c(ViewGroup viewGroup) {
        super(viewGroup);
    }

    private void w(List<k> list, List<c0.e> list2, boolean z, Map<c0.e, Boolean> map) {
        ViewGroup viewGroupM = m();
        Context context = viewGroupM.getContext();
        ArrayList<k> arrayList = new ArrayList();
        boolean z2 = false;
        for (k kVar : list) {
            if (kVar.d()) {
                kVar.a();
            } else {
                f.d dVarE = kVar.e(context);
                if (dVarE == null) {
                    kVar.a();
                } else {
                    Animator animator = dVarE.f722b;
                    if (animator == null) {
                        arrayList.add(kVar);
                    } else {
                        c0.e eVarB = kVar.b();
                        Fragment fragmentF = eVarB.f();
                        if (Boolean.TRUE.equals(map.get(eVarB))) {
                            if (n.E0(2)) {
                                String str = "Ignoring Animator set on " + fragmentF + " as this Fragment was involved in a Transition.";
                            }
                            kVar.a();
                        } else {
                            boolean z3 = eVarB.e() == c0.e.c.GONE;
                            if (z3) {
                                list2.remove(eVarB);
                            }
                            View view = fragmentF.I;
                            viewGroupM.startViewTransition(view);
                            animator.addListener(new C0031c(this, viewGroupM, view, z3, eVarB, kVar));
                            animator.setTarget(view);
                            animator.start();
                            kVar.c().c(new d(this, animator));
                            z2 = true;
                        }
                    }
                }
            }
        }
        for (k kVar2 : arrayList) {
            c0.e eVarB2 = kVar2.b();
            Fragment fragmentF2 = eVarB2.f();
            if (z) {
                if (n.E0(2)) {
                    String str2 = "Ignoring Animation set on " + fragmentF2 + " as Animations cannot run alongside Transitions.";
                }
                kVar2.a();
            } else if (z2) {
                if (n.E0(2)) {
                    String str3 = "Ignoring Animation set on " + fragmentF2 + " as Animations cannot run alongside Animators.";
                }
                kVar2.a();
            } else {
                View view2 = fragmentF2.I;
                f.d dVarE2 = kVar2.e(context);
                c.g.j.h.e(dVarE2);
                Animation animation = dVarE2.a;
                c.g.j.h.e(animation);
                Animation animation2 = animation;
                if (eVarB2.e() != c0.e.c.REMOVED) {
                    view2.startAnimation(animation2);
                    kVar2.a();
                } else {
                    viewGroupM.startViewTransition(view2);
                    f.e eVar = new f.e(animation2, viewGroupM, view2);
                    eVar.setAnimationListener(new e(this, viewGroupM, view2, kVar2));
                    view2.startAnimation(eVar);
                }
                kVar2.c().c(new f(this, view2, viewGroupM, kVar2));
            }
        }
    }

    private Map<c0.e, Boolean> x(List<m> list, List<c0.e> list2, boolean z, c0.e eVar, c0.e eVar2) {
        Iterator<m> it;
        View view;
        Object obj;
        ArrayList<View> arrayList;
        Object obj2;
        ArrayList<View> arrayList2;
        c0.e eVar3;
        c0.e eVar4;
        View view2;
        Object objN;
        c.d.a aVar;
        ArrayList<View> arrayList3;
        c0.e eVar5;
        ArrayList<View> arrayList4;
        Rect rect;
        z zVar;
        c0.e eVar6;
        View view3;
        androidx.core.app.h hVarN;
        androidx.core.app.h hVarQ;
        ArrayList<String> arrayList5;
        View view4;
        View view5;
        String strQ;
        ArrayList<String> arrayList6;
        boolean z2 = z;
        c0.e eVar7 = eVar;
        c0.e eVar8 = eVar2;
        HashMap map = new HashMap();
        z zVar2 = null;
        for (m mVar : list) {
            if (!mVar.d()) {
                z zVarE = mVar.e();
                if (zVar2 == null) {
                    zVar2 = zVarE;
                } else if (zVarE != null && zVar2 != zVarE) {
                    throw new IllegalArgumentException("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + mVar.b().f() + " returned Transition " + mVar.h() + " which uses a different Transition  type than other Fragments.");
                }
            }
        }
        if (zVar2 == null) {
            for (m mVar2 : list) {
                map.put(mVar2.b(), Boolean.FALSE);
                mVar2.a();
            }
            return map;
        }
        View view6 = new View(m().getContext());
        Rect rect2 = new Rect();
        ArrayList<View> arrayList7 = new ArrayList<>();
        ArrayList<View> arrayList8 = new ArrayList<>();
        c.d.a aVar2 = new c.d.a();
        Object obj3 = null;
        View view7 = null;
        boolean z3 = false;
        for (m mVar3 : list) {
            if (!mVar3.i() || eVar7 == null || eVar8 == null) {
                aVar = aVar2;
                arrayList3 = arrayList8;
                eVar5 = eVar7;
                arrayList4 = arrayList7;
                rect = rect2;
                zVar = zVar2;
                eVar6 = eVar8;
                view3 = view6;
                view7 = view7;
            } else {
                Object objB = zVar2.B(zVar2.g(mVar3.g()));
                ArrayList<String> arrayListH0 = eVar2.f().h0();
                ArrayList<String> arrayListH02 = eVar.f().h0();
                ArrayList<String> arrayListI0 = eVar.f().i0();
                View view8 = view7;
                int i2 = 0;
                while (i2 < arrayListI0.size()) {
                    int iIndexOf = arrayListH0.indexOf(arrayListI0.get(i2));
                    ArrayList<String> arrayList9 = arrayListI0;
                    if (iIndexOf != -1) {
                        arrayListH0.set(iIndexOf, arrayListH02.get(i2));
                    }
                    i2++;
                    arrayListI0 = arrayList9;
                }
                ArrayList<String> arrayListI02 = eVar2.f().i0();
                if (z2) {
                    hVarN = eVar.f().N();
                    hVarQ = eVar2.f().Q();
                } else {
                    hVarN = eVar.f().Q();
                    hVarQ = eVar2.f().N();
                }
                int i3 = 0;
                for (int size = arrayListH0.size(); i3 < size; size = size) {
                    aVar2.put(arrayListH0.get(i3), arrayListI02.get(i3));
                    i3++;
                }
                c.d.a<String, View> aVar3 = new c.d.a<>();
                u(aVar3, eVar.f().I);
                aVar3.o(arrayListH0);
                if (hVarN != null) {
                    hVarN.c(arrayListH0, aVar3);
                    int size2 = arrayListH0.size() - 1;
                    while (size2 >= 0) {
                        String str = arrayListH0.get(size2);
                        View view9 = aVar3.get(str);
                        if (view9 == null) {
                            aVar2.remove(str);
                            arrayList6 = arrayListH0;
                        } else {
                            arrayList6 = arrayListH0;
                            if (!str.equals(androidx.core.view.v.L(view9))) {
                                aVar2.put(androidx.core.view.v.L(view9), (String) aVar2.remove(str));
                            }
                        }
                        size2--;
                        arrayListH0 = arrayList6;
                    }
                    arrayList5 = arrayListH0;
                } else {
                    arrayList5 = arrayListH0;
                    aVar2.o(aVar3.keySet());
                }
                c.d.a<String, View> aVar4 = new c.d.a<>();
                u(aVar4, eVar2.f().I);
                aVar4.o(arrayListI02);
                aVar4.o(aVar2.values());
                if (hVarQ != null) {
                    hVarQ.c(arrayListI02, aVar4);
                    for (int size3 = arrayListI02.size() - 1; size3 >= 0; size3--) {
                        String str2 = arrayListI02.get(size3);
                        View view10 = aVar4.get(str2);
                        if (view10 == null) {
                            String strQ2 = x.q(aVar2, str2);
                            if (strQ2 != null) {
                                aVar2.remove(strQ2);
                            }
                        } else if (!str2.equals(androidx.core.view.v.L(view10)) && (strQ = x.q(aVar2, str2)) != null) {
                            aVar2.put(strQ, androidx.core.view.v.L(view10));
                        }
                    }
                } else {
                    x.y(aVar2, aVar4);
                }
                v(aVar3, aVar2.keySet());
                v(aVar4, aVar2.values());
                if (aVar2.isEmpty()) {
                    arrayList7.clear();
                    arrayList8.clear();
                    eVar5 = eVar;
                    aVar = aVar2;
                    arrayList3 = arrayList8;
                    arrayList4 = arrayList7;
                    rect = rect2;
                    view3 = view6;
                    zVar = zVar2;
                    view7 = view8;
                    obj3 = null;
                    eVar6 = eVar2;
                } else {
                    x.f(eVar2.f(), eVar.f(), z2, aVar3, true);
                    ArrayList<String> arrayList10 = arrayList5;
                    HashMap map2 = map;
                    View view11 = view6;
                    Rect rect3 = rect2;
                    aVar = aVar2;
                    ArrayList<View> arrayList11 = arrayList8;
                    androidx.core.view.t.a(m(), new g(this, eVar2, eVar, z, aVar4));
                    Iterator<View> it2 = aVar3.values().iterator();
                    while (it2.hasNext()) {
                        t(arrayList7, it2.next());
                    }
                    if (arrayList10.isEmpty()) {
                        view7 = view8;
                    } else {
                        View view12 = aVar3.get(arrayList10.get(0));
                        zVar2.v(objB, view12);
                        view7 = view12;
                    }
                    Iterator<View> it3 = aVar4.values().iterator();
                    while (it3.hasNext()) {
                        t(arrayList11, it3.next());
                    }
                    arrayList3 = arrayList11;
                    if (arrayListI02.isEmpty() || (view5 = aVar4.get(arrayListI02.get(0))) == null) {
                        rect = rect3;
                        view4 = view11;
                    } else {
                        rect = rect3;
                        androidx.core.view.t.a(m(), new h(this, zVar2, view5, rect));
                        view4 = view11;
                        z3 = true;
                    }
                    zVar2.z(objB, view4, arrayList7);
                    arrayList4 = arrayList7;
                    view3 = view4;
                    zVar = zVar2;
                    zVar2.t(objB, null, null, null, null, objB, arrayList3);
                    eVar5 = eVar;
                    map = map2;
                    map.put(eVar5, Boolean.TRUE);
                    eVar6 = eVar2;
                    map.put(eVar6, Boolean.TRUE);
                    obj3 = objB;
                }
            }
            z2 = z;
            eVar7 = eVar5;
            arrayList7 = arrayList4;
            rect2 = rect;
            view6 = view3;
            eVar8 = eVar6;
            aVar2 = aVar;
            arrayList8 = arrayList3;
            zVar2 = zVar;
        }
        View view13 = view7;
        c.d.a aVar5 = aVar2;
        ArrayList<View> arrayList12 = arrayList8;
        c0.e eVar9 = eVar7;
        ArrayList<View> arrayList13 = arrayList7;
        Rect rect4 = rect2;
        z zVar3 = zVar2;
        c0.e eVar10 = eVar8;
        View view14 = view6;
        ArrayList arrayList14 = new ArrayList();
        Iterator<m> it4 = list.iterator();
        Object obj4 = null;
        Object objN2 = null;
        while (it4.hasNext()) {
            m next = it4.next();
            if (next.d()) {
                map.put(next.b(), Boolean.FALSE);
                next.a();
            } else {
                Object objG = zVar3.g(next.h());
                c0.e eVarB = next.b();
                boolean z4 = obj3 != null && (eVarB == eVar9 || eVarB == eVar10);
                if (objG == null) {
                    if (!z4) {
                        map.put(eVarB, Boolean.FALSE);
                        next.a();
                    }
                    arrayList2 = arrayList12;
                    arrayList = arrayList13;
                    it = it4;
                    view = view14;
                    objN = obj4;
                    eVar3 = eVar10;
                    view2 = view13;
                } else {
                    it = it4;
                    ArrayList<View> arrayList15 = new ArrayList<>();
                    Object obj5 = obj4;
                    t(arrayList15, eVarB.f().I);
                    if (z4) {
                        if (eVarB == eVar9) {
                            arrayList15.removeAll(arrayList13);
                        } else {
                            arrayList15.removeAll(arrayList12);
                        }
                    }
                    if (arrayList15.isEmpty()) {
                        zVar3.a(objG, view14);
                        arrayList2 = arrayList12;
                        arrayList = arrayList13;
                        view = view14;
                        eVar4 = eVarB;
                        obj2 = objN2;
                        eVar3 = eVar10;
                        obj = obj5;
                    } else {
                        zVar3.b(objG, arrayList15);
                        view = view14;
                        obj = obj5;
                        arrayList = arrayList13;
                        obj2 = objN2;
                        arrayList2 = arrayList12;
                        eVar3 = eVar10;
                        zVar3.t(objG, objG, arrayList15, null, null, null, null);
                        if (eVarB.e() == c0.e.c.GONE) {
                            eVar4 = eVarB;
                            list2.remove(eVar4);
                            zVar3.r(objG, eVar4.f().I, arrayList15);
                            androidx.core.view.t.a(m(), new i(this, arrayList15));
                        } else {
                            eVar4 = eVarB;
                        }
                    }
                    if (eVar4.e() == c0.e.c.VISIBLE) {
                        arrayList14.addAll(arrayList15);
                        if (z3) {
                            zVar3.u(objG, rect4);
                        }
                        view2 = view13;
                    } else {
                        view2 = view13;
                        zVar3.v(objG, view2);
                    }
                    map.put(eVar4, Boolean.TRUE);
                    if (next.j()) {
                        objN2 = zVar3.n(obj2, objG, null);
                        objN = obj;
                    } else {
                        objN = zVar3.n(obj, objG, null);
                        objN2 = obj2;
                    }
                }
                eVar10 = eVar3;
                view13 = view2;
                obj4 = objN;
                view14 = view;
                arrayList13 = arrayList;
                arrayList12 = arrayList2;
                it4 = it;
            }
        }
        ArrayList<View> arrayList16 = arrayList12;
        ArrayList<View> arrayList17 = arrayList13;
        c0.e eVar11 = eVar10;
        Object objM = zVar3.m(objN2, obj4, obj3);
        for (m mVar4 : list) {
            if (!mVar4.d()) {
                Object objH = mVar4.h();
                c0.e eVarB2 = mVar4.b();
                boolean z5 = obj3 != null && (eVarB2 == eVar9 || eVarB2 == eVar11);
                if (objH != null || z5) {
                    if (androidx.core.view.v.T(m())) {
                        zVar3.w(mVar4.b().f(), objM, mVar4.c(), new j(this, mVar4));
                    } else {
                        if (n.E0(2)) {
                            String str3 = "SpecialEffectsController: Container " + m() + " has not been laid out. Completing operation " + eVarB2;
                        }
                        mVar4.a();
                    }
                }
            }
        }
        if (!androidx.core.view.v.T(m())) {
            return map;
        }
        x.B(arrayList14, 4);
        ArrayList<String> arrayListO = zVar3.o(arrayList16);
        zVar3.c(m(), objM);
        zVar3.y(m(), arrayList17, arrayList16, arrayListO, aVar5);
        x.B(arrayList14, 0);
        zVar3.A(obj3, arrayList17, arrayList16);
        return map;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0085  */
    @Override // androidx.fragment.app.c0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void f(List<c0.e> list, boolean z) {
        c0.e eVar = null;
        c0.e eVar2 = null;
        for (c0.e eVar3 : list) {
            c0.e.c cVarC = c0.e.c.c(eVar3.f().I);
            int i2 = a.a[eVar3.e().ordinal()];
            if (i2 == 1 || i2 == 2 || i2 == 3) {
                if (cVarC == c0.e.c.VISIBLE && eVar == null) {
                    eVar = eVar3;
                }
            } else if (i2 == 4 && cVarC != c0.e.c.VISIBLE) {
                eVar2 = eVar3;
            }
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList(list);
        for (c0.e eVar4 : list) {
            c.g.g.b bVar = new c.g.g.b();
            eVar4.j(bVar);
            arrayList.add(new k(eVar4, bVar, z));
            c.g.g.b bVar2 = new c.g.g.b();
            eVar4.j(bVar2);
            boolean z2 = false;
            if (z) {
                if (eVar4 == eVar) {
                    z2 = true;
                }
            } else if (eVar4 == eVar2) {
            }
            arrayList2.add(new m(eVar4, bVar2, z, z2));
            eVar4.a(new b(arrayList3, eVar4));
        }
        Map<c0.e, Boolean> mapX = x(arrayList2, arrayList3, z, eVar, eVar2);
        w(arrayList, arrayList3, mapX.containsValue(Boolean.TRUE), mapX);
        Iterator<c0.e> it = arrayList3.iterator();
        while (it.hasNext()) {
            s(it.next());
        }
        arrayList3.clear();
    }

    void s(c0.e eVar) {
        eVar.e().a(eVar.f().I);
    }

    void t(ArrayList<View> arrayList, View view) {
        if (!(view instanceof ViewGroup)) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(view);
            return;
        }
        if (!arrayList.contains(view) && androidx.core.view.v.L(view) != null) {
            arrayList.add(view);
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt.getVisibility() == 0) {
                t(arrayList, childAt);
            }
        }
    }

    void u(Map<String, View> map, View view) {
        String strL = androidx.core.view.v.L(view);
        if (strL != null) {
            map.put(strL, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = viewGroup.getChildAt(i2);
                if (childAt.getVisibility() == 0) {
                    u(map, childAt);
                }
            }
        }
    }

    void v(c.d.a<String, View> aVar, Collection<String> collection) {
        Iterator<Map.Entry<String, View>> it = aVar.entrySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(androidx.core.view.v.L(it.next().getValue()))) {
                it.remove();
            }
        }
    }
}
