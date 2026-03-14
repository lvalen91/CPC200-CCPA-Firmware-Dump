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
import androidx.appcompat.app.AbstractC0083f;
import androidx.appcompat.app.ActivityC0081d;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.BoxInterface.C0735f;
import cn.manstep.phonemirrorBox.floatwindow.C0843e;
import cn.manstep.phonemirrorBox.p088u0.C0956c;
import cn.manstep.phonemirrorBox.p089v0.C0995e;
import cn.manstep.phonemirrorBox.util.C0969f;
import cn.manstep.phonemirrorBox.util.C0982s;
import com.stub.StubApp;
import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import java.util.Locale;
import p016c.p017a.p024o.C0514d;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class ActivityC0881k extends ActivityC0081d {

    /* JADX INFO: renamed from: c */
    protected String f5489c;

    /* JADX INFO: renamed from: d */
    protected String f5490d;

    /* JADX INFO: renamed from: g */
    protected Locale f5493g;

    /* JADX INFO: renamed from: k */
    private float f5497k;

    /* JADX INFO: renamed from: l */
    private int f5498l;

    /* JADX INFO: renamed from: m */
    private float f5499m;

    /* JADX INFO: renamed from: n */
    private float f5500n;

    /* JADX INFO: renamed from: o */
    private float f5501o;

    /* JADX INFO: renamed from: p */
    private int f5502p;

    /* JADX INFO: renamed from: b */
    protected boolean f5488b = false;

    /* JADX INFO: renamed from: e */
    protected int f5491e = 0;

    /* JADX INFO: renamed from: f */
    protected int f5492f = 0;

    /* JADX INFO: renamed from: h */
    protected int f5494h = 0;

    /* JADX INFO: renamed from: i */
    protected int f5495i = 0;

    /* JADX INFO: renamed from: j */
    protected boolean f5496j = false;

    /* JADX INFO: renamed from: q */
    protected ComponentCallbacks f5503q = new a();

    /* JADX INFO: renamed from: r */
    private int f5504r = 0;

    /* JADX INFO: renamed from: s */
    private boolean f5505s = false;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k$a */
    class a implements ComponentCallbacks {
        a() {
        }

        @Override // android.content.ComponentCallbacks
        public void onConfigurationChanged(Configuration configuration) {
            if (configuration.fontScale > CropImageView.DEFAULT_ASPECT_RATIO) {
                ActivityC0881k activityC0881k = ActivityC0881k.this;
                activityC0881k.f5499m = activityC0881k.getApplication().getResources().getDisplayMetrics().scaledDensity;
                C0982s.m7374d("BaseActivity", "ComponentCallbacks->onConfigurationChanged: fontScale=" + configuration.fontScale + ",newLocale=" + configuration.locale + ",curLocale=" + ActivityC0881k.this.getResources().getConfiguration().locale);
                if (!ActivityC0881k.this.f5493g.toString().equals(configuration.locale.toString())) {
                    ActivityC0881k.this.f5496j = true;
                    if (!C0733d.m5574G()) {
                        ActivityC0881k.this.recreate();
                    }
                }
                ActivityC0881k.this.f5497k = CropImageView.DEFAULT_ASPECT_RATIO;
                if ("QTI-msmnile_gvmq for arm64-k6801_a-11(30)".equals(C0953u.m7001z().m7064y()) && ActivityC0881k.this.m6495P(configuration)) {
                    return;
                }
                ActivityC0881k activityC0881k2 = ActivityC0881k.this;
                activityC0881k2.m6508j0(activityC0881k2, activityC0881k2.getApplication());
                if (C0733d.m5574G() || !C0795b0.m6071i().m6093o("ShowFloatBall", false)) {
                    return;
                }
                C0843e.m6289g().m6300o(StubApp.getOrigApplicationContext(ActivityC0881k.this.getApplication().getApplicationContext()));
            }
        }

        @Override // android.content.ComponentCallbacks
        public void onLowMemory() {
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k$b */
    class b extends C0514d {

        /* JADX INFO: renamed from: f */
        final /* synthetic */ Configuration f5507f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(ActivityC0881k activityC0881k, Context context, Resources.Theme theme, Configuration configuration) {
            super(context, theme);
            this.f5507f = configuration;
        }

        @Override // p016c.p017a.p024o.C0514d
        /* JADX INFO: renamed from: a */
        public void mo4132a(Configuration configuration) {
            if (configuration != null) {
                configuration.setTo(this.f5507f);
            }
            super.mo4132a(configuration);
        }
    }

    static {
        AbstractC0083f.m432D(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b7  */
    /* JADX INFO: renamed from: P */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean m6495P(Configuration configuration) {
        int i;
        if (C0795b0.m6071i().m6091m("LanguageID", 0) == 0 && C0733d.m5574G()) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            if (Build.VERSION.SDK_INT >= 17) {
                getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
            } else {
                getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            }
            int iM7008G = C0953u.m7001z().m7008G(getResources().getInteger(2131361823));
            Locale locale = getResources().getConfiguration().locale;
            boolean zM7500h = C1002x.m7500h(configuration.locale);
            C0982s.m7374d("BaseActivity", "newLocale, isRtlConfig = " + zM7500h);
            C0982s.m7374d("BaseActivity", "curLocale = " + locale + ", newLocale = " + configuration.locale);
            if (iM7008G > 0) {
                int iM7047k = C0953u.m7001z().m7047k();
                if (!locale.toString().equals(configuration.locale.toString())) {
                    i = iM7047k == 0 ? !zM7500h ? iM7008G * 2 : 0 : zM7500h ? -iM7008G : iM7008G;
                } else if (iM7047k == 0) {
                }
                C0982s.m7374d("BaseActivity", "rightMargin= " + iM7008G + ",x= " + i);
                m6501W(displayMetrics.widthPixels - iM7008G, displayMetrics.heightPixels, i, 0);
                m6508j0(this, getApplication());
                if (!C0795b0.m6071i().m6093o("ShowFloatBall", false)) {
                    return true;
                }
                C0843e.m6289g().m6300o(StubApp.getOrigApplicationContext(getApplication().getApplicationContext()));
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: Q */
    private void m6496Q() {
        if (!this.f5493g.equals(getResources().getConfiguration().locale) || this.f5495i != m6504Z()) {
            this.f5496j = true;
        } else if (getResources().getBoolean(2131034125) && this.f5494h != getResources().getConfiguration().uiMode) {
            this.f5496j = true;
        }
        C0982s.m7374d("BaseActivity", "checkRecreate: bRecreate=" + this.f5496j);
        if (!this.f5496j || C0733d.m5574G()) {
            return;
        }
        recreate();
    }

    /* JADX INFO: renamed from: R */
    private void m6497R(int i, int i2, int i3) {
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
        C0925p.f5876m = true;
        C0925p.f5874k = i;
        C0925p.f5875l = i2;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 17) {
            getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        } else {
            getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        }
        C0925p.f5862I = displayMetrics.widthPixels - i;
        if (i == -1) {
            C0925p.f5862I = 0;
        }
        if (i2 == -1) {
            this.f5492f = displayMetrics.heightPixels;
        } else {
            if (!C0953u.m7001z().m7026Y()) {
                C0797c0.m6109i().m6120o(i, i2);
            }
            this.f5492f = i2;
        }
        this.f5491e = i;
    }

    /* JADX INFO: renamed from: S */
    private void m6498S(int i, int i2, int i3, int i4) {
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
        C0925p.f5876m = true;
        C0925p.f5874k = i;
        C0925p.f5875l = i2 - 128;
        C0925p.f5872i = true;
        C0925p.f5873j = true;
        C0925p.f5889z = true;
        C0797c0.m6109i().m6120o(C0925p.f5874k, C0925p.f5875l);
    }

    /* JADX INFO: renamed from: T */
    private void m6499T(WindowManager.LayoutParams layoutParams) {
        if (layoutParams != null) {
            m6497R(layoutParams.width, layoutParams.height, layoutParams.gravity);
        }
    }

    /* JADX INFO: renamed from: U */
    private void m6500U(int i, int i2) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 17) {
            getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        } else {
            getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        }
        m6497R(displayMetrics.widthPixels - i, displayMetrics.heightPixels - i2, 8388659);
    }

    /* JADX INFO: renamed from: W */
    private void m6501W(int i, int i2, int i3, int i4) {
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
        if (C0925p.f5862I <= 0) {
            C0925p.f5862I = i3;
        }
        C0925p.f5876m = true;
        C0925p.f5874k = i;
        C0925p.f5875l = i2;
        C0797c0.m6109i().m6120o(i, i2);
        this.f5491e = i;
        this.f5492f = i2;
    }

    /* JADX INFO: renamed from: X */
    private void m6502X(int i, int i2, int i3, int i4, int i5, int i6) {
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
        if (C0925p.f5862I <= 0) {
            C0925p.f5862I = i3;
        }
        C0925p.f5876m = true;
        C0925p.f5874k = frameLayout.getLayoutParams().width;
        C0925p.f5875l = frameLayout.getLayoutParams().height;
        C0797c0.m6109i().m6120o(frameLayout.getLayoutParams().width, frameLayout.getLayoutParams().height);
        this.f5491e = frameLayout.getLayoutParams().width;
        this.f5492f = frameLayout.getLayoutParams().height;
        m6508j0(this, getApplication());
    }

    /* JADX INFO: renamed from: Y */
    private void m6503Y(Rect rect) {
        C0982s.m7374d("BaseActivity", "fixedContentSize: " + rect.flattenToString());
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 17) {
            getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        } else {
            getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        }
        C0982s.m7374d("BaseActivity", "fixedContentSize: " + displayMetrics.widthPixels + "x" + displayMetrics.heightPixels);
        if (displayMetrics.heightPixels == rect.height() || rect.bottom < displayMetrics.heightPixels) {
            C0982s.m7374d("BaseActivity", "fixedContentSize: 1");
            FrameLayout frameLayout = (FrameLayout) findViewById(R.id.content);
            frameLayout.getLayoutParams().width = rect.width();
            if (displayMetrics.heightPixels != rect.height()) {
                frameLayout.getLayoutParams().height = rect.height();
            }
            frameLayout.setX(rect.left);
            frameLayout.setY(rect.top);
        } else {
            C0982s.m7374d("BaseActivity", "fixedContentSize: 2");
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.width = rect.width();
            attributes.height = rect.height();
            attributes.x = rect.left;
            attributes.y = rect.top;
            attributes.gravity = 8388659;
            getWindow().setAttributes(attributes);
        }
        if (C0925p.f5862I <= 0) {
            C0925p.f5862I = rect.left;
        }
        C0925p.f5876m = true;
        C0925p.f5874k = rect.width();
        C0925p.f5875l = rect.height();
        C0797c0.m6109i().m6120o(C0925p.f5874k, C0925p.f5875l);
        this.f5491e = C0925p.f5874k;
        this.f5492f = C0925p.f5875l;
        C0982s.m7374d("BaseActivity", "fixedContentSize: " + C0925p.f5874k + "x" + C0925p.f5875l);
        m6508j0(this, getApplication());
    }

    /* JADX INFO: renamed from: Z */
    private int m6504Z() {
        if (getResources().getConfiguration().orientation == 0) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            if (Build.VERSION.SDK_INT >= 17) {
                getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
            } else {
                getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            }
            if (displayMetrics.widthPixels < displayMetrics.heightPixels) {
                this.f5495i = 1;
            } else {
                this.f5495i = 2;
            }
        }
        return this.f5495i;
    }

    /* JADX INFO: renamed from: b0 */
    private float m6505b0(int i, int i2) {
        C0982s.m7373c("BaseActivity,getTargetDensity: " + i + "x" + i2);
        if (i >= 1764 && i <= 1920) {
            if (i2 == 952) {
                C0982s.m7374d("BaseActivity", "getTargetDensity: dpi=960f");
                return i / 720.0f;
            }
            if (i2 > 600 && i2 < 720) {
                C0982s.m7374d("BaseActivity", "getTargetDensity: dpi=980f");
                return i / 980.0f;
            }
            if (i2 > 720) {
                C0982s.m7374d("BaseActivity", "getTargetDensity: dpi=640f");
                return i / 640.0f;
            }
            C0982s.m7374d("BaseActivity", "getTargetDensity: dpi=960f");
            return i / 960.0f;
        }
        if (i == 768 && i2 <= 1024) {
            C0982s.m7374d("BaseActivity", "getTargetDensity: dpi=720f");
            return i / 720.0f;
        }
        if (i == 1280) {
            if (i2 >= 1368 && i2 <= 1600) {
                C0982s.m7374d("BaseActivity", "getTargetDensity: dpi=750f");
                return i / 750.0f;
            }
            if (i2 <= 480) {
                C0982s.m7374d("BaseActivity", "getTargetDensity: dpi=720f");
                return i / 720.0f;
            }
            C0982s.m7374d("BaseActivity", "getTargetDensity: dpi=640f");
            return i / 640.0f;
        }
        if (i == 1024 && i2 <= 600) {
            C0982s.m7374d("BaseActivity", "getTargetDensity: dpi=560f");
            return i / 560.0f;
        }
        if (i > 1200 && i2 <= 820) {
            if (i2 < 640) {
                C0982s.m7374d("BaseActivity", "getTargetDensity: dpi=800f");
                return i / 800.0f;
            }
            C0982s.m7374d("BaseActivity", "getTargetDensity: dpi=720f");
            return i / 720.0f;
        }
        if (i == 1200 && i2 <= 720) {
            C0982s.m7374d("BaseActivity", "getTargetDensity: dpi=640f");
            return i / 640.0f;
        }
        if (i >= 2000 && i < 2200) {
            C0982s.m7374d("BaseActivity", "getTargetDensity: dpi=720f");
            return i / 720.0f;
        }
        if (i >= 2200) {
            if (i == 2560) {
                C0982s.m7374d("BaseActivity", "getTargetDensity: dpi=800f");
                return i / 800.0f;
            }
            C0982s.m7374d("BaseActivity", "getTargetDensity: dpi=720f");
            return i / 720.0f;
        }
        if (i == 800 && i2 <= 480) {
            C0982s.m7374d("BaseActivity", "getTargetDensity: dpi=560f");
            return i / 560.0f;
        }
        if (i > 900) {
            C0982s.m7374d("BaseActivity", "getTargetDensity: dpi=560f");
            return i / 560.0f;
        }
        C0982s.m7374d("BaseActivity", "getTargetDensity: dpi=480f");
        return i / 480.0f;
    }

    /* JADX INFO: renamed from: c0 */
    private boolean m6506c0() {
        Rect rectUnflattenFromString = Rect.unflattenFromString(C0795b0.m6071i().m6092n("AREA_RECT", BuildConfig.FLAVOR));
        if (rectUnflattenFromString == null || rectUnflattenFromString.width() <= 0 || rectUnflattenFromString.height() <= 0) {
            return false;
        }
        m6503Y(rectUnflattenFromString);
        return true;
    }

    /* JADX INFO: renamed from: i0 */
    private void m6507i0(int i) {
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.content);
        View view = (View) frameLayout.getParent();
        if (view != null) {
            view.setBackgroundColor(i);
        }
        frameLayout.getChildAt(0).setBackgroundColor(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: j0 */
    public void m6508j0(Activity activity, Application application) {
        int i;
        C0982s.m7386p("BaseActivity", "setCustomDensity: start");
        DisplayMetrics displayMetrics = application.getResources().getDisplayMetrics();
        if (this.f5497k == CropImageView.DEFAULT_ASPECT_RATIO) {
            this.f5497k = displayMetrics.density;
            this.f5499m = displayMetrics.scaledDensity;
            this.f5498l = displayMetrics.densityDpi;
            C0982s.m7373c("BaseActivity,setCustomDensity: sysDensity=" + this.f5497k + ", sysDensityDpi=" + this.f5498l + ", sysScaledDensity=" + this.f5499m);
            application.unregisterComponentCallbacks(this.f5503q);
            application.registerComponentCallbacks(this.f5503q);
        }
        int i2 = this.f5491e;
        float fM6505b0 = (i2 <= 0 || (i = this.f5492f) <= 0) ? m6505b0(displayMetrics.widthPixels, displayMetrics.heightPixels) : m6505b0(i2, i);
        float f = (this.f5499m - this.f5497k) + fM6505b0;
        int i3 = (int) (160.0f * fM6505b0);
        C0982s.m7373c("BaseActivity,setCustomDensity: targetDensity=" + fM6505b0 + ", widthPixels=" + displayMetrics.widthPixels + ", heightPixels=" + displayMetrics.heightPixels);
        displayMetrics.density = fM6505b0;
        displayMetrics.scaledDensity = f;
        displayMetrics.densityDpi = i3;
        C0795b0.m6071i().m6085F("density", Float.valueOf(displayMetrics.density));
        C0795b0.m6071i().m6085F("sdensity", Float.valueOf(displayMetrics.scaledDensity));
        C0795b0.m6071i().m6085F("densityd", Integer.valueOf(displayMetrics.densityDpi));
        this.f5501o = f * C0795b0.m6071i().m6090l("FontScaled", 1.0f);
        this.f5500n = fM6505b0;
        this.f5502p = i3;
        DisplayMetrics displayMetrics2 = activity.getResources().getDisplayMetrics();
        displayMetrics2.density = this.f5500n;
        displayMetrics2.scaledDensity = this.f5501o;
        displayMetrics2.densityDpi = this.f5502p;
        C0982s.m7385o("BaseActivity,setCustomDensity: over density=" + this.f5500n + ", densityDpi=" + this.f5502p + ", scaledDensity=" + this.f5501o);
    }

    /* JADX INFO: renamed from: l0 */
    private void m6509l0(int i) {
        int i2 = i & 48;
        C0982s.m7379i("BaseActivity", "setUiModeStyle: uiMode=" + i2 + "," + this);
        if (getResources().getBoolean(2131034113)) {
            if (i2 == 32) {
                m6518k0(this, getResources().getColor(2131099649));
                if (C0953u.m7001z().m7024W()) {
                    m6507i0(-16777216);
                    return;
                }
                return;
            }
            m6518k0(this, getResources().getColor(2131099648));
            if (C0953u.m7001z().m7024W()) {
                m6507i0(Color.parseColor("#DCE6FA"));
            }
        }
    }

    /* JADX INFO: renamed from: m0 */
    private void m6510m0(int i, int i2, int i3, int i4, int i5, int i6) {
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
        if (C0925p.f5862I <= 0) {
            C0925p.f5862I = i3;
        }
        C0925p.f5876m = true;
        C0925p.f5874k = i;
        C0925p.f5875l = i2;
        C0797c0.m6109i().m6120o(i, i2);
        this.f5491e = i;
        this.f5492f = i2;
    }

    /* JADX INFO: renamed from: V */
    protected void m6511V() {
        boolean z;
        if (m6506c0()) {
            return;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 17) {
            getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        } else {
            getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        }
        boolean z2 = true;
        if (!TextUtils.isEmpty(this.f5490d) && getResources().getString(2131689872).contains(this.f5490d) && "SABRESD-MX6DQ".equals(this.f5490d)) {
            if ("KOT49H".equals(Build.ID)) {
                m6501W(displayMetrics.widthPixels, displayMetrics.heightPixels - 72, 0, 0);
            } else {
                m6501W(displayMetrics.widthPixels - 136, displayMetrics.heightPixels, 136, 0);
            }
            z = true;
        } else {
            z = false;
        }
        int iM7008G = C0953u.m7001z().m7008G(getResources().getInteger(2131361823));
        if (iM7008G > 0) {
            int i = C0953u.m7001z().m7047k() == 0 ? iM7008G : 0;
            if (C1002x.m7500h(C1002x.m7497e(C0795b0.m6071i().m6091m("LanguageID", 0)))) {
                i = i == 0 ? -iM7008G : 0;
            }
            m6501W(displayMetrics.widthPixels - iM7008G, displayMetrics.heightPixels, i, 0);
            z = true;
        }
        Rect rectM7002A = C0953u.m7001z().m7002A();
        if (rectM7002A != null) {
            m6502X(displayMetrics.widthPixels, displayMetrics.heightPixels, rectM7002A.left, rectM7002A.top, rectM7002A.right, rectM7002A.bottom);
            z = true;
        }
        Rect rectM7004C = C0953u.m7001z().m7004C();
        if (rectM7004C != null) {
            m6510m0(displayMetrics.widthPixels, displayMetrics.heightPixels, rectM7004C.left, rectM7004C.top, rectM7004C.right, rectM7004C.bottom);
        } else {
            z2 = z;
        }
        if (z2) {
            m6508j0(this, getApplication());
        }
    }

    /* JADX INFO: renamed from: a0 */
    public float m6512a0() {
        return this.f5501o;
    }

    @Override // androidx.appcompat.app.ActivityC0081d, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        ContextWrapper contextWrapperM6931a = C0938r.m6931a(context, C1002x.m7497e(C0795b0.m6071i().m6091m("LanguageID", 0)));
        super.attachBaseContext(new b(this, contextWrapperM6931a, null, contextWrapperM6931a.getResources().getConfiguration()));
    }

    /* JADX INFO: renamed from: d0 */
    protected boolean m6513d0() {
        return this.f5504r == 2;
    }

    /* JADX INFO: renamed from: e0 */
    public void m6514e0() {
        this.f5505s = true;
        C0969f.m7238d(this, Main1Activity.class, false);
        C0733d.m5579O(1, 12);
        C0995e.m7443P(false);
    }

    /* JADX INFO: renamed from: f0 */
    protected void m6515f0() {
        Rect rectM7004C = C0953u.m7001z().m7004C();
        if (rectM7004C != null) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            if (Build.VERSION.SDK_INT >= 17) {
                getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
            } else {
                getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            }
            m6502X(displayMetrics.widthPixels, displayMetrics.heightPixels, rectM7004C.left, rectM7004C.top, rectM7004C.right, rectM7004C.bottom);
        }
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        getApplication().unregisterComponentCallbacks(this.f5503q);
    }

    /* JADX INFO: renamed from: g0 */
    protected void m6516g0() {
        if (C0953u.m7001z().m7004C() != null) {
            FrameLayout frameLayout = (FrameLayout) findViewById(R.id.content);
            frameLayout.getLayoutParams().width = -1;
            frameLayout.getLayoutParams().height = -1;
            frameLayout.setX(CropImageView.DEFAULT_ASPECT_RATIO);
            frameLayout.setY(CropImageView.DEFAULT_ASPECT_RATIO);
            m6508j0(this, getApplication());
        }
    }

    /* JADX INFO: renamed from: h0 */
    public void m6517h0(int i) {
        this.f5496j = true;
        recreate();
    }

    /* JADX INFO: renamed from: k0 */
    public void m6518k0(Activity activity, int i) {
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

    @Override // androidx.appcompat.app.ActivityC0081d, androidx.fragment.app.ActivityC0356e, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 21) {
            m6509l0(configuration.uiMode);
        }
        this.f5497k = CropImageView.DEFAULT_ASPECT_RATIO;
        m6508j0(this, getApplication());
        super.onConfigurationChanged(configuration);
    }

    @Override // androidx.fragment.app.ActivityC0356e, androidx.activity.ComponentActivity, androidx.core.app.ActivityC0236f, android.app.Activity
    protected void onCreate(Bundle bundle) {
        int i;
        super.onCreate(bundle);
        this.f5493g = getResources().getConfiguration().locale;
        this.f5494h = getResources().getConfiguration().uiMode;
        this.f5495i = getResources().getConfiguration().orientation;
        C0982s.m7374d("BaseActivity", "onCreate: locale=" + this.f5493g + ",uiMode=" + this.f5494h);
        this.f5489c = C0925p.m6859c("ro.product.name", BuildConfig.FLAVOR);
        this.f5490d = C0925p.m6859c("ro.product.model", BuildConfig.FLAVOR);
        C0982s.m7374d("BaseActivity", "onCreate: name=" + this.f5489c + ", model=" + this.f5490d);
        if (!TextUtils.isEmpty(this.f5489c) && getResources().getString(2131689872).contains(this.f5489c)) {
            if ("mars".equals(this.f5489c)) {
                m6498S(2337, 1472, 223, 0);
            } else {
                "gin".equals(this.f5489c);
            }
        }
        int integer = getResources().getInteger(2131361827);
        if (!TextUtils.isEmpty(this.f5490d) && getResources().getString(2131689872).contains(this.f5490d)) {
            String str = this.f5490d;
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
                C0795b0.m6071i().m6082B(false);
            } else if (b2 == 1) {
                C0795b0.m6071i().m6081A(false);
            } else if (b2 == 2) {
                C0795b0.m6071i().m6084E(true);
                C0795b0.m6071i().m6081A(false);
            }
            integer = 0;
        }
        if (integer > 0) {
            C0925p.f5862I = integer;
            m6500U(integer, 0);
        } else {
            m6499T(C0953u.m7001z().m7060u());
        }
        Rect rectUnflattenFromString = Rect.unflattenFromString(C0795b0.m6071i().m6092n("AREA_RECT", BuildConfig.FLAVOR));
        if (rectUnflattenFromString != null) {
            this.f5491e = rectUnflattenFromString.width();
            this.f5492f = rectUnflattenFromString.height();
        }
        m6508j0(this, getApplication());
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 17) {
            getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        } else {
            getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        }
        if (displayMetrics.widthPixels < displayMetrics.heightPixels) {
            this.f5488b = true;
        }
        if (this.f5495i == 0) {
            if (this.f5488b) {
                this.f5495i = 1;
            } else {
                this.f5495i = 2;
            }
        }
        Point point = new Point();
        Point point2 = new Point();
        getWindow().getWindowManager().getDefaultDisplay().getCurrentSizeRange(point, point2);
        C0982s.m7373c("BaseActivity,onCreate: " + point.toString() + " " + point2.toString() + " " + C0925p.f5878o);
        if (this.f5488b && (i = point2.y) < C0925p.f5878o) {
            C0925p.f5878o = i;
        }
        C0956c.m7100h().m7127u(this, Settings.System.getInt(getContentResolver(), "hz_switch_meter", 0) == 0);
    }

    @Override // androidx.appcompat.app.ActivityC0081d, androidx.fragment.app.ActivityC0356e, android.app.Activity
    protected void onDestroy() {
        getApplication().unregisterComponentCallbacks(this.f5503q);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.ActivityC0356e, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.f5504r = 3;
    }

    @Override // androidx.fragment.app.ActivityC0356e, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.f5504r = 2;
        if (Build.VERSION.SDK_INT >= 21) {
            m6509l0(getResources().getConfiguration().uiMode);
        }
        if (this.f5505s) {
            C0969f.m7238d(this, Main1Activity.class, true);
            C0995e.m7443P(true);
            this.f5505s = false;
        }
    }

    @Override // androidx.appcompat.app.ActivityC0081d, androidx.fragment.app.ActivityC0356e, android.app.Activity
    protected void onStart() {
        super.onStart();
        this.f5504r = 1;
    }

    @Override // androidx.appcompat.app.ActivityC0081d, androidx.fragment.app.ActivityC0356e, android.app.Activity
    protected void onStop() {
        super.onStop();
        this.f5504r = 4;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            m6496Q();
        }
    }

    @Override // android.app.Activity
    public void recreate() {
        super.recreate();
        MyApplication.m5997b().m6006j();
        MyApplication.m5997b().m6003f();
        C0735f c0735f = C0733d.f4428l;
        if (c0735f != null) {
            c0735f.m5693Q();
        }
        C0982s.m7386p("BaseActivity", "recreate: " + this.f5496j);
    }
}
