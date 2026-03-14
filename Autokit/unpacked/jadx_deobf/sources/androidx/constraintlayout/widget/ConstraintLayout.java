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
import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;
import java.util.HashMap;
import p016c.p033e.p037b.p038k.C0557d;
import p016c.p033e.p037b.p038k.C0558e;
import p016c.p033e.p037b.p038k.C0559f;
import p016c.p033e.p037b.p038k.C0560g;
import p016c.p033e.p037b.p038k.C0563j;
import p016c.p033e.p037b.p038k.C0564k;
import p016c.p033e.p037b.p038k.p039m.C0567b;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class ConstraintLayout extends ViewGroup {

    /* JADX INFO: renamed from: b */
    SparseArray<View> f1404b;

    /* JADX INFO: renamed from: c */
    private ArrayList<AbstractC0210b> f1405c;

    /* JADX INFO: renamed from: d */
    protected C0559f f1406d;

    /* JADX INFO: renamed from: e */
    private int f1407e;

    /* JADX INFO: renamed from: f */
    private int f1408f;

    /* JADX INFO: renamed from: g */
    private int f1409g;

    /* JADX INFO: renamed from: h */
    private int f1410h;

    /* JADX INFO: renamed from: i */
    protected boolean f1411i;

    /* JADX INFO: renamed from: j */
    private int f1412j;

    /* JADX INFO: renamed from: k */
    private C0212d f1413k;

    /* JADX INFO: renamed from: l */
    protected C0211c f1414l;

    /* JADX INFO: renamed from: m */
    private int f1415m;

    /* JADX INFO: renamed from: n */
    private HashMap<String, Integer> f1416n;

    /* JADX INFO: renamed from: o */
    private int f1417o;

    /* JADX INFO: renamed from: p */
    private int f1418p;

    /* JADX INFO: renamed from: q */
    private SparseArray<C0558e> f1419q;

    /* JADX INFO: renamed from: r */
    C0208c f1420r;

    /* JADX INFO: renamed from: s */
    private int f1421s;

    /* JADX INFO: renamed from: t */
    private int f1422t;

    /* JADX INFO: renamed from: androidx.constraintlayout.widget.ConstraintLayout$a */
    static /* synthetic */ class C0206a {

        /* JADX INFO: renamed from: a */
        static final /* synthetic */ int[] f1423a;

        static {
            int[] iArr = new int[C0558e.b.values().length];
            f1423a = iArr;
            try {
                iArr[C0558e.b.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1423a[C0558e.b.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1423a[C0558e.b.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1423a[C0558e.b.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: renamed from: androidx.constraintlayout.widget.ConstraintLayout$c */
    class C0208c implements C0567b.b {

        /* JADX INFO: renamed from: a */
        ConstraintLayout f1491a;

        /* JADX INFO: renamed from: b */
        int f1492b;

        /* JADX INFO: renamed from: c */
        int f1493c;

        /* JADX INFO: renamed from: d */
        int f1494d;

        /* JADX INFO: renamed from: e */
        int f1495e;

        /* JADX INFO: renamed from: f */
        int f1496f;

        /* JADX INFO: renamed from: g */
        int f1497g;

        public C0208c(ConstraintLayout constraintLayout) {
            this.f1491a = constraintLayout;
        }

        /* JADX INFO: renamed from: d */
        private boolean m1464d(int i, int i2, int i3) {
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

        @Override // p016c.p033e.p037b.p038k.p039m.C0567b.b
        @SuppressLint({"WrongCall"})
        /* JADX INFO: renamed from: a */
        public final void mo1465a(C0558e c0558e, C0567b.a aVar) {
            int iMakeMeasureSpec;
            int iMakeMeasureSpec2;
            int baseline;
            int iMax;
            int i;
            int measuredHeight;
            int i2;
            if (c0558e == null) {
                return;
            }
            if (c0558e.m4479Q() == 8 && !c0558e.m4498a0()) {
                aVar.f3624e = 0;
                aVar.f3625f = 0;
                aVar.f3626g = 0;
                return;
            }
            if (c0558e.m4463I() == null) {
                return;
            }
            C0558e.b bVar = aVar.f3620a;
            C0558e.b bVar2 = aVar.f3621b;
            int i3 = aVar.f3622c;
            int i4 = aVar.f3623d;
            int i5 = this.f1492b + this.f1493c;
            int i6 = this.f1494d;
            View view = (View) c0558e.m4521q();
            int i7 = C0206a.f1423a[bVar.ordinal()];
            if (i7 == 1) {
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
            } else if (i7 == 2) {
                iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f1496f, i6, -2);
            } else if (i7 == 3) {
                iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f1496f, i6 + c0558e.m4539z(), -1);
            } else if (i7 != 4) {
                iMakeMeasureSpec = 0;
            } else {
                iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f1496f, i6, -2);
                boolean z = c0558e.f3561n == 1;
                int i8 = aVar.f3629j;
                if (i8 == C0567b.a.f3618l || i8 == C0567b.a.f3619m) {
                    if (aVar.f3629j == C0567b.a.f3619m || !z || (z && (view.getMeasuredHeight() == c0558e.m4531v())) || (view instanceof C0215g) || c0558e.mo4409e0()) {
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(c0558e.m4481R(), 1073741824);
                    }
                }
            }
            int i9 = C0206a.f1423a[bVar2.ordinal()];
            if (i9 == 1) {
                iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
            } else if (i9 == 2) {
                iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f1497g, i5, -2);
            } else if (i9 == 3) {
                iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f1497g, i5 + c0558e.m4477P(), -1);
            } else if (i9 != 4) {
                iMakeMeasureSpec2 = 0;
            } else {
                iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f1497g, i5, -2);
                boolean z2 = c0558e.f3563o == 1;
                int i10 = aVar.f3629j;
                if (i10 == C0567b.a.f3618l || i10 == C0567b.a.f3619m) {
                    if (aVar.f3629j == C0567b.a.f3619m || !z2 || (z2 && (view.getMeasuredWidth() == c0558e.m4481R())) || (view instanceof C0215g) || c0558e.mo4411f0()) {
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(c0558e.m4531v(), 1073741824);
                    }
                }
            }
            C0559f c0559f = (C0559f) c0558e.m4463I();
            if (c0559f != null && C0563j.m4588b(ConstraintLayout.this.f1412j, 256) && view.getMeasuredWidth() == c0558e.m4481R() && view.getMeasuredWidth() < c0559f.m4481R() && view.getMeasuredHeight() == c0558e.m4531v() && view.getMeasuredHeight() < c0559f.m4531v() && view.getBaseline() == c0558e.m4515n() && !c0558e.m4501d0()) {
                if (m1464d(c0558e.m4447A(), iMakeMeasureSpec, c0558e.m4481R()) && m1464d(c0558e.m4449B(), iMakeMeasureSpec2, c0558e.m4531v())) {
                    aVar.f3624e = c0558e.m4481R();
                    aVar.f3625f = c0558e.m4531v();
                    aVar.f3626g = c0558e.m4515n();
                    return;
                }
            }
            boolean z3 = bVar == C0558e.b.MATCH_CONSTRAINT;
            boolean z4 = bVar2 == C0558e.b.MATCH_CONSTRAINT;
            boolean z5 = bVar2 == C0558e.b.MATCH_PARENT || bVar2 == C0558e.b.FIXED;
            boolean z6 = bVar == C0558e.b.MATCH_PARENT || bVar == C0558e.b.FIXED;
            boolean z7 = z3 && c0558e.f3529U > CropImageView.DEFAULT_ASPECT_RATIO;
            boolean z8 = z4 && c0558e.f3529U > CropImageView.DEFAULT_ASPECT_RATIO;
            if (view == null) {
                return;
            }
            C0207b c0207b = (C0207b) view.getLayoutParams();
            int i11 = aVar.f3629j;
            if (i11 != C0567b.a.f3618l && i11 != C0567b.a.f3619m && z3 && c0558e.f3561n == 0 && z4 && c0558e.f3563o == 0) {
                i2 = -1;
                baseline = 0;
                iMax = 0;
                measuredHeight = 0;
            } else {
                if ((view instanceof AbstractC0218j) && (c0558e instanceof C0564k)) {
                    ((AbstractC0218j) view).m1524o((C0564k) c0558e, iMakeMeasureSpec, iMakeMeasureSpec2);
                } else {
                    view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                }
                c0558e.m4458F0(iMakeMeasureSpec, iMakeMeasureSpec2);
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight2 = view.getMeasuredHeight();
                baseline = view.getBaseline();
                int i12 = c0558e.f3565q;
                iMax = i12 > 0 ? Math.max(i12, measuredWidth) : measuredWidth;
                int i13 = c0558e.f3566r;
                if (i13 > 0) {
                    iMax = Math.min(i13, iMax);
                }
                int i14 = c0558e.f3568t;
                if (i14 > 0) {
                    measuredHeight = Math.max(i14, measuredHeight2);
                    i = iMakeMeasureSpec2;
                } else {
                    i = iMakeMeasureSpec2;
                    measuredHeight = measuredHeight2;
                }
                int i15 = c0558e.f3569u;
                if (i15 > 0) {
                    measuredHeight = Math.min(i15, measuredHeight);
                }
                if (!C0563j.m4588b(ConstraintLayout.this.f1412j, 1)) {
                    if (z7 && z5) {
                        iMax = (int) ((measuredHeight * c0558e.f3529U) + 0.5f);
                    } else if (z8 && z6) {
                        measuredHeight = (int) ((iMax / c0558e.f3529U) + 0.5f);
                    }
                }
                if (measuredWidth != iMax || measuredHeight2 != measuredHeight) {
                    if (measuredWidth != iMax) {
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMax, 1073741824);
                    }
                    int iMakeMeasureSpec3 = measuredHeight2 != measuredHeight ? View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824) : i;
                    view.measure(iMakeMeasureSpec, iMakeMeasureSpec3);
                    c0558e.m4458F0(iMakeMeasureSpec, iMakeMeasureSpec3);
                    iMax = view.getMeasuredWidth();
                    measuredHeight = view.getMeasuredHeight();
                    baseline = view.getBaseline();
                }
                i2 = -1;
            }
            boolean z9 = baseline != i2;
            aVar.f3628i = (iMax == aVar.f3622c && measuredHeight == aVar.f3623d) ? false : true;
            if (c0207b.f1447X) {
                z9 = true;
            }
            if (z9 && baseline != -1 && c0558e.m4515n() != baseline) {
                aVar.f3628i = true;
            }
            aVar.f3624e = iMax;
            aVar.f3625f = measuredHeight;
            aVar.f3627h = z9;
            aVar.f3626g = baseline;
        }

        @Override // p016c.p033e.p037b.p038k.p039m.C0567b.b
        /* JADX INFO: renamed from: b */
        public final void mo1466b() {
            int childCount = this.f1491a.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.f1491a.getChildAt(i);
                if (childAt instanceof C0215g) {
                    ((C0215g) childAt).m1522a(this.f1491a);
                }
            }
            int size = this.f1491a.f1405c.size();
            if (size > 0) {
                for (int i2 = 0; i2 < size; i2++) {
                    ((AbstractC0210b) this.f1491a.f1405c.get(i2)).m1480k(this.f1491a);
                }
            }
        }

        /* JADX INFO: renamed from: c */
        public void m1467c(int i, int i2, int i3, int i4, int i5, int i6) {
            this.f1492b = i3;
            this.f1493c = i4;
            this.f1494d = i5;
            this.f1495e = i6;
            this.f1496f = i;
            this.f1497g = i2;
        }
    }

    public ConstraintLayout(Context context) {
        super(context);
        this.f1404b = new SparseArray<>();
        this.f1405c = new ArrayList<>(4);
        this.f1406d = new C0559f();
        this.f1407e = 0;
        this.f1408f = 0;
        this.f1409g = Integer.MAX_VALUE;
        this.f1410h = Integer.MAX_VALUE;
        this.f1411i = true;
        this.f1412j = 257;
        this.f1413k = null;
        this.f1414l = null;
        this.f1415m = -1;
        this.f1416n = new HashMap<>();
        this.f1417o = -1;
        this.f1418p = -1;
        this.f1419q = new SparseArray<>();
        this.f1420r = new C0208c(this);
        this.f1421s = 0;
        this.f1422t = 0;
        m1447k(null, 0, 0);
    }

    private int getPaddingWidth() {
        int iMax = Math.max(0, getPaddingLeft()) + Math.max(0, getPaddingRight());
        int iMax2 = Build.VERSION.SDK_INT >= 17 ? Math.max(0, getPaddingEnd()) + Math.max(0, getPaddingStart()) : 0;
        return iMax2 > 0 ? iMax2 : iMax;
    }

    /* JADX INFO: renamed from: h */
    private final C0558e m1446h(int i) {
        if (i == 0) {
            return this.f1406d;
        }
        View viewFindViewById = this.f1404b.get(i);
        if (viewFindViewById == null && (viewFindViewById = findViewById(i)) != null && viewFindViewById != this && viewFindViewById.getParent() == this) {
            onViewAdded(viewFindViewById);
        }
        if (viewFindViewById == this) {
            return this.f1406d;
        }
        if (viewFindViewById == null) {
            return null;
        }
        return ((C0207b) viewFindViewById.getLayoutParams()).f1475m0;
    }

    /* JADX INFO: renamed from: k */
    private void m1447k(AttributeSet attributeSet, int i, int i2) {
        this.f1406d.m4512l0(this);
        this.f1406d.m4548D1(this.f1420r);
        this.f1404b.put(getId(), this);
        this.f1413k = null;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0217i.ConstraintLayout_Layout, i, i2);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i3 = 0; i3 < indexCount; i3++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i3);
                if (index == C0217i.ConstraintLayout_Layout_android_minWidth) {
                    this.f1407e = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1407e);
                } else if (index == C0217i.ConstraintLayout_Layout_android_minHeight) {
                    this.f1408f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1408f);
                } else if (index == C0217i.ConstraintLayout_Layout_android_maxWidth) {
                    this.f1409g = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1409g);
                } else if (index == C0217i.ConstraintLayout_Layout_android_maxHeight) {
                    this.f1410h = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1410h);
                } else if (index == C0217i.ConstraintLayout_Layout_layout_optimizationLevel) {
                    this.f1412j = typedArrayObtainStyledAttributes.getInt(index, this.f1412j);
                } else if (index == C0217i.ConstraintLayout_Layout_layoutDescription) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            m1458n(resourceId);
                        } catch (Resources.NotFoundException unused) {
                            this.f1414l = null;
                        }
                    }
                } else if (index == C0217i.ConstraintLayout_Layout_constraintSet) {
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    try {
                        C0212d c0212d = new C0212d();
                        this.f1413k = c0212d;
                        c0212d.m1502m(getContext(), resourceId2);
                    } catch (Resources.NotFoundException unused2) {
                        this.f1413k = null;
                    }
                    this.f1415m = resourceId2;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.f1406d.m4549E1(this.f1412j);
    }

    /* JADX INFO: renamed from: m */
    private void m1448m() {
        this.f1411i = true;
        this.f1417o = -1;
        this.f1418p = -1;
    }

    /* JADX INFO: renamed from: q */
    private void m1449q() {
        boolean zIsInEditMode = isInEditMode();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            C0558e c0558eM1456j = m1456j(getChildAt(i));
            if (c0558eM1456j != null) {
                c0558eM1456j.mo4505h0();
            }
        }
        if (zIsInEditMode) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                try {
                    String resourceName = getResources().getResourceName(childAt.getId());
                    m1461r(0, resourceName, Integer.valueOf(childAt.getId()));
                    int iIndexOf = resourceName.indexOf(47);
                    if (iIndexOf != -1) {
                        resourceName = resourceName.substring(iIndexOf + 1);
                    }
                    m1446h(childAt.getId()).m4514m0(resourceName);
                } catch (Resources.NotFoundException unused) {
                }
            }
        }
        if (this.f1415m != -1) {
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt2 = getChildAt(i3);
                if (childAt2.getId() == this.f1415m && (childAt2 instanceof C0213e)) {
                    this.f1413k = ((C0213e) childAt2).getConstraintSet();
                }
            }
        }
        C0212d c0212d = this.f1413k;
        if (c0212d != null) {
            c0212d.m1496d(this, true);
        }
        this.f1406d.m4594d1();
        int size = this.f1405c.size();
        if (size > 0) {
            for (int i4 = 0; i4 < size; i4++) {
                this.f1405c.get(i4).m1482m(this);
            }
        }
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt3 = getChildAt(i5);
            if (childAt3 instanceof C0215g) {
                ((C0215g) childAt3).m1523b(this);
            }
        }
        this.f1419q.clear();
        this.f1419q.put(0, this.f1406d);
        this.f1419q.put(getId(), this.f1406d);
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt4 = getChildAt(i6);
            this.f1419q.put(childAt4.getId(), m1456j(childAt4));
        }
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt5 = getChildAt(i7);
            C0558e c0558eM1456j2 = m1456j(childAt5);
            if (c0558eM1456j2 != null) {
                C0207b c0207b = (C0207b) childAt5.getLayoutParams();
                this.f1406d.m4591a(c0558eM1456j2);
                m1451d(zIsInEditMode, childAt5, c0558eM1456j2, c0207b, this.f1419q);
            }
        }
    }

    /* JADX INFO: renamed from: t */
    private boolean m1450t() {
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
            m1449q();
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
        return layoutParams instanceof C0207b;
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x025e  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00cd  */
    /* JADX INFO: renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void m1451d(boolean z, View view, C0558e c0558e, C0207b c0207b, SparseArray<C0558e> sparseArray) {
        int i;
        int i2;
        int i3;
        float f;
        int i4;
        float f2;
        C0558e c0558e2;
        C0558e c0558e3;
        C0558e c0558e4;
        C0558e c0558e5;
        c0207b.m1463a();
        c0207b.f1477n0 = false;
        c0558e.m4486T0(view.getVisibility());
        if (c0207b.f1451a0) {
            c0558e.m4454D0(true);
            c0558e.m4486T0(8);
        }
        c0558e.m4512l0(view);
        if (view instanceof AbstractC0210b) {
            ((AbstractC0210b) view).mo1442i(c0558e, this.f1406d.m4569x1());
        }
        if (c0207b.f1448Y) {
            C0560g c0560g = (C0560g) c0558e;
            int i5 = c0207b.f1469j0;
            int i6 = c0207b.f1471k0;
            float f3 = c0207b.f1473l0;
            if (Build.VERSION.SDK_INT < 17) {
                i5 = c0207b.f1450a;
                i6 = c0207b.f1452b;
                f3 = c0207b.f1454c;
            }
            if (f3 != -1.0f) {
                c0560g.m4580i1(f3);
                return;
            } else if (i5 != -1) {
                c0560g.m4578g1(i5);
                return;
            } else {
                if (i6 != -1) {
                    c0560g.m4579h1(i6);
                    return;
                }
                return;
            }
        }
        int i7 = c0207b.f1455c0;
        int i8 = c0207b.f1457d0;
        int i9 = c0207b.f1459e0;
        int i10 = c0207b.f1461f0;
        int i11 = c0207b.f1463g0;
        int i12 = c0207b.f1465h0;
        float f4 = c0207b.f1467i0;
        if (Build.VERSION.SDK_INT < 17) {
            i7 = c0207b.f1456d;
            int i13 = c0207b.f1458e;
            int i14 = c0207b.f1460f;
            i10 = c0207b.f1462g;
            int i15 = c0207b.f1483t;
            int i16 = c0207b.f1485v;
            f4 = c0207b.f1489z;
            if (i7 == -1 && i13 == -1) {
                int i17 = c0207b.f1480q;
                if (i17 != -1) {
                    i7 = i17;
                } else {
                    int i18 = c0207b.f1479p;
                    if (i18 != -1) {
                        i13 = i18;
                    }
                }
            }
            if (i14 == -1 && i10 == -1) {
                i2 = c0207b.f1481r;
                if (i2 == -1) {
                    int i19 = c0207b.f1482s;
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
            i4 = c0207b.f1474m;
            if (i4 == -1) {
                C0558e c0558e6 = sparseArray.get(i4);
                if (c0558e6 != null) {
                    c0558e.m4507j(c0558e6, c0207b.f1478o, c0207b.f1476n);
                }
            } else {
                if (i7 != -1) {
                    C0558e c0558e7 = sparseArray.get(i7);
                    if (c0558e7 != null) {
                        C0557d.b bVar = C0557d.b.LEFT;
                        f2 = f;
                        c0558e.m4493X(bVar, c0558e7, bVar, ((ViewGroup.MarginLayoutParams) c0207b).leftMargin, i11);
                    } else {
                        f2 = f;
                    }
                } else {
                    f2 = f;
                    if (i8 != -1 && (c0558e2 = sparseArray.get(i8)) != null) {
                        c0558e.m4493X(C0557d.b.LEFT, c0558e2, C0557d.b.RIGHT, ((ViewGroup.MarginLayoutParams) c0207b).leftMargin, i11);
                    }
                }
                if (i2 != -1) {
                    C0558e c0558e8 = sparseArray.get(i2);
                    if (c0558e8 != null) {
                        c0558e.m4493X(C0557d.b.RIGHT, c0558e8, C0557d.b.LEFT, ((ViewGroup.MarginLayoutParams) c0207b).rightMargin, i);
                    }
                } else if (i3 != -1 && (c0558e3 = sparseArray.get(i3)) != null) {
                    C0557d.b bVar2 = C0557d.b.RIGHT;
                    c0558e.m4493X(bVar2, c0558e3, bVar2, ((ViewGroup.MarginLayoutParams) c0207b).rightMargin, i);
                }
                int i20 = c0207b.f1464h;
                if (i20 != -1) {
                    C0558e c0558e9 = sparseArray.get(i20);
                    if (c0558e9 != null) {
                        C0557d.b bVar3 = C0557d.b.TOP;
                        c0558e.m4493X(bVar3, c0558e9, bVar3, ((ViewGroup.MarginLayoutParams) c0207b).topMargin, c0207b.f1484u);
                    }
                } else {
                    int i21 = c0207b.f1466i;
                    if (i21 != -1 && (c0558e4 = sparseArray.get(i21)) != null) {
                        c0558e.m4493X(C0557d.b.TOP, c0558e4, C0557d.b.BOTTOM, ((ViewGroup.MarginLayoutParams) c0207b).topMargin, c0207b.f1484u);
                    }
                }
                int i22 = c0207b.f1468j;
                if (i22 != -1) {
                    C0558e c0558e10 = sparseArray.get(i22);
                    if (c0558e10 != null) {
                        c0558e.m4493X(C0557d.b.BOTTOM, c0558e10, C0557d.b.TOP, ((ViewGroup.MarginLayoutParams) c0207b).bottomMargin, c0207b.f1486w);
                    }
                } else {
                    int i23 = c0207b.f1470k;
                    if (i23 != -1 && (c0558e5 = sparseArray.get(i23)) != null) {
                        C0557d.b bVar4 = C0557d.b.BOTTOM;
                        c0558e.m4493X(bVar4, c0558e5, bVar4, ((ViewGroup.MarginLayoutParams) c0207b).bottomMargin, c0207b.f1486w);
                    }
                }
                int i24 = c0207b.f1472l;
                if (i24 != -1) {
                    View view2 = this.f1404b.get(i24);
                    C0558e c0558e11 = sparseArray.get(c0207b.f1472l);
                    if (c0558e11 != null && view2 != null && (view2.getLayoutParams() instanceof C0207b)) {
                        C0207b c0207b2 = (C0207b) view2.getLayoutParams();
                        c0207b.f1447X = true;
                        c0207b2.f1447X = true;
                        c0558e.mo4513m(C0557d.b.BASELINE).m4425a(c0558e11.mo4513m(C0557d.b.BASELINE), 0, -1, true);
                        c0558e.m4530u0(true);
                        c0207b2.f1475m0.m4530u0(true);
                        c0558e.mo4513m(C0557d.b.TOP).m4440p();
                        c0558e.mo4513m(C0557d.b.BOTTOM).m4440p();
                    }
                }
                float f5 = f2;
                if (f5 >= CropImageView.DEFAULT_ASPECT_RATIO) {
                    c0558e.m4534w0(f5);
                }
                float f6 = c0207b.f1424A;
                if (f6 >= CropImageView.DEFAULT_ASPECT_RATIO) {
                    c0558e.m4474N0(f6);
                }
            }
            if (z && (c0207b.f1439P != -1 || c0207b.f1440Q != -1)) {
                c0558e.m4470L0(c0207b.f1439P, c0207b.f1440Q);
            }
            if (!c0207b.f1445V) {
                c0558e.m4540z0(C0558e.b.FIXED);
                c0558e.m4488U0(((ViewGroup.MarginLayoutParams) c0207b).width);
                if (((ViewGroup.MarginLayoutParams) c0207b).width == -2) {
                    c0558e.m4540z0(C0558e.b.WRAP_CONTENT);
                }
            } else if (((ViewGroup.MarginLayoutParams) c0207b).width == -1) {
                if (c0207b.f1442S) {
                    c0558e.m4540z0(C0558e.b.MATCH_CONSTRAINT);
                } else {
                    c0558e.m4540z0(C0558e.b.MATCH_PARENT);
                }
                c0558e.mo4513m(C0557d.b.LEFT).f3494g = ((ViewGroup.MarginLayoutParams) c0207b).leftMargin;
                c0558e.mo4513m(C0557d.b.RIGHT).f3494g = ((ViewGroup.MarginLayoutParams) c0207b).rightMargin;
            } else {
                c0558e.m4540z0(C0558e.b.MATCH_CONSTRAINT);
                c0558e.m4488U0(0);
            }
            if (!c0207b.f1446W) {
                c0558e.m4480Q0(C0558e.b.FIXED);
                c0558e.m4532v0(((ViewGroup.MarginLayoutParams) c0207b).height);
                if (((ViewGroup.MarginLayoutParams) c0207b).height == -2) {
                    c0558e.m4480Q0(C0558e.b.WRAP_CONTENT);
                }
            } else if (((ViewGroup.MarginLayoutParams) c0207b).height == -1) {
                if (c0207b.f1443T) {
                    c0558e.m4480Q0(C0558e.b.MATCH_CONSTRAINT);
                } else {
                    c0558e.m4480Q0(C0558e.b.MATCH_PARENT);
                }
                c0558e.mo4513m(C0557d.b.TOP).f3494g = ((ViewGroup.MarginLayoutParams) c0207b).topMargin;
                c0558e.mo4513m(C0557d.b.BOTTOM).f3494g = ((ViewGroup.MarginLayoutParams) c0207b).bottomMargin;
            } else {
                c0558e.m4480Q0(C0558e.b.MATCH_CONSTRAINT);
                c0558e.m4532v0(0);
            }
            c0558e.m4516n0(c0207b.f1425B);
            c0558e.m4450B0(c0207b.f1427D);
            c0558e.m4484S0(c0207b.f1428E);
            c0558e.m4536x0(c0207b.f1429F);
            c0558e.m4476O0(c0207b.f1430G);
            c0558e.m4448A0(c0207b.f1431H, c0207b.f1433J, c0207b.f1435L, c0207b.f1437N);
            c0558e.m4482R0(c0207b.f1432I, c0207b.f1434K, c0207b.f1436M, c0207b.f1438O);
        }
        i = i12;
        i2 = i9;
        float f7 = f4;
        i3 = i10;
        f = f7;
        i4 = c0207b.f1474m;
        if (i4 == -1) {
        }
        if (z) {
            c0558e.m4470L0(c0207b.f1439P, c0207b.f1440Q);
        }
        if (!c0207b.f1445V) {
        }
        if (!c0207b.f1446W) {
        }
        c0558e.m4516n0(c0207b.f1425B);
        c0558e.m4450B0(c0207b.f1427D);
        c0558e.m4484S0(c0207b.f1428E);
        c0558e.m4536x0(c0207b.f1429F);
        c0558e.m4476O0(c0207b.f1430G);
        c0558e.m4448A0(c0207b.f1431H, c0207b.f1433J, c0207b.f1435L, c0207b.f1437N);
        c0558e.m4482R0(c0207b.f1432I, c0207b.f1434K, c0207b.f1436M, c0207b.f1438O);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList<AbstractC0210b> arrayList = this.f1405c;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i = 0; i < size; i++) {
                this.f1405c.get(i).m1481l(this);
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
    public C0207b generateDefaultLayoutParams() {
        return new C0207b(-2, -2);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public C0207b generateLayoutParams(AttributeSet attributeSet) {
        return new C0207b(getContext(), attributeSet);
    }

    @Override // android.view.View
    public void forceLayout() {
        m1448m();
        super.forceLayout();
    }

    /* JADX INFO: renamed from: g */
    public Object m1454g(int i, Object obj) {
        if (i != 0 || !(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        HashMap<String, Integer> map = this.f1416n;
        if (map == null || !map.containsKey(str)) {
            return null;
        }
        return this.f1416n.get(str);
    }

    public int getMaxHeight() {
        return this.f1410h;
    }

    public int getMaxWidth() {
        return this.f1409g;
    }

    public int getMinHeight() {
        return this.f1408f;
    }

    public int getMinWidth() {
        return this.f1407e;
    }

    public int getOptimizationLevel() {
        return this.f1406d.m4564s1();
    }

    /* JADX INFO: renamed from: i */
    public View m1455i(int i) {
        return this.f1404b.get(i);
    }

    /* JADX INFO: renamed from: j */
    public final C0558e m1456j(View view) {
        if (view == this) {
            return this.f1406d;
        }
        if (view == null) {
            return null;
        }
        return ((C0207b) view.getLayoutParams()).f1475m0;
    }

    /* JADX INFO: renamed from: l */
    protected boolean m1457l() {
        if (Build.VERSION.SDK_INT >= 17) {
            return ((getContext().getApplicationInfo().flags & 4194304) != 0) && 1 == getLayoutDirection();
        }
        return false;
    }

    /* JADX INFO: renamed from: n */
    protected void m1458n(int i) {
        this.f1414l = new C0211c(getContext(), this, i);
    }

    /* JADX INFO: renamed from: o */
    protected void m1459o(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        C0208c c0208c = this.f1420r;
        int i5 = c0208c.f1495e;
        int i6 = i3 + c0208c.f1494d;
        int i7 = i4 + i5;
        if (Build.VERSION.SDK_INT < 11) {
            setMeasuredDimension(i6, i7);
            this.f1417o = i6;
            this.f1418p = i7;
            return;
        }
        int iResolveSizeAndState = ViewGroup.resolveSizeAndState(i6, i, 0);
        int iResolveSizeAndState2 = ViewGroup.resolveSizeAndState(i7, i2, 0) & 16777215;
        int iMin = Math.min(this.f1409g, iResolveSizeAndState & 16777215);
        int iMin2 = Math.min(this.f1410h, iResolveSizeAndState2);
        if (z) {
            iMin |= 16777216;
        }
        if (z2) {
            iMin2 |= 16777216;
        }
        setMeasuredDimension(iMin, iMin2);
        this.f1417o = iMin;
        this.f1418p = iMin2;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View content;
        int childCount = getChildCount();
        boolean zIsInEditMode = isInEditMode();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            C0207b c0207b = (C0207b) childAt.getLayoutParams();
            C0558e c0558e = c0207b.f1475m0;
            if ((childAt.getVisibility() != 8 || c0207b.f1448Y || c0207b.f1449Z || c0207b.f1453b0 || zIsInEditMode) && !c0207b.f1451a0) {
                int iM4483S = c0558e.m4483S();
                int iM4485T = c0558e.m4485T();
                int iM4481R = c0558e.m4481R() + iM4483S;
                int iM4531v = c0558e.m4531v() + iM4485T;
                childAt.layout(iM4483S, iM4485T, iM4481R, iM4531v);
                if ((childAt instanceof C0215g) && (content = ((C0215g) childAt).getContent()) != null) {
                    content.setVisibility(0);
                    content.layout(iM4483S, iM4485T, iM4481R, iM4531v);
                }
            }
        }
        int size = this.f1405c.size();
        if (size > 0) {
            for (int i6 = 0; i6 < size; i6++) {
                this.f1405c.get(i6).m1479j(this);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (!this.f1411i) {
            int childCount = getChildCount();
            int i3 = 0;
            while (true) {
                if (i3 >= childCount) {
                    break;
                }
                if (getChildAt(i3).isLayoutRequested()) {
                    this.f1411i = true;
                    break;
                }
                i3++;
            }
        }
        if (!this.f1411i) {
            if (this.f1421s == i && this.f1422t == i2) {
                m1459o(i, i2, this.f1406d.m4481R(), this.f1406d.m4531v(), this.f1406d.m4570y1(), this.f1406d.m4568w1());
                return;
            }
            if (this.f1421s == i && View.MeasureSpec.getMode(i) == 1073741824 && View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE && View.MeasureSpec.getMode(this.f1422t) == Integer.MIN_VALUE && View.MeasureSpec.getSize(i2) >= this.f1406d.m4531v()) {
                this.f1421s = i;
                this.f1422t = i2;
                m1459o(i, i2, this.f1406d.m4481R(), this.f1406d.m4531v(), this.f1406d.m4570y1(), this.f1406d.m4568w1());
                return;
            }
        }
        this.f1421s = i;
        this.f1422t = i2;
        this.f1406d.m4550F1(m1457l());
        if (this.f1411i) {
            this.f1411i = false;
            if (m1450t()) {
                this.f1406d.m4552H1();
            }
        }
        m1460p(this.f1406d, this.f1412j, i, i2);
        m1459o(i, i2, this.f1406d.m4481R(), this.f1406d.m4531v(), this.f1406d.m4570y1(), this.f1406d.m4568w1());
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onViewAdded(view);
        }
        C0558e c0558eM1456j = m1456j(view);
        if ((view instanceof Guideline) && !(c0558eM1456j instanceof C0560g)) {
            C0207b c0207b = (C0207b) view.getLayoutParams();
            C0560g c0560g = new C0560g();
            c0207b.f1475m0 = c0560g;
            c0207b.f1448Y = true;
            c0560g.m4581j1(c0207b.f1441R);
        }
        if (view instanceof AbstractC0210b) {
            AbstractC0210b abstractC0210b = (AbstractC0210b) view;
            abstractC0210b.m1483n();
            ((C0207b) view.getLayoutParams()).f1449Z = true;
            if (!this.f1405c.contains(abstractC0210b)) {
                this.f1405c.add(abstractC0210b);
            }
        }
        this.f1404b.put(view.getId(), view);
        this.f1411i = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onViewRemoved(view);
        }
        this.f1404b.remove(view.getId());
        this.f1406d.m4593c1(m1456j(view));
        this.f1405c.remove(view);
        this.f1411i = true;
    }

    /* JADX INFO: renamed from: p */
    protected void m1460p(C0559f c0559f, int i, int i2, int i3) {
        int iMax;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        int iMax2 = Math.max(0, getPaddingTop());
        int iMax3 = Math.max(0, getPaddingBottom());
        int i4 = iMax2 + iMax3;
        int paddingWidth = getPaddingWidth();
        this.f1420r.m1467c(i2, i3, iMax2, iMax3, paddingWidth, i4);
        if (Build.VERSION.SDK_INT >= 17) {
            int iMax4 = Math.max(0, getPaddingStart());
            int iMax5 = Math.max(0, getPaddingEnd());
            if (iMax4 <= 0 && iMax5 <= 0) {
                iMax4 = Math.max(0, getPaddingLeft());
            } else if (m1457l()) {
                iMax4 = iMax5;
            }
            iMax = iMax4;
        } else {
            iMax = Math.max(0, getPaddingLeft());
        }
        int i5 = size - paddingWidth;
        int i6 = size2 - i4;
        m1462s(c0559f, mode, i5, mode2, i6);
        c0559f.m4571z1(i, mode, i5, mode2, i6, this.f1417o, this.f1418p, iMax, iMax2);
    }

    /* JADX INFO: renamed from: r */
    public void m1461r(int i, Object obj, Object obj2) {
        if (i == 0 && (obj instanceof String) && (obj2 instanceof Integer)) {
            if (this.f1416n == null) {
                this.f1416n = new HashMap<>();
            }
            String strSubstring = (String) obj;
            int iIndexOf = strSubstring.indexOf("/");
            if (iIndexOf != -1) {
                strSubstring = strSubstring.substring(iIndexOf + 1);
            }
            this.f1416n.put(strSubstring, Integer.valueOf(((Integer) obj2).intValue()));
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
        m1448m();
        super.requestLayout();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003e A[PHI: r2
      0x003e: PHI (r2v4 c.e.b.k.e$b) = (r2v3 c.e.b.k.e$b), (r2v0 c.e.b.k.e$b) binds: [B:21:0x004a, B:17:0x003c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX INFO: renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void m1462s(C0559f c0559f, int i, int i2, int i3, int i4) {
        C0558e.b bVar;
        C0208c c0208c = this.f1420r;
        int i5 = c0208c.f1495e;
        int i6 = c0208c.f1494d;
        C0558e.b bVar2 = C0558e.b.FIXED;
        int childCount = getChildCount();
        if (i == Integer.MIN_VALUE) {
            bVar = C0558e.b.WRAP_CONTENT;
            if (childCount == 0) {
                i2 = Math.max(0, this.f1407e);
            }
        } else if (i == 0) {
            bVar = C0558e.b.WRAP_CONTENT;
            i2 = childCount == 0 ? Math.max(0, this.f1407e) : 0;
        } else if (i != 1073741824) {
            bVar = bVar2;
        } else {
            i2 = Math.min(this.f1409g - i6, i2);
            bVar = bVar2;
        }
        if (i3 == Integer.MIN_VALUE) {
            bVar2 = C0558e.b.WRAP_CONTENT;
            if (childCount == 0) {
                i4 = Math.max(0, this.f1408f);
            }
        } else if (i3 != 0) {
            i4 = i3 != 1073741824 ? 0 : Math.min(this.f1410h - i5, i4);
        } else {
            bVar2 = C0558e.b.WRAP_CONTENT;
            if (childCount == 0) {
                i4 = Math.max(0, this.f1408f);
            }
        }
        if (i2 != c0559f.m4481R() || i4 != c0559f.m4531v()) {
            c0559f.m4567v1();
        }
        c0559f.m4490V0(0);
        c0559f.m4492W0(0);
        c0559f.m4462H0(this.f1409g - i6);
        c0559f.m4460G0(this.f1410h - i5);
        c0559f.m4468K0(0);
        c0559f.m4466J0(0);
        c0559f.m4540z0(bVar);
        c0559f.m4488U0(i2);
        c0559f.m4480Q0(bVar2);
        c0559f.m4532v0(i4);
        c0559f.m4468K0(this.f1407e - i6);
        c0559f.m4466J0(this.f1408f - i5);
    }

    public void setConstraintSet(C0212d c0212d) {
        this.f1413k = c0212d;
    }

    @Override // android.view.View
    public void setId(int i) {
        this.f1404b.remove(getId());
        super.setId(i);
        this.f1404b.put(getId(), this);
    }

    public void setMaxHeight(int i) {
        if (i == this.f1410h) {
            return;
        }
        this.f1410h = i;
        requestLayout();
    }

    public void setMaxWidth(int i) {
        if (i == this.f1409g) {
            return;
        }
        this.f1409g = i;
        requestLayout();
    }

    public void setMinHeight(int i) {
        if (i == this.f1408f) {
            return;
        }
        this.f1408f = i;
        requestLayout();
    }

    public void setMinWidth(int i) {
        if (i == this.f1407e) {
            return;
        }
        this.f1407e = i;
        requestLayout();
    }

    public void setOnConstraintsChanged(AbstractC0214f abstractC0214f) {
        C0211c c0211c = this.f1414l;
        if (c0211c != null) {
            c0211c.m1486c(abstractC0214f);
        }
    }

    public void setOptimizationLevel(int i) {
        this.f1412j = i;
        this.f1406d.m4549E1(i);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C0207b(layoutParams);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1404b = new SparseArray<>();
        this.f1405c = new ArrayList<>(4);
        this.f1406d = new C0559f();
        this.f1407e = 0;
        this.f1408f = 0;
        this.f1409g = Integer.MAX_VALUE;
        this.f1410h = Integer.MAX_VALUE;
        this.f1411i = true;
        this.f1412j = 257;
        this.f1413k = null;
        this.f1414l = null;
        this.f1415m = -1;
        this.f1416n = new HashMap<>();
        this.f1417o = -1;
        this.f1418p = -1;
        this.f1419q = new SparseArray<>();
        this.f1420r = new C0208c(this);
        this.f1421s = 0;
        this.f1422t = 0;
        m1447k(attributeSet, 0, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1404b = new SparseArray<>();
        this.f1405c = new ArrayList<>(4);
        this.f1406d = new C0559f();
        this.f1407e = 0;
        this.f1408f = 0;
        this.f1409g = Integer.MAX_VALUE;
        this.f1410h = Integer.MAX_VALUE;
        this.f1411i = true;
        this.f1412j = 257;
        this.f1413k = null;
        this.f1414l = null;
        this.f1415m = -1;
        this.f1416n = new HashMap<>();
        this.f1417o = -1;
        this.f1418p = -1;
        this.f1419q = new SparseArray<>();
        this.f1420r = new C0208c(this);
        this.f1421s = 0;
        this.f1422t = 0;
        m1447k(attributeSet, i, 0);
    }

    /* JADX INFO: renamed from: androidx.constraintlayout.widget.ConstraintLayout$b */
    public static class C0207b extends ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: A */
        public float f1424A;

        /* JADX INFO: renamed from: B */
        public String f1425B;

        /* JADX INFO: renamed from: C */
        int f1426C;

        /* JADX INFO: renamed from: D */
        public float f1427D;

        /* JADX INFO: renamed from: E */
        public float f1428E;

        /* JADX INFO: renamed from: F */
        public int f1429F;

        /* JADX INFO: renamed from: G */
        public int f1430G;

        /* JADX INFO: renamed from: H */
        public int f1431H;

        /* JADX INFO: renamed from: I */
        public int f1432I;

        /* JADX INFO: renamed from: J */
        public int f1433J;

        /* JADX INFO: renamed from: K */
        public int f1434K;

        /* JADX INFO: renamed from: L */
        public int f1435L;

        /* JADX INFO: renamed from: M */
        public int f1436M;

        /* JADX INFO: renamed from: N */
        public float f1437N;

        /* JADX INFO: renamed from: O */
        public float f1438O;

        /* JADX INFO: renamed from: P */
        public int f1439P;

        /* JADX INFO: renamed from: Q */
        public int f1440Q;

        /* JADX INFO: renamed from: R */
        public int f1441R;

        /* JADX INFO: renamed from: S */
        public boolean f1442S;

        /* JADX INFO: renamed from: T */
        public boolean f1443T;

        /* JADX INFO: renamed from: U */
        public String f1444U;

        /* JADX INFO: renamed from: V */
        boolean f1445V;

        /* JADX INFO: renamed from: W */
        boolean f1446W;

        /* JADX INFO: renamed from: X */
        boolean f1447X;

        /* JADX INFO: renamed from: Y */
        boolean f1448Y;

        /* JADX INFO: renamed from: Z */
        boolean f1449Z;

        /* JADX INFO: renamed from: a */
        public int f1450a;

        /* JADX INFO: renamed from: a0 */
        boolean f1451a0;

        /* JADX INFO: renamed from: b */
        public int f1452b;

        /* JADX INFO: renamed from: b0 */
        boolean f1453b0;

        /* JADX INFO: renamed from: c */
        public float f1454c;

        /* JADX INFO: renamed from: c0 */
        int f1455c0;

        /* JADX INFO: renamed from: d */
        public int f1456d;

        /* JADX INFO: renamed from: d0 */
        int f1457d0;

        /* JADX INFO: renamed from: e */
        public int f1458e;

        /* JADX INFO: renamed from: e0 */
        int f1459e0;

        /* JADX INFO: renamed from: f */
        public int f1460f;

        /* JADX INFO: renamed from: f0 */
        int f1461f0;

        /* JADX INFO: renamed from: g */
        public int f1462g;

        /* JADX INFO: renamed from: g0 */
        int f1463g0;

        /* JADX INFO: renamed from: h */
        public int f1464h;

        /* JADX INFO: renamed from: h0 */
        int f1465h0;

        /* JADX INFO: renamed from: i */
        public int f1466i;

        /* JADX INFO: renamed from: i0 */
        float f1467i0;

        /* JADX INFO: renamed from: j */
        public int f1468j;

        /* JADX INFO: renamed from: j0 */
        int f1469j0;

        /* JADX INFO: renamed from: k */
        public int f1470k;

        /* JADX INFO: renamed from: k0 */
        int f1471k0;

        /* JADX INFO: renamed from: l */
        public int f1472l;

        /* JADX INFO: renamed from: l0 */
        float f1473l0;

        /* JADX INFO: renamed from: m */
        public int f1474m;

        /* JADX INFO: renamed from: m0 */
        C0558e f1475m0;

        /* JADX INFO: renamed from: n */
        public int f1476n;

        /* JADX INFO: renamed from: n0 */
        public boolean f1477n0;

        /* JADX INFO: renamed from: o */
        public float f1478o;

        /* JADX INFO: renamed from: p */
        public int f1479p;

        /* JADX INFO: renamed from: q */
        public int f1480q;

        /* JADX INFO: renamed from: r */
        public int f1481r;

        /* JADX INFO: renamed from: s */
        public int f1482s;

        /* JADX INFO: renamed from: t */
        public int f1483t;

        /* JADX INFO: renamed from: u */
        public int f1484u;

        /* JADX INFO: renamed from: v */
        public int f1485v;

        /* JADX INFO: renamed from: w */
        public int f1486w;

        /* JADX INFO: renamed from: x */
        public int f1487x;

        /* JADX INFO: renamed from: y */
        public int f1488y;

        /* JADX INFO: renamed from: z */
        public float f1489z;

        /* JADX INFO: renamed from: androidx.constraintlayout.widget.ConstraintLayout$b$a */
        private static class a {

            /* JADX INFO: renamed from: a */
            public static final SparseIntArray f1490a;

            static {
                SparseIntArray sparseIntArray = new SparseIntArray();
                f1490a = sparseIntArray;
                sparseIntArray.append(C0217i.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf, 8);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintLeft_toRightOf, 9);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintRight_toLeftOf, 10);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintRight_toRightOf, 11);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintTop_toTopOf, 12);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintTop_toBottomOf, 13);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintBottom_toTopOf, 14);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf, 15);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf, 16);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintCircle, 2);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintCircleRadius, 3);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintCircleAngle, 4);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_editor_absoluteX, 49);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_editor_absoluteY, 50);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintGuide_begin, 5);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintGuide_end, 6);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintGuide_percent, 7);
                f1490a.append(C0217i.ConstraintLayout_Layout_android_orientation, 1);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintStart_toEndOf, 17);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintStart_toStartOf, 18);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintEnd_toStartOf, 19);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintEnd_toEndOf, 20);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_goneMarginLeft, 21);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_goneMarginTop, 22);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_goneMarginRight, 23);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_goneMarginBottom, 24);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_goneMarginStart, 25);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_goneMarginEnd, 26);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintHorizontal_bias, 29);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintVertical_bias, 30);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintDimensionRatio, 44);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintHorizontal_weight, 45);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintVertical_weight, 46);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle, 47);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintVertical_chainStyle, 48);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constrainedWidth, 27);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constrainedHeight, 28);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintWidth_default, 31);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintHeight_default, 32);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintWidth_min, 33);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintWidth_max, 34);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintWidth_percent, 35);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintHeight_min, 36);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintHeight_max, 37);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintHeight_percent, 38);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintLeft_creator, 39);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintTop_creator, 40);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintRight_creator, 41);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintBottom_creator, 42);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintBaseline_creator, 43);
                f1490a.append(C0217i.ConstraintLayout_Layout_layout_constraintTag, 51);
            }
        }

        public C0207b(Context context, AttributeSet attributeSet) {
            int i;
            super(context, attributeSet);
            this.f1450a = -1;
            this.f1452b = -1;
            this.f1454c = -1.0f;
            this.f1456d = -1;
            this.f1458e = -1;
            this.f1460f = -1;
            this.f1462g = -1;
            this.f1464h = -1;
            this.f1466i = -1;
            this.f1468j = -1;
            this.f1470k = -1;
            this.f1472l = -1;
            this.f1474m = -1;
            this.f1476n = 0;
            this.f1478o = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f1479p = -1;
            this.f1480q = -1;
            this.f1481r = -1;
            this.f1482s = -1;
            this.f1483t = -1;
            this.f1484u = -1;
            this.f1485v = -1;
            this.f1486w = -1;
            this.f1487x = -1;
            this.f1488y = -1;
            this.f1489z = 0.5f;
            this.f1424A = 0.5f;
            this.f1425B = null;
            this.f1426C = 1;
            this.f1427D = -1.0f;
            this.f1428E = -1.0f;
            this.f1429F = 0;
            this.f1430G = 0;
            this.f1431H = 0;
            this.f1432I = 0;
            this.f1433J = 0;
            this.f1434K = 0;
            this.f1435L = 0;
            this.f1436M = 0;
            this.f1437N = 1.0f;
            this.f1438O = 1.0f;
            this.f1439P = -1;
            this.f1440Q = -1;
            this.f1441R = -1;
            this.f1442S = false;
            this.f1443T = false;
            this.f1444U = null;
            this.f1445V = true;
            this.f1446W = true;
            this.f1447X = false;
            this.f1448Y = false;
            this.f1449Z = false;
            this.f1451a0 = false;
            this.f1453b0 = false;
            this.f1455c0 = -1;
            this.f1457d0 = -1;
            this.f1459e0 = -1;
            this.f1461f0 = -1;
            this.f1463g0 = -1;
            this.f1465h0 = -1;
            this.f1467i0 = 0.5f;
            this.f1475m0 = new C0558e();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0217i.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i2);
                int i3 = a.f1490a.get(index);
                switch (i3) {
                    case 1:
                        this.f1441R = typedArrayObtainStyledAttributes.getInt(index, this.f1441R);
                        break;
                    case 2:
                        int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.f1474m);
                        this.f1474m = resourceId;
                        if (resourceId == -1) {
                            this.f1474m = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 3:
                        this.f1476n = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1476n);
                        break;
                    case 4:
                        float f = typedArrayObtainStyledAttributes.getFloat(index, this.f1478o) % 360.0f;
                        this.f1478o = f;
                        if (f < CropImageView.DEFAULT_ASPECT_RATIO) {
                            this.f1478o = (360.0f - f) % 360.0f;
                        }
                        break;
                    case 5:
                        this.f1450a = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1450a);
                        break;
                    case 6:
                        this.f1452b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1452b);
                        break;
                    case 7:
                        this.f1454c = typedArrayObtainStyledAttributes.getFloat(index, this.f1454c);
                        break;
                    case 8:
                        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1456d);
                        this.f1456d = resourceId2;
                        if (resourceId2 == -1) {
                            this.f1456d = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 9:
                        int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1458e);
                        this.f1458e = resourceId3;
                        if (resourceId3 == -1) {
                            this.f1458e = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 10:
                        int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1460f);
                        this.f1460f = resourceId4;
                        if (resourceId4 == -1) {
                            this.f1460f = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 11:
                        int resourceId5 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1462g);
                        this.f1462g = resourceId5;
                        if (resourceId5 == -1) {
                            this.f1462g = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 12:
                        int resourceId6 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1464h);
                        this.f1464h = resourceId6;
                        if (resourceId6 == -1) {
                            this.f1464h = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 13:
                        int resourceId7 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1466i);
                        this.f1466i = resourceId7;
                        if (resourceId7 == -1) {
                            this.f1466i = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 14:
                        int resourceId8 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1468j);
                        this.f1468j = resourceId8;
                        if (resourceId8 == -1) {
                            this.f1468j = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 15:
                        int resourceId9 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1470k);
                        this.f1470k = resourceId9;
                        if (resourceId9 == -1) {
                            this.f1470k = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 16:
                        int resourceId10 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1472l);
                        this.f1472l = resourceId10;
                        if (resourceId10 == -1) {
                            this.f1472l = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 17:
                        int resourceId11 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1479p);
                        this.f1479p = resourceId11;
                        if (resourceId11 == -1) {
                            this.f1479p = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 18:
                        int resourceId12 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1480q);
                        this.f1480q = resourceId12;
                        if (resourceId12 == -1) {
                            this.f1480q = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 19:
                        int resourceId13 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1481r);
                        this.f1481r = resourceId13;
                        if (resourceId13 == -1) {
                            this.f1481r = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 20:
                        int resourceId14 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1482s);
                        this.f1482s = resourceId14;
                        if (resourceId14 == -1) {
                            this.f1482s = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 21:
                        this.f1483t = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1483t);
                        break;
                    case 22:
                        this.f1484u = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1484u);
                        break;
                    case 23:
                        this.f1485v = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1485v);
                        break;
                    case 24:
                        this.f1486w = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1486w);
                        break;
                    case 25:
                        this.f1487x = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1487x);
                        break;
                    case 26:
                        this.f1488y = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1488y);
                        break;
                    case 27:
                        this.f1442S = typedArrayObtainStyledAttributes.getBoolean(index, this.f1442S);
                        break;
                    case 28:
                        this.f1443T = typedArrayObtainStyledAttributes.getBoolean(index, this.f1443T);
                        break;
                    case 29:
                        this.f1489z = typedArrayObtainStyledAttributes.getFloat(index, this.f1489z);
                        break;
                    case 30:
                        this.f1424A = typedArrayObtainStyledAttributes.getFloat(index, this.f1424A);
                        break;
                    case 31:
                        this.f1431H = typedArrayObtainStyledAttributes.getInt(index, 0);
                        break;
                    case 32:
                        this.f1432I = typedArrayObtainStyledAttributes.getInt(index, 0);
                        break;
                    case 33:
                        try {
                            this.f1433J = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1433J);
                        } catch (Exception unused) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.f1433J) == -2) {
                                this.f1433J = -2;
                            }
                        }
                        break;
                    case 34:
                        try {
                            this.f1435L = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1435L);
                        } catch (Exception unused2) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.f1435L) == -2) {
                                this.f1435L = -2;
                            }
                        }
                        break;
                    case 35:
                        this.f1437N = Math.max(CropImageView.DEFAULT_ASPECT_RATIO, typedArrayObtainStyledAttributes.getFloat(index, this.f1437N));
                        this.f1431H = 2;
                        break;
                    case 36:
                        try {
                            this.f1434K = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1434K);
                        } catch (Exception unused3) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.f1434K) == -2) {
                                this.f1434K = -2;
                            }
                        }
                        break;
                    case 37:
                        try {
                            this.f1436M = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1436M);
                        } catch (Exception unused4) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.f1436M) == -2) {
                                this.f1436M = -2;
                            }
                        }
                        break;
                    case 38:
                        this.f1438O = Math.max(CropImageView.DEFAULT_ASPECT_RATIO, typedArrayObtainStyledAttributes.getFloat(index, this.f1438O));
                        this.f1432I = 2;
                        break;
                    default:
                        switch (i3) {
                            case 44:
                                String string = typedArrayObtainStyledAttributes.getString(index);
                                this.f1425B = string;
                                this.f1426C = -1;
                                if (string != null) {
                                    int length = string.length();
                                    int iIndexOf = this.f1425B.indexOf(44);
                                    if (iIndexOf <= 0 || iIndexOf >= length - 1) {
                                        i = 0;
                                    } else {
                                        String strSubstring = this.f1425B.substring(0, iIndexOf);
                                        if (strSubstring.equalsIgnoreCase("W")) {
                                            this.f1426C = 0;
                                        } else if (strSubstring.equalsIgnoreCase("H")) {
                                            this.f1426C = 1;
                                        }
                                        i = iIndexOf + 1;
                                    }
                                    int iIndexOf2 = this.f1425B.indexOf(58);
                                    if (iIndexOf2 < 0 || iIndexOf2 >= length - 1) {
                                        String strSubstring2 = this.f1425B.substring(i);
                                        if (strSubstring2.length() > 0) {
                                            Float.parseFloat(strSubstring2);
                                        }
                                    } else {
                                        String strSubstring3 = this.f1425B.substring(i, iIndexOf2);
                                        String strSubstring4 = this.f1425B.substring(iIndexOf2 + 1);
                                        if (strSubstring3.length() > 0 && strSubstring4.length() > 0) {
                                            try {
                                                float f2 = Float.parseFloat(strSubstring3);
                                                float f3 = Float.parseFloat(strSubstring4);
                                                if (f2 > CropImageView.DEFAULT_ASPECT_RATIO && f3 > CropImageView.DEFAULT_ASPECT_RATIO) {
                                                    if (this.f1426C == 1) {
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
                                this.f1427D = typedArrayObtainStyledAttributes.getFloat(index, this.f1427D);
                                break;
                            case 46:
                                this.f1428E = typedArrayObtainStyledAttributes.getFloat(index, this.f1428E);
                                break;
                            case 47:
                                this.f1429F = typedArrayObtainStyledAttributes.getInt(index, 0);
                                break;
                            case 48:
                                this.f1430G = typedArrayObtainStyledAttributes.getInt(index, 0);
                                break;
                            case 49:
                                this.f1439P = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1439P);
                                break;
                            case 50:
                                this.f1440Q = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1440Q);
                                break;
                            case 51:
                                this.f1444U = typedArrayObtainStyledAttributes.getString(index);
                                break;
                        }
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            m1463a();
        }

        /* JADX INFO: renamed from: a */
        public void m1463a() {
            this.f1448Y = false;
            this.f1445V = true;
            this.f1446W = true;
            if (((ViewGroup.MarginLayoutParams) this).width == -2 && this.f1442S) {
                this.f1445V = false;
                if (this.f1431H == 0) {
                    this.f1431H = 1;
                }
            }
            if (((ViewGroup.MarginLayoutParams) this).height == -2 && this.f1443T) {
                this.f1446W = false;
                if (this.f1432I == 0) {
                    this.f1432I = 1;
                }
            }
            int i = ((ViewGroup.MarginLayoutParams) this).width;
            if (i == 0 || i == -1) {
                this.f1445V = false;
                if (((ViewGroup.MarginLayoutParams) this).width == 0 && this.f1431H == 1) {
                    ((ViewGroup.MarginLayoutParams) this).width = -2;
                    this.f1442S = true;
                }
            }
            int i2 = ((ViewGroup.MarginLayoutParams) this).height;
            if (i2 == 0 || i2 == -1) {
                this.f1446W = false;
                if (((ViewGroup.MarginLayoutParams) this).height == 0 && this.f1432I == 1) {
                    ((ViewGroup.MarginLayoutParams) this).height = -2;
                    this.f1443T = true;
                }
            }
            if (this.f1454c == -1.0f && this.f1450a == -1 && this.f1452b == -1) {
                return;
            }
            this.f1448Y = true;
            this.f1445V = true;
            this.f1446W = true;
            if (!(this.f1475m0 instanceof C0560g)) {
                this.f1475m0 = new C0560g();
            }
            ((C0560g) this.f1475m0).m4581j1(this.f1441R);
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
            this.f1459e0 = -1;
            this.f1461f0 = -1;
            this.f1455c0 = -1;
            this.f1457d0 = -1;
            this.f1463g0 = -1;
            this.f1465h0 = -1;
            this.f1463g0 = this.f1483t;
            this.f1465h0 = this.f1485v;
            this.f1467i0 = this.f1489z;
            this.f1469j0 = this.f1450a;
            this.f1471k0 = this.f1452b;
            this.f1473l0 = this.f1454c;
            if (z) {
                int i8 = this.f1479p;
                if (i8 != -1) {
                    this.f1459e0 = i8;
                } else {
                    int i9 = this.f1480q;
                    if (i9 != -1) {
                        this.f1461f0 = i9;
                    }
                    i2 = this.f1481r;
                    if (i2 != -1) {
                        this.f1457d0 = i2;
                        z2 = true;
                    }
                    i3 = this.f1482s;
                    if (i3 != -1) {
                        this.f1455c0 = i3;
                        z2 = true;
                    }
                    i4 = this.f1487x;
                    if (i4 != -1) {
                        this.f1465h0 = i4;
                    }
                    i5 = this.f1488y;
                    if (i5 != -1) {
                        this.f1463g0 = i5;
                    }
                    if (z2) {
                        this.f1467i0 = 1.0f - this.f1489z;
                    }
                    if (this.f1448Y && this.f1441R == 1) {
                        f = this.f1454c;
                        if (f == -1.0f) {
                            this.f1473l0 = 1.0f - f;
                            this.f1469j0 = -1;
                            this.f1471k0 = -1;
                        } else {
                            int i10 = this.f1450a;
                            if (i10 != -1) {
                                this.f1471k0 = i10;
                                this.f1469j0 = -1;
                                this.f1473l0 = -1.0f;
                            } else {
                                int i11 = this.f1452b;
                                if (i11 != -1) {
                                    this.f1469j0 = i11;
                                    this.f1471k0 = -1;
                                    this.f1473l0 = -1.0f;
                                }
                            }
                        }
                    }
                }
                z2 = true;
                i2 = this.f1481r;
                if (i2 != -1) {
                }
                i3 = this.f1482s;
                if (i3 != -1) {
                }
                i4 = this.f1487x;
                if (i4 != -1) {
                }
                i5 = this.f1488y;
                if (i5 != -1) {
                }
                if (z2) {
                }
                if (this.f1448Y) {
                    f = this.f1454c;
                    if (f == -1.0f) {
                    }
                }
            } else {
                int i12 = this.f1479p;
                if (i12 != -1) {
                    this.f1457d0 = i12;
                }
                int i13 = this.f1480q;
                if (i13 != -1) {
                    this.f1455c0 = i13;
                }
                int i14 = this.f1481r;
                if (i14 != -1) {
                    this.f1459e0 = i14;
                }
                int i15 = this.f1482s;
                if (i15 != -1) {
                    this.f1461f0 = i15;
                }
                int i16 = this.f1487x;
                if (i16 != -1) {
                    this.f1463g0 = i16;
                }
                int i17 = this.f1488y;
                if (i17 != -1) {
                    this.f1465h0 = i17;
                }
            }
            if (this.f1481r == -1 && this.f1482s == -1 && this.f1480q == -1 && this.f1479p == -1) {
                int i18 = this.f1460f;
                if (i18 != -1) {
                    this.f1459e0 = i18;
                    if (((ViewGroup.MarginLayoutParams) this).rightMargin <= 0 && i7 > 0) {
                        ((ViewGroup.MarginLayoutParams) this).rightMargin = i7;
                    }
                } else {
                    int i19 = this.f1462g;
                    if (i19 != -1) {
                        this.f1461f0 = i19;
                        if (((ViewGroup.MarginLayoutParams) this).rightMargin <= 0 && i7 > 0) {
                            ((ViewGroup.MarginLayoutParams) this).rightMargin = i7;
                        }
                    }
                }
                int i20 = this.f1456d;
                if (i20 != -1) {
                    this.f1455c0 = i20;
                    if (((ViewGroup.MarginLayoutParams) this).leftMargin > 0 || i6 <= 0) {
                        return;
                    }
                    ((ViewGroup.MarginLayoutParams) this).leftMargin = i6;
                    return;
                }
                int i21 = this.f1458e;
                if (i21 != -1) {
                    this.f1457d0 = i21;
                    if (((ViewGroup.MarginLayoutParams) this).leftMargin > 0 || i6 <= 0) {
                        return;
                    }
                    ((ViewGroup.MarginLayoutParams) this).leftMargin = i6;
                }
            }
        }

        public C0207b(int i, int i2) {
            super(i, i2);
            this.f1450a = -1;
            this.f1452b = -1;
            this.f1454c = -1.0f;
            this.f1456d = -1;
            this.f1458e = -1;
            this.f1460f = -1;
            this.f1462g = -1;
            this.f1464h = -1;
            this.f1466i = -1;
            this.f1468j = -1;
            this.f1470k = -1;
            this.f1472l = -1;
            this.f1474m = -1;
            this.f1476n = 0;
            this.f1478o = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f1479p = -1;
            this.f1480q = -1;
            this.f1481r = -1;
            this.f1482s = -1;
            this.f1483t = -1;
            this.f1484u = -1;
            this.f1485v = -1;
            this.f1486w = -1;
            this.f1487x = -1;
            this.f1488y = -1;
            this.f1489z = 0.5f;
            this.f1424A = 0.5f;
            this.f1425B = null;
            this.f1426C = 1;
            this.f1427D = -1.0f;
            this.f1428E = -1.0f;
            this.f1429F = 0;
            this.f1430G = 0;
            this.f1431H = 0;
            this.f1432I = 0;
            this.f1433J = 0;
            this.f1434K = 0;
            this.f1435L = 0;
            this.f1436M = 0;
            this.f1437N = 1.0f;
            this.f1438O = 1.0f;
            this.f1439P = -1;
            this.f1440Q = -1;
            this.f1441R = -1;
            this.f1442S = false;
            this.f1443T = false;
            this.f1444U = null;
            this.f1445V = true;
            this.f1446W = true;
            this.f1447X = false;
            this.f1448Y = false;
            this.f1449Z = false;
            this.f1451a0 = false;
            this.f1453b0 = false;
            this.f1455c0 = -1;
            this.f1457d0 = -1;
            this.f1459e0 = -1;
            this.f1461f0 = -1;
            this.f1463g0 = -1;
            this.f1465h0 = -1;
            this.f1467i0 = 0.5f;
            this.f1475m0 = new C0558e();
        }

        public C0207b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1450a = -1;
            this.f1452b = -1;
            this.f1454c = -1.0f;
            this.f1456d = -1;
            this.f1458e = -1;
            this.f1460f = -1;
            this.f1462g = -1;
            this.f1464h = -1;
            this.f1466i = -1;
            this.f1468j = -1;
            this.f1470k = -1;
            this.f1472l = -1;
            this.f1474m = -1;
            this.f1476n = 0;
            this.f1478o = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f1479p = -1;
            this.f1480q = -1;
            this.f1481r = -1;
            this.f1482s = -1;
            this.f1483t = -1;
            this.f1484u = -1;
            this.f1485v = -1;
            this.f1486w = -1;
            this.f1487x = -1;
            this.f1488y = -1;
            this.f1489z = 0.5f;
            this.f1424A = 0.5f;
            this.f1425B = null;
            this.f1426C = 1;
            this.f1427D = -1.0f;
            this.f1428E = -1.0f;
            this.f1429F = 0;
            this.f1430G = 0;
            this.f1431H = 0;
            this.f1432I = 0;
            this.f1433J = 0;
            this.f1434K = 0;
            this.f1435L = 0;
            this.f1436M = 0;
            this.f1437N = 1.0f;
            this.f1438O = 1.0f;
            this.f1439P = -1;
            this.f1440Q = -1;
            this.f1441R = -1;
            this.f1442S = false;
            this.f1443T = false;
            this.f1444U = null;
            this.f1445V = true;
            this.f1446W = true;
            this.f1447X = false;
            this.f1448Y = false;
            this.f1449Z = false;
            this.f1451a0 = false;
            this.f1453b0 = false;
            this.f1455c0 = -1;
            this.f1457d0 = -1;
            this.f1459e0 = -1;
            this.f1461f0 = -1;
            this.f1463g0 = -1;
            this.f1465h0 = -1;
            this.f1467i0 = 0.5f;
            this.f1475m0 = new C0558e();
        }
    }
}
