package androidx.appcompat.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.view.menu.C0101g;
import androidx.core.view.C0292v;
import p016c.p017a.C0493a;
import p016c.p017a.C0498f;
import p016c.p017a.C0499g;
import p016c.p017a.C0502j;
import p016c.p017a.p024o.AbstractC0512b;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class ActionBarContextView extends AbstractC0152a {

    /* JADX INFO: renamed from: j */
    private CharSequence f761j;

    /* JADX INFO: renamed from: k */
    private CharSequence f762k;

    /* JADX INFO: renamed from: l */
    private View f763l;

    /* JADX INFO: renamed from: m */
    private View f764m;

    /* JADX INFO: renamed from: n */
    private View f765n;

    /* JADX INFO: renamed from: o */
    private LinearLayout f766o;

    /* JADX INFO: renamed from: p */
    private TextView f767p;

    /* JADX INFO: renamed from: q */
    private TextView f768q;

    /* JADX INFO: renamed from: r */
    private int f769r;

    /* JADX INFO: renamed from: s */
    private int f770s;

    /* JADX INFO: renamed from: t */
    private boolean f771t;

    /* JADX INFO: renamed from: u */
    private int f772u;

    /* JADX INFO: renamed from: androidx.appcompat.widget.ActionBarContextView$a */
    class ViewOnClickListenerC0114a implements View.OnClickListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ AbstractC0512b f773b;

        ViewOnClickListenerC0114a(ActionBarContextView actionBarContextView, AbstractC0512b abstractC0512b) {
            this.f773b = abstractC0512b;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f773b.mo627c();
        }
    }

    public ActionBarContextView(Context context) {
        this(context, null);
    }

    /* JADX INFO: renamed from: i */
    private void m837i() {
        if (this.f766o == null) {
            LayoutInflater.from(getContext()).inflate(C0499g.abc_action_bar_title_item, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.f766o = linearLayout;
            this.f767p = (TextView) linearLayout.findViewById(C0498f.action_bar_title);
            this.f768q = (TextView) this.f766o.findViewById(C0498f.action_bar_subtitle);
            if (this.f769r != 0) {
                this.f767p.setTextAppearance(getContext(), this.f769r);
            }
            if (this.f770s != 0) {
                this.f768q.setTextAppearance(getContext(), this.f770s);
            }
        }
        this.f767p.setText(this.f761j);
        this.f768q.setText(this.f762k);
        boolean z = !TextUtils.isEmpty(this.f761j);
        boolean z2 = !TextUtils.isEmpty(this.f762k);
        int i = 0;
        this.f768q.setVisibility(z2 ? 0 : 8);
        LinearLayout linearLayout2 = this.f766o;
        if (!z && !z2) {
            i = 8;
        }
        linearLayout2.setVisibility(i);
        if (this.f766o.getParent() == null) {
            addView(this.f766o);
        }
    }

    /* JADX INFO: renamed from: g */
    public void m838g() {
        if (this.f763l == null) {
            m841k();
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // androidx.appcompat.widget.AbstractC0152a
    public /* bridge */ /* synthetic */ int getAnimatedVisibility() {
        return super.getAnimatedVisibility();
    }

    @Override // androidx.appcompat.widget.AbstractC0152a
    public /* bridge */ /* synthetic */ int getContentHeight() {
        return super.getContentHeight();
    }

    public CharSequence getSubtitle() {
        return this.f762k;
    }

    public CharSequence getTitle() {
        return this.f761j;
    }

    /* JADX INFO: renamed from: h */
    public void m839h(AbstractC0512b abstractC0512b) {
        View view = this.f763l;
        if (view == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(this.f772u, (ViewGroup) this, false);
            this.f763l = viewInflate;
            addView(viewInflate);
        } else if (view.getParent() == null) {
            addView(this.f763l);
        }
        View viewFindViewById = this.f763l.findViewById(C0498f.action_mode_close_button);
        this.f764m = viewFindViewById;
        viewFindViewById.setOnClickListener(new ViewOnClickListenerC0114a(this, abstractC0512b));
        C0101g c0101g = (C0101g) abstractC0512b.mo629e();
        C0158c c0158c = this.f1022e;
        if (c0158c != null) {
            c0158c.m1068y();
        }
        C0158c c0158c2 = new C0158c(getContext());
        this.f1022e = c0158c2;
        c0158c2.m1066J(true);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        c0101g.m752c(this.f1022e, this.f1020c);
        ActionMenuView actionMenuView = (ActionMenuView) this.f1022e.mo679o(this);
        this.f1021d = actionMenuView;
        C0292v.m2111r0(actionMenuView, null);
        addView(this.f1021d, layoutParams);
    }

    /* JADX INFO: renamed from: j */
    public boolean m840j() {
        return this.f771t;
    }

    /* JADX INFO: renamed from: k */
    public void m841k() {
        removeAllViews();
        this.f765n = null;
        this.f1021d = null;
        this.f1022e = null;
        View view = this.f764m;
        if (view != null) {
            view.setOnClickListener(null);
        }
    }

    /* JADX INFO: renamed from: l */
    public boolean m842l() {
        C0158c c0158c = this.f1022e;
        if (c0158c != null) {
            return c0158c.m1067K();
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C0158c c0158c = this.f1022e;
        if (c0158c != null) {
            c0158c.m1058B();
            this.f1022e.m1059C();
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() != 32) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            return;
        }
        accessibilityEvent.setSource(this);
        accessibilityEvent.setClassName(ActionBarContextView.class.getName());
        accessibilityEvent.setPackageName(getContext().getPackageName());
        accessibilityEvent.setContentDescription(this.f761j);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean zM1022b = C0154a1.m1022b(this);
        int paddingRight = zM1022b ? (i3 - i) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        View view = this.f763l;
        if (view != null && view.getVisibility() != 8) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f763l.getLayoutParams();
            int i5 = zM1022b ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i6 = zM1022b ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int iM1015d = AbstractC0152a.m1015d(paddingRight, i5, zM1022b);
            paddingRight = AbstractC0152a.m1015d(iM1015d + m1017e(this.f763l, iM1015d, paddingTop, paddingTop2, zM1022b), i6, zM1022b);
        }
        int iM1017e = paddingRight;
        LinearLayout linearLayout = this.f766o;
        if (linearLayout != null && this.f765n == null && linearLayout.getVisibility() != 8) {
            iM1017e += m1017e(this.f766o, iM1017e, paddingTop, paddingTop2, zM1022b);
        }
        int i7 = iM1017e;
        View view2 = this.f765n;
        if (view2 != null) {
            m1017e(view2, i7, paddingTop, paddingTop2, zM1022b);
        }
        int paddingLeft = zM1022b ? getPaddingLeft() : (i3 - i) - getPaddingRight();
        ActionMenuView actionMenuView = this.f1021d;
        if (actionMenuView != null) {
            m1017e(actionMenuView, paddingLeft, paddingTop, paddingTop2, !zM1022b);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (View.MeasureSpec.getMode(i) != 1073741824) {
            throw new IllegalStateException(ActionBarContextView.class.getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
        }
        if (View.MeasureSpec.getMode(i2) == 0) {
            throw new IllegalStateException(ActionBarContextView.class.getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
        }
        int size = View.MeasureSpec.getSize(i);
        int size2 = this.f1023f;
        if (size2 <= 0) {
            size2 = View.MeasureSpec.getSize(i2);
        }
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int iMin = size2 - paddingTop;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMin, Integer.MIN_VALUE);
        View view = this.f763l;
        if (view != null) {
            int iM1016c = m1016c(view, paddingLeft, iMakeMeasureSpec, 0);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f763l.getLayoutParams();
            paddingLeft = iM1016c - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
        }
        ActionMenuView actionMenuView = this.f1021d;
        if (actionMenuView != null && actionMenuView.getParent() == this) {
            paddingLeft = m1016c(this.f1021d, paddingLeft, iMakeMeasureSpec, 0);
        }
        LinearLayout linearLayout = this.f766o;
        if (linearLayout != null && this.f765n == null) {
            if (this.f771t) {
                this.f766o.measure(View.MeasureSpec.makeMeasureSpec(0, 0), iMakeMeasureSpec);
                int measuredWidth = this.f766o.getMeasuredWidth();
                boolean z = measuredWidth <= paddingLeft;
                if (z) {
                    paddingLeft -= measuredWidth;
                }
                this.f766o.setVisibility(z ? 0 : 8);
            } else {
                paddingLeft = m1016c(linearLayout, paddingLeft, iMakeMeasureSpec, 0);
            }
        }
        View view2 = this.f765n;
        if (view2 != null) {
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            int i3 = layoutParams.width != -2 ? 1073741824 : Integer.MIN_VALUE;
            int i4 = layoutParams.width;
            if (i4 >= 0) {
                paddingLeft = Math.min(i4, paddingLeft);
            }
            int i5 = layoutParams.height == -2 ? Integer.MIN_VALUE : 1073741824;
            int i6 = layoutParams.height;
            if (i6 >= 0) {
                iMin = Math.min(i6, iMin);
            }
            this.f765n.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i3), View.MeasureSpec.makeMeasureSpec(iMin, i5));
        }
        if (this.f1023f > 0) {
            setMeasuredDimension(size, size2);
            return;
        }
        int childCount = getChildCount();
        int i7 = 0;
        for (int i8 = 0; i8 < childCount; i8++) {
            int measuredHeight = getChildAt(i8).getMeasuredHeight() + paddingTop;
            if (measuredHeight > i7) {
                i7 = measuredHeight;
            }
        }
        setMeasuredDimension(size, i7);
    }

    @Override // androidx.appcompat.widget.AbstractC0152a
    public void setContentHeight(int i) {
        this.f1023f = i;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.f765n;
        if (view2 != null) {
            removeView(view2);
        }
        this.f765n = view;
        if (view != null && (linearLayout = this.f766o) != null) {
            removeView(linearLayout);
            this.f766o = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f762k = charSequence;
        m837i();
    }

    public void setTitle(CharSequence charSequence) {
        this.f761j = charSequence;
        m837i();
    }

    public void setTitleOptional(boolean z) {
        if (z != this.f771t) {
            requestLayout();
        }
        this.f771t = z;
    }

    @Override // androidx.appcompat.widget.AbstractC0152a, android.view.View
    public /* bridge */ /* synthetic */ void setVisibility(int i) {
        super.setVisibility(i);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0493a.actionModeStyle);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C0195u0 c0195u0M1321v = C0195u0.m1321v(context, attributeSet, C0502j.ActionMode, i, 0);
        C0292v.m2111r0(this, c0195u0M1321v.m1328g(C0502j.ActionMode_background));
        this.f769r = c0195u0M1321v.m1335n(C0502j.ActionMode_titleTextStyle, 0);
        this.f770s = c0195u0M1321v.m1335n(C0502j.ActionMode_subtitleTextStyle, 0);
        this.f1023f = c0195u0M1321v.m1334m(C0502j.ActionMode_height, 0);
        this.f772u = c0195u0M1321v.m1335n(C0502j.ActionMode_closeItemLayout, C0499g.abc_action_mode_close_item_material);
        c0195u0M1321v.m1341w();
    }
}
