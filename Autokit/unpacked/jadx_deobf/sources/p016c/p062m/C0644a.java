package p016c.p062m;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import com.yalantis.ucrop.BuildConfig;
import dalvik.system.BaseDexClassLoader;
import dalvik.system.DexClassLoader;
import dalvik.system.DexFile;
import dalvik.system.PathClassLoader;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.zip.ZipFile;

/* JADX INFO: renamed from: c.m.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0644a {

    /* JADX INFO: renamed from: a */
    private static final Set<File> f3891a = new HashSet();

    /* JADX INFO: renamed from: b */
    private static final boolean f3892b = m4997n(System.getProperty("java.vm.version"));

    /* JADX INFO: renamed from: c.m.a$a */
    private static final class a {

        /* JADX INFO: renamed from: b */
        private static final int f3893b = 4;

        /* JADX INFO: renamed from: a */
        private final InterfaceC1349a f3894a;

        /* JADX INFO: renamed from: c.m.a$a$a, reason: collision with other inner class name */
        private interface InterfaceC1349a {
            /* JADX INFO: renamed from: a */
            Object mo5002a(File file, DexFile dexFile);
        }

        /* JADX INFO: renamed from: c.m.a$a$b */
        private static class b implements InterfaceC1349a {

            /* JADX INFO: renamed from: a */
            private final Constructor<?> f3895a;

            b(Class<?> cls) throws NoSuchMethodException {
                Constructor<?> constructor = cls.getConstructor(File.class, ZipFile.class, DexFile.class);
                this.f3895a = constructor;
                constructor.setAccessible(true);
            }

            @Override // p016c.p062m.C0644a.a.InterfaceC1349a
            /* JADX INFO: renamed from: a */
            public Object mo5002a(File file, DexFile dexFile) {
                return this.f3895a.newInstance(file, new ZipFile(file), dexFile);
            }
        }

        /* JADX INFO: renamed from: c.m.a$a$c */
        private static class c implements InterfaceC1349a {

            /* JADX INFO: renamed from: a */
            private final Constructor<?> f3896a;

            c(Class<?> cls) throws NoSuchMethodException {
                Constructor<?> constructor = cls.getConstructor(File.class, File.class, DexFile.class);
                this.f3896a = constructor;
                constructor.setAccessible(true);
            }

            @Override // p016c.p062m.C0644a.a.InterfaceC1349a
            /* JADX INFO: renamed from: a */
            public Object mo5002a(File file, DexFile dexFile) {
                return this.f3896a.newInstance(file, file, dexFile);
            }
        }

        /* JADX INFO: renamed from: c.m.a$a$d */
        private static class d implements InterfaceC1349a {

            /* JADX INFO: renamed from: a */
            private final Constructor<?> f3897a;

            d(Class<?> cls) throws NoSuchMethodException {
                Constructor<?> constructor = cls.getConstructor(File.class, Boolean.TYPE, File.class, DexFile.class);
                this.f3897a = constructor;
                constructor.setAccessible(true);
            }

            @Override // p016c.p062m.C0644a.a.InterfaceC1349a
            /* JADX INFO: renamed from: a */
            public Object mo5002a(File file, DexFile dexFile) {
                return this.f3897a.newInstance(file, Boolean.FALSE, file, dexFile);
            }
        }

        private a() throws ClassNotFoundException {
            InterfaceC1349a dVar;
            Class<?> cls = Class.forName("dalvik.system.DexPathList$Element");
            try {
                try {
                    dVar = new b(cls);
                } catch (NoSuchMethodException unused) {
                    dVar = new c(cls);
                }
            } catch (NoSuchMethodException unused2) {
                dVar = new d(cls);
            }
            this.f3894a = dVar;
        }

        /* JADX INFO: renamed from: a */
        static void m4999a(ClassLoader classLoader, List<? extends File> list) throws IllegalAccessException, NoSuchFieldException {
            Object obj = C0644a.m4990g(classLoader, "pathList").get(classLoader);
            Object[] objArrM5000b = new a().m5000b(list);
            try {
                C0644a.m4989f(obj, "dexElements", objArrM5000b);
            } catch (NoSuchFieldException unused) {
                C0644a.m4989f(obj, "pathElements", objArrM5000b);
            }
        }

        /* JADX INFO: renamed from: b */
        private Object[] m5000b(List<? extends File> list) {
            int size = list.size();
            Object[] objArr = new Object[size];
            for (int i = 0; i < size; i++) {
                File file = list.get(i);
                objArr[i] = this.f3894a.mo5002a(file, DexFile.loadDex(file.getPath(), m5001c(file), 0));
            }
            return objArr;
        }

        /* JADX INFO: renamed from: c */
        private static String m5001c(File file) {
            File parentFile = file.getParentFile();
            String name = file.getName();
            return new File(parentFile, name.substring(0, name.length() - f3893b) + ".dex").getPath();
        }
    }

    /* JADX INFO: renamed from: c.m.a$b */
    private static final class b {
        /* JADX INFO: renamed from: a */
        static void m5003a(ClassLoader classLoader, List<? extends File> list, File file) throws IllegalAccessException, NoSuchFieldException, IOException {
            IOException[] iOExceptionArr;
            Object obj = C0644a.m4990g(classLoader, "pathList").get(classLoader);
            ArrayList<IOException> arrayList = new ArrayList();
            C0644a.m4989f(obj, "dexElements", m5004b(obj, new ArrayList(list), file, arrayList));
            if (arrayList.size() > 0) {
                for (IOException iOException : arrayList) {
                }
                Field fieldM4990g = C0644a.m4990g(obj, "dexElementsSuppressedExceptions");
                IOException[] iOExceptionArr2 = (IOException[]) fieldM4990g.get(obj);
                if (iOExceptionArr2 == null) {
                    iOExceptionArr = (IOException[]) arrayList.toArray(new IOException[arrayList.size()]);
                } else {
                    IOException[] iOExceptionArr3 = new IOException[arrayList.size() + iOExceptionArr2.length];
                    arrayList.toArray(iOExceptionArr3);
                    System.arraycopy(iOExceptionArr2, 0, iOExceptionArr3, arrayList.size(), iOExceptionArr2.length);
                    iOExceptionArr = iOExceptionArr3;
                }
                fieldM4990g.set(obj, iOExceptionArr);
                IOException iOException2 = new IOException("I/O exception during makeDexElement");
                iOException2.initCause((Throwable) arrayList.get(0));
                throw iOException2;
            }
        }

        /* JADX INFO: renamed from: b */
        private static Object[] m5004b(Object obj, ArrayList<File> arrayList, File file, ArrayList<IOException> arrayList2) {
            return (Object[]) C0644a.m4991h(obj, "makeDexElements", ArrayList.class, File.class, ArrayList.class).invoke(obj, arrayList, file, arrayList2);
        }
    }

    /* JADX INFO: renamed from: c.m.a$c */
    private static final class c {
        /* JADX INFO: renamed from: a */
        static void m5005a(ClassLoader classLoader, List<? extends File> list) throws IllegalAccessException, NoSuchFieldException {
            int size = list.size();
            Field fieldM4990g = C0644a.m4990g(classLoader, "path");
            StringBuilder sb = new StringBuilder((String) fieldM4990g.get(classLoader));
            String[] strArr = new String[size];
            File[] fileArr = new File[size];
            ZipFile[] zipFileArr = new ZipFile[size];
            DexFile[] dexFileArr = new DexFile[size];
            ListIterator<? extends File> listIterator = list.listIterator();
            while (listIterator.hasNext()) {
                File next = listIterator.next();
                String absolutePath = next.getAbsolutePath();
                sb.append(':');
                sb.append(absolutePath);
                int iPreviousIndex = listIterator.previousIndex();
                strArr[iPreviousIndex] = absolutePath;
                fileArr[iPreviousIndex] = next;
                zipFileArr[iPreviousIndex] = new ZipFile(next);
                dexFileArr[iPreviousIndex] = DexFile.loadDex(absolutePath, absolutePath + ".dex", 0);
            }
            fieldM4990g.set(classLoader, sb.toString());
            C0644a.m4989f(classLoader, "mPaths", strArr);
            C0644a.m4989f(classLoader, "mFiles", fileArr);
            C0644a.m4989f(classLoader, "mZips", zipFileArr);
            C0644a.m4989f(classLoader, "mDexs", dexFileArr);
        }
    }

    /* JADX INFO: renamed from: d */
    private static void m4987d(Context context) {
        File file = new File(context.getFilesDir(), "secondary-dexes");
        if (file.isDirectory()) {
            String str = "Clearing old secondary dex dir (" + file.getPath() + ").";
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                String str2 = "Failed to list secondary dex dir content (" + file.getPath() + ").";
                return;
            }
            for (File file2 : fileArrListFiles) {
                String str3 = "Trying to delete old file " + file2.getPath() + " of size " + file2.length();
                if (file2.delete()) {
                    String str4 = "Deleted old file " + file2.getPath();
                } else {
                    String str5 = "Failed to delete old file " + file2.getPath();
                }
            }
            if (file.delete()) {
                String str6 = "Deleted old secondary dex dir " + file.getPath();
                return;
            }
            String str7 = "Failed to delete secondary dex dir " + file.getPath();
        }
    }

    /* JADX INFO: renamed from: e */
    private static void m4988e(Context context, File file, File file2, String str, String str2, boolean z) {
        synchronized (f3891a) {
            if (f3891a.contains(file)) {
                return;
            }
            f3891a.add(file);
            if (Build.VERSION.SDK_INT > 20) {
                String str3 = "MultiDex is not guaranteed to work in SDK version " + Build.VERSION.SDK_INT + ": SDK version higher than 20 should be backed by runtime with built-in multidex capabilty but it's not the case here: java.vm.version=\"" + System.getProperty("java.vm.version") + "\"";
            }
            ClassLoader classLoaderM4993j = m4993j(context);
            if (classLoaderM4993j == null) {
                return;
            }
            try {
                m4987d(context);
            } catch (Throwable unused) {
            }
            File fileM4994k = m4994k(context, file2, str);
            C0645b c0645b = new C0645b(file, fileM4994k);
            IOException e = null;
            try {
                try {
                    m4996m(classLoaderM4993j, fileM4994k, c0645b.m5016h(context, str2, false));
                } catch (IOException e2) {
                    if (!z) {
                        throw e2;
                    }
                    m4996m(classLoaderM4993j, fileM4994k, c0645b.m5016h(context, str2, true));
                }
                try {
                } catch (IOException e3) {
                    e = e3;
                }
                if (e != null) {
                    throw e;
                }
            } finally {
                try {
                    c0645b.close();
                } catch (IOException unused2) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: f */
    public static void m4989f(Object obj, String str, Object[] objArr) throws IllegalAccessException, NoSuchFieldException {
        Field fieldM4990g = m4990g(obj, str);
        Object[] objArr2 = (Object[]) fieldM4990g.get(obj);
        Object[] objArr3 = (Object[]) Array.newInstance(objArr2.getClass().getComponentType(), objArr2.length + objArr.length);
        System.arraycopy(objArr2, 0, objArr3, 0, objArr2.length);
        System.arraycopy(objArr, 0, objArr3, objArr2.length, objArr.length);
        fieldM4990g.set(obj, objArr3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: g */
    public static Field m4990g(Object obj, String str) throws NoSuchFieldException {
        for (Class<?> superclass = obj.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
            try {
                Field declaredField = superclass.getDeclaredField(str);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                return declaredField;
            } catch (NoSuchFieldException unused) {
            }
        }
        throw new NoSuchFieldException("Field " + str + " not found in " + obj.getClass());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: h */
    public static Method m4991h(Object obj, String str, Class<?>... clsArr) throws NoSuchMethodException {
        for (Class<?> superclass = obj.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
            try {
                Method declaredMethod = superclass.getDeclaredMethod(str, clsArr);
                if (!declaredMethod.isAccessible()) {
                    declaredMethod.setAccessible(true);
                }
                return declaredMethod;
            } catch (NoSuchMethodException unused) {
            }
        }
        throw new NoSuchMethodException("Method " + str + " with parameters " + Arrays.asList(clsArr) + " not found in " + obj.getClass());
    }

    /* JADX INFO: renamed from: i */
    private static ApplicationInfo m4992i(Context context) {
        try {
            return context.getApplicationInfo();
        } catch (RuntimeException unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: j */
    private static ClassLoader m4993j(Context context) {
        try {
            ClassLoader classLoader = context.getClassLoader();
            if (Build.VERSION.SDK_INT >= 14) {
                if (classLoader instanceof BaseDexClassLoader) {
                    return classLoader;
                }
            } else if ((classLoader instanceof DexClassLoader) || (classLoader instanceof PathClassLoader)) {
                return classLoader;
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: k */
    private static File m4994k(Context context, File file, String str) throws IOException {
        File file2 = new File(file, "code_cache");
        try {
            m4998o(file2);
        } catch (IOException unused) {
            file2 = new File(context.getFilesDir(), "code_cache");
            m4998o(file2);
        }
        File file3 = new File(file2, str);
        m4998o(file3);
        return file3;
    }

    /* JADX INFO: renamed from: l */
    public static void m4995l(Context context) {
        if (f3892b) {
            return;
        }
        if (Build.VERSION.SDK_INT < 4) {
            throw new RuntimeException("MultiDex installation failed. SDK " + Build.VERSION.SDK_INT + " is unsupported. Min SDK version is 4.");
        }
        try {
            ApplicationInfo applicationInfoM4992i = m4992i(context);
            if (applicationInfoM4992i == null) {
                return;
            }
            m4988e(context, new File(applicationInfoM4992i.sourceDir), new File(applicationInfoM4992i.dataDir), "secondary-dexes", BuildConfig.FLAVOR, true);
        } catch (Exception e) {
            throw new RuntimeException("MultiDex installation failed (" + e.getMessage() + ").");
        }
    }

    /* JADX INFO: renamed from: m */
    private static void m4996m(ClassLoader classLoader, File file, List<? extends File> list) throws IllegalAccessException, NoSuchFieldException, IOException {
        if (list.isEmpty()) {
            return;
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 19) {
            b.m5003a(classLoader, list, file);
        } else if (i >= 14) {
            a.m4999a(classLoader, list);
        } else {
            c.m5005a(classLoader, list);
        }
    }

    /* JADX INFO: renamed from: n */
    static boolean m4997n(String str) {
        boolean z = false;
        if (str != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
            String strNextToken = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : null;
            String strNextToken2 = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : null;
            if (strNextToken != null && strNextToken2 != null) {
                try {
                    int i = Integer.parseInt(strNextToken);
                    int i2 = Integer.parseInt(strNextToken2);
                    if (i > 2 || (i == 2 && i2 >= 1)) {
                        z = true;
                    }
                } catch (NumberFormatException unused) {
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("VM with version ");
        sb.append(str);
        sb.append(z ? " has multidex support" : " does not have multidex support");
        sb.toString();
        return z;
    }

    /* JADX INFO: renamed from: o */
    private static void m4998o(File file) throws IOException {
        file.mkdir();
        if (file.isDirectory()) {
            return;
        }
        File parentFile = file.getParentFile();
        if (parentFile == null) {
            String str = "Failed to create dir " + file.getPath() + ". Parent file is null.";
        } else {
            String str2 = "Failed to create dir " + file.getPath() + ". parent file is a dir " + parentFile.isDirectory() + ", a file " + parentFile.isFile() + ", exists " + parentFile.exists() + ", readable " + parentFile.canRead() + ", writable " + parentFile.canWrite();
        }
        throw new IOException("Failed to create directory " + file.getPath());
    }
}
