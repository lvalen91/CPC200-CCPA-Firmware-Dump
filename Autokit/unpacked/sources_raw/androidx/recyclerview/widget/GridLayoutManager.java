package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.e0.c;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.yalantis.ucrop.view.CropImageView;
import java.util.Arrays;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class GridLayoutManager extends LinearLayoutManager {
    boolean I;
    int J;
    int[] K;
    View[] L;
    final SparseIntArray M;
    final SparseIntArray N;
    c O;
    final Rect P;
    private boolean Q;

    public static final class a extends c {
        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int e(int i, int i2) {
            return i % i2;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int f(int i) {
            return 1;
        }
    }

    public static abstract class c {
        final SparseIntArray a = new SparseIntArray();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final SparseIntArray f852b = new SparseIntArray();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f853c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f854d = false;

        static int a(SparseIntArray sparseIntArray, int i) {
            int size = sparseIntArray.size() - 1;
            int i2 = 0;
            while (i2 <= size) {
                int i3 = (i2 + size) >>> 1;
                if (sparseIntArray.keyAt(i3) < i) {
                    i2 = i3 + 1;
                } else {
                    size = i3 - 1;
                }
            }
            int i4 = i2 - 1;
            if (i4 < 0 || i4 >= sparseIntArray.size()) {
                return -1;
            }
            return sparseIntArray.keyAt(i4);
        }

        int b(int i, int i2) {
            if (!this.f854d) {
                return d(i, i2);
            }
            int i3 = this.f852b.get(i, -1);
            if (i3 != -1) {
                return i3;
            }
            int iD = d(i, i2);
            this.f852b.put(i, iD);
            return iD;
        }

        int c(int i, int i2) {
            if (!this.f853c) {
                return e(i, i2);
            }
            int i3 = this.a.get(i, -1);
            if (i3 != -1) {
                return i3;
            }
            int iE = e(i, i2);
            this.a.put(i, iE);
            return iE;
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x002d  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0043  */
        /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public int d(int i, int i2) {
            int i3;
            int iC;
            int iA;
            if (this.f854d && (iA = a(this.f852b, i)) != -1) {
                int i4 = this.f852b.get(iA);
                i3 = iA + 1;
                iC = c(iA, i2) + f(iA);
                i4 = iC == i2 ? i4 + 1 : 0;
                int iF = f(i);
                while (i3 < i) {
                    int iF2 = f(i3);
                    iC += iF2;
                    if (iC == i2) {
                        i4++;
                        iC = 0;
                    } else if (iC > i2) {
                        i4++;
                        iC = iF2;
                    }
                    i3++;
                }
                return iC + iF <= i2 ? i4 + 1 : i4;
            }
            i3 = 0;
            iC = 0;
            int iF3 = f(i);
            while (i3 < i) {
            }
            if (iC + iF3 <= i2) {
            }
        }

        public abstract int e(int i, int i2);

        public abstract int f(int i);

        public void g() {
            this.f852b.clear();
        }

        public void h() {
            this.a.clear();
        }
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.I = false;
        this.J = -1;
        this.M = new SparseIntArray();
        this.N = new SparseIntArray();
        this.O = new a();
        this.P = new Rect();
        e3(RecyclerView.n.i0(context, attributeSet, i, i2).f885b);
    }

    private void N2(RecyclerView.u uVar, RecyclerView.z zVar, int i, boolean z) {
        int i2;
        int i3;
        int i4 = 0;
        int i5 = -1;
        if (z) {
            i5 = i;
            i2 = 0;
            i3 = 1;
        } else {
            i2 = i - 1;
            i3 = -1;
        }
        while (i2 != i5) {
            View view = this.L[i2];
            b bVar = (b) view.getLayoutParams();
            int iA3 = a3(uVar, zVar, h0(view));
            bVar.f = iA3;
            bVar.e = i4;
            i4 += iA3;
            i2 += i3;
        }
    }

    private void O2() {
        int iJ = J();
        for (int i = 0; i < iJ; i++) {
            b bVar = (b) I(i).getLayoutParams();
            int iA = bVar.a();
            this.M.put(iA, bVar.f());
            this.N.put(iA, bVar.e());
        }
    }

    private void P2(int i) {
        this.K = Q2(this.K, this.J, i);
    }

    static int[] Q2(int[] iArr, int i, int i2) {
        int i3;
        if (iArr == null || iArr.length != i + 1 || iArr[iArr.length - 1] != i2) {
            iArr = new int[i + 1];
        }
        int i4 = 0;
        iArr[0] = 0;
        int i5 = i2 / i;
        int i6 = i2 % i;
        int i7 = 0;
        for (int i8 = 1; i8 <= i; i8++) {
            i4 += i6;
            if (i4 <= 0 || i - i4 >= i6) {
                i3 = i5;
            } else {
                i3 = i5 + 1;
                i4 -= i;
            }
            i7 += i3;
            iArr[i8] = i7;
        }
        return iArr;
    }

    private void R2() {
        this.M.clear();
        this.N.clear();
    }

    private int S2(RecyclerView.z zVar) {
        if (J() != 0 && zVar.b() != 0) {
            T1();
            boolean zR2 = r2();
            View viewY1 = Y1(!zR2, true);
            View viewX1 = X1(!zR2, true);
            if (viewY1 != null && viewX1 != null) {
                int iB = this.O.b(h0(viewY1), this.J);
                int iB2 = this.O.b(h0(viewX1), this.J);
                int iMax = this.x ? Math.max(0, ((this.O.b(zVar.b() - 1, this.J) + 1) - Math.max(iB, iB2)) - 1) : Math.max(0, Math.min(iB, iB2));
                if (zR2) {
                    return Math.round((iMax * (Math.abs(this.u.d(viewX1) - this.u.g(viewY1)) / ((this.O.b(h0(viewX1), this.J) - this.O.b(h0(viewY1), this.J)) + 1))) + (this.u.m() - this.u.g(viewY1)));
                }
                return iMax;
            }
        }
        return 0;
    }

    private int T2(RecyclerView.z zVar) {
        if (J() != 0 && zVar.b() != 0) {
            T1();
            View viewY1 = Y1(!r2(), true);
            View viewX1 = X1(!r2(), true);
            if (viewY1 != null && viewX1 != null) {
                if (!r2()) {
                    return this.O.b(zVar.b() - 1, this.J) + 1;
                }
                int iD = this.u.d(viewX1) - this.u.g(viewY1);
                int iB = this.O.b(h0(viewY1), this.J);
                return (int) ((iD / ((this.O.b(h0(viewX1), this.J) - iB) + 1)) * (this.O.b(zVar.b() - 1, this.J) + 1));
            }
        }
        return 0;
    }

    private void U2(RecyclerView.u uVar, RecyclerView.z zVar, LinearLayoutManager.a aVar, int i) {
        boolean z = i == 1;
        int iZ2 = Z2(uVar, zVar, aVar.f855b);
        if (z) {
            while (iZ2 > 0) {
                int i2 = aVar.f855b;
                if (i2 <= 0) {
                    return;
                }
                int i3 = i2 - 1;
                aVar.f855b = i3;
                iZ2 = Z2(uVar, zVar, i3);
            }
            return;
        }
        int iB = zVar.b() - 1;
        int i4 = aVar.f855b;
        while (i4 < iB) {
            int i5 = i4 + 1;
            int iZ22 = Z2(uVar, zVar, i5);
            if (iZ22 <= iZ2) {
                break;
            }
            i4 = i5;
            iZ2 = iZ22;
        }
        aVar.f855b = i4;
    }

    private void V2() {
        View[] viewArr = this.L;
        if (viewArr == null || viewArr.length != this.J) {
            this.L = new View[this.J];
        }
    }

    private int Y2(RecyclerView.u uVar, RecyclerView.z zVar, int i) {
        if (!zVar.e()) {
            return this.O.b(i, this.J);
        }
        int iF = uVar.f(i);
        if (iF != -1) {
            return this.O.b(iF, this.J);
        }
        String str = "Cannot find span size for pre layout position. " + i;
        return 0;
    }

    private int Z2(RecyclerView.u uVar, RecyclerView.z zVar, int i) {
        if (!zVar.e()) {
            return this.O.c(i, this.J);
        }
        int i2 = this.N.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int iF = uVar.f(i);
        if (iF != -1) {
            return this.O.c(iF, this.J);
        }
        String str = "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i;
        return 0;
    }

    private int a3(RecyclerView.u uVar, RecyclerView.z zVar, int i) {
        if (!zVar.e()) {
            return this.O.f(i);
        }
        int i2 = this.M.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int iF = uVar.f(i);
        if (iF != -1) {
            return this.O.f(iF);
        }
        String str = "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i;
        return 1;
    }

    private void b3(float f, int i) {
        P2(Math.max(Math.round(f * this.J), i));
    }

    private void c3(View view, int i, boolean z) {
        int iK;
        int iK2;
        b bVar = (b) view.getLayoutParams();
        Rect rect = bVar.f888b;
        int i2 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) bVar).topMargin + ((ViewGroup.MarginLayoutParams) bVar).bottomMargin;
        int i3 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) bVar).leftMargin + ((ViewGroup.MarginLayoutParams) bVar).rightMargin;
        int iW2 = W2(bVar.e, bVar.f);
        if (this.s == 1) {
            iK2 = RecyclerView.n.K(iW2, i, i3, ((ViewGroup.MarginLayoutParams) bVar).width, false);
            iK = RecyclerView.n.K(this.u.n(), X(), i2, ((ViewGroup.MarginLayoutParams) bVar).height, true);
        } else {
            int iK3 = RecyclerView.n.K(iW2, i, i2, ((ViewGroup.MarginLayoutParams) bVar).height, false);
            int iK4 = RecyclerView.n.K(this.u.n(), p0(), i3, ((ViewGroup.MarginLayoutParams) bVar).width, true);
            iK = iK3;
            iK2 = iK4;
        }
        d3(view, iK2, iK, z);
    }

    private void d3(View view, int i, int i2, boolean z) {
        RecyclerView.o oVar = (RecyclerView.o) view.getLayoutParams();
        if (z ? H1(view, i, i2, oVar) : F1(view, i, i2, oVar)) {
            view.measure(i, i2);
        }
    }

    private void f3() {
        int iW;
        int iG0;
        if (p2() == 1) {
            iW = o0() - f0();
            iG0 = e0();
        } else {
            iW = W() - d0();
            iG0 = g0();
        }
        P2(iW - iG0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void C1(Rect rect, int i, int i2) {
        int iN;
        int iN2;
        if (this.K == null) {
            super.C1(rect, i, i2);
        }
        int iE0 = e0() + f0();
        int iG0 = g0() + d0();
        if (this.s == 1) {
            iN2 = RecyclerView.n.n(i2, rect.height() + iG0, b0());
            int[] iArr = this.K;
            iN = RecyclerView.n.n(i, iArr[iArr.length - 1] + iE0, c0());
        } else {
            iN = RecyclerView.n.n(i, rect.width() + iE0, c0());
            int[] iArr2 = this.K;
            iN2 = RecyclerView.n.n(i2, iArr2[iArr2.length - 1] + iG0, b0());
        }
        B1(iN, iN2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.n
    public RecyclerView.o D() {
        return this.s == 0 ? new b(-2, -1) : new b(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public RecyclerView.o E(Context context, AttributeSet attributeSet) {
        return new b(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void E2(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.E2(false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public RecyclerView.o F(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new b((ViewGroup.MarginLayoutParams) layoutParams) : new b(layoutParams);
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x00d6, code lost:
    
        if (r13 == (r2 > r15)) goto L49;
     */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0107  */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View J0(View view, int i, RecyclerView.u uVar, RecyclerView.z zVar) {
        int iJ;
        int iJ2;
        int i2;
        View view2;
        View view3;
        int i3;
        int i4;
        boolean z;
        int i5;
        int i6;
        RecyclerView.u uVar2 = uVar;
        RecyclerView.z zVar2 = zVar;
        View viewB = B(view);
        View view4 = null;
        if (viewB == null) {
            return null;
        }
        b bVar = (b) viewB.getLayoutParams();
        int i7 = bVar.e;
        int i8 = bVar.f + i7;
        if (super.J0(view, i, uVar, zVar) == null) {
            return null;
        }
        if ((R1(i) == 1) != this.x) {
            iJ2 = J() - 1;
            iJ = -1;
            i2 = -1;
        } else {
            iJ = J();
            iJ2 = 0;
            i2 = 1;
        }
        boolean z2 = this.s == 1 && q2();
        int iY2 = Y2(uVar2, zVar2, iJ2);
        int i9 = iJ2;
        int iMin = 0;
        int i10 = -1;
        int i11 = -1;
        int iMin2 = 0;
        View view5 = null;
        while (i9 != iJ) {
            int iY22 = Y2(uVar2, zVar2, i9);
            View viewI = I(i9);
            if (viewI == viewB) {
                break;
            }
            if (!viewI.hasFocusable() || iY22 == iY2) {
                b bVar2 = (b) viewI.getLayoutParams();
                int i12 = bVar2.e;
                view2 = viewB;
                int i13 = bVar2.f + i12;
                if (viewI.hasFocusable() && i12 == i7 && i13 == i8) {
                    return viewI;
                }
                if (!(viewI.hasFocusable() && view4 == null) && (viewI.hasFocusable() || view5 != null)) {
                    view3 = view5;
                    int iMin3 = Math.min(i13, i8) - Math.max(i12, i7);
                    if (!viewI.hasFocusable()) {
                        if (view4 == null) {
                            i3 = iMin;
                            i4 = iJ;
                            if (y0(viewI, false, true)) {
                                i5 = iMin2;
                                if (iMin3 > i5) {
                                    i6 = i11;
                                    if (!z) {
                                        if (viewI.hasFocusable()) {
                                            i10 = bVar2.e;
                                            i11 = i6;
                                            iMin2 = i5;
                                            view5 = view3;
                                            view4 = viewI;
                                            iMin = Math.min(i13, i8) - Math.max(i12, i7);
                                        } else {
                                            int i14 = bVar2.e;
                                            iMin2 = Math.min(i13, i8) - Math.max(i12, i7);
                                            i11 = i14;
                                            iMin = i3;
                                            view5 = viewI;
                                        }
                                    }
                                    i9 += i2;
                                    uVar2 = uVar;
                                    zVar2 = zVar;
                                    viewB = view2;
                                    iJ = i4;
                                } else if (iMin3 == i5) {
                                    i6 = i11;
                                    if (z2 == (i12 > i6)) {
                                        z = true;
                                    }
                                    if (!z) {
                                    }
                                    i9 += i2;
                                    uVar2 = uVar;
                                    zVar2 = zVar;
                                    viewB = view2;
                                    iJ = i4;
                                } else {
                                    i6 = i11;
                                }
                            }
                            z = false;
                            if (!z) {
                            }
                            i9 += i2;
                            uVar2 = uVar;
                            zVar2 = zVar;
                            viewB = view2;
                            iJ = i4;
                        }
                        i6 = i11;
                        i5 = iMin2;
                        z = false;
                        if (!z) {
                        }
                        i9 += i2;
                        uVar2 = uVar;
                        zVar2 = zVar;
                        viewB = view2;
                        iJ = i4;
                    } else if (iMin3 <= iMin) {
                        if (iMin3 == iMin) {
                        }
                    }
                    i3 = iMin;
                    i4 = iJ;
                    i6 = i11;
                    i5 = iMin2;
                    z = false;
                    if (!z) {
                    }
                    i9 += i2;
                    uVar2 = uVar;
                    zVar2 = zVar;
                    viewB = view2;
                    iJ = i4;
                } else {
                    view3 = view5;
                }
                i3 = iMin;
                i4 = iJ;
                i6 = i11;
                i5 = iMin2;
                z = true;
                if (!z) {
                }
                i9 += i2;
                uVar2 = uVar;
                zVar2 = zVar;
                viewB = view2;
                iJ = i4;
            } else {
                if (view4 != null) {
                    break;
                }
                view2 = viewB;
                view3 = view5;
                i3 = iMin;
                i4 = iJ;
                i6 = i11;
                i5 = iMin2;
            }
            i11 = i6;
            iMin2 = i5;
            iMin = i3;
            view5 = view3;
            i9 += i2;
            uVar2 = uVar;
            zVar2 = zVar;
            viewB = view2;
            iJ = i4;
        }
        return view4 != null ? view4 : view5;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.n
    public boolean L1() {
        return this.D == null && !this.I;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public int N(RecyclerView.u uVar, RecyclerView.z zVar) {
        if (this.s == 1) {
            return this.J;
        }
        if (zVar.b() < 1) {
            return 0;
        }
        return Y2(uVar, zVar, zVar.b() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    void N1(RecyclerView.z zVar, LinearLayoutManager.c cVar, RecyclerView.n.c cVar2) {
        int iF = this.J;
        for (int i = 0; i < this.J && cVar.c(zVar) && iF > 0; i++) {
            int i2 = cVar.f863d;
            cVar2.a(i2, Math.max(0, cVar.g));
            iF -= this.O.f(i2);
            cVar.f863d += cVar.e;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void P0(RecyclerView.u uVar, RecyclerView.z zVar, View view, androidx.core.view.e0.c cVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof b)) {
            super.O0(view, cVar);
            return;
        }
        b bVar = (b) layoutParams;
        int iY2 = Y2(uVar, zVar, bVar.a());
        if (this.s == 0) {
            cVar.Z(c.C0024c.a(bVar.e(), bVar.f(), iY2, 1, false, false));
        } else {
            cVar.Z(c.C0024c.a(iY2, 1, bVar.e(), bVar.f(), false, false));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void R0(RecyclerView recyclerView, int i, int i2) {
        this.O.h();
        this.O.g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void S0(RecyclerView recyclerView) {
        this.O.h();
        this.O.g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void T0(RecyclerView recyclerView, int i, int i2, int i3) {
        this.O.h();
        this.O.g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void U0(RecyclerView recyclerView, int i, int i2) {
        this.O.h();
        this.O.g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void W0(RecyclerView recyclerView, int i, int i2, Object obj) {
        this.O.h();
        this.O.g();
    }

    int W2(int i, int i2) {
        if (this.s != 1 || !q2()) {
            int[] iArr = this.K;
            return iArr[i2 + i] - iArr[i];
        }
        int[] iArr2 = this.K;
        int i3 = this.J;
        return iArr2[i3 - i] - iArr2[(i3 - i) - i2];
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.n
    public void X0(RecyclerView.u uVar, RecyclerView.z zVar) {
        if (zVar.e()) {
            O2();
        }
        super.X0(uVar, zVar);
        R2();
    }

    public int X2() {
        return this.J;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.n
    public void Y0(RecyclerView.z zVar) {
        super.Y0(zVar);
        this.I = false;
    }

    public void e3(int i) {
        if (i == this.J) {
            return;
        }
        this.I = true;
        if (i >= 1) {
            this.J = i;
            this.O.h();
            t1();
        } else {
            throw new IllegalArgumentException("Span count should be at least 1. Provided " + i);
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    View h2(RecyclerView.u uVar, RecyclerView.z zVar, int i, int i2, int i3) {
        T1();
        int iM = this.u.m();
        int i4 = this.u.i();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        View view2 = null;
        while (i != i2) {
            View viewI = I(i);
            int iH0 = h0(viewI);
            if (iH0 >= 0 && iH0 < i3 && Z2(uVar, zVar, iH0) == 0) {
                if (((RecyclerView.o) viewI.getLayoutParams()).c()) {
                    if (view2 == null) {
                        view2 = viewI;
                    }
                } else {
                    if (this.u.g(viewI) < i4 && this.u.d(viewI) >= iM) {
                        return viewI;
                    }
                    if (view == null) {
                        view = viewI;
                    }
                }
            }
            i += i5;
        }
        return view != null ? view : view2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public int k0(RecyclerView.u uVar, RecyclerView.z zVar) {
        if (this.s == 0) {
            return this.J;
        }
        if (zVar.b() < 1) {
            return 0;
        }
        return Y2(uVar, zVar, zVar.b() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public boolean m(RecyclerView.o oVar) {
        return oVar instanceof b;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.n
    public int r(RecyclerView.z zVar) {
        return this.Q ? S2(zVar) : super.r(zVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.n
    public int s(RecyclerView.z zVar) {
        return this.Q ? T2(zVar) : super.s(zVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0219  */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v19 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void s2(RecyclerView.u uVar, RecyclerView.z zVar, LinearLayoutManager.c cVar, LinearLayoutManager.b bVar) {
        int i;
        int iF;
        int i2;
        int i3;
        int i4;
        int iF2;
        int iF3;
        int i5;
        int iK;
        int iK2;
        View viewD;
        int iL = this.u.l();
        ?? r5 = 0;
        boolean z = iL != 1073741824;
        int i6 = J() > 0 ? this.K[this.J] : 0;
        if (z) {
            f3();
        }
        boolean z2 = cVar.e == 1;
        int iZ2 = this.J;
        if (!z2) {
            iZ2 = Z2(uVar, zVar, cVar.f863d) + a3(uVar, zVar, cVar.f863d);
        }
        int i7 = 0;
        while (i7 < this.J && cVar.c(zVar) && iZ2 > 0) {
            int i8 = cVar.f863d;
            int iA3 = a3(uVar, zVar, i8);
            if (iA3 > this.J) {
                throw new IllegalArgumentException("Item at position " + i8 + " requires " + iA3 + " spans but GridLayoutManager has only " + this.J + " spans.");
            }
            iZ2 -= iA3;
            if (iZ2 < 0 || (viewD = cVar.d(uVar)) == null) {
                break;
            }
            this.L[i7] = viewD;
            i7++;
        }
        if (i7 == 0) {
            bVar.f858b = true;
            return;
        }
        float f = CropImageView.DEFAULT_ASPECT_RATIO;
        N2(uVar, zVar, i7, z2);
        int i9 = 0;
        int i10 = 0;
        while (i9 < i7) {
            View view = this.L[i9];
            if (cVar.l == null) {
                if (z2) {
                    d(view);
                } else {
                    e(view, r5);
                }
            } else if (z2) {
                b(view);
            } else {
                c(view, r5);
            }
            j(view, this.P);
            c3(view, iL, r5);
            int iE = this.u.e(view);
            if (iE > i10) {
                i10 = iE;
            }
            float f2 = (this.u.f(view) * 1.0f) / ((b) view.getLayoutParams()).f;
            if (f2 > f) {
                f = f2;
            }
            i9++;
            r5 = 0;
        }
        if (z) {
            b3(f, i6);
            i10 = 0;
            for (int i11 = 0; i11 < i7; i11++) {
                View view2 = this.L[i11];
                c3(view2, 1073741824, true);
                int iE2 = this.u.e(view2);
                if (iE2 > i10) {
                    i10 = iE2;
                }
            }
        }
        for (int i12 = 0; i12 < i7; i12++) {
            View view3 = this.L[i12];
            if (this.u.e(view3) != i10) {
                b bVar2 = (b) view3.getLayoutParams();
                Rect rect = bVar2.f888b;
                int i13 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) bVar2).topMargin + ((ViewGroup.MarginLayoutParams) bVar2).bottomMargin;
                int i14 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) bVar2).leftMargin + ((ViewGroup.MarginLayoutParams) bVar2).rightMargin;
                int iW2 = W2(bVar2.e, bVar2.f);
                if (this.s == 1) {
                    iK2 = RecyclerView.n.K(iW2, 1073741824, i14, ((ViewGroup.MarginLayoutParams) bVar2).width, false);
                    iK = View.MeasureSpec.makeMeasureSpec(i10 - i13, 1073741824);
                } else {
                    int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i10 - i14, 1073741824);
                    iK = RecyclerView.n.K(iW2, 1073741824, i13, ((ViewGroup.MarginLayoutParams) bVar2).height, false);
                    iK2 = iMakeMeasureSpec;
                }
                d3(view3, iK2, iK, true);
            }
        }
        int i15 = 0;
        bVar.a = i10;
        if (this.s == 1) {
            if (cVar.f == -1) {
                i2 = cVar.f861b;
                i3 = i2 - i10;
            } else {
                int i16 = cVar.f861b;
                i3 = i16;
                i2 = i10 + i16;
            }
            i = 0;
            iF = 0;
        } else if (cVar.f == -1) {
            int i17 = cVar.f861b;
            iF = i17 - i10;
            i3 = 0;
            i = i17;
            i2 = 0;
        } else {
            int i18 = cVar.f861b;
            i = i10 + i18;
            iF = i18;
            i2 = 0;
            i3 = 0;
        }
        while (i15 < i7) {
            View view4 = this.L[i15];
            b bVar3 = (b) view4.getLayoutParams();
            if (this.s != 1) {
                int iG0 = g0() + this.K[bVar3.e];
                i4 = iG0;
                iF2 = i;
                iF3 = this.u.f(view4) + iG0;
            } else if (q2()) {
                int iE0 = e0() + this.K[this.J - bVar3.e];
                iF = iE0 - this.u.f(view4);
                iF3 = i2;
                iF2 = iE0;
                i4 = i3;
            } else {
                int iE02 = e0() + this.K[bVar3.e];
                iF3 = i2;
                i5 = iE02;
                i4 = i3;
                iF2 = this.u.f(view4) + iE02;
                z0(view4, i5, i4, iF2, iF3);
                if (!bVar3.c() || bVar3.b()) {
                    bVar.f859c = true;
                }
                bVar.f860d |= view4.hasFocusable();
                i15++;
                i2 = iF3;
                i = iF2;
                i3 = i4;
                iF = i5;
            }
            i5 = iF;
            z0(view4, i5, i4, iF2, iF3);
            if (!bVar3.c()) {
                bVar.f859c = true;
            }
            bVar.f860d |= view4.hasFocusable();
            i15++;
            i2 = iF3;
            i = iF2;
            i3 = i4;
            iF = i5;
        }
        Arrays.fill(this.L, (Object) null);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.n
    public int u(RecyclerView.z zVar) {
        return this.Q ? S2(zVar) : super.u(zVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    void u2(RecyclerView.u uVar, RecyclerView.z zVar, LinearLayoutManager.a aVar, int i) {
        super.u2(uVar, zVar, aVar, i);
        f3();
        if (zVar.b() > 0 && !zVar.e()) {
            U2(uVar, zVar, aVar, i);
        }
        V2();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.n
    public int v(RecyclerView.z zVar) {
        return this.Q ? T2(zVar) : super.v(zVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.n
    public int w1(int i, RecyclerView.u uVar, RecyclerView.z zVar) {
        f3();
        V2();
        return super.w1(i, uVar, zVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.n
    public int y1(int i, RecyclerView.u uVar, RecyclerView.z zVar) {
        f3();
        V2();
        return super.y1(i, uVar, zVar);
    }

    public static class b extends RecyclerView.o {
        int e;
        int f;

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.e = -1;
            this.f = 0;
        }

        public int e() {
            return this.e;
        }

        public int f() {
            return this.f;
        }

        public b(int i, int i2) {
            super(i, i2);
            this.e = -1;
            this.f = 0;
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.e = -1;
            this.f = 0;
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.e = -1;
            this.f = 0;
        }
    }

    public GridLayoutManager(Context context, int i, int i2, boolean z) {
        super(context, i2, z);
        this.I = false;
        this.J = -1;
        this.M = new SparseIntArray();
        this.N = new SparseIntArray();
        this.O = new a();
        this.P = new Rect();
        e3(i);
    }
}
