package com.google.android.material.internal;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import androidx.core.view.C0266e;
import androidx.core.view.C0292v;
import com.google.android.material.internal.C1118g;
import com.yalantis.ucrop.view.CropImageView;
import p016c.p041g.p045f.C0602a;
import p016c.p041g.p048i.C0617e;
import p016c.p041g.p049j.C0626h;
import p093d.p099c.p100a.p101a.p104l.C1227a;
import p093d.p099c.p100a.p101a.p117x.C1255a;
import p093d.p099c.p100a.p101a.p117x.C1258d;

/* JADX INFO: renamed from: com.google.android.material.internal.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C1112a {

    /* JADX INFO: renamed from: j0 */
    private static final boolean f7091j0;

    /* JADX INFO: renamed from: k0 */
    private static final Paint f7092k0;

    /* JADX INFO: renamed from: A */
    private C1255a f7093A;

    /* JADX INFO: renamed from: B */
    private CharSequence f7094B;

    /* JADX INFO: renamed from: C */
    private CharSequence f7095C;

    /* JADX INFO: renamed from: D */
    private boolean f7096D;

    /* JADX INFO: renamed from: F */
    private boolean f7098F;

    /* JADX INFO: renamed from: G */
    private Bitmap f7099G;

    /* JADX INFO: renamed from: H */
    private Paint f7100H;

    /* JADX INFO: renamed from: I */
    private float f7101I;

    /* JADX INFO: renamed from: J */
    private float f7102J;

    /* JADX INFO: renamed from: K */
    private int[] f7103K;

    /* JADX INFO: renamed from: L */
    private boolean f7104L;

    /* JADX INFO: renamed from: O */
    private TimeInterpolator f7107O;

    /* JADX INFO: renamed from: P */
    private TimeInterpolator f7108P;

    /* JADX INFO: renamed from: Q */
    private float f7109Q;

    /* JADX INFO: renamed from: R */
    private float f7110R;

    /* JADX INFO: renamed from: S */
    private float f7111S;

    /* JADX INFO: renamed from: T */
    private ColorStateList f7112T;

    /* JADX INFO: renamed from: U */
    private float f7113U;

    /* JADX INFO: renamed from: V */
    private float f7114V;

    /* JADX INFO: renamed from: W */
    private float f7115W;

    /* JADX INFO: renamed from: X */
    private ColorStateList f7116X;

    /* JADX INFO: renamed from: Y */
    private float f7117Y;

    /* JADX INFO: renamed from: Z */
    private float f7118Z;

    /* JADX INFO: renamed from: a */
    private final View f7119a;

    /* JADX INFO: renamed from: a0 */
    private StaticLayout f7120a0;

    /* JADX INFO: renamed from: b */
    private boolean f7121b;

    /* JADX INFO: renamed from: b0 */
    private float f7122b0;

    /* JADX INFO: renamed from: c */
    private float f7123c;

    /* JADX INFO: renamed from: c0 */
    private float f7124c0;

    /* JADX INFO: renamed from: d */
    private boolean f7125d;

    /* JADX INFO: renamed from: d0 */
    private float f7126d0;

    /* JADX INFO: renamed from: e */
    private float f7127e;

    /* JADX INFO: renamed from: e0 */
    private CharSequence f7128e0;

    /* JADX INFO: renamed from: g */
    private int f7131g;

    /* JADX INFO: renamed from: o */
    private ColorStateList f7142o;

    /* JADX INFO: renamed from: p */
    private ColorStateList f7143p;

    /* JADX INFO: renamed from: q */
    private float f7144q;

    /* JADX INFO: renamed from: r */
    private float f7145r;

    /* JADX INFO: renamed from: s */
    private float f7146s;

    /* JADX INFO: renamed from: t */
    private float f7147t;

    /* JADX INFO: renamed from: u */
    private float f7148u;

    /* JADX INFO: renamed from: v */
    private float f7149v;

    /* JADX INFO: renamed from: w */
    private Typeface f7150w;

    /* JADX INFO: renamed from: x */
    private Typeface f7151x;

    /* JADX INFO: renamed from: y */
    private Typeface f7152y;

    /* JADX INFO: renamed from: z */
    private C1255a f7153z;

    /* JADX INFO: renamed from: k */
    private int f7138k = 16;

    /* JADX INFO: renamed from: l */
    private int f7139l = 16;

    /* JADX INFO: renamed from: m */
    private float f7140m = 15.0f;

    /* JADX INFO: renamed from: n */
    private float f7141n = 15.0f;

    /* JADX INFO: renamed from: E */
    private boolean f7097E = true;

    /* JADX INFO: renamed from: f0 */
    private int f7130f0 = 1;

    /* JADX INFO: renamed from: g0 */
    private float f7132g0 = CropImageView.DEFAULT_ASPECT_RATIO;

    /* JADX INFO: renamed from: h0 */
    private float f7134h0 = 1.0f;

    /* JADX INFO: renamed from: i0 */
    private int f7136i0 = C1118g.f7174n;

    /* JADX INFO: renamed from: M */
    private final TextPaint f7105M = new TextPaint(129);

    /* JADX INFO: renamed from: N */
    private final TextPaint f7106N = new TextPaint(this.f7105M);

    /* JADX INFO: renamed from: i */
    private final Rect f7135i = new Rect();

    /* JADX INFO: renamed from: h */
    private final Rect f7133h = new Rect();

    /* JADX INFO: renamed from: j */
    private final RectF f7137j = new RectF();

    /* JADX INFO: renamed from: f */
    private float f7129f = m8642f();

    /* JADX INFO: renamed from: com.google.android.material.internal.a$a */
    class a implements C1255a.a {
        a() {
        }

        @Override // p093d.p099c.p100a.p101a.p117x.C1255a.a
        /* JADX INFO: renamed from: a */
        public void mo8686a(Typeface typeface) {
            C1112a.this.m8666R(typeface);
        }
    }

    static {
        f7091j0 = Build.VERSION.SDK_INT < 18;
        Paint paint = null;
        f7092k0 = null;
        if (0 != 0) {
            paint.setAntiAlias(true);
            f7092k0.setColor(-65281);
        }
    }

    public C1112a(View view) {
        this.f7119a = view;
    }

    /* JADX INFO: renamed from: A */
    private void m8626A(TextPaint textPaint) {
        textPaint.setTextSize(this.f7140m);
        textPaint.setTypeface(this.f7151x);
        if (Build.VERSION.SDK_INT >= 21) {
            textPaint.setLetterSpacing(this.f7118Z);
        }
    }

    /* JADX INFO: renamed from: B */
    private void m8627B(float f) {
        if (this.f7125d) {
            this.f7137j.set(f < this.f7129f ? this.f7133h : this.f7135i);
            return;
        }
        this.f7137j.left = m8631G(this.f7133h.left, this.f7135i.left, f, this.f7107O);
        this.f7137j.top = m8631G(this.f7144q, this.f7145r, f, this.f7107O);
        this.f7137j.right = m8631G(this.f7133h.right, this.f7135i.right, f, this.f7107O);
        this.f7137j.bottom = m8631G(this.f7133h.bottom, this.f7135i.bottom, f, this.f7107O);
    }

    /* JADX INFO: renamed from: C */
    private static boolean m8628C(float f, float f2) {
        return Math.abs(f - f2) < 0.001f;
    }

    /* JADX INFO: renamed from: D */
    private boolean m8629D() {
        return C0292v.m2046C(this.f7119a) == 1;
    }

    /* JADX INFO: renamed from: F */
    private boolean m8630F(CharSequence charSequence, boolean z) {
        return (z ? C0617e.f3804d : C0617e.f3803c).mo4837a(charSequence, 0, charSequence.length());
    }

    /* JADX INFO: renamed from: G */
    private static float m8631G(float f, float f2, float f3, TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f3 = timeInterpolator.getInterpolation(f3);
        }
        return C1227a.m9335a(f, f2, f3);
    }

    /* JADX INFO: renamed from: K */
    private static boolean m8632K(Rect rect, int i, int i2, int i3, int i4) {
        return rect.left == i && rect.top == i2 && rect.right == i3 && rect.bottom == i4;
    }

    /* JADX INFO: renamed from: O */
    private void m8633O(float f) {
        this.f7122b0 = f;
        C0292v.m2087f0(this.f7119a);
    }

    /* JADX INFO: renamed from: S */
    private boolean m8634S(Typeface typeface) {
        C1255a c1255a = this.f7093A;
        if (c1255a != null) {
            c1255a.m9449c();
        }
        if (this.f7150w == typeface) {
            return false;
        }
        this.f7150w = typeface;
        return true;
    }

    /* JADX INFO: renamed from: V */
    private void m8635V(float f) {
        this.f7124c0 = f;
        C0292v.m2087f0(this.f7119a);
    }

    /* JADX INFO: renamed from: Z */
    private boolean m8636Z(Typeface typeface) {
        C1255a c1255a = this.f7153z;
        if (c1255a != null) {
            c1255a.m9449c();
        }
        if (this.f7151x == typeface) {
            return false;
        }
        this.f7151x = typeface;
        return true;
    }

    /* JADX INFO: renamed from: a */
    private static int m8637a(int i, int i2, float f) {
        float f2 = 1.0f - f;
        return Color.argb((int) ((Color.alpha(i) * f2) + (Color.alpha(i2) * f)), (int) ((Color.red(i) * f2) + (Color.red(i2) * f)), (int) ((Color.green(i) * f2) + (Color.green(i2) * f)), (int) ((Color.blue(i) * f2) + (Color.blue(i2) * f)));
    }

    /* JADX INFO: renamed from: b */
    private void m8638b(boolean z) {
        StaticLayout staticLayout;
        float f = this.f7102J;
        m8647j(this.f7141n, z);
        CharSequence charSequence = this.f7095C;
        if (charSequence != null && (staticLayout = this.f7120a0) != null) {
            this.f7128e0 = TextUtils.ellipsize(charSequence, this.f7105M, staticLayout.getWidth(), TextUtils.TruncateAt.END);
        }
        CharSequence charSequence2 = this.f7128e0;
        float lineStart = CropImageView.DEFAULT_ASPECT_RATIO;
        float fMeasureText = charSequence2 != null ? this.f7105M.measureText(charSequence2, 0, charSequence2.length()) : CropImageView.DEFAULT_ASPECT_RATIO;
        int iM1883b = C0266e.m1883b(this.f7139l, this.f7096D ? 1 : 0);
        int i = iM1883b & 112;
        if (i == 48) {
            this.f7145r = this.f7135i.top;
        } else if (i != 80) {
            this.f7145r = this.f7135i.centerY() - ((this.f7105M.descent() - this.f7105M.ascent()) / 2.0f);
        } else {
            this.f7145r = this.f7135i.bottom + this.f7105M.ascent();
        }
        int i2 = iM1883b & 8388615;
        if (i2 == 1) {
            this.f7147t = this.f7135i.centerX() - (fMeasureText / 2.0f);
        } else if (i2 != 5) {
            this.f7147t = this.f7135i.left;
        } else {
            this.f7147t = this.f7135i.right - fMeasureText;
        }
        m8647j(this.f7140m, z);
        float height = this.f7120a0 != null ? r13.getHeight() : CropImageView.DEFAULT_ASPECT_RATIO;
        CharSequence charSequence3 = this.f7095C;
        float fMeasureText2 = charSequence3 != null ? this.f7105M.measureText(charSequence3, 0, charSequence3.length()) : CropImageView.DEFAULT_ASPECT_RATIO;
        StaticLayout staticLayout2 = this.f7120a0;
        if (staticLayout2 != null && this.f7130f0 > 1) {
            fMeasureText2 = staticLayout2.getWidth();
        }
        StaticLayout staticLayout3 = this.f7120a0;
        if (staticLayout3 != null) {
            lineStart = this.f7130f0 > 1 ? staticLayout3.getLineStart(0) : staticLayout3.getLineLeft(0);
        }
        this.f7126d0 = lineStart;
        int iM1883b2 = C0266e.m1883b(this.f7138k, this.f7096D ? 1 : 0);
        int i3 = iM1883b2 & 112;
        if (i3 == 48) {
            this.f7144q = this.f7133h.top;
        } else if (i3 != 80) {
            this.f7144q = this.f7133h.centerY() - (height / 2.0f);
        } else {
            this.f7144q = (this.f7133h.bottom - height) + this.f7105M.descent();
        }
        int i4 = iM1883b2 & 8388615;
        if (i4 == 1) {
            this.f7146s = this.f7133h.centerX() - (fMeasureText2 / 2.0f);
        } else if (i4 != 5) {
            this.f7146s = this.f7133h.left;
        } else {
            this.f7146s = this.f7133h.right - fMeasureText2;
        }
        m8648k();
        m8639b0(f);
    }

    /* JADX INFO: renamed from: b0 */
    private void m8639b0(float f) {
        m8646i(f);
        boolean z = f7091j0 && this.f7101I != 1.0f;
        this.f7098F = z;
        if (z) {
            m8651o();
        }
        C0292v.m2087f0(this.f7119a);
    }

    /* JADX INFO: renamed from: d */
    private void m8640d() {
        m8644h(this.f7123c);
    }

    /* JADX INFO: renamed from: e */
    private float m8641e(float f) {
        float f2 = this.f7129f;
        return f <= f2 ? C1227a.m9336b(1.0f, CropImageView.DEFAULT_ASPECT_RATIO, this.f7127e, f2, f) : C1227a.m9336b(CropImageView.DEFAULT_ASPECT_RATIO, 1.0f, f2, 1.0f, f);
    }

    /* JADX INFO: renamed from: f */
    private float m8642f() {
        float f = this.f7127e;
        return f + ((1.0f - f) * 0.5f);
    }

    /* JADX INFO: renamed from: g */
    private boolean m8643g(CharSequence charSequence) {
        boolean zM8629D = m8629D();
        return this.f7097E ? m8630F(charSequence, zM8629D) : zM8629D;
    }

    /* JADX INFO: renamed from: h */
    private void m8644h(float f) {
        float f2;
        m8627B(f);
        if (!this.f7125d) {
            this.f7148u = m8631G(this.f7146s, this.f7147t, f, this.f7107O);
            this.f7149v = m8631G(this.f7144q, this.f7145r, f, this.f7107O);
            m8639b0(m8631G(this.f7140m, this.f7141n, f, this.f7108P));
            f2 = f;
        } else if (f < this.f7129f) {
            this.f7148u = this.f7146s;
            this.f7149v = this.f7144q;
            m8639b0(this.f7140m);
            f2 = CropImageView.DEFAULT_ASPECT_RATIO;
        } else {
            this.f7148u = this.f7147t;
            this.f7149v = this.f7145r - Math.max(0, this.f7131g);
            m8639b0(this.f7141n);
            f2 = 1.0f;
        }
        m8633O(1.0f - m8631G(CropImageView.DEFAULT_ASPECT_RATIO, 1.0f, 1.0f - f, C1227a.f7755b));
        m8635V(m8631G(1.0f, CropImageView.DEFAULT_ASPECT_RATIO, f, C1227a.f7755b));
        if (this.f7143p != this.f7142o) {
            this.f7105M.setColor(m8637a(m8655w(), m8683u(), f2));
        } else {
            this.f7105M.setColor(m8683u());
        }
        if (Build.VERSION.SDK_INT >= 21) {
            float f3 = this.f7117Y;
            float f4 = this.f7118Z;
            if (f3 != f4) {
                this.f7105M.setLetterSpacing(m8631G(f4, f3, f, C1227a.f7755b));
            } else {
                this.f7105M.setLetterSpacing(f3);
            }
        }
        this.f7105M.setShadowLayer(m8631G(this.f7113U, this.f7109Q, f, null), m8631G(this.f7114V, this.f7110R, f, null), m8631G(this.f7115W, this.f7111S, f, null), m8637a(m8654v(this.f7116X), m8654v(this.f7112T), f));
        if (this.f7125d) {
            this.f7105M.setAlpha((int) (m8641e(f) * 255.0f));
        }
        C0292v.m2087f0(this.f7119a);
    }

    /* JADX INFO: renamed from: h0 */
    private boolean m8645h0() {
        return this.f7130f0 > 1 && (!this.f7096D || this.f7125d) && !this.f7098F;
    }

    /* JADX INFO: renamed from: i */
    private void m8646i(float f) {
        m8647j(f, false);
    }

    /* JADX INFO: renamed from: j */
    private void m8647j(float f, boolean z) {
        boolean z2;
        float f2;
        boolean z3;
        if (this.f7094B == null) {
            return;
        }
        float fWidth = this.f7135i.width();
        float fWidth2 = this.f7133h.width();
        if (m8628C(f, this.f7141n)) {
            f2 = this.f7141n;
            this.f7101I = 1.0f;
            Typeface typeface = this.f7152y;
            Typeface typeface2 = this.f7150w;
            if (typeface != typeface2) {
                this.f7152y = typeface2;
                z3 = true;
            } else {
                z3 = false;
            }
        } else {
            float f3 = this.f7140m;
            Typeface typeface3 = this.f7152y;
            Typeface typeface4 = this.f7151x;
            if (typeface3 != typeface4) {
                this.f7152y = typeface4;
                z2 = true;
            } else {
                z2 = false;
            }
            if (m8628C(f, this.f7140m)) {
                this.f7101I = 1.0f;
            } else {
                this.f7101I = f / this.f7140m;
            }
            float f4 = this.f7141n / this.f7140m;
            fWidth = (!z && fWidth2 * f4 > fWidth) ? Math.min(fWidth / f4, fWidth2) : fWidth2;
            f2 = f3;
            z3 = z2;
        }
        if (fWidth > CropImageView.DEFAULT_ASPECT_RATIO) {
            z3 = this.f7102J != f2 || this.f7104L || z3;
            this.f7102J = f2;
            this.f7104L = false;
        }
        if (this.f7095C == null || z3) {
            this.f7105M.setTextSize(this.f7102J);
            this.f7105M.setTypeface(this.f7152y);
            this.f7105M.setLinearText(this.f7101I != 1.0f);
            this.f7096D = m8643g(this.f7094B);
            StaticLayout staticLayoutM8649l = m8649l(m8645h0() ? this.f7130f0 : 1, fWidth, this.f7096D);
            this.f7120a0 = staticLayoutM8649l;
            this.f7095C = staticLayoutM8649l.getText();
        }
    }

    /* JADX INFO: renamed from: k */
    private void m8648k() {
        Bitmap bitmap = this.f7099G;
        if (bitmap != null) {
            bitmap.recycle();
            this.f7099G = null;
        }
    }

    /* JADX INFO: renamed from: l */
    private StaticLayout m8649l(int i, float f, boolean z) {
        StaticLayout staticLayoutM8701a;
        try {
            C1118g c1118gM8700c = C1118g.m8700c(this.f7094B, this.f7105M, (int) f);
            c1118gM8700c.m8703e(TextUtils.TruncateAt.END);
            c1118gM8700c.m8706h(z);
            c1118gM8700c.m8702d(Layout.Alignment.ALIGN_NORMAL);
            c1118gM8700c.m8705g(false);
            c1118gM8700c.m8708j(i);
            c1118gM8700c.m8707i(this.f7132g0, this.f7134h0);
            c1118gM8700c.m8704f(this.f7136i0);
            staticLayoutM8701a = c1118gM8700c.m8701a();
        } catch (C1118g.a e) {
            e.getCause().getMessage();
            staticLayoutM8701a = null;
        }
        C0626h.m4855e(staticLayoutM8701a);
        return staticLayoutM8701a;
    }

    /* JADX INFO: renamed from: n */
    private void m8650n(Canvas canvas, float f, float f2) {
        int alpha = this.f7105M.getAlpha();
        canvas.translate(f, f2);
        float f3 = alpha;
        this.f7105M.setAlpha((int) (this.f7124c0 * f3));
        this.f7120a0.draw(canvas);
        this.f7105M.setAlpha((int) (this.f7122b0 * f3));
        int lineBaseline = this.f7120a0.getLineBaseline(0);
        CharSequence charSequence = this.f7128e0;
        float f4 = lineBaseline;
        canvas.drawText(charSequence, 0, charSequence.length(), CropImageView.DEFAULT_ASPECT_RATIO, f4, this.f7105M);
        if (this.f7125d) {
            return;
        }
        String strTrim = this.f7128e0.toString().trim();
        if (strTrim.endsWith("…")) {
            strTrim = strTrim.substring(0, strTrim.length() - 1);
        }
        String str = strTrim;
        this.f7105M.setAlpha(alpha);
        canvas.drawText(str, 0, Math.min(this.f7120a0.getLineEnd(0), str.length()), CropImageView.DEFAULT_ASPECT_RATIO, f4, (Paint) this.f7105M);
    }

    /* JADX INFO: renamed from: o */
    private void m8651o() {
        if (this.f7099G != null || this.f7133h.isEmpty() || TextUtils.isEmpty(this.f7095C)) {
            return;
        }
        m8644h(CropImageView.DEFAULT_ASPECT_RATIO);
        int width = this.f7120a0.getWidth();
        int height = this.f7120a0.getHeight();
        if (width <= 0 || height <= 0) {
            return;
        }
        this.f7099G = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        this.f7120a0.draw(new Canvas(this.f7099G));
        if (this.f7100H == null) {
            this.f7100H = new Paint(3);
        }
    }

    /* JADX INFO: renamed from: s */
    private float m8652s(int i, int i2) {
        return (i2 == 17 || (i2 & 7) == 1) ? (i / 2.0f) - (m8673c() / 2.0f) : ((i2 & 8388613) == 8388613 || (i2 & 5) == 5) ? this.f7096D ? this.f7135i.left : this.f7135i.right - m8673c() : this.f7096D ? this.f7135i.right - m8673c() : this.f7135i.left;
    }

    /* JADX INFO: renamed from: t */
    private float m8653t(RectF rectF, int i, int i2) {
        return (i2 == 17 || (i2 & 7) == 1) ? (i / 2.0f) + (m8673c() / 2.0f) : ((i2 & 8388613) == 8388613 || (i2 & 5) == 5) ? this.f7096D ? rectF.left + m8673c() : this.f7135i.right : this.f7096D ? this.f7135i.right : rectF.left + m8673c();
    }

    /* JADX INFO: renamed from: v */
    private int m8654v(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.f7103K;
        return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
    }

    /* JADX INFO: renamed from: w */
    private int m8655w() {
        return m8654v(this.f7142o);
    }

    /* JADX INFO: renamed from: z */
    private void m8656z(TextPaint textPaint) {
        textPaint.setTextSize(this.f7141n);
        textPaint.setTypeface(this.f7150w);
        if (Build.VERSION.SDK_INT >= 21) {
            textPaint.setLetterSpacing(this.f7117Y);
        }
    }

    /* JADX INFO: renamed from: E */
    public final boolean m8657E() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f7143p;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f7142o) != null && colorStateList.isStateful());
    }

    /* JADX INFO: renamed from: H */
    void m8658H() {
        this.f7121b = this.f7135i.width() > 0 && this.f7135i.height() > 0 && this.f7133h.width() > 0 && this.f7133h.height() > 0;
    }

    /* JADX INFO: renamed from: I */
    public void m8659I() {
        m8660J(false);
    }

    /* JADX INFO: renamed from: J */
    public void m8660J(boolean z) {
        if ((this.f7119a.getHeight() <= 0 || this.f7119a.getWidth() <= 0) && !z) {
            return;
        }
        m8638b(z);
        m8640d();
    }

    /* JADX INFO: renamed from: L */
    public void m8661L(int i, int i2, int i3, int i4) {
        if (m8632K(this.f7135i, i, i2, i3, i4)) {
            return;
        }
        this.f7135i.set(i, i2, i3, i4);
        this.f7104L = true;
        m8658H();
    }

    /* JADX INFO: renamed from: M */
    public void m8662M(Rect rect) {
        m8661L(rect.left, rect.top, rect.right, rect.bottom);
    }

    /* JADX INFO: renamed from: N */
    public void m8663N(int i) {
        C1258d c1258d = new C1258d(this.f7119a.getContext(), i);
        ColorStateList colorStateList = c1258d.f7815a;
        if (colorStateList != null) {
            this.f7143p = colorStateList;
        }
        float f = c1258d.f7825k;
        if (f != CropImageView.DEFAULT_ASPECT_RATIO) {
            this.f7141n = f;
        }
        ColorStateList colorStateList2 = c1258d.f7816b;
        if (colorStateList2 != null) {
            this.f7112T = colorStateList2;
        }
        this.f7110R = c1258d.f7820f;
        this.f7111S = c1258d.f7821g;
        this.f7109Q = c1258d.f7822h;
        this.f7117Y = c1258d.f7824j;
        C1255a c1255a = this.f7093A;
        if (c1255a != null) {
            c1255a.m9449c();
        }
        this.f7093A = new C1255a(new a(), c1258d.m9467e());
        c1258d.m9470h(this.f7119a.getContext(), this.f7093A);
        m8659I();
    }

    /* JADX INFO: renamed from: P */
    public void m8664P(ColorStateList colorStateList) {
        if (this.f7143p != colorStateList) {
            this.f7143p = colorStateList;
            m8659I();
        }
    }

    /* JADX INFO: renamed from: Q */
    public void m8665Q(int i) {
        if (this.f7139l != i) {
            this.f7139l = i;
            m8659I();
        }
    }

    /* JADX INFO: renamed from: R */
    public void m8666R(Typeface typeface) {
        if (m8634S(typeface)) {
            m8659I();
        }
    }

    /* JADX INFO: renamed from: T */
    public void m8667T(int i, int i2, int i3, int i4) {
        if (m8632K(this.f7133h, i, i2, i3, i4)) {
            return;
        }
        this.f7133h.set(i, i2, i3, i4);
        this.f7104L = true;
        m8658H();
    }

    /* JADX INFO: renamed from: U */
    public void m8668U(Rect rect) {
        m8667T(rect.left, rect.top, rect.right, rect.bottom);
    }

    /* JADX INFO: renamed from: W */
    public void m8669W(ColorStateList colorStateList) {
        if (this.f7142o != colorStateList) {
            this.f7142o = colorStateList;
            m8659I();
        }
    }

    /* JADX INFO: renamed from: X */
    public void m8670X(int i) {
        if (this.f7138k != i) {
            this.f7138k = i;
            m8659I();
        }
    }

    /* JADX INFO: renamed from: Y */
    public void m8671Y(float f) {
        if (this.f7140m != f) {
            this.f7140m = f;
            m8659I();
        }
    }

    /* JADX INFO: renamed from: a0 */
    public void m8672a0(float f) {
        float fM4749a = C0602a.m4749a(f, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f);
        if (fM4749a != this.f7123c) {
            this.f7123c = fM4749a;
            m8640d();
        }
    }

    /* JADX INFO: renamed from: c */
    public float m8673c() {
        if (this.f7094B == null) {
            return CropImageView.DEFAULT_ASPECT_RATIO;
        }
        m8656z(this.f7106N);
        TextPaint textPaint = this.f7106N;
        CharSequence charSequence = this.f7094B;
        return textPaint.measureText(charSequence, 0, charSequence.length());
    }

    /* JADX INFO: renamed from: c0 */
    public void m8674c0(TimeInterpolator timeInterpolator) {
        this.f7107O = timeInterpolator;
        m8659I();
    }

    /* JADX INFO: renamed from: d0 */
    public final boolean m8675d0(int[] iArr) {
        this.f7103K = iArr;
        if (!m8657E()) {
            return false;
        }
        m8659I();
        return true;
    }

    /* JADX INFO: renamed from: e0 */
    public void m8676e0(CharSequence charSequence) {
        if (charSequence == null || !TextUtils.equals(this.f7094B, charSequence)) {
            this.f7094B = charSequence;
            this.f7095C = null;
            m8648k();
            m8659I();
        }
    }

    /* JADX INFO: renamed from: f0 */
    public void m8677f0(TimeInterpolator timeInterpolator) {
        this.f7108P = timeInterpolator;
        m8659I();
    }

    /* JADX INFO: renamed from: g0 */
    public void m8678g0(Typeface typeface) {
        boolean zM8634S = m8634S(typeface);
        boolean zM8636Z = m8636Z(typeface);
        if (zM8634S || zM8636Z) {
            m8659I();
        }
    }

    /* JADX INFO: renamed from: m */
    public void m8679m(Canvas canvas) {
        int iSave = canvas.save();
        if (this.f7095C == null || !this.f7121b) {
            return;
        }
        float lineStart = (this.f7148u + (this.f7130f0 > 1 ? this.f7120a0.getLineStart(0) : this.f7120a0.getLineLeft(0))) - (this.f7126d0 * 2.0f);
        this.f7105M.setTextSize(this.f7102J);
        float f = this.f7148u;
        float f2 = this.f7149v;
        boolean z = this.f7098F && this.f7099G != null;
        float f3 = this.f7101I;
        if (f3 != 1.0f && !this.f7125d) {
            canvas.scale(f3, f3, f, f2);
        }
        if (z) {
            canvas.drawBitmap(this.f7099G, f, f2, this.f7100H);
            canvas.restoreToCount(iSave);
            return;
        }
        if (!m8645h0() || (this.f7125d && this.f7123c <= this.f7129f)) {
            canvas.translate(f, f2);
            this.f7120a0.draw(canvas);
        } else {
            m8650n(canvas, lineStart, f2);
        }
        canvas.restoreToCount(iSave);
    }

    /* JADX INFO: renamed from: p */
    public void m8680p(RectF rectF, int i, int i2) {
        this.f7096D = m8643g(this.f7094B);
        rectF.left = m8652s(i, i2);
        rectF.top = this.f7135i.top;
        rectF.right = m8653t(rectF, i, i2);
        rectF.bottom = this.f7135i.top + m8682r();
    }

    /* JADX INFO: renamed from: q */
    public ColorStateList m8681q() {
        return this.f7143p;
    }

    /* JADX INFO: renamed from: r */
    public float m8682r() {
        m8656z(this.f7106N);
        return -this.f7106N.ascent();
    }

    /* JADX INFO: renamed from: u */
    public int m8683u() {
        return m8654v(this.f7143p);
    }

    /* JADX INFO: renamed from: x */
    public float m8684x() {
        m8626A(this.f7106N);
        return -this.f7106N.ascent();
    }

    /* JADX INFO: renamed from: y */
    public float m8685y() {
        return this.f7123c;
    }
}
