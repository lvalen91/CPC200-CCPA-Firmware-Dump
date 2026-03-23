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
import androidx.appcompat.app.AbstractC0083f;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.BoxInterface.C0735f;
import cn.manstep.phonemirrorBox.p071e0.C0813a;
import cn.manstep.phonemirrorBox.p088u0.C0956c;
import cn.manstep.phonemirrorBox.service.BackgroundService;
import cn.manstep.phonemirrorBox.util.C0964c0;
import cn.manstep.phonemirrorBox.util.C0969f;
import cn.manstep.phonemirrorBox.util.C0982s;
import com.stub.StubApp;
import com.yalantis.ucrop.BuildConfig;
import java.io.File;
import p016c.p062m.C0644a;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class MyApplication extends Application {

    /* JADX INFO: renamed from: d */
    private static MyApplication f4697d;

    /* JADX INFO: renamed from: b */
    public long f4698b = 0;

    /* JADX INFO: renamed from: c */
    public DisplayMetrics f4699c;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MyApplication$a */
    class RunnableC0790a implements Runnable {
        RunnableC0790a() {
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

    /* JADX INFO: renamed from: a */
    private void m5996a() {
        if (m5999h()) {
            StubApp.getOrigApplicationContext(getApplicationContext()).getPackageManager().setComponentEnabledSetting(new ComponentName(StubApp.getOrigApplicationContext(getApplicationContext()), (Class<?>) ForegroundService.class), 2, 1);
        }
    }

    /* JADX INFO: renamed from: b */
    public static MyApplication m5997b() {
        return f4697d;
    }

    /* JADX INFO: renamed from: d */
    private void m5998d() {
        String strM6859c = C0925p.m6859c("ro.product.manufacturer", BuildConfig.FLAVOR);
        if (strM6859c.equals(BuildConfig.FLAVOR)) {
            strM6859c = Build.MANUFACTURER;
        }
        String strM6859c2 = C0925p.m6859c("ro.board.platform", BuildConfig.FLAVOR);
        String str = Build.MODEL;
        String str2 = Build.PRODUCT;
        if (strM6859c.equals("ATC") && strM6859c2.equals("ac8317") && str.equals("AC821X") && str2.contains("CA7054")) {
            C0925p.f5884u = true;
            C0925p.f5885v = true;
        }
        m6005i(C0795b0.m6071i().m6093o("BG_CONN", C0925p.f5854A));
    }

    /* JADX INFO: renamed from: h */
    public static boolean m5999h() {
        try {
            throw new Exception("Exception");
        } catch (Exception e) {
            for (StackTraceElement stackTraceElement : e.getStackTrace()) {
                if (stackTraceElement.getClassName().equals("de.robv.android.xposed.XposedBridge") && stackTraceElement.getMethodName().equals("main")) {
                    C0982s.m7375e("MyApplication,isXposedHookByStack: Xposed is active on the device.");
                } else if (stackTraceElement.getClassName().equals("de.robv.android.xposed.XposedBridge") && stackTraceElement.getMethodName().equals("handleHookedMethod")) {
                    C0982s.m7375e("MyApplication,isXposedHookByStack: A method on the stack trace has been hooked using Xposed.");
                }
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: renamed from: k */
    private void m6000k() {
        new Handler().postDelayed(new RunnableC0790a(), 1500L);
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        C0644a.m4995l(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0032, code lost:
    
        r0 = 1;
     */
    /* JADX INFO: renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int[] m6001c() {
        int iM7029b = C0953u.m7001z().m7029b();
        if (iM7029b == -1) {
            iM7029b = -1;
        }
        if (iM7029b == -1) {
            iM7029b = !C1002x.m7501i() ? 4 : 4;
        }
        return new int[]{C0795b0.m6071i().m6091m("iPhoneMode", 2), C0795b0.m6071i().m6091m("AndroidMode", iM7029b)};
    }

    /* JADX INFO: renamed from: e */
    public void m6002e() {
        File[] fileArrListFiles;
        if (C0795b0.m6071i().m6093o("ATP", false)) {
            boolean zM6093o = C0795b0.m6071i().m6093o("CloseLog", true);
            C0982s.f6143a = zM6093o;
            if (zM6093o) {
                C0982s.m7381k(StubApp.getOrigApplicationContext(getApplicationContext()));
            }
            C0982s.m7373c("\n\n");
            C0982s.m7378h("MyApplication,onCreate:===========onCreate===========" + getPackageName() + "-2025.03.19.1126-2025.03.19.1126,PID=" + Process.myPid());
            StringBuilder sb = new StringBuilder();
            sb.append("initLog: ");
            sb.append(C0969f.m7236b(StubApp.getOrigApplicationContext(getApplicationContext()), "com.android.systemui", "com.android.systemui.usb.UsbPermissionActivity"));
            C0982s.m7374d("MyApplication", sb.toString());
            String str = getApplicationInfo().nativeLibraryDir;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("initLog: ");
            sb2.append(str);
            C0982s.m7374d("MyApplication", sb2.toString());
            File file = new File(str);
            if (file.exists() && file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
                for (File file2 : fileArrListFiles) {
                    C0982s.m7379i("MyApplication", "initLog: " + file2.getAbsolutePath());
                }
            }
        }
    }

    /* JADX INFO: renamed from: f */
    public void m6003f() {
        WindowManager windowManager = (WindowManager) getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 17) {
            windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        } else {
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        }
        DisplayMetrics displayMetrics2 = new DisplayMetrics();
        this.f4699c = displayMetrics2;
        displayMetrics2.setTo(displayMetrics);
        C0925p.f5874k = displayMetrics.widthPixels;
        C0925p.f5875l = displayMetrics.heightPixels;
        C0925p.f5879p = displayMetrics.densityDpi;
        C0925p.f5880q = displayMetrics.density;
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        C0925p.f5877n = displayMetrics.widthPixels;
        C0925p.f5878o = displayMetrics.heightPixels;
        C0982s.m7374d("MyApplication", "initSize: " + C0925p.f5874k + "x" + C0925p.f5875l + "," + C0925p.f5877n + "x" + C0925p.f5878o);
        C0953u.m7001z().m7052m0(C0925p.f5874k, C0925p.f5875l, C0925p.f5879p);
        C0797c0.m6110j(C0925p.f5874k, C0925p.f5875l, C0925p.f5877n, C0925p.f5878o, C0795b0.m6071i().m6092n("vwh", BuildConfig.FLAVOR), C0795b0.m6071i().m6091m("vandroidautoh", 0));
        C0925p.f5856C = C0795b0.m6071i().m6091m("fps", 30);
    }

    /* JADX INFO: renamed from: g */
    public boolean m6004g() {
        return C0813a.m6190a().m6191b();
    }

    /* JADX INFO: renamed from: i */
    public void m6005i(boolean z) {
        C0925p.f5854A = z;
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

    /* JADX INFO: renamed from: j */
    public void m6006j() {
        int[] iArrM6001c = m6001c();
        int i = iArrM6001c[1];
        int i2 = iArrM6001c[0];
        C0735f.k.m5773b(i);
        C0735f.k.m5774c(i2);
        C0982s.m7374d("MyApplication", "setWorkMode： androidMode=" + i + ", iPhoneMode=" + i2);
        C0735f c0735f = C0733d.f4428l;
        if (c0735f != null) {
            c0735f.m5707Y0();
        }
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C0982s.m7373c("MyApplication,onConfigurationChanged: orientation = " + configuration.orientation + ", uiMode=" + configuration.uiMode);
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        f4697d = this;
        this.f4698b = SystemClock.elapsedRealtime();
        registerActivityLifecycleCallbacks(C0813a.m6190a());
        C0795b0.m6071i().m6094p(this);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int iM6091m = C0795b0.m6071i().m6091m("densityd", 0);
        if (iM6091m > 0) {
            displayMetrics.density = C0795b0.m6071i().m6090l("density", 2.0f);
            displayMetrics.scaledDensity = C0795b0.m6071i().m6090l("sdensity", 2.0f);
            displayMetrics.densityDpi = iM6091m;
        }
        int iM6091m2 = C0795b0.m6071i().m6091m("NightMode", 2);
        if (iM6091m2 == 1) {
            AbstractC0083f.m433H(2);
        } else if (iM6091m2 == 0) {
            AbstractC0083f.m433H(1);
        } else {
            AbstractC0083f.m433H(-1);
        }
        C0925p.f5870g = C0795b0.m6071i().m6091m("DecodeMethod", 1) == 0;
        m6002e();
        m6003f();
        if (C0795b0.m6071i().m6091m("UiVersion", 255) == 255) {
            C0795b0.m6071i().m6087b();
            C0795b0.m6071i().m6085F("UiVersion", 37);
            C0795b0.m6071i().m6083C();
            if (C0925p.m6861e() == 0) {
                C0795b0.m6071i().m6085F("BgKeyValid", Boolean.FALSE);
            }
            m5996a();
        }
        C0925p.f5882s = C0795b0.m6071i().m6091m("MicType", 0) == 1;
        C0925p.f5872i = C0795b0.m6071i().m6093o("IsTextureView", C0964c0.m7193q());
        int iM6091m3 = C0795b0.m6071i().m6091m("LanguageID", 0);
        if (iM6091m3 != 0) {
            C1002x.m7493a(this, iM6091m3);
        }
        C0930q.m6906g().m6914j(StubApp.getOrigApplicationContext(getApplicationContext()));
        C0956c.m7100h();
        m5998d();
        m6006j();
        C0953u.m7001z().m7050l0(StubApp.getOrigApplicationContext(getApplicationContext()));
        m6000k();
        C0925p.f5861H = getResources().getBoolean(2131034119);
    }
}
