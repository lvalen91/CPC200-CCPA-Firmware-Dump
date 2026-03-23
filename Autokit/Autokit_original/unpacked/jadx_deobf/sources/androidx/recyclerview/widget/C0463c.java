package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.core.view.C0292v;
import androidx.recyclerview.widget.RecyclerView;
import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: androidx.recyclerview.widget.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0463c extends AbstractC0473m {

    /* JADX INFO: renamed from: s */
    private static TimeInterpolator f2902s;

    /* JADX INFO: renamed from: h */
    private ArrayList<RecyclerView.AbstractC0431c0> f2903h = new ArrayList<>();

    /* JADX INFO: renamed from: i */
    private ArrayList<RecyclerView.AbstractC0431c0> f2904i = new ArrayList<>();

    /* JADX INFO: renamed from: j */
    private ArrayList<j> f2905j = new ArrayList<>();

    /* JADX INFO: renamed from: k */
    private ArrayList<i> f2906k = new ArrayList<>();

    /* JADX INFO: renamed from: l */
    ArrayList<ArrayList<RecyclerView.AbstractC0431c0>> f2907l = new ArrayList<>();

    /* JADX INFO: renamed from: m */
    ArrayList<ArrayList<j>> f2908m = new ArrayList<>();

    /* JADX INFO: renamed from: n */
    ArrayList<ArrayList<i>> f2909n = new ArrayList<>();

    /* JADX INFO: renamed from: o */
    ArrayList<RecyclerView.AbstractC0431c0> f2910o = new ArrayList<>();

    /* JADX INFO: renamed from: p */
    ArrayList<RecyclerView.AbstractC0431c0> f2911p = new ArrayList<>();

    /* JADX INFO: renamed from: q */
    ArrayList<RecyclerView.AbstractC0431c0> f2912q = new ArrayList<>();

    /* JADX INFO: renamed from: r */
    ArrayList<RecyclerView.AbstractC0431c0> f2913r = new ArrayList<>();

    /* JADX INFO: renamed from: androidx.recyclerview.widget.c$a */
    class a implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ ArrayList f2914b;

        a(ArrayList arrayList) {
            this.f2914b = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (j jVar : this.f2914b) {
                C0463c.this.m3834S(jVar.f2948a, jVar.f2949b, jVar.f2950c, jVar.f2951d, jVar.f2952e);
            }
            this.f2914b.clear();
            C0463c.this.f2908m.remove(this.f2914b);
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.c$b */
    class b implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ ArrayList f2916b;

        b(ArrayList arrayList) {
            this.f2916b = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = this.f2916b.iterator();
            while (it.hasNext()) {
                C0463c.this.m3833R((i) it.next());
            }
            this.f2916b.clear();
            C0463c.this.f2909n.remove(this.f2916b);
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.c$c */
    class c implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ ArrayList f2918b;

        c(ArrayList arrayList) {
            this.f2918b = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = this.f2918b.iterator();
            while (it.hasNext()) {
                C0463c.this.m3832Q((RecyclerView.AbstractC0431c0) it.next());
            }
            this.f2918b.clear();
            C0463c.this.f2907l.remove(this.f2918b);
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.c$d */
    class d extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ RecyclerView.AbstractC0431c0 f2920a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ ViewPropertyAnimator f2921b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ View f2922c;

        d(RecyclerView.AbstractC0431c0 abstractC0431c0, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.f2920a = abstractC0431c0;
            this.f2921b = viewPropertyAnimator;
            this.f2922c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f2921b.setListener(null);
            this.f2922c.setAlpha(1.0f);
            C0463c.this.m3939G(this.f2920a);
            C0463c.this.f2912q.remove(this.f2920a);
            C0463c.this.m3836V();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C0463c.this.m3940H(this.f2920a);
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.c$e */
    class e extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ RecyclerView.AbstractC0431c0 f2924a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ View f2925b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ ViewPropertyAnimator f2926c;

        e(RecyclerView.AbstractC0431c0 abstractC0431c0, View view, ViewPropertyAnimator viewPropertyAnimator) {
            this.f2924a = abstractC0431c0;
            this.f2925b = view;
            this.f2926c = viewPropertyAnimator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f2925b.setAlpha(1.0f);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f2926c.setListener(null);
            C0463c.this.m3933A(this.f2924a);
            C0463c.this.f2910o.remove(this.f2924a);
            C0463c.this.m3836V();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C0463c.this.m3934B(this.f2924a);
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.c$f */
    class f extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ RecyclerView.AbstractC0431c0 f2928a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ int f2929b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ View f2930c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ int f2931d;

        /* JADX INFO: renamed from: e */
        final /* synthetic */ ViewPropertyAnimator f2932e;

        f(RecyclerView.AbstractC0431c0 abstractC0431c0, int i, View view, int i2, ViewPropertyAnimator viewPropertyAnimator) {
            this.f2928a = abstractC0431c0;
            this.f2929b = i;
            this.f2930c = view;
            this.f2931d = i2;
            this.f2932e = viewPropertyAnimator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            if (this.f2929b != 0) {
                this.f2930c.setTranslationX(CropImageView.DEFAULT_ASPECT_RATIO);
            }
            if (this.f2931d != 0) {
                this.f2930c.setTranslationY(CropImageView.DEFAULT_ASPECT_RATIO);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f2932e.setListener(null);
            C0463c.this.m3937E(this.f2928a);
            C0463c.this.f2911p.remove(this.f2928a);
            C0463c.this.m3836V();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C0463c.this.m3938F(this.f2928a);
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.c$g */
    class g extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ i f2934a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ ViewPropertyAnimator f2935b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ View f2936c;

        g(i iVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.f2934a = iVar;
            this.f2935b = viewPropertyAnimator;
            this.f2936c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f2935b.setListener(null);
            this.f2936c.setAlpha(1.0f);
            this.f2936c.setTranslationX(CropImageView.DEFAULT_ASPECT_RATIO);
            this.f2936c.setTranslationY(CropImageView.DEFAULT_ASPECT_RATIO);
            C0463c.this.m3935C(this.f2934a.f2942a, true);
            C0463c.this.f2913r.remove(this.f2934a.f2942a);
            C0463c.this.m3836V();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C0463c.this.m3936D(this.f2934a.f2942a, true);
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.c$h */
    class h extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ i f2938a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ ViewPropertyAnimator f2939b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ View f2940c;

        h(i iVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.f2938a = iVar;
            this.f2939b = viewPropertyAnimator;
            this.f2940c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f2939b.setListener(null);
            this.f2940c.setAlpha(1.0f);
            this.f2940c.setTranslationX(CropImageView.DEFAULT_ASPECT_RATIO);
            this.f2940c.setTranslationY(CropImageView.DEFAULT_ASPECT_RATIO);
            C0463c.this.m3935C(this.f2938a.f2943b, false);
            C0463c.this.f2913r.remove(this.f2938a.f2943b);
            C0463c.this.m3836V();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C0463c.this.m3936D(this.f2938a.f2943b, false);
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.c$j */
    private static class j {

        /* JADX INFO: renamed from: a */
        public RecyclerView.AbstractC0431c0 f2948a;

        /* JADX INFO: renamed from: b */
        public int f2949b;

        /* JADX INFO: renamed from: c */
        public int f2950c;

        /* JADX INFO: renamed from: d */
        public int f2951d;

        /* JADX INFO: renamed from: e */
        public int f2952e;

        j(RecyclerView.AbstractC0431c0 abstractC0431c0, int i, int i2, int i3, int i4) {
            this.f2948a = abstractC0431c0;
            this.f2949b = i;
            this.f2950c = i2;
            this.f2951d = i3;
            this.f2952e = i4;
        }
    }

    /* JADX INFO: renamed from: T */
    private void m3827T(RecyclerView.AbstractC0431c0 abstractC0431c0) {
        View view = abstractC0431c0.f2721a;
        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.f2912q.add(abstractC0431c0);
        viewPropertyAnimatorAnimate.setDuration(m3444o()).alpha(CropImageView.DEFAULT_ASPECT_RATIO).setListener(new d(abstractC0431c0, viewPropertyAnimatorAnimate, view)).start();
    }

    /* JADX INFO: renamed from: W */
    private void m3828W(List<i> list, RecyclerView.AbstractC0431c0 abstractC0431c0) {
        for (int size = list.size() - 1; size >= 0; size--) {
            i iVar = list.get(size);
            if (m3830Y(iVar, abstractC0431c0) && iVar.f2942a == null && iVar.f2943b == null) {
                list.remove(iVar);
            }
        }
    }

    /* JADX INFO: renamed from: X */
    private void m3829X(i iVar) {
        RecyclerView.AbstractC0431c0 abstractC0431c0 = iVar.f2942a;
        if (abstractC0431c0 != null) {
            m3830Y(iVar, abstractC0431c0);
        }
        RecyclerView.AbstractC0431c0 abstractC0431c02 = iVar.f2943b;
        if (abstractC0431c02 != null) {
            m3830Y(iVar, abstractC0431c02);
        }
    }

    /* JADX INFO: renamed from: Y */
    private boolean m3830Y(i iVar, RecyclerView.AbstractC0431c0 abstractC0431c0) {
        boolean z = false;
        if (iVar.f2943b == abstractC0431c0) {
            iVar.f2943b = null;
        } else {
            if (iVar.f2942a != abstractC0431c0) {
                return false;
            }
            iVar.f2942a = null;
            z = true;
        }
        abstractC0431c0.f2721a.setAlpha(1.0f);
        abstractC0431c0.f2721a.setTranslationX(CropImageView.DEFAULT_ASPECT_RATIO);
        abstractC0431c0.f2721a.setTranslationY(CropImageView.DEFAULT_ASPECT_RATIO);
        m3935C(abstractC0431c0, z);
        return true;
    }

    /* JADX INFO: renamed from: Z */
    private void m3831Z(RecyclerView.AbstractC0431c0 abstractC0431c0) {
        if (f2902s == null) {
            f2902s = new ValueAnimator().getInterpolator();
        }
        abstractC0431c0.f2721a.animate().setInterpolator(f2902s);
        mo3439j(abstractC0431c0);
    }

    /* JADX INFO: renamed from: Q */
    void m3832Q(RecyclerView.AbstractC0431c0 abstractC0431c0) {
        View view = abstractC0431c0.f2721a;
        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.f2910o.add(abstractC0431c0);
        viewPropertyAnimatorAnimate.alpha(1.0f).setDuration(m3441l()).setListener(new e(abstractC0431c0, view, viewPropertyAnimatorAnimate)).start();
    }

    /* JADX INFO: renamed from: R */
    void m3833R(i iVar) {
        RecyclerView.AbstractC0431c0 abstractC0431c0 = iVar.f2942a;
        View view = abstractC0431c0 == null ? null : abstractC0431c0.f2721a;
        RecyclerView.AbstractC0431c0 abstractC0431c02 = iVar.f2943b;
        View view2 = abstractC0431c02 != null ? abstractC0431c02.f2721a : null;
        if (view != null) {
            ViewPropertyAnimator duration = view.animate().setDuration(m3442m());
            this.f2913r.add(iVar.f2942a);
            duration.translationX(iVar.f2946e - iVar.f2944c);
            duration.translationY(iVar.f2947f - iVar.f2945d);
            duration.alpha(CropImageView.DEFAULT_ASPECT_RATIO).setListener(new g(iVar, duration, view)).start();
        }
        if (view2 != null) {
            ViewPropertyAnimator viewPropertyAnimatorAnimate = view2.animate();
            this.f2913r.add(iVar.f2943b);
            viewPropertyAnimatorAnimate.translationX(CropImageView.DEFAULT_ASPECT_RATIO).translationY(CropImageView.DEFAULT_ASPECT_RATIO).setDuration(m3442m()).alpha(1.0f).setListener(new h(iVar, viewPropertyAnimatorAnimate, view2)).start();
        }
    }

    /* JADX INFO: renamed from: S */
    void m3834S(RecyclerView.AbstractC0431c0 abstractC0431c0, int i2, int i3, int i4, int i5) {
        View view = abstractC0431c0.f2721a;
        int i6 = i4 - i2;
        int i7 = i5 - i3;
        if (i6 != 0) {
            view.animate().translationX(CropImageView.DEFAULT_ASPECT_RATIO);
        }
        if (i7 != 0) {
            view.animate().translationY(CropImageView.DEFAULT_ASPECT_RATIO);
        }
        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.f2911p.add(abstractC0431c0);
        viewPropertyAnimatorAnimate.setDuration(m3443n()).setListener(new f(abstractC0431c0, i6, view, i7, viewPropertyAnimatorAnimate)).start();
    }

    /* JADX INFO: renamed from: U */
    void m3835U(List<RecyclerView.AbstractC0431c0> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            list.get(size).f2721a.animate().cancel();
        }
    }

    /* JADX INFO: renamed from: V */
    void m3836V() {
        if (mo3445p()) {
            return;
        }
        m3438i();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0439k
    /* JADX INFO: renamed from: g */
    public boolean mo3436g(RecyclerView.AbstractC0431c0 abstractC0431c0, List<Object> list) {
        return !list.isEmpty() || super.mo3436g(abstractC0431c0, list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0439k
    /* JADX INFO: renamed from: j */
    public void mo3439j(RecyclerView.AbstractC0431c0 abstractC0431c0) {
        View view = abstractC0431c0.f2721a;
        view.animate().cancel();
        int size = this.f2905j.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (this.f2905j.get(size).f2948a == abstractC0431c0) {
                view.setTranslationY(CropImageView.DEFAULT_ASPECT_RATIO);
                view.setTranslationX(CropImageView.DEFAULT_ASPECT_RATIO);
                m3937E(abstractC0431c0);
                this.f2905j.remove(size);
            }
        }
        m3828W(this.f2906k, abstractC0431c0);
        if (this.f2903h.remove(abstractC0431c0)) {
            view.setAlpha(1.0f);
            m3939G(abstractC0431c0);
        }
        if (this.f2904i.remove(abstractC0431c0)) {
            view.setAlpha(1.0f);
            m3933A(abstractC0431c0);
        }
        for (int size2 = this.f2909n.size() - 1; size2 >= 0; size2--) {
            ArrayList<i> arrayList = this.f2909n.get(size2);
            m3828W(arrayList, abstractC0431c0);
            if (arrayList.isEmpty()) {
                this.f2909n.remove(size2);
            }
        }
        for (int size3 = this.f2908m.size() - 1; size3 >= 0; size3--) {
            ArrayList<j> arrayList2 = this.f2908m.get(size3);
            int size4 = arrayList2.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                }
                if (arrayList2.get(size4).f2948a == abstractC0431c0) {
                    view.setTranslationY(CropImageView.DEFAULT_ASPECT_RATIO);
                    view.setTranslationX(CropImageView.DEFAULT_ASPECT_RATIO);
                    m3937E(abstractC0431c0);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.f2908m.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        for (int size5 = this.f2907l.size() - 1; size5 >= 0; size5--) {
            ArrayList<RecyclerView.AbstractC0431c0> arrayList3 = this.f2907l.get(size5);
            if (arrayList3.remove(abstractC0431c0)) {
                view.setAlpha(1.0f);
                m3933A(abstractC0431c0);
                if (arrayList3.isEmpty()) {
                    this.f2907l.remove(size5);
                }
            }
        }
        this.f2912q.remove(abstractC0431c0);
        this.f2910o.remove(abstractC0431c0);
        this.f2913r.remove(abstractC0431c0);
        this.f2911p.remove(abstractC0431c0);
        m3836V();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0439k
    /* JADX INFO: renamed from: k */
    public void mo3440k() {
        int size = this.f2905j.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            j jVar = this.f2905j.get(size);
            View view = jVar.f2948a.f2721a;
            view.setTranslationY(CropImageView.DEFAULT_ASPECT_RATIO);
            view.setTranslationX(CropImageView.DEFAULT_ASPECT_RATIO);
            m3937E(jVar.f2948a);
            this.f2905j.remove(size);
        }
        for (int size2 = this.f2903h.size() - 1; size2 >= 0; size2--) {
            m3939G(this.f2903h.get(size2));
            this.f2903h.remove(size2);
        }
        int size3 = this.f2904i.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            RecyclerView.AbstractC0431c0 abstractC0431c0 = this.f2904i.get(size3);
            abstractC0431c0.f2721a.setAlpha(1.0f);
            m3933A(abstractC0431c0);
            this.f2904i.remove(size3);
        }
        for (int size4 = this.f2906k.size() - 1; size4 >= 0; size4--) {
            m3829X(this.f2906k.get(size4));
        }
        this.f2906k.clear();
        if (mo3445p()) {
            for (int size5 = this.f2908m.size() - 1; size5 >= 0; size5--) {
                ArrayList<j> arrayList = this.f2908m.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    j jVar2 = arrayList.get(size6);
                    View view2 = jVar2.f2948a.f2721a;
                    view2.setTranslationY(CropImageView.DEFAULT_ASPECT_RATIO);
                    view2.setTranslationX(CropImageView.DEFAULT_ASPECT_RATIO);
                    m3937E(jVar2.f2948a);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.f2908m.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.f2907l.size() - 1; size7 >= 0; size7--) {
                ArrayList<RecyclerView.AbstractC0431c0> arrayList2 = this.f2907l.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    RecyclerView.AbstractC0431c0 abstractC0431c02 = arrayList2.get(size8);
                    abstractC0431c02.f2721a.setAlpha(1.0f);
                    m3933A(abstractC0431c02);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.f2907l.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.f2909n.size() - 1; size9 >= 0; size9--) {
                ArrayList<i> arrayList3 = this.f2909n.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    m3829X(arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.f2909n.remove(arrayList3);
                    }
                }
            }
            m3835U(this.f2912q);
            m3835U(this.f2911p);
            m3835U(this.f2910o);
            m3835U(this.f2913r);
            m3438i();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0439k
    /* JADX INFO: renamed from: p */
    public boolean mo3445p() {
        return (this.f2904i.isEmpty() && this.f2906k.isEmpty() && this.f2905j.isEmpty() && this.f2903h.isEmpty() && this.f2911p.isEmpty() && this.f2912q.isEmpty() && this.f2910o.isEmpty() && this.f2913r.isEmpty() && this.f2908m.isEmpty() && this.f2907l.isEmpty() && this.f2909n.isEmpty()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0439k
    /* JADX INFO: renamed from: u */
    public void mo3450u() {
        boolean z = !this.f2903h.isEmpty();
        boolean z2 = !this.f2905j.isEmpty();
        boolean z3 = !this.f2906k.isEmpty();
        boolean z4 = !this.f2904i.isEmpty();
        if (z || z2 || z4 || z3) {
            Iterator<RecyclerView.AbstractC0431c0> it = this.f2903h.iterator();
            while (it.hasNext()) {
                m3827T(it.next());
            }
            this.f2903h.clear();
            if (z2) {
                ArrayList<j> arrayList = new ArrayList<>();
                arrayList.addAll(this.f2905j);
                this.f2908m.add(arrayList);
                this.f2905j.clear();
                a aVar = new a(arrayList);
                if (z) {
                    C0292v.m2091h0(arrayList.get(0).f2948a.f2721a, aVar, m3444o());
                } else {
                    aVar.run();
                }
            }
            if (z3) {
                ArrayList<i> arrayList2 = new ArrayList<>();
                arrayList2.addAll(this.f2906k);
                this.f2909n.add(arrayList2);
                this.f2906k.clear();
                b bVar = new b(arrayList2);
                if (z) {
                    C0292v.m2091h0(arrayList2.get(0).f2942a.f2721a, bVar, m3444o());
                } else {
                    bVar.run();
                }
            }
            if (z4) {
                ArrayList<RecyclerView.AbstractC0431c0> arrayList3 = new ArrayList<>();
                arrayList3.addAll(this.f2904i);
                this.f2907l.add(arrayList3);
                this.f2904i.clear();
                c cVar = new c(arrayList3);
                if (z || z2 || z3) {
                    C0292v.m2091h0(arrayList3.get(0).f2721a, cVar, (z ? m3444o() : 0L) + Math.max(z2 ? m3443n() : 0L, z3 ? m3442m() : 0L));
                } else {
                    cVar.run();
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.AbstractC0473m
    /* JADX INFO: renamed from: w */
    public boolean mo3837w(RecyclerView.AbstractC0431c0 abstractC0431c0) {
        m3831Z(abstractC0431c0);
        abstractC0431c0.f2721a.setAlpha(CropImageView.DEFAULT_ASPECT_RATIO);
        this.f2904i.add(abstractC0431c0);
        return true;
    }

    @Override // androidx.recyclerview.widget.AbstractC0473m
    /* JADX INFO: renamed from: x */
    public boolean mo3838x(RecyclerView.AbstractC0431c0 abstractC0431c0, RecyclerView.AbstractC0431c0 abstractC0431c02, int i2, int i3, int i4, int i5) {
        if (abstractC0431c0 == abstractC0431c02) {
            return mo3839y(abstractC0431c0, i2, i3, i4, i5);
        }
        float translationX = abstractC0431c0.f2721a.getTranslationX();
        float translationY = abstractC0431c0.f2721a.getTranslationY();
        float alpha = abstractC0431c0.f2721a.getAlpha();
        m3831Z(abstractC0431c0);
        int i6 = (int) ((i4 - i2) - translationX);
        int i7 = (int) ((i5 - i3) - translationY);
        abstractC0431c0.f2721a.setTranslationX(translationX);
        abstractC0431c0.f2721a.setTranslationY(translationY);
        abstractC0431c0.f2721a.setAlpha(alpha);
        if (abstractC0431c02 != null) {
            m3831Z(abstractC0431c02);
            abstractC0431c02.f2721a.setTranslationX(-i6);
            abstractC0431c02.f2721a.setTranslationY(-i7);
            abstractC0431c02.f2721a.setAlpha(CropImageView.DEFAULT_ASPECT_RATIO);
        }
        this.f2906k.add(new i(abstractC0431c0, abstractC0431c02, i2, i3, i4, i5));
        return true;
    }

    @Override // androidx.recyclerview.widget.AbstractC0473m
    /* JADX INFO: renamed from: y */
    public boolean mo3839y(RecyclerView.AbstractC0431c0 abstractC0431c0, int i2, int i3, int i4, int i5) {
        View view = abstractC0431c0.f2721a;
        int translationX = i2 + ((int) view.getTranslationX());
        int translationY = i3 + ((int) abstractC0431c0.f2721a.getTranslationY());
        m3831Z(abstractC0431c0);
        int i6 = i4 - translationX;
        int i7 = i5 - translationY;
        if (i6 == 0 && i7 == 0) {
            m3937E(abstractC0431c0);
            return false;
        }
        if (i6 != 0) {
            view.setTranslationX(-i6);
        }
        if (i7 != 0) {
            view.setTranslationY(-i7);
        }
        this.f2905j.add(new j(abstractC0431c0, translationX, translationY, i4, i5));
        return true;
    }

    @Override // androidx.recyclerview.widget.AbstractC0473m
    /* JADX INFO: renamed from: z */
    public boolean mo3840z(RecyclerView.AbstractC0431c0 abstractC0431c0) {
        m3831Z(abstractC0431c0);
        this.f2903h.add(abstractC0431c0);
        return true;
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.c$i */
    private static class i {

        /* JADX INFO: renamed from: a */
        public RecyclerView.AbstractC0431c0 f2942a;

        /* JADX INFO: renamed from: b */
        public RecyclerView.AbstractC0431c0 f2943b;

        /* JADX INFO: renamed from: c */
        public int f2944c;

        /* JADX INFO: renamed from: d */
        public int f2945d;

        /* JADX INFO: renamed from: e */
        public int f2946e;

        /* JADX INFO: renamed from: f */
        public int f2947f;

        private i(RecyclerView.AbstractC0431c0 abstractC0431c0, RecyclerView.AbstractC0431c0 abstractC0431c02) {
            this.f2942a = abstractC0431c0;
            this.f2943b = abstractC0431c02;
        }

        public String toString() {
            return "ChangeInfo{oldHolder=" + this.f2942a + ", newHolder=" + this.f2943b + ", fromX=" + this.f2944c + ", fromY=" + this.f2945d + ", toX=" + this.f2946e + ", toY=" + this.f2947f + '}';
        }

        i(RecyclerView.AbstractC0431c0 abstractC0431c0, RecyclerView.AbstractC0431c0 abstractC0431c02, int i, int i2, int i3, int i4) {
            this(abstractC0431c0, abstractC0431c02);
            this.f2944c = i;
            this.f2945d = i2;
            this.f2946e = i3;
            this.f2947f = i4;
        }
    }
}
