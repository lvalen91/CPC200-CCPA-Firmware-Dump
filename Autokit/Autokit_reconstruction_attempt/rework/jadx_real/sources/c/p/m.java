package c.p;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.graphics.Path;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.yalantis.ucrop.BuildConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public abstract class m implements Cloneable {
    private static final int[] H = {2, 1, 3, 4};
    private static final g I = new a();
    private static ThreadLocal<c.d.a<Animator, d>> J = new ThreadLocal<>();
    p D;
    private e E;
    private c.d.a<String, String> F;
    private ArrayList<s> u;
    private ArrayList<s> v;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f1302b = getClass().getName();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f1303c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long f1304d = -1;
    private TimeInterpolator e = null;
    ArrayList<Integer> f = new ArrayList<>();
    ArrayList<View> g = new ArrayList<>();
    private ArrayList<String> h = null;
    private ArrayList<Class<?>> i = null;
    private ArrayList<Integer> j = null;
    private ArrayList<View> k = null;
    private ArrayList<Class<?>> l = null;
    private ArrayList<String> m = null;
    private ArrayList<Integer> n = null;
    private ArrayList<View> o = null;
    private ArrayList<Class<?>> p = null;
    private t q = new t();
    private t r = new t();
    q s = null;
    private int[] t = H;
    boolean w = false;
    ArrayList<Animator> x = new ArrayList<>();
    private int y = 0;
    private boolean z = false;
    private boolean A = false;
    private ArrayList<f> B = null;
    private ArrayList<Animator> C = new ArrayList<>();
    private g G = I;

    static class a extends g {
        a() {
        }

        @Override // c.p.g
        public Path a(float f, float f2, float f3, float f4) {
            Path path = new Path();
            path.moveTo(f, f2);
            path.lineTo(f3, f4);
            return path;
        }
    }

    class b extends AnimatorListenerAdapter {
        final /* synthetic */ c.d.a a;

        b(c.d.a aVar) {
            this.a = aVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.a.remove(animator);
            m.this.x.remove(animator);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            m.this.x.add(animator);
        }
    }

    class c extends AnimatorListenerAdapter {
        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            m.this.o();
            animator.removeListener(this);
        }
    }

    private static class d {
        View a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f1306b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        s f1307c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        m0 f1308d;
        m e;

        d(View view, String str, m mVar, m0 m0Var, s sVar) {
            this.a = view;
            this.f1306b = str;
            this.f1307c = sVar;
            this.f1308d = m0Var;
            this.e = mVar;
        }
    }

    public static abstract class e {
    }

    public interface f {
        void a(m mVar);

        void b(m mVar);

        void c(m mVar);

        void d(m mVar);

        void e(m mVar);
    }

    private static boolean G(s sVar, s sVar2, String str) {
        Object obj = sVar.a.get(str);
        Object obj2 = sVar2.a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return true ^ obj.equals(obj2);
    }

    private void H(c.d.a<View, s> aVar, c.d.a<View, s> aVar2, SparseArray<View> sparseArray, SparseArray<View> sparseArray2) {
        View view;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            View viewValueAt = sparseArray.valueAt(i);
            if (viewValueAt != null && F(viewValueAt) && (view = sparseArray2.get(sparseArray.keyAt(i))) != null && F(view)) {
                s sVar = aVar.get(viewValueAt);
                s sVar2 = aVar2.get(view);
                if (sVar != null && sVar2 != null) {
                    this.u.add(sVar);
                    this.v.add(sVar2);
                    aVar.remove(viewValueAt);
                    aVar2.remove(view);
                }
            }
        }
    }

    private void I(c.d.a<View, s> aVar, c.d.a<View, s> aVar2) {
        s sVarRemove;
        for (int size = aVar.size() - 1; size >= 0; size--) {
            View viewI = aVar.i(size);
            if (viewI != null && F(viewI) && (sVarRemove = aVar2.remove(viewI)) != null && F(sVarRemove.f1316b)) {
                this.u.add(aVar.k(size));
                this.v.add(sVarRemove);
            }
        }
    }

    private void J(c.d.a<View, s> aVar, c.d.a<View, s> aVar2, c.d.d<View> dVar, c.d.d<View> dVar2) {
        View viewE;
        int iL = dVar.l();
        for (int i = 0; i < iL; i++) {
            View viewM = dVar.m(i);
            if (viewM != null && F(viewM) && (viewE = dVar2.e(dVar.h(i))) != null && F(viewE)) {
                s sVar = aVar.get(viewM);
                s sVar2 = aVar2.get(viewE);
                if (sVar != null && sVar2 != null) {
                    this.u.add(sVar);
                    this.v.add(sVar2);
                    aVar.remove(viewM);
                    aVar2.remove(viewE);
                }
            }
        }
    }

    private void K(c.d.a<View, s> aVar, c.d.a<View, s> aVar2, c.d.a<String, View> aVar3, c.d.a<String, View> aVar4) {
        View view;
        int size = aVar3.size();
        for (int i = 0; i < size; i++) {
            View viewM = aVar3.m(i);
            if (viewM != null && F(viewM) && (view = aVar4.get(aVar3.i(i))) != null && F(view)) {
                s sVar = aVar.get(viewM);
                s sVar2 = aVar2.get(view);
                if (sVar != null && sVar2 != null) {
                    this.u.add(sVar);
                    this.v.add(sVar2);
                    aVar.remove(viewM);
                    aVar2.remove(view);
                }
            }
        }
    }

    private void L(t tVar, t tVar2) {
        c.d.a<View, s> aVar = new c.d.a<>(tVar.a);
        c.d.a<View, s> aVar2 = new c.d.a<>(tVar2.a);
        int i = 0;
        while (true) {
            int[] iArr = this.t;
            if (i >= iArr.length) {
                c(aVar, aVar2);
                return;
            }
            int i2 = iArr[i];
            if (i2 == 1) {
                I(aVar, aVar2);
            } else if (i2 == 2) {
                K(aVar, aVar2, tVar.f1320d, tVar2.f1320d);
            } else if (i2 == 3) {
                H(aVar, aVar2, tVar.f1318b, tVar2.f1318b);
            } else if (i2 == 4) {
                J(aVar, aVar2, tVar.f1319c, tVar2.f1319c);
            }
            i++;
        }
    }

    private void R(Animator animator, c.d.a<Animator, d> aVar) {
        if (animator != null) {
            animator.addListener(new b(aVar));
            e(animator);
        }
    }

    private void c(c.d.a<View, s> aVar, c.d.a<View, s> aVar2) {
        for (int i = 0; i < aVar.size(); i++) {
            s sVarM = aVar.m(i);
            if (F(sVarM.f1316b)) {
                this.u.add(sVarM);
                this.v.add(null);
            }
        }
        for (int i2 = 0; i2 < aVar2.size(); i2++) {
            s sVarM2 = aVar2.m(i2);
            if (F(sVarM2.f1316b)) {
                this.v.add(sVarM2);
                this.u.add(null);
            }
        }
    }

    private static void d(t tVar, View view, s sVar) {
        tVar.a.put(view, sVar);
        int id = view.getId();
        if (id >= 0) {
            if (tVar.f1318b.indexOfKey(id) >= 0) {
                tVar.f1318b.put(id, null);
            } else {
                tVar.f1318b.put(id, view);
            }
        }
        String strL = androidx.core.view.v.L(view);
        if (strL != null) {
            if (tVar.f1320d.containsKey(strL)) {
                tVar.f1320d.put(strL, null);
            } else {
                tVar.f1320d.put(strL, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (tVar.f1319c.g(itemIdAtPosition) < 0) {
                    androidx.core.view.v.w0(view, true);
                    tVar.f1319c.i(itemIdAtPosition, view);
                    return;
                }
                View viewE = tVar.f1319c.e(itemIdAtPosition);
                if (viewE != null) {
                    androidx.core.view.v.w0(viewE, false);
                    tVar.f1319c.i(itemIdAtPosition, null);
                }
            }
        }
    }

    private void g(View view, boolean z) {
        if (view == null) {
            return;
        }
        int id = view.getId();
        ArrayList<Integer> arrayList = this.j;
        if (arrayList == null || !arrayList.contains(Integer.valueOf(id))) {
            ArrayList<View> arrayList2 = this.k;
            if (arrayList2 == null || !arrayList2.contains(view)) {
                ArrayList<Class<?>> arrayList3 = this.l;
                if (arrayList3 != null) {
                    int size = arrayList3.size();
                    for (int i = 0; i < size; i++) {
                        if (this.l.get(i).isInstance(view)) {
                            return;
                        }
                    }
                }
                if (view.getParent() instanceof ViewGroup) {
                    s sVar = new s(view);
                    if (z) {
                        i(sVar);
                    } else {
                        f(sVar);
                    }
                    sVar.f1317c.add(this);
                    h(sVar);
                    if (z) {
                        d(this.q, view, sVar);
                    } else {
                        d(this.r, view, sVar);
                    }
                }
                if (view instanceof ViewGroup) {
                    ArrayList<Integer> arrayList4 = this.n;
                    if (arrayList4 == null || !arrayList4.contains(Integer.valueOf(id))) {
                        ArrayList<View> arrayList5 = this.o;
                        if (arrayList5 == null || !arrayList5.contains(view)) {
                            ArrayList<Class<?>> arrayList6 = this.p;
                            if (arrayList6 != null) {
                                int size2 = arrayList6.size();
                                for (int i2 = 0; i2 < size2; i2++) {
                                    if (this.p.get(i2).isInstance(view)) {
                                        return;
                                    }
                                }
                            }
                            ViewGroup viewGroup = (ViewGroup) view;
                            for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                                g(viewGroup.getChildAt(i3), z);
                            }
                        }
                    }
                }
            }
        }
    }

    private static c.d.a<Animator, d> w() {
        c.d.a<Animator, d> aVar = J.get();
        if (aVar != null) {
            return aVar;
        }
        c.d.a<Animator, d> aVar2 = new c.d.a<>();
        J.set(aVar2);
        return aVar2;
    }

    public List<Class<?>> A() {
        return this.i;
    }

    public List<View> B() {
        return this.g;
    }

    public String[] C() {
        return null;
    }

    public s D(View view, boolean z) {
        q qVar = this.s;
        if (qVar != null) {
            return qVar.D(view, z);
        }
        return (z ? this.q : this.r).a.get(view);
    }

    public boolean E(s sVar, s sVar2) {
        if (sVar == null || sVar2 == null) {
            return false;
        }
        String[] strArrC = C();
        if (strArrC == null) {
            Iterator<String> it = sVar.a.keySet().iterator();
            while (it.hasNext()) {
                if (G(sVar, sVar2, it.next())) {
                }
            }
            return false;
        }
        for (String str : strArrC) {
            if (!G(sVar, sVar2, str)) {
            }
        }
        return false;
        return true;
    }

    boolean F(View view) {
        ArrayList<Class<?>> arrayList;
        ArrayList<String> arrayList2;
        int id = view.getId();
        ArrayList<Integer> arrayList3 = this.j;
        if (arrayList3 != null && arrayList3.contains(Integer.valueOf(id))) {
            return false;
        }
        ArrayList<View> arrayList4 = this.k;
        if (arrayList4 != null && arrayList4.contains(view)) {
            return false;
        }
        ArrayList<Class<?>> arrayList5 = this.l;
        if (arrayList5 != null) {
            int size = arrayList5.size();
            for (int i = 0; i < size; i++) {
                if (this.l.get(i).isInstance(view)) {
                    return false;
                }
            }
        }
        if (this.m != null && androidx.core.view.v.L(view) != null && this.m.contains(androidx.core.view.v.L(view))) {
            return false;
        }
        if ((this.f.size() == 0 && this.g.size() == 0 && (((arrayList = this.i) == null || arrayList.isEmpty()) && ((arrayList2 = this.h) == null || arrayList2.isEmpty()))) || this.f.contains(Integer.valueOf(id)) || this.g.contains(view)) {
            return true;
        }
        ArrayList<String> arrayList6 = this.h;
        if (arrayList6 != null && arrayList6.contains(androidx.core.view.v.L(view))) {
            return true;
        }
        if (this.i != null) {
            for (int i2 = 0; i2 < this.i.size(); i2++) {
                if (this.i.get(i2).isInstance(view)) {
                    return true;
                }
            }
        }
        return false;
    }

    public void M(View view) {
        if (this.A) {
            return;
        }
        c.d.a<Animator, d> aVarW = w();
        int size = aVarW.size();
        m0 m0VarD = c0.d(view);
        for (int i = size - 1; i >= 0; i--) {
            d dVarM = aVarW.m(i);
            if (dVarM.a != null && m0VarD.equals(dVarM.f1308d)) {
                c.p.a.b(aVarW.i(i));
            }
        }
        ArrayList<f> arrayList = this.B;
        if (arrayList != null && arrayList.size() > 0) {
            ArrayList arrayList2 = (ArrayList) this.B.clone();
            int size2 = arrayList2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                ((f) arrayList2.get(i2)).a(this);
            }
        }
        this.z = true;
    }

    void N(ViewGroup viewGroup) {
        d dVar;
        this.u = new ArrayList<>();
        this.v = new ArrayList<>();
        L(this.q, this.r);
        c.d.a<Animator, d> aVarW = w();
        int size = aVarW.size();
        m0 m0VarD = c0.d(viewGroup);
        for (int i = size - 1; i >= 0; i--) {
            Animator animatorI = aVarW.i(i);
            if (animatorI != null && (dVar = aVarW.get(animatorI)) != null && dVar.a != null && m0VarD.equals(dVar.f1308d)) {
                s sVar = dVar.f1307c;
                View view = dVar.a;
                s sVarD = D(view, true);
                s sVarS = s(view, true);
                if (sVarD == null && sVarS == null) {
                    sVarS = this.r.a.get(view);
                }
                if (!(sVarD == null && sVarS == null) && dVar.e.E(sVar, sVarS)) {
                    if (animatorI.isRunning() || animatorI.isStarted()) {
                        animatorI.cancel();
                    } else {
                        aVarW.remove(animatorI);
                    }
                }
            }
        }
        n(viewGroup, this.q, this.r, this.u, this.v);
        S();
    }

    public m O(f fVar) {
        ArrayList<f> arrayList = this.B;
        if (arrayList == null) {
            return this;
        }
        arrayList.remove(fVar);
        if (this.B.size() == 0) {
            this.B = null;
        }
        return this;
    }

    public m P(View view) {
        this.g.remove(view);
        return this;
    }

    public void Q(View view) {
        if (this.z) {
            if (!this.A) {
                c.d.a<Animator, d> aVarW = w();
                int size = aVarW.size();
                m0 m0VarD = c0.d(view);
                for (int i = size - 1; i >= 0; i--) {
                    d dVarM = aVarW.m(i);
                    if (dVarM.a != null && m0VarD.equals(dVarM.f1308d)) {
                        c.p.a.c(aVarW.i(i));
                    }
                }
                ArrayList<f> arrayList = this.B;
                if (arrayList != null && arrayList.size() > 0) {
                    ArrayList arrayList2 = (ArrayList) this.B.clone();
                    int size2 = arrayList2.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        ((f) arrayList2.get(i2)).b(this);
                    }
                }
            }
            this.z = false;
        }
    }

    protected void S() {
        Z();
        c.d.a<Animator, d> aVarW = w();
        for (Animator animator : this.C) {
            if (aVarW.containsKey(animator)) {
                Z();
                R(animator, aVarW);
            }
        }
        this.C.clear();
        o();
    }

    public m T(long j) {
        this.f1304d = j;
        return this;
    }

    public void U(e eVar) {
        this.E = eVar;
    }

    public m V(TimeInterpolator timeInterpolator) {
        this.e = timeInterpolator;
        return this;
    }

    public void W(g gVar) {
        if (gVar == null) {
            this.G = I;
        } else {
            this.G = gVar;
        }
    }

    public void X(p pVar) {
        this.D = pVar;
    }

    public m Y(long j) {
        this.f1303c = j;
        return this;
    }

    protected void Z() {
        if (this.y == 0) {
            ArrayList<f> arrayList = this.B;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.B.clone();
                int size = arrayList2.size();
                for (int i = 0; i < size; i++) {
                    ((f) arrayList2.get(i)).c(this);
                }
            }
            this.A = false;
        }
        this.y++;
    }

    public m a(f fVar) {
        if (this.B == null) {
            this.B = new ArrayList<>();
        }
        this.B.add(fVar);
        return this;
    }

    String a0(String str) {
        String str2 = str + getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + ": ";
        if (this.f1304d != -1) {
            str2 = str2 + "dur(" + this.f1304d + ") ";
        }
        if (this.f1303c != -1) {
            str2 = str2 + "dly(" + this.f1303c + ") ";
        }
        if (this.e != null) {
            str2 = str2 + "interp(" + this.e + ") ";
        }
        if (this.f.size() <= 0 && this.g.size() <= 0) {
            return str2;
        }
        String str3 = str2 + "tgts(";
        if (this.f.size() > 0) {
            for (int i = 0; i < this.f.size(); i++) {
                if (i > 0) {
                    str3 = str3 + ", ";
                }
                str3 = str3 + this.f.get(i);
            }
        }
        if (this.g.size() > 0) {
            for (int i2 = 0; i2 < this.g.size(); i2++) {
                if (i2 > 0) {
                    str3 = str3 + ", ";
                }
                str3 = str3 + this.g.get(i2);
            }
        }
        return str3 + ")";
    }

    public m b(View view) {
        this.g.add(view);
        return this;
    }

    protected void cancel() {
        for (int size = this.x.size() - 1; size >= 0; size--) {
            this.x.get(size).cancel();
        }
        ArrayList<f> arrayList = this.B;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        ArrayList arrayList2 = (ArrayList) this.B.clone();
        int size2 = arrayList2.size();
        for (int i = 0; i < size2; i++) {
            ((f) arrayList2.get(i)).d(this);
        }
    }

    protected void e(Animator animator) {
        if (animator == null) {
            o();
            return;
        }
        if (p() >= 0) {
            animator.setDuration(p());
        }
        if (x() >= 0) {
            animator.setStartDelay(x() + animator.getStartDelay());
        }
        if (r() != null) {
            animator.setInterpolator(r());
        }
        animator.addListener(new c());
        animator.start();
    }

    public abstract void f(s sVar);

    void h(s sVar) {
        String[] strArrB;
        if (this.D == null || sVar.a.isEmpty() || (strArrB = this.D.b()) == null) {
            return;
        }
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= strArrB.length) {
                z = true;
                break;
            } else if (!sVar.a.containsKey(strArrB[i])) {
                break;
            } else {
                i++;
            }
        }
        if (z) {
            return;
        }
        this.D.a(sVar);
    }

    public abstract void i(s sVar);

    void j(ViewGroup viewGroup, boolean z) {
        ArrayList<String> arrayList;
        ArrayList<Class<?>> arrayList2;
        c.d.a<String, String> aVar;
        k(z);
        if ((this.f.size() > 0 || this.g.size() > 0) && (((arrayList = this.h) == null || arrayList.isEmpty()) && ((arrayList2 = this.i) == null || arrayList2.isEmpty()))) {
            for (int i = 0; i < this.f.size(); i++) {
                View viewFindViewById = viewGroup.findViewById(this.f.get(i).intValue());
                if (viewFindViewById != null) {
                    s sVar = new s(viewFindViewById);
                    if (z) {
                        i(sVar);
                    } else {
                        f(sVar);
                    }
                    sVar.f1317c.add(this);
                    h(sVar);
                    if (z) {
                        d(this.q, viewFindViewById, sVar);
                    } else {
                        d(this.r, viewFindViewById, sVar);
                    }
                }
            }
            for (int i2 = 0; i2 < this.g.size(); i2++) {
                View view = this.g.get(i2);
                s sVar2 = new s(view);
                if (z) {
                    i(sVar2);
                } else {
                    f(sVar2);
                }
                sVar2.f1317c.add(this);
                h(sVar2);
                if (z) {
                    d(this.q, view, sVar2);
                } else {
                    d(this.r, view, sVar2);
                }
            }
        } else {
            g(viewGroup, z);
        }
        if (z || (aVar = this.F) == null) {
            return;
        }
        int size = aVar.size();
        ArrayList arrayList3 = new ArrayList(size);
        for (int i3 = 0; i3 < size; i3++) {
            arrayList3.add(this.q.f1320d.remove(this.F.i(i3)));
        }
        for (int i4 = 0; i4 < size; i4++) {
            View view2 = (View) arrayList3.get(i4);
            if (view2 != null) {
                this.q.f1320d.put(this.F.m(i4), view2);
            }
        }
    }

    void k(boolean z) {
        if (z) {
            this.q.a.clear();
            this.q.f1318b.clear();
            this.q.f1319c.b();
        } else {
            this.r.a.clear();
            this.r.f1318b.clear();
            this.r.f1319c.b();
        }
    }

    @Override // 
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public m clone() {
        try {
            m mVar = (m) super.clone();
            mVar.C = new ArrayList<>();
            mVar.q = new t();
            mVar.r = new t();
            mVar.u = null;
            mVar.v = null;
            return mVar;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public Animator m(ViewGroup viewGroup, s sVar, s sVar2) {
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void n(ViewGroup viewGroup, t tVar, t tVar2, ArrayList<s> arrayList, ArrayList<s> arrayList2) {
        Animator animatorM;
        int i;
        int i2;
        View view;
        Animator animator;
        s sVar;
        Animator animator2;
        s sVar2;
        c.d.a<Animator, d> aVarW = w();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        long jMin = Long.MAX_VALUE;
        int i3 = 0;
        while (i3 < size) {
            s sVar3 = arrayList.get(i3);
            s sVar4 = arrayList2.get(i3);
            if (sVar3 != null && !sVar3.f1317c.contains(this)) {
                sVar3 = null;
            }
            if (sVar4 != null && !sVar4.f1317c.contains(this)) {
                sVar4 = null;
            }
            if (sVar3 != null || sVar4 != null) {
                if (!(sVar3 == null || sVar4 == null || E(sVar3, sVar4)) || (animatorM = m(viewGroup, sVar3, sVar4)) == null) {
                    i = size;
                    i2 = i3;
                } else {
                    if (sVar4 != null) {
                        view = sVar4.f1316b;
                        String[] strArrC = C();
                        if (strArrC != null && strArrC.length > 0) {
                            sVar2 = new s(view);
                            i = size;
                            s sVar5 = tVar2.a.get(view);
                            if (sVar5 != null) {
                                int i4 = 0;
                                while (i4 < strArrC.length) {
                                    sVar2.a.put(strArrC[i4], sVar5.a.get(strArrC[i4]));
                                    i4++;
                                    i3 = i3;
                                    sVar5 = sVar5;
                                }
                            }
                            i2 = i3;
                            int size2 = aVarW.size();
                            int i5 = 0;
                            while (true) {
                                if (i5 >= size2) {
                                    animator2 = animatorM;
                                    break;
                                }
                                d dVar = aVarW.get(aVarW.i(i5));
                                if (dVar.f1307c != null && dVar.a == view && dVar.f1306b.equals(t()) && dVar.f1307c.equals(sVar2)) {
                                    animator2 = null;
                                    break;
                                }
                                i5++;
                            }
                        } else {
                            i = size;
                            i2 = i3;
                            animator2 = animatorM;
                            sVar2 = null;
                        }
                        animator = animator2;
                        sVar = sVar2;
                    } else {
                        i = size;
                        i2 = i3;
                        view = sVar3.f1316b;
                        animator = animatorM;
                        sVar = null;
                    }
                    if (animator != null) {
                        p pVar = this.D;
                        if (pVar != null) {
                            long jC = pVar.c(viewGroup, this, sVar3, sVar4);
                            sparseIntArray.put(this.C.size(), (int) jC);
                            jMin = Math.min(jC, jMin);
                        }
                        aVarW.put(animator, new d(view, t(), this, c0.d(viewGroup), sVar));
                        this.C.add(animator);
                        jMin = jMin;
                    }
                }
            }
            i3 = i2 + 1;
            size = i;
        }
        if (sparseIntArray.size() != 0) {
            for (int i6 = 0; i6 < sparseIntArray.size(); i6++) {
                Animator animator3 = this.C.get(sparseIntArray.keyAt(i6));
                animator3.setStartDelay((((long) sparseIntArray.valueAt(i6)) - jMin) + animator3.getStartDelay());
            }
        }
    }

    protected void o() {
        int i = this.y - 1;
        this.y = i;
        if (i == 0) {
            ArrayList<f> arrayList = this.B;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.B.clone();
                int size = arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((f) arrayList2.get(i2)).e(this);
                }
            }
            for (int i3 = 0; i3 < this.q.f1319c.l(); i3++) {
                View viewM = this.q.f1319c.m(i3);
                if (viewM != null) {
                    androidx.core.view.v.w0(viewM, false);
                }
            }
            for (int i4 = 0; i4 < this.r.f1319c.l(); i4++) {
                View viewM2 = this.r.f1319c.m(i4);
                if (viewM2 != null) {
                    androidx.core.view.v.w0(viewM2, false);
                }
            }
            this.A = true;
        }
    }

    public long p() {
        return this.f1304d;
    }

    public e q() {
        return this.E;
    }

    public TimeInterpolator r() {
        return this.e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x002e, code lost:
    
        if (r3 < 0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0030, code lost:
    
        if (r8 == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0032, code lost:
    
        r7 = r6.v;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0035, code lost:
    
        r7 = r6.u;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x003e, code lost:
    
        return r7.get(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:?, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    s s(View view, boolean z) {
        q qVar = this.s;
        if (qVar != null) {
            return qVar.s(view, z);
        }
        ArrayList<s> arrayList = z ? this.u : this.v;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i = -1;
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                break;
            }
            s sVar = arrayList.get(i2);
            if (sVar == null) {
                return null;
            }
            if (sVar.f1316b == view) {
                i = i2;
                break;
            }
            i2++;
        }
    }

    public String t() {
        return this.f1302b;
    }

    public String toString() {
        return a0(BuildConfig.FLAVOR);
    }

    public g u() {
        return this.G;
    }

    public p v() {
        return this.D;
    }

    public long x() {
        return this.f1303c;
    }

    public List<Integer> y() {
        return this.f;
    }

    public List<String> z() {
        return this.h;
    }
}
