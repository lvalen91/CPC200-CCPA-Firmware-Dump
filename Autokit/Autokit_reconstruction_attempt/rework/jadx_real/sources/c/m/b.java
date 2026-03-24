package c.m;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileFilter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
final class b implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final File f1264b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f1265c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final File f1266d;
    private final RandomAccessFile e;
    private final FileChannel f;
    private final FileLock g;

    class a implements FileFilter {
        a(b bVar) {
        }

        @Override // java.io.FileFilter
        public boolean accept(File file) {
            return !file.getName().equals("MultiDex.lock");
        }
    }

    /* JADX INFO: renamed from: c.m.b$b, reason: collision with other inner class name */
    private static class C0064b extends File {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f1267b;

        public C0064b(File file, String str) {
            super(file, str);
            this.f1267b = -1L;
        }
    }

    b(File file, File file2) {
        String str = "MultiDexExtractor(" + file.getPath() + ", " + file2.getPath() + ")";
        this.f1264b = file;
        this.f1266d = file2;
        this.f1265c = f(file);
        File file3 = new File(file2, "MultiDex.lock");
        RandomAccessFile randomAccessFile = new RandomAccessFile(file3, "rw");
        this.e = randomAccessFile;
        try {
            this.f = randomAccessFile.getChannel();
            try {
                String str2 = "Blocking on lock " + file3.getPath();
                this.g = this.f.lock();
                String str3 = file3.getPath() + " locked";
            } catch (IOException e) {
                e = e;
                b(this.f);
                throw e;
            } catch (Error e2) {
                e = e2;
                b(this.f);
                throw e;
            } catch (RuntimeException e3) {
                e = e3;
                b(this.f);
                throw e;
            }
        } catch (IOException | Error | RuntimeException e4) {
            b(this.e);
            throw e4;
        }
    }

    private void a() {
        File[] fileArrListFiles = this.f1266d.listFiles(new a(this));
        if (fileArrListFiles == null) {
            String str = "Failed to list secondary dex dir content (" + this.f1266d.getPath() + ").";
            return;
        }
        for (File file : fileArrListFiles) {
            String str2 = "Trying to delete old file " + file.getPath() + " of size " + file.length();
            if (file.delete()) {
                String str3 = "Deleted old file " + file.getPath();
            } else {
                String str4 = "Failed to delete old file " + file.getPath();
            }
        }
    }

    private static void b(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }

    private static void c(ZipFile zipFile, ZipEntry zipEntry, File file, String str) throws IOException {
        InputStream inputStream = zipFile.getInputStream(zipEntry);
        File fileCreateTempFile = File.createTempFile("tmp-" + str, ".zip", file.getParentFile());
        String str2 = "Extracting " + fileCreateTempFile.getPath();
        try {
            ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(fileCreateTempFile)));
            try {
                ZipEntry zipEntry2 = new ZipEntry("classes.dex");
                zipEntry2.setTime(zipEntry.getTime());
                zipOutputStream.putNextEntry(zipEntry2);
                byte[] bArr = new byte[16384];
                for (int i = inputStream.read(bArr); i != -1; i = inputStream.read(bArr)) {
                    zipOutputStream.write(bArr, 0, i);
                }
                zipOutputStream.closeEntry();
                zipOutputStream.close();
                if (!fileCreateTempFile.setReadOnly()) {
                    throw new IOException("Failed to mark readonly \"" + fileCreateTempFile.getAbsolutePath() + "\" (tmp of \"" + file.getAbsolutePath() + "\")");
                }
                String str3 = "Renaming to " + file.getPath();
                if (fileCreateTempFile.renameTo(file)) {
                    return;
                }
                throw new IOException("Failed to rename \"" + fileCreateTempFile.getAbsolutePath() + "\" to \"" + file.getAbsolutePath() + "\"");
            } catch (Throwable th) {
                zipOutputStream.close();
                throw th;
            }
        } finally {
            b(inputStream);
            fileCreateTempFile.delete();
        }
    }

    private static SharedPreferences d(Context context) {
        return context.getSharedPreferences("multidex.version", Build.VERSION.SDK_INT < 11 ? 0 : 4);
    }

    private static long e(File file) {
        long jLastModified = file.lastModified();
        return jLastModified == -1 ? jLastModified - 1 : jLastModified;
    }

    private static long f(File file) throws IOException {
        long jC = c.c(file);
        return jC == -1 ? jC - 1 : jC;
    }

    private static boolean g(Context context, File file, long j, String str) {
        SharedPreferences sharedPreferencesD = d(context);
        if (sharedPreferencesD.getLong(str + "timestamp", -1L) == e(file)) {
            if (sharedPreferencesD.getLong(str + "crc", -1L) == j) {
                return false;
            }
        }
        return true;
    }

    private List<C0064b> i(Context context, String str) throws IOException {
        String str2 = this.f1264b.getName() + ".classes";
        SharedPreferences sharedPreferencesD = d(context);
        int i = sharedPreferencesD.getInt(str + "dex.number", 1);
        ArrayList arrayList = new ArrayList(i + (-1));
        int i2 = 2;
        while (i2 <= i) {
            C0064b c0064b = new C0064b(this.f1266d, str2 + i2 + ".zip");
            if (!c0064b.isFile()) {
                throw new IOException("Missing extracted secondary dex file '" + c0064b.getPath() + "'");
            }
            c0064b.f1267b = f(c0064b);
            long j = sharedPreferencesD.getLong(str + "dex.crc." + i2, -1L);
            long j2 = sharedPreferencesD.getLong(str + "dex.time." + i2, -1L);
            long jLastModified = c0064b.lastModified();
            if (j2 == jLastModified) {
                String str3 = str2;
                SharedPreferences sharedPreferences = sharedPreferencesD;
                if (j == c0064b.f1267b) {
                    arrayList.add(c0064b);
                    i2++;
                    sharedPreferencesD = sharedPreferences;
                    str2 = str3;
                }
            }
            throw new IOException("Invalid extracted dex: " + c0064b + " (key \"" + str + "\"), expected modification time: " + j2 + ", modification time: " + jLastModified + ", expected crc: " + j + ", file crc: " + c0064b.f1267b);
        }
        return arrayList;
    }

    private List<C0064b> j() {
        String str = this.f1264b.getName() + ".classes";
        a();
        ArrayList arrayList = new ArrayList();
        ZipFile zipFile = new ZipFile(this.f1264b);
        int i = 2;
        try {
            ZipEntry entry = zipFile.getEntry("classes2.dex");
            while (entry != null) {
                C0064b c0064b = new C0064b(this.f1266d, str + i + ".zip");
                arrayList.add(c0064b);
                String str2 = "Extraction is needed for file " + c0064b;
                int i2 = 0;
                boolean z = false;
                while (i2 < 3 && !z) {
                    i2++;
                    c(zipFile, entry, c0064b, str);
                    try {
                        c0064b.f1267b = f(c0064b);
                        z = true;
                    } catch (IOException unused) {
                        String str3 = "Failed to read crc from " + c0064b.getAbsolutePath();
                        z = false;
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append("Extraction ");
                    sb.append(z ? "succeeded" : "failed");
                    sb.append(" '");
                    sb.append(c0064b.getAbsolutePath());
                    sb.append("': length ");
                    sb.append(c0064b.length());
                    sb.append(" - crc: ");
                    sb.append(c0064b.f1267b);
                    sb.toString();
                    if (!z) {
                        c0064b.delete();
                        if (c0064b.exists()) {
                            String str4 = "Failed to delete corrupted secondary dex '" + c0064b.getPath() + "'";
                        }
                    }
                }
                if (!z) {
                    throw new IOException("Could not create zip file " + c0064b.getAbsolutePath() + " for secondary dex (" + i + ")");
                }
                i++;
                entry = zipFile.getEntry("classes" + i + ".dex");
            }
            try {
                zipFile.close();
            } catch (IOException unused2) {
            }
            return arrayList;
        } catch (Throwable th) {
            try {
                zipFile.close();
            } catch (IOException unused3) {
            }
            throw th;
        }
    }

    private static void k(Context context, String str, long j, long j2, List<C0064b> list) {
        SharedPreferences.Editor editorEdit = d(context).edit();
        editorEdit.putLong(str + "timestamp", j);
        editorEdit.putLong(str + "crc", j2);
        editorEdit.putInt(str + "dex.number", list.size() + 1);
        int i = 2;
        for (C0064b c0064b : list) {
            editorEdit.putLong(str + "dex.crc." + i, c0064b.f1267b);
            editorEdit.putLong(str + "dex.time." + i, c0064b.lastModified());
            i++;
        }
        editorEdit.commit();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.g.release();
        this.f.close();
        this.e.close();
    }

    List<? extends File> h(Context context, String str, boolean z) {
        List<C0064b> listJ;
        List<C0064b> listI;
        String str2 = "MultiDexExtractor.load(" + this.f1264b.getPath() + ", " + z + ", " + str + ")";
        if (!this.g.isValid()) {
            throw new IllegalStateException("MultiDexExtractor was closed");
        }
        if (!z && !g(context, this.f1264b, this.f1265c, str)) {
            try {
                listI = i(context, str);
            } catch (IOException unused) {
                listJ = j();
                k(context, str, e(this.f1264b), this.f1265c, listJ);
                listI = listJ;
            }
            String str3 = "load found " + listI.size() + " secondary dex files";
            return listI;
        }
        listJ = j();
        k(context, str, e(this.f1264b), this.f1265c, listJ);
        listI = listJ;
        String str32 = "load found " + listI.size() + " secondary dex files";
        return listI;
    }
}
