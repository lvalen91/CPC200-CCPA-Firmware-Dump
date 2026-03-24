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
import androidx.core.view.v;
import com.google.android.material.internal.g;
import com.yalantis.ucrop.view.CropImageView;
import d.c.a.a.x.a;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public final class a {
    private static final boolean j0;
    private static final Paint k0;
    private d.c.a.a.x.a A;
    private CharSequence B;
    private CharSequence C;
    private boolean D;
    private boolean F;
    private Bitmap G;
    private Paint H;
    private float I;
    private float J;
    private int[] K;
    private boolean L;
    private TimeInterpolator O;
    private TimeInterpolator P;
    private float Q;
    private float R;
    private float S;
    private ColorStateList T;
    private float U;
    private float V;
    private float W;
    private ColorStateList X;
    private float Y;
    private float Z;
    private final View a;
    private StaticLayout a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f2150b;
    private float b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f2151c;
    private float c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f2152d;
    private float d0;
    private float e;
    private CharSequence e0;
    private int g;
    private ColorStateList o;
    private ColorStateList p;
    private float q;
    private float r;
    private float s;
    private float t;
    private float u;
    private float v;
    private Typeface w;
    private Typeface x;
    private Typeface y;
    private d.c.a.a.x.a z;
    private int k = 16;
    private int l = 16;
    private float m = 15.0f;
    private float n = 15.0f;
    private boolean E = true;
    private int f0 = 1;
    private float g0 = CropImageView.DEFAULT_ASPECT_RATIO;
    private float h0 = 1.0f;
    private int i0 = g.n;
    private final TextPaint M = new TextPaint(129);
    private final TextPaint N = new TextPaint(this.M);
    private final Rect i = new Rect();
    private final Rect h = new Rect();
    private final RectF j = new RectF();
    private float f = f();

    /* JADX INFO: renamed from: com.google.android.material.internal.a$a, reason: collision with other inner class name */
    class C0112a implements a.InterfaceC0124a {
        C0112a() {
        }

        @Override // d.c.a.a.x.a.InterfaceC0124a
        public void a(Typeface typeface) {
            a.this.R(typeface);
        }
    }

    static {
        j0 = Build.VERSION.SDK_INT < 18;
        Paint paint = null;
        k0 = null;
        if (0 != 0) {
            paint.setAntiAlias(true);
            k0.setColor(-65281);
        }
    }

    public a(View view) {
        this.a = view;
    }

    private void A(TextPaint textPaint) {
        textPaint.setTextSize(this.m);
        textPaint.setTypeface(this.x);
        if (Build.VERSION.SDK_INT >= 21) {
            textPaint.setLetterSpacing(this.Z);
        }
    }

    private void B(float f) {
        if (this.f2152d) {
            this.j.set(f < this.f ? this.h : this.i);
            return;
        }
        this.j.left = G(this.h.left, this.i.left, f, this.O);
        this.j.top = G(this.q, this.r, f, this.O);
        this.j.right = G(this.h.right, this.i.right, f, this.O);
        this.j.bottom = G(this.h.bottom, this.i.bottom, f, this.O);
    }

    private static boolean C(float f, float f2) {
        return Math.abs(f - f2) < 0.001f;
    }

    private boolean D() {
        return v.C(this.a) == 1;
    }

    private boolean F(CharSequence charSequence, boolean z) {
        return (z ? c.g.i.e.f1233d : c.g.i.e.f1232c).a(charSequence, 0, charSequence.length());
    }

    private static float G(float f, float f2, float f3, TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f3 = timeInterpolator.getInterpolation(f3);
        }
        return d.c.a.a.l.a.a(f, f2, f3);
    }

    private static boolean K(Rect rect, int i, int i2, int i3, int i4) {
        return rect.left == i && rect.top == i2 && rect.right == i3 && rect.bottom == i4;
    }

    private void O(float f) {
        this.b0 = f;
        v.f0(this.a);
    }

    private boolean S(Typeface typeface) {
        d.c.a.a.x.a aVar = this.A;
        if (aVar != null) {
            aVar.c();
        }
        if (this.w == typeface) {
            return false;
        }
        this.w = typeface;
        return true;
    }

    private void V(float f) {
        this.c0 = f;
        v.f0(this.a);
    }

    private boolean Z(Typeface typeface) {
        d.c.a.a.x.a aVar = this.z;
        if (aVar != null) {
            aVar.c();
        }
        if (this.x == typeface) {
            return false;
        }
        this.x = typeface;
        return true;
    }

    private static int a(int i, int i2, float f) {
        float f2 = 1.0f - f;
        return Color.argb((int) ((Color.alpha(i) * f2) + (Color.alpha(i2) * f)), (int) ((Color.red(i) * f2) + (Color.red(i2) * f)), (int) ((Color.green(i) * f2) + (Color.green(i2) * f)), (int) ((Color.blue(i) * f2) + (Color.blue(i2) * f)));
    }

    private void b(boolean z) {
        StaticLayout staticLayout;
        float f = this.J;
        j(this.n, z);
        CharSequence charSequence = this.C;
        if (charSequence != null && (staticLayout = this.a0) != null) {
            this.e0 = TextUtils.ellipsize(charSequence, this.M, staticLayout.getWidth(), TextUtils.TruncateAt.END);
        }
        CharSequence charSequence2 = this.e0;
        float lineStart = CropImageView.DEFAULT_ASPECT_RATIO;
        float fMeasureText = charSequence2 != null ? this.M.measureText(charSequence2, 0, charSequence2.length()) : CropImageView.DEFAULT_ASPECT_RATIO;
        int iB = androidx.core.view.e.b(this.l, this.D ? 1 : 0);
        int i = iB & 112;
        if (i == 48) {
            this.r = this.i.top;
        } else if (i != 80) {
            this.r = this.i.centerY() - ((this.M.descent() - this.M.ascent()) / 2.0f);
        } else {
            this.r = this.i.bottom + this.M.ascent();
        }
        int i2 = iB & 8388615;
        if (i2 == 1) {
            this.t = this.i.centerX() - (fMeasureText / 2.0f);
        } else if (i2 != 5) {
            this.t = this.i.left;
        } else {
            this.t = this.i.right - fMeasureText;
        }
        j(this.m, z);
        float height = this.a0 != null ? r13.getHeight() : CropImageView.DEFAULT_ASPECT_RATIO;
        CharSequence charSequence3 = this.C;
        float fMeasureText2 = charSequence3 != null ? this.M.measureText(charSequence3, 0, charSequence3.length()) : CropImageView.DEFAULT_ASPECT_RATIO;
        StaticLayout staticLayout2 = this.a0;
        if (staticLayout2 != null && this.f0 > 1) {
            fMeasureText2 = staticLayout2.getWidth();
        }
        StaticLayout staticLayout3 = this.a0;
        if (staticLayout3 != null) {
            lineStart = this.f0 > 1 ? staticLayout3.getLineStart(0) : staticLayout3.getLineLeft(0);
        }
        this.d0 = lineStart;
        int iB2 = androidx.core.view.e.b(this.k, this.D ? 1 : 0);
        int i3 = iB2 & 112;
        if (i3 == 48) {
            this.q = this.h.top;
        } else if (i3 != 80) {
            this.q = this.h.centerY() - (height / 2.0f);
        } else {
            this.q = (this.h.bottom - height) + this.M.descent();
        }
        int i4 = iB2 & 8388615;
        if (i4 == 1) {
            this.s = this.h.centerX() - (fMeasureText2 / 2.0f);
        } else if (i4 != 5) {
            this.s = this.h.left;
        } else {
            this.s = this.h.right - fMeasureText2;
        }
        k();
        b0(f);
    }

    private void b0(float f) {
        i(f);
        boolean z = j0 && this.I != 1.0f;
        this.F = z;
        if (z) {
            o();
        }
        v.f0(this.a);
    }

    private void d() {
        h(this.f2151c);
    }

    private float e(float f) {
        float f2 = this.f;
        return f <= f2 ? d.c.a.a.l.a.b(1.0f, CropImageView.DEFAULT_ASPECT_RATIO, this.e, f2, f) : d.c.a.a.l.a.b(CropImageView.DEFAULT_ASPECT_RATIO, 1.0f, f2, 1.0f, f);
    }

    private float f() {
        float f = this.e;
        return f + ((1.0f - f) * 0.5f);
    }

    private boolean g(CharSequence charSequence) {
        boolean zD = D();
        return this.E ? F(charSequence, zD) : zD;
    }

    private void h(float f) {
        float f2;
        B(f);
        if (!this.f2152d) {
            this.u = G(this.s, this.t, f, this.O);
            this.v = G(this.q, this.r, f, this.O);
            b0(G(this.m, this.n, f, this.P));
            f2 = f;
        } else if (f < this.f) {
            this.u = this.s;
            this.v = this.q;
            b0(this.m);
            f2 = CropImageView.DEFAULT_ASPECT_RATIO;
        } else {
            this.u = this.t;
            this.v = this.r - Math.max(0, this.g);
            b0(this.n);
            f2 = 1.0f;
        }
        O(1.0f - G(CropImageView.DEFAULT_ASPECT_RATIO, 1.0f, 1.0f - f, d.c.a.a.l.a.f2315b));
        V(G(1.0f, CropImageView.DEFAULT_ASPECT_RATIO, f, d.c.a.a.l.a.f2315b));
        if (this.p != this.o) {
            this.M.setColor(a(w(), u(), f2));
        } else {
            this.M.setColor(u());
        }
        if (Build.VERSION.SDK_INT >= 21) {
            float f3 = this.Y;
            float f4 = this.Z;
            if (f3 != f4) {
                this.M.setLetterSpacing(G(f4, f3, f, d.c.a.a.l.a.f2315b));
            } else {
                this.M.setLetterSpacing(f3);
            }
        }
        this.M.setShadowLayer(G(this.U, this.Q, f, null), G(this.V, this.R, f, null), G(this.W, this.S, f, null), a(v(this.X), v(this.T), f));
        if (this.f2152d) {
            this.M.setAlpha((int) (e(f) * 255.0f));
        }
        v.f0(this.a);
    }

    private boolean h0() {
        return this.f0 > 1 && (!this.D || this.f2152d) && !this.F;
    }

    private void i(float f) {
        j(f, false);
    }

    private void j(float f, boolean z) {
        boolean z2;
        float f2;
        boolean z3;
        if (this.B == null) {
            return;
        }
        float fWidth = this.i.width();
        float fWidth2 = this.h.width();
        if (C(f, this.n)) {
            f2 = this.n;
            this.I = 1.0f;
            Typeface typeface = this.y;
            Typeface typeface2 = this.w;
            if (typeface != typeface2) {
                this.y = typeface2;
                z3 = true;
            } else {
                z3 = false;
            }
        } else {
            float f3 = this.m;
            Typeface typeface3 = this.y;
            Typeface typeface4 = this.x;
            if (typeface3 != typeface4) {
                this.y = typeface4;
                z2 = true;
            } else {
                z2 = false;
            }
            if (C(f, this.m)) {
                this.I = 1.0f;
            } else {
                this.I = f / this.m;
            }
            float f4 = this.n / this.m;
            fWidth = (!z && fWidth2 * f4 > fWidth) ? Math.min(fWidth / f4, fWidth2) : fWidth2;
            f2 = f3;
            z3 = z2;
        }
        if (fWidth > CropImageView.DEFAULT_ASPECT_RATIO) {
            z3 = this.J != f2 || this.L || z3;
            this.J = f2;
            this.L = false;
        }
        if (this.C == null || z3) {
            this.M.setTextSize(this.J);
            this.M.setTypeface(this.y);
            this.M.setLinearText(this.I != 1.0f);
            this.D = g(this.B);
            StaticLayout staticLayoutL = l(h0() ? this.f0 : 1, fWidth, this.D);
            this.a0 = staticLayoutL;
            this.C = staticLayoutL.getText();
        }
    }

    private void k() {
        Bitmap bitmap = this.G;
        if (bitmap != null) {
            bitmap.recycle();
            this.G = null;
        }
    }

    private StaticLayout l(int i, float f, boolean z) {
        StaticLayout staticLayoutA;
        try {
            g gVarC = g.c(this.B, this.M, (int) f);
            gVarC.e(TextUtils.TruncateAt.END);
            gVarC.h(z);
            gVarC.d(Layout.Alignment.ALIGN_NORMAL);
            gVarC.g(false);
            gVarC.j(i);
            gVarC.i(this.g0, this.h0);
            gVarC.f(this.i0);
            staticLayoutA = gVarC.a();
        } catch (g.a e) {
            e.getCause().getMessage();
            staticLayoutA = null;
        }
        c.g.j.h.e(staticLayoutA);
        return staticLayoutA;
    }

    private void n(Canvas canvas, float f, float f2) {
        int alpha = this.M.getAlpha();
        canvas.translate(f, f2);
        float f3 = alpha;
        this.M.setAlpha((int) (this.c0 * f3));
        this.a0.draw(canvas);
        this.M.setAlpha((int) (this.b0 * f3));
        int lineBaseline = this.a0.getLineBaseline(0);
        CharSequence charSequence = this.e0;
        float f4 = lineBaseline;
        canvas.drawText(charSequence, 0, charSequence.length(), CropImageView.DEFAULT_ASPECT_RATIO, f4, this.M);
        if (this.f2152d) {
            return;
        }
        String strTrim = this.e0.toString().trim();
        if (strTrim.endsWith("…")) {
            strTrim = strTrim.substring(0, strTrim.length() - 1);
        }
        String str = strTrim;
        this.M.setAlpha(alpha);
        canvas.drawText(str, 0, Math.min(this.a0.getLineEnd(0), str.length()), CropImageView.DEFAULT_ASPECT_RATIO, f4, (Paint) this.M);
    }

    private void o() {
        if (this.G != null || this.h.isEmpty() || TextUtils.isEmpty(this.C)) {
            return;
        }
        h(CropImageView.DEFAULT_ASPECT_RATIO);
        int width = this.a0.getWidth();
        int height = this.a0.getHeight();
        if (width <= 0 || height <= 0) {
            return;
        }
        this.G = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        this.a0.draw(new Canvas(this.G));
        if (this.H == null) {
            this.H = new Paint(3);
        }
    }

    private float s(int i, int i2) {
        return (i2 == 17 || (i2 & 7) == 1) ? (i / 2.0f) - (c() / 2.0f) : ((i2 & 8388613) == 8388613 || (i2 & 5) == 5) ? this.D ? this.i.left : this.i.right - c() : this.D ? this.i.right - c() : this.i.left;
    }

    private float t(RectF rectF, int i, int i2) {
        return (i2 == 17 || (i2 & 7) == 1) ? (i / 2.0f) + (c() / 2.0f) : ((i2 & 8388613) == 8388613 || (i2 & 5) == 5) ? this.D ? rectF.left + c() : this.i.right : this.D ? this.i.right : rectF.left + c();
    }

    private int v(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.K;
        return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
    }

    private int w() {
        return v(this.o);
    }

    private void z(TextPaint textPaint) {
        textPaint.setTextSize(this.n);
        textPaint.setTypeface(this.w);
        if (Build.VERSION.SDK_INT >= 21) {
            textPaint.setLetterSpacing(this.Y);
        }
    }

    public final boolean E() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.p;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.o) != null && colorStateList.isStateful());
    }

    void H() {
        this.f2150b = this.i.width() > 0 && this.i.height() > 0 && this.h.width() > 0 && this.h.height() > 0;
    }

    public void I() {
        J(false);
    }

    public void J(boolean z) {
        if ((this.a.getHeight() <= 0 || this.a.getWidth() <= 0) && !z) {
            return;
        }
        b(z);
        d();
    }

    public void L(int i, int i2, int i3, int i4) {
        if (K(this.i, i, i2, i3, i4)) {
            return;
        }
        this.i.set(i, i2, i3, i4);
        this.L = true;
        H();
    }

    public void M(Rect rect) {
        L(rect.left, rect.top, rect.right, rect.bottom);
    }

    public void N(int i) {
        d.c.a.a.x.d dVar = new d.c.a.a.x.d(this.a.getContext(), i);
        ColorStateList colorStateList = dVar.a;
        if (colorStateList != null) {
            this.p = colorStateList;
        }
        float f = dVar.k;
        if (f != CropImageView.DEFAULT_ASPECT_RATIO) {
            this.n = f;
        }
        ColorStateList colorStateList2 = dVar.f2339b;
        if (colorStateList2 != null) {
            this.T = colorStateList2;
        }
        this.R = dVar.f;
        this.S = dVar.g;
        this.Q = dVar.h;
        this.Y = dVar.j;
        d.c.a.a.x.a aVar = this.A;
        if (aVar != null) {
            aVar.c();
        }
        this.A = new d.c.a.a.x.a(new C0112a(), dVar.e());
        dVar.h(this.a.getContext(), this.A);
        I();
    }

    public void P(ColorStateList colorStateList) {
        if (this.p != colorStateList) {
            this.p = colorStateList;
            I();
        }
    }

    public void Q(int i) {
        if (this.l != i) {
            this.l = i;
            I();
        }
    }

    public void R(Typeface typeface) {
        if (S(typeface)) {
            I();
        }
    }

    public void T(int i, int i2, int i3, int i4) {
        if (K(this.h, i, i2, i3, i4)) {
            return;
        }
        this.h.set(i, i2, i3, i4);
        this.L = true;
        H();
    }

    public void U(Rect rect) {
        T(rect.left, rect.top, rect.right, rect.bottom);
    }

    public void W(ColorStateList colorStateList) {
        if (this.o != colorStateList) {
            this.o = colorStateList;
            I();
        }
    }

    public void X(int i) {
        if (this.k != i) {
            this.k = i;
            I();
        }
    }

    public void Y(float f) {
        if (this.m != f) {
            this.m = f;
            I();
        }
    }

    public void a0(float f) {
        float fA = c.g.f.a.a(f, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f);
        if (fA != this.f2151c) {
            this.f2151c = fA;
            d();
        }
    }

    public float c() {
        if (this.B == null) {
            return CropImageView.DEFAULT_ASPECT_RATIO;
        }
        z(this.N);
        TextPaint textPaint = this.N;
        CharSequence charSequence = this.B;
        return textPaint.measureText(charSequence, 0, charSequence.length());
    }

    public void c0(TimeInterpolator timeInterpolator) {
        this.O = timeInterpolator;
        I();
    }

    public final boolean d0(int[] iArr) {
        this.K = iArr;
        if (!E()) {
            return false;
        }
        I();
        return true;
    }

    public void e0(CharSequence charSequence) {
        if (charSequence == null || !TextUtils.equals(this.B, charSequence)) {
            this.B = charSequence;
            this.C = null;
            k();
            I();
        }
    }

    public void f0(TimeInterpolator timeInterpolator) {
        this.P = timeInterpolator;
        I();
    }

    public void g0(Typeface typeface) {
        boolean zS = S(typeface);
        boolean Z = Z(typeface);
        if (zS || Z) {
            I();
        }
    }

    public void m(Canvas canvas) {
        int iSave = canvas.save();
        if (this.C == null || !this.f2150b) {
            return;
        }
        float lineStart = (this.u + (this.f0 > 1 ? this.a0.getLineStart(0) : this.a0.getLineLeft(0))) - (this.d0 * 2.0f);
        this.M.setTextSize(this.J);
        float f = this.u;
        float f2 = this.v;
        boolean z = this.F && this.G != null;
        float f3 = this.I;
        if (f3 != 1.0f && !this.f2152d) {
            canvas.scale(f3, f3, f, f2);
        }
        if (z) {
            canvas.drawBitmap(this.G, f, f2, this.H);
            canvas.restoreToCount(iSave);
            return;
        }
        if (!h0() || (this.f2152d && this.f2151c <= this.f)) {
            canvas.translate(f, f2);
            this.a0.draw(canvas);
        } else {
            n(canvas, lineStart, f2);
        }
        canvas.restoreToCount(iSave);
    }

    public void p(RectF rectF, int i, int i2) {
        this.D = g(this.B);
        rectF.left = s(i, i2);
        rectF.top = this.i.top;
        rectF.right = t(rectF, i, i2);
        rectF.bottom = this.i.top + r();
    }

    public ColorStateList q() {
        return this.p;
    }

    public float r() {
        z(this.N);
        return -this.N.ascent();
    }

    public int u() {
        return v(this.p);
    }

    public float x() {
        A(this.N);
        return -this.N.ascent();
    }

    public float y() {
        return this.f2151c;
    }
}
