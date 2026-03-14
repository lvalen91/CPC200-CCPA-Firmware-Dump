package c.a.o;

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
import androidx.appcompat.view.menu.j;
import androidx.appcompat.widget.c0;
import androidx.appcompat.widget.u0;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class g extends MenuInflater {
    static final Class<?>[] e;
    static final Class<?>[] f;
    final Object[] a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Object[] f1033b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Context f1034c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object f1035d;

    private static class a implements MenuItem.OnMenuItemClickListener {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final Class<?>[] f1036c = {MenuItem.class};
        private Object a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Method f1037b;

        public a(Object obj, String str) {
            this.a = obj;
            Class<?> cls = obj.getClass();
            try {
                this.f1037b = cls.getMethod(str, f1036c);
            } catch (Exception e) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.f1037b.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.f1037b.invoke(this.a, menuItem)).booleanValue();
                }
                this.f1037b.invoke(this.a, menuItem);
                return true;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    private class b {
        androidx.core.view.b A;
        private CharSequence B;
        private CharSequence C;
        private ColorStateList D = null;
        private PorterDuff.Mode E = null;
        private Menu a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f1038b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f1039c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f1040d;
        private int e;
        private boolean f;
        private boolean g;
        private boolean h;
        private int i;
        private int j;
        private CharSequence k;
        private CharSequence l;
        private int m;
        private char n;
        private int o;
        private char p;
        private int q;
        private int r;
        private boolean s;
        private boolean t;
        private boolean u;
        private int v;
        private int w;
        private String x;
        private String y;
        private String z;

        public b(Menu menu) {
            this.a = menu;
            h();
        }

        private char c(String str) {
            if (str == null) {
                return (char) 0;
            }
            return str.charAt(0);
        }

        private <T> T e(String str, Class<?>[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = Class.forName(str, false, g.this.f1034c.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                return (T) constructor.newInstance(objArr);
            } catch (Exception unused) {
                String str2 = "Cannot instantiate class: " + str;
                return null;
            }
        }

        private void i(MenuItem menuItem) {
            boolean z = false;
            menuItem.setChecked(this.s).setVisible(this.t).setEnabled(this.u).setCheckable(this.r >= 1).setTitleCondensed(this.l).setIcon(this.m);
            int i = this.v;
            if (i >= 0) {
                menuItem.setShowAsAction(i);
            }
            if (this.z != null) {
                if (g.this.f1034c.isRestricted()) {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
                menuItem.setOnMenuItemClickListener(new a(g.this.b(), this.z));
            }
            if (this.r >= 2) {
                if (menuItem instanceof androidx.appcompat.view.menu.i) {
                    ((androidx.appcompat.view.menu.i) menuItem).t(true);
                } else if (menuItem instanceof j) {
                    ((j) menuItem).h(true);
                }
            }
            String str = this.x;
            if (str != null) {
                menuItem.setActionView((View) e(str, g.e, g.this.a));
                z = true;
            }
            int i2 = this.w;
            if (i2 > 0 && !z) {
                menuItem.setActionView(i2);
            }
            androidx.core.view.b bVar = this.A;
            if (bVar != null) {
                androidx.core.view.i.a(menuItem, bVar);
            }
            androidx.core.view.i.c(menuItem, this.B);
            androidx.core.view.i.g(menuItem, this.C);
            androidx.core.view.i.b(menuItem, this.n, this.o);
            androidx.core.view.i.f(menuItem, this.p, this.q);
            PorterDuff.Mode mode = this.E;
            if (mode != null) {
                androidx.core.view.i.e(menuItem, mode);
            }
            ColorStateList colorStateList = this.D;
            if (colorStateList != null) {
                androidx.core.view.i.d(menuItem, colorStateList);
            }
        }

        public void a() {
            this.h = true;
            i(this.a.add(this.f1038b, this.i, this.j, this.k));
        }

        public SubMenu b() {
            this.h = true;
            SubMenu subMenuAddSubMenu = this.a.addSubMenu(this.f1038b, this.i, this.j, this.k);
            i(subMenuAddSubMenu.getItem());
            return subMenuAddSubMenu;
        }

        public boolean d() {
            return this.h;
        }

        public void f(AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = g.this.f1034c.obtainStyledAttributes(attributeSet, c.a.j.MenuGroup);
            this.f1038b = typedArrayObtainStyledAttributes.getResourceId(c.a.j.MenuGroup_android_id, 0);
            this.f1039c = typedArrayObtainStyledAttributes.getInt(c.a.j.MenuGroup_android_menuCategory, 0);
            this.f1040d = typedArrayObtainStyledAttributes.getInt(c.a.j.MenuGroup_android_orderInCategory, 0);
            this.e = typedArrayObtainStyledAttributes.getInt(c.a.j.MenuGroup_android_checkableBehavior, 0);
            this.f = typedArrayObtainStyledAttributes.getBoolean(c.a.j.MenuGroup_android_visible, true);
            this.g = typedArrayObtainStyledAttributes.getBoolean(c.a.j.MenuGroup_android_enabled, true);
            typedArrayObtainStyledAttributes.recycle();
        }

        public void g(AttributeSet attributeSet) {
            u0 u0VarU = u0.u(g.this.f1034c, attributeSet, c.a.j.MenuItem);
            this.i = u0VarU.n(c.a.j.MenuItem_android_id, 0);
            this.j = (u0VarU.k(c.a.j.MenuItem_android_menuCategory, this.f1039c) & (-65536)) | (u0VarU.k(c.a.j.MenuItem_android_orderInCategory, this.f1040d) & 65535);
            this.k = u0VarU.p(c.a.j.MenuItem_android_title);
            this.l = u0VarU.p(c.a.j.MenuItem_android_titleCondensed);
            this.m = u0VarU.n(c.a.j.MenuItem_android_icon, 0);
            this.n = c(u0VarU.o(c.a.j.MenuItem_android_alphabeticShortcut));
            this.o = u0VarU.k(c.a.j.MenuItem_alphabeticModifiers, 4096);
            this.p = c(u0VarU.o(c.a.j.MenuItem_android_numericShortcut));
            this.q = u0VarU.k(c.a.j.MenuItem_numericModifiers, 4096);
            if (u0VarU.s(c.a.j.MenuItem_android_checkable)) {
                this.r = u0VarU.a(c.a.j.MenuItem_android_checkable, false) ? 1 : 0;
            } else {
                this.r = this.e;
            }
            this.s = u0VarU.a(c.a.j.MenuItem_android_checked, false);
            this.t = u0VarU.a(c.a.j.MenuItem_android_visible, this.f);
            this.u = u0VarU.a(c.a.j.MenuItem_android_enabled, this.g);
            this.v = u0VarU.k(c.a.j.MenuItem_showAsAction, -1);
            this.z = u0VarU.o(c.a.j.MenuItem_android_onClick);
            this.w = u0VarU.n(c.a.j.MenuItem_actionLayout, 0);
            this.x = u0VarU.o(c.a.j.MenuItem_actionViewClass);
            String strO = u0VarU.o(c.a.j.MenuItem_actionProviderClass);
            this.y = strO;
            if ((strO != null) && this.w == 0 && this.x == null) {
                this.A = (androidx.core.view.b) e(this.y, g.f, g.this.f1033b);
            } else {
                this.A = null;
            }
            this.B = u0VarU.p(c.a.j.MenuItem_contentDescription);
            this.C = u0VarU.p(c.a.j.MenuItem_tooltipText);
            if (u0VarU.s(c.a.j.MenuItem_iconTintMode)) {
                this.E = c0.e(u0VarU.k(c.a.j.MenuItem_iconTintMode, -1), this.E);
            } else {
                this.E = null;
            }
            if (u0VarU.s(c.a.j.MenuItem_iconTint)) {
                this.D = u0VarU.c(c.a.j.MenuItem_iconTint);
            } else {
                this.D = null;
            }
            u0VarU.w();
            this.h = false;
        }

        public void h() {
            this.f1038b = 0;
            this.f1039c = 0;
            this.f1040d = 0;
            this.e = 0;
            this.f = true;
            this.g = true;
        }
    }

    static {
        Class<?>[] clsArr = {Context.class};
        e = clsArr;
        f = clsArr;
    }

    public g(Context context) {
        super(context);
        this.f1034c = context;
        Object[] objArr = {context};
        this.a = objArr;
        this.f1033b = objArr;
    }

    private Object a(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? a(((ContextWrapper) obj).getBaseContext()) : obj;
    }

    private void c(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) throws XmlPullParserException, IOException {
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
                        bVar.h();
                    } else if (name2.equals("item")) {
                        if (!bVar.d()) {
                            androidx.core.view.b bVar2 = bVar.A;
                            if (bVar2 == null || !bVar2.a()) {
                                bVar.a();
                            } else {
                                bVar.b();
                            }
                        }
                    } else if (name2.equals("menu")) {
                        z = true;
                    }
                }
            } else if (!z2) {
                String name3 = xmlPullParser.getName();
                if (name3.equals("group")) {
                    bVar.f(attributeSet);
                } else if (name3.equals("item")) {
                    bVar.g(attributeSet);
                } else if (name3.equals("menu")) {
                    c(xmlPullParser, attributeSet, bVar.b());
                } else {
                    str = name3;
                    z2 = true;
                }
            }
            eventType = xmlPullParser.next();
        }
    }

    Object b() {
        if (this.f1035d == null) {
            this.f1035d = a(this.f1034c);
        }
        return this.f1035d;
    }

    @Override // android.view.MenuInflater
    public void inflate(int i, Menu menu) {
        if (!(menu instanceof c.g.e.a.a)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser layout = null;
        try {
            try {
                try {
                    layout = this.f1034c.getResources().getLayout(i);
                    c(layout, Xml.asAttributeSet(layout), menu);
                } catch (XmlPullParserException e2) {
                    throw new InflateException("Error inflating menu XML", e2);
                }
            } catch (IOException e3) {
                throw new InflateException("Error inflating menu XML", e3);
            }
        } finally {
            if (layout != null) {
                layout.close();
            }
        }
    }
}
