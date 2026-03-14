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
import androidx.core.graphics.drawable.C0251a;
import androidx.core.view.C0292v;
import androidx.core.widget.C0308i;
import com.yalantis.ucrop.view.CropImageView;
import p016c.p017a.C0493a;
import p016c.p017a.C0500h;
import p016c.p017a.C0502j;
import p016c.p017a.p018k.p019a.C0503a;
import p016c.p017a.p023n.C0510a;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class SwitchCompat extends CompoundButton {

    /* JADX INFO: renamed from: O */
    private static final Property<SwitchCompat, Float> f923O = new C0143a(Float.class, "thumbPos");

    /* JADX INFO: renamed from: P */
    private static final int[] f924P = {R.attr.state_checked};

    /* JADX INFO: renamed from: A */
    private int f925A;

    /* JADX INFO: renamed from: B */
    private int f926B;

    /* JADX INFO: renamed from: C */
    private int f927C;

    /* JADX INFO: renamed from: D */
    private int f928D;

    /* JADX INFO: renamed from: E */
    private int f929E;

    /* JADX INFO: renamed from: F */
    private int f930F;

    /* JADX INFO: renamed from: G */
    private final TextPaint f931G;

    /* JADX INFO: renamed from: H */
    private ColorStateList f932H;

    /* JADX INFO: renamed from: I */
    private Layout f933I;

    /* JADX INFO: renamed from: J */
    private Layout f934J;

    /* JADX INFO: renamed from: K */
    private TransformationMethod f935K;

    /* JADX INFO: renamed from: L */
    ObjectAnimator f936L;

    /* JADX INFO: renamed from: M */
    private final C0198w f937M;

    /* JADX INFO: renamed from: N */
    private final Rect f938N;

    /* JADX INFO: renamed from: b */
    private Drawable f939b;

    /* JADX INFO: renamed from: c */
    private ColorStateList f940c;

    /* JADX INFO: renamed from: d */
    private PorterDuff.Mode f941d;

    /* JADX INFO: renamed from: e */
    private boolean f942e;

    /* JADX INFO: renamed from: f */
    private boolean f943f;

    /* JADX INFO: renamed from: g */
    private Drawable f944g;

    /* JADX INFO: renamed from: h */
    private ColorStateList f945h;

    /* JADX INFO: renamed from: i */
    private PorterDuff.Mode f946i;

    /* JADX INFO: renamed from: j */
    private boolean f947j;

    /* JADX INFO: renamed from: k */
    private boolean f948k;

    /* JADX INFO: renamed from: l */
    private int f949l;

    /* JADX INFO: renamed from: m */
    private int f950m;

    /* JADX INFO: renamed from: n */
    private int f951n;

    /* JADX INFO: renamed from: o */
    private boolean f952o;

    /* JADX INFO: renamed from: p */
    private CharSequence f953p;

    /* JADX INFO: renamed from: q */
    private CharSequence f954q;

    /* JADX INFO: renamed from: r */
    private boolean f955r;

    /* JADX INFO: renamed from: s */
    private int f956s;

    /* JADX INFO: renamed from: t */
    private int f957t;

    /* JADX INFO: renamed from: u */
    private float f958u;

    /* JADX INFO: renamed from: v */
    private float f959v;

    /* JADX INFO: renamed from: w */
    private VelocityTracker f960w;

    /* JADX INFO: renamed from: x */
    private int f961x;

    /* JADX INFO: renamed from: y */
    float f962y;

    /* JADX INFO: renamed from: z */
    private int f963z;

    /* JADX INFO: renamed from: androidx.appcompat.widget.SwitchCompat$a */
    class C0143a extends Property<SwitchCompat, Float> {
        C0143a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(SwitchCompat switchCompat) {
            return Float.valueOf(switchCompat.f962y);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(SwitchCompat switchCompat, Float f) {
            switchCompat.setThumbPosition(f.floatValue());
        }
    }

    public SwitchCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0493a.switchStyle);
    }

    /* JADX INFO: renamed from: a */
    private void m950a(boolean z) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, f923O, z ? 1.0f : CropImageView.DEFAULT_ASPECT_RATIO);
        this.f936L = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setDuration(250L);
        if (Build.VERSION.SDK_INT >= 18) {
            this.f936L.setAutoCancel(true);
        }
        this.f936L.start();
    }

    /* JADX INFO: renamed from: b */
    private void m951b() {
        if (this.f939b != null) {
            if (this.f942e || this.f943f) {
                Drawable drawableMutate = C0251a.m1797r(this.f939b).mutate();
                this.f939b = drawableMutate;
                if (this.f942e) {
                    C0251a.m1794o(drawableMutate, this.f940c);
                }
                if (this.f943f) {
                    C0251a.m1795p(this.f939b, this.f941d);
                }
                if (this.f939b.isStateful()) {
                    this.f939b.setState(getDrawableState());
                }
            }
        }
    }

    /* JADX INFO: renamed from: c */
    private void m952c() {
        if (this.f944g != null) {
            if (this.f947j || this.f948k) {
                Drawable drawableMutate = C0251a.m1797r(this.f944g).mutate();
                this.f944g = drawableMutate;
                if (this.f947j) {
                    C0251a.m1794o(drawableMutate, this.f945h);
                }
                if (this.f948k) {
                    C0251a.m1795p(this.f944g, this.f946i);
                }
                if (this.f944g.isStateful()) {
                    this.f944g.setState(getDrawableState());
                }
            }
        }
    }

    /* JADX INFO: renamed from: d */
    private void m953d() {
        ObjectAnimator objectAnimator = this.f936L;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    /* JADX INFO: renamed from: e */
    private void m954e(MotionEvent motionEvent) {
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        motionEventObtain.setAction(3);
        super.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
    }

    /* JADX INFO: renamed from: f */
    private static float m955f(float f, float f2, float f3) {
        return f < f2 ? f2 : f > f3 ? f3 : f;
    }

    /* JADX INFO: renamed from: g */
    private boolean m956g(float f, float f2) {
        if (this.f939b == null) {
            return false;
        }
        int thumbOffset = getThumbOffset();
        this.f939b.getPadding(this.f938N);
        int i = this.f928D;
        int i2 = this.f957t;
        int i3 = i - i2;
        int i4 = (this.f927C + thumbOffset) - i2;
        int i5 = this.f926B + i4;
        Rect rect = this.f938N;
        return f > ((float) i4) && f < ((float) (((i5 + rect.left) + rect.right) + i2)) && f2 > ((float) i3) && f2 < ((float) (this.f930F + i2));
    }

    private boolean getTargetCheckedState() {
        return this.f962y > 0.5f;
    }

    private int getThumbOffset() {
        return (int) (((C0154a1.m1022b(this) ? 1.0f - this.f962y : this.f962y) * getThumbScrollRange()) + 0.5f);
    }

    private int getThumbScrollRange() {
        Drawable drawable = this.f944g;
        if (drawable == null) {
            return 0;
        }
        Rect rect = this.f938N;
        drawable.getPadding(rect);
        Drawable drawable2 = this.f939b;
        Rect rectM1073d = drawable2 != null ? C0159c0.m1073d(drawable2) : C0159c0.f1062c;
        return ((((this.f963z - this.f926B) - rect.left) - rect.right) - rectM1073d.left) - rectM1073d.right;
    }

    /* JADX INFO: renamed from: h */
    private Layout m957h(CharSequence charSequence) {
        TransformationMethod transformationMethod = this.f935K;
        if (transformationMethod != null) {
            charSequence = transformationMethod.getTransformation(charSequence, this);
        }
        CharSequence charSequence2 = charSequence;
        return new StaticLayout(charSequence2, this.f931G, charSequence2 != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence2, r2)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, CropImageView.DEFAULT_ASPECT_RATIO, true);
    }

    /* JADX INFO: renamed from: i */
    private void m958i() {
        if (Build.VERSION.SDK_INT >= 30) {
            CharSequence string = this.f954q;
            if (string == null) {
                string = getResources().getString(C0500h.abc_capital_off);
            }
            C0292v.m2047C0(this, string);
        }
    }

    /* JADX INFO: renamed from: j */
    private void m959j() {
        if (Build.VERSION.SDK_INT >= 30) {
            CharSequence string = this.f953p;
            if (string == null) {
                string = getResources().getString(C0500h.abc_capital_on);
            }
            C0292v.m2047C0(this, string);
        }
    }

    /* JADX INFO: renamed from: m */
    private void m960m(int i, int i2) {
        m963l(i != 1 ? i != 2 ? i != 3 ? null : Typeface.MONOSPACE : Typeface.SERIF : Typeface.SANS_SERIF, i2);
    }

    /* JADX INFO: renamed from: n */
    private void m961n(MotionEvent motionEvent) {
        this.f956s = 0;
        boolean targetCheckedState = true;
        boolean z = motionEvent.getAction() == 1 && isEnabled();
        boolean zIsChecked = isChecked();
        if (z) {
            this.f960w.computeCurrentVelocity(1000);
            float xVelocity = this.f960w.getXVelocity();
            if (Math.abs(xVelocity) <= this.f961x) {
                targetCheckedState = getTargetCheckedState();
            } else if (!C0154a1.m1022b(this) ? xVelocity <= CropImageView.DEFAULT_ASPECT_RATIO : xVelocity >= CropImageView.DEFAULT_ASPECT_RATIO) {
                targetCheckedState = false;
            }
        } else {
            targetCheckedState = zIsChecked;
        }
        if (targetCheckedState != zIsChecked) {
            playSoundEffect(0);
        }
        setChecked(targetCheckedState);
        m954e(motionEvent);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i;
        int i2;
        Rect rect = this.f938N;
        int i3 = this.f927C;
        int i4 = this.f928D;
        int i5 = this.f929E;
        int i6 = this.f930F;
        int thumbOffset = getThumbOffset() + i3;
        Drawable drawable = this.f939b;
        Rect rectM1073d = drawable != null ? C0159c0.m1073d(drawable) : C0159c0.f1062c;
        Drawable drawable2 = this.f944g;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            int i7 = rect.left;
            thumbOffset += i7;
            if (rectM1073d != null) {
                int i8 = rectM1073d.left;
                if (i8 > i7) {
                    i3 += i8 - i7;
                }
                int i9 = rectM1073d.top;
                int i10 = rect.top;
                i = i9 > i10 ? (i9 - i10) + i4 : i4;
                int i11 = rectM1073d.right;
                int i12 = rect.right;
                if (i11 > i12) {
                    i5 -= i11 - i12;
                }
                int i13 = rectM1073d.bottom;
                int i14 = rect.bottom;
                if (i13 > i14) {
                    i2 = i6 - (i13 - i14);
                }
                this.f944g.setBounds(i3, i, i5, i2);
            } else {
                i = i4;
            }
            i2 = i6;
            this.f944g.setBounds(i3, i, i5, i2);
        }
        Drawable drawable3 = this.f939b;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i15 = thumbOffset - rect.left;
            int i16 = thumbOffset + this.f926B + rect.right;
            this.f939b.setBounds(i15, i4, i16, i6);
            Drawable background = getBackground();
            if (background != null) {
                C0251a.m1791l(background, i15, i4, i16, i6);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableHotspotChanged(float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.drawableHotspotChanged(f, f2);
        }
        Drawable drawable = this.f939b;
        if (drawable != null) {
            C0251a.m1790k(drawable, f, f2);
        }
        Drawable drawable2 = this.f944g;
        if (drawable2 != null) {
            C0251a.m1790k(drawable2, f, f2);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f939b;
        boolean state = false;
        if (drawable != null && drawable.isStateful()) {
            state = false | drawable.setState(drawableState);
        }
        Drawable drawable2 = this.f944g;
        if (drawable2 != null && drawable2.isStateful()) {
            state |= drawable2.setState(drawableState);
        }
        if (state) {
            invalidate();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        if (!C0154a1.m1022b(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.f963z;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingLeft + this.f951n : compoundPaddingLeft;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        if (C0154a1.m1022b(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.f963z;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingRight + this.f951n : compoundPaddingRight;
    }

    public boolean getShowText() {
        return this.f955r;
    }

    public boolean getSplitTrack() {
        return this.f952o;
    }

    public int getSwitchMinWidth() {
        return this.f950m;
    }

    public int getSwitchPadding() {
        return this.f951n;
    }

    public CharSequence getTextOff() {
        return this.f954q;
    }

    public CharSequence getTextOn() {
        return this.f953p;
    }

    public Drawable getThumbDrawable() {
        return this.f939b;
    }

    public int getThumbTextPadding() {
        return this.f949l;
    }

    public ColorStateList getThumbTintList() {
        return this.f940c;
    }

    public PorterDuff.Mode getThumbTintMode() {
        return this.f941d;
    }

    public Drawable getTrackDrawable() {
        return this.f944g;
    }

    public ColorStateList getTrackTintList() {
        return this.f945h;
    }

    public PorterDuff.Mode getTrackTintMode() {
        return this.f946i;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f939b;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f944g;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.f936L;
        if (objectAnimator == null || !objectAnimator.isStarted()) {
            return;
        }
        this.f936L.end();
        this.f936L = null;
    }

    /* JADX INFO: renamed from: k */
    public void m962k(Context context, int i) {
        C0195u0 c0195u0M1319t = C0195u0.m1319t(context, i, C0502j.TextAppearance);
        ColorStateList colorStateListM1324c = c0195u0M1319t.m1324c(C0502j.TextAppearance_android_textColor);
        if (colorStateListM1324c != null) {
            this.f932H = colorStateListM1324c;
        } else {
            this.f932H = getTextColors();
        }
        int iM1327f = c0195u0M1319t.m1327f(C0502j.TextAppearance_android_textSize, 0);
        if (iM1327f != 0) {
            float f = iM1327f;
            if (f != this.f931G.getTextSize()) {
                this.f931G.setTextSize(f);
                requestLayout();
            }
        }
        m960m(c0195u0M1319t.m1332k(C0502j.TextAppearance_android_typeface, -1), c0195u0M1319t.m1332k(C0502j.TextAppearance_android_textStyle, -1));
        if (c0195u0M1319t.m1322a(C0502j.TextAppearance_textAllCaps, false)) {
            this.f935K = new C0510a(getContext());
        } else {
            this.f935K = null;
        }
        c0195u0M1319t.m1341w();
    }

    /* JADX INFO: renamed from: l */
    public void m963l(Typeface typeface, int i) {
        float f = CropImageView.DEFAULT_ASPECT_RATIO;
        if (i <= 0) {
            this.f931G.setFakeBoldText(false);
            this.f931G.setTextSkewX(CropImageView.DEFAULT_ASPECT_RATIO);
            setSwitchTypeface(typeface);
            return;
        }
        Typeface typefaceDefaultFromStyle = typeface == null ? Typeface.defaultFromStyle(i) : Typeface.create(typeface, i);
        setSwitchTypeface(typefaceDefaultFromStyle);
        int style = ((typefaceDefaultFromStyle != null ? typefaceDefaultFromStyle.getStyle() : 0) ^ (-1)) & i;
        this.f931G.setFakeBoldText((style & 1) != 0);
        TextPaint textPaint = this.f931G;
        if ((style & 2) != 0) {
            f = -0.25f;
        }
        textPaint.setTextSkewX(f);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            CompoundButton.mergeDrawableStates(iArrOnCreateDrawableState, f924P);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        int width;
        super.onDraw(canvas);
        Rect rect = this.f938N;
        Drawable drawable = this.f944g;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i = this.f928D;
        int i2 = this.f930F;
        int i3 = i + rect.top;
        int i4 = i2 - rect.bottom;
        Drawable drawable2 = this.f939b;
        if (drawable != null) {
            if (!this.f952o || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                Rect rectM1073d = C0159c0.m1073d(drawable2);
                drawable2.copyBounds(rect);
                rect.left += rectM1073d.left;
                rect.right -= rectM1073d.right;
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
        Layout layout = getTargetCheckedState() ? this.f933I : this.f934J;
        if (layout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.f932H;
            if (colorStateList != null) {
                this.f931G.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            this.f931G.drawableState = drawableState;
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
            CharSequence charSequence = isChecked() ? this.f953p : this.f954q;
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
        if (this.f939b != null) {
            Rect rect = this.f938N;
            Drawable drawable = this.f944g;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect rectM1073d = C0159c0.m1073d(this.f939b);
            iMax = Math.max(0, rectM1073d.left - rect.left);
            iMax2 = Math.max(0, rectM1073d.right - rect.right);
        } else {
            iMax = 0;
        }
        if (C0154a1.m1022b(this)) {
            paddingLeft = getPaddingLeft() + iMax;
            width = ((this.f963z + paddingLeft) - iMax) - iMax2;
        } else {
            width = (getWidth() - getPaddingRight()) - iMax2;
            paddingLeft = (width - this.f963z) + iMax + iMax2;
        }
        int gravity = getGravity() & 112;
        if (gravity == 16) {
            int paddingTop2 = ((getPaddingTop() + getHeight()) - getPaddingBottom()) / 2;
            i5 = this.f925A;
            paddingTop = paddingTop2 - (i5 / 2);
        } else {
            if (gravity == 80) {
                height = getHeight() - getPaddingBottom();
                paddingTop = height - this.f925A;
                this.f927C = paddingLeft;
                this.f928D = paddingTop;
                this.f930F = height;
                this.f929E = width;
            }
            paddingTop = getPaddingTop();
            i5 = this.f925A;
        }
        height = i5 + paddingTop;
        this.f927C = paddingLeft;
        this.f928D = paddingTop;
        this.f930F = height;
        this.f929E = width;
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int intrinsicWidth;
        int intrinsicHeight;
        if (this.f955r) {
            if (this.f933I == null) {
                this.f933I = m957h(this.f953p);
            }
            if (this.f934J == null) {
                this.f934J = m957h(this.f954q);
            }
        }
        Rect rect = this.f938N;
        Drawable drawable = this.f939b;
        int intrinsicHeight2 = 0;
        if (drawable != null) {
            drawable.getPadding(rect);
            intrinsicWidth = (this.f939b.getIntrinsicWidth() - rect.left) - rect.right;
            intrinsicHeight = this.f939b.getIntrinsicHeight();
        } else {
            intrinsicWidth = 0;
            intrinsicHeight = 0;
        }
        this.f926B = Math.max(this.f955r ? Math.max(this.f933I.getWidth(), this.f934J.getWidth()) + (this.f949l * 2) : 0, intrinsicWidth);
        Drawable drawable2 = this.f944g;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            intrinsicHeight2 = this.f944g.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int iMax = rect.left;
        int iMax2 = rect.right;
        Drawable drawable3 = this.f939b;
        if (drawable3 != null) {
            Rect rectM1073d = C0159c0.m1073d(drawable3);
            iMax = Math.max(iMax, rectM1073d.left);
            iMax2 = Math.max(iMax2, rectM1073d.right);
        }
        int iMax3 = Math.max(this.f950m, (this.f926B * 2) + iMax + iMax2);
        int iMax4 = Math.max(intrinsicHeight2, intrinsicHeight);
        this.f963z = iMax3;
        this.f925A = iMax4;
        super.onMeasure(i, i2);
        if (getMeasuredHeight() < iMax4) {
            setMeasuredDimension(getMeasuredWidthAndState(), iMax4);
        }
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.f953p : this.f954q;
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
        this.f960w.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if (isEnabled() && m956g(x, y)) {
                this.f956s = 1;
                this.f958u = x;
                this.f959v = y;
            }
        } else if (actionMasked == 1) {
            if (this.f956s == 2) {
                m961n(motionEvent);
                super.onTouchEvent(motionEvent);
                return true;
            }
            this.f956s = 0;
            this.f960w.clear();
        } else if (actionMasked == 2) {
            int i = this.f956s;
            if (i == 1) {
                float x2 = motionEvent.getX();
                float y2 = motionEvent.getY();
                if (Math.abs(x2 - this.f958u) > this.f957t || Math.abs(y2 - this.f959v) > this.f957t) {
                    this.f956s = 2;
                    getParent().requestDisallowInterceptTouchEvent(true);
                    this.f958u = x2;
                    this.f959v = y2;
                    return true;
                }
            } else if (i == 2) {
                float x3 = motionEvent.getX();
                int thumbScrollRange = getThumbScrollRange();
                float f = x3 - this.f958u;
                float f2 = thumbScrollRange != 0 ? f / thumbScrollRange : f > CropImageView.DEFAULT_ASPECT_RATIO ? 1.0f : -1.0f;
                if (C0154a1.m1022b(this)) {
                    f2 = -f2;
                }
                float fM955f = m955f(this.f962y + f2, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f);
                if (fM955f != this.f962y) {
                    this.f958u = x3;
                    setThumbPosition(fM955f);
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
            m959j();
        } else {
            m958i();
        }
        if (getWindowToken() != null && C0292v.m2069T(this)) {
            m950a(zIsChecked);
        } else {
            m953d();
            setThumbPosition(zIsChecked ? 1.0f : CropImageView.DEFAULT_ASPECT_RATIO);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0308i.m2291p(this, callback));
    }

    public void setShowText(boolean z) {
        if (this.f955r != z) {
            this.f955r = z;
            requestLayout();
        }
    }

    public void setSplitTrack(boolean z) {
        this.f952o = z;
        invalidate();
    }

    public void setSwitchMinWidth(int i) {
        this.f950m = i;
        requestLayout();
    }

    public void setSwitchPadding(int i) {
        this.f951n = i;
        requestLayout();
    }

    public void setSwitchTypeface(Typeface typeface) {
        if ((this.f931G.getTypeface() == null || this.f931G.getTypeface().equals(typeface)) && (this.f931G.getTypeface() != null || typeface == null)) {
            return;
        }
        this.f931G.setTypeface(typeface);
        requestLayout();
        invalidate();
    }

    public void setTextOff(CharSequence charSequence) {
        this.f954q = charSequence;
        requestLayout();
        if (isChecked()) {
            return;
        }
        m958i();
    }

    public void setTextOn(CharSequence charSequence) {
        this.f953p = charSequence;
        requestLayout();
        if (isChecked()) {
            m959j();
        }
    }

    public void setThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.f939b;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f939b = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    void setThumbPosition(float f) {
        this.f962y = f;
        invalidate();
    }

    public void setThumbResource(int i) {
        setThumbDrawable(C0503a.m4047d(getContext(), i));
    }

    public void setThumbTextPadding(int i) {
        this.f949l = i;
        requestLayout();
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        this.f940c = colorStateList;
        this.f942e = true;
        m951b();
    }

    public void setThumbTintMode(PorterDuff.Mode mode) {
        this.f941d = mode;
        this.f943f = true;
        m951b();
    }

    public void setTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.f944g;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f944g = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i) {
        setTrackDrawable(C0503a.m4047d(getContext(), i));
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        this.f945h = colorStateList;
        this.f947j = true;
        m952c();
    }

    public void setTrackTintMode(PorterDuff.Mode mode) {
        this.f946i = mode;
        this.f948k = true;
        m952c();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f939b || drawable == this.f944g;
    }

    public SwitchCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f940c = null;
        this.f941d = null;
        this.f942e = false;
        this.f943f = false;
        this.f945h = null;
        this.f946i = null;
        this.f947j = false;
        this.f948k = false;
        this.f960w = VelocityTracker.obtain();
        this.f938N = new Rect();
        C0185p0.m1279a(this, getContext());
        this.f931G = new TextPaint(1);
        Resources resources = getResources();
        this.f931G.density = resources.getDisplayMetrics().density;
        C0195u0 c0195u0M1321v = C0195u0.m1321v(context, attributeSet, C0502j.SwitchCompat, i, 0);
        C0292v.m2101m0(this, context, C0502j.SwitchCompat, attributeSet, c0195u0M1321v.m1339r(), i, 0);
        Drawable drawableM1328g = c0195u0M1321v.m1328g(C0502j.SwitchCompat_android_thumb);
        this.f939b = drawableM1328g;
        if (drawableM1328g != null) {
            drawableM1328g.setCallback(this);
        }
        Drawable drawableM1328g2 = c0195u0M1321v.m1328g(C0502j.SwitchCompat_track);
        this.f944g = drawableM1328g2;
        if (drawableM1328g2 != null) {
            drawableM1328g2.setCallback(this);
        }
        this.f953p = c0195u0M1321v.m1337p(C0502j.SwitchCompat_android_textOn);
        this.f954q = c0195u0M1321v.m1337p(C0502j.SwitchCompat_android_textOff);
        this.f955r = c0195u0M1321v.m1322a(C0502j.SwitchCompat_showText, true);
        this.f949l = c0195u0M1321v.m1327f(C0502j.SwitchCompat_thumbTextPadding, 0);
        this.f950m = c0195u0M1321v.m1327f(C0502j.SwitchCompat_switchMinWidth, 0);
        this.f951n = c0195u0M1321v.m1327f(C0502j.SwitchCompat_switchPadding, 0);
        this.f952o = c0195u0M1321v.m1322a(C0502j.SwitchCompat_splitTrack, false);
        ColorStateList colorStateListM1324c = c0195u0M1321v.m1324c(C0502j.SwitchCompat_thumbTint);
        if (colorStateListM1324c != null) {
            this.f940c = colorStateListM1324c;
            this.f942e = true;
        }
        PorterDuff.Mode modeM1074e = C0159c0.m1074e(c0195u0M1321v.m1332k(C0502j.SwitchCompat_thumbTintMode, -1), null);
        if (this.f941d != modeM1074e) {
            this.f941d = modeM1074e;
            this.f943f = true;
        }
        if (this.f942e || this.f943f) {
            m951b();
        }
        ColorStateList colorStateListM1324c2 = c0195u0M1321v.m1324c(C0502j.SwitchCompat_trackTint);
        if (colorStateListM1324c2 != null) {
            this.f945h = colorStateListM1324c2;
            this.f947j = true;
        }
        PorterDuff.Mode modeM1074e2 = C0159c0.m1074e(c0195u0M1321v.m1332k(C0502j.SwitchCompat_trackTintMode, -1), null);
        if (this.f946i != modeM1074e2) {
            this.f946i = modeM1074e2;
            this.f948k = true;
        }
        if (this.f947j || this.f948k) {
            m952c();
        }
        int iM1335n = c0195u0M1321v.m1335n(C0502j.SwitchCompat_switchTextAppearance, 0);
        if (iM1335n != 0) {
            m962k(context, iM1335n);
        }
        C0198w c0198w = new C0198w(this);
        this.f937M = c0198w;
        c0198w.m1374m(attributeSet, i);
        c0195u0M1321v.m1341w();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f957t = viewConfiguration.getScaledTouchSlop();
        this.f961x = viewConfiguration.getScaledMinimumFlingVelocity();
        refreshDrawableState();
        setChecked(isChecked());
    }
}
