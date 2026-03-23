/**
 * Logger.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.util.s
 *
 * Logging utility backed by Tencent Mars Xlog. Provides log, logDebug,
 * logError, logWarning, logInfo, and getStackTrace methods. Initializes
 * by loading the native "util" library.
 */
package cn.manstep.autokit.util;

import android.content.Context;
import android.graphics.Point;
import android.media.audiofx.AcousticEchoCanceler;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.WindowManager;
import com.tencent.mars.xlog.Xlog;
import com.yalantis.ucrop.BuildConfig;
import java.io.File;

public class Logger /* was: 's' */ {

    /** Whether logging is currently active/initialized. /* was: 'a' */ */
    public static boolean isInitialized /* was: 'a' */ = false;

    /** Last log message (fallback when xlog unavailable). /* was: 'f1925b' */ */
    public static String lastMessage /* was: 'f1925b' */ = "";

    /** Whether the native xlog library loaded successfully. /* was: 'f1926c' */ */
    private static boolean nativeLibLoaded /* was: 'f1926c' */;

    static {
        try {
            System.loadLibrary("util");
            nativeLibLoaded = true;
        } catch (Error e) {
            logError("Logger: \n" + Log.getStackTraceString(e));
        } catch (Exception e2) {
            logError("Logger: \n" + Log.getStackTraceString(e2));
        }
    }

    /**
     * Initialize logging with device/system info.
     * /* was: 'a(Context)' */
     */
    private static void initDeviceInfo(/* was: 'a' */ Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        String versionInfo = CryptoUtil.getDeviceInfo(context, displayMetrics.widthPixels, displayMetrics.heightPixels);
        logVerbose("\n\n");
        logInfo("INFO", "Version Info:   \n" + versionInfo);
        Point point = new Point();
        Point point2 = new Point();
        windowManager.getDefaultDisplay().getCurrentSizeRange(point, point2);
        logInfo("INFO", ",Point: " + point.toString() + ", " + point2.toString());
        StringBuilder sb = new StringBuilder();
        sb.append("AcousticEchoCanceler ");
        sb.append(AcousticEchoCanceler.isAvailable());
        logInfo("INFO", sb.toString());
        try {
            logInfo("INFO", "check: " + JniTools.check());
        } catch (Error | Exception e) {
            log(getStackTrace(e));
        }
        logInfo("INFO", "check: " + cn.manstep.phonemirrorBox.BoxInterface.c.e().toString());
        CryptoUtil.logSensors(context);
    }

    /**
     * Flush and close the logger.
     * /* was: 'b' */
     */
    public static void close(/* was: 'b' */) {
        if (nativeLibLoaded) {
            String sysInfo = com.tencent.mars.xlog.Log.getSysInfo();
            com.tencent.mars.xlog.Log.i("INFO", "\n\n" + cn.manstep.phonemirrorBox.b0.i().c());
            com.tencent.mars.xlog.Log.i("INFO", BuildConfig.FLAVOR);
            com.tencent.mars.xlog.Log.i("INFO", "Device SIZE: " + cn.manstep.phonemirrorBox.u.z().H());
            com.tencent.mars.xlog.Log.i("INFO", cn.manstep.phonemirrorBox.u.z().x());
            com.tencent.mars.xlog.Log.i("INFO", BuildConfig.FLAVOR);
            com.tencent.mars.xlog.Log.i("INFO", "\n\n" + sysInfo);
            com.tencent.mars.xlog.Log.appenderClose();
        }
        isInitialized = false;
    }

    /**
     * Log a message with default "AutoPlay" tag.
     * /* was: 'c' */
     */
    public static void log(/* was: 'c' */ String msg) {
        logDebug("AutoPlay", msg);
    }

    /**
     * Log a debug-level message with a tag.
     * /* was: 'd' */
     */
    public static void logDebug(/* was: 'd' */ String tag, String msg) {
        if (nativeLibLoaded) {
            if (isInitialized) {
                com.tencent.mars.xlog.Log.d(tag, msg);
                return;
            } else {
                boolean z = cn.manstep.phonemirrorBox.p.f1805c;
                return;
            }
        }
        boolean z2 = cn.manstep.phonemirrorBox.p.f1805c;
        if (isInitialized) {
            return;
        }
        lastMessage = "<<<<<< " + msg;
    }

    /**
     * Log an error-level message with default "AutoPlay" tag.
     * /* was: 'e' */
     */
    public static void logError(/* was: 'e' */ String msg) {
        logWarning("AutoPlay", msg);
    }

