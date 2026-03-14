package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.core.view.v;
import androidx.recyclerview.widget.RecyclerView;
import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class c extends m {
    private static TimeInterpolator s;
    private ArrayList<RecyclerView.c0> h = new ArrayList<>();
    private ArrayList<RecyclerView.c0> i = new ArrayList<>();
    private ArrayList<j> j = new ArrayList<>();
    private ArrayList<i> k = new ArrayList<>();
    ArrayList<ArrayList<RecyclerView.c0>> l = new ArrayList<>();
    ArrayList<ArrayList<j>> m = new ArrayList<>();
    ArrayList<ArrayList<i>> n = new ArrayList<>();
    ArrayList<RecyclerView.c0> o = new ArrayList<>();
    ArrayList<RecyclerView.c0> p = new ArrayList<>();
    ArrayList<RecyclerView.c0> q = new ArrayList<>();
    ArrayList<RecyclerView.c0> r = new ArrayList<>();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArrayList f931b;

        a(ArrayList arrayList) {
            this.f931b = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (j jVar : this.f931b) {
                c.this.S(jVar.a, jVar.f955b, jVar.f956c, jVar.f957d, jVar.e);
            }
            this.f931b.clear();
            c.this.m.remove(this.f931b);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArrayList f933b;

        b(ArrayList arrayList) {
            this.f933b = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = this.f933b.iterator();
            while (it.hasNext()) {
                c.this.R((i) it.next());
            }
            this.f933b.clear();
            c.this.n.remove(this.f933b);
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.c$c, reason: collision with other inner class name */
    class RunnableC0038c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArrayList f935b;

        RunnableC0038c(ArrayList arrayList) {
            this.f935b = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = this.f935b.iterator();
            while (it.hasNext()) {
                c.this.Q((RecyclerView.c0) it.next());
            }
            this.f935b.clear();
            c.this.l.remove(this.f935b);
        }
    }

    class d extends AnimatorListenerAdapter {
        final /* synthetic */ RecyclerView.c0 a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimator f937b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f938c;

        d(RecyclerView.c0 c0Var, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.a = c0Var;
            this.f937b = viewPropertyAnimator;
            this.f938c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f937b.setListener(null);
            this.f938c.setAlpha(1.0f);
            c.this.G(this.a);
            c.this.q.remove(this.a);
            c.this.V();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            c.this.H(this.a);
        }
    }

    class e extends AnimatorListenerAdapter {
        final /* synthetic */ RecyclerView.c0 a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f940b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimator f941c;

        e(RecyclerView.c0 c0Var, View view, ViewPropertyAnimator viewPropertyAnimator) {
            this.a = c0Var;
            this.f940b = view;
            this.f941c = viewPropertyAnimator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f940b.setAlpha(1.0f);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f941c.setListener(null);
            c.this.A(this.a);
            c.this.o.remove(this.a);
            c.this.V();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            c.this.B(this.a);
        }
    }

    class f extends AnimatorListenerAdapter {
        final /* synthetic */ RecyclerView.c0 a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f943b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f944c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f945d;
        final /* synthetic */ ViewPropertyAnimator e;

        f(RecyclerView.c0 c0Var, int i, View view, int i2, ViewPropertyAnimator viewPropertyAnimator) {
            this.a = c0Var;
            this.f943b = i;
            this.f944c = view;
            this.f945d = i2;
            this.e = viewPropertyAnimator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            if (this.f943b != 0) {
                this.f944c.setTranslationX(CropImageView.DEFAULT_ASPECT_RATIO);
            }
            if (this.f945d != 0) {
                this.f944c.setTranslationY(CropImageView.DEFAULT_ASPECT_RATIO);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.e.setListener(null);
            c.this.E(this.a);
            c.this.p.remove(this.a);
            c.this.V();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            c.this.F(this.a);
        }
    }

    class g extends AnimatorListenerAdapter {
        final /* synthetic */ i a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimator f946b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f947c;

        g(i iVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.a = iVar;
            this.f946b = viewPropertyAnimator;
            this.f947c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f946b.setListener(null);
            this.f947c.setAlpha(1.0f);
            this.f947c.setTranslationX(CropImageView.DEFAULT_ASPECT_RATIO);
            this.f947c.setTranslationY(CropImageView.DEFAULT_ASPECT_RATIO);
            c.this.C(this.a.a, true);
            c.this.r.remove(this.a.a);
            c.this.V();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            c.this.D(this.a.a, true);
        }
    }

    class h extends AnimatorListenerAdapter {
        final /* synthetic */ i a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimator f949b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f950c;

        h(i iVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.a = iVar;
            this.f949b = viewPropertyAnimator;
            this.f950c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f949b.setListener(null);
            this.f950c.setAlpha(1.0f);
            this.f950c.setTranslationX(CropImageView.DEFAULT_ASPECT_RATIO);
            this.f950c.setTranslationY(CropImageView.DEFAULT_ASPECT_RATIO);
            c.this.C(this.a.f952b, false);
            c.this.r.remove(this.a.f952b);
            c.this.V();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            c.this.D(this.a.f952b, false);
        }
    }

    private static class j {
        public RecyclerView.c0 a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f955b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f956c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f957d;
        public int e;

        j(RecyclerView.c0 c0Var, int i, int i2, int i3, int i4) {
            this.a = c0Var;
            this.f955b = i;
            this.f956c = i2;
            this.f957d = i3;
            this.e = i4;
        }
    }

    private void T(RecyclerView.c0 c0Var) {
        View view = c0Var.a;
        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.q.add(c0Var);
        viewPropertyAnimatorAnimate.setDuration(o()).alpha(CropImageView.DEFAULT_ASPECT_RATIO).setListener(new d(c0Var, viewPropertyAnimatorAnimate, view)).start();
    }

    private void W(List<i> list, RecyclerView.c0 c0Var) {
        for (int size = list.size() - 1; size >= 0; size--) {
            i iVar = list.get(size);
            if (Y(iVar, c0Var) && iVar.a == null && iVar.f952b == null) {
                list.remove(iVar);
            }
        }
    }

    private void X(i iVar) {
        RecyclerView.c0 c0Var = iVar.a;
        if (c0Var != null) {
            Y(iVar, c0Var);
        }
        RecyclerView.c0 c0Var2 = iVar.f952b;
        if (c0Var2 != null) {
            Y(iVar, c0Var2);
        }
    }

    private boolean Y(i iVar, RecyclerView.c0 c0Var) {
        boolean z = false;
        if (iVar.f952b == c0Var) {
            iVar.f952b = null;
        } else {
            if (iVar.a != c0Var) {
                return false;
            }
            iVar.a = null;
            z = true;
        }
        c0Var.a.setAlpha(1.0f);
        c0Var.a.setTranslationX(CropImageView.DEFAULT_ASPECT_RATIO);
        c0Var.a.setTranslationY(CropImageView.DEFAULT_ASPECT_RATIO);
        C(c0Var, z);
        return true;
    }

    private void Z(RecyclerView.c0 c0Var) {
        if (s == null) {
            s = new ValueAnimator().getInterpolator();
        }
        c0Var.a.animate().setInterpolator(s);
        j(c0Var);
    }

    void Q(RecyclerView.c0 c0Var) {
        View view = c0Var.a;
        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.o.add(c0Var);
        viewPropertyAnimatorAnimate.alpha(1.0f).setDuration(l()).setListener(new e(c0Var, view, viewPropertyAnimatorAnimate)).start();
    }

    void R(i iVar) {
        RecyclerView.c0 c0Var = iVar.a;
        View view = c0Var == null ? null : c0Var.a;
        RecyclerView.c0 c0Var2 = iVar.f952b;
        View view2 = c0Var2 != null ? c0Var2.a : null;
        if (view != null) {
            ViewPropertyAnimator duration = view.animate().setDuration(m());
            this.r.add(iVar.a);
            duration.translationX(iVar.e - iVar.f953c);
            duration.translationY(iVar.f - iVar.f954d);
            duration.alpha(CropImageView.DEFAULT_ASPECT_RATIO).setListener(new g(iVar, duration, view)).start();
        }
        if (view2 != null) {
            ViewPropertyAnimator viewPropertyAnimatorAnimate = view2.animate();
            this.r.add(iVar.f952b);
            viewPropertyAnimatorAnimate.translationX(CropImageView.DEFAULT_ASPECT_RATIO).translationY(CropImageView.DEFAULT_ASPECT_RATIO).setDuration(m()).alpha(1.0f).setListener(new h(iVar, viewPropertyAnimatorAnimate, view2)).start();
        }
    }

    void S(RecyclerView.c0 c0Var, int i2, int i3, int i4, int i5) {
        View view = c0Var.a;
        int i6 = i4 - i2;
        int i7 = i5 - i3;
        if (i6 != 0) {
            view.animate().translationX(CropImageView.DEFAULT_ASPECT_RATIO);
        }
        if (i7 != 0) {
            view.animate().translationY(CropImageView.DEFAULT_ASPECT_RATIO);
        }
        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.p.add(c0Var);
        viewPropertyAnimatorAnimate.setDuration(n()).setListener(new f(c0Var, i6, view, i7, viewPropertyAnimatorAnimate)).start();
    }

    void U(List<RecyclerView.c0> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            list.get(size).a.animate().cancel();
        }
    }

    void V() {
        if (p()) {
            return;
        }
        i();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public boolean g(RecyclerView.c0 c0Var, List<Object> list) {
        return !list.isEmpty() || super.g(c0Var, list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public void j(RecyclerView.c0 c0Var) {
        View view = c0Var.a;
        view.animate().cancel();
        int size = this.j.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (this.j.get(size).a == c0Var) {
                view.setTranslationY(CropImageView.DEFAULT_ASPECT_RATIO);
                view.setTranslationX(CropImageView.DEFAULT_ASPECT_RATIO);
                E(c0Var);
                this.j.remove(size);
            }
        }
        W(this.k, c0Var);
        if (this.h.remove(c0Var)) {
            view.setAlpha(1.0f);
            G(c0Var);
        }
        if (this.i.remove(c0Var)) {
            view.setAlpha(1.0f);
            A(c0Var);
        }
        for (int size2 = this.n.size() - 1; size2 >= 0; size2--) {
            ArrayList<i> arrayList = this.n.get(size2);
            W(arrayList, c0Var);
            if (arrayList.isEmpty()) {
                this.n.remove(size2);
            }
        }
        for (int size3 = this.m.size() - 1; size3 >= 0; size3--) {
            ArrayList<j> arrayList2 = this.m.get(size3);
            int size4 = arrayList2.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                }
                if (arrayList2.get(size4).a == c0Var) {
                    view.setTranslationY(CropImageView.DEFAULT_ASPECT_RATIO);
                    view.setTranslationX(CropImageView.DEFAULT_ASPECT_RATIO);
                    E(c0Var);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.m.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        for (int size5 = this.l.size() - 1; size5 >= 0; size5--) {
            ArrayList<RecyclerView.c0> arrayList3 = this.l.get(size5);
            if (arrayList3.remove(c0Var)) {
                view.setAlpha(1.0f);
                A(c0Var);
                if (arrayList3.isEmpty()) {
                    this.l.remove(size5);
                }
            }
        }
        this.q.remove(c0Var);
        this.o.remove(c0Var);
        this.r.remove(c0Var);
        this.p.remove(c0Var);
        V();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public void k() {
        int size = this.j.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            j jVar = this.j.get(size);
            View view = jVar.a.a;
            view.setTranslationY(CropImageView.DEFAULT_ASPECT_RATIO);
            view.setTranslationX(CropImageView.DEFAULT_ASPECT_RATIO);
            E(jVar.a);
            this.j.remove(size);
        }
        for (int size2 = this.h.size() - 1; size2 >= 0; size2--) {
            G(this.h.get(size2));
            this.h.remove(size2);
        }
        int size3 = this.i.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            RecyclerView.c0 c0Var = this.i.get(size3);
            c0Var.a.setAlpha(1.0f);
            A(c0Var);
            this.i.remove(size3);
        }
        for (int size4 = this.k.size() - 1; size4 >= 0; size4--) {
            X(this.k.get(size4));
        }
        this.k.clear();
        if (p()) {
            for (int size5 = this.m.size() - 1; size5 >= 0; size5--) {
                ArrayList<j> arrayList = this.m.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    j jVar2 = arrayList.get(size6);
                    View view2 = jVar2.a.a;
                    view2.setTranslationY(CropImageView.DEFAULT_ASPECT_RATIO);
                    view2.setTranslationX(CropImageView.DEFAULT_ASPECT_RATIO);
                    E(jVar2.a);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.m.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.l.size() - 1; size7 >= 0; size7--) {
                ArrayList<RecyclerView.c0> arrayList2 = this.l.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    RecyclerView.c0 c0Var2 = arrayList2.get(size8);
                    c0Var2.a.setAlpha(1.0f);
                    A(c0Var2);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.l.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.n.size() - 1; size9 >= 0; size9--) {
                ArrayList<i> arrayList3 = this.n.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    X(arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.n.remove(arrayList3);
                    }
                }
            }
            U(this.q);
            U(this.p);
            U(this.o);
            U(this.r);
            i();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public boolean p() {
        return (this.i.isEmpty() && this.k.isEmpty() && this.j.isEmpty() && this.h.isEmpty() && this.p.isEmpty() && this.q.isEmpty() && this.o.isEmpty() && this.r.isEmpty() && this.m.isEmpty() && this.l.isEmpty() && this.n.isEmpty()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public void u() {
        boolean z = !this.h.isEmpty();
        boolean z2 = !this.j.isEmpty();
        boolean z3 = !this.k.isEmpty();
        boolean z4 = !this.i.isEmpty();
        if (z || z2 || z4 || z3) {
            Iterator<RecyclerView.c0> it = this.h.iterator();
            while (it.hasNext()) {
                T(it.next());
            }
            this.h.clear();
            if (z2) {
                ArrayList<j> arrayList = new ArrayList<>();
                arrayList.addAll(this.j);
                this.m.add(arrayList);
                this.j.clear();
                a aVar = new a(arrayList);
                if (z) {
                    v.h0(arrayList.get(0).a.a, aVar, o());
                } else {
                    aVar.run();
                }
            }
            if (z3) {
                ArrayList<i> arrayList2 = new ArrayList<>();
                arrayList2.addAll(this.k);
                this.n.add(arrayList2);
                this.k.clear();
                b bVar = new b(arrayList2);
                if (z) {
                    v.h0(arrayList2.get(0).a.a, bVar, o());
                } else {
                    bVar.run();
                }
            }
            if (z4) {
                ArrayList<RecyclerView.c0> arrayList3 = new ArrayList<>();
                arrayList3.addAll(this.i);
                this.l.add(arrayList3);
                this.i.clear();
                RunnableC0038c runnableC0038c = new RunnableC0038c(arrayList3);
                if (z || z2 || z3) {
                    v.h0(arrayList3.get(0).a, runnableC0038c, (z ? o() : 0L) + Math.max(z2 ? n() : 0L, z3 ? m() : 0L));
                } else {
                    runnableC0038c.run();
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.m
    public boolean w(RecyclerView.c0 c0Var) {
        Z(c0Var);
        c0Var.a.setAlpha(CropImageView.DEFAULT_ASPECT_RATIO);
        this.i.add(c0Var);
        return true;
    }

    @Override // androidx.recyclerview.widget.m
    public boolean x(RecyclerView.c0 c0Var, RecyclerView.c0 c0Var2, int i2, int i3, int i4, int i5) {
        if (c0Var == c0Var2) {
            return y(c0Var, i2, i3, i4, i5);
        }
        float translationX = c0Var.a.getTranslationX();
        float translationY = c0Var.a.getTranslationY();
        float alpha = c0Var.a.getAlpha();
        Z(c0Var);
        int i6 = (int) ((i4 - i2) - translationX);
        int i7 = (int) ((i5 - i3) - translationY);
        c0Var.a.setTranslationX(translationX);
        c0Var.a.setTranslationY(translationY);
        c0Var.a.setAlpha(alpha);
        if (c0Var2 != null) {
            Z(c0Var2);
            c0Var2.a.setTranslationX(-i6);
            c0Var2.a.setTranslationY(-i7);
            c0Var2.a.setAlpha(CropImageView.DEFAULT_ASPECT_RATIO);
        }
        this.k.add(new i(c0Var, c0Var2, i2, i3, i4, i5));
        return true;
    }

    @Override // androidx.recyclerview.widget.m
    public boolean y(RecyclerView.c0 c0Var, int i2, int i3, int i4, int i5) {
        View view = c0Var.a;
        int translationX = i2 + ((int) view.getTranslationX());
        int translationY = i3 + ((int) c0Var.a.getTranslationY());
        Z(c0Var);
        int i6 = i4 - translationX;
        int i7 = i5 - translationY;
        if (i6 == 0 && i7 == 0) {
            E(c0Var);
            return false;
        }
        if (i6 != 0) {
            view.setTranslationX(-i6);
        }
        if (i7 != 0) {
            view.setTranslationY(-i7);
        }
        this.j.add(new j(c0Var, translationX, translationY, i4, i5));
        return true;
    }

    @Override // androidx.recyclerview.widget.m
    public boolean z(RecyclerView.c0 c0Var) {
        Z(c0Var);
        this.h.add(c0Var);
        return true;
    }

    private static class i {
        public RecyclerView.c0 a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public RecyclerView.c0 f952b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f953c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f954d;
        public int e;
        public int f;

        private i(RecyclerView.c0 c0Var, RecyclerView.c0 c0Var2) {
            this.a = c0Var;
            this.f952b = c0Var2;
        }

        public String toString() {
            return "ChangeInfo{oldHolder=" + this.a + ", newHolder=" + this.f952b + ", fromX=" + this.f953c + ", fromY=" + this.f954d + ", toX=" + this.e + ", toY=" + this.f + '}';
        }

        i(RecyclerView.c0 c0Var, RecyclerView.c0 c0Var2, int i, int i2, int i3, int i4) {
            this(c0Var, c0Var2);
            this.f953c = i;
            this.f954d = i2;
            this.e = i3;
            this.f = i4;
        }
    }
}
