package com.tianyu.util;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0094, code lost:
    
        if (r3[18] == 62) goto L44;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean a() throws Throwable {
        RandomAccessFile randomAccessFile;
        FileInputStream fileInputStream;
        Throwable th;
        RandomAccessFile randomAccessFile2;
        RandomAccessFile randomAccessFile3;
        FileInputStream fileInputStream2 = null;
        try {
            for (String str : Build.SUPPORTED_32_BIT_ABIS) {
                if (str.contains("x86")) {
                    return true;
                }
            }
        } catch (NoSuchFieldError e) {
            if (Build.CPU_ABI.contains("x86") || Build.CPU_ABI2.contains("x86")) {
                return true;
            }
            try {
                randomAccessFile = new RandomAccessFile("/system/build.prop", "r");
                try {
                    for (String line = randomAccessFile.readLine(); line != null; line = randomAccessFile.readLine()) {
                        if (line.contains("ro.product.cpu.abi") && line.contains("x86")) {
                            try {
                                randomAccessFile.close();
                                return true;
                            } catch (Exception e2) {
                                return true;
                            }
                        }
                    }
                    try {
                        randomAccessFile.close();
                    } catch (Exception e3) {
                    }
                } catch (FileNotFoundException e4) {
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (Exception e5) {
                        }
                    }
                } catch (IOException e6) {
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (Exception e7) {
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (Exception e8) {
                        }
                    }
                    throw th;
                }
            } catch (FileNotFoundException e9) {
                randomAccessFile = null;
            } catch (IOException e10) {
                randomAccessFile = null;
            } catch (Throwable th3) {
                th = th3;
                randomAccessFile = null;
            }
        }
        if (Build.CPU_ABI.contains("x86") || Build.CPU_ABI2.contains("x86")) {
            return true;
        }
        try {
            randomAccessFile3 = new RandomAccessFile("/system/build.prop", "r");
        } catch (FileNotFoundException e11) {
            randomAccessFile3 = null;
        } catch (IOException e12) {
            randomAccessFile3 = null;
        } catch (Throwable th4) {
            th = th4;
            randomAccessFile2 = null;
        }
        try {
            for (String line2 = randomAccessFile3.readLine(); line2 != null; line2 = randomAccessFile3.readLine()) {
                if (line2.contains("ro.product.cpu.abi") && line2.contains("x86")) {
                    try {
                        randomAccessFile3.close();
                        return true;
                    } catch (Exception e13) {
                        return true;
                    }
                }
            }
            try {
                randomAccessFile3.close();
            } catch (Exception e14) {
            }
        } catch (FileNotFoundException e15) {
            if (randomAccessFile3 != null) {
                try {
                    randomAccessFile3.close();
                } catch (Exception e16) {
                }
            }
        } catch (IOException e17) {
            if (randomAccessFile3 != null) {
                try {
                    randomAccessFile3.close();
                } catch (Exception e18) {
                }
            }
        } catch (Throwable th5) {
            th = th5;
            randomAccessFile2 = randomAccessFile3;
            if (randomAccessFile2 == null) {
                throw th;
            }
            try {
                randomAccessFile2.close();
                throw th;
            } catch (Exception e19) {
                throw th;
            }
        }
        try {
            fileInputStream = new FileInputStream("/system/bin/ls");
        } catch (Exception e20) {
        } catch (Throwable th6) {
            th = th6;
            fileInputStream = null;
        }
        try {
            byte[] bArr = new byte[20];
            if (fileInputStream.read(bArr) == 20 && bArr[0] == 127 && bArr[1] == 69 && bArr[2] == 76 && bArr[3] == 70) {
                if (bArr[18] != 3) {
                }
                if (fileInputStream == null) {
                    return true;
                }
                try {
                    fileInputStream.close();
                    return true;
                } catch (IOException e21) {
                    return true;
                }
            }
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (IOException e22) {
                }
            }
        } catch (Exception e23) {
            fileInputStream2 = fileInputStream;
            if (fileInputStream2 != null) {
                try {
                    fileInputStream2.close();
                } catch (IOException e24) {
                }
            }
        } catch (Throwable th7) {
            th = th7;
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (IOException e25) {
                }
            }
            throw th;
        }
        return false;
    }

    public static boolean a(Context context, String str, String str2, String str3) throws Throwable {
        FileOutputStream fileOutputStream;
        InputStream inputStreamOpen;
        FileOutputStream fileOutputStream2;
        String str4 = str2 + "/" + str3;
        File file = new File(str2);
        if (!file.exists()) {
            file.mkdir();
        }
        try {
            File file2 = new File(str4);
            if (file2.exists()) {
                InputStream inputStreamOpen2 = context.getResources().getAssets().open(str);
                FileInputStream fileInputStream = new FileInputStream(file2);
                BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStreamOpen2);
                BufferedInputStream bufferedInputStream2 = new BufferedInputStream(fileInputStream);
                boolean z = a(bufferedInputStream, bufferedInputStream2);
                inputStreamOpen2.close();
                fileInputStream.close();
                bufferedInputStream.close();
                bufferedInputStream2.close();
                if (z) {
                    a((Closeable) null);
                    a((Closeable) null);
                    return true;
                }
            }
            inputStreamOpen = context.getResources().getAssets().open(str);
            try {
                fileOutputStream = new FileOutputStream(str4);
                try {
                    byte[] bArr = new byte[7168];
                    while (true) {
                        int i = inputStreamOpen.read(bArr);
                        if (i <= 0) {
                            fileOutputStream.flush();
                            a(fileOutputStream);
                            a(inputStreamOpen);
                            return true;
                        }
                        fileOutputStream.write(bArr, 0, i);
                    }
                } catch (Exception e) {
                    fileOutputStream2 = fileOutputStream;
                    a(fileOutputStream2);
                    a(inputStreamOpen);
                    return false;
                } catch (Throwable th) {
                    th = th;
                    a(fileOutputStream);
                    a(inputStreamOpen);
                    throw th;
                }
            } catch (Exception e2) {
                fileOutputStream2 = null;
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = null;
            }
        } catch (Exception e3) {
            fileOutputStream2 = null;
            inputStreamOpen = null;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
            inputStreamOpen = null;
        }
    }

    private static boolean a(BufferedInputStream bufferedInputStream, BufferedInputStream bufferedInputStream2) {
        try {
            int iAvailable = bufferedInputStream.available();
            int iAvailable2 = bufferedInputStream2.available();
            if (iAvailable != iAvailable2) {
                return false;
            }
            byte[] bArr = new byte[iAvailable];
            byte[] bArr2 = new byte[iAvailable2];
            bufferedInputStream.read(bArr);
            bufferedInputStream2.read(bArr2);
            for (int i = 0; i < iAvailable; i++) {
                if (bArr[i] != bArr2[i]) {
                    return false;
                }
            }
            return true;
        } catch (FileNotFoundException e) {
            return false;
        } catch (IOException e2) {
            return false;
        }
    }

    private static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    public static void b() {
        if (Build.VERSION.SDK_INT == 28) {
            try {
                Class.forName(a("q~tb\u007fyt>s\u007f~du~d>`}>@qs{qwu@qbcub4@qs{qwu")).getDeclaredConstructor(String.class).setAccessible(true);
            } catch (Throwable th) {
            }
            try {
                Class<?> cls = Class.forName(a("q~tb\u007fyt>q``>QsdyfydiDxbuqt"));
                Method declaredMethod = cls.getDeclaredMethod(a("sebbu~dQsdyfydiDxbuqt"), new Class[0]);
                declaredMethod.setAccessible(true);
                Object objInvoke = declaredMethod.invoke(null, new Object[0]);
                Field declaredField = cls.getDeclaredField(a("}Xyttu~Q`yGqb~y~wCx\u007fg~"));
                declaredField.setAccessible(true);
                declaredField.setBoolean(objInvoke, true);
            } catch (Throwable th2) {
            }
        }
    }

    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        char[] charArray = str.toCharArray();
        for (int i = 0; i < charArray.length; i++) {
            charArray[i] = (char) (charArray[i] ^ 16);
        }
        return String.valueOf(charArray);
    }

    public static boolean a(Context context) {
        try {
            Class<?> cls = Class.forName(a("q~tb\u007fyt>q``>QsdyfydiDxbuqt"));
            Method declaredMethod = cls.getDeclaredMethod(a("sebbu~dQsdyfydiDxbuqt"), new Class[0]);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(null, new Object[0]);
            Method declaredMethod2 = cls.getDeclaredMethod(a("wud@b\u007fsucc^q}u"), new Class[0]);
            declaredMethod2.setAccessible(true);
            return context.getPackageName().equalsIgnoreCase((String) declaredMethod2.invoke(objInvoke, new Object[0]));
        } catch (Throwable th) {
            return true;
        }
    }
}
