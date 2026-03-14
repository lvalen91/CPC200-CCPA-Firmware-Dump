package cn.manstep.phonemirrorBox.util;

import android.content.Context;
import android.graphics.Point;
import android.media.audiofx.AcousticEchoCanceler;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.WindowManager;
import cn.manstep.phonemirrorBox.BoxInterface.C0732c;
import cn.manstep.phonemirrorBox.C0795b0;
import cn.manstep.phonemirrorBox.C0925p;
import cn.manstep.phonemirrorBox.C0953u;
import com.tencent.mars.xlog.Xlog;
import com.yalantis.ucrop.BuildConfig;
import java.io.File;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.s */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0982s {

    /* JADX INFO: renamed from: a */
    public static boolean f6143a = false;

    /* JADX INFO: renamed from: b */
    public static String f6144b = "";

    /* JADX INFO: renamed from: c */
    private static boolean f6145c;

    static {
        try {
            System.loadLibrary("util");
            f6145c = true;
        } catch (Error e) {
            m7375e("Logger: \n" + Log.getStackTraceString(e));
        } catch (Exception e2) {
            m7375e("Logger: \n" + Log.getStackTraceString(e2));
        }
    }

    /* JADX INFO: renamed from: a */
    private static void m7371a(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        String strM7184h = C0964c0.m7184h(context, displayMetrics.widthPixels, displayMetrics.heightPixels);
        m7383m("\n\n");
        m7379i("INFO", "Version Info:   \n" + strM7184h);
        Point point = new Point();
        Point point2 = new Point();
        windowManager.getDefaultDisplay().getCurrentSizeRange(point, point2);
        m7379i("INFO", ",Point: " + point.toString() + ", " + point2.toString());
        StringBuilder sb = new StringBuilder();
        sb.append("AcousticEchoCanceler ");
        sb.append(AcousticEchoCanceler.isAvailable());
        m7379i("INFO", sb.toString());
        try {
            m7379i("INFO", "check: " + JniTools.check());
        } catch (Error | Exception e) {
            m7373c(m7377g(e));
        }
        m7379i("INFO", "check: " + C0732c.m5542e().toString());
        C0964c0.m7180d(context);
    }

    /* JADX INFO: renamed from: b */
    public static void m7372b() {
        if (f6145c) {
            String sysInfo = com.tencent.mars.xlog.Log.getSysInfo();
            com.tencent.mars.xlog.Log.m9036i("INFO", "\n\n" + C0795b0.m6071i().m6088c());
            com.tencent.mars.xlog.Log.m9036i("INFO", BuildConfig.FLAVOR);
            com.tencent.mars.xlog.Log.m9036i("INFO", "Device SIZE: " + C0953u.m7001z().m7009H());
            com.tencent.mars.xlog.Log.m9036i("INFO", C0953u.m7001z().m7063x());
            com.tencent.mars.xlog.Log.m9036i("INFO", BuildConfig.FLAVOR);
            com.tencent.mars.xlog.Log.m9036i("INFO", "\n\n" + sysInfo);
            com.tencent.mars.xlog.Log.appenderClose();
        }
        f6143a = false;
    }

    /* JADX INFO: renamed from: c */
    public static void m7373c(String str) {
        m7374d("AutoPlay", str);
    }

    /* JADX INFO: renamed from: d */
    public static void m7374d(String str, String str2) {
        if (f6145c) {
            if (f6143a) {
                com.tencent.mars.xlog.Log.m9030d(str, str2);
                return;
            } else {
                boolean z = C0925p.f5866c;
                return;
            }
        }
        boolean z2 = C0925p.f5866c;
        if (f6143a) {
            return;
        }
        f6144b = "<<<<<< " + str2;
    }

    /* JADX INFO: renamed from: e */
    public static void m7375e(String str) {
        m7376f("AutoPlay", str);
    }

    /* JADX INFO: renamed from: f */
    public static void m7376f(String str, String str2) {
        if (f6145c) {
            if (f6143a) {
                com.tencent.mars.xlog.Log.m9032e(str, str2);
                return;
            } else {
                boolean z = C0925p.f5866c;
                return;
            }
        }
        boolean z2 = C0925p.f5866c;
        if (f6143a) {
            return;
        }
        f6144b = "<<<<<< " + str2;
    }

    /* JADX INFO: renamed from: g */
    public static String m7377g(Throwable th) {
        return Log.getStackTraceString(th);
    }

    /* JADX INFO: renamed from: h */
    public static void m7378h(String str) {
        m7379i("AutoPlay", str);
    }

    /* JADX INFO: renamed from: i */
    public static void m7379i(String str, String str2) {
        if (f6145c) {
            if (f6143a) {
                com.tencent.mars.xlog.Log.m9036i(str, str2);
                return;
            } else {
                boolean z = C0925p.f5866c;
                return;
            }
        }
        boolean z2 = C0925p.f5866c;
        if (f6143a) {
            return;
        }
        f6144b = "<<<<<< " + str2;
    }

    /* JADX INFO: renamed from: j */
    private static void m7380j(String str, String str2, String str3) {
        com.tencent.mars.xlog.Log.setLogImp(new Xlog());
        com.tencent.mars.xlog.Log.setConsoleLogOpen(C0925p.f5866c);
        com.tencent.mars.xlog.Log.appenderClose();
        com.tencent.mars.xlog.Log.appenderOpen(0, 0, str2 + "/log", str, str3, 0, "b097b02f615064965b621448ab6195fe91416c55536433fe888951e154ff7dc9074b0fdd0bca5bd4c23c30176a8596cd52d8a3b8ffde946dabc888e431c97c2e");
    }

    /* JADX INFO: renamed from: k */
    public static boolean m7381k(Context context) {
        return m7382l(context, false, C0977n.m7311n(context));
    }

    /* JADX INFO: renamed from: l */
    private static boolean m7382l(Context context, boolean z, File file) {
        if (file == null) {
            return false;
        }
        if (f6145c) {
            if (z) {
                m7380j(file.getAbsolutePath(), context.getCacheDir().getAbsolutePath(), "CrashLog");
            } else {
                m7380j(file.getAbsolutePath(), context.getCacheDir().getAbsolutePath(), "app");
            }
            f6143a = true;
        } else {
            f6143a = true;
        }
        m7371a(context);
        return true;
    }

    /* JADX INFO: renamed from: m */
    public static void m7383m(String str) {
        m7384n("AutoPlay", str);
    }

    /* JADX INFO: renamed from: n */
    public static void m7384n(String str, String str2) {
        if (f6145c) {
            if (f6143a) {
                com.tencent.mars.xlog.Log.m9038v(str, str2);
                return;
            } else {
                boolean z = C0925p.f5866c;
                return;
            }
        }
        boolean z2 = C0925p.f5866c;
        if (f6143a) {
            return;
        }
        f6144b = "<<<<<< " + str2;
    }

    /* JADX INFO: renamed from: o */
    public static void m7385o(String str) {
        m7386p("AutoPlay", str);
    }

    /* JADX INFO: renamed from: p */
    public static void m7386p(String str, String str2) {
        if (f6145c) {
            if (f6143a) {
                com.tencent.mars.xlog.Log.m9040w(str, str2);
                return;
            } else {
                boolean z = C0925p.f5866c;
                return;
            }
        }
        boolean z2 = C0925p.f5866c;
        if (f6143a) {
            return;
        }
        f6144b = "<<<<<< " + str2;
    }
}
