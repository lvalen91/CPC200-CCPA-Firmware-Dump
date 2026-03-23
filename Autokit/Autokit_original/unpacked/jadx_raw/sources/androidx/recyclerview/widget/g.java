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

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class g extends RecyclerView.y {
    protected PointF k;
    private final DisplayMetrics l;
    private float n;
    protected final LinearInterpolator i = new LinearInterpolator();
    protected final DecelerateInterpolator j = new DecelerateInterpolator();
    private boolean m = false;
    protected int o = 0;
    protected int p = 0;

    public g(Context context) {
        this.l = context.getResources().getDisplayMetrics();
    }

    private float A() {
        if (!this.m) {
            this.n = v(this.l);
            this.m = true;
        }
        return this.n;
    }

    private int y(int i, int i2) {
        int i3 = i - i2;
        if (i * i3 <= 0) {
            return 0;
        }
        return i3;
    }

    protected int B() {
        PointF pointF = this.k;
        if (pointF != null) {
            float f = pointF.y;
            if (f != CropImageView.DEFAULT_ASPECT_RATIO) {
                return f > CropImageView.DEFAULT_ASPECT_RATIO ? 1 : -1;
            }
        }
        return 0;
    }

    protected void C(RecyclerView.y.a aVar) {
        PointF pointFA = a(f());
        if (pointFA == null || (pointFA.x == CropImageView.DEFAULT_ASPECT_RATIO && pointFA.y == CropImageView.DEFAULT_ASPECT_RATIO)) {
            aVar.b(f());
            r();
            return;
        }
        i(pointFA);
        this.k = pointFA;
        this.o = (int) (pointFA.x * 10000.0f);
        this.p = (int) (pointFA.y * 10000.0f);
        aVar.d((int) (this.o * 1.2f), (int) (this.p * 1.2f), (int) (x(10000) * 1.2f), this.i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.y
    protected void l(int i, int i2, RecyclerView.z zVar, RecyclerView.y.a aVar) {
        if (c() == 0) {
            r();
            return;
        }
        this.o = y(this.o, i);
        int iY = y(this.p, i2);
        this.p = iY;
        if (this.o == 0 && iY == 0) {
            C(aVar);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.y
    protected void m() {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.y
    protected void n() {
        this.p = 0;
        this.o = 0;
        this.k = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.y
    protected void o(View view, RecyclerView.z zVar, RecyclerView.y.a aVar) {
        int iT = t(view, z());
        int iU = u(view, B());
        int iW = w((int) Math.sqrt((iT * iT) + (iU * iU)));
        if (iW > 0) {
            aVar.d(-iT, -iU, iW, this.j);
        }
    }

    public int s(int i, int i2, int i3, int i4, int i5) {
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

    public int t(View view, int i) {
        RecyclerView.n nVarE = e();
        if (nVarE == null || !nVarE.k()) {
            return 0;
        }
        RecyclerView.o oVar = (RecyclerView.o) view.getLayoutParams();
        return s(nVarE.Q(view) - ((ViewGroup.MarginLayoutParams) oVar).leftMargin, nVarE.T(view) + ((ViewGroup.MarginLayoutParams) oVar).rightMargin, nVarE.e0(), nVarE.o0() - nVarE.f0(), i);
    }

    public int u(View view, int i) {
        RecyclerView.n nVarE = e();
        if (nVarE == null || !nVarE.l()) {
            return 0;
        }
        RecyclerView.o oVar = (RecyclerView.o) view.getLayoutParams();
        return s(nVarE.U(view) - ((ViewGroup.MarginLayoutParams) oVar).topMargin, nVarE.O(view) + ((ViewGroup.MarginLayoutParams) oVar).bottomMargin, nVarE.g0(), nVarE.W() - nVarE.d0(), i);
    }

    protected float v(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    protected int w(int i) {
        double dX = x(i);
        Double.isNaN(dX);
        return (int) Math.ceil(dX / 0.3356d);
    }

    protected int x(int i) {
        return (int) Math.ceil(Math.abs(i) * A());
    }

    protected int z() {
        PointF pointF = this.k;
        if (pointF != null) {
            float f = pointF.x;
            if (f != CropImageView.DEFAULT_ASPECT_RATIO) {
                return f > CropImageView.DEFAULT_ASPECT_RATIO ? 1 : -1;
            }
        }
        return 0;
    }
}
