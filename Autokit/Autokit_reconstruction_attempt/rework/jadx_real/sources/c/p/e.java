package c.p;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import c.p.m;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
@SuppressLint({"RestrictedApi"})
public class e extends androidx.fragment.app.z {

    class a extends m.e {
        a(e eVar, Rect rect) {
        }
    }

    class b implements m.f {
        final /* synthetic */ View a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArrayList f1282b;

        b(e eVar, View view, ArrayList arrayList) {
            this.a = view;
            this.f1282b = arrayList;
        }

        @Override // c.p.m.f
        public void a(m mVar) {
        }

        @Override // c.p.m.f
        public void b(m mVar) {
        }

        @Override // c.p.m.f
        public void c(m mVar) {
        }

        @Override // c.p.m.f
        public void d(m mVar) {
        }

        @Override // c.p.m.f
        public void e(m mVar) {
            mVar.O(this);
            this.a.setVisibility(8);
            int size = this.f1282b.size();
            for (int i = 0; i < size; i++) {
                ((View) this.f1282b.get(i)).setVisibility(0);
            }
        }
    }

    class c extends n {
        final /* synthetic */ Object a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArrayList f1283b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Object f1284c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ ArrayList f1285d;
        final /* synthetic */ Object e;
        final /* synthetic */ ArrayList f;

        c(Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
            this.a = obj;
            this.f1283b = arrayList;
            this.f1284c = obj2;
            this.f1285d = arrayList2;
            this.e = obj3;
            this.f = arrayList3;
        }

        @Override // c.p.n, c.p.m.f
        public void c(m mVar) {
            Object obj = this.a;
            if (obj != null) {
                e.this.q(obj, this.f1283b, null);
            }
            Object obj2 = this.f1284c;
            if (obj2 != null) {
                e.this.q(obj2, this.f1285d, null);
            }
            Object obj3 = this.e;
            if (obj3 != null) {
                e.this.q(obj3, this.f, null);
            }
        }

        @Override // c.p.m.f
        public void e(m mVar) {
            mVar.O(this);
        }
    }

    class d extends m.e {
        d(e eVar, Rect rect) {
        }
    }

    private static boolean C(m mVar) {
        return (androidx.fragment.app.z.l(mVar.y()) && androidx.fragment.app.z.l(mVar.z()) && androidx.fragment.app.z.l(mVar.A())) ? false : true;
    }

    @Override // androidx.fragment.app.z
    public void A(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        q qVar = (q) obj;
        if (qVar != null) {
            qVar.B().clear();
            qVar.B().addAll(arrayList2);
            q(qVar, arrayList, arrayList2);
        }
    }

    @Override // androidx.fragment.app.z
    public Object B(Object obj) {
        if (obj == null) {
            return null;
        }
        q qVar = new q();
        qVar.d0((m) obj);
        return qVar;
    }

    @Override // androidx.fragment.app.z
    public void a(Object obj, View view) {
        if (obj != null) {
            ((m) obj).b(view);
        }
    }

    @Override // androidx.fragment.app.z
    public void b(Object obj, ArrayList<View> arrayList) {
        m mVar = (m) obj;
        if (mVar == null) {
            return;
        }
        int i = 0;
        if (mVar instanceof q) {
            q qVar = (q) mVar;
            int iG0 = qVar.g0();
            while (i < iG0) {
                b(qVar.f0(i), arrayList);
                i++;
            }
            return;
        }
        if (C(mVar) || !androidx.fragment.app.z.l(mVar.B())) {
            return;
        }
        int size = arrayList.size();
        while (i < size) {
            mVar.b(arrayList.get(i));
            i++;
        }
    }

    @Override // androidx.fragment.app.z
    public void c(ViewGroup viewGroup, Object obj) {
        o.a(viewGroup, (m) obj);
    }

    @Override // androidx.fragment.app.z
    public boolean e(Object obj) {
        return obj instanceof m;
    }

    @Override // androidx.fragment.app.z
    public Object g(Object obj) {
        if (obj != null) {
            return ((m) obj).clone();
        }
        return null;
    }

    @Override // androidx.fragment.app.z
    public Object m(Object obj, Object obj2, Object obj3) {
        m mVar = (m) obj;
        m mVar2 = (m) obj2;
        m mVar3 = (m) obj3;
        if (mVar != null && mVar2 != null) {
            q qVar = new q();
            qVar.d0(mVar);
            qVar.d0(mVar2);
            qVar.l0(1);
            mVar = qVar;
        } else if (mVar == null) {
            mVar = mVar2 != null ? mVar2 : null;
        }
        if (mVar3 == null) {
            return mVar;
        }
        q qVar2 = new q();
        if (mVar != null) {
            qVar2.d0(mVar);
        }
        qVar2.d0(mVar3);
        return qVar2;
    }

    @Override // androidx.fragment.app.z
    public Object n(Object obj, Object obj2, Object obj3) {
        q qVar = new q();
        if (obj != null) {
            qVar.d0((m) obj);
        }
        if (obj2 != null) {
            qVar.d0((m) obj2);
        }
        if (obj3 != null) {
            qVar.d0((m) obj3);
        }
        return qVar;
    }

    @Override // androidx.fragment.app.z
    public void p(Object obj, View view) {
        if (obj != null) {
            ((m) obj).P(view);
        }
    }

    @Override // androidx.fragment.app.z
    public void q(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        m mVar = (m) obj;
        int i = 0;
        if (mVar instanceof q) {
            q qVar = (q) mVar;
            int iG0 = qVar.g0();
            while (i < iG0) {
                q(qVar.f0(i), arrayList, arrayList2);
                i++;
            }
            return;
        }
        if (C(mVar)) {
            return;
        }
        List<View> listB = mVar.B();
        if (listB.size() == arrayList.size() && listB.containsAll(arrayList)) {
            int size = arrayList2 == null ? 0 : arrayList2.size();
            while (i < size) {
                mVar.b(arrayList2.get(i));
                i++;
            }
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                mVar.P(arrayList.get(size2));
            }
        }
    }

    @Override // androidx.fragment.app.z
    public void r(Object obj, View view, ArrayList<View> arrayList) {
        ((m) obj).a(new b(this, view, arrayList));
    }

    @Override // androidx.fragment.app.z
    public void t(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3) {
        ((m) obj).a(new c(obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    @Override // androidx.fragment.app.z
    public void u(Object obj, Rect rect) {
        if (obj != null) {
            ((m) obj).U(new d(this, rect));
        }
    }

    @Override // androidx.fragment.app.z
    public void v(Object obj, View view) {
        if (view != null) {
            Rect rect = new Rect();
            k(view, rect);
            ((m) obj).U(new a(this, rect));
        }
    }

    @Override // androidx.fragment.app.z
    public void z(Object obj, View view, ArrayList<View> arrayList) {
        q qVar = (q) obj;
        List<View> listB = qVar.B();
        listB.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            androidx.fragment.app.z.d(listB, arrayList.get(i));
        }
        listB.add(view);
        arrayList.add(view);
        b(qVar, arrayList);
    }
}
