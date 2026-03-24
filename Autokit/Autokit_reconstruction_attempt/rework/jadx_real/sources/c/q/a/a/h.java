package c.q.a.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Xml;
import c.g.d.c;
import com.yalantis.ucrop.view.CropImageView;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class h extends c.q.a.a.g {
    static final PorterDuff.Mode k = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private C0069h f1338c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private PorterDuffColorFilter f1339d;
    private ColorFilter e;
    private boolean f;
    private boolean g;
    private final float[] h;
    private final Matrix i;
    private final Rect j;

    static /* synthetic */ class a {
    }

    private static class b extends f {
        b() {
        }

        private void f(TypedArray typedArray, XmlPullParser xmlPullParser) {
            String string = typedArray.getString(0);
            if (string != null) {
                this.f1343b = string;
            }
            String string2 = typedArray.getString(1);
            if (string2 != null) {
                this.a = c.g.d.c.d(string2);
            }
            this.f1344c = androidx.core.content.c.g.g(typedArray, xmlPullParser, "fillType", 2, 0);
        }

        @Override // c.q.a.a.h.f
        public boolean c() {
            return true;
        }

        public void e(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            if (androidx.core.content.c.g.j(xmlPullParser, "pathData")) {
                TypedArray typedArrayK = androidx.core.content.c.g.k(resources, theme, attributeSet, c.q.a.a.a.f1329d);
                f(typedArrayK, xmlPullParser);
                typedArrayK.recycle();
            }
        }

        b(b bVar) {
            super(bVar);
        }
    }

    private static abstract class e {
        private e() {
        }

        public boolean a() {
            return false;
        }

        public boolean b(int[] iArr) {
            return false;
        }

        /* synthetic */ e(a aVar) {
            this();
        }
    }

    /* JADX INFO: renamed from: c.q.a.a.h$h, reason: collision with other inner class name */
    private static class C0069h extends Drawable.ConstantState {
        int a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        g f1349b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        ColorStateList f1350c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        PorterDuff.Mode f1351d;
        boolean e;
        Bitmap f;
        ColorStateList g;
        PorterDuff.Mode h;
        int i;
        boolean j;
        boolean k;
        Paint l;

        public C0069h(C0069h c0069h) {
            this.f1350c = null;
            this.f1351d = h.k;
            if (c0069h != null) {
                this.a = c0069h.a;
                g gVar = new g(c0069h.f1349b);
                this.f1349b = gVar;
                if (c0069h.f1349b.e != null) {
                    gVar.e = new Paint(c0069h.f1349b.e);
                }
                if (c0069h.f1349b.f1348d != null) {
                    this.f1349b.f1348d = new Paint(c0069h.f1349b.f1348d);
                }
                this.f1350c = c0069h.f1350c;
                this.f1351d = c0069h.f1351d;
                this.e = c0069h.e;
            }
        }

        public boolean a(int i, int i2) {
            return i == this.f.getWidth() && i2 == this.f.getHeight();
        }

        public boolean b() {
            return !this.k && this.g == this.f1350c && this.h == this.f1351d && this.j == this.e && this.i == this.f1349b.getRootAlpha();
        }

        public void c(int i, int i2) {
            if (this.f == null || !a(i, i2)) {
                this.f = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                this.k = true;
            }
        }

        public void d(Canvas canvas, ColorFilter colorFilter, Rect rect) {
            canvas.drawBitmap(this.f, (Rect) null, rect, e(colorFilter));
        }

        public Paint e(ColorFilter colorFilter) {
            if (!f() && colorFilter == null) {
                return null;
            }
            if (this.l == null) {
                Paint paint = new Paint();
                this.l = paint;
                paint.setFilterBitmap(true);
            }
            this.l.setAlpha(this.f1349b.getRootAlpha());
            this.l.setColorFilter(colorFilter);
            return this.l;
        }

        public boolean f() {
            return this.f1349b.getRootAlpha() < 255;
        }

        public boolean g() {
            return this.f1349b.f();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.a;
        }

        public boolean h(int[] iArr) {
            boolean zG = this.f1349b.g(iArr);
            this.k |= zG;
            return zG;
        }

        public void i() {
            this.g = this.f1350c;
            this.h = this.f1351d;
            this.i = this.f1349b.getRootAlpha();
            this.j = this.e;
            this.k = false;
        }

        public void j(int i, int i2) {
            this.f.eraseColor(0);
            this.f1349b.b(new Canvas(this.f), i, i2, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new h(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new h(this);
        }

        public C0069h() {
            this.f1350c = null;
            this.f1351d = h.k;
            this.f1349b = new g();
        }
    }

    h() {
        this.g = true;
        this.h = new float[9];
        this.i = new Matrix();
        this.j = new Rect();
        this.f1338c = new C0069h();
    }

    static int a(int i2, float f2) {
        return (i2 & 16777215) | (((int) (Color.alpha(i2) * f2)) << 24);
    }

    public static h b(Resources resources, int i2, Resources.Theme theme) {
        int next;
        if (Build.VERSION.SDK_INT >= 24) {
            h hVar = new h();
            hVar.f1337b = androidx.core.content.c.f.b(resources, i2, theme);
            new i(hVar.f1337b.getConstantState());
            return hVar;
        }
        try {
            XmlResourceParser xml = resources.getXml(i2);
            AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next == 2) {
                return c(resources, xml, attributeSetAsAttributeSet, theme);
            }
            throw new XmlPullParserException("No start tag found");
        } catch (IOException | XmlPullParserException unused) {
            return null;
        }
    }

    public static h c(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        h hVar = new h();
        hVar.inflate(resources, xmlPullParser, attributeSet, theme);
        return hVar;
    }

    private void e(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        C0069h c0069h = this.f1338c;
        g gVar = c0069h.f1349b;
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(gVar.h);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        boolean z = true;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                d dVar = (d) arrayDeque.peek();
                if ("path".equals(name)) {
                    c cVar = new c();
                    cVar.g(resources, attributeSet, theme, xmlPullParser);
                    dVar.f1340b.add(cVar);
                    if (cVar.getPathName() != null) {
                        gVar.p.put(cVar.getPathName(), cVar);
                    }
                    z = false;
                    c0069h.a = cVar.f1345d | c0069h.a;
                } else if ("clip-path".equals(name)) {
                    b bVar = new b();
                    bVar.e(resources, attributeSet, theme, xmlPullParser);
                    dVar.f1340b.add(bVar);
                    if (bVar.getPathName() != null) {
                        gVar.p.put(bVar.getPathName(), bVar);
                    }
                    c0069h.a = bVar.f1345d | c0069h.a;
                } else if ("group".equals(name)) {
                    d dVar2 = new d();
                    dVar2.c(resources, attributeSet, theme, xmlPullParser);
                    dVar.f1340b.add(dVar2);
                    arrayDeque.push(dVar2);
                    if (dVar2.getGroupName() != null) {
                        gVar.p.put(dVar2.getGroupName(), dVar2);
                    }
                    c0069h.a = dVar2.k | c0069h.a;
                }
            } else if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                arrayDeque.pop();
            }
            eventType = xmlPullParser.next();
        }
        if (z) {
            throw new XmlPullParserException("no path defined");
        }
    }

    private boolean f() {
        return Build.VERSION.SDK_INT >= 17 && isAutoMirrored() && androidx.core.graphics.drawable.a.f(this) == 1;
    }

    private static PorterDuff.Mode g(int i2, PorterDuff.Mode mode) {
        if (i2 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i2 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i2 == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i2) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    private void i(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) throws XmlPullParserException {
        C0069h c0069h = this.f1338c;
        g gVar = c0069h.f1349b;
        c0069h.f1351d = g(androidx.core.content.c.g.g(typedArray, xmlPullParser, "tintMode", 6, -1), PorterDuff.Mode.SRC_IN);
        ColorStateList colorStateListC = androidx.core.content.c.g.c(typedArray, xmlPullParser, theme, "tint", 1);
        if (colorStateListC != null) {
            c0069h.f1350c = colorStateListC;
        }
        c0069h.e = androidx.core.content.c.g.a(typedArray, xmlPullParser, "autoMirrored", 5, c0069h.e);
        gVar.k = androidx.core.content.c.g.f(typedArray, xmlPullParser, "viewportWidth", 7, gVar.k);
        float f2 = androidx.core.content.c.g.f(typedArray, xmlPullParser, "viewportHeight", 8, gVar.l);
        gVar.l = f2;
        if (gVar.k <= CropImageView.DEFAULT_ASPECT_RATIO) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (f2 <= CropImageView.DEFAULT_ASPECT_RATIO) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        }
        gVar.i = typedArray.getDimension(3, gVar.i);
        float dimension = typedArray.getDimension(2, gVar.j);
        gVar.j = dimension;
        if (gVar.i <= CropImageView.DEFAULT_ASPECT_RATIO) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires width > 0");
        }
        if (dimension <= CropImageView.DEFAULT_ASPECT_RATIO) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires height > 0");
        }
        gVar.setAlpha(androidx.core.content.c.g.f(typedArray, xmlPullParser, "alpha", 4, gVar.getAlpha()));
        String string = typedArray.getString(0);
        if (string != null) {
            gVar.n = string;
            gVar.p.put(string, gVar);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f1337b;
        if (drawable == null) {
            return false;
        }
        androidx.core.graphics.drawable.a.b(drawable);
        return false;
    }

    Object d(String str) {
        return this.f1338c.f1349b.p.get(str);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f1337b;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        copyBounds(this.j);
        if (this.j.width() <= 0 || this.j.height() <= 0) {
            return;
        }
        ColorFilter colorFilter = this.e;
        if (colorFilter == null) {
            colorFilter = this.f1339d;
        }
        canvas.getMatrix(this.i);
        this.i.getValues(this.h);
        float fAbs = Math.abs(this.h[0]);
        float fAbs2 = Math.abs(this.h[4]);
        float fAbs3 = Math.abs(this.h[1]);
        float fAbs4 = Math.abs(this.h[3]);
        if (fAbs3 != CropImageView.DEFAULT_ASPECT_RATIO || fAbs4 != CropImageView.DEFAULT_ASPECT_RATIO) {
            fAbs = 1.0f;
            fAbs2 = 1.0f;
        }
        int iMin = Math.min(2048, (int) (this.j.width() * fAbs));
        int iMin2 = Math.min(2048, (int) (this.j.height() * fAbs2));
        if (iMin <= 0 || iMin2 <= 0) {
            return;
        }
        int iSave = canvas.save();
        Rect rect = this.j;
        canvas.translate(rect.left, rect.top);
        if (f()) {
            canvas.translate(this.j.width(), CropImageView.DEFAULT_ASPECT_RATIO);
            canvas.scale(-1.0f, 1.0f);
        }
        this.j.offsetTo(0, 0);
        this.f1338c.c(iMin, iMin2);
        if (!this.g) {
            this.f1338c.j(iMin, iMin2);
        } else if (!this.f1338c.b()) {
            this.f1338c.j(iMin, iMin2);
            this.f1338c.i();
        }
        this.f1338c.d(canvas, colorFilter, this.j);
        canvas.restoreToCount(iSave);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f1337b;
        return drawable != null ? androidx.core.graphics.drawable.a.d(drawable) : this.f1338c.f1349b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f1337b;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.f1338c.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f1337b;
        return drawable != null ? androidx.core.graphics.drawable.a.e(drawable) : this.e;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f1337b != null && Build.VERSION.SDK_INT >= 24) {
            return new i(this.f1337b.getConstantState());
        }
        this.f1338c.a = getChangingConfigurations();
        return this.f1338c;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f1337b;
        return drawable != null ? drawable.getIntrinsicHeight() : (int) this.f1338c.f1349b.j;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f1337b;
        return drawable != null ? drawable.getIntrinsicWidth() : (int) this.f1338c.f1349b.i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f1337b;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    void h(boolean z) {
        this.g = z;
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        Drawable drawable = this.f1337b;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        Drawable drawable = this.f1337b;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f1337b;
        return drawable != null ? androidx.core.graphics.drawable.a.h(drawable) : this.f1338c.e;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        C0069h c0069h;
        ColorStateList colorStateList;
        Drawable drawable = this.f1337b;
        return drawable != null ? drawable.isStateful() : super.isStateful() || ((c0069h = this.f1338c) != null && (c0069h.g() || ((colorStateList = this.f1338c.f1350c) != null && colorStateList.isStateful())));
    }

    PorterDuffColorFilter j(PorterDuffColorFilter porterDuffColorFilter, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f1337b;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.f && super.mutate() == this) {
            this.f1338c = new C0069h(this.f1338c);
            this.f = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f1337b;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        Drawable drawable = this.f1337b;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        boolean z = false;
        C0069h c0069h = this.f1338c;
        ColorStateList colorStateList = c0069h.f1350c;
        if (colorStateList != null && (mode = c0069h.f1351d) != null) {
            this.f1339d = j(this.f1339d, colorStateList, mode);
            invalidateSelf();
            z = true;
        }
        if (!c0069h.g() || !c0069h.h(iArr)) {
            return z;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j) {
        Drawable drawable = this.f1337b;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j);
        } else {
            super.scheduleSelf(runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        Drawable drawable = this.f1337b;
        if (drawable != null) {
            drawable.setAlpha(i2);
        } else if (this.f1338c.f1349b.getRootAlpha() != i2) {
            this.f1338c.f1349b.setRootAlpha(i2);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        Drawable drawable = this.f1337b;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.j(drawable, z);
        } else {
            this.f1338c.e = z;
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTint(int i2) {
        Drawable drawable = this.f1337b;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.n(drawable, i2);
        } else {
            setTintList(ColorStateList.valueOf(i2));
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f1337b;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.o(drawable, colorStateList);
            return;
        }
        C0069h c0069h = this.f1338c;
        if (c0069h.f1350c != colorStateList) {
            c0069h.f1350c = colorStateList;
            this.f1339d = j(this.f1339d, colorStateList, c0069h.f1351d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f1337b;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.p(drawable, mode);
            return;
        }
        C0069h c0069h = this.f1338c;
        if (c0069h.f1351d != mode) {
            c0069h.f1351d = mode;
            this.f1339d = j(this.f1339d, c0069h.f1350c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f1337b;
        return drawable != null ? drawable.setVisible(z, z2) : super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.f1337b;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    private static class i extends Drawable.ConstantState {
        private final Drawable.ConstantState a;

        public i(Drawable.ConstantState constantState) {
            this.a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            h hVar = new h();
            hVar.f1337b = (VectorDrawable) this.a.newDrawable();
            return hVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            h hVar = new h();
            hVar.f1337b = (VectorDrawable) this.a.newDrawable(resources);
            return hVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            h hVar = new h();
            hVar.f1337b = (VectorDrawable) this.a.newDrawable(resources, theme);
            return hVar;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f1337b;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.e = colorFilter;
            invalidateSelf();
        }
    }

    private static abstract class f extends e {
        protected c.b[] a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f1343b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f1344c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1345d;

        public f() {
            super(null);
            this.a = null;
            this.f1344c = 0;
        }

        public boolean c() {
            return false;
        }

        public void d(Path path) {
            path.reset();
            c.b[] bVarArr = this.a;
            if (bVarArr != null) {
                c.b.e(bVarArr, path);
            }
        }

        public c.b[] getPathData() {
            return this.a;
        }

        public String getPathName() {
            return this.f1343b;
        }

        public void setPathData(c.b[] bVarArr) {
            if (c.g.d.c.b(this.a, bVarArr)) {
                c.g.d.c.j(this.a, bVarArr);
            } else {
                this.a = c.g.d.c.f(bVarArr);
            }
        }

        public f(f fVar) {
            super(null);
            this.a = null;
            this.f1344c = 0;
            this.f1343b = fVar.f1343b;
            this.f1345d = fVar.f1345d;
            this.a = c.g.d.c.f(fVar.a);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        Drawable drawable = this.f1337b;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.g(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        C0069h c0069h = this.f1338c;
        c0069h.f1349b = new g();
        TypedArray typedArrayK = androidx.core.content.c.g.k(resources, theme, attributeSet, c.q.a.a.a.a);
        i(typedArrayK, xmlPullParser, theme);
        typedArrayK.recycle();
        c0069h.a = getChangingConfigurations();
        c0069h.k = true;
        e(resources, xmlPullParser, attributeSet, theme);
        this.f1339d = j(this.f1339d, c0069h.f1350c, c0069h.f1351d);
    }

    h(C0069h c0069h) {
        this.g = true;
        this.h = new float[9];
        this.i = new Matrix();
        this.j = new Rect();
        this.f1338c = c0069h;
        this.f1339d = j(this.f1339d, c0069h.f1350c, c0069h.f1351d);
    }

    private static class c extends f {
        private int[] e;
        androidx.core.content.c.b f;
        float g;
        androidx.core.content.c.b h;
        float i;
        float j;
        float k;
        float l;
        float m;
        Paint.Cap n;
        Paint.Join o;
        float p;

        c() {
            this.g = CropImageView.DEFAULT_ASPECT_RATIO;
            this.i = 1.0f;
            this.j = 1.0f;
            this.k = CropImageView.DEFAULT_ASPECT_RATIO;
            this.l = 1.0f;
            this.m = CropImageView.DEFAULT_ASPECT_RATIO;
            this.n = Paint.Cap.BUTT;
            this.o = Paint.Join.MITER;
            this.p = 4.0f;
        }

        private Paint.Cap e(int i, Paint.Cap cap) {
            return i != 0 ? i != 1 ? i != 2 ? cap : Paint.Cap.SQUARE : Paint.Cap.ROUND : Paint.Cap.BUTT;
        }

        private Paint.Join f(int i, Paint.Join join) {
            return i != 0 ? i != 1 ? i != 2 ? join : Paint.Join.BEVEL : Paint.Join.ROUND : Paint.Join.MITER;
        }

        private void h(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) {
            this.e = null;
            if (androidx.core.content.c.g.j(xmlPullParser, "pathData")) {
                String string = typedArray.getString(0);
                if (string != null) {
                    this.f1343b = string;
                }
                String string2 = typedArray.getString(2);
                if (string2 != null) {
                    this.a = c.g.d.c.d(string2);
                }
                this.h = androidx.core.content.c.g.e(typedArray, xmlPullParser, theme, "fillColor", 1, 0);
                this.j = androidx.core.content.c.g.f(typedArray, xmlPullParser, "fillAlpha", 12, this.j);
                this.n = e(androidx.core.content.c.g.g(typedArray, xmlPullParser, "strokeLineCap", 8, -1), this.n);
                this.o = f(androidx.core.content.c.g.g(typedArray, xmlPullParser, "strokeLineJoin", 9, -1), this.o);
                this.p = androidx.core.content.c.g.f(typedArray, xmlPullParser, "strokeMiterLimit", 10, this.p);
                this.f = androidx.core.content.c.g.e(typedArray, xmlPullParser, theme, "strokeColor", 3, 0);
                this.i = androidx.core.content.c.g.f(typedArray, xmlPullParser, "strokeAlpha", 11, this.i);
                this.g = androidx.core.content.c.g.f(typedArray, xmlPullParser, "strokeWidth", 4, this.g);
                this.l = androidx.core.content.c.g.f(typedArray, xmlPullParser, "trimPathEnd", 6, this.l);
                this.m = androidx.core.content.c.g.f(typedArray, xmlPullParser, "trimPathOffset", 7, this.m);
                this.k = androidx.core.content.c.g.f(typedArray, xmlPullParser, "trimPathStart", 5, this.k);
                this.f1344c = androidx.core.content.c.g.g(typedArray, xmlPullParser, "fillType", 13, this.f1344c);
            }
        }

        @Override // c.q.a.a.h.e
        public boolean a() {
            return this.h.i() || this.f.i();
        }

        @Override // c.q.a.a.h.e
        public boolean b(int[] iArr) {
            return this.f.j(iArr) | this.h.j(iArr);
        }

        public void g(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray typedArrayK = androidx.core.content.c.g.k(resources, theme, attributeSet, c.q.a.a.a.f1328c);
            h(typedArrayK, xmlPullParser, theme);
            typedArrayK.recycle();
        }

        float getFillAlpha() {
            return this.j;
        }

        int getFillColor() {
            return this.h.e();
        }

        float getStrokeAlpha() {
            return this.i;
        }

        int getStrokeColor() {
            return this.f.e();
        }

        float getStrokeWidth() {
            return this.g;
        }

        float getTrimPathEnd() {
            return this.l;
        }

        float getTrimPathOffset() {
            return this.m;
        }

        float getTrimPathStart() {
            return this.k;
        }

        void setFillAlpha(float f) {
            this.j = f;
        }

        void setFillColor(int i) {
            this.h.k(i);
        }

        void setStrokeAlpha(float f) {
            this.i = f;
        }

        void setStrokeColor(int i) {
            this.f.k(i);
        }

        void setStrokeWidth(float f) {
            this.g = f;
        }

        void setTrimPathEnd(float f) {
            this.l = f;
        }

        void setTrimPathOffset(float f) {
            this.m = f;
        }

        void setTrimPathStart(float f) {
            this.k = f;
        }

        c(c cVar) {
            super(cVar);
            this.g = CropImageView.DEFAULT_ASPECT_RATIO;
            this.i = 1.0f;
            this.j = 1.0f;
            this.k = CropImageView.DEFAULT_ASPECT_RATIO;
            this.l = 1.0f;
            this.m = CropImageView.DEFAULT_ASPECT_RATIO;
            this.n = Paint.Cap.BUTT;
            this.o = Paint.Join.MITER;
            this.p = 4.0f;
            this.e = cVar.e;
            this.f = cVar.f;
            this.g = cVar.g;
            this.i = cVar.i;
            this.h = cVar.h;
            this.f1344c = cVar.f1344c;
            this.j = cVar.j;
            this.k = cVar.k;
            this.l = cVar.l;
            this.m = cVar.m;
            this.n = cVar.n;
            this.o = cVar.o;
            this.p = cVar.p;
        }
    }

    private static class g {
        private static final Matrix q = new Matrix();
        private final Path a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Path f1346b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Matrix f1347c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Paint f1348d;
        Paint e;
        private PathMeasure f;
        private int g;
        final d h;
        float i;
        float j;
        float k;
        float l;
        int m;
        String n;
        Boolean o;
        final c.d.a<String, Object> p;

        public g() {
            this.f1347c = new Matrix();
            this.i = CropImageView.DEFAULT_ASPECT_RATIO;
            this.j = CropImageView.DEFAULT_ASPECT_RATIO;
            this.k = CropImageView.DEFAULT_ASPECT_RATIO;
            this.l = CropImageView.DEFAULT_ASPECT_RATIO;
            this.m = 255;
            this.n = null;
            this.o = null;
            this.p = new c.d.a<>();
            this.h = new d();
            this.a = new Path();
            this.f1346b = new Path();
        }

        private static float a(float f, float f2, float f3, float f4) {
            return (f * f4) - (f2 * f3);
        }

        private void c(d dVar, Matrix matrix, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            dVar.a.set(matrix);
            dVar.a.preConcat(dVar.j);
            canvas.save();
            for (int i3 = 0; i3 < dVar.f1340b.size(); i3++) {
                e eVar = dVar.f1340b.get(i3);
                if (eVar instanceof d) {
                    c((d) eVar, dVar.a, canvas, i, i2, colorFilter);
                } else if (eVar instanceof f) {
                    d(dVar, (f) eVar, canvas, i, i2, colorFilter);
                }
            }
            canvas.restore();
        }

        private void d(d dVar, f fVar, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            float f = i / this.k;
            float f2 = i2 / this.l;
            float fMin = Math.min(f, f2);
            Matrix matrix = dVar.a;
            this.f1347c.set(matrix);
            this.f1347c.postScale(f, f2);
            float fE = e(matrix);
            if (fE == CropImageView.DEFAULT_ASPECT_RATIO) {
                return;
            }
            fVar.d(this.a);
            Path path = this.a;
            this.f1346b.reset();
            if (fVar.c()) {
                this.f1346b.setFillType(fVar.f1344c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                this.f1346b.addPath(path, this.f1347c);
                canvas.clipPath(this.f1346b);
                return;
            }
            c cVar = (c) fVar;
            if (cVar.k != CropImageView.DEFAULT_ASPECT_RATIO || cVar.l != 1.0f) {
                float f3 = cVar.k;
                float f4 = cVar.m;
                float f5 = (f3 + f4) % 1.0f;
                float f6 = (cVar.l + f4) % 1.0f;
                if (this.f == null) {
                    this.f = new PathMeasure();
                }
                this.f.setPath(this.a, false);
                float length = this.f.getLength();
                float f7 = f5 * length;
                float f8 = f6 * length;
                path.reset();
                if (f7 > f8) {
                    this.f.getSegment(f7, length, path, true);
                    this.f.getSegment(CropImageView.DEFAULT_ASPECT_RATIO, f8, path, true);
                } else {
                    this.f.getSegment(f7, f8, path, true);
                }
                path.rLineTo(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO);
            }
            this.f1346b.addPath(path, this.f1347c);
            if (cVar.h.l()) {
                androidx.core.content.c.b bVar = cVar.h;
                if (this.e == null) {
                    Paint paint = new Paint(1);
                    this.e = paint;
                    paint.setStyle(Paint.Style.FILL);
                }
                Paint paint2 = this.e;
                if (bVar.h()) {
                    Shader shaderF = bVar.f();
                    shaderF.setLocalMatrix(this.f1347c);
                    paint2.setShader(shaderF);
                    paint2.setAlpha(Math.round(cVar.j * 255.0f));
                } else {
                    paint2.setShader(null);
                    paint2.setAlpha(255);
                    paint2.setColor(h.a(bVar.e(), cVar.j));
                }
                paint2.setColorFilter(colorFilter);
                this.f1346b.setFillType(cVar.f1344c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                canvas.drawPath(this.f1346b, paint2);
            }
            if (cVar.f.l()) {
                androidx.core.content.c.b bVar2 = cVar.f;
                if (this.f1348d == null) {
                    Paint paint3 = new Paint(1);
                    this.f1348d = paint3;
                    paint3.setStyle(Paint.Style.STROKE);
                }
                Paint paint4 = this.f1348d;
                Paint.Join join = cVar.o;
                if (join != null) {
                    paint4.setStrokeJoin(join);
                }
                Paint.Cap cap = cVar.n;
                if (cap != null) {
                    paint4.setStrokeCap(cap);
                }
                paint4.setStrokeMiter(cVar.p);
                if (bVar2.h()) {
                    Shader shaderF2 = bVar2.f();
                    shaderF2.setLocalMatrix(this.f1347c);
                    paint4.setShader(shaderF2);
                    paint4.setAlpha(Math.round(cVar.i * 255.0f));
                } else {
                    paint4.setShader(null);
                    paint4.setAlpha(255);
                    paint4.setColor(h.a(bVar2.e(), cVar.i));
                }
                paint4.setColorFilter(colorFilter);
                paint4.setStrokeWidth(cVar.g * fMin * fE);
                canvas.drawPath(this.f1346b, paint4);
            }
        }

        private float e(Matrix matrix) {
            float[] fArr = {CropImageView.DEFAULT_ASPECT_RATIO, 1.0f, 1.0f, CropImageView.DEFAULT_ASPECT_RATIO};
            matrix.mapVectors(fArr);
            float fHypot = (float) Math.hypot(fArr[0], fArr[1]);
            float fHypot2 = (float) Math.hypot(fArr[2], fArr[3]);
            float fA = a(fArr[0], fArr[1], fArr[2], fArr[3]);
            float fMax = Math.max(fHypot, fHypot2);
            return fMax > CropImageView.DEFAULT_ASPECT_RATIO ? Math.abs(fA) / fMax : CropImageView.DEFAULT_ASPECT_RATIO;
        }

        public void b(Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            c(this.h, q, canvas, i, i2, colorFilter);
        }

        public boolean f() {
            if (this.o == null) {
                this.o = Boolean.valueOf(this.h.a());
            }
            return this.o.booleanValue();
        }

        public boolean g(int[] iArr) {
            return this.h.b(iArr);
        }

        public float getAlpha() {
            return getRootAlpha() / 255.0f;
        }

        public int getRootAlpha() {
            return this.m;
        }

        public void setAlpha(float f) {
            setRootAlpha((int) (f * 255.0f));
        }

        public void setRootAlpha(int i) {
            this.m = i;
        }

        public g(g gVar) {
            this.f1347c = new Matrix();
            this.i = CropImageView.DEFAULT_ASPECT_RATIO;
            this.j = CropImageView.DEFAULT_ASPECT_RATIO;
            this.k = CropImageView.DEFAULT_ASPECT_RATIO;
            this.l = CropImageView.DEFAULT_ASPECT_RATIO;
            this.m = 255;
            this.n = null;
            this.o = null;
            c.d.a<String, Object> aVar = new c.d.a<>();
            this.p = aVar;
            this.h = new d(gVar.h, aVar);
            this.a = new Path(gVar.a);
            this.f1346b = new Path(gVar.f1346b);
            this.i = gVar.i;
            this.j = gVar.j;
            this.k = gVar.k;
            this.l = gVar.l;
            this.g = gVar.g;
            this.m = gVar.m;
            this.n = gVar.n;
            String str = gVar.n;
            if (str != null) {
                this.p.put(str, this);
            }
            this.o = gVar.o;
        }
    }

    private static class d extends e {
        final Matrix a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final ArrayList<e> f1340b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        float f1341c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private float f1342d;
        private float e;
        private float f;
        private float g;
        private float h;
        private float i;
        final Matrix j;
        int k;
        private int[] l;
        private String m;

        public d(d dVar, c.d.a<String, Object> aVar) {
            f bVar;
            super(null);
            this.a = new Matrix();
            this.f1340b = new ArrayList<>();
            this.f1341c = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f1342d = CropImageView.DEFAULT_ASPECT_RATIO;
            this.e = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f = 1.0f;
            this.g = 1.0f;
            this.h = CropImageView.DEFAULT_ASPECT_RATIO;
            this.i = CropImageView.DEFAULT_ASPECT_RATIO;
            this.j = new Matrix();
            this.m = null;
            this.f1341c = dVar.f1341c;
            this.f1342d = dVar.f1342d;
            this.e = dVar.e;
            this.f = dVar.f;
            this.g = dVar.g;
            this.h = dVar.h;
            this.i = dVar.i;
            this.l = dVar.l;
            String str = dVar.m;
            this.m = str;
            this.k = dVar.k;
            if (str != null) {
                aVar.put(str, this);
            }
            this.j.set(dVar.j);
            ArrayList<e> arrayList = dVar.f1340b;
            for (int i = 0; i < arrayList.size(); i++) {
                e eVar = arrayList.get(i);
                if (eVar instanceof d) {
                    this.f1340b.add(new d((d) eVar, aVar));
                } else {
                    if (eVar instanceof c) {
                        bVar = new c((c) eVar);
                    } else {
                        if (!(eVar instanceof b)) {
                            throw new IllegalStateException("Unknown object in the tree!");
                        }
                        bVar = new b((b) eVar);
                    }
                    this.f1340b.add(bVar);
                    String str2 = bVar.f1343b;
                    if (str2 != null) {
                        aVar.put(str2, bVar);
                    }
                }
            }
        }

        private void d() {
            this.j.reset();
            this.j.postTranslate(-this.f1342d, -this.e);
            this.j.postScale(this.f, this.g);
            this.j.postRotate(this.f1341c, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO);
            this.j.postTranslate(this.h + this.f1342d, this.i + this.e);
        }

        private void e(TypedArray typedArray, XmlPullParser xmlPullParser) {
            this.l = null;
            this.f1341c = androidx.core.content.c.g.f(typedArray, xmlPullParser, "rotation", 5, this.f1341c);
            this.f1342d = typedArray.getFloat(1, this.f1342d);
            this.e = typedArray.getFloat(2, this.e);
            this.f = androidx.core.content.c.g.f(typedArray, xmlPullParser, "scaleX", 3, this.f);
            this.g = androidx.core.content.c.g.f(typedArray, xmlPullParser, "scaleY", 4, this.g);
            this.h = androidx.core.content.c.g.f(typedArray, xmlPullParser, "translateX", 6, this.h);
            this.i = androidx.core.content.c.g.f(typedArray, xmlPullParser, "translateY", 7, this.i);
            String string = typedArray.getString(0);
            if (string != null) {
                this.m = string;
            }
            d();
        }

        @Override // c.q.a.a.h.e
        public boolean a() {
            for (int i = 0; i < this.f1340b.size(); i++) {
                if (this.f1340b.get(i).a()) {
                    return true;
                }
            }
            return false;
        }

        @Override // c.q.a.a.h.e
        public boolean b(int[] iArr) {
            boolean zB = false;
            for (int i = 0; i < this.f1340b.size(); i++) {
                zB |= this.f1340b.get(i).b(iArr);
            }
            return zB;
        }

        public void c(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray typedArrayK = androidx.core.content.c.g.k(resources, theme, attributeSet, c.q.a.a.a.f1327b);
            e(typedArrayK, xmlPullParser);
            typedArrayK.recycle();
        }

        public String getGroupName() {
            return this.m;
        }

        public Matrix getLocalMatrix() {
            return this.j;
        }

        public float getPivotX() {
            return this.f1342d;
        }

        public float getPivotY() {
            return this.e;
        }

        public float getRotation() {
            return this.f1341c;
        }

        public float getScaleX() {
            return this.f;
        }

        public float getScaleY() {
            return this.g;
        }

        public float getTranslateX() {
            return this.h;
        }

        public float getTranslateY() {
            return this.i;
        }

        public void setPivotX(float f) {
            if (f != this.f1342d) {
                this.f1342d = f;
                d();
            }
        }

        public void setPivotY(float f) {
            if (f != this.e) {
                this.e = f;
                d();
            }
        }

        public void setRotation(float f) {
            if (f != this.f1341c) {
                this.f1341c = f;
                d();
            }
        }

        public void setScaleX(float f) {
            if (f != this.f) {
                this.f = f;
                d();
            }
        }

        public void setScaleY(float f) {
            if (f != this.g) {
                this.g = f;
                d();
            }
        }

        public void setTranslateX(float f) {
            if (f != this.h) {
                this.h = f;
                d();
            }
        }

        public void setTranslateY(float f) {
            if (f != this.i) {
                this.i = f;
                d();
            }
        }

        public d() {
            super(null);
            this.a = new Matrix();
            this.f1340b = new ArrayList<>();
            this.f1341c = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f1342d = CropImageView.DEFAULT_ASPECT_RATIO;
            this.e = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f = 1.0f;
            this.g = 1.0f;
            this.h = CropImageView.DEFAULT_ASPECT_RATIO;
            this.i = CropImageView.DEFAULT_ASPECT_RATIO;
            this.j = new Matrix();
            this.m = null;
        }
    }
}
