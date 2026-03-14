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
import androidx.appcompat.view.menu.InterfaceC0110p;
import androidx.core.view.C0292v;
import androidx.core.widget.C0307h;
import java.lang.reflect.Method;
import p016c.p017a.C0493a;
import p016c.p017a.C0502j;

/* JADX INFO: renamed from: androidx.appcompat.widget.h0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0169h0 implements InterfaceC0110p {

    /* JADX INFO: renamed from: G */
    private static Method f1126G;

    /* JADX INFO: renamed from: H */
    private static Method f1127H;

    /* JADX INFO: renamed from: I */
    private static Method f1128I;

    /* JADX INFO: renamed from: A */
    private final b f1129A;

    /* JADX INFO: renamed from: B */
    final Handler f1130B;

    /* JADX INFO: renamed from: C */
    private final Rect f1131C;

    /* JADX INFO: renamed from: D */
    private Rect f1132D;

    /* JADX INFO: renamed from: E */
    private boolean f1133E;

    /* JADX INFO: renamed from: F */
    PopupWindow f1134F;

    /* JADX INFO: renamed from: b */
    private Context f1135b;

    /* JADX INFO: renamed from: c */
    private ListAdapter f1136c;

    /* JADX INFO: renamed from: d */
    C0161d0 f1137d;

    /* JADX INFO: renamed from: e */
    private int f1138e;

    /* JADX INFO: renamed from: f */
    private int f1139f;

    /* JADX INFO: renamed from: g */
    private int f1140g;

    /* JADX INFO: renamed from: h */
    private int f1141h;

    /* JADX INFO: renamed from: i */
    private int f1142i;

    /* JADX INFO: renamed from: j */
    private boolean f1143j;

    /* JADX INFO: renamed from: k */
    private boolean f1144k;

    /* JADX INFO: renamed from: l */
    private boolean f1145l;

    /* JADX INFO: renamed from: m */
    private int f1146m;

    /* JADX INFO: renamed from: n */
    private boolean f1147n;

    /* JADX INFO: renamed from: o */
    private boolean f1148o;

    /* JADX INFO: renamed from: p */
    int f1149p;

    /* JADX INFO: renamed from: q */
    private View f1150q;

    /* JADX INFO: renamed from: r */
    private int f1151r;

    /* JADX INFO: renamed from: s */
    private DataSetObserver f1152s;

    /* JADX INFO: renamed from: t */
    private View f1153t;

    /* JADX INFO: renamed from: u */
    private Drawable f1154u;

    /* JADX INFO: renamed from: v */
    private AdapterView.OnItemClickListener f1155v;

    /* JADX INFO: renamed from: w */
    private AdapterView.OnItemSelectedListener f1156w;

    /* JADX INFO: renamed from: x */
    final f f1157x;

    /* JADX INFO: renamed from: y */
    private final e f1158y;

    /* JADX INFO: renamed from: z */
    private final d f1159z;

    /* JADX INFO: renamed from: androidx.appcompat.widget.h0$a */
    class a implements AdapterView.OnItemSelectedListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            C0161d0 c0161d0;
            if (i == -1 || (c0161d0 = C0169h0.this.f1137d) == null) {
                return;
            }
            c0161d0.setListSelectionHidden(false);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.h0$b */
    private class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0169h0.this.m1159r();
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.h0$c */
    private class c extends DataSetObserver {
        c() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            if (C0169h0.this.mo694b()) {
                C0169h0.this.mo696g();
            }
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            C0169h0.this.dismiss();
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.h0$d */
    private class d implements AbsListView.OnScrollListener {
        d() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
            if (i != 1 || C0169h0.this.m1137A() || C0169h0.this.f1134F.getContentView() == null) {
                return;
            }
            C0169h0 c0169h0 = C0169h0.this;
            c0169h0.f1130B.removeCallbacks(c0169h0.f1157x);
            C0169h0.this.f1157x.run();
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.h0$e */
    private class e implements View.OnTouchListener {
        e() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            PopupWindow popupWindow;
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0 && (popupWindow = C0169h0.this.f1134F) != null && popupWindow.isShowing() && x >= 0 && x < C0169h0.this.f1134F.getWidth() && y >= 0 && y < C0169h0.this.f1134F.getHeight()) {
                C0169h0 c0169h0 = C0169h0.this;
                c0169h0.f1130B.postDelayed(c0169h0.f1157x, 250L);
                return false;
            }
            if (action != 1) {
                return false;
            }
            C0169h0 c0169h02 = C0169h0.this;
            c0169h02.f1130B.removeCallbacks(c0169h02.f1157x);
            return false;
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.h0$f */
    private class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0161d0 c0161d0 = C0169h0.this.f1137d;
            if (c0161d0 == null || !C0292v.m2068S(c0161d0) || C0169h0.this.f1137d.getCount() <= C0169h0.this.f1137d.getChildCount()) {
                return;
            }
            int childCount = C0169h0.this.f1137d.getChildCount();
            C0169h0 c0169h0 = C0169h0.this;
            if (childCount <= c0169h0.f1149p) {
                c0169h0.f1134F.setInputMethodMode(2);
                C0169h0.this.mo696g();
            }
        }
    }

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                f1126G = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException unused) {
            }
            try {
                f1128I = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException unused2) {
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                f1127H = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, Boolean.TYPE);
            } catch (NoSuchMethodException unused3) {
            }
        }
    }

    public C0169h0(Context context) {
        this(context, null, C0493a.listPopupWindowStyle);
    }

    /* JADX INFO: renamed from: C */
    private void m1133C() {
        View view = this.f1150q;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f1150q);
            }
        }
    }

    /* JADX INFO: renamed from: N */
    private void m1134N(boolean z) {
        if (Build.VERSION.SDK_INT > 28) {
            this.f1134F.setIsClippedToScreen(z);
            return;
        }
        Method method = f1126G;
        if (method != null) {
            try {
                method.invoke(this.f1134F, Boolean.valueOf(z));
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: renamed from: q */
    private int m1135q() {
        int measuredHeight;
        int i;
        int iMakeMeasureSpec;
        View view;
        int i2;
        if (this.f1137d == null) {
            Context context = this.f1135b;
            C0161d0 c0161d0Mo1160s = mo1160s(context, !this.f1133E);
            this.f1137d = c0161d0Mo1160s;
            Drawable drawable = this.f1154u;
            if (drawable != null) {
                c0161d0Mo1160s.setSelector(drawable);
            }
            this.f1137d.setAdapter(this.f1136c);
            this.f1137d.setOnItemClickListener(this.f1155v);
            this.f1137d.setFocusable(true);
            this.f1137d.setFocusableInTouchMode(true);
            this.f1137d.setOnItemSelectedListener(new a());
            this.f1137d.setOnScrollListener(this.f1159z);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.f1156w;
            if (onItemSelectedListener != null) {
                this.f1137d.setOnItemSelectedListener(onItemSelectedListener);
            }
            C0161d0 c0161d0 = this.f1137d;
            View view2 = this.f1150q;
            if (view2 != null) {
                LinearLayout linearLayout = new LinearLayout(context);
                linearLayout.setOrientation(1);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
                int i3 = this.f1151r;
                if (i3 == 0) {
                    linearLayout.addView(view2);
                    linearLayout.addView(c0161d0, layoutParams);
                } else if (i3 != 1) {
                    String str = "Invalid hint position " + this.f1151r;
                } else {
                    linearLayout.addView(c0161d0, layoutParams);
                    linearLayout.addView(view2);
                }
                int i4 = this.f1139f;
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
                view = c0161d0;
            }
            this.f1134F.setContentView(view);
        } else {
            View view3 = this.f1150q;
            if (view3 != null) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) view3.getLayoutParams();
                measuredHeight = view3.getMeasuredHeight() + layoutParams3.topMargin + layoutParams3.bottomMargin;
            } else {
                measuredHeight = 0;
            }
        }
        Drawable background = this.f1134F.getBackground();
        if (background != null) {
            background.getPadding(this.f1131C);
            Rect rect = this.f1131C;
            int i5 = rect.top;
            i = rect.bottom + i5;
            if (!this.f1143j) {
                this.f1141h = -i5;
            }
        } else {
            this.f1131C.setEmpty();
            i = 0;
        }
        int iM1136u = m1136u(m1161t(), this.f1141h, this.f1134F.getInputMethodMode() == 2);
        if (this.f1147n || this.f1138e == -1) {
            return iM1136u + i;
        }
        int i6 = this.f1139f;
        if (i6 == -2) {
            int i7 = this.f1135b.getResources().getDisplayMetrics().widthPixels;
            Rect rect2 = this.f1131C;
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i7 - (rect2.left + rect2.right), Integer.MIN_VALUE);
        } else if (i6 != -1) {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i6, 1073741824);
        } else {
            int i8 = this.f1135b.getResources().getDisplayMetrics().widthPixels;
            Rect rect3 = this.f1131C;
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i8 - (rect3.left + rect3.right), 1073741824);
        }
        int iM1084d = this.f1137d.m1084d(iMakeMeasureSpec, 0, -1, iM1136u - measuredHeight, -1);
        if (iM1084d > 0) {
            measuredHeight += i + this.f1137d.getPaddingTop() + this.f1137d.getPaddingBottom();
        }
        return iM1084d + measuredHeight;
    }

    /* JADX INFO: renamed from: u */
    private int m1136u(View view, int i, boolean z) {
        if (Build.VERSION.SDK_INT > 23) {
            return this.f1134F.getMaxAvailableHeight(view, i, z);
        }
        Method method = f1127H;
        if (method != null) {
            try {
                return ((Integer) method.invoke(this.f1134F, view, Integer.valueOf(i), Boolean.valueOf(z))).intValue();
            } catch (Exception unused) {
            }
        }
        return this.f1134F.getMaxAvailableHeight(view, i);
    }

    /* JADX INFO: renamed from: A */
    public boolean m1137A() {
        return this.f1134F.getInputMethodMode() == 2;
    }

    /* JADX INFO: renamed from: B */
    public boolean m1138B() {
        return this.f1133E;
    }

    /* JADX INFO: renamed from: D */
    public void m1139D(View view) {
        this.f1153t = view;
    }

    /* JADX INFO: renamed from: E */
    public void m1140E(int i) {
        this.f1134F.setAnimationStyle(i);
    }

    /* JADX INFO: renamed from: F */
    public void m1141F(int i) {
        Drawable background = this.f1134F.getBackground();
        if (background == null) {
            m1151Q(i);
            return;
        }
        background.getPadding(this.f1131C);
        Rect rect = this.f1131C;
        this.f1139f = rect.left + rect.right + i;
    }

    /* JADX INFO: renamed from: G */
    public void m1142G(int i) {
        this.f1146m = i;
    }

    /* JADX INFO: renamed from: H */
    public void m1143H(Rect rect) {
        this.f1132D = rect != null ? new Rect(rect) : null;
    }

    /* JADX INFO: renamed from: I */
    public void m1144I(int i) {
        this.f1134F.setInputMethodMode(i);
    }

    /* JADX INFO: renamed from: J */
    public void m1145J(boolean z) {
        this.f1133E = z;
        this.f1134F.setFocusable(z);
    }

    /* JADX INFO: renamed from: K */
    public void m1146K(PopupWindow.OnDismissListener onDismissListener) {
        this.f1134F.setOnDismissListener(onDismissListener);
    }

    /* JADX INFO: renamed from: L */
    public void m1147L(AdapterView.OnItemClickListener onItemClickListener) {
        this.f1155v = onItemClickListener;
    }

    /* JADX INFO: renamed from: M */
    public void m1148M(boolean z) {
        this.f1145l = true;
        this.f1144k = z;
    }

    /* JADX INFO: renamed from: O */
    public void m1149O(int i) {
        this.f1151r = i;
    }

    /* JADX INFO: renamed from: P */
    public void m1150P(int i) {
        C0161d0 c0161d0 = this.f1137d;
        if (!mo694b() || c0161d0 == null) {
            return;
        }
        c0161d0.setListSelectionHidden(false);
        c0161d0.setSelection(i);
        if (c0161d0.getChoiceMode() != 0) {
            c0161d0.setItemChecked(i, true);
        }
    }

    /* JADX INFO: renamed from: Q */
    public void m1151Q(int i) {
        this.f1139f = i;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0110p
    /* JADX INFO: renamed from: b */
    public boolean mo694b() {
        return this.f1134F.isShowing();
    }

    /* JADX INFO: renamed from: c */
    public void m1152c(Drawable drawable) {
        this.f1134F.setBackgroundDrawable(drawable);
    }

    /* JADX INFO: renamed from: d */
    public void m1153d(int i) {
        this.f1140g = i;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0110p
    public void dismiss() {
        this.f1134F.dismiss();
        m1133C();
        this.f1134F.setContentView(null);
        this.f1137d = null;
        this.f1130B.removeCallbacks(this.f1157x);
    }

    /* JADX INFO: renamed from: e */
    public int m1154e() {
        return this.f1140g;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0110p
    /* JADX INFO: renamed from: g */
    public void mo696g() {
        int iM1135q = m1135q();
        boolean zM1137A = m1137A();
        C0307h.m2274b(this.f1134F, this.f1142i);
        if (this.f1134F.isShowing()) {
            if (C0292v.m2068S(m1161t())) {
                int width = this.f1139f;
                if (width == -1) {
                    width = -1;
                } else if (width == -2) {
                    width = m1161t().getWidth();
                }
                int i = this.f1138e;
                if (i == -1) {
                    if (!zM1137A) {
                        iM1135q = -1;
                    }
                    if (zM1137A) {
                        this.f1134F.setWidth(this.f1139f == -1 ? -1 : 0);
                        this.f1134F.setHeight(0);
                    } else {
                        this.f1134F.setWidth(this.f1139f == -1 ? -1 : 0);
                        this.f1134F.setHeight(-1);
                    }
                } else if (i != -2) {
                    iM1135q = i;
                }
                this.f1134F.setOutsideTouchable((this.f1148o || this.f1147n) ? false : true);
                this.f1134F.update(m1161t(), this.f1140g, this.f1141h, width < 0 ? -1 : width, iM1135q < 0 ? -1 : iM1135q);
                return;
            }
            return;
        }
        int width2 = this.f1139f;
        if (width2 == -1) {
            width2 = -1;
        } else if (width2 == -2) {
            width2 = m1161t().getWidth();
        }
        int i2 = this.f1138e;
        if (i2 == -1) {
            iM1135q = -1;
        } else if (i2 != -2) {
            iM1135q = i2;
        }
        this.f1134F.setWidth(width2);
        this.f1134F.setHeight(iM1135q);
        m1134N(true);
        this.f1134F.setOutsideTouchable((this.f1148o || this.f1147n) ? false : true);
        this.f1134F.setTouchInterceptor(this.f1158y);
        if (this.f1145l) {
            C0307h.m2273a(this.f1134F, this.f1144k);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = f1128I;
            if (method != null) {
                try {
                    method.invoke(this.f1134F, this.f1132D);
                } catch (Exception unused) {
                }
            }
        } else {
            this.f1134F.setEpicenterBounds(this.f1132D);
        }
        C0307h.m2275c(this.f1134F, m1161t(), this.f1140g, this.f1141h, this.f1146m);
        this.f1137d.setSelection(-1);
        if (!this.f1133E || this.f1137d.isInTouchMode()) {
            m1159r();
        }
        if (this.f1133E) {
            return;
        }
        this.f1130B.post(this.f1129A);
    }

    /* JADX INFO: renamed from: h */
    public int m1155h() {
        if (this.f1143j) {
            return this.f1141h;
        }
        return 0;
    }

    /* JADX INFO: renamed from: j */
    public Drawable m1156j() {
        return this.f1134F.getBackground();
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0110p
    /* JADX INFO: renamed from: l */
    public ListView mo698l() {
        return this.f1137d;
    }

    /* JADX INFO: renamed from: n */
    public void m1157n(int i) {
        this.f1141h = i;
        this.f1143j = true;
    }

    /* JADX INFO: renamed from: o */
    public void mo1158o(ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.f1152s;
        if (dataSetObserver == null) {
            this.f1152s = new c();
        } else {
            ListAdapter listAdapter2 = this.f1136c;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f1136c = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.f1152s);
        }
        C0161d0 c0161d0 = this.f1137d;
        if (c0161d0 != null) {
            c0161d0.setAdapter(this.f1136c);
        }
    }

    /* JADX INFO: renamed from: r */
    public void m1159r() {
        C0161d0 c0161d0 = this.f1137d;
        if (c0161d0 != null) {
            c0161d0.setListSelectionHidden(true);
            c0161d0.requestLayout();
        }
    }

    /* JADX INFO: renamed from: s */
    C0161d0 mo1160s(Context context, boolean z) {
        return new C0161d0(context, z);
    }

    /* JADX INFO: renamed from: t */
    public View m1161t() {
        return this.f1153t;
    }

    /* JADX INFO: renamed from: v */
    public Object m1162v() {
        if (mo694b()) {
            return this.f1137d.getSelectedItem();
        }
        return null;
    }

    /* JADX INFO: renamed from: w */
    public long m1163w() {
        if (mo694b()) {
            return this.f1137d.getSelectedItemId();
        }
        return Long.MIN_VALUE;
    }

    /* JADX INFO: renamed from: x */
    public int m1164x() {
        if (mo694b()) {
            return this.f1137d.getSelectedItemPosition();
        }
        return -1;
    }

    /* JADX INFO: renamed from: y */
    public View m1165y() {
        if (mo694b()) {
            return this.f1137d.getSelectedView();
        }
        return null;
    }

    /* JADX INFO: renamed from: z */
    public int m1166z() {
        return this.f1139f;
    }

    public C0169h0(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public C0169h0(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f1138e = -2;
        this.f1139f = -2;
        this.f1142i = 1002;
        this.f1146m = 0;
        this.f1147n = false;
        this.f1148o = false;
        this.f1149p = Integer.MAX_VALUE;
        this.f1151r = 0;
        this.f1157x = new f();
        this.f1158y = new e();
        this.f1159z = new d();
        this.f1129A = new b();
        this.f1131C = new Rect();
        this.f1135b = context;
        this.f1130B = new Handler(context.getMainLooper());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0502j.ListPopupWindow, i, i2);
        this.f1140g = typedArrayObtainStyledAttributes.getDimensionPixelOffset(C0502j.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(C0502j.ListPopupWindow_android_dropDownVerticalOffset, 0);
        this.f1141h = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.f1143j = true;
        }
        typedArrayObtainStyledAttributes.recycle();
        C0182o c0182o = new C0182o(context, attributeSet, i, i2);
        this.f1134F = c0182o;
        c0182o.setInputMethodMode(1);
    }
}
