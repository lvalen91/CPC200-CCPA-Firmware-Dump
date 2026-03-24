package cn.manstep.phonemirrorBox;

import android.R;
import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import androidx.appcompat.app.d;
import com.stub.StubApp;
import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import java.util.Locale;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class k extends d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected String f1678c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected String f1679d;
    protected Locale g;
    private float k;
    private int l;
    private float m;
    private float n;
    private float o;
    private int p;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected boolean f1677b = false;
    protected int e = 0;
    protected int f = 0;
    protected int h = 0;
    protected int i = 0;
    protected boolean j = false;
    protected ComponentCallbacks q = new a();
    private int r = 0;
    private boolean s = false;

    class a implements ComponentCallbacks {
        a() {
        }

        @Override // android.content.ComponentCallbacks
        public void onConfigurationChanged(Configuration configuration) {
            if (configuration.fontScale > CropImageView.DEFAULT_ASPECT_RATIO) {
                k kVar = k.this;
                kVar.m = kVar.getApplication().getResources().getDisplayMetrics().scaledDensity;
                cn.manstep.phonemirrorBox.util.s.d("BaseActivity", "ComponentCallbacks->onConfigurationChanged: fontScale=" + configuration.fontScale + ",newLocale=" + configuration.locale + ",curLocale=" + k.this.getResources().getConfiguration().locale);
                if (!k.this.g.toString().equals(configuration.locale.toString())) {
                    k.this.j = true;
                    if (!cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
                        k.this.recreate();
                    }
                }
                k.this.k = CropImageView.DEFAULT_ASPECT_RATIO;
                if ("QTI-msmnile_gvmq for arm64-k6801_a-11(30)".equals(u.z().y()) && k.this.P(configuration)) {
                    return;
                }
                k kVar2 = k.this;
                kVar2.j0(kVar2, kVar2.getApplication());
                if (cn.manstep.phonemirrorBox.BoxInterface.d.G() || !b0.i().o("ShowFloatBall", false)) {
                    return;
                }
                cn.manstep.phonemirrorBox.floatwindow.e.g().o(StubApp.getOrigApplicationContext(k.this.getApplication().getApplicationContext()));
            }
        }

        @Override // android.content.ComponentCallbacks
        public void onLowMemory() {
        }
    }

    class b extends c.a.o.d {
        final /* synthetic */ Configuration f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(k kVar, Context context, Resources.Theme theme, Configuration configuration) {
            super(context, theme);
            this.f = configuration;
        }

        @Override // c.a.o.d
        public void a(Configuration configuration) {
            if (configuration != null) {
                configuration.setTo(this.f);
            }
            super.a(configuration);
        }
    }

    static {
        androidx.appcompat.app.f.D(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean P(Configuration configuration) {
        int i;
        if (b0.i().m("LanguageID", 0) == 0 && cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            if (Build.VERSION.SDK_INT >= 17) {
                getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
            } else {
                getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            }
            int iG = u.z().G(getResources().getInteger(2131361823));
            Locale locale = getResources().getConfiguration().locale;
            boolean zH = x.h(configuration.locale);
            cn.manstep.phonemirrorBox.util.s.d("BaseActivity", "newLocale, isRtlConfig = " + zH);
            cn.manstep.phonemirrorBox.util.s.d("BaseActivity", "curLocale = " + locale + ", newLocale = " + configuration.locale);
            if (iG > 0) {
                int iK = u.z().k();
                if (!locale.toString().equals(configuration.locale.toString())) {
                    i = iK == 0 ? !zH ? iG * 2 : 0 : zH ? -iG : iG;
                } else if (iK == 0) {
                }
                cn.manstep.phonemirrorBox.util.s.d("BaseActivity", "rightMargin= " + iG + ",x= " + i);
                W(displayMetrics.widthPixels - iG, displayMetrics.heightPixels, i, 0);
                j0(this, getApplication());
                if (!b0.i().o("ShowFloatBall", false)) {
                    return true;
                }
                cn.manstep.phonemirrorBox.floatwindow.e.g().o(StubApp.getOrigApplicationContext(getApplication().getApplicationContext()));
                return true;
            }
        }
        return false;
    }

    private void Q() {
        if (!this.g.equals(getResources().getConfiguration().locale) || this.i != Z()) {
            this.j = true;
        } else if (getResources().getBoolean(2131034125) && this.h != getResources().getConfiguration().uiMode) {
            this.j = true;
        }
        cn.manstep.phonemirrorBox.util.s.d("BaseActivity", "checkRecreate: bRecreate=" + this.j);
        if (!this.j || cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
            return;
        }
        recreate();
    }

    private void R(int i, int i2, int i3) {
        if (i > i2) {
            setRequestedOrientation(0);
        } else {
            setRequestedOrientation(1);
        }
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = i;
        attributes.height = i2;
        attributes.gravity = i3;
        getWindow().setAttributes(attributes);
        p.m = true;
        p.k = i;
        p.l = i2;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 17) {
            getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        } else {
            getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        }
        p.I = displayMetrics.widthPixels - i;
        if (i == -1) {
            p.I = 0;
        }
        if (i2 == -1) {
            this.f = displayMetrics.heightPixels;
        } else {
            if (!u.z().Y()) {
                c0.i().o(i, i2);
            }
            this.f = i2;
        }
        this.e = i;
    }

    private void S(int i, int i2, int i3, int i4) {
        if (i > i2) {
            setRequestedOrientation(0);
        } else {
            setRequestedOrientation(1);
        }
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = i;
        attributes.height = i2;
        attributes.x = i3;
        attributes.y = i4;
        attributes.gravity = 48;
        getWindow().setAttributes(attributes);
        p.m = true;
        p.k = i;
        p.l = i2 - 128;
        p.i = true;
        p.j = true;
        p.z = true;
        c0.i().o(p.k, p.l);
    }

    private void T(WindowManager.LayoutParams layoutParams) {
        if (layoutParams != null) {
            R(layoutParams.width, layoutParams.height, layoutParams.gravity);
        }
    }

    private void U(int i, int i2) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 17) {
            getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        } else {
            getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        }
        R(displayMetrics.widthPixels - i, displayMetrics.heightPixels - i2, 8388659);
    }

    private void W(int i, int i2, int i3, int i4) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 17) {
            getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        } else {
            getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        }
        if (displayMetrics.heightPixels == i2 || i4 == 0) {
            FrameLayout frameLayout = (FrameLayout) findViewById(R.id.content);
            frameLayout.getLayoutParams().width = i;
            frameLayout.getLayoutParams().height = -1;
            frameLayout.setX(i3);
            frameLayout.setY(i4);
        } else {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.width = i;
            attributes.height = i2;
            attributes.x = i3;
            attributes.y = i4;
            attributes.gravity = 8388659;
            getWindow().setAttributes(attributes);
        }
        if (p.I <= 0) {
            p.I = i3;
        }
        p.m = true;
        p.k = i;
        p.l = i2;
        c0.i().o(i, i2);
        this.e = i;
        this.f = i2;
    }

    private void X(int i, int i2, int i3, int i4, int i5, int i6) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 17) {
            getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        } else {
            getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        }
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.content);
        if (i3 == 0 && i5 == 0) {
            frameLayout.getLayoutParams().width = i;
            frameLayout.setX(CropImageView.DEFAULT_ASPECT_RATIO);
        } else {
            frameLayout.getLayoutParams().width = (i - i3) - i5;
            frameLayout.setX(i3);
        }
        if (i4 == 0 && i6 == 0) {
            frameLayout.getLayoutParams().height = i2;
            frameLayout.setY(CropImageView.DEFAULT_ASPECT_RATIO);
        } else {
            frameLayout.getLayoutParams().height = (i2 - i4) - i6;
            frameLayout.setY(i4);
        }
        if (p.I <= 0) {
            p.I = i3;
        }
        p.m = true;
        p.k = frameLayout.getLayoutParams().width;
        p.l = frameLayout.getLayoutParams().height;
        c0.i().o(frameLayout.getLayoutParams().width, frameLayout.getLayoutParams().height);
        this.e = frameLayout.getLayoutParams().width;
        this.f = frameLayout.getLayoutParams().height;
        j0(this, getApplication());
    }

    private void Y(Rect rect) {
        cn.manstep.phonemirrorBox.util.s.d("BaseActivity", "fixedContentSize: " + rect.flattenToString());
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 17) {
            getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        } else {
            getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        }
        cn.manstep.phonemirrorBox.util.s.d("BaseActivity", "fixedContentSize: " + displayMetrics.widthPixels + "x" + displayMetrics.heightPixels);
        if (displayMetrics.heightPixels == rect.height() || rect.bottom < displayMetrics.heightPixels) {
            cn.manstep.phonemirrorBox.util.s.d("BaseActivity", "fixedContentSize: 1");
            FrameLayout frameLayout = (FrameLayout) findViewById(R.id.content);
            frameLayout.getLayoutParams().width = rect.width();
            if (displayMetrics.heightPixels != rect.height()) {
                frameLayout.getLayoutParams().height = rect.height();
            }
            frameLayout.setX(rect.left);
            frameLayout.setY(rect.top);
        } else {
            cn.manstep.phonemirrorBox.util.s.d("BaseActivity", "fixedContentSize: 2");
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.width = rect.width();
            attributes.height = rect.height();
            attributes.x = rect.left;
            attributes.y = rect.top;
            attributes.gravity = 8388659;
            getWindow().setAttributes(attributes);
        }
        if (p.I <= 0) {
            p.I = rect.left;
        }
        p.m = true;
        p.k = rect.width();
        p.l = rect.height();
        c0.i().o(p.k, p.l);
        this.e = p.k;
        this.f = p.l;
        cn.manstep.phonemirrorBox.util.s.d("BaseActivity", "fixedContentSize: " + p.k + "x" + p.l);
        j0(this, getApplication());
    }

    private int Z() {
        if (getResources().getConfiguration().orientation == 0) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            if (Build.VERSION.SDK_INT >= 17) {
                getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
            } else {
                getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            }
            if (displayMetrics.widthPixels < displayMetrics.heightPixels) {
                this.i = 1;
            } else {
                this.i = 2;
            }
        }
        return this.i;
    }

    private float b0(int i, int i2) {
        cn.manstep.phonemirrorBox.util.s.c("BaseActivity,getTargetDensity: " + i + "x" + i2);
        if (i >= 1764 && i <= 1920) {
            if (i2 == 952) {
                cn.manstep.phonemirrorBox.util.s.d("BaseActivity", "getTargetDensity: dpi=960f");
                return i / 720.0f;
            }
            if (i2 > 600 && i2 < 720) {
                cn.manstep.phonemirrorBox.util.s.d("BaseActivity", "getTargetDensity: dpi=980f");
                return i / 980.0f;
            }
            if (i2 > 720) {
                cn.manstep.phonemirrorBox.util.s.d("BaseActivity", "getTargetDensity: dpi=640f");
                return i / 640.0f;
            }
            cn.manstep.phonemirrorBox.util.s.d("BaseActivity", "getTargetDensity: dpi=960f");
            return i / 960.0f;
        }
        if (i == 768 && i2 <= 1024) {
            cn.manstep.phonemirrorBox.util.s.d("BaseActivity", "getTargetDensity: dpi=720f");
            return i / 720.0f;
        }
        if (i == 1280) {
            if (i2 >= 1368 && i2 <= 1600) {
                cn.manstep.phonemirrorBox.util.s.d("BaseActivity", "getTargetDensity: dpi=750f");
                return i / 750.0f;
            }
            if (i2 <= 480) {
                cn.manstep.phonemirrorBox.util.s.d("BaseActivity", "getTargetDensity: dpi=720f");
                return i / 720.0f;
            }
            cn.manstep.phonemirrorBox.util.s.d("BaseActivity", "getTargetDensity: dpi=640f");
            return i / 640.0f;
        }
        if (i == 1024 && i2 <= 600) {
            cn.manstep.phonemirrorBox.util.s.d("BaseActivity", "getTargetDensity: dpi=560f");
            return i / 560.0f;
        }
        if (i > 1200 && i2 <= 820) {
            if (i2 < 640) {
                cn.manstep.phonemirrorBox.util.s.d("BaseActivity", "getTargetDensity: dpi=800f");
                return i / 800.0f;
            }
            cn.manstep.phonemirrorBox.util.s.d("BaseActivity", "getTargetDensity: dpi=720f");
            return i / 720.0f;
        }
        if (i == 1200 && i2 <= 720) {
            cn.manstep.phonemirrorBox.util.s.d("BaseActivity", "getTargetDensity: dpi=640f");
            return i / 640.0f;
        }
        if (i >= 2000 && i < 2200) {
            cn.manstep.phonemirrorBox.util.s.d("BaseActivity", "getTargetDensity: dpi=720f");
            return i / 720.0f;
        }
        if (i >= 2200) {
            if (i == 2560) {
                cn.manstep.phonemirrorBox.util.s.d("BaseActivity", "getTargetDensity: dpi=800f");
                return i / 800.0f;
            }
            cn.manstep.phonemirrorBox.util.s.d("BaseActivity", "getTargetDensity: dpi=720f");
            return i / 720.0f;
        }
        if (i == 800 && i2 <= 480) {
            cn.manstep.phonemirrorBox.util.s.d("BaseActivity", "getTargetDensity: dpi=560f");
            return i / 560.0f;
        }
        if (i > 900) {
            cn.manstep.phonemirrorBox.util.s.d("BaseActivity", "getTargetDensity: dpi=560f");
            return i / 560.0f;
        }
        cn.manstep.phonemirrorBox.util.s.d("BaseActivity", "getTargetDensity: dpi=480f");
        return i / 480.0f;
    }

    private boolean c0() {
        Rect rectUnflattenFromString = Rect.unflattenFromString(b0.i().n("AREA_RECT", BuildConfig.FLAVOR));
        if (rectUnflattenFromString == null || rectUnflattenFromString.width() <= 0 || rectUnflattenFromString.height() <= 0) {
            return false;
        }
        Y(rectUnflattenFromString);
        return true;
    }

    private void i0(int i) {
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.content);
        View view = (View) frameLayout.getParent();
        if (view != null) {
            view.setBackgroundColor(i);
        }
        frameLayout.getChildAt(0).setBackgroundColor(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j0(Activity activity, Application application) {
        int i;
        cn.manstep.phonemirrorBox.util.s.p("BaseActivity", "setCustomDensity: start");
        DisplayMetrics displayMetrics = application.getResources().getDisplayMetrics();
        if (this.k == CropImageView.DEFAULT_ASPECT_RATIO) {
            this.k = displayMetrics.density;
            this.m = displayMetrics.scaledDensity;
            this.l = displayMetrics.densityDpi;
            cn.manstep.phonemirrorBox.util.s.c("BaseActivity,setCustomDensity: sysDensity=" + this.k + ", sysDensityDpi=" + this.l + ", sysScaledDensity=" + this.m);
            application.unregisterComponentCallbacks(this.q);
            application.registerComponentCallbacks(this.q);
        }
        int i2 = this.e;
        float fB0 = (i2 <= 0 || (i = this.f) <= 0) ? b0(displayMetrics.widthPixels, displayMetrics.heightPixels) : b0(i2, i);
        float f = (this.m - this.k) + fB0;
        int i3 = (int) (160.0f * fB0);
        cn.manstep.phonemirrorBox.util.s.c("BaseActivity,setCustomDensity: targetDensity=" + fB0 + ", widthPixels=" + displayMetrics.widthPixels + ", heightPixels=" + displayMetrics.heightPixels);
        displayMetrics.density = fB0;
        displayMetrics.scaledDensity = f;
        displayMetrics.densityDpi = i3;
        b0.i().F("density", Float.valueOf(displayMetrics.density));
        b0.i().F("sdensity", Float.valueOf(displayMetrics.scaledDensity));
        b0.i().F("densityd", Integer.valueOf(displayMetrics.densityDpi));
        this.o = f * b0.i().l("FontScaled", 1.0f);
        this.n = fB0;
        this.p = i3;
        DisplayMetrics displayMetrics2 = activity.getResources().getDisplayMetrics();
        displayMetrics2.density = this.n;
        displayMetrics2.scaledDensity = this.o;
        displayMetrics2.densityDpi = this.p;
        cn.manstep.phonemirrorBox.util.s.o("BaseActivity,setCustomDensity: over density=" + this.n + ", densityDpi=" + this.p + ", scaledDensity=" + this.o);
    }

    private void l0(int i) {
        int i2 = i & 48;
        cn.manstep.phonemirrorBox.util.s.i("BaseActivity", "setUiModeStyle: uiMode=" + i2 + "," + this);
        if (getResources().getBoolean(2131034113)) {
            if (i2 == 32) {
                k0(this, getResources().getColor(2131099649));
                if (u.z().W()) {
                    i0(-16777216);
                    return;
                }
                return;
            }
            k0(this, getResources().getColor(2131099648));
            if (u.z().W()) {
                i0(Color.parseColor("#DCE6FA"));
            }
        }
    }

    private void m0(int i, int i2, int i3, int i4, int i5, int i6) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 17) {
            getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        } else {
            getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        }
        if (i3 != 0 || i5 != 0) {
            i = (i - i3) - i5;
        }
        if (i4 != 0 || i6 != 0) {
            i2 = (i2 - i4) - i6;
        }
        if (p.I <= 0) {
            p.I = i3;
        }
        p.m = true;
        p.k = i;
        p.l = i2;
        c0.i().o(i, i2);
        this.e = i;
        this.f = i2;
    }

    protected void V() {
        boolean z;
        if (c0()) {
            return;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 17) {
            getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        } else {
            getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        }
        boolean z2 = true;
        if (!TextUtils.isEmpty(this.f1679d) && getResources().getString(2131689872).contains(this.f1679d) && "SABRESD-MX6DQ".equals(this.f1679d)) {
            if ("KOT49H".equals(Build.ID)) {
                W(displayMetrics.widthPixels, displayMetrics.heightPixels - 72, 0, 0);
            } else {
                W(displayMetrics.widthPixels - 136, displayMetrics.heightPixels, 136, 0);
            }
            z = true;
        } else {
            z = false;
        }
        int iG = u.z().G(getResources().getInteger(2131361823));
        if (iG > 0) {
            int i = u.z().k() == 0 ? iG : 0;
            if (x.h(x.e(b0.i().m("LanguageID", 0)))) {
                i = i == 0 ? -iG : 0;
            }
            W(displayMetrics.widthPixels - iG, displayMetrics.heightPixels, i, 0);
            z = true;
        }
        Rect rectA = u.z().A();
        if (rectA != null) {
            X(displayMetrics.widthPixels, displayMetrics.heightPixels, rectA.left, rectA.top, rectA.right, rectA.bottom);
            z = true;
        }
        Rect rectC = u.z().C();
        if (rectC != null) {
            m0(displayMetrics.widthPixels, displayMetrics.heightPixels, rectC.left, rectC.top, rectC.right, rectC.bottom);
        } else {
            z2 = z;
        }
        if (z2) {
            j0(this, getApplication());
        }
    }

    public float a0() {
        return this.o;
    }

    @Override // androidx.appcompat.app.d, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        ContextWrapper contextWrapperA = r.a(context, x.e(b0.i().m("LanguageID", 0)));
        super.attachBaseContext(new b(this, contextWrapperA, null, contextWrapperA.getResources().getConfiguration()));
    }

    protected boolean d0() {
        return this.r == 2;
    }

    public void e0() {
        this.s = true;
        cn.manstep.phonemirrorBox.util.f.d(this, Main1Activity.class, false);
        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 12);
        cn.manstep.phonemirrorBox.v0.e.P(false);
    }

    protected void f0() {
        Rect rectC = u.z().C();
        if (rectC != null) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            if (Build.VERSION.SDK_INT >= 17) {
                getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
            } else {
                getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            }
            X(displayMetrics.widthPixels, displayMetrics.heightPixels, rectC.left, rectC.top, rectC.right, rectC.bottom);
        }
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        getApplication().unregisterComponentCallbacks(this.q);
    }

    protected void g0() {
        if (u.z().C() != null) {
            FrameLayout frameLayout = (FrameLayout) findViewById(R.id.content);
            frameLayout.getLayoutParams().width = -1;
            frameLayout.getLayoutParams().height = -1;
            frameLayout.setX(CropImageView.DEFAULT_ASPECT_RATIO);
            frameLayout.setY(CropImageView.DEFAULT_ASPECT_RATIO);
            j0(this, getApplication());
        }
    }

    public void h0(int i) {
        this.j = true;
        recreate();
    }

    public void k0(Activity activity, int i) {
        if (activity != null) {
            Window window = activity.getWindow();
            window.clearFlags(67108864);
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(i);
            View decorView = window.getDecorView();
            int systemUiVisibility = decorView.getSystemUiVisibility();
            if (Build.VERSION.SDK_INT >= 23) {
                double dRed = Color.red(i);
                Double.isNaN(dRed);
                double dGreen = Color.green(i);
                Double.isNaN(dGreen);
                double d2 = (dRed * 0.299d) + (dGreen * 0.587d);
                double dBlue = Color.blue(i);
                Double.isNaN(dBlue);
                systemUiVisibility = 1.0d - ((d2 + (dBlue * 0.114d)) / 255.0d) > 0.5d ? systemUiVisibility & (-8193) : systemUiVisibility | 8192;
            }
            decorView.setSystemUiVisibility(systemUiVisibility);
        }
    }

    @Override // androidx.appcompat.app.d, androidx.fragment.app.e, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 21) {
            l0(configuration.uiMode);
        }
        this.k = CropImageView.DEFAULT_ASPECT_RATIO;
        j0(this, getApplication());
        super.onConfigurationChanged(configuration);
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle bundle) {
        int i;
        super.onCreate(bundle);
        this.g = getResources().getConfiguration().locale;
        this.h = getResources().getConfiguration().uiMode;
        this.i = getResources().getConfiguration().orientation;
        cn.manstep.phonemirrorBox.util.s.d("BaseActivity", "onCreate: locale=" + this.g + ",uiMode=" + this.h);
        this.f1678c = p.c("ro.product.name", BuildConfig.FLAVOR);
        this.f1679d = p.c("ro.product.model", BuildConfig.FLAVOR);
        cn.manstep.phonemirrorBox.util.s.d("BaseActivity", "onCreate: name=" + this.f1678c + ", model=" + this.f1679d);
        if (!TextUtils.isEmpty(this.f1678c) && getResources().getString(2131689872).contains(this.f1678c)) {
            if ("mars".equals(this.f1678c)) {
                S(2337, 1472, 223, 0);
            } else {
                "gin".equals(this.f1678c);
            }
        }
        int integer = getResources().getInteger(2131361827);
        if (!TextUtils.isEmpty(this.f1679d) && getResources().getString(2131689872).contains(this.f1679d)) {
            String str = this.f1679d;
            byte b2 = -1;
            int iHashCode = str.hashCode();
            if (iHashCode != -813184040) {
                if (iHashCode != 75572) {
                    if (iHashCode == 56779230 && str.equals("MEK-MX8Q")) {
                        b2 = 2;
                    }
                } else if (str.equals("M18")) {
                    b2 = 0;
                }
            } else if (str.equals("msm8953_32")) {
                b2 = 1;
            }
            if (b2 == 0) {
                b0.i().B(false);
            } else if (b2 == 1) {
                b0.i().A(false);
            } else if (b2 == 2) {
                b0.i().E(true);
                b0.i().A(false);
            }
            integer = 0;
        }
        if (integer > 0) {
            p.I = integer;
            U(integer, 0);
        } else {
            T(u.z().u());
        }
        Rect rectUnflattenFromString = Rect.unflattenFromString(b0.i().n("AREA_RECT", BuildConfig.FLAVOR));
        if (rectUnflattenFromString != null) {
            this.e = rectUnflattenFromString.width();
            this.f = rectUnflattenFromString.height();
        }
        j0(this, getApplication());
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 17) {
            getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        } else {
            getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        }
        if (displayMetrics.widthPixels < displayMetrics.heightPixels) {
            this.f1677b = true;
        }
        if (this.i == 0) {
            if (this.f1677b) {
                this.i = 1;
            } else {
                this.i = 2;
            }
        }
        Point point = new Point();
        Point point2 = new Point();
        getWindow().getWindowManager().getDefaultDisplay().getCurrentSizeRange(point, point2);
        cn.manstep.phonemirrorBox.util.s.c("BaseActivity,onCreate: " + point.toString() + " " + point2.toString() + " " + p.o);
        if (this.f1677b && (i = point2.y) < p.o) {
            p.o = i;
        }
        cn.manstep.phonemirrorBox.u0.c.h().u(this, Settings.System.getInt(getContentResolver(), "hz_switch_meter", 0) == 0);
    }

    @Override // androidx.appcompat.app.d, androidx.fragment.app.e, android.app.Activity
    protected void onDestroy() {
        getApplication().unregisterComponentCallbacks(this.q);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.e, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.r = 3;
    }

    @Override // androidx.fragment.app.e, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.r = 2;
        if (Build.VERSION.SDK_INT >= 21) {
            l0(getResources().getConfiguration().uiMode);
        }
        if (this.s) {
            cn.manstep.phonemirrorBox.util.f.d(this, Main1Activity.class, true);
            cn.manstep.phonemirrorBox.v0.e.P(true);
            this.s = false;
        }
    }

    @Override // androidx.appcompat.app.d, androidx.fragment.app.e, android.app.Activity
    protected void onStart() {
        super.onStart();
        this.r = 1;
    }

    @Override // androidx.appcompat.app.d, androidx.fragment.app.e, android.app.Activity
    protected void onStop() {
        super.onStop();
        this.r = 4;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            Q();
        }
    }

    @Override // android.app.Activity
    public void recreate() {
        super.recreate();
        MyApplication.b().j();
        MyApplication.b().f();
        cn.manstep.phonemirrorBox.BoxInterface.f fVar = cn.manstep.phonemirrorBox.BoxInterface.d.l;
        if (fVar != null) {
            fVar.Q();
        }
        cn.manstep.phonemirrorBox.util.s.p("BaseActivity", "recreate: " + this.j);
    }
}
