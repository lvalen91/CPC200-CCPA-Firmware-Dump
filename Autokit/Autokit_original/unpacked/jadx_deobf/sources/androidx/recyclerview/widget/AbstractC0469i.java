package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: renamed from: androidx.recyclerview.widget.i */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0469i {

    /* JADX INFO: renamed from: a */
    protected final RecyclerView.AbstractC0442n f3022a;

    /* JADX INFO: renamed from: b */
    private int f3023b;

    /* JADX INFO: renamed from: c */
    final Rect f3024c;

    /* JADX INFO: renamed from: androidx.recyclerview.widget.i$a */
    static class a extends AbstractC0469i {
        a(RecyclerView.AbstractC0442n abstractC0442n) {
            super(abstractC0442n, null);
        }

        @Override // androidx.recyclerview.widget.AbstractC0469i
        /* JADX INFO: renamed from: d */
        public int mo3899d(View view) {
            return this.f3022a.m3504T(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.C0443o) view.getLayoutParams())).rightMargin;
        }

        @Override // androidx.recyclerview.widget.AbstractC0469i
        /* JADX INFO: renamed from: e */
        public int mo3900e(View view) {
            RecyclerView.C0443o c0443o = (RecyclerView.C0443o) view.getLayoutParams();
            return this.f3022a.m3503S(view) + ((ViewGroup.MarginLayoutParams) c0443o).leftMargin + ((ViewGroup.MarginLayoutParams) c0443o).rightMargin;
        }

        @Override // androidx.recyclerview.widget.AbstractC0469i
        /* JADX INFO: renamed from: f */
        public int mo3901f(View view) {
            RecyclerView.C0443o c0443o = (RecyclerView.C0443o) view.getLayoutParams();
            return this.f3022a.m3502R(view) + ((ViewGroup.MarginLayoutParams) c0443o).topMargin + ((ViewGroup.MarginLayoutParams) c0443o).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.AbstractC0469i
        /* JADX INFO: renamed from: g */
        public int mo3902g(View view) {
            return this.f3022a.m3500Q(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.C0443o) view.getLayoutParams())).leftMargin;
        }

        @Override // androidx.recyclerview.widget.AbstractC0469i
        /* JADX INFO: renamed from: h */
        public int mo3903h() {
            return this.f3022a.m3544o0();
        }

        @Override // androidx.recyclerview.widget.AbstractC0469i
        /* JADX INFO: renamed from: i */
        public int mo3904i() {
            return this.f3022a.m3544o0() - this.f3022a.m3525f0();
        }

        @Override // androidx.recyclerview.widget.AbstractC0469i
        /* JADX INFO: renamed from: j */
        public int mo3905j() {
            return this.f3022a.m3525f0();
        }

        @Override // androidx.recyclerview.widget.AbstractC0469i
        /* JADX INFO: renamed from: k */
        public int mo3906k() {
            return this.f3022a.m3546p0();
        }

        @Override // androidx.recyclerview.widget.AbstractC0469i
        /* JADX INFO: renamed from: l */
        public int mo3907l() {
            return this.f3022a.m3509X();
        }

        @Override // androidx.recyclerview.widget.AbstractC0469i
        /* JADX INFO: renamed from: m */
        public int mo3908m() {
            return this.f3022a.m3523e0();
        }

        @Override // androidx.recyclerview.widget.AbstractC0469i
        /* JADX INFO: renamed from: n */
        public int mo3909n() {
            return (this.f3022a.m3544o0() - this.f3022a.m3523e0()) - this.f3022a.m3525f0();
        }

        @Override // androidx.recyclerview.widget.AbstractC0469i
        /* JADX INFO: renamed from: p */
        public int mo3911p(View view) {
            this.f3022a.m3542n0(view, true, this.f3024c);
            return this.f3024c.right;
        }

        @Override // androidx.recyclerview.widget.AbstractC0469i
        /* JADX INFO: renamed from: q */
        public int mo3912q(View view) {
            this.f3022a.m3542n0(view, true, this.f3024c);
            return this.f3024c.left;
        }

        @Override // androidx.recyclerview.widget.AbstractC0469i
        /* JADX INFO: renamed from: r */
        public void mo3913r(int i) {
            this.f3022a.mo3477C0(i);
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.i$b */
    static class b extends AbstractC0469i {
        b(RecyclerView.AbstractC0442n abstractC0442n) {
            super(abstractC0442n, null);
        }

        @Override // androidx.recyclerview.widget.AbstractC0469i
        /* JADX INFO: renamed from: d */
        public int mo3899d(View view) {
            return this.f3022a.m3497O(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.C0443o) view.getLayoutParams())).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.AbstractC0469i
        /* JADX INFO: renamed from: e */
        public int mo3900e(View view) {
            RecyclerView.C0443o c0443o = (RecyclerView.C0443o) view.getLayoutParams();
            return this.f3022a.m3502R(view) + ((ViewGroup.MarginLayoutParams) c0443o).topMargin + ((ViewGroup.MarginLayoutParams) c0443o).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.AbstractC0469i
        /* JADX INFO: renamed from: f */
        public int mo3901f(View view) {
            RecyclerView.C0443o c0443o = (RecyclerView.C0443o) view.getLayoutParams();
            return this.f3022a.m3503S(view) + ((ViewGroup.MarginLayoutParams) c0443o).leftMargin + ((ViewGroup.MarginLayoutParams) c0443o).rightMargin;
        }

        @Override // androidx.recyclerview.widget.AbstractC0469i
        /* JADX INFO: renamed from: g */
        public int mo3902g(View view) {
            return this.f3022a.m3505U(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.C0443o) view.getLayoutParams())).topMargin;
        }

        @Override // androidx.recyclerview.widget.AbstractC0469i
        /* JADX INFO: renamed from: h */
        public int mo3903h() {
            return this.f3022a.m3508W();
        }

        @Override // androidx.recyclerview.widget.AbstractC0469i
        /* JADX INFO: renamed from: i */
        public int mo3904i() {
            return this.f3022a.m3508W() - this.f3022a.m3521d0();
        }

        @Override // androidx.recyclerview.widget.AbstractC0469i
        /* JADX INFO: renamed from: j */
        public int mo3905j() {
            return this.f3022a.m3521d0();
        }

        @Override // androidx.recyclerview.widget.AbstractC0469i
        /* JADX INFO: renamed from: k */
        public int mo3906k() {
            return this.f3022a.m3509X();
        }

        @Override // androidx.recyclerview.widget.AbstractC0469i
        /* JADX INFO: renamed from: l */
        public int mo3907l() {
            return this.f3022a.m3546p0();
        }

        @Override // androidx.recyclerview.widget.AbstractC0469i
        /* JADX INFO: renamed from: m */
        public int mo3908m() {
            return this.f3022a.m3527g0();
        }

        @Override // androidx.recyclerview.widget.AbstractC0469i
        /* JADX INFO: renamed from: n */
        public int mo3909n() {
            return (this.f3022a.m3508W() - this.f3022a.m3527g0()) - this.f3022a.m3521d0();
        }

        @Override // androidx.recyclerview.widget.AbstractC0469i
        /* JADX INFO: renamed from: p */
        public int mo3911p(View view) {
            this.f3022a.m3542n0(view, true, this.f3024c);
            return this.f3024c.bottom;
        }

        @Override // androidx.recyclerview.widget.AbstractC0469i
        /* JADX INFO: renamed from: q */
        public int mo3912q(View view) {
            this.f3022a.m3542n0(view, true, this.f3024c);
            return this.f3024c.top;
        }

        @Override // androidx.recyclerview.widget.AbstractC0469i
        /* JADX INFO: renamed from: r */
        public void mo3913r(int i) {
            this.f3022a.mo3478D0(i);
        }
    }

    /* synthetic */ AbstractC0469i(RecyclerView.AbstractC0442n abstractC0442n, a aVar) {
        this(abstractC0442n);
    }

    /* JADX INFO: renamed from: a */
    public static AbstractC0469i m3896a(RecyclerView.AbstractC0442n abstractC0442n) {
        return new a(abstractC0442n);
    }

    /* JADX INFO: renamed from: b */
    public static AbstractC0469i m3897b(RecyclerView.AbstractC0442n abstractC0442n, int i) {
        if (i == 0) {
            return m3896a(abstractC0442n);
        }
        if (i == 1) {
            return m3898c(abstractC0442n);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    /* JADX INFO: renamed from: c */
    public static AbstractC0469i m3898c(RecyclerView.AbstractC0442n abstractC0442n) {
        return new b(abstractC0442n);
    }

    /* JADX INFO: renamed from: d */
    public abstract int mo3899d(View view);

    /* JADX INFO: renamed from: e */
    public abstract int mo3900e(View view);

    /* JADX INFO: renamed from: f */
    public abstract int mo3901f(View view);

    /* JADX INFO: renamed from: g */
    public abstract int mo3902g(View view);

    /* JADX INFO: renamed from: h */
    public abstract int mo3903h();

    /* JADX INFO: renamed from: i */
    public abstract int mo3904i();

    /* JADX INFO: renamed from: j */
    public abstract int mo3905j();

    /* JADX INFO: renamed from: k */
    public abstract int mo3906k();

    /* JADX INFO: renamed from: l */
    public abstract int mo3907l();

    /* JADX INFO: renamed from: m */
    public abstract int mo3908m();

    /* JADX INFO: renamed from: n */
    public abstract int mo3909n();

    /* JADX INFO: renamed from: o */
    public int m3910o() {
        if (Integer.MIN_VALUE == this.f3023b) {
            return 0;
        }
        return mo3909n() - this.f3023b;
    }

    /* JADX INFO: renamed from: p */
    public abstract int mo3911p(View view);

    /* JADX INFO: renamed from: q */
    public abstract int mo3912q(View view);

    /* JADX INFO: renamed from: r */
    public abstract void mo3913r(int i);

    /* JADX INFO: renamed from: s */
    public void m3914s() {
        this.f3023b = mo3909n();
    }

    private AbstractC0469i(RecyclerView.AbstractC0442n abstractC0442n) {
        this.f3023b = Integer.MIN_VALUE;
        this.f3024c = new Rect();
        this.f3022a = abstractC0442n;
    }
}
