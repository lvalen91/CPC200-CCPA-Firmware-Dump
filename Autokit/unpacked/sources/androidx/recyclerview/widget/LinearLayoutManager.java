package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import com.yalantis.ucrop.view.CropImageView;
import java.util.List;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class LinearLayoutManager extends RecyclerView.AbstractC0442n implements RecyclerView.AbstractC0453y.b {

    /* JADX INFO: renamed from: A */
    int f2590A;

    /* JADX INFO: renamed from: B */
    int f2591B;

    /* JADX INFO: renamed from: C */
    private boolean f2592C;

    /* JADX INFO: renamed from: D */
    C0425d f2593D;

    /* JADX INFO: renamed from: E */
    final C0422a f2594E;

    /* JADX INFO: renamed from: F */
    private final C0423b f2595F;

    /* JADX INFO: renamed from: G */
    private int f2596G;

    /* JADX INFO: renamed from: H */
    private int[] f2597H;

    /* JADX INFO: renamed from: s */
    int f2598s;

    /* JADX INFO: renamed from: t */
    private C0424c f2599t;

    /* JADX INFO: renamed from: u */
    AbstractC0469i f2600u;

    /* JADX INFO: renamed from: v */
    private boolean f2601v;

    /* JADX INFO: renamed from: w */
    private boolean f2602w;

    /* JADX INFO: renamed from: x */
    boolean f2603x;

    /* JADX INFO: renamed from: y */
    private boolean f2604y;

    /* JADX INFO: renamed from: z */
    private boolean f2605z;

    /* JADX INFO: renamed from: androidx.recyclerview.widget.LinearLayoutManager$a */
    static class C0422a {

        /* JADX INFO: renamed from: a */
        AbstractC0469i f2606a;

        /* JADX INFO: renamed from: b */
        int f2607b;

        /* JADX INFO: renamed from: c */
        int f2608c;

        /* JADX INFO: renamed from: d */
        boolean f2609d;

        /* JADX INFO: renamed from: e */
        boolean f2610e;

        C0422a() {
            m3198e();
        }

        /* JADX INFO: renamed from: a */
        void m3194a() {
            this.f2608c = this.f2609d ? this.f2606a.mo3904i() : this.f2606a.mo3908m();
        }

        /* JADX INFO: renamed from: b */
        public void m3195b(View view, int i) {
            if (this.f2609d) {
                this.f2608c = this.f2606a.mo3899d(view) + this.f2606a.m3910o();
            } else {
                this.f2608c = this.f2606a.mo3902g(view);
            }
            this.f2607b = i;
        }

        /* JADX INFO: renamed from: c */
        public void m3196c(View view, int i) {
            int iM3910o = this.f2606a.m3910o();
            if (iM3910o >= 0) {
                m3195b(view, i);
                return;
            }
            this.f2607b = i;
            if (this.f2609d) {
                int iMo3904i = (this.f2606a.mo3904i() - iM3910o) - this.f2606a.mo3899d(view);
                this.f2608c = this.f2606a.mo3904i() - iMo3904i;
                if (iMo3904i > 0) {
                    int iMo3900e = this.f2608c - this.f2606a.mo3900e(view);
                    int iMo3908m = this.f2606a.mo3908m();
                    int iMin = iMo3900e - (iMo3908m + Math.min(this.f2606a.mo3902g(view) - iMo3908m, 0));
                    if (iMin < 0) {
                        this.f2608c += Math.min(iMo3904i, -iMin);
                        return;
                    }
                    return;
                }
                return;
            }
            int iMo3902g = this.f2606a.mo3902g(view);
            int iMo3908m2 = iMo3902g - this.f2606a.mo3908m();
            this.f2608c = iMo3902g;
            if (iMo3908m2 > 0) {
                int iMo3904i2 = (this.f2606a.mo3904i() - Math.min(0, (this.f2606a.mo3904i() - iM3910o) - this.f2606a.mo3899d(view))) - (iMo3902g + this.f2606a.mo3900e(view));
                if (iMo3904i2 < 0) {
                    this.f2608c -= Math.min(iMo3908m2, -iMo3904i2);
                }
            }
        }

        /* JADX INFO: renamed from: d */
        boolean m3197d(View view, RecyclerView.C0454z c0454z) {
            RecyclerView.C0443o c0443o = (RecyclerView.C0443o) view.getLayoutParams();
            return !c0443o.m3572c() && c0443o.m3570a() >= 0 && c0443o.m3570a() < c0454z.m3662b();
        }

        /* JADX INFO: renamed from: e */
        void m3198e() {
            this.f2607b = -1;
            this.f2608c = Integer.MIN_VALUE;
            this.f2609d = false;
            this.f2610e = false;
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.f2607b + ", mCoordinate=" + this.f2608c + ", mLayoutFromEnd=" + this.f2609d + ", mValid=" + this.f2610e + '}';
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.LinearLayoutManager$b */
    protected static class C0423b {

        /* JADX INFO: renamed from: a */
        public int f2611a;

        /* JADX INFO: renamed from: b */
        public boolean f2612b;

        /* JADX INFO: renamed from: c */
        public boolean f2613c;

        /* JADX INFO: renamed from: d */
        public boolean f2614d;

        protected C0423b() {
        }

        /* JADX INFO: renamed from: a */
        void m3199a() {
            this.f2611a = 0;
            this.f2612b = false;
            this.f2613c = false;
            this.f2614d = false;
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.LinearLayoutManager$c */
    static class C0424c {

        /* JADX INFO: renamed from: b */
        int f2616b;

        /* JADX INFO: renamed from: c */
        int f2617c;

        /* JADX INFO: renamed from: d */
        int f2618d;

        /* JADX INFO: renamed from: e */
        int f2619e;

        /* JADX INFO: renamed from: f */
        int f2620f;

        /* JADX INFO: renamed from: g */
        int f2621g;

        /* JADX INFO: renamed from: j */
        boolean f2624j;

        /* JADX INFO: renamed from: k */
        int f2625k;

        /* JADX INFO: renamed from: m */
        boolean f2627m;

        /* JADX INFO: renamed from: a */
        boolean f2615a = true;

        /* JADX INFO: renamed from: h */
        int f2622h = 0;

        /* JADX INFO: renamed from: i */
        int f2623i = 0;

        /* JADX INFO: renamed from: l */
        List<RecyclerView.AbstractC0431c0> f2626l = null;

        C0424c() {
        }

        /* JADX INFO: renamed from: e */
        private View m3200e() {
            int size = this.f2626l.size();
            for (int i = 0; i < size; i++) {
                View view = this.f2626l.get(i).f2721a;
                RecyclerView.C0443o c0443o = (RecyclerView.C0443o) view.getLayoutParams();
                if (!c0443o.m3572c() && this.f2618d == c0443o.m3570a()) {
                    m3202b(view);
                    return view;
                }
            }
            return null;
        }

        /* JADX INFO: renamed from: a */
        public void m3201a() {
            m3202b(null);
        }

        /* JADX INFO: renamed from: b */
        public void m3202b(View view) {
            View viewM3205f = m3205f(view);
            if (viewM3205f == null) {
                this.f2618d = -1;
            } else {
                this.f2618d = ((RecyclerView.C0443o) viewM3205f.getLayoutParams()).m3570a();
            }
        }

        /* JADX INFO: renamed from: c */
        boolean m3203c(RecyclerView.C0454z c0454z) {
            int i = this.f2618d;
            return i >= 0 && i < c0454z.m3662b();
        }

        /* JADX INFO: renamed from: d */
        View m3204d(RecyclerView.C0449u c0449u) {
            if (this.f2626l != null) {
                return m3200e();
            }
            View viewM3623o = c0449u.m3623o(this.f2618d);
            this.f2618d += this.f2619e;
            return viewM3623o;
        }

        /* JADX INFO: renamed from: f */
        public View m3205f(View view) {
            int iM3570a;
            int size = this.f2626l.size();
            View view2 = null;
            int i = Integer.MAX_VALUE;
            for (int i2 = 0; i2 < size; i2++) {
                View view3 = this.f2626l.get(i2).f2721a;
                RecyclerView.C0443o c0443o = (RecyclerView.C0443o) view3.getLayoutParams();
                if (view3 != view && !c0443o.m3572c() && (iM3570a = (c0443o.m3570a() - this.f2618d) * this.f2619e) >= 0 && iM3570a < i) {
                    view2 = view3;
                    if (iM3570a == 0) {
                        break;
                    }
                    i = iM3570a;
                }
            }
            return view2;
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.LinearLayoutManager$d */
    @SuppressLint({"BanParcelableUsage"})
    public static class C0425d implements Parcelable {
        public static final Parcelable.Creator<C0425d> CREATOR = new a();

        /* JADX INFO: renamed from: b */
        int f2628b;

        /* JADX INFO: renamed from: c */
        int f2629c;

        /* JADX INFO: renamed from: d */
        boolean f2630d;

        /* JADX INFO: renamed from: androidx.recyclerview.widget.LinearLayoutManager$d$a */
        static class a implements Parcelable.Creator<C0425d> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public C0425d createFromParcel(Parcel parcel) {
                return new C0425d(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public C0425d[] newArray(int i) {
                return new C0425d[i];
            }
        }

        public C0425d() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        /* JADX INFO: renamed from: j */
        boolean m3206j() {
            return this.f2628b >= 0;
        }

        /* JADX INFO: renamed from: k */
        void m3207k() {
            this.f2628b = -1;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f2628b);
            parcel.writeInt(this.f2629c);
            parcel.writeInt(this.f2630d ? 1 : 0);
        }

        C0425d(Parcel parcel) {
            this.f2628b = parcel.readInt();
            this.f2629c = parcel.readInt();
            this.f2630d = parcel.readInt() == 1;
        }

        public C0425d(C0425d c0425d) {
            this.f2628b = c0425d.f2628b;
            this.f2629c = c0425d.f2629c;
            this.f2630d = c0425d.f2630d;
        }
    }

    public LinearLayoutManager(Context context) {
        this(context, 1, false);
    }

    /* JADX INFO: renamed from: A2 */
    private void m3129A2() {
        if (this.f2598s == 1 || !m3188q2()) {
            this.f2603x = this.f2602w;
        } else {
            this.f2603x = !this.f2602w;
        }
    }

    /* JADX INFO: renamed from: F2 */
    private boolean m3130F2(RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z, C0422a c0422a) {
        if (m3490J() == 0) {
            return false;
        }
        View viewM3506V = m3506V();
        if (viewM3506V != null && c0422a.m3197d(viewM3506V, c0454z)) {
            c0422a.m3196c(viewM3506V, m3530h0(viewM3506V));
            return true;
        }
        if (this.f2601v != this.f2604y) {
            return false;
        }
        View viewM3147i2 = c0422a.f2609d ? m3147i2(c0449u, c0454z) : m3148j2(c0449u, c0454z);
        if (viewM3147i2 == null) {
            return false;
        }
        c0422a.m3195b(viewM3147i2, m3530h0(viewM3147i2));
        if (!c0454z.m3665e() && mo3094L1()) {
            if (this.f2600u.mo3902g(viewM3147i2) >= this.f2600u.mo3904i() || this.f2600u.mo3899d(viewM3147i2) < this.f2600u.mo3908m()) {
                c0422a.f2608c = c0422a.f2609d ? this.f2600u.mo3904i() : this.f2600u.mo3908m();
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: G2 */
    private boolean m3131G2(RecyclerView.C0454z c0454z, C0422a c0422a) {
        int i;
        if (!c0454z.m3665e() && (i = this.f2590A) != -1) {
            if (i >= 0 && i < c0454z.m3662b()) {
                c0422a.f2607b = this.f2590A;
                C0425d c0425d = this.f2593D;
                if (c0425d != null && c0425d.m3206j()) {
                    boolean z = this.f2593D.f2630d;
                    c0422a.f2609d = z;
                    if (z) {
                        c0422a.f2608c = this.f2600u.mo3904i() - this.f2593D.f2629c;
                    } else {
                        c0422a.f2608c = this.f2600u.mo3908m() + this.f2593D.f2629c;
                    }
                    return true;
                }
                if (this.f2591B != Integer.MIN_VALUE) {
                    boolean z2 = this.f2603x;
                    c0422a.f2609d = z2;
                    if (z2) {
                        c0422a.f2608c = this.f2600u.mo3904i() - this.f2591B;
                    } else {
                        c0422a.f2608c = this.f2600u.mo3908m() + this.f2591B;
                    }
                    return true;
                }
                View viewMo3159C = mo3159C(this.f2590A);
                if (viewMo3159C == null) {
                    if (m3490J() > 0) {
                        c0422a.f2609d = (this.f2590A < m3530h0(m3489I(0))) == this.f2603x;
                    }
                    c0422a.m3194a();
                } else {
                    if (this.f2600u.mo3900e(viewMo3159C) > this.f2600u.mo3909n()) {
                        c0422a.m3194a();
                        return true;
                    }
                    if (this.f2600u.mo3902g(viewMo3159C) - this.f2600u.mo3908m() < 0) {
                        c0422a.f2608c = this.f2600u.mo3908m();
                        c0422a.f2609d = false;
                        return true;
                    }
                    if (this.f2600u.mo3904i() - this.f2600u.mo3899d(viewMo3159C) < 0) {
                        c0422a.f2608c = this.f2600u.mo3904i();
                        c0422a.f2609d = true;
                        return true;
                    }
                    c0422a.f2608c = c0422a.f2609d ? this.f2600u.mo3899d(viewMo3159C) + this.f2600u.m3910o() : this.f2600u.mo3902g(viewMo3159C);
                }
                return true;
            }
            this.f2590A = -1;
            this.f2591B = Integer.MIN_VALUE;
        }
        return false;
    }

    /* JADX INFO: renamed from: H2 */
    private void m3132H2(RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z, C0422a c0422a) {
        if (m3131G2(c0454z, c0422a) || m3130F2(c0449u, c0454z, c0422a)) {
            return;
        }
        c0422a.m3194a();
        c0422a.f2607b = this.f2604y ? c0454z.m3662b() - 1 : 0;
    }

    /* JADX INFO: renamed from: I2 */
    private void m3133I2(int i, int i2, boolean z, RecyclerView.C0454z c0454z) {
        int iMo3908m;
        this.f2599t.f2627m = m3193z2();
        this.f2599t.f2620f = i;
        int[] iArr = this.f2597H;
        iArr[0] = 0;
        iArr[1] = 0;
        mo3166M1(c0454z, iArr);
        int iMax = Math.max(0, this.f2597H[0]);
        int iMax2 = Math.max(0, this.f2597H[1]);
        boolean z2 = i == 1;
        this.f2599t.f2622h = z2 ? iMax2 : iMax;
        C0424c c0424c = this.f2599t;
        if (!z2) {
            iMax = iMax2;
        }
        c0424c.f2623i = iMax;
        if (z2) {
            this.f2599t.f2622h += this.f2600u.mo3905j();
            View viewM3151m2 = m3151m2();
            this.f2599t.f2619e = this.f2603x ? -1 : 1;
            C0424c c0424c2 = this.f2599t;
            int iM3530h0 = m3530h0(viewM3151m2);
            C0424c c0424c3 = this.f2599t;
            c0424c2.f2618d = iM3530h0 + c0424c3.f2619e;
            c0424c3.f2616b = this.f2600u.mo3899d(viewM3151m2);
            iMo3908m = this.f2600u.mo3899d(viewM3151m2) - this.f2600u.mo3904i();
        } else {
            View viewM3152n2 = m3152n2();
            this.f2599t.f2622h += this.f2600u.mo3908m();
            this.f2599t.f2619e = this.f2603x ? 1 : -1;
            C0424c c0424c4 = this.f2599t;
            int iM3530h02 = m3530h0(viewM3152n2);
            C0424c c0424c5 = this.f2599t;
            c0424c4.f2618d = iM3530h02 + c0424c5.f2619e;
            c0424c5.f2616b = this.f2600u.mo3902g(viewM3152n2);
            iMo3908m = (-this.f2600u.mo3902g(viewM3152n2)) + this.f2600u.mo3908m();
        }
        C0424c c0424c6 = this.f2599t;
        c0424c6.f2617c = i2;
        if (z) {
            c0424c6.f2617c = i2 - iMo3908m;
        }
        this.f2599t.f2621g = iMo3908m;
    }

    /* JADX INFO: renamed from: J2 */
    private void m3134J2(int i, int i2) {
        this.f2599t.f2617c = this.f2600u.mo3904i() - i2;
        this.f2599t.f2619e = this.f2603x ? -1 : 1;
        C0424c c0424c = this.f2599t;
        c0424c.f2618d = i;
        c0424c.f2620f = 1;
        c0424c.f2616b = i2;
        c0424c.f2621g = Integer.MIN_VALUE;
    }

    /* JADX INFO: renamed from: K2 */
    private void m3135K2(C0422a c0422a) {
        m3134J2(c0422a.f2607b, c0422a.f2608c);
    }

    /* JADX INFO: renamed from: L2 */
    private void m3136L2(int i, int i2) {
        this.f2599t.f2617c = i2 - this.f2600u.mo3908m();
        C0424c c0424c = this.f2599t;
        c0424c.f2618d = i;
        c0424c.f2619e = this.f2603x ? 1 : -1;
        C0424c c0424c2 = this.f2599t;
        c0424c2.f2620f = -1;
        c0424c2.f2616b = i2;
        c0424c2.f2621g = Integer.MIN_VALUE;
    }

    /* JADX INFO: renamed from: M2 */
    private void m3137M2(C0422a c0422a) {
        m3136L2(c0422a.f2607b, c0422a.f2608c);
    }

    /* JADX INFO: renamed from: O1 */
    private int m3138O1(RecyclerView.C0454z c0454z) {
        if (m3490J() == 0) {
            return 0;
        }
        m3169T1();
        return C0472l.m3930a(c0454z, this.f2600u, m3172Y1(!this.f2605z, true), m3171X1(!this.f2605z, true), this, this.f2605z);
    }

    /* JADX INFO: renamed from: P1 */
    private int m3139P1(RecyclerView.C0454z c0454z) {
        if (m3490J() == 0) {
            return 0;
        }
        m3169T1();
        return C0472l.m3931b(c0454z, this.f2600u, m3172Y1(!this.f2605z, true), m3171X1(!this.f2605z, true), this, this.f2605z, this.f2603x);
    }

    /* JADX INFO: renamed from: Q1 */
    private int m3140Q1(RecyclerView.C0454z c0454z) {
        if (m3490J() == 0) {
            return 0;
        }
        m3169T1();
        return C0472l.m3932c(c0454z, this.f2600u, m3172Y1(!this.f2605z, true), m3171X1(!this.f2605z, true), this, this.f2605z);
    }

    /* JADX INFO: renamed from: V1 */
    private View m3141V1() {
        return m3178d2(0, m3490J());
    }

    /* JADX INFO: renamed from: W1 */
    private View m3142W1(RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z) {
        return mo3108h2(c0449u, c0454z, 0, m3490J(), c0454z.m3662b());
    }

    /* JADX INFO: renamed from: a2 */
    private View m3143a2() {
        return m3178d2(m3490J() - 1, -1);
    }

    /* JADX INFO: renamed from: b2 */
    private View m3144b2(RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z) {
        return mo3108h2(c0449u, c0454z, m3490J() - 1, -1, c0454z.m3662b());
    }

    /* JADX INFO: renamed from: f2 */
    private View m3145f2() {
        return this.f2603x ? m3141V1() : m3143a2();
    }

    /* JADX INFO: renamed from: g2 */
    private View m3146g2() {
        return this.f2603x ? m3143a2() : m3141V1();
    }

    /* JADX INFO: renamed from: i2 */
    private View m3147i2(RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z) {
        return this.f2603x ? m3142W1(c0449u, c0454z) : m3144b2(c0449u, c0454z);
    }

    /* JADX INFO: renamed from: j2 */
    private View m3148j2(RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z) {
        return this.f2603x ? m3144b2(c0449u, c0454z) : m3142W1(c0449u, c0454z);
    }

    /* JADX INFO: renamed from: k2 */
    private int m3149k2(int i, RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z, boolean z) {
        int iMo3904i;
        int iMo3904i2 = this.f2600u.mo3904i() - i;
        if (iMo3904i2 <= 0) {
            return 0;
        }
        int i2 = -m3158B2(-iMo3904i2, c0449u, c0454z);
        int i3 = i + i2;
        if (!z || (iMo3904i = this.f2600u.mo3904i() - i3) <= 0) {
            return i2;
        }
        this.f2600u.mo3913r(iMo3904i);
        return iMo3904i + i2;
    }

    /* JADX INFO: renamed from: l2 */
    private int m3150l2(int i, RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z, boolean z) {
        int iMo3908m;
        int iMo3908m2 = i - this.f2600u.mo3908m();
        if (iMo3908m2 <= 0) {
            return 0;
        }
        int i2 = -m3158B2(iMo3908m2, c0449u, c0454z);
        int i3 = i + i2;
        if (!z || (iMo3908m = i3 - this.f2600u.mo3908m()) <= 0) {
            return i2;
        }
        this.f2600u.mo3913r(-iMo3908m);
        return i2 - iMo3908m;
    }

    /* JADX INFO: renamed from: m2 */
    private View m3151m2() {
        return m3489I(this.f2603x ? 0 : m3490J() - 1);
    }

    /* JADX INFO: renamed from: n2 */
    private View m3152n2() {
        return m3489I(this.f2603x ? m3490J() - 1 : 0);
    }

    /* JADX INFO: renamed from: t2 */
    private void m3153t2(RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z, int i, int i2) {
        if (!c0454z.m3667g() || m3490J() == 0 || c0454z.m3665e() || !mo3094L1()) {
            return;
        }
        List<RecyclerView.AbstractC0431c0> listM3619k = c0449u.m3619k();
        int size = listM3619k.size();
        int iM3530h0 = m3530h0(m3489I(0));
        int iMo3900e = 0;
        int iMo3900e2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            RecyclerView.AbstractC0431c0 abstractC0431c0 = listM3619k.get(i3);
            if (!abstractC0431c0.m3380v()) {
                if (((abstractC0431c0.m3371m() < iM3530h0) != this.f2603x ? (byte) -1 : (byte) 1) == -1) {
                    iMo3900e += this.f2600u.mo3900e(abstractC0431c0.f2721a);
                } else {
                    iMo3900e2 += this.f2600u.mo3900e(abstractC0431c0.f2721a);
                }
            }
        }
        this.f2599t.f2626l = listM3619k;
        if (iMo3900e > 0) {
            m3136L2(m3530h0(m3152n2()), i);
            C0424c c0424c = this.f2599t;
            c0424c.f2622h = iMo3900e;
            c0424c.f2617c = 0;
            c0424c.m3201a();
            m3170U1(c0449u, this.f2599t, c0454z, false);
        }
        if (iMo3900e2 > 0) {
            m3134J2(m3530h0(m3151m2()), i2);
            C0424c c0424c2 = this.f2599t;
            c0424c2.f2622h = iMo3900e2;
            c0424c2.f2617c = 0;
            c0424c2.m3201a();
            m3170U1(c0449u, this.f2599t, c0454z, false);
        }
        this.f2599t.f2626l = null;
    }

    /* JADX INFO: renamed from: v2 */
    private void m3154v2(RecyclerView.C0449u c0449u, C0424c c0424c) {
        if (!c0424c.f2615a || c0424c.f2627m) {
            return;
        }
        int i = c0424c.f2621g;
        int i2 = c0424c.f2623i;
        if (c0424c.f2620f == -1) {
            m3156x2(c0449u, i, i2);
        } else {
            m3157y2(c0449u, i, i2);
        }
    }

    /* JADX INFO: renamed from: w2 */
    private void m3155w2(RecyclerView.C0449u c0449u, int i, int i2) {
        if (i == i2) {
            return;
        }
        if (i2 <= i) {
            while (i > i2) {
                m3543n1(i, c0449u);
                i--;
            }
        } else {
            for (int i3 = i2 - 1; i3 >= i; i3--) {
                m3543n1(i3, c0449u);
            }
        }
    }

    /* JADX INFO: renamed from: x2 */
    private void m3156x2(RecyclerView.C0449u c0449u, int i, int i2) {
        int iM3490J = m3490J();
        if (i < 0) {
            return;
        }
        int iMo3903h = (this.f2600u.mo3903h() - i) + i2;
        if (this.f2603x) {
            for (int i3 = 0; i3 < iM3490J; i3++) {
                View viewM3489I = m3489I(i3);
                if (this.f2600u.mo3902g(viewM3489I) < iMo3903h || this.f2600u.mo3912q(viewM3489I) < iMo3903h) {
                    m3155w2(c0449u, 0, i3);
                    return;
                }
            }
            return;
        }
        int i4 = iM3490J - 1;
        for (int i5 = i4; i5 >= 0; i5--) {
            View viewM3489I2 = m3489I(i5);
            if (this.f2600u.mo3902g(viewM3489I2) < iMo3903h || this.f2600u.mo3912q(viewM3489I2) < iMo3903h) {
                m3155w2(c0449u, i4, i5);
                return;
            }
        }
    }

    /* JADX INFO: renamed from: y2 */
    private void m3157y2(RecyclerView.C0449u c0449u, int i, int i2) {
        if (i < 0) {
            return;
        }
        int i3 = i - i2;
        int iM3490J = m3490J();
        if (!this.f2603x) {
            for (int i4 = 0; i4 < iM3490J; i4++) {
                View viewM3489I = m3489I(i4);
                if (this.f2600u.mo3899d(viewM3489I) > i3 || this.f2600u.mo3911p(viewM3489I) > i3) {
                    m3155w2(c0449u, 0, i4);
                    return;
                }
            }
            return;
        }
        int i5 = iM3490J - 1;
        for (int i6 = i5; i6 >= 0; i6--) {
            View viewM3489I2 = m3489I(i6);
            if (this.f2600u.mo3899d(viewM3489I2) > i3 || this.f2600u.mo3911p(viewM3489I2) > i3) {
                m3155w2(c0449u, i5, i6);
                return;
            }
        }
    }

    /* JADX INFO: renamed from: B2 */
    int m3158B2(int i, RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z) {
        if (m3490J() == 0 || i == 0) {
            return 0;
        }
        m3169T1();
        this.f2599t.f2615a = true;
        int i2 = i > 0 ? 1 : -1;
        int iAbs = Math.abs(i);
        m3133I2(i2, iAbs, true, c0454z);
        C0424c c0424c = this.f2599t;
        int iM3170U1 = c0424c.f2621g + m3170U1(c0449u, c0424c, c0454z, false);
        if (iM3170U1 < 0) {
            return 0;
        }
        if (iAbs > iM3170U1) {
            i = i2 * iM3170U1;
        }
        this.f2600u.mo3913r(-i);
        this.f2599t.f2625k = i;
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: C */
    public View mo3159C(int i) {
        int iM3490J = m3490J();
        if (iM3490J == 0) {
            return null;
        }
        int iM3530h0 = i - m3530h0(m3489I(0));
        if (iM3530h0 >= 0 && iM3530h0 < iM3490J) {
            View viewM3489I = m3489I(iM3530h0);
            if (m3530h0(viewM3489I) == i) {
                return viewM3489I;
            }
        }
        return super.mo3159C(i);
    }

    /* JADX INFO: renamed from: C2 */
    public void m3160C2(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("invalid orientation:" + i);
        }
        mo3180g(null);
        if (i != this.f2598s || this.f2600u == null) {
            AbstractC0469i abstractC0469iM3897b = AbstractC0469i.m3897b(this, i);
            this.f2600u = abstractC0469iM3897b;
            this.f2594E.f2606a = abstractC0469iM3897b;
            this.f2598s = i;
            m3553t1();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: D */
    public RecyclerView.C0443o mo3089D() {
        return new RecyclerView.C0443o(-2, -2);
    }

    /* JADX INFO: renamed from: D2 */
    public void m3161D2(boolean z) {
        mo3180g(null);
        if (z == this.f2602w) {
            return;
        }
        this.f2602w = z;
        m3553t1();
    }

    /* JADX INFO: renamed from: E2 */
    public void mo3091E2(boolean z) {
        mo3180g(null);
        if (this.f2604y == z) {
            return;
        }
        this.f2604y = z;
        m3553t1();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: G1 */
    boolean mo3162G1() {
        return (m3509X() == 1073741824 || m3546p0() == 1073741824 || !m3548q0()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: I0 */
    public void mo3163I0(RecyclerView recyclerView, RecyclerView.C0449u c0449u) {
        super.mo3163I0(recyclerView, c0449u);
        if (this.f2592C) {
            m3537k1(c0449u);
            c0449u.m3611c();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: I1 */
    public void mo3164I1(RecyclerView recyclerView, RecyclerView.C0454z c0454z, int i) {
        C0467g c0467g = new C0467g(recyclerView.getContext());
        c0467g.m3653p(i);
        m3491J1(c0467g);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: J0 */
    public View mo3093J0(View view, int i, RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z) {
        int iM3167R1;
        m3129A2();
        if (m3490J() == 0 || (iM3167R1 = m3167R1(i)) == Integer.MIN_VALUE) {
            return null;
        }
        m3169T1();
        m3133I2(iM3167R1, (int) (this.f2600u.mo3909n() * 0.33333334f), false, c0454z);
        C0424c c0424c = this.f2599t;
        c0424c.f2621g = Integer.MIN_VALUE;
        c0424c.f2615a = false;
        m3170U1(c0449u, c0424c, c0454z, true);
        View viewM3146g2 = iM3167R1 == -1 ? m3146g2() : m3145f2();
        View viewM3152n2 = iM3167R1 == -1 ? m3152n2() : m3151m2();
        if (!viewM3152n2.hasFocusable()) {
            return viewM3146g2;
        }
        if (viewM3146g2 == null) {
            return null;
        }
        return viewM3152n2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: K0 */
    public void mo3165K0(AccessibilityEvent accessibilityEvent) {
        super.mo3165K0(accessibilityEvent);
        if (m3490J() > 0) {
            accessibilityEvent.setFromIndex(m3173Z1());
            accessibilityEvent.setToIndex(m3176c2());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: L1 */
    public boolean mo3094L1() {
        return this.f2593D == null && this.f2601v == this.f2604y;
    }

    /* JADX INFO: renamed from: M1 */
    protected void mo3166M1(RecyclerView.C0454z c0454z, int[] iArr) {
        int i;
        int iM3184o2 = m3184o2(c0454z);
        if (this.f2599t.f2620f == -1) {
            i = 0;
        } else {
            i = iM3184o2;
            iM3184o2 = 0;
        }
        iArr[0] = iM3184o2;
        iArr[1] = i;
    }

    /* JADX INFO: renamed from: N1 */
    void mo3096N1(RecyclerView.C0454z c0454z, C0424c c0424c, RecyclerView.AbstractC0442n.c cVar) {
        int i = c0424c.f2618d;
        if (i < 0 || i >= c0454z.m3662b()) {
            return;
        }
        cVar.mo3569a(i, Math.max(0, c0424c.f2621g));
    }

    /* JADX INFO: renamed from: R1 */
    int m3167R1(int i) {
        return i != 1 ? i != 2 ? i != 17 ? i != 33 ? i != 66 ? (i == 130 && this.f2598s == 1) ? 1 : Integer.MIN_VALUE : this.f2598s == 0 ? 1 : Integer.MIN_VALUE : this.f2598s == 1 ? -1 : Integer.MIN_VALUE : this.f2598s == 0 ? -1 : Integer.MIN_VALUE : (this.f2598s != 1 && m3188q2()) ? -1 : 1 : (this.f2598s != 1 && m3188q2()) ? 1 : -1;
    }

    /* JADX INFO: renamed from: S1 */
    C0424c m3168S1() {
        return new C0424c();
    }

    /* JADX INFO: renamed from: T1 */
    void m3169T1() {
        if (this.f2599t == null) {
            this.f2599t = m3168S1();
        }
    }

    /* JADX INFO: renamed from: U1 */
    int m3170U1(RecyclerView.C0449u c0449u, C0424c c0424c, RecyclerView.C0454z c0454z, boolean z) {
        int i = c0424c.f2617c;
        int i2 = c0424c.f2621g;
        if (i2 != Integer.MIN_VALUE) {
            if (i < 0) {
                c0424c.f2621g = i2 + i;
            }
            m3154v2(c0449u, c0424c);
        }
        int i3 = c0424c.f2617c + c0424c.f2622h;
        C0423b c0423b = this.f2595F;
        while (true) {
            if ((!c0424c.f2627m && i3 <= 0) || !c0424c.m3203c(c0454z)) {
                break;
            }
            c0423b.m3199a();
            mo3113s2(c0449u, c0454z, c0424c, c0423b);
            if (!c0423b.f2612b) {
                c0424c.f2616b += c0423b.f2611a * c0424c.f2620f;
                if (!c0423b.f2613c || c0424c.f2626l != null || !c0454z.m3665e()) {
                    int i4 = c0424c.f2617c;
                    int i5 = c0423b.f2611a;
                    c0424c.f2617c = i4 - i5;
                    i3 -= i5;
                }
                int i6 = c0424c.f2621g;
                if (i6 != Integer.MIN_VALUE) {
                    int i7 = i6 + c0423b.f2611a;
                    c0424c.f2621g = i7;
                    int i8 = c0424c.f2617c;
                    if (i8 < 0) {
                        c0424c.f2621g = i7 + i8;
                    }
                    m3154v2(c0449u, c0424c);
                }
                if (z && c0423b.f2614d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i - c0424c.f2617c;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: X0 */
    public void mo3104X0(RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z) {
        int i;
        int i2;
        int i3;
        int i4;
        int iM3149k2;
        int i5;
        View viewMo3159C;
        int iMo3902g;
        int iMo3904i;
        int i6 = -1;
        if (!(this.f2593D == null && this.f2590A == -1) && c0454z.m3662b() == 0) {
            m3537k1(c0449u);
            return;
        }
        C0425d c0425d = this.f2593D;
        if (c0425d != null && c0425d.m3206j()) {
            this.f2590A = this.f2593D.f2628b;
        }
        m3169T1();
        this.f2599t.f2615a = false;
        m3129A2();
        View viewM3506V = m3506V();
        if (!this.f2594E.f2610e || this.f2590A != -1 || this.f2593D != null) {
            this.f2594E.m3198e();
            C0422a c0422a = this.f2594E;
            c0422a.f2609d = this.f2603x ^ this.f2604y;
            m3132H2(c0449u, c0454z, c0422a);
            this.f2594E.f2610e = true;
        } else if (viewM3506V != null && (this.f2600u.mo3902g(viewM3506V) >= this.f2600u.mo3904i() || this.f2600u.mo3899d(viewM3506V) <= this.f2600u.mo3908m())) {
            this.f2594E.m3196c(viewM3506V, m3530h0(viewM3506V));
        }
        C0424c c0424c = this.f2599t;
        c0424c.f2620f = c0424c.f2625k >= 0 ? 1 : -1;
        int[] iArr = this.f2597H;
        iArr[0] = 0;
        iArr[1] = 0;
        mo3166M1(c0454z, iArr);
        int iMax = Math.max(0, this.f2597H[0]) + this.f2600u.mo3908m();
        int iMax2 = Math.max(0, this.f2597H[1]) + this.f2600u.mo3905j();
        if (c0454z.m3665e() && (i5 = this.f2590A) != -1 && this.f2591B != Integer.MIN_VALUE && (viewMo3159C = mo3159C(i5)) != null) {
            if (this.f2603x) {
                iMo3904i = this.f2600u.mo3904i() - this.f2600u.mo3899d(viewMo3159C);
                iMo3902g = this.f2591B;
            } else {
                iMo3902g = this.f2600u.mo3902g(viewMo3159C) - this.f2600u.mo3908m();
                iMo3904i = this.f2591B;
            }
            int i7 = iMo3904i - iMo3902g;
            if (i7 > 0) {
                iMax += i7;
            } else {
                iMax2 -= i7;
            }
        }
        if (!this.f2594E.f2609d ? !this.f2603x : this.f2603x) {
            i6 = 1;
        }
        mo3115u2(c0449u, c0454z, this.f2594E, i6);
        m3557w(c0449u);
        this.f2599t.f2627m = m3193z2();
        this.f2599t.f2624j = c0454z.m3665e();
        this.f2599t.f2623i = 0;
        C0422a c0422a2 = this.f2594E;
        if (c0422a2.f2609d) {
            m3137M2(c0422a2);
            C0424c c0424c2 = this.f2599t;
            c0424c2.f2622h = iMax;
            m3170U1(c0449u, c0424c2, c0454z, false);
            C0424c c0424c3 = this.f2599t;
            i2 = c0424c3.f2616b;
            int i8 = c0424c3.f2618d;
            int i9 = c0424c3.f2617c;
            if (i9 > 0) {
                iMax2 += i9;
            }
            m3135K2(this.f2594E);
            C0424c c0424c4 = this.f2599t;
            c0424c4.f2622h = iMax2;
            c0424c4.f2618d += c0424c4.f2619e;
            m3170U1(c0449u, c0424c4, c0454z, false);
            C0424c c0424c5 = this.f2599t;
            i = c0424c5.f2616b;
            int i10 = c0424c5.f2617c;
            if (i10 > 0) {
                m3136L2(i8, i2);
                C0424c c0424c6 = this.f2599t;
                c0424c6.f2622h = i10;
                m3170U1(c0449u, c0424c6, c0454z, false);
                i2 = this.f2599t.f2616b;
            }
        } else {
            m3135K2(c0422a2);
            C0424c c0424c7 = this.f2599t;
            c0424c7.f2622h = iMax2;
            m3170U1(c0449u, c0424c7, c0454z, false);
            C0424c c0424c8 = this.f2599t;
            i = c0424c8.f2616b;
            int i11 = c0424c8.f2618d;
            int i12 = c0424c8.f2617c;
            if (i12 > 0) {
                iMax += i12;
            }
            m3137M2(this.f2594E);
            C0424c c0424c9 = this.f2599t;
            c0424c9.f2622h = iMax;
            c0424c9.f2618d += c0424c9.f2619e;
            m3170U1(c0449u, c0424c9, c0454z, false);
            C0424c c0424c10 = this.f2599t;
            i2 = c0424c10.f2616b;
            int i13 = c0424c10.f2617c;
            if (i13 > 0) {
                m3134J2(i11, i);
                C0424c c0424c11 = this.f2599t;
                c0424c11.f2622h = i13;
                m3170U1(c0449u, c0424c11, c0454z, false);
                i = this.f2599t.f2616b;
            }
        }
        if (m3490J() > 0) {
            if (this.f2603x ^ this.f2604y) {
                int iM3149k22 = m3149k2(i, c0449u, c0454z, true);
                i3 = i2 + iM3149k22;
                i4 = i + iM3149k22;
                iM3149k2 = m3150l2(i3, c0449u, c0454z, false);
            } else {
                int iM3150l2 = m3150l2(i2, c0449u, c0454z, true);
                i3 = i2 + iM3150l2;
                i4 = i + iM3150l2;
                iM3149k2 = m3149k2(i4, c0449u, c0454z, false);
            }
            i2 = i3 + iM3149k2;
            i = i4 + iM3149k2;
        }
        m3153t2(c0449u, c0454z, i2, i);
        if (c0454z.m3665e()) {
            this.f2594E.m3198e();
        } else {
            this.f2600u.m3914s();
        }
        this.f2601v = this.f2604y;
    }

    /* JADX INFO: renamed from: X1 */
    View m3171X1(boolean z, boolean z2) {
        return this.f2603x ? m3179e2(0, m3490J(), z, z2) : m3179e2(m3490J() - 1, -1, z, z2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: Y0 */
    public void mo3106Y0(RecyclerView.C0454z c0454z) {
        super.mo3106Y0(c0454z);
        this.f2593D = null;
        this.f2590A = -1;
        this.f2591B = Integer.MIN_VALUE;
        this.f2594E.m3198e();
    }

    /* JADX INFO: renamed from: Y1 */
    View m3172Y1(boolean z, boolean z2) {
        return this.f2603x ? m3179e2(m3490J() - 1, -1, z, z2) : m3179e2(0, m3490J(), z, z2);
    }

    /* JADX INFO: renamed from: Z1 */
    public int m3173Z1() {
        View viewM3179e2 = m3179e2(0, m3490J(), false, true);
        if (viewM3179e2 == null) {
            return -1;
        }
        return m3530h0(viewM3179e2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0453y.b
    /* JADX INFO: renamed from: a */
    public PointF mo3174a(int i) {
        if (m3490J() == 0) {
            return null;
        }
        int i2 = (i < m3530h0(m3489I(0))) != this.f2603x ? -1 : 1;
        return this.f2598s == 0 ? new PointF(i2, CropImageView.DEFAULT_ASPECT_RATIO) : new PointF(CropImageView.DEFAULT_ASPECT_RATIO, i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: c1 */
    public void mo3175c1(Parcelable parcelable) {
        if (parcelable instanceof C0425d) {
            this.f2593D = (C0425d) parcelable;
            m3553t1();
        }
    }

    /* JADX INFO: renamed from: c2 */
    public int m3176c2() {
        View viewM3179e2 = m3179e2(m3490J() - 1, -1, false, true);
        if (viewM3179e2 == null) {
            return -1;
        }
        return m3530h0(viewM3179e2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: d1 */
    public Parcelable mo3177d1() {
        if (this.f2593D != null) {
            return new C0425d(this.f2593D);
        }
        C0425d c0425d = new C0425d();
        if (m3490J() > 0) {
            m3169T1();
            boolean z = this.f2601v ^ this.f2603x;
            c0425d.f2630d = z;
            if (z) {
                View viewM3151m2 = m3151m2();
                c0425d.f2629c = this.f2600u.mo3904i() - this.f2600u.mo3899d(viewM3151m2);
                c0425d.f2628b = m3530h0(viewM3151m2);
            } else {
                View viewM3152n2 = m3152n2();
                c0425d.f2628b = m3530h0(viewM3152n2);
                c0425d.f2629c = this.f2600u.mo3902g(viewM3152n2) - this.f2600u.mo3908m();
            }
        } else {
            c0425d.m3207k();
        }
        return c0425d;
    }

    /* JADX INFO: renamed from: d2 */
    View m3178d2(int i, int i2) {
        int i3;
        int i4;
        m3169T1();
        if ((i2 > i ? (byte) 1 : i2 < i ? (byte) -1 : (byte) 0) == 0) {
            return m3489I(i);
        }
        if (this.f2600u.mo3902g(m3489I(i)) < this.f2600u.mo3908m()) {
            i3 = 16644;
            i4 = 16388;
        } else {
            i3 = 4161;
            i4 = 4097;
        }
        return this.f2598s == 0 ? this.f2756e.m3955a(i, i2, i3, i4) : this.f2757f.m3955a(i, i2, i3, i4);
    }

    /* JADX INFO: renamed from: e2 */
    View m3179e2(int i, int i2, boolean z, boolean z2) {
        m3169T1();
        int i3 = z ? 24579 : 320;
        int i4 = z2 ? 320 : 0;
        return this.f2598s == 0 ? this.f2756e.m3955a(i, i2, i3, i4) : this.f2757f.m3955a(i, i2, i3, i4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: g */
    public void mo3180g(String str) {
        if (this.f2593D == null) {
            super.mo3180g(str);
        }
    }

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
            if (iM3530h0 >= 0 && iM3530h0 < i3) {
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
    /* JADX INFO: renamed from: k */
    public boolean mo3181k() {
        return this.f2598s == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: l */
    public boolean mo3182l() {
        return this.f2598s == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: o */
    public void mo3183o(int i, int i2, RecyclerView.C0454z c0454z, RecyclerView.AbstractC0442n.c cVar) {
        if (this.f2598s != 0) {
            i = i2;
        }
        if (m3490J() == 0 || i == 0) {
            return;
        }
        m3169T1();
        m3133I2(i > 0 ? 1 : -1, Math.abs(i), true, c0454z);
        mo3096N1(c0454z, this.f2599t, cVar);
    }

    @Deprecated
    /* JADX INFO: renamed from: o2 */
    protected int m3184o2(RecyclerView.C0454z c0454z) {
        if (c0454z.m3664d()) {
            return this.f2600u.mo3909n();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: p */
    public void mo3185p(int i, RecyclerView.AbstractC0442n.c cVar) {
        boolean z;
        int i2;
        C0425d c0425d = this.f2593D;
        if (c0425d == null || !c0425d.m3206j()) {
            m3129A2();
            z = this.f2603x;
            i2 = this.f2590A;
            if (i2 == -1) {
                i2 = z ? i - 1 : 0;
            }
        } else {
            C0425d c0425d2 = this.f2593D;
            z = c0425d2.f2630d;
            i2 = c0425d2.f2628b;
        }
        int i3 = z ? -1 : 1;
        for (int i4 = 0; i4 < this.f2596G && i2 >= 0 && i2 < i; i4++) {
            cVar.mo3569a(i2, 0);
            i2 += i3;
        }
    }

    /* JADX INFO: renamed from: p2 */
    public int m3186p2() {
        return this.f2598s;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: q */
    public int mo3187q(RecyclerView.C0454z c0454z) {
        return m3138O1(c0454z);
    }

    /* JADX INFO: renamed from: q2 */
    protected boolean m3188q2() {
        return m3511Z() == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: r */
    public int mo3111r(RecyclerView.C0454z c0454z) {
        return m3139P1(c0454z);
    }

    /* JADX INFO: renamed from: r2 */
    public boolean m3189r2() {
        return this.f2605z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: s */
    public int mo3112s(RecyclerView.C0454z c0454z) {
        return m3140Q1(c0454z);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: s0 */
    public boolean mo3190s0() {
        return true;
    }

    /* JADX INFO: renamed from: s2 */
    void mo3113s2(RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z, C0424c c0424c, C0423b c0423b) {
        int i;
        int i2;
        int i3;
        int iM3523e0;
        int iMo3901f;
        View viewM3204d = c0424c.m3204d(c0449u);
        if (viewM3204d == null) {
            c0423b.f2612b = true;
            return;
        }
        RecyclerView.C0443o c0443o = (RecyclerView.C0443o) viewM3204d.getLayoutParams();
        if (c0424c.f2626l == null) {
            if (this.f2603x == (c0424c.f2620f == -1)) {
                m3520d(viewM3204d);
            } else {
                m3522e(viewM3204d, 0);
            }
        } else {
            if (this.f2603x == (c0424c.f2620f == -1)) {
                m3515b(viewM3204d);
            } else {
                m3518c(viewM3204d, 0);
            }
        }
        m3472A0(viewM3204d, 0, 0);
        c0423b.f2611a = this.f2600u.mo3900e(viewM3204d);
        if (this.f2598s == 1) {
            if (m3188q2()) {
                iMo3901f = m3544o0() - m3525f0();
                iM3523e0 = iMo3901f - this.f2600u.mo3901f(viewM3204d);
            } else {
                iM3523e0 = m3523e0();
                iMo3901f = this.f2600u.mo3901f(viewM3204d) + iM3523e0;
            }
            if (c0424c.f2620f == -1) {
                int i4 = c0424c.f2616b;
                i3 = i4;
                i2 = iMo3901f;
                i = i4 - c0423b.f2611a;
            } else {
                int i5 = c0424c.f2616b;
                i = i5;
                i2 = iMo3901f;
                i3 = c0423b.f2611a + i5;
            }
        } else {
            int iM3527g0 = m3527g0();
            int iMo3901f2 = this.f2600u.mo3901f(viewM3204d) + iM3527g0;
            if (c0424c.f2620f == -1) {
                int i6 = c0424c.f2616b;
                i2 = i6;
                i = iM3527g0;
                i3 = iMo3901f2;
                iM3523e0 = i6 - c0423b.f2611a;
            } else {
                int i7 = c0424c.f2616b;
                i = iM3527g0;
                i2 = c0423b.f2611a + i7;
                i3 = iMo3901f2;
                iM3523e0 = i7;
            }
        }
        m3562z0(viewM3204d, iM3523e0, i, i2, i3);
        if (c0443o.m3572c() || c0443o.m3571b()) {
            c0423b.f2613c = true;
        }
        c0423b.f2614d = viewM3204d.hasFocusable();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: t */
    public int mo3191t(RecyclerView.C0454z c0454z) {
        return m3138O1(c0454z);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: u */
    public int mo3114u(RecyclerView.C0454z c0454z) {
        return m3139P1(c0454z);
    }

    /* JADX INFO: renamed from: u2 */
    void mo3115u2(RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z, C0422a c0422a, int i) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: v */
    public int mo3116v(RecyclerView.C0454z c0454z) {
        return m3140Q1(c0454z);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: w1 */
    public int mo3117w1(int i, RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z) {
        if (this.f2598s == 1) {
            return 0;
        }
        return m3158B2(i, c0449u, c0454z);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: x1 */
    public void mo3192x1(int i) {
        this.f2590A = i;
        this.f2591B = Integer.MIN_VALUE;
        C0425d c0425d = this.f2593D;
        if (c0425d != null) {
            c0425d.m3207k();
        }
        m3553t1();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: y1 */
    public int mo3118y1(int i, RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z) {
        if (this.f2598s == 0) {
            return 0;
        }
        return m3158B2(i, c0449u, c0454z);
    }

    /* JADX INFO: renamed from: z2 */
    boolean m3193z2() {
        return this.f2600u.mo3906k() == 0 && this.f2600u.mo3903h() == 0;
    }

    public LinearLayoutManager(Context context, int i, boolean z) {
        this.f2598s = 1;
        this.f2602w = false;
        this.f2603x = false;
        this.f2604y = false;
        this.f2605z = true;
        this.f2590A = -1;
        this.f2591B = Integer.MIN_VALUE;
        this.f2593D = null;
        this.f2594E = new C0422a();
        this.f2595F = new C0423b();
        this.f2596G = 2;
        this.f2597H = new int[2];
        m3160C2(i);
        m3161D2(z);
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f2598s = 1;
        this.f2602w = false;
        this.f2603x = false;
        this.f2604y = false;
        this.f2605z = true;
        this.f2590A = -1;
        this.f2591B = Integer.MIN_VALUE;
        this.f2593D = null;
        this.f2594E = new C0422a();
        this.f2595F = new C0423b();
        this.f2596G = 2;
        this.f2597H = new int[2];
        RecyclerView.AbstractC0442n.d dVarM3465i0 = RecyclerView.AbstractC0442n.m3465i0(context, attributeSet, i, i2);
        m3160C2(dVarM3465i0.f2772a);
        m3161D2(dVarM3465i0.f2774c);
        mo3091E2(dVarM3465i0.f2775d);
    }
}
