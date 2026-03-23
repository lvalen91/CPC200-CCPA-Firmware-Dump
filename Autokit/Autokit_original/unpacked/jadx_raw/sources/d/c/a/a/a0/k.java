package d.c.a.a.a0;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class k {
    d a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    d f2288b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    d f2289c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    d f2290d;
    d.c.a.a.a0.c e;
    d.c.a.a.a0.c f;
    d.c.a.a.a0.c g;
    d.c.a.a.a0.c h;
    f i;
    f j;
    f k;
    f l;

    static /* synthetic */ class a {
    }

    public interface c {
        d.c.a.a.a0.c a(d.c.a.a.a0.c cVar);
    }

    /* synthetic */ k(b bVar, a aVar) {
        this(bVar);
    }

    public static b a() {
        return new b();
    }

    public static b b(Context context, int i, int i2) {
        return c(context, i, i2, 0);
    }

    private static b c(Context context, int i, int i2, int i3) {
        return d(context, i, i2, new d.c.a.a.a0.a(i3));
    }

    private static b d(Context context, int i, int i2, d.c.a.a.a0.c cVar) {
        if (i2 != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i);
            i = i2;
            context = contextThemeWrapper;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i, d.c.a.a.k.ShapeAppearance);
        try {
            int i3 = typedArrayObtainStyledAttributes.getInt(d.c.a.a.k.ShapeAppearance_cornerFamily, 0);
            int i4 = typedArrayObtainStyledAttributes.getInt(d.c.a.a.k.ShapeAppearance_cornerFamilyTopLeft, i3);
            int i5 = typedArrayObtainStyledAttributes.getInt(d.c.a.a.k.ShapeAppearance_cornerFamilyTopRight, i3);
            int i6 = typedArrayObtainStyledAttributes.getInt(d.c.a.a.k.ShapeAppearance_cornerFamilyBottomRight, i3);
            int i7 = typedArrayObtainStyledAttributes.getInt(d.c.a.a.k.ShapeAppearance_cornerFamilyBottomLeft, i3);
            d.c.a.a.a0.c cVarM = m(typedArrayObtainStyledAttributes, d.c.a.a.k.ShapeAppearance_cornerSize, cVar);
            d.c.a.a.a0.c cVarM2 = m(typedArrayObtainStyledAttributes, d.c.a.a.k.ShapeAppearance_cornerSizeTopLeft, cVarM);
            d.c.a.a.a0.c cVarM3 = m(typedArrayObtainStyledAttributes, d.c.a.a.k.ShapeAppearance_cornerSizeTopRight, cVarM);
            d.c.a.a.a0.c cVarM4 = m(typedArrayObtainStyledAttributes, d.c.a.a.k.ShapeAppearance_cornerSizeBottomRight, cVarM);
            d.c.a.a.a0.c cVarM5 = m(typedArrayObtainStyledAttributes, d.c.a.a.k.ShapeAppearance_cornerSizeBottomLeft, cVarM);
            b bVar = new b();
            bVar.y(i4, cVarM2);
            bVar.C(i5, cVarM3);
            bVar.u(i6, cVarM4);
            bVar.q(i7, cVarM5);
            return bVar;
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static b e(Context context, AttributeSet attributeSet, int i, int i2) {
        return f(context, attributeSet, i, i2, 0);
    }

    public static b f(Context context, AttributeSet attributeSet, int i, int i2, int i3) {
        return g(context, attributeSet, i, i2, new d.c.a.a.a0.a(i3));
    }

    public static b g(Context context, AttributeSet attributeSet, int i, int i2, d.c.a.a.a0.c cVar) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.c.a.a.k.MaterialShape, i, i2);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(d.c.a.a.k.MaterialShape_shapeAppearance, 0);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(d.c.a.a.k.MaterialShape_shapeAppearanceOverlay, 0);
        typedArrayObtainStyledAttributes.recycle();
        return d(context, resourceId, resourceId2, cVar);
    }

    private static d.c.a.a.a0.c m(TypedArray typedArray, int i, d.c.a.a.a0.c cVar) {
        TypedValue typedValuePeekValue = typedArray.peekValue(i);
        if (typedValuePeekValue == null) {
            return cVar;
        }
        int i2 = typedValuePeekValue.type;
        return i2 == 5 ? new d.c.a.a.a0.a(TypedValue.complexToDimensionPixelSize(typedValuePeekValue.data, typedArray.getResources().getDisplayMetrics())) : i2 == 6 ? new i(typedValuePeekValue.getFraction(1.0f, 1.0f)) : cVar;
    }

    public f h() {
        return this.k;
    }

    public d i() {
        return this.f2290d;
    }

    public d.c.a.a.a0.c j() {
        return this.h;
    }

    public d k() {
        return this.f2289c;
    }

    public d.c.a.a.a0.c l() {
        return this.g;
    }

    public f n() {
        return this.l;
    }

    public f o() {
        return this.j;
    }

    public f p() {
        return this.i;
    }

    public d q() {
        return this.a;
    }

    public d.c.a.a.a0.c r() {
        return this.e;
    }

    public d s() {
        return this.f2288b;
    }

    public d.c.a.a.a0.c t() {
        return this.f;
    }

    public boolean u(RectF rectF) {
        boolean z = this.l.getClass().equals(f.class) && this.j.getClass().equals(f.class) && this.i.getClass().equals(f.class) && this.k.getClass().equals(f.class);
        float fA = this.e.a(rectF);
        return z && ((this.f.a(rectF) > fA ? 1 : (this.f.a(rectF) == fA ? 0 : -1)) == 0 && (this.h.a(rectF) > fA ? 1 : (this.h.a(rectF) == fA ? 0 : -1)) == 0 && (this.g.a(rectF) > fA ? 1 : (this.g.a(rectF) == fA ? 0 : -1)) == 0) && ((this.f2288b instanceof j) && (this.a instanceof j) && (this.f2289c instanceof j) && (this.f2290d instanceof j));
    }

    public b v() {
        return new b(this);
    }

    public k w(float f) {
        b bVarV = v();
        bVarV.o(f);
        return bVarV.m();
    }

    public k x(d.c.a.a.a0.c cVar) {
        b bVarV = v();
        bVarV.p(cVar);
        return bVarV.m();
    }

    public k y(c cVar) {
        b bVarV = v();
        bVarV.B(cVar.a(r()));
        bVarV.F(cVar.a(t()));
        bVarV.t(cVar.a(j()));
        bVarV.x(cVar.a(l()));
        return bVarV.m();
    }

    private k(b bVar) {
        this.a = bVar.a;
        this.f2288b = bVar.f2291b;
        this.f2289c = bVar.f2292c;
        this.f2290d = bVar.f2293d;
        this.e = bVar.e;
        this.f = bVar.f;
        this.g = bVar.g;
        this.h = bVar.h;
        this.i = bVar.i;
        this.j = bVar.j;
        this.k = bVar.k;
        this.l = bVar.l;
    }

    public static final class b {
        private d a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private d f2291b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private d f2292c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private d f2293d;
        private d.c.a.a.a0.c e;
        private d.c.a.a.a0.c f;
        private d.c.a.a.a0.c g;
        private d.c.a.a.a0.c h;
        private f i;
        private f j;
        private f k;
        private f l;

        public b() {
            this.a = h.b();
            this.f2291b = h.b();
            this.f2292c = h.b();
            this.f2293d = h.b();
            this.e = new d.c.a.a.a0.a(CropImageView.DEFAULT_ASPECT_RATIO);
            this.f = new d.c.a.a.a0.a(CropImageView.DEFAULT_ASPECT_RATIO);
            this.g = new d.c.a.a.a0.a(CropImageView.DEFAULT_ASPECT_RATIO);
            this.h = new d.c.a.a.a0.a(CropImageView.DEFAULT_ASPECT_RATIO);
            this.i = h.c();
            this.j = h.c();
            this.k = h.c();
            this.l = h.c();
        }

        private static float n(d dVar) {
            if (dVar instanceof j) {
                return ((j) dVar).a;
            }
            if (dVar instanceof e) {
                return ((e) dVar).a;
            }
            return -1.0f;
        }

        public b A(float f) {
            this.e = new d.c.a.a.a0.a(f);
            return this;
        }

        public b B(d.c.a.a.a0.c cVar) {
            this.e = cVar;
            return this;
        }

        public b C(int i, d.c.a.a.a0.c cVar) {
            D(h.a(i));
            F(cVar);
            return this;
        }

        public b D(d dVar) {
            this.f2291b = dVar;
            float fN = n(dVar);
            if (fN != -1.0f) {
                E(fN);
            }
            return this;
        }

        public b E(float f) {
            this.f = new d.c.a.a.a0.a(f);
            return this;
        }

        public b F(d.c.a.a.a0.c cVar) {
            this.f = cVar;
            return this;
        }

        public k m() {
            return new k(this, null);
        }

        public b o(float f) {
            A(f);
            E(f);
            w(f);
            s(f);
            return this;
        }

        public b p(d.c.a.a.a0.c cVar) {
            B(cVar);
            F(cVar);
            x(cVar);
            t(cVar);
            return this;
        }

        public b q(int i, d.c.a.a.a0.c cVar) {
            r(h.a(i));
            t(cVar);
            return this;
        }

        public b r(d dVar) {
            this.f2293d = dVar;
            float fN = n(dVar);
            if (fN != -1.0f) {
                s(fN);
            }
            return this;
        }

        public b s(float f) {
            this.h = new d.c.a.a.a0.a(f);
            return this;
        }

        public b t(d.c.a.a.a0.c cVar) {
            this.h = cVar;
            return this;
        }

        public b u(int i, d.c.a.a.a0.c cVar) {
            v(h.a(i));
            x(cVar);
            return this;
        }

        public b v(d dVar) {
            this.f2292c = dVar;
            float fN = n(dVar);
            if (fN != -1.0f) {
                w(fN);
            }
            return this;
        }

        public b w(float f) {
            this.g = new d.c.a.a.a0.a(f);
            return this;
        }

        public b x(d.c.a.a.a0.c cVar) {
            this.g = cVar;
            return this;
        }

        public b y(int i, d.c.a.a.a0.c cVar) {
            z(h.a(i));
            B(cVar);
            return this;
        }

        public b z(d dVar) {
            this.a = dVar;
            float fN = n(dVar);
            if (fN != -1.0f) {
                A(fN);
            }
            return this;
        }

        public b(k kVar) {
            this.a = h.b();
            this.f2291b = h.b();
            this.f2292c = h.b();
            this.f2293d = h.b();
            this.e = new d.c.a.a.a0.a(CropImageView.DEFAULT_ASPECT_RATIO);
            this.f = new d.c.a.a.a0.a(CropImageView.DEFAULT_ASPECT_RATIO);
            this.g = new d.c.a.a.a0.a(CropImageView.DEFAULT_ASPECT_RATIO);
            this.h = new d.c.a.a.a0.a(CropImageView.DEFAULT_ASPECT_RATIO);
            this.i = h.c();
            this.j = h.c();
            this.k = h.c();
            this.l = h.c();
            this.a = kVar.a;
            this.f2291b = kVar.f2288b;
            this.f2292c = kVar.f2289c;
            this.f2293d = kVar.f2290d;
            this.e = kVar.e;
            this.f = kVar.f;
            this.g = kVar.g;
            this.h = kVar.h;
            this.i = kVar.i;
            this.j = kVar.j;
            this.k = kVar.k;
            this.l = kVar.l;
        }
    }

    public k() {
        this.a = h.b();
        this.f2288b = h.b();
        this.f2289c = h.b();
        this.f2290d = h.b();
        this.e = new d.c.a.a.a0.a(CropImageView.DEFAULT_ASPECT_RATIO);
        this.f = new d.c.a.a.a0.a(CropImageView.DEFAULT_ASPECT_RATIO);
        this.g = new d.c.a.a.a0.a(CropImageView.DEFAULT_ASPECT_RATIO);
        this.h = new d.c.a.a.a0.a(CropImageView.DEFAULT_ASPECT_RATIO);
        this.i = h.c();
        this.j = h.c();
        this.k = h.c();
        this.l = h.c();
    }
}
