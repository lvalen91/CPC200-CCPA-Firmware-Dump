package com.google.android.material.appbar;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.C0265d0;
import androidx.core.view.C0266e;
import androidx.core.view.C0292v;
import java.util.List;
import p016c.p041g.p045f.C0602a;

/* JADX INFO: renamed from: com.google.android.material.appbar.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
abstract class AbstractC1027b extends C1028c<View> {

    /* JADX INFO: renamed from: d */
    final Rect f6539d;

    /* JADX INFO: renamed from: e */
    final Rect f6540e;

    /* JADX INFO: renamed from: f */
    private int f6541f;

    /* JADX INFO: renamed from: g */
    private int f6542g;

    public AbstractC1027b() {
        this.f6539d = new Rect();
        this.f6540e = new Rect();
        this.f6541f = 0;
    }

    /* JADX INFO: renamed from: N */
    private static int m7917N(int i) {
        if (i == 0) {
            return 8388659;
        }
        return i;
    }

    @Override // com.google.android.material.appbar.C1028c
    /* JADX INFO: renamed from: F */
    protected void mo7918F(CoordinatorLayout coordinatorLayout, View view, int i) {
        View viewMo7900H = mo7900H(coordinatorLayout.m1563r(view));
        if (viewMo7900H == null) {
            super.mo7918F(coordinatorLayout, view, i);
            this.f6541f = 0;
            return;
        }
        CoordinatorLayout.C0224f c0224f = (CoordinatorLayout.C0224f) view.getLayoutParams();
        Rect rect = this.f6539d;
        rect.set(coordinatorLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) c0224f).leftMargin, viewMo7900H.getBottom() + ((ViewGroup.MarginLayoutParams) c0224f).topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) c0224f).rightMargin, ((coordinatorLayout.getHeight() + viewMo7900H.getBottom()) - coordinatorLayout.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) c0224f).bottomMargin);
        C0265d0 lastWindowInsets = coordinatorLayout.getLastWindowInsets();
        if (lastWindowInsets != null && C0292v.m2126z(coordinatorLayout) && !C0292v.m2126z(view)) {
            rect.left += lastWindowInsets.m1840g();
            rect.right -= lastWindowInsets.m1841h();
        }
        Rect rect2 = this.f6540e;
        C0266e.m1882a(m7917N(c0224f.f1686c), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i);
        int iM7919I = m7919I(viewMo7900H);
        view.layout(rect2.left, rect2.top - iM7919I, rect2.right, rect2.bottom - iM7919I);
        this.f6541f = rect2.top - viewMo7900H.getBottom();
    }

    /* JADX INFO: renamed from: H */
    abstract View mo7900H(List<View> list);

    /* JADX INFO: renamed from: I */
    final int m7919I(View view) {
        if (this.f6542g == 0) {
            return 0;
        }
        float fMo7901J = mo7901J(view);
        int i = this.f6542g;
        return C0602a.m4750b((int) (fMo7901J * i), 0, i);
    }

    /* JADX INFO: renamed from: J */
    abstract float mo7901J(View view);

    /* JADX INFO: renamed from: K */
    public final int m7920K() {
        return this.f6542g;
    }

    /* JADX INFO: renamed from: L */
    int mo7902L(View view) {
        return view.getMeasuredHeight();
    }

    /* JADX INFO: renamed from: M */
    final int m7921M() {
        return this.f6541f;
    }

    /* JADX INFO: renamed from: O */
    public final void m7922O(int i) {
        this.f6542g = i;
    }

    /* JADX INFO: renamed from: P */
    protected boolean m7923P() {
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
    /* JADX INFO: renamed from: m */
    public boolean mo1585m(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
        View viewMo7900H;
        C0265d0 lastWindowInsets;
        int i5 = view.getLayoutParams().height;
        if ((i5 != -1 && i5 != -2) || (viewMo7900H = mo7900H(coordinatorLayout.m1563r(view))) == null) {
            return false;
        }
        int size = View.MeasureSpec.getSize(i3);
        if (size <= 0) {
            size = coordinatorLayout.getHeight();
        } else if (C0292v.m2126z(viewMo7900H) && (lastWindowInsets = coordinatorLayout.getLastWindowInsets()) != null) {
            size += lastWindowInsets.m1842i() + lastWindowInsets.m1839f();
        }
        int iMo7902L = size + mo7902L(viewMo7900H);
        int measuredHeight = viewMo7900H.getMeasuredHeight();
        if (m7923P()) {
            view.setTranslationY(-measuredHeight);
        } else {
            iMo7902L -= measuredHeight;
        }
        coordinatorLayout.m1552J(view, i, i2, View.MeasureSpec.makeMeasureSpec(iMo7902L, i5 == -1 ? 1073741824 : Integer.MIN_VALUE), i4);
        return true;
    }

    public AbstractC1027b(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6539d = new Rect();
        this.f6540e = new Rect();
        this.f6541f = 0;
    }
}
