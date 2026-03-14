package p093d.p099c.p100a.p101a.p102a0;

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
import androidx.core.graphics.drawable.InterfaceC0252b;
import com.yalantis.ucrop.view.CropImageView;
import java.util.BitSet;
import p016c.p041g.p049j.C0621c;
import p093d.p099c.p100a.p101a.C1216b;
import p093d.p099c.p100a.p101a.p102a0.C1212k;
import p093d.p099c.p100a.p101a.p102a0.C1213l;
import p093d.p099c.p100a.p101a.p102a0.C1214m;
import p093d.p099c.p100a.p101a.p110q.C1247a;
import p093d.p099c.p100a.p101a.p113t.C1250a;
import p093d.p099c.p100a.p101a.p119z.C1263a;

/* JADX INFO: renamed from: d.c.a.a.a0.g */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1208g extends Drawable implements InterfaceC0252b, InterfaceC1215n {

    /* JADX INFO: renamed from: x */
    private static final String f7615x = C1208g.class.getSimpleName();

    /* JADX INFO: renamed from: y */
    private static final Paint f7616y = new Paint(1);

    /* JADX INFO: renamed from: b */
    private c f7617b;

    /* JADX INFO: renamed from: c */
    private final C1214m.g[] f7618c;

    /* JADX INFO: renamed from: d */
    private final C1214m.g[] f7619d;

    /* JADX INFO: renamed from: e */
    private final BitSet f7620e;

    /* JADX INFO: renamed from: f */
    private boolean f7621f;

    /* JADX INFO: renamed from: g */
    private final Matrix f7622g;

    /* JADX INFO: renamed from: h */
    private final Path f7623h;

    /* JADX INFO: renamed from: i */
    private final Path f7624i;

    /* JADX INFO: renamed from: j */
    private final RectF f7625j;

    /* JADX INFO: renamed from: k */
    private final RectF f7626k;

    /* JADX INFO: renamed from: l */
    private final Region f7627l;

    /* JADX INFO: renamed from: m */
    private final Region f7628m;

    /* JADX INFO: renamed from: n */
    private C1212k f7629n;

    /* JADX INFO: renamed from: o */
    private final Paint f7630o;

    /* JADX INFO: renamed from: p */
    private final Paint f7631p;

    /* JADX INFO: renamed from: q */
    private final C1263a f7632q;

    /* JADX INFO: renamed from: r */
    private final C1213l.b f7633r;

    /* JADX INFO: renamed from: s */
    private final C1213l f7634s;

    /* JADX INFO: renamed from: t */
    private PorterDuffColorFilter f7635t;

    /* JADX INFO: renamed from: u */
    private PorterDuffColorFilter f7636u;

    /* JADX INFO: renamed from: v */
    private final RectF f7637v;

    /* JADX INFO: renamed from: w */
    private boolean f7638w;

    /* JADX INFO: renamed from: d.c.a.a.a0.g$a */
    class a implements C1213l.b {
        a() {
        }

        @Override // p093d.p099c.p100a.p101a.p102a0.C1213l.b
        /* JADX INFO: renamed from: a */
        public void mo9203a(C1214m c1214m, Matrix matrix, int i) {
            C1208g.this.f7620e.set(i + 4, c1214m.m9295e());
            C1208g.this.f7619d[i] = c1214m.m9296f(matrix);
        }

        @Override // p093d.p099c.p100a.p101a.p102a0.C1213l.b
        /* JADX INFO: renamed from: b */
        public void mo9204b(C1214m c1214m, Matrix matrix, int i) {
            C1208g.this.f7620e.set(i, c1214m.m9295e());
            C1208g.this.f7618c[i] = c1214m.m9296f(matrix);
        }
    }

    /* JADX INFO: renamed from: d.c.a.a.a0.g$b */
    class b implements C1212k.c {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ float f7640a;

        b(C1208g c1208g, float f) {
            this.f7640a = f;
        }

        @Override // p093d.p099c.p100a.p101a.p102a0.C1212k.c
        /* JADX INFO: renamed from: a */
        public InterfaceC1204c mo9205a(InterfaceC1204c interfaceC1204c) {
            return interfaceC1204c instanceof C1210i ? interfaceC1204c : new C1203b(this.f7640a, interfaceC1204c);
        }
    }

    /* synthetic */ C1208g(c cVar, a aVar) {
        this(cVar);
    }

    /* JADX INFO: renamed from: D */
    private float m9144D() {
        return m9147L() ? this.f7631p.getStrokeWidth() / 2.0f : CropImageView.DEFAULT_ASPECT_RATIO;
    }

    /* JADX INFO: renamed from: J */
    private boolean m9145J() {
        c cVar = this.f7617b;
        int i = cVar.f7657q;
        return i != 1 && cVar.f7658r > 0 && (i == 2 || m9181T());
    }

    /* JADX INFO: renamed from: K */
    private boolean m9146K() {
        Paint.Style style = this.f7617b.f7662v;
        return style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.FILL;
    }

    /* JADX INFO: renamed from: L */
    private boolean m9147L() {
        Paint.Style style = this.f7617b.f7662v;
        return (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.f7631p.getStrokeWidth() > CropImageView.DEFAULT_ASPECT_RATIO;
    }

    /* JADX INFO: renamed from: N */
    private void m9148N() {
        super.invalidateSelf();
    }

    /* JADX INFO: renamed from: Q */
    private void m9149Q(Canvas canvas) {
        if (m9145J()) {
            canvas.save();
            m9151S(canvas);
            if (!this.f7638w) {
                m9165n(canvas);
                canvas.restore();
                return;
            }
            int iWidth = (int) (this.f7637v.width() - getBounds().width());
            int iHeight = (int) (this.f7637v.height() - getBounds().height());
            if (iWidth < 0 || iHeight < 0) {
                throw new IllegalStateException("Invalid shadow bounds. Check that the treatments result in a valid path.");
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(((int) this.f7637v.width()) + (this.f7617b.f7658r * 2) + iWidth, ((int) this.f7637v.height()) + (this.f7617b.f7658r * 2) + iHeight, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(bitmapCreateBitmap);
            float f = (getBounds().left - this.f7617b.f7658r) - iWidth;
            float f2 = (getBounds().top - this.f7617b.f7658r) - iHeight;
            canvas2.translate(-f, -f2);
            m9165n(canvas2);
            canvas.drawBitmap(bitmapCreateBitmap, f, f2, (Paint) null);
            bitmapCreateBitmap.recycle();
            canvas.restore();
        }
    }

    /* JADX INFO: renamed from: R */
    private static int m9150R(int i, int i2) {
        return (i * (i2 + (i2 >>> 7))) >>> 8;
    }

    /* JADX INFO: renamed from: S */
    private void m9151S(Canvas canvas) {
        int iM9202z = m9202z();
        int iM9170A = m9170A();
        if (Build.VERSION.SDK_INT < 21 && this.f7638w) {
            Rect clipBounds = canvas.getClipBounds();
            int i = this.f7617b.f7658r;
            clipBounds.inset(-i, -i);
            clipBounds.offset(iM9202z, iM9170A);
            canvas.clipRect(clipBounds, Region.Op.REPLACE);
        }
        canvas.translate(iM9202z, iM9170A);
    }

    /* JADX INFO: renamed from: f */
    private PorterDuffColorFilter m9156f(Paint paint, boolean z) {
        int color;
        int iM9194l;
        if (!z || (iM9194l = m9194l((color = paint.getColor()))) == color) {
            return null;
        }
        return new PorterDuffColorFilter(iM9194l, PorterDuff.Mode.SRC_IN);
    }

    /* JADX INFO: renamed from: f0 */
    private boolean m9157f0(int[] iArr) {
        boolean z;
        int color;
        int colorForState;
        int color2;
        int colorForState2;
        if (this.f7617b.f7644d == null || color2 == (colorForState2 = this.f7617b.f7644d.getColorForState(iArr, (color2 = this.f7630o.getColor())))) {
            z = false;
        } else {
            this.f7630o.setColor(colorForState2);
            z = true;
        }
        if (this.f7617b.f7645e == null || color == (colorForState = this.f7617b.f7645e.getColorForState(iArr, (color = this.f7631p.getColor())))) {
            return z;
        }
        this.f7631p.setColor(colorForState);
        return true;
    }

    /* JADX INFO: renamed from: g */
    private void m9158g(RectF rectF, Path path) {
        m9193h(rectF, path);
        if (this.f7617b.f7650j != 1.0f) {
            this.f7622g.reset();
            Matrix matrix = this.f7622g;
            float f = this.f7617b.f7650j;
            matrix.setScale(f, f, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(this.f7622g);
        }
        path.computeBounds(this.f7637v, true);
    }

    /* JADX INFO: renamed from: g0 */
    private boolean m9159g0() {
        PorterDuffColorFilter porterDuffColorFilter = this.f7635t;
        PorterDuffColorFilter porterDuffColorFilter2 = this.f7636u;
        c cVar = this.f7617b;
        this.f7635t = m9163k(cVar.f7647g, cVar.f7648h, this.f7630o, true);
        c cVar2 = this.f7617b;
        this.f7636u = m9163k(cVar2.f7646f, cVar2.f7648h, this.f7631p, false);
        c cVar3 = this.f7617b;
        if (cVar3.f7661u) {
            this.f7632q.m9482d(cVar3.f7647g.getColorForState(getState(), 0));
        }
        return (C0621c.m4846a(porterDuffColorFilter, this.f7635t) && C0621c.m4846a(porterDuffColorFilter2, this.f7636u)) ? false : true;
    }

    /* JADX INFO: renamed from: h0 */
    private void m9160h0() {
        float fM9177I = m9177I();
        this.f7617b.f7658r = (int) Math.ceil(0.75f * fM9177I);
        this.f7617b.f7659s = (int) Math.ceil(fM9177I * 0.25f);
        m9159g0();
        m9148N();
    }

    /* JADX INFO: renamed from: i */
    private void m9161i() {
        C1212k c1212kM9236y = m9172C().m9236y(new b(this, -m9144D()));
        this.f7629n = c1212kM9236y;
        this.f7634s.m9281d(c1212kM9236y, this.f7617b.f7651k, m9169v(), this.f7624i);
    }

    /* JADX INFO: renamed from: j */
    private PorterDuffColorFilter m9162j(ColorStateList colorStateList, PorterDuff.Mode mode, boolean z) {
        int colorForState = colorStateList.getColorForState(getState(), 0);
        if (z) {
            colorForState = m9194l(colorForState);
        }
        return new PorterDuffColorFilter(colorForState, mode);
    }

    /* JADX INFO: renamed from: k */
    private PorterDuffColorFilter m9163k(ColorStateList colorStateList, PorterDuff.Mode mode, Paint paint, boolean z) {
        return (colorStateList == null || mode == null) ? m9156f(paint, z) : m9162j(colorStateList, mode, z);
    }

    /* JADX INFO: renamed from: m */
    public static C1208g m9164m(Context context, float f) {
        int iM9427b = C1247a.m9427b(context, C1216b.colorSurface, C1208g.class.getSimpleName());
        C1208g c1208g = new C1208g();
        c1208g.m9178M(context);
        c1208g.m9184W(ColorStateList.valueOf(iM9427b));
        c1208g.m9183V(f);
        return c1208g;
    }

    /* JADX INFO: renamed from: n */
    private void m9165n(Canvas canvas) {
        this.f7620e.cardinality();
        if (this.f7617b.f7659s != 0) {
            canvas.drawPath(this.f7623h, this.f7632q.m9481c());
        }
        for (int i = 0; i < 4; i++) {
            this.f7618c[i].m9331b(this.f7632q, this.f7617b.f7658r, canvas);
            this.f7619d[i].m9331b(this.f7632q, this.f7617b.f7658r, canvas);
        }
        if (this.f7638w) {
            int iM9202z = m9202z();
            int iM9170A = m9170A();
            canvas.translate(-iM9202z, -iM9170A);
            canvas.drawPath(this.f7623h, f7616y);
            canvas.translate(iM9202z, iM9170A);
        }
    }

    /* JADX INFO: renamed from: o */
    private void m9166o(Canvas canvas) {
        m9167q(canvas, this.f7630o, this.f7623h, this.f7617b.f7641a, m9198u());
    }

    /* JADX INFO: renamed from: q */
    private void m9167q(Canvas canvas, Paint paint, Path path, C1212k c1212k, RectF rectF) {
        if (!c1212k.m9232u(rectF)) {
            canvas.drawPath(path, paint);
        } else {
            float fMo9140a = c1212k.m9231t().mo9140a(rectF) * this.f7617b.f7651k;
            canvas.drawRoundRect(rectF, fMo9140a, fMo9140a, paint);
        }
    }

    /* JADX INFO: renamed from: r */
    private void m9168r(Canvas canvas) {
        m9167q(canvas, this.f7631p, this.f7624i, this.f7629n, m9169v());
    }

    /* JADX INFO: renamed from: v */
    private RectF m9169v() {
        this.f7626k.set(m9198u());
        float fM9144D = m9144D();
        this.f7626k.inset(fM9144D, fM9144D);
        return this.f7626k;
    }

    /* JADX INFO: renamed from: A */
    public int m9170A() {
        double d2 = this.f7617b.f7659s;
        double dCos = Math.cos(Math.toRadians(r0.f7660t));
        Double.isNaN(d2);
        return (int) (d2 * dCos);
    }

    /* JADX INFO: renamed from: B */
    public int m9171B() {
        return this.f7617b.f7658r;
    }

    /* JADX INFO: renamed from: C */
    public C1212k m9172C() {
        return this.f7617b.f7641a;
    }

    /* JADX INFO: renamed from: E */
    public ColorStateList m9173E() {
        return this.f7617b.f7647g;
    }

    /* JADX INFO: renamed from: F */
    public float m9174F() {
        return this.f7617b.f7641a.m9229r().mo9140a(m9198u());
    }

    /* JADX INFO: renamed from: G */
    public float m9175G() {
        return this.f7617b.f7641a.m9231t().mo9140a(m9198u());
    }

    /* JADX INFO: renamed from: H */
    public float m9176H() {
        return this.f7617b.f7656p;
    }

    /* JADX INFO: renamed from: I */
    public float m9177I() {
        return m9199w() + m9176H();
    }

    /* JADX INFO: renamed from: M */
    public void m9178M(Context context) {
        this.f7617b.f7642b = new C1250a(context);
        m9160h0();
    }

    /* JADX INFO: renamed from: O */
    public boolean m9179O() {
        C1250a c1250a = this.f7617b.f7642b;
        return c1250a != null && c1250a.m9438d();
    }

    /* JADX INFO: renamed from: P */
    public boolean m9180P() {
        return this.f7617b.f7641a.m9232u(m9198u());
    }

    /* JADX INFO: renamed from: T */
    public boolean m9181T() {
        return Build.VERSION.SDK_INT < 21 || !(m9180P() || this.f7623h.isConvex() || Build.VERSION.SDK_INT >= 29);
    }

    /* JADX INFO: renamed from: U */
    public void m9182U(InterfaceC1204c interfaceC1204c) {
        setShapeAppearanceModel(this.f7617b.f7641a.m9235x(interfaceC1204c));
    }

    /* JADX INFO: renamed from: V */
    public void m9183V(float f) {
        c cVar = this.f7617b;
        if (cVar.f7655o != f) {
            cVar.f7655o = f;
            m9160h0();
        }
    }

    /* JADX INFO: renamed from: W */
    public void m9184W(ColorStateList colorStateList) {
        c cVar = this.f7617b;
        if (cVar.f7644d != colorStateList) {
            cVar.f7644d = colorStateList;
            onStateChange(getState());
        }
    }

    /* JADX INFO: renamed from: X */
    public void m9185X(float f) {
        c cVar = this.f7617b;
        if (cVar.f7651k != f) {
            cVar.f7651k = f;
            this.f7621f = true;
            invalidateSelf();
        }
    }

    /* JADX INFO: renamed from: Y */
    public void m9186Y(int i, int i2, int i3, int i4) {
        c cVar = this.f7617b;
        if (cVar.f7649i == null) {
            cVar.f7649i = new Rect();
        }
        this.f7617b.f7649i.set(i, i2, i3, i4);
        invalidateSelf();
    }

    /* JADX INFO: renamed from: Z */
    public void m9187Z(float f) {
        c cVar = this.f7617b;
        if (cVar.f7654n != f) {
            cVar.f7654n = f;
            m9160h0();
        }
    }

    /* JADX INFO: renamed from: a0 */
    public void m9188a0(int i) {
        c cVar = this.f7617b;
        if (cVar.f7660t != i) {
            cVar.f7660t = i;
            m9148N();
        }
    }

    /* JADX INFO: renamed from: b0 */
    public void m9189b0(float f, int i) {
        m9192e0(f);
        m9191d0(ColorStateList.valueOf(i));
    }

    /* JADX INFO: renamed from: c0 */
    public void m9190c0(float f, ColorStateList colorStateList) {
        m9192e0(f);
        m9191d0(colorStateList);
    }

    /* JADX INFO: renamed from: d0 */
    public void m9191d0(ColorStateList colorStateList) {
        c cVar = this.f7617b;
        if (cVar.f7645e != colorStateList) {
            cVar.f7645e = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f7630o.setColorFilter(this.f7635t);
        int alpha = this.f7630o.getAlpha();
        this.f7630o.setAlpha(m9150R(alpha, this.f7617b.f7653m));
        this.f7631p.setColorFilter(this.f7636u);
        this.f7631p.setStrokeWidth(this.f7617b.f7652l);
        int alpha2 = this.f7631p.getAlpha();
        this.f7631p.setAlpha(m9150R(alpha2, this.f7617b.f7653m));
        if (this.f7621f) {
            m9161i();
            m9158g(m9198u(), this.f7623h);
            this.f7621f = false;
        }
        m9149Q(canvas);
        if (m9146K()) {
            m9166o(canvas);
        }
        if (m9147L()) {
            m9168r(canvas);
        }
        this.f7630o.setAlpha(alpha);
        this.f7631p.setAlpha(alpha2);
    }

    /* JADX INFO: renamed from: e0 */
    public void m9192e0(float f) {
        this.f7617b.f7652l = f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f7617b;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(Outline outline) {
        if (this.f7617b.f7657q == 2) {
            return;
        }
        if (m9180P()) {
            outline.setRoundRect(getBounds(), m9174F() * this.f7617b.f7651k);
            return;
        }
        m9158g(m9198u(), this.f7623h);
        if (this.f7623h.isConvex() || Build.VERSION.SDK_INT >= 29) {
            try {
                outline.setConvexPath(this.f7623h);
            } catch (IllegalArgumentException unused) {
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        Rect rect2 = this.f7617b.f7649i;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        this.f7627l.set(getBounds());
        m9158g(m9198u(), this.f7623h);
        this.f7628m.setPath(this.f7623h, this.f7627l);
        this.f7627l.op(this.f7628m, Region.Op.DIFFERENCE);
        return this.f7627l;
    }

    /* JADX INFO: renamed from: h */
    protected final void m9193h(RectF rectF, Path path) {
        C1213l c1213l = this.f7634s;
        c cVar = this.f7617b;
        c1213l.m9282e(cVar.f7641a, cVar.f7651k, rectF, this.f7633r, path);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        this.f7621f = true;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        ColorStateList colorStateList4;
        return super.isStateful() || ((colorStateList = this.f7617b.f7647g) != null && colorStateList.isStateful()) || (((colorStateList2 = this.f7617b.f7646f) != null && colorStateList2.isStateful()) || (((colorStateList3 = this.f7617b.f7645e) != null && colorStateList3.isStateful()) || ((colorStateList4 = this.f7617b.f7644d) != null && colorStateList4.isStateful())));
    }

    /* JADX INFO: renamed from: l */
    protected int m9194l(int i) {
        float fM9177I = m9177I() + m9201y();
        C1250a c1250a = this.f7617b.f7642b;
        return c1250a != null ? c1250a.m9437c(i, fM9177I) : i;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.f7617b = new c(this.f7617b);
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.f7621f = true;
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.C1119h.b
    protected boolean onStateChange(int[] iArr) {
        boolean z = m9157f0(iArr) || m9159g0();
        if (z) {
            invalidateSelf();
        }
        return z;
    }

    /* JADX INFO: renamed from: p */
    protected void m9195p(Canvas canvas, Paint paint, Path path, RectF rectF) {
        m9167q(canvas, paint, path, this.f7617b.f7641a, rectF);
    }

    /* JADX INFO: renamed from: s */
    public float m9196s() {
        return this.f7617b.f7641a.m9222j().mo9140a(m9198u());
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        c cVar = this.f7617b;
        if (cVar.f7653m != i) {
            cVar.f7653m = i;
            m9148N();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f7617b.f7643c = colorFilter;
        m9148N();
    }

    @Override // p093d.p099c.p100a.p101a.p102a0.InterfaceC1215n
    public void setShapeAppearanceModel(C1212k c1212k) {
        this.f7617b.f7641a = c1212k;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.InterfaceC0252b
    public void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.InterfaceC0252b
    public void setTintList(ColorStateList colorStateList) {
        this.f7617b.f7647g = colorStateList;
        m9159g0();
        m9148N();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.InterfaceC0252b
    public void setTintMode(PorterDuff.Mode mode) {
        c cVar = this.f7617b;
        if (cVar.f7648h != mode) {
            cVar.f7648h = mode;
            m9159g0();
            m9148N();
        }
    }

    /* JADX INFO: renamed from: t */
    public float m9197t() {
        return this.f7617b.f7641a.m9224l().mo9140a(m9198u());
    }

    /* JADX INFO: renamed from: u */
    protected RectF m9198u() {
        this.f7625j.set(getBounds());
        return this.f7625j;
    }

    /* JADX INFO: renamed from: w */
    public float m9199w() {
        return this.f7617b.f7655o;
    }

    /* JADX INFO: renamed from: x */
    public ColorStateList m9200x() {
        return this.f7617b.f7644d;
    }

    /* JADX INFO: renamed from: y */
    public float m9201y() {
        return this.f7617b.f7654n;
    }

    /* JADX INFO: renamed from: z */
    public int m9202z() {
        double d2 = this.f7617b.f7659s;
        double dSin = Math.sin(Math.toRadians(r0.f7660t));
        Double.isNaN(d2);
        return (int) (d2 * dSin);
    }

    public C1208g() {
        this(new C1212k());
    }

    public C1208g(Context context, AttributeSet attributeSet, int i, int i2) {
        this(C1212k.m9216e(context, attributeSet, i, i2).m9256m());
    }

    public C1208g(C1212k c1212k) {
        this(new c(c1212k, null));
    }

    private C1208g(c cVar) {
        this.f7618c = new C1214m.g[4];
        this.f7619d = new C1214m.g[4];
        this.f7620e = new BitSet(8);
        this.f7622g = new Matrix();
        this.f7623h = new Path();
        this.f7624i = new Path();
        this.f7625j = new RectF();
        this.f7626k = new RectF();
        this.f7627l = new Region();
        this.f7628m = new Region();
        this.f7630o = new Paint(1);
        this.f7631p = new Paint(1);
        this.f7632q = new C1263a();
        this.f7634s = Looper.getMainLooper().getThread() == Thread.currentThread() ? C1213l.m9277k() : new C1213l();
        this.f7637v = new RectF();
        this.f7638w = true;
        this.f7617b = cVar;
        this.f7631p.setStyle(Paint.Style.STROKE);
        this.f7630o.setStyle(Paint.Style.FILL);
        f7616y.setColor(-1);
        f7616y.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        m9159g0();
        m9157f0(getState());
        this.f7633r = new a();
    }

    /* JADX INFO: renamed from: d.c.a.a.a0.g$c */
    static final class c extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a */
        public C1212k f7641a;

        /* JADX INFO: renamed from: b */
        public C1250a f7642b;

        /* JADX INFO: renamed from: c */
        public ColorFilter f7643c;

        /* JADX INFO: renamed from: d */
        public ColorStateList f7644d;

        /* JADX INFO: renamed from: e */
        public ColorStateList f7645e;

        /* JADX INFO: renamed from: f */
        public ColorStateList f7646f;

        /* JADX INFO: renamed from: g */
        public ColorStateList f7647g;

        /* JADX INFO: renamed from: h */
        public PorterDuff.Mode f7648h;

        /* JADX INFO: renamed from: i */
        public Rect f7649i;

        /* JADX INFO: renamed from: j */
        public float f7650j;

        /* JADX INFO: renamed from: k */
        public float f7651k;

        /* JADX INFO: renamed from: l */
        public float f7652l;

        /* JADX INFO: renamed from: m */
        public int f7653m;

        /* JADX INFO: renamed from: n */
        public float f7654n;

        /* JADX INFO: renamed from: o */
        public float f7655o;

        /* JADX INFO: renamed from: p */
        public float f7656p;

        /* JADX INFO: renamed from: q */
        public int f7657q;

        /* JADX INFO: renamed from: r */
        public int f7658r;

        /* JADX INFO: renamed from: s */
        public int f7659s;

        /* JADX INFO: renamed from: t */
        public int f7660t;

        /* JADX INFO: renamed from: u */
        public boolean f7661u;

        /* JADX INFO: renamed from: v */
        public Paint.Style f7662v;

        public c(C1212k c1212k, C1250a c1250a) {
            this.f7644d = null;
            this.f7645e = null;
            this.f7646f = null;
            this.f7647g = null;
            this.f7648h = PorterDuff.Mode.SRC_IN;
            this.f7649i = null;
            this.f7650j = 1.0f;
            this.f7651k = 1.0f;
            this.f7653m = 255;
            this.f7654n = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f7655o = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f7656p = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f7657q = 0;
            this.f7658r = 0;
            this.f7659s = 0;
            this.f7660t = 0;
            this.f7661u = false;
            this.f7662v = Paint.Style.FILL_AND_STROKE;
            this.f7641a = c1212k;
            this.f7642b = c1250a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            C1208g c1208g = new C1208g(this, null);
            c1208g.f7621f = true;
            return c1208g;
        }

        public c(c cVar) {
            this.f7644d = null;
            this.f7645e = null;
            this.f7646f = null;
            this.f7647g = null;
            this.f7648h = PorterDuff.Mode.SRC_IN;
            this.f7649i = null;
            this.f7650j = 1.0f;
            this.f7651k = 1.0f;
            this.f7653m = 255;
            this.f7654n = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f7655o = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f7656p = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f7657q = 0;
            this.f7658r = 0;
            this.f7659s = 0;
            this.f7660t = 0;
            this.f7661u = false;
            this.f7662v = Paint.Style.FILL_AND_STROKE;
            this.f7641a = cVar.f7641a;
            this.f7642b = cVar.f7642b;
            this.f7652l = cVar.f7652l;
            this.f7643c = cVar.f7643c;
            this.f7644d = cVar.f7644d;
            this.f7645e = cVar.f7645e;
            this.f7648h = cVar.f7648h;
            this.f7647g = cVar.f7647g;
            this.f7653m = cVar.f7653m;
            this.f7650j = cVar.f7650j;
            this.f7659s = cVar.f7659s;
            this.f7657q = cVar.f7657q;
            this.f7661u = cVar.f7661u;
            this.f7651k = cVar.f7651k;
            this.f7654n = cVar.f7654n;
            this.f7655o = cVar.f7655o;
            this.f7656p = cVar.f7656p;
            this.f7658r = cVar.f7658r;
            this.f7660t = cVar.f7660t;
            this.f7646f = cVar.f7646f;
            this.f7662v = cVar.f7662v;
            if (cVar.f7649i != null) {
                this.f7649i = new Rect(cVar.f7649i);
            }
        }
    }
}
