package com.tencent.mars.xlog;

import com.tencent.mars.xlog.Log;
import com.yalantis.ucrop.BuildConfig;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class Xlog implements Log.LogImp {
    public static final int AppednerModeAsync = 0;
    public static final int AppednerModeSync = 1;
    public static final int COMPRESS_LEVEL1 = 1;
    public static final int COMPRESS_LEVEL2 = 2;
    public static final int COMPRESS_LEVEL3 = 3;
    public static final int COMPRESS_LEVEL4 = 4;
    public static final int COMPRESS_LEVEL5 = 5;
    public static final int COMPRESS_LEVEL6 = 6;
    public static final int COMPRESS_LEVEL7 = 7;
    public static final int COMPRESS_LEVEL8 = 8;
    public static final int COMPRESS_LEVEL9 = 9;
    public static final int LEVEL_ALL = 0;
    public static final int LEVEL_DEBUG = 1;
    public static final int LEVEL_ERROR = 4;
    public static final int LEVEL_FATAL = 5;
    public static final int LEVEL_INFO = 2;
    public static final int LEVEL_NONE = 6;
    public static final int LEVEL_VERBOSE = 0;
    public static final int LEVEL_WARNING = 3;
    public static final int ZLIB_MODE = 0;
    public static final int ZSTD_MODE = 1;

    public static class XLogConfig {
        public String cachedir;
        public String logdir;
        public String nameprefix;
        public int level = 2;
        public int mode = 0;
        public String pubkey = BuildConfig.FLAVOR;
        public int compressmode = 0;
        public int compresslevel = 0;
        public int cachedays = 0;
    }

    static class XLoggerInfo {
        public String filename;
        public String funcname;
        public int level;
        public int line;
        public long maintid;
        public long pid;
        public String tag;
        public long tid;

        XLoggerInfo() {
        }
    }

    private static native void appenderOpen(XLogConfig xLogConfig);

    private static String decryptTag(String str) {
        return str;
    }

    public static native void logWrite(XLoggerInfo xLoggerInfo, String str);

    public static void logWrite2(int i, String str, String str2, String str3, int i2, int i3, long j, long j2, String str4) {
        logWrite2(0L, i, str, str2, str3, i2, i3, j, j2, str4);
    }

    public static native void logWrite2(long j, int i, String str, String str2, String str3, int i2, int i3, long j2, long j3, String str4);

    public static void open(boolean z, int i, int i2, String str, String str2, String str3, String str4) {
        if (z) {
            System.loadLibrary("util");
        }
        XLogConfig xLogConfig = new XLogConfig();
        xLogConfig.level = i;
        xLogConfig.mode = i2;
        xLogConfig.logdir = str2;
        xLogConfig.nameprefix = str3;
        xLogConfig.pubkey = str4;
        xLogConfig.compressmode = 0;
        xLogConfig.compresslevel = 0;
        xLogConfig.cachedir = str;
        xLogConfig.cachedays = 0;
        appenderOpen(xLogConfig);
    }

    @Override // com.tencent.mars.xlog.Log.LogImp
    public native void appenderClose();

    @Override // com.tencent.mars.xlog.Log.LogImp
    public native void appenderFlush(long j, boolean z);

    @Override // com.tencent.mars.xlog.Log.LogImp
    public void appenderOpen(int i, int i2, String str, String str2, String str3, int i3) {
        XLogConfig xLogConfig = new XLogConfig();
        xLogConfig.level = i;
        xLogConfig.mode = i2;
        xLogConfig.logdir = str2;
        xLogConfig.nameprefix = str3;
        xLogConfig.compressmode = 0;
        xLogConfig.pubkey = BuildConfig.FLAVOR;
        xLogConfig.cachedir = str;
        xLogConfig.cachedays = i3;
        appenderOpen(xLogConfig);
    }

    @Override // com.tencent.mars.xlog.Log.LogImp
    public native int getLogLevel(long j);

    @Override // com.tencent.mars.xlog.Log.LogImp
    public native long getXlogInstance(String str);

    @Override // com.tencent.mars.xlog.Log.LogImp
    public void logD(long j, String str, String str2, String str3, int i, int i2, long j2, long j3, String str4) {
        logWrite2(j, 1, decryptTag(str), str2, str3, i, i2, j2, j3, str4);
    }

    @Override // com.tencent.mars.xlog.Log.LogImp
    public void logE(long j, String str, String str2, String str3, int i, int i2, long j2, long j3, String str4) {
        logWrite2(j, 4, decryptTag(str), str2, str3, i, i2, j2, j3, str4);
    }

    @Override // com.tencent.mars.xlog.Log.LogImp
    public void logF(long j, String str, String str2, String str3, int i, int i2, long j2, long j3, String str4) {
        logWrite2(j, 5, decryptTag(str), str2, str3, i, i2, j2, j3, str4);
    }

    @Override // com.tencent.mars.xlog.Log.LogImp
    public void logI(long j, String str, String str2, String str3, int i, int i2, long j2, long j3, String str4) {
        logWrite2(j, 2, decryptTag(str), str2, str3, i, i2, j2, j3, str4);
    }

    @Override // com.tencent.mars.xlog.Log.LogImp
    public void logV(long j, String str, String str2, String str3, int i, int i2, long j2, long j3, String str4) {
        logWrite2(j, 0, decryptTag(str), str2, str3, i, i2, j2, j3, str4);
    }

    @Override // com.tencent.mars.xlog.Log.LogImp
    public void logW(long j, String str, String str2, String str3, int i, int i2, long j2, long j3, String str4) {
        logWrite2(j, 3, decryptTag(str), str2, str3, i, i2, j2, j3, str4);
    }

    public native long newXlogInstance(XLogConfig xLogConfig);

    @Override // com.tencent.mars.xlog.Log.LogImp
    public long openLogInstance(int i, int i2, String str, String str2, String str3, int i3) {
        XLogConfig xLogConfig = new XLogConfig();
        xLogConfig.level = i;
        xLogConfig.mode = i2;
        xLogConfig.logdir = str2;
        xLogConfig.nameprefix = str3;
        xLogConfig.compressmode = 0;
        xLogConfig.pubkey = BuildConfig.FLAVOR;
        xLogConfig.cachedir = str;
        xLogConfig.cachedays = i3;
        return newXlogInstance(xLogConfig);
    }

    @Override // com.tencent.mars.xlog.Log.LogImp
    public native void releaseXlogInstance(String str);

    @Override // com.tencent.mars.xlog.Log.LogImp
    public native void setAppenderMode(long j, int i);

    @Override // com.tencent.mars.xlog.Log.LogImp
    public native void setConsoleLogOpen(long j, boolean z);

    @Override // com.tencent.mars.xlog.Log.LogImp
    public native void setMaxAliveTime(long j, long j2);

    @Override // com.tencent.mars.xlog.Log.LogImp
    public native void setMaxFileSize(long j, long j2);

    @Override // com.tencent.mars.xlog.Log.LogImp
    public void appenderOpen(int i, int i2, String str, String str2, String str3, int i3, String str4) {
        XLogConfig xLogConfig = new XLogConfig();
        xLogConfig.level = i;
        xLogConfig.mode = i2;
        xLogConfig.logdir = str2;
        xLogConfig.nameprefix = str3;
        xLogConfig.compressmode = 0;
        xLogConfig.pubkey = str4;
        xLogConfig.cachedir = str;
        xLogConfig.cachedays = i3;
        appenderOpen(xLogConfig);
    }
}
