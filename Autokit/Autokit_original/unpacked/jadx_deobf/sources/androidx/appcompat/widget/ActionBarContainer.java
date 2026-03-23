package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.view.C0292v;
import p016c.p017a.C0498f;
import p016c.p017a.C0502j;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class ActionBarContainer extends FrameLayout {

    /* JADX INFO: renamed from: b */
    private boolean f751b;

    /* JADX INFO: renamed from: c */
    private View f752c;

    /* JADX INFO: renamed from: d */
    private View f753d;

    /* JADX INFO: renamed from: e */
    private View f754e;

    /* JADX INFO: renamed from: f */
    Drawable f755f;

    /* JADX INFO: renamed from: g */
    Drawable f756g;

    /* JADX INFO: renamed from: h */
    Drawable f757h;

    /* JADX INFO: renamed from: i */
    boolean f758i;

    /* JADX INFO: renamed from: j */
    boolean f759j;

    /* JADX INFO: renamed from: k */
    private int f760k;

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        C0292v.m2111r0(this, new C0155b(this));
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0502j.ActionBar);
        this.f755f = typedArrayObtainStyledAttributes.getDrawable(C0502j.ActionBar_background);
        this.f756g = typedArrayObtainStyledAttributes.getDrawable(C0502j.ActionBar_backgroundStacked);
        this.f760k = typedArrayObtainStyledAttributes.getDimensionPixelSize(C0502j.ActionBar_height, -1);
        boolean z = true;
        if (getId() == C0498f.split_action_bar) {
            this.f758i = true;
            this.f757h = typedArrayObtainStyledAttributes.getDrawable(C0502j.ActionBar_backgroundSplit);
        }
        typedArrayObtainStyledAttributes.recycle();
        if (!this.f758i ? this.f755f != null || this.f756g != null : this.f757h != null) {
            z = false;
        }
        setWillNotDraw(z);
    }

    /* JADX INFO: renamed from: a */
    private int m835a(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        return view.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    /* JADX INFO: renamed from: b */
    private boolean m836b(View view) {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f755f;
        if (drawable != null && drawable.isStateful()) {
            this.f755f.setState(getDrawableState());
        }
        Drawable drawable2 = this.f756g;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f756g.setState(getDrawableState());
        }
        Drawable drawable3 = this.f757h;
        if (drawable3 == null || !drawable3.isStateful()) {
            return;
        }
        this.f757h.setState(getDrawableState());
    }

    public View getTabContainer() {
        return this.f752c;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f755f;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f756g;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f757h;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f753d = findViewById(C0498f.action_bar);
        this.f754e = findViewById(C0498f.action_context_bar);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f751b || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Drawable drawable;
        super.onLayout(z, i, i2, i3, i4);
        View view = this.f752c;
        boolean z2 = true;
        boolean z3 = false;
        boolean z4 = (view == null || view.getVisibility() == 8) ? false : true;
        if (view != null && view.getVisibility() != 8) {
            int measuredHeight = getMeasuredHeight();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            int measuredHeight2 = measuredHeight - view.getMeasuredHeight();
            int i5 = layoutParams.bottomMargin;
            view.layout(i, measuredHeight2 - i5, i3, measuredHeight - i5);
        }
        if (this.f758i) {
            Drawable drawable2 = this.f757h;
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            } else {
                z2 = false;
            }
        } else {
            if (this.f755f != null) {
                if (this.f753d.getVisibility() == 0) {
                    this.f755f.setBounds(this.f753d.getLeft(), this.f753d.getTop(), this.f753d.getRight(), this.f753d.getBottom());
                } else {
                    View view2 = this.f754e;
                    if (view2 == null || view2.getVisibility() != 0) {
                        this.f755f.setBounds(0, 0, 0, 0);
                    } else {
                        this.f755f.setBounds(this.f754e.getLeft(), this.f754e.getTop(), this.f754e.getRight(), this.f754e.getBottom());
                    }
                }
                z3 = true;
            }
            this.f759j = z4;
            if (!z4 || (drawable = this.f756g) == null) {
                z2 = z3;
            } else {
                drawable.setBounds(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
        }
        if (z2) {
            invalidate();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        if (this.f753d == null && View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE && (i3 = this.f760k) >= 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(Math.min(i3, View.MeasureSpec.getSize(i2)), Integer.MIN_VALUE);
        }
        super.onMeasure(i, i2);
        if (this.f753d == null) {
            return;
        }
        int mode = View.MeasureSpec.getMode(i2);
        View view = this.f752c;
        if (view == null || view.getVisibility() == 8 || mode == 1073741824) {
            return;
        }
        setMeasuredDimension(getMeasuredWidth(), Math.min((!m836b(this.f753d) ? m835a(this.f753d) : !m836b(this.f754e) ? m835a(this.f754e) : 0) + m835a(this.f752c), mode == Integer.MIN_VALUE ? View.MeasureSpec.getSize(i2) : Integer.MAX_VALUE));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f755f;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f755f);
        }
        this.f755f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.f753d;
            if (view != null) {
                this.f755f.setBounds(view.getLeft(), this.f753d.getTop(), this.f753d.getRight(), this.f753d.getBottom());
            }
        }
        boolean z = true;
        if (!this.f758i ? this.f755f != null || this.f756g != null : this.f757h != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setSplitBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f757h;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f757h);
        }
        this.f757h = drawable;
        boolean z = false;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f758i && (drawable2 = this.f757h) != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
        }
        if (!this.f758i ? !(this.f755f != null || this.f756g != null) : this.f757h == null) {
            z = true;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setStackedBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f756g;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f756g);
        }
        this.f756g = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f759j && (drawable2 = this.f756g) != null) {
                drawable2.setBounds(this.f752c.getLeft(), this.f752c.getTop(), this.f752c.getRight(), this.f752c.getBottom());
            }
        }
        boolean z = true;
        if (!this.f758i ? this.f755f != null || this.f756g != null : this.f757h != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setTabContainer(C0181n0 c0181n0) {
        View view = this.f752c;
        if (view != null) {
            removeView(view);
        }
        this.f752c = c0181n0;
        if (c0181n0 != null) {
            addView(c0181n0);
            ViewGroup.LayoutParams layoutParams = c0181n0.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            c0181n0.setAllowCollapse(false);
        }
    }

    public void setTransitioning(boolean z) {
        this.f751b = z;
        setDescendantFocusability(z ? 393216 : 262144);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f755f;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
        Drawable drawable2 = this.f756g;
        if (drawable2 != null) {
            drawable2.setVisible(z, false);
        }
        Drawable drawable3 = this.f757h;
        if (drawable3 != null) {
            drawable3.setVisible(z, false);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i) {
        if (i != 0) {
            return super.startActionModeForChild(view, callback, i);
        }
        return null;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return (drawable == this.f755f && !this.f758i) || (drawable == this.f756g && this.f759j) || ((drawable == this.f757h && this.f758i) || super.verifyDrawable(drawable));
    }
}
