package p093d.p099c.p100a.p101a.p102a0;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import com.yalantis.ucrop.view.CropImageView;
import p093d.p099c.p100a.p101a.C1226k;

/* JADX INFO: renamed from: d.c.a.a.a0.k */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1212k {

    /* JADX INFO: renamed from: a */
    C1205d f7665a;

    /* JADX INFO: renamed from: b */
    C1205d f7666b;

    /* JADX INFO: renamed from: c */
    C1205d f7667c;

    /* JADX INFO: renamed from: d */
    C1205d f7668d;

    /* JADX INFO: renamed from: e */
    InterfaceC1204c f7669e;

    /* JADX INFO: renamed from: f */
    InterfaceC1204c f7670f;

    /* JADX INFO: renamed from: g */
    InterfaceC1204c f7671g;

    /* JADX INFO: renamed from: h */
    InterfaceC1204c f7672h;

    /* JADX INFO: renamed from: i */
    C1207f f7673i;

    /* JADX INFO: renamed from: j */
    C1207f f7674j;

    /* JADX INFO: renamed from: k */
    C1207f f7675k;

    /* JADX INFO: renamed from: l */
    C1207f f7676l;

    /* JADX INFO: renamed from: d.c.a.a.a0.k$a */
    static /* synthetic */ class a {
    }

    /* JADX INFO: renamed from: d.c.a.a.a0.k$c */
    public interface c {
        /* JADX INFO: renamed from: a */
        InterfaceC1204c mo9205a(InterfaceC1204c interfaceC1204c);
    }

    /* synthetic */ C1212k(b bVar, a aVar) {
        this(bVar);
    }

    /* JADX INFO: renamed from: a */
    public static b m9212a() {
        return new b();
    }

    /* JADX INFO: renamed from: b */
    public static b m9213b(Context context, int i, int i2) {
        return m9214c(context, i, i2, 0);
    }

    /* JADX INFO: renamed from: c */
    private static b m9214c(Context context, int i, int i2, int i3) {
        return m9215d(context, i, i2, new C1202a(i3));
    }

    /* JADX INFO: renamed from: d */
    private static b m9215d(Context context, int i, int i2, InterfaceC1204c interfaceC1204c) {
        if (i2 != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i);
            i = i2;
            context = contextThemeWrapper;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i, C1226k.ShapeAppearance);
        try {
            int i3 = typedArrayObtainStyledAttributes.getInt(C1226k.ShapeAppearance_cornerFamily, 0);
            int i4 = typedArrayObtainStyledAttributes.getInt(C1226k.ShapeAppearance_cornerFamilyTopLeft, i3);
            int i5 = typedArrayObtainStyledAttributes.getInt(C1226k.ShapeAppearance_cornerFamilyTopRight, i3);
            int i6 = typedArrayObtainStyledAttributes.getInt(C1226k.ShapeAppearance_cornerFamilyBottomRight, i3);
            int i7 = typedArrayObtainStyledAttributes.getInt(C1226k.ShapeAppearance_cornerFamilyBottomLeft, i3);
            InterfaceC1204c interfaceC1204cM9219m = m9219m(typedArrayObtainStyledAttributes, C1226k.ShapeAppearance_cornerSize, interfaceC1204c);
            InterfaceC1204c interfaceC1204cM9219m2 = m9219m(typedArrayObtainStyledAttributes, C1226k.ShapeAppearance_cornerSizeTopLeft, interfaceC1204cM9219m);
            InterfaceC1204c interfaceC1204cM9219m3 = m9219m(typedArrayObtainStyledAttributes, C1226k.ShapeAppearance_cornerSizeTopRight, interfaceC1204cM9219m);
            InterfaceC1204c interfaceC1204cM9219m4 = m9219m(typedArrayObtainStyledAttributes, C1226k.ShapeAppearance_cornerSizeBottomRight, interfaceC1204cM9219m);
            InterfaceC1204c interfaceC1204cM9219m5 = m9219m(typedArrayObtainStyledAttributes, C1226k.ShapeAppearance_cornerSizeBottomLeft, interfaceC1204cM9219m);
            b bVar = new b();
            bVar.m9267y(i4, interfaceC1204cM9219m2);
            bVar.m9252C(i5, interfaceC1204cM9219m3);
            bVar.m9263u(i6, interfaceC1204cM9219m4);
            bVar.m9259q(i7, interfaceC1204cM9219m5);
            return bVar;
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: renamed from: e */
    public static b m9216e(Context context, AttributeSet attributeSet, int i, int i2) {
        return m9217f(context, attributeSet, i, i2, 0);
    }

    /* JADX INFO: renamed from: f */
    public static b m9217f(Context context, AttributeSet attributeSet, int i, int i2, int i3) {
        return m9218g(context, attributeSet, i, i2, new C1202a(i3));
    }

    /* JADX INFO: renamed from: g */
    public static b m9218g(Context context, AttributeSet attributeSet, int i, int i2, InterfaceC1204c interfaceC1204c) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1226k.MaterialShape, i, i2);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(C1226k.MaterialShape_shapeAppearance, 0);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(C1226k.MaterialShape_shapeAppearanceOverlay, 0);
        typedArrayObtainStyledAttributes.recycle();
        return m9215d(context, resourceId, resourceId2, interfaceC1204c);
    }

    /* JADX INFO: renamed from: m */
    private static InterfaceC1204c m9219m(TypedArray typedArray, int i, InterfaceC1204c interfaceC1204c) {
        TypedValue typedValuePeekValue = typedArray.peekValue(i);
        if (typedValuePeekValue == null) {
            return interfaceC1204c;
        }
        int i2 = typedValuePeekValue.type;
        return i2 == 5 ? new C1202a(TypedValue.complexToDimensionPixelSize(typedValuePeekValue.data, typedArray.getResources().getDisplayMetrics())) : i2 == 6 ? new C1210i(typedValuePeekValue.getFraction(1.0f, 1.0f)) : interfaceC1204c;
    }

    /* JADX INFO: renamed from: h */
    public C1207f m9220h() {
        return this.f7675k;
    }

    /* JADX INFO: renamed from: i */
    public C1205d m9221i() {
        return this.f7668d;
    }

    /* JADX INFO: renamed from: j */
    public InterfaceC1204c m9222j() {
        return this.f7672h;
    }

    /* JADX INFO: renamed from: k */
    public C1205d m9223k() {
        return this.f7667c;
    }

    /* JADX INFO: renamed from: l */
    public InterfaceC1204c m9224l() {
        return this.f7671g;
    }

    /* JADX INFO: renamed from: n */
    public C1207f m9225n() {
        return this.f7676l;
    }

    /* JADX INFO: renamed from: o */
    public C1207f m9226o() {
        return this.f7674j;
    }

    /* JADX INFO: renamed from: p */
    public C1207f m9227p() {
        return this.f7673i;
    }

    /* JADX INFO: renamed from: q */
    public C1205d m9228q() {
        return this.f7665a;
    }

    /* JADX INFO: renamed from: r */
    public InterfaceC1204c m9229r() {
        return this.f7669e;
    }

    /* JADX INFO: renamed from: s */
    public C1205d m9230s() {
        return this.f7666b;
    }

    /* JADX INFO: renamed from: t */
    public InterfaceC1204c m9231t() {
        return this.f7670f;
    }

    /* JADX INFO: renamed from: u */
    public boolean m9232u(RectF rectF) {
        boolean z = this.f7676l.getClass().equals(C1207f.class) && this.f7674j.getClass().equals(C1207f.class) && this.f7673i.getClass().equals(C1207f.class) && this.f7675k.getClass().equals(C1207f.class);
        float fMo9140a = this.f7669e.mo9140a(rectF);
        return z && ((this.f7670f.mo9140a(rectF) > fMo9140a ? 1 : (this.f7670f.mo9140a(rectF) == fMo9140a ? 0 : -1)) == 0 && (this.f7672h.mo9140a(rectF) > fMo9140a ? 1 : (this.f7672h.mo9140a(rectF) == fMo9140a ? 0 : -1)) == 0 && (this.f7671g.mo9140a(rectF) > fMo9140a ? 1 : (this.f7671g.mo9140a(rectF) == fMo9140a ? 0 : -1)) == 0) && ((this.f7666b instanceof C1211j) && (this.f7665a instanceof C1211j) && (this.f7667c instanceof C1211j) && (this.f7668d instanceof C1211j));
    }

    /* JADX INFO: renamed from: v */
    public b m9233v() {
        return new b(this);
    }

    /* JADX INFO: renamed from: w */
    public C1212k m9234w(float f) {
        b bVarM9233v = m9233v();
        bVarM9233v.m9257o(f);
        return bVarM9233v.m9256m();
    }

    /* JADX INFO: renamed from: x */
    public C1212k m9235x(InterfaceC1204c interfaceC1204c) {
        b bVarM9233v = m9233v();
        bVarM9233v.m9258p(interfaceC1204c);
        return bVarM9233v.m9256m();
    }

    /* JADX INFO: renamed from: y */
    public C1212k m9236y(c cVar) {
        b bVarM9233v = m9233v();
        bVarM9233v.m9251B(cVar.mo9205a(m9229r()));
        bVarM9233v.m9255F(cVar.mo9205a(m9231t()));
        bVarM9233v.m9262t(cVar.mo9205a(m9222j()));
        bVarM9233v.m9266x(cVar.mo9205a(m9224l()));
        return bVarM9233v.m9256m();
    }

    private C1212k(b bVar) {
        this.f7665a = bVar.f7677a;
        this.f7666b = bVar.f7678b;
        this.f7667c = bVar.f7679c;
        this.f7668d = bVar.f7680d;
        this.f7669e = bVar.f7681e;
        this.f7670f = bVar.f7682f;
        this.f7671g = bVar.f7683g;
        this.f7672h = bVar.f7684h;
        this.f7673i = bVar.f7685i;
        this.f7674j = bVar.f7686j;
        this.f7675k = bVar.f7687k;
        this.f7676l = bVar.f7688l;
    }

    /* JADX INFO: renamed from: d.c.a.a.a0.k$b */
    public static final class b {

        /* JADX INFO: renamed from: a */
        private C1205d f7677a;

        /* JADX INFO: renamed from: b */
        private C1205d f7678b;

        /* JADX INFO: renamed from: c */
        private C1205d f7679c;

        /* JADX INFO: renamed from: d */
        private C1205d f7680d;

        /* JADX INFO: renamed from: e */
        private InterfaceC1204c f7681e;

        /* JADX INFO: renamed from: f */
        private InterfaceC1204c f7682f;

        /* JADX INFO: renamed from: g */
        private InterfaceC1204c f7683g;

        /* JADX INFO: renamed from: h */
        private InterfaceC1204c f7684h;

        /* JADX INFO: renamed from: i */
        private C1207f f7685i;

        /* JADX INFO: renamed from: j */
        private C1207f f7686j;

        /* JADX INFO: renamed from: k */
        private C1207f f7687k;

        /* JADX INFO: renamed from: l */
        private C1207f f7688l;

        public b() {
            this.f7677a = C1209h.m9207b();
            this.f7678b = C1209h.m9207b();
            this.f7679c = C1209h.m9207b();
            this.f7680d = C1209h.m9207b();
            this.f7681e = new C1202a(CropImageView.DEFAULT_ASPECT_RATIO);
            this.f7682f = new C1202a(CropImageView.DEFAULT_ASPECT_RATIO);
            this.f7683g = new C1202a(CropImageView.DEFAULT_ASPECT_RATIO);
            this.f7684h = new C1202a(CropImageView.DEFAULT_ASPECT_RATIO);
            this.f7685i = C1209h.m9208c();
            this.f7686j = C1209h.m9208c();
            this.f7687k = C1209h.m9208c();
            this.f7688l = C1209h.m9208c();
        }

        /* JADX INFO: renamed from: n */
        private static float m9249n(C1205d c1205d) {
            if (c1205d instanceof C1211j) {
                return ((C1211j) c1205d).f7664a;
            }
            if (c1205d instanceof C1206e) {
                return ((C1206e) c1205d).f7614a;
            }
            return -1.0f;
        }

        /* JADX INFO: renamed from: A */
        public b m9250A(float f) {
            this.f7681e = new C1202a(f);
            return this;
        }

        /* JADX INFO: renamed from: B */
        public b m9251B(InterfaceC1204c interfaceC1204c) {
            this.f7681e = interfaceC1204c;
            return this;
        }

        /* JADX INFO: renamed from: C */
        public b m9252C(int i, InterfaceC1204c interfaceC1204c) {
            m9253D(C1209h.m9206a(i));
            m9255F(interfaceC1204c);
            return this;
        }

        /* JADX INFO: renamed from: D */
        public b m9253D(C1205d c1205d) {
            this.f7678b = c1205d;
            float fM9249n = m9249n(c1205d);
            if (fM9249n != -1.0f) {
                m9254E(fM9249n);
            }
            return this;
        }

        /* JADX INFO: renamed from: E */
        public b m9254E(float f) {
            this.f7682f = new C1202a(f);
            return this;
        }

        /* JADX INFO: renamed from: F */
        public b m9255F(InterfaceC1204c interfaceC1204c) {
            this.f7682f = interfaceC1204c;
            return this;
        }

        /* JADX INFO: renamed from: m */
        public C1212k m9256m() {
            return new C1212k(this, null);
        }

        /* JADX INFO: renamed from: o */
        public b m9257o(float f) {
            m9250A(f);
            m9254E(f);
            m9265w(f);
            m9261s(f);
            return this;
        }

        /* JADX INFO: renamed from: p */
        public b m9258p(InterfaceC1204c interfaceC1204c) {
            m9251B(interfaceC1204c);
            m9255F(interfaceC1204c);
            m9266x(interfaceC1204c);
            m9262t(interfaceC1204c);
            return this;
        }

        /* JADX INFO: renamed from: q */
        public b m9259q(int i, InterfaceC1204c interfaceC1204c) {
            m9260r(C1209h.m9206a(i));
            m9262t(interfaceC1204c);
            return this;
        }

        /* JADX INFO: renamed from: r */
        public b m9260r(C1205d c1205d) {
            this.f7680d = c1205d;
            float fM9249n = m9249n(c1205d);
            if (fM9249n != -1.0f) {
                m9261s(fM9249n);
            }
            return this;
        }

        /* JADX INFO: renamed from: s */
        public b m9261s(float f) {
            this.f7684h = new C1202a(f);
            return this;
        }

        /* JADX INFO: renamed from: t */
        public b m9262t(InterfaceC1204c interfaceC1204c) {
            this.f7684h = interfaceC1204c;
            return this;
        }

        /* JADX INFO: renamed from: u */
        public b m9263u(int i, InterfaceC1204c interfaceC1204c) {
            m9264v(C1209h.m9206a(i));
            m9266x(interfaceC1204c);
            return this;
        }

        /* JADX INFO: renamed from: v */
        public b m9264v(C1205d c1205d) {
            this.f7679c = c1205d;
            float fM9249n = m9249n(c1205d);
            if (fM9249n != -1.0f) {
                m9265w(fM9249n);
            }
            return this;
        }

        /* JADX INFO: renamed from: w */
        public b m9265w(float f) {
            this.f7683g = new C1202a(f);
            return this;
        }

        /* JADX INFO: renamed from: x */
        public b m9266x(InterfaceC1204c interfaceC1204c) {
            this.f7683g = interfaceC1204c;
            return this;
        }

        /* JADX INFO: renamed from: y */
        public b m9267y(int i, InterfaceC1204c interfaceC1204c) {
            m9268z(C1209h.m9206a(i));
            m9251B(interfaceC1204c);
            return this;
        }

        /* JADX INFO: renamed from: z */
        public b m9268z(C1205d c1205d) {
            this.f7677a = c1205d;
            float fM9249n = m9249n(c1205d);
            if (fM9249n != -1.0f) {
                m9250A(fM9249n);
            }
            return this;
        }

        public b(C1212k c1212k) {
            this.f7677a = C1209h.m9207b();
            this.f7678b = C1209h.m9207b();
            this.f7679c = C1209h.m9207b();
            this.f7680d = C1209h.m9207b();
            this.f7681e = new C1202a(CropImageView.DEFAULT_ASPECT_RATIO);
            this.f7682f = new C1202a(CropImageView.DEFAULT_ASPECT_RATIO);
            this.f7683g = new C1202a(CropImageView.DEFAULT_ASPECT_RATIO);
            this.f7684h = new C1202a(CropImageView.DEFAULT_ASPECT_RATIO);
            this.f7685i = C1209h.m9208c();
            this.f7686j = C1209h.m9208c();
            this.f7687k = C1209h.m9208c();
            this.f7688l = C1209h.m9208c();
            this.f7677a = c1212k.f7665a;
            this.f7678b = c1212k.f7666b;
            this.f7679c = c1212k.f7667c;
            this.f7680d = c1212k.f7668d;
            this.f7681e = c1212k.f7669e;
            this.f7682f = c1212k.f7670f;
            this.f7683g = c1212k.f7671g;
            this.f7684h = c1212k.f7672h;
            this.f7685i = c1212k.f7673i;
            this.f7686j = c1212k.f7674j;
            this.f7687k = c1212k.f7675k;
            this.f7688l = c1212k.f7676l;
        }
    }

    public C1212k() {
        this.f7665a = C1209h.m9207b();
        this.f7666b = C1209h.m9207b();
        this.f7667c = C1209h.m9207b();
        this.f7668d = C1209h.m9207b();
        this.f7669e = new C1202a(CropImageView.DEFAULT_ASPECT_RATIO);
        this.f7670f = new C1202a(CropImageView.DEFAULT_ASPECT_RATIO);
        this.f7671g = new C1202a(CropImageView.DEFAULT_ASPECT_RATIO);
        this.f7672h = new C1202a(CropImageView.DEFAULT_ASPECT_RATIO);
        this.f7673i = C1209h.m9208c();
        this.f7674j = C1209h.m9208c();
        this.f7675k = C1209h.m9208c();
        this.f7676l = C1209h.m9208c();
    }
}
