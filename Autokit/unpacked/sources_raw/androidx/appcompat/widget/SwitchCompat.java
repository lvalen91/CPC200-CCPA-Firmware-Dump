package androidx.appcompat.widget;

import android.R;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.Property;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class SwitchCompat extends CompoundButton {
    private static final Property<SwitchCompat, Float> O = new a(Float.class, "thumbPos");
    private static final int[] P = {R.attr.state_checked};
    private int A;
    private int B;
    private int C;
    private int D;
    private int E;
    private int F;
    private final TextPaint G;
    private ColorStateList H;
    private Layout I;
    private Layout J;
    private TransformationMethod K;
    ObjectAnimator L;
    private final w M;
    private final Rect N;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Drawable f276b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ColorStateList f277c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private PorterDuff.Mode f278d;
    private boolean e;
    private boolean f;
    private Drawable g;
    private ColorStateList h;
    private PorterDuff.Mode i;
    private boolean j;
    private boolean k;
    private int l;
    private int m;
    private int n;
    private boolean o;
    private CharSequence p;
    private CharSequence q;
    private boolean r;
    private int s;
    private int t;
    private float u;
    private float v;
    private VelocityTracker w;
    private int x;
    float y;
    private int z;

    class a extends Property<SwitchCompat, Float> {
        a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(SwitchCompat switchCompat) {
            return Float.valueOf(switchCompat.y);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(SwitchCompat switchCompat, Float f) {
            switchCompat.setThumbPosition(f.floatValue());
        }
    }

    public SwitchCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, c.a.a.switchStyle);
    }

    private void a(boolean z) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, O, z ? 1.0f : CropImageView.DEFAULT_ASPECT_RATIO);
        this.L = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setDuration(250L);
        if (Build.VERSION.SDK_INT >= 18) {
            this.L.setAutoCancel(true);
        }
        this.L.start();
    }

    private void b() {
        if (this.f276b != null) {
            if (this.e || this.f) {
                Drawable drawableMutate = androidx.core.graphics.drawable.a.r(this.f276b).mutate();
                this.f276b = drawableMutate;
                if (this.e) {
                    androidx.core.graphics.drawable.a.o(drawableMutate, this.f277c);
                }
                if (this.f) {
                    androidx.core.graphics.drawable.a.p(this.f276b, this.f278d);
                }
                if (this.f276b.isStateful()) {
                    this.f276b.setState(getDrawableState());
                }
            }
        }
    }

    private void c() {
        if (this.g != null) {
            if (this.j || this.k) {
                Drawable drawableMutate = androidx.core.graphics.drawable.a.r(this.g).mutate();
                this.g = drawableMutate;
                if (this.j) {
                    androidx.core.graphics.drawable.a.o(drawableMutate, this.h);
                }
                if (this.k) {
                    androidx.core.graphics.drawable.a.p(this.g, this.i);
                }
                if (this.g.isStateful()) {
                    this.g.setState(getDrawableState());
                }
            }
        }
    }

    private void d() {
        ObjectAnimator objectAnimator = this.L;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    private void e(MotionEvent motionEvent) {
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        motionEventObtain.setAction(3);
        super.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
    }

    private static float f(float f, float f2, float f3) {
        return f < f2 ? f2 : f > f3 ? f3 : f;
    }

    private boolean g(float f, float f2) {
        if (this.f276b == null) {
            return false;
        }
        int thumbOffset = getThumbOffset();
        this.f276b.getPadding(this.N);
        int i = this.D;
        int i2 = this.t;
        int i3 = i - i2;
        int i4 = (this.C + thumbOffset) - i2;
        int i5 = this.B + i4;
        Rect rect = this.N;
        return f > ((float) i4) && f < ((float) (((i5 + rect.left) + rect.right) + i2)) && f2 > ((float) i3) && f2 < ((float) (this.F + i2));
    }

    private boolean getTargetCheckedState() {
        return this.y > 0.5f;
    }

    private int getThumbOffset() {
        return (int) (((a1.b(this) ? 1.0f - this.y : this.y) * getThumbScrollRange()) + 0.5f);
    }

    private int getThumbScrollRange() {
        Drawable drawable = this.g;
        if (drawable == null) {
            return 0;
        }
        Rect rect = this.N;
        drawable.getPadding(rect);
        Drawable drawable2 = this.f276b;
        Rect rectD = drawable2 != null ? c0.d(drawable2) : c0.f302c;
        return ((((this.z - this.B) - rect.left) - rect.right) - rectD.left) - rectD.right;
    }

    private Layout h(CharSequence charSequence) {
        TransformationMethod transformationMethod = this.K;
        if (transformationMethod != null) {
            charSequence = transformationMethod.getTransformation(charSequence, this);
        }
        CharSequence charSequence2 = charSequence;
        return new StaticLayout(charSequence2, this.G, charSequence2 != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence2, r2)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, CropImageView.DEFAULT_ASPECT_RATIO, true);
    }

    private void i() {
        if (Build.VERSION.SDK_INT >= 30) {
            CharSequence string = this.q;
            if (string == null) {
                string = getResources().getString(c.a.h.abc_capital_off);
            }
            androidx.core.view.v.C0(this, string);
        }
    }

    private void j() {
        if (Build.VERSION.SDK_INT >= 30) {
            CharSequence string = this.p;
            if (string == null) {
                string = getResources().getString(c.a.h.abc_capital_on);
            }
            androidx.core.view.v.C0(this, string);
        }
    }

    private void m(int i, int i2) {
        l(i != 1 ? i != 2 ? i != 3 ? null : Typeface.MONOSPACE : Typeface.SERIF : Typeface.SANS_SERIF, i2);
    }

    private void n(MotionEvent motionEvent) {
        this.s = 0;
        boolean targetCheckedState = true;
        boolean z = motionEvent.getAction() == 1 && isEnabled();
        boolean zIsChecked = isChecked();
        if (z) {
            this.w.computeCurrentVelocity(1000);
            float xVelocity = this.w.getXVelocity();
            if (Math.abs(xVelocity) <= this.x) {
                targetCheckedState = getTargetCheckedState();
            } else if (!a1.b(this) ? xVelocity <= CropImageView.DEFAULT_ASPECT_RATIO : xVelocity >= CropImageView.DEFAULT_ASPECT_RATIO) {
                targetCheckedState = false;
            }
        } else {
            targetCheckedState = zIsChecked;
        }
        if (targetCheckedState != zIsChecked) {
            playSoundEffect(0);
        }
        setChecked(targetCheckedState);
        e(motionEvent);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i;
        int i2;
        Rect rect = this.N;
        int i3 = this.C;
        int i4 = this.D;
        int i5 = this.E;
        int i6 = this.F;
        int thumbOffset = getThumbOffset() + i3;
        Drawable drawable = this.f276b;
        Rect rectD = drawable != null ? c0.d(drawable) : c0.f302c;
        Drawable drawable2 = this.g;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            int i7 = rect.left;
            thumbOffset += i7;
            if (rectD != null) {
                int i8 = rectD.left;
                if (i8 > i7) {
                    i3 += i8 - i7;
                }
                int i9 = rectD.top;
                int i10 = rect.top;
                i = i9 > i10 ? (i9 - i10) + i4 : i4;
                int i11 = rectD.right;
                int i12 = rect.right;
                if (i11 > i12) {
                    i5 -= i11 - i12;
                }
                int i13 = rectD.bottom;
                int i14 = rect.bottom;
                if (i13 > i14) {
                    i2 = i6 - (i13 - i14);
                }
                this.g.setBounds(i3, i, i5, i2);
            } else {
                i = i4;
            }
            i2 = i6;
            this.g.setBounds(i3, i, i5, i2);
        }
        Drawable drawable3 = this.f276b;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i15 = thumbOffset - rect.left;
            int i16 = thumbOffset + this.B + rect.right;
            this.f276b.setBounds(i15, i4, i16, i6);
            Drawable background = getBackground();
            if (background != null) {
                androidx.core.graphics.drawable.a.l(background, i15, i4, i16, i6);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableHotspotChanged(float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.drawableHotspotChanged(f, f2);
        }
        Drawable drawable = this.f276b;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.k(drawable, f, f2);
        }
        Drawable drawable2 = this.g;
        if (drawable2 != null) {
            androidx.core.graphics.drawable.a.k(drawable2, f, f2);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f276b;
        boolean state = false;
        if (drawable != null && drawable.isStateful()) {
            state = false | drawable.setState(drawableState);
        }
        Drawable drawable2 = this.g;
        if (drawable2 != null && drawable2.isStateful()) {
            state |= drawable2.setState(drawableState);
        }
        if (state) {
            invalidate();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        if (!a1.b(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.z;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingLeft + this.n : compoundPaddingLeft;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        if (a1.b(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.z;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingRight + this.n : compoundPaddingRight;
    }

    public boolean getShowText() {
        return this.r;
    }

    public boolean getSplitTrack() {
        return this.o;
    }

    public int getSwitchMinWidth() {
        return this.m;
    }

    public int getSwitchPadding() {
        return this.n;
    }

    public CharSequence getTextOff() {
        return this.q;
    }

    public CharSequence getTextOn() {
        return this.p;
    }

    public Drawable getThumbDrawable() {
        return this.f276b;
    }

    public int getThumbTextPadding() {
        return this.l;
    }

    public ColorStateList getThumbTintList() {
        return this.f277c;
    }

    public PorterDuff.Mode getThumbTintMode() {
        return this.f278d;
    }

    public Drawable getTrackDrawable() {
        return this.g;
    }

    public ColorStateList getTrackTintList() {
        return this.h;
    }

    public PorterDuff.Mode getTrackTintMode() {
        return this.i;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f276b;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.g;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.L;
        if (objectAnimator == null || !objectAnimator.isStarted()) {
            return;
        }
        this.L.end();
        this.L = null;
    }

    public void k(Context context, int i) {
        u0 u0VarT = u0.t(context, i, c.a.j.TextAppearance);
        ColorStateList colorStateListC = u0VarT.c(c.a.j.TextAppearance_android_textColor);
        if (colorStateListC != null) {
            this.H = colorStateListC;
        } else {
            this.H = getTextColors();
        }
        int iF = u0VarT.f(c.a.j.TextAppearance_android_textSize, 0);
        if (iF != 0) {
            float f = iF;
            if (f != this.G.getTextSize()) {
                this.G.setTextSize(f);
                requestLayout();
            }
        }
        m(u0VarT.k(c.a.j.TextAppearance_android_typeface, -1), u0VarT.k(c.a.j.TextAppearance_android_textStyle, -1));
        if (u0VarT.a(c.a.j.TextAppearance_textAllCaps, false)) {
            this.K = new c.a.n.a(getContext());
        } else {
            this.K = null;
        }
        u0VarT.w();
    }

    public void l(Typeface typeface, int i) {
        float f = CropImageView.DEFAULT_ASPECT_RATIO;
        if (i <= 0) {
            this.G.setFakeBoldText(false);
            this.G.setTextSkewX(CropImageView.DEFAULT_ASPECT_RATIO);
            setSwitchTypeface(typeface);
            return;
        }
        Typeface typefaceDefaultFromStyle = typeface == null ? Typeface.defaultFromStyle(i) : Typeface.create(typeface, i);
        setSwitchTypeface(typefaceDefaultFromStyle);
        int style = ((typefaceDefaultFromStyle != null ? typefaceDefaultFromStyle.getStyle() : 0) ^ (-1)) & i;
        this.G.setFakeBoldText((style & 1) != 0);
        TextPaint textPaint = this.G;
        if ((style & 2) != 0) {
            f = -0.25f;
        }
        textPaint.setTextSkewX(f);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            CompoundButton.mergeDrawableStates(iArrOnCreateDrawableState, P);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        int width;
        super.onDraw(canvas);
        Rect rect = this.N;
        Drawable drawable = this.g;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i = this.D;
        int i2 = this.F;
        int i3 = i + rect.top;
        int i4 = i2 - rect.bottom;
        Drawable drawable2 = this.f276b;
        if (drawable != null) {
            if (!this.o || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                Rect rectD = c0.d(drawable2);
                drawable2.copyBounds(rect);
                rect.left += rectD.left;
                rect.right -= rectD.right;
                int iSave = canvas.save();
                canvas.clipRect(rect, Region.Op.DIFFERENCE);
                drawable.draw(canvas);
                canvas.restoreToCount(iSave);
            }
        }
        int iSave2 = canvas.save();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        Layout layout = getTargetCheckedState() ? this.I : this.J;
        if (layout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.H;
            if (colorStateList != null) {
                this.G.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            this.G.drawableState = drawableState;
            if (drawable2 != null) {
                Rect bounds = drawable2.getBounds();
                width = bounds.left + bounds.right;
            } else {
                width = getWidth();
            }
            canvas.translate((width / 2) - (layout.getWidth() / 2), ((i3 + i4) / 2) - (layout.getHeight() / 2));
            layout.draw(canvas);
        }
        canvas.restoreToCount(iSave2);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.widget.Switch");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
        if (Build.VERSION.SDK_INT < 30) {
            CharSequence charSequence = isChecked() ? this.p : this.q;
            if (TextUtils.isEmpty(charSequence)) {
                return;
            }
            CharSequence text = accessibilityNodeInfo.getText();
            if (TextUtils.isEmpty(text)) {
                accessibilityNodeInfo.setText(charSequence);
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(text);
            sb.append(' ');
            sb.append(charSequence);
            accessibilityNodeInfo.setText(sb);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int iMax;
        int width;
        int paddingLeft;
        int i5;
        int paddingTop;
        int height;
        super.onLayout(z, i, i2, i3, i4);
        int iMax2 = 0;
        if (this.f276b != null) {
            Rect rect = this.N;
            Drawable drawable = this.g;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect rectD = c0.d(this.f276b);
            iMax = Math.max(0, rectD.left - rect.left);
            iMax2 = Math.max(0, rectD.right - rect.right);
        } else {
            iMax = 0;
        }
        if (a1.b(this)) {
            paddingLeft = getPaddingLeft() + iMax;
            width = ((this.z + paddingLeft) - iMax) - iMax2;
        } else {
            width = (getWidth() - getPaddingRight()) - iMax2;
            paddingLeft = (width - this.z) + iMax + iMax2;
        }
        int gravity = getGravity() & 112;
        if (gravity == 16) {
            int paddingTop2 = ((getPaddingTop() + getHeight()) - getPaddingBottom()) / 2;
            i5 = this.A;
            paddingTop = paddingTop2 - (i5 / 2);
        } else {
            if (gravity == 80) {
                height = getHeight() - getPaddingBottom();
                paddingTop = height - this.A;
                this.C = paddingLeft;
                this.D = paddingTop;
                this.F = height;
                this.E = width;
            }
            paddingTop = getPaddingTop();
            i5 = this.A;
        }
        height = i5 + paddingTop;
        this.C = paddingLeft;
        this.D = paddingTop;
        this.F = height;
        this.E = width;
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int intrinsicWidth;
        int intrinsicHeight;
        if (this.r) {
            if (this.I == null) {
                this.I = h(this.p);
            }
            if (this.J == null) {
                this.J = h(this.q);
            }
        }
        Rect rect = this.N;
        Drawable drawable = this.f276b;
        int intrinsicHeight2 = 0;
        if (drawable != null) {
            drawable.getPadding(rect);
            intrinsicWidth = (this.f276b.getIntrinsicWidth() - rect.left) - rect.right;
            intrinsicHeight = this.f276b.getIntrinsicHeight();
        } else {
            intrinsicWidth = 0;
            intrinsicHeight = 0;
        }
        this.B = Math.max(this.r ? Math.max(this.I.getWidth(), this.J.getWidth()) + (this.l * 2) : 0, intrinsicWidth);
        Drawable drawable2 = this.g;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            intrinsicHeight2 = this.g.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int iMax = rect.left;
        int iMax2 = rect.right;
        Drawable drawable3 = this.f276b;
        if (drawable3 != null) {
            Rect rectD = c0.d(drawable3);
            iMax = Math.max(iMax, rectD.left);
            iMax2 = Math.max(iMax2, rectD.right);
        }
        int iMax3 = Math.max(this.m, (this.B * 2) + iMax + iMax2);
        int iMax4 = Math.max(intrinsicHeight2, intrinsicHeight);
        this.z = iMax3;
        this.A = iMax4;
        super.onMeasure(i, i2);
        if (getMeasuredHeight() < iMax4) {
            setMeasuredDimension(getMeasuredWidthAndState(), iMax4);
        }
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.p : this.q;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x008b  */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.w.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if (isEnabled() && g(x, y)) {
                this.s = 1;
                this.u = x;
                this.v = y;
            }
        } else if (actionMasked == 1) {
            if (this.s == 2) {
                n(motionEvent);
                super.onTouchEvent(motionEvent);
                return true;
            }
            this.s = 0;
            this.w.clear();
        } else if (actionMasked == 2) {
            int i = this.s;
            if (i == 1) {
                float x2 = motionEvent.getX();
                float y2 = motionEvent.getY();
                if (Math.abs(x2 - this.u) > this.t || Math.abs(y2 - this.v) > this.t) {
                    this.s = 2;
                    getParent().requestDisallowInterceptTouchEvent(true);
                    this.u = x2;
                    this.v = y2;
                    return true;
                }
            } else if (i == 2) {
                float x3 = motionEvent.getX();
                int thumbScrollRange = getThumbScrollRange();
                float f = x3 - this.u;
                float f2 = thumbScrollRange != 0 ? f / thumbScrollRange : f > CropImageView.DEFAULT_ASPECT_RATIO ? 1.0f : -1.0f;
                if (a1.b(this)) {
                    f2 = -f2;
                }
                float f3 = f(this.y + f2, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f);
                if (f3 != this.y) {
                    this.u = x3;
                    setThumbPosition(f3);
                }
                return true;
            }
        } else if (actionMasked == 3) {
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        super.setChecked(z);
        boolean zIsChecked = isChecked();
        if (zIsChecked) {
            j();
        } else {
            i();
        }
        if (getWindowToken() != null && androidx.core.view.v.T(this)) {
            a(zIsChecked);
        } else {
            d();
            setThumbPosition(zIsChecked ? 1.0f : CropImageView.DEFAULT_ASPECT_RATIO);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.i.p(this, callback));
    }

    public void setShowText(boolean z) {
        if (this.r != z) {
            this.r = z;
            requestLayout();
        }
    }

    public void setSplitTrack(boolean z) {
        this.o = z;
        invalidate();
    }

    public void setSwitchMinWidth(int i) {
        this.m = i;
        requestLayout();
    }

    public void setSwitchPadding(int i) {
        this.n = i;
        requestLayout();
    }

    public void setSwitchTypeface(Typeface typeface) {
        if ((this.G.getTypeface() == null || this.G.getTypeface().equals(typeface)) && (this.G.getTypeface() != null || typeface == null)) {
            return;
        }
        this.G.setTypeface(typeface);
        requestLayout();
        invalidate();
    }

    public void setTextOff(CharSequence charSequence) {
        this.q = charSequence;
        requestLayout();
        if (isChecked()) {
            return;
        }
        i();
    }

    public void setTextOn(CharSequence charSequence) {
        this.p = charSequence;
        requestLayout();
        if (isChecked()) {
            j();
        }
    }

    public void setThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.f276b;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f276b = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    void setThumbPosition(float f) {
        this.y = f;
        invalidate();
    }

    public void setThumbResource(int i) {
        setThumbDrawable(c.a.k.a.a.d(getContext(), i));
    }

    public void setThumbTextPadding(int i) {
        this.l = i;
        requestLayout();
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        this.f277c = colorStateList;
        this.e = true;
        b();
    }

    public void setThumbTintMode(PorterDuff.Mode mode) {
        this.f278d = mode;
        this.f = true;
        b();
    }

    public void setTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.g;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.g = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i) {
        setTrackDrawable(c.a.k.a.a.d(getContext(), i));
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        this.h = colorStateList;
        this.j = true;
        c();
    }

    public void setTrackTintMode(PorterDuff.Mode mode) {
        this.i = mode;
        this.k = true;
        c();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f276b || drawable == this.g;
    }

    public SwitchCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f277c = null;
        this.f278d = null;
        this.e = false;
        this.f = false;
        this.h = null;
        this.i = null;
        this.j = false;
        this.k = false;
        this.w = VelocityTracker.obtain();
        this.N = new Rect();
        p0.a(this, getContext());
        this.G = new TextPaint(1);
        Resources resources = getResources();
        this.G.density = resources.getDisplayMetrics().density;
        u0 u0VarV = u0.v(context, attributeSet, c.a.j.SwitchCompat, i, 0);
        androidx.core.view.v.m0(this, context, c.a.j.SwitchCompat, attributeSet, u0VarV.r(), i, 0);
        Drawable drawableG = u0VarV.g(c.a.j.SwitchCompat_android_thumb);
        this.f276b = drawableG;
        if (drawableG != null) {
            drawableG.setCallback(this);
        }
        Drawable drawableG2 = u0VarV.g(c.a.j.SwitchCompat_track);
        this.g = drawableG2;
        if (drawableG2 != null) {
            drawableG2.setCallback(this);
        }
        this.p = u0VarV.p(c.a.j.SwitchCompat_android_textOn);
        this.q = u0VarV.p(c.a.j.SwitchCompat_android_textOff);
        this.r = u0VarV.a(c.a.j.SwitchCompat_showText, true);
        this.l = u0VarV.f(c.a.j.SwitchCompat_thumbTextPadding, 0);
        this.m = u0VarV.f(c.a.j.SwitchCompat_switchMinWidth, 0);
        this.n = u0VarV.f(c.a.j.SwitchCompat_switchPadding, 0);
        this.o = u0VarV.a(c.a.j.SwitchCompat_splitTrack, false);
        ColorStateList colorStateListC = u0VarV.c(c.a.j.SwitchCompat_thumbTint);
        if (colorStateListC != null) {
            this.f277c = colorStateListC;
            this.e = true;
        }
        PorterDuff.Mode modeE = c0.e(u0VarV.k(c.a.j.SwitchCompat_thumbTintMode, -1), null);
        if (this.f278d != modeE) {
            this.f278d = modeE;
            this.f = true;
        }
        if (this.e || this.f) {
            b();
        }
        ColorStateList colorStateListC2 = u0VarV.c(c.a.j.SwitchCompat_trackTint);
        if (colorStateListC2 != null) {
            this.h = colorStateListC2;
            this.j = true;
        }
        PorterDuff.Mode modeE2 = c0.e(u0VarV.k(c.a.j.SwitchCompat_trackTintMode, -1), null);
        if (this.i != modeE2) {
            this.i = modeE2;
            this.k = true;
        }
        if (this.j || this.k) {
            c();
        }
        int iN = u0VarV.n(c.a.j.SwitchCompat_switchTextAppearance, 0);
        if (iN != 0) {
            k(context, iN);
        }
        w wVar = new w(this);
        this.M = wVar;
        wVar.m(attributeSet, i);
        u0VarV.w();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.t = viewConfiguration.getScaledTouchSlop();
        this.x = viewConfiguration.getScaledMinimumFlingVelocity();
        refreshDrawableState();
        setChecked(isChecked());
    }
}
