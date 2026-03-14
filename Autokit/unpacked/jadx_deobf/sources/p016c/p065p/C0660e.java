package p016c.p065p;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.AbstractC0378z;
import java.util.ArrayList;
import java.util.List;
import p016c.p065p.AbstractC0676m;

/* JADX INFO: renamed from: c.p.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
@SuppressLint({"RestrictedApi"})
public class C0660e extends AbstractC0378z {

    /* JADX INFO: renamed from: c.p.e$a */
    class a extends AbstractC0676m.e {
        a(C0660e c0660e, Rect rect) {
        }
    }

    /* JADX INFO: renamed from: c.p.e$b */
    class b implements AbstractC0676m.f {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ View f3949a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ ArrayList f3950b;

        b(C0660e c0660e, View view, ArrayList arrayList) {
            this.f3949a = view;
            this.f3950b = arrayList;
        }

        @Override // p016c.p065p.AbstractC0676m.f
        /* JADX INFO: renamed from: a */
        public void mo5051a(AbstractC0676m abstractC0676m) {
        }

        @Override // p016c.p065p.AbstractC0676m.f
        /* JADX INFO: renamed from: b */
        public void mo5052b(AbstractC0676m abstractC0676m) {
        }

        @Override // p016c.p065p.AbstractC0676m.f
        /* JADX INFO: renamed from: c */
        public void mo5081c(AbstractC0676m abstractC0676m) {
        }

        @Override // p016c.p065p.AbstractC0676m.f
        /* JADX INFO: renamed from: d */
        public void mo5053d(AbstractC0676m abstractC0676m) {
        }

        @Override // p016c.p065p.AbstractC0676m.f
        /* JADX INFO: renamed from: e */
        public void mo5054e(AbstractC0676m abstractC0676m) {
            abstractC0676m.mo5121O(this);
            this.f3949a.setVisibility(8);
            int size = this.f3950b.size();
            for (int i = 0; i < size; i++) {
                ((View) this.f3950b.get(i)).setVisibility(0);
            }
        }
    }

    /* JADX INFO: renamed from: c.p.e$c */
    class c extends C0678n {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ Object f3951a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ ArrayList f3952b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ Object f3953c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ ArrayList f3954d;

        /* JADX INFO: renamed from: e */
        final /* synthetic */ Object f3955e;

        /* JADX INFO: renamed from: f */
        final /* synthetic */ ArrayList f3956f;

        c(Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
            this.f3951a = obj;
            this.f3952b = arrayList;
            this.f3953c = obj2;
            this.f3954d = arrayList2;
            this.f3955e = obj3;
            this.f3956f = arrayList3;
        }

        @Override // p016c.p065p.C0678n, p016c.p065p.AbstractC0676m.f
        /* JADX INFO: renamed from: c */
        public void mo5081c(AbstractC0676m abstractC0676m) {
            Object obj = this.f3951a;
            if (obj != null) {
                C0660e.this.mo2937q(obj, this.f3952b, null);
            }
            Object obj2 = this.f3953c;
            if (obj2 != null) {
                C0660e.this.mo2937q(obj2, this.f3954d, null);
            }
            Object obj3 = this.f3955e;
            if (obj3 != null) {
                C0660e.this.mo2937q(obj3, this.f3956f, null);
            }
        }

        @Override // p016c.p065p.AbstractC0676m.f
        /* JADX INFO: renamed from: e */
        public void mo5054e(AbstractC0676m abstractC0676m) {
            abstractC0676m.mo5121O(this);
        }
    }

    /* JADX INFO: renamed from: c.p.e$d */
    class d extends AbstractC0676m.e {
        d(C0660e c0660e, Rect rect) {
        }
    }

    /* JADX INFO: renamed from: C */
    private static boolean m5080C(AbstractC0676m abstractC0676m) {
        return (AbstractC0378z.m2947l(abstractC0676m.m5150y()) && AbstractC0378z.m2947l(abstractC0676m.m5151z()) && AbstractC0378z.m2947l(abstractC0676m.m5115A())) ? false : true;
    }

    @Override // androidx.fragment.app.AbstractC0378z
    /* JADX INFO: renamed from: A */
    public void mo2927A(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        C0681q c0681q = (C0681q) obj;
        if (c0681q != null) {
            c0681q.m5116B().clear();
            c0681q.m5116B().addAll(arrayList2);
            mo2937q(c0681q, arrayList, arrayList2);
        }
    }

    @Override // androidx.fragment.app.AbstractC0378z
    /* JADX INFO: renamed from: B */
    public Object mo2928B(Object obj) {
        if (obj == null) {
            return null;
        }
        C0681q c0681q = new C0681q();
        c0681q.m5164d0((AbstractC0676m) obj);
        return c0681q;
    }

    @Override // androidx.fragment.app.AbstractC0378z
    /* JADX INFO: renamed from: a */
    public void mo2929a(Object obj, View view) {
        if (obj != null) {
            ((AbstractC0676m) obj).mo5134b(view);
        }
    }

    @Override // androidx.fragment.app.AbstractC0378z
    /* JADX INFO: renamed from: b */
    public void mo2930b(Object obj, ArrayList<View> arrayList) {
        AbstractC0676m abstractC0676m = (AbstractC0676m) obj;
        if (abstractC0676m == null) {
            return;
        }
        int i = 0;
        if (abstractC0676m instanceof C0681q) {
            C0681q c0681q = (C0681q) abstractC0676m;
            int iM5166g0 = c0681q.m5166g0();
            while (i < iM5166g0) {
                mo2930b(c0681q.m5165f0(i), arrayList);
                i++;
            }
            return;
        }
        if (m5080C(abstractC0676m) || !AbstractC0378z.m2947l(abstractC0676m.m5116B())) {
            return;
        }
        int size = arrayList.size();
        while (i < size) {
            abstractC0676m.mo5134b(arrayList.get(i));
            i++;
        }
    }

    @Override // androidx.fragment.app.AbstractC0378z
    /* JADX INFO: renamed from: c */
    public void mo2931c(ViewGroup viewGroup, Object obj) {
        C0679o.m5152a(viewGroup, (AbstractC0676m) obj);
    }

    @Override // androidx.fragment.app.AbstractC0378z
    /* JADX INFO: renamed from: e */
    public boolean mo2932e(Object obj) {
        return obj instanceof AbstractC0676m;
    }

    @Override // androidx.fragment.app.AbstractC0378z
    /* JADX INFO: renamed from: g */
    public Object mo2933g(Object obj) {
        if (obj != null) {
            return ((AbstractC0676m) obj).clone();
        }
        return null;
    }

    @Override // androidx.fragment.app.AbstractC0378z
    /* JADX INFO: renamed from: m */
    public Object mo2934m(Object obj, Object obj2, Object obj3) {
        AbstractC0676m abstractC0676m = (AbstractC0676m) obj;
        AbstractC0676m abstractC0676m2 = (AbstractC0676m) obj2;
        AbstractC0676m abstractC0676m3 = (AbstractC0676m) obj3;
        if (abstractC0676m != null && abstractC0676m2 != null) {
            C0681q c0681q = new C0681q();
            c0681q.m5164d0(abstractC0676m);
            c0681q.m5164d0(abstractC0676m2);
            c0681q.m5171l0(1);
            abstractC0676m = c0681q;
        } else if (abstractC0676m == null) {
            abstractC0676m = abstractC0676m2 != null ? abstractC0676m2 : null;
        }
        if (abstractC0676m3 == null) {
            return abstractC0676m;
        }
        C0681q c0681q2 = new C0681q();
        if (abstractC0676m != null) {
            c0681q2.m5164d0(abstractC0676m);
        }
        c0681q2.m5164d0(abstractC0676m3);
        return c0681q2;
    }

    @Override // androidx.fragment.app.AbstractC0378z
    /* JADX INFO: renamed from: n */
    public Object mo2935n(Object obj, Object obj2, Object obj3) {
        C0681q c0681q = new C0681q();
        if (obj != null) {
            c0681q.m5164d0((AbstractC0676m) obj);
        }
        if (obj2 != null) {
            c0681q.m5164d0((AbstractC0676m) obj2);
        }
        if (obj3 != null) {
            c0681q.m5164d0((AbstractC0676m) obj3);
        }
        return c0681q;
    }

    @Override // androidx.fragment.app.AbstractC0378z
    /* JADX INFO: renamed from: p */
    public void mo2936p(Object obj, View view) {
        if (obj != null) {
            ((AbstractC0676m) obj).mo5122P(view);
        }
    }

    @Override // androidx.fragment.app.AbstractC0378z
    /* JADX INFO: renamed from: q */
    public void mo2937q(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        AbstractC0676m abstractC0676m = (AbstractC0676m) obj;
        int i = 0;
        if (abstractC0676m instanceof C0681q) {
            C0681q c0681q = (C0681q) abstractC0676m;
            int iM5166g0 = c0681q.m5166g0();
            while (i < iM5166g0) {
                mo2937q(c0681q.m5165f0(i), arrayList, arrayList2);
                i++;
            }
            return;
        }
        if (m5080C(abstractC0676m)) {
            return;
        }
        List<View> listM5116B = abstractC0676m.m5116B();
        if (listM5116B.size() == arrayList.size() && listM5116B.containsAll(arrayList)) {
            int size = arrayList2 == null ? 0 : arrayList2.size();
            while (i < size) {
                abstractC0676m.mo5134b(arrayList2.get(i));
                i++;
            }
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                abstractC0676m.mo5122P(arrayList.get(size2));
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0378z
    /* JADX INFO: renamed from: r */
    public void mo2938r(Object obj, View view, ArrayList<View> arrayList) {
        ((AbstractC0676m) obj).mo5132a(new b(this, view, arrayList));
    }

    @Override // androidx.fragment.app.AbstractC0378z
    /* JADX INFO: renamed from: t */
    public void mo2939t(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3) {
        ((AbstractC0676m) obj).mo5132a(new c(obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    @Override // androidx.fragment.app.AbstractC0378z
    /* JADX INFO: renamed from: u */
    public void mo2940u(Object obj, Rect rect) {
        if (obj != null) {
            ((AbstractC0676m) obj).mo5126U(new d(this, rect));
        }
    }

    @Override // androidx.fragment.app.AbstractC0378z
    /* JADX INFO: renamed from: v */
    public void mo2941v(Object obj, View view) {
        if (view != null) {
            Rect rect = new Rect();
            m2950k(view, rect);
            ((AbstractC0676m) obj).mo5126U(new a(this, rect));
        }
    }

    @Override // androidx.fragment.app.AbstractC0378z
    /* JADX INFO: renamed from: z */
    public void mo2943z(Object obj, View view, ArrayList<View> arrayList) {
        C0681q c0681q = (C0681q) obj;
        List<View> listM5116B = c0681q.m5116B();
        listM5116B.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            AbstractC0378z.m2944d(listM5116B, arrayList.get(i));
        }
        listM5116B.add(view);
        arrayList.add(view);
        mo2930b(c0681q, arrayList);
    }
}
