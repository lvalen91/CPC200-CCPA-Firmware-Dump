package com.tencent.mars.xlog;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.widget.Toast;
import com.yalantis.ucrop.BuildConfig;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class Log {
    public static final int LEVEL_DEBUG = 1;
    public static final int LEVEL_ERROR = 4;
    public static final int LEVEL_FATAL = 5;
    public static final int LEVEL_INFO = 2;
    public static final int LEVEL_NONE = 6;
    public static final int LEVEL_VERBOSE = 0;
    public static final int LEVEL_WARNING = 3;
    private static final String SYS_INFO;
    private static final String TAG = "mars.xlog.log";
    private static LogImp debugLog = null;
    private static int level = 6;
    private static LogImp logImp;
    private static Map<String, LogInstance> sLogInstanceMap;
    public static Context toastSupportContext;

    public interface LogImp {
        void appenderClose();

        void appenderFlush(long j, boolean z);

        void appenderOpen(int i, int i2, String str, String str2, String str3, int i3);

        void appenderOpen(int i, int i2, String str, String str2, String str3, int i3, String str4);

        int getLogLevel(long j);

        long getXlogInstance(String str);

        void logD(long j, String str, String str2, String str3, int i, int i2, long j2, long j3, String str4);

        void logE(long j, String str, String str2, String str3, int i, int i2, long j2, long j3, String str4);

        void logF(long j, String str, String str2, String str3, int i, int i2, long j2, long j3, String str4);

        void logI(long j, String str, String str2, String str3, int i, int i2, long j2, long j3, String str4);

        void logV(long j, String str, String str2, String str3, int i, int i2, long j2, long j3, String str4);

        void logW(long j, String str, String str2, String str3, int i, int i2, long j2, long j3, String str4);

        long openLogInstance(int i, int i2, String str, String str2, String str3, int i3);

        void releaseXlogInstance(String str);

        void setAppenderMode(long j, int i);

        void setConsoleLogOpen(long j, boolean z);

        void setMaxAliveTime(long j, long j2);

        void setMaxFileSize(long j, long j2);
    }

    public static class LogInstance {
        private long mLogInstancePtr;
        private String mPrefix;

        public void appenderFlush() {
            if (Log.logImp == null || this.mLogInstancePtr == -1) {
                return;
            }
            Log.logImp.appenderFlush(this.mLogInstancePtr, false);
        }

        public void appenderFlushSync() {
            if (Log.logImp == null || this.mLogInstancePtr == -1) {
                return;
            }
            Log.logImp.appenderFlush(this.mLogInstancePtr, true);
        }

        public void d(String str, String str2, Object... objArr) {
            if (Log.logImp == null || getLogLevel() > 1 || this.mLogInstancePtr == -1) {
                return;
            }
            String str3 = objArr == null ? str2 : String.format(str2, objArr);
            if (str3 == null) {
                str3 = BuildConfig.FLAVOR;
            }
            Log.logImp.logD(this.mLogInstancePtr, str, BuildConfig.FLAVOR, BuildConfig.FLAVOR, Process.myTid(), Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str3);
        }

        public void e(String str, String str2, Object... objArr) {
            if (Log.logImp == null || getLogLevel() > 4 || this.mLogInstancePtr == -1) {
                return;
            }
            String str3 = objArr == null ? str2 : String.format(str2, objArr);
            if (str3 == null) {
                str3 = BuildConfig.FLAVOR;
            }
            Log.logImp.logE(this.mLogInstancePtr, str, BuildConfig.FLAVOR, BuildConfig.FLAVOR, Process.myTid(), Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str3);
        }

        public void f(String str, String str2, Object... objArr) {
            if (Log.logImp == null || getLogLevel() > 5 || this.mLogInstancePtr == -1) {
                return;
            }
            Log.logImp.logF(this.mLogInstancePtr, str, BuildConfig.FLAVOR, BuildConfig.FLAVOR, Process.myTid(), Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), objArr == null ? str2 : String.format(str2, objArr));
        }

        public int getLogLevel() {
            if (Log.logImp == null || this.mLogInstancePtr == -1) {
                return 6;
            }
            return Log.logImp.getLogLevel(this.mLogInstancePtr);
        }

        public void i(String str, String str2, Object... objArr) {
            if (Log.logImp == null || getLogLevel() > 2 || this.mLogInstancePtr == -1) {
                return;
            }
            String str3 = objArr == null ? str2 : String.format(str2, objArr);
            if (str3 == null) {
                str3 = BuildConfig.FLAVOR;
            }
            Log.logImp.logI(this.mLogInstancePtr, str, BuildConfig.FLAVOR, BuildConfig.FLAVOR, Process.myTid(), Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str3);
        }

        public void printErrStackTrace(String str, Throwable th, String str2, Object... objArr) {
            if (Log.logImp == null || getLogLevel() > 4 || this.mLogInstancePtr == -1) {
                return;
            }
            String str3 = objArr == null ? str2 : String.format(str2, objArr);
            if (str3 == null) {
                str3 = BuildConfig.FLAVOR;
            }
            Log.logImp.logE(this.mLogInstancePtr, str, BuildConfig.FLAVOR, BuildConfig.FLAVOR, Process.myTid(), Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str3 + "  " + android.util.Log.getStackTraceString(th));
        }

        public void setConsoleLogOpen(boolean z) {
            if (Log.logImp == null || this.mLogInstancePtr == -1) {
                return;
            }
            Log.logImp.setConsoleLogOpen(this.mLogInstancePtr, z);
        }

        public void v(String str, String str2, Object... objArr) {
            if (Log.logImp == null || getLogLevel() > 0 || this.mLogInstancePtr == -1) {
                return;
            }
            String str3 = objArr == null ? str2 : String.format(str2, objArr);
            if (str3 == null) {
                str3 = BuildConfig.FLAVOR;
            }
            Log.logImp.logV(this.mLogInstancePtr, str, BuildConfig.FLAVOR, BuildConfig.FLAVOR, Process.myTid(), Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str3);
        }

        public void w(String str, String str2, Object... objArr) {
            if (Log.logImp == null || getLogLevel() > 3 || this.mLogInstancePtr == -1) {
                return;
            }
            String str3 = objArr == null ? str2 : String.format(str2, objArr);
            if (str3 == null) {
                str3 = BuildConfig.FLAVOR;
            }
            Log.logImp.logW(this.mLogInstancePtr, str, BuildConfig.FLAVOR, BuildConfig.FLAVOR, Process.myTid(), Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str3);
        }

        private LogInstance(int i, int i2, String str, String str2, String str3, int i3) {
            this.mLogInstancePtr = -1L;
            this.mPrefix = null;
            if (Log.logImp != null) {
                this.mLogInstancePtr = Log.logImp.openLogInstance(i, i2, str, str2, str3, i3);
                this.mPrefix = str3;
            }
        }
    }

    static {
        LogImp logImp2 = new LogImp() { // from class: com.tencent.mars.xlog.Log.1
            private Handler handler = new Handler(Looper.getMainLooper());

            @Override // com.tencent.mars.xlog.Log.LogImp
            public void appenderClose() {
            }

            @Override // com.tencent.mars.xlog.Log.LogImp
            public void appenderFlush(long j, boolean z) {
            }

            @Override // com.tencent.mars.xlog.Log.LogImp
            public void appenderOpen(int i, int i2, String str, String str2, String str3, int i3) {
            }

            @Override // com.tencent.mars.xlog.Log.LogImp
            public void appenderOpen(int i, int i2, String str, String str2, String str3, int i3, String str4) {
            }

            @Override // com.tencent.mars.xlog.Log.LogImp
            public int getLogLevel(long j) {
                return Log.level;
            }

            @Override // com.tencent.mars.xlog.Log.LogImp
            public long getXlogInstance(String str) {
                return 0L;
            }

            @Override // com.tencent.mars.xlog.Log.LogImp
            public void logD(long j, String str, String str2, String str3, int i, int i2, long j2, long j3, String str4) {
                int unused = Log.level;
            }

            @Override // com.tencent.mars.xlog.Log.LogImp
            public void logE(long j, String str, String str2, String str3, int i, int i2, long j2, long j3, String str4) {
                int unused = Log.level;
            }

            @Override // com.tencent.mars.xlog.Log.LogImp
            public void logF(long j, String str, String str2, String str3, int i, int i2, long j2, long j3, final String str4) {
                if (Log.level <= 5 && Log.toastSupportContext != null) {
                    this.handler.post(new Runnable() { // from class: com.tencent.mars.xlog.Log.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Toast.makeText(Log.toastSupportContext, str4, 1).show();
                        }
                    });
                }
            }

            @Override // com.tencent.mars.xlog.Log.LogImp
            public void logI(long j, String str, String str2, String str3, int i, int i2, long j2, long j3, String str4) {
                int unused = Log.level;
            }

            @Override // com.tencent.mars.xlog.Log.LogImp
            public void logV(long j, String str, String str2, String str3, int i, int i2, long j2, long j3, String str4) {
                int unused = Log.level;
            }

            @Override // com.tencent.mars.xlog.Log.LogImp
            public void logW(long j, String str, String str2, String str3, int i, int i2, long j2, long j3, String str4) {
                int unused = Log.level;
            }

            @Override // com.tencent.mars.xlog.Log.LogImp
            public long openLogInstance(int i, int i2, String str, String str2, String str3, int i3) {
                return 0L;
            }

            @Override // com.tencent.mars.xlog.Log.LogImp
            public void releaseXlogInstance(String str) {
            }

            @Override // com.tencent.mars.xlog.Log.LogImp
            public void setAppenderMode(long j, int i) {
            }

            @Override // com.tencent.mars.xlog.Log.LogImp
            public void setConsoleLogOpen(long j, boolean z) {
            }

            @Override // com.tencent.mars.xlog.Log.LogImp
            public void setMaxAliveTime(long j, long j2) {
            }

            @Override // com.tencent.mars.xlog.Log.LogImp
            public void setMaxFileSize(long j, long j2) {
            }
        };
        debugLog = logImp2;
        logImp = logImp2;
        StringBuilder sb = new StringBuilder();
        try {
            sb.append("VERSION.RELEASE-----------------------:[");
            sb.append(Build.VERSION.RELEASE);
            sb.append("]\n");
            sb.append("VERSION.SDK_INT-----------------------:[");
            sb.append(Build.VERSION.SDK_INT);
            sb.append("]\n");
            sb.append("VERSION.CODENAME----------------------:[");
            sb.append(Build.VERSION.CODENAME);
            sb.append("]\n");
            sb.append("VERSION.INCREMENTAL-------------------:[");
            sb.append(Build.VERSION.INCREMENTAL);
            sb.append("]\n");
            sb.append("MANUFACTURER(ro.product.manufacturer)-:[");
            sb.append(Build.MANUFACTURER);
            sb.append("]\n");
            sb.append("MODEL(ro.product.model)---------------:[");
            sb.append(Build.MODEL);
            sb.append("]\n");
            sb.append("PRODUCT(ro.product.name)--------------:[");
            sb.append(Build.PRODUCT);
            sb.append("]\n");
            sb.append("ID(ro.build.id)-----------------------:[");
            sb.append(Build.ID);
            sb.append("]\n");
            sb.append("BOARD---------------------------------:[");
            sb.append(Build.BOARD);
            sb.append("]\n");
            sb.append("DEVICE--------------------------------:[");
            sb.append(Build.DEVICE);
            sb.append("]\n");
            sb.append("DISPLAY-------------------------------:[");
            sb.append(Build.DISPLAY);
            sb.append("]\n");
            sb.append("HOST----------------------------------:[");
            sb.append(Build.HOST);
            sb.append("]\n");
            sb.append("TAGS----------------------------------:[");
            sb.append(Build.TAGS);
            sb.append("]\n");
            sb.append("TYPE----------------------------------:[");
            sb.append(Build.TYPE);
            sb.append("]\n");
            sb.append("USER----------------------------------:[");
            sb.append(Build.USER);
            sb.append("]\n");
            sb.append("FINGERPRINT---------------------------:[");
            sb.append(Build.FINGERPRINT);
            sb.append("]");
        } catch (Throwable th) {
            th.printStackTrace();
        }
        SYS_INFO = sb.toString();
        sLogInstanceMap = new HashMap();
    }

    public static void appenderClose() {
        LogImp logImp2 = logImp;
        if (logImp2 != null) {
            logImp2.appenderClose();
            Iterator<Map.Entry<String, LogInstance>> it = sLogInstanceMap.entrySet().iterator();
            while (it.hasNext()) {
                closeLogInstance(it.next().getKey());
            }
        }
    }

    public static void appenderFlush() {
        LogImp logImp2 = logImp;
        if (logImp2 != null) {
            logImp2.appenderFlush(0L, false);
            Iterator<Map.Entry<String, LogInstance>> it = sLogInstanceMap.entrySet().iterator();
            while (it.hasNext()) {
                it.next().getValue().appenderFlush();
            }
        }
    }

    public static void appenderFlushSync(boolean z) {
        LogImp logImp2 = logImp;
        if (logImp2 != null) {
            logImp2.appenderFlush(0L, z);
        }
    }

    public static void appenderOpen(int i, int i2, String str, String str2, String str3, int i3) {
        LogImp logImp2 = logImp;
        if (logImp2 != null) {
            logImp2.appenderOpen(i, i2, str, str2, str3, i3);
        }
    }

    public static void closeLogInstance(String str) {
        synchronized (sLogInstanceMap) {
            if (logImp != null && sLogInstanceMap.containsKey(str)) {
                LogInstance logInstanceRemove = sLogInstanceMap.remove(str);
                logImp.releaseXlogInstance(str);
                logInstanceRemove.mLogInstancePtr = -1L;
            }
        }
    }

    public static void d(String str, String str2) {
        d(str, str2, null);
    }

    public static void e(String str, String str2) {
        e(str, str2, null);
    }

    public static void f(String str, String str2) {
        f(str, str2, null);
    }

    public static LogImp getImpl() {
        return logImp;
    }

    public static LogInstance getLogInstance(String str) {
        synchronized (sLogInstanceMap) {
            if (!sLogInstanceMap.containsKey(str)) {
                return null;
            }
            return sLogInstanceMap.get(str);
        }
    }

    public static int getLogLevel() {
        LogImp logImp2 = logImp;
        if (logImp2 != null) {
            return logImp2.getLogLevel(0L);
        }
        return 6;
    }

    public static String getSysInfo() {
        return SYS_INFO;
    }

    public static void i(String str, String str2) {
        i(str, str2, null);
    }

    public static LogInstance openLogInstance(int i, int i2, String str, String str2, String str3, int i3) {
        synchronized (sLogInstanceMap) {
            if (sLogInstanceMap.containsKey(str3)) {
                return sLogInstanceMap.get(str3);
            }
            LogInstance logInstance = new LogInstance(i, i2, str, str2, str3, i3);
            sLogInstanceMap.put(str3, logInstance);
            return logInstance;
        }
    }

    public static void printErrStackTrace(String str, Throwable th, String str2, Object... objArr) {
        LogImp logImp2 = logImp;
        if (logImp2 == null || logImp2.getLogLevel(0L) > 4) {
            return;
        }
        String str3 = objArr == null ? str2 : String.format(str2, objArr);
        if (str3 == null) {
            str3 = BuildConfig.FLAVOR;
        }
        logImp.logE(0L, str, BuildConfig.FLAVOR, BuildConfig.FLAVOR, 0, Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str3 + "  " + android.util.Log.getStackTraceString(th));
    }

    public static void setConsoleLogOpen(boolean z) {
        LogImp logImp2 = logImp;
        if (logImp2 != null) {
            logImp2.setConsoleLogOpen(0L, z);
        }
    }

    public static void setLevel(int i, boolean z) {
        level = i;
        String str = "new log level: " + i;
    }

    public static void setLogImp(LogImp logImp2) {
        logImp = logImp2;
    }

    public static void v(String str, String str2) {
        v(str, str2, null);
    }

    public static void w(String str, String str2) {
        w(str, str2, null);
    }

    public static void d(String str, String str2, Object... objArr) {
        LogImp logImp2 = logImp;
        if (logImp2 == null || logImp2.getLogLevel(0L) > 1) {
            return;
        }
        if (objArr != null) {
            str2 = String.format(str2, objArr);
        }
        if (str2 == null) {
            str2 = BuildConfig.FLAVOR;
        }
        logImp.logD(0L, str, BuildConfig.FLAVOR, BuildConfig.FLAVOR, 0, Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str2);
    }

    public static void e(String str, String str2, Object... objArr) {
        LogImp logImp2 = logImp;
        if (logImp2 == null || logImp2.getLogLevel(0L) > 4) {
            return;
        }
        if (objArr != null) {
            str2 = String.format(str2, objArr);
        }
        if (str2 == null) {
            str2 = BuildConfig.FLAVOR;
        }
        logImp.logE(0L, str, BuildConfig.FLAVOR, BuildConfig.FLAVOR, 0, Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str2);
    }

    public static void f(String str, String str2, Object... objArr) {
        LogImp logImp2 = logImp;
        if (logImp2 == null || logImp2.getLogLevel(0L) > 5) {
            return;
        }
        if (objArr != null) {
            str2 = String.format(str2, objArr);
        }
        logImp.logF(0L, str, BuildConfig.FLAVOR, BuildConfig.FLAVOR, 0, Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str2);
    }

    public static void i(String str, String str2, Object... objArr) {
        LogImp logImp2 = logImp;
        if (logImp2 == null || logImp2.getLogLevel(0L) > 2) {
            return;
        }
        if (objArr != null) {
            str2 = String.format(str2, objArr);
        }
        if (str2 == null) {
            str2 = BuildConfig.FLAVOR;
        }
        logImp.logI(0L, str, BuildConfig.FLAVOR, BuildConfig.FLAVOR, 0, Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str2);
    }

    public static void v(String str, String str2, Object... objArr) {
        LogImp logImp2 = logImp;
        if (logImp2 == null || logImp2.getLogLevel(0L) > 0) {
            return;
        }
        if (objArr != null) {
            str2 = String.format(str2, objArr);
        }
        if (str2 == null) {
            str2 = BuildConfig.FLAVOR;
        }
        logImp.logV(0L, str, BuildConfig.FLAVOR, BuildConfig.FLAVOR, 0, Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str2);
    }

    public static void w(String str, String str2, Object... objArr) {
        LogImp logImp2 = logImp;
        if (logImp2 == null || logImp2.getLogLevel(0L) > 3) {
            return;
        }
        if (objArr != null) {
            str2 = String.format(str2, objArr);
        }
        if (str2 == null) {
            str2 = BuildConfig.FLAVOR;
        }
        logImp.logW(0L, str, BuildConfig.FLAVOR, BuildConfig.FLAVOR, 0, Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str2);
    }

    public static void appenderOpen(int i, int i2, String str, String str2, String str3, int i3, String str4) {
        LogImp logImp2 = logImp;
        if (logImp2 != null) {
            logImp2.appenderOpen(i, i2, str, str2, str3, i3, str4);
        }
    }
}
