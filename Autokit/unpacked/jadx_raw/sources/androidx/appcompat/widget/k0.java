package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class k0 {
    private static k0 i;
    private WeakHashMap<Context, c.d.h<ColorStateList>> a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c.d.g<String, e> f346b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c.d.h<String> f347c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final WeakHashMap<Context, c.d.d<WeakReference<Drawable.ConstantState>>> f348d = new WeakHashMap<>(0);
    private TypedValue e;
    private boolean f;
    private f g;
    private static final PorterDuff.Mode h = PorterDuff.Mode.SRC_IN;
    private static final c j = new c(6);

    static class a implements e {
        a() {
        }

        @Override // androidx.appcompat.widget.k0.e
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return c.a.l.a.a.m(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    private static class b implements e {
        b() {
        }

        @Override // androidx.appcompat.widget.k0.e
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return c.q.a.a.b.a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    private static class c extends c.d.e<Integer, PorterDuffColorFilter> {
        public c(int i) {
            super(i);
        }

        private static int h(int i, PorterDuff.Mode mode) {
            return ((i + 31) * 31) + mode.hashCode();
        }

        PorterDuffColorFilter i(int i, PorterDuff.Mode mode) {
            return c(Integer.valueOf(h(i, mode)));
        }

        PorterDuffColorFilter j(int i, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return d(Integer.valueOf(h(i, mode)), porterDuffColorFilter);
        }
    }

    static class d implements e {
        d() {
        }

        @Override // androidx.appcompat.widget.k0.e
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            String classAttribute = attributeSet.getClassAttribute();
            if (classAttribute != null) {
                try {
                    Drawable drawable = (Drawable) d.class.getClassLoader().loadClass(classAttribute).asSubclass(Drawable.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                    if (Build.VERSION.SDK_INT >= 21) {
                        drawable.inflate(context.getResources(), xmlPullParser, attributeSet, theme);
                    } else {
                        drawable.inflate(context.getResources(), xmlPullParser, attributeSet);
                    }
                    return drawable;
                } catch (Exception unused) {
                }
            }
            return null;
        }
    }

    private interface e {
        Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    public interface f {
        Drawable a(k0 k0Var, Context context, int i);

        boolean b(Context context, int i, Drawable drawable);

        ColorStateList c(Context context, int i);

        boolean d(Context context, int i, Drawable drawable);

        PorterDuff.Mode e(int i);
    }

    private static class g implements e {
        g() {
        }

        @Override // androidx.appcompat.widget.k0.e
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return c.q.a.a.h.c(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    private void a(String str, e eVar) {
        if (this.f346b == null) {
            this.f346b = new c.d.g<>();
        }
        this.f346b.put(str, eVar);
    }

    private synchronized boolean b(Context context, long j2, Drawable drawable) {
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState == null) {
            return false;
        }
        c.d.d<WeakReference<Drawable.ConstantState>> dVar = this.f348d.get(context);
        if (dVar == null) {
            dVar = new c.d.d<>();
            this.f348d.put(context, dVar);
        }
        dVar.i(j2, new WeakReference<>(constantState));
        return true;
    }

    private void c(Context context, int i2, ColorStateList colorStateList) {
        if (this.a == null) {
            this.a = new WeakHashMap<>();
        }
        c.d.h<ColorStateList> hVar = this.a.get(context);
        if (hVar == null) {
            hVar = new c.d.h<>();
            this.a.put(context, hVar);
        }
        hVar.a(i2, colorStateList);
    }

    private void d(Context context) {
        if (this.f) {
            return;
        }
        this.f = true;
        Drawable drawableJ = j(context, c.a.m.a.abc_vector_test);
        if (drawableJ == null || !q(drawableJ)) {
            this.f = false;
            throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
        }
    }

    private static long e(TypedValue typedValue) {
        return (((long) typedValue.assetCookie) << 32) | ((long) typedValue.data);
    }

    private Drawable f(Context context, int i2) {
        if (this.e == null) {
            this.e = new TypedValue();
        }
        TypedValue typedValue = this.e;
        context.getResources().getValue(i2, typedValue, true);
        long jE = e(typedValue);
        Drawable drawableI = i(context, jE);
        if (drawableI != null) {
            return drawableI;
        }
        f fVar = this.g;
        Drawable drawableA = fVar == null ? null : fVar.a(this, context, i2);
        if (drawableA != null) {
            drawableA.setChangingConfigurations(typedValue.changingConfigurations);
            b(context, jE, drawableA);
        }
        return drawableA;
    }

    private static PorterDuffColorFilter g(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return l(colorStateList.getColorForState(iArr, 0), mode);
    }

    public static synchronized k0 h() {
        if (i == null) {
            k0 k0Var = new k0();
            i = k0Var;
            p(k0Var);
        }
        return i;
    }

    private synchronized Drawable i(Context context, long j2) {
        c.d.d<WeakReference<Drawable.ConstantState>> dVar = this.f348d.get(context);
        if (dVar == null) {
            return null;
        }
        WeakReference<Drawable.ConstantState> weakReferenceE = dVar.e(j2);
        if (weakReferenceE != null) {
            Drawable.ConstantState constantState = weakReferenceE.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            dVar.j(j2);
        }
        return null;
    }

    public static synchronized PorterDuffColorFilter l(int i2, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilterI;
        porterDuffColorFilterI = j.i(i2, mode);
        if (porterDuffColorFilterI == null) {
            porterDuffColorFilterI = new PorterDuffColorFilter(i2, mode);
            j.j(i2, mode, porterDuffColorFilterI);
        }
        return porterDuffColorFilterI;
    }

    private ColorStateList n(Context context, int i2) {
        c.d.h<ColorStateList> hVar;
        WeakHashMap<Context, c.d.h<ColorStateList>> weakHashMap = this.a;
        if (weakHashMap == null || (hVar = weakHashMap.get(context)) == null) {
            return null;
        }
        return hVar.e(i2);
    }

    private static void p(k0 k0Var) {
        if (Build.VERSION.SDK_INT < 24) {
            k0Var.a("vector", new g());
            k0Var.a("animated-vector", new b());
            k0Var.a("animated-selector", new a());
            k0Var.a("drawable", new d());
        }
    }

    private static boolean q(Drawable drawable) {
        return (drawable instanceof c.q.a.a.h) || "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName());
    }

    private Drawable r(Context context, int i2) {
        int next;
        c.d.g<String, e> gVar = this.f346b;
        if (gVar == null || gVar.isEmpty()) {
            return null;
        }
        c.d.h<String> hVar = this.f347c;
        if (hVar != null) {
            String strE = hVar.e(i2);
            if ("appcompat_skip_skip".equals(strE) || (strE != null && this.f346b.get(strE) == null)) {
                return null;
            }
        } else {
            this.f347c = new c.d.h<>();
        }
        if (this.e == null) {
            this.e = new TypedValue();
        }
        TypedValue typedValue = this.e;
        Resources resources = context.getResources();
        resources.getValue(i2, typedValue, true);
        long jE = e(typedValue);
        Drawable drawableI = i(context, jE);
        if (drawableI != null) {
            return drawableI;
        }
        CharSequence charSequence = typedValue.string;
        if (charSequence != null && charSequence.toString().endsWith(".xml")) {
            try {
                XmlResourceParser xml = resources.getXml(i2);
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                String name = xml.getName();
                this.f347c.a(i2, name);
                e eVar = this.f346b.get(name);
                if (eVar != null) {
                    drawableI = eVar.a(context, xml, attributeSetAsAttributeSet, context.getTheme());
                }
                if (drawableI != null) {
                    drawableI.setChangingConfigurations(typedValue.changingConfigurations);
                    b(context, jE, drawableI);
                }
            } catch (Exception unused) {
            }
        }
        if (drawableI == null) {
            this.f347c.a(i2, "appcompat_skip_skip");
        }
        return drawableI;
    }

    private Drawable v(Context context, int i2, boolean z, Drawable drawable) {
        ColorStateList colorStateListM = m(context, i2);
        if (colorStateListM == null) {
            f fVar = this.g;
            if ((fVar == null || !fVar.d(context, i2, drawable)) && !x(context, i2, drawable) && z) {
                return null;
            }
            return drawable;
        }
        if (c0.a(drawable)) {
            drawable = drawable.mutate();
        }
        Drawable drawableR = androidx.core.graphics.drawable.a.r(drawable);
        androidx.core.graphics.drawable.a.o(drawableR, colorStateListM);
        PorterDuff.Mode modeO = o(i2);
        if (modeO == null) {
            return drawableR;
        }
        androidx.core.graphics.drawable.a.p(drawableR, modeO);
        return drawableR;
    }

    static void w(Drawable drawable, s0 s0Var, int[] iArr) {
        if (!c0.a(drawable) || drawable.mutate() == drawable) {
            if (s0Var.f388d || s0Var.f387c) {
                drawable.setColorFilter(g(s0Var.f388d ? s0Var.a : null, s0Var.f387c ? s0Var.f386b : h, iArr));
            } else {
                drawable.clearColorFilter();
            }
            if (Build.VERSION.SDK_INT <= 23) {
                drawable.invalidateSelf();
            }
        }
    }

    public synchronized Drawable j(Context context, int i2) {
        return k(context, i2, false);
    }

    synchronized Drawable k(Context context, int i2, boolean z) {
        Drawable drawableR;
        d(context);
        drawableR = r(context, i2);
        if (drawableR == null) {
            drawableR = f(context, i2);
        }
        if (drawableR == null) {
            drawableR = androidx.core.content.a.d(context, i2);
        }
        if (drawableR != null) {
            drawableR = v(context, i2, z, drawableR);
        }
        if (drawableR != null) {
            c0.b(drawableR);
        }
        return drawableR;
    }

    synchronized ColorStateList m(Context context, int i2) {
        ColorStateList colorStateListN;
        colorStateListN = n(context, i2);
        if (colorStateListN == null) {
            colorStateListN = this.g == null ? null : this.g.c(context, i2);
            if (colorStateListN != null) {
                c(context, i2, colorStateListN);
            }
        }
        return colorStateListN;
    }

    PorterDuff.Mode o(int i2) {
        f fVar = this.g;
        if (fVar == null) {
            return null;
        }
        return fVar.e(i2);
    }

    public synchronized void s(Context context) {
        c.d.d<WeakReference<Drawable.ConstantState>> dVar = this.f348d.get(context);
        if (dVar != null) {
            dVar.b();
        }
    }

    synchronized Drawable t(Context context, z0 z0Var, int i2) {
        Drawable drawableR = r(context, i2);
        if (drawableR == null) {
            drawableR = z0Var.d(i2);
        }
        if (drawableR == null) {
            return null;
        }
        return v(context, i2, false, drawableR);
    }

    public synchronized void u(f fVar) {
        this.g = fVar;
    }

    boolean x(Context context, int i2, Drawable drawable) {
        f fVar = this.g;
        return fVar != null && fVar.b(context, i2, drawable);
    }
}
