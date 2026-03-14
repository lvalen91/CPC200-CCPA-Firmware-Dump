package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.core.graphics.drawable.C0251a;
import androidx.core.view.C0296z;
import androidx.core.widget.C0305f;
import java.lang.reflect.Field;
import p016c.p017a.C0493a;
import p016c.p017a.p020l.p021a.C0506c;

/* JADX INFO: renamed from: androidx.appcompat.widget.d0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0161d0 extends ListView {

    /* JADX INFO: renamed from: b */
    private final Rect f1067b;

    /* JADX INFO: renamed from: c */
    private int f1068c;

    /* JADX INFO: renamed from: d */
    private int f1069d;

    /* JADX INFO: renamed from: e */
    private int f1070e;

    /* JADX INFO: renamed from: f */
    private int f1071f;

    /* JADX INFO: renamed from: g */
    private int f1072g;

    /* JADX INFO: renamed from: h */
    private Field f1073h;

    /* JADX INFO: renamed from: i */
    private a f1074i;

    /* JADX INFO: renamed from: j */
    private boolean f1075j;

    /* JADX INFO: renamed from: k */
    private boolean f1076k;

    /* JADX INFO: renamed from: l */
    private boolean f1077l;

    /* JADX INFO: renamed from: m */
    private C0296z f1078m;

    /* JADX INFO: renamed from: n */
    private C0305f f1079n;

    /* JADX INFO: renamed from: o */
    b f1080o;

    /* JADX INFO: renamed from: androidx.appcompat.widget.d0$a */
    private static class a extends C0506c {

        /* JADX INFO: renamed from: c */
        private boolean f1081c;

        a(Drawable drawable) {
            super(drawable);
            this.f1081c = true;
        }

        /* JADX INFO: renamed from: c */
        void m1086c(boolean z) {
            this.f1081c = z;
        }

        @Override // p016c.p017a.p020l.p021a.C0506c, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (this.f1081c) {
                super.draw(canvas);
            }
        }

        @Override // p016c.p017a.p020l.p021a.C0506c, android.graphics.drawable.Drawable
        public void setHotspot(float f, float f2) {
            if (this.f1081c) {
                super.setHotspot(f, f2);
            }
        }

        @Override // p016c.p017a.p020l.p021a.C0506c, android.graphics.drawable.Drawable
        public void setHotspotBounds(int i, int i2, int i3, int i4) {
            if (this.f1081c) {
                super.setHotspotBounds(i, i2, i3, i4);
            }
        }

        @Override // p016c.p017a.p020l.p021a.C0506c, android.graphics.drawable.Drawable
        public boolean setState(int[] iArr) {
            if (this.f1081c) {
                return super.setState(iArr);
            }
            return false;
        }

        @Override // p016c.p017a.p020l.p021a.C0506c, android.graphics.drawable.Drawable
        public boolean setVisible(boolean z, boolean z2) {
            if (this.f1081c) {
                return super.setVisible(z, z2);
            }
            return false;
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.d0$b */
    private class b implements Runnable {
        b() {
        }

        /* JADX INFO: renamed from: a */
        public void m1087a() {
            C0161d0 c0161d0 = C0161d0.this;
            c0161d0.f1080o = null;
            c0161d0.removeCallbacks(this);
        }

        /* JADX INFO: renamed from: b */
        public void m1088b() {
            C0161d0.this.post(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            C0161d0 c0161d0 = C0161d0.this;
            c0161d0.f1080o = null;
            c0161d0.drawableStateChanged();
        }
    }

    C0161d0(Context context, boolean z) {
        super(context, null, C0493a.dropDownListViewStyle);
        this.f1067b = new Rect();
        this.f1068c = 0;
        this.f1069d = 0;
        this.f1070e = 0;
        this.f1071f = 0;
        this.f1076k = z;
        setCacheColorHint(0);
        try {
            Field declaredField = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            this.f1073h = declaredField;
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: renamed from: a */
    private void m1075a() {
        this.f1077l = false;
        setPressed(false);
        drawableStateChanged();
        View childAt = getChildAt(this.f1072g - getFirstVisiblePosition());
        if (childAt != null) {
            childAt.setPressed(false);
        }
        C0296z c0296z = this.f1078m;
        if (c0296z != null) {
            c0296z.m2180b();
            this.f1078m = null;
        }
    }

    /* JADX INFO: renamed from: b */
    private void m1076b(View view, int i) {
        performItemClick(view, i, getItemIdAtPosition(i));
    }

    /* JADX INFO: renamed from: c */
    private void m1077c(Canvas canvas) {
        Drawable selector;
        if (this.f1067b.isEmpty() || (selector = getSelector()) == null) {
            return;
        }
        selector.setBounds(this.f1067b);
        selector.draw(canvas);
    }

    /* JADX INFO: renamed from: f */
    private void m1078f(int i, View view) {
        Rect rect = this.f1067b;
        rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        rect.left -= this.f1068c;
        rect.top -= this.f1069d;
        rect.right += this.f1070e;
        rect.bottom += this.f1071f;
        try {
            boolean z = this.f1073h.getBoolean(this);
            if (view.isEnabled() != z) {
                this.f1073h.set(this, Boolean.valueOf(!z));
                if (i != -1) {
                    refreshDrawableState();
                }
            }
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: renamed from: g */
    private void m1079g(int i, View view) {
        Drawable selector = getSelector();
        boolean z = (selector == null || i == -1) ? false : true;
        if (z) {
            selector.setVisible(false, false);
        }
        m1078f(i, view);
        if (z) {
            Rect rect = this.f1067b;
            float fExactCenterX = rect.exactCenterX();
            float fExactCenterY = rect.exactCenterY();
            selector.setVisible(getVisibility() == 0, false);
            C0251a.m1790k(selector, fExactCenterX, fExactCenterY);
        }
    }

    /* JADX INFO: renamed from: h */
    private void m1080h(int i, View view, float f, float f2) {
        m1079g(i, view);
        Drawable selector = getSelector();
        if (selector == null || i == -1) {
            return;
        }
        C0251a.m1790k(selector, f, f2);
    }

    /* JADX INFO: renamed from: i */
    private void m1081i(View view, int i, float f, float f2) {
        View childAt;
        this.f1077l = true;
        if (Build.VERSION.SDK_INT >= 21) {
            drawableHotspotChanged(f, f2);
        }
        if (!isPressed()) {
            setPressed(true);
        }
        layoutChildren();
        int i2 = this.f1072g;
        if (i2 != -1 && (childAt = getChildAt(i2 - getFirstVisiblePosition())) != null && childAt != view && childAt.isPressed()) {
            childAt.setPressed(false);
        }
        this.f1072g = i;
        float left = f - view.getLeft();
        float top = f2 - view.getTop();
        if (Build.VERSION.SDK_INT >= 21) {
            view.drawableHotspotChanged(left, top);
        }
        if (!view.isPressed()) {
            view.setPressed(true);
        }
        m1080h(i, view, f, f2);
        setSelectorEnabled(false);
        refreshDrawableState();
    }

    /* JADX INFO: renamed from: j */
    private boolean m1082j() {
        return this.f1077l;
    }

    /* JADX INFO: renamed from: k */
    private void m1083k() {
        Drawable selector = getSelector();
        if (selector != null && m1082j() && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    private void setSelectorEnabled(boolean z) {
        a aVar = this.f1074i;
        if (aVar != null) {
            aVar.m1086c(z);
        }
    }

    /* JADX INFO: renamed from: d */
    public int m1084d(int i, int i2, int i3, int i4, int i5) {
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            return listPaddingTop + listPaddingBottom;
        }
        int measuredHeight = listPaddingTop + listPaddingBottom;
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        View view = null;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (i6 < count) {
            int itemViewType = adapter.getItemViewType(i6);
            if (itemViewType != i7) {
                view = null;
                i7 = itemViewType;
            }
            view = adapter.getView(i6, view, this);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            int i9 = layoutParams.height;
            view.measure(i, i9 > 0 ? View.MeasureSpec.makeMeasureSpec(i9, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
            view.forceLayout();
            if (i6 > 0) {
                measuredHeight += dividerHeight;
            }
            measuredHeight += view.getMeasuredHeight();
            if (measuredHeight >= i4) {
                return (i5 < 0 || i6 <= i5 || i8 <= 0 || measuredHeight == i4) ? i4 : i8;
            }
            if (i5 >= 0 && i6 >= i5) {
                i8 = measuredHeight;
            }
            i6++;
        }
        return measuredHeight;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        m1077c(canvas);
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (this.f1080o != null) {
            return;
        }
        super.drawableStateChanged();
        setSelectorEnabled(true);
        m1083k();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0011  */
    /* JADX INFO: renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean m1085e(MotionEvent motionEvent, int i) {
        boolean z;
        boolean z2;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1) {
            z = false;
        } else {
            if (actionMasked != 2) {
                if (actionMasked != 3) {
                    z2 = false;
                    z = true;
                } else {
                    z2 = false;
                    z = false;
                }
                if (z || z2) {
                    m1075a();
                }
                if (z) {
                    C0305f c0305f = this.f1079n;
                    if (c0305f != null) {
                        c0305f.m2241m(false);
                    }
                } else {
                    if (this.f1079n == null) {
                        this.f1079n = new C0305f(this);
                    }
                    this.f1079n.m2241m(true);
                    this.f1079n.onTouch(this, motionEvent);
                }
                return z;
            }
            z = true;
        }
        int iFindPointerIndex = motionEvent.findPointerIndex(i);
        if (iFindPointerIndex >= 0) {
            int x = (int) motionEvent.getX(iFindPointerIndex);
            int y = (int) motionEvent.getY(iFindPointerIndex);
            int iPointToPosition = pointToPosition(x, y);
            if (iPointToPosition == -1) {
                z2 = true;
            } else {
                View childAt = getChildAt(iPointToPosition - getFirstVisiblePosition());
                m1081i(childAt, iPointToPosition, x, y);
                if (actionMasked == 1) {
                    m1076b(childAt, iPointToPosition);
                }
                z2 = false;
                z = true;
            }
        }
        if (z) {
            m1075a();
        }
        if (z) {
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        return this.f1076k || super.hasFocus();
    }

    @Override // android.view.View
    public boolean hasWindowFocus() {
        return this.f1076k || super.hasWindowFocus();
    }

    @Override // android.view.View
    public boolean isFocused() {
        return this.f1076k || super.isFocused();
    }

    @Override // android.view.View
    public boolean isInTouchMode() {
        return (this.f1076k && this.f1075j) || super.isInTouchMode();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.f1080o = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        if (Build.VERSION.SDK_INT < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.f1080o == null) {
            b bVar = new b();
            this.f1080o = bVar;
            bVar.m1088b();
        }
        boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (iPointToPosition != -1 && iPointToPosition != getSelectedItemPosition()) {
                View childAt = getChildAt(iPointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    setSelectionFromTop(iPointToPosition, childAt.getTop() - getTop());
                }
                m1083k();
            }
        } else {
            setSelection(-1);
        }
        return zOnHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f1072g = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        b bVar = this.f1080o;
        if (bVar != null) {
            bVar.m1087a();
        }
        return super.onTouchEvent(motionEvent);
    }

    void setListSelectionHidden(boolean z) {
        this.f1075j = z;
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        a aVar = drawable != null ? new a(drawable) : null;
        this.f1074i = aVar;
        super.setSelector(aVar);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f1068c = rect.left;
        this.f1069d = rect.top;
        this.f1070e = rect.right;
        this.f1071f = rect.bottom;
    }
}
