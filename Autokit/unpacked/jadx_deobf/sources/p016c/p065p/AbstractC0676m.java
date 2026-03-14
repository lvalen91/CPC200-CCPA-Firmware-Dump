package p016c.p065p;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.graphics.Path;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import androidx.core.view.C0292v;
import com.yalantis.ucrop.BuildConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p016c.p032d.C0534a;
import p016c.p032d.C0537d;

/* JADX INFO: renamed from: c.p.m */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0676m implements Cloneable {

    /* JADX INFO: renamed from: H */
    private static final int[] f3995H = {2, 1, 3, 4};

    /* JADX INFO: renamed from: I */
    private static final AbstractC0664g f3996I = new a();

    /* JADX INFO: renamed from: J */
    private static ThreadLocal<C0534a<Animator, d>> f3997J = new ThreadLocal<>();

    /* JADX INFO: renamed from: D */
    AbstractC0680p f4001D;

    /* JADX INFO: renamed from: E */
    private e f4002E;

    /* JADX INFO: renamed from: F */
    private C0534a<String, String> f4003F;

    /* JADX INFO: renamed from: u */
    private ArrayList<C0683s> f4024u;

    /* JADX INFO: renamed from: v */
    private ArrayList<C0683s> f4025v;

    /* JADX INFO: renamed from: b */
    private String f4005b = getClass().getName();

    /* JADX INFO: renamed from: c */
    private long f4006c = -1;

    /* JADX INFO: renamed from: d */
    long f4007d = -1;

    /* JADX INFO: renamed from: e */
    private TimeInterpolator f4008e = null;

    /* JADX INFO: renamed from: f */
    ArrayList<Integer> f4009f = new ArrayList<>();

    /* JADX INFO: renamed from: g */
    ArrayList<View> f4010g = new ArrayList<>();

    /* JADX INFO: renamed from: h */
    private ArrayList<String> f4011h = null;

    /* JADX INFO: renamed from: i */
    private ArrayList<Class<?>> f4012i = null;

    /* JADX INFO: renamed from: j */
    private ArrayList<Integer> f4013j = null;

    /* JADX INFO: renamed from: k */
    private ArrayList<View> f4014k = null;

    /* JADX INFO: renamed from: l */
    private ArrayList<Class<?>> f4015l = null;

    /* JADX INFO: renamed from: m */
    private ArrayList<String> f4016m = null;

    /* JADX INFO: renamed from: n */
    private ArrayList<Integer> f4017n = null;

    /* JADX INFO: renamed from: o */
    private ArrayList<View> f4018o = null;

    /* JADX INFO: renamed from: p */
    private ArrayList<Class<?>> f4019p = null;

    /* JADX INFO: renamed from: q */
    private C0684t f4020q = new C0684t();

    /* JADX INFO: renamed from: r */
    private C0684t f4021r = new C0684t();

    /* JADX INFO: renamed from: s */
    C0681q f4022s = null;

    /* JADX INFO: renamed from: t */
    private int[] f4023t = f3995H;

    /* JADX INFO: renamed from: w */
    boolean f4026w = false;

    /* JADX INFO: renamed from: x */
    ArrayList<Animator> f4027x = new ArrayList<>();

    /* JADX INFO: renamed from: y */
    private int f4028y = 0;

    /* JADX INFO: renamed from: z */
    private boolean f4029z = false;

    /* JADX INFO: renamed from: A */
    private boolean f3998A = false;

    /* JADX INFO: renamed from: B */
    private ArrayList<f> f3999B = null;

    /* JADX INFO: renamed from: C */
    private ArrayList<Animator> f4000C = new ArrayList<>();

    /* JADX INFO: renamed from: G */
    private AbstractC0664g f4004G = f3996I;

    /* JADX INFO: renamed from: c.p.m$a */
    static class a extends AbstractC0664g {
        a() {
        }

        @Override // p016c.p065p.AbstractC0664g
        /* JADX INFO: renamed from: a */
        public Path mo5086a(float f, float f2, float f3, float f4) {
            Path path = new Path();
            path.moveTo(f, f2);
            path.lineTo(f3, f4);
            return path;
        }
    }

    /* JADX INFO: renamed from: c.p.m$b */
    class b extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ C0534a f4030a;

        b(C0534a c0534a) {
            this.f4030a = c0534a;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f4030a.remove(animator);
            AbstractC0676m.this.f4027x.remove(animator);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            AbstractC0676m.this.f4027x.add(animator);
        }
    }

    /* JADX INFO: renamed from: c.p.m$c */
    class c extends AnimatorListenerAdapter {
        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            AbstractC0676m.this.m5141o();
            animator.removeListener(this);
        }
    }

    /* JADX INFO: renamed from: c.p.m$d */
    private static class d {

        /* JADX INFO: renamed from: a */
        View f4033a;

        /* JADX INFO: renamed from: b */
        String f4034b;

        /* JADX INFO: renamed from: c */
        C0683s f4035c;

        /* JADX INFO: renamed from: d */
        InterfaceC0677m0 f4036d;

        /* JADX INFO: renamed from: e */
        AbstractC0676m f4037e;

        d(View view, String str, AbstractC0676m abstractC0676m, InterfaceC0677m0 interfaceC0677m0, C0683s c0683s) {
            this.f4033a = view;
            this.f4034b = str;
            this.f4035c = c0683s;
            this.f4036d = interfaceC0677m0;
            this.f4037e = abstractC0676m;
        }
    }

    /* JADX INFO: renamed from: c.p.m$e */
    public static abstract class e {
    }

    /* JADX INFO: renamed from: c.p.m$f */
    public interface f {
        /* JADX INFO: renamed from: a */
        void mo5051a(AbstractC0676m abstractC0676m);

        /* JADX INFO: renamed from: b */
        void mo5052b(AbstractC0676m abstractC0676m);

        /* JADX INFO: renamed from: c */
        void mo5081c(AbstractC0676m abstractC0676m);

        /* JADX INFO: renamed from: d */
        void mo5053d(AbstractC0676m abstractC0676m);

        /* JADX INFO: renamed from: e */
        void mo5054e(AbstractC0676m abstractC0676m);
    }

    /* JADX INFO: renamed from: G */
    private static boolean m5104G(C0683s c0683s, C0683s c0683s2, String str) {
        Object obj = c0683s.f4055a.get(str);
        Object obj2 = c0683s2.f4055a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return true ^ obj.equals(obj2);
    }

    /* JADX INFO: renamed from: H */
    private void m5105H(C0534a<View, C0683s> c0534a, C0534a<View, C0683s> c0534a2, SparseArray<View> sparseArray, SparseArray<View> sparseArray2) {
        View view;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            View viewValueAt = sparseArray.valueAt(i);
            if (viewValueAt != null && m5118F(viewValueAt) && (view = sparseArray2.get(sparseArray.keyAt(i))) != null && m5118F(view)) {
                C0683s c0683s = c0534a.get(viewValueAt);
                C0683s c0683s2 = c0534a2.get(view);
                if (c0683s != null && c0683s2 != null) {
                    this.f4024u.add(c0683s);
                    this.f4025v.add(c0683s2);
                    c0534a.remove(viewValueAt);
                    c0534a2.remove(view);
                }
            }
        }
    }

    /* JADX INFO: renamed from: I */
    private void m5106I(C0534a<View, C0683s> c0534a, C0534a<View, C0683s> c0534a2) {
        C0683s c0683sRemove;
        for (int size = c0534a.size() - 1; size >= 0; size--) {
            View viewM4293i = c0534a.m4293i(size);
            if (viewM4293i != null && m5118F(viewM4293i) && (c0683sRemove = c0534a2.remove(viewM4293i)) != null && m5118F(c0683sRemove.f4056b)) {
                this.f4024u.add(c0534a.m4295k(size));
                this.f4025v.add(c0683sRemove);
            }
        }
    }

    /* JADX INFO: renamed from: J */
    private void m5107J(C0534a<View, C0683s> c0534a, C0534a<View, C0683s> c0534a2, C0537d<View> c0537d, C0537d<View> c0537d2) {
        View viewM4258e;
        int iM4265l = c0537d.m4265l();
        for (int i = 0; i < iM4265l; i++) {
            View viewM4266m = c0537d.m4266m(i);
            if (viewM4266m != null && m5118F(viewM4266m) && (viewM4258e = c0537d2.m4258e(c0537d.m4261h(i))) != null && m5118F(viewM4258e)) {
                C0683s c0683s = c0534a.get(viewM4266m);
                C0683s c0683s2 = c0534a2.get(viewM4258e);
                if (c0683s != null && c0683s2 != null) {
                    this.f4024u.add(c0683s);
                    this.f4025v.add(c0683s2);
                    c0534a.remove(viewM4266m);
                    c0534a2.remove(viewM4258e);
                }
            }
        }
    }

    /* JADX INFO: renamed from: K */
    private void m5108K(C0534a<View, C0683s> c0534a, C0534a<View, C0683s> c0534a2, C0534a<String, View> c0534a3, C0534a<String, View> c0534a4) {
        View view;
        int size = c0534a3.size();
        for (int i = 0; i < size; i++) {
            View viewM4297m = c0534a3.m4297m(i);
            if (viewM4297m != null && m5118F(viewM4297m) && (view = c0534a4.get(c0534a3.m4293i(i))) != null && m5118F(view)) {
                C0683s c0683s = c0534a.get(viewM4297m);
                C0683s c0683s2 = c0534a2.get(view);
                if (c0683s != null && c0683s2 != null) {
                    this.f4024u.add(c0683s);
                    this.f4025v.add(c0683s2);
                    c0534a.remove(viewM4297m);
                    c0534a2.remove(view);
                }
            }
        }
    }

    /* JADX INFO: renamed from: L */
    private void m5109L(C0684t c0684t, C0684t c0684t2) {
        C0534a<View, C0683s> c0534a = new C0534a<>(c0684t.f4058a);
        C0534a<View, C0683s> c0534a2 = new C0534a<>(c0684t2.f4058a);
        int i = 0;
        while (true) {
            int[] iArr = this.f4023t;
            if (i >= iArr.length) {
                m5111c(c0534a, c0534a2);
                return;
            }
            int i2 = iArr[i];
            if (i2 == 1) {
                m5106I(c0534a, c0534a2);
            } else if (i2 == 2) {
                m5108K(c0534a, c0534a2, c0684t.f4061d, c0684t2.f4061d);
            } else if (i2 == 3) {
                m5105H(c0534a, c0534a2, c0684t.f4059b, c0684t2.f4059b);
            } else if (i2 == 4) {
                m5107J(c0534a, c0534a2, c0684t.f4060c, c0684t2.f4060c);
            }
            i++;
        }
    }

    /* JADX INFO: renamed from: R */
    private void m5110R(Animator animator, C0534a<Animator, d> c0534a) {
        if (animator != null) {
            animator.addListener(new b(c0534a));
            m5135e(animator);
        }
    }

    /* JADX INFO: renamed from: c */
    private void m5111c(C0534a<View, C0683s> c0534a, C0534a<View, C0683s> c0534a2) {
        for (int i = 0; i < c0534a.size(); i++) {
            C0683s c0683sM4297m = c0534a.m4297m(i);
            if (m5118F(c0683sM4297m.f4056b)) {
                this.f4024u.add(c0683sM4297m);
                this.f4025v.add(null);
            }
        }
        for (int i2 = 0; i2 < c0534a2.size(); i2++) {
            C0683s c0683sM4297m2 = c0534a2.m4297m(i2);
            if (m5118F(c0683sM4297m2.f4056b)) {
                this.f4025v.add(c0683sM4297m2);
                this.f4024u.add(null);
            }
        }
    }

    /* JADX INFO: renamed from: d */
    private static void m5112d(C0684t c0684t, View view, C0683s c0683s) {
        c0684t.f4058a.put(view, c0683s);
        int id = view.getId();
        if (id >= 0) {
            if (c0684t.f4059b.indexOfKey(id) >= 0) {
                c0684t.f4059b.put(id, null);
            } else {
                c0684t.f4059b.put(id, view);
            }
        }
        String strM2061L = C0292v.m2061L(view);
        if (strM2061L != null) {
            if (c0684t.f4061d.containsKey(strM2061L)) {
                c0684t.f4061d.put(strM2061L, null);
            } else {
                c0684t.f4061d.put(strM2061L, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (c0684t.f4060c.m4260g(itemIdAtPosition) < 0) {
                    C0292v.m2121w0(view, true);
                    c0684t.f4060c.m4262i(itemIdAtPosition, view);
                    return;
                }
                View viewM4258e = c0684t.f4060c.m4258e(itemIdAtPosition);
                if (viewM4258e != null) {
                    C0292v.m2121w0(viewM4258e, false);
                    c0684t.f4060c.m4262i(itemIdAtPosition, null);
                }
            }
        }
    }

    /* JADX INFO: renamed from: g */
    private void m5113g(View view, boolean z) {
        if (view == null) {
            return;
        }
        int id = view.getId();
        ArrayList<Integer> arrayList = this.f4013j;
        if (arrayList == null || !arrayList.contains(Integer.valueOf(id))) {
            ArrayList<View> arrayList2 = this.f4014k;
            if (arrayList2 == null || !arrayList2.contains(view)) {
                ArrayList<Class<?>> arrayList3 = this.f4015l;
                if (arrayList3 != null) {
                    int size = arrayList3.size();
                    for (int i = 0; i < size; i++) {
                        if (this.f4015l.get(i).isInstance(view)) {
                            return;
                        }
                    }
                }
                if (view.getParent() instanceof ViewGroup) {
                    C0683s c0683s = new C0683s(view);
                    if (z) {
                        mo5037i(c0683s);
                    } else {
                        mo5036f(c0683s);
                    }
                    c0683s.f4057c.add(this);
                    mo5136h(c0683s);
                    if (z) {
                        m5112d(this.f4020q, view, c0683s);
                    } else {
                        m5112d(this.f4021r, view, c0683s);
                    }
                }
                if (view instanceof ViewGroup) {
                    ArrayList<Integer> arrayList4 = this.f4017n;
                    if (arrayList4 == null || !arrayList4.contains(Integer.valueOf(id))) {
                        ArrayList<View> arrayList5 = this.f4018o;
                        if (arrayList5 == null || !arrayList5.contains(view)) {
                            ArrayList<Class<?>> arrayList6 = this.f4019p;
                            if (arrayList6 != null) {
                                int size2 = arrayList6.size();
                                for (int i2 = 0; i2 < size2; i2++) {
                                    if (this.f4019p.get(i2).isInstance(view)) {
                                        return;
                                    }
                                }
                            }
                            ViewGroup viewGroup = (ViewGroup) view;
                            for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                                m5113g(viewGroup.getChildAt(i3), z);
                            }
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: w */
    private static C0534a<Animator, d> m5114w() {
        C0534a<Animator, d> c0534a = f3997J.get();
        if (c0534a != null) {
            return c0534a;
        }
        C0534a<Animator, d> c0534a2 = new C0534a<>();
        f3997J.set(c0534a2);
        return c0534a2;
    }

    /* JADX INFO: renamed from: A */
    public List<Class<?>> m5115A() {
        return this.f4012i;
    }

    /* JADX INFO: renamed from: B */
    public List<View> m5116B() {
        return this.f4010g;
    }

    /* JADX INFO: renamed from: C */
    public String[] mo5035C() {
        return null;
    }

    /* JADX INFO: renamed from: D */
    public C0683s m5117D(View view, boolean z) {
        C0681q c0681q = this.f4022s;
        if (c0681q != null) {
            return c0681q.m5117D(view, z);
        }
        return (z ? this.f4020q : this.f4021r).f4058a.get(view);
    }

    /* JADX INFO: renamed from: E */
    public boolean mo5094E(C0683s c0683s, C0683s c0683s2) {
        if (c0683s == null || c0683s2 == null) {
            return false;
        }
        String[] strArrMo5035C = mo5035C();
        if (strArrMo5035C == null) {
            Iterator<String> it = c0683s.f4055a.keySet().iterator();
            while (it.hasNext()) {
                if (m5104G(c0683s, c0683s2, it.next())) {
                }
            }
            return false;
        }
        for (String str : strArrMo5035C) {
            if (!m5104G(c0683s, c0683s2, str)) {
            }
        }
        return false;
        return true;
    }

    /* JADX INFO: renamed from: F */
    boolean m5118F(View view) {
        ArrayList<Class<?>> arrayList;
        ArrayList<String> arrayList2;
        int id = view.getId();
        ArrayList<Integer> arrayList3 = this.f4013j;
        if (arrayList3 != null && arrayList3.contains(Integer.valueOf(id))) {
            return false;
        }
        ArrayList<View> arrayList4 = this.f4014k;
        if (arrayList4 != null && arrayList4.contains(view)) {
            return false;
        }
        ArrayList<Class<?>> arrayList5 = this.f4015l;
        if (arrayList5 != null) {
            int size = arrayList5.size();
            for (int i = 0; i < size; i++) {
                if (this.f4015l.get(i).isInstance(view)) {
                    return false;
                }
            }
        }
        if (this.f4016m != null && C0292v.m2061L(view) != null && this.f4016m.contains(C0292v.m2061L(view))) {
            return false;
        }
        if ((this.f4009f.size() == 0 && this.f4010g.size() == 0 && (((arrayList = this.f4012i) == null || arrayList.isEmpty()) && ((arrayList2 = this.f4011h) == null || arrayList2.isEmpty()))) || this.f4009f.contains(Integer.valueOf(id)) || this.f4010g.contains(view)) {
            return true;
        }
        ArrayList<String> arrayList6 = this.f4011h;
        if (arrayList6 != null && arrayList6.contains(C0292v.m2061L(view))) {
            return true;
        }
        if (this.f4012i != null) {
            for (int i2 = 0; i2 < this.f4012i.size(); i2++) {
                if (this.f4012i.get(i2).isInstance(view)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: M */
    public void mo5119M(View view) {
        if (this.f3998A) {
            return;
        }
        C0534a<Animator, d> c0534aM5114w = m5114w();
        int size = c0534aM5114w.size();
        InterfaceC0677m0 interfaceC0677m0M5061d = C0657c0.m5061d(view);
        for (int i = size - 1; i >= 0; i--) {
            d dVarM4297m = c0534aM5114w.m4297m(i);
            if (dVarM4297m.f4033a != null && interfaceC0677m0M5061d.equals(dVarM4297m.f4036d)) {
                C0652a.m5028b(c0534aM5114w.m4293i(i));
            }
        }
        ArrayList<f> arrayList = this.f3999B;
        if (arrayList != null && arrayList.size() > 0) {
            ArrayList arrayList2 = (ArrayList) this.f3999B.clone();
            int size2 = arrayList2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                ((f) arrayList2.get(i2)).mo5051a(this);
            }
        }
        this.f4029z = true;
    }

    /* JADX INFO: renamed from: N */
    void m5120N(ViewGroup viewGroup) {
        d dVar;
        this.f4024u = new ArrayList<>();
        this.f4025v = new ArrayList<>();
        m5109L(this.f4020q, this.f4021r);
        C0534a<Animator, d> c0534aM5114w = m5114w();
        int size = c0534aM5114w.size();
        InterfaceC0677m0 interfaceC0677m0M5061d = C0657c0.m5061d(viewGroup);
        for (int i = size - 1; i >= 0; i--) {
            Animator animatorM4293i = c0534aM5114w.m4293i(i);
            if (animatorM4293i != null && (dVar = c0534aM5114w.get(animatorM4293i)) != null && dVar.f4033a != null && interfaceC0677m0M5061d.equals(dVar.f4036d)) {
                C0683s c0683s = dVar.f4035c;
                View view = dVar.f4033a;
                C0683s c0683sM5117D = m5117D(view, true);
                C0683s c0683sM5145s = m5145s(view, true);
                if (c0683sM5117D == null && c0683sM5145s == null) {
                    c0683sM5145s = this.f4021r.f4058a.get(view);
                }
                if (!(c0683sM5117D == null && c0683sM5145s == null) && dVar.f4037e.mo5094E(c0683s, c0683sM5145s)) {
                    if (animatorM4293i.isRunning() || animatorM4293i.isStarted()) {
                        animatorM4293i.cancel();
                    } else {
                        c0534aM5114w.remove(animatorM4293i);
                    }
                }
            }
        }
        mo5140n(viewGroup, this.f4020q, this.f4021r, this.f4024u, this.f4025v);
        mo5124S();
    }

    /* JADX INFO: renamed from: O */
    public AbstractC0676m mo5121O(f fVar) {
        ArrayList<f> arrayList = this.f3999B;
        if (arrayList == null) {
            return this;
        }
        arrayList.remove(fVar);
        if (this.f3999B.size() == 0) {
            this.f3999B = null;
        }
        return this;
    }

    /* JADX INFO: renamed from: P */
    public AbstractC0676m mo5122P(View view) {
        this.f4010g.remove(view);
        return this;
    }

    /* JADX INFO: renamed from: Q */
    public void mo5123Q(View view) {
        if (this.f4029z) {
            if (!this.f3998A) {
                C0534a<Animator, d> c0534aM5114w = m5114w();
                int size = c0534aM5114w.size();
                InterfaceC0677m0 interfaceC0677m0M5061d = C0657c0.m5061d(view);
                for (int i = size - 1; i >= 0; i--) {
                    d dVarM4297m = c0534aM5114w.m4297m(i);
                    if (dVarM4297m.f4033a != null && interfaceC0677m0M5061d.equals(dVarM4297m.f4036d)) {
                        C0652a.m5029c(c0534aM5114w.m4293i(i));
                    }
                }
                ArrayList<f> arrayList = this.f3999B;
                if (arrayList != null && arrayList.size() > 0) {
                    ArrayList arrayList2 = (ArrayList) this.f3999B.clone();
                    int size2 = arrayList2.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        ((f) arrayList2.get(i2)).mo5052b(this);
                    }
                }
            }
            this.f4029z = false;
        }
    }

    /* JADX INFO: renamed from: S */
    protected void mo5124S() {
        m5131Z();
        C0534a<Animator, d> c0534aM5114w = m5114w();
        for (Animator animator : this.f4000C) {
            if (c0534aM5114w.containsKey(animator)) {
                m5131Z();
                m5110R(animator, c0534aM5114w);
            }
        }
        this.f4000C.clear();
        m5141o();
    }

    /* JADX INFO: renamed from: T */
    public AbstractC0676m mo5125T(long j) {
        this.f4007d = j;
        return this;
    }

    /* JADX INFO: renamed from: U */
    public void mo5126U(e eVar) {
        this.f4002E = eVar;
    }

    /* JADX INFO: renamed from: V */
    public AbstractC0676m mo5127V(TimeInterpolator timeInterpolator) {
        this.f4008e = timeInterpolator;
        return this;
    }

    /* JADX INFO: renamed from: W */
    public void mo5128W(AbstractC0664g abstractC0664g) {
        if (abstractC0664g == null) {
            this.f4004G = f3996I;
        } else {
            this.f4004G = abstractC0664g;
        }
    }

    /* JADX INFO: renamed from: X */
    public void mo5129X(AbstractC0680p abstractC0680p) {
        this.f4001D = abstractC0680p;
    }

    /* JADX INFO: renamed from: Y */
    public AbstractC0676m mo5130Y(long j) {
        this.f4006c = j;
        return this;
    }

    /* JADX INFO: renamed from: Z */
    protected void m5131Z() {
        if (this.f4028y == 0) {
            ArrayList<f> arrayList = this.f3999B;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.f3999B.clone();
                int size = arrayList2.size();
                for (int i = 0; i < size; i++) {
                    ((f) arrayList2.get(i)).mo5081c(this);
                }
            }
            this.f3998A = false;
        }
        this.f4028y++;
    }

    /* JADX INFO: renamed from: a */
    public AbstractC0676m mo5132a(f fVar) {
        if (this.f3999B == null) {
            this.f3999B = new ArrayList<>();
        }
        this.f3999B.add(fVar);
        return this;
    }

    /* JADX INFO: renamed from: a0 */
    String mo5133a0(String str) {
        String str2 = str + getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + ": ";
        if (this.f4007d != -1) {
            str2 = str2 + "dur(" + this.f4007d + ") ";
        }
        if (this.f4006c != -1) {
            str2 = str2 + "dly(" + this.f4006c + ") ";
        }
        if (this.f4008e != null) {
            str2 = str2 + "interp(" + this.f4008e + ") ";
        }
        if (this.f4009f.size() <= 0 && this.f4010g.size() <= 0) {
            return str2;
        }
        String str3 = str2 + "tgts(";
        if (this.f4009f.size() > 0) {
            for (int i = 0; i < this.f4009f.size(); i++) {
                if (i > 0) {
                    str3 = str3 + ", ";
                }
                str3 = str3 + this.f4009f.get(i);
            }
        }
        if (this.f4010g.size() > 0) {
            for (int i2 = 0; i2 < this.f4010g.size(); i2++) {
                if (i2 > 0) {
                    str3 = str3 + ", ";
                }
                str3 = str3 + this.f4010g.get(i2);
            }
        }
        return str3 + ")";
    }

    /* JADX INFO: renamed from: b */
    public AbstractC0676m mo5134b(View view) {
        this.f4010g.add(view);
        return this;
    }

    protected void cancel() {
        for (int size = this.f4027x.size() - 1; size >= 0; size--) {
            this.f4027x.get(size).cancel();
        }
        ArrayList<f> arrayList = this.f3999B;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        ArrayList arrayList2 = (ArrayList) this.f3999B.clone();
        int size2 = arrayList2.size();
        for (int i = 0; i < size2; i++) {
            ((f) arrayList2.get(i)).mo5053d(this);
        }
    }

    /* JADX INFO: renamed from: e */
    protected void m5135e(Animator animator) {
        if (animator == null) {
            m5141o();
            return;
        }
        if (m5142p() >= 0) {
            animator.setDuration(m5142p());
        }
        if (m5149x() >= 0) {
            animator.setStartDelay(m5149x() + animator.getStartDelay());
        }
        if (m5144r() != null) {
            animator.setInterpolator(m5144r());
        }
        animator.addListener(new c());
        animator.start();
    }

    /* JADX INFO: renamed from: f */
    public abstract void mo5036f(C0683s c0683s);

    /* JADX INFO: renamed from: h */
    void mo5136h(C0683s c0683s) {
        String[] strArrM5158b;
        if (this.f4001D == null || c0683s.f4055a.isEmpty() || (strArrM5158b = this.f4001D.m5158b()) == null) {
            return;
        }
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= strArrM5158b.length) {
                z = true;
                break;
            } else if (!c0683s.f4055a.containsKey(strArrM5158b[i])) {
                break;
            } else {
                i++;
            }
        }
        if (z) {
            return;
        }
        this.f4001D.m5157a(c0683s);
    }

    /* JADX INFO: renamed from: i */
    public abstract void mo5037i(C0683s c0683s);

    /* JADX INFO: renamed from: j */
    void m5137j(ViewGroup viewGroup, boolean z) {
        ArrayList<String> arrayList;
        ArrayList<Class<?>> arrayList2;
        C0534a<String, String> c0534a;
        m5138k(z);
        if ((this.f4009f.size() > 0 || this.f4010g.size() > 0) && (((arrayList = this.f4011h) == null || arrayList.isEmpty()) && ((arrayList2 = this.f4012i) == null || arrayList2.isEmpty()))) {
            for (int i = 0; i < this.f4009f.size(); i++) {
                View viewFindViewById = viewGroup.findViewById(this.f4009f.get(i).intValue());
                if (viewFindViewById != null) {
                    C0683s c0683s = new C0683s(viewFindViewById);
                    if (z) {
                        mo5037i(c0683s);
                    } else {
                        mo5036f(c0683s);
                    }
                    c0683s.f4057c.add(this);
                    mo5136h(c0683s);
                    if (z) {
                        m5112d(this.f4020q, viewFindViewById, c0683s);
                    } else {
                        m5112d(this.f4021r, viewFindViewById, c0683s);
                    }
                }
            }
            for (int i2 = 0; i2 < this.f4010g.size(); i2++) {
                View view = this.f4010g.get(i2);
                C0683s c0683s2 = new C0683s(view);
                if (z) {
                    mo5037i(c0683s2);
                } else {
                    mo5036f(c0683s2);
                }
                c0683s2.f4057c.add(this);
                mo5136h(c0683s2);
                if (z) {
                    m5112d(this.f4020q, view, c0683s2);
                } else {
                    m5112d(this.f4021r, view, c0683s2);
                }
            }
        } else {
            m5113g(viewGroup, z);
        }
        if (z || (c0534a = this.f4003F) == null) {
            return;
        }
        int size = c0534a.size();
        ArrayList arrayList3 = new ArrayList(size);
        for (int i3 = 0; i3 < size; i3++) {
            arrayList3.add(this.f4020q.f4061d.remove(this.f4003F.m4293i(i3)));
        }
        for (int i4 = 0; i4 < size; i4++) {
            View view2 = (View) arrayList3.get(i4);
            if (view2 != null) {
                this.f4020q.f4061d.put(this.f4003F.m4297m(i4), view2);
            }
        }
    }

    /* JADX INFO: renamed from: k */
    void m5138k(boolean z) {
        if (z) {
            this.f4020q.f4058a.clear();
            this.f4020q.f4059b.clear();
            this.f4020q.f4060c.m4256b();
        } else {
            this.f4021r.f4058a.clear();
            this.f4021r.f4059b.clear();
            this.f4021r.f4060c.m4256b();
        }
    }

    @Override // 
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public AbstractC0676m clone() {
        try {
            AbstractC0676m abstractC0676m = (AbstractC0676m) super.clone();
            abstractC0676m.f4000C = new ArrayList<>();
            abstractC0676m.f4020q = new C0684t();
            abstractC0676m.f4021r = new C0684t();
            abstractC0676m.f4024u = null;
            abstractC0676m.f4025v = null;
            return abstractC0676m;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: m */
    public Animator mo5038m(ViewGroup viewGroup, C0683s c0683s, C0683s c0683s2) {
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0043  */
    /* JADX INFO: renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void mo5140n(ViewGroup viewGroup, C0684t c0684t, C0684t c0684t2, ArrayList<C0683s> arrayList, ArrayList<C0683s> arrayList2) {
        Animator animatorMo5038m;
        int i;
        int i2;
        View view;
        Animator animator;
        C0683s c0683s;
        Animator animator2;
        C0683s c0683s2;
        C0534a<Animator, d> c0534aM5114w = m5114w();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        long jMin = Long.MAX_VALUE;
        int i3 = 0;
        while (i3 < size) {
            C0683s c0683s3 = arrayList.get(i3);
            C0683s c0683s4 = arrayList2.get(i3);
            if (c0683s3 != null && !c0683s3.f4057c.contains(this)) {
                c0683s3 = null;
            }
            if (c0683s4 != null && !c0683s4.f4057c.contains(this)) {
                c0683s4 = null;
            }
            if (c0683s3 != null || c0683s4 != null) {
                if (!(c0683s3 == null || c0683s4 == null || mo5094E(c0683s3, c0683s4)) || (animatorMo5038m = mo5038m(viewGroup, c0683s3, c0683s4)) == null) {
                    i = size;
                    i2 = i3;
                } else {
                    if (c0683s4 != null) {
                        view = c0683s4.f4056b;
                        String[] strArrMo5035C = mo5035C();
                        if (strArrMo5035C != null && strArrMo5035C.length > 0) {
                            c0683s2 = new C0683s(view);
                            i = size;
                            C0683s c0683s5 = c0684t2.f4058a.get(view);
                            if (c0683s5 != null) {
                                int i4 = 0;
                                while (i4 < strArrMo5035C.length) {
                                    c0683s2.f4055a.put(strArrMo5035C[i4], c0683s5.f4055a.get(strArrMo5035C[i4]));
                                    i4++;
                                    i3 = i3;
                                    c0683s5 = c0683s5;
                                }
                            }
                            i2 = i3;
                            int size2 = c0534aM5114w.size();
                            int i5 = 0;
                            while (true) {
                                if (i5 >= size2) {
                                    animator2 = animatorMo5038m;
                                    break;
                                }
                                d dVar = c0534aM5114w.get(c0534aM5114w.m4293i(i5));
                                if (dVar.f4035c != null && dVar.f4033a == view && dVar.f4034b.equals(m5146t()) && dVar.f4035c.equals(c0683s2)) {
                                    animator2 = null;
                                    break;
                                }
                                i5++;
                            }
                        } else {
                            i = size;
                            i2 = i3;
                            animator2 = animatorMo5038m;
                            c0683s2 = null;
                        }
                        animator = animator2;
                        c0683s = c0683s2;
                    } else {
                        i = size;
                        i2 = i3;
                        view = c0683s3.f4056b;
                        animator = animatorMo5038m;
                        c0683s = null;
                    }
                    if (animator != null) {
                        AbstractC0680p abstractC0680p = this.f4001D;
                        if (abstractC0680p != null) {
                            long jM5159c = abstractC0680p.m5159c(viewGroup, this, c0683s3, c0683s4);
                            sparseIntArray.put(this.f4000C.size(), (int) jM5159c);
                            jMin = Math.min(jM5159c, jMin);
                        }
                        c0534aM5114w.put(animator, new d(view, m5146t(), this, C0657c0.m5061d(viewGroup), c0683s));
                        this.f4000C.add(animator);
                        jMin = jMin;
                    }
                }
            }
            i3 = i2 + 1;
            size = i;
        }
        if (sparseIntArray.size() != 0) {
            for (int i6 = 0; i6 < sparseIntArray.size(); i6++) {
                Animator animator3 = this.f4000C.get(sparseIntArray.keyAt(i6));
                animator3.setStartDelay((((long) sparseIntArray.valueAt(i6)) - jMin) + animator3.getStartDelay());
            }
        }
    }

    /* JADX INFO: renamed from: o */
    protected void m5141o() {
        int i = this.f4028y - 1;
        this.f4028y = i;
        if (i == 0) {
            ArrayList<f> arrayList = this.f3999B;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.f3999B.clone();
                int size = arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((f) arrayList2.get(i2)).mo5054e(this);
                }
            }
            for (int i3 = 0; i3 < this.f4020q.f4060c.m4265l(); i3++) {
                View viewM4266m = this.f4020q.f4060c.m4266m(i3);
                if (viewM4266m != null) {
                    C0292v.m2121w0(viewM4266m, false);
                }
            }
            for (int i4 = 0; i4 < this.f4021r.f4060c.m4265l(); i4++) {
                View viewM4266m2 = this.f4021r.f4060c.m4266m(i4);
                if (viewM4266m2 != null) {
                    C0292v.m2121w0(viewM4266m2, false);
                }
            }
            this.f3998A = true;
        }
    }

    /* JADX INFO: renamed from: p */
    public long m5142p() {
        return this.f4007d;
    }

    /* JADX INFO: renamed from: q */
    public e m5143q() {
        return this.f4002E;
    }

    /* JADX INFO: renamed from: r */
    public TimeInterpolator m5144r() {
        return this.f4008e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x002e, code lost:
    
        if (r3 < 0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0030, code lost:
    
        if (r8 == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0032, code lost:
    
        r7 = r6.f4025v;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0035, code lost:
    
        r7 = r6.f4024u;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x003e, code lost:
    
        return r7.get(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:?, code lost:
    
        return null;
     */
    /* JADX INFO: renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    C0683s m5145s(View view, boolean z) {
        C0681q c0681q = this.f4022s;
        if (c0681q != null) {
            return c0681q.m5145s(view, z);
        }
        ArrayList<C0683s> arrayList = z ? this.f4024u : this.f4025v;
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
            C0683s c0683s = arrayList.get(i2);
            if (c0683s == null) {
                return null;
            }
            if (c0683s.f4056b == view) {
                i = i2;
                break;
            }
            i2++;
        }
    }

    /* JADX INFO: renamed from: t */
    public String m5146t() {
        return this.f4005b;
    }

    public String toString() {
        return mo5133a0(BuildConfig.FLAVOR);
    }

    /* JADX INFO: renamed from: u */
    public AbstractC0664g m5147u() {
        return this.f4004G;
    }

    /* JADX INFO: renamed from: v */
    public AbstractC0680p m5148v() {
        return this.f4001D;
    }

    /* JADX INFO: renamed from: x */
    public long m5149x() {
        return this.f4006c;
    }

    /* JADX INFO: renamed from: y */
    public List<Integer> m5150y() {
        return this.f4009f;
    }

    /* JADX INFO: renamed from: z */
    public List<String> m5151z() {
        return this.f4011h;
    }
}
