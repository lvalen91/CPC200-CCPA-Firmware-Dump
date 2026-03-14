package com.google.android.material.chip;

import android.R;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.appcompat.widget.C0164f;
import androidx.core.view.C0292v;
import androidx.core.view.p004e0.C0269c;
import com.google.android.material.chip.C1073a;
import com.google.android.material.internal.C1121j;
import com.google.android.material.internal.C1123l;
import com.google.android.material.theme.p092a.C1147a;
import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import p016c.p052i.p054b.AbstractC0631a;
import p093d.p099c.p100a.p101a.C1216b;
import p093d.p099c.p100a.p101a.C1224i;
import p093d.p099c.p100a.p101a.C1225j;
import p093d.p099c.p100a.p101a.C1226k;
import p093d.p099c.p100a.p101a.p102a0.C1209h;
import p093d.p099c.p100a.p101a.p102a0.C1212k;
import p093d.p099c.p100a.p101a.p102a0.InterfaceC1215n;
import p093d.p099c.p100a.p101a.p104l.C1234h;
import p093d.p099c.p100a.p101a.p117x.AbstractC1260f;
import p093d.p099c.p100a.p101a.p117x.C1257c;
import p093d.p099c.p100a.p101a.p117x.C1258d;
import p093d.p099c.p100a.p101a.p118y.C1262b;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class Chip extends C0164f implements C1073a.a, InterfaceC1215n {

    /* JADX INFO: renamed from: u */
    private static final int f6750u = C1225j.Widget_MaterialComponents_Chip_Action;

    /* JADX INFO: renamed from: v */
    private static final Rect f6751v = new Rect();

    /* JADX INFO: renamed from: w */
    private static final int[] f6752w = {R.attr.state_selected};

    /* JADX INFO: renamed from: x */
    private static final int[] f6753x = {R.attr.state_checkable};

    /* JADX INFO: renamed from: e */
    private C1073a f6754e;

    /* JADX INFO: renamed from: f */
    private InsetDrawable f6755f;

    /* JADX INFO: renamed from: g */
    private RippleDrawable f6756g;

    /* JADX INFO: renamed from: h */
    private View.OnClickListener f6757h;

    /* JADX INFO: renamed from: i */
    private CompoundButton.OnCheckedChangeListener f6758i;

    /* JADX INFO: renamed from: j */
    private boolean f6759j;

    /* JADX INFO: renamed from: k */
    private boolean f6760k;

    /* JADX INFO: renamed from: l */
    private boolean f6761l;

    /* JADX INFO: renamed from: m */
    private boolean f6762m;

    /* JADX INFO: renamed from: n */
    private boolean f6763n;

    /* JADX INFO: renamed from: o */
    private int f6764o;

    /* JADX INFO: renamed from: p */
    private int f6765p;

    /* JADX INFO: renamed from: q */
    private final C1067c f6766q;

    /* JADX INFO: renamed from: r */
    private final Rect f6767r;

    /* JADX INFO: renamed from: s */
    private final RectF f6768s;

    /* JADX INFO: renamed from: t */
    private final AbstractC1260f f6769t;

    /* JADX INFO: renamed from: com.google.android.material.chip.Chip$a */
    class C1065a extends AbstractC1260f {
        C1065a() {
        }

        @Override // p093d.p099c.p100a.p101a.p117x.AbstractC1260f
        /* JADX INFO: renamed from: a */
        public void mo8184a(int i) {
        }

        @Override // p093d.p099c.p100a.p101a.p117x.AbstractC1260f
        /* JADX INFO: renamed from: b */
        public void mo8185b(Typeface typeface, boolean z) {
            Chip chip = Chip.this;
            chip.setText(chip.f6754e.m8263J2() ? Chip.this.f6754e.m8304f1() : Chip.this.getText());
            Chip.this.requestLayout();
            Chip.this.invalidate();
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.chip.Chip$b */
    class C1066b extends ViewOutlineProvider {
        C1066b() {
        }

        @Override // android.view.ViewOutlineProvider
        @TargetApi(21)
        public void getOutline(View view, Outline outline) {
            if (Chip.this.f6754e != null) {
                Chip.this.f6754e.getOutline(outline);
            } else {
                outline.setAlpha(CropImageView.DEFAULT_ASPECT_RATIO);
            }
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.chip.Chip$c */
    private class C1067c extends AbstractC0631a {
        C1067c(Chip chip) {
            super(chip);
        }

        @Override // p016c.p052i.p054b.AbstractC0631a
        /* JADX INFO: renamed from: B */
        protected int mo4884B(float f, float f2) {
            return (Chip.this.m8169n() && Chip.this.getCloseIconTouchBounds().contains(f, f2)) ? 1 : 0;
        }

        @Override // p016c.p052i.p054b.AbstractC0631a
        /* JADX INFO: renamed from: C */
        protected void mo4885C(List<Integer> list) {
            list.add(0);
            if (Chip.this.m8169n() && Chip.this.m8181s() && Chip.this.f6757h != null) {
                list.add(1);
            }
        }

        @Override // p016c.p052i.p054b.AbstractC0631a
        /* JADX INFO: renamed from: J */
        protected boolean mo4888J(int i, int i2, Bundle bundle) {
            if (i2 != 16) {
                return false;
            }
            if (i == 0) {
                return Chip.this.performClick();
            }
            if (i == 1) {
                return Chip.this.m8182t();
            }
            return false;
        }

        @Override // p016c.p052i.p054b.AbstractC0631a
        /* JADX INFO: renamed from: M */
        protected void mo4891M(C0269c c0269c) {
            c0269c.m1917U(Chip.this.m8180r());
            c0269c.m1920X(Chip.this.isClickable());
            if (Chip.this.m8180r() || Chip.this.isClickable()) {
                c0269c.m1919W(Chip.this.m8180r() ? "android.widget.CompoundButton" : "android.widget.Button");
            } else {
                c0269c.m1919W("android.view.View");
            }
            CharSequence text = Chip.this.getText();
            if (Build.VERSION.SDK_INT >= 23) {
                c0269c.m1952r0(text);
            } else {
                c0269c.m1924a0(text);
            }
        }

        @Override // p016c.p052i.p054b.AbstractC0631a
        /* JADX INFO: renamed from: N */
        protected void mo4892N(int i, C0269c c0269c) {
            CharSequence charSequence = BuildConfig.FLAVOR;
            if (i != 1) {
                c0269c.m1924a0(BuildConfig.FLAVOR);
                c0269c.m1915S(Chip.f6751v);
                return;
            }
            CharSequence closeIconContentDescription = Chip.this.getCloseIconContentDescription();
            if (closeIconContentDescription != null) {
                c0269c.m1924a0(closeIconContentDescription);
            } else {
                CharSequence text = Chip.this.getText();
                Context context = Chip.this.getContext();
                int i2 = C1224i.mtrl_chip_close_icon_content_description;
                Object[] objArr = new Object[1];
                if (!TextUtils.isEmpty(text)) {
                    charSequence = text;
                }
                objArr[0] = charSequence;
                c0269c.m1924a0(context.getString(i2, objArr).trim());
            }
            c0269c.m1915S(Chip.this.getCloseIconTouchBoundsInt());
            c0269c.m1925b(C0269c.a.f1859e);
            c0269c.m1926b0(Chip.this.isEnabled());
        }

        @Override // p016c.p052i.p054b.AbstractC0631a
        /* JADX INFO: renamed from: O */
        protected void mo4893O(int i, boolean z) {
            if (i == 1) {
                Chip.this.f6762m = z;
                Chip.this.refreshDrawableState();
            }
        }
    }

    public Chip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1216b.chipStyle);
    }

    /* JADX INFO: renamed from: A */
    private void m8155A() {
        C1073a c1073a;
        if (TextUtils.isEmpty(getText()) || (c1073a = this.f6754e) == null) {
            return;
        }
        int iM8255H0 = (int) (c1073a.m8255H0() + this.f6754e.m8308h1() + this.f6754e.m8321o0());
        int iM8268M0 = (int) (this.f6754e.m8268M0() + this.f6754e.m8310i1() + this.f6754e.m8313k0());
        if (this.f6755f != null) {
            Rect rect = new Rect();
            this.f6755f.getPadding(rect);
            iM8268M0 += rect.left;
            iM8255H0 += rect.right;
        }
        C0292v.m2043A0(this, iM8268M0, getPaddingTop(), iM8255H0, getPaddingBottom());
    }

    /* JADX INFO: renamed from: B */
    private void m8156B() {
        TextPaint paint = getPaint();
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            paint.drawableState = c1073a.getState();
        }
        C1258d textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.m9471j(getContext(), paint, this.f6769t);
        }
    }

    /* JADX INFO: renamed from: C */
    private void m8157C(AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background");
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        if (!attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true) || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) != 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RectF getCloseIconTouchBounds() {
        this.f6768s.setEmpty();
        if (m8169n() && this.f6757h != null) {
            this.f6754e.m8288W0(this.f6768s);
        }
        return this.f6768s;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        this.f6767r.set((int) closeIconTouchBounds.left, (int) closeIconTouchBounds.top, (int) closeIconTouchBounds.right, (int) closeIconTouchBounds.bottom);
        return this.f6767r;
    }

    private C1258d getTextAppearance() {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            return c1073a.m8306g1();
        }
        return null;
    }

    /* JADX INFO: renamed from: i */
    private void m8165i(C1073a c1073a) {
        c1073a.m8320n2(this);
    }

    /* JADX INFO: renamed from: j */
    private int[] m8166j() {
        int i = 0;
        int i2 = isEnabled() ? 1 : 0;
        if (this.f6762m) {
            i2++;
        }
        if (this.f6761l) {
            i2++;
        }
        if (this.f6760k) {
            i2++;
        }
        if (isChecked()) {
            i2++;
        }
        int[] iArr = new int[i2];
        if (isEnabled()) {
            iArr[0] = 16842910;
            i = 1;
        }
        if (this.f6762m) {
            iArr[i] = 16842908;
            i++;
        }
        if (this.f6761l) {
            iArr[i] = 16843623;
            i++;
        }
        if (this.f6760k) {
            iArr[i] = 16842919;
            i++;
        }
        if (isChecked()) {
            iArr[i] = 16842913;
        }
        return iArr;
    }

    /* JADX INFO: renamed from: l */
    private void m8167l() {
        if (getBackgroundDrawable() == this.f6755f && this.f6754e.getCallback() == null) {
            this.f6754e.setCallback(this.f6755f);
        }
    }

    @SuppressLint({"PrivateApi"})
    /* JADX INFO: renamed from: m */
    private boolean m8168m(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 10) {
            try {
                Field declaredField = AbstractC0631a.class.getDeclaredField("m");
                declaredField.setAccessible(true);
                if (((Integer) declaredField.get(this.f6766q)).intValue() != Integer.MIN_VALUE) {
                    Method declaredMethod = AbstractC0631a.class.getDeclaredMethod("V", Integer.TYPE);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(this.f6766q, Integer.MIN_VALUE);
                    return true;
                }
            } catch (IllegalAccessException | NoSuchFieldException | NoSuchMethodException | InvocationTargetException unused) {
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: n */
    public boolean m8169n() {
        C1073a c1073a = this.f6754e;
        return (c1073a == null || c1073a.m8274P0() == null) ? false : true;
    }

    /* JADX INFO: renamed from: o */
    private void m8170o(Context context, AttributeSet attributeSet, int i) {
        TypedArray typedArrayM8726h = C1121j.m8726h(context, attributeSet, C1226k.Chip, i, f6750u, new int[0]);
        this.f6763n = typedArrayM8726h.getBoolean(C1226k.Chip_ensureMinTouchTargetSize, false);
        this.f6765p = (int) Math.ceil(typedArrayM8726h.getDimension(C1226k.Chip_chipMinTouchTargetSize, (float) Math.ceil(C1123l.m8732b(getContext(), 48))));
        typedArrayM8726h.recycle();
    }

    /* JADX INFO: renamed from: p */
    private void m8171p() {
        if (Build.VERSION.SDK_INT >= 21) {
            setOutlineProvider(new C1066b());
        }
    }

    /* JADX INFO: renamed from: q */
    private void m8172q(int i, int i2, int i3, int i4) {
        this.f6755f = new InsetDrawable((Drawable) this.f6754e, i, i2, i3, i4);
    }

    private void setCloseIconHovered(boolean z) {
        if (this.f6761l != z) {
            this.f6761l = z;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z) {
        if (this.f6760k != z) {
            this.f6760k = z;
            refreshDrawableState();
        }
    }

    /* JADX INFO: renamed from: u */
    private void m8173u() {
        if (this.f6755f != null) {
            this.f6755f = null;
            setMinWidth(0);
            setMinHeight((int) getChipMinHeight());
            m8176y();
        }
    }

    /* JADX INFO: renamed from: w */
    private void m8174w(C1073a c1073a) {
        if (c1073a != null) {
            c1073a.m8320n2(null);
        }
    }

    /* JADX INFO: renamed from: x */
    private void m8175x() {
        if (m8169n() && m8181s() && this.f6757h != null) {
            C0292v.m2105o0(this, this.f6766q);
        } else {
            C0292v.m2105o0(this, null);
        }
    }

    /* JADX INFO: renamed from: y */
    private void m8176y() {
        if (C1262b.f7838a) {
            m8177z();
            return;
        }
        this.f6754e.m8260I2(true);
        C0292v.m2111r0(this, getBackgroundDrawable());
        m8155A();
        m8167l();
    }

    /* JADX INFO: renamed from: z */
    private void m8177z() {
        this.f6756g = new RippleDrawable(C1262b.m9477a(this.f6754e.m8300d1()), getBackgroundDrawable(), null);
        this.f6754e.m8260I2(false);
        C0292v.m2111r0(this, this.f6756g);
        m8155A();
    }

    @Override // com.google.android.material.chip.C1073a.a
    /* JADX INFO: renamed from: a */
    public void mo8178a() {
        m8179k(this.f6765p);
        requestLayout();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    @Override // android.view.View
    protected boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return m8168m(motionEvent) || this.f6766q.m4898v(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.f6766q.m4899w(keyEvent) || this.f6766q.m4883A() == Integer.MIN_VALUE) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    @Override // androidx.appcompat.widget.C0164f, android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C1073a c1073a = this.f6754e;
        if ((c1073a == null || !c1073a.m8319n1()) ? false : this.f6754e.m8312j2(m8166j())) {
            invalidate();
        }
    }

    public Drawable getBackgroundDrawable() {
        InsetDrawable insetDrawable = this.f6755f;
        return insetDrawable == null ? this.f6754e : insetDrawable;
    }

    public Drawable getCheckedIcon() {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            return c1073a.m8243D0();
        }
        return null;
    }

    public ColorStateList getCheckedIconTint() {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            return c1073a.m8246E0();
        }
        return null;
    }

    public ColorStateList getChipBackgroundColor() {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            return c1073a.m8249F0();
        }
        return null;
    }

    public float getChipCornerRadius() {
        C1073a c1073a = this.f6754e;
        return c1073a != null ? Math.max(CropImageView.DEFAULT_ASPECT_RATIO, c1073a.m8252G0()) : CropImageView.DEFAULT_ASPECT_RATIO;
    }

    public Drawable getChipDrawable() {
        return this.f6754e;
    }

    public float getChipEndPadding() {
        C1073a c1073a = this.f6754e;
        return c1073a != null ? c1073a.m8255H0() : CropImageView.DEFAULT_ASPECT_RATIO;
    }

    public Drawable getChipIcon() {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            return c1073a.m8258I0();
        }
        return null;
    }

    public float getChipIconSize() {
        C1073a c1073a = this.f6754e;
        return c1073a != null ? c1073a.m8261J0() : CropImageView.DEFAULT_ASPECT_RATIO;
    }

    public ColorStateList getChipIconTint() {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            return c1073a.m8264K0();
        }
        return null;
    }

    public float getChipMinHeight() {
        C1073a c1073a = this.f6754e;
        return c1073a != null ? c1073a.m8266L0() : CropImageView.DEFAULT_ASPECT_RATIO;
    }

    public float getChipStartPadding() {
        C1073a c1073a = this.f6754e;
        return c1073a != null ? c1073a.m8268M0() : CropImageView.DEFAULT_ASPECT_RATIO;
    }

    public ColorStateList getChipStrokeColor() {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            return c1073a.m8270N0();
        }
        return null;
    }

    public float getChipStrokeWidth() {
        C1073a c1073a = this.f6754e;
        return c1073a != null ? c1073a.m8272O0() : CropImageView.DEFAULT_ASPECT_RATIO;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    public Drawable getCloseIcon() {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            return c1073a.m8274P0();
        }
        return null;
    }

    public CharSequence getCloseIconContentDescription() {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            return c1073a.m8276Q0();
        }
        return null;
    }

    public float getCloseIconEndPadding() {
        C1073a c1073a = this.f6754e;
        return c1073a != null ? c1073a.m8278R0() : CropImageView.DEFAULT_ASPECT_RATIO;
    }

    public float getCloseIconSize() {
        C1073a c1073a = this.f6754e;
        return c1073a != null ? c1073a.m8280S0() : CropImageView.DEFAULT_ASPECT_RATIO;
    }

    public float getCloseIconStartPadding() {
        C1073a c1073a = this.f6754e;
        return c1073a != null ? c1073a.m8282T0() : CropImageView.DEFAULT_ASPECT_RATIO;
    }

    public ColorStateList getCloseIconTint() {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            return c1073a.m8286V0();
        }
        return null;
    }

    @Override // android.widget.TextView
    public TextUtils.TruncateAt getEllipsize() {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            return c1073a.m8292Z0();
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public void getFocusedRect(Rect rect) {
        if (this.f6766q.m4883A() == 1 || this.f6766q.m4900x() == 1) {
            rect.set(getCloseIconTouchBoundsInt());
        } else {
            super.getFocusedRect(rect);
        }
    }

    public C1234h getHideMotionSpec() {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            return c1073a.m8294a1();
        }
        return null;
    }

    public float getIconEndPadding() {
        C1073a c1073a = this.f6754e;
        return c1073a != null ? c1073a.m8296b1() : CropImageView.DEFAULT_ASPECT_RATIO;
    }

    public float getIconStartPadding() {
        C1073a c1073a = this.f6754e;
        return c1073a != null ? c1073a.m8298c1() : CropImageView.DEFAULT_ASPECT_RATIO;
    }

    public ColorStateList getRippleColor() {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            return c1073a.m8300d1();
        }
        return null;
    }

    public C1212k getShapeAppearanceModel() {
        return this.f6754e.m9172C();
    }

    public C1234h getShowMotionSpec() {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            return c1073a.m8302e1();
        }
        return null;
    }

    public float getTextEndPadding() {
        C1073a c1073a = this.f6754e;
        return c1073a != null ? c1073a.m8308h1() : CropImageView.DEFAULT_ASPECT_RATIO;
    }

    public float getTextStartPadding() {
        C1073a c1073a = this.f6754e;
        return c1073a != null ? c1073a.m8310i1() : CropImageView.DEFAULT_ASPECT_RATIO;
    }

    /* JADX INFO: renamed from: k */
    public boolean m8179k(int i) {
        this.f6765p = i;
        if (!m8183v()) {
            if (this.f6755f != null) {
                m8173u();
            } else {
                m8176y();
            }
            return false;
        }
        int iMax = Math.max(0, i - this.f6754e.getIntrinsicHeight());
        int iMax2 = Math.max(0, i - this.f6754e.getIntrinsicWidth());
        if (iMax2 <= 0 && iMax <= 0) {
            if (this.f6755f != null) {
                m8173u();
            } else {
                m8176y();
            }
            return false;
        }
        int i2 = iMax2 > 0 ? iMax2 / 2 : 0;
        int i3 = iMax > 0 ? iMax / 2 : 0;
        if (this.f6755f != null) {
            Rect rect = new Rect();
            this.f6755f.getPadding(rect);
            if (rect.top == i3 && rect.bottom == i3 && rect.left == i2 && rect.right == i2) {
                m8176y();
                return true;
            }
        }
        if (Build.VERSION.SDK_INT >= 16) {
            if (getMinHeight() != i) {
                setMinHeight(i);
            }
            if (getMinWidth() != i) {
                setMinWidth(i);
            }
        } else {
            setMinHeight(i);
            setMinWidth(i);
        }
        m8172q(i2, i3, i2, i3);
        m8176y();
        return true;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        C1209h.m9211f(this, this.f6754e);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (isChecked()) {
            CheckBox.mergeDrawableStates(iArrOnCreateDrawableState, f6752w);
        }
        if (m8180r()) {
            CheckBox.mergeDrawableStates(iArrOnCreateDrawableState, f6753x);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        this.f6766q.m4887I(z, i, rect);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        } else if (actionMasked == 10) {
            setCloseIconHovered(false);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (m8180r() || isClickable()) {
            accessibilityNodeInfo.setClassName(m8180r() ? "android.widget.CompoundButton" : "android.widget.Button");
        } else {
            accessibilityNodeInfo.setClassName("android.view.View");
        }
        accessibilityNodeInfo.setCheckable(m8180r());
        accessibilityNodeInfo.setClickable(isClickable());
        if (getParent() instanceof ChipGroup) {
            ChipGroup chipGroup = (ChipGroup) getParent();
            C0269c.m1899v0(accessibilityNodeInfo).m1922Z(C0269c.c.m1965a(chipGroup.m8692b(this), 1, chipGroup.mo8196c() ? chipGroup.m8199o(this) : -1, 1, false, isChecked()));
        }
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    @TargetApi(24)
    public PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i) {
        if (getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) {
            return PointerIcon.getSystemIcon(getContext(), 1002);
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    @TargetApi(17)
    public void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        if (this.f6764o != i) {
            this.f6764o = i;
            m8155A();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001e, code lost:
    
        if (r0 != 3) goto L22;
     */
    @Override // android.widget.TextView, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        int actionMasked = motionEvent.getActionMasked();
        boolean zContains = getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY());
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    if (this.f6760k) {
                        if (!zContains) {
                            setCloseIconPressed(false);
                        }
                        z = true;
                    }
                }
                z = false;
            } else {
                if (this.f6760k) {
                    m8182t();
                    z = true;
                }
                setCloseIconPressed(false);
            }
            z = false;
            setCloseIconPressed(false);
        } else {
            if (zContains) {
                setCloseIconPressed(true);
                z = true;
            }
            z = false;
        }
        return z || super.onTouchEvent(motionEvent);
    }

    /* JADX INFO: renamed from: r */
    public boolean m8180r() {
        C1073a c1073a = this.f6754e;
        return c1073a != null && c1073a.m8317m1();
    }

    /* JADX INFO: renamed from: s */
    public boolean m8181s() {
        C1073a c1073a = this.f6754e;
        return c1073a != null && c1073a.m8322o1();
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f6756g) {
            super.setBackground(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
    }

    @Override // androidx.appcompat.widget.C0164f, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f6756g) {
            super.setBackgroundDrawable(drawable);
        }
    }

    @Override // androidx.appcompat.widget.C0164f, android.view.View
    public void setBackgroundResource(int i) {
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
    }

    public void setCheckable(boolean z) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8332v1(z);
        }
    }

    public void setCheckableResource(int i) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8334w1(i);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        C1073a c1073a = this.f6754e;
        if (c1073a == null) {
            this.f6759j = z;
            return;
        }
        if (c1073a.m8317m1()) {
            boolean zIsChecked = isChecked();
            super.setChecked(z);
            if (zIsChecked == z || (onCheckedChangeListener = this.f6758i) == null) {
                return;
            }
            onCheckedChangeListener.onCheckedChanged(this, z);
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8336x1(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z) {
        setCheckedIconVisible(z);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(int i) {
        setCheckedIconVisible(i);
    }

    public void setCheckedIconResource(int i) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8338y1(i);
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8340z1(colorStateList);
        }
    }

    public void setCheckedIconTintResource(int i) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8237A1(i);
        }
    }

    public void setCheckedIconVisible(int i) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8239B1(i);
        }
    }

    public void setChipBackgroundColor(ColorStateList colorStateList) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8244D1(colorStateList);
        }
    }

    public void setChipBackgroundColorResource(int i) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8247E1(i);
        }
    }

    @Deprecated
    public void setChipCornerRadius(float f) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8250F1(f);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(int i) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8253G1(i);
        }
    }

    public void setChipDrawable(C1073a c1073a) {
        C1073a c1073a2 = this.f6754e;
        if (c1073a2 != c1073a) {
            m8174w(c1073a2);
            this.f6754e = c1073a;
            c1073a.m8339y2(false);
            m8165i(this.f6754e);
            m8179k(this.f6765p);
        }
    }

    public void setChipEndPadding(float f) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8256H1(f);
        }
    }

    public void setChipEndPaddingResource(int i) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8259I1(i);
        }
    }

    public void setChipIcon(Drawable drawable) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8262J1(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z) {
        setChipIconVisible(z);
    }

    @Deprecated
    public void setChipIconEnabledResource(int i) {
        setChipIconVisible(i);
    }

    public void setChipIconResource(int i) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8265K1(i);
        }
    }

    public void setChipIconSize(float f) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8267L1(f);
        }
    }

    public void setChipIconSizeResource(int i) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8269M1(i);
        }
    }

    public void setChipIconTint(ColorStateList colorStateList) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8271N1(colorStateList);
        }
    }

    public void setChipIconTintResource(int i) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8273O1(i);
        }
    }

    public void setChipIconVisible(int i) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8275P1(i);
        }
    }

    public void setChipMinHeight(float f) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8279R1(f);
        }
    }

    public void setChipMinHeightResource(int i) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8281S1(i);
        }
    }

    public void setChipStartPadding(float f) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8283T1(f);
        }
    }

    public void setChipStartPaddingResource(int i) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8285U1(i);
        }
    }

    public void setChipStrokeColor(ColorStateList colorStateList) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8287V1(colorStateList);
        }
    }

    public void setChipStrokeColorResource(int i) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8289W1(i);
        }
    }

    public void setChipStrokeWidth(float f) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8290X1(f);
        }
    }

    public void setChipStrokeWidthResource(int i) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8291Y1(i);
        }
    }

    @Deprecated
    public void setChipText(CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(int i) {
        setText(getResources().getString(i));
    }

    public void setCloseIcon(Drawable drawable) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8295a2(drawable);
        }
        m8175x();
    }

    public void setCloseIconContentDescription(CharSequence charSequence) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8297b2(charSequence);
        }
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z) {
        setCloseIconVisible(z);
    }

    @Deprecated
    public void setCloseIconEnabledResource(int i) {
        setCloseIconVisible(i);
    }

    public void setCloseIconEndPadding(float f) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8299c2(f);
        }
    }

    public void setCloseIconEndPaddingResource(int i) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8301d2(i);
        }
    }

    public void setCloseIconResource(int i) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8303e2(i);
        }
        m8175x();
    }

    public void setCloseIconSize(float f) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8305f2(f);
        }
    }

    public void setCloseIconSizeResource(int i) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8307g2(i);
        }
    }

    public void setCloseIconStartPadding(float f) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8309h2(f);
        }
    }

    public void setCloseIconStartPaddingResource(int i) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8311i2(i);
        }
    }

    public void setCloseIconTint(ColorStateList colorStateList) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8315k2(colorStateList);
        }
    }

    public void setCloseIconTintResource(int i) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8316l2(i);
        }
    }

    public void setCloseIconVisible(int i) {
        setCloseIconVisible(getResources().getBoolean(i));
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i3 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(i, i2, i3, i4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i3 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m9183V(f);
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.f6754e == null) {
            return;
        }
        if (truncateAt == TextUtils.TruncateAt.MARQUEE) {
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
        super.setEllipsize(truncateAt);
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8323o2(truncateAt);
        }
    }

    public void setEnsureMinTouchTargetSize(boolean z) {
        this.f6763n = z;
        m8179k(this.f6765p);
    }

    @Override // android.widget.TextView
    public void setGravity(int i) {
        if (i != 8388627) {
            return;
        }
        super.setGravity(i);
    }

    public void setHideMotionSpec(C1234h c1234h) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8324p2(c1234h);
        }
    }

    public void setHideMotionSpecResource(int i) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8325q2(i);
        }
    }

    public void setIconEndPadding(float f) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8327r2(f);
        }
    }

    public void setIconEndPaddingResource(int i) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8328s2(i);
        }
    }

    public void setIconStartPadding(float f) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8330t2(f);
        }
    }

    public void setIconStartPaddingResource(int i) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8331u2(i);
        }
    }

    @Override // android.view.View
    public void setLayoutDirection(int i) {
        if (this.f6754e != null && Build.VERSION.SDK_INT >= 17) {
            super.setLayoutDirection(i);
        }
    }

    @Override // android.widget.TextView
    public void setLines(int i) {
        if (i > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setLines(i);
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i) {
        if (i > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMaxLines(i);
    }

    @Override // android.widget.TextView
    public void setMaxWidth(int i) {
        super.setMaxWidth(i);
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8333v2(i);
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i) {
        if (i > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMinLines(i);
    }

    void setOnCheckedChangeListenerInternal(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f6758i = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.f6757h = onClickListener;
        m8175x();
    }

    public void setRippleColor(ColorStateList colorStateList) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8335w2(colorStateList);
        }
        if (this.f6754e.m8314k1()) {
            return;
        }
        m8177z();
    }

    public void setRippleColorResource(int i) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8337x2(i);
            if (this.f6754e.m8314k1()) {
                return;
            }
            m8177z();
        }
    }

    @Override // p093d.p099c.p100a.p101a.p102a0.InterfaceC1215n
    public void setShapeAppearanceModel(C1212k c1212k) {
        this.f6754e.setShapeAppearanceModel(c1212k);
    }

    public void setShowMotionSpec(C1234h c1234h) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8341z2(c1234h);
        }
    }

    public void setShowMotionSpecResource(int i) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8238A2(i);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z) {
        if (!z) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setSingleLine(z);
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        if (this.f6754e == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = BuildConfig.FLAVOR;
        }
        super.setText(this.f6754e.m8263J2() ? null : charSequence, bufferType);
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8240B2(charSequence);
        }
    }

    public void setTextAppearance(C1258d c1258d) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8242C2(c1258d);
        }
        m8156B();
    }

    public void setTextAppearanceResource(int i) {
        setTextAppearance(getContext(), i);
    }

    public void setTextEndPadding(float f) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8248E2(f);
        }
    }

    public void setTextEndPaddingResource(int i) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8251F2(i);
        }
    }

    public void setTextStartPadding(float f) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8254G2(f);
        }
    }

    public void setTextStartPaddingResource(int i) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8257H2(i);
        }
    }

    /* JADX INFO: renamed from: t */
    public boolean m8182t() {
        boolean z = false;
        playSoundEffect(0);
        View.OnClickListener onClickListener = this.f6757h;
        if (onClickListener != null) {
            onClickListener.onClick(this);
            z = true;
        }
        this.f6766q.m4896U(1, 1);
        return z;
    }

    /* JADX INFO: renamed from: v */
    public boolean m8183v() {
        return this.f6763n;
    }

    public Chip(Context context, AttributeSet attributeSet, int i) {
        super(C1147a.m8952c(context, attributeSet, i, f6750u), attributeSet, i);
        this.f6767r = new Rect();
        this.f6768s = new RectF();
        this.f6769t = new C1065a();
        Context context2 = getContext();
        m8157C(attributeSet);
        C1073a c1073aM8229t0 = C1073a.m8229t0(context2, attributeSet, i, f6750u);
        m8170o(context2, attributeSet, i);
        setChipDrawable(c1073aM8229t0);
        c1073aM8229t0.m9183V(C0292v.m2120w(this));
        TypedArray typedArrayM8726h = C1121j.m8726h(context2, attributeSet, C1226k.Chip, i, f6750u, new int[0]);
        if (Build.VERSION.SDK_INT < 23) {
            setTextColor(C1257c.m9454a(context2, typedArrayM8726h, C1226k.Chip_android_textColor));
        }
        boolean zHasValue = typedArrayM8726h.hasValue(C1226k.Chip_shapeAppearance);
        typedArrayM8726h.recycle();
        this.f6766q = new C1067c(this);
        m8175x();
        if (!zHasValue) {
            m8171p();
        }
        setChecked(this.f6759j);
        setText(c1073aM8229t0.m8304f1());
        setEllipsize(c1073aM8229t0.m8292Z0());
        m8156B();
        if (!this.f6754e.m8263J2()) {
            setLines(1);
            setHorizontallyScrolling(true);
        }
        setGravity(8388627);
        m8155A();
        if (m8183v()) {
            setMinHeight(this.f6765p);
        }
        this.f6764o = C0292v.m2046C(this);
    }

    public void setCloseIconVisible(boolean z) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8318m2(z);
        }
        m8175x();
    }

    public void setCheckedIconVisible(boolean z) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8241C1(z);
        }
    }

    public void setChipIconVisible(boolean z) {
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8277Q1(z);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8245D2(i);
        }
        m8156B();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i) {
        super.setTextAppearance(i);
        C1073a c1073a = this.f6754e;
        if (c1073a != null) {
            c1073a.m8245D2(i);
        }
        m8156B();
    }
}