    /**
     * Log a warning-level message with a tag.
     * /* was: 'f' */
     */
    public static void logWarning(/* was: 'f' */ String tag, String msg) {
        if (nativeLibLoaded) {
            if (isInitialized) {
                com.tencent.mars.xlog.Log.e(tag, msg);
                return;
            } else {
                boolean z = cn.manstep.phonemirrorBox.p.f1805c;
                return;
            }
        }
        boolean z2 = cn.manstep.phonemirrorBox.p.f1805c;
        if (isInitialized) {
            return;
        }
        lastMessage = "<<<<<< " + msg;
    }

    /**
     * Get the stack trace string for a throwable.
     * /* was: 'g' */
     */
    public static String getStackTrace(/* was: 'g' */ Throwable th) {
        return Log.getStackTraceString(th);
    }

    /**
     * Log an info-level message with default "AutoPlay" tag.
     * /* was: 'h' */
     */
    public static void logInfoShort(/* was: 'h' */ String msg) {
        logInfo("AutoPlay", msg);
    }

    /**
     * Log an info-level message with a tag.
     * /* was: 'i' */
     */
    public static void logInfo(/* was: 'i' */ String tag, String msg) {
        if (nativeLibLoaded) {
            if (isInitialized) {
                com.tencent.mars.xlog.Log.i(tag, msg);
                return;
            } else {
                boolean z = cn.manstep.phonemirrorBox.p.f1805c;
                return;
            }
        }
        boolean z2 = cn.manstep.phonemirrorBox.p.f1805c;
        if (isInitialized) {
            return;
        }
        lastMessage = "<<<<<< " + msg;
    }

    /**
     * Initialize the Xlog appender.
     * /* was: 'j' */
     */
    private static void initXlog(/* was: 'j' */ String logDir, String cacheDir, String prefix) {
        com.tencent.mars.xlog.Log.setLogImp(new Xlog());
        com.tencent.mars.xlog.Log.setConsoleLogOpen(cn.manstep.phonemirrorBox.p.f1805c);
        com.tencent.mars.xlog.Log.appenderClose();
        com.tencent.mars.xlog.Log.appenderOpen(0, 0, cacheDir + "/log", logDir, prefix, 0,
                "b097b02f615064965b621448ab6195fe91416c55536433fe888951e154ff7dc9074b0fdd0bca5bd4c23c30176a8596cd52d8a3b8ffde946dabc888e431c97c2e");
    }

    /**
     * Open the logger for the given context (normal mode).
     * /* was: 'k' */
     */
    public static boolean open(/* was: 'k' */ Context context) {
        return openInternal(context, false, FileUtil.getLogDir(context));
    }

    /**
     * Internal open implementation.
     * /* was: 'l' */
     */
    private static boolean openInternal(/* was: 'l' */ Context context, boolean isCrashMode, File logDir) {
        if (logDir == null) {
            return false;
        }
        if (nativeLibLoaded) {
            if (isCrashMode) {
                initXlog(logDir.getAbsolutePath(), context.getCacheDir().getAbsolutePath(), "CrashLog");
            } else {
                initXlog(logDir.getAbsolutePath(), context.getCacheDir().getAbsolutePath(), "app");
            }
            isInitialized = true;
        } else {
            isInitialized = true;
        }
        initDeviceInfo(context);
        return true;
    }

    /**
     * Log a verbose-level message with default "AutoPlay" tag.
     * /* was: 'm' */
     */
    public static void logVerbose(/* was: 'm' */ String msg) {
        logVerboseTagged("AutoPlay", msg);
    }

    /**
     * Log a verbose-level message with a tag.
     * /* was: 'n' */
     */
    public static void logVerboseTagged(/* was: 'n' */ String tag, String msg) {
        if (nativeLibLoaded) {
            if (isInitialized) {
                com.tencent.mars.xlog.Log.v(tag, msg);
                return;
            } else {
                boolean z = cn.manstep.phonemirrorBox.p.f1805c;
                return;
            }
        }
        boolean z2 = cn.manstep.phonemirrorBox.p.f1805c;
        if (isInitialized) {
            return;
        }
        lastMessage = "<<<<<< " + msg;
    }

    /**
     * Log a warning message with default "AutoPlay" tag.
     * /* was: 'o' */
     */
    public static void logWarn(/* was: 'o' */ String msg) {
        logWarnTagged("AutoPlay", msg);
    }

    /**
     * Log a warning message with a tag.
     * /* was: 'p' */
     */
    public static void logWarnTagged(/* was: 'p' */ String tag, String msg) {
        if (nativeLibLoaded) {
            if (isInitialized) {
                com.tencent.mars.xlog.Log.w(tag, msg);
                return;
            } else {
                boolean z = cn.manstep.phonemirrorBox.p.f1805c;
                return;
            }
        }
        boolean z2 = cn.manstep.phonemirrorBox.p.f1805c;
        if (isInitialized) {
            return;
        }
        lastMessage = "<<<<<< " + msg;
    }
}
