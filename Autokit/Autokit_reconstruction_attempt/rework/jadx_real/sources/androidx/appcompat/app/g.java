package androidx.appcompat.app;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.ViewStubCompat;
import androidx.appcompat.widget.a0;
import androidx.appcompat.widget.a1;
import androidx.appcompat.widget.e0;
import androidx.appcompat.widget.u0;
import androidx.appcompat.widget.z0;
import androidx.core.content.c.f;
import androidx.core.view.LayoutInflaterCompat;
import androidx.core.view.b0;
import androidx.core.view.d0;
import androidx.core.view.f;
import androidx.core.view.z;
import androidx.lifecycle.f;
import c.a.o.b;
import c.a.o.f;
import com.yalantis.ucrop.view.CropImageView;
import java.lang.Thread;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class g extends androidx.appcompat.app.f implements g.a, LayoutInflater.Factory2 {
    private static final c.d.g<String, Integer> c0 = new c.d.g<>();
    private static final boolean d0;
    private static final int[] e0;
    private static final boolean f0;
    private static final boolean g0;
    private static boolean h0;
    private boolean A;
    boolean B;
    boolean C;
    boolean D;
    boolean E;
    boolean F;
    private boolean G;
    private u[] H;
    private u I;
    private boolean J;
    private boolean K;
    private boolean L;
    private boolean M;
    boolean N;
    private int O;
    private int P;
    private boolean Q;
    private boolean R;
    private q S;
    private q T;
    boolean U;
    int V;
    private final Runnable W;
    private boolean X;
    private Rect Y;
    private Rect Z;
    private androidx.appcompat.app.i a0;
    private androidx.appcompat.app.j b0;
    final Object e;
    final Context f;
    Window g;
    private o h;
    final androidx.appcompat.app.e i;
    androidx.appcompat.app.a j;
    MenuInflater k;
    private CharSequence l;
    private a0 m;
    private i n;
    private v o;
    c.a.o.b p;
    ActionBarContextView q;
    PopupWindow r;
    Runnable s;
    z t;
    private boolean u;
    private boolean v;
    ViewGroup w;
    private TextView x;
    private View y;
    private boolean z;

    class a implements Thread.UncaughtExceptionHandler {
        final /* synthetic */ Thread.UncaughtExceptionHandler a;

        a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.a = uncaughtExceptionHandler;
        }

        private boolean a(Throwable th) {
            String message;
            if (!(th instanceof Resources.NotFoundException) || (message = th.getMessage()) == null) {
                return false;
            }
            return message.contains("drawable") || message.contains("Drawable");
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            if (!a(th)) {
                this.a.uncaughtException(thread, th);
                return;
            }
            Resources.NotFoundException notFoundException = new Resources.NotFoundException(th.getMessage() + ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.");
            notFoundException.initCause(th.getCause());
            notFoundException.setStackTrace(th.getStackTrace());
            this.a.uncaughtException(thread, notFoundException);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g gVar = g.this;
            if ((gVar.V & 1) != 0) {
                gVar.a0(0);
            }
            g gVar2 = g.this;
            if ((gVar2.V & 4096) != 0) {
                gVar2.a0(108);
            }
            g gVar3 = g.this;
            gVar3.U = false;
            gVar3.V = 0;
        }
    }

    class c implements androidx.core.view.q {
        c() {
        }

        @Override // androidx.core.view.q
        public d0 a(View view, d0 d0Var) {
            int i = d0Var.i();
            int iQ0 = g.this.Q0(d0Var, null);
            if (i != iQ0) {
                d0Var = d0Var.m(d0Var.g(), iQ0, d0Var.h(), d0Var.f());
            }
            return androidx.core.view.v.a0(view, d0Var);
        }
    }

    class d implements e0.a {
        d() {
        }

        @Override // androidx.appcompat.widget.e0.a
        public void a(Rect rect) {
            rect.top = g.this.Q0(null, rect);
        }
    }

    class e implements ContentFrameLayout.a {
        e() {
        }

        @Override // androidx.appcompat.widget.ContentFrameLayout.a
        public void a() {
        }

        @Override // androidx.appcompat.widget.ContentFrameLayout.a
        public void onDetachedFromWindow() {
            g.this.Y();
        }
    }

    class f implements Runnable {

        class a extends b0 {
            a() {
            }

            @Override // androidx.core.view.a0
            public void a(View view) {
                g.this.q.setAlpha(1.0f);
                g.this.t.f(null);
                g.this.t = null;
            }

            @Override // androidx.core.view.b0, androidx.core.view.a0
            public void b(View view) {
                g.this.q.setVisibility(0);
            }
        }

        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g gVar = g.this;
            gVar.r.showAtLocation(gVar.q, 55, 0, 0);
            g.this.b0();
            if (!g.this.J0()) {
                g.this.q.setAlpha(1.0f);
                g.this.q.setVisibility(0);
                return;
            }
            g.this.q.setAlpha(CropImageView.DEFAULT_ASPECT_RATIO);
            g gVar2 = g.this;
            z zVarD = androidx.core.view.v.d(gVar2.q);
            zVarD.a(1.0f);
            gVar2.t = zVarD;
            g.this.t.f(new a());
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.g$g, reason: collision with other inner class name */
    class C0010g extends b0 {
        C0010g() {
        }

        @Override // androidx.core.view.a0
        public void a(View view) {
            g.this.q.setAlpha(1.0f);
            g.this.t.f(null);
            g.this.t = null;
        }

        @Override // androidx.core.view.b0, androidx.core.view.a0
        public void b(View view) {
            g.this.q.setVisibility(0);
            g.this.q.sendAccessibilityEvent(32);
            if (g.this.q.getParent() instanceof View) {
                androidx.core.view.v.l0((View) g.this.q.getParent());
            }
        }
    }

    private class h implements androidx.appcompat.app.b {
        h(g gVar) {
        }
    }

    private final class i implements m.a {
        i() {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public void a(androidx.appcompat.view.menu.g gVar, boolean z) {
            g.this.R(gVar);
        }

        @Override // androidx.appcompat.view.menu.m.a
        public boolean b(androidx.appcompat.view.menu.g gVar) {
            Window.Callback callbackL0 = g.this.l0();
            if (callbackL0 == null) {
                return true;
            }
            callbackL0.onMenuOpened(108, gVar);
            return true;
        }
    }

    class j implements b.a {
        private b.a a;

        class a extends b0 {
            a() {
            }

            @Override // androidx.core.view.a0
            public void a(View view) {
                g.this.q.setVisibility(8);
                g gVar = g.this;
                PopupWindow popupWindow = gVar.r;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (gVar.q.getParent() instanceof View) {
                    androidx.core.view.v.l0((View) g.this.q.getParent());
                }
                g.this.q.k();
                g.this.t.f(null);
                g gVar2 = g.this;
                gVar2.t = null;
                androidx.core.view.v.l0(gVar2.w);
            }
        }

        public j(b.a aVar) {
            this.a = aVar;
        }

        @Override // c.a.o.b.a
        public boolean a(c.a.o.b bVar, Menu menu) {
            androidx.core.view.v.l0(g.this.w);
            return this.a.a(bVar, menu);
        }

        @Override // c.a.o.b.a
        public boolean b(c.a.o.b bVar, MenuItem menuItem) {
            return this.a.b(bVar, menuItem);
        }

        @Override // c.a.o.b.a
        public boolean c(c.a.o.b bVar, Menu menu) {
            return this.a.c(bVar, menu);
        }

        @Override // c.a.o.b.a
        public void d(c.a.o.b bVar) {
            this.a.d(bVar);
            g gVar = g.this;
            if (gVar.r != null) {
                gVar.g.getDecorView().removeCallbacks(g.this.s);
            }
            g gVar2 = g.this;
            if (gVar2.q != null) {
                gVar2.b0();
                g gVar3 = g.this;
                z zVarD = androidx.core.view.v.d(gVar3.q);
                zVarD.a(CropImageView.DEFAULT_ASPECT_RATIO);
                gVar3.t = zVarD;
                g.this.t.f(new a());
            }
            g gVar4 = g.this;
            androidx.appcompat.app.e eVar = gVar4.i;
            if (eVar != null) {
                eVar.onSupportActionModeFinished(gVar4.p);
            }
            g gVar5 = g.this;
            gVar5.p = null;
            androidx.core.view.v.l0(gVar5.w);
        }
    }

    static class k {
        static Context a(Context context, Configuration configuration) {
            return context.createConfigurationContext(configuration);
        }

        static void b(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            int i = configuration.densityDpi;
            int i2 = configuration2.densityDpi;
            if (i != i2) {
                configuration3.densityDpi = i2;
            }
        }
    }

    static class l {
        static boolean a(PowerManager powerManager) {
            return powerManager.isPowerSaveMode();
        }
    }

    static class m {
        static void a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            LocaleList locales = configuration.getLocales();
            LocaleList locales2 = configuration2.getLocales();
            if (locales.equals(locales2)) {
                return;
            }
            configuration3.setLocales(locales2);
            configuration3.locale = configuration2.locale;
        }
    }

    static class n {
        static void a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            int i = configuration.colorMode & 3;
            int i2 = configuration2.colorMode;
            if (i != (i2 & 3)) {
                configuration3.colorMode |= i2 & 3;
            }
            int i3 = configuration.colorMode & 12;
            int i4 = configuration2.colorMode;
            if (i3 != (i4 & 12)) {
                configuration3.colorMode |= i4 & 12;
            }
        }
    }

    private class p extends q {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final PowerManager f134c;

        p(Context context) {
            super();
            this.f134c = (PowerManager) context.getApplicationContext().getSystemService("power");
        }

        @Override // androidx.appcompat.app.g.q
        IntentFilter b() {
            if (Build.VERSION.SDK_INT < 21) {
                return null;
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.g.q
        public int c() {
            return (Build.VERSION.SDK_INT < 21 || !l.a(this.f134c)) ? 1 : 2;
        }

        @Override // androidx.appcompat.app.g.q
        public void d() {
            g.this.e();
        }
    }

    abstract class q {
        private BroadcastReceiver a;

        class a extends BroadcastReceiver {
            a() {
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                q.this.d();
            }
        }

        q() {
        }

        void a() {
            BroadcastReceiver broadcastReceiver = this.a;
            if (broadcastReceiver != null) {
                try {
                    g.this.f.unregisterReceiver(broadcastReceiver);
                } catch (IllegalArgumentException unused) {
                }
                this.a = null;
            }
        }

        abstract IntentFilter b();

        abstract int c();

        abstract void d();

        void e() {
            a();
            IntentFilter intentFilterB = b();
            if (intentFilterB == null || intentFilterB.countActions() == 0) {
                return;
            }
            if (this.a == null) {
                this.a = new a();
            }
            g.this.f.registerReceiver(this.a, intentFilterB);
        }
    }

    private class r extends q {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final androidx.appcompat.app.n f137c;

        r(androidx.appcompat.app.n nVar) {
            super();
            this.f137c = nVar;
        }

        @Override // androidx.appcompat.app.g.q
        IntentFilter b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.g.q
        public int c() {
            return this.f137c.d() ? 2 : 1;
        }

        @Override // androidx.appcompat.app.g.q
        public void d() {
            g.this.e();
        }
    }

    private static class s {
        static void a(ContextThemeWrapper contextThemeWrapper, Configuration configuration) {
            contextThemeWrapper.applyOverrideConfiguration(configuration);
        }
    }

    private class t extends ContentFrameLayout {
        public t(Context context) {
            super(context);
        }

        private boolean c(int i, int i2) {
            return i < -5 || i2 < -5 || i > getWidth() + 5 || i2 > getHeight() + 5;
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return g.this.Z(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0 || !c((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return super.onInterceptTouchEvent(motionEvent);
            }
            g.this.T(0);
            return true;
        }

        @Override // android.view.View
        public void setBackgroundResource(int i) {
            setBackgroundDrawable(c.a.k.a.a.d(getContext(), i));
        }
    }

    protected static final class u {
        int a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f139b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f140c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f141d;
        int e;
        int f;
        ViewGroup g;
        View h;
        View i;
        androidx.appcompat.view.menu.g j;
        androidx.appcompat.view.menu.e k;
        Context l;
        boolean m;
        boolean n;
        boolean o;
        public boolean p;
        boolean q = false;
        boolean r;
        Bundle s;

        u(int i) {
            this.a = i;
        }

        androidx.appcompat.view.menu.n a(m.a aVar) {
            if (this.j == null) {
                return null;
            }
            if (this.k == null) {
                androidx.appcompat.view.menu.e eVar = new androidx.appcompat.view.menu.e(this.l, c.a.g.abc_list_menu_item_layout);
                this.k = eVar;
                eVar.h(aVar);
                this.j.b(this.k);
            }
            return this.k.g(this.g);
        }

        public boolean b() {
            if (this.h == null) {
                return false;
            }
            return this.i != null || this.k.b().getCount() > 0;
        }

        void c(androidx.appcompat.view.menu.g gVar) {
            androidx.appcompat.view.menu.e eVar;
            androidx.appcompat.view.menu.g gVar2 = this.j;
            if (gVar == gVar2) {
                return;
            }
            if (gVar2 != null) {
                gVar2.O(this.k);
            }
            this.j = gVar;
            if (gVar == null || (eVar = this.k) == null) {
                return;
            }
            gVar.b(eVar);
        }

        void d(Context context) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme themeNewTheme = context.getResources().newTheme();
            themeNewTheme.setTo(context.getTheme());
            themeNewTheme.resolveAttribute(c.a.a.actionBarPopupTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                themeNewTheme.applyStyle(i, true);
            }
            themeNewTheme.resolveAttribute(c.a.a.panelMenuListTheme, typedValue, true);
            int i2 = typedValue.resourceId;
            if (i2 != 0) {
                themeNewTheme.applyStyle(i2, true);
            } else {
                themeNewTheme.applyStyle(c.a.i.Theme_AppCompat_CompactMenu, true);
            }
            c.a.o.d dVar = new c.a.o.d(context, 0);
            dVar.getTheme().setTo(themeNewTheme);
            this.l = dVar;
            TypedArray typedArrayObtainStyledAttributes = dVar.obtainStyledAttributes(c.a.j.AppCompatTheme);
            this.f139b = typedArrayObtainStyledAttributes.getResourceId(c.a.j.AppCompatTheme_panelBackground, 0);
            this.f = typedArrayObtainStyledAttributes.getResourceId(c.a.j.AppCompatTheme_android_windowAnimationStyle, 0);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private final class v implements m.a {
        v() {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public void a(androidx.appcompat.view.menu.g gVar, boolean z) {
            androidx.appcompat.view.menu.g gVarD = gVar.D();
            boolean z2 = gVarD != gVar;
            g gVar2 = g.this;
            if (z2) {
                gVar = gVarD;
            }
            u uVarE0 = gVar2.e0(gVar);
            if (uVarE0 != null) {
                if (!z2) {
                    g.this.U(uVarE0, z);
                } else {
                    g.this.Q(uVarE0.a, uVarE0, gVarD);
                    g.this.U(uVarE0, true);
                }
            }
        }

        @Override // androidx.appcompat.view.menu.m.a
        public boolean b(androidx.appcompat.view.menu.g gVar) {
            Window.Callback callbackL0;
            if (gVar != gVar.D()) {
                return true;
            }
            g gVar2 = g.this;
            if (!gVar2.B || (callbackL0 = gVar2.l0()) == null || g.this.N) {
                return true;
            }
            callbackL0.onMenuOpened(108, gVar);
            return true;
        }
    }

    static {
        d0 = Build.VERSION.SDK_INT < 21;
        e0 = new int[]{R.attr.windowBackground};
        f0 = !"robolectric".equals(Build.FINGERPRINT);
        g0 = Build.VERSION.SDK_INT >= 17;
        if (!d0 || h0) {
            return;
        }
        Thread.setDefaultUncaughtExceptionHandler(new a(Thread.getDefaultUncaughtExceptionHandler()));
        h0 = true;
    }

    g(Activity activity, androidx.appcompat.app.e eVar) {
        this(activity, null, eVar, activity);
    }

    private void D0(u uVar, KeyEvent keyEvent) {
        int i2;
        ViewGroup.LayoutParams layoutParams;
        if (uVar.o || this.N) {
            return;
        }
        if (uVar.a == 0) {
            if ((this.f.getResources().getConfiguration().screenLayout & 15) == 4) {
                return;
            }
        }
        Window.Callback callbackL0 = l0();
        if (callbackL0 != null && !callbackL0.onMenuOpened(uVar.a, uVar.j)) {
            U(uVar, true);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f.getSystemService("window");
        if (windowManager != null && G0(uVar, keyEvent)) {
            if (uVar.g != null && !uVar.q) {
                View view = uVar.i;
                if (view != null && (layoutParams = view.getLayoutParams()) != null && layoutParams.width == -1) {
                    i2 = -1;
                }
                uVar.n = false;
                WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams(i2, -2, uVar.f141d, uVar.e, 1002, 8519680, -3);
                layoutParams2.gravity = uVar.f140c;
                layoutParams2.windowAnimations = uVar.f;
                windowManager.addView(uVar.g, layoutParams2);
                uVar.o = true;
            }
            ViewGroup viewGroup = uVar.g;
            if (viewGroup == null) {
                if (!o0(uVar) || uVar.g == null) {
                    return;
                }
            } else if (uVar.q && viewGroup.getChildCount() > 0) {
                uVar.g.removeAllViews();
            }
            if (!n0(uVar) || !uVar.b()) {
                uVar.q = true;
                return;
            }
            ViewGroup.LayoutParams layoutParams3 = uVar.h.getLayoutParams();
            if (layoutParams3 == null) {
                layoutParams3 = new ViewGroup.LayoutParams(-2, -2);
            }
            uVar.g.setBackgroundResource(uVar.f139b);
            ViewParent parent = uVar.h.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(uVar.h);
            }
            uVar.g.addView(uVar.h, layoutParams3);
            if (!uVar.h.hasFocus()) {
                uVar.h.requestFocus();
            }
            i2 = -2;
            uVar.n = false;
            WindowManager.LayoutParams layoutParams22 = new WindowManager.LayoutParams(i2, -2, uVar.f141d, uVar.e, 1002, 8519680, -3);
            layoutParams22.gravity = uVar.f140c;
            layoutParams22.windowAnimations = uVar.f;
            windowManager.addView(uVar.g, layoutParams22);
            uVar.o = true;
        }
    }

    private boolean F0(u uVar, int i2, KeyEvent keyEvent, int i3) {
        androidx.appcompat.view.menu.g gVar;
        boolean zPerformShortcut = false;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((uVar.m || G0(uVar, keyEvent)) && (gVar = uVar.j) != null) {
            zPerformShortcut = gVar.performShortcut(i2, keyEvent, i3);
        }
        if (zPerformShortcut && (i3 & 1) == 0 && this.m == null) {
            U(uVar, true);
        }
        return zPerformShortcut;
    }

    private boolean G0(u uVar, KeyEvent keyEvent) {
        a0 a0Var;
        a0 a0Var2;
        a0 a0Var3;
        if (this.N) {
            return false;
        }
        if (uVar.m) {
            return true;
        }
        u uVar2 = this.I;
        if (uVar2 != null && uVar2 != uVar) {
            U(uVar2, false);
        }
        Window.Callback callbackL0 = l0();
        if (callbackL0 != null) {
            uVar.i = callbackL0.onCreatePanelView(uVar.a);
        }
        int i2 = uVar.a;
        boolean z = i2 == 0 || i2 == 108;
        if (z && (a0Var3 = this.m) != null) {
            a0Var3.f();
        }
        if (uVar.i == null && (!z || !(E0() instanceof androidx.appcompat.app.l))) {
            if (uVar.j == null || uVar.r) {
                if (uVar.j == null && (!p0(uVar) || uVar.j == null)) {
                    return false;
                }
                if (z && this.m != null) {
                    if (this.n == null) {
                        this.n = new i();
                    }
                    this.m.a(uVar.j, this.n);
                }
                uVar.j.d0();
                if (!callbackL0.onCreatePanelMenu(uVar.a, uVar.j)) {
                    uVar.c(null);
                    if (z && (a0Var = this.m) != null) {
                        a0Var.a(null, this.n);
                    }
                    return false;
                }
                uVar.r = false;
            }
            uVar.j.d0();
            Bundle bundle = uVar.s;
            if (bundle != null) {
                uVar.j.P(bundle);
                uVar.s = null;
            }
            if (!callbackL0.onPreparePanel(0, uVar.i, uVar.j)) {
                if (z && (a0Var2 = this.m) != null) {
                    a0Var2.a(null, this.n);
                }
                uVar.j.c0();
                return false;
            }
            boolean z2 = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            uVar.p = z2;
            uVar.j.setQwertyMode(z2);
            uVar.j.c0();
        }
        uVar.m = true;
        uVar.n = false;
        this.I = uVar;
        return true;
    }

    private void H0(boolean z) {
        a0 a0Var = this.m;
        if (a0Var == null || !a0Var.g() || (ViewConfiguration.get(this.f).hasPermanentMenuKey() && !this.m.b())) {
            u uVarJ0 = j0(0, true);
            uVarJ0.q = true;
            U(uVarJ0, false);
            D0(uVarJ0, null);
            return;
        }
        Window.Callback callbackL0 = l0();
        if (this.m.c() && z) {
            this.m.d();
            if (this.N) {
                return;
            }
            callbackL0.onPanelClosed(108, j0(0, true).j);
            return;
        }
        if (callbackL0 == null || this.N) {
            return;
        }
        if (this.U && (this.V & 1) != 0) {
            this.g.getDecorView().removeCallbacks(this.W);
            this.W.run();
        }
        u uVarJ02 = j0(0, true);
        androidx.appcompat.view.menu.g gVar = uVarJ02.j;
        if (gVar == null || uVarJ02.r || !callbackL0.onPreparePanel(0, uVarJ02.i, gVar)) {
            return;
        }
        callbackL0.onMenuOpened(108, uVarJ02.j);
        this.m.e();
    }

    private int I0(int i2) {
        if (i2 == 8) {
            return 108;
        }
        if (i2 == 9) {
            return 109;
        }
        return i2;
    }

    private boolean K0(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        View decorView = this.g.getDecorView();
        while (viewParent != null) {
            if (viewParent == decorView || !(viewParent instanceof View) || androidx.core.view.v.S((View) viewParent)) {
                return false;
            }
            viewParent = viewParent.getParent();
        }
        return true;
    }

    private boolean M(boolean z) {
        if (this.N) {
            return false;
        }
        int iP = P();
        boolean zO0 = O0(t0(this.f, iP), z);
        if (iP == 0) {
            i0(this.f).e();
        } else {
            q qVar = this.S;
            if (qVar != null) {
                qVar.a();
            }
        }
        if (iP == 3) {
            h0(this.f).e();
        } else {
            q qVar2 = this.T;
            if (qVar2 != null) {
                qVar2.a();
            }
        }
        return zO0;
    }

    private void M0() {
        if (this.v) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    private void N() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.w.findViewById(R.id.content);
        View decorView = this.g.getDecorView();
        contentFrameLayout.b(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray typedArrayObtainStyledAttributes = this.f.obtainStyledAttributes(c.a.j.AppCompatTheme);
        typedArrayObtainStyledAttributes.getValue(c.a.j.AppCompatTheme_windowMinWidthMajor, contentFrameLayout.getMinWidthMajor());
        typedArrayObtainStyledAttributes.getValue(c.a.j.AppCompatTheme_windowMinWidthMinor, contentFrameLayout.getMinWidthMinor());
        if (typedArrayObtainStyledAttributes.hasValue(c.a.j.AppCompatTheme_windowFixedWidthMajor)) {
            typedArrayObtainStyledAttributes.getValue(c.a.j.AppCompatTheme_windowFixedWidthMajor, contentFrameLayout.getFixedWidthMajor());
        }
        if (typedArrayObtainStyledAttributes.hasValue(c.a.j.AppCompatTheme_windowFixedWidthMinor)) {
            typedArrayObtainStyledAttributes.getValue(c.a.j.AppCompatTheme_windowFixedWidthMinor, contentFrameLayout.getFixedWidthMinor());
        }
        if (typedArrayObtainStyledAttributes.hasValue(c.a.j.AppCompatTheme_windowFixedHeightMajor)) {
            typedArrayObtainStyledAttributes.getValue(c.a.j.AppCompatTheme_windowFixedHeightMajor, contentFrameLayout.getFixedHeightMajor());
        }
        if (typedArrayObtainStyledAttributes.hasValue(c.a.j.AppCompatTheme_windowFixedHeightMinor)) {
            typedArrayObtainStyledAttributes.getValue(c.a.j.AppCompatTheme_windowFixedHeightMinor, contentFrameLayout.getFixedHeightMinor());
        }
        typedArrayObtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    private androidx.appcompat.app.d N0() {
        for (Context baseContext = this.f; baseContext != null; baseContext = ((ContextWrapper) baseContext).getBaseContext()) {
            if (baseContext instanceof androidx.appcompat.app.d) {
                return (androidx.appcompat.app.d) baseContext;
            }
            if (!(baseContext instanceof ContextWrapper)) {
                break;
            }
        }
        return null;
    }

    private void O(Window window) {
        if (this.g != null) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        Window.Callback callback = window.getCallback();
        if (callback instanceof o) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        o oVar = new o(callback);
        this.h = oVar;
        window.setCallback(oVar);
        u0 u0VarU = u0.u(this.f, null, e0);
        Drawable drawableH = u0VarU.h(0);
        if (drawableH != null) {
            window.setBackgroundDrawable(drawableH);
        }
        u0VarU.w();
        this.g = window;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean O0(int i2, boolean z) {
        boolean z2;
        Configuration configurationV = V(this.f, i2, null);
        boolean zR0 = r0();
        int i3 = this.f.getResources().getConfiguration().uiMode & 48;
        int i4 = configurationV.uiMode & 48;
        boolean z3 = true;
        if (i3 != i4 && z && !zR0 && this.K && (f0 || this.L)) {
            Object obj = this.e;
            if ((obj instanceof Activity) && !((Activity) obj).isChild()) {
                androidx.core.app.a.l((Activity) this.e);
                z2 = true;
            }
        } else {
            z2 = false;
        }
        if (z2 || i3 == i4) {
            z3 = z2;
        } else {
            P0(i4, zR0, null);
        }
        if (z3) {
            Object obj2 = this.e;
            if (obj2 instanceof androidx.appcompat.app.d) {
                ((androidx.appcompat.app.d) obj2).onNightModeChanged(i2);
            }
        }
        return z3;
    }

    private int P() {
        int i2 = this.O;
        return i2 != -100 ? i2 : androidx.appcompat.app.f.l();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void P0(int i2, boolean z, Configuration configuration) {
        Resources resources = this.f.getResources();
        Configuration configuration2 = new Configuration(resources.getConfiguration());
        if (configuration != null) {
            configuration2.updateFrom(configuration);
        }
        configuration2.uiMode = i2 | (resources.getConfiguration().uiMode & (-49));
        resources.updateConfiguration(configuration2, null);
        if (Build.VERSION.SDK_INT < 26) {
            androidx.appcompat.app.k.a(resources);
        }
        int i3 = this.P;
        if (i3 != 0) {
            this.f.setTheme(i3);
            if (Build.VERSION.SDK_INT >= 23) {
                this.f.getTheme().applyStyle(this.P, true);
            }
        }
        if (z) {
            Object obj = this.e;
            if (obj instanceof Activity) {
                Activity activity = (Activity) obj;
                if (activity instanceof androidx.lifecycle.j) {
                    if (((androidx.lifecycle.j) activity).getLifecycle().b().a(f.c.STARTED)) {
                        activity.onConfigurationChanged(configuration2);
                    }
                } else if (this.M) {
                    activity.onConfigurationChanged(configuration2);
                }
            }
        }
    }

    private void R0(View view) {
        view.setBackgroundColor((androidx.core.view.v.M(view) & 8192) != 0 ? androidx.core.content.a.b(this.f, c.a.c.abc_decor_view_status_guard_light) : androidx.core.content.a.b(this.f, c.a.c.abc_decor_view_status_guard));
    }

    private void S() {
        q qVar = this.S;
        if (qVar != null) {
            qVar.a();
        }
        q qVar2 = this.T;
        if (qVar2 != null) {
            qVar2.a();
        }
    }

    private Configuration V(Context context, int i2, Configuration configuration) {
        int i3 = i2 != 1 ? i2 != 2 ? context.getApplicationContext().getResources().getConfiguration().uiMode & 48 : 32 : 16;
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = CropImageView.DEFAULT_ASPECT_RATIO;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i3 | (configuration2.uiMode & (-49));
        return configuration2;
    }

    private ViewGroup W() {
        ViewGroup viewGroup;
        TypedArray typedArrayObtainStyledAttributes = this.f.obtainStyledAttributes(c.a.j.AppCompatTheme);
        if (!typedArrayObtainStyledAttributes.hasValue(c.a.j.AppCompatTheme_windowActionBar)) {
            typedArrayObtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (typedArrayObtainStyledAttributes.getBoolean(c.a.j.AppCompatTheme_windowNoTitle, false)) {
            C(1);
        } else if (typedArrayObtainStyledAttributes.getBoolean(c.a.j.AppCompatTheme_windowActionBar, false)) {
            C(108);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(c.a.j.AppCompatTheme_windowActionBarOverlay, false)) {
            C(109);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(c.a.j.AppCompatTheme_windowActionModeOverlay, false)) {
            C(10);
        }
        this.E = typedArrayObtainStyledAttributes.getBoolean(c.a.j.AppCompatTheme_android_windowIsFloating, false);
        typedArrayObtainStyledAttributes.recycle();
        d0();
        this.g.getDecorView();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f);
        if (this.F) {
            viewGroup = this.D ? (ViewGroup) layoutInflaterFrom.inflate(c.a.g.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) layoutInflaterFrom.inflate(c.a.g.abc_screen_simple, (ViewGroup) null);
        } else if (this.E) {
            viewGroup = (ViewGroup) layoutInflaterFrom.inflate(c.a.g.abc_dialog_title_material, (ViewGroup) null);
            this.C = false;
            this.B = false;
        } else if (this.B) {
            TypedValue typedValue = new TypedValue();
            this.f.getTheme().resolveAttribute(c.a.a.actionBarTheme, typedValue, true);
            viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new c.a.o.d(this.f, typedValue.resourceId) : this.f).inflate(c.a.g.abc_screen_toolbar, (ViewGroup) null);
            a0 a0Var = (a0) viewGroup.findViewById(c.a.f.decor_content_parent);
            this.m = a0Var;
            a0Var.setWindowCallback(l0());
            if (this.C) {
                this.m.k(109);
            }
            if (this.z) {
                this.m.k(2);
            }
            if (this.A) {
                this.m.k(5);
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.B + ", windowActionBarOverlay: " + this.C + ", android:windowIsFloating: " + this.E + ", windowActionModeOverlay: " + this.D + ", windowNoTitle: " + this.F + " }");
        }
        if (Build.VERSION.SDK_INT >= 21) {
            androidx.core.view.v.z0(viewGroup, new c());
        } else if (viewGroup instanceof e0) {
            ((e0) viewGroup).setOnFitSystemWindowsListener(new d());
        }
        if (this.m == null) {
            this.x = (TextView) viewGroup.findViewById(c.a.f.title);
        }
        a1.c(viewGroup);
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(c.a.f.action_bar_activity_content);
        ViewGroup viewGroup2 = (ViewGroup) this.g.findViewById(R.id.content);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(R.id.content);
            if (viewGroup2 instanceof FrameLayout) {
                ((FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.g.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new e());
        return viewGroup;
    }

    private void c0() {
        if (this.v) {
            return;
        }
        this.w = W();
        CharSequence charSequenceK0 = k0();
        if (!TextUtils.isEmpty(charSequenceK0)) {
            a0 a0Var = this.m;
            if (a0Var != null) {
                a0Var.setWindowTitle(charSequenceK0);
            } else if (E0() != null) {
                E0().v(charSequenceK0);
            } else {
                TextView textView = this.x;
                if (textView != null) {
                    textView.setText(charSequenceK0);
                }
            }
        }
        N();
        C0(this.w);
        this.v = true;
        u uVarJ0 = j0(0, false);
        if (this.N) {
            return;
        }
        if (uVarJ0 == null || uVarJ0.j == null) {
            q0(108);
        }
    }

    private void d0() {
        if (this.g == null) {
            Object obj = this.e;
            if (obj instanceof Activity) {
                O(((Activity) obj).getWindow());
            }
        }
        if (this.g == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    private static Configuration f0(Configuration configuration, Configuration configuration2) {
        Configuration configuration3 = new Configuration();
        configuration3.fontScale = CropImageView.DEFAULT_ASPECT_RATIO;
        if (configuration2 != null && configuration.diff(configuration2) != 0) {
            float f2 = configuration.fontScale;
            float f3 = configuration2.fontScale;
            if (f2 != f3) {
                configuration3.fontScale = f3;
            }
            int i2 = configuration.mcc;
            int i3 = configuration2.mcc;
            if (i2 != i3) {
                configuration3.mcc = i3;
            }
            int i4 = configuration.mnc;
            int i5 = configuration2.mnc;
            if (i4 != i5) {
                configuration3.mnc = i5;
            }
            if (Build.VERSION.SDK_INT >= 24) {
                m.a(configuration, configuration2, configuration3);
            } else if (!c.g.j.c.a(configuration.locale, configuration2.locale)) {
                configuration3.locale = configuration2.locale;
            }
            int i6 = configuration.touchscreen;
            int i7 = configuration2.touchscreen;
            if (i6 != i7) {
                configuration3.touchscreen = i7;
            }
            int i8 = configuration.keyboard;
            int i9 = configuration2.keyboard;
            if (i8 != i9) {
                configuration3.keyboard = i9;
            }
            int i10 = configuration.keyboardHidden;
            int i11 = configuration2.keyboardHidden;
            if (i10 != i11) {
                configuration3.keyboardHidden = i11;
            }
            int i12 = configuration.navigation;
            int i13 = configuration2.navigation;
            if (i12 != i13) {
                configuration3.navigation = i13;
            }
            int i14 = configuration.navigationHidden;
            int i15 = configuration2.navigationHidden;
            if (i14 != i15) {
                configuration3.navigationHidden = i15;
            }
            int i16 = configuration.orientation;
            int i17 = configuration2.orientation;
            if (i16 != i17) {
                configuration3.orientation = i17;
            }
            int i18 = configuration.screenLayout & 15;
            int i19 = configuration2.screenLayout;
            if (i18 != (i19 & 15)) {
                configuration3.screenLayout |= i19 & 15;
            }
            int i20 = configuration.screenLayout & 192;
            int i21 = configuration2.screenLayout;
            if (i20 != (i21 & 192)) {
                configuration3.screenLayout |= i21 & 192;
            }
            int i22 = configuration.screenLayout & 48;
            int i23 = configuration2.screenLayout;
            if (i22 != (i23 & 48)) {
                configuration3.screenLayout |= i23 & 48;
            }
            int i24 = configuration.screenLayout & 768;
            int i25 = configuration2.screenLayout;
            if (i24 != (i25 & 768)) {
                configuration3.screenLayout |= i25 & 768;
            }
            if (Build.VERSION.SDK_INT >= 26) {
                n.a(configuration, configuration2, configuration3);
            }
            int i26 = configuration.uiMode & 15;
            int i27 = configuration2.uiMode;
            if (i26 != (i27 & 15)) {
                configuration3.uiMode |= i27 & 15;
            }
            int i28 = configuration.uiMode & 48;
            int i29 = configuration2.uiMode;
            if (i28 != (i29 & 48)) {
                configuration3.uiMode |= i29 & 48;
            }
            int i30 = configuration.screenWidthDp;
            int i31 = configuration2.screenWidthDp;
            if (i30 != i31) {
                configuration3.screenWidthDp = i31;
            }
            int i32 = configuration.screenHeightDp;
            int i33 = configuration2.screenHeightDp;
            if (i32 != i33) {
                configuration3.screenHeightDp = i33;
            }
            int i34 = configuration.smallestScreenWidthDp;
            int i35 = configuration2.smallestScreenWidthDp;
            if (i34 != i35) {
                configuration3.smallestScreenWidthDp = i35;
            }
            if (Build.VERSION.SDK_INT >= 17) {
                k.b(configuration, configuration2, configuration3);
            }
        }
        return configuration3;
    }

    private q h0(Context context) {
        if (this.T == null) {
            this.T = new p(context);
        }
        return this.T;
    }

    private q i0(Context context) {
        if (this.S == null) {
            this.S = new r(androidx.appcompat.app.n.a(context));
        }
        return this.S;
    }

    private void m0() {
        c0();
        if (this.B && this.j == null) {
            Object obj = this.e;
            if (obj instanceof Activity) {
                this.j = new androidx.appcompat.app.o((Activity) this.e, this.C);
            } else if (obj instanceof Dialog) {
                this.j = new androidx.appcompat.app.o((Dialog) this.e);
            }
            androidx.appcompat.app.a aVar = this.j;
            if (aVar != null) {
                aVar.s(this.X);
            }
        }
    }

    private boolean n0(u uVar) {
        View view = uVar.i;
        if (view != null) {
            uVar.h = view;
            return true;
        }
        if (uVar.j == null) {
            return false;
        }
        if (this.o == null) {
            this.o = new v();
        }
        View view2 = (View) uVar.a(this.o);
        uVar.h = view2;
        return view2 != null;
    }

    private boolean o0(u uVar) {
        uVar.d(g0());
        uVar.g = new t(uVar.l);
        uVar.f140c = 81;
        return true;
    }

    private boolean p0(u uVar) {
        Context context = this.f;
        int i2 = uVar.a;
        if ((i2 == 0 || i2 == 108) && this.m != null) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme theme = context.getTheme();
            theme.resolveAttribute(c.a.a.actionBarTheme, typedValue, true);
            Resources.Theme themeNewTheme = null;
            if (typedValue.resourceId != 0) {
                themeNewTheme = context.getResources().newTheme();
                themeNewTheme.setTo(theme);
                themeNewTheme.applyStyle(typedValue.resourceId, true);
                themeNewTheme.resolveAttribute(c.a.a.actionBarWidgetTheme, typedValue, true);
            } else {
                theme.resolveAttribute(c.a.a.actionBarWidgetTheme, typedValue, true);
            }
            if (typedValue.resourceId != 0) {
                if (themeNewTheme == null) {
                    themeNewTheme = context.getResources().newTheme();
                    themeNewTheme.setTo(theme);
                }
                themeNewTheme.applyStyle(typedValue.resourceId, true);
            }
            if (themeNewTheme != null) {
                c.a.o.d dVar = new c.a.o.d(context, 0);
                dVar.getTheme().setTo(themeNewTheme);
                context = dVar;
            }
        }
        androidx.appcompat.view.menu.g gVar = new androidx.appcompat.view.menu.g(context);
        gVar.R(this);
        uVar.c(gVar);
        return true;
    }

    private void q0(int i2) {
        this.V = (1 << i2) | this.V;
        if (this.U) {
            return;
        }
        androidx.core.view.v.g0(this.g.getDecorView(), this.W);
        this.U = true;
    }

    private boolean r0() {
        if (!this.R && (this.e instanceof Activity)) {
            PackageManager packageManager = this.f.getPackageManager();
            if (packageManager == null) {
                return false;
            }
            try {
                ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(this.f, this.e.getClass()), Build.VERSION.SDK_INT >= 29 ? 269221888 : Build.VERSION.SDK_INT >= 24 ? 786432 : 0);
                this.Q = (activityInfo == null || (activityInfo.configChanges & 512) == 0) ? false : true;
            } catch (PackageManager.NameNotFoundException unused) {
                this.Q = false;
            }
        }
        this.R = true;
        return this.Q;
    }

    private boolean w0(int i2, KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() != 0) {
            return false;
        }
        u uVarJ0 = j0(i2, true);
        if (uVarJ0.o) {
            return false;
        }
        return G0(uVarJ0, keyEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0062  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean z0(int i2, KeyEvent keyEvent) {
        boolean zG0;
        AudioManager audioManager;
        a0 a0Var;
        if (this.p != null) {
            return false;
        }
        boolean zD = true;
        u uVarJ0 = j0(i2, true);
        if (i2 != 0 || (a0Var = this.m) == null || !a0Var.g() || ViewConfiguration.get(this.f).hasPermanentMenuKey()) {
            if (uVarJ0.o || uVarJ0.n) {
                boolean z = uVarJ0.o;
                U(uVarJ0, true);
                zD = z;
            } else if (uVarJ0.m) {
                if (uVarJ0.r) {
                    uVarJ0.m = false;
                    zG0 = G0(uVarJ0, keyEvent);
                } else {
                    zG0 = true;
                }
                if (zG0) {
                    D0(uVarJ0, keyEvent);
                }
            } else {
                zD = false;
            }
        } else if (this.m.c()) {
            zD = this.m.d();
        } else if (!this.N && G0(uVarJ0, keyEvent)) {
            zD = this.m.e();
        }
        if (zD && (audioManager = (AudioManager) this.f.getApplicationContext().getSystemService("audio")) != null) {
            audioManager.playSoundEffect(0);
        }
        return zD;
    }

    void A0(int i2) {
        androidx.appcompat.app.a aVarP;
        if (i2 != 108 || (aVarP = p()) == null) {
            return;
        }
        aVarP.i(true);
    }

    void B0(int i2) {
        if (i2 == 108) {
            androidx.appcompat.app.a aVarP = p();
            if (aVarP != null) {
                aVarP.i(false);
                return;
            }
            return;
        }
        if (i2 == 0) {
            u uVarJ0 = j0(i2, true);
            if (uVarJ0.o) {
                U(uVarJ0, false);
            }
        }
    }

    @Override // androidx.appcompat.app.f
    public boolean C(int i2) {
        int iI0 = I0(i2);
        if (this.F && iI0 == 108) {
            return false;
        }
        if (this.B && iI0 == 1) {
            this.B = false;
        }
        if (iI0 == 1) {
            M0();
            this.F = true;
            return true;
        }
        if (iI0 == 2) {
            M0();
            this.z = true;
            return true;
        }
        if (iI0 == 5) {
            M0();
            this.A = true;
            return true;
        }
        if (iI0 == 10) {
            M0();
            this.D = true;
            return true;
        }
        if (iI0 == 108) {
            M0();
            this.B = true;
            return true;
        }
        if (iI0 != 109) {
            return this.g.requestFeature(iI0);
        }
        M0();
        this.C = true;
        return true;
    }

    void C0(ViewGroup viewGroup) {
    }

    @Override // androidx.appcompat.app.f
    public void E(int i2) {
        c0();
        ViewGroup viewGroup = (ViewGroup) this.w.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f).inflate(i2, viewGroup);
        this.h.a().onContentChanged();
    }

    final androidx.appcompat.app.a E0() {
        return this.j;
    }

    @Override // androidx.appcompat.app.f
    public void F(View view) {
        c0();
        ViewGroup viewGroup = (ViewGroup) this.w.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.h.a().onContentChanged();
    }

    @Override // androidx.appcompat.app.f
    public void G(View view, ViewGroup.LayoutParams layoutParams) {
        c0();
        ViewGroup viewGroup = (ViewGroup) this.w.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.h.a().onContentChanged();
    }

    @Override // androidx.appcompat.app.f
    public void I(Toolbar toolbar) {
        if (this.e instanceof Activity) {
            androidx.appcompat.app.a aVarP = p();
            if (aVarP instanceof androidx.appcompat.app.o) {
                throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
            }
            this.k = null;
            if (aVarP != null) {
                aVarP.o();
            }
            if (toolbar != null) {
                androidx.appcompat.app.l lVar = new androidx.appcompat.app.l(toolbar, k0(), this.h);
                this.j = lVar;
                this.g.setCallback(lVar.y());
            } else {
                this.j = null;
                this.g.setCallback(this.h);
            }
            r();
        }
    }

    @Override // androidx.appcompat.app.f
    public void J(int i2) {
        this.P = i2;
    }

    final boolean J0() {
        ViewGroup viewGroup;
        return this.v && (viewGroup = this.w) != null && androidx.core.view.v.T(viewGroup);
    }

    @Override // androidx.appcompat.app.f
    public final void K(CharSequence charSequence) {
        this.l = charSequence;
        a0 a0Var = this.m;
        if (a0Var != null) {
            a0Var.setWindowTitle(charSequence);
            return;
        }
        if (E0() != null) {
            E0().v(charSequence);
            return;
        }
        TextView textView = this.x;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    @Override // androidx.appcompat.app.f
    public c.a.o.b L(b.a aVar) {
        androidx.appcompat.app.e eVar;
        if (aVar == null) {
            throw new IllegalArgumentException("ActionMode callback can not be null.");
        }
        c.a.o.b bVar = this.p;
        if (bVar != null) {
            bVar.c();
        }
        j jVar = new j(aVar);
        androidx.appcompat.app.a aVarP = p();
        if (aVarP != null) {
            c.a.o.b bVarW = aVarP.w(jVar);
            this.p = bVarW;
            if (bVarW != null && (eVar = this.i) != null) {
                eVar.onSupportActionModeStarted(bVarW);
            }
        }
        if (this.p == null) {
            this.p = L0(jVar);
        }
        return this.p;
    }

    c.a.o.b L0(b.a aVar) {
        c.a.o.b bVarOnWindowStartingSupportActionMode;
        Context dVar;
        androidx.appcompat.app.e eVar;
        b0();
        c.a.o.b bVar = this.p;
        if (bVar != null) {
            bVar.c();
        }
        if (!(aVar instanceof j)) {
            aVar = new j(aVar);
        }
        androidx.appcompat.app.e eVar2 = this.i;
        if (eVar2 == null || this.N) {
            bVarOnWindowStartingSupportActionMode = null;
        } else {
            try {
                bVarOnWindowStartingSupportActionMode = eVar2.onWindowStartingSupportActionMode(aVar);
            } catch (AbstractMethodError unused) {
                bVarOnWindowStartingSupportActionMode = null;
            }
        }
        if (bVarOnWindowStartingSupportActionMode != null) {
            this.p = bVarOnWindowStartingSupportActionMode;
        } else {
            if (this.q == null) {
                if (this.E) {
                    TypedValue typedValue = new TypedValue();
                    Resources.Theme theme = this.f.getTheme();
                    theme.resolveAttribute(c.a.a.actionBarTheme, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        Resources.Theme themeNewTheme = this.f.getResources().newTheme();
                        themeNewTheme.setTo(theme);
                        themeNewTheme.applyStyle(typedValue.resourceId, true);
                        dVar = new c.a.o.d(this.f, 0);
                        dVar.getTheme().setTo(themeNewTheme);
                    } else {
                        dVar = this.f;
                    }
                    this.q = new ActionBarContextView(dVar);
                    PopupWindow popupWindow = new PopupWindow(dVar, (AttributeSet) null, c.a.a.actionModePopupWindowStyle);
                    this.r = popupWindow;
                    androidx.core.widget.h.b(popupWindow, 2);
                    this.r.setContentView(this.q);
                    this.r.setWidth(-1);
                    dVar.getTheme().resolveAttribute(c.a.a.actionBarSize, typedValue, true);
                    this.q.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, dVar.getResources().getDisplayMetrics()));
                    this.r.setHeight(-2);
                    this.s = new f();
                } else {
                    ViewStubCompat viewStubCompat = (ViewStubCompat) this.w.findViewById(c.a.f.action_mode_bar_stub);
                    if (viewStubCompat != null) {
                        viewStubCompat.setLayoutInflater(LayoutInflater.from(g0()));
                        this.q = (ActionBarContextView) viewStubCompat.a();
                    }
                }
            }
            if (this.q != null) {
                b0();
                this.q.k();
                c.a.o.e eVar3 = new c.a.o.e(this.q.getContext(), this.q, aVar, this.r == null);
                if (aVar.c(eVar3, eVar3.e())) {
                    eVar3.k();
                    this.q.h(eVar3);
                    this.p = eVar3;
                    if (J0()) {
                        this.q.setAlpha(CropImageView.DEFAULT_ASPECT_RATIO);
                        z zVarD = androidx.core.view.v.d(this.q);
                        zVarD.a(1.0f);
                        this.t = zVarD;
                        zVarD.f(new C0010g());
                    } else {
                        this.q.setAlpha(1.0f);
                        this.q.setVisibility(0);
                        this.q.sendAccessibilityEvent(32);
                        if (this.q.getParent() instanceof View) {
                            androidx.core.view.v.l0((View) this.q.getParent());
                        }
                    }
                    if (this.r != null) {
                        this.g.getDecorView().post(this.s);
                    }
                } else {
                    this.p = null;
                }
            }
        }
        c.a.o.b bVar2 = this.p;
        if (bVar2 != null && (eVar = this.i) != null) {
            eVar.onSupportActionModeStarted(bVar2);
        }
        return this.p;
    }

    void Q(int i2, u uVar, Menu menu) {
        if (menu == null) {
            if (uVar == null && i2 >= 0) {
                u[] uVarArr = this.H;
                if (i2 < uVarArr.length) {
                    uVar = uVarArr[i2];
                }
            }
            if (uVar != null) {
                menu = uVar.j;
            }
        }
        if ((uVar == null || uVar.o) && !this.N) {
            this.h.a().onPanelClosed(i2, menu);
        }
    }

    final int Q0(d0 d0Var, Rect rect) {
        boolean z;
        boolean z2;
        int i2 = d0Var != null ? d0Var.i() : rect != null ? rect.top : 0;
        ActionBarContextView actionBarContextView = this.q;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.q.getLayoutParams();
            if (this.q.isShown()) {
                if (this.Y == null) {
                    this.Y = new Rect();
                    this.Z = new Rect();
                }
                Rect rect2 = this.Y;
                Rect rect3 = this.Z;
                if (d0Var == null) {
                    rect2.set(rect);
                } else {
                    rect2.set(d0Var.g(), d0Var.i(), d0Var.h(), d0Var.f());
                }
                a1.a(this.w, rect2, rect3);
                int i3 = rect2.top;
                int i4 = rect2.left;
                int i5 = rect2.right;
                d0 d0VarJ = androidx.core.view.v.J(this.w);
                int iG = d0VarJ == null ? 0 : d0VarJ.g();
                int iH = d0VarJ == null ? 0 : d0VarJ.h();
                if (marginLayoutParams.topMargin == i3 && marginLayoutParams.leftMargin == i4 && marginLayoutParams.rightMargin == i5) {
                    z2 = false;
                } else {
                    marginLayoutParams.topMargin = i3;
                    marginLayoutParams.leftMargin = i4;
                    marginLayoutParams.rightMargin = i5;
                    z2 = true;
                }
                if (i3 <= 0 || this.y != null) {
                    View view = this.y;
                    if (view != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                        if (marginLayoutParams2.height != marginLayoutParams.topMargin || marginLayoutParams2.leftMargin != iG || marginLayoutParams2.rightMargin != iH) {
                            marginLayoutParams2.height = marginLayoutParams.topMargin;
                            marginLayoutParams2.leftMargin = iG;
                            marginLayoutParams2.rightMargin = iH;
                            this.y.setLayoutParams(marginLayoutParams2);
                        }
                    }
                } else {
                    View view2 = new View(this.f);
                    this.y = view2;
                    view2.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = iG;
                    layoutParams.rightMargin = iH;
                    this.w.addView(this.y, -1, layoutParams);
                }
                z = this.y != null;
                if (z && this.y.getVisibility() != 0) {
                    R0(this.y);
                }
                if (!this.D && z) {
                    i2 = 0;
                }
                z = z;
                z = z2;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z = false;
            } else {
                z = false;
                z = false;
            }
            if (z) {
                this.q.setLayoutParams(marginLayoutParams);
            }
        }
        View view3 = this.y;
        if (view3 != null) {
            view3.setVisibility(z ? 0 : 8);
        }
        return i2;
    }

    void R(androidx.appcompat.view.menu.g gVar) {
        if (this.G) {
            return;
        }
        this.G = true;
        this.m.l();
        Window.Callback callbackL0 = l0();
        if (callbackL0 != null && !this.N) {
            callbackL0.onPanelClosed(108, gVar);
        }
        this.G = false;
    }

    void T(int i2) {
        U(j0(i2, true), true);
    }

    void U(u uVar, boolean z) {
        ViewGroup viewGroup;
        a0 a0Var;
        if (z && uVar.a == 0 && (a0Var = this.m) != null && a0Var.c()) {
            R(uVar.j);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f.getSystemService("window");
        if (windowManager != null && uVar.o && (viewGroup = uVar.g) != null) {
            windowManager.removeView(viewGroup);
            if (z) {
                Q(uVar.a, uVar, null);
            }
        }
        uVar.m = false;
        uVar.n = false;
        uVar.o = false;
        uVar.h = null;
        uVar.q = true;
        if (this.I == uVar) {
            this.I = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View X(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z;
        boolean zK0 = false;
        if (this.a0 == null) {
            String string = this.f.obtainStyledAttributes(c.a.j.AppCompatTheme).getString(c.a.j.AppCompatTheme_viewInflaterClass);
            if (string == null) {
                this.a0 = new androidx.appcompat.app.i();
            } else {
                try {
                    this.a0 = (androidx.appcompat.app.i) Class.forName(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Throwable unused) {
                    String str2 = "Failed to instantiate custom view inflater " + string + ". Falling back to default.";
                    this.a0 = new androidx.appcompat.app.i();
                }
            }
        }
        if (d0) {
            if (this.b0 == null) {
                this.b0 = new androidx.appcompat.app.j();
            }
            if (this.b0.a(attributeSet)) {
                z = true;
            } else {
                if (!(attributeSet instanceof XmlPullParser)) {
                    zK0 = K0((ViewParent) view);
                } else if (((XmlPullParser) attributeSet).getDepth() > 1) {
                    zK0 = true;
                }
                z = zK0;
            }
        } else {
            z = false;
        }
        return this.a0.q(view, str, context, attributeSet, z, d0, true, z0.c());
    }

    void Y() {
        androidx.appcompat.view.menu.g gVar;
        a0 a0Var = this.m;
        if (a0Var != null) {
            a0Var.l();
        }
        if (this.r != null) {
            this.g.getDecorView().removeCallbacks(this.s);
            if (this.r.isShowing()) {
                try {
                    this.r.dismiss();
                } catch (IllegalArgumentException unused) {
                }
            }
            this.r = null;
        }
        b0();
        u uVarJ0 = j0(0, false);
        if (uVarJ0 == null || (gVar = uVarJ0.j) == null) {
            return;
        }
        gVar.close();
    }

    boolean Z(KeyEvent keyEvent) {
        View decorView;
        Object obj = this.e;
        if (((obj instanceof f.a) || (obj instanceof androidx.appcompat.app.h)) && (decorView = this.g.getDecorView()) != null && androidx.core.view.f.d(decorView, keyEvent)) {
            return true;
        }
        if (keyEvent.getKeyCode() == 82 && this.h.a().dispatchKeyEvent(keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        return keyEvent.getAction() == 0 ? v0(keyCode, keyEvent) : y0(keyCode, keyEvent);
    }

    @Override // androidx.appcompat.view.menu.g.a
    public boolean a(androidx.appcompat.view.menu.g gVar, MenuItem menuItem) {
        u uVarE0;
        Window.Callback callbackL0 = l0();
        if (callbackL0 == null || this.N || (uVarE0 = e0(gVar.D())) == null) {
            return false;
        }
        return callbackL0.onMenuItemSelected(uVarE0.a, menuItem);
    }

    void a0(int i2) {
        u uVarJ0;
        u uVarJ02 = j0(i2, true);
        if (uVarJ02.j != null) {
            Bundle bundle = new Bundle();
            uVarJ02.j.Q(bundle);
            if (bundle.size() > 0) {
                uVarJ02.s = bundle;
            }
            uVarJ02.j.d0();
            uVarJ02.j.clear();
        }
        uVarJ02.r = true;
        uVarJ02.q = true;
        if ((i2 != 108 && i2 != 0) || this.m == null || (uVarJ0 = j0(0, false)) == null) {
            return;
        }
        uVarJ0.m = false;
        G0(uVarJ0, null);
    }

    @Override // androidx.appcompat.view.menu.g.a
    public void b(androidx.appcompat.view.menu.g gVar) {
        H0(true);
    }

    void b0() {
        z zVar = this.t;
        if (zVar != null) {
            zVar.b();
        }
    }

    @Override // androidx.appcompat.app.f
    public void d(View view, ViewGroup.LayoutParams layoutParams) {
        c0();
        ((ViewGroup) this.w.findViewById(R.id.content)).addView(view, layoutParams);
        this.h.a().onContentChanged();
    }

    @Override // androidx.appcompat.app.f
    public boolean e() {
        return M(true);
    }

    u e0(Menu menu) {
        u[] uVarArr = this.H;
        int length = uVarArr != null ? uVarArr.length : 0;
        for (int i2 = 0; i2 < length; i2++) {
            u uVar = uVarArr[i2];
            if (uVar != null && uVar.j == menu) {
                return uVar;
            }
        }
        return null;
    }

    final Context g0() {
        androidx.appcompat.app.a aVarP = p();
        Context contextK = aVarP != null ? aVarP.k() : null;
        return contextK == null ? this.f : contextK;
    }

    @Override // androidx.appcompat.app.f
    public Context h(Context context) {
        this.K = true;
        int iT0 = t0(context, P());
        Configuration configurationF0 = null;
        if (g0 && (context instanceof ContextThemeWrapper)) {
            try {
                s.a((ContextThemeWrapper) context, V(context, iT0, null));
                return context;
            } catch (IllegalStateException unused) {
            }
        }
        if (context instanceof c.a.o.d) {
            try {
                ((c.a.o.d) context).a(V(context, iT0, null));
                return context;
            } catch (IllegalStateException unused2) {
            }
        }
        if (!f0) {
            super.h(context);
            return context;
        }
        if (Build.VERSION.SDK_INT >= 17) {
            Configuration configuration = new Configuration();
            configuration.uiMode = -1;
            configuration.fontScale = CropImageView.DEFAULT_ASPECT_RATIO;
            Configuration configuration2 = k.a(context, configuration).getResources().getConfiguration();
            Configuration configuration3 = context.getResources().getConfiguration();
            configuration2.uiMode = configuration3.uiMode;
            if (!configuration2.equals(configuration3)) {
                configurationF0 = f0(configuration2, configuration3);
            }
        }
        Configuration configurationV = V(context, iT0, configurationF0);
        c.a.o.d dVar = new c.a.o.d(context, c.a.i.Theme_AppCompat_Empty);
        dVar.a(configurationV);
        boolean z = false;
        try {
            z = context.getTheme() != null;
        } catch (NullPointerException unused3) {
        }
        if (z) {
            f.b.a(dVar.getTheme());
        }
        super.h(dVar);
        return dVar;
    }

    protected u j0(int i2, boolean z) {
        u[] uVarArr = this.H;
        if (uVarArr == null || uVarArr.length <= i2) {
            u[] uVarArr2 = new u[i2 + 1];
            if (uVarArr != null) {
                System.arraycopy(uVarArr, 0, uVarArr2, 0, uVarArr.length);
            }
            this.H = uVarArr2;
            uVarArr = uVarArr2;
        }
        u uVar = uVarArr[i2];
        if (uVar != null) {
            return uVar;
        }
        u uVar2 = new u(i2);
        uVarArr[i2] = uVar2;
        return uVar2;
    }

    @Override // androidx.appcompat.app.f
    public <T extends View> T k(int i2) {
        c0();
        return (T) this.g.findViewById(i2);
    }

    final CharSequence k0() {
        Object obj = this.e;
        return obj instanceof Activity ? ((Activity) obj).getTitle() : this.l;
    }

    final Window.Callback l0() {
        return this.g.getCallback();
    }

    @Override // androidx.appcompat.app.f
    public final androidx.appcompat.app.b m() {
        return new h(this);
    }

    @Override // androidx.appcompat.app.f
    public int n() {
        return this.O;
    }

    @Override // androidx.appcompat.app.f
    public MenuInflater o() {
        if (this.k == null) {
            m0();
            androidx.appcompat.app.a aVar = this.j;
            this.k = new c.a.o.g(aVar != null ? aVar.k() : this.f);
        }
        return this.k;
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return X(view, str, context, attributeSet);
    }

    @Override // androidx.appcompat.app.f
    public androidx.appcompat.app.a p() {
        m0();
        return this.j;
    }

    @Override // androidx.appcompat.app.f
    public void q() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f);
        if (layoutInflaterFrom.getFactory() == null) {
            LayoutInflaterCompat.setFactory2(layoutInflaterFrom, this);
        } else {
            boolean z = layoutInflaterFrom.getFactory2() instanceof g;
        }
    }

    @Override // androidx.appcompat.app.f
    public void r() {
        androidx.appcompat.app.a aVarP = p();
        if (aVarP == null || !aVarP.m()) {
            q0(0);
        }
    }

    @Override // androidx.appcompat.app.f
    public void s(Configuration configuration) {
        androidx.appcompat.app.a aVarP;
        if (this.B && this.v && (aVarP = p()) != null) {
            aVarP.n(configuration);
        }
        androidx.appcompat.widget.i.b().g(this.f);
        M(false);
    }

    public boolean s0() {
        return this.u;
    }

    @Override // androidx.appcompat.app.f
    public void t(Bundle bundle) {
        this.K = true;
        M(false);
        d0();
        Object obj = this.e;
        if (obj instanceof Activity) {
            String strC = null;
            try {
                strC = androidx.core.app.g.c((Activity) obj);
            } catch (IllegalArgumentException unused) {
            }
            if (strC != null) {
                androidx.appcompat.app.a aVarE0 = E0();
                if (aVarE0 == null) {
                    this.X = true;
                } else {
                    aVarE0.s(true);
                }
            }
            androidx.appcompat.app.f.c(this);
        }
        this.L = true;
    }

    int t0(Context context, int i2) {
        if (i2 == -100) {
            return -1;
        }
        if (i2 != -1) {
            if (i2 == 0) {
                if (Build.VERSION.SDK_INT < 23 || ((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() != 0) {
                    return i0(context).c();
                }
                return -1;
            }
            if (i2 != 1 && i2 != 2) {
                if (i2 == 3) {
                    return h0(context).c();
                }
                throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
            }
        }
        return i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0048  */
    @Override // androidx.appcompat.app.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void u() {
        if (this.e instanceof Activity) {
            androidx.appcompat.app.f.A(this);
        }
        if (this.U) {
            this.g.getDecorView().removeCallbacks(this.W);
        }
        this.M = false;
        this.N = true;
        if (this.O != -100) {
            Object obj = this.e;
            if ((obj instanceof Activity) && ((Activity) obj).isChangingConfigurations()) {
                c0.put(this.e.getClass().getName(), Integer.valueOf(this.O));
            } else {
                c0.remove(this.e.getClass().getName());
            }
        }
        androidx.appcompat.app.a aVar = this.j;
        if (aVar != null) {
            aVar.o();
        }
        S();
    }

    boolean u0() {
        c.a.o.b bVar = this.p;
        if (bVar != null) {
            bVar.c();
            return true;
        }
        androidx.appcompat.app.a aVarP = p();
        return aVarP != null && aVarP.h();
    }

    @Override // androidx.appcompat.app.f
    public void v(Bundle bundle) {
        c0();
    }

    boolean v0(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            this.J = (keyEvent.getFlags() & 128) != 0;
        } else if (i2 == 82) {
            w0(0, keyEvent);
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.app.f
    public void w() {
        androidx.appcompat.app.a aVarP = p();
        if (aVarP != null) {
            aVarP.u(true);
        }
    }

    @Override // androidx.appcompat.app.f
    public void x(Bundle bundle) {
    }

    boolean x0(int i2, KeyEvent keyEvent) {
        androidx.appcompat.app.a aVarP = p();
        if (aVarP != null && aVarP.p(i2, keyEvent)) {
            return true;
        }
        u uVar = this.I;
        if (uVar != null && F0(uVar, keyEvent.getKeyCode(), keyEvent, 1)) {
            u uVar2 = this.I;
            if (uVar2 != null) {
                uVar2.n = true;
            }
            return true;
        }
        if (this.I == null) {
            u uVarJ0 = j0(0, true);
            G0(uVarJ0, keyEvent);
            boolean zF0 = F0(uVarJ0, keyEvent.getKeyCode(), keyEvent, 1);
            uVarJ0.m = false;
            if (zF0) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.app.f
    public void y() {
        this.M = true;
        e();
    }

    boolean y0(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            boolean z = this.J;
            this.J = false;
            u uVarJ0 = j0(0, false);
            if (uVarJ0 != null && uVarJ0.o) {
                if (!z) {
                    U(uVarJ0, true);
                }
                return true;
            }
            if (u0()) {
                return true;
            }
        } else if (i2 == 82) {
            z0(0, keyEvent);
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.app.f
    public void z() {
        this.M = false;
        androidx.appcompat.app.a aVarP = p();
        if (aVarP != null) {
            aVarP.u(false);
        }
    }

    g(Dialog dialog, androidx.appcompat.app.e eVar) {
        this(dialog.getContext(), dialog.getWindow(), eVar, dialog);
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    private g(Context context, Window window, androidx.appcompat.app.e eVar, Object obj) {
        Integer num;
        androidx.appcompat.app.d dVarN0;
        this.t = null;
        this.u = true;
        this.O = -100;
        this.W = new b();
        this.f = context;
        this.i = eVar;
        this.e = obj;
        if (this.O == -100 && (obj instanceof Dialog) && (dVarN0 = N0()) != null) {
            this.O = dVarN0.getDelegate().n();
        }
        if (this.O == -100 && (num = c0.get(this.e.getClass().getName())) != null) {
            this.O = num.intValue();
            c0.remove(this.e.getClass().getName());
        }
        if (window != null) {
            O(window);
        }
        androidx.appcompat.widget.i.h();
    }

    class o extends c.a.o.i {
        o(Window.Callback callback) {
            super(callback);
        }

        final ActionMode b(ActionMode.Callback callback) {
            f.a aVar = new f.a(g.this.f, callback);
            c.a.o.b bVarL = g.this.L(aVar);
            if (bVarL != null) {
                return aVar.e(bVarL);
            }
            return null;
        }

        @Override // c.a.o.i, android.view.Window.Callback
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return g.this.Z(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // c.a.o.i, android.view.Window.Callback
        public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            return super.dispatchKeyShortcutEvent(keyEvent) || g.this.x0(keyEvent.getKeyCode(), keyEvent);
        }

        @Override // c.a.o.i, android.view.Window.Callback
        public void onContentChanged() {
        }

        @Override // c.a.o.i, android.view.Window.Callback
        public boolean onCreatePanelMenu(int i, Menu menu) {
            if (i != 0 || (menu instanceof androidx.appcompat.view.menu.g)) {
                return super.onCreatePanelMenu(i, menu);
            }
            return false;
        }

        @Override // c.a.o.i, android.view.Window.Callback
        public boolean onMenuOpened(int i, Menu menu) {
            super.onMenuOpened(i, menu);
            g.this.A0(i);
            return true;
        }

        @Override // c.a.o.i, android.view.Window.Callback
        public void onPanelClosed(int i, Menu menu) {
            super.onPanelClosed(i, menu);
            g.this.B0(i);
        }

        @Override // c.a.o.i, android.view.Window.Callback
        public boolean onPreparePanel(int i, View view, Menu menu) {
            androidx.appcompat.view.menu.g gVar = menu instanceof androidx.appcompat.view.menu.g ? (androidx.appcompat.view.menu.g) menu : null;
            if (i == 0 && gVar == null) {
                return false;
            }
            if (gVar != null) {
                gVar.a0(true);
            }
            boolean zOnPreparePanel = super.onPreparePanel(i, view, menu);
            if (gVar != null) {
                gVar.a0(false);
            }
            return zOnPreparePanel;
        }

        @Override // c.a.o.i, android.view.Window.Callback
        public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i) {
            androidx.appcompat.view.menu.g gVar;
            u uVarJ0 = g.this.j0(0, true);
            if (uVarJ0 == null || (gVar = uVarJ0.j) == null) {
                super.onProvideKeyboardShortcuts(list, menu, i);
            } else {
                super.onProvideKeyboardShortcuts(list, gVar, i);
            }
        }

        @Override // c.a.o.i, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            if (Build.VERSION.SDK_INT >= 23) {
                return null;
            }
            return g.this.s0() ? b(callback) : super.onWindowStartingActionMode(callback);
        }

        @Override // c.a.o.i, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
            if (g.this.s0() && i == 0) {
                return b(callback);
            }
            return super.onWindowStartingActionMode(callback, i);
        }
    }
}
