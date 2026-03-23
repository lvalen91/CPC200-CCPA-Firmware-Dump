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
import androidx.core.graphics.drawable.C0251a;
import androidx.core.view.C0292v;
import androidx.core.widget.C0308i;
import com.google.android.material.internal.C1121j;
import com.google.android.material.internal.C1123l;
import com.google.android.material.theme.p092a.C1147a;
import java.util.Iterator;
import java.util.LinkedHashSet;
import p016c.p017a.p018k.p019a.C0503a;
import p016c.p052i.p053a.AbstractC0630a;
import p093d.p099c.p100a.p101a.C1216b;
import p093d.p099c.p100a.p101a.C1225j;
import p093d.p099c.p100a.p101a.C1226k;
import p093d.p099c.p100a.p101a.p102a0.C1209h;
import p093d.p099c.p100a.p101a.p102a0.C1212k;
import p093d.p099c.p100a.p101a.p102a0.InterfaceC1215n;
import p093d.p099c.p100a.p101a.p117x.C1257c;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class MaterialButton extends AppCompatButton implements Checkable, InterfaceC1215n {

    /* JADX INFO: renamed from: q */
    private static final int[] f6692q = {R.attr.state_checkable};

    /* JADX INFO: renamed from: r */
    private static final int[] f6693r = {R.attr.state_checked};

    /* JADX INFO: renamed from: s */
    private static final int f6694s = C1225j.Widget_MaterialComponents_Button;

    /* JADX INFO: renamed from: d */
    private final C1064a f6695d;

    /* JADX INFO: renamed from: e */
    private final LinkedHashSet<InterfaceC1055a> f6696e;

    /* JADX INFO: renamed from: f */
    private InterfaceC1056b f6697f;

    /* JADX INFO: renamed from: g */
    private PorterDuff.Mode f6698g;

    /* JADX INFO: renamed from: h */
    private ColorStateList f6699h;

    /* JADX INFO: renamed from: i */
    private Drawable f6700i;

    /* JADX INFO: renamed from: j */
    private int f6701j;

    /* JADX INFO: renamed from: k */
    private int f6702k;

    /* JADX INFO: renamed from: l */
    private int f6703l;

    /* JADX INFO: renamed from: m */
    private int f6704m;

    /* JADX INFO: renamed from: n */
    private boolean f6705n;

    /* JADX INFO: renamed from: o */
    private boolean f6706o;

    /* JADX INFO: renamed from: p */
    private int f6707p;

    /* JADX INFO: renamed from: com.google.android.material.button.MaterialButton$a */
    public interface InterfaceC1055a {
        /* JADX INFO: renamed from: a */
        void mo8082a(MaterialButton materialButton, boolean z);
    }

    /* JADX INFO: renamed from: com.google.android.material.button.MaterialButton$b */
    interface InterfaceC1056b {
        /* JADX INFO: renamed from: a */
        void mo8083a(MaterialButton materialButton, boolean z);
    }

    /* JADX INFO: renamed from: com.google.android.material.button.MaterialButton$c */
    static class C1057c extends AbstractC0630a {
        public static final Parcelable.Creator<C1057c> CREATOR = new a();

        /* JADX INFO: renamed from: d */
        boolean f6708d;

        /* JADX INFO: renamed from: com.google.android.material.button.MaterialButton$c$a */
        static class a implements Parcelable.ClassLoaderCreator<C1057c> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public C1057c createFromParcel(Parcel parcel) {
                return new C1057c(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public C1057c createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C1057c(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public C1057c[] newArray(int i) {
                return new C1057c[i];
            }
        }

        public C1057c(Parcelable parcelable) {
            super(parcelable);
        }

        /* JADX INFO: renamed from: k */
        private void m8084k(Parcel parcel) {
            this.f6708d = parcel.readInt() == 1;
        }

        @Override // p016c.p052i.p053a.AbstractC0630a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f6708d ? 1 : 0);
        }

        public C1057c(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            if (classLoader == null) {
                C1057c.class.getClassLoader();
            }
            m8084k(parcel);
        }
    }

    public MaterialButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1216b.materialButtonStyle);
    }

    /* JADX INFO: renamed from: c */
    private boolean m8071c() {
        int i = this.f6707p;
        return i == 3 || i == 4;
    }

    /* JADX INFO: renamed from: d */
    private boolean m8072d() {
        int i = this.f6707p;
        return i == 1 || i == 2;
    }

    /* JADX INFO: renamed from: e */
    private boolean m8073e() {
        int i = this.f6707p;
        return i == 16 || i == 32;
    }

    /* JADX INFO: renamed from: f */
    private boolean m8074f() {
        return C0292v.m2046C(this) == 1;
    }

    /* JADX INFO: renamed from: g */
    private boolean m8075g() {
        C1064a c1064a = this.f6695d;
        return (c1064a == null || c1064a.m8143o()) ? false : true;
    }

    private String getA11yClassName() {
        return (m8080b() ? CompoundButton.class : Button.class).getName();
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

    /* JADX INFO: renamed from: i */
    private void m8076i() {
        if (m8072d()) {
            C0308i.m2284i(this, this.f6700i, null, null, null);
        } else if (m8071c()) {
            C0308i.m2284i(this, null, null, this.f6700i, null);
        } else if (m8073e()) {
            C0308i.m2284i(this, null, this.f6700i, null, null);
        }
    }

    /* JADX INFO: renamed from: j */
    private void m8077j(boolean z) {
        Drawable drawable = this.f6700i;
        if (drawable != null) {
            Drawable drawableMutate = C0251a.m1797r(drawable).mutate();
            this.f6700i = drawableMutate;
            C0251a.m1794o(drawableMutate, this.f6699h);
            PorterDuff.Mode mode = this.f6698g;
            if (mode != null) {
                C0251a.m1795p(this.f6700i, mode);
            }
            int intrinsicWidth = this.f6701j;
            if (intrinsicWidth == 0) {
                intrinsicWidth = this.f6700i.getIntrinsicWidth();
            }
            int intrinsicHeight = this.f6701j;
            if (intrinsicHeight == 0) {
                intrinsicHeight = this.f6700i.getIntrinsicHeight();
            }
            Drawable drawable2 = this.f6700i;
            int i = this.f6702k;
            int i2 = this.f6703l;
            drawable2.setBounds(i, i2, intrinsicWidth + i, intrinsicHeight + i2);
        }
        if (z) {
            m8076i();
            return;
        }
        Drawable[] drawableArrM2276a = C0308i.m2276a(this);
        boolean z2 = false;
        Drawable drawable3 = drawableArrM2276a[0];
        Drawable drawable4 = drawableArrM2276a[1];
        Drawable drawable5 = drawableArrM2276a[2];
        if ((m8072d() && drawable3 != this.f6700i) || ((m8071c() && drawable5 != this.f6700i) || (m8073e() && drawable4 != this.f6700i))) {
            z2 = true;
        }
        if (z2) {
            m8076i();
        }
    }

    /* JADX INFO: renamed from: k */
    private void m8078k(int i, int i2) {
        if (this.f6700i == null || getLayout() == null) {
            return;
        }
        if (!m8072d() && !m8071c()) {
            if (m8073e()) {
                this.f6702k = 0;
                if (this.f6707p == 16) {
                    this.f6703l = 0;
                    m8077j(false);
                    return;
                }
                int intrinsicHeight = this.f6701j;
                if (intrinsicHeight == 0) {
                    intrinsicHeight = this.f6700i.getIntrinsicHeight();
                }
                int textHeight = (((((i2 - getTextHeight()) - getPaddingTop()) - intrinsicHeight) - this.f6704m) - getPaddingBottom()) / 2;
                if (this.f6703l != textHeight) {
                    this.f6703l = textHeight;
                    m8077j(false);
                    return;
                }
                return;
            }
            return;
        }
        this.f6703l = 0;
        int i3 = this.f6707p;
        if (i3 == 1 || i3 == 3) {
            this.f6702k = 0;
            m8077j(false);
            return;
        }
        int intrinsicWidth = this.f6701j;
        if (intrinsicWidth == 0) {
            intrinsicWidth = this.f6700i.getIntrinsicWidth();
        }
        int textWidth = (((((i - getTextWidth()) - C0292v.m2056H(this)) - intrinsicWidth) - this.f6704m) - C0292v.m2058I(this)) / 2;
        if (m8074f() != (this.f6707p == 4)) {
            textWidth = -textWidth;
        }
        if (this.f6702k != textWidth) {
            this.f6702k = textWidth;
            m8077j(false);
        }
    }

    /* JADX INFO: renamed from: a */
    public void m8079a(InterfaceC1055a interfaceC1055a) {
        this.f6696e.add(interfaceC1055a);
    }

    /* JADX INFO: renamed from: b */
    public boolean m8080b() {
        C1064a c1064a = this.f6695d;
        return c1064a != null && c1064a.m8144p();
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
        if (m8075g()) {
            return this.f6695d.m8132b();
        }
        return 0;
    }

    public Drawable getIcon() {
        return this.f6700i;
    }

    public int getIconGravity() {
        return this.f6707p;
    }

    public int getIconPadding() {
        return this.f6704m;
    }

    public int getIconSize() {
        return this.f6701j;
    }

    public ColorStateList getIconTint() {
        return this.f6699h;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f6698g;
    }

    public int getInsetBottom() {
        return this.f6695d.m8133c();
    }

    public int getInsetTop() {
        return this.f6695d.m8134d();
    }

    public ColorStateList getRippleColor() {
        if (m8075g()) {
            return this.f6695d.m8137h();
        }
        return null;
    }

    public C1212k getShapeAppearanceModel() {
        if (m8075g()) {
            return this.f6695d.m8138i();
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    public ColorStateList getStrokeColor() {
        if (m8075g()) {
            return this.f6695d.m8139j();
        }
        return null;
    }

    public int getStrokeWidth() {
        if (m8075g()) {
            return this.f6695d.m8140k();
        }
        return 0;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.InterfaceC0291u
    public ColorStateList getSupportBackgroundTintList() {
        return m8075g() ? this.f6695d.m8141l() : super.getSupportBackgroundTintList();
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.InterfaceC0291u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return m8075g() ? this.f6695d.m8142m() : super.getSupportBackgroundTintMode();
    }

    /* JADX INFO: renamed from: h */
    public void m8081h(InterfaceC1055a interfaceC1055a) {
        this.f6696e.remove(interfaceC1055a);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f6705n;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (m8075g()) {
            C1209h.m9211f(this, this.f6695d.m8136f());
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (m8080b()) {
            Button.mergeDrawableStates(iArrOnCreateDrawableState, f6692q);
        }
        if (isChecked()) {
            Button.mergeDrawableStates(iArrOnCreateDrawableState, f6693r);
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
        accessibilityNodeInfo.setCheckable(m8080b());
        accessibilityNodeInfo.setChecked(isChecked());
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        C1064a c1064a;
        super.onLayout(z, i, i2, i3, i4);
        if (Build.VERSION.SDK_INT != 21 || (c1064a = this.f6695d) == null) {
            return;
        }
        c1064a.m8131H(i4 - i2, i3 - i);
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C1057c)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C1057c c1057c = (C1057c) parcelable;
        super.onRestoreInstanceState(c1057c.m4862j());
        setChecked(c1057c.f6708d);
    }

    @Override // android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        C1057c c1057c = new C1057c(super.onSaveInstanceState());
        c1057c.f6708d = this.f6705n;
        return c1057c;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m8078k(i, i2);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        m8078k(getMeasuredWidth(), getMeasuredHeight());
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
        if (m8075g()) {
            this.f6695d.m8146r(i);
        } else {
            super.setBackgroundColor(i);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (!m8075g()) {
            super.setBackgroundDrawable(drawable);
        } else if (drawable == getBackground()) {
            getBackground().setState(drawable.getState());
        } else {
            this.f6695d.m8147s();
            super.setBackgroundDrawable(drawable);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundResource(int i) {
        setBackgroundDrawable(i != 0 ? C0503a.m4047d(getContext(), i) : null);
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
        if (m8075g()) {
            this.f6695d.m8148t(z);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (m8080b() && isEnabled() && this.f6705n != z) {
            this.f6705n = z;
            refreshDrawableState();
            if (this.f6706o) {
                return;
            }
            this.f6706o = true;
            Iterator<InterfaceC1055a> it = this.f6696e.iterator();
            while (it.hasNext()) {
                it.next().mo8082a(this, this.f6705n);
            }
            this.f6706o = false;
        }
    }

    public void setCornerRadius(int i) {
        if (m8075g()) {
            this.f6695d.m8149u(i);
        }
    }

    public void setCornerRadiusResource(int i) {
        if (m8075g()) {
            setCornerRadius(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        if (m8075g()) {
            this.f6695d.m8136f().m9183V(f);
        }
    }

    public void setIcon(Drawable drawable) {
        if (this.f6700i != drawable) {
            this.f6700i = drawable;
            m8077j(true);
            m8078k(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconGravity(int i) {
        if (this.f6707p != i) {
            this.f6707p = i;
            m8078k(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconPadding(int i) {
        if (this.f6704m != i) {
            this.f6704m = i;
            setCompoundDrawablePadding(i);
        }
    }

    public void setIconResource(int i) {
        setIcon(i != 0 ? C0503a.m4047d(getContext(), i) : null);
    }

    public void setIconSize(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        }
        if (this.f6701j != i) {
            this.f6701j = i;
            m8077j(true);
        }
    }

    public void setIconTint(ColorStateList colorStateList) {
        if (this.f6699h != colorStateList) {
            this.f6699h = colorStateList;
            m8077j(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.f6698g != mode) {
            this.f6698g = mode;
            m8077j(false);
        }
    }

    public void setIconTintResource(int i) {
        setIconTint(C0503a.m4046c(getContext(), i));
    }

    public void setInsetBottom(int i) {
        this.f6695d.m8150v(i);
    }

    public void setInsetTop(int i) {
        this.f6695d.m8151w(i);
    }

    void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    void setOnPressedChangeListenerInternal(InterfaceC1056b interfaceC1056b) {
        this.f6697f = interfaceC1056b;
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        InterfaceC1056b interfaceC1056b = this.f6697f;
        if (interfaceC1056b != null) {
            interfaceC1056b.mo8083a(this, z);
        }
        super.setPressed(z);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (m8075g()) {
            this.f6695d.m8152x(colorStateList);
        }
    }

    public void setRippleColorResource(int i) {
        if (m8075g()) {
            setRippleColor(C0503a.m4046c(getContext(), i));
        }
    }

    @Override // p093d.p099c.p100a.p101a.p102a0.InterfaceC1215n
    public void setShapeAppearanceModel(C1212k c1212k) {
        if (!m8075g()) {
            throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
        }
        this.f6695d.m8153y(c1212k);
    }

    void setShouldDrawSurfaceColorStroke(boolean z) {
        if (m8075g()) {
            this.f6695d.m8154z(z);
        }
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (m8075g()) {
            this.f6695d.m8127A(colorStateList);
        }
    }

    public void setStrokeColorResource(int i) {
        if (m8075g()) {
            setStrokeColor(C0503a.m4046c(getContext(), i));
        }
    }

    public void setStrokeWidth(int i) {
        if (m8075g()) {
            this.f6695d.m8128B(i);
        }
    }

    public void setStrokeWidthResource(int i) {
        if (m8075g()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.InterfaceC0291u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (m8075g()) {
            this.f6695d.m8129C(colorStateList);
        } else {
            super.setSupportBackgroundTintList(colorStateList);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.InterfaceC0291u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (m8075g()) {
            this.f6695d.m8130D(mode);
        } else {
            super.setSupportBackgroundTintMode(mode);
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.f6705n);
    }

    public MaterialButton(Context context, AttributeSet attributeSet, int i) {
        super(C1147a.m8952c(context, attributeSet, i, f6694s), attributeSet, i);
        this.f6696e = new LinkedHashSet<>();
        this.f6705n = false;
        this.f6706o = false;
        Context context2 = getContext();
        TypedArray typedArrayM8726h = C1121j.m8726h(context2, attributeSet, C1226k.MaterialButton, i, f6694s, new int[0]);
        this.f6704m = typedArrayM8726h.getDimensionPixelSize(C1226k.MaterialButton_iconPadding, 0);
        this.f6698g = C1123l.m8735e(typedArrayM8726h.getInt(C1226k.MaterialButton_iconTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.f6699h = C1257c.m9454a(getContext(), typedArrayM8726h, C1226k.MaterialButton_iconTint);
        this.f6700i = C1257c.m9457d(getContext(), typedArrayM8726h, C1226k.MaterialButton_icon);
        this.f6707p = typedArrayM8726h.getInteger(C1226k.MaterialButton_iconGravity, 1);
        this.f6701j = typedArrayM8726h.getDimensionPixelSize(C1226k.MaterialButton_iconSize, 0);
        C1064a c1064a = new C1064a(this, C1212k.m9216e(context2, attributeSet, i, f6694s).m9256m());
        this.f6695d = c1064a;
        c1064a.m8145q(typedArrayM8726h);
        typedArrayM8726h.recycle();
        setCompoundDrawablePadding(this.f6704m);
        m8077j(this.f6700i != null);
    }
}
