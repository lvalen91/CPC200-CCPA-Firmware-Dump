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
import androidx.core.view.e0.c;
import androidx.recyclerview.widget.RecyclerView;
import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class StaggeredGridLayoutManager extends RecyclerView.n implements RecyclerView.y.b {
    private BitSet B;
    private boolean G;
    private boolean H;
    private e I;
    private int J;
    private int[] O;
    f[] t;
    i u;
    i v;
    private int w;
    private int x;
    private final androidx.recyclerview.widget.f y;
    private int s = -1;
    boolean z = false;
    boolean A = false;
    int C = -1;
    int D = Integer.MIN_VALUE;
    d E = new d();
    private int F = 2;
    private final Rect K = new Rect();
    private final b L = new b();
    private boolean M = false;
    private boolean N = true;
    private final Runnable P = new a();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            StaggeredGridLayoutManager.this.S1();
        }
    }

    class b {
        int a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f909b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f910c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f911d;
        boolean e;
        int[] f;

        b() {
            c();
        }

        void a() {
            this.f909b = this.f910c ? StaggeredGridLayoutManager.this.u.i() : StaggeredGridLayoutManager.this.u.m();
        }

        void b(int i) {
            if (this.f910c) {
                this.f909b = StaggeredGridLayoutManager.this.u.i() - i;
            } else {
                this.f909b = StaggeredGridLayoutManager.this.u.m() + i;
            }
        }

        void c() {
            this.a = -1;
            this.f909b = Integer.MIN_VALUE;
            this.f910c = false;
            this.f911d = false;
            this.e = false;
            int[] iArr = this.f;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }

        void d(f[] fVarArr) {
            int length = fVarArr.length;
            int[] iArr = this.f;
            if (iArr == null || iArr.length < length) {
                this.f = new int[StaggeredGridLayoutManager.this.t.length];
            }
            for (int i = 0; i < length; i++) {
                this.f[i] = fVarArr[i].p(Integer.MIN_VALUE);
            }
        }
    }

    public static class c extends RecyclerView.o {
        f e;
        boolean f;

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public final int e() {
            f fVar = this.e;
            if (fVar == null) {
                return -1;
            }
            return fVar.e;
        }

        public boolean f() {
            return this.f;
        }

        public c(int i, int i2) {
            super(i, i2);
        }

        public c(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    public static class e implements Parcelable {
        public static final Parcelable.Creator<e> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f916b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f917c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f918d;
        int[] e;
        int f;
        int[] g;
        List<d.a> h;
        boolean i;
        boolean j;
        boolean k;

        static class a implements Parcelable.Creator<e> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public e createFromParcel(Parcel parcel) {
                return new e(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public e[] newArray(int i) {
                return new e[i];
            }
        }

        public e() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        void j() {
            this.e = null;
            this.f918d = 0;
            this.f916b = -1;
            this.f917c = -1;
        }

        void k() {
            this.e = null;
            this.f918d = 0;
            this.f = 0;
            this.g = null;
            this.h = null;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f916b);
            parcel.writeInt(this.f917c);
            parcel.writeInt(this.f918d);
            if (this.f918d > 0) {
                parcel.writeIntArray(this.e);
            }
            parcel.writeInt(this.f);
            if (this.f > 0) {
                parcel.writeIntArray(this.g);
            }
            parcel.writeInt(this.i ? 1 : 0);
            parcel.writeInt(this.j ? 1 : 0);
            parcel.writeInt(this.k ? 1 : 0);
            parcel.writeList(this.h);
        }

        e(Parcel parcel) {
            this.f916b = parcel.readInt();
            this.f917c = parcel.readInt();
            int i = parcel.readInt();
            this.f918d = i;
            if (i > 0) {
                int[] iArr = new int[i];
                this.e = iArr;
                parcel.readIntArray(iArr);
            }
            int i2 = parcel.readInt();
            this.f = i2;
            if (i2 > 0) {
                int[] iArr2 = new int[i2];
                this.g = iArr2;
                parcel.readIntArray(iArr2);
            }
            this.i = parcel.readInt() == 1;
            this.j = parcel.readInt() == 1;
            this.k = parcel.readInt() == 1;
            this.h = parcel.readArrayList(d.a.class.getClassLoader());
        }

        public e(e eVar) {
            this.f918d = eVar.f918d;
            this.f916b = eVar.f916b;
            this.f917c = eVar.f917c;
            this.e = eVar.e;
            this.f = eVar.f;
            this.g = eVar.g;
            this.i = eVar.i;
            this.j = eVar.j;
            this.k = eVar.k;
            this.h = eVar.h;
        }
    }

    class f {
        ArrayList<View> a = new ArrayList<>();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f919b = Integer.MIN_VALUE;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f920c = Integer.MIN_VALUE;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f921d = 0;
        final int e;

        f(int i) {
            this.e = i;
        }

        void a(View view) {
            c cVarN = n(view);
            cVarN.e = this;
            this.a.add(view);
            this.f920c = Integer.MIN_VALUE;
            if (this.a.size() == 1) {
                this.f919b = Integer.MIN_VALUE;
            }
            if (cVarN.c() || cVarN.b()) {
                this.f921d += StaggeredGridLayoutManager.this.u.e(view);
            }
        }

        void b(boolean z, int i) {
            int iL = z ? l(Integer.MIN_VALUE) : p(Integer.MIN_VALUE);
            e();
            if (iL == Integer.MIN_VALUE) {
                return;
            }
            if (!z || iL >= StaggeredGridLayoutManager.this.u.i()) {
                if (z || iL <= StaggeredGridLayoutManager.this.u.m()) {
                    if (i != Integer.MIN_VALUE) {
                        iL += i;
                    }
                    this.f920c = iL;
                    this.f919b = iL;
                }
            }
        }

        void c() {
            d.a aVarF;
            ArrayList<View> arrayList = this.a;
            View view = arrayList.get(arrayList.size() - 1);
            c cVarN = n(view);
            this.f920c = StaggeredGridLayoutManager.this.u.d(view);
            if (cVarN.f && (aVarF = StaggeredGridLayoutManager.this.E.f(cVarN.a())) != null && aVarF.f914c == 1) {
                this.f920c += aVarF.j(this.e);
            }
        }

        void d() {
            d.a aVarF;
            View view = this.a.get(0);
            c cVarN = n(view);
            this.f919b = StaggeredGridLayoutManager.this.u.g(view);
            if (cVarN.f && (aVarF = StaggeredGridLayoutManager.this.E.f(cVarN.a())) != null && aVarF.f914c == -1) {
                this.f919b -= aVarF.j(this.e);
            }
        }

        void e() {
            this.a.clear();
            q();
            this.f921d = 0;
        }

        public int f() {
            return StaggeredGridLayoutManager.this.z ? i(this.a.size() - 1, -1, true) : i(0, this.a.size(), true);
        }

        public int g() {
            return StaggeredGridLayoutManager.this.z ? i(0, this.a.size(), true) : i(this.a.size() - 1, -1, true);
        }

        int h(int i, int i2, boolean z, boolean z2, boolean z3) {
            int iM = StaggeredGridLayoutManager.this.u.m();
            int i3 = StaggeredGridLayoutManager.this.u.i();
            int i4 = i2 > i ? 1 : -1;
            while (i != i2) {
                View view = this.a.get(i);
                int iG = StaggeredGridLayoutManager.this.u.g(view);
                int iD = StaggeredGridLayoutManager.this.u.d(view);
                boolean z4 = false;
                boolean z5 = !z3 ? iG >= i3 : iG > i3;
                if (!z3 ? iD > iM : iD >= iM) {
                    z4 = true;
                }
                if (z5 && z4) {
                    if (z && z2) {
                        if (iG >= iM && iD <= i3) {
                            return StaggeredGridLayoutManager.this.h0(view);
                        }
                    } else {
                        if (z2) {
                            return StaggeredGridLayoutManager.this.h0(view);
                        }
                        if (iG < iM || iD > i3) {
                            return StaggeredGridLayoutManager.this.h0(view);
                        }
                    }
                }
                i += i4;
            }
            return -1;
        }

        int i(int i, int i2, boolean z) {
            return h(i, i2, false, false, z);
        }

        public int j() {
            return this.f921d;
        }

        int k() {
            int i = this.f920c;
            if (i != Integer.MIN_VALUE) {
                return i;
            }
            c();
            return this.f920c;
        }

        int l(int i) {
            int i2 = this.f920c;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.a.size() == 0) {
                return i;
            }
            c();
            return this.f920c;
        }

        public View m(int i, int i2) {
            View view = null;
            if (i2 != -1) {
                int size = this.a.size() - 1;
                while (size >= 0) {
                    View view2 = this.a.get(size);
                    StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager.z && staggeredGridLayoutManager.h0(view2) >= i) {
                        break;
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager2 = StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager2.z && staggeredGridLayoutManager2.h0(view2) <= i) || !view2.hasFocusable()) {
                        break;
                    }
                    size--;
                    view = view2;
                }
            } else {
                int size2 = this.a.size();
                int i3 = 0;
                while (i3 < size2) {
                    View view3 = this.a.get(i3);
                    StaggeredGridLayoutManager staggeredGridLayoutManager3 = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager3.z && staggeredGridLayoutManager3.h0(view3) <= i) {
                        break;
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager4 = StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager4.z && staggeredGridLayoutManager4.h0(view3) >= i) || !view3.hasFocusable()) {
                        break;
                    }
                    i3++;
                    view = view3;
                }
            }
            return view;
        }

        c n(View view) {
            return (c) view.getLayoutParams();
        }

        int o() {
            int i = this.f919b;
            if (i != Integer.MIN_VALUE) {
                return i;
            }
            d();
            return this.f919b;
        }

        int p(int i) {
            int i2 = this.f919b;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.a.size() == 0) {
                return i;
            }
            d();
            return this.f919b;
        }

        void q() {
            this.f919b = Integer.MIN_VALUE;
            this.f920c = Integer.MIN_VALUE;
        }

        void r(int i) {
            int i2 = this.f919b;
            if (i2 != Integer.MIN_VALUE) {
                this.f919b = i2 + i;
            }
            int i3 = this.f920c;
            if (i3 != Integer.MIN_VALUE) {
                this.f920c = i3 + i;
            }
        }

        void s() {
            int size = this.a.size();
            View viewRemove = this.a.remove(size - 1);
            c cVarN = n(viewRemove);
            cVarN.e = null;
            if (cVarN.c() || cVarN.b()) {
                this.f921d -= StaggeredGridLayoutManager.this.u.e(viewRemove);
            }
            if (size == 1) {
                this.f919b = Integer.MIN_VALUE;
            }
            this.f920c = Integer.MIN_VALUE;
        }

        void t() {
            View viewRemove = this.a.remove(0);
            c cVarN = n(viewRemove);
            cVarN.e = null;
            if (this.a.size() == 0) {
                this.f920c = Integer.MIN_VALUE;
            }
            if (cVarN.c() || cVarN.b()) {
                this.f921d -= StaggeredGridLayoutManager.this.u.e(viewRemove);
            }
            this.f919b = Integer.MIN_VALUE;
        }

        void u(View view) {
            c cVarN = n(view);
            cVarN.e = this;
            this.a.add(0, view);
            this.f919b = Integer.MIN_VALUE;
            if (this.a.size() == 1) {
                this.f920c = Integer.MIN_VALUE;
            }
            if (cVarN.c() || cVarN.b()) {
                this.f921d += StaggeredGridLayoutManager.this.u.e(view);
            }
        }

        void v(int i) {
            this.f919b = i;
            this.f920c = i;
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        RecyclerView.n.d dVarI0 = RecyclerView.n.i0(context, attributeSet, i, i2);
        H2(dVarI0.a);
        J2(dVarI0.f885b);
        I2(dVarI0.f886c);
        this.y = new androidx.recyclerview.widget.f();
        a2();
    }

    private void A2(RecyclerView.u uVar, androidx.recyclerview.widget.f fVar) {
        if (!fVar.a || fVar.i) {
            return;
        }
        if (fVar.f972b == 0) {
            if (fVar.e == -1) {
                B2(uVar, fVar.g);
                return;
            } else {
                C2(uVar, fVar.f);
                return;
            }
        }
        if (fVar.e != -1) {
            int iN2 = n2(fVar.g) - fVar.g;
            C2(uVar, iN2 < 0 ? fVar.f : Math.min(iN2, fVar.f972b) + fVar.f);
        } else {
            int i = fVar.f;
            int iM2 = i - m2(i);
            B2(uVar, iM2 < 0 ? fVar.g : fVar.g - Math.min(iM2, fVar.f972b));
        }
    }

    private void B2(RecyclerView.u uVar, int i) {
        for (int iJ = J() - 1; iJ >= 0; iJ--) {
            View viewI = I(iJ);
            if (this.u.g(viewI) < i || this.u.q(viewI) < i) {
                return;
            }
            c cVar = (c) viewI.getLayoutParams();
            if (cVar.f) {
                for (int i2 = 0; i2 < this.s; i2++) {
                    if (this.t[i2].a.size() == 1) {
                        return;
                    }
                }
                for (int i3 = 0; i3 < this.s; i3++) {
                    this.t[i3].s();
                }
            } else if (cVar.e.a.size() == 1) {
                return;
            } else {
                cVar.e.s();
            }
            m1(viewI, uVar);
        }
    }

    private void C2(RecyclerView.u uVar, int i) {
        while (J() > 0) {
            View viewI = I(0);
            if (this.u.d(viewI) > i || this.u.p(viewI) > i) {
                return;
            }
            c cVar = (c) viewI.getLayoutParams();
            if (cVar.f) {
                for (int i2 = 0; i2 < this.s; i2++) {
                    if (this.t[i2].a.size() == 1) {
                        return;
                    }
                }
                for (int i3 = 0; i3 < this.s; i3++) {
                    this.t[i3].t();
                }
            } else if (cVar.e.a.size() == 1) {
                return;
            } else {
                cVar.e.t();
            }
            m1(viewI, uVar);
        }
    }

    private void D2() {
        if (this.v.k() == 1073741824) {
            return;
        }
        float fMax = CropImageView.DEFAULT_ASPECT_RATIO;
        int iJ = J();
        for (int i = 0; i < iJ; i++) {
            View viewI = I(i);
            float fE = this.v.e(viewI);
            if (fE >= fMax) {
                if (((c) viewI.getLayoutParams()).f()) {
                    fE = (fE * 1.0f) / this.s;
                }
                fMax = Math.max(fMax, fE);
            }
        }
        int i2 = this.x;
        int iRound = Math.round(fMax * this.s);
        if (this.v.k() == Integer.MIN_VALUE) {
            iRound = Math.min(iRound, this.v.n());
        }
        P2(iRound);
        if (this.x == i2) {
            return;
        }
        for (int i3 = 0; i3 < iJ; i3++) {
            View viewI2 = I(i3);
            c cVar = (c) viewI2.getLayoutParams();
            if (!cVar.f) {
                if (t2() && this.w == 1) {
                    int i4 = this.s;
                    int i5 = cVar.e.e;
                    viewI2.offsetLeftAndRight(((-((i4 - 1) - i5)) * this.x) - ((-((i4 - 1) - i5)) * i2));
                } else {
                    int i6 = cVar.e.e;
                    int i7 = this.x * i6;
                    int i8 = i6 * i2;
                    if (this.w == 1) {
                        viewI2.offsetLeftAndRight(i7 - i8);
                    } else {
                        viewI2.offsetTopAndBottom(i7 - i8);
                    }
                }
            }
        }
    }

    private void E2() {
        if (this.w == 1 || !t2()) {
            this.A = this.z;
        } else {
            this.A = !this.z;
        }
    }

    private void G2(int i) {
        androidx.recyclerview.widget.f fVar = this.y;
        fVar.e = i;
        fVar.f974d = this.A != (i == -1) ? -1 : 1;
    }

    private void K2(int i, int i2) {
        for (int i3 = 0; i3 < this.s; i3++) {
            if (!this.t[i3].a.isEmpty()) {
                Q2(this.t[i3], i, i2);
            }
        }
    }

    private boolean L2(RecyclerView.z zVar, b bVar) {
        bVar.a = this.G ? g2(zVar.b()) : c2(zVar.b());
        bVar.f909b = Integer.MIN_VALUE;
        return true;
    }

    private void M1(View view) {
        for (int i = this.s - 1; i >= 0; i--) {
            this.t[i].a(view);
        }
    }

    private void N1(b bVar) {
        e eVar = this.I;
        int i = eVar.f918d;
        if (i > 0) {
            if (i == this.s) {
                for (int i2 = 0; i2 < this.s; i2++) {
                    this.t[i2].e();
                    e eVar2 = this.I;
                    int i3 = eVar2.e[i2];
                    if (i3 != Integer.MIN_VALUE) {
                        i3 += eVar2.j ? this.u.i() : this.u.m();
                    }
                    this.t[i2].v(i3);
                }
            } else {
                eVar.k();
                e eVar3 = this.I;
                eVar3.f916b = eVar3.f917c;
            }
        }
        e eVar4 = this.I;
        this.H = eVar4.k;
        I2(eVar4.i);
        E2();
        e eVar5 = this.I;
        int i4 = eVar5.f916b;
        if (i4 != -1) {
            this.C = i4;
            bVar.f910c = eVar5.j;
        } else {
            bVar.f910c = this.A;
        }
        e eVar6 = this.I;
        if (eVar6.f > 1) {
            d dVar = this.E;
            dVar.a = eVar6.g;
            dVar.f912b = eVar6.h;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void O2(int i, RecyclerView.z zVar) {
        int iN;
        int iN2;
        int iC;
        androidx.recyclerview.widget.f fVar = this.y;
        boolean z = false;
        fVar.f972b = 0;
        fVar.f973c = i;
        if (!x0() || (iC = zVar.c()) == -1) {
            iN = 0;
        } else {
            if (this.A != (iC < i)) {
                iN2 = this.u.n();
                iN = 0;
                if (M()) {
                    this.y.g = this.u.h() + iN;
                    this.y.f = -iN2;
                } else {
                    this.y.f = this.u.m() - iN2;
                    this.y.g = this.u.i() + iN;
                }
                androidx.recyclerview.widget.f fVar2 = this.y;
                fVar2.h = false;
                fVar2.a = true;
                if (this.u.k() == 0 && this.u.h() == 0) {
                    z = true;
                }
                fVar2.i = z;
            }
            iN = this.u.n();
        }
        iN2 = 0;
        if (M()) {
        }
        androidx.recyclerview.widget.f fVar22 = this.y;
        fVar22.h = false;
        fVar22.a = true;
        if (this.u.k() == 0) {
            z = true;
        }
        fVar22.i = z;
    }

    private void Q1(View view, c cVar, androidx.recyclerview.widget.f fVar) {
        if (fVar.e == 1) {
            if (cVar.f) {
                M1(view);
                return;
            } else {
                cVar.e.a(view);
                return;
            }
        }
        if (cVar.f) {
            z2(view);
        } else {
            cVar.e.u(view);
        }
    }

    private void Q2(f fVar, int i, int i2) {
        int iJ = fVar.j();
        if (i == -1) {
            if (fVar.o() + iJ <= i2) {
                this.B.set(fVar.e, false);
            }
        } else if (fVar.k() - iJ >= i2) {
            this.B.set(fVar.e, false);
        }
    }

    private int R1(int i) {
        if (J() == 0) {
            return this.A ? 1 : -1;
        }
        return (i < j2()) != this.A ? -1 : 1;
    }

    private int R2(int i, int i2, int i3) {
        if (i2 == 0 && i3 == 0) {
            return i;
        }
        int mode = View.MeasureSpec.getMode(i);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - i2) - i3), mode) : i;
    }

    private boolean T1(f fVar) {
        if (this.A) {
            if (fVar.k() < this.u.i()) {
                ArrayList<View> arrayList = fVar.a;
                return !fVar.n(arrayList.get(arrayList.size() - 1)).f;
            }
        } else if (fVar.o() > this.u.m()) {
            return !fVar.n(fVar.a.get(0)).f;
        }
        return false;
    }

    private int U1(RecyclerView.z zVar) {
        if (J() == 0) {
            return 0;
        }
        return l.a(zVar, this.u, e2(!this.N), d2(!this.N), this, this.N);
    }

    private int V1(RecyclerView.z zVar) {
        if (J() == 0) {
            return 0;
        }
        return l.b(zVar, this.u, e2(!this.N), d2(!this.N), this, this.N, this.A);
    }

    private int W1(RecyclerView.z zVar) {
        if (J() == 0) {
            return 0;
        }
        return l.c(zVar, this.u, e2(!this.N), d2(!this.N), this, this.N);
    }

    private int X1(int i) {
        return i != 1 ? i != 2 ? i != 17 ? i != 33 ? i != 66 ? (i == 130 && this.w == 1) ? 1 : Integer.MIN_VALUE : this.w == 0 ? 1 : Integer.MIN_VALUE : this.w == 1 ? -1 : Integer.MIN_VALUE : this.w == 0 ? -1 : Integer.MIN_VALUE : (this.w != 1 && t2()) ? -1 : 1 : (this.w != 1 && t2()) ? 1 : -1;
    }

    private d.a Y1(int i) {
        d.a aVar = new d.a();
        aVar.f915d = new int[this.s];
        for (int i2 = 0; i2 < this.s; i2++) {
            aVar.f915d[i2] = i - this.t[i2].l(i);
        }
        return aVar;
    }

    private d.a Z1(int i) {
        d.a aVar = new d.a();
        aVar.f915d = new int[this.s];
        for (int i2 = 0; i2 < this.s; i2++) {
            aVar.f915d[i2] = this.t[i2].p(i) - i;
        }
        return aVar;
    }

    private void a2() {
        this.u = i.b(this, this.w);
        this.v = i.b(this, 1 - this.w);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v7 */
    private int b2(RecyclerView.u uVar, androidx.recyclerview.widget.f fVar, RecyclerView.z zVar) {
        int i;
        f fVarP2;
        int iE;
        int i2;
        int iE2;
        int iE3;
        ?? r9 = 0;
        this.B.set(0, this.s, true);
        if (this.y.i) {
            i = fVar.e == 1 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        } else {
            i = fVar.e == 1 ? fVar.g + fVar.f972b : fVar.f - fVar.f972b;
        }
        K2(fVar.e, i);
        int i3 = this.A ? this.u.i() : this.u.m();
        boolean z = false;
        while (fVar.a(zVar) && (this.y.i || !this.B.isEmpty())) {
            View viewB = fVar.b(uVar);
            c cVar = (c) viewB.getLayoutParams();
            int iA = cVar.a();
            int iG = this.E.g(iA);
            boolean z2 = iG == -1;
            if (z2) {
                fVarP2 = cVar.f ? this.t[r9] : p2(fVar);
                this.E.n(iA, fVarP2);
            } else {
                fVarP2 = this.t[iG];
            }
            f fVar2 = fVarP2;
            cVar.e = fVar2;
            if (fVar.e == 1) {
                d(viewB);
            } else {
                e(viewB, r9);
            }
            v2(viewB, cVar, r9);
            if (fVar.e == 1) {
                int iL2 = cVar.f ? l2(i3) : fVar2.l(i3);
                int iE4 = this.u.e(viewB) + iL2;
                if (z2 && cVar.f) {
                    d.a aVarY1 = Y1(iL2);
                    aVarY1.f914c = -1;
                    aVarY1.f913b = iA;
                    this.E.a(aVarY1);
                }
                i2 = iE4;
                iE = iL2;
            } else {
                int iO2 = cVar.f ? o2(i3) : fVar2.p(i3);
                iE = iO2 - this.u.e(viewB);
                if (z2 && cVar.f) {
                    d.a aVarZ1 = Z1(iO2);
                    aVarZ1.f914c = 1;
                    aVarZ1.f913b = iA;
                    this.E.a(aVarZ1);
                }
                i2 = iO2;
            }
            if (cVar.f && fVar.f974d == -1) {
                if (z2) {
                    this.M = true;
                } else {
                    if (!(fVar.e == 1 ? O1() : P1())) {
                        d.a aVarF = this.E.f(iA);
                        if (aVarF != null) {
                            aVarF.e = true;
                        }
                        this.M = true;
                    }
                }
            }
            Q1(viewB, cVar, fVar);
            if (t2() && this.w == 1) {
                int i4 = cVar.f ? this.v.i() : this.v.i() - (((this.s - 1) - fVar2.e) * this.x);
                iE3 = i4;
                iE2 = i4 - this.v.e(viewB);
            } else {
                int iM = cVar.f ? this.v.m() : (fVar2.e * this.x) + this.v.m();
                iE2 = iM;
                iE3 = this.v.e(viewB) + iM;
            }
            if (this.w == 1) {
                z0(viewB, iE2, iE, iE3, i2);
            } else {
                z0(viewB, iE, iE2, i2, iE3);
            }
            if (cVar.f) {
                K2(this.y.e, i);
            } else {
                Q2(fVar2, this.y.e, i);
            }
            A2(uVar, this.y);
            if (this.y.h && viewB.hasFocusable()) {
                if (cVar.f) {
                    this.B.clear();
                } else {
                    this.B.set(fVar2.e, false);
                }
            }
            z = true;
            r9 = 0;
        }
        if (!z) {
            A2(uVar, this.y);
        }
        int iM2 = this.y.e == -1 ? this.u.m() - o2(this.u.m()) : l2(this.u.i()) - this.u.i();
        if (iM2 > 0) {
            return Math.min(fVar.f972b, iM2);
        }
        return 0;
    }

    private int c2(int i) {
        int iJ = J();
        for (int i2 = 0; i2 < iJ; i2++) {
            int iH0 = h0(I(i2));
            if (iH0 >= 0 && iH0 < i) {
                return iH0;
            }
        }
        return 0;
    }

    private int g2(int i) {
        for (int iJ = J() - 1; iJ >= 0; iJ--) {
            int iH0 = h0(I(iJ));
            if (iH0 >= 0 && iH0 < i) {
                return iH0;
            }
        }
        return 0;
    }

    private void h2(RecyclerView.u uVar, RecyclerView.z zVar, boolean z) {
        int i;
        int iL2 = l2(Integer.MIN_VALUE);
        if (iL2 != Integer.MIN_VALUE && (i = this.u.i() - iL2) > 0) {
            int i2 = i - (-F2(-i, uVar, zVar));
            if (!z || i2 <= 0) {
                return;
            }
            this.u.r(i2);
        }
    }

    private void i2(RecyclerView.u uVar, RecyclerView.z zVar, boolean z) {
        int iM;
        int iO2 = o2(Integer.MAX_VALUE);
        if (iO2 != Integer.MAX_VALUE && (iM = iO2 - this.u.m()) > 0) {
            int iF2 = iM - F2(iM, uVar, zVar);
            if (!z || iF2 <= 0) {
                return;
            }
            this.u.r(-iF2);
        }
    }

    private int l2(int i) {
        int iL = this.t[0].l(i);
        for (int i2 = 1; i2 < this.s; i2++) {
            int iL2 = this.t[i2].l(i);
            if (iL2 > iL) {
                iL = iL2;
            }
        }
        return iL;
    }

    private int m2(int i) {
        int iP = this.t[0].p(i);
        for (int i2 = 1; i2 < this.s; i2++) {
            int iP2 = this.t[i2].p(i);
            if (iP2 > iP) {
                iP = iP2;
            }
        }
        return iP;
    }

    private int n2(int i) {
        int iL = this.t[0].l(i);
        for (int i2 = 1; i2 < this.s; i2++) {
            int iL2 = this.t[i2].l(i);
            if (iL2 < iL) {
                iL = iL2;
            }
        }
        return iL;
    }

    private int o2(int i) {
        int iP = this.t[0].p(i);
        for (int i2 = 1; i2 < this.s; i2++) {
            int iP2 = this.t[i2].p(i);
            if (iP2 < iP) {
                iP = iP2;
            }
        }
        return iP;
    }

    private f p2(androidx.recyclerview.widget.f fVar) {
        int i;
        int i2;
        int i3 = -1;
        if (x2(fVar.e)) {
            i = this.s - 1;
            i2 = -1;
        } else {
            i = 0;
            i3 = this.s;
            i2 = 1;
        }
        f fVar2 = null;
        if (fVar.e == 1) {
            int i4 = Integer.MAX_VALUE;
            int iM = this.u.m();
            while (i != i3) {
                f fVar3 = this.t[i];
                int iL = fVar3.l(iM);
                if (iL < i4) {
                    fVar2 = fVar3;
                    i4 = iL;
                }
                i += i2;
            }
            return fVar2;
        }
        int i5 = Integer.MIN_VALUE;
        int i6 = this.u.i();
        while (i != i3) {
            f fVar4 = this.t[i];
            int iP = fVar4.p(i6);
            if (iP > i5) {
                fVar2 = fVar4;
                i5 = iP;
            }
            i += i2;
        }
        return fVar2;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0043 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void q2(int i, int i2, int i3) {
        int i4;
        int i5;
        int iK2 = this.A ? k2() : j2();
        if (i3 != 8) {
            i4 = i + i2;
        } else {
            if (i >= i2) {
                i4 = i + 1;
                i5 = i2;
                this.E.h(i5);
                if (i3 != 1) {
                    this.E.j(i, i2);
                } else if (i3 == 2) {
                    this.E.k(i, i2);
                } else if (i3 == 8) {
                    this.E.k(i, 1);
                    this.E.j(i2, 1);
                }
                if (i4 > iK2) {
                    return;
                }
                if (i5 <= (this.A ? j2() : k2())) {
                    t1();
                    return;
                }
                return;
            }
            i4 = i2 + 1;
        }
        i5 = i;
        this.E.h(i5);
        if (i3 != 1) {
        }
        if (i4 > iK2) {
        }
    }

    private void u2(View view, int i, int i2, boolean z) {
        j(view, this.K);
        c cVar = (c) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) cVar).leftMargin;
        Rect rect = this.K;
        int iR2 = R2(i, i3 + rect.left, ((ViewGroup.MarginLayoutParams) cVar).rightMargin + rect.right);
        int i4 = ((ViewGroup.MarginLayoutParams) cVar).topMargin;
        Rect rect2 = this.K;
        int iR22 = R2(i2, i4 + rect2.top, ((ViewGroup.MarginLayoutParams) cVar).bottomMargin + rect2.bottom);
        if (z ? H1(view, iR2, iR22, cVar) : F1(view, iR2, iR22, cVar)) {
            view.measure(iR2, iR22);
        }
    }

    private void v2(View view, c cVar, boolean z) {
        if (cVar.f) {
            if (this.w == 1) {
                u2(view, this.J, RecyclerView.n.K(W(), X(), g0() + d0(), ((ViewGroup.MarginLayoutParams) cVar).height, true), z);
                return;
            } else {
                u2(view, RecyclerView.n.K(o0(), p0(), e0() + f0(), ((ViewGroup.MarginLayoutParams) cVar).width, true), this.J, z);
                return;
            }
        }
        if (this.w == 1) {
            u2(view, RecyclerView.n.K(this.x, p0(), 0, ((ViewGroup.MarginLayoutParams) cVar).width, false), RecyclerView.n.K(W(), X(), g0() + d0(), ((ViewGroup.MarginLayoutParams) cVar).height, true), z);
        } else {
            u2(view, RecyclerView.n.K(o0(), p0(), e0() + f0(), ((ViewGroup.MarginLayoutParams) cVar).width, true), RecyclerView.n.K(this.x, X(), 0, ((ViewGroup.MarginLayoutParams) cVar).height, false), z);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:89:0x015a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void w2(RecyclerView.u uVar, RecyclerView.z zVar, boolean z) {
        e eVar;
        b bVar = this.L;
        if (!(this.I == null && this.C == -1) && zVar.b() == 0) {
            k1(uVar);
            bVar.c();
            return;
        }
        boolean z2 = true;
        boolean z3 = (bVar.e && this.C == -1 && this.I == null) ? false : true;
        if (z3) {
            bVar.c();
            if (this.I != null) {
                N1(bVar);
            } else {
                E2();
                bVar.f910c = this.A;
            }
            N2(zVar, bVar);
            bVar.e = true;
        }
        if (this.I == null && this.C == -1 && (bVar.f910c != this.G || t2() != this.H)) {
            this.E.b();
            bVar.f911d = true;
        }
        if (J() > 0 && ((eVar = this.I) == null || eVar.f918d < 1)) {
            if (bVar.f911d) {
                for (int i = 0; i < this.s; i++) {
                    this.t[i].e();
                    int i2 = bVar.f909b;
                    if (i2 != Integer.MIN_VALUE) {
                        this.t[i].v(i2);
                    }
                }
            } else if (z3 || this.L.f == null) {
                for (int i3 = 0; i3 < this.s; i3++) {
                    this.t[i3].b(this.A, bVar.f909b);
                }
                this.L.d(this.t);
            } else {
                for (int i4 = 0; i4 < this.s; i4++) {
                    f fVar = this.t[i4];
                    fVar.e();
                    fVar.v(this.L.f[i4]);
                }
            }
        }
        w(uVar);
        this.y.a = false;
        this.M = false;
        P2(this.v.n());
        O2(bVar.a, zVar);
        if (bVar.f910c) {
            G2(-1);
            b2(uVar, this.y, zVar);
            G2(1);
            androidx.recyclerview.widget.f fVar2 = this.y;
            fVar2.f973c = bVar.a + fVar2.f974d;
            b2(uVar, fVar2, zVar);
        } else {
            G2(1);
            b2(uVar, this.y, zVar);
            G2(-1);
            androidx.recyclerview.widget.f fVar3 = this.y;
            fVar3.f973c = bVar.a + fVar3.f974d;
            b2(uVar, fVar3, zVar);
        }
        D2();
        if (J() > 0) {
            if (this.A) {
                h2(uVar, zVar, true);
                i2(uVar, zVar, false);
            } else {
                i2(uVar, zVar, true);
                h2(uVar, zVar, false);
            }
        }
        if (!z || zVar.e()) {
            z2 = false;
        } else if (this.F != 0 && J() > 0 && (this.M || r2() != null)) {
            o1(this.P);
            if (!S1()) {
            }
        }
        if (zVar.e()) {
            this.L.c();
        }
        this.G = bVar.f910c;
        this.H = t2();
        if (z2) {
            this.L.c();
            w2(uVar, zVar, false);
        }
    }

    private boolean x2(int i) {
        if (this.w == 0) {
            return (i == -1) != this.A;
        }
        return ((i == -1) == this.A) == t2();
    }

    private void z2(View view) {
        for (int i = this.s - 1; i >= 0; i--) {
            this.t[i].u(view);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void C0(int i) {
        super.C0(i);
        for (int i2 = 0; i2 < this.s; i2++) {
            this.t[i2].r(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void C1(Rect rect, int i, int i2) {
        int iN;
        int iN2;
        int iE0 = e0() + f0();
        int iG0 = g0() + d0();
        if (this.w == 1) {
            iN2 = RecyclerView.n.n(i2, rect.height() + iG0, b0());
            iN = RecyclerView.n.n(i, (this.x * this.s) + iE0, c0());
        } else {
            iN = RecyclerView.n.n(i, rect.width() + iE0, c0());
            iN2 = RecyclerView.n.n(i2, (this.x * this.s) + iG0, b0());
        }
        B1(iN, iN2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public RecyclerView.o D() {
        return this.w == 0 ? new c(-2, -1) : new c(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void D0(int i) {
        super.D0(i);
        for (int i2 = 0; i2 < this.s; i2++) {
            this.t[i2].r(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public RecyclerView.o E(Context context, AttributeSet attributeSet) {
        return new c(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public RecyclerView.o F(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new c((ViewGroup.MarginLayoutParams) layoutParams) : new c(layoutParams);
    }

    int F2(int i, RecyclerView.u uVar, RecyclerView.z zVar) {
        if (J() == 0 || i == 0) {
            return 0;
        }
        y2(i, zVar);
        int iB2 = b2(uVar, this.y, zVar);
        if (this.y.f972b >= iB2) {
            i = i < 0 ? -iB2 : iB2;
        }
        this.u.r(-i);
        this.G = this.A;
        androidx.recyclerview.widget.f fVar = this.y;
        fVar.f972b = 0;
        A2(uVar, fVar);
        return i;
    }

    public void H2(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        g(null);
        if (i == this.w) {
            return;
        }
        this.w = i;
        i iVar = this.u;
        this.u = this.v;
        this.v = iVar;
        t1();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void I0(RecyclerView recyclerView, RecyclerView.u uVar) {
        super.I0(recyclerView, uVar);
        o1(this.P);
        for (int i = 0; i < this.s; i++) {
            this.t[i].e();
        }
        recyclerView.requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void I1(RecyclerView recyclerView, RecyclerView.z zVar, int i) {
        g gVar = new g(recyclerView.getContext());
        gVar.p(i);
        J1(gVar);
    }

    public void I2(boolean z) {
        g(null);
        e eVar = this.I;
        if (eVar != null && eVar.i != z) {
            eVar.i = z;
        }
        this.z = z;
        t1();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public View J0(View view, int i, RecyclerView.u uVar, RecyclerView.z zVar) {
        View viewB;
        View viewM;
        if (J() == 0 || (viewB = B(view)) == null) {
            return null;
        }
        E2();
        int iX1 = X1(i);
        if (iX1 == Integer.MIN_VALUE) {
            return null;
        }
        c cVar = (c) viewB.getLayoutParams();
        boolean z = cVar.f;
        f fVar = cVar.e;
        int iK2 = iX1 == 1 ? k2() : j2();
        O2(iK2, zVar);
        G2(iX1);
        androidx.recyclerview.widget.f fVar2 = this.y;
        fVar2.f973c = fVar2.f974d + iK2;
        fVar2.f972b = (int) (this.u.n() * 0.33333334f);
        androidx.recyclerview.widget.f fVar3 = this.y;
        fVar3.h = true;
        fVar3.a = false;
        b2(uVar, fVar3, zVar);
        this.G = this.A;
        if (!z && (viewM = fVar.m(iK2, iX1)) != null && viewM != viewB) {
            return viewM;
        }
        if (x2(iX1)) {
            for (int i2 = this.s - 1; i2 >= 0; i2--) {
                View viewM2 = this.t[i2].m(iK2, iX1);
                if (viewM2 != null && viewM2 != viewB) {
                    return viewM2;
                }
            }
        } else {
            for (int i3 = 0; i3 < this.s; i3++) {
                View viewM3 = this.t[i3].m(iK2, iX1);
                if (viewM3 != null && viewM3 != viewB) {
                    return viewM3;
                }
            }
        }
        boolean z2 = (this.z ^ true) == (iX1 == -1);
        if (!z) {
            View viewC = C(z2 ? fVar.f() : fVar.g());
            if (viewC != null && viewC != viewB) {
                return viewC;
            }
        }
        if (x2(iX1)) {
            for (int i4 = this.s - 1; i4 >= 0; i4--) {
                if (i4 != fVar.e) {
                    View viewC2 = C(z2 ? this.t[i4].f() : this.t[i4].g());
                    if (viewC2 != null && viewC2 != viewB) {
                        return viewC2;
                    }
                }
            }
        } else {
            for (int i5 = 0; i5 < this.s; i5++) {
                View viewC3 = C(z2 ? this.t[i5].f() : this.t[i5].g());
                if (viewC3 != null && viewC3 != viewB) {
                    return viewC3;
                }
            }
        }
        return null;
    }

    public void J2(int i) {
        g(null);
        if (i != this.s) {
            s2();
            this.s = i;
            this.B = new BitSet(this.s);
            this.t = new f[this.s];
            for (int i2 = 0; i2 < this.s; i2++) {
                this.t[i2] = new f(i2);
            }
            t1();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void K0(AccessibilityEvent accessibilityEvent) {
        super.K0(accessibilityEvent);
        if (J() > 0) {
            View viewE2 = e2(false);
            View viewD2 = d2(false);
            if (viewE2 == null || viewD2 == null) {
                return;
            }
            int iH0 = h0(viewE2);
            int iH02 = h0(viewD2);
            if (iH0 < iH02) {
                accessibilityEvent.setFromIndex(iH0);
                accessibilityEvent.setToIndex(iH02);
            } else {
                accessibilityEvent.setFromIndex(iH02);
                accessibilityEvent.setToIndex(iH0);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public boolean L1() {
        return this.I == null;
    }

    boolean M2(RecyclerView.z zVar, b bVar) {
        int i;
        if (!zVar.e() && (i = this.C) != -1) {
            if (i >= 0 && i < zVar.b()) {
                e eVar = this.I;
                if (eVar == null || eVar.f916b == -1 || eVar.f918d < 1) {
                    View viewC = C(this.C);
                    if (viewC != null) {
                        bVar.a = this.A ? k2() : j2();
                        if (this.D != Integer.MIN_VALUE) {
                            if (bVar.f910c) {
                                bVar.f909b = (this.u.i() - this.D) - this.u.d(viewC);
                            } else {
                                bVar.f909b = (this.u.m() + this.D) - this.u.g(viewC);
                            }
                            return true;
                        }
                        if (this.u.e(viewC) > this.u.n()) {
                            bVar.f909b = bVar.f910c ? this.u.i() : this.u.m();
                            return true;
                        }
                        int iG = this.u.g(viewC) - this.u.m();
                        if (iG < 0) {
                            bVar.f909b = -iG;
                            return true;
                        }
                        int i2 = this.u.i() - this.u.d(viewC);
                        if (i2 < 0) {
                            bVar.f909b = i2;
                            return true;
                        }
                        bVar.f909b = Integer.MIN_VALUE;
                    } else {
                        int i3 = this.C;
                        bVar.a = i3;
                        int i4 = this.D;
                        if (i4 == Integer.MIN_VALUE) {
                            bVar.f910c = R1(i3) == 1;
                            bVar.a();
                        } else {
                            bVar.b(i4);
                        }
                        bVar.f911d = true;
                    }
                } else {
                    bVar.f909b = Integer.MIN_VALUE;
                    bVar.a = this.C;
                }
                return true;
            }
            this.C = -1;
            this.D = Integer.MIN_VALUE;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public int N(RecyclerView.u uVar, RecyclerView.z zVar) {
        return this.w == 1 ? this.s : super.N(uVar, zVar);
    }

    void N2(RecyclerView.z zVar, b bVar) {
        if (M2(zVar, bVar) || L2(zVar, bVar)) {
            return;
        }
        bVar.a();
        bVar.a = 0;
    }

    boolean O1() {
        int iL = this.t[0].l(Integer.MIN_VALUE);
        for (int i = 1; i < this.s; i++) {
            if (this.t[i].l(Integer.MIN_VALUE) != iL) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void P0(RecyclerView.u uVar, RecyclerView.z zVar, View view, androidx.core.view.e0.c cVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof c)) {
            super.O0(view, cVar);
            return;
        }
        c cVar2 = (c) layoutParams;
        if (this.w == 0) {
            cVar.Z(c.C0024c.a(cVar2.e(), cVar2.f ? this.s : 1, -1, -1, false, false));
        } else {
            cVar.Z(c.C0024c.a(-1, -1, cVar2.e(), cVar2.f ? this.s : 1, false, false));
        }
    }

    boolean P1() {
        int iP = this.t[0].p(Integer.MIN_VALUE);
        for (int i = 1; i < this.s; i++) {
            if (this.t[i].p(Integer.MIN_VALUE) != iP) {
                return false;
            }
        }
        return true;
    }

    void P2(int i) {
        this.x = i / this.s;
        this.J = View.MeasureSpec.makeMeasureSpec(i, this.v.k());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void R0(RecyclerView recyclerView, int i, int i2) {
        q2(i, i2, 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void S0(RecyclerView recyclerView) {
        this.E.b();
        t1();
    }

    boolean S1() {
        int iJ2;
        int iK2;
        if (J() == 0 || this.F == 0 || !r0()) {
            return false;
        }
        if (this.A) {
            iJ2 = k2();
            iK2 = j2();
        } else {
            iJ2 = j2();
            iK2 = k2();
        }
        if (iJ2 == 0 && r2() != null) {
            this.E.b();
            u1();
            t1();
            return true;
        }
        if (!this.M) {
            return false;
        }
        int i = this.A ? -1 : 1;
        int i2 = iK2 + 1;
        d.a aVarE = this.E.e(iJ2, i2, i, true);
        if (aVarE == null) {
            this.M = false;
            this.E.d(i2);
            return false;
        }
        d.a aVarE2 = this.E.e(iJ2, aVarE.f913b, i * (-1), true);
        if (aVarE2 == null) {
            this.E.d(aVarE.f913b);
        } else {
            this.E.d(aVarE2.f913b + 1);
        }
        u1();
        t1();
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void T0(RecyclerView recyclerView, int i, int i2, int i3) {
        q2(i, i2, 8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void U0(RecyclerView recyclerView, int i, int i2) {
        q2(i, i2, 2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void W0(RecyclerView recyclerView, int i, int i2, Object obj) {
        q2(i, i2, 4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void X0(RecyclerView.u uVar, RecyclerView.z zVar) {
        w2(uVar, zVar, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void Y0(RecyclerView.z zVar) {
        super.Y0(zVar);
        this.C = -1;
        this.D = Integer.MIN_VALUE;
        this.I = null;
        this.L.c();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.y.b
    public PointF a(int i) {
        int iR1 = R1(i);
        PointF pointF = new PointF();
        if (iR1 == 0) {
            return null;
        }
        if (this.w == 0) {
            pointF.x = iR1;
            pointF.y = CropImageView.DEFAULT_ASPECT_RATIO;
        } else {
            pointF.x = CropImageView.DEFAULT_ASPECT_RATIO;
            pointF.y = iR1;
        }
        return pointF;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void c1(Parcelable parcelable) {
        if (parcelable instanceof e) {
            this.I = (e) parcelable;
            t1();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public Parcelable d1() {
        int iP;
        int iM;
        int[] iArr;
        if (this.I != null) {
            return new e(this.I);
        }
        e eVar = new e();
        eVar.i = this.z;
        eVar.j = this.G;
        eVar.k = this.H;
        d dVar = this.E;
        if (dVar == null || (iArr = dVar.a) == null) {
            eVar.f = 0;
        } else {
            eVar.g = iArr;
            eVar.f = iArr.length;
            eVar.h = dVar.f912b;
        }
        if (J() > 0) {
            eVar.f916b = this.G ? k2() : j2();
            eVar.f917c = f2();
            int i = this.s;
            eVar.f918d = i;
            eVar.e = new int[i];
            for (int i2 = 0; i2 < this.s; i2++) {
                if (this.G) {
                    iP = this.t[i2].l(Integer.MIN_VALUE);
                    if (iP != Integer.MIN_VALUE) {
                        iM = this.u.i();
                        iP -= iM;
                    }
                } else {
                    iP = this.t[i2].p(Integer.MIN_VALUE);
                    if (iP != Integer.MIN_VALUE) {
                        iM = this.u.m();
                        iP -= iM;
                    }
                }
                eVar.e[i2] = iP;
            }
        } else {
            eVar.f916b = -1;
            eVar.f917c = -1;
            eVar.f918d = 0;
        }
        return eVar;
    }

    View d2(boolean z) {
        int iM = this.u.m();
        int i = this.u.i();
        View view = null;
        for (int iJ = J() - 1; iJ >= 0; iJ--) {
            View viewI = I(iJ);
            int iG = this.u.g(viewI);
            int iD = this.u.d(viewI);
            if (iD > iM && iG < i) {
                if (iD <= i || !z) {
                    return viewI;
                }
                if (view == null) {
                    view = viewI;
                }
            }
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void e1(int i) {
        if (i == 0) {
            S1();
        }
    }

    View e2(boolean z) {
        int iM = this.u.m();
        int i = this.u.i();
        int iJ = J();
        View view = null;
        for (int i2 = 0; i2 < iJ; i2++) {
            View viewI = I(i2);
            int iG = this.u.g(viewI);
            if (this.u.d(viewI) > iM && iG < i) {
                if (iG >= iM || !z) {
                    return viewI;
                }
                if (view == null) {
                    view = viewI;
                }
            }
        }
        return view;
    }

    int f2() {
        View viewD2 = this.A ? d2(true) : e2(true);
        if (viewD2 == null) {
            return -1;
        }
        return h0(viewD2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void g(String str) {
        if (this.I == null) {
            super.g(str);
        }
    }

    int j2() {
        if (J() == 0) {
            return 0;
        }
        return h0(I(0));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public boolean k() {
        return this.w == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public int k0(RecyclerView.u uVar, RecyclerView.z zVar) {
        return this.w == 0 ? this.s : super.k0(uVar, zVar);
    }

    int k2() {
        int iJ = J();
        if (iJ == 0) {
            return 0;
        }
        return h0(I(iJ - 1));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public boolean l() {
        return this.w == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public boolean m(RecyclerView.o oVar) {
        return oVar instanceof c;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void o(int i, int i2, RecyclerView.z zVar, RecyclerView.n.c cVar) {
        int iL;
        int iP;
        if (this.w != 0) {
            i = i2;
        }
        if (J() == 0 || i == 0) {
            return;
        }
        y2(i, zVar);
        int[] iArr = this.O;
        if (iArr == null || iArr.length < this.s) {
            this.O = new int[this.s];
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.s; i4++) {
            androidx.recyclerview.widget.f fVar = this.y;
            if (fVar.f974d == -1) {
                iL = fVar.f;
                iP = this.t[i4].p(iL);
            } else {
                iL = this.t[i4].l(fVar.g);
                iP = this.y.g;
            }
            int i5 = iL - iP;
            if (i5 >= 0) {
                this.O[i3] = i5;
                i3++;
            }
        }
        Arrays.sort(this.O, 0, i3);
        for (int i6 = 0; i6 < i3 && this.y.a(zVar); i6++) {
            cVar.a(this.y.f973c, this.O[i6]);
            androidx.recyclerview.widget.f fVar2 = this.y;
            fVar2.f973c += fVar2.f974d;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public int q(RecyclerView.z zVar) {
        return U1(zVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public int r(RecyclerView.z zVar) {
        return V1(zVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    View r2() {
        int i;
        int i2;
        boolean z;
        int iJ = J() - 1;
        BitSet bitSet = new BitSet(this.s);
        bitSet.set(0, this.s, true);
        byte b2 = (this.w == 1 && t2()) ? (byte) 1 : (byte) -1;
        if (this.A) {
            i = -1;
        } else {
            i = iJ + 1;
            iJ = 0;
        }
        int i3 = iJ < i ? 1 : -1;
        while (iJ != i) {
            View viewI = I(iJ);
            c cVar = (c) viewI.getLayoutParams();
            if (bitSet.get(cVar.e.e)) {
                if (T1(cVar.e)) {
                    return viewI;
                }
                bitSet.clear(cVar.e.e);
            }
            if (!cVar.f && (i2 = iJ + i3) != i) {
                View viewI2 = I(i2);
                if (this.A) {
                    int iD = this.u.d(viewI);
                    int iD2 = this.u.d(viewI2);
                    if (iD < iD2) {
                        return viewI;
                    }
                    z = iD == iD2;
                } else {
                    int iG = this.u.g(viewI);
                    int iG2 = this.u.g(viewI2);
                    if (iG > iG2) {
                        return viewI;
                    }
                    if (iG == iG2) {
                    }
                }
                if (z) {
                    if ((cVar.e.e - ((c) viewI2.getLayoutParams()).e.e < 0) != (b2 < 0)) {
                        return viewI;
                    }
                } else {
                    continue;
                }
            }
            iJ += i3;
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public int s(RecyclerView.z zVar) {
        return W1(zVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public boolean s0() {
        return this.F != 0;
    }

    public void s2() {
        this.E.b();
        t1();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public int t(RecyclerView.z zVar) {
        return U1(zVar);
    }

    boolean t2() {
        return Z() == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public int u(RecyclerView.z zVar) {
        return V1(zVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public int v(RecyclerView.z zVar) {
        return W1(zVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public int w1(int i, RecyclerView.u uVar, RecyclerView.z zVar) {
        return F2(i, uVar, zVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void x1(int i) {
        e eVar = this.I;
        if (eVar != null && eVar.f916b != i) {
            eVar.j();
        }
        this.C = i;
        this.D = Integer.MIN_VALUE;
        t1();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public int y1(int i, RecyclerView.u uVar, RecyclerView.z zVar) {
        return F2(i, uVar, zVar);
    }

    void y2(int i, RecyclerView.z zVar) {
        int iJ2;
        int i2;
        if (i > 0) {
            iJ2 = k2();
            i2 = 1;
        } else {
            iJ2 = j2();
            i2 = -1;
        }
        this.y.a = true;
        O2(iJ2, zVar);
        G2(i2);
        androidx.recyclerview.widget.f fVar = this.y;
        fVar.f973c = iJ2 + fVar.f974d;
        fVar.f972b = Math.abs(i);
    }

    static class d {
        int[] a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        List<a> f912b;

        d() {
        }

        private int i(int i) {
            if (this.f912b == null) {
                return -1;
            }
            a aVarF = f(i);
            if (aVarF != null) {
                this.f912b.remove(aVarF);
            }
            int size = this.f912b.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    i2 = -1;
                    break;
                }
                if (this.f912b.get(i2).f913b >= i) {
                    break;
                }
                i2++;
            }
            if (i2 == -1) {
                return -1;
            }
            a aVar = this.f912b.get(i2);
            this.f912b.remove(i2);
            return aVar.f913b;
        }

        private void l(int i, int i2) {
            List<a> list = this.f912b;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                a aVar = this.f912b.get(size);
                int i3 = aVar.f913b;
                if (i3 >= i) {
                    aVar.f913b = i3 + i2;
                }
            }
        }

        private void m(int i, int i2) {
            List<a> list = this.f912b;
            if (list == null) {
                return;
            }
            int i3 = i + i2;
            for (int size = list.size() - 1; size >= 0; size--) {
                a aVar = this.f912b.get(size);
                int i4 = aVar.f913b;
                if (i4 >= i) {
                    if (i4 < i3) {
                        this.f912b.remove(size);
                    } else {
                        aVar.f913b = i4 - i2;
                    }
                }
            }
        }

        public void a(a aVar) {
            if (this.f912b == null) {
                this.f912b = new ArrayList();
            }
            int size = this.f912b.size();
            for (int i = 0; i < size; i++) {
                a aVar2 = this.f912b.get(i);
                if (aVar2.f913b == aVar.f913b) {
                    this.f912b.remove(i);
                }
                if (aVar2.f913b >= aVar.f913b) {
                    this.f912b.add(i, aVar);
                    return;
                }
            }
            this.f912b.add(aVar);
        }

        void b() {
            int[] iArr = this.a;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f912b = null;
        }

        void c(int i) {
            int[] iArr = this.a;
            if (iArr == null) {
                int[] iArr2 = new int[Math.max(i, 10) + 1];
                this.a = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i >= iArr.length) {
                int[] iArr3 = new int[o(i)];
                this.a = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                int[] iArr4 = this.a;
                Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
            }
        }

        int d(int i) {
            List<a> list = this.f912b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    if (this.f912b.get(size).f913b >= i) {
                        this.f912b.remove(size);
                    }
                }
            }
            return h(i);
        }

        public a e(int i, int i2, int i3, boolean z) {
            List<a> list = this.f912b;
            if (list == null) {
                return null;
            }
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                a aVar = this.f912b.get(i4);
                int i5 = aVar.f913b;
                if (i5 >= i2) {
                    return null;
                }
                if (i5 >= i && (i3 == 0 || aVar.f914c == i3 || (z && aVar.e))) {
                    return aVar;
                }
            }
            return null;
        }

        public a f(int i) {
            List<a> list = this.f912b;
            if (list == null) {
                return null;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                a aVar = this.f912b.get(size);
                if (aVar.f913b == i) {
                    return aVar;
                }
            }
            return null;
        }

        int g(int i) {
            int[] iArr = this.a;
            if (iArr == null || i >= iArr.length) {
                return -1;
            }
            return iArr[i];
        }

        int h(int i) {
            int[] iArr = this.a;
            if (iArr == null || i >= iArr.length) {
                return -1;
            }
            int i2 = i(i);
            if (i2 == -1) {
                int[] iArr2 = this.a;
                Arrays.fill(iArr2, i, iArr2.length, -1);
                return this.a.length;
            }
            int i3 = i2 + 1;
            Arrays.fill(this.a, i, i3, -1);
            return i3;
        }

        void j(int i, int i2) {
            int[] iArr = this.a;
            if (iArr == null || i >= iArr.length) {
                return;
            }
            int i3 = i + i2;
            c(i3);
            int[] iArr2 = this.a;
            System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
            Arrays.fill(this.a, i, i3, -1);
            l(i, i2);
        }

        void k(int i, int i2) {
            int[] iArr = this.a;
            if (iArr == null || i >= iArr.length) {
                return;
            }
            int i3 = i + i2;
            c(i3);
            int[] iArr2 = this.a;
            System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
            int[] iArr3 = this.a;
            Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
            m(i, i2);
        }

        void n(int i, f fVar) {
            c(i);
            this.a[i] = fVar.e;
        }

        int o(int i) {
            int length = this.a.length;
            while (length <= i) {
                length *= 2;
            }
            return length;
        }

        @SuppressLint({"BanParcelableUsage"})
        static class a implements Parcelable {
            public static final Parcelable.Creator<a> CREATOR = new C0035a();

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            int f913b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            int f914c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            int[] f915d;
            boolean e;

            /* JADX INFO: renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a$a, reason: collision with other inner class name */
            static class C0035a implements Parcelable.Creator<a> {
                C0035a() {
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
                this.f913b = parcel.readInt();
                this.f914c = parcel.readInt();
                this.e = parcel.readInt() == 1;
                int i = parcel.readInt();
                if (i > 0) {
                    int[] iArr = new int[i];
                    this.f915d = iArr;
                    parcel.readIntArray(iArr);
                }
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            int j(int i) {
                int[] iArr = this.f915d;
                if (iArr == null) {
                    return 0;
                }
                return iArr[i];
            }

            public String toString() {
                return "FullSpanItem{mPosition=" + this.f913b + ", mGapDir=" + this.f914c + ", mHasUnwantedGapAfter=" + this.e + ", mGapPerSpan=" + Arrays.toString(this.f915d) + '}';
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.f913b);
                parcel.writeInt(this.f914c);
                parcel.writeInt(this.e ? 1 : 0);
                int[] iArr = this.f915d;
                if (iArr == null || iArr.length <= 0) {
                    parcel.writeInt(0);
                } else {
                    parcel.writeInt(iArr.length);
                    parcel.writeIntArray(this.f915d);
                }
            }

            a() {
            }
        }
    }
}
