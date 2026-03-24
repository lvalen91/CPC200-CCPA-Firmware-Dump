package com.stub;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.location.Location;
import android.location.LocationManager;
import android.media.AudioAttributes;
import android.media.MediaPlayer;
import android.media.SoundPool;
import android.os.Build;
import android.util.TypedValue;
import com.tianyu.util.DtcLoader;
import com.tianyu.util.a;
import dalvik.system.DexFile;
import java.io.File;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes.dex */
public final class StubApp extends Application {
    private static Context d;
    private static Application a = null;
    public static String strEntryApplication = "entryRunApplication";
    private static Application b = null;
    private static String c = "libjiagu";
    private static boolean loadFromLib = false;
    private static boolean needX86Bridge = false;
    private static boolean returnIntern = true;
    private static String e = null;
    private static String f = null;
    private static String g = null;
    private static String h = null;
    private static String i = null;
    private static Map<Integer, String> j = new ConcurrentHashMap();
    private static Map<String, Set<String>> perm = new ConcurrentHashMap();

    public static native void fcmark();

    public static native void interface11(int i2);

    public static native Enumeration<String> interface12(DexFile dexFile);

    public static native long interface13(int i2, long j2, long j3, long j4, int i3, int i4, long j5);

    public static native String interface14(int i2);

    public static native AssetFileDescriptor interface17(AssetManager assetManager, String str);

    public static native InputStream interface18(Class cls, String str);

    public static native InputStream interface19(ClassLoader classLoader, String str);

    public static native InputStream interface199(AssetManager assetManager, String str);

    public static native void interface20();

    public static native void interface21(Application application);

    public static native void interface22(int i2, String[] strArr, int[] iArr);

    public static native void interface24(Activity activity, String[] strArr, int i2);

    public static native ZipEntry interface30(ZipFile zipFile, String str);

    public static native void interface5(Application application);

    public static native InputStream interface51(Resources resources, int i2);

    public static native InputStream interface52(Resources resources, int i2, TypedValue typedValue);

    public static native AssetFileDescriptor interface53(Resources resources, int i2);

    public static native MediaPlayer interface54(Context context, int i2);

    public static native MediaPlayer interface55(Context context, int i2, AudioAttributes audioAttributes, int i3);

    public static native int interface56(SoundPool soundPool, Context context, int i2, int i3);

    public static native String interface6(String str);

    public static native boolean interface7(Application application, Context context);

    public static native boolean interface8(Application application, Context context);

    public static native Location mark(LocationManager locationManager, String str);

    public static native void mark();

    public static native void mark(Location location);

    public static native synchronized Object n010333(Object obj, Object obj2);

    public static native void n0110();

    public static native int n0111();

    public static native Object n01113(int i2);

    public static native void n01121333112230(long j2, int i2, Object obj, Object obj2, Object obj3, int i3, int i4, long j3, long j4, Object obj4);

    public static native Object n0113();

    public static native void n01130(Object obj);

    public static native boolean n01131(Object obj);

    public static native void n01131110(Object obj, int i2, int i3, int i4);

    public static native void n01131130(Object obj, int i2, int i3, Object obj2);

    public static native void n0113130(Object obj, int i2, Object obj2);

    public static native Object n0113133(Object obj, int i2, Object obj2);

    public static native Object n01133(Object obj);

    public static native void n011330(Object obj, Object obj2);

    public static native boolean n011331(Object obj, Object obj2);

    public static native Object n011333(Object obj, Object obj2);

    public static native Object n0113333(Object obj, Object obj2, Object obj3);

    public static native void pmark(Context context);

    public static native void rmark();

    public native synchronized void n11030(Object obj);

    public native synchronized boolean n110331(Object obj, Object obj2);

    public native void n1110();

    public native int n1111();

    public native void n11110(int i2);

    public native boolean n11111(boolean z);

    public native int n111111(int i2, int i3);

    public native long n111112(int i2, int i3);

    public native void n111130(int i2, Object obj);

    public native boolean n11113311(int i2, Object obj, Object obj2, int i3);

    public native int n11121(long j2);

    public native void n111210(long j2, boolean z);

    public native void n111220(long j2, long j3);

    public native boolean n1112311(long j2, Object obj, int i2);

    public native Object n1113();

    public native void n11130(Object obj);

    public native int n11131(Object obj);

    public native void n111310(Object obj, int i2);

    public native int n1113111(Object obj, int i2, int i3);

    public native int n111311311(Object obj, int i2, int i3, Object obj2, int i4);

    public native void n1113130(Object obj, boolean z, Object obj2);

    public native boolean n111313131(Object obj, int i2, Object obj2, int i3, Object obj3);

    public native long n11132(Object obj);

    public native Object n11133(Object obj);

    public native void n111330(Object obj, Object obj2);

    public native void n1113310(Object obj, Object obj2, boolean z);

    public native void n11133110(Object obj, Object obj2, boolean z, int i2);

    public native void n11133310(Object obj, Object obj2, Object obj3, int i2);

    public native Object n1113333(Object obj, Object obj2, Object obj3);

    public static String getSoPath1() {
        return f;
    }

    public static String getSoPath2() {
        return g;
    }

    public static String getDir() {
        return h;
    }

    public static Context getAppContext() {
        return d;
    }

    public static Context getOrigApplicationContext(Context context) {
        if (context == a) {
            return b;
        }
        return context;
    }

