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
import androidx.core.content.C0242a;
import androidx.core.graphics.drawable.C0251a;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p016c.p017a.p020l.p021a.C0504a;
import p016c.p017a.p022m.C0508a;
import p016c.p032d.C0537d;
import p016c.p032d.C0538e;
import p016c.p032d.C0540g;
import p016c.p032d.C0541h;
import p016c.p066q.p067a.p068a.C0692b;
import p016c.p066q.p067a.p068a.C0698h;

/* JADX INFO: renamed from: androidx.appcompat.widget.k0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0175k0 {

    /* JADX INFO: renamed from: i */
    private static C0175k0 f1186i;

    /* JADX INFO: renamed from: a */
    private WeakHashMap<Context, C0541h<ColorStateList>> f1188a;

    /* JADX INFO: renamed from: b */
    private C0540g<String, e> f1189b;

    /* JADX INFO: renamed from: c */
    private C0541h<String> f1190c;

    /* JADX INFO: renamed from: d */
    private final WeakHashMap<Context, C0537d<WeakReference<Drawable.ConstantState>>> f1191d = new WeakHashMap<>(0);

    /* JADX INFO: renamed from: e */
    private TypedValue f1192e;

    /* JADX INFO: renamed from: f */
    private boolean f1193f;

    /* JADX INFO: renamed from: g */
    private f f1194g;

    /* JADX INFO: renamed from: h */
    private static final PorterDuff.Mode f1185h = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: j */
    private static final c f1187j = new c(6);

    /* JADX INFO: renamed from: androidx.appcompat.widget.k0$a */
    static class a implements e {
        a() {
        }

        @Override // androidx.appcompat.widget.C0175k0.e
        /* JADX INFO: renamed from: a */
        public Drawable mo1219a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return C0504a.m4051m(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.k0$b */
    private static class b implements e {
        b() {
        }

        @Override // androidx.appcompat.widget.C0175k0.e
        /* JADX INFO: renamed from: a */
        public Drawable mo1219a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return C0692b.m5193a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.k0$c */
    private static class c extends C0538e<Integer, PorterDuffColorFilter> {
        public c(int i) {
            super(i);
        }

        /* JADX INFO: renamed from: h */
        private static int m1220h(int i, PorterDuff.Mode mode) {
            return ((i + 31) * 31) + mode.hashCode();
        }

        /* JADX INFO: renamed from: i */
        PorterDuffColorFilter m1221i(int i, PorterDuff.Mode mode) {
            return m4270c(Integer.valueOf(m1220h(i, mode)));
        }

        /* JADX INFO: renamed from: j */
        PorterDuffColorFilter m1222j(int i, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return m4271d(Integer.valueOf(m1220h(i, mode)), porterDuffColorFilter);
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.k0$d */
    static class d implements e {
        d() {
        }

        @Override // androidx.appcompat.widget.C0175k0.e
        /* JADX INFO: renamed from: a */
        public Drawable mo1219a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
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

    /* JADX INFO: renamed from: androidx.appcompat.widget.k0$e */
    private interface e {
        /* JADX INFO: renamed from: a */
        Drawable mo1219a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.k0$f */
    public interface f {
        /* JADX INFO: renamed from: a */
        Drawable mo1184a(C0175k0 c0175k0, Context context, int i);

        /* JADX INFO: renamed from: b */
        boolean mo1185b(Context context, int i, Drawable drawable);

        /* JADX INFO: renamed from: c */
        ColorStateList mo1186c(Context context, int i);

        /* JADX INFO: renamed from: d */
        boolean mo1187d(Context context, int i, Drawable drawable);

        /* JADX INFO: renamed from: e */
        PorterDuff.Mode mo1188e(int i);
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.k0$g */
    private static class g implements e {
        g() {
        }

        @Override // androidx.appcompat.widget.C0175k0.e
        /* JADX INFO: renamed from: a */
        public Drawable mo1219a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return C0698h.m5226c(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    /* JADX INFO: renamed from: a */
    private void m1195a(String str, e eVar) {
        if (this.f1189b == null) {
            this.f1189b = new C0540g<>();
        }
        this.f1189b.put(str, eVar);
    }

    /* JADX INFO: renamed from: b */
    private synchronized boolean m1196b(Context context, long j, Drawable drawable) {
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState == null) {
            return false;
        }
        C0537d<WeakReference<Drawable.ConstantState>> c0537d = this.f1191d.get(context);
        if (c0537d == null) {
            c0537d = new C0537d<>();
            this.f1191d.put(context, c0537d);
        }
        c0537d.m4262i(j, new WeakReference<>(constantState));
        return true;
    }

    /* JADX INFO: renamed from: c */
    private void m1197c(Context context, int i, ColorStateList colorStateList) {
        if (this.f1188a == null) {
            this.f1188a = new WeakHashMap<>();
        }
        C0541h<ColorStateList> c0541h = this.f1188a.get(context);
        if (c0541h == null) {
            c0541h = new C0541h<>();
            this.f1188a.put(context, c0541h);
        }
        c0541h.m4299a(i, colorStateList);
    }

    /* JADX INFO: renamed from: d */
    private void m1198d(Context context) {
        if (this.f1193f) {
            return;
        }
        this.f1193f = true;
        Drawable drawableM1211j = m1211j(context, C0508a.abc_vector_test);
        if (drawableM1211j == null || !m1207q(drawableM1211j)) {
            this.f1193f = false;
            throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
        }
    }

    /* JADX INFO: renamed from: e */
    private static long m1199e(TypedValue typedValue) {
        return (((long) typedValue.assetCookie) << 32) | ((long) typedValue.data);
    }

    /* JADX INFO: renamed from: f */
    private Drawable m1200f(Context context, int i) {
        if (this.f1192e == null) {
            this.f1192e = new TypedValue();
        }
        TypedValue typedValue = this.f1192e;
        context.getResources().getValue(i, typedValue, true);
        long jM1199e = m1199e(typedValue);
        Drawable drawableM1203i = m1203i(context, jM1199e);
        if (drawableM1203i != null) {
            return drawableM1203i;
        }
        f fVar = this.f1194g;
        Drawable drawableMo1184a = fVar == null ? null : fVar.mo1184a(this, context, i);
        if (drawableMo1184a != null) {
            drawableMo1184a.setChangingConfigurations(typedValue.changingConfigurations);
            m1196b(context, jM1199e, drawableMo1184a);
        }
        return drawableMo1184a;
    }

    /* JADX INFO: renamed from: g */
    private static PorterDuffColorFilter m1201g(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return m1204l(colorStateList.getColorForState(iArr, 0), mode);
    }

    /* JADX INFO: renamed from: h */
    public static synchronized C0175k0 m1202h() {
        if (f1186i == null) {
            C0175k0 c0175k0 = new C0175k0();
            f1186i = c0175k0;
            m1206p(c0175k0);
        }
        return f1186i;
    }

    /* JADX INFO: renamed from: i */
    private synchronized Drawable m1203i(Context context, long j) {
        C0537d<WeakReference<Drawable.ConstantState>> c0537d = this.f1191d.get(context);
        if (c0537d == null) {
            return null;
        }
        WeakReference<Drawable.ConstantState> weakReferenceM4258e = c0537d.m4258e(j);
        if (weakReferenceM4258e != null) {
            Drawable.ConstantState constantState = weakReferenceM4258e.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            c0537d.m4263j(j);
        }
        return null;
    }

    /* JADX INFO: renamed from: l */
    public static synchronized PorterDuffColorFilter m1204l(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilterM1221i;
        porterDuffColorFilterM1221i = f1187j.m1221i(i, mode);
        if (porterDuffColorFilterM1221i == null) {
            porterDuffColorFilterM1221i = new PorterDuffColorFilter(i, mode);
            f1187j.m1222j(i, mode, porterDuffColorFilterM1221i);
        }
        return porterDuffColorFilterM1221i;
    }

    /* JADX INFO: renamed from: n */
    private ColorStateList m1205n(Context context, int i) {
        C0541h<ColorStateList> c0541h;
        WeakHashMap<Context, C0541h<ColorStateList>> weakHashMap = this.f1188a;
        if (weakHashMap == null || (c0541h = weakHashMap.get(context)) == null) {
            return null;
        }
        return c0541h.m4302e(i);
    }

    /* JADX INFO: renamed from: p */
    private static void m1206p(C0175k0 c0175k0) {
        if (Build.VERSION.SDK_INT < 24) {
            c0175k0.m1195a("vector", new g());
            c0175k0.m1195a("animated-vector", new b());
            c0175k0.m1195a("animated-selector", new a());
            c0175k0.m1195a("drawable", new d());
        }
    }

    /* JADX INFO: renamed from: q */
    private static boolean m1207q(Drawable drawable) {
        return (drawable instanceof C0698h) || "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName());
    }

    /* JADX INFO: renamed from: r */
    private Drawable m1208r(Context context, int i) {
        int next;
        C0540g<String, e> c0540g = this.f1189b;
        if (c0540g == null || c0540g.isEmpty()) {
            return null;
        }
        C0541h<String> c0541h = this.f1190c;
        if (c0541h != null) {
            String strM4302e = c0541h.m4302e(i);
            if ("appcompat_skip_skip".equals(strM4302e) || (strM4302e != null && this.f1189b.get(strM4302e) == null)) {
                return null;
            }
        } else {
            this.f1190c = new C0541h<>();
        }
        if (this.f1192e == null) {
            this.f1192e = new TypedValue();
        }
        TypedValue typedValue = this.f1192e;
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        long jM1199e = m1199e(typedValue);
        Drawable drawableM1203i = m1203i(context, jM1199e);
        if (drawableM1203i != null) {
            return drawableM1203i;
        }
        CharSequence charSequence = typedValue.string;
        if (charSequence != null && charSequence.toString().endsWith(".xml")) {
            try {
                XmlResourceParser xml = resources.getXml(i);
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
                this.f1190c.m4299a(i, name);
                e eVar = this.f1189b.get(name);
                if (eVar != null) {
                    drawableM1203i = eVar.mo1219a(context, xml, attributeSetAsAttributeSet, context.getTheme());
                }
                if (drawableM1203i != null) {
                    drawableM1203i.setChangingConfigurations(typedValue.changingConfigurations);
                    m1196b(context, jM1199e, drawableM1203i);
                }
            } catch (Exception unused) {
            }
        }
        if (drawableM1203i == null) {
            this.f1190c.m4299a(i, "appcompat_skip_skip");
        }
        return drawableM1203i;
    }

    /* JADX INFO: renamed from: v */
    private Drawable m1209v(Context context, int i, boolean z, Drawable drawable) {
        ColorStateList colorStateListM1213m = m1213m(context, i);
        if (colorStateListM1213m == null) {
            f fVar = this.f1194g;
            if ((fVar == null || !fVar.mo1187d(context, i, drawable)) && !m1218x(context, i, drawable) && z) {
                return null;
            }
            return drawable;
        }
        if (C0159c0.m1070a(drawable)) {
            drawable = drawable.mutate();
        }
        Drawable drawableM1797r = C0251a.m1797r(drawable);
        C0251a.m1794o(drawableM1797r, colorStateListM1213m);
        PorterDuff.Mode modeM1214o = m1214o(i);
        if (modeM1214o == null) {
            return drawableM1797r;
        }
        C0251a.m1795p(drawableM1797r, modeM1214o);
        return drawableM1797r;
    }

    /* JADX INFO: renamed from: w */
    static void m1210w(Drawable drawable, C0191s0 c0191s0, int[] iArr) {
        if (!C0159c0.m1070a(drawable) || drawable.mutate() == drawable) {
            if (c0191s0.f1275d || c0191s0.f1274c) {
                drawable.setColorFilter(m1201g(c0191s0.f1275d ? c0191s0.f1272a : null, c0191s0.f1274c ? c0191s0.f1273b : f1185h, iArr));
            } else {
                drawable.clearColorFilter();
            }
            if (Build.VERSION.SDK_INT <= 23) {
                drawable.invalidateSelf();
            }
        }
    }

    /* JADX INFO: renamed from: j */
    public synchronized Drawable m1211j(Context context, int i) {
        return m1212k(context, i, false);
    }

    /* JADX INFO: renamed from: k */
    synchronized Drawable m1212k(Context context, int i, boolean z) {
        Drawable drawableM1208r;
        m1198d(context);
        drawableM1208r = m1208r(context, i);
        if (drawableM1208r == null) {
            drawableM1208r = m1200f(context, i);
        }
        if (drawableM1208r == null) {
            drawableM1208r = C0242a.m1699d(context, i);
        }
        if (drawableM1208r != null) {
            drawableM1208r = m1209v(context, i, z, drawableM1208r);
        }
        if (drawableM1208r != null) {
            C0159c0.m1071b(drawableM1208r);
        }
        return drawableM1208r;
    }

    /* JADX INFO: renamed from: m */
    synchronized ColorStateList m1213m(Context context, int i) {
        ColorStateList colorStateListM1205n;
        colorStateListM1205n = m1205n(context, i);
        if (colorStateListM1205n == null) {
            colorStateListM1205n = this.f1194g == null ? null : this.f1194g.mo1186c(context, i);
            if (colorStateListM1205n != null) {
                m1197c(context, i, colorStateListM1205n);
            }
        }
        return colorStateListM1205n;
    }

    /* JADX INFO: renamed from: o */
    PorterDuff.Mode m1214o(int i) {
        f fVar = this.f1194g;
        if (fVar == null) {
            return null;
        }
        return fVar.mo1188e(i);
    }

    /* JADX INFO: renamed from: s */
    public synchronized void m1215s(Context context) {
        C0537d<WeakReference<Drawable.ConstantState>> c0537d = this.f1191d.get(context);
        if (c0537d != null) {
            c0537d.m4256b();
        }
    }

    /* JADX INFO: renamed from: t */
    synchronized Drawable m1216t(Context context, C0205z0 c0205z0, int i) {
        Drawable drawableM1208r = m1208r(context, i);
        if (drawableM1208r == null) {
            drawableM1208r = c0205z0.m1439d(i);
        }
        if (drawableM1208r == null) {
            return null;
        }
        return m1209v(context, i, false, drawableM1208r);
    }

    /* JADX INFO: renamed from: u */
    public synchronized void m1217u(f fVar) {
        this.f1194g = fVar;
    }

    /* JADX INFO: renamed from: x */
    boolean m1218x(Context context, int i, Drawable drawable) {
        f fVar = this.f1194g;
        return fVar != null && fVar.mo1185b(context, i, drawable);
    }
}
