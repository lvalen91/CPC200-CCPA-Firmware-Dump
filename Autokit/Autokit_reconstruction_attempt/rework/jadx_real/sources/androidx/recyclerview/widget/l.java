package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class l {
    static int a(RecyclerView.z zVar, i iVar, View view, View view2, RecyclerView.n nVar, boolean z) {
        if (nVar.J() == 0 || zVar.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(nVar.h0(view) - nVar.h0(view2)) + 1;
        }
        return Math.min(iVar.n(), iVar.d(view2) - iVar.g(view));
    }

    static int b(RecyclerView.z zVar, i iVar, View view, View view2, RecyclerView.n nVar, boolean z, boolean z2) {
        if (nVar.J() == 0 || zVar.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        int iMax = z2 ? Math.max(0, (zVar.b() - Math.max(nVar.h0(view), nVar.h0(view2))) - 1) : Math.max(0, Math.min(nVar.h0(view), nVar.h0(view2)));
        if (z) {
            return Math.round((iMax * (Math.abs(iVar.d(view2) - iVar.g(view)) / (Math.abs(nVar.h0(view) - nVar.h0(view2)) + 1))) + (iVar.m() - iVar.g(view)));
        }
        return iMax;
    }

    static int c(RecyclerView.z zVar, i iVar, View view, View view2, RecyclerView.n nVar, boolean z) {
        if (nVar.J() == 0 || zVar.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return zVar.b();
        }
        return (int) (((iVar.d(view2) - iVar.g(view)) / (Math.abs(nVar.h0(view) - nVar.h0(view2)) + 1)) * zVar.b());
    }
}
