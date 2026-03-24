package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f972b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f973c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f974d;
    int e;
    boolean h;
    boolean i;
    boolean a = true;
    int f = 0;
    int g = 0;

    f() {
    }

    boolean a(RecyclerView.z zVar) {
        int i = this.f973c;
        return i >= 0 && i < zVar.b();
    }

    View b(RecyclerView.u uVar) {
        View viewO = uVar.o(this.f973c);
        this.f973c += this.f974d;
        return viewO;
    }

    public String toString() {
        return "LayoutState{mAvailable=" + this.f972b + ", mCurrentPosition=" + this.f973c + ", mItemDirection=" + this.f974d + ", mLayoutDirection=" + this.e + ", mStartLine=" + this.f + ", mEndLine=" + this.g + '}';
    }
}
