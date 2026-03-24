package com.google.android.material.appbar;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.d0;
import androidx.core.view.v;
import java.util.List;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
abstract class b extends c<View> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Rect f2013d;
    final Rect e;
    private int f;
    private int g;

    public b() {
        this.f2013d = new Rect();
        this.e = new Rect();
        this.f = 0;
    }

    private static int N(int i) {
        if (i == 0) {
            return 8388659;
        }
        return i;
    }

    @Override // com.google.android.material.appbar.c
    protected void F(CoordinatorLayout coordinatorLayout, View view, int i) {
        View viewH = H(coordinatorLayout.r(view));
        if (viewH == null) {
            super.F(coordinatorLayout, view, i);
            this.f = 0;
            return;
        }
        CoordinatorLayout.f fVar = (CoordinatorLayout.f) view.getLayoutParams();
        Rect rect = this.f2013d;
        rect.set(coordinatorLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) fVar).leftMargin, viewH.getBottom() + ((ViewGroup.MarginLayoutParams) fVar).topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) fVar).rightMargin, ((coordinatorLayout.getHeight() + viewH.getBottom()) - coordinatorLayout.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin);
        d0 lastWindowInsets = coordinatorLayout.getLastWindowInsets();
        if (lastWindowInsets != null && v.z(coordinatorLayout) && !v.z(view)) {
            rect.left += lastWindowInsets.g();
            rect.right -= lastWindowInsets.h();
        }
        Rect rect2 = this.e;
        androidx.core.view.e.a(N(fVar.f493c), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i);
        int I = I(viewH);
        view.layout(rect2.left, rect2.top - I, rect2.right, rect2.bottom - I);
        this.f = rect2.top - viewH.getBottom();
    }

    abstract View H(List<View> list);

    final int I(View view) {
        if (this.g == 0) {
            return 0;
        }
        float fJ = J(view);
        int i = this.g;
        return c.g.f.a.b((int) (fJ * i), 0, i);
    }

    abstract float J(View view);

    public final int K() {
        return this.g;
    }

    int L(View view) {
        return view.getMeasuredHeight();
    }

    final int M() {
        return this.f;
    }

    public final void O(int i) {
        this.g = i;
    }

    protected boolean P() {
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean m(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
        View viewH;
        d0 lastWindowInsets;
        int i5 = view.getLayoutParams().height;
        if ((i5 != -1 && i5 != -2) || (viewH = H(coordinatorLayout.r(view))) == null) {
            return false;
        }
        int size = View.MeasureSpec.getSize(i3);
        if (size <= 0) {
            size = coordinatorLayout.getHeight();
        } else if (v.z(viewH) && (lastWindowInsets = coordinatorLayout.getLastWindowInsets()) != null) {
            size += lastWindowInsets.i() + lastWindowInsets.f();
        }
        int iL = size + L(viewH);
        int measuredHeight = viewH.getMeasuredHeight();
        if (P()) {
            view.setTranslationY(-measuredHeight);
        } else {
            iL -= measuredHeight;
        }
        coordinatorLayout.J(view, i, i2, View.MeasureSpec.makeMeasureSpec(iL, i5 == -1 ? 1073741824 : Integer.MIN_VALUE), i4);
        return true;
    }

    public b(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2013d = new Rect();
        this.e = new Rect();
        this.f = 0;
    }
}
