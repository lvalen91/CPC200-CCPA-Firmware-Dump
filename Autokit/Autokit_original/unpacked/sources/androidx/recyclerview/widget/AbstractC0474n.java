package androidx.recyclerview.widget;

import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: renamed from: androidx.recyclerview.widget.n */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0474n extends RecyclerView.AbstractC0445q {

    /* JADX INFO: renamed from: a */
    RecyclerView f3033a;

    /* JADX INFO: renamed from: b */
    private final RecyclerView.AbstractC0447s f3034b = new a();

    /* JADX INFO: renamed from: androidx.recyclerview.widget.n$a */
    class a extends RecyclerView.AbstractC0447s {

        /* JADX INFO: renamed from: a */
        boolean f3035a = false;

        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0447s
        /* JADX INFO: renamed from: a */
        public void mo3580a(RecyclerView recyclerView, int i) {
            super.mo3580a(recyclerView, i);
            if (i == 0 && this.f3035a) {
                this.f3035a = false;
                AbstractC0474n.this.m3954k();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0447s
        /* JADX INFO: renamed from: b */
        public void mo3581b(RecyclerView recyclerView, int i, int i2) {
            if (i == 0 && i2 == 0) {
                return;
            }
            this.f3035a = true;
        }
    }

    /* JADX INFO: renamed from: f */
    private void m3949f() {
        this.f3033a.m3282X0(this.f3034b);
        this.f3033a.setOnFlingListener(null);
    }

    /* JADX INFO: renamed from: i */
    private void m3950i() {
        if (this.f3033a.getOnFlingListener() != null) {
            throw new IllegalStateException("An instance of OnFlingListener already set.");
        }
        this.f3033a.m3302k(this.f3034b);
        this.f3033a.setOnFlingListener(this);
    }

    /* JADX INFO: renamed from: j */
    private boolean m3951j(RecyclerView.AbstractC0442n abstractC0442n, int i, int i2) {
        RecyclerView.AbstractC0453y abstractC0453yM3953d;
        int iMo3925h;
        if (!(abstractC0442n instanceof RecyclerView.AbstractC0453y.b) || (abstractC0453yM3953d = m3953d(abstractC0442n)) == null || (iMo3925h = mo3925h(abstractC0442n, i, i2)) == -1) {
            return false;
        }
        abstractC0453yM3953d.m3653p(iMo3925h);
        abstractC0442n.m3491J1(abstractC0453yM3953d);
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0445q
    /* JADX INFO: renamed from: a */
    public boolean mo3576a(int i, int i2) {
        RecyclerView.AbstractC0442n layoutManager = this.f3033a.getLayoutManager();
        if (layoutManager == null || this.f3033a.getAdapter() == null) {
            return false;
        }
        int minFlingVelocity = this.f3033a.getMinFlingVelocity();
        return (Math.abs(i2) > minFlingVelocity || Math.abs(i) > minFlingVelocity) && m3951j(layoutManager, i, i2);
    }

    /* JADX INFO: renamed from: b */
    public void m3952b(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.f3033a;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            m3949f();
        }
        this.f3033a = recyclerView;
        if (recyclerView != null) {
            m3950i();
            new Scroller(this.f3033a.getContext(), new DecelerateInterpolator());
            m3954k();
        }
    }

    /* JADX INFO: renamed from: c */
    public abstract int[] mo3922c(RecyclerView.AbstractC0442n abstractC0442n, View view);

    /* JADX INFO: renamed from: d */
    protected RecyclerView.AbstractC0453y m3953d(RecyclerView.AbstractC0442n abstractC0442n) {
        return mo3923e(abstractC0442n);
    }

    @Deprecated
    /* JADX INFO: renamed from: e */
    protected abstract C0467g mo3923e(RecyclerView.AbstractC0442n abstractC0442n);

    /* JADX INFO: renamed from: g */
    public abstract View mo3924g(RecyclerView.AbstractC0442n abstractC0442n);

    /* JADX INFO: renamed from: h */
    public abstract int mo3925h(RecyclerView.AbstractC0442n abstractC0442n, int i, int i2);

    /* JADX INFO: renamed from: k */
    void m3954k() {
        RecyclerView.AbstractC0442n layoutManager;
        View viewMo3924g;
        RecyclerView recyclerView = this.f3033a;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null || (viewMo3924g = mo3924g(layoutManager)) == null) {
            return;
        }
        int[] iArrMo3922c = mo3922c(layoutManager, viewMo3924g);
        if (iArrMo3922c[0] == 0 && iArrMo3922c[1] == 0) {
            return;
        }
        this.f3033a.m3303k1(iArrMo3922c[0], iArrMo3922c[1]);
    }
}
