package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: renamed from: androidx.recyclerview.widget.m */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0473m extends RecyclerView.AbstractC0439k {

    /* JADX INFO: renamed from: g */
    boolean f3032g = true;

    /* JADX INFO: renamed from: A */
    public final void m3933A(RecyclerView.AbstractC0431c0 abstractC0431c0) {
        m3941I(abstractC0431c0);
        m3437h(abstractC0431c0);
    }

    /* JADX INFO: renamed from: B */
    public final void m3934B(RecyclerView.AbstractC0431c0 abstractC0431c0) {
        m3942J(abstractC0431c0);
    }

    /* JADX INFO: renamed from: C */
    public final void m3935C(RecyclerView.AbstractC0431c0 abstractC0431c0, boolean z) {
        m3943K(abstractC0431c0, z);
        m3437h(abstractC0431c0);
    }

    /* JADX INFO: renamed from: D */
    public final void m3936D(RecyclerView.AbstractC0431c0 abstractC0431c0, boolean z) {
        m3944L(abstractC0431c0, z);
    }

    /* JADX INFO: renamed from: E */
    public final void m3937E(RecyclerView.AbstractC0431c0 abstractC0431c0) {
        m3945M(abstractC0431c0);
        m3437h(abstractC0431c0);
    }

    /* JADX INFO: renamed from: F */
    public final void m3938F(RecyclerView.AbstractC0431c0 abstractC0431c0) {
        m3946N(abstractC0431c0);
    }

    /* JADX INFO: renamed from: G */
    public final void m3939G(RecyclerView.AbstractC0431c0 abstractC0431c0) {
        m3947O(abstractC0431c0);
        m3437h(abstractC0431c0);
    }

    /* JADX INFO: renamed from: H */
    public final void m3940H(RecyclerView.AbstractC0431c0 abstractC0431c0) {
        m3948P(abstractC0431c0);
    }

    /* JADX INFO: renamed from: I */
    public void m3941I(RecyclerView.AbstractC0431c0 abstractC0431c0) {
    }

    /* JADX INFO: renamed from: J */
    public void m3942J(RecyclerView.AbstractC0431c0 abstractC0431c0) {
    }

    /* JADX INFO: renamed from: K */
    public void m3943K(RecyclerView.AbstractC0431c0 abstractC0431c0, boolean z) {
    }

    /* JADX INFO: renamed from: L */
    public void m3944L(RecyclerView.AbstractC0431c0 abstractC0431c0, boolean z) {
    }

    /* JADX INFO: renamed from: M */
    public void m3945M(RecyclerView.AbstractC0431c0 abstractC0431c0) {
    }

    /* JADX INFO: renamed from: N */
    public void m3946N(RecyclerView.AbstractC0431c0 abstractC0431c0) {
    }

    /* JADX INFO: renamed from: O */
    public void m3947O(RecyclerView.AbstractC0431c0 abstractC0431c0) {
    }

    /* JADX INFO: renamed from: P */
    public void m3948P(RecyclerView.AbstractC0431c0 abstractC0431c0) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0439k
    /* JADX INFO: renamed from: a */
    public boolean mo3431a(RecyclerView.AbstractC0431c0 abstractC0431c0, RecyclerView.AbstractC0439k.c cVar, RecyclerView.AbstractC0439k.c cVar2) {
        return (cVar == null || (cVar.f2749a == cVar2.f2749a && cVar.f2750b == cVar2.f2750b)) ? mo3837w(abstractC0431c0) : mo3839y(abstractC0431c0, cVar.f2749a, cVar.f2750b, cVar2.f2749a, cVar2.f2750b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0439k
    /* JADX INFO: renamed from: b */
    public boolean mo3432b(RecyclerView.AbstractC0431c0 abstractC0431c0, RecyclerView.AbstractC0431c0 abstractC0431c02, RecyclerView.AbstractC0439k.c cVar, RecyclerView.AbstractC0439k.c cVar2) {
        int i;
        int i2;
        int i3 = cVar.f2749a;
        int i4 = cVar.f2750b;
        if (abstractC0431c02.m3357J()) {
            int i5 = cVar.f2749a;
            i2 = cVar.f2750b;
            i = i5;
        } else {
            i = cVar2.f2749a;
            i2 = cVar2.f2750b;
        }
        return mo3838x(abstractC0431c0, abstractC0431c02, i3, i4, i, i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0439k
    /* JADX INFO: renamed from: c */
    public boolean mo3433c(RecyclerView.AbstractC0431c0 abstractC0431c0, RecyclerView.AbstractC0439k.c cVar, RecyclerView.AbstractC0439k.c cVar2) {
        int i = cVar.f2749a;
        int i2 = cVar.f2750b;
        View view = abstractC0431c0.f2721a;
        int left = cVar2 == null ? view.getLeft() : cVar2.f2749a;
        int top = cVar2 == null ? view.getTop() : cVar2.f2750b;
        if (abstractC0431c0.m3380v() || (i == left && i2 == top)) {
            return mo3840z(abstractC0431c0);
        }
        view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
        return mo3839y(abstractC0431c0, i, i2, left, top);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0439k
    /* JADX INFO: renamed from: d */
    public boolean mo3434d(RecyclerView.AbstractC0431c0 abstractC0431c0, RecyclerView.AbstractC0439k.c cVar, RecyclerView.AbstractC0439k.c cVar2) {
        if (cVar.f2749a != cVar2.f2749a || cVar.f2750b != cVar2.f2750b) {
            return mo3839y(abstractC0431c0, cVar.f2749a, cVar.f2750b, cVar2.f2749a, cVar2.f2750b);
        }
        m3937E(abstractC0431c0);
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0439k
    /* JADX INFO: renamed from: f */
    public boolean mo3435f(RecyclerView.AbstractC0431c0 abstractC0431c0) {
        return !this.f3032g || abstractC0431c0.m3378t();
    }

    /* JADX INFO: renamed from: w */
    public abstract boolean mo3837w(RecyclerView.AbstractC0431c0 abstractC0431c0);

    /* JADX INFO: renamed from: x */
    public abstract boolean mo3838x(RecyclerView.AbstractC0431c0 abstractC0431c0, RecyclerView.AbstractC0431c0 abstractC0431c02, int i, int i2, int i3, int i4);

    /* JADX INFO: renamed from: y */
    public abstract boolean mo3839y(RecyclerView.AbstractC0431c0 abstractC0431c0, int i, int i2, int i3, int i4);

    /* JADX INFO: renamed from: z */
    public abstract boolean mo3840z(RecyclerView.AbstractC0431c0 abstractC0431c0);
}
