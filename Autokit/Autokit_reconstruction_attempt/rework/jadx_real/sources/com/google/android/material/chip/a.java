package com.google.android.material.chip;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.core.graphics.drawable.b;
import com.google.android.material.internal.h;
import com.google.android.material.internal.j;
import com.google.android.material.internal.l;
import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import d.c.a.a.a0.g;
import d.c.a.a.k;
import d.c.a.a.x.c;
import d.c.a.a.x.d;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class a extends g implements b, Drawable.Callback, h.b {
    private static final int[] J0 = {R.attr.state_enabled};
    private static final ShapeDrawable K0 = new ShapeDrawable(new OvalShape());
    private ColorStateList A;
    private PorterDuff.Mode A0;
    private float B;
    private int[] B0;
    private float C;
    private boolean C0;
    private ColorStateList D;
    private ColorStateList D0;
    private float E;
    private WeakReference<InterfaceC0108a> E0;
    private ColorStateList F;
    private TextUtils.TruncateAt F0;
    private CharSequence G;
    private boolean G0;
    private boolean H;
    private int H0;
    private Drawable I;
    private boolean I0;
    private ColorStateList J;
    private float K;
    private boolean L;
    private boolean M;
    private Drawable N;
    private Drawable O;
    private ColorStateList P;
    private float Q;
    private CharSequence R;
    private boolean S;
    private boolean T;
    private Drawable U;
    private ColorStateList V;
    private d.c.a.a.l.h W;
    private d.c.a.a.l.h X;
    private float Y;
    private float Z;
    private float a0;
    private float b0;
    private float c0;
    private float d0;
    private float e0;
    private float f0;
    private final Context g0;
    private final Paint h0;
    private final Paint i0;
    private final Paint.FontMetrics j0;
    private final RectF k0;
    private final PointF l0;
    private final Path m0;
    private final h n0;
    private int o0;
    private int p0;
    private int q0;
    private int r0;
    private int s0;
    private int t0;
    private boolean u0;
    private int v0;
    private int w0;
    private ColorFilter x0;
    private PorterDuffColorFilter y0;
    private ColorStateList z;
    private ColorStateList z0;

    /* JADX INFO: renamed from: com.google.android.material.chip.a$a, reason: collision with other inner class name */
    public interface InterfaceC0108a {
        void a();
    }

    private a(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.C = -1.0f;
        this.h0 = new Paint(1);
        this.j0 = new Paint.FontMetrics();
        this.k0 = new RectF();
        this.l0 = new PointF();
        this.m0 = new Path();
        this.w0 = 255;
        this.A0 = PorterDuff.Mode.SRC_IN;
        Paint paint = null;
        this.E0 = new WeakReference<>(null);
        M(context);
        this.g0 = context;
        h hVar = new h(this);
        this.n0 = hVar;
        this.G = BuildConfig.FLAVOR;
        hVar.e().density = context.getResources().getDisplayMetrics().density;
        this.i0 = null;
        if (0 != 0) {
            paint.setStyle(Paint.Style.STROKE);
        }
        setState(J0);
        j2(J0);
        this.G0 = true;
        if (d.c.a.a.y.b.a) {
            K0.setTint(-1);
        }
    }

    private void A0(Canvas canvas, Rect rect) {
        this.h0.setColor(this.s0);
        this.h0.setStyle(Paint.Style.FILL);
        this.k0.set(rect);
        if (!this.I0) {
            canvas.drawRoundRect(this.k0, G0(), G0(), this.h0);
        } else {
            h(new RectF(rect), this.m0);
            super.p(canvas, this.h0, this.m0, u());
        }
    }

    private void B0(Canvas canvas, Rect rect) {
        Paint paint = this.i0;
        if (paint != null) {
            paint.setColor(c.g.d.a.d(-16777216, 127));
            canvas.drawRect(rect, this.i0);
            if (L2() || K2()) {
                j0(rect, this.k0);
                canvas.drawRect(this.k0, this.i0);
            }
            if (this.G != null) {
                canvas.drawLine(rect.left, rect.exactCenterY(), rect.right, rect.exactCenterY(), this.i0);
            }
            if (M2()) {
                m0(rect, this.k0);
                canvas.drawRect(this.k0, this.i0);
            }
            this.i0.setColor(c.g.d.a.d(-65536, 127));
            l0(rect, this.k0);
            canvas.drawRect(this.k0, this.i0);
            this.i0.setColor(c.g.d.a.d(-16711936, 127));
            n0(rect, this.k0);
            canvas.drawRect(this.k0, this.i0);
        }
    }

    private void C0(Canvas canvas, Rect rect) {
        if (this.G != null) {
            Paint.Align alignR0 = r0(rect, this.l0);
            p0(rect, this.k0);
            if (this.n0.d() != null) {
                this.n0.e().drawableState = getState();
                this.n0.j(this.g0);
            }
            this.n0.e().setTextAlign(alignR0);
            int iSave = 0;
            boolean z = Math.round(this.n0.f(f1().toString())) > Math.round(this.k0.width());
            if (z) {
                iSave = canvas.save();
                canvas.clipRect(this.k0);
            }
            CharSequence charSequenceEllipsize = this.G;
            if (z && this.F0 != null) {
                charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, this.n0.e(), this.k0.width(), this.F0);
            }
            CharSequence charSequence = charSequenceEllipsize;
            int length = charSequence.length();
            PointF pointF = this.l0;
            canvas.drawText(charSequence, 0, length, pointF.x, pointF.y, this.n0.e());
            if (z) {
                canvas.restoreToCount(iSave);
            }
        }
    }

    private boolean K2() {
        return this.T && this.U != null && this.u0;
    }

    private boolean L2() {
        return this.H && this.I != null;
    }

    private boolean M2() {
        return this.M && this.N != null;
    }

    private void N2(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    private void O2() {
        this.D0 = this.C0 ? d.c.a.a.y.b.a(this.F) : null;
    }

    @TargetApi(21)
    private void P2() {
        this.O = new RippleDrawable(d.c.a.a.y.b.a(d1()), this.N, K0);
    }

    private float X0() {
        Drawable drawable = this.u0 ? this.U : this.I;
        if (this.K > CropImageView.DEFAULT_ASPECT_RATIO || drawable == null) {
            return this.K;
        }
        float fCeil = (float) Math.ceil(l.b(this.g0, 24));
        return ((float) drawable.getIntrinsicHeight()) <= fCeil ? drawable.getIntrinsicHeight() : fCeil;
    }

    private float Y0() {
        return (this.K > CropImageView.DEFAULT_ASPECT_RATIO || (this.u0 ? this.U : this.I) == null) ? this.K : r0.getIntrinsicWidth();
    }

    private void Z1(ColorStateList colorStateList) {
        if (this.z != colorStateList) {
            this.z = colorStateList;
            onStateChange(getState());
        }
    }

    private void i0(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        drawable.setCallback(this);
        androidx.core.graphics.drawable.a.m(drawable, androidx.core.graphics.drawable.a.f(this));
        drawable.setLevel(getLevel());
        drawable.setVisible(isVisible(), false);
        if (drawable == this.N) {
            if (drawable.isStateful()) {
                drawable.setState(U0());
            }
            androidx.core.graphics.drawable.a.o(drawable, this.P);
            return;
        }
        if (drawable.isStateful()) {
            drawable.setState(getState());
        }
        Drawable drawable2 = this.I;
        if (drawable == drawable2 && this.L) {
            androidx.core.graphics.drawable.a.o(drawable2, this.J);
        }
    }

    private void j0(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (L2() || K2()) {
            float f = this.Y + this.Z;
            float fY0 = Y0();
            if (androidx.core.graphics.drawable.a.f(this) == 0) {
                float f2 = rect.left + f;
                rectF.left = f2;
                rectF.right = f2 + fY0;
            } else {
                float f3 = rect.right - f;
                rectF.right = f3;
                rectF.left = f3 - fY0;
            }
            float fX0 = X0();
            float fExactCenterY = rect.exactCenterY() - (fX0 / 2.0f);
            rectF.top = fExactCenterY;
            rectF.bottom = fExactCenterY + fX0;
        }
    }

    private ColorFilter j1() {
        ColorFilter colorFilter = this.x0;
        return colorFilter != null ? colorFilter : this.y0;
    }

    private void l0(Rect rect, RectF rectF) {
        rectF.set(rect);
        if (M2()) {
            float f = this.f0 + this.e0 + this.Q + this.d0 + this.c0;
            if (androidx.core.graphics.drawable.a.f(this) == 0) {
                rectF.right = rect.right - f;
            } else {
                rectF.left = rect.left + f;
            }
        }
    }

    private static boolean l1(int[] iArr, int i) {
        if (iArr == null) {
            return false;
        }
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    private void m0(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (M2()) {
            float f = this.f0 + this.e0;
            if (androidx.core.graphics.drawable.a.f(this) == 0) {
                float f2 = rect.right - f;
                rectF.right = f2;
                rectF.left = f2 - this.Q;
            } else {
                float f3 = rect.left + f;
                rectF.left = f3;
                rectF.right = f3 + this.Q;
            }
            float fExactCenterY = rect.exactCenterY();
            float f4 = this.Q;
            float f5 = fExactCenterY - (f4 / 2.0f);
            rectF.top = f5;
            rectF.bottom = f5 + f4;
        }
    }

    private void n0(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (M2()) {
            float f = this.f0 + this.e0 + this.Q + this.d0 + this.c0;
            if (androidx.core.graphics.drawable.a.f(this) == 0) {
                float f2 = rect.right;
                rectF.right = f2;
                rectF.left = f2 - f;
            } else {
                int i = rect.left;
                rectF.left = i;
                rectF.right = i + f;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    private void p0(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (this.G != null) {
            float fK0 = this.Y + k0() + this.b0;
            float fO0 = this.f0 + o0() + this.c0;
            if (androidx.core.graphics.drawable.a.f(this) == 0) {
                rectF.left = rect.left + fK0;
                rectF.right = rect.right - fO0;
            } else {
                rectF.left = rect.left + fO0;
                rectF.right = rect.right - fK0;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    private static boolean p1(ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    private float q0() {
        this.n0.e().getFontMetrics(this.j0);
        Paint.FontMetrics fontMetrics = this.j0;
        return (fontMetrics.descent + fontMetrics.ascent) / 2.0f;
    }

    private static boolean q1(Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    private static boolean r1(d dVar) {
        ColorStateList colorStateList;
        return (dVar == null || (colorStateList = dVar.a) == null || !colorStateList.isStateful()) ? false : true;
    }

    private boolean s0() {
        return this.T && this.U != null && this.S;
    }

    private void s1(AttributeSet attributeSet, int i, int i2) {
        TypedArray typedArrayH = j.h(this.g0, attributeSet, k.Chip, i, i2, new int[0]);
        this.I0 = typedArrayH.hasValue(k.Chip_shapeAppearance);
        Z1(c.a(this.g0, typedArrayH, k.Chip_chipSurfaceColor));
        D1(c.a(this.g0, typedArrayH, k.Chip_chipBackgroundColor));
        R1(typedArrayH.getDimension(k.Chip_chipMinHeight, CropImageView.DEFAULT_ASPECT_RATIO));
        if (typedArrayH.hasValue(k.Chip_chipCornerRadius)) {
            F1(typedArrayH.getDimension(k.Chip_chipCornerRadius, CropImageView.DEFAULT_ASPECT_RATIO));
        }
        V1(c.a(this.g0, typedArrayH, k.Chip_chipStrokeColor));
        X1(typedArrayH.getDimension(k.Chip_chipStrokeWidth, CropImageView.DEFAULT_ASPECT_RATIO));
        w2(c.a(this.g0, typedArrayH, k.Chip_rippleColor));
        B2(typedArrayH.getText(k.Chip_android_text));
        d dVarF = c.f(this.g0, typedArrayH, k.Chip_android_textAppearance);
        dVarF.k = typedArrayH.getDimension(k.Chip_android_textSize, dVarF.k);
        C2(dVarF);
        int i3 = typedArrayH.getInt(k.Chip_android_ellipsize, 0);
        if (i3 == 1) {
            o2(TextUtils.TruncateAt.START);
        } else if (i3 == 2) {
            o2(TextUtils.TruncateAt.MIDDLE);
        } else if (i3 == 3) {
            o2(TextUtils.TruncateAt.END);
        }
        Q1(typedArrayH.getBoolean(k.Chip_chipIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") == null) {
            Q1(typedArrayH.getBoolean(k.Chip_chipIconEnabled, false));
        }
        J1(c.d(this.g0, typedArrayH, k.Chip_chipIcon));
        if (typedArrayH.hasValue(k.Chip_chipIconTint)) {
            N1(c.a(this.g0, typedArrayH, k.Chip_chipIconTint));
        }
        L1(typedArrayH.getDimension(k.Chip_chipIconSize, -1.0f));
        m2(typedArrayH.getBoolean(k.Chip_closeIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") == null) {
            m2(typedArrayH.getBoolean(k.Chip_closeIconEnabled, false));
        }
        a2(c.d(this.g0, typedArrayH, k.Chip_closeIcon));
        k2(c.a(this.g0, typedArrayH, k.Chip_closeIconTint));
        f2(typedArrayH.getDimension(k.Chip_closeIconSize, CropImageView.DEFAULT_ASPECT_RATIO));
        v1(typedArrayH.getBoolean(k.Chip_android_checkable, false));
        C1(typedArrayH.getBoolean(k.Chip_checkedIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") == null) {
            C1(typedArrayH.getBoolean(k.Chip_checkedIconEnabled, false));
        }
        x1(c.d(this.g0, typedArrayH, k.Chip_checkedIcon));
        if (typedArrayH.hasValue(k.Chip_checkedIconTint)) {
            z1(c.a(this.g0, typedArrayH, k.Chip_checkedIconTint));
        }
        z2(d.c.a.a.l.h.b(this.g0, typedArrayH, k.Chip_showMotionSpec));
        p2(d.c.a.a.l.h.b(this.g0, typedArrayH, k.Chip_hideMotionSpec));
        T1(typedArrayH.getDimension(k.Chip_chipStartPadding, CropImageView.DEFAULT_ASPECT_RATIO));
        t2(typedArrayH.getDimension(k.Chip_iconStartPadding, CropImageView.DEFAULT_ASPECT_RATIO));
        r2(typedArrayH.getDimension(k.Chip_iconEndPadding, CropImageView.DEFAULT_ASPECT_RATIO));
        G2(typedArrayH.getDimension(k.Chip_textStartPadding, CropImageView.DEFAULT_ASPECT_RATIO));
        E2(typedArrayH.getDimension(k.Chip_textEndPadding, CropImageView.DEFAULT_ASPECT_RATIO));
        h2(typedArrayH.getDimension(k.Chip_closeIconStartPadding, CropImageView.DEFAULT_ASPECT_RATIO));
        c2(typedArrayH.getDimension(k.Chip_closeIconEndPadding, CropImageView.DEFAULT_ASPECT_RATIO));
        H1(typedArrayH.getDimension(k.Chip_chipEndPadding, CropImageView.DEFAULT_ASPECT_RATIO));
        v2(typedArrayH.getDimensionPixelSize(k.Chip_android_maxWidth, Integer.MAX_VALUE));
        typedArrayH.recycle();
    }

    public static a t0(Context context, AttributeSet attributeSet, int i, int i2) {
        a aVar = new a(context, attributeSet, i, i2);
        aVar.s1(attributeSet, i, i2);
        return aVar;
    }

    private void u0(Canvas canvas, Rect rect) {
        if (K2()) {
            j0(rect, this.k0);
            RectF rectF = this.k0;
            float f = rectF.left;
            float f2 = rectF.top;
            canvas.translate(f, f2);
            this.U.setBounds(0, 0, (int) this.k0.width(), (int) this.k0.height());
            this.U.draw(canvas);
            canvas.translate(-f, -f2);
        }
    }

    private boolean u1(int[] iArr, int[] iArr2) {
        boolean z;
        boolean zOnStateChange = super.onStateChange(iArr);
        ColorStateList colorStateList = this.z;
        int iL = l(colorStateList != null ? colorStateList.getColorForState(iArr, this.o0) : 0);
        boolean state = true;
        if (this.o0 != iL) {
            this.o0 = iL;
            zOnStateChange = true;
        }
        ColorStateList colorStateList2 = this.A;
        int iL2 = l(colorStateList2 != null ? colorStateList2.getColorForState(iArr, this.p0) : 0);
        if (this.p0 != iL2) {
            this.p0 = iL2;
            zOnStateChange = true;
        }
        int iE = d.c.a.a.q.a.e(iL, iL2);
        if ((this.q0 != iE) | (x() == null)) {
            this.q0 = iE;
            W(ColorStateList.valueOf(iE));
            zOnStateChange = true;
        }
        ColorStateList colorStateList3 = this.D;
        int colorForState = colorStateList3 != null ? colorStateList3.getColorForState(iArr, this.r0) : 0;
        if (this.r0 != colorForState) {
            this.r0 = colorForState;
            zOnStateChange = true;
        }
        int colorForState2 = (this.D0 == null || !d.c.a.a.y.b.b(iArr)) ? 0 : this.D0.getColorForState(iArr, this.s0);
        if (this.s0 != colorForState2) {
            this.s0 = colorForState2;
            if (this.C0) {
                zOnStateChange = true;
            }
        }
        int colorForState3 = (this.n0.d() == null || this.n0.d().a == null) ? 0 : this.n0.d().a.getColorForState(iArr, this.t0);
        if (this.t0 != colorForState3) {
            this.t0 = colorForState3;
            zOnStateChange = true;
        }
        boolean z2 = l1(getState(), R.attr.state_checked) && this.S;
        if (this.u0 == z2 || this.U == null) {
            z = false;
        } else {
            float fK0 = k0();
            this.u0 = z2;
            if (fK0 != k0()) {
                zOnStateChange = true;
                z = true;
            } else {
                zOnStateChange = true;
                z = false;
            }
        }
        ColorStateList colorStateList4 = this.z0;
        int colorForState4 = colorStateList4 != null ? colorStateList4.getColorForState(iArr, this.v0) : 0;
        if (this.v0 != colorForState4) {
            this.v0 = colorForState4;
            this.y0 = d.c.a.a.s.a.a(this, this.z0, this.A0);
        } else {
            state = zOnStateChange;
        }
        if (q1(this.I)) {
            state |= this.I.setState(iArr);
        }
        if (q1(this.U)) {
            state |= this.U.setState(iArr);
        }
        if (q1(this.N)) {
            int[] iArr3 = new int[iArr.length + iArr2.length];
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
            state |= this.N.setState(iArr3);
        }
        if (d.c.a.a.y.b.a && q1(this.O)) {
            state |= this.O.setState(iArr2);
        }
        if (state) {
            invalidateSelf();
        }
        if (z) {
            t1();
        }
        return state;
    }

    private void v0(Canvas canvas, Rect rect) {
        if (this.I0) {
            return;
        }
        this.h0.setColor(this.p0);
        this.h0.setStyle(Paint.Style.FILL);
        this.h0.setColorFilter(j1());
        this.k0.set(rect);
        canvas.drawRoundRect(this.k0, G0(), G0(), this.h0);
    }

    private void w0(Canvas canvas, Rect rect) {
        if (L2()) {
            j0(rect, this.k0);
            RectF rectF = this.k0;
            float f = rectF.left;
            float f2 = rectF.top;
            canvas.translate(f, f2);
            this.I.setBounds(0, 0, (int) this.k0.width(), (int) this.k0.height());
            this.I.draw(canvas);
            canvas.translate(-f, -f2);
        }
    }

    private void x0(Canvas canvas, Rect rect) {
        if (this.E <= CropImageView.DEFAULT_ASPECT_RATIO || this.I0) {
            return;
        }
        this.h0.setColor(this.r0);
        this.h0.setStyle(Paint.Style.STROKE);
        if (!this.I0) {
            this.h0.setColorFilter(j1());
        }
        RectF rectF = this.k0;
        float f = rect.left;
        float f2 = this.E;
        rectF.set(f + (f2 / 2.0f), rect.top + (f2 / 2.0f), rect.right - (f2 / 2.0f), rect.bottom - (f2 / 2.0f));
        float f3 = this.C - (this.E / 2.0f);
        canvas.drawRoundRect(this.k0, f3, f3, this.h0);
    }

    private void y0(Canvas canvas, Rect rect) {
        if (this.I0) {
            return;
        }
        this.h0.setColor(this.o0);
        this.h0.setStyle(Paint.Style.FILL);
        this.k0.set(rect);
        canvas.drawRoundRect(this.k0, G0(), G0(), this.h0);
    }

    private void z0(Canvas canvas, Rect rect) {
        if (M2()) {
            m0(rect, this.k0);
            RectF rectF = this.k0;
            float f = rectF.left;
            float f2 = rectF.top;
            canvas.translate(f, f2);
            this.N.setBounds(0, 0, (int) this.k0.width(), (int) this.k0.height());
            if (d.c.a.a.y.b.a) {
                this.O.setBounds(this.N.getBounds());
                this.O.jumpToCurrentState();
                this.O.draw(canvas);
            } else {
                this.N.draw(canvas);
            }
            canvas.translate(-f, -f2);
        }
    }

    public void A1(int i) {
        z1(c.a.k.a.a.c(this.g0, i));
    }

    public void A2(int i) {
        z2(d.c.a.a.l.h.c(this.g0, i));
    }

    public void B1(int i) {
        C1(this.g0.getResources().getBoolean(i));
    }

    public void B2(CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = BuildConfig.FLAVOR;
        }
        if (TextUtils.equals(this.G, charSequence)) {
            return;
        }
        this.G = charSequence;
        this.n0.i(true);
        invalidateSelf();
        t1();
    }

    public void C1(boolean z) {
        if (this.T != z) {
            boolean zK2 = K2();
            this.T = z;
            boolean zK22 = K2();
            if (zK2 != zK22) {
                if (zK22) {
                    i0(this.U);
                } else {
                    N2(this.U);
                }
                invalidateSelf();
                t1();
            }
        }
    }

    public void C2(d dVar) {
        this.n0.h(dVar, this.g0);
    }

    public Drawable D0() {
        return this.U;
    }

    public void D1(ColorStateList colorStateList) {
        if (this.A != colorStateList) {
            this.A = colorStateList;
            onStateChange(getState());
        }
    }

    public void D2(int i) {
        C2(new d(this.g0, i));
    }

    public ColorStateList E0() {
        return this.V;
    }

    public void E1(int i) {
        D1(c.a.k.a.a.c(this.g0, i));
    }

    public void E2(float f) {
        if (this.c0 != f) {
            this.c0 = f;
            invalidateSelf();
            t1();
        }
    }

    public ColorStateList F0() {
        return this.A;
    }

    @Deprecated
    public void F1(float f) {
        if (this.C != f) {
            this.C = f;
            setShapeAppearanceModel(C().w(f));
        }
    }

    public void F2(int i) {
        E2(this.g0.getResources().getDimension(i));
    }

    public float G0() {
        return this.I0 ? F() : this.C;
    }

    @Deprecated
    public void G1(int i) {
        F1(this.g0.getResources().getDimension(i));
    }

    public void G2(float f) {
        if (this.b0 != f) {
            this.b0 = f;
            invalidateSelf();
            t1();
        }
    }

    public float H0() {
        return this.f0;
    }

    public void H1(float f) {
        if (this.f0 != f) {
            this.f0 = f;
            invalidateSelf();
            t1();
        }
    }

    public void H2(int i) {
        G2(this.g0.getResources().getDimension(i));
    }

    public Drawable I0() {
        Drawable drawable = this.I;
        if (drawable != null) {
            return androidx.core.graphics.drawable.a.q(drawable);
        }
        return null;
    }

    public void I1(int i) {
        H1(this.g0.getResources().getDimension(i));
    }

    public void I2(boolean z) {
        if (this.C0 != z) {
            this.C0 = z;
            O2();
            onStateChange(getState());
        }
    }

    public float J0() {
        return this.K;
    }

    public void J1(Drawable drawable) {
        Drawable drawableI0 = I0();
        if (drawableI0 != drawable) {
            float fK0 = k0();
            this.I = drawable != null ? androidx.core.graphics.drawable.a.r(drawable).mutate() : null;
            float fK02 = k0();
            N2(drawableI0);
            if (L2()) {
                i0(this.I);
            }
            invalidateSelf();
            if (fK0 != fK02) {
                t1();
            }
        }
    }

    boolean J2() {
        return this.G0;
    }

    public ColorStateList K0() {
        return this.J;
    }

    public void K1(int i) {
        J1(c.a.k.a.a.d(this.g0, i));
    }

    public float L0() {
        return this.B;
    }

    public void L1(float f) {
        if (this.K != f) {
            float fK0 = k0();
            this.K = f;
            float fK02 = k0();
            invalidateSelf();
            if (fK0 != fK02) {
                t1();
            }
        }
    }

    public float M0() {
        return this.Y;
    }

    public void M1(int i) {
        L1(this.g0.getResources().getDimension(i));
    }

    public ColorStateList N0() {
        return this.D;
    }

    public void N1(ColorStateList colorStateList) {
        this.L = true;
        if (this.J != colorStateList) {
            this.J = colorStateList;
            if (L2()) {
                androidx.core.graphics.drawable.a.o(this.I, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public float O0() {
        return this.E;
    }

    public void O1(int i) {
        N1(c.a.k.a.a.c(this.g0, i));
    }

    public Drawable P0() {
        Drawable drawable = this.N;
        if (drawable != null) {
            return androidx.core.graphics.drawable.a.q(drawable);
        }
        return null;
    }

    public void P1(int i) {
        Q1(this.g0.getResources().getBoolean(i));
    }

    public CharSequence Q0() {
        return this.R;
    }

    public void Q1(boolean z) {
        if (this.H != z) {
            boolean zL2 = L2();
            this.H = z;
            boolean zL22 = L2();
            if (zL2 != zL22) {
                if (zL22) {
                    i0(this.I);
                } else {
                    N2(this.I);
                }
                invalidateSelf();
                t1();
            }
        }
    }

    public float R0() {
        return this.e0;
    }

    public void R1(float f) {
        if (this.B != f) {
            this.B = f;
            invalidateSelf();
            t1();
        }
    }

    public float S0() {
        return this.Q;
    }

    public void S1(int i) {
        R1(this.g0.getResources().getDimension(i));
    }

    public float T0() {
        return this.d0;
    }

    public void T1(float f) {
        if (this.Y != f) {
            this.Y = f;
            invalidateSelf();
            t1();
        }
    }

    public int[] U0() {
        return this.B0;
    }

    public void U1(int i) {
        T1(this.g0.getResources().getDimension(i));
    }

    public ColorStateList V0() {
        return this.P;
    }

    public void V1(ColorStateList colorStateList) {
        if (this.D != colorStateList) {
            this.D = colorStateList;
            if (this.I0) {
                d0(colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void W0(RectF rectF) {
        n0(getBounds(), rectF);
    }

    public void W1(int i) {
        V1(c.a.k.a.a.c(this.g0, i));
    }

    public void X1(float f) {
        if (this.E != f) {
            this.E = f;
            this.h0.setStrokeWidth(f);
            if (this.I0) {
                super.e0(f);
            }
            invalidateSelf();
        }
    }

    public void Y1(int i) {
        X1(this.g0.getResources().getDimension(i));
    }

    public TextUtils.TruncateAt Z0() {
        return this.F0;
    }

    @Override // com.google.android.material.internal.h.b
    public void a() {
        t1();
        invalidateSelf();
    }

    public d.c.a.a.l.h a1() {
        return this.X;
    }

    public void a2(Drawable drawable) {
        Drawable drawableP0 = P0();
        if (drawableP0 != drawable) {
            float fO0 = o0();
            this.N = drawable != null ? androidx.core.graphics.drawable.a.r(drawable).mutate() : null;
            if (d.c.a.a.y.b.a) {
                P2();
            }
            float fO02 = o0();
            N2(drawableP0);
            if (M2()) {
                i0(this.N);
            }
            invalidateSelf();
            if (fO0 != fO02) {
                t1();
            }
        }
    }

    public float b1() {
        return this.a0;
    }

    public void b2(CharSequence charSequence) {
        if (this.R != charSequence) {
            this.R = c.g.i.a.c().h(charSequence);
            invalidateSelf();
        }
    }

    public float c1() {
        return this.Z;
    }

    public void c2(float f) {
        if (this.e0 != f) {
            this.e0 = f;
            invalidateSelf();
            if (M2()) {
                t1();
            }
        }
    }

    public ColorStateList d1() {
        return this.F;
    }

    public void d2(int i) {
        c2(this.g0.getResources().getDimension(i));
    }

    @Override // d.c.a.a.a0.g, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        if (bounds.isEmpty() || getAlpha() == 0) {
            return;
        }
        int i = this.w0;
        int iA = i < 255 ? d.c.a.a.m.a.a(canvas, bounds.left, bounds.top, bounds.right, bounds.bottom, i) : 0;
        y0(canvas, bounds);
        v0(canvas, bounds);
        if (this.I0) {
            super.draw(canvas);
        }
        x0(canvas, bounds);
        A0(canvas, bounds);
        w0(canvas, bounds);
        u0(canvas, bounds);
        if (this.G0) {
            C0(canvas, bounds);
        }
        z0(canvas, bounds);
        B0(canvas, bounds);
        if (this.w0 < 255) {
            canvas.restoreToCount(iA);
        }
    }

    public d.c.a.a.l.h e1() {
        return this.W;
    }

    public void e2(int i) {
        a2(c.a.k.a.a.d(this.g0, i));
    }

    public CharSequence f1() {
        return this.G;
    }

    public void f2(float f) {
        if (this.Q != f) {
            this.Q = f;
            invalidateSelf();
            if (M2()) {
                t1();
            }
        }
    }

    public d g1() {
        return this.n0.d();
    }

    public void g2(int i) {
        f2(this.g0.getResources().getDimension(i));
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.w0;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.x0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.B;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return Math.min(Math.round(this.Y + k0() + this.b0 + this.n0.f(f1().toString()) + this.c0 + o0() + this.f0), this.H0);
    }

    @Override // d.c.a.a.a0.g, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // d.c.a.a.a0.g, android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(Outline outline) {
        if (this.I0) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), getIntrinsicHeight(), this.C);
        } else {
            outline.setRoundRect(bounds, this.C);
        }
        outline.setAlpha(getAlpha() / 255.0f);
    }

    public float h1() {
        return this.c0;
    }

    public void h2(float f) {
        if (this.d0 != f) {
            this.d0 = f;
            invalidateSelf();
            if (M2()) {
                t1();
            }
        }
    }

    public float i1() {
        return this.b0;
    }

    public void i2(int i) {
        h2(this.g0.getResources().getDimension(i));
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // d.c.a.a.a0.g, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return p1(this.z) || p1(this.A) || p1(this.D) || (this.C0 && p1(this.D0)) || r1(this.n0.d()) || s0() || q1(this.I) || q1(this.U) || p1(this.z0);
    }

    public boolean j2(int[] iArr) {
        if (Arrays.equals(this.B0, iArr)) {
            return false;
        }
        this.B0 = iArr;
        if (M2()) {
            return u1(getState(), iArr);
        }
        return false;
    }

    float k0() {
        return (L2() || K2()) ? this.Z + Y0() + this.a0 : CropImageView.DEFAULT_ASPECT_RATIO;
    }

    public boolean k1() {
        return this.C0;
    }

    public void k2(ColorStateList colorStateList) {
        if (this.P != colorStateList) {
            this.P = colorStateList;
            if (M2()) {
                androidx.core.graphics.drawable.a.o(this.N, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void l2(int i) {
        k2(c.a.k.a.a.c(this.g0, i));
    }

    public boolean m1() {
        return this.S;
    }

    public void m2(boolean z) {
        if (this.M != z) {
            boolean zM2 = M2();
            this.M = z;
            boolean zM22 = M2();
            if (zM2 != zM22) {
                if (zM22) {
                    i0(this.N);
                } else {
                    N2(this.N);
                }
                invalidateSelf();
                t1();
            }
        }
    }

    public boolean n1() {
        return q1(this.N);
    }

    public void n2(InterfaceC0108a interfaceC0108a) {
        this.E0 = new WeakReference<>(interfaceC0108a);
    }

    float o0() {
        return M2() ? this.d0 + this.Q + this.e0 : CropImageView.DEFAULT_ASPECT_RATIO;
    }

    public boolean o1() {
        return this.M;
    }

    public void o2(TextUtils.TruncateAt truncateAt) {
        this.F0 = truncateAt;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        boolean zOnLayoutDirectionChanged = super.onLayoutDirectionChanged(i);
        if (L2()) {
            zOnLayoutDirectionChanged |= androidx.core.graphics.drawable.a.m(this.I, i);
        }
        if (K2()) {
            zOnLayoutDirectionChanged |= androidx.core.graphics.drawable.a.m(this.U, i);
        }
        if (M2()) {
            zOnLayoutDirectionChanged |= androidx.core.graphics.drawable.a.m(this.N, i);
        }
        if (!zOnLayoutDirectionChanged) {
            return true;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        boolean zOnLevelChange = super.onLevelChange(i);
        if (L2()) {
            zOnLevelChange |= this.I.setLevel(i);
        }
        if (K2()) {
            zOnLevelChange |= this.U.setLevel(i);
        }
        if (M2()) {
            zOnLevelChange |= this.N.setLevel(i);
        }
        if (zOnLevelChange) {
            invalidateSelf();
        }
        return zOnLevelChange;
    }

    @Override // d.c.a.a.a0.g, android.graphics.drawable.Drawable, com.google.android.material.internal.h.b
    public boolean onStateChange(int[] iArr) {
        if (this.I0) {
            super.onStateChange(iArr);
        }
        return u1(iArr, U0());
    }

    public void p2(d.c.a.a.l.h hVar) {
        this.X = hVar;
    }

    public void q2(int i) {
        p2(d.c.a.a.l.h.c(this.g0, i));
    }

    Paint.Align r0(Rect rect, PointF pointF) {
        pointF.set(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO);
        Paint.Align align = Paint.Align.LEFT;
        if (this.G != null) {
            float fK0 = this.Y + k0() + this.b0;
            if (androidx.core.graphics.drawable.a.f(this) == 0) {
                pointF.x = rect.left + fK0;
                align = Paint.Align.LEFT;
            } else {
                pointF.x = rect.right - fK0;
                align = Paint.Align.RIGHT;
            }
            pointF.y = rect.centerY() - q0();
        }
        return align;
    }

    public void r2(float f) {
        if (this.a0 != f) {
            float fK0 = k0();
            this.a0 = f;
            float fK02 = k0();
            invalidateSelf();
            if (fK0 != fK02) {
                t1();
            }
        }
    }

    public void s2(int i) {
        r2(this.g0.getResources().getDimension(i));
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // d.c.a.a.a0.g, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.w0 != i) {
            this.w0 = i;
            invalidateSelf();
        }
    }

    @Override // d.c.a.a.a0.g, android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.x0 != colorFilter) {
            this.x0 = colorFilter;
            invalidateSelf();
        }
    }

    @Override // d.c.a.a.a0.g, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintList(ColorStateList colorStateList) {
        if (this.z0 != colorStateList) {
            this.z0 = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // d.c.a.a.a0.g, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintMode(PorterDuff.Mode mode) {
        if (this.A0 != mode) {
            this.A0 = mode;
            this.y0 = d.c.a.a.s.a.a(this, this.z0, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (L2()) {
            visible |= this.I.setVisible(z, z2);
        }
        if (K2()) {
            visible |= this.U.setVisible(z, z2);
        }
        if (M2()) {
            visible |= this.N.setVisible(z, z2);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    protected void t1() {
        InterfaceC0108a interfaceC0108a = this.E0.get();
        if (interfaceC0108a != null) {
            interfaceC0108a.a();
        }
    }

    public void t2(float f) {
        if (this.Z != f) {
            float fK0 = k0();
            this.Z = f;
            float fK02 = k0();
            invalidateSelf();
            if (fK0 != fK02) {
                t1();
            }
        }
    }

    public void u2(int i) {
        t2(this.g0.getResources().getDimension(i));
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public void v1(boolean z) {
        if (this.S != z) {
            this.S = z;
            float fK0 = k0();
            if (!z && this.u0) {
                this.u0 = false;
            }
            float fK02 = k0();
            invalidateSelf();
            if (fK0 != fK02) {
                t1();
            }
        }
    }

    public void v2(int i) {
        this.H0 = i;
    }

    public void w1(int i) {
        v1(this.g0.getResources().getBoolean(i));
    }

    public void w2(ColorStateList colorStateList) {
        if (this.F != colorStateList) {
            this.F = colorStateList;
            O2();
            onStateChange(getState());
        }
    }

    public void x1(Drawable drawable) {
        if (this.U != drawable) {
            float fK0 = k0();
            this.U = drawable;
            float fK02 = k0();
            N2(this.U);
            i0(this.U);
            invalidateSelf();
            if (fK0 != fK02) {
                t1();
            }
        }
    }

    public void x2(int i) {
        w2(c.a.k.a.a.c(this.g0, i));
    }

    public void y1(int i) {
        x1(c.a.k.a.a.d(this.g0, i));
    }

    void y2(boolean z) {
        this.G0 = z;
    }

    public void z1(ColorStateList colorStateList) {
        if (this.V != colorStateList) {
            this.V = colorStateList;
            if (s0()) {
                androidx.core.graphics.drawable.a.o(this.U, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void z2(d.c.a.a.l.h hVar) {
        this.W = hVar;
    }
}
