package cn.manstep.phonemirrorBox;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Handler;
import android.os.Process;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import cn.manstep.phonemirrorBox.BoxInterface.d;
import cn.manstep.phonemirrorBox.BoxInterface.f;
import cn.manstep.phonemirrorBox.service.BackgroundService;
import com.stub.StubApp;
import com.yalantis.ucrop.BuildConfig;
import java.io.File;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class MyApplication extends Application {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static MyApplication f1542d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f1543b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public DisplayMetrics f1544c;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                MyApplication.this.startService(new Intent(MyApplication.this, (Class<?>) BackgroundService.class));
            } catch (Exception unused) {
            }
            try {
                if (Build.VERSION.SDK_INT >= 26) {
                    MyApplication.this.startForegroundService(new Intent(MyApplication.this, (Class<?>) AutoStartService.class));
                } else {
                    MyApplication.this.startService(new Intent(MyApplication.this, (Class<?>) AutoStartService.class));
                }
            } catch (Error | Exception unused2) {
            }
            MyApplication.this.sendBroadcast(new Intent("cn.manstep.phonemirrorBox.STARTED"));
        }
    }

    private void a() {
        if (h()) {
            StubApp.getOrigApplicationContext(getApplicationContext()).getPackageManager().setComponentEnabledSetting(new ComponentName(StubApp.getOrigApplicationContext(getApplicationContext()), (Class<?>) ForegroundService.class), 2, 1);
        }
    }

    public static MyApplication b() {
        return f1542d;
    }

    private void d() {
        String strC = p.c("ro.product.manufacturer", BuildConfig.FLAVOR);
        if (strC.equals(BuildConfig.FLAVOR)) {
            strC = Build.MANUFACTURER;
        }
        String strC2 = p.c("ro.board.platform", BuildConfig.FLAVOR);
        String str = Build.MODEL;
        String str2 = Build.PRODUCT;
        if (strC.equals("ATC") && strC2.equals("ac8317") && str.equals("AC821X") && str2.contains("CA7054")) {
            p.u = true;
            p.v = true;
        }
        i(b0.i().o("BG_CONN", p.A));
    }

    public static boolean h() {
        try {
            throw new Exception("Exception");
        } catch (Exception e) {
            for (StackTraceElement stackTraceElement : e.getStackTrace()) {
                if (stackTraceElement.getClassName().equals("de.robv.android.xposed.XposedBridge") && stackTraceElement.getMethodName().equals("main")) {
                    cn.manstep.phonemirrorBox.util.s.e("MyApplication,isXposedHookByStack: Xposed is active on the device.");
                } else if (stackTraceElement.getClassName().equals("de.robv.android.xposed.XposedBridge") && stackTraceElement.getMethodName().equals("handleHookedMethod")) {
                    cn.manstep.phonemirrorBox.util.s.e("MyApplication,isXposedHookByStack: A method on the stack trace has been hooked using Xposed.");
                }
                return true;
            }
            return false;
        }
    }

    private void k() {
        new Handler().postDelayed(new a(), 1500L);
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        c.m.a.l(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0032, code lost:
    
        r0 = 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int[] c() {
        int iB = u.z().b();
        if (iB == -1) {
            iB = -1;
        }
        if (iB == -1) {
            iB = !x.i() ? 4 : 4;
        }
        return new int[]{b0.i().m("iPhoneMode", 2), b0.i().m("AndroidMode", iB)};
    }

    public void e() {
        File[] fileArrListFiles;
        if (b0.i().o("ATP", false)) {
            boolean zO = b0.i().o("CloseLog", true);
            cn.manstep.phonemirrorBox.util.s.a = zO;
            if (zO) {
                cn.manstep.phonemirrorBox.util.s.k(StubApp.getOrigApplicationContext(getApplicationContext()));
            }
            cn.manstep.phonemirrorBox.util.s.c("\n\n");
            cn.manstep.phonemirrorBox.util.s.h("MyApplication,onCreate:===========onCreate===========" + getPackageName() + "-2025.03.19.1126-2025.03.19.1126,PID=" + Process.myPid());
            StringBuilder sb = new StringBuilder();
            sb.append("initLog: ");
            sb.append(cn.manstep.phonemirrorBox.util.f.b(StubApp.getOrigApplicationContext(getApplicationContext()), "com.android.systemui", "com.android.systemui.usb.UsbPermissionActivity"));
            cn.manstep.phonemirrorBox.util.s.d("MyApplication", sb.toString());
            String str = getApplicationInfo().nativeLibraryDir;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("initLog: ");
            sb2.append(str);
            cn.manstep.phonemirrorBox.util.s.d("MyApplication", sb2.toString());
            File file = new File(str);
            if (file.exists() && file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
                for (File file2 : fileArrListFiles) {
                    cn.manstep.phonemirrorBox.util.s.i("MyApplication", "initLog: " + file2.getAbsolutePath());
                }
            }
        }
    }

    public void f() {
        WindowManager windowManager = (WindowManager) getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 17) {
            windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        } else {
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        }
        DisplayMetrics displayMetrics2 = new DisplayMetrics();
        this.f1544c = displayMetrics2;
        displayMetrics2.setTo(displayMetrics);
        p.k = displayMetrics.widthPixels;
        p.l = displayMetrics.heightPixels;
        p.p = displayMetrics.densityDpi;
        p.q = displayMetrics.density;
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        p.n = displayMetrics.widthPixels;
        p.o = displayMetrics.heightPixels;
        cn.manstep.phonemirrorBox.util.s.d("MyApplication", "initSize: " + p.k + "x" + p.l + "," + p.n + "x" + p.o);
        u.z().m0(p.k, p.l, p.p);
        c0.j(p.k, p.l, p.n, p.o, b0.i().n("vwh", BuildConfig.FLAVOR), b0.i().m("vandroidautoh", 0));
        p.C = b0.i().m("fps", 30);
    }

    public boolean g() {
        return cn.manstep.phonemirrorBox.e0.a.a().b();
    }

    public void i(boolean z) {
        p.A = z;
        ComponentName componentName = new ComponentName(StubApp.getOrigApplicationContext(getApplicationContext()), (Class<?>) Main1Activity.class);
        PackageManager packageManager = StubApp.getOrigApplicationContext(getApplicationContext()).getPackageManager();
        int componentEnabledSetting = packageManager.getComponentEnabledSetting(componentName);
        if (z) {
            if (componentEnabledSetting == 2) {
                packageManager.setComponentEnabledSetting(componentName, 1, 1);
            }
        } else if (componentEnabledSetting != 2) {
            packageManager.setComponentEnabledSetting(componentName, 2, 1);
        }
    }

    public void j() {
        int[] iArrC = c();
        int i = iArrC[1];
        int i2 = iArrC[0];
        f.k.b(i);
        f.k.c(i2);
        cn.manstep.phonemirrorBox.util.s.d("MyApplication", "setWorkMode： androidMode=" + i + ", iPhoneMode=" + i2);
        cn.manstep.phonemirrorBox.BoxInterface.f fVar = d.l;
        if (fVar != null) {
            fVar.Y0();
        }
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        cn.manstep.phonemirrorBox.util.s.c("MyApplication,onConfigurationChanged: orientation = " + configuration.orientation + ", uiMode=" + configuration.uiMode);
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        f1542d = this;
        this.f1543b = SystemClock.elapsedRealtime();
        registerActivityLifecycleCallbacks(cn.manstep.phonemirrorBox.e0.a.a());
        b0.i().p(this);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int iM = b0.i().m("densityd", 0);
        if (iM > 0) {
            displayMetrics.density = b0.i().l("density", 2.0f);
            displayMetrics.scaledDensity = b0.i().l("sdensity", 2.0f);
            displayMetrics.densityDpi = iM;
        }
        int iM2 = b0.i().m("NightMode", 2);
        if (iM2 == 1) {
            androidx.appcompat.app.f.H(2);
        } else if (iM2 == 0) {
            androidx.appcompat.app.f.H(1);
        } else {
            androidx.appcompat.app.f.H(-1);
        }
        p.g = b0.i().m("DecodeMethod", 1) == 0;
        e();
        f();
        if (b0.i().m("UiVersion", 255) == 255) {
            b0.i().b();
            b0.i().F("UiVersion", 37);
            b0.i().C();
            if (p.e() == 0) {
                b0.i().F("BgKeyValid", Boolean.FALSE);
            }
            a();
        }
        p.s = b0.i().m("MicType", 0) == 1;
        p.i = b0.i().o("IsTextureView", cn.manstep.phonemirrorBox.util.c0.q());
        int iM3 = b0.i().m("LanguageID", 0);
        if (iM3 != 0) {
            x.a(this, iM3);
        }
        q.g().j(StubApp.getOrigApplicationContext(getApplicationContext()));
        cn.manstep.phonemirrorBox.u0.c.h();
        d();
        j();
        u.z().l0(StubApp.getOrigApplicationContext(getApplicationContext()));
        k();
        p.H = getResources().getBoolean(2131034119);
    }
}
