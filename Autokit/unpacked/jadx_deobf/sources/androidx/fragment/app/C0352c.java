package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.core.app.AbstractC0238h;
import androidx.core.view.C0292v;
import androidx.core.view.ViewTreeObserverOnPreDrawListenerC0290t;
import androidx.fragment.app.AbstractC0353c0;
import androidx.fragment.app.C0358f;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p016c.p032d.C0534a;
import p016c.p041g.p046g.C0604b;
import p016c.p041g.p049j.C0626h;

/* JADX INFO: renamed from: androidx.fragment.app.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0352c extends AbstractC0353c0 {

    /* JADX INFO: renamed from: androidx.fragment.app.c$a */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a */
        static final /* synthetic */ int[] f2158a;

        static {
            int[] iArr = new int[AbstractC0353c0.e.c.values().length];
            f2158a = iArr;
            try {
                iArr[AbstractC0353c0.e.c.GONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2158a[AbstractC0353c0.e.c.INVISIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2158a[AbstractC0353c0.e.c.REMOVED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2158a[AbstractC0353c0.e.c.VISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.c$b */
    class b implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ List f2159b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ AbstractC0353c0.e f2160c;

        b(List list, AbstractC0353c0.e eVar) {
            this.f2159b = list;
            this.f2160c = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f2159b.contains(this.f2160c)) {
                this.f2159b.remove(this.f2160c);
                C0352c.this.m2553s(this.f2160c);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.c$c */
    class c extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ ViewGroup f2162a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ View f2163b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ boolean f2164c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ AbstractC0353c0.e f2165d;

        /* JADX INFO: renamed from: e */
        final /* synthetic */ k f2166e;

        c(C0352c c0352c, ViewGroup viewGroup, View view, boolean z, AbstractC0353c0.e eVar, k kVar) {
            this.f2162a = viewGroup;
            this.f2163b = view;
            this.f2164c = z;
            this.f2165d = eVar;
            this.f2166e = kVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f2162a.endViewTransition(this.f2163b);
            if (this.f2164c) {
                this.f2165d.m2591e().m2600a(this.f2163b);
            }
            this.f2166e.m2559a();
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.c$d */
    class d implements C0604b.a {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ Animator f2167a;

        d(C0352c c0352c, Animator animator) {
            this.f2167a = animator;
        }

        @Override // p016c.p041g.p046g.C0604b.a
        /* JADX INFO: renamed from: a */
        public void mo2557a() {
            this.f2167a.end();
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.c$e */
    class e implements Animation.AnimationListener {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ ViewGroup f2168a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ View f2169b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ k f2170c;

        /* JADX INFO: renamed from: androidx.fragment.app.c$e$a */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                e eVar = e.this;
                eVar.f2168a.endViewTransition(eVar.f2169b);
                e.this.f2170c.m2559a();
            }
        }

        e(C0352c c0352c, ViewGroup viewGroup, View view, k kVar) {
            this.f2168a = viewGroup;
            this.f2169b = view;
            this.f2170c = kVar;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f2168a.post(new a());
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.c$f */
    class f implements C0604b.a {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ View f2172a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ ViewGroup f2173b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ k f2174c;

        f(C0352c c0352c, View view, ViewGroup viewGroup, k kVar) {
            this.f2172a = view;
            this.f2173b = viewGroup;
            this.f2174c = kVar;
        }

        @Override // p016c.p041g.p046g.C0604b.a
        /* JADX INFO: renamed from: a */
        public void mo2557a() {
            this.f2172a.clearAnimation();
            this.f2173b.endViewTransition(this.f2172a);
            this.f2174c.m2559a();
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.c$g */
    class g implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ AbstractC0353c0.e f2175b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ AbstractC0353c0.e f2176c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ boolean f2177d;

        /* JADX INFO: renamed from: e */
        final /* synthetic */ C0534a f2178e;

        g(C0352c c0352c, AbstractC0353c0.e eVar, AbstractC0353c0.e eVar2, boolean z, C0534a c0534a) {
            this.f2175b = eVar;
            this.f2176c = eVar2;
            this.f2177d = z;
            this.f2178e = c0534a;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0376x.m2905f(this.f2175b.m2592f(), this.f2176c.m2592f(), this.f2177d, this.f2178e, false);
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.c$h */
    class h implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ AbstractC0378z f2179b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ View f2180c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ Rect f2181d;

        h(C0352c c0352c, AbstractC0378z abstractC0378z, View view, Rect rect) {
            this.f2179b = abstractC0378z;
            this.f2180c = view;
            this.f2181d = rect;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2179b.m2950k(this.f2180c, this.f2181d);
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.c$i */
    class i implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ ArrayList f2182b;

        i(C0352c c0352c, ArrayList arrayList) {
            this.f2182b = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0376x.m2898B(this.f2182b, 4);
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.c$j */
    class j implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ m f2183b;

        j(C0352c c0352c, m mVar) {
            this.f2183b = mVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2183b.m2559a();
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.c$k */
    private static class k extends l {

        /* JADX INFO: renamed from: c */
        private boolean f2184c;

        /* JADX INFO: renamed from: d */
        private boolean f2185d;

        /* JADX INFO: renamed from: e */
        private C0358f.d f2186e;

        k(AbstractC0353c0.e eVar, C0604b c0604b, boolean z) {
            super(eVar, c0604b);
            this.f2185d = false;
            this.f2184c = z;
        }

        /* JADX INFO: renamed from: e */
        C0358f.d m2558e(Context context) {
            if (this.f2185d) {
                return this.f2186e;
            }
            C0358f.d dVarM2626c = C0358f.m2626c(context, m2560b().m2592f(), m2560b().m2591e() == AbstractC0353c0.e.c.VISIBLE, this.f2184c);
            this.f2186e = dVarM2626c;
            this.f2185d = true;
            return dVarM2626c;
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.c$l */
    private static class l {

        /* JADX INFO: renamed from: a */
        private final AbstractC0353c0.e f2187a;

        /* JADX INFO: renamed from: b */
        private final C0604b f2188b;

        l(AbstractC0353c0.e eVar, C0604b c0604b) {
            this.f2187a = eVar;
            this.f2188b = c0604b;
        }

        /* JADX INFO: renamed from: a */
        void m2559a() {
            this.f2187a.m2590d(this.f2188b);
        }

        /* JADX INFO: renamed from: b */
        AbstractC0353c0.e m2560b() {
            return this.f2187a;
        }

        /* JADX INFO: renamed from: c */
        C0604b m2561c() {
            return this.f2188b;
        }

        /* JADX INFO: renamed from: d */
        boolean m2562d() {
            AbstractC0353c0.e.c cVar;
            AbstractC0353c0.e.c cVarM2599c = AbstractC0353c0.e.c.m2599c(this.f2187a.m2592f().f2054I);
            AbstractC0353c0.e.c cVarM2591e = this.f2187a.m2591e();
            return cVarM2599c == cVarM2591e || !(cVarM2599c == (cVar = AbstractC0353c0.e.c.VISIBLE) || cVarM2591e == cVar);
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.c$m */
    private static class m extends l {

        /* JADX INFO: renamed from: c */
        private final Object f2189c;

        /* JADX INFO: renamed from: d */
        private final boolean f2190d;

        /* JADX INFO: renamed from: e */
        private final Object f2191e;

        m(AbstractC0353c0.e eVar, C0604b c0604b, boolean z, boolean z2) {
            super(eVar, c0604b);
            if (eVar.m2591e() == AbstractC0353c0.e.c.VISIBLE) {
                this.f2189c = z ? eVar.m2592f().m2456c0() : eVar.m2592f().m2410M();
                this.f2190d = z ? eVar.m2592f().m2391F() : eVar.m2592f().m2388E();
            } else {
                this.f2189c = z ? eVar.m2592f().m2462e0() : eVar.m2592f().m2418P();
                this.f2190d = true;
            }
            if (!z2) {
                this.f2191e = null;
            } else if (z) {
                this.f2191e = eVar.m2592f().m2468g0();
            } else {
                this.f2191e = eVar.m2592f().m2465f0();
            }
        }

        /* JADX INFO: renamed from: f */
        private AbstractC0378z m2563f(Object obj) {
            if (obj == null) {
                return null;
            }
            AbstractC0378z abstractC0378z = C0376x.f2408b;
            if (abstractC0378z != null && abstractC0378z.mo2932e(obj)) {
                return C0376x.f2408b;
            }
            AbstractC0378z abstractC0378z2 = C0376x.f2409c;
            if (abstractC0378z2 != null && abstractC0378z2.mo2932e(obj)) {
                return C0376x.f2409c;
            }
            throw new IllegalArgumentException("Transition " + obj + " for fragment " + m2560b().m2592f() + " is not a valid framework Transition or AndroidX Transition");
        }

        /* JADX INFO: renamed from: e */
        AbstractC0378z m2564e() {
            AbstractC0378z abstractC0378zM2563f = m2563f(this.f2189c);
            AbstractC0378z abstractC0378zM2563f2 = m2563f(this.f2191e);
            if (abstractC0378zM2563f == null || abstractC0378zM2563f2 == null || abstractC0378zM2563f == abstractC0378zM2563f2) {
                return abstractC0378zM2563f != null ? abstractC0378zM2563f : abstractC0378zM2563f2;
            }
            throw new IllegalArgumentException("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + m2560b().m2592f() + " returned Transition " + this.f2189c + " which uses a different Transition  type than its shared element transition " + this.f2191e);
        }

        /* JADX INFO: renamed from: g */
        public Object m2565g() {
            return this.f2191e;
        }

        /* JADX INFO: renamed from: h */
        Object m2566h() {
            return this.f2189c;
        }

        /* JADX INFO: renamed from: i */
        public boolean m2567i() {
            return this.f2191e != null;
        }

        /* JADX INFO: renamed from: j */
        boolean m2568j() {
            return this.f2190d;
        }
    }

    C0352c(ViewGroup viewGroup) {
        super(viewGroup);
    }

    /* JADX INFO: renamed from: w */
    private void m2550w(List<k> list, List<AbstractC0353c0.e> list2, boolean z, Map<AbstractC0353c0.e, Boolean> map) {
        ViewGroup viewGroupM2583m = m2583m();
        Context context = viewGroupM2583m.getContext();
        ArrayList<k> arrayList = new ArrayList();
        boolean z2 = false;
        for (k kVar : list) {
            if (kVar.m2562d()) {
                kVar.m2559a();
            } else {
                C0358f.d dVarM2558e = kVar.m2558e(context);
                if (dVarM2558e == null) {
                    kVar.m2559a();
                } else {
                    Animator animator = dVarM2558e.f2258b;
                    if (animator == null) {
                        arrayList.add(kVar);
                    } else {
                        AbstractC0353c0.e eVarM2560b = kVar.m2560b();
                        Fragment fragmentM2592f = eVarM2560b.m2592f();
                        if (Boolean.TRUE.equals(map.get(eVarM2560b))) {
                            if (AbstractC0366n.m2677E0(2)) {
                                String str = "Ignoring Animator set on " + fragmentM2592f + " as this Fragment was involved in a Transition.";
                            }
                            kVar.m2559a();
                        } else {
                            boolean z3 = eVarM2560b.m2591e() == AbstractC0353c0.e.c.GONE;
                            if (z3) {
                                list2.remove(eVarM2560b);
                            }
                            View view = fragmentM2592f.f2054I;
                            viewGroupM2583m.startViewTransition(view);
                            animator.addListener(new c(this, viewGroupM2583m, view, z3, eVarM2560b, kVar));
                            animator.setTarget(view);
                            animator.start();
                            kVar.m2561c().m4755c(new d(this, animator));
                            z2 = true;
                        }
                    }
                }
            }
        }
        for (k kVar2 : arrayList) {
            AbstractC0353c0.e eVarM2560b2 = kVar2.m2560b();
            Fragment fragmentM2592f2 = eVarM2560b2.m2592f();
            if (z) {
                if (AbstractC0366n.m2677E0(2)) {
                    String str2 = "Ignoring Animation set on " + fragmentM2592f2 + " as Animations cannot run alongside Transitions.";
                }
                kVar2.m2559a();
            } else if (z2) {
                if (AbstractC0366n.m2677E0(2)) {
                    String str3 = "Ignoring Animation set on " + fragmentM2592f2 + " as Animations cannot run alongside Animators.";
                }
                kVar2.m2559a();
            } else {
                View view2 = fragmentM2592f2.f2054I;
                C0358f.d dVarM2558e2 = kVar2.m2558e(context);
                C0626h.m4855e(dVarM2558e2);
                Animation animation = dVarM2558e2.f2257a;
                C0626h.m4855e(animation);
                Animation animation2 = animation;
                if (eVarM2560b2.m2591e() != AbstractC0353c0.e.c.REMOVED) {
                    view2.startAnimation(animation2);
                    kVar2.m2559a();
                } else {
                    viewGroupM2583m.startViewTransition(view2);
                    C0358f.e eVar = new C0358f.e(animation2, viewGroupM2583m, view2);
                    eVar.setAnimationListener(new e(this, viewGroupM2583m, view2, kVar2));
                    view2.startAnimation(eVar);
                }
                kVar2.m2561c().m4755c(new f(this, view2, viewGroupM2583m, kVar2));
            }
        }
    }

    /* JADX INFO: renamed from: x */
    private Map<AbstractC0353c0.e, Boolean> m2551x(List<m> list, List<AbstractC0353c0.e> list2, boolean z, AbstractC0353c0.e eVar, AbstractC0353c0.e eVar2) {
        Iterator<m> it;
        View view;
        Object obj;
        ArrayList<View> arrayList;
        Object obj2;
        ArrayList<View> arrayList2;
        AbstractC0353c0.e eVar3;
        AbstractC0353c0.e eVar4;
        View view2;
        Object objMo2935n;
        C0534a c0534a;
        ArrayList<View> arrayList3;
        AbstractC0353c0.e eVar5;
        ArrayList<View> arrayList4;
        Rect rect;
        AbstractC0378z abstractC0378z;
        AbstractC0353c0.e eVar6;
        View view3;
        AbstractC0238h abstractC0238hM2413N;
        AbstractC0238h abstractC0238hM2421Q;
        ArrayList<String> arrayList5;
        View view4;
        View view5;
        String strM2916q;
        ArrayList<String> arrayList6;
        boolean z2 = z;
        AbstractC0353c0.e eVar7 = eVar;
        AbstractC0353c0.e eVar8 = eVar2;
        HashMap map = new HashMap();
        AbstractC0378z abstractC0378z2 = null;
        for (m mVar : list) {
            if (!mVar.m2562d()) {
                AbstractC0378z abstractC0378zM2564e = mVar.m2564e();
                if (abstractC0378z2 == null) {
                    abstractC0378z2 = abstractC0378zM2564e;
                } else if (abstractC0378zM2564e != null && abstractC0378z2 != abstractC0378zM2564e) {
                    throw new IllegalArgumentException("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + mVar.m2560b().m2592f() + " returned Transition " + mVar.m2566h() + " which uses a different Transition  type than other Fragments.");
                }
            }
        }
        if (abstractC0378z2 == null) {
            for (m mVar2 : list) {
                map.put(mVar2.m2560b(), Boolean.FALSE);
                mVar2.m2559a();
            }
            return map;
        }
        View view6 = new View(m2583m().getContext());
        Rect rect2 = new Rect();
        ArrayList<View> arrayList7 = new ArrayList<>();
        ArrayList<View> arrayList8 = new ArrayList<>();
        C0534a c0534a2 = new C0534a();
        Object obj3 = null;
        View view7 = null;
        boolean z3 = false;
        for (m mVar3 : list) {
            if (!mVar3.m2567i() || eVar7 == null || eVar8 == null) {
                c0534a = c0534a2;
                arrayList3 = arrayList8;
                eVar5 = eVar7;
                arrayList4 = arrayList7;
                rect = rect2;
                abstractC0378z = abstractC0378z2;
                eVar6 = eVar8;
                view3 = view6;
                view7 = view7;
            } else {
                Object objMo2928B = abstractC0378z2.mo2928B(abstractC0378z2.mo2933g(mVar3.m2565g()));
                ArrayList<String> arrayListM2470h0 = eVar2.m2592f().m2470h0();
                ArrayList<String> arrayListM2470h02 = eVar.m2592f().m2470h0();
                ArrayList<String> arrayListM2472i0 = eVar.m2592f().m2472i0();
                View view8 = view7;
                int i2 = 0;
                while (i2 < arrayListM2472i0.size()) {
                    int iIndexOf = arrayListM2470h0.indexOf(arrayListM2472i0.get(i2));
                    ArrayList<String> arrayList9 = arrayListM2472i0;
                    if (iIndexOf != -1) {
                        arrayListM2470h0.set(iIndexOf, arrayListM2470h02.get(i2));
                    }
                    i2++;
                    arrayListM2472i0 = arrayList9;
                }
                ArrayList<String> arrayListM2472i02 = eVar2.m2592f().m2472i0();
                if (z2) {
                    abstractC0238hM2413N = eVar.m2592f().m2413N();
                    abstractC0238hM2421Q = eVar2.m2592f().m2421Q();
                } else {
                    abstractC0238hM2413N = eVar.m2592f().m2421Q();
                    abstractC0238hM2421Q = eVar2.m2592f().m2413N();
                }
                int i3 = 0;
                for (int size = arrayListM2470h0.size(); i3 < size; size = size) {
                    c0534a2.put(arrayListM2470h0.get(i3), arrayListM2472i02.get(i3));
                    i3++;
                }
                C0534a<String, View> c0534a3 = new C0534a<>();
                m2555u(c0534a3, eVar.m2592f().f2054I);
                c0534a3.m4230o(arrayListM2470h0);
                if (abstractC0238hM2413N != null) {
                    abstractC0238hM2413N.m1675c(arrayListM2470h0, c0534a3);
                    int size2 = arrayListM2470h0.size() - 1;
                    while (size2 >= 0) {
                        String str = arrayListM2470h0.get(size2);
                        View view9 = c0534a3.get(str);
                        if (view9 == null) {
                            c0534a2.remove(str);
                            arrayList6 = arrayListM2470h0;
                        } else {
                            arrayList6 = arrayListM2470h0;
                            if (!str.equals(C0292v.m2061L(view9))) {
                                c0534a2.put(C0292v.m2061L(view9), (String) c0534a2.remove(str));
                            }
                        }
                        size2--;
                        arrayListM2470h0 = arrayList6;
                    }
                    arrayList5 = arrayListM2470h0;
                } else {
                    arrayList5 = arrayListM2470h0;
                    c0534a2.m4230o(c0534a3.keySet());
                }
                C0534a<String, View> c0534a4 = new C0534a<>();
                m2555u(c0534a4, eVar2.m2592f().f2054I);
                c0534a4.m4230o(arrayListM2472i02);
                c0534a4.m4230o(c0534a2.values());
                if (abstractC0238hM2421Q != null) {
                    abstractC0238hM2421Q.m1675c(arrayListM2472i02, c0534a4);
                    for (int size3 = arrayListM2472i02.size() - 1; size3 >= 0; size3--) {
                        String str2 = arrayListM2472i02.get(size3);
                        View view10 = c0534a4.get(str2);
                        if (view10 == null) {
                            String strM2916q2 = C0376x.m2916q(c0534a2, str2);
                            if (strM2916q2 != null) {
                                c0534a2.remove(strM2916q2);
                            }
                        } else if (!str2.equals(C0292v.m2061L(view10)) && (strM2916q = C0376x.m2916q(c0534a2, str2)) != null) {
                            c0534a2.put(strM2916q, C0292v.m2061L(view10));
                        }
                    }
                } else {
                    C0376x.m2924y(c0534a2, c0534a4);
                }
                m2556v(c0534a3, c0534a2.keySet());
                m2556v(c0534a4, c0534a2.values());
                if (c0534a2.isEmpty()) {
                    arrayList7.clear();
                    arrayList8.clear();
                    eVar5 = eVar;
                    c0534a = c0534a2;
                    arrayList3 = arrayList8;
                    arrayList4 = arrayList7;
                    rect = rect2;
                    view3 = view6;
                    abstractC0378z = abstractC0378z2;
                    view7 = view8;
                    obj3 = null;
                    eVar6 = eVar2;
                } else {
                    C0376x.m2905f(eVar2.m2592f(), eVar.m2592f(), z2, c0534a3, true);
                    ArrayList<String> arrayList10 = arrayList5;
                    HashMap map2 = map;
                    View view11 = view6;
                    Rect rect3 = rect2;
                    c0534a = c0534a2;
                    ArrayList<View> arrayList11 = arrayList8;
                    ViewTreeObserverOnPreDrawListenerC0290t.m2040a(m2583m(), new g(this, eVar2, eVar, z, c0534a4));
                    Iterator<View> it2 = c0534a3.values().iterator();
                    while (it2.hasNext()) {
                        m2554t(arrayList7, it2.next());
                    }
                    if (arrayList10.isEmpty()) {
                        view7 = view8;
                    } else {
                        View view12 = c0534a3.get(arrayList10.get(0));
                        abstractC0378z2.mo2941v(objMo2928B, view12);
                        view7 = view12;
                    }
                    Iterator<View> it3 = c0534a4.values().iterator();
                    while (it3.hasNext()) {
                        m2554t(arrayList11, it3.next());
                    }
                    arrayList3 = arrayList11;
                    if (arrayListM2472i02.isEmpty() || (view5 = c0534a4.get(arrayListM2472i02.get(0))) == null) {
                        rect = rect3;
                        view4 = view11;
                    } else {
                        rect = rect3;
                        ViewTreeObserverOnPreDrawListenerC0290t.m2040a(m2583m(), new h(this, abstractC0378z2, view5, rect));
                        view4 = view11;
                        z3 = true;
                    }
                    abstractC0378z2.mo2943z(objMo2928B, view4, arrayList7);
                    arrayList4 = arrayList7;
                    view3 = view4;
                    abstractC0378z = abstractC0378z2;
                    abstractC0378z2.mo2939t(objMo2928B, null, null, null, null, objMo2928B, arrayList3);
                    eVar5 = eVar;
                    map = map2;
                    map.put(eVar5, Boolean.TRUE);
                    eVar6 = eVar2;
                    map.put(eVar6, Boolean.TRUE);
                    obj3 = objMo2928B;
                }
            }
            z2 = z;
            eVar7 = eVar5;
            arrayList7 = arrayList4;
            rect2 = rect;
            view6 = view3;
            eVar8 = eVar6;
            c0534a2 = c0534a;
            arrayList8 = arrayList3;
            abstractC0378z2 = abstractC0378z;
        }
        View view13 = view7;
        C0534a c0534a5 = c0534a2;
        ArrayList<View> arrayList12 = arrayList8;
        AbstractC0353c0.e eVar9 = eVar7;
        ArrayList<View> arrayList13 = arrayList7;
        Rect rect4 = rect2;
        AbstractC0378z abstractC0378z3 = abstractC0378z2;
        AbstractC0353c0.e eVar10 = eVar8;
        View view14 = view6;
        ArrayList arrayList14 = new ArrayList();
        Iterator<m> it4 = list.iterator();
        Object obj4 = null;
        Object objMo2935n2 = null;
        while (it4.hasNext()) {
            m next = it4.next();
            if (next.m2562d()) {
                map.put(next.m2560b(), Boolean.FALSE);
                next.m2559a();
            } else {
                Object objMo2933g = abstractC0378z3.mo2933g(next.m2566h());
                AbstractC0353c0.e eVarM2560b = next.m2560b();
                boolean z4 = obj3 != null && (eVarM2560b == eVar9 || eVarM2560b == eVar10);
                if (objMo2933g == null) {
                    if (!z4) {
                        map.put(eVarM2560b, Boolean.FALSE);
                        next.m2559a();
                    }
                    arrayList2 = arrayList12;
                    arrayList = arrayList13;
                    it = it4;
                    view = view14;
                    objMo2935n = obj4;
                    eVar3 = eVar10;
                    view2 = view13;
                } else {
                    it = it4;
                    ArrayList<View> arrayList15 = new ArrayList<>();
                    Object obj5 = obj4;
                    m2554t(arrayList15, eVarM2560b.m2592f().f2054I);
                    if (z4) {
                        if (eVarM2560b == eVar9) {
                            arrayList15.removeAll(arrayList13);
                        } else {
                            arrayList15.removeAll(arrayList12);
                        }
                    }
                    if (arrayList15.isEmpty()) {
                        abstractC0378z3.mo2929a(objMo2933g, view14);
                        arrayList2 = arrayList12;
                        arrayList = arrayList13;
                        view = view14;
                        eVar4 = eVarM2560b;
                        obj2 = objMo2935n2;
                        eVar3 = eVar10;
                        obj = obj5;
                    } else {
                        abstractC0378z3.mo2930b(objMo2933g, arrayList15);
                        view = view14;
                        obj = obj5;
                        arrayList = arrayList13;
                        obj2 = objMo2935n2;
                        arrayList2 = arrayList12;
                        eVar3 = eVar10;
                        abstractC0378z3.mo2939t(objMo2933g, objMo2933g, arrayList15, null, null, null, null);
                        if (eVarM2560b.m2591e() == AbstractC0353c0.e.c.GONE) {
                            eVar4 = eVarM2560b;
                            list2.remove(eVar4);
                            abstractC0378z3.mo2938r(objMo2933g, eVar4.m2592f().f2054I, arrayList15);
                            ViewTreeObserverOnPreDrawListenerC0290t.m2040a(m2583m(), new i(this, arrayList15));
                        } else {
                            eVar4 = eVarM2560b;
                        }
                    }
                    if (eVar4.m2591e() == AbstractC0353c0.e.c.VISIBLE) {
                        arrayList14.addAll(arrayList15);
                        if (z3) {
                            abstractC0378z3.mo2940u(objMo2933g, rect4);
                        }
                        view2 = view13;
                    } else {
                        view2 = view13;
                        abstractC0378z3.mo2941v(objMo2933g, view2);
                    }
                    map.put(eVar4, Boolean.TRUE);
                    if (next.m2568j()) {
                        objMo2935n2 = abstractC0378z3.mo2935n(obj2, objMo2933g, null);
                        objMo2935n = obj;
                    } else {
                        objMo2935n = abstractC0378z3.mo2935n(obj, objMo2933g, null);
                        objMo2935n2 = obj2;
                    }
                }
                eVar10 = eVar3;
                view13 = view2;
                obj4 = objMo2935n;
                view14 = view;
                arrayList13 = arrayList;
                arrayList12 = arrayList2;
                it4 = it;
            }
        }
        ArrayList<View> arrayList16 = arrayList12;
        ArrayList<View> arrayList17 = arrayList13;
        AbstractC0353c0.e eVar11 = eVar10;
        Object objMo2934m = abstractC0378z3.mo2934m(objMo2935n2, obj4, obj3);
        for (m mVar4 : list) {
            if (!mVar4.m2562d()) {
                Object objM2566h = mVar4.m2566h();
                AbstractC0353c0.e eVarM2560b2 = mVar4.m2560b();
                boolean z5 = obj3 != null && (eVarM2560b2 == eVar9 || eVarM2560b2 == eVar11);
                if (objM2566h != null || z5) {
                    if (C0292v.m2069T(m2583m())) {
                        abstractC0378z3.mo2942w(mVar4.m2560b().m2592f(), objMo2934m, mVar4.m2561c(), new j(this, mVar4));
                    } else {
                        if (AbstractC0366n.m2677E0(2)) {
                            String str3 = "SpecialEffectsController: Container " + m2583m() + " has not been laid out. Completing operation " + eVarM2560b2;
                        }
                        mVar4.m2559a();
                    }
                }
            }
        }
        if (!C0292v.m2069T(m2583m())) {
            return map;
        }
        C0376x.m2898B(arrayList14, 4);
        ArrayList<String> arrayListM2951o = abstractC0378z3.m2951o(arrayList16);
        abstractC0378z3.mo2931c(m2583m(), objMo2934m);
        abstractC0378z3.m2954y(m2583m(), arrayList17, arrayList16, arrayListM2951o, c0534a5);
        C0376x.m2898B(arrayList14, 0);
        abstractC0378z3.mo2927A(obj3, arrayList17, arrayList16);
        return map;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0085  */
    @Override // androidx.fragment.app.AbstractC0353c0
    /* JADX INFO: renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void mo2552f(List<AbstractC0353c0.e> list, boolean z) {
        AbstractC0353c0.e eVar = null;
        AbstractC0353c0.e eVar2 = null;
        for (AbstractC0353c0.e eVar3 : list) {
            AbstractC0353c0.e.c cVarM2599c = AbstractC0353c0.e.c.m2599c(eVar3.m2592f().f2054I);
            int i2 = a.f2158a[eVar3.m2591e().ordinal()];
            if (i2 == 1 || i2 == 2 || i2 == 3) {
                if (cVarM2599c == AbstractC0353c0.e.c.VISIBLE && eVar == null) {
                    eVar = eVar3;
                }
            } else if (i2 == 4 && cVarM2599c != AbstractC0353c0.e.c.VISIBLE) {
                eVar2 = eVar3;
            }
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList(list);
        for (AbstractC0353c0.e eVar4 : list) {
            C0604b c0604b = new C0604b();
            eVar4.m2596j(c0604b);
            arrayList.add(new k(eVar4, c0604b, z));
            C0604b c0604b2 = new C0604b();
            eVar4.m2596j(c0604b2);
            boolean z2 = false;
            if (z) {
                if (eVar4 == eVar) {
                    z2 = true;
                }
            } else if (eVar4 == eVar2) {
            }
            arrayList2.add(new m(eVar4, c0604b2, z, z2));
            eVar4.m2588a(new b(arrayList3, eVar4));
        }
        Map<AbstractC0353c0.e, Boolean> mapM2551x = m2551x(arrayList2, arrayList3, z, eVar, eVar2);
        m2550w(arrayList, arrayList3, mapM2551x.containsValue(Boolean.TRUE), mapM2551x);
        Iterator<AbstractC0353c0.e> it = arrayList3.iterator();
        while (it.hasNext()) {
            m2553s(it.next());
        }
        arrayList3.clear();
    }

    /* JADX INFO: renamed from: s */
    void m2553s(AbstractC0353c0.e eVar) {
        eVar.m2591e().m2600a(eVar.m2592f().f2054I);
    }

    /* JADX INFO: renamed from: t */
    void m2554t(ArrayList<View> arrayList, View view) {
        if (!(view instanceof ViewGroup)) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(view);
            return;
        }
        if (!arrayList.contains(view) && C0292v.m2061L(view) != null) {
            arrayList.add(view);
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt.getVisibility() == 0) {
                m2554t(arrayList, childAt);
            }
        }
    }

    /* JADX INFO: renamed from: u */
    void m2555u(Map<String, View> map, View view) {
        String strM2061L = C0292v.m2061L(view);
        if (strM2061L != null) {
            map.put(strM2061L, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = viewGroup.getChildAt(i2);
                if (childAt.getVisibility() == 0) {
                    m2555u(map, childAt);
                }
            }
        }
    }

    /* JADX INFO: renamed from: v */
    void m2556v(C0534a<String, View> c0534a, Collection<String> collection) {
        Iterator<Map.Entry<String, View>> it = c0534a.entrySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(C0292v.m2061L(it.next().getValue()))) {
                it.remove();
            }
        }
    }
}
