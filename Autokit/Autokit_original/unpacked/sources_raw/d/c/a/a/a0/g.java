package d.c.a.a.a0;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Looper;
import android.util.AttributeSet;
import com.yalantis.ucrop.view.CropImageView;
import d.c.a.a.a0.k;
import d.c.a.a.a0.l;
import d.c.a.a.a0.m;
import java.util.BitSet;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class g extends Drawable implements androidx.core.graphics.drawable.b, n {
    private static final String x = g.class.getSimpleName();
    private static final Paint y = new Paint(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f2282b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final m.g[] f2283c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final m.g[] f2284d;
    private final BitSet e;
    private boolean f;
    private final Matrix g;
    private final Path h;
    private final Path i;
    private final RectF j;
    private final RectF k;
    private final Region l;
    private final Region m;
    private k n;
    private final Paint o;
    private final Paint p;
    private final d.c.a.a.z.a q;
    private final l.b r;
    private final l s;
    private PorterDuffColorFilter t;
    private PorterDuffColorFilter u;
    private final RectF v;
    private boolean w;

    class a implements l.b {
        a() {
        }

        @Override // d.c.a.a.a0.l.b
        public void a(m mVar, Matrix matrix, int i) {
            g.this.e.set(i + 4, mVar.e());
            g.this.f2284d[i] = mVar.f(matrix);
        }

        @Override // d.c.a.a.a0.l.b
        public void b(m mVar, Matrix matrix, int i) {
            g.this.e.set(i, mVar.e());
            g.this.f2283c[i] = mVar.f(matrix);
        }
    }

    class b implements k.c {
        final /* synthetic */ float a;

        b(g gVar, float f) {
            this.a = f;
        }

        @Override // d.c.a.a.a0.k.c
        public d.c.a.a.a0.c a(d.c.a.a.a0.c cVar) {
            return cVar instanceof i ? cVar : new d.c.a.a.a0.b(this.a, cVar);
        }
    }

    /* synthetic */ g(c cVar, a aVar) {
        this(cVar);
    }

    private float D() {
        return L() ? this.p.getStrokeWidth() / 2.0f : CropImageView.DEFAULT_ASPECT_RATIO;
    }

    private boolean J() {
        c cVar = this.f2282b;
        int i = cVar.q;
        return i != 1 && cVar.r > 0 && (i == 2 || T());
    }

    private boolean K() {
        Paint.Style style = this.f2282b.v;
        return style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.FILL;
    }

    private boolean L() {
        Paint.Style style = this.f2282b.v;
        return (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.p.getStrokeWidth() > CropImageView.DEFAULT_ASPECT_RATIO;
    }

    private void N() {
        super.invalidateSelf();
    }

    private void Q(Canvas canvas) {
        if (J()) {
            canvas.save();
            S(canvas);
            if (!this.w) {
                n(canvas);
                canvas.restore();
                return;
            }
            int iWidth = (int) (this.v.width() - getBounds().width());
            int iHeight = (int) (this.v.height() - getBounds().height());
            if (iWidth < 0 || iHeight < 0) {
                throw new IllegalStateException("Invalid shadow bounds. Check that the treatments result in a valid path.");
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(((int) this.v.width()) + (this.f2282b.r * 2) + iWidth, ((int) this.v.height()) + (this.f2282b.r * 2) + iHeight, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(bitmapCreateBitmap);
            float f = (getBounds().left - this.f2282b.r) - iWidth;
            float f2 = (getBounds().top - this.f2282b.r) - iHeight;
            canvas2.translate(-f, -f2);
            n(canvas2);
            canvas.drawBitmap(bitmapCreateBitmap, f, f2, (Paint) null);
            bitmapCreateBitmap.recycle();
            canvas.restore();
        }
    }

    private static int R(int i, int i2) {
        return (i * (i2 + (i2 >>> 7))) >>> 8;
    }

    private void S(Canvas canvas) {
        int iZ = z();
        int iA = A();
        if (Build.VERSION.SDK_INT < 21 && this.w) {
            Rect clipBounds = canvas.getClipBounds();
            int i = this.f2282b.r;
            clipBounds.inset(-i, -i);
            clipBounds.offset(iZ, iA);
            canvas.clipRect(clipBounds, Region.Op.REPLACE);
        }
        canvas.translate(iZ, iA);
    }

    private PorterDuffColorFilter f(Paint paint, boolean z) {
        int color;
        int iL;
        if (!z || (iL = l((color = paint.getColor()))) == color) {
            return null;
        }
        return new PorterDuffColorFilter(iL, PorterDuff.Mode.SRC_IN);
    }

    private boolean f0(int[] iArr) {
        boolean z;
        int color;
        int colorForState;
        int color2;
        int colorForState2;
        if (this.f2282b.f2287d == null || color2 == (colorForState2 = this.f2282b.f2287d.getColorForState(iArr, (color2 = this.o.getColor())))) {
            z = false;
        } else {
            this.o.setColor(colorForState2);
            z = true;
        }
        if (this.f2282b.e == null || color == (colorForState = this.f2282b.e.getColorForState(iArr, (color = this.p.getColor())))) {
            return z;
        }
        this.p.setColor(colorForState);
        return true;
    }

    private void g(RectF rectF, Path path) {
        h(rectF, path);
        if (this.f2282b.j != 1.0f) {
            this.g.reset();
            Matrix matrix = this.g;
            float f = this.f2282b.j;
            matrix.setScale(f, f, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(this.g);
        }
        path.computeBounds(this.v, true);
    }

    private boolean g0() {
        PorterDuffColorFilter porterDuffColorFilter = this.t;
        PorterDuffColorFilter porterDuffColorFilter2 = this.u;
        c cVar = this.f2282b;
        this.t = k(cVar.g, cVar.h, this.o, true);
        c cVar2 = this.f2282b;
        this.u = k(cVar2.f, cVar2.h, this.p, false);
        c cVar3 = this.f2282b;
        if (cVar3.u) {
            this.q.d(cVar3.g.getColorForState(getState(), 0));
        }
        return (c.g.j.c.a(porterDuffColorFilter, this.t) && c.g.j.c.a(porterDuffColorFilter2, this.u)) ? false : true;
    }

    private void h0() {
        float fI = I();
        this.f2282b.r = (int) Math.ceil(0.75f * fI);
        this.f2282b.s = (int) Math.ceil(fI * 0.25f);
        g0();
        N();
    }

    private void i() {
        k kVarY = C().y(new b(this, -D()));
        this.n = kVarY;
        this.s.d(kVarY, this.f2282b.k, v(), this.i);
    }

    private PorterDuffColorFilter j(ColorStateList colorStateList, PorterDuff.Mode mode, boolean z) {
        int colorForState = colorStateList.getColorForState(getState(), 0);
        if (z) {
            colorForState = l(colorForState);
        }
        return new PorterDuffColorFilter(colorForState, mode);
    }

    private PorterDuffColorFilter k(ColorStateList colorStateList, PorterDuff.Mode mode, Paint paint, boolean z) {
        return (colorStateList == null || mode == null) ? f(paint, z) : j(colorStateList, mode, z);
    }

    public static g m(Context context, float f) {
        int iB = d.c.a.a.q.a.b(context, d.c.a.a.b.colorSurface, g.class.getSimpleName());
        g gVar = new g();
        gVar.M(context);
        gVar.W(ColorStateList.valueOf(iB));
        gVar.V(f);
        return gVar;
    }

    private void n(Canvas canvas) {
        this.e.cardinality();
        if (this.f2282b.s != 0) {
            canvas.drawPath(this.h, this.q.c());
        }
        for (int i = 0; i < 4; i++) {
            this.f2283c[i].b(this.q, this.f2282b.r, canvas);
            this.f2284d[i].b(this.q, this.f2282b.r, canvas);
        }
        if (this.w) {
            int iZ = z();
            int iA = A();
            canvas.translate(-iZ, -iA);
            canvas.drawPath(this.h, y);
            canvas.translate(iZ, iA);
        }
    }

    private void o(Canvas canvas) {
        q(canvas, this.o, this.h, this.f2282b.a, u());
    }

    private void q(Canvas canvas, Paint paint, Path path, k kVar, RectF rectF) {
        if (!kVar.u(rectF)) {
            canvas.drawPath(path, paint);
        } else {
            float fA = kVar.t().a(rectF) * this.f2282b.k;
            canvas.drawRoundRect(rectF, fA, fA, paint);
        }
    }

    private void r(Canvas canvas) {
        q(canvas, this.p, this.i, this.n, v());
    }

    private RectF v() {
        this.k.set(u());
        float fD = D();
        this.k.inset(fD, fD);
        return this.k;
    }

    public int A() {
        double d2 = this.f2282b.s;
        double dCos = Math.cos(Math.toRadians(r0.t));
        Double.isNaN(d2);
        return (int) (d2 * dCos);
    }

    public int B() {
        return this.f2282b.r;
    }

    public k C() {
        return this.f2282b.a;
    }

    public ColorStateList E() {
        return this.f2282b.g;
    }

    public float F() {
        return this.f2282b.a.r().a(u());
    }

    public float G() {
        return this.f2282b.a.t().a(u());
    }

    public float H() {
        return this.f2282b.p;
    }

    public float I() {
        return w() + H();
    }

    public void M(Context context) {
        this.f2282b.f2285b = new d.c.a.a.t.a(context);
        h0();
    }

    public boolean O() {
        d.c.a.a.t.a aVar = this.f2282b.f2285b;
        return aVar != null && aVar.d();
    }

    public boolean P() {
        return this.f2282b.a.u(u());
    }

    public boolean T() {
        return Build.VERSION.SDK_INT < 21 || !(P() || this.h.isConvex() || Build.VERSION.SDK_INT >= 29);
    }

    public void U(d.c.a.a.a0.c cVar) {
        setShapeAppearanceModel(this.f2282b.a.x(cVar));
    }

    public void V(float f) {
        c cVar = this.f2282b;
        if (cVar.o != f) {
            cVar.o = f;
            h0();
        }
    }

    public void W(ColorStateList colorStateList) {
        c cVar = this.f2282b;
        if (cVar.f2287d != colorStateList) {
            cVar.f2287d = colorStateList;
            onStateChange(getState());
        }
    }

    public void X(float f) {
        c cVar = this.f2282b;
        if (cVar.k != f) {
            cVar.k = f;
            this.f = true;
            invalidateSelf();
        }
    }

    public void Y(int i, int i2, int i3, int i4) {
        c cVar = this.f2282b;
        if (cVar.i == null) {
            cVar.i = new Rect();
        }
        this.f2282b.i.set(i, i2, i3, i4);
        invalidateSelf();
    }

    public void Z(float f) {
        c cVar = this.f2282b;
        if (cVar.n != f) {
            cVar.n = f;
            h0();
        }
    }

    public void a0(int i) {
        c cVar = this.f2282b;
        if (cVar.t != i) {
            cVar.t = i;
            N();
        }
    }

    public void b0(float f, int i) {
        e0(f);
        d0(ColorStateList.valueOf(i));
    }

    public void c0(float f, ColorStateList colorStateList) {
        e0(f);
        d0(colorStateList);
    }

    public void d0(ColorStateList colorStateList) {
        c cVar = this.f2282b;
        if (cVar.e != colorStateList) {
            cVar.e = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.o.setColorFilter(this.t);
        int alpha = this.o.getAlpha();
        this.o.setAlpha(R(alpha, this.f2282b.m));
        this.p.setColorFilter(this.u);
        this.p.setStrokeWidth(this.f2282b.l);
        int alpha2 = this.p.getAlpha();
        this.p.setAlpha(R(alpha2, this.f2282b.m));
        if (this.f) {
            i();
            g(u(), this.h);
            this.f = false;
        }
        Q(canvas);
        if (K()) {
            o(canvas);
        }
        if (L()) {
            r(canvas);
        }
        this.o.setAlpha(alpha);
        this.p.setAlpha(alpha2);
    }

    public void e0(float f) {
        this.f2282b.l = f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f2282b;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(Outline outline) {
        if (this.f2282b.q == 2) {
            return;
        }
        if (P()) {
            outline.setRoundRect(getBounds(), F() * this.f2282b.k);
            return;
        }
        g(u(), this.h);
        if (this.h.isConvex() || Build.VERSION.SDK_INT >= 29) {
            try {
                outline.setConvexPath(this.h);
            } catch (IllegalArgumentException unused) {
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        Rect rect2 = this.f2282b.i;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        this.l.set(getBounds());
        g(u(), this.h);
        this.m.setPath(this.h, this.l);
        this.l.op(this.m, Region.Op.DIFFERENCE);
        return this.l;
    }

    protected final void h(RectF rectF, Path path) {
        l lVar = this.s;
        c cVar = this.f2282b;
        lVar.e(cVar.a, cVar.k, rectF, this.r, path);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        this.f = true;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        ColorStateList colorStateList4;
        return super.isStateful() || ((colorStateList = this.f2282b.g) != null && colorStateList.isStateful()) || (((colorStateList2 = this.f2282b.f) != null && colorStateList2.isStateful()) || (((colorStateList3 = this.f2282b.e) != null && colorStateList3.isStateful()) || ((colorStateList4 = this.f2282b.f2287d) != null && colorStateList4.isStateful())));
    }

    protected int l(int i) {
        float fI = I() + y();
        d.c.a.a.t.a aVar = this.f2282b.f2285b;
        return aVar != null ? aVar.c(i, fI) : i;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.f2282b = new c(this.f2282b);
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.f = true;
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.h.b
    protected boolean onStateChange(int[] iArr) {
        boolean z = f0(iArr) || g0();
        if (z) {
            invalidateSelf();
        }
        return z;
    }

    protected void p(Canvas canvas, Paint paint, Path path, RectF rectF) {
        q(canvas, paint, path, this.f2282b.a, rectF);
    }

    public float s() {
        return this.f2282b.a.j().a(u());
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        c cVar = this.f2282b;
        if (cVar.m != i) {
            cVar.m = i;
            N();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f2282b.f2286c = colorFilter;
        N();
    }

    @Override // d.c.a.a.a0.n
    public void setShapeAppearanceModel(k kVar) {
        this.f2282b.a = kVar;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintList(ColorStateList colorStateList) {
        this.f2282b.g = colorStateList;
        g0();
        N();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintMode(PorterDuff.Mode mode) {
        c cVar = this.f2282b;
        if (cVar.h != mode) {
            cVar.h = mode;
            g0();
            N();
        }
    }

    public float t() {
        return this.f2282b.a.l().a(u());
    }

    protected RectF u() {
        this.j.set(getBounds());
        return this.j;
    }

    public float w() {
        return this.f2282b.o;
    }

    public ColorStateList x() {
        return this.f2282b.f2287d;
    }

    public float y() {
        return this.f2282b.n;
    }

    public int z() {
        double d2 = this.f2282b.s;
        double dSin = Math.sin(Math.toRadians(r0.t));
        Double.isNaN(d2);
        return (int) (d2 * dSin);
    }

    public g() {
        this(new k());
    }

    public g(Context context, AttributeSet attributeSet, int i, int i2) {
        this(k.e(context, attributeSet, i, i2).m());
    }

    public g(k kVar) {
        this(new c(kVar, null));
    }

    private g(c cVar) {
        this.f2283c = new m.g[4];
        this.f2284d = new m.g[4];
        this.e = new BitSet(8);
        this.g = new Matrix();
        this.h = new Path();
        this.i = new Path();
        this.j = new RectF();
        this.k = new RectF();
        this.l = new Region();
        this.m = new Region();
        this.o = new Paint(1);
        this.p = new Paint(1);
        this.q = new d.c.a.a.z.a();
        this.s = Looper.getMainLooper().getThread() == Thread.currentThread() ? l.k() : new l();
        this.v = new RectF();
        this.w = true;
        this.f2282b = cVar;
        this.p.setStyle(Paint.Style.STROKE);
        this.o.setStyle(Paint.Style.FILL);
        y.setColor(-1);
        y.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        g0();
        f0(getState());
        this.r = new a();
    }

    static final class c extends Drawable.ConstantState {
        public k a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public d.c.a.a.t.a f2285b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ColorFilter f2286c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public ColorStateList f2287d;
        public ColorStateList e;
        public ColorStateList f;
        public ColorStateList g;
        public PorterDuff.Mode h;
        public Rect i;
        public float j;
        public float k;
        public float l;
        public int m;
        public float n;
        public float o;
        public float p;
        public int q;
        public int r;
        public int s;
        public int t;
        public boolean u;
        public Paint.Style v;

        public c(k kVar, d.c.a.a.t.a aVar) {
            this.f2287d = null;
            this.e = null;
            this.f = null;
            this.g = null;
            this.h = PorterDuff.Mode.SRC_IN;
            this.i = null;
            this.j = 1.0f;
            this.k = 1.0f;
            this.m = 255;
            this.n = CropImageView.DEFAULT_ASPECT_RATIO;
            this.o = CropImageView.DEFAULT_ASPECT_RATIO;
            this.p = CropImageView.DEFAULT_ASPECT_RATIO;
            this.q = 0;
            this.r = 0;
            this.s = 0;
            this.t = 0;
            this.u = false;
            this.v = Paint.Style.FILL_AND_STROKE;
            this.a = kVar;
            this.f2285b = aVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            g gVar = new g(this, null);
            gVar.f = true;
            return gVar;
        }

        public c(c cVar) {
            this.f2287d = null;
            this.e = null;
            this.f = null;
            this.g = null;
            this.h = PorterDuff.Mode.SRC_IN;
            this.i = null;
            this.j = 1.0f;
            this.k = 1.0f;
            this.m = 255;
            this.n = CropImageView.DEFAULT_ASPECT_RATIO;
            this.o = CropImageView.DEFAULT_ASPECT_RATIO;
            this.p = CropImageView.DEFAULT_ASPECT_RATIO;
            this.q = 0;
            this.r = 0;
            this.s = 0;
            this.t = 0;
            this.u = false;
            this.v = Paint.Style.FILL_AND_STROKE;
            this.a = cVar.a;
            this.f2285b = cVar.f2285b;
            this.l = cVar.l;
            this.f2286c = cVar.f2286c;
            this.f2287d = cVar.f2287d;
            this.e = cVar.e;
            this.h = cVar.h;
            this.g = cVar.g;
            this.m = cVar.m;
            this.j = cVar.j;
            this.s = cVar.s;
            this.q = cVar.q;
            this.u = cVar.u;
            this.k = cVar.k;
            this.n = cVar.n;
            this.o = cVar.o;
            this.p = cVar.p;
            this.r = cVar.r;
            this.t = cVar.t;
            this.f = cVar.f;
            this.v = cVar.v;
            if (cVar.i != null) {
                this.i = new Rect(cVar.i);
            }
        }
    }
}
