package com.google.android.material.button;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.view.v;
import androidx.core.widget.i;
import com.google.android.material.internal.l;
import d.c.a.a.a0.h;
import d.c.a.a.a0.k;
import d.c.a.a.a0.n;
import d.c.a.a.j;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class MaterialButton extends AppCompatButton implements Checkable, n {
    private static final int[] q = {R.attr.state_checkable};
    private static final int[] r = {R.attr.state_checked};
    private static final int s = j.Widget_MaterialComponents_Button;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.material.button.a f2055d;
    private final LinkedHashSet<a> e;
    private b f;
    private PorterDuff.Mode g;
    private ColorStateList h;
    private Drawable i;
    private int j;
    private int k;
    private int l;
    private int m;
    private boolean n;
    private boolean o;
    private int p;

    public interface a {
        void a(MaterialButton materialButton, boolean z);
    }

    interface b {
        void a(MaterialButton materialButton, boolean z);
    }

    static class c extends c.i.a.a {
        public static final Parcelable.Creator<c> CREATOR = new a();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f2056d;

        static class a implements Parcelable.ClassLoaderCreator<c> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public c createFromParcel(Parcel parcel) {
                return new c(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public c createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new c(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public c[] newArray(int i) {
                return new c[i];
            }
        }

        public c(Parcelable parcelable) {
            super(parcelable);
        }

        private void k(Parcel parcel) {
            this.f2056d = parcel.readInt() == 1;
        }

        @Override // c.i.a.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f2056d ? 1 : 0);
        }

        public c(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            if (classLoader == null) {
                c.class.getClassLoader();
            }
            k(parcel);
        }
    }

    public MaterialButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, d.c.a.a.b.materialButtonStyle);
    }

    private boolean c() {
        int i = this.p;
        return i == 3 || i == 4;
    }

    private boolean d() {
        int i = this.p;
        return i == 1 || i == 2;
    }

    private boolean e() {
        int i = this.p;
        return i == 16 || i == 32;
    }

    private boolean f() {
        return v.C(this) == 1;
    }

    private boolean g() {
        com.google.android.material.button.a aVar = this.f2055d;
        return (aVar == null || aVar.o()) ? false : true;
    }

    private String getA11yClassName() {
        return (b() ? CompoundButton.class : Button.class).getName();
    }

    private int getTextHeight() {
        TextPaint paint = getPaint();
        String string = getText().toString();
        if (getTransformationMethod() != null) {
            string = getTransformationMethod().getTransformation(string, this).toString();
        }
        Rect rect = new Rect();
        paint.getTextBounds(string, 0, string.length(), rect);
        return Math.min(rect.height(), getLayout().getHeight());
    }

    private int getTextWidth() {
        TextPaint paint = getPaint();
        String string = getText().toString();
        if (getTransformationMethod() != null) {
            string = getTransformationMethod().getTransformation(string, this).toString();
        }
        return Math.min((int) paint.measureText(string), getLayout().getEllipsizedWidth());
    }

    private void i() {
        if (d()) {
            i.i(this, this.i, null, null, null);
        } else if (c()) {
            i.i(this, null, null, this.i, null);
        } else if (e()) {
            i.i(this, null, this.i, null, null);
        }
    }

    private void j(boolean z) {
        Drawable drawable = this.i;
        if (drawable != null) {
            Drawable drawableMutate = androidx.core.graphics.drawable.a.r(drawable).mutate();
            this.i = drawableMutate;
            androidx.core.graphics.drawable.a.o(drawableMutate, this.h);
            PorterDuff.Mode mode = this.g;
            if (mode != null) {
                androidx.core.graphics.drawable.a.p(this.i, mode);
            }
            int intrinsicWidth = this.j;
            if (intrinsicWidth == 0) {
                intrinsicWidth = this.i.getIntrinsicWidth();
            }
            int intrinsicHeight = this.j;
            if (intrinsicHeight == 0) {
                intrinsicHeight = this.i.getIntrinsicHeight();
            }
            Drawable drawable2 = this.i;
            int i = this.k;
            int i2 = this.l;
            drawable2.setBounds(i, i2, intrinsicWidth + i, intrinsicHeight + i2);
        }
        if (z) {
            i();
            return;
        }
        Drawable[] drawableArrA = i.a(this);
        boolean z2 = false;
        Drawable drawable3 = drawableArrA[0];
        Drawable drawable4 = drawableArrA[1];
        Drawable drawable5 = drawableArrA[2];
        if ((d() && drawable3 != this.i) || ((c() && drawable5 != this.i) || (e() && drawable4 != this.i))) {
            z2 = true;
        }
        if (z2) {
            i();
        }
    }

    private void k(int i, int i2) {
        if (this.i == null || getLayout() == null) {
            return;
        }
        if (!d() && !c()) {
            if (e()) {
                this.k = 0;
                if (this.p == 16) {
                    this.l = 0;
                    j(false);
                    return;
                }
                int intrinsicHeight = this.j;
                if (intrinsicHeight == 0) {
                    intrinsicHeight = this.i.getIntrinsicHeight();
                }
                int textHeight = (((((i2 - getTextHeight()) - getPaddingTop()) - intrinsicHeight) - this.m) - getPaddingBottom()) / 2;
                if (this.l != textHeight) {
                    this.l = textHeight;
                    j(false);
                    return;
                }
                return;
            }
            return;
        }
        this.l = 0;
        int i3 = this.p;
        if (i3 == 1 || i3 == 3) {
            this.k = 0;
            j(false);
            return;
        }
        int intrinsicWidth = this.j;
        if (intrinsicWidth == 0) {
            intrinsicWidth = this.i.getIntrinsicWidth();
        }
        int textWidth = (((((i - getTextWidth()) - v.H(this)) - intrinsicWidth) - this.m) - v.I(this)) / 2;
        if (f() != (this.p == 4)) {
            textWidth = -textWidth;
        }
        if (this.k != textWidth) {
            this.k = textWidth;
            j(false);
        }
    }

    public void a(a aVar) {
        this.e.add(aVar);
    }

    public boolean b() {
        com.google.android.material.button.a aVar = this.f2055d;
        return aVar != null && aVar.p();
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    public int getCornerRadius() {
        if (g()) {
            return this.f2055d.b();
        }
        return 0;
    }

    public Drawable getIcon() {
        return this.i;
    }

    public int getIconGravity() {
        return this.p;
    }

    public int getIconPadding() {
        return this.m;
    }

    public int getIconSize() {
        return this.j;
    }

    public ColorStateList getIconTint() {
        return this.h;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.g;
    }

    public int getInsetBottom() {
        return this.f2055d.c();
    }

    public int getInsetTop() {
        return this.f2055d.d();
    }

    public ColorStateList getRippleColor() {
        if (g()) {
            return this.f2055d.h();
        }
        return null;
    }

    public k getShapeAppearanceModel() {
        if (g()) {
            return this.f2055d.i();
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    public ColorStateList getStrokeColor() {
        if (g()) {
            return this.f2055d.j();
        }
        return null;
    }

    public int getStrokeWidth() {
        if (g()) {
            return this.f2055d.k();
        }
        return 0;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.u
    public ColorStateList getSupportBackgroundTintList() {
        return g() ? this.f2055d.l() : super.getSupportBackgroundTintList();
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return g() ? this.f2055d.m() : super.getSupportBackgroundTintMode();
    }

    public void h(a aVar) {
        this.e.remove(aVar);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.n;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (g()) {
            h.f(this, this.f2055d.f());
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (b()) {
            Button.mergeDrawableStates(iArrOnCreateDrawableState, q);
        }
        if (isChecked()) {
            Button.mergeDrawableStates(iArrOnCreateDrawableState, r);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        accessibilityNodeInfo.setCheckable(b());
        accessibilityNodeInfo.setChecked(isChecked());
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        com.google.android.material.button.a aVar;
        super.onLayout(z, i, i2, i3, i4);
        if (Build.VERSION.SDK_INT != 21 || (aVar = this.f2055d) == null) {
            return;
        }
        aVar.H(i4 - i2, i3 - i);
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof c)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        c cVar = (c) parcelable;
        super.onRestoreInstanceState(cVar.j());
        setChecked(cVar.f2056d);
    }

    @Override // android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        c cVar = new c(super.onSaveInstanceState());
        cVar.f2056d = this.n;
        return cVar;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        k(i, i2);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        k(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public boolean performClick() {
        toggle();
        return super.performClick();
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        if (g()) {
            this.f2055d.r(i);
        } else {
            super.setBackgroundColor(i);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (!g()) {
            super.setBackgroundDrawable(drawable);
        } else if (drawable == getBackground()) {
            getBackground().setState(drawable.getState());
        } else {
            this.f2055d.s();
            super.setBackgroundDrawable(drawable);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundResource(int i) {
        setBackgroundDrawable(i != 0 ? c.a.k.a.a.d(getContext(), i) : null);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCheckable(boolean z) {
        if (g()) {
            this.f2055d.t(z);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (b() && isEnabled() && this.n != z) {
            this.n = z;
            refreshDrawableState();
            if (this.o) {
                return;
            }
            this.o = true;
            Iterator<a> it = this.e.iterator();
            while (it.hasNext()) {
                it.next().a(this, this.n);
            }
            this.o = false;
        }
    }

    public void setCornerRadius(int i) {
        if (g()) {
            this.f2055d.u(i);
        }
    }

    public void setCornerRadiusResource(int i) {
        if (g()) {
            setCornerRadius(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        if (g()) {
            this.f2055d.f().V(f);
        }
    }

    public void setIcon(Drawable drawable) {
        if (this.i != drawable) {
            this.i = drawable;
            j(true);
            k(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconGravity(int i) {
        if (this.p != i) {
            this.p = i;
            k(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconPadding(int i) {
        if (this.m != i) {
            this.m = i;
            setCompoundDrawablePadding(i);
        }
    }

    public void setIconResource(int i) {
        setIcon(i != 0 ? c.a.k.a.a.d(getContext(), i) : null);
    }

    public void setIconSize(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        }
        if (this.j != i) {
            this.j = i;
            j(true);
        }
    }

    public void setIconTint(ColorStateList colorStateList) {
        if (this.h != colorStateList) {
            this.h = colorStateList;
            j(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.g != mode) {
            this.g = mode;
            j(false);
        }
    }

    public void setIconTintResource(int i) {
        setIconTint(c.a.k.a.a.c(getContext(), i));
    }

    public void setInsetBottom(int i) {
        this.f2055d.v(i);
    }

    public void setInsetTop(int i) {
        this.f2055d.w(i);
    }

    void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    void setOnPressedChangeListenerInternal(b bVar) {
        this.f = bVar;
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        b bVar = this.f;
        if (bVar != null) {
            bVar.a(this, z);
        }
        super.setPressed(z);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (g()) {
            this.f2055d.x(colorStateList);
        }
    }

    public void setRippleColorResource(int i) {
        if (g()) {
            setRippleColor(c.a.k.a.a.c(getContext(), i));
        }
    }

    @Override // d.c.a.a.a0.n
    public void setShapeAppearanceModel(k kVar) {
        if (!g()) {
            throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
        }
        this.f2055d.y(kVar);
    }

    void setShouldDrawSurfaceColorStroke(boolean z) {
        if (g()) {
            this.f2055d.z(z);
        }
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (g()) {
            this.f2055d.A(colorStateList);
        }
    }

    public void setStrokeColorResource(int i) {
        if (g()) {
            setStrokeColor(c.a.k.a.a.c(getContext(), i));
        }
    }

    public void setStrokeWidth(int i) {
        if (g()) {
            this.f2055d.B(i);
        }
    }

    public void setStrokeWidthResource(int i) {
        if (g()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (g()) {
            this.f2055d.C(colorStateList);
        } else {
            super.setSupportBackgroundTintList(colorStateList);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (g()) {
            this.f2055d.D(mode);
        } else {
            super.setSupportBackgroundTintMode(mode);
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.n);
    }

    public MaterialButton(Context context, AttributeSet attributeSet, int i) {
        super(com.google.android.material.theme.a.a.c(context, attributeSet, i, s), attributeSet, i);
        this.e = new LinkedHashSet<>();
        this.n = false;
        this.o = false;
        Context context2 = getContext();
        TypedArray typedArrayH = com.google.android.material.internal.j.h(context2, attributeSet, d.c.a.a.k.MaterialButton, i, s, new int[0]);
        this.m = typedArrayH.getDimensionPixelSize(d.c.a.a.k.MaterialButton_iconPadding, 0);
        this.g = l.e(typedArrayH.getInt(d.c.a.a.k.MaterialButton_iconTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.h = d.c.a.a.x.c.a(getContext(), typedArrayH, d.c.a.a.k.MaterialButton_iconTint);
        this.i = d.c.a.a.x.c.d(getContext(), typedArrayH, d.c.a.a.k.MaterialButton_icon);
        this.p = typedArrayH.getInteger(d.c.a.a.k.MaterialButton_iconGravity, 1);
        this.j = typedArrayH.getDimensionPixelSize(d.c.a.a.k.MaterialButton_iconSize, 0);
        com.google.android.material.button.a aVar = new com.google.android.material.button.a(this, k.e(context2, attributeSet, i, s).m());
        this.f2055d = aVar;
        aVar.q(typedArrayH);
        typedArrayH.recycle();
        setCompoundDrawablePadding(this.m);
        j(this.i != null);
    }
}
