package cn.manstep.phonemirrorBox.util;

import android.content.Context;
import android.content.res.XmlResourceParser;
import android.util.Base64;
import com.yalantis.ucrop.BuildConfig;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class n {
    public static boolean A(byte[] bArr, String str, Context context) {
        File fileK = k(context);
        if (fileK == null) {
            return false;
        }
        return y(bArr, fileK.getAbsolutePath() + "/" + str);
    }

    public static void a(Context context) {
        File[] fileArrListFiles;
        File fileK = k(context);
        if (fileK == null || (fileArrListFiles = fileK.listFiles()) == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            if (file.isFile()) {
                file.delete();
            }
        }
    }

    public static void b(Context context) {
        File[] fileArrListFiles;
        File fileN = n(context);
        if (fileN == null || (fileArrListFiles = fileN.listFiles()) == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            if (file.isFile()) {
                file.delete();
            }
        }
    }

    public static void c(Context context) {
        File[] fileArrListFiles;
        File fileS = s(context);
        if (fileS == null || (fileArrListFiles = fileS.listFiles()) == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            if (file.isFile()) {
                file.delete();
            }
        }
    }

    public static void d(Context context, String str) {
        File fileK = k(context);
        if (fileK != null) {
            File file = new File(fileK, str);
            if (file.isFile() && file.exists()) {
                file.delete();
            }
        }
    }

    public static void e(File file) {
        File[] fileArrListFiles;
        if (file == null || !file.exists() || (fileArrListFiles = file.listFiles()) == null) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                e(file2);
            } else {
                file2.delete();
            }
        }
        file.delete();
    }

    public static boolean f(String str) {
        File file = new File(str);
        if (file.isFile() && file.exists()) {
            return file.delete();
        }
        return true;
    }

    public static File g(File file, Context context) {
        File fileN = n(context);
        if (fileN == null || !fileN.isDirectory()) {
            return null;
        }
        return j(file, new File(fileN, file.getName() + ".bs64").getAbsolutePath());
    }

    public static File h(File file) {
        return j(file, file.getAbsolutePath() + ".bs64");
    }

    public static String i(String str) {
        File fileH = h(new File(str));
        if (fileH != null) {
            return fileH.getAbsolutePath();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:46:0x006d A[Catch: Exception -> 0x0069, TRY_LEAVE, TryCatch #5 {Exception -> 0x0069, blocks: (B:42:0x0065, B:46:0x006d), top: B:56:0x0065 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0065 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r1v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static File j(File file, String str) throws Throwable {
        ?? r5;
        FileOutputStream fileOutputStream;
        File file2;
        ?? r0 = 0;
        FileOutputStream fileOutputStream2 = null;
        if (file == null) {
            return null;
        }
        ?? IsFile = file.isFile();
        try {
            if (IsFile == 0) {
                return null;
            }
            try {
                IsFile = new FileInputStream(file);
                try {
                    int iAvailable = IsFile.available();
                    byte[] bArr = new byte[iAvailable];
                    if (IsFile.read(bArr) == iAvailable) {
                        byte[] bArrEncode = Base64.encode(bArr, 2);
                        file2 = new File(str);
                        fileOutputStream = new FileOutputStream(file2);
                        try {
                            fileOutputStream.write(bArrEncode);
                            fileOutputStream2 = fileOutputStream;
                        } catch (Exception e) {
                            e = e;
                            e.printStackTrace();
                            if (IsFile != 0) {
                                try {
                                    IsFile.close();
                                } catch (Exception e2) {
                                    e2.printStackTrace();
                                    return null;
                                }
                            }
                            if (fileOutputStream == null) {
                                return null;
                            }
                            fileOutputStream.close();
                            return null;
                        }
                    } else {
                        file2 = null;
                    }
                    try {
                        IsFile.close();
                        if (fileOutputStream2 != null) {
                            fileOutputStream2.close();
                        }
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    return file2;
                } catch (Exception e4) {
                    e = e4;
                    fileOutputStream = null;
                } catch (Throwable th) {
                    th = th;
                    str = null;
                    r0 = IsFile;
                    r5 = str;
                    if (r0 != 0) {
                        try {
                            r0.close();
                        } catch (Exception e5) {
                            e5.printStackTrace();
                            throw th;
                        }
                    }
                    if (r5 != 0) {
                        r5.close();
                    }
                    throw th;
                }
            } catch (Exception e6) {
                e = e6;
                fileOutputStream = null;
                IsFile = 0;
            } catch (Throwable th2) {
                th = th2;
                r5 = 0;
                if (r0 != 0) {
                }
                if (r5 != 0) {
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static File k(Context context) {
        return l(context, "audio");
    }

    public static File l(Context context, String str) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null || !cacheDir.isDirectory()) {
            return null;
        }
        return w(cacheDir, str);
    }

    public static File m(Context context) {
        return l(context, "data");
    }

    public static File n(Context context) {
        return l(context, "log");
    }

    public static File o(Context context) {
        File fileN = n(context);
        if (fileN == null) {
            return null;
        }
        File file = new File(fileN, "CrashLog_" + new SimpleDateFormat("yyyyMMdd", Locale.CHINA).format(new Date()) + ".log");
        if (file.isFile()) {
            return file;
        }
        return null;
    }

    public static File p(Context context) {
        File fileN = n(context);
        if (fileN == null) {
            return null;
        }
        File file = new File(fileN, "app_" + new SimpleDateFormat("yyyyMMdd", Locale.CHINA).format(new Date()) + ".log");
        if (file.isFile()) {
            return file;
        }
        return null;
    }

    public static File q(Context context) {
        return l(context, "tmp");
    }

    public static String r(Context context) {
        File fileL = l(context, "tmp");
        return fileL != null ? fileL.getAbsolutePath() : BuildConfig.FLAVOR;
    }

    public static File s(Context context) {
        return l(context, "video");
    }

    public static String t(Context context, String str, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 2 && str.equals(xml.getName())) {
                    return xml.nextText();
                }
            }
            return null;
        } catch (IOException | XmlPullParserException e) {
            e.printStackTrace();
            s.d("getXmlString", "Exception: " + e);
            return null;
        }
    }

    public static boolean u(Context context) {
        return v(context, "audio");
    }

    private static boolean v(Context context, String str) {
        File[] fileArrListFiles;
        File fileL = l(context, str);
        return fileL != null && fileL.isDirectory() && (fileArrListFiles = fileL.listFiles()) != null && fileArrListFiles.length > 0;
    }

    private static File w(File file, String str) {
        if (file == null || !file.exists() || !file.isDirectory()) {
            return null;
        }
        File file2 = new File(file, str);
        if ((!file2.exists() || file2.isFile()) && !file2.mkdir()) {
            return null;
        }
        return file2;
    }

    public static boolean x(byte[] bArr, int i, int i2, String str) {
        try {
            File file = new File(str);
            if (!file.exists() && !file.createNewFile()) {
                return false;
            }
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            randomAccessFile.seek(file.length());
            randomAccessFile.write(bArr, i, i2);
            randomAccessFile.close();
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean y(byte[] bArr, String str) {
        try {
            File file = new File(str);
            if (!file.exists() && !file.createNewFile()) {
                return false;
            }
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            randomAccessFile.seek(file.length());
            randomAccessFile.write(bArr);
            randomAccessFile.close();
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean z(byte[] bArr, int i, int i2, String str, Context context) {
        File fileK = k(context);
        if (fileK == null) {
            return false;
        }
        return x(bArr, i, i2, fileK.getAbsolutePath() + "/" + str);
    }
}
