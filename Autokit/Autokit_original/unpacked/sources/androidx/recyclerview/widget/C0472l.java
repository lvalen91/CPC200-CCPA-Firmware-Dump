package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: renamed from: androidx.recyclerview.widget.l */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0472l {
    /* JADX INFO: renamed from: a */
    static int m3930a(RecyclerView.C0454z c0454z, AbstractC0469i abstractC0469i, View view, View view2, RecyclerView.AbstractC0442n abstractC0442n, boolean z) {
        if (abstractC0442n.m3490J() == 0 || c0454z.m3662b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(abstractC0442n.m3530h0(view) - abstractC0442n.m3530h0(view2)) + 1;
        }
        return Math.min(abstractC0469i.mo3909n(), abstractC0469i.mo3899d(view2) - abstractC0469i.mo3902g(view));
    }

    /* JADX INFO: renamed from: b */
    static int m3931b(RecyclerView.C0454z c0454z, AbstractC0469i abstractC0469i, View view, View view2, RecyclerView.AbstractC0442n abstractC0442n, boolean z, boolean z2) {
        if (abstractC0442n.m3490J() == 0 || c0454z.m3662b() == 0 || view == null || view2 == null) {
            return 0;
        }
        int iMax = z2 ? Math.max(0, (c0454z.m3662b() - Math.max(abstractC0442n.m3530h0(view), abstractC0442n.m3530h0(view2))) - 1) : Math.max(0, Math.min(abstractC0442n.m3530h0(view), abstractC0442n.m3530h0(view2)));
        if (z) {
            return Math.round((iMax * (Math.abs(abstractC0469i.mo3899d(view2) - abstractC0469i.mo3902g(view)) / (Math.abs(abstractC0442n.m3530h0(view) - abstractC0442n.m3530h0(view2)) + 1))) + (abstractC0469i.mo3908m() - abstractC0469i.mo3902g(view)));
        }
        return iMax;
    }

    /* JADX INFO: renamed from: c */
    static int m3932c(RecyclerView.C0454z c0454z, AbstractC0469i abstractC0469i, View view, View view2, RecyclerView.AbstractC0442n abstractC0442n, boolean z) {
        if (abstractC0442n.m3490J() == 0 || c0454z.m3662b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return c0454z.m3662b();
        }
        return (int) (((abstractC0469i.mo3899d(view2) - abstractC0469i.mo3902g(view)) / (Math.abs(abstractC0442n.m3530h0(view) - abstractC0442n.m3530h0(view2)) + 1)) * c0454z.m3662b());
    }
}
