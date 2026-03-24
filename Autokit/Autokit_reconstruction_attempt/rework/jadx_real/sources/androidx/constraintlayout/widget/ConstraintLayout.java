package androidx.constraintlayout.widget;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import c.e.b.k.d;
import c.e.b.k.e;
import c.e.b.k.k;
import c.e.b.k.m.b;
import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class ConstraintLayout extends ViewGroup {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    SparseArray<View> f441b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ArrayList<androidx.constraintlayout.widget.b> f442c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected c.e.b.k.f f443d;
    private int e;
    private int f;
    private int g;
    private int h;
    protected boolean i;
    private int j;
    private d k;
    protected androidx.constraintlayout.widget.c l;
    private int m;
    private HashMap<String, Integer> n;
    private int o;
    private int p;
    private SparseArray<c.e.b.k.e> q;
    c r;
    private int s;
    private int t;

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[e.b.values().length];
            a = iArr;
            try {
                iArr[e.b.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[e.b.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[e.b.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[e.b.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    class c implements b.InterfaceC0049b {
        ConstraintLayout a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f447b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f448c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f449d;
        int e;
        int f;
        int g;

        public c(ConstraintLayout constraintLayout) {
            this.a = constraintLayout;
        }

        private boolean d(int i, int i2, int i3) {
            if (i == i2) {
                return true;
            }
            int mode = View.MeasureSpec.getMode(i);
            View.MeasureSpec.getSize(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            if (mode2 == 1073741824) {
                return (mode == Integer.MIN_VALUE || mode == 0) && i3 == size;
            }
            return false;
        }

        @Override // c.e.b.k.m.b.InterfaceC0049b
        @SuppressLint({"WrongCall"})
        public final void a(c.e.b.k.e eVar, b.a aVar) {
            int iMakeMeasureSpec;
            int iMakeMeasureSpec2;
            int baseline;
            int iMax;
            int i;
            int measuredHeight;
            int i2;
            if (eVar == null) {
                return;
            }
            if (eVar.Q() == 8 && !eVar.a0()) {
                aVar.e = 0;
                aVar.f = 0;
                aVar.g = 0;
                return;
            }
            if (eVar.I() == null) {
                return;
            }
            e.b bVar = aVar.a;
            e.b bVar2 = aVar.f1145b;
            int i3 = aVar.f1146c;
            int i4 = aVar.f1147d;
            int i5 = this.f447b + this.f448c;
            int i6 = this.f449d;
            View view = (View) eVar.q();
            int i7 = a.a[bVar.ordinal()];
            if (i7 == 1) {
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
            } else if (i7 == 2) {
                iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f, i6, -2);
            } else if (i7 == 3) {
                iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f, i6 + eVar.z(), -1);
            } else if (i7 != 4) {
                iMakeMeasureSpec = 0;
            } else {
                iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f, i6, -2);
                boolean z = eVar.n == 1;
                int i8 = aVar.j;
                if (i8 == b.a.l || i8 == b.a.m) {
                    if (aVar.j == b.a.m || !z || (z && (view.getMeasuredHeight() == eVar.v())) || (view instanceof g) || eVar.e0()) {
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(eVar.R(), 1073741824);
                    }
                }
            }
            int i9 = a.a[bVar2.ordinal()];
            if (i9 == 1) {
                iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
            } else if (i9 == 2) {
                iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.g, i5, -2);
            } else if (i9 == 3) {
                iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.g, i5 + eVar.P(), -1);
            } else if (i9 != 4) {
                iMakeMeasureSpec2 = 0;
            } else {
                iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.g, i5, -2);
                boolean z2 = eVar.o == 1;
                int i10 = aVar.j;
                if (i10 == b.a.l || i10 == b.a.m) {
                    if (aVar.j == b.a.m || !z2 || (z2 && (view.getMeasuredWidth() == eVar.R())) || (view instanceof g) || eVar.f0()) {
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(eVar.v(), 1073741824);
                    }
                }
            }
            c.e.b.k.f fVar = (c.e.b.k.f) eVar.I();
            if (fVar != null && c.e.b.k.j.b(ConstraintLayout.this.j, 256) && view.getMeasuredWidth() == eVar.R() && view.getMeasuredWidth() < fVar.R() && view.getMeasuredHeight() == eVar.v() && view.getMeasuredHeight() < fVar.v() && view.getBaseline() == eVar.n() && !eVar.d0()) {
                if (d(eVar.A(), iMakeMeasureSpec, eVar.R()) && d(eVar.B(), iMakeMeasureSpec2, eVar.v())) {
                    aVar.e = eVar.R();
                    aVar.f = eVar.v();
                    aVar.g = eVar.n();
                    return;
                }
            }
            boolean z3 = bVar == e.b.MATCH_CONSTRAINT;
            boolean z4 = bVar2 == e.b.MATCH_CONSTRAINT;
            boolean z5 = bVar2 == e.b.MATCH_PARENT || bVar2 == e.b.FIXED;
            boolean z6 = bVar == e.b.MATCH_PARENT || bVar == e.b.FIXED;
            boolean z7 = z3 && eVar.U > CropImageView.DEFAULT_ASPECT_RATIO;
            boolean z8 = z4 && eVar.U > CropImageView.DEFAULT_ASPECT_RATIO;
            if (view == null) {
                return;
            }
            b bVar3 = (b) view.getLayoutParams();
            int i11 = aVar.j;
            if (i11 != b.a.l && i11 != b.a.m && z3 && eVar.n == 0 && z4 && eVar.o == 0) {
                i2 = -1;
                baseline = 0;
                iMax = 0;
                measuredHeight = 0;
            } else {
                if ((view instanceof j) && (eVar instanceof k)) {
                    ((j) view).o((k) eVar, iMakeMeasureSpec, iMakeMeasureSpec2);
                } else {
                    view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                }
                eVar.F0(iMakeMeasureSpec, iMakeMeasureSpec2);
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight2 = view.getMeasuredHeight();
                baseline = view.getBaseline();
                int i12 = eVar.q;
                iMax = i12 > 0 ? Math.max(i12, measuredWidth) : measuredWidth;
                int i13 = eVar.r;
                if (i13 > 0) {
                    iMax = Math.min(i13, iMax);
                }
                int i14 = eVar.t;
                if (i14 > 0) {
                    measuredHeight = Math.max(i14, measuredHeight2);
                    i = iMakeMeasureSpec2;
                } else {
                    i = iMakeMeasureSpec2;
                    measuredHeight = measuredHeight2;
                }
                int i15 = eVar.u;
                if (i15 > 0) {
                    measuredHeight = Math.min(i15, measuredHeight);
                }
                if (!c.e.b.k.j.b(ConstraintLayout.this.j, 1)) {
                    if (z7 && z5) {
                        iMax = (int) ((measuredHeight * eVar.U) + 0.5f);
                    } else if (z8 && z6) {
                        measuredHeight = (int) ((iMax / eVar.U) + 0.5f);
                    }
                }
                if (measuredWidth != iMax || measuredHeight2 != measuredHeight) {
                    if (measuredWidth != iMax) {
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMax, 1073741824);
                    }
                    int iMakeMeasureSpec3 = measuredHeight2 != measuredHeight ? View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824) : i;
                    view.measure(iMakeMeasureSpec, iMakeMeasureSpec3);
                    eVar.F0(iMakeMeasureSpec, iMakeMeasureSpec3);
                    iMax = view.getMeasuredWidth();
                    measuredHeight = view.getMeasuredHeight();
                    baseline = view.getBaseline();
                }
                i2 = -1;
            }
            boolean z9 = baseline != i2;
            aVar.i = (iMax == aVar.f1146c && measuredHeight == aVar.f1147d) ? false : true;
            if (bVar3.X) {
                z9 = true;
            }
            if (z9 && baseline != -1 && eVar.n() != baseline) {
                aVar.i = true;
            }
            aVar.e = iMax;
            aVar.f = measuredHeight;
            aVar.h = z9;
            aVar.g = baseline;
        }

        @Override // c.e.b.k.m.b.InterfaceC0049b
        public final void b() {
            int childCount = this.a.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.a.getChildAt(i);
                if (childAt instanceof g) {
                    ((g) childAt).a(this.a);
                }
            }
            int size = this.a.f442c.size();
            if (size > 0) {
                for (int i2 = 0; i2 < size; i2++) {
                    ((androidx.constraintlayout.widget.b) this.a.f442c.get(i2)).k(this.a);
                }
            }
        }

        public void c(int i, int i2, int i3, int i4, int i5, int i6) {
            this.f447b = i3;
            this.f448c = i4;
            this.f449d = i5;
            this.e = i6;
            this.f = i;
            this.g = i2;
        }
    }

    public ConstraintLayout(Context context) {
        super(context);
        this.f441b = new SparseArray<>();
        this.f442c = new ArrayList<>(4);
        this.f443d = new c.e.b.k.f();
        this.e = 0;
        this.f = 0;
        this.g = Integer.MAX_VALUE;
        this.h = Integer.MAX_VALUE;
        this.i = true;
        this.j = 257;
        this.k = null;
        this.l = null;
        this.m = -1;
        this.n = new HashMap<>();
        this.o = -1;
        this.p = -1;
        this.q = new SparseArray<>();
        this.r = new c(this);
        this.s = 0;
        this.t = 0;
        k(null, 0, 0);
    }

    private int getPaddingWidth() {
        int iMax = Math.max(0, getPaddingLeft()) + Math.max(0, getPaddingRight());
        int iMax2 = Build.VERSION.SDK_INT >= 17 ? Math.max(0, getPaddingEnd()) + Math.max(0, getPaddingStart()) : 0;
        return iMax2 > 0 ? iMax2 : iMax;
    }

    private final c.e.b.k.e h(int i) {
        if (i == 0) {
            return this.f443d;
        }
        View viewFindViewById = this.f441b.get(i);
        if (viewFindViewById == null && (viewFindViewById = findViewById(i)) != null && viewFindViewById != this && viewFindViewById.getParent() == this) {
            onViewAdded(viewFindViewById);
        }
        if (viewFindViewById == this) {
            return this.f443d;
        }
        if (viewFindViewById == null) {
            return null;
        }
        return ((b) viewFindViewById.getLayoutParams()).m0;
    }

    private void k(AttributeSet attributeSet, int i, int i2) {
        this.f443d.l0(this);
        this.f443d.D1(this.r);
        this.f441b.put(getId(), this);
        this.k = null;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, i.ConstraintLayout_Layout, i, i2);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i3 = 0; i3 < indexCount; i3++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i3);
                if (index == i.ConstraintLayout_Layout_android_minWidth) {
                    this.e = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.e);
                } else if (index == i.ConstraintLayout_Layout_android_minHeight) {
                    this.f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f);
                } else if (index == i.ConstraintLayout_Layout_android_maxWidth) {
                    this.g = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.g);
                } else if (index == i.ConstraintLayout_Layout_android_maxHeight) {
                    this.h = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.h);
                } else if (index == i.ConstraintLayout_Layout_layout_optimizationLevel) {
                    this.j = typedArrayObtainStyledAttributes.getInt(index, this.j);
                } else if (index == i.ConstraintLayout_Layout_layoutDescription) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            n(resourceId);
                        } catch (Resources.NotFoundException unused) {
                            this.l = null;
                        }
                    }
                } else if (index == i.ConstraintLayout_Layout_constraintSet) {
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    try {
                        d dVar = new d();
                        this.k = dVar;
                        dVar.m(getContext(), resourceId2);
                    } catch (Resources.NotFoundException unused2) {
                        this.k = null;
                    }
                    this.m = resourceId2;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.f443d.E1(this.j);
    }

    private void m() {
        this.i = true;
        this.o = -1;
        this.p = -1;
    }

    private void q() {
        boolean zIsInEditMode = isInEditMode();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            c.e.b.k.e eVarJ = j(getChildAt(i));
            if (eVarJ != null) {
                eVarJ.h0();
            }
        }
        if (zIsInEditMode) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                try {
                    String resourceName = getResources().getResourceName(childAt.getId());
                    r(0, resourceName, Integer.valueOf(childAt.getId()));
                    int iIndexOf = resourceName.indexOf(47);
                    if (iIndexOf != -1) {
                        resourceName = resourceName.substring(iIndexOf + 1);
                    }
                    h(childAt.getId()).m0(resourceName);
                } catch (Resources.NotFoundException unused) {
                }
            }
        }
        if (this.m != -1) {
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt2 = getChildAt(i3);
                if (childAt2.getId() == this.m && (childAt2 instanceof e)) {
                    this.k = ((e) childAt2).getConstraintSet();
                }
            }
        }
        d dVar = this.k;
        if (dVar != null) {
            dVar.d(this, true);
        }
        this.f443d.d1();
        int size = this.f442c.size();
        if (size > 0) {
            for (int i4 = 0; i4 < size; i4++) {
                this.f442c.get(i4).m(this);
            }
        }
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt3 = getChildAt(i5);
            if (childAt3 instanceof g) {
                ((g) childAt3).b(this);
            }
        }
        this.q.clear();
        this.q.put(0, this.f443d);
        this.q.put(getId(), this.f443d);
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt4 = getChildAt(i6);
            this.q.put(childAt4.getId(), j(childAt4));
        }
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt5 = getChildAt(i7);
            c.e.b.k.e eVarJ2 = j(childAt5);
            if (eVarJ2 != null) {
                b bVar = (b) childAt5.getLayoutParams();
                this.f443d.a(eVarJ2);
                d(zIsInEditMode, childAt5, eVarJ2, bVar, this.q);
            }
        }
    }

    private boolean t() {
        int childCount = getChildCount();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= childCount) {
                break;
            }
            if (getChildAt(i).isLayoutRequested()) {
                z = true;
                break;
            }
            i++;
        }
        if (z) {
            q();
        }
        return z;
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (Build.VERSION.SDK_INT < 14) {
            onViewAdded(view);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof b;
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x025e  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00cd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void d(boolean z, View view, c.e.b.k.e eVar, b bVar, SparseArray<c.e.b.k.e> sparseArray) {
        int i;
        int i2;
        int i3;
        float f;
        int i4;
        float f2;
        c.e.b.k.e eVar2;
        c.e.b.k.e eVar3;
        c.e.b.k.e eVar4;
        c.e.b.k.e eVar5;
        bVar.a();
        bVar.n0 = false;
        eVar.T0(view.getVisibility());
        if (bVar.a0) {
            eVar.D0(true);
            eVar.T0(8);
        }
        eVar.l0(view);
        if (view instanceof androidx.constraintlayout.widget.b) {
            ((androidx.constraintlayout.widget.b) view).i(eVar, this.f443d.x1());
        }
        if (bVar.Y) {
            c.e.b.k.g gVar = (c.e.b.k.g) eVar;
            int i5 = bVar.j0;
            int i6 = bVar.k0;
            float f3 = bVar.l0;
            if (Build.VERSION.SDK_INT < 17) {
                i5 = bVar.a;
                i6 = bVar.f444b;
                f3 = bVar.f445c;
            }
            if (f3 != -1.0f) {
                gVar.i1(f3);
                return;
            } else if (i5 != -1) {
                gVar.g1(i5);
                return;
            } else {
                if (i6 != -1) {
                    gVar.h1(i6);
                    return;
                }
                return;
            }
        }
        int i7 = bVar.c0;
        int i8 = bVar.d0;
        int i9 = bVar.e0;
        int i10 = bVar.f0;
        int i11 = bVar.g0;
        int i12 = bVar.h0;
        float f4 = bVar.i0;
        if (Build.VERSION.SDK_INT < 17) {
            i7 = bVar.f446d;
            int i13 = bVar.e;
            int i14 = bVar.f;
            i10 = bVar.g;
            int i15 = bVar.t;
            int i16 = bVar.v;
            f4 = bVar.z;
            if (i7 == -1 && i13 == -1) {
                int i17 = bVar.q;
                if (i17 != -1) {
                    i7 = i17;
                } else {
                    int i18 = bVar.p;
                    if (i18 != -1) {
                        i13 = i18;
                    }
                }
            }
            if (i14 == -1 && i10 == -1) {
                i2 = bVar.r;
                if (i2 == -1) {
                    int i19 = bVar.s;
                    if (i19 != -1) {
                        i = i16;
                        f = f4;
                        i11 = i15;
                        i3 = i19;
                        i8 = i13;
                        i2 = i14;
                    }
                    i2 = i14;
                }
                i = i16;
                i11 = i15;
                i8 = i13;
            } else {
                i2 = i14;
                i = i16;
                i11 = i15;
                i8 = i13;
            }
            i4 = bVar.m;
            if (i4 == -1) {
                c.e.b.k.e eVar6 = sparseArray.get(i4);
                if (eVar6 != null) {
                    eVar.j(eVar6, bVar.o, bVar.n);
                }
            } else {
                if (i7 != -1) {
                    c.e.b.k.e eVar7 = sparseArray.get(i7);
                    if (eVar7 != null) {
                        d.b bVar2 = d.b.LEFT;
                        f2 = f;
                        eVar.X(bVar2, eVar7, bVar2, ((ViewGroup.MarginLayoutParams) bVar).leftMargin, i11);
                    } else {
                        f2 = f;
                    }
                } else {
                    f2 = f;
                    if (i8 != -1 && (eVar2 = sparseArray.get(i8)) != null) {
                        eVar.X(d.b.LEFT, eVar2, d.b.RIGHT, ((ViewGroup.MarginLayoutParams) bVar).leftMargin, i11);
                    }
                }
                if (i2 != -1) {
                    c.e.b.k.e eVar8 = sparseArray.get(i2);
                    if (eVar8 != null) {
                        eVar.X(d.b.RIGHT, eVar8, d.b.LEFT, ((ViewGroup.MarginLayoutParams) bVar).rightMargin, i);
                    }
                } else if (i3 != -1 && (eVar3 = sparseArray.get(i3)) != null) {
                    d.b bVar3 = d.b.RIGHT;
                    eVar.X(bVar3, eVar3, bVar3, ((ViewGroup.MarginLayoutParams) bVar).rightMargin, i);
                }
                int i20 = bVar.h;
                if (i20 != -1) {
                    c.e.b.k.e eVar9 = sparseArray.get(i20);
                    if (eVar9 != null) {
                        d.b bVar4 = d.b.TOP;
                        eVar.X(bVar4, eVar9, bVar4, ((ViewGroup.MarginLayoutParams) bVar).topMargin, bVar.u);
                    }
                } else {
                    int i21 = bVar.i;
                    if (i21 != -1 && (eVar4 = sparseArray.get(i21)) != null) {
                        eVar.X(d.b.TOP, eVar4, d.b.BOTTOM, ((ViewGroup.MarginLayoutParams) bVar).topMargin, bVar.u);
                    }
                }
                int i22 = bVar.j;
                if (i22 != -1) {
                    c.e.b.k.e eVar10 = sparseArray.get(i22);
                    if (eVar10 != null) {
                        eVar.X(d.b.BOTTOM, eVar10, d.b.TOP, ((ViewGroup.MarginLayoutParams) bVar).bottomMargin, bVar.w);
                    }
                } else {
                    int i23 = bVar.k;
                    if (i23 != -1 && (eVar5 = sparseArray.get(i23)) != null) {
                        d.b bVar5 = d.b.BOTTOM;
                        eVar.X(bVar5, eVar5, bVar5, ((ViewGroup.MarginLayoutParams) bVar).bottomMargin, bVar.w);
                    }
                }
                int i24 = bVar.l;
                if (i24 != -1) {
                    View view2 = this.f441b.get(i24);
                    c.e.b.k.e eVar11 = sparseArray.get(bVar.l);
                    if (eVar11 != null && view2 != null && (view2.getLayoutParams() instanceof b)) {
                        b bVar6 = (b) view2.getLayoutParams();
                        bVar.X = true;
                        bVar6.X = true;
                        eVar.m(d.b.BASELINE).a(eVar11.m(d.b.BASELINE), 0, -1, true);
                        eVar.u0(true);
                        bVar6.m0.u0(true);
                        eVar.m(d.b.TOP).p();
                        eVar.m(d.b.BOTTOM).p();
                    }
                }
                float f5 = f2;
                if (f5 >= CropImageView.DEFAULT_ASPECT_RATIO) {
                    eVar.w0(f5);
                }
                float f6 = bVar.A;
                if (f6 >= CropImageView.DEFAULT_ASPECT_RATIO) {
                    eVar.N0(f6);
                }
            }
            if (z && (bVar.P != -1 || bVar.Q != -1)) {
                eVar.L0(bVar.P, bVar.Q);
            }
            if (!bVar.V) {
                eVar.z0(e.b.FIXED);
                eVar.U0(((ViewGroup.MarginLayoutParams) bVar).width);
                if (((ViewGroup.MarginLayoutParams) bVar).width == -2) {
                    eVar.z0(e.b.WRAP_CONTENT);
                }
            } else if (((ViewGroup.MarginLayoutParams) bVar).width == -1) {
                if (bVar.S) {
                    eVar.z0(e.b.MATCH_CONSTRAINT);
                } else {
                    eVar.z0(e.b.MATCH_PARENT);
                }
                eVar.m(d.b.LEFT).g = ((ViewGroup.MarginLayoutParams) bVar).leftMargin;
                eVar.m(d.b.RIGHT).g = ((ViewGroup.MarginLayoutParams) bVar).rightMargin;
            } else {
                eVar.z0(e.b.MATCH_CONSTRAINT);
                eVar.U0(0);
            }
            if (!bVar.W) {
                eVar.Q0(e.b.FIXED);
                eVar.v0(((ViewGroup.MarginLayoutParams) bVar).height);
                if (((ViewGroup.MarginLayoutParams) bVar).height == -2) {
                    eVar.Q0(e.b.WRAP_CONTENT);
                }
            } else if (((ViewGroup.MarginLayoutParams) bVar).height == -1) {
                if (bVar.T) {
                    eVar.Q0(e.b.MATCH_CONSTRAINT);
                } else {
                    eVar.Q0(e.b.MATCH_PARENT);
                }
                eVar.m(d.b.TOP).g = ((ViewGroup.MarginLayoutParams) bVar).topMargin;
                eVar.m(d.b.BOTTOM).g = ((ViewGroup.MarginLayoutParams) bVar).bottomMargin;
            } else {
                eVar.Q0(e.b.MATCH_CONSTRAINT);
                eVar.v0(0);
            }
            eVar.n0(bVar.B);
            eVar.B0(bVar.D);
            eVar.S0(bVar.E);
            eVar.x0(bVar.F);
            eVar.O0(bVar.G);
            eVar.A0(bVar.H, bVar.J, bVar.L, bVar.N);
            eVar.R0(bVar.I, bVar.K, bVar.M, bVar.O);
        }
        i = i12;
        i2 = i9;
        float f7 = f4;
        i3 = i10;
        f = f7;
        i4 = bVar.m;
        if (i4 == -1) {
        }
        if (z) {
            eVar.L0(bVar.P, bVar.Q);
        }
        if (!bVar.V) {
        }
        if (!bVar.W) {
        }
        eVar.n0(bVar.B);
        eVar.B0(bVar.D);
        eVar.S0(bVar.E);
        eVar.x0(bVar.F);
        eVar.O0(bVar.G);
        eVar.A0(bVar.H, bVar.J, bVar.L, bVar.N);
        eVar.R0(bVar.I, bVar.K, bVar.M, bVar.O);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList<androidx.constraintlayout.widget.b> arrayList = this.f442c;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i = 0; i < size; i++) {
                this.f442c.get(i).l(this);
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            int childCount = getChildCount();
            float width = getWidth();
            float height = getHeight();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] strArrSplit = ((String) tag).split(",");
                    if (strArrSplit.length == 4) {
                        int i3 = Integer.parseInt(strArrSplit[0]);
                        int i4 = Integer.parseInt(strArrSplit[1]);
                        int i5 = Integer.parseInt(strArrSplit[2]);
                        int i6 = (int) ((i3 / 1080.0f) * width);
                        int i7 = (int) ((i4 / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(-65536);
                        float f = i6;
                        float f2 = i7;
                        float f3 = i6 + ((int) ((i5 / 1080.0f) * width));
                        canvas.drawLine(f, f2, f3, f2, paint);
                        float f4 = i7 + ((int) ((Integer.parseInt(strArrSplit[3]) / 1920.0f) * height));
                        canvas.drawLine(f3, f2, f3, f4, paint);
                        canvas.drawLine(f3, f4, f, f4, paint);
                        canvas.drawLine(f, f4, f, f2, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f, f2, f3, f4, paint);
                        canvas.drawLine(f, f4, f3, f2, paint);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public b generateDefaultLayoutParams() {
        return new b(-2, -2);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public b generateLayoutParams(AttributeSet attributeSet) {
        return new b(getContext(), attributeSet);
    }

    @Override // android.view.View
    public void forceLayout() {
        m();
        super.forceLayout();
    }

    public Object g(int i, Object obj) {
        if (i != 0 || !(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        HashMap<String, Integer> map = this.n;
        if (map == null || !map.containsKey(str)) {
            return null;
        }
        return this.n.get(str);
    }

    public int getMaxHeight() {
        return this.h;
    }

    public int getMaxWidth() {
        return this.g;
    }

    public int getMinHeight() {
        return this.f;
    }

    public int getMinWidth() {
        return this.e;
    }

    public int getOptimizationLevel() {
        return this.f443d.s1();
    }

    public View i(int i) {
        return this.f441b.get(i);
    }

    public final c.e.b.k.e j(View view) {
        if (view == this) {
            return this.f443d;
        }
        if (view == null) {
            return null;
        }
        return ((b) view.getLayoutParams()).m0;
    }

    protected boolean l() {
        if (Build.VERSION.SDK_INT >= 17) {
            return ((getContext().getApplicationInfo().flags & 4194304) != 0) && 1 == getLayoutDirection();
        }
        return false;
    }

    protected void n(int i) {
        this.l = new androidx.constraintlayout.widget.c(getContext(), this, i);
    }

    protected void o(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        c cVar = this.r;
        int i5 = cVar.e;
        int i6 = i3 + cVar.f449d;
        int i7 = i4 + i5;
        if (Build.VERSION.SDK_INT < 11) {
            setMeasuredDimension(i6, i7);
            this.o = i6;
            this.p = i7;
            return;
        }
        int iResolveSizeAndState = ViewGroup.resolveSizeAndState(i6, i, 0);
        int iResolveSizeAndState2 = ViewGroup.resolveSizeAndState(i7, i2, 0) & 16777215;
        int iMin = Math.min(this.g, iResolveSizeAndState & 16777215);
        int iMin2 = Math.min(this.h, iResolveSizeAndState2);
        if (z) {
            iMin |= 16777216;
        }
        if (z2) {
            iMin2 |= 16777216;
        }
        setMeasuredDimension(iMin, iMin2);
        this.o = iMin;
        this.p = iMin2;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View content;
        int childCount = getChildCount();
        boolean zIsInEditMode = isInEditMode();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            b bVar = (b) childAt.getLayoutParams();
            c.e.b.k.e eVar = bVar.m0;
            if ((childAt.getVisibility() != 8 || bVar.Y || bVar.Z || bVar.b0 || zIsInEditMode) && !bVar.a0) {
                int iS = eVar.S();
                int iT = eVar.T();
                int iR = eVar.R() + iS;
                int iV = eVar.v() + iT;
                childAt.layout(iS, iT, iR, iV);
                if ((childAt instanceof g) && (content = ((g) childAt).getContent()) != null) {
                    content.setVisibility(0);
                    content.layout(iS, iT, iR, iV);
                }
            }
        }
        int size = this.f442c.size();
        if (size > 0) {
            for (int i6 = 0; i6 < size; i6++) {
                this.f442c.get(i6).j(this);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (!this.i) {
            int childCount = getChildCount();
            int i3 = 0;
            while (true) {
                if (i3 >= childCount) {
                    break;
                }
                if (getChildAt(i3).isLayoutRequested()) {
                    this.i = true;
                    break;
                }
                i3++;
            }
        }
        if (!this.i) {
            if (this.s == i && this.t == i2) {
                o(i, i2, this.f443d.R(), this.f443d.v(), this.f443d.y1(), this.f443d.w1());
                return;
            }
            if (this.s == i && View.MeasureSpec.getMode(i) == 1073741824 && View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE && View.MeasureSpec.getMode(this.t) == Integer.MIN_VALUE && View.MeasureSpec.getSize(i2) >= this.f443d.v()) {
                this.s = i;
                this.t = i2;
                o(i, i2, this.f443d.R(), this.f443d.v(), this.f443d.y1(), this.f443d.w1());
                return;
            }
        }
        this.s = i;
        this.t = i2;
        this.f443d.F1(l());
        if (this.i) {
            this.i = false;
            if (t()) {
                this.f443d.H1();
            }
        }
        p(this.f443d, this.j, i, i2);
        o(i, i2, this.f443d.R(), this.f443d.v(), this.f443d.y1(), this.f443d.w1());
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onViewAdded(view);
        }
        c.e.b.k.e eVarJ = j(view);
        if ((view instanceof Guideline) && !(eVarJ instanceof c.e.b.k.g)) {
            b bVar = (b) view.getLayoutParams();
            c.e.b.k.g gVar = new c.e.b.k.g();
            bVar.m0 = gVar;
            bVar.Y = true;
            gVar.j1(bVar.R);
        }
        if (view instanceof androidx.constraintlayout.widget.b) {
            androidx.constraintlayout.widget.b bVar2 = (androidx.constraintlayout.widget.b) view;
            bVar2.n();
            ((b) view.getLayoutParams()).Z = true;
            if (!this.f442c.contains(bVar2)) {
                this.f442c.add(bVar2);
            }
        }
        this.f441b.put(view.getId(), view);
        this.i = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onViewRemoved(view);
        }
        this.f441b.remove(view.getId());
        this.f443d.c1(j(view));
        this.f442c.remove(view);
        this.i = true;
    }

    protected void p(c.e.b.k.f fVar, int i, int i2, int i3) {
        int iMax;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        int iMax2 = Math.max(0, getPaddingTop());
        int iMax3 = Math.max(0, getPaddingBottom());
        int i4 = iMax2 + iMax3;
        int paddingWidth = getPaddingWidth();
        this.r.c(i2, i3, iMax2, iMax3, paddingWidth, i4);
        if (Build.VERSION.SDK_INT >= 17) {
            int iMax4 = Math.max(0, getPaddingStart());
            int iMax5 = Math.max(0, getPaddingEnd());
            if (iMax4 <= 0 && iMax5 <= 0) {
                iMax4 = Math.max(0, getPaddingLeft());
            } else if (l()) {
                iMax4 = iMax5;
            }
            iMax = iMax4;
        } else {
            iMax = Math.max(0, getPaddingLeft());
        }
        int i5 = size - paddingWidth;
        int i6 = size2 - i4;
        s(fVar, mode, i5, mode2, i6);
        fVar.z1(i, mode, i5, mode2, i6, this.o, this.p, iMax, iMax2);
    }

    public void r(int i, Object obj, Object obj2) {
        if (i == 0 && (obj instanceof String) && (obj2 instanceof Integer)) {
            if (this.n == null) {
                this.n = new HashMap<>();
            }
            String strSubstring = (String) obj;
            int iIndexOf = strSubstring.indexOf("/");
            if (iIndexOf != -1) {
                strSubstring = strSubstring.substring(iIndexOf + 1);
            }
            this.n.put(strSubstring, Integer.valueOf(((Integer) obj2).intValue()));
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        super.removeView(view);
        if (Build.VERSION.SDK_INT < 14) {
            onViewRemoved(view);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        m();
        super.requestLayout();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003e A[PHI: r2
      0x003e: PHI (r2v4 c.e.b.k.e$b) = (r2v3 c.e.b.k.e$b), (r2v0 c.e.b.k.e$b) binds: [B:21:0x004a, B:17:0x003c] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void s(c.e.b.k.f fVar, int i, int i2, int i3, int i4) {
        e.b bVar;
        c cVar = this.r;
        int i5 = cVar.e;
        int i6 = cVar.f449d;
        e.b bVar2 = e.b.FIXED;
        int childCount = getChildCount();
        if (i == Integer.MIN_VALUE) {
            bVar = e.b.WRAP_CONTENT;
            if (childCount == 0) {
                i2 = Math.max(0, this.e);
            }
        } else if (i == 0) {
            bVar = e.b.WRAP_CONTENT;
            i2 = childCount == 0 ? Math.max(0, this.e) : 0;
        } else if (i != 1073741824) {
            bVar = bVar2;
        } else {
            i2 = Math.min(this.g - i6, i2);
            bVar = bVar2;
        }
        if (i3 == Integer.MIN_VALUE) {
            bVar2 = e.b.WRAP_CONTENT;
            if (childCount == 0) {
                i4 = Math.max(0, this.f);
            }
        } else if (i3 != 0) {
            i4 = i3 != 1073741824 ? 0 : Math.min(this.h - i5, i4);
        } else {
            bVar2 = e.b.WRAP_CONTENT;
            if (childCount == 0) {
                i4 = Math.max(0, this.f);
            }
        }
        if (i2 != fVar.R() || i4 != fVar.v()) {
            fVar.v1();
        }
        fVar.V0(0);
        fVar.W0(0);
        fVar.H0(this.g - i6);
        fVar.G0(this.h - i5);
        fVar.K0(0);
        fVar.J0(0);
        fVar.z0(bVar);
        fVar.U0(i2);
        fVar.Q0(bVar2);
        fVar.v0(i4);
        fVar.K0(this.e - i6);
        fVar.J0(this.f - i5);
    }

    public void setConstraintSet(d dVar) {
        this.k = dVar;
    }

    @Override // android.view.View
    public void setId(int i) {
        this.f441b.remove(getId());
        super.setId(i);
        this.f441b.put(getId(), this);
    }

    public void setMaxHeight(int i) {
        if (i == this.h) {
            return;
        }
        this.h = i;
        requestLayout();
    }

    public void setMaxWidth(int i) {
        if (i == this.g) {
            return;
        }
        this.g = i;
        requestLayout();
    }

    public void setMinHeight(int i) {
        if (i == this.f) {
            return;
        }
        this.f = i;
        requestLayout();
    }

    public void setMinWidth(int i) {
        if (i == this.e) {
            return;
        }
        this.e = i;
        requestLayout();
    }

    public void setOnConstraintsChanged(f fVar) {
        androidx.constraintlayout.widget.c cVar = this.l;
        if (cVar != null) {
            cVar.c(fVar);
        }
    }

    public void setOptimizationLevel(int i) {
        this.j = i;
        this.f443d.E1(i);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new b(layoutParams);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f441b = new SparseArray<>();
        this.f442c = new ArrayList<>(4);
        this.f443d = new c.e.b.k.f();
        this.e = 0;
        this.f = 0;
        this.g = Integer.MAX_VALUE;
        this.h = Integer.MAX_VALUE;
        this.i = true;
        this.j = 257;
        this.k = null;
        this.l = null;
        this.m = -1;
        this.n = new HashMap<>();
        this.o = -1;
        this.p = -1;
        this.q = new SparseArray<>();
        this.r = new c(this);
        this.s = 0;
        this.t = 0;
        k(attributeSet, 0, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f441b = new SparseArray<>();
        this.f442c = new ArrayList<>(4);
        this.f443d = new c.e.b.k.f();
        this.e = 0;
        this.f = 0;
        this.g = Integer.MAX_VALUE;
        this.h = Integer.MAX_VALUE;
        this.i = true;
        this.j = 257;
        this.k = null;
        this.l = null;
        this.m = -1;
        this.n = new HashMap<>();
        this.o = -1;
        this.p = -1;
        this.q = new SparseArray<>();
        this.r = new c(this);
        this.s = 0;
        this.t = 0;
        k(attributeSet, i, 0);
    }

    public static class b extends ViewGroup.MarginLayoutParams {
        public float A;
        public String B;
        int C;
        public float D;
        public float E;
        public int F;
        public int G;
        public int H;
        public int I;
        public int J;
        public int K;
        public int L;
        public int M;
        public float N;
        public float O;
        public int P;
        public int Q;
        public int R;
        public boolean S;
        public boolean T;
        public String U;
        boolean V;
        boolean W;
        boolean X;
        boolean Y;
        boolean Z;
        public int a;
        boolean a0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f444b;
        boolean b0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f445c;
        int c0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f446d;
        int d0;
        public int e;
        int e0;
        public int f;
        int f0;
        public int g;
        int g0;
        public int h;
        int h0;
        public int i;
        float i0;
        public int j;
        int j0;
        public int k;
        int k0;
        public int l;
        float l0;
        public int m;
        c.e.b.k.e m0;
        public int n;
        public boolean n0;
        public float o;
        public int p;
        public int q;
        public int r;
        public int s;
        public int t;
        public int u;
        public int v;
        public int w;
        public int x;
        public int y;
        public float z;

        private static class a {
            public static final SparseIntArray a;

            static {
                SparseIntArray sparseIntArray = new SparseIntArray();
                a = sparseIntArray;
                sparseIntArray.append(i.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf, 8);
                a.append(i.ConstraintLayout_Layout_layout_constraintLeft_toRightOf, 9);
                a.append(i.ConstraintLayout_Layout_layout_constraintRight_toLeftOf, 10);
                a.append(i.ConstraintLayout_Layout_layout_constraintRight_toRightOf, 11);
                a.append(i.ConstraintLayout_Layout_layout_constraintTop_toTopOf, 12);
                a.append(i.ConstraintLayout_Layout_layout_constraintTop_toBottomOf, 13);
                a.append(i.ConstraintLayout_Layout_layout_constraintBottom_toTopOf, 14);
                a.append(i.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf, 15);
                a.append(i.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf, 16);
                a.append(i.ConstraintLayout_Layout_layout_constraintCircle, 2);
                a.append(i.ConstraintLayout_Layout_layout_constraintCircleRadius, 3);
                a.append(i.ConstraintLayout_Layout_layout_constraintCircleAngle, 4);
                a.append(i.ConstraintLayout_Layout_layout_editor_absoluteX, 49);
                a.append(i.ConstraintLayout_Layout_layout_editor_absoluteY, 50);
                a.append(i.ConstraintLayout_Layout_layout_constraintGuide_begin, 5);
                a.append(i.ConstraintLayout_Layout_layout_constraintGuide_end, 6);
                a.append(i.ConstraintLayout_Layout_layout_constraintGuide_percent, 7);
                a.append(i.ConstraintLayout_Layout_android_orientation, 1);
                a.append(i.ConstraintLayout_Layout_layout_constraintStart_toEndOf, 17);
                a.append(i.ConstraintLayout_Layout_layout_constraintStart_toStartOf, 18);
                a.append(i.ConstraintLayout_Layout_layout_constraintEnd_toStartOf, 19);
                a.append(i.ConstraintLayout_Layout_layout_constraintEnd_toEndOf, 20);
                a.append(i.ConstraintLayout_Layout_layout_goneMarginLeft, 21);
                a.append(i.ConstraintLayout_Layout_layout_goneMarginTop, 22);
                a.append(i.ConstraintLayout_Layout_layout_goneMarginRight, 23);
                a.append(i.ConstraintLayout_Layout_layout_goneMarginBottom, 24);
                a.append(i.ConstraintLayout_Layout_layout_goneMarginStart, 25);
                a.append(i.ConstraintLayout_Layout_layout_goneMarginEnd, 26);
                a.append(i.ConstraintLayout_Layout_layout_constraintHorizontal_bias, 29);
                a.append(i.ConstraintLayout_Layout_layout_constraintVertical_bias, 30);
                a.append(i.ConstraintLayout_Layout_layout_constraintDimensionRatio, 44);
                a.append(i.ConstraintLayout_Layout_layout_constraintHorizontal_weight, 45);
                a.append(i.ConstraintLayout_Layout_layout_constraintVertical_weight, 46);
                a.append(i.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle, 47);
                a.append(i.ConstraintLayout_Layout_layout_constraintVertical_chainStyle, 48);
                a.append(i.ConstraintLayout_Layout_layout_constrainedWidth, 27);
                a.append(i.ConstraintLayout_Layout_layout_constrainedHeight, 28);
                a.append(i.ConstraintLayout_Layout_layout_constraintWidth_default, 31);
                a.append(i.ConstraintLayout_Layout_layout_constraintHeight_default, 32);
                a.append(i.ConstraintLayout_Layout_layout_constraintWidth_min, 33);
                a.append(i.ConstraintLayout_Layout_layout_constraintWidth_max, 34);
                a.append(i.ConstraintLayout_Layout_layout_constraintWidth_percent, 35);
                a.append(i.ConstraintLayout_Layout_layout_constraintHeight_min, 36);
                a.append(i.ConstraintLayout_Layout_layout_constraintHeight_max, 37);
                a.append(i.ConstraintLayout_Layout_layout_constraintHeight_percent, 38);
                a.append(i.ConstraintLayout_Layout_layout_constraintLeft_creator, 39);
                a.append(i.ConstraintLayout_Layout_layout_constraintTop_creator, 40);
                a.append(i.ConstraintLayout_Layout_layout_constraintRight_creator, 41);
                a.append(i.ConstraintLayout_Layout_layout_constraintBottom_creator, 42);
                a.append(i.ConstraintLayout_Layout_layout_constraintBaseline_creator, 43);
                a.append(i.ConstraintLayout_Layout_layout_constraintTag, 51);
            }
        }

        public b(Context context, AttributeSet attributeSet) {
            int i;
            super(context, attributeSet);
            this.a = -1;
            this.f444b = -1;
            this.f445c = -1.0f;
            this.f446d = -1;
            this.e = -1;
            this.f = -1;
            this.g = -1;
            this.h = -1;
            this.i = -1;
            this.j = -1;
            this.k = -1;
            this.l = -1;
            this.m = -1;
            this.n = 0;
            this.o = CropImageView.DEFAULT_ASPECT_RATIO;
            this.p = -1;
            this.q = -1;
            this.r = -1;
            this.s = -1;
            this.t = -1;
            this.u = -1;
            this.v = -1;
            this.w = -1;
            this.x = -1;
            this.y = -1;
            this.z = 0.5f;
            this.A = 0.5f;
            this.B = null;
            this.C = 1;
            this.D = -1.0f;
            this.E = -1.0f;
            this.F = 0;
            this.G = 0;
            this.H = 0;
            this.I = 0;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 1.0f;
            this.O = 1.0f;
            this.P = -1;
            this.Q = -1;
            this.R = -1;
            this.S = false;
            this.T = false;
            this.U = null;
            this.V = true;
            this.W = true;
            this.X = false;
            this.Y = false;
            this.Z = false;
            this.a0 = false;
            this.b0 = false;
            this.c0 = -1;
            this.d0 = -1;
            this.e0 = -1;
            this.f0 = -1;
            this.g0 = -1;
            this.h0 = -1;
            this.i0 = 0.5f;
            this.m0 = new c.e.b.k.e();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, i.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i2);
                int i3 = a.a.get(index);
                switch (i3) {
                    case 1:
                        this.R = typedArrayObtainStyledAttributes.getInt(index, this.R);
                        break;
                    case 2:
                        int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.m);
                        this.m = resourceId;
                        if (resourceId == -1) {
                            this.m = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 3:
                        this.n = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.n);
                        break;
                    case 4:
                        float f = typedArrayObtainStyledAttributes.getFloat(index, this.o) % 360.0f;
                        this.o = f;
                        if (f < CropImageView.DEFAULT_ASPECT_RATIO) {
                            this.o = (360.0f - f) % 360.0f;
                        }
                        break;
                    case 5:
                        this.a = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.a);
                        break;
                    case 6:
                        this.f444b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f444b);
                        break;
                    case 7:
                        this.f445c = typedArrayObtainStyledAttributes.getFloat(index, this.f445c);
                        break;
                    case 8:
                        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, this.f446d);
                        this.f446d = resourceId2;
                        if (resourceId2 == -1) {
                            this.f446d = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 9:
                        int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(index, this.e);
                        this.e = resourceId3;
                        if (resourceId3 == -1) {
                            this.e = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 10:
                        int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(index, this.f);
                        this.f = resourceId4;
                        if (resourceId4 == -1) {
                            this.f = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 11:
                        int resourceId5 = typedArrayObtainStyledAttributes.getResourceId(index, this.g);
                        this.g = resourceId5;
                        if (resourceId5 == -1) {
                            this.g = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 12:
                        int resourceId6 = typedArrayObtainStyledAttributes.getResourceId(index, this.h);
                        this.h = resourceId6;
                        if (resourceId6 == -1) {
                            this.h = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 13:
                        int resourceId7 = typedArrayObtainStyledAttributes.getResourceId(index, this.i);
                        this.i = resourceId7;
                        if (resourceId7 == -1) {
                            this.i = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 14:
                        int resourceId8 = typedArrayObtainStyledAttributes.getResourceId(index, this.j);
                        this.j = resourceId8;
                        if (resourceId8 == -1) {
                            this.j = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 15:
                        int resourceId9 = typedArrayObtainStyledAttributes.getResourceId(index, this.k);
                        this.k = resourceId9;
                        if (resourceId9 == -1) {
                            this.k = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 16:
                        int resourceId10 = typedArrayObtainStyledAttributes.getResourceId(index, this.l);
                        this.l = resourceId10;
                        if (resourceId10 == -1) {
                            this.l = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 17:
                        int resourceId11 = typedArrayObtainStyledAttributes.getResourceId(index, this.p);
                        this.p = resourceId11;
                        if (resourceId11 == -1) {
                            this.p = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 18:
                        int resourceId12 = typedArrayObtainStyledAttributes.getResourceId(index, this.q);
                        this.q = resourceId12;
                        if (resourceId12 == -1) {
                            this.q = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 19:
                        int resourceId13 = typedArrayObtainStyledAttributes.getResourceId(index, this.r);
                        this.r = resourceId13;
                        if (resourceId13 == -1) {
                            this.r = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 20:
                        int resourceId14 = typedArrayObtainStyledAttributes.getResourceId(index, this.s);
                        this.s = resourceId14;
                        if (resourceId14 == -1) {
                            this.s = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 21:
                        this.t = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.t);
                        break;
                    case 22:
                        this.u = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.u);
                        break;
                    case 23:
                        this.v = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.v);
                        break;
                    case 24:
                        this.w = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.w);
                        break;
                    case 25:
                        this.x = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.x);
                        break;
                    case 26:
                        this.y = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.y);
                        break;
                    case 27:
                        this.S = typedArrayObtainStyledAttributes.getBoolean(index, this.S);
                        break;
                    case 28:
                        this.T = typedArrayObtainStyledAttributes.getBoolean(index, this.T);
                        break;
                    case 29:
                        this.z = typedArrayObtainStyledAttributes.getFloat(index, this.z);
                        break;
                    case 30:
                        this.A = typedArrayObtainStyledAttributes.getFloat(index, this.A);
                        break;
                    case 31:
                        this.H = typedArrayObtainStyledAttributes.getInt(index, 0);
                        break;
                    case 32:
                        this.I = typedArrayObtainStyledAttributes.getInt(index, 0);
                        break;
                    case 33:
                        try {
                            this.J = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.J);
                        } catch (Exception unused) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.J) == -2) {
                                this.J = -2;
                            }
                        }
                        break;
                    case 34:
                        try {
                            this.L = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.L);
                        } catch (Exception unused2) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.L) == -2) {
                                this.L = -2;
                            }
                        }
                        break;
                    case 35:
                        this.N = Math.max(CropImageView.DEFAULT_ASPECT_RATIO, typedArrayObtainStyledAttributes.getFloat(index, this.N));
                        this.H = 2;
                        break;
                    case 36:
                        try {
                            this.K = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.K);
                        } catch (Exception unused3) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.K) == -2) {
                                this.K = -2;
                            }
                        }
                        break;
                    case 37:
                        try {
                            this.M = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.M);
                        } catch (Exception unused4) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.M) == -2) {
                                this.M = -2;
                            }
                        }
                        break;
                    case 38:
                        this.O = Math.max(CropImageView.DEFAULT_ASPECT_RATIO, typedArrayObtainStyledAttributes.getFloat(index, this.O));
                        this.I = 2;
                        break;
                    default:
                        switch (i3) {
                            case 44:
                                String string = typedArrayObtainStyledAttributes.getString(index);
                                this.B = string;
                                this.C = -1;
                                if (string != null) {
                                    int length = string.length();
                                    int iIndexOf = this.B.indexOf(44);
                                    if (iIndexOf <= 0 || iIndexOf >= length - 1) {
                                        i = 0;
                                    } else {
                                        String strSubstring = this.B.substring(0, iIndexOf);
                                        if (strSubstring.equalsIgnoreCase("W")) {
                                            this.C = 0;
                                        } else if (strSubstring.equalsIgnoreCase("H")) {
                                            this.C = 1;
                                        }
                                        i = iIndexOf + 1;
                                    }
                                    int iIndexOf2 = this.B.indexOf(58);
                                    if (iIndexOf2 < 0 || iIndexOf2 >= length - 1) {
                                        String strSubstring2 = this.B.substring(i);
                                        if (strSubstring2.length() > 0) {
                                            Float.parseFloat(strSubstring2);
                                        }
                                    } else {
                                        String strSubstring3 = this.B.substring(i, iIndexOf2);
                                        String strSubstring4 = this.B.substring(iIndexOf2 + 1);
                                        if (strSubstring3.length() > 0 && strSubstring4.length() > 0) {
                                            try {
                                                float f2 = Float.parseFloat(strSubstring3);
                                                float f3 = Float.parseFloat(strSubstring4);
                                                if (f2 > CropImageView.DEFAULT_ASPECT_RATIO && f3 > CropImageView.DEFAULT_ASPECT_RATIO) {
                                                    if (this.C == 1) {
                                                        Math.abs(f3 / f2);
                                                    } else {
                                                        Math.abs(f2 / f3);
                                                    }
                                                }
                                            } catch (NumberFormatException unused5) {
                                            }
                                        }
                                    }
                                }
                                break;
                            case 45:
                                this.D = typedArrayObtainStyledAttributes.getFloat(index, this.D);
                                break;
                            case 46:
                                this.E = typedArrayObtainStyledAttributes.getFloat(index, this.E);
                                break;
                            case 47:
                                this.F = typedArrayObtainStyledAttributes.getInt(index, 0);
                                break;
                            case 48:
                                this.G = typedArrayObtainStyledAttributes.getInt(index, 0);
                                break;
                            case 49:
                                this.P = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.P);
                                break;
                            case 50:
                                this.Q = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.Q);
                                break;
                            case 51:
                                this.U = typedArrayObtainStyledAttributes.getString(index);
                                break;
                        }
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            a();
        }

        public void a() {
            this.Y = false;
            this.V = true;
            this.W = true;
            if (((ViewGroup.MarginLayoutParams) this).width == -2 && this.S) {
                this.V = false;
                if (this.H == 0) {
                    this.H = 1;
                }
            }
            if (((ViewGroup.MarginLayoutParams) this).height == -2 && this.T) {
                this.W = false;
                if (this.I == 0) {
                    this.I = 1;
                }
            }
            int i = ((ViewGroup.MarginLayoutParams) this).width;
            if (i == 0 || i == -1) {
                this.V = false;
                if (((ViewGroup.MarginLayoutParams) this).width == 0 && this.H == 1) {
                    ((ViewGroup.MarginLayoutParams) this).width = -2;
                    this.S = true;
                }
            }
            int i2 = ((ViewGroup.MarginLayoutParams) this).height;
            if (i2 == 0 || i2 == -1) {
                this.W = false;
                if (((ViewGroup.MarginLayoutParams) this).height == 0 && this.I == 1) {
                    ((ViewGroup.MarginLayoutParams) this).height = -2;
                    this.T = true;
                }
            }
            if (this.f445c == -1.0f && this.a == -1 && this.f444b == -1) {
                return;
            }
            this.Y = true;
            this.V = true;
            this.W = true;
            if (!(this.m0 instanceof c.e.b.k.g)) {
                this.m0 = new c.e.b.k.g();
            }
            ((c.e.b.k.g) this.m0).j1(this.R);
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0052  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0059  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0060  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0066  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x006c  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x0082  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x008a  */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        @TargetApi(17)
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void resolveLayoutDirection(int i) {
            boolean z;
            int i2;
            int i3;
            int i4;
            int i5;
            float f;
            int i6 = ((ViewGroup.MarginLayoutParams) this).leftMargin;
            int i7 = ((ViewGroup.MarginLayoutParams) this).rightMargin;
            boolean z2 = false;
            if (Build.VERSION.SDK_INT >= 17) {
                super.resolveLayoutDirection(i);
                z = 1 == getLayoutDirection();
            }
            this.e0 = -1;
            this.f0 = -1;
            this.c0 = -1;
            this.d0 = -1;
            this.g0 = -1;
            this.h0 = -1;
            this.g0 = this.t;
            this.h0 = this.v;
            this.i0 = this.z;
            this.j0 = this.a;
            this.k0 = this.f444b;
            this.l0 = this.f445c;
            if (z) {
                int i8 = this.p;
                if (i8 != -1) {
                    this.e0 = i8;
                } else {
                    int i9 = this.q;
                    if (i9 != -1) {
                        this.f0 = i9;
                    }
                    i2 = this.r;
                    if (i2 != -1) {
                        this.d0 = i2;
                        z2 = true;
                    }
                    i3 = this.s;
                    if (i3 != -1) {
                        this.c0 = i3;
                        z2 = true;
                    }
                    i4 = this.x;
                    if (i4 != -1) {
                        this.h0 = i4;
                    }
                    i5 = this.y;
                    if (i5 != -1) {
                        this.g0 = i5;
                    }
                    if (z2) {
                        this.i0 = 1.0f - this.z;
                    }
                    if (this.Y && this.R == 1) {
                        f = this.f445c;
                        if (f == -1.0f) {
                            this.l0 = 1.0f - f;
                            this.j0 = -1;
                            this.k0 = -1;
                        } else {
                            int i10 = this.a;
                            if (i10 != -1) {
                                this.k0 = i10;
                                this.j0 = -1;
                                this.l0 = -1.0f;
                            } else {
                                int i11 = this.f444b;
                                if (i11 != -1) {
                                    this.j0 = i11;
                                    this.k0 = -1;
                                    this.l0 = -1.0f;
                                }
                            }
                        }
                    }
                }
                z2 = true;
                i2 = this.r;
                if (i2 != -1) {
                }
                i3 = this.s;
                if (i3 != -1) {
                }
                i4 = this.x;
                if (i4 != -1) {
                }
                i5 = this.y;
                if (i5 != -1) {
                }
                if (z2) {
                }
                if (this.Y) {
                    f = this.f445c;
                    if (f == -1.0f) {
                    }
                }
            } else {
                int i12 = this.p;
                if (i12 != -1) {
                    this.d0 = i12;
                }
                int i13 = this.q;
                if (i13 != -1) {
                    this.c0 = i13;
                }
                int i14 = this.r;
                if (i14 != -1) {
                    this.e0 = i14;
                }
                int i15 = this.s;
                if (i15 != -1) {
                    this.f0 = i15;
                }
                int i16 = this.x;
                if (i16 != -1) {
                    this.g0 = i16;
                }
                int i17 = this.y;
                if (i17 != -1) {
                    this.h0 = i17;
                }
            }
            if (this.r == -1 && this.s == -1 && this.q == -1 && this.p == -1) {
                int i18 = this.f;
                if (i18 != -1) {
                    this.e0 = i18;
                    if (((ViewGroup.MarginLayoutParams) this).rightMargin <= 0 && i7 > 0) {
                        ((ViewGroup.MarginLayoutParams) this).rightMargin = i7;
                    }
                } else {
                    int i19 = this.g;
                    if (i19 != -1) {
                        this.f0 = i19;
                        if (((ViewGroup.MarginLayoutParams) this).rightMargin <= 0 && i7 > 0) {
                            ((ViewGroup.MarginLayoutParams) this).rightMargin = i7;
                        }
                    }
                }
                int i20 = this.f446d;
                if (i20 != -1) {
                    this.c0 = i20;
                    if (((ViewGroup.MarginLayoutParams) this).leftMargin > 0 || i6 <= 0) {
                        return;
                    }
                    ((ViewGroup.MarginLayoutParams) this).leftMargin = i6;
                    return;
                }
                int i21 = this.e;
                if (i21 != -1) {
                    this.d0 = i21;
                    if (((ViewGroup.MarginLayoutParams) this).leftMargin > 0 || i6 <= 0) {
                        return;
                    }
                    ((ViewGroup.MarginLayoutParams) this).leftMargin = i6;
                }
            }
        }

        public b(int i, int i2) {
            super(i, i2);
            this.a = -1;
            this.f444b = -1;
            this.f445c = -1.0f;
            this.f446d = -1;
            this.e = -1;
            this.f = -1;
            this.g = -1;
            this.h = -1;
            this.i = -1;
            this.j = -1;
            this.k = -1;
            this.l = -1;
            this.m = -1;
            this.n = 0;
            this.o = CropImageView.DEFAULT_ASPECT_RATIO;
            this.p = -1;
            this.q = -1;
            this.r = -1;
            this.s = -1;
            this.t = -1;
            this.u = -1;
            this.v = -1;
            this.w = -1;
            this.x = -1;
            this.y = -1;
            this.z = 0.5f;
            this.A = 0.5f;
            this.B = null;
            this.C = 1;
            this.D = -1.0f;
            this.E = -1.0f;
            this.F = 0;
            this.G = 0;
            this.H = 0;
            this.I = 0;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 1.0f;
            this.O = 1.0f;
            this.P = -1;
            this.Q = -1;
            this.R = -1;
            this.S = false;
            this.T = false;
            this.U = null;
            this.V = true;
            this.W = true;
            this.X = false;
            this.Y = false;
            this.Z = false;
            this.a0 = false;
            this.b0 = false;
            this.c0 = -1;
            this.d0 = -1;
            this.e0 = -1;
            this.f0 = -1;
            this.g0 = -1;
            this.h0 = -1;
            this.i0 = 0.5f;
            this.m0 = new c.e.b.k.e();
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.a = -1;
            this.f444b = -1;
            this.f445c = -1.0f;
            this.f446d = -1;
            this.e = -1;
            this.f = -1;
            this.g = -1;
            this.h = -1;
            this.i = -1;
            this.j = -1;
            this.k = -1;
            this.l = -1;
            this.m = -1;
            this.n = 0;
            this.o = CropImageView.DEFAULT_ASPECT_RATIO;
            this.p = -1;
            this.q = -1;
            this.r = -1;
            this.s = -1;
            this.t = -1;
            this.u = -1;
            this.v = -1;
            this.w = -1;
            this.x = -1;
            this.y = -1;
            this.z = 0.5f;
            this.A = 0.5f;
            this.B = null;
            this.C = 1;
            this.D = -1.0f;
            this.E = -1.0f;
            this.F = 0;
            this.G = 0;
            this.H = 0;
            this.I = 0;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 1.0f;
            this.O = 1.0f;
            this.P = -1;
            this.Q = -1;
            this.R = -1;
            this.S = false;
            this.T = false;
            this.U = null;
            this.V = true;
            this.W = true;
            this.X = false;
            this.Y = false;
            this.Z = false;
            this.a0 = false;
            this.b0 = false;
            this.c0 = -1;
            this.d0 = -1;
            this.e0 = -1;
            this.f0 = -1;
            this.g0 = -1;
            this.h0 = -1;
            this.i0 = 0.5f;
            this.m0 = new c.e.b.k.e();
        }
    }
}
