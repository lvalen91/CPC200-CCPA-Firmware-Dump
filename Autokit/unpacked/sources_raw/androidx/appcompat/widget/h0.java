package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class h0 implements androidx.appcompat.view.menu.p {
    private static Method G;
    private static Method H;
    private static Method I;
    private final b A;
    final Handler B;
    private final Rect C;
    private Rect D;
    private boolean E;
    PopupWindow F;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f331b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ListAdapter f332c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    d0 f333d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private boolean j;
    private boolean k;
    private boolean l;
    private int m;
    private boolean n;
    private boolean o;
    int p;
    private View q;
    private int r;
    private DataSetObserver s;
    private View t;
    private Drawable u;
    private AdapterView.OnItemClickListener v;
    private AdapterView.OnItemSelectedListener w;
    final f x;
    private final e y;
    private final d z;

    class a implements AdapterView.OnItemSelectedListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            d0 d0Var;
            if (i == -1 || (d0Var = h0.this.f333d) == null) {
                return;
            }
            d0Var.setListSelectionHidden(false);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    private class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.this.r();
        }
    }

    private class c extends DataSetObserver {
        c() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            if (h0.this.b()) {
                h0.this.g();
            }
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            h0.this.dismiss();
        }
    }

    private class d implements AbsListView.OnScrollListener {
        d() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
            if (i != 1 || h0.this.A() || h0.this.F.getContentView() == null) {
                return;
            }
            h0 h0Var = h0.this;
            h0Var.B.removeCallbacks(h0Var.x);
            h0.this.x.run();
        }
    }

    private class e implements View.OnTouchListener {
        e() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            PopupWindow popupWindow;
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0 && (popupWindow = h0.this.F) != null && popupWindow.isShowing() && x >= 0 && x < h0.this.F.getWidth() && y >= 0 && y < h0.this.F.getHeight()) {
                h0 h0Var = h0.this;
                h0Var.B.postDelayed(h0Var.x, 250L);
                return false;
            }
            if (action != 1) {
                return false;
            }
            h0 h0Var2 = h0.this;
            h0Var2.B.removeCallbacks(h0Var2.x);
            return false;
        }
    }

    private class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d0 d0Var = h0.this.f333d;
            if (d0Var == null || !androidx.core.view.v.S(d0Var) || h0.this.f333d.getCount() <= h0.this.f333d.getChildCount()) {
                return;
            }
            int childCount = h0.this.f333d.getChildCount();
            h0 h0Var = h0.this;
            if (childCount <= h0Var.p) {
                h0Var.F.setInputMethodMode(2);
                h0.this.g();
            }
        }
    }

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                G = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException unused) {
            }
            try {
                I = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException unused2) {
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                H = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, Boolean.TYPE);
            } catch (NoSuchMethodException unused3) {
            }
        }
    }

    public h0(Context context) {
        this(context, null, c.a.a.listPopupWindowStyle);
    }

    private void C() {
        View view = this.q;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.q);
            }
        }
    }

    private void N(boolean z) {
        if (Build.VERSION.SDK_INT > 28) {
            this.F.setIsClippedToScreen(z);
            return;
        }
        Method method = G;
        if (method != null) {
            try {
                method.invoke(this.F, Boolean.valueOf(z));
            } catch (Exception unused) {
            }
        }
    }

    private int q() {
        int measuredHeight;
        int i;
        int iMakeMeasureSpec;
        View view;
        int i2;
        if (this.f333d == null) {
            Context context = this.f331b;
            d0 d0VarS = s(context, !this.E);
            this.f333d = d0VarS;
            Drawable drawable = this.u;
            if (drawable != null) {
                d0VarS.setSelector(drawable);
            }
            this.f333d.setAdapter(this.f332c);
            this.f333d.setOnItemClickListener(this.v);
            this.f333d.setFocusable(true);
            this.f333d.setFocusableInTouchMode(true);
            this.f333d.setOnItemSelectedListener(new a());
            this.f333d.setOnScrollListener(this.z);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.w;
            if (onItemSelectedListener != null) {
                this.f333d.setOnItemSelectedListener(onItemSelectedListener);
            }
            d0 d0Var = this.f333d;
            View view2 = this.q;
            if (view2 != null) {
                LinearLayout linearLayout = new LinearLayout(context);
                linearLayout.setOrientation(1);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
                int i3 = this.r;
                if (i3 == 0) {
                    linearLayout.addView(view2);
                    linearLayout.addView(d0Var, layoutParams);
                } else if (i3 != 1) {
                    String str = "Invalid hint position " + this.r;
                } else {
                    linearLayout.addView(d0Var, layoutParams);
                    linearLayout.addView(view2);
                }
                int i4 = this.f;
                if (i4 >= 0) {
                    i2 = Integer.MIN_VALUE;
                } else {
                    i4 = 0;
                    i2 = 0;
                }
                view2.measure(View.MeasureSpec.makeMeasureSpec(i4, i2), 0);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) view2.getLayoutParams();
                measuredHeight = view2.getMeasuredHeight() + layoutParams2.topMargin + layoutParams2.bottomMargin;
                view = linearLayout;
            } else {
                measuredHeight = 0;
                view = d0Var;
            }
            this.F.setContentView(view);
        } else {
            View view3 = this.q;
            if (view3 != null) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) view3.getLayoutParams();
                measuredHeight = view3.getMeasuredHeight() + layoutParams3.topMargin + layoutParams3.bottomMargin;
            } else {
                measuredHeight = 0;
            }
        }
        Drawable background = this.F.getBackground();
        if (background != null) {
            background.getPadding(this.C);
            Rect rect = this.C;
            int i5 = rect.top;
            i = rect.bottom + i5;
            if (!this.j) {
                this.h = -i5;
            }
        } else {
            this.C.setEmpty();
            i = 0;
        }
        int iU = u(t(), this.h, this.F.getInputMethodMode() == 2);
        if (this.n || this.e == -1) {
            return iU + i;
        }
        int i6 = this.f;
        if (i6 == -2) {
            int i7 = this.f331b.getResources().getDisplayMetrics().widthPixels;
            Rect rect2 = this.C;
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i7 - (rect2.left + rect2.right), Integer.MIN_VALUE);
        } else if (i6 != -1) {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i6, 1073741824);
        } else {
            int i8 = this.f331b.getResources().getDisplayMetrics().widthPixels;
            Rect rect3 = this.C;
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i8 - (rect3.left + rect3.right), 1073741824);
        }
        int iD = this.f333d.d(iMakeMeasureSpec, 0, -1, iU - measuredHeight, -1);
        if (iD > 0) {
            measuredHeight += i + this.f333d.getPaddingTop() + this.f333d.getPaddingBottom();
        }
        return iD + measuredHeight;
    }

    private int u(View view, int i, boolean z) {
        if (Build.VERSION.SDK_INT > 23) {
            return this.F.getMaxAvailableHeight(view, i, z);
        }
        Method method = H;
        if (method != null) {
            try {
                return ((Integer) method.invoke(this.F, view, Integer.valueOf(i), Boolean.valueOf(z))).intValue();
            } catch (Exception unused) {
            }
        }
        return this.F.getMaxAvailableHeight(view, i);
    }

    public boolean A() {
        return this.F.getInputMethodMode() == 2;
    }

    public boolean B() {
        return this.E;
    }

    public void D(View view) {
        this.t = view;
    }

    public void E(int i) {
        this.F.setAnimationStyle(i);
    }

    public void F(int i) {
        Drawable background = this.F.getBackground();
        if (background == null) {
            Q(i);
            return;
        }
        background.getPadding(this.C);
        Rect rect = this.C;
        this.f = rect.left + rect.right + i;
    }

    public void G(int i) {
        this.m = i;
    }

    public void H(Rect rect) {
        this.D = rect != null ? new Rect(rect) : null;
    }

    public void I(int i) {
        this.F.setInputMethodMode(i);
    }

    public void J(boolean z) {
        this.E = z;
        this.F.setFocusable(z);
    }

    public void K(PopupWindow.OnDismissListener onDismissListener) {
        this.F.setOnDismissListener(onDismissListener);
    }

    public void L(AdapterView.OnItemClickListener onItemClickListener) {
        this.v = onItemClickListener;
    }

    public void M(boolean z) {
        this.l = true;
        this.k = z;
    }

    public void O(int i) {
        this.r = i;
    }

    public void P(int i) {
        d0 d0Var = this.f333d;
        if (!b() || d0Var == null) {
            return;
        }
        d0Var.setListSelectionHidden(false);
        d0Var.setSelection(i);
        if (d0Var.getChoiceMode() != 0) {
            d0Var.setItemChecked(i, true);
        }
    }

    public void Q(int i) {
        this.f = i;
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean b() {
        return this.F.isShowing();
    }

    public void c(Drawable drawable) {
        this.F.setBackgroundDrawable(drawable);
    }

    public void d(int i) {
        this.g = i;
    }

    @Override // androidx.appcompat.view.menu.p
    public void dismiss() {
        this.F.dismiss();
        C();
        this.F.setContentView(null);
        this.f333d = null;
        this.B.removeCallbacks(this.x);
    }

    public int e() {
        return this.g;
    }

    @Override // androidx.appcompat.view.menu.p
    public void g() {
        int iQ = q();
        boolean zA = A();
        androidx.core.widget.h.b(this.F, this.i);
        if (this.F.isShowing()) {
            if (androidx.core.view.v.S(t())) {
                int width = this.f;
                if (width == -1) {
                    width = -1;
                } else if (width == -2) {
                    width = t().getWidth();
                }
                int i = this.e;
                if (i == -1) {
                    if (!zA) {
                        iQ = -1;
                    }
                    if (zA) {
                        this.F.setWidth(this.f == -1 ? -1 : 0);
                        this.F.setHeight(0);
                    } else {
                        this.F.setWidth(this.f == -1 ? -1 : 0);
                        this.F.setHeight(-1);
                    }
                } else if (i != -2) {
                    iQ = i;
                }
                this.F.setOutsideTouchable((this.o || this.n) ? false : true);
                this.F.update(t(), this.g, this.h, width < 0 ? -1 : width, iQ < 0 ? -1 : iQ);
                return;
            }
            return;
        }
        int width2 = this.f;
        if (width2 == -1) {
            width2 = -1;
        } else if (width2 == -2) {
            width2 = t().getWidth();
        }
        int i2 = this.e;
        if (i2 == -1) {
            iQ = -1;
        } else if (i2 != -2) {
            iQ = i2;
        }
        this.F.setWidth(width2);
        this.F.setHeight(iQ);
        N(true);
        this.F.setOutsideTouchable((this.o || this.n) ? false : true);
        this.F.setTouchInterceptor(this.y);
        if (this.l) {
            androidx.core.widget.h.a(this.F, this.k);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = I;
            if (method != null) {
                try {
                    method.invoke(this.F, this.D);
                } catch (Exception unused) {
                }
            }
        } else {
            this.F.setEpicenterBounds(this.D);
        }
        androidx.core.widget.h.c(this.F, t(), this.g, this.h, this.m);
        this.f333d.setSelection(-1);
        if (!this.E || this.f333d.isInTouchMode()) {
            r();
        }
        if (this.E) {
            return;
        }
        this.B.post(this.A);
    }

    public int h() {
        if (this.j) {
            return this.h;
        }
        return 0;
    }

    public Drawable j() {
        return this.F.getBackground();
    }

    @Override // androidx.appcompat.view.menu.p
    public ListView l() {
        return this.f333d;
    }

    public void n(int i) {
        this.h = i;
        this.j = true;
    }

    public void o(ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.s;
        if (dataSetObserver == null) {
            this.s = new c();
        } else {
            ListAdapter listAdapter2 = this.f332c;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f332c = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.s);
        }
        d0 d0Var = this.f333d;
        if (d0Var != null) {
            d0Var.setAdapter(this.f332c);
        }
    }

    public void r() {
        d0 d0Var = this.f333d;
        if (d0Var != null) {
            d0Var.setListSelectionHidden(true);
            d0Var.requestLayout();
        }
    }

    d0 s(Context context, boolean z) {
        return new d0(context, z);
    }

    public View t() {
        return this.t;
    }

    public Object v() {
        if (b()) {
            return this.f333d.getSelectedItem();
        }
        return null;
    }

    public long w() {
        if (b()) {
            return this.f333d.getSelectedItemId();
        }
        return Long.MIN_VALUE;
    }

    public int x() {
        if (b()) {
            return this.f333d.getSelectedItemPosition();
        }
        return -1;
    }

    public View y() {
        if (b()) {
            return this.f333d.getSelectedView();
        }
        return null;
    }

    public int z() {
        return this.f;
    }

    public h0(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public h0(Context context, AttributeSet attributeSet, int i, int i2) {
        this.e = -2;
        this.f = -2;
        this.i = 1002;
        this.m = 0;
        this.n = false;
        this.o = false;
        this.p = Integer.MAX_VALUE;
        this.r = 0;
        this.x = new f();
        this.y = new e();
        this.z = new d();
        this.A = new b();
        this.C = new Rect();
        this.f331b = context;
        this.B = new Handler(context.getMainLooper());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.a.j.ListPopupWindow, i, i2);
        this.g = typedArrayObtainStyledAttributes.getDimensionPixelOffset(c.a.j.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(c.a.j.ListPopupWindow_android_dropDownVerticalOffset, 0);
        this.h = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.j = true;
        }
        typedArrayObtainStyledAttributes.recycle();
        o oVar = new o(context, attributeSet, i, i2);
        this.F = oVar;
        oVar.setInputMethodMode(1);
    }
}