    private static Application a(Context context) {
        ClassLoader classLoader;
        Class<?> clsLoadClass;
        try {
            if (b == null && (classLoader = context.getClassLoader()) != null && (clsLoadClass = classLoader.loadClass(strEntryApplication)) != null) {
                b = (Application) clsLoadClass.newInstance();
            }
        } catch (Exception e2) {
        }
        return b;
    }

    public static void ChangeTopApplication() {
        try {
            interface7(b, a.getBaseContext());
        } catch (Exception e2) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.lang.reflect.Method] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    @Override // android.app.Application
    public final void onCreate() {
        System.currentTimeMillis();
        super.onCreate();
        ChangeTopApplication();
        if (b != null) {
            b.onCreate();
        }
        interface21(b);
        ?? r5 = this;
        if (b != null) {
            r5 = b;
        }
        Context context = d;
        if (r5 != 0 && context != null && a.a(context)) {
            try {
                ?? declaredMethod = Class.forName(a.a("s\u007f}>zw>rx>Bu`\u007fbdcDy}u")).getDeclaredMethod(a.a("BuwycdubQsdyfydiSq||Rqs{c"), Application.class);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(null, new Object[]{r5});
            } catch (Exception e2) {
            }
        }
    }

    @Override // android.content.ContextWrapper
    protected final void attachBaseContext(Context context) throws Throwable {
        boolean zA;
        System.currentTimeMillis();
        super.attachBaseContext(context);
        a.b();
        d = context;
        if (a == null) {
            a = this;
        }
        if (b == null) {
            Boolean boolValueOf = Boolean.valueOf(a.a());
            Boolean bool = false;
            Boolean bool2 = false;
            if (Build.CPU_ABI.contains("64") || Build.CPU_ABI2.contains("64")) {
                bool = true;
            }
            if (Build.CPU_ABI.contains("mips") || Build.CPU_ABI2.contains("mips")) {
                bool2 = true;
            }
            if (boolValueOf.booleanValue() && needX86Bridge) {
                System.loadLibrary("X86Bridge");
            }
            if (loadFromLib) {
                if (boolValueOf.booleanValue() && !needX86Bridge) {
                    System.loadLibrary("jiagu_x86");
                } else {
                    System.loadLibrary("jiagu");
                }
            } else {
                String absolutePath = context.getFilesDir().getParentFile().getAbsolutePath();
                try {
                    absolutePath = context.getFilesDir().getParentFile().getCanonicalPath();
                } catch (Exception e2) {
                }
                String str = absolutePath + "/.jiagu";
                i = a(str, bool.booleanValue(), bool2.booleanValue());
                e = a(str, false, false);
                f = str + File.separator + e;
                g = str + File.separator + i;
                h = str;
                if (bool2.booleanValue()) {
                    a.a(context, c + "_mips.so", str, e);
                } else if (boolValueOf.booleanValue() && !needX86Bridge) {
                    a.a(context, c + "_x86.so", str, e);
                } else {
                    a.a(context, c + ".so", str, e);
                }
                if (bool.booleanValue() && !bool2.booleanValue()) {
                    if (boolValueOf.booleanValue() && !needX86Bridge) {
                        zA = a.a(context, c + "_x64.so", str, i);
                    } else {
                        zA = a.a(context, c + "_a64.so", str, i);
                    }
                    if (zA) {
                        System.load(str + "/" + i);
                    } else {
                        System.load(str + "/" + e);
                    }
                } else {
                    System.load(str + "/" + e);
                }
            }
        }
        DtcLoader.init();
        interface5(a);
        if (b == null) {
            b = a(context);
            if (b != null) {
                try {
                    Method declaredMethod = Application.class.getDeclaredMethod("attach", Context.class);
                    if (declaredMethod != null) {
                        declaredMethod.setAccessible(true);
                        declaredMethod.invoke(b, context);
                    }
                    interface8(b, context);
                    return;
                } catch (Exception e3) {
                    throw new RuntimeException("Failed to call attachBaseContext.", e3);
                }
            }
            System.exit(1);
        }
    }

    private static String a(String str, boolean z, boolean z2) {
        String str2 = c;
        if (Build.VERSION.SDK_INT < 23) {
            str2 = str2 + str.hashCode();
        }
        if (z && !z2) {
            return str2 + "_64.so";
        }
        return str2 + ".so";
    }

    public static String getString2(int i2) {
        String strInterface14 = j.get(Integer.valueOf(i2));
        if (strInterface14 == null) {
            strInterface14 = interface14(i2);
            j.put(Integer.valueOf(i2), strInterface14);
        }
        if (strInterface14 != null && returnIntern) {
            return strInterface14.intern();
        }
        return strInterface14;
    }

    public static String getString2(String str) {
        try {
            return getString2(Integer.parseInt(str));
        } catch (NumberFormatException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static boolean isX86Arch() {
        return a.a();
    }

    public static void put(Object obj, String[] strArr) {
        try {
            String canonicalName = obj.getClass().getCanonicalName();
            Set<String> set = perm.get(canonicalName);
            if (set != null) {
                set.addAll(Arrays.asList(strArr));
            } else {
                Set<String> setNewSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
                Collections.addAll(setNewSetFromMap, strArr);
                Set<String> setPut = perm.put(canonicalName, setNewSetFromMap);
                if (setPut != null) {
                    setPut.addAll(Arrays.asList(strArr));
                }
            }
        } catch (Exception e2) {
        }
    }
}
