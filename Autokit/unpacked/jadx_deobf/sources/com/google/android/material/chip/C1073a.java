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
import androidx.core.graphics.drawable.C0251a;
import androidx.core.graphics.drawable.InterfaceC0252b;
import com.google.android.material.internal.C1119h;
import com.google.android.material.internal.C1121j;
import com.google.android.material.internal.C1123l;
import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import p016c.p017a.p018k.p019a.C0503a;
import p016c.p041g.p042d.C0588a;
import p016c.p041g.p048i.C0613a;
import p093d.p099c.p100a.p101a.C1226k;
import p093d.p099c.p100a.p101a.p102a0.C1208g;
import p093d.p099c.p100a.p101a.p104l.C1234h;
import p093d.p099c.p100a.p101a.p105m.C1238a;
import p093d.p099c.p100a.p101a.p110q.C1247a;
import p093d.p099c.p100a.p101a.p112s.C1249a;
import p093d.p099c.p100a.p101a.p117x.C1257c;
import p093d.p099c.p100a.p101a.p117x.C1258d;
import p093d.p099c.p100a.p101a.p118y.C1262b;

/* JADX INFO: renamed from: com.google.android.material.chip.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1073a extends C1208g implements InterfaceC0252b, Drawable.Callback, C1119h.b {

    /* JADX INFO: renamed from: J0 */
    private static final int[] f6786J0 = {R.attr.state_enabled};

    /* JADX INFO: renamed from: K0 */
    private static final ShapeDrawable f6787K0 = new ShapeDrawable(new OvalShape());

    /* JADX INFO: renamed from: A */
    private ColorStateList f6788A;

    /* JADX INFO: renamed from: A0 */
    private PorterDuff.Mode f6789A0;

    /* JADX INFO: renamed from: B */
    private float f6790B;

    /* JADX INFO: renamed from: B0 */
    private int[] f6791B0;

    /* JADX INFO: renamed from: C */
    private float f6792C;

    /* JADX INFO: renamed from: C0 */
    private boolean f6793C0;

    /* JADX INFO: renamed from: D */
    private ColorStateList f6794D;

    /* JADX INFO: renamed from: D0 */
    private ColorStateList f6795D0;

    /* JADX INFO: renamed from: E */
    private float f6796E;

    /* JADX INFO: renamed from: E0 */
    private WeakReference<a> f6797E0;

    /* JADX INFO: renamed from: F */
    private ColorStateList f6798F;

    /* JADX INFO: renamed from: F0 */
    private TextUtils.TruncateAt f6799F0;

    /* JADX INFO: renamed from: G */
    private CharSequence f6800G;

    /* JADX INFO: renamed from: G0 */
    private boolean f6801G0;

    /* JADX INFO: renamed from: H */
    private boolean f6802H;

    /* JADX INFO: renamed from: H0 */
    private int f6803H0;

    /* JADX INFO: renamed from: I */
    private Drawable f6804I;

    /* JADX INFO: renamed from: I0 */
    private boolean f6805I0;

    /* JADX INFO: renamed from: J */
    private ColorStateList f6806J;

    /* JADX INFO: renamed from: K */
    private float f6807K;

    /* JADX INFO: renamed from: L */
    private boolean f6808L;

    /* JADX INFO: renamed from: M */
    private boolean f6809M;

    /* JADX INFO: renamed from: N */
    private Drawable f6810N;

    /* JADX INFO: renamed from: O */
    private Drawable f6811O;

    /* JADX INFO: renamed from: P */
    private ColorStateList f6812P;

    /* JADX INFO: renamed from: Q */
    private float f6813Q;

    /* JADX INFO: renamed from: R */
    private CharSequence f6814R;

    /* JADX INFO: renamed from: S */
    private boolean f6815S;

    /* JADX INFO: renamed from: T */
    private boolean f6816T;

    /* JADX INFO: renamed from: U */
    private Drawable f6817U;

    /* JADX INFO: renamed from: V */
    private ColorStateList f6818V;

    /* JADX INFO: renamed from: W */
    private C1234h f6819W;

    /* JADX INFO: renamed from: X */
    private C1234h f6820X;

    /* JADX INFO: renamed from: Y */
    private float f6821Y;

    /* JADX INFO: renamed from: Z */
    private float f6822Z;

    /* JADX INFO: renamed from: a0 */
    private float f6823a0;

    /* JADX INFO: renamed from: b0 */
    private float f6824b0;

    /* JADX INFO: renamed from: c0 */
    private float f6825c0;

    /* JADX INFO: renamed from: d0 */
    private float f6826d0;

    /* JADX INFO: renamed from: e0 */
    private float f6827e0;

    /* JADX INFO: renamed from: f0 */
    private float f6828f0;

    /* JADX INFO: renamed from: g0 */
    private final Context f6829g0;

    /* JADX INFO: renamed from: h0 */
    private final Paint f6830h0;

    /* JADX INFO: renamed from: i0 */
    private final Paint f6831i0;

    /* JADX INFO: renamed from: j0 */
    private final Paint.FontMetrics f6832j0;

    /* JADX INFO: renamed from: k0 */
    private final RectF f6833k0;

    /* JADX INFO: renamed from: l0 */
    private final PointF f6834l0;

    /* JADX INFO: renamed from: m0 */
    private final Path f6835m0;

    /* JADX INFO: renamed from: n0 */
    private final C1119h f6836n0;

    /* JADX INFO: renamed from: o0 */
    private int f6837o0;

    /* JADX INFO: renamed from: p0 */
    private int f6838p0;

    /* JADX INFO: renamed from: q0 */
    private int f6839q0;

    /* JADX INFO: renamed from: r0 */
    private int f6840r0;

    /* JADX INFO: renamed from: s0 */
    private int f6841s0;

    /* JADX INFO: renamed from: t0 */
    private int f6842t0;

    /* JADX INFO: renamed from: u0 */
    private boolean f6843u0;

    /* JADX INFO: renamed from: v0 */
    private int f6844v0;

    /* JADX INFO: renamed from: w0 */
    private int f6845w0;

    /* JADX INFO: renamed from: x0 */
    private ColorFilter f6846x0;

    /* JADX INFO: renamed from: y0 */
    private PorterDuffColorFilter f6847y0;

    /* JADX INFO: renamed from: z */
    private ColorStateList f6848z;

    /* JADX INFO: renamed from: z0 */
    private ColorStateList f6849z0;

    /* JADX INFO: renamed from: com.google.android.material.chip.a$a */
    public interface a {
        /* JADX INFO: renamed from: a */
        void mo8178a();
    }

    private C1073a(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f6792C = -1.0f;
        this.f6830h0 = new Paint(1);
        this.f6832j0 = new Paint.FontMetrics();
        this.f6833k0 = new RectF();
        this.f6834l0 = new PointF();
        this.f6835m0 = new Path();
        this.f6845w0 = 255;
        this.f6789A0 = PorterDuff.Mode.SRC_IN;
        Paint paint = null;
        this.f6797E0 = new WeakReference<>(null);
        m9178M(context);
        this.f6829g0 = context;
        C1119h c1119h = new C1119h(this);
        this.f6836n0 = c1119h;
        this.f6800G = BuildConfig.FLAVOR;
        c1119h.m8713e().density = context.getResources().getDisplayMetrics().density;
        this.f6831i0 = null;
        if (0 != 0) {
            paint.setStyle(Paint.Style.STROKE);
        }
        setState(f6786J0);
        m8312j2(f6786J0);
        this.f6801G0 = true;
        if (C1262b.f7838a) {
            f6787K0.setTint(-1);
        }
    }

    /* JADX INFO: renamed from: A0 */
    private void m8203A0(Canvas canvas, Rect rect) {
        this.f6830h0.setColor(this.f6841s0);
        this.f6830h0.setStyle(Paint.Style.FILL);
        this.f6833k0.set(rect);
        if (!this.f6805I0) {
            canvas.drawRoundRect(this.f6833k0, m8252G0(), m8252G0(), this.f6830h0);
        } else {
            m9193h(new RectF(rect), this.f6835m0);
            super.m9195p(canvas, this.f6830h0, this.f6835m0, m9198u());
        }
    }

    /* JADX INFO: renamed from: B0 */
    private void m8204B0(Canvas canvas, Rect rect) {
        Paint paint = this.f6831i0;
        if (paint != null) {
            paint.setColor(C0588a.m4671d(-16777216, 127));
            canvas.drawRect(rect, this.f6831i0);
            if (m8207L2() || m8206K2()) {
                m8216j0(rect, this.f6833k0);
                canvas.drawRect(this.f6833k0, this.f6831i0);
            }
            if (this.f6800G != null) {
                canvas.drawLine(rect.left, rect.exactCenterY(), rect.right, rect.exactCenterY(), this.f6831i0);
            }
            if (m8208M2()) {
                m8220m0(rect, this.f6833k0);
                canvas.drawRect(this.f6833k0, this.f6831i0);
            }
            this.f6831i0.setColor(C0588a.m4671d(-65536, 127));
            m8218l0(rect, this.f6833k0);
            canvas.drawRect(this.f6833k0, this.f6831i0);
            this.f6831i0.setColor(C0588a.m4671d(-16711936, 127));
            m8221n0(rect, this.f6833k0);
            canvas.drawRect(this.f6833k0, this.f6831i0);
        }
    }

    /* JADX INFO: renamed from: C0 */
    private void m8205C0(Canvas canvas, Rect rect) {
        if (this.f6800G != null) {
            Paint.Align alignM8326r0 = m8326r0(rect, this.f6834l0);
            m8222p0(rect, this.f6833k0);
            if (this.f6836n0.m8712d() != null) {
                this.f6836n0.m8713e().drawableState = getState();
                this.f6836n0.m8718j(this.f6829g0);
            }
            this.f6836n0.m8713e().setTextAlign(alignM8326r0);
            int iSave = 0;
            boolean z = Math.round(this.f6836n0.m8714f(m8304f1().toString())) > Math.round(this.f6833k0.width());
            if (z) {
                iSave = canvas.save();
                canvas.clipRect(this.f6833k0);
            }
            CharSequence charSequenceEllipsize = this.f6800G;
            if (z && this.f6799F0 != null) {
                charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, this.f6836n0.m8713e(), this.f6833k0.width(), this.f6799F0);
            }
            CharSequence charSequence = charSequenceEllipsize;
            int length = charSequence.length();
            PointF pointF = this.f6834l0;
            canvas.drawText(charSequence, 0, length, pointF.x, pointF.y, this.f6836n0.m8713e());
            if (z) {
                canvas.restoreToCount(iSave);
            }
        }
    }

    /* JADX INFO: renamed from: K2 */
    private boolean m8206K2() {
        return this.f6816T && this.f6817U != null && this.f6843u0;
    }

    /* JADX INFO: renamed from: L2 */
    private boolean m8207L2() {
        return this.f6802H && this.f6804I != null;
    }

    /* JADX INFO: renamed from: M2 */
    private boolean m8208M2() {
        return this.f6809M && this.f6810N != null;
    }

    /* JADX INFO: renamed from: N2 */
    private void m8209N2(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    /* JADX INFO: renamed from: O2 */
    private void m8210O2() {
        this.f6795D0 = this.f6793C0 ? C1262b.m9477a(this.f6798F) : null;
    }

    @TargetApi(21)
    /* JADX INFO: renamed from: P2 */
    private void m8211P2() {
        this.f6811O = new RippleDrawable(C1262b.m9477a(m8300d1()), this.f6810N, f6787K0);
    }

    /* JADX INFO: renamed from: X0 */
    private float m8212X0() {
        Drawable drawable = this.f6843u0 ? this.f6817U : this.f6804I;
        if (this.f6807K > CropImageView.DEFAULT_ASPECT_RATIO || drawable == null) {
            return this.f6807K;
        }
        float fCeil = (float) Math.ceil(C1123l.m8732b(this.f6829g0, 24));
        return ((float) drawable.getIntrinsicHeight()) <= fCeil ? drawable.getIntrinsicHeight() : fCeil;
    }

    /* JADX INFO: renamed from: Y0 */
    private float m8213Y0() {
        return (this.f6807K > CropImageView.DEFAULT_ASPECT_RATIO || (this.f6843u0 ? this.f6817U : this.f6804I) == null) ? this.f6807K : r0.getIntrinsicWidth();
    }

    /* JADX INFO: renamed from: Z1 */
    private void m8214Z1(ColorStateList colorStateList) {
        if (this.f6848z != colorStateList) {
            this.f6848z = colorStateList;
            onStateChange(getState());
        }
    }

    /* JADX INFO: renamed from: i0 */
    private void m8215i0(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        drawable.setCallback(this);
        C0251a.m1792m(drawable, C0251a.m1785f(this));
        drawable.setLevel(getLevel());
        drawable.setVisible(isVisible(), false);
        if (drawable == this.f6810N) {
            if (drawable.isStateful()) {
                drawable.setState(m8284U0());
            }
            C0251a.m1794o(drawable, this.f6812P);
            return;
        }
        if (drawable.isStateful()) {
            drawable.setState(getState());
        }
        Drawable drawable2 = this.f6804I;
        if (drawable == drawable2 && this.f6808L) {
            C0251a.m1794o(drawable2, this.f6806J);
        }
    }

    /* JADX INFO: renamed from: j0 */
    private void m8216j0(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (m8207L2() || m8206K2()) {
            float f = this.f6821Y + this.f6822Z;
            float fM8213Y0 = m8213Y0();
            if (C0251a.m1785f(this) == 0) {
                float f2 = rect.left + f;
                rectF.left = f2;
                rectF.right = f2 + fM8213Y0;
            } else {
                float f3 = rect.right - f;
                rectF.right = f3;
                rectF.left = f3 - fM8213Y0;
            }
            float fM8212X0 = m8212X0();
            float fExactCenterY = rect.exactCenterY() - (fM8212X0 / 2.0f);
            rectF.top = fExactCenterY;
            rectF.bottom = fExactCenterY + fM8212X0;
        }
    }

    /* JADX INFO: renamed from: j1 */
    private ColorFilter m8217j1() {
        ColorFilter colorFilter = this.f6846x0;
        return colorFilter != null ? colorFilter : this.f6847y0;
    }

    /* JADX INFO: renamed from: l0 */
    private void m8218l0(Rect rect, RectF rectF) {
        rectF.set(rect);
        if (m8208M2()) {
            float f = this.f6828f0 + this.f6827e0 + this.f6813Q + this.f6826d0 + this.f6825c0;
            if (C0251a.m1785f(this) == 0) {
                rectF.right = rect.right - f;
            } else {
                rectF.left = rect.left + f;
            }
        }
    }

    /* JADX INFO: renamed from: l1 */
    private static boolean m8219l1(int[] iArr, int i) {
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

    /* JADX INFO: renamed from: m0 */
    private void m8220m0(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (m8208M2()) {
            float f = this.f6828f0 + this.f6827e0;
            if (C0251a.m1785f(this) == 0) {
                float f2 = rect.right - f;
                rectF.right = f2;
                rectF.left = f2 - this.f6813Q;
            } else {
                float f3 = rect.left + f;
                rectF.left = f3;
                rectF.right = f3 + this.f6813Q;
            }
            float fExactCenterY = rect.exactCenterY();
            float f4 = this.f6813Q;
            float f5 = fExactCenterY - (f4 / 2.0f);
            rectF.top = f5;
            rectF.bottom = f5 + f4;
        }
    }

    /* JADX INFO: renamed from: n0 */
    private void m8221n0(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (m8208M2()) {
            float f = this.f6828f0 + this.f6827e0 + this.f6813Q + this.f6826d0 + this.f6825c0;
            if (C0251a.m1785f(this) == 0) {
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

    /* JADX INFO: renamed from: p0 */
    private void m8222p0(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (this.f6800G != null) {
            float fM8313k0 = this.f6821Y + m8313k0() + this.f6824b0;
            float fM8321o0 = this.f6828f0 + m8321o0() + this.f6825c0;
            if (C0251a.m1785f(this) == 0) {
                rectF.left = rect.left + fM8313k0;
                rectF.right = rect.right - fM8321o0;
            } else {
                rectF.left = rect.left + fM8321o0;
                rectF.right = rect.right - fM8313k0;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    /* JADX INFO: renamed from: p1 */
    private static boolean m8223p1(ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    /* JADX INFO: renamed from: q0 */
    private float m8224q0() {
        this.f6836n0.m8713e().getFontMetrics(this.f6832j0);
        Paint.FontMetrics fontMetrics = this.f6832j0;
        return (fontMetrics.descent + fontMetrics.ascent) / 2.0f;
    }

    /* JADX INFO: renamed from: q1 */
    private static boolean m8225q1(Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    /* JADX INFO: renamed from: r1 */
    private static boolean m8226r1(C1258d c1258d) {
        ColorStateList colorStateList;
        return (c1258d == null || (colorStateList = c1258d.f7815a) == null || !colorStateList.isStateful()) ? false : true;
    }

    /* JADX INFO: renamed from: s0 */
    private boolean m8227s0() {
        return this.f6816T && this.f6817U != null && this.f6815S;
    }

    /* JADX INFO: renamed from: s1 */
    private void m8228s1(AttributeSet attributeSet, int i, int i2) {
        TypedArray typedArrayM8726h = C1121j.m8726h(this.f6829g0, attributeSet, C1226k.Chip, i, i2, new int[0]);
        this.f6805I0 = typedArrayM8726h.hasValue(C1226k.Chip_shapeAppearance);
        m8214Z1(C1257c.m9454a(this.f6829g0, typedArrayM8726h, C1226k.Chip_chipSurfaceColor));
        m8244D1(C1257c.m9454a(this.f6829g0, typedArrayM8726h, C1226k.Chip_chipBackgroundColor));
        m8279R1(typedArrayM8726h.getDimension(C1226k.Chip_chipMinHeight, CropImageView.DEFAULT_ASPECT_RATIO));
        if (typedArrayM8726h.hasValue(C1226k.Chip_chipCornerRadius)) {
            m8250F1(typedArrayM8726h.getDimension(C1226k.Chip_chipCornerRadius, CropImageView.DEFAULT_ASPECT_RATIO));
        }
        m8287V1(C1257c.m9454a(this.f6829g0, typedArrayM8726h, C1226k.Chip_chipStrokeColor));
        m8290X1(typedArrayM8726h.getDimension(C1226k.Chip_chipStrokeWidth, CropImageView.DEFAULT_ASPECT_RATIO));
        m8335w2(C1257c.m9454a(this.f6829g0, typedArrayM8726h, C1226k.Chip_rippleColor));
        m8240B2(typedArrayM8726h.getText(C1226k.Chip_android_text));
        C1258d c1258dM9459f = C1257c.m9459f(this.f6829g0, typedArrayM8726h, C1226k.Chip_android_textAppearance);
        c1258dM9459f.f7825k = typedArrayM8726h.getDimension(C1226k.Chip_android_textSize, c1258dM9459f.f7825k);
        m8242C2(c1258dM9459f);
        int i3 = typedArrayM8726h.getInt(C1226k.Chip_android_ellipsize, 0);
        if (i3 == 1) {
            m8323o2(TextUtils.TruncateAt.START);
        } else if (i3 == 2) {
            m8323o2(TextUtils.TruncateAt.MIDDLE);
        } else if (i3 == 3) {
            m8323o2(TextUtils.TruncateAt.END);
        }
        m8277Q1(typedArrayM8726h.getBoolean(C1226k.Chip_chipIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") == null) {
            m8277Q1(typedArrayM8726h.getBoolean(C1226k.Chip_chipIconEnabled, false));
        }
        m8262J1(C1257c.m9457d(this.f6829g0, typedArrayM8726h, C1226k.Chip_chipIcon));
        if (typedArrayM8726h.hasValue(C1226k.Chip_chipIconTint)) {
            m8271N1(C1257c.m9454a(this.f6829g0, typedArrayM8726h, C1226k.Chip_chipIconTint));
        }
        m8267L1(typedArrayM8726h.getDimension(C1226k.Chip_chipIconSize, -1.0f));
        m8318m2(typedArrayM8726h.getBoolean(C1226k.Chip_closeIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") == null) {
            m8318m2(typedArrayM8726h.getBoolean(C1226k.Chip_closeIconEnabled, false));
        }
        m8295a2(C1257c.m9457d(this.f6829g0, typedArrayM8726h, C1226k.Chip_closeIcon));
        m8315k2(C1257c.m9454a(this.f6829g0, typedArrayM8726h, C1226k.Chip_closeIconTint));
        m8305f2(typedArrayM8726h.getDimension(C1226k.Chip_closeIconSize, CropImageView.DEFAULT_ASPECT_RATIO));
        m8332v1(typedArrayM8726h.getBoolean(C1226k.Chip_android_checkable, false));
        m8241C1(typedArrayM8726h.getBoolean(C1226k.Chip_checkedIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") == null) {
            m8241C1(typedArrayM8726h.getBoolean(C1226k.Chip_checkedIconEnabled, false));
        }
        m8336x1(C1257c.m9457d(this.f6829g0, typedArrayM8726h, C1226k.Chip_checkedIcon));
        if (typedArrayM8726h.hasValue(C1226k.Chip_checkedIconTint)) {
            m8340z1(C1257c.m9454a(this.f6829g0, typedArrayM8726h, C1226k.Chip_checkedIconTint));
        }
        m8341z2(C1234h.m9347b(this.f6829g0, typedArrayM8726h, C1226k.Chip_showMotionSpec));
        m8324p2(C1234h.m9347b(this.f6829g0, typedArrayM8726h, C1226k.Chip_hideMotionSpec));
        m8283T1(typedArrayM8726h.getDimension(C1226k.Chip_chipStartPadding, CropImageView.DEFAULT_ASPECT_RATIO));
        m8330t2(typedArrayM8726h.getDimension(C1226k.Chip_iconStartPadding, CropImageView.DEFAULT_ASPECT_RATIO));
        m8327r2(typedArrayM8726h.getDimension(C1226k.Chip_iconEndPadding, CropImageView.DEFAULT_ASPECT_RATIO));
        m8254G2(typedArrayM8726h.getDimension(C1226k.Chip_textStartPadding, CropImageView.DEFAULT_ASPECT_RATIO));
        m8248E2(typedArrayM8726h.getDimension(C1226k.Chip_textEndPadding, CropImageView.DEFAULT_ASPECT_RATIO));
        m8309h2(typedArrayM8726h.getDimension(C1226k.Chip_closeIconStartPadding, CropImageView.DEFAULT_ASPECT_RATIO));
        m8299c2(typedArrayM8726h.getDimension(C1226k.Chip_closeIconEndPadding, CropImageView.DEFAULT_ASPECT_RATIO));
        m8256H1(typedArrayM8726h.getDimension(C1226k.Chip_chipEndPadding, CropImageView.DEFAULT_ASPECT_RATIO));
        m8333v2(typedArrayM8726h.getDimensionPixelSize(C1226k.Chip_android_maxWidth, Integer.MAX_VALUE));
        typedArrayM8726h.recycle();
    }

    /* JADX INFO: renamed from: t0 */
    public static C1073a m8229t0(Context context, AttributeSet attributeSet, int i, int i2) {
        C1073a c1073a = new C1073a(context, attributeSet, i, i2);
        c1073a.m8228s1(attributeSet, i, i2);
        return c1073a;
    }

    /* JADX INFO: renamed from: u0 */
    private void m8230u0(Canvas canvas, Rect rect) {
        if (m8206K2()) {
            m8216j0(rect, this.f6833k0);
            RectF rectF = this.f6833k0;
            float f = rectF.left;
            float f2 = rectF.top;
            canvas.translate(f, f2);
            this.f6817U.setBounds(0, 0, (int) this.f6833k0.width(), (int) this.f6833k0.height());
            this.f6817U.draw(canvas);
            canvas.translate(-f, -f2);
        }
    }

    /* JADX INFO: renamed from: u1 */
    private boolean m8231u1(int[] iArr, int[] iArr2) {
        boolean z;
        boolean zOnStateChange = super.onStateChange(iArr);
        ColorStateList colorStateList = this.f6848z;
        int iM9194l = m9194l(colorStateList != null ? colorStateList.getColorForState(iArr, this.f6837o0) : 0);
        boolean state = true;
        if (this.f6837o0 != iM9194l) {
            this.f6837o0 = iM9194l;
            zOnStateChange = true;
        }
        ColorStateList colorStateList2 = this.f6788A;
        int iM9194l2 = m9194l(colorStateList2 != null ? colorStateList2.getColorForState(iArr, this.f6838p0) : 0);
        if (this.f6838p0 != iM9194l2) {
            this.f6838p0 = iM9194l2;
            zOnStateChange = true;
        }
        int iM9430e = C1247a.m9430e(iM9194l, iM9194l2);
        if ((this.f6839q0 != iM9430e) | (m9200x() == null)) {
            this.f6839q0 = iM9430e;
            m9184W(ColorStateList.valueOf(iM9430e));
            zOnStateChange = true;
        }
        ColorStateList colorStateList3 = this.f6794D;
        int colorForState = colorStateList3 != null ? colorStateList3.getColorForState(iArr, this.f6840r0) : 0;
        if (this.f6840r0 != colorForState) {
            this.f6840r0 = colorForState;
            zOnStateChange = true;
        }
        int colorForState2 = (this.f6795D0 == null || !C1262b.m9478b(iArr)) ? 0 : this.f6795D0.getColorForState(iArr, this.f6841s0);
        if (this.f6841s0 != colorForState2) {
            this.f6841s0 = colorForState2;
            if (this.f6793C0) {
                zOnStateChange = true;
            }
        }
        int colorForState3 = (this.f6836n0.m8712d() == null || this.f6836n0.m8712d().f7815a == null) ? 0 : this.f6836n0.m8712d().f7815a.getColorForState(iArr, this.f6842t0);
        if (this.f6842t0 != colorForState3) {
            this.f6842t0 = colorForState3;
            zOnStateChange = true;
        }
        boolean z2 = m8219l1(getState(), R.attr.state_checked) && this.f6815S;
        if (this.f6843u0 == z2 || this.f6817U == null) {
            z = false;
        } else {
            float fM8313k0 = m8313k0();
            this.f6843u0 = z2;
            if (fM8313k0 != m8313k0()) {
                zOnStateChange = true;
                z = true;
            } else {
                zOnStateChange = true;
                z = false;
            }
        }
        ColorStateList colorStateList4 = this.f6849z0;
        int colorForState4 = colorStateList4 != null ? colorStateList4.getColorForState(iArr, this.f6844v0) : 0;
        if (this.f6844v0 != colorForState4) {
            this.f6844v0 = colorForState4;
            this.f6847y0 = C1249a.m9433a(this, this.f6849z0, this.f6789A0);
        } else {
            state = zOnStateChange;
        }
        if (m8225q1(this.f6804I)) {
            state |= this.f6804I.setState(iArr);
        }
        if (m8225q1(this.f6817U)) {
            state |= this.f6817U.setState(iArr);
        }
        if (m8225q1(this.f6810N)) {
            int[] iArr3 = new int[iArr.length + iArr2.length];
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
            state |= this.f6810N.setState(iArr3);
        }
        if (C1262b.f7838a && m8225q1(this.f6811O)) {
            state |= this.f6811O.setState(iArr2);
        }
        if (state) {
            invalidateSelf();
        }
        if (z) {
            m8329t1();
        }
        return state;
    }

    /* JADX INFO: renamed from: v0 */
    private void m8232v0(Canvas canvas, Rect rect) {
        if (this.f6805I0) {
            return;
        }
        this.f6830h0.setColor(this.f6838p0);
        this.f6830h0.setStyle(Paint.Style.FILL);
        this.f6830h0.setColorFilter(m8217j1());
        this.f6833k0.set(rect);
        canvas.drawRoundRect(this.f6833k0, m8252G0(), m8252G0(), this.f6830h0);
    }

    /* JADX INFO: renamed from: w0 */
    private void m8233w0(Canvas canvas, Rect rect) {
        if (m8207L2()) {
            m8216j0(rect, this.f6833k0);
            RectF rectF = this.f6833k0;
            float f = rectF.left;
            float f2 = rectF.top;
            canvas.translate(f, f2);
            this.f6804I.setBounds(0, 0, (int) this.f6833k0.width(), (int) this.f6833k0.height());
            this.f6804I.draw(canvas);
            canvas.translate(-f, -f2);
        }
    }

    /* JADX INFO: renamed from: x0 */
    private void m8234x0(Canvas canvas, Rect rect) {
        if (this.f6796E <= CropImageView.DEFAULT_ASPECT_RATIO || this.f6805I0) {
            return;
        }
        this.f6830h0.setColor(this.f6840r0);
        this.f6830h0.setStyle(Paint.Style.STROKE);
        if (!this.f6805I0) {
            this.f6830h0.setColorFilter(m8217j1());
        }
        RectF rectF = this.f6833k0;
        float f = rect.left;
        float f2 = this.f6796E;
        rectF.set(f + (f2 / 2.0f), rect.top + (f2 / 2.0f), rect.right - (f2 / 2.0f), rect.bottom - (f2 / 2.0f));
        float f3 = this.f6792C - (this.f6796E / 2.0f);
        canvas.drawRoundRect(this.f6833k0, f3, f3, this.f6830h0);
    }

    /* JADX INFO: renamed from: y0 */
    private void m8235y0(Canvas canvas, Rect rect) {
        if (this.f6805I0) {
            return;
        }
        this.f6830h0.setColor(this.f6837o0);
        this.f6830h0.setStyle(Paint.Style.FILL);
        this.f6833k0.set(rect);
        canvas.drawRoundRect(this.f6833k0, m8252G0(), m8252G0(), this.f6830h0);
    }

    /* JADX INFO: renamed from: z0 */
    private void m8236z0(Canvas canvas, Rect rect) {
        if (m8208M2()) {
            m8220m0(rect, this.f6833k0);
            RectF rectF = this.f6833k0;
            float f = rectF.left;
            float f2 = rectF.top;
            canvas.translate(f, f2);
            this.f6810N.setBounds(0, 0, (int) this.f6833k0.width(), (int) this.f6833k0.height());
            if (C1262b.f7838a) {
                this.f6811O.setBounds(this.f6810N.getBounds());
                this.f6811O.jumpToCurrentState();
                this.f6811O.draw(canvas);
            } else {
                this.f6810N.draw(canvas);
            }
            canvas.translate(-f, -f2);
        }
    }

    /* JADX INFO: renamed from: A1 */
    public void m8237A1(int i) {
        m8340z1(C0503a.m4046c(this.f6829g0, i));
    }

    /* JADX INFO: renamed from: A2 */
    public void m8238A2(int i) {
        m8341z2(C1234h.m9348c(this.f6829g0, i));
    }

    /* JADX INFO: renamed from: B1 */
    public void m8239B1(int i) {
        m8241C1(this.f6829g0.getResources().getBoolean(i));
    }

    /* JADX INFO: renamed from: B2 */
    public void m8240B2(CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = BuildConfig.FLAVOR;
        }
        if (TextUtils.equals(this.f6800G, charSequence)) {
            return;
        }
        this.f6800G = charSequence;
        this.f6836n0.m8717i(true);
        invalidateSelf();
        m8329t1();
    }

    /* JADX INFO: renamed from: C1 */
    public void m8241C1(boolean z) {
        if (this.f6816T != z) {
            boolean zM8206K2 = m8206K2();
            this.f6816T = z;
            boolean zM8206K22 = m8206K2();
            if (zM8206K2 != zM8206K22) {
                if (zM8206K22) {
                    m8215i0(this.f6817U);
                } else {
                    m8209N2(this.f6817U);
                }
                invalidateSelf();
                m8329t1();
            }
        }
    }

    /* JADX INFO: renamed from: C2 */
    public void m8242C2(C1258d c1258d) {
        this.f6836n0.m8716h(c1258d, this.f6829g0);
    }

    /* JADX INFO: renamed from: D0 */
    public Drawable m8243D0() {
        return this.f6817U;
    }

    /* JADX INFO: renamed from: D1 */
    public void m8244D1(ColorStateList colorStateList) {
        if (this.f6788A != colorStateList) {
            this.f6788A = colorStateList;
            onStateChange(getState());
        }
    }

    /* JADX INFO: renamed from: D2 */
    public void m8245D2(int i) {
        m8242C2(new C1258d(this.f6829g0, i));
    }

    /* JADX INFO: renamed from: E0 */
    public ColorStateList m8246E0() {
        return this.f6818V;
    }

    /* JADX INFO: renamed from: E1 */
    public void m8247E1(int i) {
        m8244D1(C0503a.m4046c(this.f6829g0, i));
    }

    /* JADX INFO: renamed from: E2 */
    public void m8248E2(float f) {
        if (this.f6825c0 != f) {
            this.f6825c0 = f;
            invalidateSelf();
            m8329t1();
        }
    }

    /* JADX INFO: renamed from: F0 */
    public ColorStateList m8249F0() {
        return this.f6788A;
    }

    @Deprecated
    /* JADX INFO: renamed from: F1 */
    public void m8250F1(float f) {
        if (this.f6792C != f) {
            this.f6792C = f;
            setShapeAppearanceModel(m9172C().m9234w(f));
        }
    }

    /* JADX INFO: renamed from: F2 */
    public void m8251F2(int i) {
        m8248E2(this.f6829g0.getResources().getDimension(i));
    }

    /* JADX INFO: renamed from: G0 */
    public float m8252G0() {
        return this.f6805I0 ? m9174F() : this.f6792C;
    }

    @Deprecated
    /* JADX INFO: renamed from: G1 */
    public void m8253G1(int i) {
        m8250F1(this.f6829g0.getResources().getDimension(i));
    }

    /* JADX INFO: renamed from: G2 */
    public void m8254G2(float f) {
        if (this.f6824b0 != f) {
            this.f6824b0 = f;
            invalidateSelf();
            m8329t1();
        }
    }

    /* JADX INFO: renamed from: H0 */
    public float m8255H0() {
        return this.f6828f0;
    }

    /* JADX INFO: renamed from: H1 */
    public void m8256H1(float f) {
        if (this.f6828f0 != f) {
            this.f6828f0 = f;
            invalidateSelf();
            m8329t1();
        }
    }

    /* JADX INFO: renamed from: H2 */
    public void m8257H2(int i) {
        m8254G2(this.f6829g0.getResources().getDimension(i));
    }

    /* JADX INFO: renamed from: I0 */
    public Drawable m8258I0() {
        Drawable drawable = this.f6804I;
        if (drawable != null) {
            return C0251a.m1796q(drawable);
        }
        return null;
    }

    /* JADX INFO: renamed from: I1 */
    public void m8259I1(int i) {
        m8256H1(this.f6829g0.getResources().getDimension(i));
    }

    /* JADX INFO: renamed from: I2 */
    public void m8260I2(boolean z) {
        if (this.f6793C0 != z) {
            this.f6793C0 = z;
            m8210O2();
            onStateChange(getState());
        }
    }

    /* JADX INFO: renamed from: J0 */
    public float m8261J0() {
        return this.f6807K;
    }

    /* JADX INFO: renamed from: J1 */
    public void m8262J1(Drawable drawable) {
        Drawable drawableM8258I0 = m8258I0();
        if (drawableM8258I0 != drawable) {
            float fM8313k0 = m8313k0();
            this.f6804I = drawable != null ? C0251a.m1797r(drawable).mutate() : null;
            float fM8313k02 = m8313k0();
            m8209N2(drawableM8258I0);
            if (m8207L2()) {
                m8215i0(this.f6804I);
            }
            invalidateSelf();
            if (fM8313k0 != fM8313k02) {
                m8329t1();
            }
        }
    }

    /* JADX INFO: renamed from: J2 */
    boolean m8263J2() {
        return this.f6801G0;
    }

    /* JADX INFO: renamed from: K0 */
    public ColorStateList m8264K0() {
        return this.f6806J;
    }

    /* JADX INFO: renamed from: K1 */
    public void m8265K1(int i) {
        m8262J1(C0503a.m4047d(this.f6829g0, i));
    }

    /* JADX INFO: renamed from: L0 */
    public float m8266L0() {
        return this.f6790B;
    }

    /* JADX INFO: renamed from: L1 */
    public void m8267L1(float f) {
        if (this.f6807K != f) {
            float fM8313k0 = m8313k0();
            this.f6807K = f;
            float fM8313k02 = m8313k0();
            invalidateSelf();
            if (fM8313k0 != fM8313k02) {
                m8329t1();
            }
        }
    }

    /* JADX INFO: renamed from: M0 */
    public float m8268M0() {
        return this.f6821Y;
    }

    /* JADX INFO: renamed from: M1 */
    public void m8269M1(int i) {
        m8267L1(this.f6829g0.getResources().getDimension(i));
    }

    /* JADX INFO: renamed from: N0 */
    public ColorStateList m8270N0() {
        return this.f6794D;
    }

    /* JADX INFO: renamed from: N1 */
    public void m8271N1(ColorStateList colorStateList) {
        this.f6808L = true;
        if (this.f6806J != colorStateList) {
            this.f6806J = colorStateList;
            if (m8207L2()) {
                C0251a.m1794o(this.f6804I, colorStateList);
            }
            onStateChange(getState());
        }
    }

    /* JADX INFO: renamed from: O0 */
    public float m8272O0() {
        return this.f6796E;
    }

    /* JADX INFO: renamed from: O1 */
    public void m8273O1(int i) {
        m8271N1(C0503a.m4046c(this.f6829g0, i));
    }

    /* JADX INFO: renamed from: P0 */
    public Drawable m8274P0() {
        Drawable drawable = this.f6810N;
        if (drawable != null) {
            return C0251a.m1796q(drawable);
        }
        return null;
    }

    /* JADX INFO: renamed from: P1 */
    public void m8275P1(int i) {
        m8277Q1(this.f6829g0.getResources().getBoolean(i));
    }

    /* JADX INFO: renamed from: Q0 */
    public CharSequence m8276Q0() {
        return this.f6814R;
    }

    /* JADX INFO: renamed from: Q1 */
    public void m8277Q1(boolean z) {
        if (this.f6802H != z) {
            boolean zM8207L2 = m8207L2();
            this.f6802H = z;
            boolean zM8207L22 = m8207L2();
            if (zM8207L2 != zM8207L22) {
                if (zM8207L22) {
                    m8215i0(this.f6804I);
                } else {
                    m8209N2(this.f6804I);
                }
                invalidateSelf();
                m8329t1();
            }
        }
    }

    /* JADX INFO: renamed from: R0 */
    public float m8278R0() {
        return this.f6827e0;
    }

    /* JADX INFO: renamed from: R1 */
    public void m8279R1(float f) {
        if (this.f6790B != f) {
            this.f6790B = f;
            invalidateSelf();
            m8329t1();
        }
    }

    /* JADX INFO: renamed from: S0 */
    public float m8280S0() {
        return this.f6813Q;
    }

    /* JADX INFO: renamed from: S1 */
    public void m8281S1(int i) {
        m8279R1(this.f6829g0.getResources().getDimension(i));
    }

    /* JADX INFO: renamed from: T0 */
    public float m8282T0() {
        return this.f6826d0;
    }

    /* JADX INFO: renamed from: T1 */
    public void m8283T1(float f) {
        if (this.f6821Y != f) {
            this.f6821Y = f;
            invalidateSelf();
            m8329t1();
        }
    }

    /* JADX INFO: renamed from: U0 */
    public int[] m8284U0() {
        return this.f6791B0;
    }

    /* JADX INFO: renamed from: U1 */
    public void m8285U1(int i) {
        m8283T1(this.f6829g0.getResources().getDimension(i));
    }

    /* JADX INFO: renamed from: V0 */
    public ColorStateList m8286V0() {
        return this.f6812P;
    }

    /* JADX INFO: renamed from: V1 */
    public void m8287V1(ColorStateList colorStateList) {
        if (this.f6794D != colorStateList) {
            this.f6794D = colorStateList;
            if (this.f6805I0) {
                m9191d0(colorStateList);
            }
            onStateChange(getState());
        }
    }

    /* JADX INFO: renamed from: W0 */
    public void m8288W0(RectF rectF) {
        m8221n0(getBounds(), rectF);
    }

    /* JADX INFO: renamed from: W1 */
    public void m8289W1(int i) {
        m8287V1(C0503a.m4046c(this.f6829g0, i));
    }

    /* JADX INFO: renamed from: X1 */
    public void m8290X1(float f) {
        if (this.f6796E != f) {
            this.f6796E = f;
            this.f6830h0.setStrokeWidth(f);
            if (this.f6805I0) {
                super.m9192e0(f);
            }
            invalidateSelf();
        }
    }

    /* JADX INFO: renamed from: Y1 */
    public void m8291Y1(int i) {
        m8290X1(this.f6829g0.getResources().getDimension(i));
    }

    /* JADX INFO: renamed from: Z0 */
    public TextUtils.TruncateAt m8292Z0() {
        return this.f6799F0;
    }

    @Override // com.google.android.material.internal.C1119h.b
    /* JADX INFO: renamed from: a */
    public void mo8293a() {
        m8329t1();
        invalidateSelf();
    }

    /* JADX INFO: renamed from: a1 */
    public C1234h m8294a1() {
        return this.f6820X;
    }

    /* JADX INFO: renamed from: a2 */
    public void m8295a2(Drawable drawable) {
        Drawable drawableM8274P0 = m8274P0();
        if (drawableM8274P0 != drawable) {
            float fM8321o0 = m8321o0();
            this.f6810N = drawable != null ? C0251a.m1797r(drawable).mutate() : null;
            if (C1262b.f7838a) {
                m8211P2();
            }
            float fM8321o02 = m8321o0();
            m8209N2(drawableM8274P0);
            if (m8208M2()) {
                m8215i0(this.f6810N);
            }
            invalidateSelf();
            if (fM8321o0 != fM8321o02) {
                m8329t1();
            }
        }
    }

    /* JADX INFO: renamed from: b1 */
    public float m8296b1() {
        return this.f6823a0;
    }

    /* JADX INFO: renamed from: b2 */
    public void m8297b2(CharSequence charSequence) {
        if (this.f6814R != charSequence) {
            this.f6814R = C0613a.m4802c().m4807h(charSequence);
            invalidateSelf();
        }
    }

    /* JADX INFO: renamed from: c1 */
    public float m8298c1() {
        return this.f6822Z;
    }

    /* JADX INFO: renamed from: c2 */
    public void m8299c2(float f) {
        if (this.f6827e0 != f) {
            this.f6827e0 = f;
            invalidateSelf();
            if (m8208M2()) {
                m8329t1();
            }
        }
    }

    /* JADX INFO: renamed from: d1 */
    public ColorStateList m8300d1() {
        return this.f6798F;
    }

    /* JADX INFO: renamed from: d2 */
    public void m8301d2(int i) {
        m8299c2(this.f6829g0.getResources().getDimension(i));
    }

    @Override // p093d.p099c.p100a.p101a.p102a0.C1208g, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        if (bounds.isEmpty() || getAlpha() == 0) {
            return;
        }
        int i = this.f6845w0;
        int iM9365a = i < 255 ? C1238a.m9365a(canvas, bounds.left, bounds.top, bounds.right, bounds.bottom, i) : 0;
        m8235y0(canvas, bounds);
        m8232v0(canvas, bounds);
        if (this.f6805I0) {
            super.draw(canvas);
        }
        m8234x0(canvas, bounds);
        m8203A0(canvas, bounds);
        m8233w0(canvas, bounds);
        m8230u0(canvas, bounds);
        if (this.f6801G0) {
            m8205C0(canvas, bounds);
        }
        m8236z0(canvas, bounds);
        m8204B0(canvas, bounds);
        if (this.f6845w0 < 255) {
            canvas.restoreToCount(iM9365a);
        }
    }

    /* JADX INFO: renamed from: e1 */
    public C1234h m8302e1() {
        return this.f6819W;
    }

    /* JADX INFO: renamed from: e2 */
    public void m8303e2(int i) {
        m8295a2(C0503a.m4047d(this.f6829g0, i));
    }

    /* JADX INFO: renamed from: f1 */
    public CharSequence m8304f1() {
        return this.f6800G;
    }

    /* JADX INFO: renamed from: f2 */
    public void m8305f2(float f) {
        if (this.f6813Q != f) {
            this.f6813Q = f;
            invalidateSelf();
            if (m8208M2()) {
                m8329t1();
            }
        }
    }

    /* JADX INFO: renamed from: g1 */
    public C1258d m8306g1() {
        return this.f6836n0.m8712d();
    }

    /* JADX INFO: renamed from: g2 */
    public void m8307g2(int i) {
        m8305f2(this.f6829g0.getResources().getDimension(i));
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f6845w0;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.f6846x0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.f6790B;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return Math.min(Math.round(this.f6821Y + m8313k0() + this.f6824b0 + this.f6836n0.m8714f(m8304f1().toString()) + this.f6825c0 + m8321o0() + this.f6828f0), this.f6803H0);
    }

    @Override // p093d.p099c.p100a.p101a.p102a0.C1208g, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // p093d.p099c.p100a.p101a.p102a0.C1208g, android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(Outline outline) {
        if (this.f6805I0) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), getIntrinsicHeight(), this.f6792C);
        } else {
            outline.setRoundRect(bounds, this.f6792C);
        }
        outline.setAlpha(getAlpha() / 255.0f);
    }

    /* JADX INFO: renamed from: h1 */
    public float m8308h1() {
        return this.f6825c0;
    }

    /* JADX INFO: renamed from: h2 */
    public void m8309h2(float f) {
        if (this.f6826d0 != f) {
            this.f6826d0 = f;
            invalidateSelf();
            if (m8208M2()) {
                m8329t1();
            }
        }
    }

    /* JADX INFO: renamed from: i1 */
    public float m8310i1() {
        return this.f6824b0;
    }

    /* JADX INFO: renamed from: i2 */
    public void m8311i2(int i) {
        m8309h2(this.f6829g0.getResources().getDimension(i));
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // p093d.p099c.p100a.p101a.p102a0.C1208g, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return m8223p1(this.f6848z) || m8223p1(this.f6788A) || m8223p1(this.f6794D) || (this.f6793C0 && m8223p1(this.f6795D0)) || m8226r1(this.f6836n0.m8712d()) || m8227s0() || m8225q1(this.f6804I) || m8225q1(this.f6817U) || m8223p1(this.f6849z0);
    }

    /* JADX INFO: renamed from: j2 */
    public boolean m8312j2(int[] iArr) {
        if (Arrays.equals(this.f6791B0, iArr)) {
            return false;
        }
        this.f6791B0 = iArr;
        if (m8208M2()) {
            return m8231u1(getState(), iArr);
        }
        return false;
    }

    /* JADX INFO: renamed from: k0 */
    float m8313k0() {
        return (m8207L2() || m8206K2()) ? this.f6822Z + m8213Y0() + this.f6823a0 : CropImageView.DEFAULT_ASPECT_RATIO;
    }

    /* JADX INFO: renamed from: k1 */
    public boolean m8314k1() {
        return this.f6793C0;
    }

    /* JADX INFO: renamed from: k2 */
    public void m8315k2(ColorStateList colorStateList) {
        if (this.f6812P != colorStateList) {
            this.f6812P = colorStateList;
            if (m8208M2()) {
                C0251a.m1794o(this.f6810N, colorStateList);
            }
            onStateChange(getState());
        }
    }

    /* JADX INFO: renamed from: l2 */
    public void m8316l2(int i) {
        m8315k2(C0503a.m4046c(this.f6829g0, i));
    }

    /* JADX INFO: renamed from: m1 */
    public boolean m8317m1() {
        return this.f6815S;
    }

    /* JADX INFO: renamed from: m2 */
    public void m8318m2(boolean z) {
        if (this.f6809M != z) {
            boolean zM8208M2 = m8208M2();
            this.f6809M = z;
            boolean zM8208M22 = m8208M2();
            if (zM8208M2 != zM8208M22) {
                if (zM8208M22) {
                    m8215i0(this.f6810N);
                } else {
                    m8209N2(this.f6810N);
                }
                invalidateSelf();
                m8329t1();
            }
        }
    }

    /* JADX INFO: renamed from: n1 */
    public boolean m8319n1() {
        return m8225q1(this.f6810N);
    }

    /* JADX INFO: renamed from: n2 */
    public void m8320n2(a aVar) {
        this.f6797E0 = new WeakReference<>(aVar);
    }

    /* JADX INFO: renamed from: o0 */
    float m8321o0() {
        return m8208M2() ? this.f6826d0 + this.f6813Q + this.f6827e0 : CropImageView.DEFAULT_ASPECT_RATIO;
    }

    /* JADX INFO: renamed from: o1 */
    public boolean m8322o1() {
        return this.f6809M;
    }

    /* JADX INFO: renamed from: o2 */
    public void m8323o2(TextUtils.TruncateAt truncateAt) {
        this.f6799F0 = truncateAt;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        boolean zOnLayoutDirectionChanged = super.onLayoutDirectionChanged(i);
        if (m8207L2()) {
            zOnLayoutDirectionChanged |= C0251a.m1792m(this.f6804I, i);
        }
        if (m8206K2()) {
            zOnLayoutDirectionChanged |= C0251a.m1792m(this.f6817U, i);
        }
        if (m8208M2()) {
            zOnLayoutDirectionChanged |= C0251a.m1792m(this.f6810N, i);
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
        if (m8207L2()) {
            zOnLevelChange |= this.f6804I.setLevel(i);
        }
        if (m8206K2()) {
            zOnLevelChange |= this.f6817U.setLevel(i);
        }
        if (m8208M2()) {
            zOnLevelChange |= this.f6810N.setLevel(i);
        }
        if (zOnLevelChange) {
            invalidateSelf();
        }
        return zOnLevelChange;
    }

    @Override // p093d.p099c.p100a.p101a.p102a0.C1208g, android.graphics.drawable.Drawable, com.google.android.material.internal.C1119h.b
    public boolean onStateChange(int[] iArr) {
        if (this.f6805I0) {
            super.onStateChange(iArr);
        }
        return m8231u1(iArr, m8284U0());
    }

    /* JADX INFO: renamed from: p2 */
    public void m8324p2(C1234h c1234h) {
        this.f6820X = c1234h;
    }

    /* JADX INFO: renamed from: q2 */
    public void m8325q2(int i) {
        m8324p2(C1234h.m9348c(this.f6829g0, i));
    }

    /* JADX INFO: renamed from: r0 */
    Paint.Align m8326r0(Rect rect, PointF pointF) {
        pointF.set(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO);
        Paint.Align align = Paint.Align.LEFT;
        if (this.f6800G != null) {
            float fM8313k0 = this.f6821Y + m8313k0() + this.f6824b0;
            if (C0251a.m1785f(this) == 0) {
                pointF.x = rect.left + fM8313k0;
                align = Paint.Align.LEFT;
            } else {
                pointF.x = rect.right - fM8313k0;
                align = Paint.Align.RIGHT;
            }
            pointF.y = rect.centerY() - m8224q0();
        }
        return align;
    }

    /* JADX INFO: renamed from: r2 */
    public void m8327r2(float f) {
        if (this.f6823a0 != f) {
            float fM8313k0 = m8313k0();
            this.f6823a0 = f;
            float fM8313k02 = m8313k0();
            invalidateSelf();
            if (fM8313k0 != fM8313k02) {
                m8329t1();
            }
        }
    }

    /* JADX INFO: renamed from: s2 */
    public void m8328s2(int i) {
        m8327r2(this.f6829g0.getResources().getDimension(i));
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // p093d.p099c.p100a.p101a.p102a0.C1208g, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.f6845w0 != i) {
            this.f6845w0 = i;
            invalidateSelf();
        }
    }

    @Override // p093d.p099c.p100a.p101a.p102a0.C1208g, android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.f6846x0 != colorFilter) {
            this.f6846x0 = colorFilter;
            invalidateSelf();
        }
    }

    @Override // p093d.p099c.p100a.p101a.p102a0.C1208g, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.InterfaceC0252b
    public void setTintList(ColorStateList colorStateList) {
        if (this.f6849z0 != colorStateList) {
            this.f6849z0 = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // p093d.p099c.p100a.p101a.p102a0.C1208g, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.InterfaceC0252b
    public void setTintMode(PorterDuff.Mode mode) {
        if (this.f6789A0 != mode) {
            this.f6789A0 = mode;
            this.f6847y0 = C1249a.m9433a(this, this.f6849z0, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (m8207L2()) {
            visible |= this.f6804I.setVisible(z, z2);
        }
        if (m8206K2()) {
            visible |= this.f6817U.setVisible(z, z2);
        }
        if (m8208M2()) {
            visible |= this.f6810N.setVisible(z, z2);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    /* JADX INFO: renamed from: t1 */
    protected void m8329t1() {
        a aVar = this.f6797E0.get();
        if (aVar != null) {
            aVar.mo8178a();
        }
    }

    /* JADX INFO: renamed from: t2 */
    public void m8330t2(float f) {
        if (this.f6822Z != f) {
            float fM8313k0 = m8313k0();
            this.f6822Z = f;
            float fM8313k02 = m8313k0();
            invalidateSelf();
            if (fM8313k0 != fM8313k02) {
                m8329t1();
            }
        }
    }

    /* JADX INFO: renamed from: u2 */
    public void m8331u2(int i) {
        m8330t2(this.f6829g0.getResources().getDimension(i));
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    /* JADX INFO: renamed from: v1 */
    public void m8332v1(boolean z) {
        if (this.f6815S != z) {
            this.f6815S = z;
            float fM8313k0 = m8313k0();
            if (!z && this.f6843u0) {
                this.f6843u0 = false;
            }
            float fM8313k02 = m8313k0();
            invalidateSelf();
            if (fM8313k0 != fM8313k02) {
                m8329t1();
            }
        }
    }

    /* JADX INFO: renamed from: v2 */
    public void m8333v2(int i) {
        this.f6803H0 = i;
    }

    /* JADX INFO: renamed from: w1 */
    public void m8334w1(int i) {
        m8332v1(this.f6829g0.getResources().getBoolean(i));
    }

    /* JADX INFO: renamed from: w2 */
    public void m8335w2(ColorStateList colorStateList) {
        if (this.f6798F != colorStateList) {
            this.f6798F = colorStateList;
            m8210O2();
            onStateChange(getState());
        }
    }

    /* JADX INFO: renamed from: x1 */
    public void m8336x1(Drawable drawable) {
        if (this.f6817U != drawable) {
            float fM8313k0 = m8313k0();
            this.f6817U = drawable;
            float fM8313k02 = m8313k0();
            m8209N2(this.f6817U);
            m8215i0(this.f6817U);
            invalidateSelf();
            if (fM8313k0 != fM8313k02) {
                m8329t1();
            }
        }
    }

    /* JADX INFO: renamed from: x2 */
    public void m8337x2(int i) {
        m8335w2(C0503a.m4046c(this.f6829g0, i));
    }

    /* JADX INFO: renamed from: y1 */
    public void m8338y1(int i) {
        m8336x1(C0503a.m4047d(this.f6829g0, i));
    }

    /* JADX INFO: renamed from: y2 */
    void m8339y2(boolean z) {
        this.f6801G0 = z;
    }

    /* JADX INFO: renamed from: z1 */
    public void m8340z1(ColorStateList colorStateList) {
        if (this.f6818V != colorStateList) {
            this.f6818V = colorStateList;
            if (m8227s0()) {
                C0251a.m1794o(this.f6817U, colorStateList);
            }
            onStateChange(getState());
        }
    }

    /* JADX INFO: renamed from: z2 */
    public void m8341z2(C1234h c1234h) {
        this.f6819W = c1234h;
    }
}
