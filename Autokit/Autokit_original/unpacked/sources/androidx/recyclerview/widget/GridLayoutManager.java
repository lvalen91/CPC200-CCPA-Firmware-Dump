package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.p004e0.C0269c;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.yalantis.ucrop.view.CropImageView;
import java.util.Arrays;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class GridLayoutManager extends LinearLayoutManager {

    /* JADX INFO: renamed from: I */
    boolean f2575I;

    /* JADX INFO: renamed from: J */
    int f2576J;

    /* JADX INFO: renamed from: K */
    int[] f2577K;

    /* JADX INFO: renamed from: L */
    View[] f2578L;

    /* JADX INFO: renamed from: M */
    final SparseIntArray f2579M;

    /* JADX INFO: renamed from: N */
    final SparseIntArray f2580N;

    /* JADX INFO: renamed from: O */
    AbstractC0421c f2581O;

    /* JADX INFO: renamed from: P */
    final Rect f2582P;

    /* JADX INFO: renamed from: Q */
    private boolean f2583Q;

    /* JADX INFO: renamed from: androidx.recyclerview.widget.GridLayoutManager$a */
    public static final class C0419a extends AbstractC0421c {
        @Override // androidx.recyclerview.widget.GridLayoutManager.AbstractC0421c
        /* JADX INFO: renamed from: e */
        public int mo3119e(int i, int i2) {
            return i % i2;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.AbstractC0421c
        /* JADX INFO: renamed from: f */
        public int mo3120f(int i) {
            return 1;
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.GridLayoutManager$c */
    public static abstract class AbstractC0421c {

        /* JADX INFO: renamed from: a */
        final SparseIntArray f2586a = new SparseIntArray();

        /* JADX INFO: renamed from: b */
        final SparseIntArray f2587b = new SparseIntArray();

        /* JADX INFO: renamed from: c */
        private boolean f2588c = false;

        /* JADX INFO: renamed from: d */
        private boolean f2589d = false;

        /* JADX INFO: renamed from: a */
        static int m3123a(SparseIntArray sparseIntArray, int i) {
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

        /* JADX INFO: renamed from: b */
        int m3124b(int i, int i2) {
            if (!this.f2589d) {
                return m3126d(i, i2);
            }
            int i3 = this.f2587b.get(i, -1);
            if (i3 != -1) {
                return i3;
            }
            int iM3126d = m3126d(i, i2);
            this.f2587b.put(i, iM3126d);
            return iM3126d;
        }

        /* JADX INFO: renamed from: c */
        int m3125c(int i, int i2) {
            if (!this.f2588c) {
                return mo3119e(i, i2);
            }
            int i3 = this.f2586a.get(i, -1);
            if (i3 != -1) {
                return i3;
            }
            int iMo3119e = mo3119e(i, i2);
            this.f2586a.put(i, iMo3119e);
            return iMo3119e;
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x002d  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0043  */
        /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
        /* JADX INFO: renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public int m3126d(int i, int i2) {
            int i3;
            int iM3125c;
            int iM3123a;
            if (this.f2589d && (iM3123a = m3123a(this.f2587b, i)) != -1) {
                int i4 = this.f2587b.get(iM3123a);
                i3 = iM3123a + 1;
                iM3125c = m3125c(iM3123a, i2) + mo3120f(iM3123a);
                i4 = iM3125c == i2 ? i4 + 1 : 0;
                int iMo3120f = mo3120f(i);
                while (i3 < i) {
                    int iMo3120f2 = mo3120f(i3);
                    iM3125c += iMo3120f2;
                    if (iM3125c == i2) {
                        i4++;
                        iM3125c = 0;
                    } else if (iM3125c > i2) {
                        i4++;
                        iM3125c = iMo3120f2;
                    }
                    i3++;
                }
                return iM3125c + iMo3120f <= i2 ? i4 + 1 : i4;
            }
            i3 = 0;
            iM3125c = 0;
            int iMo3120f3 = mo3120f(i);
            while (i3 < i) {
            }
            if (iM3125c + iMo3120f3 <= i2) {
            }
        }

        /* JADX INFO: renamed from: e */
        public abstract int mo3119e(int i, int i2);

        /* JADX INFO: renamed from: f */
        public abstract int mo3120f(int i);

        /* JADX INFO: renamed from: g */
        public void m3127g() {
            this.f2587b.clear();
        }

        /* JADX INFO: renamed from: h */
        public void m3128h() {
            this.f2586a.clear();
        }
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f2575I = false;
        this.f2576J = -1;
        this.f2579M = new SparseIntArray();
        this.f2580N = new SparseIntArray();
        this.f2581O = new C0419a();
        this.f2582P = new Rect();
        m3107e3(RecyclerView.AbstractC0442n.m3465i0(context, attributeSet, i, i2).f2773b);
    }

    /* JADX INFO: renamed from: N2 */
    private void m3072N2(RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z, int i, boolean z) {
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
            View view = this.f2578L[i2];
            C0420b c0420b = (C0420b) view.getLayoutParams();
            int iM3083a3 = m3083a3(c0449u, c0454z, m3530h0(view));
            c0420b.f2585f = iM3083a3;
            c0420b.f2584e = i4;
            i4 += iM3083a3;
            i2 += i3;
        }
    }

    /* JADX INFO: renamed from: O2 */
    private void m3073O2() {
        int iM3490J = m3490J();
        for (int i = 0; i < iM3490J; i++) {
            C0420b c0420b = (C0420b) m3489I(i).getLayoutParams();
            int iM3570a = c0420b.m3570a();
            this.f2579M.put(iM3570a, c0420b.m3122f());
            this.f2580N.put(iM3570a, c0420b.m3121e());
        }
    }

    /* JADX INFO: renamed from: P2 */
    private void m3074P2(int i) {
        this.f2577K = m3075Q2(this.f2577K, this.f2576J, i);
    }

    /* JADX INFO: renamed from: Q2 */
    static int[] m3075Q2(int[] iArr, int i, int i2) {
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

    /* JADX INFO: renamed from: R2 */
    private void m3076R2() {
        this.f2579M.clear();
        this.f2580N.clear();
    }

    /* JADX INFO: renamed from: S2 */
    private int m3077S2(RecyclerView.C0454z c0454z) {
        if (m3490J() != 0 && c0454z.m3662b() != 0) {
            m3169T1();
            boolean zM3189r2 = m3189r2();
            View viewM3172Y1 = m3172Y1(!zM3189r2, true);
            View viewM3171X1 = m3171X1(!zM3189r2, true);
            if (viewM3172Y1 != null && viewM3171X1 != null) {
                int iM3124b = this.f2581O.m3124b(m3530h0(viewM3172Y1), this.f2576J);
                int iM3124b2 = this.f2581O.m3124b(m3530h0(viewM3171X1), this.f2576J);
                int iMax = this.f2603x ? Math.max(0, ((this.f2581O.m3124b(c0454z.m3662b() - 1, this.f2576J) + 1) - Math.max(iM3124b, iM3124b2)) - 1) : Math.max(0, Math.min(iM3124b, iM3124b2));
                if (zM3189r2) {
                    return Math.round((iMax * (Math.abs(this.f2600u.mo3899d(viewM3171X1) - this.f2600u.mo3902g(viewM3172Y1)) / ((this.f2581O.m3124b(m3530h0(viewM3171X1), this.f2576J) - this.f2581O.m3124b(m3530h0(viewM3172Y1), this.f2576J)) + 1))) + (this.f2600u.mo3908m() - this.f2600u.mo3902g(viewM3172Y1)));
                }
                return iMax;
            }
        }
        return 0;
    }

    /* JADX INFO: renamed from: T2 */
    private int m3078T2(RecyclerView.C0454z c0454z) {
        if (m3490J() != 0 && c0454z.m3662b() != 0) {
            m3169T1();
            View viewM3172Y1 = m3172Y1(!m3189r2(), true);
            View viewM3171X1 = m3171X1(!m3189r2(), true);
            if (viewM3172Y1 != null && viewM3171X1 != null) {
                if (!m3189r2()) {
                    return this.f2581O.m3124b(c0454z.m3662b() - 1, this.f2576J) + 1;
                }
                int iMo3899d = this.f2600u.mo3899d(viewM3171X1) - this.f2600u.mo3902g(viewM3172Y1);
                int iM3124b = this.f2581O.m3124b(m3530h0(viewM3172Y1), this.f2576J);
                return (int) ((iMo3899d / ((this.f2581O.m3124b(m3530h0(viewM3171X1), this.f2576J) - iM3124b) + 1)) * (this.f2581O.m3124b(c0454z.m3662b() - 1, this.f2576J) + 1));
            }
        }
        return 0;
    }

    /* JADX INFO: renamed from: U2 */
    private void m3079U2(RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z, LinearLayoutManager.C0422a c0422a, int i) {
        boolean z = i == 1;
        int iM3082Z2 = m3082Z2(c0449u, c0454z, c0422a.f2607b);
        if (z) {
            while (iM3082Z2 > 0) {
                int i2 = c0422a.f2607b;
                if (i2 <= 0) {
                    return;
                }
                int i3 = i2 - 1;
                c0422a.f2607b = i3;
                iM3082Z2 = m3082Z2(c0449u, c0454z, i3);
            }
            return;
        }
        int iM3662b = c0454z.m3662b() - 1;
        int i4 = c0422a.f2607b;
        while (i4 < iM3662b) {
            int i5 = i4 + 1;
            int iM3082Z22 = m3082Z2(c0449u, c0454z, i5);
            if (iM3082Z22 <= iM3082Z2) {
                break;
            }
            i4 = i5;
            iM3082Z2 = iM3082Z22;
        }
        c0422a.f2607b = i4;
    }

    /* JADX INFO: renamed from: V2 */
    private void m3080V2() {
        View[] viewArr = this.f2578L;
        if (viewArr == null || viewArr.length != this.f2576J) {
            this.f2578L = new View[this.f2576J];
        }
    }

    /* JADX INFO: renamed from: Y2 */
    private int m3081Y2(RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z, int i) {
        if (!c0454z.m3665e()) {
            return this.f2581O.m3124b(i, this.f2576J);
        }
        int iM3614f = c0449u.m3614f(i);
        if (iM3614f != -1) {
            return this.f2581O.m3124b(iM3614f, this.f2576J);
        }
        String str = "Cannot find span size for pre layout position. " + i;
        return 0;
    }

    /* JADX INFO: renamed from: Z2 */
    private int m3082Z2(RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z, int i) {
        if (!c0454z.m3665e()) {
            return this.f2581O.m3125c(i, this.f2576J);
        }
        int i2 = this.f2580N.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int iM3614f = c0449u.m3614f(i);
        if (iM3614f != -1) {
            return this.f2581O.m3125c(iM3614f, this.f2576J);
        }
        String str = "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i;
        return 0;
    }

    /* JADX INFO: renamed from: a3 */
    private int m3083a3(RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z, int i) {
        if (!c0454z.m3665e()) {
            return this.f2581O.mo3120f(i);
        }
        int i2 = this.f2579M.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int iM3614f = c0449u.m3614f(i);
        if (iM3614f != -1) {
            return this.f2581O.mo3120f(iM3614f);
        }
        String str = "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i;
        return 1;
    }

    /* JADX INFO: renamed from: b3 */
    private void m3084b3(float f, int i) {
        m3074P2(Math.max(Math.round(f * this.f2576J), i));
    }

    /* JADX INFO: renamed from: c3 */
    private void m3085c3(View view, int i, boolean z) {
        int iM3462K;
        int iM3462K2;
        C0420b c0420b = (C0420b) view.getLayoutParams();
        Rect rect = c0420b.f2777b;
        int i2 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) c0420b).topMargin + ((ViewGroup.MarginLayoutParams) c0420b).bottomMargin;
        int i3 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) c0420b).leftMargin + ((ViewGroup.MarginLayoutParams) c0420b).rightMargin;
        int iM3103W2 = m3103W2(c0420b.f2584e, c0420b.f2585f);
        if (this.f2598s == 1) {
            iM3462K2 = RecyclerView.AbstractC0442n.m3462K(iM3103W2, i, i3, ((ViewGroup.MarginLayoutParams) c0420b).width, false);
            iM3462K = RecyclerView.AbstractC0442n.m3462K(this.f2600u.mo3909n(), m3509X(), i2, ((ViewGroup.MarginLayoutParams) c0420b).height, true);
        } else {
            int iM3462K3 = RecyclerView.AbstractC0442n.m3462K(iM3103W2, i, i2, ((ViewGroup.MarginLayoutParams) c0420b).height, false);
            int iM3462K4 = RecyclerView.AbstractC0442n.m3462K(this.f2600u.mo3909n(), m3546p0(), i3, ((ViewGroup.MarginLayoutParams) c0420b).width, true);
            iM3462K = iM3462K3;
            iM3462K2 = iM3462K4;
        }
        m3086d3(view, iM3462K2, iM3462K, z);
    }

    /* JADX INFO: renamed from: d3 */
    private void m3086d3(View view, int i, int i2, boolean z) {
        RecyclerView.C0443o c0443o = (RecyclerView.C0443o) view.getLayoutParams();
        if (z ? m3488H1(view, i, i2, c0443o) : m3483F1(view, i, i2, c0443o)) {
            view.measure(i, i2);
        }
    }

    /* JADX INFO: renamed from: f3 */
    private void m3087f3() {
        int iM3508W;
        int iM3527g0;
        if (m3186p2() == 1) {
            iM3508W = m3544o0() - m3525f0();
            iM3527g0 = m3523e0();
        } else {
            iM3508W = m3508W() - m3521d0();
            iM3527g0 = m3527g0();
        }
        m3074P2(iM3508W - iM3527g0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: C1 */
    public void mo3088C1(Rect rect, int i, int i2) {
        int iM3466n;
        int iM3466n2;
        if (this.f2577K == null) {
            super.mo3088C1(rect, i, i2);
        }
        int iM3523e0 = m3523e0() + m3525f0();
        int iM3527g0 = m3527g0() + m3521d0();
        if (this.f2598s == 1) {
            iM3466n2 = RecyclerView.AbstractC0442n.m3466n(i2, rect.height() + iM3527g0, m3516b0());
            int[] iArr = this.f2577K;
            iM3466n = RecyclerView.AbstractC0442n.m3466n(i, iArr[iArr.length - 1] + iM3523e0, m3519c0());
        } else {
            iM3466n = RecyclerView.AbstractC0442n.m3466n(i, rect.width() + iM3523e0, m3519c0());
            int[] iArr2 = this.f2577K;
            iM3466n2 = RecyclerView.AbstractC0442n.m3466n(i2, iArr2[iArr2.length - 1] + iM3527g0, m3516b0());
        }
        m3476B1(iM3466n, iM3466n2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: D */
    public RecyclerView.C0443o mo3089D() {
        return this.f2598s == 0 ? new C0420b(-2, -1) : new C0420b(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: E */
    public RecyclerView.C0443o mo3090E(Context context, AttributeSet attributeSet) {
        return new C0420b(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* JADX INFO: renamed from: E2 */
    public void mo3091E2(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.mo3091E2(false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: F */
    public RecyclerView.C0443o mo3092F(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0420b((ViewGroup.MarginLayoutParams) layoutParams) : new C0420b(layoutParams);
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x00d6, code lost:
    
        if (r13 == (r2 > r15)) goto L49;
     */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0107  */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: J0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View mo3093J0(View view, int i, RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z) {
        int iM3490J;
        int iM3490J2;
        int i2;
        View view2;
        View view3;
        int i3;
        int i4;
        boolean z;
        int i5;
        int i6;
        RecyclerView.C0449u c0449u2 = c0449u;
        RecyclerView.C0454z c0454z2 = c0454z;
        View viewM3474B = m3474B(view);
        View view4 = null;
        if (viewM3474B == null) {
            return null;
        }
        C0420b c0420b = (C0420b) viewM3474B.getLayoutParams();
        int i7 = c0420b.f2584e;
        int i8 = c0420b.f2585f + i7;
        if (super.mo3093J0(view, i, c0449u, c0454z) == null) {
            return null;
        }
        if ((m3167R1(i) == 1) != this.f2603x) {
            iM3490J2 = m3490J() - 1;
            iM3490J = -1;
            i2 = -1;
        } else {
            iM3490J = m3490J();
            iM3490J2 = 0;
            i2 = 1;
        }
        boolean z2 = this.f2598s == 1 && m3188q2();
        int iM3081Y2 = m3081Y2(c0449u2, c0454z2, iM3490J2);
        int i9 = iM3490J2;
        int iMin = 0;
        int i10 = -1;
        int i11 = -1;
        int iMin2 = 0;
        View view5 = null;
        while (i9 != iM3490J) {
            int iM3081Y22 = m3081Y2(c0449u2, c0454z2, i9);
            View viewM3489I = m3489I(i9);
            if (viewM3489I == viewM3474B) {
                break;
            }
            if (!viewM3489I.hasFocusable() || iM3081Y22 == iM3081Y2) {
                C0420b c0420b2 = (C0420b) viewM3489I.getLayoutParams();
                int i12 = c0420b2.f2584e;
                view2 = viewM3474B;
                int i13 = c0420b2.f2585f + i12;
                if (viewM3489I.hasFocusable() && i12 == i7 && i13 == i8) {
                    return viewM3489I;
                }
                if (!(viewM3489I.hasFocusable() && view4 == null) && (viewM3489I.hasFocusable() || view5 != null)) {
                    view3 = view5;
                    int iMin3 = Math.min(i13, i8) - Math.max(i12, i7);
                    if (!viewM3489I.hasFocusable()) {
                        if (view4 == null) {
                            i3 = iMin;
                            i4 = iM3490J;
                            if (m3560y0(viewM3489I, false, true)) {
                                i5 = iMin2;
                                if (iMin3 > i5) {
                                    i6 = i11;
                                    if (!z) {
                                        if (viewM3489I.hasFocusable()) {
                                            i10 = c0420b2.f2584e;
                                            i11 = i6;
                                            iMin2 = i5;
                                            view5 = view3;
                                            view4 = viewM3489I;
                                            iMin = Math.min(i13, i8) - Math.max(i12, i7);
                                        } else {
                                            int i14 = c0420b2.f2584e;
                                            iMin2 = Math.min(i13, i8) - Math.max(i12, i7);
                                            i11 = i14;
                                            iMin = i3;
                                            view5 = viewM3489I;
                                        }
                                    }
                                    i9 += i2;
                                    c0449u2 = c0449u;
                                    c0454z2 = c0454z;
                                    viewM3474B = view2;
                                    iM3490J = i4;
                                } else if (iMin3 == i5) {
                                    i6 = i11;
                                    if (z2 == (i12 > i6)) {
                                        z = true;
                                    }
                                    if (!z) {
                                    }
                                    i9 += i2;
                                    c0449u2 = c0449u;
                                    c0454z2 = c0454z;
                                    viewM3474B = view2;
                                    iM3490J = i4;
                                } else {
                                    i6 = i11;
                                }
                            }
                            z = false;
                            if (!z) {
                            }
                            i9 += i2;
                            c0449u2 = c0449u;
                            c0454z2 = c0454z;
                            viewM3474B = view2;
                            iM3490J = i4;
                        }
                        i6 = i11;
                        i5 = iMin2;
                        z = false;
                        if (!z) {
                        }
                        i9 += i2;
                        c0449u2 = c0449u;
                        c0454z2 = c0454z;
                        viewM3474B = view2;
                        iM3490J = i4;
                    } else if (iMin3 <= iMin) {
                        if (iMin3 == iMin) {
                        }
                    }
                    i3 = iMin;
                    i4 = iM3490J;
                    i6 = i11;
                    i5 = iMin2;
                    z = false;
                    if (!z) {
                    }
                    i9 += i2;
                    c0449u2 = c0449u;
                    c0454z2 = c0454z;
                    viewM3474B = view2;
                    iM3490J = i4;
                } else {
                    view3 = view5;
                }
                i3 = iMin;
                i4 = iM3490J;
                i6 = i11;
                i5 = iMin2;
                z = true;
                if (!z) {
                }
                i9 += i2;
                c0449u2 = c0449u;
                c0454z2 = c0454z;
                viewM3474B = view2;
                iM3490J = i4;
            } else {
                if (view4 != null) {
                    break;
                }
                view2 = viewM3474B;
                view3 = view5;
                i3 = iMin;
                i4 = iM3490J;
                i6 = i11;
                i5 = iMin2;
            }
            i11 = i6;
            iMin2 = i5;
            iMin = i3;
            view5 = view3;
            i9 += i2;
            c0449u2 = c0449u;
            c0454z2 = c0454z;
            viewM3474B = view2;
            iM3490J = i4;
        }
        return view4 != null ? view4 : view5;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: L1 */
    public boolean mo3094L1() {
        return this.f2593D == null && !this.f2575I;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: N */
    public int mo3095N(RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z) {
        if (this.f2598s == 1) {
            return this.f2576J;
        }
        if (c0454z.m3662b() < 1) {
            return 0;
        }
        return m3081Y2(c0449u, c0454z, c0454z.m3662b() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* JADX INFO: renamed from: N1 */
    void mo3096N1(RecyclerView.C0454z c0454z, LinearLayoutManager.C0424c c0424c, RecyclerView.AbstractC0442n.c cVar) {
        int iMo3120f = this.f2576J;
        for (int i = 0; i < this.f2576J && c0424c.m3203c(c0454z) && iMo3120f > 0; i++) {
            int i2 = c0424c.f2618d;
            cVar.mo3569a(i2, Math.max(0, c0424c.f2621g));
            iMo3120f -= this.f2581O.mo3120f(i2);
            c0424c.f2618d += c0424c.f2619e;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: P0 */
    public void mo3097P0(RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z, View view, C0269c c0269c) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof C0420b)) {
            super.m3498O0(view, c0269c);
            return;
        }
        C0420b c0420b = (C0420b) layoutParams;
        int iM3081Y2 = m3081Y2(c0449u, c0454z, c0420b.m3570a());
        if (this.f2598s == 0) {
            c0269c.m1922Z(C0269c.c.m1965a(c0420b.m3121e(), c0420b.m3122f(), iM3081Y2, 1, false, false));
        } else {
            c0269c.m1922Z(C0269c.c.m1965a(iM3081Y2, 1, c0420b.m3121e(), c0420b.m3122f(), false, false));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: R0 */
    public void mo3098R0(RecyclerView recyclerView, int i, int i2) {
        this.f2581O.m3128h();
        this.f2581O.m3127g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: S0 */
    public void mo3099S0(RecyclerView recyclerView) {
        this.f2581O.m3128h();
        this.f2581O.m3127g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: T0 */
    public void mo3100T0(RecyclerView recyclerView, int i, int i2, int i3) {
        this.f2581O.m3128h();
        this.f2581O.m3127g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: U0 */
    public void mo3101U0(RecyclerView recyclerView, int i, int i2) {
        this.f2581O.m3128h();
        this.f2581O.m3127g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: W0 */
    public void mo3102W0(RecyclerView recyclerView, int i, int i2, Object obj) {
        this.f2581O.m3128h();
        this.f2581O.m3127g();
    }

    /* JADX INFO: renamed from: W2 */
    int m3103W2(int i, int i2) {
        if (this.f2598s != 1 || !m3188q2()) {
            int[] iArr = this.f2577K;
            return iArr[i2 + i] - iArr[i];
        }
        int[] iArr2 = this.f2577K;
        int i3 = this.f2576J;
        return iArr2[i3 - i] - iArr2[(i3 - i) - i2];
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: X0 */
    public void mo3104X0(RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z) {
        if (c0454z.m3665e()) {
            m3073O2();
        }
        super.mo3104X0(c0449u, c0454z);
        m3076R2();
    }

    /* JADX INFO: renamed from: X2 */
    public int m3105X2() {
        return this.f2576J;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: Y0 */
    public void mo3106Y0(RecyclerView.C0454z c0454z) {
        super.mo3106Y0(c0454z);
        this.f2575I = false;
    }

    /* JADX INFO: renamed from: e3 */
    public void m3107e3(int i) {
        if (i == this.f2576J) {
            return;
        }
        this.f2575I = true;
        if (i >= 1) {
            this.f2576J = i;
            this.f2581O.m3128h();
            m3553t1();
        } else {
            throw new IllegalArgumentException("Span count should be at least 1. Provided " + i);
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* JADX INFO: renamed from: h2 */
    View mo3108h2(RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z, int i, int i2, int i3) {
        m3169T1();
        int iMo3908m = this.f2600u.mo3908m();
        int iMo3904i = this.f2600u.mo3904i();
        int i4 = i2 > i ? 1 : -1;
        View view = null;
        View view2 = null;
        while (i != i2) {
            View viewM3489I = m3489I(i);
            int iM3530h0 = m3530h0(viewM3489I);
            if (iM3530h0 >= 0 && iM3530h0 < i3 && m3082Z2(c0449u, c0454z, iM3530h0) == 0) {
                if (((RecyclerView.C0443o) viewM3489I.getLayoutParams()).m3572c()) {
                    if (view2 == null) {
                        view2 = viewM3489I;
                    }
                } else {
                    if (this.f2600u.mo3902g(viewM3489I) < iMo3904i && this.f2600u.mo3899d(viewM3489I) >= iMo3908m) {
                        return viewM3489I;
                    }
                    if (view == null) {
                        view = viewM3489I;
                    }
                }
            }
            i += i4;
        }
        return view != null ? view : view2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: k0 */
    public int mo3109k0(RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z) {
        if (this.f2598s == 0) {
            return this.f2576J;
        }
        if (c0454z.m3662b() < 1) {
            return 0;
        }
        return m3081Y2(c0449u, c0454z, c0454z.m3662b() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: m */
    public boolean mo3110m(RecyclerView.C0443o c0443o) {
        return c0443o instanceof C0420b;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: r */
    public int mo3111r(RecyclerView.C0454z c0454z) {
        return this.f2583Q ? m3077S2(c0454z) : super.mo3111r(c0454z);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: s */
    public int mo3112s(RecyclerView.C0454z c0454z) {
        return this.f2583Q ? m3078T2(c0454z) : super.mo3112s(c0454z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0219  */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v19 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* JADX INFO: renamed from: s2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void mo3113s2(RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z, LinearLayoutManager.C0424c c0424c, LinearLayoutManager.C0423b c0423b) {
        int i;
        int iMo3901f;
        int i2;
        int i3;
        int i4;
        int iMo3901f2;
        int iMo3901f3;
        int i5;
        int iM3462K;
        int iM3462K2;
        View viewM3204d;
        int iMo3907l = this.f2600u.mo3907l();
        ?? r5 = 0;
        boolean z = iMo3907l != 1073741824;
        int i6 = m3490J() > 0 ? this.f2577K[this.f2576J] : 0;
        if (z) {
            m3087f3();
        }
        boolean z2 = c0424c.f2619e == 1;
        int iM3082Z2 = this.f2576J;
        if (!z2) {
            iM3082Z2 = m3082Z2(c0449u, c0454z, c0424c.f2618d) + m3083a3(c0449u, c0454z, c0424c.f2618d);
        }
        int i7 = 0;
        while (i7 < this.f2576J && c0424c.m3203c(c0454z) && iM3082Z2 > 0) {
            int i8 = c0424c.f2618d;
            int iM3083a3 = m3083a3(c0449u, c0454z, i8);
            if (iM3083a3 > this.f2576J) {
                throw new IllegalArgumentException("Item at position " + i8 + " requires " + iM3083a3 + " spans but GridLayoutManager has only " + this.f2576J + " spans.");
            }
            iM3082Z2 -= iM3083a3;
            if (iM3082Z2 < 0 || (viewM3204d = c0424c.m3204d(c0449u)) == null) {
                break;
            }
            this.f2578L[i7] = viewM3204d;
            i7++;
        }
        if (i7 == 0) {
            c0423b.f2612b = true;
            return;
        }
        float f = CropImageView.DEFAULT_ASPECT_RATIO;
        m3072N2(c0449u, c0454z, i7, z2);
        int i9 = 0;
        int i10 = 0;
        while (i9 < i7) {
            View view = this.f2578L[i9];
            if (c0424c.f2626l == null) {
                if (z2) {
                    m3520d(view);
                } else {
                    m3522e(view, r5);
                }
            } else if (z2) {
                m3515b(view);
            } else {
                m3518c(view, r5);
            }
            m3534j(view, this.f2582P);
            m3085c3(view, iMo3907l, r5);
            int iMo3900e = this.f2600u.mo3900e(view);
            if (iMo3900e > i10) {
                i10 = iMo3900e;
            }
            float fMo3901f = (this.f2600u.mo3901f(view) * 1.0f) / ((C0420b) view.getLayoutParams()).f2585f;
            if (fMo3901f > f) {
                f = fMo3901f;
            }
            i9++;
            r5 = 0;
        }
        if (z) {
            m3084b3(f, i6);
            i10 = 0;
            for (int i11 = 0; i11 < i7; i11++) {
                View view2 = this.f2578L[i11];
                m3085c3(view2, 1073741824, true);
                int iMo3900e2 = this.f2600u.mo3900e(view2);
                if (iMo3900e2 > i10) {
                    i10 = iMo3900e2;
                }
            }
        }
        for (int i12 = 0; i12 < i7; i12++) {
            View view3 = this.f2578L[i12];
            if (this.f2600u.mo3900e(view3) != i10) {
                C0420b c0420b = (C0420b) view3.getLayoutParams();
                Rect rect = c0420b.f2777b;
                int i13 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) c0420b).topMargin + ((ViewGroup.MarginLayoutParams) c0420b).bottomMargin;
                int i14 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) c0420b).leftMargin + ((ViewGroup.MarginLayoutParams) c0420b).rightMargin;
                int iM3103W2 = m3103W2(c0420b.f2584e, c0420b.f2585f);
                if (this.f2598s == 1) {
                    iM3462K2 = RecyclerView.AbstractC0442n.m3462K(iM3103W2, 1073741824, i14, ((ViewGroup.MarginLayoutParams) c0420b).width, false);
                    iM3462K = View.MeasureSpec.makeMeasureSpec(i10 - i13, 1073741824);
                } else {
                    int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i10 - i14, 1073741824);
                    iM3462K = RecyclerView.AbstractC0442n.m3462K(iM3103W2, 1073741824, i13, ((ViewGroup.MarginLayoutParams) c0420b).height, false);
                    iM3462K2 = iMakeMeasureSpec;
                }
                m3086d3(view3, iM3462K2, iM3462K, true);
            }
        }
        int i15 = 0;
        c0423b.f2611a = i10;
        if (this.f2598s == 1) {
            if (c0424c.f2620f == -1) {
                i2 = c0424c.f2616b;
                i3 = i2 - i10;
            } else {
                int i16 = c0424c.f2616b;
                i3 = i16;
                i2 = i10 + i16;
            }
            i = 0;
            iMo3901f = 0;
        } else if (c0424c.f2620f == -1) {
            int i17 = c0424c.f2616b;
            iMo3901f = i17 - i10;
            i3 = 0;
            i = i17;
            i2 = 0;
        } else {
            int i18 = c0424c.f2616b;
            i = i10 + i18;
            iMo3901f = i18;
            i2 = 0;
            i3 = 0;
        }
        while (i15 < i7) {
            View view4 = this.f2578L[i15];
            C0420b c0420b2 = (C0420b) view4.getLayoutParams();
            if (this.f2598s != 1) {
                int iM3527g0 = m3527g0() + this.f2577K[c0420b2.f2584e];
                i4 = iM3527g0;
                iMo3901f2 = i;
                iMo3901f3 = this.f2600u.mo3901f(view4) + iM3527g0;
            } else if (m3188q2()) {
                int iM3523e0 = m3523e0() + this.f2577K[this.f2576J - c0420b2.f2584e];
                iMo3901f = iM3523e0 - this.f2600u.mo3901f(view4);
                iMo3901f3 = i2;
                iMo3901f2 = iM3523e0;
                i4 = i3;
            } else {
                int iM3523e02 = m3523e0() + this.f2577K[c0420b2.f2584e];
                iMo3901f3 = i2;
                i5 = iM3523e02;
                i4 = i3;
                iMo3901f2 = this.f2600u.mo3901f(view4) + iM3523e02;
                m3562z0(view4, i5, i4, iMo3901f2, iMo3901f3);
                if (!c0420b2.m3572c() || c0420b2.m3571b()) {
                    c0423b.f2613c = true;
                }
                c0423b.f2614d |= view4.hasFocusable();
                i15++;
                i2 = iMo3901f3;
                i = iMo3901f2;
                i3 = i4;
                iMo3901f = i5;
            }
            i5 = iMo3901f;
            m3562z0(view4, i5, i4, iMo3901f2, iMo3901f3);
            if (!c0420b2.m3572c()) {
                c0423b.f2613c = true;
            }
            c0423b.f2614d |= view4.hasFocusable();
            i15++;
            i2 = iMo3901f3;
            i = iMo3901f2;
            i3 = i4;
            iMo3901f = i5;
        }
        Arrays.fill(this.f2578L, (Object) null);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: u */
    public int mo3114u(RecyclerView.C0454z c0454z) {
        return this.f2583Q ? m3077S2(c0454z) : super.mo3114u(c0454z);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* JADX INFO: renamed from: u2 */
    void mo3115u2(RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z, LinearLayoutManager.C0422a c0422a, int i) {
        super.mo3115u2(c0449u, c0454z, c0422a, i);
        m3087f3();
        if (c0454z.m3662b() > 0 && !c0454z.m3665e()) {
            m3079U2(c0449u, c0454z, c0422a, i);
        }
        m3080V2();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: v */
    public int mo3116v(RecyclerView.C0454z c0454z) {
        return this.f2583Q ? m3078T2(c0454z) : super.mo3116v(c0454z);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: w1 */
    public int mo3117w1(int i, RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z) {
        m3087f3();
        m3080V2();
        return super.mo3117w1(i, c0449u, c0454z);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: y1 */
    public int mo3118y1(int i, RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z) {
        m3087f3();
        m3080V2();
        return super.mo3118y1(i, c0449u, c0454z);
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.GridLayoutManager$b */
    public static class C0420b extends RecyclerView.C0443o {

        /* JADX INFO: renamed from: e */
        int f2584e;

        /* JADX INFO: renamed from: f */
        int f2585f;

        public C0420b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f2584e = -1;
            this.f2585f = 0;
        }

        /* JADX INFO: renamed from: e */
        public int m3121e() {
            return this.f2584e;
        }

        /* JADX INFO: renamed from: f */
        public int m3122f() {
            return this.f2585f;
        }

        public C0420b(int i, int i2) {
            super(i, i2);
            this.f2584e = -1;
            this.f2585f = 0;
        }

        public C0420b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f2584e = -1;
            this.f2585f = 0;
        }

        public C0420b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f2584e = -1;
            this.f2585f = 0;
        }
    }

    public GridLayoutManager(Context context, int i, int i2, boolean z) {
        super(context, i2, z);
        this.f2575I = false;
        this.f2576J = -1;
        this.f2579M = new SparseIntArray();
        this.f2580N = new SparseIntArray();
        this.f2581O = new C0419a();
        this.f2582P = new Rect();
        m3107e3(i);
    }
}
