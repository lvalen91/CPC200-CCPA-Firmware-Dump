package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: renamed from: androidx.recyclerview.widget.j */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0470j extends AbstractC0474n {

    /* JADX INFO: renamed from: c */
    private AbstractC0469i f3025c;

    /* JADX INFO: renamed from: d */
    private AbstractC0469i f3026d;

    /* JADX INFO: renamed from: androidx.recyclerview.widget.j$a */
    class a extends C0467g {
        a(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.C0467g, androidx.recyclerview.widget.RecyclerView.AbstractC0453y
        /* JADX INFO: renamed from: o */
        protected void mo3652o(View view, RecyclerView.C0454z c0454z, RecyclerView.AbstractC0453y.a aVar) {
            C0470j c0470j = C0470j.this;
            int[] iArrMo3922c = c0470j.mo3922c(c0470j.f3033a.getLayoutManager(), view);
            int i = iArrMo3922c[0];
            int i2 = iArrMo3922c[1];
            int iM3887w = m3887w(Math.max(Math.abs(i), Math.abs(i2)));
            if (iM3887w > 0) {
                aVar.m3660d(i, i2, iM3887w, this.f3014j);
            }
        }

        @Override // androidx.recyclerview.widget.C0467g
        /* JADX INFO: renamed from: v */
        protected float mo3886v(DisplayMetrics displayMetrics) {
            return 100.0f / displayMetrics.densityDpi;
        }

        @Override // androidx.recyclerview.widget.C0467g
        /* JADX INFO: renamed from: x */
        protected int mo3888x(int i) {
            return Math.min(100, super.mo3888x(i));
        }
    }

    /* JADX INFO: renamed from: l */
    private int m3915l(RecyclerView.AbstractC0442n abstractC0442n, View view, AbstractC0469i abstractC0469i) {
        return (abstractC0469i.mo3902g(view) + (abstractC0469i.mo3900e(view) / 2)) - (abstractC0469i.mo3908m() + (abstractC0469i.mo3909n() / 2));
    }

    /* JADX INFO: renamed from: m */
    private View m3916m(RecyclerView.AbstractC0442n abstractC0442n, AbstractC0469i abstractC0469i) {
        int iM3490J = abstractC0442n.m3490J();
        View view = null;
        if (iM3490J == 0) {
            return null;
        }
        int iMo3908m = abstractC0469i.mo3908m() + (abstractC0469i.mo3909n() / 2);
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < iM3490J; i2++) {
            View viewM3489I = abstractC0442n.m3489I(i2);
            int iAbs = Math.abs((abstractC0469i.mo3902g(viewM3489I) + (abstractC0469i.mo3900e(viewM3489I) / 2)) - iMo3908m);
            if (iAbs < i) {
                view = viewM3489I;
                i = iAbs;
            }
        }
        return view;
    }

    /* JADX INFO: renamed from: n */
    private AbstractC0469i m3917n(RecyclerView.AbstractC0442n abstractC0442n) {
        AbstractC0469i abstractC0469i = this.f3026d;
        if (abstractC0469i == null || abstractC0469i.f3022a != abstractC0442n) {
            this.f3026d = AbstractC0469i.m3896a(abstractC0442n);
        }
        return this.f3026d;
    }

    /* JADX INFO: renamed from: o */
    private AbstractC0469i m3918o(RecyclerView.AbstractC0442n abstractC0442n) {
        if (abstractC0442n.mo3182l()) {
            return m3919p(abstractC0442n);
        }
        if (abstractC0442n.mo3181k()) {
            return m3917n(abstractC0442n);
        }
        return null;
    }

    /* JADX INFO: renamed from: p */
    private AbstractC0469i m3919p(RecyclerView.AbstractC0442n abstractC0442n) {
        AbstractC0469i abstractC0469i = this.f3025c;
        if (abstractC0469i == null || abstractC0469i.f3022a != abstractC0442n) {
            this.f3025c = AbstractC0469i.m3898c(abstractC0442n);
        }
        return this.f3025c;
    }

    /* JADX INFO: renamed from: q */
    private boolean m3920q(RecyclerView.AbstractC0442n abstractC0442n, int i, int i2) {
        return abstractC0442n.mo3181k() ? i > 0 : i2 > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: r */
    private boolean m3921r(RecyclerView.AbstractC0442n abstractC0442n) {
        PointF pointFMo3174a;
        int iM3510Y = abstractC0442n.m3510Y();
        if (!(abstractC0442n instanceof RecyclerView.AbstractC0453y.b) || (pointFMo3174a = ((RecyclerView.AbstractC0453y.b) abstractC0442n).mo3174a(iM3510Y - 1)) == null) {
            return false;
        }
        return pointFMo3174a.x < CropImageView.DEFAULT_ASPECT_RATIO || pointFMo3174a.y < CropImageView.DEFAULT_ASPECT_RATIO;
    }

    @Override // androidx.recyclerview.widget.AbstractC0474n
    /* JADX INFO: renamed from: c */
    public int[] mo3922c(RecyclerView.AbstractC0442n abstractC0442n, View view) {
        int[] iArr = new int[2];
        if (abstractC0442n.mo3181k()) {
            iArr[0] = m3915l(abstractC0442n, view, m3917n(abstractC0442n));
        } else {
            iArr[0] = 0;
        }
        if (abstractC0442n.mo3182l()) {
            iArr[1] = m3915l(abstractC0442n, view, m3919p(abstractC0442n));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    @Override // androidx.recyclerview.widget.AbstractC0474n
    /* JADX INFO: renamed from: e */
    protected C0467g mo3923e(RecyclerView.AbstractC0442n abstractC0442n) {
        if (abstractC0442n instanceof RecyclerView.AbstractC0453y.b) {
            return new a(this.f3033a.getContext());
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.AbstractC0474n
    /* JADX INFO: renamed from: g */
    public View mo3924g(RecyclerView.AbstractC0442n abstractC0442n) {
        if (abstractC0442n.mo3182l()) {
            return m3916m(abstractC0442n, m3919p(abstractC0442n));
        }
        if (abstractC0442n.mo3181k()) {
            return m3916m(abstractC0442n, m3917n(abstractC0442n));
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.AbstractC0474n
    /* JADX INFO: renamed from: h */
    public int mo3925h(RecyclerView.AbstractC0442n abstractC0442n, int i, int i2) {
        AbstractC0469i abstractC0469iM3918o;
        int iM3510Y = abstractC0442n.m3510Y();
        if (iM3510Y == 0 || (abstractC0469iM3918o = m3918o(abstractC0442n)) == null) {
            return -1;
        }
        int i3 = Integer.MIN_VALUE;
        int i4 = Integer.MAX_VALUE;
        int iM3490J = abstractC0442n.m3490J();
        View view = null;
        View view2 = null;
        for (int i5 = 0; i5 < iM3490J; i5++) {
            View viewM3489I = abstractC0442n.m3489I(i5);
            if (viewM3489I != null) {
                int iM3915l = m3915l(abstractC0442n, viewM3489I, abstractC0469iM3918o);
                if (iM3915l <= 0 && iM3915l > i3) {
                    view2 = viewM3489I;
                    i3 = iM3915l;
                }
                if (iM3915l >= 0 && iM3915l < i4) {
                    view = viewM3489I;
                    i4 = iM3915l;
                }
            }
        }
        boolean zM3920q = m3920q(abstractC0442n, i, i2);
        if (zM3920q && view != null) {
            return abstractC0442n.m3530h0(view);
        }
        if (!zM3920q && view2 != null) {
            return abstractC0442n.m3530h0(view2);
        }
        if (zM3920q) {
            view = view2;
        }
        if (view == null) {
            return -1;
        }
        int iM3530h0 = abstractC0442n.m3530h0(view) + (m3921r(abstractC0442n) == zM3920q ? -1 : 1);
        if (iM3530h0 < 0 || iM3530h0 >= iM3510Y) {
            return -1;
        }
        return iM3530h0;
    }
}
