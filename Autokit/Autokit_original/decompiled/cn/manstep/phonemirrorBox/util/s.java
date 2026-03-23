package cn.manstep.phonemirrorBox.util;

import android.content.Context;
import android.graphics.Point;
import android.media.audiofx.AcousticEchoCanceler;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.WindowManager;
import com.tencent.mars.xlog.Xlog;
import com.yalantis.ucrop.BuildConfig;
import java.io.File;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class s {
    public static boolean a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f1925b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f1926c;

    static {
        try {
            System.loadLibrary("util");
            f1926c = true;
        } catch (Error e) {
            e("Logger: \n" + Log.getStackTraceString(e));
        } catch (Exception e2) {
            e("Logger: \n" + Log.getStackTraceString(e2));
        }
    }

    private static void a(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        String strH = c0.h(context, displayMetrics.widthPixels, displayMetrics.heightPixels);
        m("\n\n");
        i("INFO", "Version Info:   \n" + strH);
        Point point = new Point();
        Point point2 = new Point();
        windowManager.getDefaultDisplay().getCurrentSizeRange(point, point2);
        i("INFO", ",Point: " + point.toString() + ", " + point2.toString());
        StringBuilder sb = new StringBuilder();
        sb.append("AcousticEchoCanceler ");
        sb.append(AcousticEchoCanceler.isAvailable());
        i("INFO", sb.toString());
        try {
            i("INFO", "check: " + JniTools.check());
        } catch (Error | Exception e) {
            c(g(e));
        }
        i("INFO", "check: " + cn.manstep.phonemirrorBox.BoxInterface.c.e().toString());
        c0.d(context);
    }

    public static void b() {
        if (f1926c) {
            String sysInfo = com.tencent.mars.xlog.Log.getSysInfo();
            com.tencent.mars.xlog.Log.i("INFO", "\n\n" + cn.manstep.phonemirrorBox.b0.i().c());
            com.tencent.mars.xlog.Log.i("INFO", BuildConfig.FLAVOR);
            com.tencent.mars.xlog.Log.i("INFO", "Device SIZE: " + cn.manstep.phonemirrorBox.u.z().H());
            com.tencent.mars.xlog.Log.i("INFO", cn.manstep.phonemirrorBox.u.z().x());
            com.tencent.mars.xlog.Log.i("INFO", BuildConfig.FLAVOR);
            com.tencent.mars.xlog.Log.i("INFO", "\n\n" + sysInfo);
            com.tencent.mars.xlog.Log.appenderClose();
        }
        a = false;
    }

    public static void c(String str) {
        d("AutoPlay", str);
    }

    public static void d(String str, String str2) {
        if (f1926c) {
            if (a) {
                com.tencent.mars.xlog.Log.d(str, str2);
                return;
            } else {
                boolean z = cn.manstep.phonemirrorBox.p.f1805c;
                return;
            }
        }
        boolean z2 = cn.manstep.phonemirrorBox.p.f1805c;
        if (a) {
            return;
        }
        f1925b = "<<<<<< " + str2;
    }

    public static void e(String str) {
        f("AutoPlay", str);
    }

    public static void f(String str, String str2) {
        if (f1926c) {
            if (a) {
                com.tencent.mars.xlog.Log.e(str, str2);
                return;
            } else {
                boolean z = cn.manstep.phonemirrorBox.p.f1805c;
                return;
            }
        }
        boolean z2 = cn.manstep.phonemirrorBox.p.f1805c;
        if (a) {
            return;
        }
        f1925b = "<<<<<< " + str2;
    }

    public static String g(Throwable th) {
        return Log.getStackTraceString(th);
    }

    public static void h(String str) {
        i("AutoPlay", str);
    }

    public static void i(String str, String str2) {
        if (f1926c) {
            if (a) {
                com.tencent.mars.xlog.Log.i(str, str2);
                return;
            } else {
                boolean z = cn.manstep.phonemirrorBox.p.f1805c;
                return;
            }
        }
        boolean z2 = cn.manstep.phonemirrorBox.p.f1805c;
        if (a) {
            return;
        }
        f1925b = "<<<<<< " + str2;
    }

    private static void j(String str, String str2, String str3) {
        com.tencent.mars.xlog.Log.setLogImp(new Xlog());
        com.tencent.mars.xlog.Log.setConsoleLogOpen(cn.manstep.phonemirrorBox.p.f1805c);
        com.tencent.mars.xlog.Log.appenderClose();
        com.tencent.mars.xlog.Log.appenderOpen(0, 0, str2 + "/log", str, str3, 0, "b097b02f615064965b621448ab6195fe91416c55536433fe888951e154ff7dc9074b0fdd0bca5bd4c23c30176a8596cd52d8a3b8ffde946dabc888e431c97c2e");
    }

    public static boolean k(Context context) {
        return l(context, false, n.n(context));
    }

    private static boolean l(Context context, boolean z, File file) {
        if (file == null) {
            return false;
        }
        if (f1926c) {
            if (z) {
                j(file.getAbsolutePath(), context.getCacheDir().getAbsolutePath(), "CrashLog");
            } else {
                j(file.getAbsolutePath(), context.getCacheDir().getAbsolutePath(), "app");
            }
            a = true;
        } else {
            a = true;
        }
        a(context);
        return true;
    }

    public static void m(String str) {
        n("AutoPlay", str);
    }

    public static void n(String str, String str2) {
        if (f1926c) {
            if (a) {
                com.tencent.mars.xlog.Log.v(str, str2);
                return;
            } else {
                boolean z = cn.manstep.phonemirrorBox.p.f1805c;
                return;
            }
        }
        boolean z2 = cn.manstep.phonemirrorBox.p.f1805c;
        if (a) {
            return;
        }
        f1925b = "<<<<<< " + str2;
    }

    public static void o(String str) {
        p("AutoPlay", str);
    }

    public static void p(String str, String str2) {
        if (f1926c) {
            if (a) {
                com.tencent.mars.xlog.Log.w(str, str2);
                return;
            } else {
                boolean z = cn.manstep.phonemirrorBox.p.f1805c;
                return;
            }
        }
        boolean z2 = cn.manstep.phonemirrorBox.p.f1805c;
        if (a) {
            return;
        }
        f1925b = "<<<<<< " + str2;
    }
}
