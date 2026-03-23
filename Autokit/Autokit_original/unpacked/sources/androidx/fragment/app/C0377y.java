package androidx.fragment.app;

import android.graphics.Rect;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
import p016c.p041g.p046g.C0604b;

/* JADX INFO: renamed from: androidx.fragment.app.y */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0377y extends AbstractC0378z {

    /* JADX INFO: renamed from: androidx.fragment.app.y$a */
    class a extends Transition.EpicenterCallback {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ Rect f2450a;

        a(C0377y c0377y, Rect rect) {
            this.f2450a = rect;
        }

        @Override // android.transition.Transition.EpicenterCallback
        public Rect onGetEpicenter(Transition transition) {
            return this.f2450a;
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.y$b */
    class b implements Transition.TransitionListener {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ View f2451a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ ArrayList f2452b;

        b(C0377y c0377y, View view, ArrayList arrayList) {
            this.f2451a = view;
            this.f2452b = arrayList;
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionCancel(Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionEnd(Transition transition) {
            transition.removeListener(this);
            this.f2451a.setVisibility(8);
            int size = this.f2452b.size();
            for (int i = 0; i < size; i++) {
                ((View) this.f2452b.get(i)).setVisibility(0);
            }
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionPause(Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionResume(Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionStart(Transition transition) {
            transition.removeListener(this);
            transition.addListener(this);
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.y$c */
    class c implements Transition.TransitionListener {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ Object f2453a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ ArrayList f2454b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ Object f2455c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ ArrayList f2456d;

        /* JADX INFO: renamed from: e */
        final /* synthetic */ Object f2457e;

        /* JADX INFO: renamed from: f */
        final /* synthetic */ ArrayList f2458f;

        c(Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
            this.f2453a = obj;
            this.f2454b = arrayList;
            this.f2455c = obj2;
            this.f2456d = arrayList2;
            this.f2457e = obj3;
            this.f2458f = arrayList3;
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionCancel(Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionEnd(Transition transition) {
            transition.removeListener(this);
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionPause(Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionResume(Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionStart(Transition transition) {
            Object obj = this.f2453a;
            if (obj != null) {
                C0377y.this.mo2937q(obj, this.f2454b, null);
            }
            Object obj2 = this.f2455c;
            if (obj2 != null) {
                C0377y.this.mo2937q(obj2, this.f2456d, null);
            }
            Object obj3 = this.f2457e;
            if (obj3 != null) {
                C0377y.this.mo2937q(obj3, this.f2458f, null);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.y$d */
    class d implements Transition.TransitionListener {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ Runnable f2460a;

        d(C0377y c0377y, Runnable runnable) {
            this.f2460a = runnable;
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionCancel(Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionEnd(Transition transition) {
            this.f2460a.run();
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionPause(Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionResume(Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionStart(Transition transition) {
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.y$e */
    class e extends Transition.EpicenterCallback {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ Rect f2461a;

        e(C0377y c0377y, Rect rect) {
            this.f2461a = rect;
        }

        @Override // android.transition.Transition.EpicenterCallback
        public Rect onGetEpicenter(Transition transition) {
            Rect rect = this.f2461a;
            if (rect == null || rect.isEmpty()) {
                return null;
            }
            return this.f2461a;
        }
    }

    C0377y() {
    }

    /* JADX INFO: renamed from: C */
    private static boolean m2926C(Transition transition) {
        return (AbstractC0378z.m2947l(transition.getTargetIds()) && AbstractC0378z.m2947l(transition.getTargetNames()) && AbstractC0378z.m2947l(transition.getTargetTypes())) ? false : true;
    }

    @Override // androidx.fragment.app.AbstractC0378z
    /* JADX INFO: renamed from: A */
    public void mo2927A(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        TransitionSet transitionSet = (TransitionSet) obj;
        if (transitionSet != null) {
            transitionSet.getTargets().clear();
            transitionSet.getTargets().addAll(arrayList2);
            mo2937q(transitionSet, arrayList, arrayList2);
        }
    }

    @Override // androidx.fragment.app.AbstractC0378z
    /* JADX INFO: renamed from: B */
    public Object mo2928B(Object obj) {
        if (obj == null) {
            return null;
        }
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.addTransition((Transition) obj);
        return transitionSet;
    }

    @Override // androidx.fragment.app.AbstractC0378z
    /* JADX INFO: renamed from: a */
    public void mo2929a(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).addTarget(view);
        }
    }

    @Override // androidx.fragment.app.AbstractC0378z
    /* JADX INFO: renamed from: b */
    public void mo2930b(Object obj, ArrayList<View> arrayList) {
        Transition transition = (Transition) obj;
        if (transition == null) {
            return;
        }
        int i = 0;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int transitionCount = transitionSet.getTransitionCount();
            while (i < transitionCount) {
                mo2930b(transitionSet.getTransitionAt(i), arrayList);
                i++;
            }
            return;
        }
        if (m2926C(transition) || !AbstractC0378z.m2947l(transition.getTargets())) {
            return;
        }
        int size = arrayList.size();
        while (i < size) {
            transition.addTarget(arrayList.get(i));
            i++;
        }
    }

    @Override // androidx.fragment.app.AbstractC0378z
    /* JADX INFO: renamed from: c */
    public void mo2931c(ViewGroup viewGroup, Object obj) {
        TransitionManager.beginDelayedTransition(viewGroup, (Transition) obj);
    }

    @Override // androidx.fragment.app.AbstractC0378z
    /* JADX INFO: renamed from: e */
    public boolean mo2932e(Object obj) {
        return obj instanceof Transition;
    }

    @Override // androidx.fragment.app.AbstractC0378z
    /* JADX INFO: renamed from: g */
    public Object mo2933g(Object obj) {
        if (obj != null) {
            return ((Transition) obj).clone();
        }
        return null;
    }

    @Override // androidx.fragment.app.AbstractC0378z
    /* JADX INFO: renamed from: m */
    public Object mo2934m(Object obj, Object obj2, Object obj3) {
        Transition ordering = (Transition) obj;
        Transition transition = (Transition) obj2;
        Transition transition2 = (Transition) obj3;
        if (ordering != null && transition != null) {
            ordering = new TransitionSet().addTransition(ordering).addTransition(transition).setOrdering(1);
        } else if (ordering == null) {
            ordering = transition != null ? transition : null;
        }
        if (transition2 == null) {
            return ordering;
        }
        TransitionSet transitionSet = new TransitionSet();
        if (ordering != null) {
            transitionSet.addTransition(ordering);
        }
        transitionSet.addTransition(transition2);
        return transitionSet;
    }

    @Override // androidx.fragment.app.AbstractC0378z
    /* JADX INFO: renamed from: n */
    public Object mo2935n(Object obj, Object obj2, Object obj3) {
        TransitionSet transitionSet = new TransitionSet();
        if (obj != null) {
            transitionSet.addTransition((Transition) obj);
        }
        if (obj2 != null) {
            transitionSet.addTransition((Transition) obj2);
        }
        if (obj3 != null) {
            transitionSet.addTransition((Transition) obj3);
        }
        return transitionSet;
    }

    @Override // androidx.fragment.app.AbstractC0378z
    /* JADX INFO: renamed from: p */
    public void mo2936p(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).removeTarget(view);
        }
    }

    @Override // androidx.fragment.app.AbstractC0378z
    /* JADX INFO: renamed from: q */
    public void mo2937q(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        List<View> targets;
        Transition transition = (Transition) obj;
        int i = 0;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int transitionCount = transitionSet.getTransitionCount();
            while (i < transitionCount) {
                mo2937q(transitionSet.getTransitionAt(i), arrayList, arrayList2);
                i++;
            }
            return;
        }
        if (m2926C(transition) || (targets = transition.getTargets()) == null || targets.size() != arrayList.size() || !targets.containsAll(arrayList)) {
            return;
        }
        int size = arrayList2 == null ? 0 : arrayList2.size();
        while (i < size) {
            transition.addTarget(arrayList2.get(i));
            i++;
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            transition.removeTarget(arrayList.get(size2));
        }
    }

    @Override // androidx.fragment.app.AbstractC0378z
    /* JADX INFO: renamed from: r */
    public void mo2938r(Object obj, View view, ArrayList<View> arrayList) {
        ((Transition) obj).addListener(new b(this, view, arrayList));
    }

    @Override // androidx.fragment.app.AbstractC0378z
    /* JADX INFO: renamed from: t */
    public void mo2939t(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3) {
        ((Transition) obj).addListener(new c(obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    @Override // androidx.fragment.app.AbstractC0378z
    /* JADX INFO: renamed from: u */
    public void mo2940u(Object obj, Rect rect) {
        if (obj != null) {
            ((Transition) obj).setEpicenterCallback(new e(this, rect));
        }
    }

    @Override // androidx.fragment.app.AbstractC0378z
    /* JADX INFO: renamed from: v */
    public void mo2941v(Object obj, View view) {
        if (view != null) {
            Rect rect = new Rect();
            m2950k(view, rect);
            ((Transition) obj).setEpicenterCallback(new a(this, rect));
        }
    }

    @Override // androidx.fragment.app.AbstractC0378z
    /* JADX INFO: renamed from: w */
    public void mo2942w(Fragment fragment, Object obj, C0604b c0604b, Runnable runnable) {
        ((Transition) obj).addListener(new d(this, runnable));
    }

    @Override // androidx.fragment.app.AbstractC0378z
    /* JADX INFO: renamed from: z */
    public void mo2943z(Object obj, View view, ArrayList<View> arrayList) {
        TransitionSet transitionSet = (TransitionSet) obj;
        List<View> targets = transitionSet.getTargets();
        targets.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            AbstractC0378z.m2944d(targets, arrayList.get(i));
        }
        targets.add(view);
        arrayList.add(view);
        mo2930b(transitionSet, arrayList);
    }
}
