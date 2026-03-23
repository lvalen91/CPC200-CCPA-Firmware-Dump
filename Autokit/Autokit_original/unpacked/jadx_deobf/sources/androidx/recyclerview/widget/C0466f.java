package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: renamed from: androidx.recyclerview.widget.f */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0466f {

    /* JADX INFO: renamed from: b */
    int f3005b;

    /* JADX INFO: renamed from: c */
    int f3006c;

    /* JADX INFO: renamed from: d */
    int f3007d;

    /* JADX INFO: renamed from: e */
    int f3008e;

    /* JADX INFO: renamed from: h */
    boolean f3011h;

    /* JADX INFO: renamed from: i */
    boolean f3012i;

    /* JADX INFO: renamed from: a */
    boolean f3004a = true;

    /* JADX INFO: renamed from: f */
    int f3009f = 0;

    /* JADX INFO: renamed from: g */
    int f3010g = 0;

    C0466f() {
    }

    /* JADX INFO: renamed from: a */
    boolean m3877a(RecyclerView.C0454z c0454z) {
        int i = this.f3006c;
        return i >= 0 && i < c0454z.m3662b();
    }

    /* JADX INFO: renamed from: b */
    View m3878b(RecyclerView.C0449u c0449u) {
        View viewM3623o = c0449u.m3623o(this.f3006c);
        this.f3006c += this.f3007d;
        return viewM3623o;
    }

    public String toString() {
        return "LayoutState{mAvailable=" + this.f3005b + ", mCurrentPosition=" + this.f3006c + ", mItemDirection=" + this.f3007d + ", mLayoutDirection=" + this.f3008e + ", mStartLine=" + this.f3009f + ", mEndLine=" + this.f3010g + '}';
    }
}
