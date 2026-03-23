package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.view.p004e0.C0269c;
import androidx.recyclerview.widget.RecyclerView;
import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class StaggeredGridLayoutManager extends RecyclerView.AbstractC0442n implements RecyclerView.AbstractC0453y.b {

    /* JADX INFO: renamed from: B */
    private BitSet f2830B;

    /* JADX INFO: renamed from: G */
    private boolean f2835G;

    /* JADX INFO: renamed from: H */
    private boolean f2836H;

    /* JADX INFO: renamed from: I */
    private C0459e f2837I;

    /* JADX INFO: renamed from: J */
    private int f2838J;

    /* JADX INFO: renamed from: O */
    private int[] f2843O;

    /* JADX INFO: renamed from: t */
    C0460f[] f2846t;

    /* JADX INFO: renamed from: u */
    AbstractC0469i f2847u;

    /* JADX INFO: renamed from: v */
    AbstractC0469i f2848v;

    /* JADX INFO: renamed from: w */
    private int f2849w;

    /* JADX INFO: renamed from: x */
    private int f2850x;

    /* JADX INFO: renamed from: y */
    private final C0466f f2851y;

    /* JADX INFO: renamed from: s */
    private int f2845s = -1;

    /* JADX INFO: renamed from: z */
    boolean f2852z = false;

    /* JADX INFO: renamed from: A */
    boolean f2829A = false;

    /* JADX INFO: renamed from: C */
    int f2831C = -1;

    /* JADX INFO: renamed from: D */
    int f2832D = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: E */
    C0458d f2833E = new C0458d();

    /* JADX INFO: renamed from: F */
    private int f2834F = 2;

    /* JADX INFO: renamed from: K */
    private final Rect f2839K = new Rect();

    /* JADX INFO: renamed from: L */
    private final C0456b f2840L = new C0456b();

    /* JADX INFO: renamed from: M */
    private boolean f2841M = false;

    /* JADX INFO: renamed from: N */
    private boolean f2842N = true;

    /* JADX INFO: renamed from: P */
    private final Runnable f2844P = new RunnableC0455a();

    /* JADX INFO: renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$a */
    class RunnableC0455a implements Runnable {
        RunnableC0455a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            StaggeredGridLayoutManager.this.m3716S1();
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$b */
    class C0456b {

        /* JADX INFO: renamed from: a */
        int f2854a;

        /* JADX INFO: renamed from: b */
        int f2855b;

        /* JADX INFO: renamed from: c */
        boolean f2856c;

        /* JADX INFO: renamed from: d */
        boolean f2857d;

        /* JADX INFO: renamed from: e */
        boolean f2858e;

        /* JADX INFO: renamed from: f */
        int[] f2859f;

        C0456b() {
            m3728c();
        }

        /* JADX INFO: renamed from: a */
        void m3726a() {
            this.f2855b = this.f2856c ? StaggeredGridLayoutManager.this.f2847u.mo3904i() : StaggeredGridLayoutManager.this.f2847u.mo3908m();
        }

        /* JADX INFO: renamed from: b */
        void m3727b(int i) {
            if (this.f2856c) {
                this.f2855b = StaggeredGridLayoutManager.this.f2847u.mo3904i() - i;
            } else {
                this.f2855b = StaggeredGridLayoutManager.this.f2847u.mo3908m() + i;
            }
        }

        /* JADX INFO: renamed from: c */
        void m3728c() {
            this.f2854a = -1;
            this.f2855b = Integer.MIN_VALUE;
            this.f2856c = false;
            this.f2857d = false;
            this.f2858e = false;
            int[] iArr = this.f2859f;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }

        /* JADX INFO: renamed from: d */
        void m3729d(C0460f[] c0460fArr) {
            int length = c0460fArr.length;
            int[] iArr = this.f2859f;
            if (iArr == null || iArr.length < length) {
                this.f2859f = new int[StaggeredGridLayoutManager.this.f2846t.length];
            }
            for (int i = 0; i < length; i++) {
                this.f2859f[i] = c0460fArr[i].m3769p(Integer.MIN_VALUE);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$c */
    public static class C0457c extends RecyclerView.C0443o {

        /* JADX INFO: renamed from: e */
        C0460f f2861e;

        /* JADX INFO: renamed from: f */
        boolean f2862f;

        public C0457c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        /* JADX INFO: renamed from: e */
        public final int m3730e() {
            C0460f c0460f = this.f2861e;
            if (c0460f == null) {
                return -1;
            }
            return c0460f.f2883e;
        }

        /* JADX INFO: renamed from: f */
        public boolean m3731f() {
            return this.f2862f;
        }

        public C0457c(int i, int i2) {
            super(i, i2);
        }

        public C0457c(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public C0457c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$e */
    @SuppressLint({"BanParcelableUsage"})
    public static class C0459e implements Parcelable {
        public static final Parcelable.Creator<C0459e> CREATOR = new a();

        /* JADX INFO: renamed from: b */
        int f2869b;

        /* JADX INFO: renamed from: c */
        int f2870c;

        /* JADX INFO: renamed from: d */
        int f2871d;

        /* JADX INFO: renamed from: e */
        int[] f2872e;

        /* JADX INFO: renamed from: f */
        int f2873f;

        /* JADX INFO: renamed from: g */
        int[] f2874g;

        /* JADX INFO: renamed from: h */
        List<C0458d.a> f2875h;

        /* JADX INFO: renamed from: i */
        boolean f2876i;

        /* JADX INFO: renamed from: j */
        boolean f2877j;

        /* JADX INFO: renamed from: k */
        boolean f2878k;

        /* JADX INFO: renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$e$a */
        static class a implements Parcelable.Creator<C0459e> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public C0459e createFromParcel(Parcel parcel) {
                return new C0459e(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public C0459e[] newArray(int i) {
                return new C0459e[i];
            }
        }

        public C0459e() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        /* JADX INFO: renamed from: j */
        void m3750j() {
            this.f2872e = null;
            this.f2871d = 0;
            this.f2869b = -1;
            this.f2870c = -1;
        }

        /* JADX INFO: renamed from: k */
        void m3751k() {
            this.f2872e = null;
            this.f2871d = 0;
            this.f2873f = 0;
            this.f2874g = null;
            this.f2875h = null;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f2869b);
            parcel.writeInt(this.f2870c);
            parcel.writeInt(this.f2871d);
            if (this.f2871d > 0) {
                parcel.writeIntArray(this.f2872e);
            }
            parcel.writeInt(this.f2873f);
            if (this.f2873f > 0) {
                parcel.writeIntArray(this.f2874g);
            }
            parcel.writeInt(this.f2876i ? 1 : 0);
            parcel.writeInt(this.f2877j ? 1 : 0);
            parcel.writeInt(this.f2878k ? 1 : 0);
            parcel.writeList(this.f2875h);
        }

        C0459e(Parcel parcel) {
            this.f2869b = parcel.readInt();
            this.f2870c = parcel.readInt();
            int i = parcel.readInt();
            this.f2871d = i;
            if (i > 0) {
                int[] iArr = new int[i];
                this.f2872e = iArr;
                parcel.readIntArray(iArr);
            }
            int i2 = parcel.readInt();
            this.f2873f = i2;
            if (i2 > 0) {
                int[] iArr2 = new int[i2];
                this.f2874g = iArr2;
                parcel.readIntArray(iArr2);
            }
            this.f2876i = parcel.readInt() == 1;
            this.f2877j = parcel.readInt() == 1;
            this.f2878k = parcel.readInt() == 1;
            this.f2875h = parcel.readArrayList(C0458d.a.class.getClassLoader());
        }

        public C0459e(C0459e c0459e) {
            this.f2871d = c0459e.f2871d;
            this.f2869b = c0459e.f2869b;
            this.f2870c = c0459e.f2870c;
            this.f2872e = c0459e.f2872e;
            this.f2873f = c0459e.f2873f;
            this.f2874g = c0459e.f2874g;
            this.f2876i = c0459e.f2876i;
            this.f2877j = c0459e.f2877j;
            this.f2878k = c0459e.f2878k;
            this.f2875h = c0459e.f2875h;
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$f */
    class C0460f {

        /* JADX INFO: renamed from: a */
        ArrayList<View> f2879a = new ArrayList<>();

        /* JADX INFO: renamed from: b */
        int f2880b = Integer.MIN_VALUE;

        /* JADX INFO: renamed from: c */
        int f2881c = Integer.MIN_VALUE;

        /* JADX INFO: renamed from: d */
        int f2882d = 0;

        /* JADX INFO: renamed from: e */
        final int f2883e;

        C0460f(int i) {
            this.f2883e = i;
        }

        /* JADX INFO: renamed from: a */
        void m3754a(View view) {
            C0457c c0457cM3767n = m3767n(view);
            c0457cM3767n.f2861e = this;
            this.f2879a.add(view);
            this.f2881c = Integer.MIN_VALUE;
            if (this.f2879a.size() == 1) {
                this.f2880b = Integer.MIN_VALUE;
            }
            if (c0457cM3767n.m3572c() || c0457cM3767n.m3571b()) {
                this.f2882d += StaggeredGridLayoutManager.this.f2847u.mo3900e(view);
            }
        }

        /* JADX INFO: renamed from: b */
        void m3755b(boolean z, int i) {
            int iM3765l = z ? m3765l(Integer.MIN_VALUE) : m3769p(Integer.MIN_VALUE);
            m3758e();
            if (iM3765l == Integer.MIN_VALUE) {
                return;
            }
            if (!z || iM3765l >= StaggeredGridLayoutManager.this.f2847u.mo3904i()) {
                if (z || iM3765l <= StaggeredGridLayoutManager.this.f2847u.mo3908m()) {
                    if (i != Integer.MIN_VALUE) {
                        iM3765l += i;
                    }
                    this.f2881c = iM3765l;
                    this.f2880b = iM3765l;
                }
            }
        }

        /* JADX INFO: renamed from: c */
        void m3756c() {
            C0458d.a aVarM3740f;
            ArrayList<View> arrayList = this.f2879a;
            View view = arrayList.get(arrayList.size() - 1);
            C0457c c0457cM3767n = m3767n(view);
            this.f2881c = StaggeredGridLayoutManager.this.f2847u.mo3899d(view);
            if (c0457cM3767n.f2862f && (aVarM3740f = StaggeredGridLayoutManager.this.f2833E.m3740f(c0457cM3767n.m3570a())) != null && aVarM3740f.f2866c == 1) {
                this.f2881c += aVarM3740f.m3747j(this.f2883e);
            }
        }

        /* JADX INFO: renamed from: d */
        void m3757d() {
            C0458d.a aVarM3740f;
            View view = this.f2879a.get(0);
            C0457c c0457cM3767n = m3767n(view);
            this.f2880b = StaggeredGridLayoutManager.this.f2847u.mo3902g(view);
            if (c0457cM3767n.f2862f && (aVarM3740f = StaggeredGridLayoutManager.this.f2833E.m3740f(c0457cM3767n.m3570a())) != null && aVarM3740f.f2866c == -1) {
                this.f2880b -= aVarM3740f.m3747j(this.f2883e);
            }
        }

        /* JADX INFO: renamed from: e */
        void m3758e() {
            this.f2879a.clear();
            m3770q();
            this.f2882d = 0;
        }

        /* JADX INFO: renamed from: f */
        public int m3759f() {
            return StaggeredGridLayoutManager.this.f2852z ? m3762i(this.f2879a.size() - 1, -1, true) : m3762i(0, this.f2879a.size(), true);
        }

        /* JADX INFO: renamed from: g */
        public int m3760g() {
            return StaggeredGridLayoutManager.this.f2852z ? m3762i(0, this.f2879a.size(), true) : m3762i(this.f2879a.size() - 1, -1, true);
        }

        /* JADX INFO: renamed from: h */
        int m3761h(int i, int i2, boolean z, boolean z2, boolean z3) {
            int iMo3908m = StaggeredGridLayoutManager.this.f2847u.mo3908m();
            int iMo3904i = StaggeredGridLayoutManager.this.f2847u.mo3904i();
            int i3 = i2 > i ? 1 : -1;
            while (i != i2) {
                View view = this.f2879a.get(i);
                int iMo3902g = StaggeredGridLayoutManager.this.f2847u.mo3902g(view);
                int iMo3899d = StaggeredGridLayoutManager.this.f2847u.mo3899d(view);
                boolean z4 = false;
                boolean z5 = !z3 ? iMo3902g >= iMo3904i : iMo3902g > iMo3904i;
                if (!z3 ? iMo3899d > iMo3908m : iMo3899d >= iMo3908m) {
                    z4 = true;
                }
                if (z5 && z4) {
                    if (z && z2) {
                        if (iMo3902g >= iMo3908m && iMo3899d <= iMo3904i) {
                            return StaggeredGridLayoutManager.this.m3530h0(view);
                        }
                    } else {
                        if (z2) {
                            return StaggeredGridLayoutManager.this.m3530h0(view);
                        }
                        if (iMo3902g < iMo3908m || iMo3899d > iMo3904i) {
                            return StaggeredGridLayoutManager.this.m3530h0(view);
                        }
                    }
                }
                i += i3;
            }
            return -1;
        }

        /* JADX INFO: renamed from: i */
        int m3762i(int i, int i2, boolean z) {
            return m3761h(i, i2, false, false, z);
        }

        /* JADX INFO: renamed from: j */
        public int m3763j() {
            return this.f2882d;
        }

        /* JADX INFO: renamed from: k */
        int m3764k() {
            int i = this.f2881c;
            if (i != Integer.MIN_VALUE) {
                return i;
            }
            m3756c();
            return this.f2881c;
        }

        /* JADX INFO: renamed from: l */
        int m3765l(int i) {
            int i2 = this.f2881c;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.f2879a.size() == 0) {
                return i;
            }
            m3756c();
            return this.f2881c;
        }

        /* JADX INFO: renamed from: m */
        public View m3766m(int i, int i2) {
            View view = null;
            if (i2 != -1) {
                int size = this.f2879a.size() - 1;
                while (size >= 0) {
                    View view2 = this.f2879a.get(size);
                    StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager.f2852z && staggeredGridLayoutManager.m3530h0(view2) >= i) {
                        break;
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager2 = StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager2.f2852z && staggeredGridLayoutManager2.m3530h0(view2) <= i) || !view2.hasFocusable()) {
                        break;
                    }
                    size--;
                    view = view2;
                }
            } else {
                int size2 = this.f2879a.size();
                int i3 = 0;
                while (i3 < size2) {
                    View view3 = this.f2879a.get(i3);
                    StaggeredGridLayoutManager staggeredGridLayoutManager3 = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager3.f2852z && staggeredGridLayoutManager3.m3530h0(view3) <= i) {
                        break;
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager4 = StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager4.f2852z && staggeredGridLayoutManager4.m3530h0(view3) >= i) || !view3.hasFocusable()) {
                        break;
                    }
                    i3++;
                    view = view3;
                }
            }
            return view;
        }

        /* JADX INFO: renamed from: n */
        C0457c m3767n(View view) {
            return (C0457c) view.getLayoutParams();
        }

        /* JADX INFO: renamed from: o */
        int m3768o() {
            int i = this.f2880b;
            if (i != Integer.MIN_VALUE) {
                return i;
            }
            m3757d();
            return this.f2880b;
        }

        /* JADX INFO: renamed from: p */
        int m3769p(int i) {
            int i2 = this.f2880b;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.f2879a.size() == 0) {
                return i;
            }
            m3757d();
            return this.f2880b;
        }

        /* JADX INFO: renamed from: q */
        void m3770q() {
            this.f2880b = Integer.MIN_VALUE;
            this.f2881c = Integer.MIN_VALUE;
        }

        /* JADX INFO: renamed from: r */
        void m3771r(int i) {
            int i2 = this.f2880b;
            if (i2 != Integer.MIN_VALUE) {
                this.f2880b = i2 + i;
            }
            int i3 = this.f2881c;
            if (i3 != Integer.MIN_VALUE) {
                this.f2881c = i3 + i;
            }
        }

        /* JADX INFO: renamed from: s */
        void m3772s() {
            int size = this.f2879a.size();
            View viewRemove = this.f2879a.remove(size - 1);
            C0457c c0457cM3767n = m3767n(viewRemove);
            c0457cM3767n.f2861e = null;
            if (c0457cM3767n.m3572c() || c0457cM3767n.m3571b()) {
                this.f2882d -= StaggeredGridLayoutManager.this.f2847u.mo3900e(viewRemove);
            }
            if (size == 1) {
                this.f2880b = Integer.MIN_VALUE;
            }
            this.f2881c = Integer.MIN_VALUE;
        }

        /* JADX INFO: renamed from: t */
        void m3773t() {
            View viewRemove = this.f2879a.remove(0);
            C0457c c0457cM3767n = m3767n(viewRemove);
            c0457cM3767n.f2861e = null;
            if (this.f2879a.size() == 0) {
                this.f2881c = Integer.MIN_VALUE;
            }
            if (c0457cM3767n.m3572c() || c0457cM3767n.m3571b()) {
                this.f2882d -= StaggeredGridLayoutManager.this.f2847u.mo3900e(viewRemove);
            }
            this.f2880b = Integer.MIN_VALUE;
        }

        /* JADX INFO: renamed from: u */
        void m3774u(View view) {
            C0457c c0457cM3767n = m3767n(view);
            c0457cM3767n.f2861e = this;
            this.f2879a.add(0, view);
            this.f2880b = Integer.MIN_VALUE;
            if (this.f2879a.size() == 1) {
                this.f2881c = Integer.MIN_VALUE;
            }
            if (c0457cM3767n.m3572c() || c0457cM3767n.m3571b()) {
                this.f2882d += StaggeredGridLayoutManager.this.f2847u.mo3900e(view);
            }
        }

        /* JADX INFO: renamed from: v */
        void m3775v(int i) {
            this.f2880b = i;
            this.f2881c = i;
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        RecyclerView.AbstractC0442n.d dVarM3465i0 = RecyclerView.AbstractC0442n.m3465i0(context, attributeSet, i, i2);
        m3708H2(dVarM3465i0.f2772a);
        m3710J2(dVarM3465i0.f2773b);
        m3709I2(dVarM3465i0.f2774c);
        this.f2851y = new C0466f();
        m3690a2();
    }

    /* JADX INFO: renamed from: A2 */
    private void m3668A2(RecyclerView.C0449u c0449u, C0466f c0466f) {
        if (!c0466f.f3004a || c0466f.f3012i) {
            return;
        }
        if (c0466f.f3005b == 0) {
            if (c0466f.f3008e == -1) {
                m3669B2(c0449u, c0466f.f3010g);
                return;
            } else {
                m3670C2(c0449u, c0466f.f3009f);
                return;
            }
        }
        if (c0466f.f3008e != -1) {
            int iM3698n2 = m3698n2(c0466f.f3010g) - c0466f.f3010g;
            m3670C2(c0449u, iM3698n2 < 0 ? c0466f.f3009f : Math.min(iM3698n2, c0466f.f3005b) + c0466f.f3009f);
        } else {
            int i = c0466f.f3009f;
            int iM3697m2 = i - m3697m2(i);
            m3669B2(c0449u, iM3697m2 < 0 ? c0466f.f3010g : c0466f.f3010g - Math.min(iM3697m2, c0466f.f3005b));
        }
    }

    /* JADX INFO: renamed from: B2 */
    private void m3669B2(RecyclerView.C0449u c0449u, int i) {
        for (int iM3490J = m3490J() - 1; iM3490J >= 0; iM3490J--) {
            View viewM3489I = m3489I(iM3490J);
            if (this.f2847u.mo3902g(viewM3489I) < i || this.f2847u.mo3912q(viewM3489I) < i) {
                return;
            }
            C0457c c0457c = (C0457c) viewM3489I.getLayoutParams();
            if (c0457c.f2862f) {
                for (int i2 = 0; i2 < this.f2845s; i2++) {
                    if (this.f2846t[i2].f2879a.size() == 1) {
                        return;
                    }
                }
                for (int i3 = 0; i3 < this.f2845s; i3++) {
                    this.f2846t[i3].m3772s();
                }
            } else if (c0457c.f2861e.f2879a.size() == 1) {
                return;
            } else {
                c0457c.f2861e.m3772s();
            }
            m3541m1(viewM3489I, c0449u);
        }
    }

    /* JADX INFO: renamed from: C2 */
    private void m3670C2(RecyclerView.C0449u c0449u, int i) {
        while (m3490J() > 0) {
            View viewM3489I = m3489I(0);
            if (this.f2847u.mo3899d(viewM3489I) > i || this.f2847u.mo3911p(viewM3489I) > i) {
                return;
            }
            C0457c c0457c = (C0457c) viewM3489I.getLayoutParams();
            if (c0457c.f2862f) {
                for (int i2 = 0; i2 < this.f2845s; i2++) {
                    if (this.f2846t[i2].f2879a.size() == 1) {
                        return;
                    }
                }
                for (int i3 = 0; i3 < this.f2845s; i3++) {
                    this.f2846t[i3].m3773t();
                }
            } else if (c0457c.f2861e.f2879a.size() == 1) {
                return;
            } else {
                c0457c.f2861e.m3773t();
            }
            m3541m1(viewM3489I, c0449u);
        }
    }

    /* JADX INFO: renamed from: D2 */
    private void m3671D2() {
        if (this.f2848v.mo3906k() == 1073741824) {
            return;
        }
        float fMax = CropImageView.DEFAULT_ASPECT_RATIO;
        int iM3490J = m3490J();
        for (int i = 0; i < iM3490J; i++) {
            View viewM3489I = m3489I(i);
            float fMo3900e = this.f2848v.mo3900e(viewM3489I);
            if (fMo3900e >= fMax) {
                if (((C0457c) viewM3489I.getLayoutParams()).m3731f()) {
                    fMo3900e = (fMo3900e * 1.0f) / this.f2845s;
                }
                fMax = Math.max(fMax, fMo3900e);
            }
        }
        int i2 = this.f2850x;
        int iRound = Math.round(fMax * this.f2845s);
        if (this.f2848v.mo3906k() == Integer.MIN_VALUE) {
            iRound = Math.min(iRound, this.f2848v.mo3909n());
        }
        m3715P2(iRound);
        if (this.f2850x == i2) {
            return;
        }
        for (int i3 = 0; i3 < iM3490J; i3++) {
            View viewM3489I2 = m3489I(i3);
            C0457c c0457c = (C0457c) viewM3489I2.getLayoutParams();
            if (!c0457c.f2862f) {
                if (m3724t2() && this.f2849w == 1) {
                    int i4 = this.f2845s;
                    int i5 = c0457c.f2861e.f2883e;
                    viewM3489I2.offsetLeftAndRight(((-((i4 - 1) - i5)) * this.f2850x) - ((-((i4 - 1) - i5)) * i2));
                } else {
                    int i6 = c0457c.f2861e.f2883e;
                    int i7 = this.f2850x * i6;
                    int i8 = i6 * i2;
                    if (this.f2849w == 1) {
                        viewM3489I2.offsetLeftAndRight(i7 - i8);
                    } else {
                        viewM3489I2.offsetTopAndBottom(i7 - i8);
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: E2 */
    private void m3672E2() {
        if (this.f2849w == 1 || !m3724t2()) {
            this.f2829A = this.f2852z;
        } else {
            this.f2829A = !this.f2852z;
        }
    }

    /* JADX INFO: renamed from: G2 */
    private void m3673G2(int i) {
        C0466f c0466f = this.f2851y;
        c0466f.f3008e = i;
        c0466f.f3007d = this.f2829A != (i == -1) ? -1 : 1;
    }

    /* JADX INFO: renamed from: K2 */
    private void m3674K2(int i, int i2) {
        for (int i3 = 0; i3 < this.f2845s; i3++) {
            if (!this.f2846t[i3].f2879a.isEmpty()) {
                m3680Q2(this.f2846t[i3], i, i2);
            }
        }
    }

    /* JADX INFO: renamed from: L2 */
    private boolean m3675L2(RecyclerView.C0454z c0454z, C0456b c0456b) {
        c0456b.f2854a = this.f2835G ? m3693g2(c0454z.m3662b()) : m3692c2(c0454z.m3662b());
        c0456b.f2855b = Integer.MIN_VALUE;
        return true;
    }

    /* JADX INFO: renamed from: M1 */
    private void m3676M1(View view) {
        for (int i = this.f2845s - 1; i >= 0; i--) {
            this.f2846t[i].m3754a(view);
        }
    }

    /* JADX INFO: renamed from: N1 */
    private void m3677N1(C0456b c0456b) {
        C0459e c0459e = this.f2837I;
        int i = c0459e.f2871d;
        if (i > 0) {
            if (i == this.f2845s) {
                for (int i2 = 0; i2 < this.f2845s; i2++) {
                    this.f2846t[i2].m3758e();
                    C0459e c0459e2 = this.f2837I;
                    int iMo3904i = c0459e2.f2872e[i2];
                    if (iMo3904i != Integer.MIN_VALUE) {
                        iMo3904i += c0459e2.f2877j ? this.f2847u.mo3904i() : this.f2847u.mo3908m();
                    }
                    this.f2846t[i2].m3775v(iMo3904i);
                }
            } else {
                c0459e.m3751k();
                C0459e c0459e3 = this.f2837I;
                c0459e3.f2869b = c0459e3.f2870c;
            }
        }
        C0459e c0459e4 = this.f2837I;
        this.f2836H = c0459e4.f2878k;
        m3709I2(c0459e4.f2876i);
        m3672E2();
        C0459e c0459e5 = this.f2837I;
        int i3 = c0459e5.f2869b;
        if (i3 != -1) {
            this.f2831C = i3;
            c0456b.f2856c = c0459e5.f2877j;
        } else {
            c0456b.f2856c = this.f2829A;
        }
        C0459e c0459e6 = this.f2837I;
        if (c0459e6.f2873f > 1) {
            C0458d c0458d = this.f2833E;
            c0458d.f2863a = c0459e6.f2874g;
            c0458d.f2864b = c0459e6.f2875h;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004d  */
    /* JADX INFO: renamed from: O2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m3678O2(int i, RecyclerView.C0454z c0454z) {
        int iMo3909n;
        int iMo3909n2;
        int iM3663c;
        C0466f c0466f = this.f2851y;
        boolean z = false;
        c0466f.f3005b = 0;
        c0466f.f3006c = i;
        if (!m3559x0() || (iM3663c = c0454z.m3663c()) == -1) {
            iMo3909n = 0;
        } else {
            if (this.f2829A != (iM3663c < i)) {
                iMo3909n2 = this.f2847u.mo3909n();
                iMo3909n = 0;
                if (m3494M()) {
                    this.f2851y.f3010g = this.f2847u.mo3903h() + iMo3909n;
                    this.f2851y.f3009f = -iMo3909n2;
                } else {
                    this.f2851y.f3009f = this.f2847u.mo3908m() - iMo3909n2;
                    this.f2851y.f3010g = this.f2847u.mo3904i() + iMo3909n;
                }
                C0466f c0466f2 = this.f2851y;
                c0466f2.f3011h = false;
                c0466f2.f3004a = true;
                if (this.f2847u.mo3906k() == 0 && this.f2847u.mo3903h() == 0) {
                    z = true;
                }
                c0466f2.f3012i = z;
            }
            iMo3909n = this.f2847u.mo3909n();
        }
        iMo3909n2 = 0;
        if (m3494M()) {
        }
        C0466f c0466f22 = this.f2851y;
        c0466f22.f3011h = false;
        c0466f22.f3004a = true;
        if (this.f2847u.mo3906k() == 0) {
            z = true;
        }
        c0466f22.f3012i = z;
    }

    /* JADX INFO: renamed from: Q1 */
    private void m3679Q1(View view, C0457c c0457c, C0466f c0466f) {
        if (c0466f.f3008e == 1) {
            if (c0457c.f2862f) {
                m3676M1(view);
                return;
            } else {
                c0457c.f2861e.m3754a(view);
                return;
            }
        }
        if (c0457c.f2862f) {
            m3706z2(view);
        } else {
            c0457c.f2861e.m3774u(view);
        }
    }

    /* JADX INFO: renamed from: Q2 */
    private void m3680Q2(C0460f c0460f, int i, int i2) {
        int iM3763j = c0460f.m3763j();
        if (i == -1) {
            if (c0460f.m3768o() + iM3763j <= i2) {
                this.f2830B.set(c0460f.f2883e, false);
            }
        } else if (c0460f.m3764k() - iM3763j >= i2) {
            this.f2830B.set(c0460f.f2883e, false);
        }
    }

    /* JADX INFO: renamed from: R1 */
    private int m3681R1(int i) {
        if (m3490J() == 0) {
            return this.f2829A ? 1 : -1;
        }
        return (i < m3720j2()) != this.f2829A ? -1 : 1;
    }

    /* JADX INFO: renamed from: R2 */
    private int m3682R2(int i, int i2, int i3) {
        if (i2 == 0 && i3 == 0) {
            return i;
        }
        int mode = View.MeasureSpec.getMode(i);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - i2) - i3), mode) : i;
    }

    /* JADX INFO: renamed from: T1 */
    private boolean m3683T1(C0460f c0460f) {
        if (this.f2829A) {
            if (c0460f.m3764k() < this.f2847u.mo3904i()) {
                ArrayList<View> arrayList = c0460f.f2879a;
                return !c0460f.m3767n(arrayList.get(arrayList.size() - 1)).f2862f;
            }
        } else if (c0460f.m3768o() > this.f2847u.mo3908m()) {
            return !c0460f.m3767n(c0460f.f2879a.get(0)).f2862f;
        }
        return false;
    }

    /* JADX INFO: renamed from: U1 */
    private int m3684U1(RecyclerView.C0454z c0454z) {
        if (m3490J() == 0) {
            return 0;
        }
        return C0472l.m3930a(c0454z, this.f2847u, m3718e2(!this.f2842N), m3717d2(!this.f2842N), this, this.f2842N);
    }

    /* JADX INFO: renamed from: V1 */
    private int m3685V1(RecyclerView.C0454z c0454z) {
        if (m3490J() == 0) {
            return 0;
        }
        return C0472l.m3931b(c0454z, this.f2847u, m3718e2(!this.f2842N), m3717d2(!this.f2842N), this, this.f2842N, this.f2829A);
    }

    /* JADX INFO: renamed from: W1 */
    private int m3686W1(RecyclerView.C0454z c0454z) {
        if (m3490J() == 0) {
            return 0;
        }
        return C0472l.m3932c(c0454z, this.f2847u, m3718e2(!this.f2842N), m3717d2(!this.f2842N), this, this.f2842N);
    }

    /* JADX INFO: renamed from: X1 */
    private int m3687X1(int i) {
        return i != 1 ? i != 2 ? i != 17 ? i != 33 ? i != 66 ? (i == 130 && this.f2849w == 1) ? 1 : Integer.MIN_VALUE : this.f2849w == 0 ? 1 : Integer.MIN_VALUE : this.f2849w == 1 ? -1 : Integer.MIN_VALUE : this.f2849w == 0 ? -1 : Integer.MIN_VALUE : (this.f2849w != 1 && m3724t2()) ? -1 : 1 : (this.f2849w != 1 && m3724t2()) ? 1 : -1;
    }

    /* JADX INFO: renamed from: Y1 */
    private C0458d.a m3688Y1(int i) {
        C0458d.a aVar = new C0458d.a();
        aVar.f2867d = new int[this.f2845s];
        for (int i2 = 0; i2 < this.f2845s; i2++) {
            aVar.f2867d[i2] = i - this.f2846t[i2].m3765l(i);
        }
        return aVar;
    }

    /* JADX INFO: renamed from: Z1 */
    private C0458d.a m3689Z1(int i) {
        C0458d.a aVar = new C0458d.a();
        aVar.f2867d = new int[this.f2845s];
        for (int i2 = 0; i2 < this.f2845s; i2++) {
            aVar.f2867d[i2] = this.f2846t[i2].m3769p(i) - i;
        }
        return aVar;
    }

    /* JADX INFO: renamed from: a2 */
    private void m3690a2() {
        this.f2847u = AbstractC0469i.m3897b(this, this.f2849w);
        this.f2848v = AbstractC0469i.m3897b(this, 1 - this.f2849w);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX INFO: renamed from: b2 */
    private int m3691b2(RecyclerView.C0449u c0449u, C0466f c0466f, RecyclerView.C0454z c0454z) {
        int i;
        C0460f c0460fM3700p2;
        int iMo3900e;
        int i2;
        int iMo3900e2;
        int iMo3900e3;
        ?? r9 = 0;
        this.f2830B.set(0, this.f2845s, true);
        if (this.f2851y.f3012i) {
            i = c0466f.f3008e == 1 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        } else {
            i = c0466f.f3008e == 1 ? c0466f.f3010g + c0466f.f3005b : c0466f.f3009f - c0466f.f3005b;
        }
        m3674K2(c0466f.f3008e, i);
        int iMo3904i = this.f2829A ? this.f2847u.mo3904i() : this.f2847u.mo3908m();
        boolean z = false;
        while (c0466f.m3877a(c0454z) && (this.f2851y.f3012i || !this.f2830B.isEmpty())) {
            View viewM3878b = c0466f.m3878b(c0449u);
            C0457c c0457c = (C0457c) viewM3878b.getLayoutParams();
            int iM3570a = c0457c.m3570a();
            int iM3741g = this.f2833E.m3741g(iM3570a);
            boolean z2 = iM3741g == -1;
            if (z2) {
                c0460fM3700p2 = c0457c.f2862f ? this.f2846t[r9] : m3700p2(c0466f);
                this.f2833E.m3745n(iM3570a, c0460fM3700p2);
            } else {
                c0460fM3700p2 = this.f2846t[iM3741g];
            }
            C0460f c0460f = c0460fM3700p2;
            c0457c.f2861e = c0460f;
            if (c0466f.f3008e == 1) {
                m3520d(viewM3878b);
            } else {
                m3522e(viewM3878b, r9);
            }
            m3703v2(viewM3878b, c0457c, r9);
            if (c0466f.f3008e == 1) {
                int iM3696l2 = c0457c.f2862f ? m3696l2(iMo3904i) : c0460f.m3765l(iMo3904i);
                int iMo3900e4 = this.f2847u.mo3900e(viewM3878b) + iM3696l2;
                if (z2 && c0457c.f2862f) {
                    C0458d.a aVarM3688Y1 = m3688Y1(iM3696l2);
                    aVarM3688Y1.f2866c = -1;
                    aVarM3688Y1.f2865b = iM3570a;
                    this.f2833E.m3735a(aVarM3688Y1);
                }
                i2 = iMo3900e4;
                iMo3900e = iM3696l2;
            } else {
                int iM3699o2 = c0457c.f2862f ? m3699o2(iMo3904i) : c0460f.m3769p(iMo3904i);
                iMo3900e = iM3699o2 - this.f2847u.mo3900e(viewM3878b);
                if (z2 && c0457c.f2862f) {
                    C0458d.a aVarM3689Z1 = m3689Z1(iM3699o2);
                    aVarM3689Z1.f2866c = 1;
                    aVarM3689Z1.f2865b = iM3570a;
                    this.f2833E.m3735a(aVarM3689Z1);
                }
                i2 = iM3699o2;
            }
            if (c0457c.f2862f && c0466f.f3007d == -1) {
                if (z2) {
                    this.f2841M = true;
                } else {
                    if (!(c0466f.f3008e == 1 ? m3713O1() : m3714P1())) {
                        C0458d.a aVarM3740f = this.f2833E.m3740f(iM3570a);
                        if (aVarM3740f != null) {
                            aVarM3740f.f2868e = true;
                        }
                        this.f2841M = true;
                    }
                }
            }
            m3679Q1(viewM3878b, c0457c, c0466f);
            if (m3724t2() && this.f2849w == 1) {
                int iMo3904i2 = c0457c.f2862f ? this.f2848v.mo3904i() : this.f2848v.mo3904i() - (((this.f2845s - 1) - c0460f.f2883e) * this.f2850x);
                iMo3900e3 = iMo3904i2;
                iMo3900e2 = iMo3904i2 - this.f2848v.mo3900e(viewM3878b);
            } else {
                int iMo3908m = c0457c.f2862f ? this.f2848v.mo3908m() : (c0460f.f2883e * this.f2850x) + this.f2848v.mo3908m();
                iMo3900e2 = iMo3908m;
                iMo3900e3 = this.f2848v.mo3900e(viewM3878b) + iMo3908m;
            }
            if (this.f2849w == 1) {
                m3562z0(viewM3878b, iMo3900e2, iMo3900e, iMo3900e3, i2);
            } else {
                m3562z0(viewM3878b, iMo3900e, iMo3900e2, i2, iMo3900e3);
            }
            if (c0457c.f2862f) {
                m3674K2(this.f2851y.f3008e, i);
            } else {
                m3680Q2(c0460f, this.f2851y.f3008e, i);
            }
            m3668A2(c0449u, this.f2851y);
            if (this.f2851y.f3011h && viewM3878b.hasFocusable()) {
                if (c0457c.f2862f) {
                    this.f2830B.clear();
                } else {
                    this.f2830B.set(c0460f.f2883e, false);
                }
            }
            z = true;
            r9 = 0;
        }
        if (!z) {
            m3668A2(c0449u, this.f2851y);
        }
        int iMo3908m2 = this.f2851y.f3008e == -1 ? this.f2847u.mo3908m() - m3699o2(this.f2847u.mo3908m()) : m3696l2(this.f2847u.mo3904i()) - this.f2847u.mo3904i();
        if (iMo3908m2 > 0) {
            return Math.min(c0466f.f3005b, iMo3908m2);
        }
        return 0;
    }

    /* JADX INFO: renamed from: c2 */
    private int m3692c2(int i) {
        int iM3490J = m3490J();
        for (int i2 = 0; i2 < iM3490J; i2++) {
            int iM3530h0 = m3530h0(m3489I(i2));
            if (iM3530h0 >= 0 && iM3530h0 < i) {
                return iM3530h0;
            }
        }
        return 0;
    }

    /* JADX INFO: renamed from: g2 */
    private int m3693g2(int i) {
        for (int iM3490J = m3490J() - 1; iM3490J >= 0; iM3490J--) {
            int iM3530h0 = m3530h0(m3489I(iM3490J));
            if (iM3530h0 >= 0 && iM3530h0 < i) {
                return iM3530h0;
            }
        }
        return 0;
    }

    /* JADX INFO: renamed from: h2 */
    private void m3694h2(RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z, boolean z) {
        int iMo3904i;
        int iM3696l2 = m3696l2(Integer.MIN_VALUE);
        if (iM3696l2 != Integer.MIN_VALUE && (iMo3904i = this.f2847u.mo3904i() - iM3696l2) > 0) {
            int i = iMo3904i - (-m3707F2(-iMo3904i, c0449u, c0454z));
            if (!z || i <= 0) {
                return;
            }
            this.f2847u.mo3913r(i);
        }
    }

    /* JADX INFO: renamed from: i2 */
    private void m3695i2(RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z, boolean z) {
        int iMo3908m;
        int iM3699o2 = m3699o2(Integer.MAX_VALUE);
        if (iM3699o2 != Integer.MAX_VALUE && (iMo3908m = iM3699o2 - this.f2847u.mo3908m()) > 0) {
            int iM3707F2 = iMo3908m - m3707F2(iMo3908m, c0449u, c0454z);
            if (!z || iM3707F2 <= 0) {
                return;
            }
            this.f2847u.mo3913r(-iM3707F2);
        }
    }

    /* JADX INFO: renamed from: l2 */
    private int m3696l2(int i) {
        int iM3765l = this.f2846t[0].m3765l(i);
        for (int i2 = 1; i2 < this.f2845s; i2++) {
            int iM3765l2 = this.f2846t[i2].m3765l(i);
            if (iM3765l2 > iM3765l) {
                iM3765l = iM3765l2;
            }
        }
        return iM3765l;
    }

    /* JADX INFO: renamed from: m2 */
    private int m3697m2(int i) {
        int iM3769p = this.f2846t[0].m3769p(i);
        for (int i2 = 1; i2 < this.f2845s; i2++) {
            int iM3769p2 = this.f2846t[i2].m3769p(i);
            if (iM3769p2 > iM3769p) {
                iM3769p = iM3769p2;
            }
        }
        return iM3769p;
    }

    /* JADX INFO: renamed from: n2 */
    private int m3698n2(int i) {
        int iM3765l = this.f2846t[0].m3765l(i);
        for (int i2 = 1; i2 < this.f2845s; i2++) {
            int iM3765l2 = this.f2846t[i2].m3765l(i);
            if (iM3765l2 < iM3765l) {
                iM3765l = iM3765l2;
            }
        }
        return iM3765l;
    }

    /* JADX INFO: renamed from: o2 */
    private int m3699o2(int i) {
        int iM3769p = this.f2846t[0].m3769p(i);
        for (int i2 = 1; i2 < this.f2845s; i2++) {
            int iM3769p2 = this.f2846t[i2].m3769p(i);
            if (iM3769p2 < iM3769p) {
                iM3769p = iM3769p2;
            }
        }
        return iM3769p;
    }

    /* JADX INFO: renamed from: p2 */
    private C0460f m3700p2(C0466f c0466f) {
        int i;
        int i2;
        int i3 = -1;
        if (m3705x2(c0466f.f3008e)) {
            i = this.f2845s - 1;
            i2 = -1;
        } else {
            i = 0;
            i3 = this.f2845s;
            i2 = 1;
        }
        C0460f c0460f = null;
        if (c0466f.f3008e == 1) {
            int i4 = Integer.MAX_VALUE;
            int iMo3908m = this.f2847u.mo3908m();
            while (i != i3) {
                C0460f c0460f2 = this.f2846t[i];
                int iM3765l = c0460f2.m3765l(iMo3908m);
                if (iM3765l < i4) {
                    c0460f = c0460f2;
                    i4 = iM3765l;
                }
                i += i2;
            }
            return c0460f;
        }
        int i5 = Integer.MIN_VALUE;
        int iMo3904i = this.f2847u.mo3904i();
        while (i != i3) {
            C0460f c0460f3 = this.f2846t[i];
            int iM3769p = c0460f3.m3769p(iMo3904i);
            if (iM3769p > i5) {
                c0460f = c0460f3;
                i5 = iM3769p;
            }
            i += i2;
        }
        return c0460f;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0043 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0044  */
    /* JADX INFO: renamed from: q2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m3701q2(int i, int i2, int i3) {
        int i4;
        int i5;
        int iM3721k2 = this.f2829A ? m3721k2() : m3720j2();
        if (i3 != 8) {
            i4 = i + i2;
        } else {
            if (i >= i2) {
                i4 = i + 1;
                i5 = i2;
                this.f2833E.m3742h(i5);
                if (i3 != 1) {
                    this.f2833E.m3743j(i, i2);
                } else if (i3 == 2) {
                    this.f2833E.m3744k(i, i2);
                } else if (i3 == 8) {
                    this.f2833E.m3744k(i, 1);
                    this.f2833E.m3743j(i2, 1);
                }
                if (i4 > iM3721k2) {
                    return;
                }
                if (i5 <= (this.f2829A ? m3720j2() : m3721k2())) {
                    m3553t1();
                    return;
                }
                return;
            }
            i4 = i2 + 1;
        }
        i5 = i;
        this.f2833E.m3742h(i5);
        if (i3 != 1) {
        }
        if (i4 > iM3721k2) {
        }
    }

    /* JADX INFO: renamed from: u2 */
    private void m3702u2(View view, int i, int i2, boolean z) {
        m3534j(view, this.f2839K);
        C0457c c0457c = (C0457c) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) c0457c).leftMargin;
        Rect rect = this.f2839K;
        int iM3682R2 = m3682R2(i, i3 + rect.left, ((ViewGroup.MarginLayoutParams) c0457c).rightMargin + rect.right);
        int i4 = ((ViewGroup.MarginLayoutParams) c0457c).topMargin;
        Rect rect2 = this.f2839K;
        int iM3682R22 = m3682R2(i2, i4 + rect2.top, ((ViewGroup.MarginLayoutParams) c0457c).bottomMargin + rect2.bottom);
        if (z ? m3488H1(view, iM3682R2, iM3682R22, c0457c) : m3483F1(view, iM3682R2, iM3682R22, c0457c)) {
            view.measure(iM3682R2, iM3682R22);
        }
    }

    /* JADX INFO: renamed from: v2 */
    private void m3703v2(View view, C0457c c0457c, boolean z) {
        if (c0457c.f2862f) {
            if (this.f2849w == 1) {
                m3702u2(view, this.f2838J, RecyclerView.AbstractC0442n.m3462K(m3508W(), m3509X(), m3527g0() + m3521d0(), ((ViewGroup.MarginLayoutParams) c0457c).height, true), z);
                return;
            } else {
                m3702u2(view, RecyclerView.AbstractC0442n.m3462K(m3544o0(), m3546p0(), m3523e0() + m3525f0(), ((ViewGroup.MarginLayoutParams) c0457c).width, true), this.f2838J, z);
                return;
            }
        }
        if (this.f2849w == 1) {
            m3702u2(view, RecyclerView.AbstractC0442n.m3462K(this.f2850x, m3546p0(), 0, ((ViewGroup.MarginLayoutParams) c0457c).width, false), RecyclerView.AbstractC0442n.m3462K(m3508W(), m3509X(), m3527g0() + m3521d0(), ((ViewGroup.MarginLayoutParams) c0457c).height, true), z);
        } else {
            m3702u2(view, RecyclerView.AbstractC0442n.m3462K(m3544o0(), m3546p0(), m3523e0() + m3525f0(), ((ViewGroup.MarginLayoutParams) c0457c).width, true), RecyclerView.AbstractC0442n.m3462K(this.f2850x, m3509X(), 0, ((ViewGroup.MarginLayoutParams) c0457c).height, false), z);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:89:0x015a  */
    /* JADX INFO: renamed from: w2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m3704w2(RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z, boolean z) {
        C0459e c0459e;
        C0456b c0456b = this.f2840L;
        if (!(this.f2837I == null && this.f2831C == -1) && c0454z.m3662b() == 0) {
            m3537k1(c0449u);
            c0456b.m3728c();
            return;
        }
        boolean z2 = true;
        boolean z3 = (c0456b.f2858e && this.f2831C == -1 && this.f2837I == null) ? false : true;
        if (z3) {
            c0456b.m3728c();
            if (this.f2837I != null) {
                m3677N1(c0456b);
            } else {
                m3672E2();
                c0456b.f2856c = this.f2829A;
            }
            m3712N2(c0454z, c0456b);
            c0456b.f2858e = true;
        }
        if (this.f2837I == null && this.f2831C == -1 && (c0456b.f2856c != this.f2835G || m3724t2() != this.f2836H)) {
            this.f2833E.m3736b();
            c0456b.f2857d = true;
        }
        if (m3490J() > 0 && ((c0459e = this.f2837I) == null || c0459e.f2871d < 1)) {
            if (c0456b.f2857d) {
                for (int i = 0; i < this.f2845s; i++) {
                    this.f2846t[i].m3758e();
                    int i2 = c0456b.f2855b;
                    if (i2 != Integer.MIN_VALUE) {
                        this.f2846t[i].m3775v(i2);
                    }
                }
            } else if (z3 || this.f2840L.f2859f == null) {
                for (int i3 = 0; i3 < this.f2845s; i3++) {
                    this.f2846t[i3].m3755b(this.f2829A, c0456b.f2855b);
                }
                this.f2840L.m3729d(this.f2846t);
            } else {
                for (int i4 = 0; i4 < this.f2845s; i4++) {
                    C0460f c0460f = this.f2846t[i4];
                    c0460f.m3758e();
                    c0460f.m3775v(this.f2840L.f2859f[i4]);
                }
            }
        }
        m3557w(c0449u);
        this.f2851y.f3004a = false;
        this.f2841M = false;
        m3715P2(this.f2848v.mo3909n());
        m3678O2(c0456b.f2854a, c0454z);
        if (c0456b.f2856c) {
            m3673G2(-1);
            m3691b2(c0449u, this.f2851y, c0454z);
            m3673G2(1);
            C0466f c0466f = this.f2851y;
            c0466f.f3006c = c0456b.f2854a + c0466f.f3007d;
            m3691b2(c0449u, c0466f, c0454z);
        } else {
            m3673G2(1);
            m3691b2(c0449u, this.f2851y, c0454z);
            m3673G2(-1);
            C0466f c0466f2 = this.f2851y;
            c0466f2.f3006c = c0456b.f2854a + c0466f2.f3007d;
            m3691b2(c0449u, c0466f2, c0454z);
        }
        m3671D2();
        if (m3490J() > 0) {
            if (this.f2829A) {
                m3694h2(c0449u, c0454z, true);
                m3695i2(c0449u, c0454z, false);
            } else {
                m3695i2(c0449u, c0454z, true);
                m3694h2(c0449u, c0454z, false);
            }
        }
        if (!z || c0454z.m3665e()) {
            z2 = false;
        } else if (this.f2834F != 0 && m3490J() > 0 && (this.f2841M || m3722r2() != null)) {
            m3545o1(this.f2844P);
            if (!m3716S1()) {
            }
        }
        if (c0454z.m3665e()) {
            this.f2840L.m3728c();
        }
        this.f2835G = c0456b.f2856c;
        this.f2836H = m3724t2();
        if (z2) {
            this.f2840L.m3728c();
            m3704w2(c0449u, c0454z, false);
        }
    }

    /* JADX INFO: renamed from: x2 */
    private boolean m3705x2(int i) {
        if (this.f2849w == 0) {
            return (i == -1) != this.f2829A;
        }
        return ((i == -1) == this.f2829A) == m3724t2();
    }

    /* JADX INFO: renamed from: z2 */
    private void m3706z2(View view) {
        for (int i = this.f2845s - 1; i >= 0; i--) {
            this.f2846t[i].m3774u(view);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: C0 */
    public void mo3477C0(int i) {
        super.mo3477C0(i);
        for (int i2 = 0; i2 < this.f2845s; i2++) {
            this.f2846t[i2].m3771r(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: C1 */
    public void mo3088C1(Rect rect, int i, int i2) {
        int iM3466n;
        int iM3466n2;
        int iM3523e0 = m3523e0() + m3525f0();
        int iM3527g0 = m3527g0() + m3521d0();
        if (this.f2849w == 1) {
            iM3466n2 = RecyclerView.AbstractC0442n.m3466n(i2, rect.height() + iM3527g0, m3516b0());
            iM3466n = RecyclerView.AbstractC0442n.m3466n(i, (this.f2850x * this.f2845s) + iM3523e0, m3519c0());
        } else {
            iM3466n = RecyclerView.AbstractC0442n.m3466n(i, rect.width() + iM3523e0, m3519c0());
            iM3466n2 = RecyclerView.AbstractC0442n.m3466n(i2, (this.f2850x * this.f2845s) + iM3527g0, m3516b0());
        }
        m3476B1(iM3466n, iM3466n2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: D */
    public RecyclerView.C0443o mo3089D() {
        return this.f2849w == 0 ? new C0457c(-2, -1) : new C0457c(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: D0 */
    public void mo3478D0(int i) {
        super.mo3478D0(i);
        for (int i2 = 0; i2 < this.f2845s; i2++) {
            this.f2846t[i2].m3771r(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: E */
    public RecyclerView.C0443o mo3090E(Context context, AttributeSet attributeSet) {
        return new C0457c(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: F */
    public RecyclerView.C0443o mo3092F(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0457c((ViewGroup.MarginLayoutParams) layoutParams) : new C0457c(layoutParams);
    }

    /* JADX INFO: renamed from: F2 */
    int m3707F2(int i, RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z) {
        if (m3490J() == 0 || i == 0) {
            return 0;
        }
        m3725y2(i, c0454z);
        int iM3691b2 = m3691b2(c0449u, this.f2851y, c0454z);
        if (this.f2851y.f3005b >= iM3691b2) {
            i = i < 0 ? -iM3691b2 : iM3691b2;
        }
        this.f2847u.mo3913r(-i);
        this.f2835G = this.f2829A;
        C0466f c0466f = this.f2851y;
        c0466f.f3005b = 0;
        m3668A2(c0449u, c0466f);
        return i;
    }

    /* JADX INFO: renamed from: H2 */
    public void m3708H2(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        mo3180g(null);
        if (i == this.f2849w) {
            return;
        }
        this.f2849w = i;
        AbstractC0469i abstractC0469i = this.f2847u;
        this.f2847u = this.f2848v;
        this.f2848v = abstractC0469i;
        m3553t1();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: I0 */
    public void mo3163I0(RecyclerView recyclerView, RecyclerView.C0449u c0449u) {
        super.mo3163I0(recyclerView, c0449u);
        m3545o1(this.f2844P);
        for (int i = 0; i < this.f2845s; i++) {
            this.f2846t[i].m3758e();
        }
        recyclerView.requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: I1 */
    public void mo3164I1(RecyclerView recyclerView, RecyclerView.C0454z c0454z, int i) {
        C0467g c0467g = new C0467g(recyclerView.getContext());
        c0467g.m3653p(i);
        m3491J1(c0467g);
    }

    /* JADX INFO: renamed from: I2 */
    public void m3709I2(boolean z) {
        mo3180g(null);
        C0459e c0459e = this.f2837I;
        if (c0459e != null && c0459e.f2876i != z) {
            c0459e.f2876i = z;
        }
        this.f2852z = z;
        m3553t1();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: J0 */
    public View mo3093J0(View view, int i, RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z) {
        View viewM3474B;
        View viewM3766m;
        if (m3490J() == 0 || (viewM3474B = m3474B(view)) == null) {
            return null;
        }
        m3672E2();
        int iM3687X1 = m3687X1(i);
        if (iM3687X1 == Integer.MIN_VALUE) {
            return null;
        }
        C0457c c0457c = (C0457c) viewM3474B.getLayoutParams();
        boolean z = c0457c.f2862f;
        C0460f c0460f = c0457c.f2861e;
        int iM3721k2 = iM3687X1 == 1 ? m3721k2() : m3720j2();
        m3678O2(iM3721k2, c0454z);
        m3673G2(iM3687X1);
        C0466f c0466f = this.f2851y;
        c0466f.f3006c = c0466f.f3007d + iM3721k2;
        c0466f.f3005b = (int) (this.f2847u.mo3909n() * 0.33333334f);
        C0466f c0466f2 = this.f2851y;
        c0466f2.f3011h = true;
        c0466f2.f3004a = false;
        m3691b2(c0449u, c0466f2, c0454z);
        this.f2835G = this.f2829A;
        if (!z && (viewM3766m = c0460f.m3766m(iM3721k2, iM3687X1)) != null && viewM3766m != viewM3474B) {
            return viewM3766m;
        }
        if (m3705x2(iM3687X1)) {
            for (int i2 = this.f2845s - 1; i2 >= 0; i2--) {
                View viewM3766m2 = this.f2846t[i2].m3766m(iM3721k2, iM3687X1);
                if (viewM3766m2 != null && viewM3766m2 != viewM3474B) {
                    return viewM3766m2;
                }
            }
        } else {
            for (int i3 = 0; i3 < this.f2845s; i3++) {
                View viewM3766m3 = this.f2846t[i3].m3766m(iM3721k2, iM3687X1);
                if (viewM3766m3 != null && viewM3766m3 != viewM3474B) {
                    return viewM3766m3;
                }
            }
        }
        boolean z2 = (this.f2852z ^ true) == (iM3687X1 == -1);
        if (!z) {
            View viewMo3159C = mo3159C(z2 ? c0460f.m3759f() : c0460f.m3760g());
            if (viewMo3159C != null && viewMo3159C != viewM3474B) {
                return viewMo3159C;
            }
        }
        if (m3705x2(iM3687X1)) {
            for (int i4 = this.f2845s - 1; i4 >= 0; i4--) {
                if (i4 != c0460f.f2883e) {
                    View viewMo3159C2 = mo3159C(z2 ? this.f2846t[i4].m3759f() : this.f2846t[i4].m3760g());
                    if (viewMo3159C2 != null && viewMo3159C2 != viewM3474B) {
                        return viewMo3159C2;
                    }
                }
            }
        } else {
            for (int i5 = 0; i5 < this.f2845s; i5++) {
                View viewMo3159C3 = mo3159C(z2 ? this.f2846t[i5].m3759f() : this.f2846t[i5].m3760g());
                if (viewMo3159C3 != null && viewMo3159C3 != viewM3474B) {
                    return viewMo3159C3;
                }
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: J2 */
    public void m3710J2(int i) {
        mo3180g(null);
        if (i != this.f2845s) {
            m3723s2();
            this.f2845s = i;
            this.f2830B = new BitSet(this.f2845s);
            this.f2846t = new C0460f[this.f2845s];
            for (int i2 = 0; i2 < this.f2845s; i2++) {
                this.f2846t[i2] = new C0460f(i2);
            }
            m3553t1();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: K0 */
    public void mo3165K0(AccessibilityEvent accessibilityEvent) {
        super.mo3165K0(accessibilityEvent);
        if (m3490J() > 0) {
            View viewM3718e2 = m3718e2(false);
            View viewM3717d2 = m3717d2(false);
            if (viewM3718e2 == null || viewM3717d2 == null) {
                return;
            }
            int iM3530h0 = m3530h0(viewM3718e2);
            int iM3530h02 = m3530h0(viewM3717d2);
            if (iM3530h0 < iM3530h02) {
                accessibilityEvent.setFromIndex(iM3530h0);
                accessibilityEvent.setToIndex(iM3530h02);
            } else {
                accessibilityEvent.setFromIndex(iM3530h02);
                accessibilityEvent.setToIndex(iM3530h0);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: L1 */
    public boolean mo3094L1() {
        return this.f2837I == null;
    }

    /* JADX INFO: renamed from: M2 */
    boolean m3711M2(RecyclerView.C0454z c0454z, C0456b c0456b) {
        int i;
        if (!c0454z.m3665e() && (i = this.f2831C) != -1) {
            if (i >= 0 && i < c0454z.m3662b()) {
                C0459e c0459e = this.f2837I;
                if (c0459e == null || c0459e.f2869b == -1 || c0459e.f2871d < 1) {
                    View viewMo3159C = mo3159C(this.f2831C);
                    if (viewMo3159C != null) {
                        c0456b.f2854a = this.f2829A ? m3721k2() : m3720j2();
                        if (this.f2832D != Integer.MIN_VALUE) {
                            if (c0456b.f2856c) {
                                c0456b.f2855b = (this.f2847u.mo3904i() - this.f2832D) - this.f2847u.mo3899d(viewMo3159C);
                            } else {
                                c0456b.f2855b = (this.f2847u.mo3908m() + this.f2832D) - this.f2847u.mo3902g(viewMo3159C);
                            }
                            return true;
                        }
                        if (this.f2847u.mo3900e(viewMo3159C) > this.f2847u.mo3909n()) {
                            c0456b.f2855b = c0456b.f2856c ? this.f2847u.mo3904i() : this.f2847u.mo3908m();
                            return true;
                        }
                        int iMo3902g = this.f2847u.mo3902g(viewMo3159C) - this.f2847u.mo3908m();
                        if (iMo3902g < 0) {
                            c0456b.f2855b = -iMo3902g;
                            return true;
                        }
                        int iMo3904i = this.f2847u.mo3904i() - this.f2847u.mo3899d(viewMo3159C);
                        if (iMo3904i < 0) {
                            c0456b.f2855b = iMo3904i;
                            return true;
                        }
                        c0456b.f2855b = Integer.MIN_VALUE;
                    } else {
                        int i2 = this.f2831C;
                        c0456b.f2854a = i2;
                        int i3 = this.f2832D;
                        if (i3 == Integer.MIN_VALUE) {
                            c0456b.f2856c = m3681R1(i2) == 1;
                            c0456b.m3726a();
                        } else {
                            c0456b.m3727b(i3);
                        }
                        c0456b.f2857d = true;
                    }
                } else {
                    c0456b.f2855b = Integer.MIN_VALUE;
                    c0456b.f2854a = this.f2831C;
                }
                return true;
            }
            this.f2831C = -1;
            this.f2832D = Integer.MIN_VALUE;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: N */
    public int mo3095N(RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z) {
        return this.f2849w == 1 ? this.f2845s : super.mo3095N(c0449u, c0454z);
    }

    /* JADX INFO: renamed from: N2 */
    void m3712N2(RecyclerView.C0454z c0454z, C0456b c0456b) {
        if (m3711M2(c0454z, c0456b) || m3675L2(c0454z, c0456b)) {
            return;
        }
        c0456b.m3726a();
        c0456b.f2854a = 0;
    }

    /* JADX INFO: renamed from: O1 */
    boolean m3713O1() {
        int iM3765l = this.f2846t[0].m3765l(Integer.MIN_VALUE);
        for (int i = 1; i < this.f2845s; i++) {
            if (this.f2846t[i].m3765l(Integer.MIN_VALUE) != iM3765l) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: P0 */
    public void mo3097P0(RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z, View view, C0269c c0269c) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof C0457c)) {
            super.m3498O0(view, c0269c);
            return;
        }
        C0457c c0457c = (C0457c) layoutParams;
        if (this.f2849w == 0) {
            c0269c.m1922Z(C0269c.c.m1965a(c0457c.m3730e(), c0457c.f2862f ? this.f2845s : 1, -1, -1, false, false));
        } else {
            c0269c.m1922Z(C0269c.c.m1965a(-1, -1, c0457c.m3730e(), c0457c.f2862f ? this.f2845s : 1, false, false));
        }
    }

    /* JADX INFO: renamed from: P1 */
    boolean m3714P1() {
        int iM3769p = this.f2846t[0].m3769p(Integer.MIN_VALUE);
        for (int i = 1; i < this.f2845s; i++) {
            if (this.f2846t[i].m3769p(Integer.MIN_VALUE) != iM3769p) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: P2 */
    void m3715P2(int i) {
        this.f2850x = i / this.f2845s;
        this.f2838J = View.MeasureSpec.makeMeasureSpec(i, this.f2848v.mo3906k());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: R0 */
    public void mo3098R0(RecyclerView recyclerView, int i, int i2) {
        m3701q2(i, i2, 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: S0 */
    public void mo3099S0(RecyclerView recyclerView) {
        this.f2833E.m3736b();
        m3553t1();
    }

    /* JADX INFO: renamed from: S1 */
    boolean m3716S1() {
        int iM3720j2;
        int iM3721k2;
        if (m3490J() == 0 || this.f2834F == 0 || !m3550r0()) {
            return false;
        }
        if (this.f2829A) {
            iM3720j2 = m3721k2();
            iM3721k2 = m3720j2();
        } else {
            iM3720j2 = m3720j2();
            iM3721k2 = m3721k2();
        }
        if (iM3720j2 == 0 && m3722r2() != null) {
            this.f2833E.m3736b();
            m3555u1();
            m3553t1();
            return true;
        }
        if (!this.f2841M) {
            return false;
        }
        int i = this.f2829A ? -1 : 1;
        int i2 = iM3721k2 + 1;
        C0458d.a aVarM3739e = this.f2833E.m3739e(iM3720j2, i2, i, true);
        if (aVarM3739e == null) {
            this.f2841M = false;
            this.f2833E.m3738d(i2);
            return false;
        }
        C0458d.a aVarM3739e2 = this.f2833E.m3739e(iM3720j2, aVarM3739e.f2865b, i * (-1), true);
        if (aVarM3739e2 == null) {
            this.f2833E.m3738d(aVarM3739e.f2865b);
        } else {
            this.f2833E.m3738d(aVarM3739e2.f2865b + 1);
        }
        m3555u1();
        m3553t1();
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: T0 */
    public void mo3100T0(RecyclerView recyclerView, int i, int i2, int i3) {
        m3701q2(i, i2, 8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: U0 */
    public void mo3101U0(RecyclerView recyclerView, int i, int i2) {
        m3701q2(i, i2, 2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: W0 */
    public void mo3102W0(RecyclerView recyclerView, int i, int i2, Object obj) {
        m3701q2(i, i2, 4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: X0 */
    public void mo3104X0(RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z) {
        m3704w2(c0449u, c0454z, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: Y0 */
    public void mo3106Y0(RecyclerView.C0454z c0454z) {
        super.mo3106Y0(c0454z);
        this.f2831C = -1;
        this.f2832D = Integer.MIN_VALUE;
        this.f2837I = null;
        this.f2840L.m3728c();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0453y.b
    /* JADX INFO: renamed from: a */
    public PointF mo3174a(int i) {
        int iM3681R1 = m3681R1(i);
        PointF pointF = new PointF();
        if (iM3681R1 == 0) {
            return null;
        }
        if (this.f2849w == 0) {
            pointF.x = iM3681R1;
            pointF.y = CropImageView.DEFAULT_ASPECT_RATIO;
        } else {
            pointF.x = CropImageView.DEFAULT_ASPECT_RATIO;
            pointF.y = iM3681R1;
        }
        return pointF;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: c1 */
    public void mo3175c1(Parcelable parcelable) {
        if (parcelable instanceof C0459e) {
            this.f2837I = (C0459e) parcelable;
            m3553t1();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: d1 */
    public Parcelable mo3177d1() {
        int iM3769p;
        int iMo3908m;
        int[] iArr;
        if (this.f2837I != null) {
            return new C0459e(this.f2837I);
        }
        C0459e c0459e = new C0459e();
        c0459e.f2876i = this.f2852z;
        c0459e.f2877j = this.f2835G;
        c0459e.f2878k = this.f2836H;
        C0458d c0458d = this.f2833E;
        if (c0458d == null || (iArr = c0458d.f2863a) == null) {
            c0459e.f2873f = 0;
        } else {
            c0459e.f2874g = iArr;
            c0459e.f2873f = iArr.length;
            c0459e.f2875h = c0458d.f2864b;
        }
        if (m3490J() > 0) {
            c0459e.f2869b = this.f2835G ? m3721k2() : m3720j2();
            c0459e.f2870c = m3719f2();
            int i = this.f2845s;
            c0459e.f2871d = i;
            c0459e.f2872e = new int[i];
            for (int i2 = 0; i2 < this.f2845s; i2++) {
                if (this.f2835G) {
                    iM3769p = this.f2846t[i2].m3765l(Integer.MIN_VALUE);
                    if (iM3769p != Integer.MIN_VALUE) {
                        iMo3908m = this.f2847u.mo3904i();
                        iM3769p -= iMo3908m;
                    }
                } else {
                    iM3769p = this.f2846t[i2].m3769p(Integer.MIN_VALUE);
                    if (iM3769p != Integer.MIN_VALUE) {
                        iMo3908m = this.f2847u.mo3908m();
                        iM3769p -= iMo3908m;
                    }
                }
                c0459e.f2872e[i2] = iM3769p;
            }
        } else {
            c0459e.f2869b = -1;
            c0459e.f2870c = -1;
            c0459e.f2871d = 0;
        }
        return c0459e;
    }

    /* JADX INFO: renamed from: d2 */
    View m3717d2(boolean z) {
        int iMo3908m = this.f2847u.mo3908m();
        int iMo3904i = this.f2847u.mo3904i();
        View view = null;
        for (int iM3490J = m3490J() - 1; iM3490J >= 0; iM3490J--) {
            View viewM3489I = m3489I(iM3490J);
            int iMo3902g = this.f2847u.mo3902g(viewM3489I);
            int iMo3899d = this.f2847u.mo3899d(viewM3489I);
            if (iMo3899d > iMo3908m && iMo3902g < iMo3904i) {
                if (iMo3899d <= iMo3904i || !z) {
                    return viewM3489I;
                }
                if (view == null) {
                    view = viewM3489I;
                }
            }
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: e1 */
    public void mo3524e1(int i) {
        if (i == 0) {
            m3716S1();
        }
    }

    /* JADX INFO: renamed from: e2 */
    View m3718e2(boolean z) {
        int iMo3908m = this.f2847u.mo3908m();
        int iMo3904i = this.f2847u.mo3904i();
        int iM3490J = m3490J();
        View view = null;
        for (int i = 0; i < iM3490J; i++) {
            View viewM3489I = m3489I(i);
            int iMo3902g = this.f2847u.mo3902g(viewM3489I);
            if (this.f2847u.mo3899d(viewM3489I) > iMo3908m && iMo3902g < iMo3904i) {
                if (iMo3902g >= iMo3908m || !z) {
                    return viewM3489I;
                }
                if (view == null) {
                    view = viewM3489I;
                }
            }
        }
        return view;
    }

    /* JADX INFO: renamed from: f2 */
    int m3719f2() {
        View viewM3717d2 = this.f2829A ? m3717d2(true) : m3718e2(true);
        if (viewM3717d2 == null) {
            return -1;
        }
        return m3530h0(viewM3717d2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: g */
    public void mo3180g(String str) {
        if (this.f2837I == null) {
            super.mo3180g(str);
        }
    }

    /* JADX INFO: renamed from: j2 */
    int m3720j2() {
        if (m3490J() == 0) {
            return 0;
        }
        return m3530h0(m3489I(0));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: k */
    public boolean mo3181k() {
        return this.f2849w == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: k0 */
    public int mo3109k0(RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z) {
        return this.f2849w == 0 ? this.f2845s : super.mo3109k0(c0449u, c0454z);
    }

    /* JADX INFO: renamed from: k2 */
    int m3721k2() {
        int iM3490J = m3490J();
        if (iM3490J == 0) {
            return 0;
        }
        return m3530h0(m3489I(iM3490J - 1));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: l */
    public boolean mo3182l() {
        return this.f2849w == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: m */
    public boolean mo3110m(RecyclerView.C0443o c0443o) {
        return c0443o instanceof C0457c;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: o */
    public void mo3183o(int i, int i2, RecyclerView.C0454z c0454z, RecyclerView.AbstractC0442n.c cVar) {
        int iM3765l;
        int iM3769p;
        if (this.f2849w != 0) {
            i = i2;
        }
        if (m3490J() == 0 || i == 0) {
            return;
        }
        m3725y2(i, c0454z);
        int[] iArr = this.f2843O;
        if (iArr == null || iArr.length < this.f2845s) {
            this.f2843O = new int[this.f2845s];
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.f2845s; i4++) {
            C0466f c0466f = this.f2851y;
            if (c0466f.f3007d == -1) {
                iM3765l = c0466f.f3009f;
                iM3769p = this.f2846t[i4].m3769p(iM3765l);
            } else {
                iM3765l = this.f2846t[i4].m3765l(c0466f.f3010g);
                iM3769p = this.f2851y.f3010g;
            }
            int i5 = iM3765l - iM3769p;
            if (i5 >= 0) {
                this.f2843O[i3] = i5;
                i3++;
            }
        }
        Arrays.sort(this.f2843O, 0, i3);
        for (int i6 = 0; i6 < i3 && this.f2851y.m3877a(c0454z); i6++) {
            cVar.mo3569a(this.f2851y.f3006c, this.f2843O[i6]);
            C0466f c0466f2 = this.f2851y;
            c0466f2.f3006c += c0466f2.f3007d;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: q */
    public int mo3187q(RecyclerView.C0454z c0454z) {
        return m3684U1(c0454z);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: r */
    public int mo3111r(RecyclerView.C0454z c0454z) {
        return m3685V1(c0454z);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008a  */
    /* JADX INFO: renamed from: r2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    View m3722r2() {
        int i;
        int i2;
        boolean z;
        int iM3490J = m3490J() - 1;
        BitSet bitSet = new BitSet(this.f2845s);
        bitSet.set(0, this.f2845s, true);
        byte b2 = (this.f2849w == 1 && m3724t2()) ? (byte) 1 : (byte) -1;
        if (this.f2829A) {
            i = -1;
        } else {
            i = iM3490J + 1;
            iM3490J = 0;
        }
        int i3 = iM3490J < i ? 1 : -1;
        while (iM3490J != i) {
            View viewM3489I = m3489I(iM3490J);
            C0457c c0457c = (C0457c) viewM3489I.getLayoutParams();
            if (bitSet.get(c0457c.f2861e.f2883e)) {
                if (m3683T1(c0457c.f2861e)) {
                    return viewM3489I;
                }
                bitSet.clear(c0457c.f2861e.f2883e);
            }
            if (!c0457c.f2862f && (i2 = iM3490J + i3) != i) {
                View viewM3489I2 = m3489I(i2);
                if (this.f2829A) {
                    int iMo3899d = this.f2847u.mo3899d(viewM3489I);
                    int iMo3899d2 = this.f2847u.mo3899d(viewM3489I2);
                    if (iMo3899d < iMo3899d2) {
                        return viewM3489I;
                    }
                    z = iMo3899d == iMo3899d2;
                } else {
                    int iMo3902g = this.f2847u.mo3902g(viewM3489I);
                    int iMo3902g2 = this.f2847u.mo3902g(viewM3489I2);
                    if (iMo3902g > iMo3902g2) {
                        return viewM3489I;
                    }
                    if (iMo3902g == iMo3902g2) {
                    }
                }
                if (z) {
                    if ((c0457c.f2861e.f2883e - ((C0457c) viewM3489I2.getLayoutParams()).f2861e.f2883e < 0) != (b2 < 0)) {
                        return viewM3489I;
                    }
                } else {
                    continue;
                }
            }
            iM3490J += i3;
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: s */
    public int mo3112s(RecyclerView.C0454z c0454z) {
        return m3686W1(c0454z);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: s0 */
    public boolean mo3190s0() {
        return this.f2834F != 0;
    }

    /* JADX INFO: renamed from: s2 */
    public void m3723s2() {
        this.f2833E.m3736b();
        m3553t1();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: t */
    public int mo3191t(RecyclerView.C0454z c0454z) {
        return m3684U1(c0454z);
    }

    /* JADX INFO: renamed from: t2 */
    boolean m3724t2() {
        return m3511Z() == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: u */
    public int mo3114u(RecyclerView.C0454z c0454z) {
        return m3685V1(c0454z);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: v */
    public int mo3116v(RecyclerView.C0454z c0454z) {
        return m3686W1(c0454z);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: w1 */
    public int mo3117w1(int i, RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z) {
        return m3707F2(i, c0449u, c0454z);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: x1 */
    public void mo3192x1(int i) {
        C0459e c0459e = this.f2837I;
        if (c0459e != null && c0459e.f2869b != i) {
            c0459e.m3750j();
        }
        this.f2831C = i;
        this.f2832D = Integer.MIN_VALUE;
        m3553t1();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: y1 */
    public int mo3118y1(int i, RecyclerView.C0449u c0449u, RecyclerView.C0454z c0454z) {
        return m3707F2(i, c0449u, c0454z);
    }

    /* JADX INFO: renamed from: y2 */
    void m3725y2(int i, RecyclerView.C0454z c0454z) {
        int iM3720j2;
        int i2;
        if (i > 0) {
            iM3720j2 = m3721k2();
            i2 = 1;
        } else {
            iM3720j2 = m3720j2();
            i2 = -1;
        }
        this.f2851y.f3004a = true;
        m3678O2(iM3720j2, c0454z);
        m3673G2(i2);
        C0466f c0466f = this.f2851y;
        c0466f.f3006c = iM3720j2 + c0466f.f3007d;
        c0466f.f3005b = Math.abs(i);
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$d */
    static class C0458d {

        /* JADX INFO: renamed from: a */
        int[] f2863a;

        /* JADX INFO: renamed from: b */
        List<a> f2864b;

        C0458d() {
        }

        /* JADX INFO: renamed from: i */
        private int m3732i(int i) {
            if (this.f2864b == null) {
                return -1;
            }
            a aVarM3740f = m3740f(i);
            if (aVarM3740f != null) {
                this.f2864b.remove(aVarM3740f);
            }
            int size = this.f2864b.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    i2 = -1;
                    break;
                }
                if (this.f2864b.get(i2).f2865b >= i) {
                    break;
                }
                i2++;
            }
            if (i2 == -1) {
                return -1;
            }
            a aVar = this.f2864b.get(i2);
            this.f2864b.remove(i2);
            return aVar.f2865b;
        }

        /* JADX INFO: renamed from: l */
        private void m3733l(int i, int i2) {
            List<a> list = this.f2864b;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                a aVar = this.f2864b.get(size);
                int i3 = aVar.f2865b;
                if (i3 >= i) {
                    aVar.f2865b = i3 + i2;
                }
            }
        }

        /* JADX INFO: renamed from: m */
        private void m3734m(int i, int i2) {
            List<a> list = this.f2864b;
            if (list == null) {
                return;
            }
            int i3 = i + i2;
            for (int size = list.size() - 1; size >= 0; size--) {
                a aVar = this.f2864b.get(size);
                int i4 = aVar.f2865b;
                if (i4 >= i) {
                    if (i4 < i3) {
                        this.f2864b.remove(size);
                    } else {
                        aVar.f2865b = i4 - i2;
                    }
                }
            }
        }

        /* JADX INFO: renamed from: a */
        public void m3735a(a aVar) {
            if (this.f2864b == null) {
                this.f2864b = new ArrayList();
            }
            int size = this.f2864b.size();
            for (int i = 0; i < size; i++) {
                a aVar2 = this.f2864b.get(i);
                if (aVar2.f2865b == aVar.f2865b) {
                    this.f2864b.remove(i);
                }
                if (aVar2.f2865b >= aVar.f2865b) {
                    this.f2864b.add(i, aVar);
                    return;
                }
            }
            this.f2864b.add(aVar);
        }

        /* JADX INFO: renamed from: b */
        void m3736b() {
            int[] iArr = this.f2863a;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f2864b = null;
        }

        /* JADX INFO: renamed from: c */
        void m3737c(int i) {
            int[] iArr = this.f2863a;
            if (iArr == null) {
                int[] iArr2 = new int[Math.max(i, 10) + 1];
                this.f2863a = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i >= iArr.length) {
                int[] iArr3 = new int[m3746o(i)];
                this.f2863a = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                int[] iArr4 = this.f2863a;
                Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
            }
        }

        /* JADX INFO: renamed from: d */
        int m3738d(int i) {
            List<a> list = this.f2864b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    if (this.f2864b.get(size).f2865b >= i) {
                        this.f2864b.remove(size);
                    }
                }
            }
            return m3742h(i);
        }

        /* JADX INFO: renamed from: e */
        public a m3739e(int i, int i2, int i3, boolean z) {
            List<a> list = this.f2864b;
            if (list == null) {
                return null;
            }
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                a aVar = this.f2864b.get(i4);
                int i5 = aVar.f2865b;
                if (i5 >= i2) {
                    return null;
                }
                if (i5 >= i && (i3 == 0 || aVar.f2866c == i3 || (z && aVar.f2868e))) {
                    return aVar;
                }
            }
            return null;
        }

        /* JADX INFO: renamed from: f */
        public a m3740f(int i) {
            List<a> list = this.f2864b;
            if (list == null) {
                return null;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                a aVar = this.f2864b.get(size);
                if (aVar.f2865b == i) {
                    return aVar;
                }
            }
            return null;
        }

        /* JADX INFO: renamed from: g */
        int m3741g(int i) {
            int[] iArr = this.f2863a;
            if (iArr == null || i >= iArr.length) {
                return -1;
            }
            return iArr[i];
        }

        /* JADX INFO: renamed from: h */
        int m3742h(int i) {
            int[] iArr = this.f2863a;
            if (iArr == null || i >= iArr.length) {
                return -1;
            }
            int iM3732i = m3732i(i);
            if (iM3732i == -1) {
                int[] iArr2 = this.f2863a;
                Arrays.fill(iArr2, i, iArr2.length, -1);
                return this.f2863a.length;
            }
            int i2 = iM3732i + 1;
            Arrays.fill(this.f2863a, i, i2, -1);
            return i2;
        }

        /* JADX INFO: renamed from: j */
        void m3743j(int i, int i2) {
            int[] iArr = this.f2863a;
            if (iArr == null || i >= iArr.length) {
                return;
            }
            int i3 = i + i2;
            m3737c(i3);
            int[] iArr2 = this.f2863a;
            System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
            Arrays.fill(this.f2863a, i, i3, -1);
            m3733l(i, i2);
        }

        /* JADX INFO: renamed from: k */
        void m3744k(int i, int i2) {
            int[] iArr = this.f2863a;
            if (iArr == null || i >= iArr.length) {
                return;
            }
            int i3 = i + i2;
            m3737c(i3);
            int[] iArr2 = this.f2863a;
            System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
            int[] iArr3 = this.f2863a;
            Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
            m3734m(i, i2);
        }

        /* JADX INFO: renamed from: n */
        void m3745n(int i, C0460f c0460f) {
            m3737c(i);
            this.f2863a[i] = c0460f.f2883e;
        }

        /* JADX INFO: renamed from: o */
        int m3746o(int i) {
            int length = this.f2863a.length;
            while (length <= i) {
                length *= 2;
            }
            return length;
        }

        /* JADX INFO: renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a */
        @SuppressLint({"BanParcelableUsage"})
        static class a implements Parcelable {
            public static final Parcelable.Creator<a> CREATOR = new C1345a();

            /* JADX INFO: renamed from: b */
            int f2865b;

            /* JADX INFO: renamed from: c */
            int f2866c;

            /* JADX INFO: renamed from: d */
            int[] f2867d;

            /* JADX INFO: renamed from: e */
            boolean f2868e;

            /* JADX INFO: renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a$a, reason: collision with other inner class name */
            static class C1345a implements Parcelable.Creator<a> {
                C1345a() {
                }

                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public a createFromParcel(Parcel parcel) {
                    return new a(parcel);
                }

                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                public a[] newArray(int i) {
                    return new a[i];
                }
            }

            a(Parcel parcel) {
                this.f2865b = parcel.readInt();
                this.f2866c = parcel.readInt();
                this.f2868e = parcel.readInt() == 1;
                int i = parcel.readInt();
                if (i > 0) {
                    int[] iArr = new int[i];
                    this.f2867d = iArr;
                    parcel.readIntArray(iArr);
                }
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            /* JADX INFO: renamed from: j */
            int m3747j(int i) {
                int[] iArr = this.f2867d;
                if (iArr == null) {
                    return 0;
                }
                return iArr[i];
            }

            public String toString() {
                return "FullSpanItem{mPosition=" + this.f2865b + ", mGapDir=" + this.f2866c + ", mHasUnwantedGapAfter=" + this.f2868e + ", mGapPerSpan=" + Arrays.toString(this.f2867d) + '}';
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.f2865b);
                parcel.writeInt(this.f2866c);
                parcel.writeInt(this.f2868e ? 1 : 0);
                int[] iArr = this.f2867d;
                if (iArr == null || iArr.length <= 0) {
                    parcel.writeInt(0);
                } else {
                    parcel.writeInt(iArr.length);
                    parcel.writeIntArray(this.f2867d);
                }
            }

            a() {
            }
        }
    }
}
