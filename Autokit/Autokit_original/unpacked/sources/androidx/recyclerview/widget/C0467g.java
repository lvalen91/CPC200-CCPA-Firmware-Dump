package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.RecyclerView;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: renamed from: androidx.recyclerview.widget.g */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0467g extends RecyclerView.AbstractC0453y {

    /* JADX INFO: renamed from: k */
    protected PointF f3015k;

    /* JADX INFO: renamed from: l */
    private final DisplayMetrics f3016l;

    /* JADX INFO: renamed from: n */
    private float f3018n;

    /* JADX INFO: renamed from: i */
    protected final LinearInterpolator f3013i = new LinearInterpolator();

    /* JADX INFO: renamed from: j */
    protected final DecelerateInterpolator f3014j = new DecelerateInterpolator();

    /* JADX INFO: renamed from: m */
    private boolean f3017m = false;

    /* JADX INFO: renamed from: o */
    protected int f3019o = 0;

    /* JADX INFO: renamed from: p */
    protected int f3020p = 0;

    public C0467g(Context context) {
        this.f3016l = context.getResources().getDisplayMetrics();
    }

    /* JADX INFO: renamed from: A */
    private float m3879A() {
        if (!this.f3017m) {
            this.f3018n = mo3886v(this.f3016l);
            this.f3017m = true;
        }
        return this.f3018n;
    }

    /* JADX INFO: renamed from: y */
    private int m3880y(int i, int i2) {
        int i3 = i - i2;
        if (i * i3 <= 0) {
            return 0;
        }
        return i3;
    }

    /* JADX INFO: renamed from: B */
    protected int m3881B() {
        PointF pointF = this.f3015k;
        if (pointF != null) {
            float f = pointF.y;
            if (f != CropImageView.DEFAULT_ASPECT_RATIO) {
                return f > CropImageView.DEFAULT_ASPECT_RATIO ? 1 : -1;
            }
        }
        return 0;
    }

    /* JADX INFO: renamed from: C */
    protected void m3882C(RecyclerView.AbstractC0453y.a aVar) {
        PointF pointFM3638a = m3638a(m3643f());
        if (pointFM3638a == null || (pointFM3638a.x == CropImageView.DEFAULT_ASPECT_RATIO && pointFM3638a.y == CropImageView.DEFAULT_ASPECT_RATIO)) {
            aVar.m3658b(m3643f());
            m3655r();
            return;
        }
        m3646i(pointFM3638a);
        this.f3015k = pointFM3638a;
        this.f3019o = (int) (pointFM3638a.x * 10000.0f);
        this.f3020p = (int) (pointFM3638a.y * 10000.0f);
        aVar.m3660d((int) (this.f3019o * 1.2f), (int) (this.f3020p * 1.2f), (int) (mo3888x(10000) * 1.2f), this.f3013i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0453y
    /* JADX INFO: renamed from: l */
    protected void mo3649l(int i, int i2, RecyclerView.C0454z c0454z, RecyclerView.AbstractC0453y.a aVar) {
        if (m3640c() == 0) {
            m3655r();
            return;
        }
        this.f3019o = m3880y(this.f3019o, i);
        int iM3880y = m3880y(this.f3020p, i2);
        this.f3020p = iM3880y;
        if (this.f3019o == 0 && iM3880y == 0) {
            m3882C(aVar);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0453y
    /* JADX INFO: renamed from: m */
    protected void mo3650m() {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0453y
    /* JADX INFO: renamed from: n */
    protected void mo3651n() {
        this.f3020p = 0;
        this.f3019o = 0;
        this.f3015k = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0453y
    /* JADX INFO: renamed from: o */
    protected void mo3652o(View view, RecyclerView.C0454z c0454z, RecyclerView.AbstractC0453y.a aVar) {
        int iM3884t = m3884t(view, m3889z());
        int iM3885u = m3885u(view, m3881B());
        int iM3887w = m3887w((int) Math.sqrt((iM3884t * iM3884t) + (iM3885u * iM3885u)));
        if (iM3887w > 0) {
            aVar.m3660d(-iM3884t, -iM3885u, iM3887w, this.f3014j);
        }
    }

    /* JADX INFO: renamed from: s */
    public int m3883s(int i, int i2, int i3, int i4, int i5) {
        if (i5 == -1) {
            return i3 - i;
        }
        if (i5 != 0) {
            if (i5 == 1) {
                return i4 - i2;
            }
            throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
        }
        int i6 = i3 - i;
        if (i6 > 0) {
            return i6;
        }
        int i7 = i4 - i2;
        if (i7 < 0) {
            return i7;
        }
        return 0;
    }

    /* JADX INFO: renamed from: t */
    public int m3884t(View view, int i) {
        RecyclerView.AbstractC0442n abstractC0442nM3642e = m3642e();
        if (abstractC0442nM3642e == null || !abstractC0442nM3642e.mo3181k()) {
            return 0;
        }
        RecyclerView.C0443o c0443o = (RecyclerView.C0443o) view.getLayoutParams();
        return m3883s(abstractC0442nM3642e.m3500Q(view) - ((ViewGroup.MarginLayoutParams) c0443o).leftMargin, abstractC0442nM3642e.m3504T(view) + ((ViewGroup.MarginLayoutParams) c0443o).rightMargin, abstractC0442nM3642e.m3523e0(), abstractC0442nM3642e.m3544o0() - abstractC0442nM3642e.m3525f0(), i);
    }

    /* JADX INFO: renamed from: u */
    public int m3885u(View view, int i) {
        RecyclerView.AbstractC0442n abstractC0442nM3642e = m3642e();
        if (abstractC0442nM3642e == null || !abstractC0442nM3642e.mo3182l()) {
            return 0;
        }
        RecyclerView.C0443o c0443o = (RecyclerView.C0443o) view.getLayoutParams();
        return m3883s(abstractC0442nM3642e.m3505U(view) - ((ViewGroup.MarginLayoutParams) c0443o).topMargin, abstractC0442nM3642e.m3497O(view) + ((ViewGroup.MarginLayoutParams) c0443o).bottomMargin, abstractC0442nM3642e.m3527g0(), abstractC0442nM3642e.m3508W() - abstractC0442nM3642e.m3521d0(), i);
    }

    /* JADX INFO: renamed from: v */
    protected float mo3886v(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    /* JADX INFO: renamed from: w */
    protected int m3887w(int i) {
        double dMo3888x = mo3888x(i);
        Double.isNaN(dMo3888x);
        return (int) Math.ceil(dMo3888x / 0.3356d);
    }

    /* JADX INFO: renamed from: x */
    protected int mo3888x(int i) {
        return (int) Math.ceil(Math.abs(i) * m3879A());
    }

    /* JADX INFO: renamed from: z */
    protected int m3889z() {
        PointF pointF = this.f3015k;
        if (pointF != null) {
            float f = pointF.x;
            if (f != CropImageView.DEFAULT_ASPECT_RATIO) {
                return f > CropImageView.DEFAULT_ASPECT_RATIO ? 1 : -1;
            }
        }
        return 0;
    }
}
