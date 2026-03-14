package androidx.recyclerview.widget;

import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class n extends RecyclerView.q {
    RecyclerView a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final RecyclerView.s f981b = new a();

    class a extends RecyclerView.s {
        boolean a = false;

        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.s
        public void a(RecyclerView recyclerView, int i) {
            super.a(recyclerView, i);
            if (i == 0 && this.a) {
                this.a = false;
                n.this.k();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.s
        public void b(RecyclerView recyclerView, int i, int i2) {
            if (i == 0 && i2 == 0) {
                return;
            }
            this.a = true;
        }
    }

    private void f() {
        this.a.X0(this.f981b);
        this.a.setOnFlingListener(null);
    }

    private void i() {
        if (this.a.getOnFlingListener() != null) {
            throw new IllegalStateException("An instance of OnFlingListener already set.");
        }
        this.a.k(this.f981b);
        this.a.setOnFlingListener(this);
    }

    private boolean j(RecyclerView.n nVar, int i, int i2) {
        RecyclerView.y yVarD;
        int iH;
        if (!(nVar instanceof RecyclerView.y.b) || (yVarD = d(nVar)) == null || (iH = h(nVar, i, i2)) == -1) {
            return false;
        }
        yVarD.p(iH);
        nVar.J1(yVarD);
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.q
    public boolean a(int i, int i2) {
        RecyclerView.n layoutManager = this.a.getLayoutManager();
        if (layoutManager == null || this.a.getAdapter() == null) {
            return false;
        }
        int minFlingVelocity = this.a.getMinFlingVelocity();
        return (Math.abs(i2) > minFlingVelocity || Math.abs(i) > minFlingVelocity) && j(layoutManager, i, i2);
    }

    public void b(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.a;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            f();
        }
        this.a = recyclerView;
        if (recyclerView != null) {
            i();
            new Scroller(this.a.getContext(), new DecelerateInterpolator());
            k();
        }
    }

    public abstract int[] c(RecyclerView.n nVar, View view);

    protected RecyclerView.y d(RecyclerView.n nVar) {
        return e(nVar);
    }

    @Deprecated
    protected abstract g e(RecyclerView.n nVar);

    public abstract View g(RecyclerView.n nVar);

    public abstract int h(RecyclerView.n nVar, int i, int i2);

    void k() {
        RecyclerView.n layoutManager;
        View viewG;
        RecyclerView recyclerView = this.a;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null || (viewG = g(layoutManager)) == null) {
            return;
        }
        int[] iArrC = c(layoutManager, viewG);
        if (iArrC[0] == 0 && iArrC[1] == 0) {
            return;
        }
        this.a.k1(iArrC[0], iArrC[1]);
    }
}
