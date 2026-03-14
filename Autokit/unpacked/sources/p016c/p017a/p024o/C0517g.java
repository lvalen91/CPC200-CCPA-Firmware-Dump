package p016c.p017a.p024o;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.view.menu.C0103i;
import androidx.appcompat.view.menu.MenuItemC0104j;
import androidx.appcompat.widget.C0159c0;
import androidx.appcompat.widget.C0195u0;
import androidx.core.view.AbstractC0260b;
import androidx.core.view.C0279i;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p016c.p017a.C0502j;
import p016c.p041g.p043e.p044a.InterfaceMenuC0599a;

/* JADX INFO: renamed from: c.a.o.g */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0517g extends MenuInflater {

    /* JADX INFO: renamed from: e */
    static final Class<?>[] f3180e;

    /* JADX INFO: renamed from: f */
    static final Class<?>[] f3181f;

    /* JADX INFO: renamed from: a */
    final Object[] f3182a;

    /* JADX INFO: renamed from: b */
    final Object[] f3183b;

    /* JADX INFO: renamed from: c */
    Context f3184c;

    /* JADX INFO: renamed from: d */
    private Object f3185d;

    /* JADX INFO: renamed from: c.a.o.g$a */
    private static class a implements MenuItem.OnMenuItemClickListener {

        /* JADX INFO: renamed from: c */
        private static final Class<?>[] f3186c = {MenuItem.class};

        /* JADX INFO: renamed from: a */
        private Object f3187a;

        /* JADX INFO: renamed from: b */
        private Method f3188b;

        public a(Object obj, String str) {
            this.f3187a = obj;
            Class<?> cls = obj.getClass();
            try {
                this.f3188b = cls.getMethod(str, f3186c);
            } catch (Exception e) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.f3188b.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.f3188b.invoke(this.f3187a, menuItem)).booleanValue();
                }
                this.f3188b.invoke(this.f3187a, menuItem);
                return true;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* JADX INFO: renamed from: c.a.o.g$b */
    private class b {

        /* JADX INFO: renamed from: A */
        AbstractC0260b f3189A;

        /* JADX INFO: renamed from: B */
        private CharSequence f3190B;

        /* JADX INFO: renamed from: C */
        private CharSequence f3191C;

        /* JADX INFO: renamed from: D */
        private ColorStateList f3192D = null;

        /* JADX INFO: renamed from: E */
        private PorterDuff.Mode f3193E = null;

        /* JADX INFO: renamed from: a */
        private Menu f3195a;

        /* JADX INFO: renamed from: b */
        private int f3196b;

        /* JADX INFO: renamed from: c */
        private int f3197c;

        /* JADX INFO: renamed from: d */
        private int f3198d;

        /* JADX INFO: renamed from: e */
        private int f3199e;

        /* JADX INFO: renamed from: f */
        private boolean f3200f;

        /* JADX INFO: renamed from: g */
        private boolean f3201g;

        /* JADX INFO: renamed from: h */
        private boolean f3202h;

        /* JADX INFO: renamed from: i */
        private int f3203i;

        /* JADX INFO: renamed from: j */
        private int f3204j;

        /* JADX INFO: renamed from: k */
        private CharSequence f3205k;

        /* JADX INFO: renamed from: l */
        private CharSequence f3206l;

        /* JADX INFO: renamed from: m */
        private int f3207m;

        /* JADX INFO: renamed from: n */
        private char f3208n;

        /* JADX INFO: renamed from: o */
        private int f3209o;

        /* JADX INFO: renamed from: p */
        private char f3210p;

        /* JADX INFO: renamed from: q */
        private int f3211q;

        /* JADX INFO: renamed from: r */
        private int f3212r;

        /* JADX INFO: renamed from: s */
        private boolean f3213s;

        /* JADX INFO: renamed from: t */
        private boolean f3214t;

        /* JADX INFO: renamed from: u */
        private boolean f3215u;

        /* JADX INFO: renamed from: v */
        private int f3216v;

        /* JADX INFO: renamed from: w */
        private int f3217w;

        /* JADX INFO: renamed from: x */
        private String f3218x;

        /* JADX INFO: renamed from: y */
        private String f3219y;

        /* JADX INFO: renamed from: z */
        private String f3220z;

        public b(Menu menu) {
            this.f3195a = menu;
            m4148h();
        }

        /* JADX INFO: renamed from: c */
        private char m4140c(String str) {
            if (str == null) {
                return (char) 0;
            }
            return str.charAt(0);
        }

        /* JADX INFO: renamed from: e */
        private <T> T m4141e(String str, Class<?>[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = Class.forName(str, false, C0517g.this.f3184c.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                return (T) constructor.newInstance(objArr);
            } catch (Exception unused) {
                String str2 = "Cannot instantiate class: " + str;
                return null;
            }
        }

        /* JADX INFO: renamed from: i */
        private void m4142i(MenuItem menuItem) {
            boolean z = false;
            menuItem.setChecked(this.f3213s).setVisible(this.f3214t).setEnabled(this.f3215u).setCheckable(this.f3212r >= 1).setTitleCondensed(this.f3206l).setIcon(this.f3207m);
            int i = this.f3216v;
            if (i >= 0) {
                menuItem.setShowAsAction(i);
            }
            if (this.f3220z != null) {
                if (C0517g.this.f3184c.isRestricted()) {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
                menuItem.setOnMenuItemClickListener(new a(C0517g.this.m4139b(), this.f3220z));
            }
            if (this.f3212r >= 2) {
                if (menuItem instanceof C0103i) {
                    ((C0103i) menuItem).m795t(true);
                } else if (menuItem instanceof MenuItemC0104j) {
                    ((MenuItemC0104j) menuItem).m802h(true);
                }
            }
            String str = this.f3218x;
            if (str != null) {
                menuItem.setActionView((View) m4141e(str, C0517g.f3180e, C0517g.this.f3182a));
                z = true;
            }
            int i2 = this.f3217w;
            if (i2 > 0 && !z) {
                menuItem.setActionView(i2);
            }
            AbstractC0260b abstractC0260b = this.f3189A;
            if (abstractC0260b != null) {
                C0279i.m2009a(menuItem, abstractC0260b);
            }
            C0279i.m2011c(menuItem, this.f3190B);
            C0279i.m2015g(menuItem, this.f3191C);
            C0279i.m2010b(menuItem, this.f3208n, this.f3209o);
            C0279i.m2014f(menuItem, this.f3210p, this.f3211q);
            PorterDuff.Mode mode = this.f3193E;
            if (mode != null) {
                C0279i.m2013e(menuItem, mode);
            }
            ColorStateList colorStateList = this.f3192D;
            if (colorStateList != null) {
                C0279i.m2012d(menuItem, colorStateList);
            }
        }

        /* JADX INFO: renamed from: a */
        public void m4143a() {
            this.f3202h = true;
            m4142i(this.f3195a.add(this.f3196b, this.f3203i, this.f3204j, this.f3205k));
        }

        /* JADX INFO: renamed from: b */
        public SubMenu m4144b() {
            this.f3202h = true;
            SubMenu subMenuAddSubMenu = this.f3195a.addSubMenu(this.f3196b, this.f3203i, this.f3204j, this.f3205k);
            m4142i(subMenuAddSubMenu.getItem());
            return subMenuAddSubMenu;
        }

        /* JADX INFO: renamed from: d */
        public boolean m4145d() {
            return this.f3202h;
        }

        /* JADX INFO: renamed from: f */
        public void m4146f(AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = C0517g.this.f3184c.obtainStyledAttributes(attributeSet, C0502j.MenuGroup);
            this.f3196b = typedArrayObtainStyledAttributes.getResourceId(C0502j.MenuGroup_android_id, 0);
            this.f3197c = typedArrayObtainStyledAttributes.getInt(C0502j.MenuGroup_android_menuCategory, 0);
            this.f3198d = typedArrayObtainStyledAttributes.getInt(C0502j.MenuGroup_android_orderInCategory, 0);
            this.f3199e = typedArrayObtainStyledAttributes.getInt(C0502j.MenuGroup_android_checkableBehavior, 0);
            this.f3200f = typedArrayObtainStyledAttributes.getBoolean(C0502j.MenuGroup_android_visible, true);
            this.f3201g = typedArrayObtainStyledAttributes.getBoolean(C0502j.MenuGroup_android_enabled, true);
            typedArrayObtainStyledAttributes.recycle();
        }

        /* JADX INFO: renamed from: g */
        public void m4147g(AttributeSet attributeSet) {
            C0195u0 c0195u0M1320u = C0195u0.m1320u(C0517g.this.f3184c, attributeSet, C0502j.MenuItem);
            this.f3203i = c0195u0M1320u.m1335n(C0502j.MenuItem_android_id, 0);
            this.f3204j = (c0195u0M1320u.m1332k(C0502j.MenuItem_android_menuCategory, this.f3197c) & (-65536)) | (c0195u0M1320u.m1332k(C0502j.MenuItem_android_orderInCategory, this.f3198d) & 65535);
            this.f3205k = c0195u0M1320u.m1337p(C0502j.MenuItem_android_title);
            this.f3206l = c0195u0M1320u.m1337p(C0502j.MenuItem_android_titleCondensed);
            this.f3207m = c0195u0M1320u.m1335n(C0502j.MenuItem_android_icon, 0);
            this.f3208n = m4140c(c0195u0M1320u.m1336o(C0502j.MenuItem_android_alphabeticShortcut));
            this.f3209o = c0195u0M1320u.m1332k(C0502j.MenuItem_alphabeticModifiers, 4096);
            this.f3210p = m4140c(c0195u0M1320u.m1336o(C0502j.MenuItem_android_numericShortcut));
            this.f3211q = c0195u0M1320u.m1332k(C0502j.MenuItem_numericModifiers, 4096);
            if (c0195u0M1320u.m1340s(C0502j.MenuItem_android_checkable)) {
                this.f3212r = c0195u0M1320u.m1322a(C0502j.MenuItem_android_checkable, false) ? 1 : 0;
            } else {
                this.f3212r = this.f3199e;
            }
            this.f3213s = c0195u0M1320u.m1322a(C0502j.MenuItem_android_checked, false);
            this.f3214t = c0195u0M1320u.m1322a(C0502j.MenuItem_android_visible, this.f3200f);
            this.f3215u = c0195u0M1320u.m1322a(C0502j.MenuItem_android_enabled, this.f3201g);
            this.f3216v = c0195u0M1320u.m1332k(C0502j.MenuItem_showAsAction, -1);
            this.f3220z = c0195u0M1320u.m1336o(C0502j.MenuItem_android_onClick);
            this.f3217w = c0195u0M1320u.m1335n(C0502j.MenuItem_actionLayout, 0);
            this.f3218x = c0195u0M1320u.m1336o(C0502j.MenuItem_actionViewClass);
            String strM1336o = c0195u0M1320u.m1336o(C0502j.MenuItem_actionProviderClass);
            this.f3219y = strM1336o;
            if ((strM1336o != null) && this.f3217w == 0 && this.f3218x == null) {
                this.f3189A = (AbstractC0260b) m4141e(this.f3219y, C0517g.f3181f, C0517g.this.f3183b);
            } else {
                this.f3189A = null;
            }
            this.f3190B = c0195u0M1320u.m1337p(C0502j.MenuItem_contentDescription);
            this.f3191C = c0195u0M1320u.m1337p(C0502j.MenuItem_tooltipText);
            if (c0195u0M1320u.m1340s(C0502j.MenuItem_iconTintMode)) {
                this.f3193E = C0159c0.m1074e(c0195u0M1320u.m1332k(C0502j.MenuItem_iconTintMode, -1), this.f3193E);
            } else {
                this.f3193E = null;
            }
            if (c0195u0M1320u.m1340s(C0502j.MenuItem_iconTint)) {
                this.f3192D = c0195u0M1320u.m1324c(C0502j.MenuItem_iconTint);
            } else {
                this.f3192D = null;
            }
            c0195u0M1320u.m1341w();
            this.f3202h = false;
        }

        /* JADX INFO: renamed from: h */
        public void m4148h() {
            this.f3196b = 0;
            this.f3197c = 0;
            this.f3198d = 0;
            this.f3199e = 0;
            this.f3200f = true;
            this.f3201g = true;
        }
    }

    static {
        Class<?>[] clsArr = {Context.class};
        f3180e = clsArr;
        f3181f = clsArr;
    }

    public C0517g(Context context) {
        super(context);
        this.f3184c = context;
        Object[] objArr = {context};
        this.f3182a = objArr;
        this.f3183b = objArr;
    }

    /* JADX INFO: renamed from: a */
    private Object m4137a(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? m4137a(((ContextWrapper) obj).getBaseContext()) : obj;
    }

    /* JADX INFO: renamed from: c */
    private void m4138c(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) throws XmlPullParserException, IOException {
        b bVar = new b(menu);
        int eventType = xmlPullParser.getEventType();
        while (true) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if (!name.equals("menu")) {
                    throw new RuntimeException("Expecting menu, got " + name);
                }
                eventType = xmlPullParser.next();
            } else {
                eventType = xmlPullParser.next();
                if (eventType == 1) {
                    break;
                }
            }
        }
        String str = null;
        boolean z = false;
        boolean z2 = false;
        while (!z) {
            if (eventType == 1) {
                throw new RuntimeException("Unexpected end of document");
            }
            if (eventType != 2) {
                if (eventType == 3) {
                    String name2 = xmlPullParser.getName();
                    if (z2 && name2.equals(str)) {
                        str = null;
                        z2 = false;
                    } else if (name2.equals("group")) {
                        bVar.m4148h();
                    } else if (name2.equals("item")) {
                        if (!bVar.m4145d()) {
                            AbstractC0260b abstractC0260b = bVar.f3189A;
                            if (abstractC0260b == null || !abstractC0260b.mo803a()) {
                                bVar.m4143a();
                            } else {
                                bVar.m4144b();
                            }
                        }
                    } else if (name2.equals("menu")) {
                        z = true;
                    }
                }
            } else if (!z2) {
                String name3 = xmlPullParser.getName();
                if (name3.equals("group")) {
                    bVar.m4146f(attributeSet);
                } else if (name3.equals("item")) {
                    bVar.m4147g(attributeSet);
                } else if (name3.equals("menu")) {
                    m4138c(xmlPullParser, attributeSet, bVar.m4144b());
                } else {
                    str = name3;
                    z2 = true;
                }
            }
            eventType = xmlPullParser.next();
        }
    }

    /* JADX INFO: renamed from: b */
    Object m4139b() {
        if (this.f3185d == null) {
            this.f3185d = m4137a(this.f3184c);
        }
        return this.f3185d;
    }

    @Override // android.view.MenuInflater
    public void inflate(int i, Menu menu) {
        if (!(menu instanceof InterfaceMenuC0599a)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser layout = null;
        try {
            try {
                try {
                    layout = this.f3184c.getResources().getLayout(i);
                    m4138c(layout, Xml.asAttributeSet(layout), menu);
                } catch (XmlPullParserException e) {
                    throw new InflateException("Error inflating menu XML", e);
                }
            } catch (IOException e2) {
                throw new InflateException("Error inflating menu XML", e2);
            }
        } finally {
            if (layout != null) {
                layout.close();
            }
        }
    }
}
