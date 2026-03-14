package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class i {
    protected final RecyclerView.n a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f975b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Rect f976c;

    static class a extends i {
        a(RecyclerView.n nVar) {
            super(nVar, null);
        }

        @Override // androidx.recyclerview.widget.i
        public int d(View view) {
            return this.a.T(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.o) view.getLayoutParams())).rightMargin;
        }

        @Override // androidx.recyclerview.widget.i
        public int e(View view) {
            RecyclerView.o oVar = (RecyclerView.o) view.getLayoutParams();
            return this.a.S(view) + ((ViewGroup.MarginLayoutParams) oVar).leftMargin + ((ViewGroup.MarginLayoutParams) oVar).rightMargin;
        }

        @Override // androidx.recyclerview.widget.i
        public int f(View view) {
            RecyclerView.o oVar = (RecyclerView.o) view.getLayoutParams();
            return this.a.R(view) + ((ViewGroup.MarginLayoutParams) oVar).topMargin + ((ViewGroup.MarginLayoutParams) oVar).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.i
        public int g(View view) {
            return this.a.Q(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.o) view.getLayoutParams())).leftMargin;
        }

        @Override // androidx.recyclerview.widget.i
        public int h() {
            return this.a.o0();
        }

        @Override // androidx.recyclerview.widget.i
        public int i() {
            return this.a.o0() - this.a.f0();
        }

        @Override // androidx.recyclerview.widget.i
        public int j() {
            return this.a.f0();
        }

        @Override // androidx.recyclerview.widget.i
        public int k() {
            return this.a.p0();
        }

        @Override // androidx.recyclerview.widget.i
        public int l() {
            return this.a.X();
        }

        @Override // androidx.recyclerview.widget.i
        public int m() {
            return this.a.e0();
        }

        @Override // androidx.recyclerview.widget.i
        public int n() {
            return (this.a.o0() - this.a.e0()) - this.a.f0();
        }

        @Override // androidx.recyclerview.widget.i
        public int p(View view) {
            this.a.n0(view, true, this.f976c);
            return this.f976c.right;
        }

        @Override // androidx.recyclerview.widget.i
        public int q(View view) {
            this.a.n0(view, true, this.f976c);
            return this.f976c.left;
        }

        @Override // androidx.recyclerview.widget.i
        public void r(int i) {
            this.a.C0(i);
        }
    }

    static class b extends i {
        b(RecyclerView.n nVar) {
            super(nVar, null);
        }

        @Override // androidx.recyclerview.widget.i
        public int d(View view) {
            return this.a.O(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.o) view.getLayoutParams())).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.i
        public int e(View view) {
            RecyclerView.o oVar = (RecyclerView.o) view.getLayoutParams();
            return this.a.R(view) + ((ViewGroup.MarginLayoutParams) oVar).topMargin + ((ViewGroup.MarginLayoutParams) oVar).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.i
        public int f(View view) {
            RecyclerView.o oVar = (RecyclerView.o) view.getLayoutParams();
            return this.a.S(view) + ((ViewGroup.MarginLayoutParams) oVar).leftMargin + ((ViewGroup.MarginLayoutParams) oVar).rightMargin;
        }

        @Override // androidx.recyclerview.widget.i
        public int g(View view) {
            return this.a.U(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.o) view.getLayoutParams())).topMargin;
        }

        @Override // androidx.recyclerview.widget.i
        public int h() {
            return this.a.W();
        }

        @Override // androidx.recyclerview.widget.i
        public int i() {
            return this.a.W() - this.a.d0();
        }

        @Override // androidx.recyclerview.widget.i
        public int j() {
            return this.a.d0();
        }

        @Override // androidx.recyclerview.widget.i
        public int k() {
            return this.a.X();
        }

        @Override // androidx.recyclerview.widget.i
        public int l() {
            return this.a.p0();
        }

        @Override // androidx.recyclerview.widget.i
        public int m() {
            return this.a.g0();
        }

        @Override // androidx.recyclerview.widget.i
        public int n() {
            return (this.a.W() - this.a.g0()) - this.a.d0();
        }

        @Override // androidx.recyclerview.widget.i
        public int p(View view) {
            this.a.n0(view, true, this.f976c);
            return this.f976c.bottom;
        }

        @Override // androidx.recyclerview.widget.i
        public int q(View view) {
            this.a.n0(view, true, this.f976c);
            return this.f976c.top;
        }

        @Override // androidx.recyclerview.widget.i
        public void r(int i) {
            this.a.D0(i);
        }
    }

    /* synthetic */ i(RecyclerView.n nVar, a aVar) {
        this(nVar);
    }

    public static i a(RecyclerView.n nVar) {
        return new a(nVar);
    }

    public static i b(RecyclerView.n nVar, int i) {
        if (i == 0) {
            return a(nVar);
        }
        if (i == 1) {
            return c(nVar);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    public static i c(RecyclerView.n nVar) {
        return new b(nVar);
    }

    public abstract int d(View view);

    public abstract int e(View view);

    public abstract int f(View view);

    public abstract int g(View view);

    public abstract int h();

    public abstract int i();

    public abstract int j();

    public abstract int k();

    public abstract int l();

    public abstract int m();

    public abstract int n();

    public int o() {
        if (Integer.MIN_VALUE == this.f975b) {
            return 0;
        }
        return n() - this.f975b;
    }

    public abstract int p(View view);

    public abstract int q(View view);

    public abstract void r(int i);

    public void s() {
        this.f975b = n();
    }

    private i(RecyclerView.n nVar) {
        this.f975b = Integer.MIN_VALUE;
        this.f976c = new Rect();
        this.a = nVar;
    }
}
