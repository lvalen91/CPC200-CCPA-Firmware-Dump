package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class j extends n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private i f977c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private i f978d;

    class a extends g {
        a(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.g, androidx.recyclerview.widget.RecyclerView.y
        protected void o(View view, RecyclerView.z zVar, RecyclerView.y.a aVar) {
            j jVar = j.this;
            int[] iArrC = jVar.c(jVar.a.getLayoutManager(), view);
            int i = iArrC[0];
            int i2 = iArrC[1];
            int iW = w(Math.max(Math.abs(i), Math.abs(i2)));
            if (iW > 0) {
                aVar.d(i, i2, iW, this.j);
            }
        }

        @Override // androidx.recyclerview.widget.g
        protected float v(DisplayMetrics displayMetrics) {
            return 100.0f / displayMetrics.densityDpi;
        }

        @Override // androidx.recyclerview.widget.g
        protected int x(int i) {
            return Math.min(100, super.x(i));
        }
    }

    private int l(RecyclerView.n nVar, View view, i iVar) {
        return (iVar.g(view) + (iVar.e(view) / 2)) - (iVar.m() + (iVar.n() / 2));
    }

    private View m(RecyclerView.n nVar, i iVar) {
        int iJ = nVar.J();
        View view = null;
        if (iJ == 0) {
            return null;
        }
        int iM = iVar.m() + (iVar.n() / 2);
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < iJ; i2++) {
            View viewI = nVar.I(i2);
            int iAbs = Math.abs((iVar.g(viewI) + (iVar.e(viewI) / 2)) - iM);
            if (iAbs < i) {
                view = viewI;
                i = iAbs;
            }
        }
        return view;
    }

    private i n(RecyclerView.n nVar) {
        i iVar = this.f978d;
        if (iVar == null || iVar.a != nVar) {
            this.f978d = i.a(nVar);
        }
        return this.f978d;
    }

    private i o(RecyclerView.n nVar) {
        if (nVar.l()) {
            return p(nVar);
        }
        if (nVar.k()) {
            return n(nVar);
        }
        return null;
    }

    private i p(RecyclerView.n nVar) {
        i iVar = this.f977c;
        if (iVar == null || iVar.a != nVar) {
            this.f977c = i.c(nVar);
        }
        return this.f977c;
    }

    private boolean q(RecyclerView.n nVar, int i, int i2) {
        return nVar.k() ? i > 0 : i2 > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean r(RecyclerView.n nVar) {
        PointF pointFA;
        int iY = nVar.Y();
        if (!(nVar instanceof RecyclerView.y.b) || (pointFA = ((RecyclerView.y.b) nVar).a(iY - 1)) == null) {
            return false;
        }
        return pointFA.x < CropImageView.DEFAULT_ASPECT_RATIO || pointFA.y < CropImageView.DEFAULT_ASPECT_RATIO;
    }

    @Override // androidx.recyclerview.widget.n
    public int[] c(RecyclerView.n nVar, View view) {
        int[] iArr = new int[2];
        if (nVar.k()) {
            iArr[0] = l(nVar, view, n(nVar));
        } else {
            iArr[0] = 0;
        }
        if (nVar.l()) {
            iArr[1] = l(nVar, view, p(nVar));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    @Override // androidx.recyclerview.widget.n
    protected g e(RecyclerView.n nVar) {
        if (nVar instanceof RecyclerView.y.b) {
            return new a(this.a.getContext());
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.n
    public View g(RecyclerView.n nVar) {
        if (nVar.l()) {
            return m(nVar, p(nVar));
        }
        if (nVar.k()) {
            return m(nVar, n(nVar));
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.n
    public int h(RecyclerView.n nVar, int i, int i2) {
        i iVarO;
        int iY = nVar.Y();
        if (iY == 0 || (iVarO = o(nVar)) == null) {
            return -1;
        }
        int i3 = Integer.MIN_VALUE;
        int i4 = Integer.MAX_VALUE;
        int iJ = nVar.J();
        View view = null;
        View view2 = null;
        for (int i5 = 0; i5 < iJ; i5++) {
            View viewI = nVar.I(i5);
            if (viewI != null) {
                int iL = l(nVar, viewI, iVarO);
                if (iL <= 0 && iL > i3) {
                    view2 = viewI;
                    i3 = iL;
                }
                if (iL >= 0 && iL < i4) {
                    view = viewI;
                    i4 = iL;
                }
            }
        }
        boolean zQ = q(nVar, i, i2);
        if (zQ && view != null) {
            return nVar.h0(view);
        }
        if (!zQ && view2 != null) {
            return nVar.h0(view2);
        }
        if (zQ) {
            view = view2;
        }
        if (view == null) {
            return -1;
        }
        int iH0 = nVar.h0(view) + (r(nVar) == zQ ? -1 : 1);
        if (iH0 < 0 || iH0 >= iY) {
            return -1;
        }
        return iH0;
    }
}
