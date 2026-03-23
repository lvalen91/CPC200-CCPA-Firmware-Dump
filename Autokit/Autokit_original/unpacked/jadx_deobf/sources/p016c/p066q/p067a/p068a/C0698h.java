package p016c.p066q.p067a.p068a;

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
import androidx.core.content.p003c.C0245b;
import androidx.core.content.p003c.C0249f;
import androidx.core.content.p003c.C0250g;
import androidx.core.graphics.drawable.C0251a;
import com.yalantis.ucrop.view.CropImageView;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p016c.p032d.C0534a;
import p016c.p041g.p042d.C0590c;

/* JADX INFO: renamed from: c.q.a.a.h */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0698h extends AbstractC0697g {

    /* JADX INFO: renamed from: k */
    static final PorterDuff.Mode f4103k = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: c */
    private h f4104c;

    /* JADX INFO: renamed from: d */
    private PorterDuffColorFilter f4105d;

    /* JADX INFO: renamed from: e */
    private ColorFilter f4106e;

    /* JADX INFO: renamed from: f */
    private boolean f4107f;

    /* JADX INFO: renamed from: g */
    private boolean f4108g;

    /* JADX INFO: renamed from: h */
    private final float[] f4109h;

    /* JADX INFO: renamed from: i */
    private final Matrix f4110i;

    /* JADX INFO: renamed from: j */
    private final Rect f4111j;

    /* JADX INFO: renamed from: c.q.a.a.h$a */
    static /* synthetic */ class a {
    }

    /* JADX INFO: renamed from: c.q.a.a.h$b */
    private static class b extends f {
        b() {
        }

        /* JADX INFO: renamed from: f */
        private void m5234f(TypedArray typedArray, XmlPullParser xmlPullParser) {
            String string = typedArray.getString(0);
            if (string != null) {
                this.f4138b = string;
            }
            String string2 = typedArray.getString(1);
            if (string2 != null) {
                this.f4137a = C0590c.m4680d(string2);
            }
            this.f4139c = C0250g.m1769g(typedArray, xmlPullParser, "fillType", 2, 0);
        }

        @Override // p016c.p066q.p067a.p068a.C0698h.f
        /* JADX INFO: renamed from: c */
        public boolean mo5235c() {
            return true;
        }

        /* JADX INFO: renamed from: e */
        public void m5236e(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            if (C0250g.m1772j(xmlPullParser, "pathData")) {
                TypedArray typedArrayM1773k = C0250g.m1773k(resources, theme, attributeSet, C0691a.f4078d);
                m5234f(typedArrayM1773k, xmlPullParser);
                typedArrayM1773k.recycle();
            }
        }

        b(b bVar) {
            super(bVar);
        }
    }

    /* JADX INFO: renamed from: c.q.a.a.h$e */
    private static abstract class e {
        private e() {
        }

        /* JADX INFO: renamed from: a */
        public boolean mo5240a() {
            return false;
        }

        /* JADX INFO: renamed from: b */
        public boolean mo5241b(int[] iArr) {
            return false;
        }

        /* synthetic */ e(a aVar) {
            this();
        }
    }

    /* JADX INFO: renamed from: c.q.a.a.h$h */
    private static class h extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a */
        int f4158a;

        /* JADX INFO: renamed from: b */
        g f4159b;

        /* JADX INFO: renamed from: c */
        ColorStateList f4160c;

        /* JADX INFO: renamed from: d */
        PorterDuff.Mode f4161d;

        /* JADX INFO: renamed from: e */
        boolean f4162e;

        /* JADX INFO: renamed from: f */
        Bitmap f4163f;

        /* JADX INFO: renamed from: g */
        ColorStateList f4164g;

        /* JADX INFO: renamed from: h */
        PorterDuff.Mode f4165h;

        /* JADX INFO: renamed from: i */
        int f4166i;

        /* JADX INFO: renamed from: j */
        boolean f4167j;

        /* JADX INFO: renamed from: k */
        boolean f4168k;

        /* JADX INFO: renamed from: l */
        Paint f4169l;

        public h(h hVar) {
            this.f4160c = null;
            this.f4161d = C0698h.f4103k;
            if (hVar != null) {
                this.f4158a = hVar.f4158a;
                g gVar = new g(hVar.f4159b);
                this.f4159b = gVar;
                if (hVar.f4159b.f4146e != null) {
                    gVar.f4146e = new Paint(hVar.f4159b.f4146e);
                }
                if (hVar.f4159b.f4145d != null) {
                    this.f4159b.f4145d = new Paint(hVar.f4159b.f4145d);
                }
                this.f4160c = hVar.f4160c;
                this.f4161d = hVar.f4161d;
                this.f4162e = hVar.f4162e;
            }
        }

        /* JADX INFO: renamed from: a */
        public boolean m5254a(int i, int i2) {
            return i == this.f4163f.getWidth() && i2 == this.f4163f.getHeight();
        }

        /* JADX INFO: renamed from: b */
        public boolean m5255b() {
            return !this.f4168k && this.f4164g == this.f4160c && this.f4165h == this.f4161d && this.f4167j == this.f4162e && this.f4166i == this.f4159b.getRootAlpha();
        }

        /* JADX INFO: renamed from: c */
        public void m5256c(int i, int i2) {
            if (this.f4163f == null || !m5254a(i, i2)) {
                this.f4163f = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                this.f4168k = true;
            }
        }

        /* JADX INFO: renamed from: d */
        public void m5257d(Canvas canvas, ColorFilter colorFilter, Rect rect) {
            canvas.drawBitmap(this.f4163f, (Rect) null, rect, m5258e(colorFilter));
        }

        /* JADX INFO: renamed from: e */
        public Paint m5258e(ColorFilter colorFilter) {
            if (!m5259f() && colorFilter == null) {
                return null;
            }
            if (this.f4169l == null) {
                Paint paint = new Paint();
                this.f4169l = paint;
                paint.setFilterBitmap(true);
            }
            this.f4169l.setAlpha(this.f4159b.getRootAlpha());
            this.f4169l.setColorFilter(colorFilter);
            return this.f4169l;
        }

        /* JADX INFO: renamed from: f */
        public boolean m5259f() {
            return this.f4159b.getRootAlpha() < 255;
        }

        /* JADX INFO: renamed from: g */
        public boolean m5260g() {
            return this.f4159b.m5252f();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f4158a;
        }

        /* JADX INFO: renamed from: h */
        public boolean m5261h(int[] iArr) {
            boolean zM5253g = this.f4159b.m5253g(iArr);
            this.f4168k |= zM5253g;
            return zM5253g;
        }

        /* JADX INFO: renamed from: i */
        public void m5262i() {
            this.f4164g = this.f4160c;
            this.f4165h = this.f4161d;
            this.f4166i = this.f4159b.getRootAlpha();
            this.f4167j = this.f4162e;
            this.f4168k = false;
        }

        /* JADX INFO: renamed from: j */
        public void m5263j(int i, int i2) {
            this.f4163f.eraseColor(0);
            this.f4159b.m5251b(new Canvas(this.f4163f), i, i2, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new C0698h(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new C0698h(this);
        }

        public h() {
            this.f4160c = null;
            this.f4161d = C0698h.f4103k;
            this.f4159b = new g();
        }
    }

    C0698h() {
        this.f4108g = true;
        this.f4109h = new float[9];
        this.f4110i = new Matrix();
        this.f4111j = new Rect();
        this.f4104c = new h();
    }

    /* JADX INFO: renamed from: a */
    static int m5224a(int i2, float f2) {
        return (i2 & 16777215) | (((int) (Color.alpha(i2) * f2)) << 24);
    }

    /* JADX INFO: renamed from: b */
    public static C0698h m5225b(Resources resources, int i2, Resources.Theme theme) {
        int next;
        if (Build.VERSION.SDK_INT >= 24) {
            C0698h c0698h = new C0698h();
            c0698h.f4102b = C0249f.m1751b(resources, i2, theme);
            new i(c0698h.f4102b.getConstantState());
            return c0698h;
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
                return m5226c(resources, xml, attributeSetAsAttributeSet, theme);
            }
            throw new XmlPullParserException("No start tag found");
        } catch (IOException | XmlPullParserException unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: c */
    public static C0698h m5226c(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        C0698h c0698h = new C0698h();
        c0698h.inflate(resources, xmlPullParser, attributeSet, theme);
        return c0698h;
    }

    /* JADX INFO: renamed from: e */
    private void m5227e(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        h hVar = this.f4104c;
        g gVar = hVar.f4159b;
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(gVar.f4149h);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        boolean z = true;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                d dVar = (d) arrayDeque.peek();
                if ("path".equals(name)) {
                    c cVar = new c();
                    cVar.m5242g(resources, attributeSet, theme, xmlPullParser);
                    dVar.f4125b.add(cVar);
                    if (cVar.getPathName() != null) {
                        gVar.f4157p.put(cVar.getPathName(), cVar);
                    }
                    z = false;
                    hVar.f4158a = cVar.f4140d | hVar.f4158a;
                } else if ("clip-path".equals(name)) {
                    b bVar = new b();
                    bVar.m5236e(resources, attributeSet, theme, xmlPullParser);
                    dVar.f4125b.add(bVar);
                    if (bVar.getPathName() != null) {
                        gVar.f4157p.put(bVar.getPathName(), bVar);
                    }
                    hVar.f4158a = bVar.f4140d | hVar.f4158a;
                } else if ("group".equals(name)) {
                    d dVar2 = new d();
                    dVar2.m5245c(resources, attributeSet, theme, xmlPullParser);
                    dVar.f4125b.add(dVar2);
                    arrayDeque.push(dVar2);
                    if (dVar2.getGroupName() != null) {
                        gVar.f4157p.put(dVar2.getGroupName(), dVar2);
                    }
                    hVar.f4158a = dVar2.f4134k | hVar.f4158a;
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

    /* JADX INFO: renamed from: f */
    private boolean m5228f() {
        return Build.VERSION.SDK_INT >= 17 && isAutoMirrored() && C0251a.m1785f(this) == 1;
    }

    /* JADX INFO: renamed from: g */
    private static PorterDuff.Mode m5229g(int i2, PorterDuff.Mode mode) {
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

    /* JADX INFO: renamed from: i */
    private void m5230i(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) throws XmlPullParserException {
        h hVar = this.f4104c;
        g gVar = hVar.f4159b;
        hVar.f4161d = m5229g(C0250g.m1769g(typedArray, xmlPullParser, "tintMode", 6, -1), PorterDuff.Mode.SRC_IN);
        ColorStateList colorStateListM1765c = C0250g.m1765c(typedArray, xmlPullParser, theme, "tint", 1);
        if (colorStateListM1765c != null) {
            hVar.f4160c = colorStateListM1765c;
        }
        hVar.f4162e = C0250g.m1763a(typedArray, xmlPullParser, "autoMirrored", 5, hVar.f4162e);
        gVar.f4152k = C0250g.m1768f(typedArray, xmlPullParser, "viewportWidth", 7, gVar.f4152k);
        float fM1768f = C0250g.m1768f(typedArray, xmlPullParser, "viewportHeight", 8, gVar.f4153l);
        gVar.f4153l = fM1768f;
        if (gVar.f4152k <= CropImageView.DEFAULT_ASPECT_RATIO) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (fM1768f <= CropImageView.DEFAULT_ASPECT_RATIO) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        }
        gVar.f4150i = typedArray.getDimension(3, gVar.f4150i);
        float dimension = typedArray.getDimension(2, gVar.f4151j);
        gVar.f4151j = dimension;
        if (gVar.f4150i <= CropImageView.DEFAULT_ASPECT_RATIO) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires width > 0");
        }
        if (dimension <= CropImageView.DEFAULT_ASPECT_RATIO) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires height > 0");
        }
        gVar.setAlpha(C0250g.m1768f(typedArray, xmlPullParser, "alpha", 4, gVar.getAlpha()));
        String string = typedArray.getString(0);
        if (string != null) {
            gVar.f4155n = string;
            gVar.f4157p.put(string, gVar);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f4102b;
        if (drawable == null) {
            return false;
        }
        C0251a.m1781b(drawable);
        return false;
    }

    /* JADX INFO: renamed from: d */
    Object m5231d(String str) {
        return this.f4104c.f4159b.f4157p.get(str);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f4102b;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        copyBounds(this.f4111j);
        if (this.f4111j.width() <= 0 || this.f4111j.height() <= 0) {
            return;
        }
        ColorFilter colorFilter = this.f4106e;
        if (colorFilter == null) {
            colorFilter = this.f4105d;
        }
        canvas.getMatrix(this.f4110i);
        this.f4110i.getValues(this.f4109h);
        float fAbs = Math.abs(this.f4109h[0]);
        float fAbs2 = Math.abs(this.f4109h[4]);
        float fAbs3 = Math.abs(this.f4109h[1]);
        float fAbs4 = Math.abs(this.f4109h[3]);
        if (fAbs3 != CropImageView.DEFAULT_ASPECT_RATIO || fAbs4 != CropImageView.DEFAULT_ASPECT_RATIO) {
            fAbs = 1.0f;
            fAbs2 = 1.0f;
        }
        int iMin = Math.min(2048, (int) (this.f4111j.width() * fAbs));
        int iMin2 = Math.min(2048, (int) (this.f4111j.height() * fAbs2));
        if (iMin <= 0 || iMin2 <= 0) {
            return;
        }
        int iSave = canvas.save();
        Rect rect = this.f4111j;
        canvas.translate(rect.left, rect.top);
        if (m5228f()) {
            canvas.translate(this.f4111j.width(), CropImageView.DEFAULT_ASPECT_RATIO);
            canvas.scale(-1.0f, 1.0f);
        }
        this.f4111j.offsetTo(0, 0);
        this.f4104c.m5256c(iMin, iMin2);
        if (!this.f4108g) {
            this.f4104c.m5263j(iMin, iMin2);
        } else if (!this.f4104c.m5255b()) {
            this.f4104c.m5263j(iMin, iMin2);
            this.f4104c.m5262i();
        }
        this.f4104c.m5257d(canvas, colorFilter, this.f4111j);
        canvas.restoreToCount(iSave);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f4102b;
        return drawable != null ? C0251a.m1783d(drawable) : this.f4104c.f4159b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f4102b;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.f4104c.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f4102b;
        return drawable != null ? C0251a.m1784e(drawable) : this.f4106e;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f4102b != null && Build.VERSION.SDK_INT >= 24) {
            return new i(this.f4102b.getConstantState());
        }
        this.f4104c.f4158a = getChangingConfigurations();
        return this.f4104c;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f4102b;
        return drawable != null ? drawable.getIntrinsicHeight() : (int) this.f4104c.f4159b.f4151j;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f4102b;
        return drawable != null ? drawable.getIntrinsicWidth() : (int) this.f4104c.f4159b.f4150i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f4102b;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    /* JADX INFO: renamed from: h */
    void m5232h(boolean z) {
        this.f4108g = z;
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        Drawable drawable = this.f4102b;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        Drawable drawable = this.f4102b;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f4102b;
        return drawable != null ? C0251a.m1787h(drawable) : this.f4104c.f4162e;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        h hVar;
        ColorStateList colorStateList;
        Drawable drawable = this.f4102b;
        return drawable != null ? drawable.isStateful() : super.isStateful() || ((hVar = this.f4104c) != null && (hVar.m5260g() || ((colorStateList = this.f4104c.f4160c) != null && colorStateList.isStateful())));
    }

    /* JADX INFO: renamed from: j */
    PorterDuffColorFilter m5233j(PorterDuffColorFilter porterDuffColorFilter, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f4102b;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.f4107f && super.mutate() == this) {
            this.f4104c = new h(this.f4104c);
            this.f4107f = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f4102b;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        Drawable drawable = this.f4102b;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        boolean z = false;
        h hVar = this.f4104c;
        ColorStateList colorStateList = hVar.f4160c;
        if (colorStateList != null && (mode = hVar.f4161d) != null) {
            this.f4105d = m5233j(this.f4105d, colorStateList, mode);
            invalidateSelf();
            z = true;
        }
        if (!hVar.m5260g() || !hVar.m5261h(iArr)) {
            return z;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j) {
        Drawable drawable = this.f4102b;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j);
        } else {
            super.scheduleSelf(runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        Drawable drawable = this.f4102b;
        if (drawable != null) {
            drawable.setAlpha(i2);
        } else if (this.f4104c.f4159b.getRootAlpha() != i2) {
            this.f4104c.f4159b.setRootAlpha(i2);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        Drawable drawable = this.f4102b;
        if (drawable != null) {
            C0251a.m1789j(drawable, z);
        } else {
            this.f4104c.f4162e = z;
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.InterfaceC0252b
    public void setTint(int i2) {
        Drawable drawable = this.f4102b;
        if (drawable != null) {
            C0251a.m1793n(drawable, i2);
        } else {
            setTintList(ColorStateList.valueOf(i2));
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.InterfaceC0252b
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f4102b;
        if (drawable != null) {
            C0251a.m1794o(drawable, colorStateList);
            return;
        }
        h hVar = this.f4104c;
        if (hVar.f4160c != colorStateList) {
            hVar.f4160c = colorStateList;
            this.f4105d = m5233j(this.f4105d, colorStateList, hVar.f4161d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.InterfaceC0252b
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f4102b;
        if (drawable != null) {
            C0251a.m1795p(drawable, mode);
            return;
        }
        h hVar = this.f4104c;
        if (hVar.f4161d != mode) {
            hVar.f4161d = mode;
            this.f4105d = m5233j(this.f4105d, hVar.f4160c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f4102b;
        return drawable != null ? drawable.setVisible(z, z2) : super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.f4102b;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    /* JADX INFO: renamed from: c.q.a.a.h$i */
    private static class i extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a */
        private final Drawable.ConstantState f4170a;

        public i(Drawable.ConstantState constantState) {
            this.f4170a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f4170a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f4170a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            C0698h c0698h = new C0698h();
            c0698h.f4102b = (VectorDrawable) this.f4170a.newDrawable();
            return c0698h;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            C0698h c0698h = new C0698h();
            c0698h.f4102b = (VectorDrawable) this.f4170a.newDrawable(resources);
            return c0698h;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            C0698h c0698h = new C0698h();
            c0698h.f4102b = (VectorDrawable) this.f4170a.newDrawable(resources, theme);
            return c0698h;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f4102b;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f4106e = colorFilter;
            invalidateSelf();
        }
    }

    /* JADX INFO: renamed from: c.q.a.a.h$f */
    private static abstract class f extends e {

        /* JADX INFO: renamed from: a */
        protected C0590c.b[] f4137a;

        /* JADX INFO: renamed from: b */
        String f4138b;

        /* JADX INFO: renamed from: c */
        int f4139c;

        /* JADX INFO: renamed from: d */
        int f4140d;

        public f() {
            super(null);
            this.f4137a = null;
            this.f4139c = 0;
        }

        /* JADX INFO: renamed from: c */
        public boolean mo5235c() {
            return false;
        }

        /* JADX INFO: renamed from: d */
        public void m5246d(Path path) {
            path.reset();
            C0590c.b[] bVarArr = this.f4137a;
            if (bVarArr != null) {
                C0590c.b.m4690e(bVarArr, path);
            }
        }

        public C0590c.b[] getPathData() {
            return this.f4137a;
        }

        public String getPathName() {
            return this.f4138b;
        }

        public void setPathData(C0590c.b[] bVarArr) {
            if (C0590c.m4678b(this.f4137a, bVarArr)) {
                C0590c.m4686j(this.f4137a, bVarArr);
            } else {
                this.f4137a = C0590c.m4682f(bVarArr);
            }
        }

        public f(f fVar) {
            super(null);
            this.f4137a = null;
            this.f4139c = 0;
            this.f4138b = fVar.f4138b;
            this.f4140d = fVar.f4140d;
            this.f4137a = C0590c.m4682f(fVar.f4137a);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        Drawable drawable = this.f4102b;
        if (drawable != null) {
            C0251a.m1786g(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        h hVar = this.f4104c;
        hVar.f4159b = new g();
        TypedArray typedArrayM1773k = C0250g.m1773k(resources, theme, attributeSet, C0691a.f4075a);
        m5230i(typedArrayM1773k, xmlPullParser, theme);
        typedArrayM1773k.recycle();
        hVar.f4158a = getChangingConfigurations();
        hVar.f4168k = true;
        m5227e(resources, xmlPullParser, attributeSet, theme);
        this.f4105d = m5233j(this.f4105d, hVar.f4160c, hVar.f4161d);
    }

    C0698h(h hVar) {
        this.f4108g = true;
        this.f4109h = new float[9];
        this.f4110i = new Matrix();
        this.f4111j = new Rect();
        this.f4104c = hVar;
        this.f4105d = m5233j(this.f4105d, hVar.f4160c, hVar.f4161d);
    }

    /* JADX INFO: renamed from: c.q.a.a.h$c */
    private static class c extends f {

        /* JADX INFO: renamed from: e */
        private int[] f4112e;

        /* JADX INFO: renamed from: f */
        C0245b f4113f;

        /* JADX INFO: renamed from: g */
        float f4114g;

        /* JADX INFO: renamed from: h */
        C0245b f4115h;

        /* JADX INFO: renamed from: i */
        float f4116i;

        /* JADX INFO: renamed from: j */
        float f4117j;

        /* JADX INFO: renamed from: k */
        float f4118k;

        /* JADX INFO: renamed from: l */
        float f4119l;

        /* JADX INFO: renamed from: m */
        float f4120m;

        /* JADX INFO: renamed from: n */
        Paint.Cap f4121n;

        /* JADX INFO: renamed from: o */
        Paint.Join f4122o;

        /* JADX INFO: renamed from: p */
        float f4123p;

        c() {
            this.f4114g = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f4116i = 1.0f;
            this.f4117j = 1.0f;
            this.f4118k = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f4119l = 1.0f;
            this.f4120m = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f4121n = Paint.Cap.BUTT;
            this.f4122o = Paint.Join.MITER;
            this.f4123p = 4.0f;
        }

        /* JADX INFO: renamed from: e */
        private Paint.Cap m5237e(int i, Paint.Cap cap) {
            return i != 0 ? i != 1 ? i != 2 ? cap : Paint.Cap.SQUARE : Paint.Cap.ROUND : Paint.Cap.BUTT;
        }

        /* JADX INFO: renamed from: f */
        private Paint.Join m5238f(int i, Paint.Join join) {
            return i != 0 ? i != 1 ? i != 2 ? join : Paint.Join.BEVEL : Paint.Join.ROUND : Paint.Join.MITER;
        }

        /* JADX INFO: renamed from: h */
        private void m5239h(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) {
            this.f4112e = null;
            if (C0250g.m1772j(xmlPullParser, "pathData")) {
                String string = typedArray.getString(0);
                if (string != null) {
                    this.f4138b = string;
                }
                String string2 = typedArray.getString(2);
                if (string2 != null) {
                    this.f4137a = C0590c.m4680d(string2);
                }
                this.f4115h = C0250g.m1767e(typedArray, xmlPullParser, theme, "fillColor", 1, 0);
                this.f4117j = C0250g.m1768f(typedArray, xmlPullParser, "fillAlpha", 12, this.f4117j);
                this.f4121n = m5237e(C0250g.m1769g(typedArray, xmlPullParser, "strokeLineCap", 8, -1), this.f4121n);
                this.f4122o = m5238f(C0250g.m1769g(typedArray, xmlPullParser, "strokeLineJoin", 9, -1), this.f4122o);
                this.f4123p = C0250g.m1768f(typedArray, xmlPullParser, "strokeMiterLimit", 10, this.f4123p);
                this.f4113f = C0250g.m1767e(typedArray, xmlPullParser, theme, "strokeColor", 3, 0);
                this.f4116i = C0250g.m1768f(typedArray, xmlPullParser, "strokeAlpha", 11, this.f4116i);
                this.f4114g = C0250g.m1768f(typedArray, xmlPullParser, "strokeWidth", 4, this.f4114g);
                this.f4119l = C0250g.m1768f(typedArray, xmlPullParser, "trimPathEnd", 6, this.f4119l);
                this.f4120m = C0250g.m1768f(typedArray, xmlPullParser, "trimPathOffset", 7, this.f4120m);
                this.f4118k = C0250g.m1768f(typedArray, xmlPullParser, "trimPathStart", 5, this.f4118k);
                this.f4139c = C0250g.m1769g(typedArray, xmlPullParser, "fillType", 13, this.f4139c);
            }
        }

        @Override // p016c.p066q.p067a.p068a.C0698h.e
        /* JADX INFO: renamed from: a */
        public boolean mo5240a() {
            return this.f4115h.m1720i() || this.f4113f.m1720i();
        }

        @Override // p016c.p066q.p067a.p068a.C0698h.e
        /* JADX INFO: renamed from: b */
        public boolean mo5241b(int[] iArr) {
            return this.f4113f.m1721j(iArr) | this.f4115h.m1721j(iArr);
        }

        /* JADX INFO: renamed from: g */
        public void m5242g(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray typedArrayM1773k = C0250g.m1773k(resources, theme, attributeSet, C0691a.f4077c);
            m5239h(typedArrayM1773k, xmlPullParser, theme);
            typedArrayM1773k.recycle();
        }

        float getFillAlpha() {
            return this.f4117j;
        }

        int getFillColor() {
            return this.f4115h.m1717e();
        }

        float getStrokeAlpha() {
            return this.f4116i;
        }

        int getStrokeColor() {
            return this.f4113f.m1717e();
        }

        float getStrokeWidth() {
            return this.f4114g;
        }

        float getTrimPathEnd() {
            return this.f4119l;
        }

        float getTrimPathOffset() {
            return this.f4120m;
        }

        float getTrimPathStart() {
            return this.f4118k;
        }

        void setFillAlpha(float f) {
            this.f4117j = f;
        }

        void setFillColor(int i) {
            this.f4115h.m1722k(i);
        }

        void setStrokeAlpha(float f) {
            this.f4116i = f;
        }

        void setStrokeColor(int i) {
            this.f4113f.m1722k(i);
        }

        void setStrokeWidth(float f) {
            this.f4114g = f;
        }

        void setTrimPathEnd(float f) {
            this.f4119l = f;
        }

        void setTrimPathOffset(float f) {
            this.f4120m = f;
        }

        void setTrimPathStart(float f) {
            this.f4118k = f;
        }

        c(c cVar) {
            super(cVar);
            this.f4114g = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f4116i = 1.0f;
            this.f4117j = 1.0f;
            this.f4118k = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f4119l = 1.0f;
            this.f4120m = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f4121n = Paint.Cap.BUTT;
            this.f4122o = Paint.Join.MITER;
            this.f4123p = 4.0f;
            this.f4112e = cVar.f4112e;
            this.f4113f = cVar.f4113f;
            this.f4114g = cVar.f4114g;
            this.f4116i = cVar.f4116i;
            this.f4115h = cVar.f4115h;
            this.f4139c = cVar.f4139c;
            this.f4117j = cVar.f4117j;
            this.f4118k = cVar.f4118k;
            this.f4119l = cVar.f4119l;
            this.f4120m = cVar.f4120m;
            this.f4121n = cVar.f4121n;
            this.f4122o = cVar.f4122o;
            this.f4123p = cVar.f4123p;
        }
    }

    /* JADX INFO: renamed from: c.q.a.a.h$g */
    private static class g {

        /* JADX INFO: renamed from: q */
        private static final Matrix f4141q = new Matrix();

        /* JADX INFO: renamed from: a */
        private final Path f4142a;

        /* JADX INFO: renamed from: b */
        private final Path f4143b;

        /* JADX INFO: renamed from: c */
        private final Matrix f4144c;

        /* JADX INFO: renamed from: d */
        Paint f4145d;

        /* JADX INFO: renamed from: e */
        Paint f4146e;

        /* JADX INFO: renamed from: f */
        private PathMeasure f4147f;

        /* JADX INFO: renamed from: g */
        private int f4148g;

        /* JADX INFO: renamed from: h */
        final d f4149h;

        /* JADX INFO: renamed from: i */
        float f4150i;

        /* JADX INFO: renamed from: j */
        float f4151j;

        /* JADX INFO: renamed from: k */
        float f4152k;

        /* JADX INFO: renamed from: l */
        float f4153l;

        /* JADX INFO: renamed from: m */
        int f4154m;

        /* JADX INFO: renamed from: n */
        String f4155n;

        /* JADX INFO: renamed from: o */
        Boolean f4156o;

        /* JADX INFO: renamed from: p */
        final C0534a<String, Object> f4157p;

        public g() {
            this.f4144c = new Matrix();
            this.f4150i = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f4151j = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f4152k = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f4153l = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f4154m = 255;
            this.f4155n = null;
            this.f4156o = null;
            this.f4157p = new C0534a<>();
            this.f4149h = new d();
            this.f4142a = new Path();
            this.f4143b = new Path();
        }

        /* JADX INFO: renamed from: a */
        private static float m5247a(float f, float f2, float f3, float f4) {
            return (f * f4) - (f2 * f3);
        }

        /* JADX INFO: renamed from: c */
        private void m5248c(d dVar, Matrix matrix, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            dVar.f4124a.set(matrix);
            dVar.f4124a.preConcat(dVar.f4133j);
            canvas.save();
            for (int i3 = 0; i3 < dVar.f4125b.size(); i3++) {
                e eVar = dVar.f4125b.get(i3);
                if (eVar instanceof d) {
                    m5248c((d) eVar, dVar.f4124a, canvas, i, i2, colorFilter);
                } else if (eVar instanceof f) {
                    m5249d(dVar, (f) eVar, canvas, i, i2, colorFilter);
                }
            }
            canvas.restore();
        }

        /* JADX INFO: renamed from: d */
        private void m5249d(d dVar, f fVar, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            float f = i / this.f4152k;
            float f2 = i2 / this.f4153l;
            float fMin = Math.min(f, f2);
            Matrix matrix = dVar.f4124a;
            this.f4144c.set(matrix);
            this.f4144c.postScale(f, f2);
            float fM5250e = m5250e(matrix);
            if (fM5250e == CropImageView.DEFAULT_ASPECT_RATIO) {
                return;
            }
            fVar.m5246d(this.f4142a);
            Path path = this.f4142a;
            this.f4143b.reset();
            if (fVar.mo5235c()) {
                this.f4143b.setFillType(fVar.f4139c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                this.f4143b.addPath(path, this.f4144c);
                canvas.clipPath(this.f4143b);
                return;
            }
            c cVar = (c) fVar;
            if (cVar.f4118k != CropImageView.DEFAULT_ASPECT_RATIO || cVar.f4119l != 1.0f) {
                float f3 = cVar.f4118k;
                float f4 = cVar.f4120m;
                float f5 = (f3 + f4) % 1.0f;
                float f6 = (cVar.f4119l + f4) % 1.0f;
                if (this.f4147f == null) {
                    this.f4147f = new PathMeasure();
                }
                this.f4147f.setPath(this.f4142a, false);
                float length = this.f4147f.getLength();
                float f7 = f5 * length;
                float f8 = f6 * length;
                path.reset();
                if (f7 > f8) {
                    this.f4147f.getSegment(f7, length, path, true);
                    this.f4147f.getSegment(CropImageView.DEFAULT_ASPECT_RATIO, f8, path, true);
                } else {
                    this.f4147f.getSegment(f7, f8, path, true);
                }
                path.rLineTo(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO);
            }
            this.f4143b.addPath(path, this.f4144c);
            if (cVar.f4115h.m1723l()) {
                C0245b c0245b = cVar.f4115h;
                if (this.f4146e == null) {
                    Paint paint = new Paint(1);
                    this.f4146e = paint;
                    paint.setStyle(Paint.Style.FILL);
                }
                Paint paint2 = this.f4146e;
                if (c0245b.m1719h()) {
                    Shader shaderM1718f = c0245b.m1718f();
                    shaderM1718f.setLocalMatrix(this.f4144c);
                    paint2.setShader(shaderM1718f);
                    paint2.setAlpha(Math.round(cVar.f4117j * 255.0f));
                } else {
                    paint2.setShader(null);
                    paint2.setAlpha(255);
                    paint2.setColor(C0698h.m5224a(c0245b.m1717e(), cVar.f4117j));
                }
                paint2.setColorFilter(colorFilter);
                this.f4143b.setFillType(cVar.f4139c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                canvas.drawPath(this.f4143b, paint2);
            }
            if (cVar.f4113f.m1723l()) {
                C0245b c0245b2 = cVar.f4113f;
                if (this.f4145d == null) {
                    Paint paint3 = new Paint(1);
                    this.f4145d = paint3;
                    paint3.setStyle(Paint.Style.STROKE);
                }
                Paint paint4 = this.f4145d;
                Paint.Join join = cVar.f4122o;
                if (join != null) {
                    paint4.setStrokeJoin(join);
                }
                Paint.Cap cap = cVar.f4121n;
                if (cap != null) {
                    paint4.setStrokeCap(cap);
                }
                paint4.setStrokeMiter(cVar.f4123p);
                if (c0245b2.m1719h()) {
                    Shader shaderM1718f2 = c0245b2.m1718f();
                    shaderM1718f2.setLocalMatrix(this.f4144c);
                    paint4.setShader(shaderM1718f2);
                    paint4.setAlpha(Math.round(cVar.f4116i * 255.0f));
                } else {
                    paint4.setShader(null);
                    paint4.setAlpha(255);
                    paint4.setColor(C0698h.m5224a(c0245b2.m1717e(), cVar.f4116i));
                }
                paint4.setColorFilter(colorFilter);
                paint4.setStrokeWidth(cVar.f4114g * fMin * fM5250e);
                canvas.drawPath(this.f4143b, paint4);
            }
        }

        /* JADX INFO: renamed from: e */
        private float m5250e(Matrix matrix) {
            float[] fArr = {CropImageView.DEFAULT_ASPECT_RATIO, 1.0f, 1.0f, CropImageView.DEFAULT_ASPECT_RATIO};
            matrix.mapVectors(fArr);
            float fHypot = (float) Math.hypot(fArr[0], fArr[1]);
            float fHypot2 = (float) Math.hypot(fArr[2], fArr[3]);
            float fM5247a = m5247a(fArr[0], fArr[1], fArr[2], fArr[3]);
            float fMax = Math.max(fHypot, fHypot2);
            return fMax > CropImageView.DEFAULT_ASPECT_RATIO ? Math.abs(fM5247a) / fMax : CropImageView.DEFAULT_ASPECT_RATIO;
        }

        /* JADX INFO: renamed from: b */
        public void m5251b(Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            m5248c(this.f4149h, f4141q, canvas, i, i2, colorFilter);
        }

        /* JADX INFO: renamed from: f */
        public boolean m5252f() {
            if (this.f4156o == null) {
                this.f4156o = Boolean.valueOf(this.f4149h.mo5240a());
            }
            return this.f4156o.booleanValue();
        }

        /* JADX INFO: renamed from: g */
        public boolean m5253g(int[] iArr) {
            return this.f4149h.mo5241b(iArr);
        }

        public float getAlpha() {
            return getRootAlpha() / 255.0f;
        }

        public int getRootAlpha() {
            return this.f4154m;
        }

        public void setAlpha(float f) {
            setRootAlpha((int) (f * 255.0f));
        }

        public void setRootAlpha(int i) {
            this.f4154m = i;
        }

        public g(g gVar) {
            this.f4144c = new Matrix();
            this.f4150i = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f4151j = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f4152k = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f4153l = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f4154m = 255;
            this.f4155n = null;
            this.f4156o = null;
            C0534a<String, Object> c0534a = new C0534a<>();
            this.f4157p = c0534a;
            this.f4149h = new d(gVar.f4149h, c0534a);
            this.f4142a = new Path(gVar.f4142a);
            this.f4143b = new Path(gVar.f4143b);
            this.f4150i = gVar.f4150i;
            this.f4151j = gVar.f4151j;
            this.f4152k = gVar.f4152k;
            this.f4153l = gVar.f4153l;
            this.f4148g = gVar.f4148g;
            this.f4154m = gVar.f4154m;
            this.f4155n = gVar.f4155n;
            String str = gVar.f4155n;
            if (str != null) {
                this.f4157p.put(str, this);
            }
            this.f4156o = gVar.f4156o;
        }
    }

    /* JADX INFO: renamed from: c.q.a.a.h$d */
    private static class d extends e {

        /* JADX INFO: renamed from: a */
        final Matrix f4124a;

        /* JADX INFO: renamed from: b */
        final ArrayList<e> f4125b;

        /* JADX INFO: renamed from: c */
        float f4126c;

        /* JADX INFO: renamed from: d */
        private float f4127d;

        /* JADX INFO: renamed from: e */
        private float f4128e;

        /* JADX INFO: renamed from: f */
        private float f4129f;

        /* JADX INFO: renamed from: g */
        private float f4130g;

        /* JADX INFO: renamed from: h */
        private float f4131h;

        /* JADX INFO: renamed from: i */
        private float f4132i;

        /* JADX INFO: renamed from: j */
        final Matrix f4133j;

        /* JADX INFO: renamed from: k */
        int f4134k;

        /* JADX INFO: renamed from: l */
        private int[] f4135l;

        /* JADX INFO: renamed from: m */
        private String f4136m;

        public d(d dVar, C0534a<String, Object> c0534a) {
            f bVar;
            super(null);
            this.f4124a = new Matrix();
            this.f4125b = new ArrayList<>();
            this.f4126c = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f4127d = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f4128e = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f4129f = 1.0f;
            this.f4130g = 1.0f;
            this.f4131h = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f4132i = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f4133j = new Matrix();
            this.f4136m = null;
            this.f4126c = dVar.f4126c;
            this.f4127d = dVar.f4127d;
            this.f4128e = dVar.f4128e;
            this.f4129f = dVar.f4129f;
            this.f4130g = dVar.f4130g;
            this.f4131h = dVar.f4131h;
            this.f4132i = dVar.f4132i;
            this.f4135l = dVar.f4135l;
            String str = dVar.f4136m;
            this.f4136m = str;
            this.f4134k = dVar.f4134k;
            if (str != null) {
                c0534a.put(str, this);
            }
            this.f4133j.set(dVar.f4133j);
            ArrayList<e> arrayList = dVar.f4125b;
            for (int i = 0; i < arrayList.size(); i++) {
                e eVar = arrayList.get(i);
                if (eVar instanceof d) {
                    this.f4125b.add(new d((d) eVar, c0534a));
                } else {
                    if (eVar instanceof c) {
                        bVar = new c((c) eVar);
                    } else {
                        if (!(eVar instanceof b)) {
                            throw new IllegalStateException("Unknown object in the tree!");
                        }
                        bVar = new b((b) eVar);
                    }
                    this.f4125b.add(bVar);
                    String str2 = bVar.f4138b;
                    if (str2 != null) {
                        c0534a.put(str2, bVar);
                    }
                }
            }
        }

        /* JADX INFO: renamed from: d */
        private void m5243d() {
            this.f4133j.reset();
            this.f4133j.postTranslate(-this.f4127d, -this.f4128e);
            this.f4133j.postScale(this.f4129f, this.f4130g);
            this.f4133j.postRotate(this.f4126c, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO);
            this.f4133j.postTranslate(this.f4131h + this.f4127d, this.f4132i + this.f4128e);
        }

        /* JADX INFO: renamed from: e */
        private void m5244e(TypedArray typedArray, XmlPullParser xmlPullParser) {
            this.f4135l = null;
            this.f4126c = C0250g.m1768f(typedArray, xmlPullParser, "rotation", 5, this.f4126c);
            this.f4127d = typedArray.getFloat(1, this.f4127d);
            this.f4128e = typedArray.getFloat(2, this.f4128e);
            this.f4129f = C0250g.m1768f(typedArray, xmlPullParser, "scaleX", 3, this.f4129f);
            this.f4130g = C0250g.m1768f(typedArray, xmlPullParser, "scaleY", 4, this.f4130g);
            this.f4131h = C0250g.m1768f(typedArray, xmlPullParser, "translateX", 6, this.f4131h);
            this.f4132i = C0250g.m1768f(typedArray, xmlPullParser, "translateY", 7, this.f4132i);
            String string = typedArray.getString(0);
            if (string != null) {
                this.f4136m = string;
            }
            m5243d();
        }

        @Override // p016c.p066q.p067a.p068a.C0698h.e
        /* JADX INFO: renamed from: a */
        public boolean mo5240a() {
            for (int i = 0; i < this.f4125b.size(); i++) {
                if (this.f4125b.get(i).mo5240a()) {
                    return true;
                }
            }
            return false;
        }

        @Override // p016c.p066q.p067a.p068a.C0698h.e
        /* JADX INFO: renamed from: b */
        public boolean mo5241b(int[] iArr) {
            boolean zMo5241b = false;
            for (int i = 0; i < this.f4125b.size(); i++) {
                zMo5241b |= this.f4125b.get(i).mo5241b(iArr);
            }
            return zMo5241b;
        }

        /* JADX INFO: renamed from: c */
        public void m5245c(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray typedArrayM1773k = C0250g.m1773k(resources, theme, attributeSet, C0691a.f4076b);
            m5244e(typedArrayM1773k, xmlPullParser);
            typedArrayM1773k.recycle();
        }

        public String getGroupName() {
            return this.f4136m;
        }

        public Matrix getLocalMatrix() {
            return this.f4133j;
        }

        public float getPivotX() {
            return this.f4127d;
        }

        public float getPivotY() {
            return this.f4128e;
        }

        public float getRotation() {
            return this.f4126c;
        }

        public float getScaleX() {
            return this.f4129f;
        }

        public float getScaleY() {
            return this.f4130g;
        }

        public float getTranslateX() {
            return this.f4131h;
        }

        public float getTranslateY() {
            return this.f4132i;
        }

        public void setPivotX(float f) {
            if (f != this.f4127d) {
                this.f4127d = f;
                m5243d();
            }
        }

        public void setPivotY(float f) {
            if (f != this.f4128e) {
                this.f4128e = f;
                m5243d();
            }
        }

        public void setRotation(float f) {
            if (f != this.f4126c) {
                this.f4126c = f;
                m5243d();
            }
        }

        public void setScaleX(float f) {
            if (f != this.f4129f) {
                this.f4129f = f;
                m5243d();
            }
        }

        public void setScaleY(float f) {
            if (f != this.f4130g) {
                this.f4130g = f;
                m5243d();
            }
        }

        public void setTranslateX(float f) {
            if (f != this.f4131h) {
                this.f4131h = f;
                m5243d();
            }
        }

        public void setTranslateY(float f) {
            if (f != this.f4132i) {
                this.f4132i = f;
                m5243d();
            }
        }

        public d() {
            super(null);
            this.f4124a = new Matrix();
            this.f4125b = new ArrayList<>();
            this.f4126c = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f4127d = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f4128e = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f4129f = 1.0f;
            this.f4130g = 1.0f;
            this.f4131h = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f4132i = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f4133j = new Matrix();
            this.f4136m = null;
        }
    }
}
