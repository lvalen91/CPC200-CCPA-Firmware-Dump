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
import androidx.appcompat.view.menu.C0099e;
import androidx.appcompat.view.menu.C0101g;
import androidx.appcompat.view.menu.InterfaceC0107m;
import androidx.appcompat.view.menu.InterfaceC0108n;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.C0154a1;
import androidx.appcompat.widget.C0170i;
import androidx.appcompat.widget.C0195u0;
import androidx.appcompat.widget.C0205z0;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.InterfaceC0153a0;
import androidx.appcompat.widget.InterfaceC0163e0;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.ViewStubCompat;
import androidx.core.app.C0231a;
import androidx.core.app.C0237g;
import androidx.core.content.C0242a;
import androidx.core.content.p003c.C0249f;
import androidx.core.view.C0261b0;
import androidx.core.view.C0265d0;
import androidx.core.view.C0273f;
import androidx.core.view.C0292v;
import androidx.core.view.C0296z;
import androidx.core.view.InterfaceC0287q;
import androidx.core.view.LayoutInflaterCompat;
import androidx.core.widget.C0307h;
import androidx.lifecycle.AbstractC0392f;
import androidx.lifecycle.InterfaceC0396j;
import com.yalantis.ucrop.view.CropImageView;
import java.lang.Thread;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import p016c.p017a.C0493a;
import p016c.p017a.C0495c;
import p016c.p017a.C0498f;
import p016c.p017a.C0499g;
import p016c.p017a.C0501i;
import p016c.p017a.C0502j;
import p016c.p017a.p018k.p019a.C0503a;
import p016c.p017a.p024o.AbstractC0512b;
import p016c.p017a.p024o.C0514d;
import p016c.p017a.p024o.C0515e;
import p016c.p017a.p024o.C0516f;
import p016c.p017a.p024o.C0517g;
import p016c.p017a.p024o.WindowCallbackC0519i;
import p016c.p032d.C0540g;
import p016c.p041g.p049j.C0621c;

