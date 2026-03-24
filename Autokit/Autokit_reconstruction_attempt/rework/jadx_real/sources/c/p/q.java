package c.p;

import android.animation.TimeInterpolator;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import c.p.m;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class q extends m {
    int M;
    private ArrayList<m> K = new ArrayList<>();
    private boolean L = true;
    boolean N = false;
    private int O = 0;

    class a extends n {
        final /* synthetic */ m a;

        a(q qVar, m mVar) {
            this.a = mVar;
        }

        @Override // c.p.m.f
        public void e(m mVar) {
            this.a.S();
            mVar.O(this);
        }
    }

    static class b extends n {
        q a;

        b(q qVar) {
            this.a = qVar;
        }

        @Override // c.p.n, c.p.m.f
        public void c(m mVar) {
            q qVar = this.a;
            if (qVar.N) {
                return;
            }
            qVar.Z();
            this.a.N = true;
        }

        @Override // c.p.m.f
        public void e(m mVar) {
            q qVar = this.a;
            int i = qVar.M - 1;
            qVar.M = i;
            if (i == 0) {
                qVar.N = false;
                qVar.o();
            }
            mVar.O(this);
        }
    }

    private void e0(m mVar) {
        this.K.add(mVar);
        mVar.s = this;
    }

    private void n0() {
        b bVar = new b(this);
        Iterator<m> it = this.K.iterator();
        while (it.hasNext()) {
            it.next().a(bVar);
        }
        this.M = this.K.size();
    }

    @Override // c.p.m
    public void M(View view) {
        super.M(view);
        int size = this.K.size();
        for (int i = 0; i < size; i++) {
            this.K.get(i).M(view);
        }
    }

    @Override // c.p.m
    public void Q(View view) {
        super.Q(view);
        int size = this.K.size();
        for (int i = 0; i < size; i++) {
            this.K.get(i).Q(view);
        }
    }

    @Override // c.p.m
    protected void S() {
        if (this.K.isEmpty()) {
            Z();
            o();
            return;
        }
        n0();
        if (this.L) {
            Iterator<m> it = this.K.iterator();
            while (it.hasNext()) {
                it.next().S();
            }
            return;
        }
        for (int i = 1; i < this.K.size(); i++) {
            this.K.get(i - 1).a(new a(this, this.K.get(i)));
        }
        m mVar = this.K.get(0);
        if (mVar != null) {
            mVar.S();
        }
    }

    @Override // c.p.m
    public /* bridge */ /* synthetic */ m T(long j) {
        j0(j);
        return this;
    }

    @Override // c.p.m
    public void U(m.e eVar) {
        super.U(eVar);
        this.O |= 8;
        int size = this.K.size();
        for (int i = 0; i < size; i++) {
            this.K.get(i).U(eVar);
        }
    }

    @Override // c.p.m
    public void W(g gVar) {
        super.W(gVar);
        this.O |= 4;
        if (this.K != null) {
            for (int i = 0; i < this.K.size(); i++) {
                this.K.get(i).W(gVar);
            }
        }
    }

    @Override // c.p.m
    public void X(p pVar) {
        super.X(pVar);
        this.O |= 2;
        int size = this.K.size();
        for (int i = 0; i < size; i++) {
            this.K.get(i).X(pVar);
        }
    }

    @Override // c.p.m
    String a0(String str) {
        String strA0 = super.a0(str);
        for (int i = 0; i < this.K.size(); i++) {
            StringBuilder sb = new StringBuilder();
            sb.append(strA0);
            sb.append("\n");
            sb.append(this.K.get(i).a0(str + "  "));
            strA0 = sb.toString();
        }
        return strA0;
    }

    @Override // c.p.m
    /* JADX INFO: renamed from: b0, reason: merged with bridge method [inline-methods] */
    public q a(m.f fVar) {
        super.a(fVar);
        return this;
    }

    @Override // c.p.m
    /* JADX INFO: renamed from: c0, reason: merged with bridge method [inline-methods] */
    public q b(View view) {
        for (int i = 0; i < this.K.size(); i++) {
            this.K.get(i).b(view);
        }
        super.b(view);
        return this;
    }

    @Override // c.p.m
    protected void cancel() {
        super.cancel();
        int size = this.K.size();
        for (int i = 0; i < size; i++) {
            this.K.get(i).cancel();
        }
    }

    public q d0(m mVar) {
        e0(mVar);
        long j = this.f1304d;
        if (j >= 0) {
            mVar.T(j);
        }
        if ((this.O & 1) != 0) {
            mVar.V(r());
        }
        if ((this.O & 2) != 0) {
            mVar.X(v());
        }
        if ((this.O & 4) != 0) {
            mVar.W(u());
        }
        if ((this.O & 8) != 0) {
            mVar.U(q());
        }
        return this;
    }

    @Override // c.p.m
    public void f(s sVar) {
        if (F(sVar.f1316b)) {
            for (m mVar : this.K) {
                if (mVar.F(sVar.f1316b)) {
                    mVar.f(sVar);
                    sVar.f1317c.add(mVar);
                }
            }
        }
    }

    public m f0(int i) {
        if (i < 0 || i >= this.K.size()) {
            return null;
        }
        return this.K.get(i);
    }

    public int g0() {
        return this.K.size();
    }

    @Override // c.p.m
    void h(s sVar) {
        super.h(sVar);
        int size = this.K.size();
        for (int i = 0; i < size; i++) {
            this.K.get(i).h(sVar);
        }
    }

    @Override // c.p.m
    /* JADX INFO: renamed from: h0, reason: merged with bridge method [inline-methods] */
    public q O(m.f fVar) {
        super.O(fVar);
        return this;
    }

    @Override // c.p.m
    public void i(s sVar) {
        if (F(sVar.f1316b)) {
            for (m mVar : this.K) {
                if (mVar.F(sVar.f1316b)) {
                    mVar.i(sVar);
                    sVar.f1317c.add(mVar);
                }
            }
        }
    }

    @Override // c.p.m
    /* JADX INFO: renamed from: i0, reason: merged with bridge method [inline-methods] */
    public q P(View view) {
        for (int i = 0; i < this.K.size(); i++) {
            this.K.get(i).P(view);
        }
        super.P(view);
        return this;
    }

    public q j0(long j) {
        ArrayList<m> arrayList;
        super.T(j);
        if (this.f1304d >= 0 && (arrayList = this.K) != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.K.get(i).T(j);
            }
        }
        return this;
    }

    @Override // c.p.m
    /* JADX INFO: renamed from: k0, reason: merged with bridge method [inline-methods] */
    public q V(TimeInterpolator timeInterpolator) {
        this.O |= 1;
        ArrayList<m> arrayList = this.K;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.K.get(i).V(timeInterpolator);
            }
        }
        super.V(timeInterpolator);
        return this;
    }

    @Override // c.p.m
    /* JADX INFO: renamed from: l */
    public m clone() {
        q qVar = (q) super.clone();
        qVar.K = new ArrayList<>();
        int size = this.K.size();
        for (int i = 0; i < size; i++) {
            qVar.e0(this.K.get(i).clone());
        }
        return qVar;
    }

    public q l0(int i) {
        if (i == 0) {
            this.L = true;
        } else {
            if (i != 1) {
                throw new AndroidRuntimeException("Invalid parameter for TransitionSet ordering: " + i);
            }
            this.L = false;
        }
        return this;
    }

    @Override // c.p.m
    /* JADX INFO: renamed from: m0, reason: merged with bridge method [inline-methods] */
    public q Y(long j) {
        super.Y(j);
        return this;
    }

    @Override // c.p.m
    protected void n(ViewGroup viewGroup, t tVar, t tVar2, ArrayList<s> arrayList, ArrayList<s> arrayList2) {
        long jX = x();
        int size = this.K.size();
        for (int i = 0; i < size; i++) {
            m mVar = this.K.get(i);
            if (jX > 0 && (this.L || i == 0)) {
                long jX2 = mVar.x();
                if (jX2 > 0) {
                    mVar.Y(jX2 + jX);
                } else {
                    mVar.Y(jX);
                }
            }
            mVar.n(viewGroup, tVar, tVar2, arrayList, arrayList2);
        }
    }
}
