package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.C0103i;
import androidx.appcompat.view.menu.InterfaceC0108n;
import androidx.appcompat.widget.C0167g0;
import androidx.appcompat.widget.C0199w0;
import androidx.core.content.p003c.C0249f;
import androidx.core.graphics.drawable.C0251a;
import androidx.core.view.C0258a;
import androidx.core.view.C0292v;
import androidx.core.view.p004e0.C0269c;
import androidx.core.widget.C0308i;
import p016c.p017a.C0493a;
import p093d.p099c.p100a.p101a.C1219d;
import p093d.p099c.p100a.p101a.C1220e;
import p093d.p099c.p100a.p101a.C1221f;
import p093d.p099c.p100a.p101a.C1223h;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class NavigationMenuItemView extends C1115d implements InterfaceC0108n.a {

    /* JADX INFO: renamed from: G */
    private static final int[] f7079G = {R.attr.state_checked};

    /* JADX INFO: renamed from: A */
    private FrameLayout f7080A;

    /* JADX INFO: renamed from: B */
    private C0103i f7081B;

    /* JADX INFO: renamed from: C */
    private ColorStateList f7082C;

    /* JADX INFO: renamed from: D */
    private boolean f7083D;

    /* JADX INFO: renamed from: E */
    private Drawable f7084E;

    /* JADX INFO: renamed from: F */
    private final C0258a f7085F;

    /* JADX INFO: renamed from: w */
    private int f7086w;

    /* JADX INFO: renamed from: x */
    private boolean f7087x;

    /* JADX INFO: renamed from: y */
    boolean f7088y;

    /* JADX INFO: renamed from: z */
    private final CheckedTextView f7089z;

    /* JADX INFO: renamed from: com.google.android.material.internal.NavigationMenuItemView$a */
    class C1111a extends C0258a {
        C1111a() {
        }

        @Override // androidx.core.view.C0258a
        /* JADX INFO: renamed from: g */
        public void mo1813g(View view, C0269c c0269c) {
            super.mo1813g(view, c0269c);
            c0269c.m1917U(NavigationMenuItemView.this.f7088y);
        }
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: renamed from: B */
    private void m8623B() {
        if (m8625D()) {
            this.f7089z.setVisibility(8);
            FrameLayout frameLayout = this.f7080A;
            if (frameLayout != null) {
                C0167g0.a aVar = (C0167g0.a) frameLayout.getLayoutParams();
                ((LinearLayout.LayoutParams) aVar).width = -1;
                this.f7080A.setLayoutParams(aVar);
                return;
            }
            return;
        }
        this.f7089z.setVisibility(0);
        FrameLayout frameLayout2 = this.f7080A;
        if (frameLayout2 != null) {
            C0167g0.a aVar2 = (C0167g0.a) frameLayout2.getLayoutParams();
            ((LinearLayout.LayoutParams) aVar2).width = -2;
            this.f7080A.setLayoutParams(aVar2);
        }
    }

    /* JADX INFO: renamed from: C */
    private StateListDrawable m8624C() {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(C0493a.colorControlHighlight, typedValue, true)) {
            return null;
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(f7079G, new ColorDrawable(typedValue.data));
        stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
        return stateListDrawable;
    }

    /* JADX INFO: renamed from: D */
    private boolean m8625D() {
        return this.f7081B.getTitle() == null && this.f7081B.getIcon() == null && this.f7081B.getActionView() != null;
    }

    private void setActionView(View view) {
        if (view != null) {
            if (this.f7080A == null) {
                this.f7080A = (FrameLayout) ((ViewStub) findViewById(C1221f.design_menu_item_action_area_stub)).inflate();
            }
            this.f7080A.removeAllViews();
            this.f7080A.addView(view);
        }
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0108n.a
    /* JADX INFO: renamed from: e */
    public boolean mo646e() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0108n.a
    /* JADX INFO: renamed from: f */
    public void mo647f(C0103i c0103i, int i) {
        this.f7081B = c0103i;
        if (c0103i.getItemId() > 0) {
            setId(c0103i.getItemId());
        }
        setVisibility(c0103i.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            C0292v.m2111r0(this, m8624C());
        }
        setCheckable(c0103i.isCheckable());
        setChecked(c0103i.isChecked());
        setEnabled(c0103i.isEnabled());
        setTitle(c0103i.getTitle());
        setIcon(c0103i.getIcon());
        setActionView(c0103i.getActionView());
        setContentDescription(c0103i.getContentDescription());
        C0199w0.m1388a(this, c0103i.getTooltipText());
        m8623B();
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0108n.a
    public C0103i getItemData() {
        return this.f7081B;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 1);
        C0103i c0103i = this.f7081B;
        if (c0103i != null && c0103i.isCheckable() && this.f7081B.isChecked()) {
            ViewGroup.mergeDrawableStates(iArrOnCreateDrawableState, f7079G);
        }
        return iArrOnCreateDrawableState;
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
        if (this.f7088y != z) {
            this.f7088y = z;
            this.f7085F.mo1817l(this.f7089z, 2048);
        }
    }

    public void setChecked(boolean z) {
        refreshDrawableState();
        this.f7089z.setChecked(z);
    }

    public void setHorizontalPadding(int i) {
        setPadding(i, 0, i, 0);
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            if (this.f7083D) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = C0251a.m1797r(drawable).mutate();
                C0251a.m1794o(drawable, this.f7082C);
            }
            int i = this.f7086w;
            drawable.setBounds(0, 0, i, i);
        } else if (this.f7087x) {
            if (this.f7084E == null) {
                Drawable drawableM1751b = C0249f.m1751b(getResources(), C1220e.navigation_empty_icon, getContext().getTheme());
                this.f7084E = drawableM1751b;
                if (drawableM1751b != null) {
                    int i2 = this.f7086w;
                    drawableM1751b.setBounds(0, 0, i2, i2);
                }
            }
            drawable = this.f7084E;
        }
        C0308i.m2284i(this.f7089z, drawable, null, null, null);
    }

    public void setIconPadding(int i) {
        this.f7089z.setCompoundDrawablePadding(i);
    }

    public void setIconSize(int i) {
        this.f7086w = i;
    }

    void setIconTintList(ColorStateList colorStateList) {
        this.f7082C = colorStateList;
        this.f7083D = colorStateList != null;
        C0103i c0103i = this.f7081B;
        if (c0103i != null) {
            setIcon(c0103i.getIcon());
        }
    }

    public void setMaxLines(int i) {
        this.f7089z.setMaxLines(i);
    }

    public void setNeedsEmptyIcon(boolean z) {
        this.f7087x = z;
    }

    public void setTextAppearance(int i) {
        C0308i.m2289n(this.f7089z, i);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.f7089z.setTextColor(colorStateList);
    }

    public void setTitle(CharSequence charSequence) {
        this.f7089z.setText(charSequence);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f7085F = new C1111a();
        setOrientation(0);
        LayoutInflater.from(context).inflate(C1223h.design_navigation_menu_item, (ViewGroup) this, true);
        setIconSize(context.getResources().getDimensionPixelSize(C1219d.design_navigation_icon_size));
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(C1221f.design_menu_item_text);
        this.f7089z = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        C0292v.m2105o0(this.f7089z, this.f7085F);
    }
}
