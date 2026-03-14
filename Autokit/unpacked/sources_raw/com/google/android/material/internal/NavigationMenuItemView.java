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
import androidx.appcompat.view.menu.n;
import androidx.appcompat.widget.g0;
import androidx.appcompat.widget.w0;
import androidx.core.view.v;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class NavigationMenuItemView extends d implements n.a {
    private static final int[] G = {R.attr.state_checked};
    private FrameLayout A;
    private androidx.appcompat.view.menu.i B;
    private ColorStateList C;
    private boolean D;
    private Drawable E;
    private final androidx.core.view.a F;
    private int w;
    private boolean x;
    boolean y;
    private final CheckedTextView z;

    class a extends androidx.core.view.a {
        a() {
        }

        @Override // androidx.core.view.a
        public void g(View view, androidx.core.view.e0.c cVar) {
            super.g(view, cVar);
            cVar.U(NavigationMenuItemView.this.y);
        }
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void B() {
        if (D()) {
            this.z.setVisibility(8);
            FrameLayout frameLayout = this.A;
            if (frameLayout != null) {
                g0.a aVar = (g0.a) frameLayout.getLayoutParams();
                ((LinearLayout.LayoutParams) aVar).width = -1;
                this.A.setLayoutParams(aVar);
                return;
            }
            return;
        }
        this.z.setVisibility(0);
        FrameLayout frameLayout2 = this.A;
        if (frameLayout2 != null) {
            g0.a aVar2 = (g0.a) frameLayout2.getLayoutParams();
            ((LinearLayout.LayoutParams) aVar2).width = -2;
            this.A.setLayoutParams(aVar2);
        }
    }

    private StateListDrawable C() {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(c.a.a.colorControlHighlight, typedValue, true)) {
            return null;
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(G, new ColorDrawable(typedValue.data));
        stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
        return stateListDrawable;
    }

    private boolean D() {
        return this.B.getTitle() == null && this.B.getIcon() == null && this.B.getActionView() != null;
    }

    private void setActionView(View view) {
        if (view != null) {
            if (this.A == null) {
                this.A = (FrameLayout) ((ViewStub) findViewById(d.c.a.a.f.design_menu_item_action_area_stub)).inflate();
            }
            this.A.removeAllViews();
            this.A.addView(view);
        }
    }

    @Override // androidx.appcompat.view.menu.n.a
    public boolean e() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.n.a
    public void f(androidx.appcompat.view.menu.i iVar, int i) {
        this.B = iVar;
        if (iVar.getItemId() > 0) {
            setId(iVar.getItemId());
        }
        setVisibility(iVar.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            v.r0(this, C());
        }
        setCheckable(iVar.isCheckable());
        setChecked(iVar.isChecked());
        setEnabled(iVar.isEnabled());
        setTitle(iVar.getTitle());
        setIcon(iVar.getIcon());
        setActionView(iVar.getActionView());
        setContentDescription(iVar.getContentDescription());
        w0.a(this, iVar.getTooltipText());
        B();
    }

    @Override // androidx.appcompat.view.menu.n.a
    public androidx.appcompat.view.menu.i getItemData() {
        return this.B;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 1);
        androidx.appcompat.view.menu.i iVar = this.B;
        if (iVar != null && iVar.isCheckable() && this.B.isChecked()) {
            ViewGroup.mergeDrawableStates(iArrOnCreateDrawableState, G);
        }
        return iArrOnCreateDrawableState;
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
        if (this.y != z) {
            this.y = z;
            this.F.l(this.z, 2048);
        }
    }

    public void setChecked(boolean z) {
        refreshDrawableState();
        this.z.setChecked(z);
    }

    public void setHorizontalPadding(int i) {
        setPadding(i, 0, i, 0);
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            if (this.D) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = androidx.core.graphics.drawable.a.r(drawable).mutate();
                androidx.core.graphics.drawable.a.o(drawable, this.C);
            }
            int i = this.w;
            drawable.setBounds(0, 0, i, i);
        } else if (this.x) {
            if (this.E == null) {
                Drawable drawableB = androidx.core.content.c.f.b(getResources(), d.c.a.a.e.navigation_empty_icon, getContext().getTheme());
                this.E = drawableB;
                if (drawableB != null) {
                    int i2 = this.w;
                    drawableB.setBounds(0, 0, i2, i2);
                }
            }
            drawable = this.E;
        }
        androidx.core.widget.i.i(this.z, drawable, null, null, null);
    }

    public void setIconPadding(int i) {
        this.z.setCompoundDrawablePadding(i);
    }

    public void setIconSize(int i) {
        this.w = i;
    }

    void setIconTintList(ColorStateList colorStateList) {
        this.C = colorStateList;
        this.D = colorStateList != null;
        androidx.appcompat.view.menu.i iVar = this.B;
        if (iVar != null) {
            setIcon(iVar.getIcon());
        }
    }

    public void setMaxLines(int i) {
        this.z.setMaxLines(i);
    }

    public void setNeedsEmptyIcon(boolean z) {
        this.x = z;
    }

    public void setTextAppearance(int i) {
        androidx.core.widget.i.n(this.z, i);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.z.setTextColor(colorStateList);
    }

    public void setTitle(CharSequence charSequence) {
        this.z.setText(charSequence);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.F = new a();
        setOrientation(0);
        LayoutInflater.from(context).inflate(d.c.a.a.h.design_navigation_menu_item, (ViewGroup) this, true);
        setIconSize(context.getResources().getDimensionPixelSize(d.c.a.a.d.design_navigation_icon_size));
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(d.c.a.a.f.design_menu_item_text);
        this.z = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        v.o0(this.z, this.F);
    }
}
