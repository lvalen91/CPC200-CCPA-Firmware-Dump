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

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.n */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0977n {
    /* JADX INFO: renamed from: A */
    public static boolean m7297A(byte[] bArr, String str, Context context) {
        File fileM7308k = m7308k(context);
        if (fileM7308k == null) {
            return false;
        }
        return m7322y(bArr, fileM7308k.getAbsolutePath() + "/" + str);
    }

    /* JADX INFO: renamed from: a */
    public static void m7298a(Context context) {
        File[] fileArrListFiles;
        File fileM7308k = m7308k(context);
        if (fileM7308k == null || (fileArrListFiles = fileM7308k.listFiles()) == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            if (file.isFile()) {
                file.delete();
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public static void m7299b(Context context) {
        File[] fileArrListFiles;
        File fileM7311n = m7311n(context);
        if (fileM7311n == null || (fileArrListFiles = fileM7311n.listFiles()) == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            if (file.isFile()) {
                file.delete();
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public static void m7300c(Context context) {
        File[] fileArrListFiles;
        File fileM7316s = m7316s(context);
        if (fileM7316s == null || (fileArrListFiles = fileM7316s.listFiles()) == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            if (file.isFile()) {
                file.delete();
            }
        }
    }

    /* JADX INFO: renamed from: d */
    public static void m7301d(Context context, String str) {
        File fileM7308k = m7308k(context);
        if (fileM7308k != null) {
            File file = new File(fileM7308k, str);
            if (file.isFile() && file.exists()) {
                file.delete();
            }
        }
    }

    /* JADX INFO: renamed from: e */
    public static void m7302e(File file) {
        File[] fileArrListFiles;
        if (file == null || !file.exists() || (fileArrListFiles = file.listFiles()) == null) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                m7302e(file2);
            } else {
                file2.delete();
            }
        }
        file.delete();
    }

    /* JADX INFO: renamed from: f */
    public static boolean m7303f(String str) {
        File file = new File(str);
        if (file.isFile() && file.exists()) {
            return file.delete();
        }
        return true;
    }

    /* JADX INFO: renamed from: g */
    public static File m7304g(File file, Context context) {
        File fileM7311n = m7311n(context);
        if (fileM7311n == null || !fileM7311n.isDirectory()) {
            return null;
        }
        return m7307j(file, new File(fileM7311n, file.getName() + ".bs64").getAbsolutePath());
    }

    /* JADX INFO: renamed from: h */
    public static File m7305h(File file) {
        return m7307j(file, file.getAbsolutePath() + ".bs64");
    }

    /* JADX INFO: renamed from: i */
    public static String m7306i(String str) {
        File fileM7305h = m7305h(new File(str));
        if (fileM7305h != null) {
            return fileM7305h.getAbsolutePath();
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
    /* JADX INFO: renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static File m7307j(File file, String str) throws Throwable {
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

    /* JADX INFO: renamed from: k */
    public static File m7308k(Context context) {
        return m7309l(context, "audio");
    }

    /* JADX INFO: renamed from: l */
    public static File m7309l(Context context, String str) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null || !cacheDir.isDirectory()) {
            return null;
        }
        return m7320w(cacheDir, str);
    }

    /* JADX INFO: renamed from: m */
    public static File m7310m(Context context) {
        return m7309l(context, "data");
    }

    /* JADX INFO: renamed from: n */
    public static File m7311n(Context context) {
        return m7309l(context, "log");
    }

    /* JADX INFO: renamed from: o */
    public static File m7312o(Context context) {
        File fileM7311n = m7311n(context);
        if (fileM7311n == null) {
            return null;
        }
        File file = new File(fileM7311n, "CrashLog_" + new SimpleDateFormat("yyyyMMdd", Locale.CHINA).format(new Date()) + ".log");
        if (file.isFile()) {
            return file;
        }
        return null;
    }

    /* JADX INFO: renamed from: p */
    public static File m7313p(Context context) {
        File fileM7311n = m7311n(context);
        if (fileM7311n == null) {
            return null;
        }
        File file = new File(fileM7311n, "app_" + new SimpleDateFormat("yyyyMMdd", Locale.CHINA).format(new Date()) + ".log");
        if (file.isFile()) {
            return file;
        }
        return null;
    }

    /* JADX INFO: renamed from: q */
    public static File m7314q(Context context) {
        return m7309l(context, "tmp");
    }

    /* JADX INFO: renamed from: r */
    public static String m7315r(Context context) {
        File fileM7309l = m7309l(context, "tmp");
        return fileM7309l != null ? fileM7309l.getAbsolutePath() : BuildConfig.FLAVOR;
    }

    /* JADX INFO: renamed from: s */
    public static File m7316s(Context context) {
        return m7309l(context, "video");
    }

    /* JADX INFO: renamed from: t */
    public static String m7317t(Context context, String str, int i) {
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
            C0982s.m7374d("getXmlString", "Exception: " + e);
            return null;
        }
    }

    /* JADX INFO: renamed from: u */
    public static boolean m7318u(Context context) {
        return m7319v(context, "audio");
    }

    /* JADX INFO: renamed from: v */
    private static boolean m7319v(Context context, String str) {
        File[] fileArrListFiles;
        File fileM7309l = m7309l(context, str);
        return fileM7309l != null && fileM7309l.isDirectory() && (fileArrListFiles = fileM7309l.listFiles()) != null && fileArrListFiles.length > 0;
    }

    /* JADX INFO: renamed from: w */
    private static File m7320w(File file, String str) {
        if (file == null || !file.exists() || !file.isDirectory()) {
            return null;
        }
        File file2 = new File(file, str);
        if ((!file2.exists() || file2.isFile()) && !file2.mkdir()) {
            return null;
        }
        return file2;
    }

    /* JADX INFO: renamed from: x */
    public static boolean m7321x(byte[] bArr, int i, int i2, String str) {
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

    /* JADX INFO: renamed from: y */
    public static boolean m7322y(byte[] bArr, String str) {
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

    /* JADX INFO: renamed from: z */
    public static boolean m7323z(byte[] bArr, int i, int i2, String str, Context context) {
        File fileM7308k = m7308k(context);
        if (fileM7308k == null) {
            return false;
        }
        return m7321x(bArr, i, i2, fileM7308k.getAbsolutePath() + "/" + str);
    }
}
