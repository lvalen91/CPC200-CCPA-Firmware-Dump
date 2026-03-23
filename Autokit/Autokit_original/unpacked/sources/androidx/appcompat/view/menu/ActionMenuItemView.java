package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.view.menu.C0101g;
import androidx.appcompat.view.menu.InterfaceC0108n;
import androidx.appcompat.widget.AbstractViewOnTouchListenerC0165f0;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.C0199w0;
import androidx.appcompat.widget.C0200x;
import p016c.p017a.C0502j;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class ActionMenuItemView extends C0200x implements InterfaceC0108n.a, View.OnClickListener, ActionMenuView.InterfaceC0120a {

    /* JADX INFO: renamed from: g */
    C0103i f521g;

    /* JADX INFO: renamed from: h */
    private CharSequence f522h;

    /* JADX INFO: renamed from: i */
    private Drawable f523i;

    /* JADX INFO: renamed from: j */
    C0101g.b f524j;

    /* JADX INFO: renamed from: k */
    private AbstractViewOnTouchListenerC0165f0 f525k;

    /* JADX INFO: renamed from: l */
    AbstractC0094b f526l;

    /* JADX INFO: renamed from: m */
    private boolean f527m;

    /* JADX INFO: renamed from: n */
    private boolean f528n;

    /* JADX INFO: renamed from: o */
    private int f529o;

    /* JADX INFO: renamed from: p */
    private int f530p;

    /* JADX INFO: renamed from: q */
    private int f531q;

    /* JADX INFO: renamed from: androidx.appcompat.view.menu.ActionMenuItemView$a */
    private class C0093a extends AbstractViewOnTouchListenerC0165f0 {
        public C0093a() {
            super(ActionMenuItemView.this);
        }

        @Override // androidx.appcompat.widget.AbstractViewOnTouchListenerC0165f0
        /* JADX INFO: renamed from: b */
        public InterfaceC0110p mo649b() {
            AbstractC0094b abstractC0094b = ActionMenuItemView.this.f526l;
            if (abstractC0094b != null) {
                return abstractC0094b.mo651a();
            }
            return null;
        }

        @Override // androidx.appcompat.widget.AbstractViewOnTouchListenerC0165f0
        /* JADX INFO: renamed from: c */
        protected boolean mo650c() {
            InterfaceC0110p interfaceC0110pMo649b;
            ActionMenuItemView actionMenuItemView = ActionMenuItemView.this;
            C0101g.b bVar = actionMenuItemView.f524j;
            return bVar != null && bVar.mo652a(actionMenuItemView.f521g) && (interfaceC0110pMo649b = mo649b()) != null && interfaceC0110pMo649b.mo694b();
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.view.menu.ActionMenuItemView$b */
    public static abstract class AbstractC0094b {
        /* JADX INFO: renamed from: a */
        public abstract InterfaceC0110p mo651a();
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: renamed from: i */
    private boolean m642i() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        return i >= 480 || (i >= 640 && configuration.screenHeightDp >= 480) || configuration.orientation == 2;
    }

    /* JADX INFO: renamed from: j */
    private void m643j() {
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(this.f522h);
        if (this.f523i != null && (!this.f521g.m779B() || (!this.f527m && !this.f528n))) {
            z = false;
        }
        boolean z3 = z2 & z;
        setText(z3 ? this.f522h : null);
        CharSequence contentDescription = this.f521g.getContentDescription();
        if (TextUtils.isEmpty(contentDescription)) {
            setContentDescription(z3 ? null : this.f521g.getTitle());
        } else {
            setContentDescription(contentDescription);
        }
        CharSequence tooltipText = this.f521g.getTooltipText();
        if (TextUtils.isEmpty(tooltipText)) {
            C0199w0.m1388a(this, z3 ? null : this.f521g.getTitle());
        } else {
            C0199w0.m1388a(this, tooltipText);
        }
    }

    @Override // androidx.appcompat.widget.ActionMenuView.InterfaceC0120a
    /* JADX INFO: renamed from: b */
    public boolean mo644b() {
        return m648h();
    }

    @Override // androidx.appcompat.widget.ActionMenuView.InterfaceC0120a
    /* JADX INFO: renamed from: d */
    public boolean mo645d() {
        return m648h() && this.f521g.getIcon() == null;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0108n.a
    /* JADX INFO: renamed from: e */
    public boolean mo646e() {
        return true;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0108n.a
    /* JADX INFO: renamed from: f */
    public void mo647f(C0103i c0103i, int i) {
        this.f521g = c0103i;
        setIcon(c0103i.getIcon());
        setTitle(c0103i.m784i(this));
        setId(c0103i.getItemId());
        setVisibility(c0103i.isVisible() ? 0 : 8);
        setEnabled(c0103i.isEnabled());
        if (c0103i.hasSubMenu() && this.f525k == null) {
            this.f525k = new C0093a();
        }
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0108n.a
    public C0103i getItemData() {
        return this.f521g;
    }

    /* JADX INFO: renamed from: h */
    public boolean m648h() {
        return !TextUtils.isEmpty(getText());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C0101g.b bVar = this.f524j;
        if (bVar != null) {
            bVar.mo652a(this.f521g);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f527m = m642i();
        m643j();
    }

    @Override // androidx.appcompat.widget.C0200x, android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        boolean zM648h = m648h();
        if (zM648h && (i3 = this.f530p) >= 0) {
            super.setPadding(i3, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int measuredWidth = getMeasuredWidth();
        int iMin = mode == Integer.MIN_VALUE ? Math.min(size, this.f529o) : this.f529o;
        if (mode != 1073741824 && this.f529o > 0 && measuredWidth < iMin) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(iMin, 1073741824), i2);
        }
        if (zM648h || this.f523i == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.f523i.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        AbstractViewOnTouchListenerC0165f0 abstractViewOnTouchListenerC0165f0;
        if (this.f521g.hasSubMenu() && (abstractViewOnTouchListenerC0165f0 = this.f525k) != null && abstractViewOnTouchListenerC0165f0.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setCheckable(boolean z) {
    }

    public void setChecked(boolean z) {
    }

    public void setExpandedFormat(boolean z) {
        if (this.f528n != z) {
            this.f528n = z;
            C0103i c0103i = this.f521g;
            if (c0103i != null) {
                c0103i.m780c();
            }
        }
    }

    public void setIcon(Drawable drawable) {
        this.f523i = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i = this.f531q;
            if (intrinsicWidth > i) {
                intrinsicHeight = (int) (intrinsicHeight * (i / intrinsicWidth));
                intrinsicWidth = i;
            }
            int i2 = this.f531q;
            if (intrinsicHeight > i2) {
                intrinsicWidth = (int) (intrinsicWidth * (i2 / intrinsicHeight));
                intrinsicHeight = i2;
            }
            drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
        }
        setCompoundDrawables(drawable, null, null, null);
        m643j();
    }

    public void setItemInvoker(C0101g.b bVar) {
        this.f524j = bVar;
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        this.f530p = i;
        super.setPadding(i, i2, i3, i4);
    }

    public void setPopupCallback(AbstractC0094b abstractC0094b) {
        this.f526l = abstractC0094b;
    }

    public void setTitle(CharSequence charSequence) {
        this.f522h = charSequence;
        m643j();
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Resources resources = context.getResources();
        this.f527m = m642i();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0502j.ActionMenuItemView, i, 0);
        this.f529o = typedArrayObtainStyledAttributes.getDimensionPixelSize(C0502j.ActionMenuItemView_android_minWidth, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.f531q = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.f530p = -1;
        setSaveEnabled(false);
    }
}
