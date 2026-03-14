package p016c.p065p;

import android.animation.TimeInterpolator;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;
import p016c.p065p.AbstractC0676m;

/* JADX INFO: renamed from: c.p.q */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0681q extends AbstractC0676m {

    /* JADX INFO: renamed from: M */
    int f4047M;

    /* JADX INFO: renamed from: K */
    private ArrayList<AbstractC0676m> f4045K = new ArrayList<>();

    /* JADX INFO: renamed from: L */
    private boolean f4046L = true;

    /* JADX INFO: renamed from: N */
    boolean f4048N = false;

    /* JADX INFO: renamed from: O */
    private int f4049O = 0;

    /* JADX INFO: renamed from: c.p.q$a */
    class a extends C0678n {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ AbstractC0676m f4050a;

        a(C0681q c0681q, AbstractC0676m abstractC0676m) {
            this.f4050a = abstractC0676m;
        }

        @Override // p016c.p065p.AbstractC0676m.f
        /* JADX INFO: renamed from: e */
        public void mo5054e(AbstractC0676m abstractC0676m) {
            this.f4050a.mo5124S();
            abstractC0676m.mo5121O(this);
        }
    }

    /* JADX INFO: renamed from: c.p.q$b */
    static class b extends C0678n {

        /* JADX INFO: renamed from: a */
        C0681q f4051a;

        b(C0681q c0681q) {
            this.f4051a = c0681q;
        }

        @Override // p016c.p065p.C0678n, p016c.p065p.AbstractC0676m.f
        /* JADX INFO: renamed from: c */
        public void mo5081c(AbstractC0676m abstractC0676m) {
            C0681q c0681q = this.f4051a;
            if (c0681q.f4048N) {
                return;
            }
            c0681q.m5131Z();
            this.f4051a.f4048N = true;
        }

        @Override // p016c.p065p.AbstractC0676m.f
        /* JADX INFO: renamed from: e */
        public void mo5054e(AbstractC0676m abstractC0676m) {
            C0681q c0681q = this.f4051a;
            int i = c0681q.f4047M - 1;
            c0681q.f4047M = i;
            if (i == 0) {
                c0681q.f4048N = false;
                c0681q.m5141o();
            }
            abstractC0676m.mo5121O(this);
        }
    }

    /* JADX INFO: renamed from: e0 */
    private void m5160e0(AbstractC0676m abstractC0676m) {
        this.f4045K.add(abstractC0676m);
        abstractC0676m.f4022s = this;
    }

    /* JADX INFO: renamed from: n0 */
    private void m5161n0() {
        b bVar = new b(this);
        Iterator<AbstractC0676m> it = this.f4045K.iterator();
        while (it.hasNext()) {
            it.next().mo5132a(bVar);
        }
        this.f4047M = this.f4045K.size();
    }

    @Override // p016c.p065p.AbstractC0676m
    /* JADX INFO: renamed from: M */
    public void mo5119M(View view) {
        super.mo5119M(view);
        int size = this.f4045K.size();
        for (int i = 0; i < size; i++) {
            this.f4045K.get(i).mo5119M(view);
        }
    }

    @Override // p016c.p065p.AbstractC0676m
    /* JADX INFO: renamed from: Q */
    public void mo5123Q(View view) {
        super.mo5123Q(view);
        int size = this.f4045K.size();
        for (int i = 0; i < size; i++) {
            this.f4045K.get(i).mo5123Q(view);
        }
    }

    @Override // p016c.p065p.AbstractC0676m
    /* JADX INFO: renamed from: S */
    protected void mo5124S() {
        if (this.f4045K.isEmpty()) {
            m5131Z();
            m5141o();
            return;
        }
        m5161n0();
        if (this.f4046L) {
            Iterator<AbstractC0676m> it = this.f4045K.iterator();
            while (it.hasNext()) {
                it.next().mo5124S();
            }
            return;
        }
        for (int i = 1; i < this.f4045K.size(); i++) {
            this.f4045K.get(i - 1).mo5132a(new a(this, this.f4045K.get(i)));
        }
        AbstractC0676m abstractC0676m = this.f4045K.get(0);
        if (abstractC0676m != null) {
            abstractC0676m.mo5124S();
        }
    }

    @Override // p016c.p065p.AbstractC0676m
    /* JADX INFO: renamed from: T */
    public /* bridge */ /* synthetic */ AbstractC0676m mo5125T(long j) {
        m5169j0(j);
        return this;
    }

    @Override // p016c.p065p.AbstractC0676m
    /* JADX INFO: renamed from: U */
    public void mo5126U(AbstractC0676m.e eVar) {
        super.mo5126U(eVar);
        this.f4049O |= 8;
        int size = this.f4045K.size();
        for (int i = 0; i < size; i++) {
            this.f4045K.get(i).mo5126U(eVar);
        }
    }

    @Override // p016c.p065p.AbstractC0676m
    /* JADX INFO: renamed from: W */
    public void mo5128W(AbstractC0664g abstractC0664g) {
        super.mo5128W(abstractC0664g);
        this.f4049O |= 4;
        if (this.f4045K != null) {
            for (int i = 0; i < this.f4045K.size(); i++) {
                this.f4045K.get(i).mo5128W(abstractC0664g);
            }
        }
    }

    @Override // p016c.p065p.AbstractC0676m
    /* JADX INFO: renamed from: X */
    public void mo5129X(AbstractC0680p abstractC0680p) {
        super.mo5129X(abstractC0680p);
        this.f4049O |= 2;
        int size = this.f4045K.size();
        for (int i = 0; i < size; i++) {
            this.f4045K.get(i).mo5129X(abstractC0680p);
        }
    }

    @Override // p016c.p065p.AbstractC0676m
    /* JADX INFO: renamed from: a0 */
    String mo5133a0(String str) {
        String strMo5133a0 = super.mo5133a0(str);
        for (int i = 0; i < this.f4045K.size(); i++) {
            StringBuilder sb = new StringBuilder();
            sb.append(strMo5133a0);
            sb.append("\n");
            sb.append(this.f4045K.get(i).mo5133a0(str + "  "));
            strMo5133a0 = sb.toString();
        }
        return strMo5133a0;
    }

    @Override // p016c.p065p.AbstractC0676m
    /* JADX INFO: renamed from: b0, reason: merged with bridge method [inline-methods] */
    public C0681q mo5132a(AbstractC0676m.f fVar) {
        super.mo5132a(fVar);
        return this;
    }

    @Override // p016c.p065p.AbstractC0676m
    /* JADX INFO: renamed from: c0, reason: merged with bridge method [inline-methods] */
    public C0681q mo5134b(View view) {
        for (int i = 0; i < this.f4045K.size(); i++) {
            this.f4045K.get(i).mo5134b(view);
        }
        super.mo5134b(view);
        return this;
    }

    @Override // p016c.p065p.AbstractC0676m
    protected void cancel() {
        super.cancel();
        int size = this.f4045K.size();
        for (int i = 0; i < size; i++) {
            this.f4045K.get(i).cancel();
        }
    }

    /* JADX INFO: renamed from: d0 */
    public C0681q m5164d0(AbstractC0676m abstractC0676m) {
        m5160e0(abstractC0676m);
        long j = this.f4007d;
        if (j >= 0) {
            abstractC0676m.mo5125T(j);
        }
        if ((this.f4049O & 1) != 0) {
            abstractC0676m.mo5127V(m5144r());
        }
        if ((this.f4049O & 2) != 0) {
            abstractC0676m.mo5129X(m5148v());
        }
        if ((this.f4049O & 4) != 0) {
            abstractC0676m.mo5128W(m5147u());
        }
        if ((this.f4049O & 8) != 0) {
            abstractC0676m.mo5126U(m5143q());
        }
        return this;
    }

    @Override // p016c.p065p.AbstractC0676m
    /* JADX INFO: renamed from: f */
    public void mo5036f(C0683s c0683s) {
        if (m5118F(c0683s.f4056b)) {
            for (AbstractC0676m abstractC0676m : this.f4045K) {
                if (abstractC0676m.m5118F(c0683s.f4056b)) {
                    abstractC0676m.mo5036f(c0683s);
                    c0683s.f4057c.add(abstractC0676m);
                }
            }
        }
    }

    /* JADX INFO: renamed from: f0 */
    public AbstractC0676m m5165f0(int i) {
        if (i < 0 || i >= this.f4045K.size()) {
            return null;
        }
        return this.f4045K.get(i);
    }

    /* JADX INFO: renamed from: g0 */
    public int m5166g0() {
        return this.f4045K.size();
    }

    @Override // p016c.p065p.AbstractC0676m
    /* JADX INFO: renamed from: h */
    void mo5136h(C0683s c0683s) {
        super.mo5136h(c0683s);
        int size = this.f4045K.size();
        for (int i = 0; i < size; i++) {
            this.f4045K.get(i).mo5136h(c0683s);
        }
    }

    @Override // p016c.p065p.AbstractC0676m
    /* JADX INFO: renamed from: h0, reason: merged with bridge method [inline-methods] */
    public C0681q mo5121O(AbstractC0676m.f fVar) {
        super.mo5121O(fVar);
        return this;
    }

    @Override // p016c.p065p.AbstractC0676m
    /* JADX INFO: renamed from: i */
    public void mo5037i(C0683s c0683s) {
        if (m5118F(c0683s.f4056b)) {
            for (AbstractC0676m abstractC0676m : this.f4045K) {
                if (abstractC0676m.m5118F(c0683s.f4056b)) {
                    abstractC0676m.mo5037i(c0683s);
                    c0683s.f4057c.add(abstractC0676m);
                }
            }
        }
    }

    @Override // p016c.p065p.AbstractC0676m
    /* JADX INFO: renamed from: i0, reason: merged with bridge method [inline-methods] */
    public C0681q mo5122P(View view) {
        for (int i = 0; i < this.f4045K.size(); i++) {
            this.f4045K.get(i).mo5122P(view);
        }
        super.mo5122P(view);
        return this;
    }

    /* JADX INFO: renamed from: j0 */
    public C0681q m5169j0(long j) {
        ArrayList<AbstractC0676m> arrayList;
        super.mo5125T(j);
        if (this.f4007d >= 0 && (arrayList = this.f4045K) != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f4045K.get(i).mo5125T(j);
            }
        }
        return this;
    }

    @Override // p016c.p065p.AbstractC0676m
    /* JADX INFO: renamed from: k0, reason: merged with bridge method [inline-methods] */
    public C0681q mo5127V(TimeInterpolator timeInterpolator) {
        this.f4049O |= 1;
        ArrayList<AbstractC0676m> arrayList = this.f4045K;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f4045K.get(i).mo5127V(timeInterpolator);
            }
        }
        super.mo5127V(timeInterpolator);
        return this;
    }

    @Override // p016c.p065p.AbstractC0676m
    /* JADX INFO: renamed from: l */
    public AbstractC0676m clone() {
        C0681q c0681q = (C0681q) super.clone();
        c0681q.f4045K = new ArrayList<>();
        int size = this.f4045K.size();
        for (int i = 0; i < size; i++) {
            c0681q.m5160e0(this.f4045K.get(i).clone());
        }
        return c0681q;
    }

    /* JADX INFO: renamed from: l0 */
    public C0681q m5171l0(int i) {
        if (i == 0) {
            this.f4046L = true;
        } else {
            if (i != 1) {
                throw new AndroidRuntimeException("Invalid parameter for TransitionSet ordering: " + i);
            }
            this.f4046L = false;
        }
        return this;
    }

    @Override // p016c.p065p.AbstractC0676m
    /* JADX INFO: renamed from: m0, reason: merged with bridge method [inline-methods] */
    public C0681q mo5130Y(long j) {
        super.mo5130Y(j);
        return this;
    }

    @Override // p016c.p065p.AbstractC0676m
    /* JADX INFO: renamed from: n */
    protected void mo5140n(ViewGroup viewGroup, C0684t c0684t, C0684t c0684t2, ArrayList<C0683s> arrayList, ArrayList<C0683s> arrayList2) {
        long jM5149x = m5149x();
        int size = this.f4045K.size();
        for (int i = 0; i < size; i++) {
            AbstractC0676m abstractC0676m = this.f4045K.get(i);
            if (jM5149x > 0 && (this.f4046L || i == 0)) {
                long jM5149x2 = abstractC0676m.m5149x();
                if (jM5149x2 > 0) {
                    abstractC0676m.mo5130Y(jM5149x2 + jM5149x);
                } else {
                    abstractC0676m.mo5130Y(jM5149x);
                }
            }
            abstractC0676m.mo5140n(viewGroup, c0684t, c0684t2, arrayList, arrayList2);
        }
    }
}