/* JADX INFO: renamed from: androidx.appcompat.app.g */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class LayoutInflaterFactory2C0084g extends AbstractC0083f implements C0101g.a, LayoutInflater.Factory2 {

    /* JADX INFO: renamed from: c0 */
    private static final C0540g<String, Integer> f338c0 = new C0540g<>();

    /* JADX INFO: renamed from: d0 */
    private static final boolean f339d0;

    /* JADX INFO: renamed from: e0 */
    private static final int[] f340e0;

    /* JADX INFO: renamed from: f0 */
    private static final boolean f341f0;

    /* JADX INFO: renamed from: g0 */
    private static final boolean f342g0;

    /* JADX INFO: renamed from: h0 */
    private static boolean f343h0;

    /* JADX INFO: renamed from: A */
    private boolean f344A;

    /* JADX INFO: renamed from: B */
    boolean f345B;

    /* JADX INFO: renamed from: C */
    boolean f346C;

    /* JADX INFO: renamed from: D */
    boolean f347D;

    /* JADX INFO: renamed from: E */
    boolean f348E;

    /* JADX INFO: renamed from: F */
    boolean f349F;

    /* JADX INFO: renamed from: G */
    private boolean f350G;

    /* JADX INFO: renamed from: H */
    private u[] f351H;

    /* JADX INFO: renamed from: I */
    private u f352I;

    /* JADX INFO: renamed from: J */
    private boolean f353J;

    /* JADX INFO: renamed from: K */
    private boolean f354K;

    /* JADX INFO: renamed from: L */
    private boolean f355L;

    /* JADX INFO: renamed from: M */
    private boolean f356M;

    /* JADX INFO: renamed from: N */
    boolean f357N;

    /* JADX INFO: renamed from: O */
    private int f358O;

    /* JADX INFO: renamed from: P */
    private int f359P;

    /* JADX INFO: renamed from: Q */
    private boolean f360Q;

    /* JADX INFO: renamed from: R */
    private boolean f361R;

    /* JADX INFO: renamed from: S */
    private q f362S;

    /* JADX INFO: renamed from: T */
    private q f363T;

    /* JADX INFO: renamed from: U */
    boolean f364U;

    /* JADX INFO: renamed from: V */
    int f365V;

    /* JADX INFO: renamed from: W */
    private final Runnable f366W;

    /* JADX INFO: renamed from: X */
    private boolean f367X;

    /* JADX INFO: renamed from: Y */
    private Rect f368Y;

    /* JADX INFO: renamed from: Z */
    private Rect f369Z;

    /* JADX INFO: renamed from: a0 */
    private C0086i f370a0;

    /* JADX INFO: renamed from: b0 */
    private C0087j f371b0;

    /* JADX INFO: renamed from: e */
    final Object f372e;

    /* JADX INFO: renamed from: f */
    final Context f373f;

    /* JADX INFO: renamed from: g */
    Window f374g;

    /* JADX INFO: renamed from: h */
    private o f375h;

    /* JADX INFO: renamed from: i */
    final InterfaceC0082e f376i;

    /* JADX INFO: renamed from: j */
    AbstractC0078a f377j;

    /* JADX INFO: renamed from: k */
    MenuInflater f378k;

    /* JADX INFO: renamed from: l */
    private CharSequence f379l;

    /* JADX INFO: renamed from: m */
    private InterfaceC0153a0 f380m;

    /* JADX INFO: renamed from: n */
    private i f381n;

    /* JADX INFO: renamed from: o */
    private v f382o;

    /* JADX INFO: renamed from: p */
    AbstractC0512b f383p;

    /* JADX INFO: renamed from: q */
    ActionBarContextView f384q;

    /* JADX INFO: renamed from: r */
    PopupWindow f385r;

    /* JADX INFO: renamed from: s */
    Runnable f386s;

    /* JADX INFO: renamed from: t */
    C0296z f387t;

    /* JADX INFO: renamed from: u */
    private boolean f388u;

    /* JADX INFO: renamed from: v */
    private boolean f389v;

    /* JADX INFO: renamed from: w */
    ViewGroup f390w;

    /* JADX INFO: renamed from: x */
    private TextView f391x;

    /* JADX INFO: renamed from: y */
    private View f392y;

    /* JADX INFO: renamed from: z */
    private boolean f393z;

    /* JADX INFO: renamed from: androidx.appcompat.app.g$a */
    class a implements Thread.UncaughtExceptionHandler {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ Thread.UncaughtExceptionHandler f394a;

        a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.f394a = uncaughtExceptionHandler;
        }

        /* JADX INFO: renamed from: a */
        private boolean m526a(Throwable th) {
            String message;
            if (!(th instanceof Resources.NotFoundException) || (message = th.getMessage()) == null) {
                return false;
            }
            return message.contains("drawable") || message.contains("Drawable");
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            if (!m526a(th)) {
                this.f394a.uncaughtException(thread, th);
                return;
            }
            Resources.NotFoundException notFoundException = new Resources.NotFoundException(th.getMessage() + ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.");
            notFoundException.initCause(th.getCause());
            notFoundException.setStackTrace(th.getStackTrace());
            this.f394a.uncaughtException(thread, notFoundException);
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.g$b */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LayoutInflaterFactory2C0084g layoutInflaterFactory2C0084g = LayoutInflaterFactory2C0084g.this;
            if ((layoutInflaterFactory2C0084g.f365V & 1) != 0) {
                layoutInflaterFactory2C0084g.m512a0(0);
            }
            LayoutInflaterFactory2C0084g layoutInflaterFactory2C0084g2 = LayoutInflaterFactory2C0084g.this;
            if ((layoutInflaterFactory2C0084g2.f365V & 4096) != 0) {
                layoutInflaterFactory2C0084g2.m512a0(108);
            }
            LayoutInflaterFactory2C0084g layoutInflaterFactory2C0084g3 = LayoutInflaterFactory2C0084g.this;
            layoutInflaterFactory2C0084g3.f364U = false;
            layoutInflaterFactory2C0084g3.f365V = 0;
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.g$c */
    class c implements InterfaceC0287q {
        c() {
        }

        @Override // androidx.core.view.InterfaceC0287q
        /* JADX INFO: renamed from: a */
        public C0265d0 mo527a(View view, C0265d0 c0265d0) {
            int iM1842i = c0265d0.m1842i();
            int iM504Q0 = LayoutInflaterFactory2C0084g.this.m504Q0(c0265d0, null);
            if (iM1842i != iM504Q0) {
                c0265d0 = c0265d0.m1845m(c0265d0.m1840g(), iM504Q0, c0265d0.m1841h(), c0265d0.m1839f());
            }
            return C0292v.m2077a0(view, c0265d0);
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.g$d */
    class d implements InterfaceC0163e0.a {
        d() {
        }

        @Override // androidx.appcompat.widget.InterfaceC0163e0.a
        /* JADX INFO: renamed from: a */
        public void mo528a(Rect rect) {
            rect.top = LayoutInflaterFactory2C0084g.this.m504Q0(null, rect);
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.g$e */
    class e implements ContentFrameLayout.InterfaceC0125a {
        e() {
        }

        @Override // androidx.appcompat.widget.ContentFrameLayout.InterfaceC0125a
        /* JADX INFO: renamed from: a */
        public void mo529a() {
        }

        @Override // androidx.appcompat.widget.ContentFrameLayout.InterfaceC0125a
        public void onDetachedFromWindow() {
            LayoutInflaterFactory2C0084g.this.m509Y();
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.g$f */
    class f implements Runnable {

        /* JADX INFO: renamed from: androidx.appcompat.app.g$f$a */
        class a extends C0261b0 {
            a() {
            }

            @Override // androidx.core.view.InterfaceC0259a0
            /* JADX INFO: renamed from: a */
            public void mo530a(View view) {
                LayoutInflaterFactory2C0084g.this.f384q.setAlpha(1.0f);
                LayoutInflaterFactory2C0084g.this.f387t.m2184f(null);
                LayoutInflaterFactory2C0084g.this.f387t = null;
            }

            @Override // androidx.core.view.C0261b0, androidx.core.view.InterfaceC0259a0
            /* JADX INFO: renamed from: b */
            public void mo531b(View view) {
                LayoutInflaterFactory2C0084g.this.f384q.setVisibility(0);
            }
        }

        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LayoutInflaterFactory2C0084g layoutInflaterFactory2C0084g = LayoutInflaterFactory2C0084g.this;
            layoutInflaterFactory2C0084g.f385r.showAtLocation(layoutInflaterFactory2C0084g.f384q, 55, 0, 0);
            LayoutInflaterFactory2C0084g.this.m514b0();
            if (!LayoutInflaterFactory2C0084g.this.m501J0()) {
                LayoutInflaterFactory2C0084g.this.f384q.setAlpha(1.0f);
                LayoutInflaterFactory2C0084g.this.f384q.setVisibility(0);
                return;
            }
            LayoutInflaterFactory2C0084g.this.f384q.setAlpha(CropImageView.DEFAULT_ASPECT_RATIO);
            LayoutInflaterFactory2C0084g layoutInflaterFactory2C0084g2 = LayoutInflaterFactory2C0084g.this;
            C0296z c0296zM2082d = C0292v.m2082d(layoutInflaterFactory2C0084g2.f384q);
            c0296zM2082d.m2179a(1.0f);
            layoutInflaterFactory2C0084g2.f387t = c0296zM2082d;
            LayoutInflaterFactory2C0084g.this.f387t.m2184f(new a());
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.g$g */
    class g extends C0261b0 {
        g() {
        }

        @Override // androidx.core.view.InterfaceC0259a0
        /* JADX INFO: renamed from: a */
        public void mo530a(View view) {
            LayoutInflaterFactory2C0084g.this.f384q.setAlpha(1.0f);
            LayoutInflaterFactory2C0084g.this.f387t.m2184f(null);
            LayoutInflaterFactory2C0084g.this.f387t = null;
        }

        @Override // androidx.core.view.C0261b0, androidx.core.view.InterfaceC0259a0
        /* JADX INFO: renamed from: b */
        public void mo531b(View view) {
            LayoutInflaterFactory2C0084g.this.f384q.setVisibility(0);
            LayoutInflaterFactory2C0084g.this.f384q.sendAccessibilityEvent(32);
            if (LayoutInflaterFactory2C0084g.this.f384q.getParent() instanceof View) {
                C0292v.m2099l0((View) LayoutInflaterFactory2C0084g.this.f384q.getParent());
            }
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.g$h */
    private class h implements InterfaceC0079b {
        h(LayoutInflaterFactory2C0084g layoutInflaterFactory2C0084g) {
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.g$i */
    private final class i implements InterfaceC0107m.a {
        i() {
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0107m.a
        /* JADX INFO: renamed from: a */
        public void mo532a(C0101g c0101g, boolean z) {
            LayoutInflaterFactory2C0084g.this.m505R(c0101g);
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0107m.a
        /* JADX INFO: renamed from: b */
        public boolean mo533b(C0101g c0101g) {
            Window.Callback callbackM519l0 = LayoutInflaterFactory2C0084g.this.m519l0();
            if (callbackM519l0 == null) {
                return true;
            }
            callbackM519l0.onMenuOpened(108, c0101g);
            return true;
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.g$j */
    class j implements AbstractC0512b.a {

        /* JADX INFO: renamed from: a */
        private AbstractC0512b.a f403a;

        /* JADX INFO: renamed from: androidx.appcompat.app.g$j$a */
        class a extends C0261b0 {
            a() {
            }

            @Override // androidx.core.view.InterfaceC0259a0
            /* JADX INFO: renamed from: a */
            public void mo530a(View view) {
                LayoutInflaterFactory2C0084g.this.f384q.setVisibility(8);
                LayoutInflaterFactory2C0084g layoutInflaterFactory2C0084g = LayoutInflaterFactory2C0084g.this;
                PopupWindow popupWindow = layoutInflaterFactory2C0084g.f385r;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (layoutInflaterFactory2C0084g.f384q.getParent() instanceof View) {
                    C0292v.m2099l0((View) LayoutInflaterFactory2C0084g.this.f384q.getParent());
                }
                LayoutInflaterFactory2C0084g.this.f384q.m841k();
                LayoutInflaterFactory2C0084g.this.f387t.m2184f(null);
                LayoutInflaterFactory2C0084g layoutInflaterFactory2C0084g2 = LayoutInflaterFactory2C0084g.this;
                layoutInflaterFactory2C0084g2.f387t = null;
                C0292v.m2099l0(layoutInflaterFactory2C0084g2.f390w);
            }
        }

        public j(AbstractC0512b.a aVar) {
            this.f403a = aVar;
        }

        @Override // p016c.p017a.p024o.AbstractC0512b.a
        /* JADX INFO: renamed from: a */
        public boolean mo534a(AbstractC0512b abstractC0512b, Menu menu) {
            C0292v.m2099l0(LayoutInflaterFactory2C0084g.this.f390w);
            return this.f403a.mo534a(abstractC0512b, menu);
        }

        @Override // p016c.p017a.p024o.AbstractC0512b.a
        /* JADX INFO: renamed from: b */
        public boolean mo535b(AbstractC0512b abstractC0512b, MenuItem menuItem) {
            return this.f403a.mo535b(abstractC0512b, menuItem);
        }

        @Override // p016c.p017a.p024o.AbstractC0512b.a
        /* JADX INFO: renamed from: c */
        public boolean mo536c(AbstractC0512b abstractC0512b, Menu menu) {
            return this.f403a.mo536c(abstractC0512b, menu);
        }

        @Override // p016c.p017a.p024o.AbstractC0512b.a
        /* JADX INFO: renamed from: d */
        public void mo537d(AbstractC0512b abstractC0512b) {
            this.f403a.mo537d(abstractC0512b);
            LayoutInflaterFactory2C0084g layoutInflaterFactory2C0084g = LayoutInflaterFactory2C0084g.this;
            if (layoutInflaterFactory2C0084g.f385r != null) {
                layoutInflaterFactory2C0084g.f374g.getDecorView().removeCallbacks(LayoutInflaterFactory2C0084g.this.f386s);
            }
            LayoutInflaterFactory2C0084g layoutInflaterFactory2C0084g2 = LayoutInflaterFactory2C0084g.this;
            if (layoutInflaterFactory2C0084g2.f384q != null) {
                layoutInflaterFactory2C0084g2.m514b0();
                LayoutInflaterFactory2C0084g layoutInflaterFactory2C0084g3 = LayoutInflaterFactory2C0084g.this;
                C0296z c0296zM2082d = C0292v.m2082d(layoutInflaterFactory2C0084g3.f384q);
                c0296zM2082d.m2179a(CropImageView.DEFAULT_ASPECT_RATIO);
                layoutInflaterFactory2C0084g3.f387t = c0296zM2082d;
                LayoutInflaterFactory2C0084g.this.f387t.m2184f(new a());
            }
            LayoutInflaterFactory2C0084g layoutInflaterFactory2C0084g4 = LayoutInflaterFactory2C0084g.this;
            InterfaceC0082e interfaceC0082e = layoutInflaterFactory2C0084g4.f376i;
            if (interfaceC0082e != null) {
                interfaceC0082e.onSupportActionModeFinished(layoutInflaterFactory2C0084g4.f383p);
            }
            LayoutInflaterFactory2C0084g layoutInflaterFactory2C0084g5 = LayoutInflaterFactory2C0084g.this;
            layoutInflaterFactory2C0084g5.f383p = null;
            C0292v.m2099l0(layoutInflaterFactory2C0084g5.f390w);
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.g$k */
    static class k {
        /* JADX INFO: renamed from: a */
        static Context m538a(Context context, Configuration configuration) {
            return context.createConfigurationContext(configuration);
        }

        /* JADX INFO: renamed from: b */
        static void m539b(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            int i = configuration.densityDpi;
            int i2 = configuration2.densityDpi;
            if (i != i2) {
                configuration3.densityDpi = i2;
            }
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.g$l */
    static class l {
        /* JADX INFO: renamed from: a */
        static boolean m540a(PowerManager powerManager) {
            return powerManager.isPowerSaveMode();
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.g$m */
    static class m {
        /* JADX INFO: renamed from: a */
        static void m541a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            LocaleList locales = configuration.getLocales();
            LocaleList locales2 = configuration2.getLocales();
            if (locales.equals(locales2)) {
                return;
            }
            configuration3.setLocales(locales2);
            configuration3.locale = configuration2.locale;
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.g$n */
    static class n {
        /* JADX INFO: renamed from: a */
        static void m542a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
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

    /* JADX INFO: renamed from: androidx.appcompat.app.g$p */
    private class p extends q {

        /* JADX INFO: renamed from: c */
        private final PowerManager f407c;

        p(Context context) {
            super();
            this.f407c = (PowerManager) context.getApplicationContext().getSystemService("power");
        }

        @Override // androidx.appcompat.app.LayoutInflaterFactory2C0084g.q
        /* JADX INFO: renamed from: b */
        IntentFilter mo544b() {
            if (Build.VERSION.SDK_INT < 21) {
                return null;
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.LayoutInflaterFactory2C0084g.q
        /* JADX INFO: renamed from: c */
        public int mo545c() {
            return (Build.VERSION.SDK_INT < 21 || !l.m540a(this.f407c)) ? 1 : 2;
        }

        @Override // androidx.appcompat.app.LayoutInflaterFactory2C0084g.q
        /* JADX INFO: renamed from: d */
        public void mo546d() {
            LayoutInflaterFactory2C0084g.this.mo448e();
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.g$q */
    abstract class q {

        /* JADX INFO: renamed from: a */
        private BroadcastReceiver f409a;

        /* JADX INFO: renamed from: androidx.appcompat.app.g$q$a */
        class a extends BroadcastReceiver {
            a() {
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                q.this.mo546d();
            }
        }

        q() {
        }

        /* JADX INFO: renamed from: a */
        void m547a() {
            BroadcastReceiver broadcastReceiver = this.f409a;
            if (broadcastReceiver != null) {
                try {
                    LayoutInflaterFactory2C0084g.this.f373f.unregisterReceiver(broadcastReceiver);
                } catch (IllegalArgumentException unused) {
                }
                this.f409a = null;
            }
        }

        /* JADX INFO: renamed from: b */
        abstract IntentFilter mo544b();

        /* JADX INFO: renamed from: c */
        abstract int mo545c();

        /* JADX INFO: renamed from: d */
        abstract void mo546d();

        /* JADX INFO: renamed from: e */
        void m548e() {
            m547a();
            IntentFilter intentFilterMo544b = mo544b();
            if (intentFilterMo544b == null || intentFilterMo544b.countActions() == 0) {
                return;
            }
            if (this.f409a == null) {
                this.f409a = new a();
            }
            LayoutInflaterFactory2C0084g.this.f373f.registerReceiver(this.f409a, intentFilterMo544b);
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.g$r */
    private class r extends q {

        /* JADX INFO: renamed from: c */
        private final C0091n f412c;

        r(C0091n c0091n) {
            super();
            this.f412c = c0091n;
        }

        @Override // androidx.appcompat.app.LayoutInflaterFactory2C0084g.q
        /* JADX INFO: renamed from: b */
        IntentFilter mo544b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.LayoutInflaterFactory2C0084g.q
        /* JADX INFO: renamed from: c */
        public int mo545c() {
            return this.f412c.m601d() ? 2 : 1;
        }

        @Override // androidx.appcompat.app.LayoutInflaterFactory2C0084g.q
        /* JADX INFO: renamed from: d */
        public void mo546d() {
            LayoutInflaterFactory2C0084g.this.mo448e();
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.g$s */
    private static class s {
        /* JADX INFO: renamed from: a */
        static void m549a(ContextThemeWrapper contextThemeWrapper, Configuration configuration) {
            contextThemeWrapper.applyOverrideConfiguration(configuration);
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.g$t */
    private class t extends ContentFrameLayout {
        public t(Context context) {
            super(context);
        }

        /* JADX INFO: renamed from: c */
        private boolean m550c(int i, int i2) {
            return i < -5 || i2 < -5 || i > getWidth() + 5 || i2 > getHeight() + 5;
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return LayoutInflaterFactory2C0084g.this.m510Z(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0 || !m550c((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return super.onInterceptTouchEvent(motionEvent);
            }
            LayoutInflaterFactory2C0084g.this.m506T(0);
            return true;
        }

        @Override // android.view.View
        public void setBackgroundResource(int i) {
            setBackgroundDrawable(C0503a.m4047d(getContext(), i));
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.g$u */
    protected static final class u {

        /* JADX INFO: renamed from: a */
        int f415a;

        /* JADX INFO: renamed from: b */
        int f416b;

        /* JADX INFO: renamed from: c */
        int f417c;

        /* JADX INFO: renamed from: d */
        int f418d;

        /* JADX INFO: renamed from: e */
        int f419e;

        /* JADX INFO: renamed from: f */
        int f420f;

        /* JADX INFO: renamed from: g */
        ViewGroup f421g;

        /* JADX INFO: renamed from: h */
        View f422h;

        /* JADX INFO: renamed from: i */
        View f423i;

        /* JADX INFO: renamed from: j */
        C0101g f424j;

        /* JADX INFO: renamed from: k */
        C0099e f425k;

        /* JADX INFO: renamed from: l */
        Context f426l;

        /* JADX INFO: renamed from: m */
        boolean f427m;

        /* JADX INFO: renamed from: n */
        boolean f428n;

        /* JADX INFO: renamed from: o */
        boolean f429o;

        /* JADX INFO: renamed from: p */
        public boolean f430p;

        /* JADX INFO: renamed from: q */
        boolean f431q = false;

        /* JADX INFO: renamed from: r */
        boolean f432r;

        /* JADX INFO: renamed from: s */
        Bundle f433s;

        u(int i) {
            this.f415a = i;
        }

        /* JADX INFO: renamed from: a */
        InterfaceC0108n m551a(InterfaceC0107m.a aVar) {
            if (this.f424j == null) {
                return null;
            }
            if (this.f425k == null) {
                C0099e c0099e = new C0099e(this.f426l, C0499g.abc_list_menu_item_layout);
                this.f425k = c0099e;
                c0099e.mo672h(aVar);
                this.f424j.m751b(this.f425k);
            }
            return this.f425k.m711g(this.f421g);
        }

        /* JADX INFO: renamed from: b */
        public boolean m552b() {
            if (this.f422h == null) {
                return false;
            }
            return this.f423i != null || this.f425k.m710b().getCount() > 0;
        }

        /* JADX INFO: renamed from: c */
        void m553c(C0101g c0101g) {
            C0099e c0099e;
            C0101g c0101g2 = this.f424j;
            if (c0101g == c0101g2) {
                return;
            }
            if (c0101g2 != null) {
                c0101g2.m738O(this.f425k);
            }
            this.f424j = c0101g;
            if (c0101g == null || (c0099e = this.f425k) == null) {
                return;
            }
            c0101g.m751b(c0099e);
        }

        /* JADX INFO: renamed from: d */
        void m554d(Context context) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme themeNewTheme = context.getResources().newTheme();
            themeNewTheme.setTo(context.getTheme());
            themeNewTheme.resolveAttribute(C0493a.actionBarPopupTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                themeNewTheme.applyStyle(i, true);
            }
            themeNewTheme.resolveAttribute(C0493a.panelMenuListTheme, typedValue, true);
            int i2 = typedValue.resourceId;
            if (i2 != 0) {
                themeNewTheme.applyStyle(i2, true);
            } else {
                themeNewTheme.applyStyle(C0501i.Theme_AppCompat_CompactMenu, true);
            }
            C0514d c0514d = new C0514d(context, 0);
            c0514d.getTheme().setTo(themeNewTheme);
            this.f426l = c0514d;
            TypedArray typedArrayObtainStyledAttributes = c0514d.obtainStyledAttributes(C0502j.AppCompatTheme);
            this.f416b = typedArrayObtainStyledAttributes.getResourceId(C0502j.AppCompatTheme_panelBackground, 0);
            this.f420f = typedArrayObtainStyledAttributes.getResourceId(C0502j.AppCompatTheme_android_windowAnimationStyle, 0);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.g$v */
    private final class v implements InterfaceC0107m.a {
        v() {
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0107m.a
        /* JADX INFO: renamed from: a */
        public void mo532a(C0101g c0101g, boolean z) {
            C0101g c0101gMo728D = c0101g.mo728D();
            boolean z2 = c0101gMo728D != c0101g;
            LayoutInflaterFactory2C0084g layoutInflaterFactory2C0084g = LayoutInflaterFactory2C0084g.this;
            if (z2) {
                c0101g = c0101gMo728D;
            }
            u uVarM515e0 = layoutInflaterFactory2C0084g.m515e0(c0101g);
            if (uVarM515e0 != null) {
                if (!z2) {
                    LayoutInflaterFactory2C0084g.this.m507U(uVarM515e0, z);
                } else {
                    LayoutInflaterFactory2C0084g.this.m503Q(uVarM515e0.f415a, uVarM515e0, c0101gMo728D);
                    LayoutInflaterFactory2C0084g.this.m507U(uVarM515e0, true);
                }
            }
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0107m.a
        /* JADX INFO: renamed from: b */
        public boolean mo533b(C0101g c0101g) {
            Window.Callback callbackM519l0;
            if (c0101g != c0101g.mo728D()) {
                return true;
            }
            LayoutInflaterFactory2C0084g layoutInflaterFactory2C0084g = LayoutInflaterFactory2C0084g.this;
            if (!layoutInflaterFactory2C0084g.f345B || (callbackM519l0 = layoutInflaterFactory2C0084g.m519l0()) == null || LayoutInflaterFactory2C0084g.this.f357N) {
                return true;
            }
            callbackM519l0.onMenuOpened(108, c0101g);
            return true;
        }
    }

    static {
        f339d0 = Build.VERSION.SDK_INT < 21;
        f340e0 = new int[]{R.attr.windowBackground};
        f341f0 = !"robolectric".equals(Build.FINGERPRINT);
        f342g0 = Build.VERSION.SDK_INT >= 17;
        if (!f339d0 || f343h0) {
            return;
        }
        Thread.setDefaultUncaughtExceptionHandler(new a(Thread.getDefaultUncaughtExceptionHandler()));
        f343h0 = true;
    }

    LayoutInflaterFactory2C0084g(Activity activity, InterfaceC0082e interfaceC0082e) {
        this(activity, null, interfaceC0082e, activity);
    }

    /* JADX INFO: renamed from: D0 */
    private void m466D0(u uVar, KeyEvent keyEvent) {
        int i2;
        ViewGroup.LayoutParams layoutParams;
        if (uVar.f429o || this.f357N) {
            return;
        }
        if (uVar.f415a == 0) {
            if ((this.f373f.getResources().getConfiguration().screenLayout & 15) == 4) {
                return;
            }
        }
        Window.Callback callbackM519l0 = m519l0();
        if (callbackM519l0 != null && !callbackM519l0.onMenuOpened(uVar.f415a, uVar.f424j)) {
            m507U(uVar, true);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f373f.getSystemService("window");
        if (windowManager != null && m468G0(uVar, keyEvent)) {
            if (uVar.f421g != null && !uVar.f431q) {
                View view = uVar.f423i;
                if (view != null && (layoutParams = view.getLayoutParams()) != null && layoutParams.width == -1) {
                    i2 = -1;
                }
                uVar.f428n = false;
                WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams(i2, -2, uVar.f418d, uVar.f419e, 1002, 8519680, -3);
                layoutParams2.gravity = uVar.f417c;
                layoutParams2.windowAnimations = uVar.f420f;
                windowManager.addView(uVar.f421g, layoutParams2);
                uVar.f429o = true;
            }
            ViewGroup viewGroup = uVar.f421g;
            if (viewGroup == null) {
                if (!m491o0(uVar) || uVar.f421g == null) {
                    return;
                }
            } else if (uVar.f431q && viewGroup.getChildCount() > 0) {
                uVar.f421g.removeAllViews();
            }
            if (!m490n0(uVar) || !uVar.m552b()) {
                uVar.f431q = true;
                return;
            }
            ViewGroup.LayoutParams layoutParams3 = uVar.f422h.getLayoutParams();
            if (layoutParams3 == null) {
                layoutParams3 = new ViewGroup.LayoutParams(-2, -2);
            }
            uVar.f421g.setBackgroundResource(uVar.f416b);
            ViewParent parent = uVar.f422h.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(uVar.f422h);
            }
            uVar.f421g.addView(uVar.f422h, layoutParams3);
            if (!uVar.f422h.hasFocus()) {
                uVar.f422h.requestFocus();
            }
            i2 = -2;
            uVar.f428n = false;
            WindowManager.LayoutParams layoutParams22 = new WindowManager.LayoutParams(i2, -2, uVar.f418d, uVar.f419e, 1002, 8519680, -3);
            layoutParams22.gravity = uVar.f417c;
            layoutParams22.windowAnimations = uVar.f420f;
            windowManager.addView(uVar.f421g, layoutParams22);
            uVar.f429o = true;
        }
    }

    /* JADX INFO: renamed from: F0 */
    private boolean m467F0(u uVar, int i2, KeyEvent keyEvent, int i3) {
        C0101g c0101g;
        boolean zPerformShortcut = false;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((uVar.f427m || m468G0(uVar, keyEvent)) && (c0101g = uVar.f424j) != null) {
            zPerformShortcut = c0101g.performShortcut(i2, keyEvent, i3);
        }
        if (zPerformShortcut && (i3 & 1) == 0 && this.f380m == null) {
            m507U(uVar, true);
        }
        return zPerformShortcut;
    }

    /* JADX INFO: renamed from: G0 */
    private boolean m468G0(u uVar, KeyEvent keyEvent) {
        InterfaceC0153a0 interfaceC0153a0;
        InterfaceC0153a0 interfaceC0153a02;
        InterfaceC0153a0 interfaceC0153a03;
        if (this.f357N) {
            return false;
        }
        if (uVar.f427m) {
            return true;
        }
        u uVar2 = this.f352I;
        if (uVar2 != null && uVar2 != uVar) {
            m507U(uVar2, false);
        }
        Window.Callback callbackM519l0 = m519l0();
        if (callbackM519l0 != null) {
            uVar.f423i = callbackM519l0.onCreatePanelView(uVar.f415a);
        }
        int i2 = uVar.f415a;
        boolean z = i2 == 0 || i2 == 108;
        if (z && (interfaceC0153a03 = this.f380m) != null) {
            interfaceC0153a03.mo856f();
        }
        if (uVar.f423i == null && (!z || !(m500E0() instanceof C0089l))) {
            if (uVar.f424j == null || uVar.f432r) {
                if (uVar.f424j == null && (!m492p0(uVar) || uVar.f424j == null)) {
                    return false;
                }
                if (z && this.f380m != null) {
                    if (this.f381n == null) {
                        this.f381n = new i();
                    }
                    this.f380m.mo851a(uVar.f424j, this.f381n);
                }
                uVar.f424j.m755d0();
                if (!callbackM519l0.onCreatePanelMenu(uVar.f415a, uVar.f424j)) {
                    uVar.m553c(null);
                    if (z && (interfaceC0153a0 = this.f380m) != null) {
                        interfaceC0153a0.mo851a(null, this.f381n);
                    }
                    return false;
                }
                uVar.f432r = false;
            }
            uVar.f424j.m755d0();
            Bundle bundle = uVar.f433s;
            if (bundle != null) {
                uVar.f424j.m739P(bundle);
                uVar.f433s = null;
            }
            if (!callbackM519l0.onPreparePanel(0, uVar.f423i, uVar.f424j)) {
                if (z && (interfaceC0153a02 = this.f380m) != null) {
                    interfaceC0153a02.mo851a(null, this.f381n);
                }
                uVar.f424j.m753c0();
                return false;
            }
            boolean z2 = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            uVar.f430p = z2;
            uVar.f424j.setQwertyMode(z2);
            uVar.f424j.m753c0();
        }
        uVar.f427m = true;
        uVar.f428n = false;
        this.f352I = uVar;
        return true;
    }

    /* JADX INFO: renamed from: H0 */
    private void m469H0(boolean z) {
        InterfaceC0153a0 interfaceC0153a0 = this.f380m;
        if (interfaceC0153a0 == null || !interfaceC0153a0.mo857g() || (ViewConfiguration.get(this.f373f).hasPermanentMenuKey() && !this.f380m.mo852b())) {
            u uVarM517j0 = m517j0(0, true);
            uVarM517j0.f431q = true;
            m507U(uVarM517j0, false);
            m466D0(uVarM517j0, null);
            return;
        }
        Window.Callback callbackM519l0 = m519l0();
        if (this.f380m.mo853c() && z) {
            this.f380m.mo854d();
            if (this.f357N) {
                return;
            }
            callbackM519l0.onPanelClosed(108, m517j0(0, true).f424j);
            return;
        }
        if (callbackM519l0 == null || this.f357N) {
            return;
        }
        if (this.f364U && (this.f365V & 1) != 0) {
            this.f374g.getDecorView().removeCallbacks(this.f366W);
            this.f366W.run();
        }
        u uVarM517j02 = m517j0(0, true);
        C0101g c0101g = uVarM517j02.f424j;
        if (c0101g == null || uVarM517j02.f432r || !callbackM519l0.onPreparePanel(0, uVarM517j02.f423i, c0101g)) {
            return;
        }
        callbackM519l0.onMenuOpened(108, uVarM517j02.f424j);
        this.f380m.mo855e();
    }

    /* JADX INFO: renamed from: I0 */
    private int m470I0(int i2) {
        if (i2 == 8) {
            return 108;
        }
        if (i2 == 9) {
            return 109;
        }
        return i2;
    }

    /* JADX INFO: renamed from: K0 */
    private boolean m471K0(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        View decorView = this.f374g.getDecorView();
        while (viewParent != null) {
            if (viewParent == decorView || !(viewParent instanceof View) || C0292v.m2068S((View) viewParent)) {
                return false;
            }
            viewParent = viewParent.getParent();
        }
        return true;
    }

    /* JADX INFO: renamed from: M */
    private boolean m472M(boolean z) {
        if (this.f357N) {
            return false;
        }
        int iM478P = m478P();
        boolean zM477O0 = m477O0(m521t0(this.f373f, iM478P), z);
        if (iM478P == 0) {
            m488i0(this.f373f).m548e();
        } else {
            q qVar = this.f362S;
            if (qVar != null) {
                qVar.m547a();
            }
        }
        if (iM478P == 3) {
            m487h0(this.f373f).m548e();
        } else {
            q qVar2 = this.f363T;
            if (qVar2 != null) {
                qVar2.m547a();
            }
        }
        return zM477O0;
    }

    /* JADX INFO: renamed from: M0 */
    private void m473M0() {
        if (this.f389v) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    /* JADX INFO: renamed from: N */
    private void m474N() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.f390w.findViewById(R.id.content);
        View decorView = this.f374g.getDecorView();
        contentFrameLayout.m896b(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray typedArrayObtainStyledAttributes = this.f373f.obtainStyledAttributes(C0502j.AppCompatTheme);
        typedArrayObtainStyledAttributes.getValue(C0502j.AppCompatTheme_windowMinWidthMajor, contentFrameLayout.getMinWidthMajor());
        typedArrayObtainStyledAttributes.getValue(C0502j.AppCompatTheme_windowMinWidthMinor, contentFrameLayout.getMinWidthMinor());
        if (typedArrayObtainStyledAttributes.hasValue(C0502j.AppCompatTheme_windowFixedWidthMajor)) {
            typedArrayObtainStyledAttributes.getValue(C0502j.AppCompatTheme_windowFixedWidthMajor, contentFrameLayout.getFixedWidthMajor());
        }
        if (typedArrayObtainStyledAttributes.hasValue(C0502j.AppCompatTheme_windowFixedWidthMinor)) {
            typedArrayObtainStyledAttributes.getValue(C0502j.AppCompatTheme_windowFixedWidthMinor, contentFrameLayout.getFixedWidthMinor());
        }
        if (typedArrayObtainStyledAttributes.hasValue(C0502j.AppCompatTheme_windowFixedHeightMajor)) {
            typedArrayObtainStyledAttributes.getValue(C0502j.AppCompatTheme_windowFixedHeightMajor, contentFrameLayout.getFixedHeightMajor());
        }
        if (typedArrayObtainStyledAttributes.hasValue(C0502j.AppCompatTheme_windowFixedHeightMinor)) {
            typedArrayObtainStyledAttributes.getValue(C0502j.AppCompatTheme_windowFixedHeightMinor, contentFrameLayout.getFixedHeightMinor());
        }
        typedArrayObtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    /* JADX INFO: renamed from: N0 */
    private ActivityC0081d m475N0() {
        for (Context baseContext = this.f373f; baseContext != null; baseContext = ((ContextWrapper) baseContext).getBaseContext()) {
            if (baseContext instanceof ActivityC0081d) {
                return (ActivityC0081d) baseContext;
            }
            if (!(baseContext instanceof ContextWrapper)) {
                break;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: O */
    private void m476O(Window window) {
        if (this.f374g != null) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        Window.Callback callback = window.getCallback();
        if (callback instanceof o) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        o oVar = new o(callback);
        this.f375h = oVar;
        window.setCallback(oVar);
        C0195u0 c0195u0M1320u = C0195u0.m1320u(this.f373f, null, f340e0);
        Drawable drawableM1329h = c0195u0M1320u.m1329h(0);
        if (drawableM1329h != null) {
            window.setBackgroundDrawable(drawableM1329h);
        }
        c0195u0M1320u.m1341w();
        this.f374g = window;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0047  */
    /* JADX INFO: renamed from: O0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean m477O0(int i2, boolean z) {
        boolean z2;
        Configuration configurationM482V = m482V(this.f373f, i2, null);
        boolean zM494r0 = m494r0();
        int i3 = this.f373f.getResources().getConfiguration().uiMode & 48;
        int i4 = configurationM482V.uiMode & 48;
        boolean z3 = true;
        if (i3 != i4 && z && !zM494r0 && this.f354K && (f341f0 || this.f355L)) {
            Object obj = this.f372e;
            if ((obj instanceof Activity) && !((Activity) obj).isChild()) {
                C0231a.m1642l((Activity) this.f372e);
                z2 = true;
            }
        } else {
            z2 = false;
        }
        if (z2 || i3 == i4) {
            z3 = z2;
        } else {
            m479P0(i4, zM494r0, null);
        }
        if (z3) {
            Object obj2 = this.f372e;
            if (obj2 instanceof ActivityC0081d) {
                ((ActivityC0081d) obj2).onNightModeChanged(i2);
            }
        }
        return z3;
    }

    /* JADX INFO: renamed from: P */
    private int m478P() {
        int i2 = this.f358O;
        return i2 != -100 ? i2 : AbstractC0083f.m438l();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: P0 */
    private void m479P0(int i2, boolean z, Configuration configuration) {
        Resources resources = this.f373f.getResources();
        Configuration configuration2 = new Configuration(resources.getConfiguration());
        if (configuration != null) {
            configuration2.updateFrom(configuration);
        }
        configuration2.uiMode = i2 | (resources.getConfiguration().uiMode & (-49));
        resources.updateConfiguration(configuration2, null);
        if (Build.VERSION.SDK_INT < 26) {
            C0088k.m585a(resources);
        }
        int i3 = this.f359P;
        if (i3 != 0) {
            this.f373f.setTheme(i3);
            if (Build.VERSION.SDK_INT >= 23) {
                this.f373f.getTheme().applyStyle(this.f359P, true);
            }
        }
        if (z) {
            Object obj = this.f372e;
            if (obj instanceof Activity) {
                Activity activity = (Activity) obj;
                if (activity instanceof InterfaceC0396j) {
                    if (((InterfaceC0396j) activity).getLifecycle().mo2995b().m3000a(AbstractC0392f.c.STARTED)) {
                        activity.onConfigurationChanged(configuration2);
                    }
                } else if (this.f356M) {
                    activity.onConfigurationChanged(configuration2);
                }
            }
        }
    }

    /* JADX INFO: renamed from: R0 */
    private void m480R0(View view) {
        view.setBackgroundColor((C0292v.m2062M(view) & 8192) != 0 ? C0242a.m1697b(this.f373f, C0495c.abc_decor_view_status_guard_light) : C0242a.m1697b(this.f373f, C0495c.abc_decor_view_status_guard));
    }

    /* JADX INFO: renamed from: S */
    private void m481S() {
        q qVar = this.f362S;
        if (qVar != null) {
            qVar.m547a();
        }
        q qVar2 = this.f363T;
        if (qVar2 != null) {
            qVar2.m547a();
        }
    }

    /* JADX INFO: renamed from: V */
    private Configuration m482V(Context context, int i2, Configuration configuration) {
        int i3 = i2 != 1 ? i2 != 2 ? context.getApplicationContext().getResources().getConfiguration().uiMode & 48 : 32 : 16;
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = CropImageView.DEFAULT_ASPECT_RATIO;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i3 | (configuration2.uiMode & (-49));
        return configuration2;
    }

    /* JADX INFO: renamed from: W */
    private ViewGroup m483W() {
        ViewGroup viewGroup;
        TypedArray typedArrayObtainStyledAttributes = this.f373f.obtainStyledAttributes(C0502j.AppCompatTheme);
        if (!typedArrayObtainStyledAttributes.hasValue(C0502j.AppCompatTheme_windowActionBar)) {
            typedArrayObtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (typedArrayObtainStyledAttributes.getBoolean(C0502j.AppCompatTheme_windowNoTitle, false)) {
            mo439C(1);
        } else if (typedArrayObtainStyledAttributes.getBoolean(C0502j.AppCompatTheme_windowActionBar, false)) {
            mo439C(108);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(C0502j.AppCompatTheme_windowActionBarOverlay, false)) {
            mo439C(109);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(C0502j.AppCompatTheme_windowActionModeOverlay, false)) {
            mo439C(10);
        }
        this.f348E = typedArrayObtainStyledAttributes.getBoolean(C0502j.AppCompatTheme_android_windowIsFloating, false);
        typedArrayObtainStyledAttributes.recycle();
        m485d0();
        this.f374g.getDecorView();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f373f);
        if (this.f349F) {
            viewGroup = this.f347D ? (ViewGroup) layoutInflaterFrom.inflate(C0499g.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) layoutInflaterFrom.inflate(C0499g.abc_screen_simple, (ViewGroup) null);
        } else if (this.f348E) {
            viewGroup = (ViewGroup) layoutInflaterFrom.inflate(C0499g.abc_dialog_title_material, (ViewGroup) null);
            this.f346C = false;
            this.f345B = false;
        } else if (this.f345B) {
            TypedValue typedValue = new TypedValue();
            this.f373f.getTheme().resolveAttribute(C0493a.actionBarTheme, typedValue, true);
            viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new C0514d(this.f373f, typedValue.resourceId) : this.f373f).inflate(C0499g.abc_screen_toolbar, (ViewGroup) null);
            InterfaceC0153a0 interfaceC0153a0 = (InterfaceC0153a0) viewGroup.findViewById(C0498f.decor_content_parent);
            this.f380m = interfaceC0153a0;
            interfaceC0153a0.setWindowCallback(m519l0());
            if (this.f346C) {
                this.f380m.mo861k(109);
            }
            if (this.f393z) {
                this.f380m.mo861k(2);
            }
            if (this.f344A) {
                this.f380m.mo861k(5);
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.f345B + ", windowActionBarOverlay: " + this.f346C + ", android:windowIsFloating: " + this.f348E + ", windowActionModeOverlay: " + this.f347D + ", windowNoTitle: " + this.f349F + " }");
        }
        if (Build.VERSION.SDK_INT >= 21) {
            C0292v.m2127z0(viewGroup, new c());
        } else if (viewGroup instanceof InterfaceC0163e0) {
            ((InterfaceC0163e0) viewGroup).setOnFitSystemWindowsListener(new d());
        }
        if (this.f380m == null) {
            this.f391x = (TextView) viewGroup.findViewById(C0498f.title);
        }
        C0154a1.m1023c(viewGroup);
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(C0498f.action_bar_activity_content);
        ViewGroup viewGroup2 = (ViewGroup) this.f374g.findViewById(R.id.content);
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
        this.f374g.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new e());
        return viewGroup;
    }

    /* JADX INFO: renamed from: c0 */
    private void m484c0() {
        if (this.f389v) {
            return;
        }
        this.f390w = m483W();
        CharSequence charSequenceM518k0 = m518k0();
        if (!TextUtils.isEmpty(charSequenceM518k0)) {
            InterfaceC0153a0 interfaceC0153a0 = this.f380m;
            if (interfaceC0153a0 != null) {
                interfaceC0153a0.setWindowTitle(charSequenceM518k0);
            } else if (m500E0() != null) {
                m500E0().mo411v(charSequenceM518k0);
            } else {
                TextView textView = this.f391x;
                if (textView != null) {
                    textView.setText(charSequenceM518k0);
                }
            }
        }
        m474N();
        m499C0(this.f390w);
        this.f389v = true;
        u uVarM517j0 = m517j0(0, false);
        if (this.f357N) {
            return;
        }
        if (uVarM517j0 == null || uVarM517j0.f424j == null) {
            m493q0(108);
        }
    }

    /* JADX INFO: renamed from: d0 */
    private void m485d0() {
        if (this.f374g == null) {
            Object obj = this.f372e;
            if (obj instanceof Activity) {
                m476O(((Activity) obj).getWindow());
            }
        }
        if (this.f374g == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    /* JADX INFO: renamed from: f0 */
    private static Configuration m486f0(Configuration configuration, Configuration configuration2) {
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
                m.m541a(configuration, configuration2, configuration3);
            } else if (!C0621c.m4846a(configuration.locale, configuration2.locale)) {
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
                n.m542a(configuration, configuration2, configuration3);
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
                k.m539b(configuration, configuration2, configuration3);
            }
        }
        return configuration3;
    }

    /* JADX INFO: renamed from: h0 */
    private q m487h0(Context context) {
        if (this.f363T == null) {
            this.f363T = new p(context);
        }
        return this.f363T;
    }

    /* JADX INFO: renamed from: i0 */
    private q m488i0(Context context) {
        if (this.f362S == null) {
            this.f362S = new r(C0091n.m596a(context));
        }
        return this.f362S;
    }

    /* JADX INFO: renamed from: m0 */
    private void m489m0() {
        m484c0();
        if (this.f345B && this.f377j == null) {
            Object obj = this.f372e;
            if (obj instanceof Activity) {
                this.f377j = new C0092o((Activity) this.f372e, this.f346C);
            } else if (obj instanceof Dialog) {
                this.f377j = new C0092o((Dialog) this.f372e);
            }
            AbstractC0078a abstractC0078a = this.f377j;
            if (abstractC0078a != null) {
                abstractC0078a.mo408s(this.f367X);
            }
        }
    }

    /* JADX INFO: renamed from: n0 */
    private boolean m490n0(u uVar) {
        View view = uVar.f423i;
        if (view != null) {
            uVar.f422h = view;
            return true;
        }
        if (uVar.f424j == null) {
            return false;
        }
        if (this.f382o == null) {
            this.f382o = new v();
        }
        View view2 = (View) uVar.m551a(this.f382o);
        uVar.f422h = view2;
        return view2 != null;
    }

    /* JADX INFO: renamed from: o0 */
    private boolean m491o0(u uVar) {
        uVar.m554d(m516g0());
        uVar.f421g = new t(uVar.f426l);
        uVar.f417c = 81;
        return true;
    }

    /* JADX INFO: renamed from: p0 */
    private boolean m492p0(u uVar) {
        Context context = this.f373f;
        int i2 = uVar.f415a;
        if ((i2 == 0 || i2 == 108) && this.f380m != null) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme theme = context.getTheme();
            theme.resolveAttribute(C0493a.actionBarTheme, typedValue, true);
            Resources.Theme themeNewTheme = null;
            if (typedValue.resourceId != 0) {
                themeNewTheme = context.getResources().newTheme();
                themeNewTheme.setTo(theme);
                themeNewTheme.applyStyle(typedValue.resourceId, true);
                themeNewTheme.resolveAttribute(C0493a.actionBarWidgetTheme, typedValue, true);
            } else {
                theme.resolveAttribute(C0493a.actionBarWidgetTheme, typedValue, true);
            }
            if (typedValue.resourceId != 0) {
                if (themeNewTheme == null) {
                    themeNewTheme = context.getResources().newTheme();
                    themeNewTheme.setTo(theme);
                }
                themeNewTheme.applyStyle(typedValue.resourceId, true);
            }
            if (themeNewTheme != null) {
                C0514d c0514d = new C0514d(context, 0);
                c0514d.getTheme().setTo(themeNewTheme);
                context = c0514d;
            }
        }
        C0101g c0101g = new C0101g(context);
        c0101g.mo741R(this);
        uVar.m553c(c0101g);
        return true;
    }

    /* JADX INFO: renamed from: q0 */
    private void m493q0(int i2) {
        this.f365V = (1 << i2) | this.f365V;
        if (this.f364U) {
            return;
        }
        C0292v.m2089g0(this.f374g.getDecorView(), this.f366W);
        this.f364U = true;
    }

    /* JADX INFO: renamed from: r0 */
    private boolean m494r0() {
        if (!this.f361R && (this.f372e instanceof Activity)) {
            PackageManager packageManager = this.f373f.getPackageManager();
            if (packageManager == null) {
                return false;
            }
            try {
                ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(this.f373f, this.f372e.getClass()), Build.VERSION.SDK_INT >= 29 ? 269221888 : Build.VERSION.SDK_INT >= 24 ? 786432 : 0);
                this.f360Q = (activityInfo == null || (activityInfo.configChanges & 512) == 0) ? false : true;
            } catch (PackageManager.NameNotFoundException unused) {
                this.f360Q = false;
            }
        }
        this.f361R = true;
        return this.f360Q;
    }

    /* JADX INFO: renamed from: w0 */
    private boolean m495w0(int i2, KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() != 0) {
            return false;
        }
        u uVarM517j0 = m517j0(i2, true);
        if (uVarM517j0.f429o) {
            return false;
        }
        return m468G0(uVarM517j0, keyEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0062  */
    /* JADX INFO: renamed from: z0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean m496z0(int i2, KeyEvent keyEvent) {
        boolean zM468G0;
        AudioManager audioManager;
        InterfaceC0153a0 interfaceC0153a0;
        if (this.f383p != null) {
            return false;
        }
        boolean zMo854d = true;
        u uVarM517j0 = m517j0(i2, true);
        if (i2 != 0 || (interfaceC0153a0 = this.f380m) == null || !interfaceC0153a0.mo857g() || ViewConfiguration.get(this.f373f).hasPermanentMenuKey()) {
            if (uVarM517j0.f429o || uVarM517j0.f428n) {
                boolean z = uVarM517j0.f429o;
                m507U(uVarM517j0, true);
                zMo854d = z;
            } else if (uVarM517j0.f427m) {
                if (uVarM517j0.f432r) {
                    uVarM517j0.f427m = false;
                    zM468G0 = m468G0(uVarM517j0, keyEvent);
                } else {
                    zM468G0 = true;
                }
                if (zM468G0) {
                    m466D0(uVarM517j0, keyEvent);
                }
            } else {
                zMo854d = false;
            }
        } else if (this.f380m.mo853c()) {
            zMo854d = this.f380m.mo854d();
        } else if (!this.f357N && m468G0(uVarM517j0, keyEvent)) {
            zMo854d = this.f380m.mo855e();
        }
        if (zMo854d && (audioManager = (AudioManager) this.f373f.getApplicationContext().getSystemService("audio")) != null) {
            audioManager.playSoundEffect(0);
        }
        return zMo854d;
    }

    /* JADX INFO: renamed from: A0 */
    void m497A0(int i2) {
        AbstractC0078a abstractC0078aMo455p;
        if (i2 != 108 || (abstractC0078aMo455p = mo455p()) == null) {
            return;
        }
        abstractC0078aMo455p.mo398i(true);
    }

    /* JADX INFO: renamed from: B0 */
    void m498B0(int i2) {
        if (i2 == 108) {
            AbstractC0078a abstractC0078aMo455p = mo455p();
            if (abstractC0078aMo455p != null) {
                abstractC0078aMo455p.mo398i(false);
                return;
            }
            return;
        }
        if (i2 == 0) {
            u uVarM517j0 = m517j0(i2, true);
            if (uVarM517j0.f429o) {
                m507U(uVarM517j0, false);
            }
        }
    }

    @Override // androidx.appcompat.app.AbstractC0083f
    /* JADX INFO: renamed from: C */
    public boolean mo439C(int i2) {
        int iM470I0 = m470I0(i2);
        if (this.f349F && iM470I0 == 108) {
            return false;
        }
        if (this.f345B && iM470I0 == 1) {
            this.f345B = false;
        }
        if (iM470I0 == 1) {
            m473M0();
            this.f349F = true;
            return true;
        }
        if (iM470I0 == 2) {
            m473M0();
            this.f393z = true;
            return true;
        }
        if (iM470I0 == 5) {
            m473M0();
            this.f344A = true;
            return true;
        }
        if (iM470I0 == 10) {
            m473M0();
            this.f347D = true;
            return true;
        }
        if (iM470I0 == 108) {
            m473M0();
            this.f345B = true;
            return true;
        }
        if (iM470I0 != 109) {
            return this.f374g.requestFeature(iM470I0);
        }
        m473M0();
        this.f346C = true;
        return true;
    }

    /* JADX INFO: renamed from: C0 */
    void m499C0(ViewGroup viewGroup) {
    }

    @Override // androidx.appcompat.app.AbstractC0083f
    /* JADX INFO: renamed from: E */
    public void mo440E(int i2) {
        m484c0();
        ViewGroup viewGroup = (ViewGroup) this.f390w.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f373f).inflate(i2, viewGroup);
        this.f375h.m4158a().onContentChanged();
    }

    /* JADX INFO: renamed from: E0 */
    final AbstractC0078a m500E0() {
        return this.f377j;
    }

    @Override // androidx.appcompat.app.AbstractC0083f
    /* JADX INFO: renamed from: F */
    public void mo441F(View view) {
        m484c0();
        ViewGroup viewGroup = (ViewGroup) this.f390w.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f375h.m4158a().onContentChanged();
    }

    @Override // androidx.appcompat.app.AbstractC0083f
    /* JADX INFO: renamed from: G */
    public void mo442G(View view, ViewGroup.LayoutParams layoutParams) {
        m484c0();
        ViewGroup viewGroup = (ViewGroup) this.f390w.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f375h.m4158a().onContentChanged();
    }

    @Override // androidx.appcompat.app.AbstractC0083f
    /* JADX INFO: renamed from: I */
    public void mo443I(Toolbar toolbar) {
        if (this.f372e instanceof Activity) {
            AbstractC0078a abstractC0078aMo455p = mo455p();
            if (abstractC0078aMo455p instanceof C0092o) {
                throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
            }
            this.f378k = null;
            if (abstractC0078aMo455p != null) {
                abstractC0078aMo455p.mo404o();
            }
            if (toolbar != null) {
                C0089l c0089l = new C0089l(toolbar, m518k0(), this.f375h);
                this.f377j = c0089l;
                this.f374g.setCallback(c0089l.m592y());
            } else {
                this.f377j = null;
                this.f374g.setCallback(this.f375h);
            }
            mo457r();
        }
    }

    @Override // androidx.appcompat.app.AbstractC0083f
    /* JADX INFO: renamed from: J */
    public void mo444J(int i2) {
        this.f359P = i2;
    }

    /* JADX INFO: renamed from: J0 */
    final boolean m501J0() {
        ViewGroup viewGroup;
        return this.f389v && (viewGroup = this.f390w) != null && C0292v.m2069T(viewGroup);
    }

    @Override // androidx.appcompat.app.AbstractC0083f
    /* JADX INFO: renamed from: K */
    public final void mo445K(CharSequence charSequence) {
        this.f379l = charSequence;
        InterfaceC0153a0 interfaceC0153a0 = this.f380m;
        if (interfaceC0153a0 != null) {
            interfaceC0153a0.setWindowTitle(charSequence);
            return;
        }
        if (m500E0() != null) {
            m500E0().mo411v(charSequence);
            return;
        }
        TextView textView = this.f391x;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    @Override // androidx.appcompat.app.AbstractC0083f
    /* JADX INFO: renamed from: L */
    public AbstractC0512b mo446L(AbstractC0512b.a aVar) {
        InterfaceC0082e interfaceC0082e;
        if (aVar == null) {
            throw new IllegalArgumentException("ActionMode callback can not be null.");
        }
        AbstractC0512b abstractC0512b = this.f383p;
        if (abstractC0512b != null) {
            abstractC0512b.mo627c();
        }
        j jVar = new j(aVar);
        AbstractC0078a abstractC0078aMo455p = mo455p();
        if (abstractC0078aMo455p != null) {
            AbstractC0512b abstractC0512bMo412w = abstractC0078aMo455p.mo412w(jVar);
            this.f383p = abstractC0512bMo412w;
            if (abstractC0512bMo412w != null && (interfaceC0082e = this.f376i) != null) {
                interfaceC0082e.onSupportActionModeStarted(abstractC0512bMo412w);
            }
        }
        if (this.f383p == null) {
            this.f383p = m502L0(jVar);
        }
        return this.f383p;
    }

    /* JADX INFO: renamed from: L0 */
    AbstractC0512b m502L0(AbstractC0512b.a aVar) {
        AbstractC0512b abstractC0512bOnWindowStartingSupportActionMode;
        Context c0514d;
        InterfaceC0082e interfaceC0082e;
        m514b0();
        AbstractC0512b abstractC0512b = this.f383p;
        if (abstractC0512b != null) {
            abstractC0512b.mo627c();
        }
        if (!(aVar instanceof j)) {
            aVar = new j(aVar);
        }
        InterfaceC0082e interfaceC0082e2 = this.f376i;
        if (interfaceC0082e2 == null || this.f357N) {
            abstractC0512bOnWindowStartingSupportActionMode = null;
        } else {
            try {
                abstractC0512bOnWindowStartingSupportActionMode = interfaceC0082e2.onWindowStartingSupportActionMode(aVar);
            } catch (AbstractMethodError unused) {
                abstractC0512bOnWindowStartingSupportActionMode = null;
            }
        }
        if (abstractC0512bOnWindowStartingSupportActionMode != null) {
            this.f383p = abstractC0512bOnWindowStartingSupportActionMode;
        } else {
            if (this.f384q == null) {
                if (this.f348E) {
                    TypedValue typedValue = new TypedValue();
                    Resources.Theme theme = this.f373f.getTheme();
                    theme.resolveAttribute(C0493a.actionBarTheme, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        Resources.Theme themeNewTheme = this.f373f.getResources().newTheme();
                        themeNewTheme.setTo(theme);
                        themeNewTheme.applyStyle(typedValue.resourceId, true);
                        c0514d = new C0514d(this.f373f, 0);
                        c0514d.getTheme().setTo(themeNewTheme);
                    } else {
                        c0514d = this.f373f;
                    }
                    this.f384q = new ActionBarContextView(c0514d);
                    PopupWindow popupWindow = new PopupWindow(c0514d, (AttributeSet) null, C0493a.actionModePopupWindowStyle);
                    this.f385r = popupWindow;
                    C0307h.m2274b(popupWindow, 2);
                    this.f385r.setContentView(this.f384q);
                    this.f385r.setWidth(-1);
                    c0514d.getTheme().resolveAttribute(C0493a.actionBarSize, typedValue, true);
                    this.f384q.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, c0514d.getResources().getDisplayMetrics()));
                    this.f385r.setHeight(-2);
                    this.f386s = new f();
                } else {
                    ViewStubCompat viewStubCompat = (ViewStubCompat) this.f390w.findViewById(C0498f.action_mode_bar_stub);
                    if (viewStubCompat != null) {
                        viewStubCompat.setLayoutInflater(LayoutInflater.from(m516g0()));
                        this.f384q = (ActionBarContextView) viewStubCompat.m1011a();
                    }
                }
            }
            if (this.f384q != null) {
                m514b0();
                this.f384q.m841k();
                C0515e c0515e = new C0515e(this.f384q.getContext(), this.f384q, aVar, this.f385r == null);
                if (aVar.mo536c(c0515e, c0515e.mo629e())) {
                    c0515e.mo633k();
                    this.f384q.m839h(c0515e);
                    this.f383p = c0515e;
                    if (m501J0()) {
                        this.f384q.setAlpha(CropImageView.DEFAULT_ASPECT_RATIO);
                        C0296z c0296zM2082d = C0292v.m2082d(this.f384q);
                        c0296zM2082d.m2179a(1.0f);
                        this.f387t = c0296zM2082d;
                        c0296zM2082d.m2184f(new g());
                    } else {
                        this.f384q.setAlpha(1.0f);
                        this.f384q.setVisibility(0);
                        this.f384q.sendAccessibilityEvent(32);
                        if (this.f384q.getParent() instanceof View) {
                            C0292v.m2099l0((View) this.f384q.getParent());
                        }
                    }
                    if (this.f385r != null) {
                        this.f374g.getDecorView().post(this.f386s);
                    }
                } else {
                    this.f383p = null;
                }
            }
        }
        AbstractC0512b abstractC0512b2 = this.f383p;
        if (abstractC0512b2 != null && (interfaceC0082e = this.f376i) != null) {
            interfaceC0082e.onSupportActionModeStarted(abstractC0512b2);
        }
        return this.f383p;
    }

    /* JADX INFO: renamed from: Q */
    void m503Q(int i2, u uVar, Menu menu) {
        if (menu == null) {
            if (uVar == null && i2 >= 0) {
                u[] uVarArr = this.f351H;
                if (i2 < uVarArr.length) {
                    uVar = uVarArr[i2];
                }
            }
            if (uVar != null) {
                menu = uVar.f424j;
            }
        }
        if ((uVar == null || uVar.f429o) && !this.f357N) {
            this.f375h.m4158a().onPanelClosed(i2, menu);
        }
    }

    /* JADX INFO: renamed from: Q0 */
    final int m504Q0(C0265d0 c0265d0, Rect rect) {
        boolean z;
        boolean z2;
        int iM1842i = c0265d0 != null ? c0265d0.m1842i() : rect != null ? rect.top : 0;
        ActionBarContextView actionBarContextView = this.f384q;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f384q.getLayoutParams();
            if (this.f384q.isShown()) {
                if (this.f368Y == null) {
                    this.f368Y = new Rect();
                    this.f369Z = new Rect();
                }
                Rect rect2 = this.f368Y;
                Rect rect3 = this.f369Z;
                if (c0265d0 == null) {
                    rect2.set(rect);
                } else {
                    rect2.set(c0265d0.m1840g(), c0265d0.m1842i(), c0265d0.m1841h(), c0265d0.m1839f());
                }
                C0154a1.m1021a(this.f390w, rect2, rect3);
                int i2 = rect2.top;
                int i3 = rect2.left;
                int i4 = rect2.right;
                C0265d0 c0265d0M2059J = C0292v.m2059J(this.f390w);
                int iM1840g = c0265d0M2059J == null ? 0 : c0265d0M2059J.m1840g();
                int iM1841h = c0265d0M2059J == null ? 0 : c0265d0M2059J.m1841h();
                if (marginLayoutParams.topMargin == i2 && marginLayoutParams.leftMargin == i3 && marginLayoutParams.rightMargin == i4) {
                    z2 = false;
                } else {
                    marginLayoutParams.topMargin = i2;
                    marginLayoutParams.leftMargin = i3;
                    marginLayoutParams.rightMargin = i4;
                    z2 = true;
                }
                if (i2 <= 0 || this.f392y != null) {
                    View view = this.f392y;
                    if (view != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                        if (marginLayoutParams2.height != marginLayoutParams.topMargin || marginLayoutParams2.leftMargin != iM1840g || marginLayoutParams2.rightMargin != iM1841h) {
                            marginLayoutParams2.height = marginLayoutParams.topMargin;
                            marginLayoutParams2.leftMargin = iM1840g;
                            marginLayoutParams2.rightMargin = iM1841h;
                            this.f392y.setLayoutParams(marginLayoutParams2);
                        }
                    }
                } else {
                    View view2 = new View(this.f373f);
                    this.f392y = view2;
                    view2.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = iM1840g;
                    layoutParams.rightMargin = iM1841h;
                    this.f390w.addView(this.f392y, -1, layoutParams);
                }
                z = this.f392y != null;
                if (z && this.f392y.getVisibility() != 0) {
                    m480R0(this.f392y);
                }
                if (!this.f347D && z) {
                    iM1842i = 0;
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
                this.f384q.setLayoutParams(marginLayoutParams);
            }
        }
        View view3 = this.f392y;
        if (view3 != null) {
            view3.setVisibility(z ? 0 : 8);
        }
        return iM1842i;
    }

    /* JADX INFO: renamed from: R */
    void m505R(C0101g c0101g) {
        if (this.f350G) {
            return;
        }
        this.f350G = true;
        this.f380m.mo862l();
        Window.Callback callbackM519l0 = m519l0();
        if (callbackM519l0 != null && !this.f357N) {
            callbackM519l0.onPanelClosed(108, c0101g);
        }
        this.f350G = false;
    }

    /* JADX INFO: renamed from: T */
    void m506T(int i2) {
        m507U(m517j0(i2, true), true);
    }

    /* JADX INFO: renamed from: U */
    void m507U(u uVar, boolean z) {
        ViewGroup viewGroup;
        InterfaceC0153a0 interfaceC0153a0;
        if (z && uVar.f415a == 0 && (interfaceC0153a0 = this.f380m) != null && interfaceC0153a0.mo853c()) {
            m505R(uVar.f424j);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f373f.getSystemService("window");
        if (windowManager != null && uVar.f429o && (viewGroup = uVar.f421g) != null) {
            windowManager.removeView(viewGroup);
            if (z) {
                m503Q(uVar.f415a, uVar, null);
            }
        }
        uVar.f427m = false;
        uVar.f428n = false;
        uVar.f429o = false;
        uVar.f422h = null;
        uVar.f431q = true;
        if (this.f352I == uVar) {
            this.f352I = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: X */
    public View m508X(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z;
        boolean zM471K0 = false;
        if (this.f370a0 == null) {
            String string = this.f373f.obtainStyledAttributes(C0502j.AppCompatTheme).getString(C0502j.AppCompatTheme_viewInflaterClass);
            if (string == null) {
                this.f370a0 = new C0086i();
            } else {
                try {
                    this.f370a0 = (C0086i) Class.forName(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Throwable unused) {
                    String str2 = "Failed to instantiate custom view inflater " + string + ". Falling back to default.";
                    this.f370a0 = new C0086i();
                }
            }
        }
        if (f339d0) {
            if (this.f371b0 == null) {
                this.f371b0 = new C0087j();
            }
            if (this.f371b0.m584a(attributeSet)) {
                z = true;
            } else {
                if (!(attributeSet instanceof XmlPullParser)) {
                    zM471K0 = m471K0((ViewParent) view);
                } else if (((XmlPullParser) attributeSet).getDepth() > 1) {
                    zM471K0 = true;
                }
                z = zM471K0;
            }
        } else {
            z = false;
        }
        return this.f370a0.m579q(view, str, context, attributeSet, z, f339d0, true, C0205z0.m1438c());
    }

    /* JADX INFO: renamed from: Y */
    void m509Y() {
        C0101g c0101g;
        InterfaceC0153a0 interfaceC0153a0 = this.f380m;
        if (interfaceC0153a0 != null) {
            interfaceC0153a0.mo862l();
        }
        if (this.f385r != null) {
            this.f374g.getDecorView().removeCallbacks(this.f386s);
            if (this.f385r.isShowing()) {
                try {
                    this.f385r.dismiss();
                } catch (IllegalArgumentException unused) {
                }
            }
            this.f385r = null;
        }
        m514b0();
        u uVarM517j0 = m517j0(0, false);
        if (uVarM517j0 == null || (c0101g = uVarM517j0.f424j) == null) {
            return;
        }
        c0101g.close();
    }

    /* JADX INFO: renamed from: Z */
    boolean m510Z(KeyEvent keyEvent) {
        View decorView;
        Object obj = this.f372e;
        if (((obj instanceof C0273f.a) || (obj instanceof DialogC0085h)) && (decorView = this.f374g.getDecorView()) != null && C0273f.m1980d(decorView, keyEvent)) {
            return true;
        }
        if (keyEvent.getKeyCode() == 82 && this.f375h.m4158a().dispatchKeyEvent(keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        return keyEvent.getAction() == 0 ? m523v0(keyCode, keyEvent) : m525y0(keyCode, keyEvent);
    }

    @Override // androidx.appcompat.view.menu.C0101g.a
    /* JADX INFO: renamed from: a */
    public boolean mo511a(C0101g c0101g, MenuItem menuItem) {
        u uVarM515e0;
        Window.Callback callbackM519l0 = m519l0();
        if (callbackM519l0 == null || this.f357N || (uVarM515e0 = m515e0(c0101g.mo728D())) == null) {
            return false;
        }
        return callbackM519l0.onMenuItemSelected(uVarM515e0.f415a, menuItem);
    }

    /* JADX INFO: renamed from: a0 */
    void m512a0(int i2) {
        u uVarM517j0;
        u uVarM517j02 = m517j0(i2, true);
        if (uVarM517j02.f424j != null) {
            Bundle bundle = new Bundle();
            uVarM517j02.f424j.m740Q(bundle);
            if (bundle.size() > 0) {
                uVarM517j02.f433s = bundle;
            }
            uVarM517j02.f424j.m755d0();
            uVarM517j02.f424j.clear();
        }
        uVarM517j02.f432r = true;
        uVarM517j02.f431q = true;
        if ((i2 != 108 && i2 != 0) || this.f380m == null || (uVarM517j0 = m517j0(0, false)) == null) {
            return;
        }
        uVarM517j0.f427m = false;
        m468G0(uVarM517j0, null);
    }

    @Override // androidx.appcompat.view.menu.C0101g.a
    /* JADX INFO: renamed from: b */
    public void mo513b(C0101g c0101g) {
        m469H0(true);
    }

    /* JADX INFO: renamed from: b0 */
    void m514b0() {
        C0296z c0296z = this.f387t;
        if (c0296z != null) {
            c0296z.m2180b();
        }
    }

    @Override // androidx.appcompat.app.AbstractC0083f
    /* JADX INFO: renamed from: d */
    public void mo447d(View view, ViewGroup.LayoutParams layoutParams) {
        m484c0();
        ((ViewGroup) this.f390w.findViewById(R.id.content)).addView(view, layoutParams);
        this.f375h.m4158a().onContentChanged();
    }

    @Override // androidx.appcompat.app.AbstractC0083f
    /* JADX INFO: renamed from: e */
    public boolean mo448e() {
        return m472M(true);
    }

    /* JADX INFO: renamed from: e0 */
    u m515e0(Menu menu) {
        u[] uVarArr = this.f351H;
        int length = uVarArr != null ? uVarArr.length : 0;
        for (int i2 = 0; i2 < length; i2++) {
            u uVar = uVarArr[i2];
            if (uVar != null && uVar.f424j == menu) {
                return uVar;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: g0 */
    final Context m516g0() {
        AbstractC0078a abstractC0078aMo455p = mo455p();
        Context contextMo400k = abstractC0078aMo455p != null ? abstractC0078aMo455p.mo400k() : null;
        return contextMo400k == null ? this.f373f : contextMo400k;
    }

    @Override // androidx.appcompat.app.AbstractC0083f
    /* JADX INFO: renamed from: h */
    public Context mo450h(Context context) {
        this.f354K = true;
        int iM521t0 = m521t0(context, m478P());
        Configuration configurationM486f0 = null;
        if (f342g0 && (context instanceof ContextThemeWrapper)) {
            try {
                s.m549a((ContextThemeWrapper) context, m482V(context, iM521t0, null));
                return context;
            } catch (IllegalStateException unused) {
            }
        }
        if (context instanceof C0514d) {
            try {
                ((C0514d) context).mo4132a(m482V(context, iM521t0, null));
                return context;
            } catch (IllegalStateException unused2) {
            }
        }
        if (!f341f0) {
            super.mo450h(context);
            return context;
        }
        if (Build.VERSION.SDK_INT >= 17) {
            Configuration configuration = new Configuration();
            configuration.uiMode = -1;
            configuration.fontScale = CropImageView.DEFAULT_ASPECT_RATIO;
            Configuration configuration2 = k.m538a(context, configuration).getResources().getConfiguration();
            Configuration configuration3 = context.getResources().getConfiguration();
            configuration2.uiMode = configuration3.uiMode;
            if (!configuration2.equals(configuration3)) {
                configurationM486f0 = m486f0(configuration2, configuration3);
            }
        }
        Configuration configurationM482V = m482V(context, iM521t0, configurationM486f0);
        C0514d c0514d = new C0514d(context, C0501i.Theme_AppCompat_Empty);
        c0514d.mo4132a(configurationM482V);
        boolean z = false;
        try {
            z = context.getTheme() != null;
        } catch (NullPointerException unused3) {
        }
        if (z) {
            C0249f.b.m1760a(c0514d.getTheme());
        }
        super.mo450h(c0514d);
        return c0514d;
    }

    /* JADX INFO: renamed from: j0 */
    protected u m517j0(int i2, boolean z) {
        u[] uVarArr = this.f351H;
        if (uVarArr == null || uVarArr.length <= i2) {
            u[] uVarArr2 = new u[i2 + 1];
            if (uVarArr != null) {
                System.arraycopy(uVarArr, 0, uVarArr2, 0, uVarArr.length);
            }
            this.f351H = uVarArr2;
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

    @Override // androidx.appcompat.app.AbstractC0083f
    /* JADX INFO: renamed from: k */
    public <T extends View> T mo451k(int i2) {
        m484c0();
        return (T) this.f374g.findViewById(i2);
    }

    /* JADX INFO: renamed from: k0 */
    final CharSequence m518k0() {
        Object obj = this.f372e;
        return obj instanceof Activity ? ((Activity) obj).getTitle() : this.f379l;
    }

    /* JADX INFO: renamed from: l0 */
    final Window.Callback m519l0() {
        return this.f374g.getCallback();
    }

    @Override // androidx.appcompat.app.AbstractC0083f
    /* JADX INFO: renamed from: m */
    public final InterfaceC0079b mo452m() {
        return new h(this);
    }

    @Override // androidx.appcompat.app.AbstractC0083f
    /* JADX INFO: renamed from: n */
    public int mo453n() {
        return this.f358O;
    }

    @Override // androidx.appcompat.app.AbstractC0083f
    /* JADX INFO: renamed from: o */
    public MenuInflater mo454o() {
        if (this.f378k == null) {
            m489m0();
            AbstractC0078a abstractC0078a = this.f377j;
            this.f378k = new C0517g(abstractC0078a != null ? abstractC0078a.mo400k() : this.f373f);
        }
        return this.f378k;
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return m508X(view, str, context, attributeSet);
    }

    @Override // androidx.appcompat.app.AbstractC0083f
    /* JADX INFO: renamed from: p */
    public AbstractC0078a mo455p() {
        m489m0();
        return this.f377j;
    }

    @Override // androidx.appcompat.app.AbstractC0083f
    /* JADX INFO: renamed from: q */
    public void mo456q() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f373f);
        if (layoutInflaterFrom.getFactory() == null) {
            LayoutInflaterCompat.setFactory2(layoutInflaterFrom, this);
        } else {
            boolean z = layoutInflaterFrom.getFactory2() instanceof LayoutInflaterFactory2C0084g;
        }
    }

    @Override // androidx.appcompat.app.AbstractC0083f
    /* JADX INFO: renamed from: r */
    public void mo457r() {
        AbstractC0078a abstractC0078aMo455p = mo455p();
        if (abstractC0078aMo455p == null || !abstractC0078aMo455p.mo402m()) {
            m493q0(0);
        }
    }

    @Override // androidx.appcompat.app.AbstractC0083f
    /* JADX INFO: renamed from: s */
    public void mo458s(Configuration configuration) {
        AbstractC0078a abstractC0078aMo455p;
        if (this.f345B && this.f389v && (abstractC0078aMo455p = mo455p()) != null) {
            abstractC0078aMo455p.mo403n(configuration);
        }
        C0170i.m1168b().m1175g(this.f373f);
        m472M(false);
    }

    /* JADX INFO: renamed from: s0 */
    public boolean m520s0() {
        return this.f388u;
    }

    @Override // androidx.appcompat.app.AbstractC0083f
    /* JADX INFO: renamed from: t */
    public void mo459t(Bundle bundle) {
        this.f354K = true;
        m472M(false);
        m485d0();
        Object obj = this.f372e;
        if (obj instanceof Activity) {
            String strM1669c = null;
            try {
                strM1669c = C0237g.m1669c((Activity) obj);
            } catch (IllegalArgumentException unused) {
            }
            if (strM1669c != null) {
                AbstractC0078a abstractC0078aM500E0 = m500E0();
                if (abstractC0078aM500E0 == null) {
                    this.f367X = true;
                } else {
                    abstractC0078aM500E0.mo408s(true);
                }
            }
            AbstractC0083f.m434c(this);
        }
        this.f355L = true;
    }

    /* JADX INFO: renamed from: t0 */
    int m521t0(Context context, int i2) {
        if (i2 == -100) {
            return -1;
        }
        if (i2 != -1) {
            if (i2 == 0) {
                if (Build.VERSION.SDK_INT < 23 || ((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() != 0) {
                    return m488i0(context).mo545c();
                }
                return -1;
            }
            if (i2 != 1 && i2 != 2) {
                if (i2 == 3) {
                    return m487h0(context).mo545c();
                }
                throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
            }
        }
        return i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0048  */
    @Override // androidx.appcompat.app.AbstractC0083f
    /* JADX INFO: renamed from: u */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void mo460u() {
        if (this.f372e instanceof Activity) {
            AbstractC0083f.m430A(this);
        }
        if (this.f364U) {
            this.f374g.getDecorView().removeCallbacks(this.f366W);
        }
        this.f356M = false;
        this.f357N = true;
        if (this.f358O != -100) {
            Object obj = this.f372e;
            if ((obj instanceof Activity) && ((Activity) obj).isChangingConfigurations()) {
                f338c0.put(this.f372e.getClass().getName(), Integer.valueOf(this.f358O));
            } else {
                f338c0.remove(this.f372e.getClass().getName());
            }
        }
        AbstractC0078a abstractC0078a = this.f377j;
        if (abstractC0078a != null) {
            abstractC0078a.mo404o();
        }
        m481S();
    }

    /* JADX INFO: renamed from: u0 */
    boolean m522u0() {
        AbstractC0512b abstractC0512b = this.f383p;
        if (abstractC0512b != null) {
            abstractC0512b.mo627c();
            return true;
        }
        AbstractC0078a abstractC0078aMo455p = mo455p();
        return abstractC0078aMo455p != null && abstractC0078aMo455p.mo397h();
    }

    @Override // androidx.appcompat.app.AbstractC0083f
    /* JADX INFO: renamed from: v */
    public void mo461v(Bundle bundle) {
        m484c0();
    }

    /* JADX INFO: renamed from: v0 */
    boolean m523v0(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            this.f353J = (keyEvent.getFlags() & 128) != 0;
        } else if (i2 == 82) {
            m495w0(0, keyEvent);
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.app.AbstractC0083f
    /* JADX INFO: renamed from: w */
    public void mo462w() {
        AbstractC0078a abstractC0078aMo455p = mo455p();
        if (abstractC0078aMo455p != null) {
            abstractC0078aMo455p.mo410u(true);
        }
    }

    @Override // androidx.appcompat.app.AbstractC0083f
    /* JADX INFO: renamed from: x */
    public void mo463x(Bundle bundle) {
    }

    /* JADX INFO: renamed from: x0 */
    boolean m524x0(int i2, KeyEvent keyEvent) {
        AbstractC0078a abstractC0078aMo455p = mo455p();
        if (abstractC0078aMo455p != null && abstractC0078aMo455p.mo405p(i2, keyEvent)) {
            return true;
        }
        u uVar = this.f352I;
        if (uVar != null && m467F0(uVar, keyEvent.getKeyCode(), keyEvent, 1)) {
            u uVar2 = this.f352I;
            if (uVar2 != null) {
                uVar2.f428n = true;
            }
            return true;
        }
        if (this.f352I == null) {
            u uVarM517j0 = m517j0(0, true);
            m468G0(uVarM517j0, keyEvent);
            boolean zM467F0 = m467F0(uVarM517j0, keyEvent.getKeyCode(), keyEvent, 1);
            uVarM517j0.f427m = false;
            if (zM467F0) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.app.AbstractC0083f
    /* JADX INFO: renamed from: y */
    public void mo464y() {
        this.f356M = true;
        mo448e();
    }

    /* JADX INFO: renamed from: y0 */
    boolean m525y0(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            boolean z = this.f353J;
            this.f353J = false;
            u uVarM517j0 = m517j0(0, false);
            if (uVarM517j0 != null && uVarM517j0.f429o) {
                if (!z) {
                    m507U(uVarM517j0, true);
                }
                return true;
            }
            if (m522u0()) {
                return true;
            }
        } else if (i2 == 82) {
            m496z0(0, keyEvent);
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.app.AbstractC0083f
    /* JADX INFO: renamed from: z */
    public void mo465z() {
        this.f356M = false;
        AbstractC0078a abstractC0078aMo455p = mo455p();
        if (abstractC0078aMo455p != null) {
            abstractC0078aMo455p.mo410u(false);
        }
    }

    LayoutInflaterFactory2C0084g(Dialog dialog, InterfaceC0082e interfaceC0082e) {
        this(dialog.getContext(), dialog.getWindow(), interfaceC0082e, dialog);
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    private LayoutInflaterFactory2C0084g(Context context, Window window, InterfaceC0082e interfaceC0082e, Object obj) {
        Integer num;
        ActivityC0081d activityC0081dM475N0;
        this.f387t = null;
        this.f388u = true;
        this.f358O = -100;
        this.f366W = new b();
        this.f373f = context;
        this.f376i = interfaceC0082e;
        this.f372e = obj;
        if (this.f358O == -100 && (obj instanceof Dialog) && (activityC0081dM475N0 = m475N0()) != null) {
            this.f358O = activityC0081dM475N0.getDelegate().mo453n();
        }
        if (this.f358O == -100 && (num = f338c0.get(this.f372e.getClass().getName())) != null) {
            this.f358O = num.intValue();
            f338c0.remove(this.f372e.getClass().getName());
        }
        if (window != null) {
            m476O(window);
        }
        C0170i.m1170h();
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.g$o */
    class o extends WindowCallbackC0519i {
        o(Window.Callback callback) {
            super(callback);
        }

        /* JADX INFO: renamed from: b */
        final ActionMode m543b(ActionMode.Callback callback) {
            C0516f.a aVar = new C0516f.a(LayoutInflaterFactory2C0084g.this.f373f, callback);
            AbstractC0512b abstractC0512bMo446L = LayoutInflaterFactory2C0084g.this.mo446L(aVar);
            if (abstractC0512bMo446L != null) {
                return aVar.m4136e(abstractC0512bMo446L);
            }
            return null;
        }

        @Override // p016c.p017a.p024o.WindowCallbackC0519i, android.view.Window.Callback
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return LayoutInflaterFactory2C0084g.this.m510Z(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // p016c.p017a.p024o.WindowCallbackC0519i, android.view.Window.Callback
        public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            return super.dispatchKeyShortcutEvent(keyEvent) || LayoutInflaterFactory2C0084g.this.m524x0(keyEvent.getKeyCode(), keyEvent);
        }

        @Override // p016c.p017a.p024o.WindowCallbackC0519i, android.view.Window.Callback
        public void onContentChanged() {
        }

        @Override // p016c.p017a.p024o.WindowCallbackC0519i, android.view.Window.Callback
        public boolean onCreatePanelMenu(int i, Menu menu) {
            if (i != 0 || (menu instanceof C0101g)) {
                return super.onCreatePanelMenu(i, menu);
            }
            return false;
        }

        @Override // p016c.p017a.p024o.WindowCallbackC0519i, android.view.Window.Callback
        public boolean onMenuOpened(int i, Menu menu) {
            super.onMenuOpened(i, menu);
            LayoutInflaterFactory2C0084g.this.m497A0(i);
            return true;
        }

        @Override // p016c.p017a.p024o.WindowCallbackC0519i, android.view.Window.Callback
        public void onPanelClosed(int i, Menu menu) {
            super.onPanelClosed(i, menu);
            LayoutInflaterFactory2C0084g.this.m498B0(i);
        }

        @Override // p016c.p017a.p024o.WindowCallbackC0519i, android.view.Window.Callback
        public boolean onPreparePanel(int i, View view, Menu menu) {
            C0101g c0101g = menu instanceof C0101g ? (C0101g) menu : null;
            if (i == 0 && c0101g == null) {
                return false;
            }
            if (c0101g != null) {
                c0101g.m750a0(true);
            }
            boolean zOnPreparePanel = super.onPreparePanel(i, view, menu);
            if (c0101g != null) {
                c0101g.m750a0(false);
            }
            return zOnPreparePanel;
        }

        @Override // p016c.p017a.p024o.WindowCallbackC0519i, android.view.Window.Callback
        public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i) {
            C0101g c0101g;
            u uVarM517j0 = LayoutInflaterFactory2C0084g.this.m517j0(0, true);
            if (uVarM517j0 == null || (c0101g = uVarM517j0.f424j) == null) {
                super.onProvideKeyboardShortcuts(list, menu, i);
            } else {
                super.onProvideKeyboardShortcuts(list, c0101g, i);
            }
        }

        @Override // p016c.p017a.p024o.WindowCallbackC0519i, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            if (Build.VERSION.SDK_INT >= 23) {
                return null;
            }
            return LayoutInflaterFactory2C0084g.this.m520s0() ? m543b(callback) : super.onWindowStartingActionMode(callback);
        }

        @Override // p016c.p017a.p024o.WindowCallbackC0519i, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
            if (LayoutInflaterFactory2C0084g.this.m520s0() && i == 0) {
                return m543b(callback);
            }
            return super.onWindowStartingActionMode(callback, i);
        }
    }
}
