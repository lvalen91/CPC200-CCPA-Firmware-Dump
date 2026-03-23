package p016c.p062m;

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

/* JADX INFO: renamed from: c.m.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
final class C0645b implements Closeable {

    /* JADX INFO: renamed from: b */
    private final File f3898b;

    /* JADX INFO: renamed from: c */
    private final long f3899c;

    /* JADX INFO: renamed from: d */
    private final File f3900d;

    /* JADX INFO: renamed from: e */
    private final RandomAccessFile f3901e;

    /* JADX INFO: renamed from: f */
    private final FileChannel f3902f;

    /* JADX INFO: renamed from: g */
    private final FileLock f3903g;

    /* JADX INFO: renamed from: c.m.b$a */
    class a implements FileFilter {
        a(C0645b c0645b) {
        }

        @Override // java.io.FileFilter
        public boolean accept(File file) {
            return !file.getName().equals("MultiDex.lock");
        }
    }

    /* JADX INFO: renamed from: c.m.b$b */
    private static class b extends File {

        /* JADX INFO: renamed from: b */
        public long f3904b;

        public b(File file, String str) {
            super(file, str);
            this.f3904b = -1L;
        }
    }

    C0645b(File file, File file2) {
        String str = "MultiDexExtractor(" + file.getPath() + ", " + file2.getPath() + ")";
        this.f3898b = file;
        this.f3900d = file2;
        this.f3899c = m5011f(file);
        File file3 = new File(file2, "MultiDex.lock");
        RandomAccessFile randomAccessFile = new RandomAccessFile(file3, "rw");
        this.f3901e = randomAccessFile;
        try {
            this.f3902f = randomAccessFile.getChannel();
            try {
                String str2 = "Blocking on lock " + file3.getPath();
                this.f3903g = this.f3902f.lock();
                String str3 = file3.getPath() + " locked";
            } catch (IOException e) {
                e = e;
                m5007b(this.f3902f);
                throw e;
            } catch (Error e2) {
                e = e2;
                m5007b(this.f3902f);
                throw e;
            } catch (RuntimeException e3) {
                e = e3;
                m5007b(this.f3902f);
                throw e;
            }
        } catch (IOException | Error | RuntimeException e4) {
            m5007b(this.f3901e);
            throw e4;
        }
    }

    /* JADX INFO: renamed from: a */
    private void m5006a() {
        File[] fileArrListFiles = this.f3900d.listFiles(new a(this));
        if (fileArrListFiles == null) {
            String str = "Failed to list secondary dex dir content (" + this.f3900d.getPath() + ").";
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

    /* JADX INFO: renamed from: b */
    private static void m5007b(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }

    /* JADX INFO: renamed from: c */
    private static void m5008c(ZipFile zipFile, ZipEntry zipEntry, File file, String str) throws IOException {
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
            m5007b(inputStream);
            fileCreateTempFile.delete();
        }
    }

    /* JADX INFO: renamed from: d */
    private static SharedPreferences m5009d(Context context) {
        return context.getSharedPreferences("multidex.version", Build.VERSION.SDK_INT < 11 ? 0 : 4);
    }

    /* JADX INFO: renamed from: e */
    private static long m5010e(File file) {
        long jLastModified = file.lastModified();
        return jLastModified == -1 ? jLastModified - 1 : jLastModified;
    }

    /* JADX INFO: renamed from: f */
    private static long m5011f(File file) throws IOException {
        long jM5019c = C0646c.m5019c(file);
        return jM5019c == -1 ? jM5019c - 1 : jM5019c;
    }

    /* JADX INFO: renamed from: g */
    private static boolean m5012g(Context context, File file, long j, String str) {
        SharedPreferences sharedPreferencesM5009d = m5009d(context);
        if (sharedPreferencesM5009d.getLong(str + "timestamp", -1L) == m5010e(file)) {
            if (sharedPreferencesM5009d.getLong(str + "crc", -1L) == j) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: i */
    private List<b> m5013i(Context context, String str) throws IOException {
        String str2 = this.f3898b.getName() + ".classes";
        SharedPreferences sharedPreferencesM5009d = m5009d(context);
        int i = sharedPreferencesM5009d.getInt(str + "dex.number", 1);
        ArrayList arrayList = new ArrayList(i + (-1));
        int i2 = 2;
        while (i2 <= i) {
            b bVar = new b(this.f3900d, str2 + i2 + ".zip");
            if (!bVar.isFile()) {
                throw new IOException("Missing extracted secondary dex file '" + bVar.getPath() + "'");
            }
            bVar.f3904b = m5011f(bVar);
            long j = sharedPreferencesM5009d.getLong(str + "dex.crc." + i2, -1L);
            long j2 = sharedPreferencesM5009d.getLong(str + "dex.time." + i2, -1L);
            long jLastModified = bVar.lastModified();
            if (j2 == jLastModified) {
                String str3 = str2;
                SharedPreferences sharedPreferences = sharedPreferencesM5009d;
                if (j == bVar.f3904b) {
                    arrayList.add(bVar);
                    i2++;
                    sharedPreferencesM5009d = sharedPreferences;
                    str2 = str3;
                }
            }
            throw new IOException("Invalid extracted dex: " + bVar + " (key \"" + str + "\"), expected modification time: " + j2 + ", modification time: " + jLastModified + ", expected crc: " + j + ", file crc: " + bVar.f3904b);
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: j */
    private List<b> m5014j() {
        String str = this.f3898b.getName() + ".classes";
        m5006a();
        ArrayList arrayList = new ArrayList();
        ZipFile zipFile = new ZipFile(this.f3898b);
        int i = 2;
        try {
            ZipEntry entry = zipFile.getEntry("classes2.dex");
            while (entry != null) {
                b bVar = new b(this.f3900d, str + i + ".zip");
                arrayList.add(bVar);
                String str2 = "Extraction is needed for file " + bVar;
                int i2 = 0;
                boolean z = false;
                while (i2 < 3 && !z) {
                    i2++;
                    m5008c(zipFile, entry, bVar, str);
                    try {
                        bVar.f3904b = m5011f(bVar);
                        z = true;
                    } catch (IOException unused) {
                        String str3 = "Failed to read crc from " + bVar.getAbsolutePath();
                        z = false;
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append("Extraction ");
                    sb.append(z ? "succeeded" : "failed");
                    sb.append(" '");
                    sb.append(bVar.getAbsolutePath());
                    sb.append("': length ");
                    sb.append(bVar.length());
                    sb.append(" - crc: ");
                    sb.append(bVar.f3904b);
                    sb.toString();
                    if (!z) {
                        bVar.delete();
                        if (bVar.exists()) {
                            String str4 = "Failed to delete corrupted secondary dex '" + bVar.getPath() + "'";
                        }
                    }
                }
                if (!z) {
                    throw new IOException("Could not create zip file " + bVar.getAbsolutePath() + " for secondary dex (" + i + ")");
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

    /* JADX INFO: renamed from: k */
    private static void m5015k(Context context, String str, long j, long j2, List<b> list) {
        SharedPreferences.Editor editorEdit = m5009d(context).edit();
        editorEdit.putLong(str + "timestamp", j);
        editorEdit.putLong(str + "crc", j2);
        editorEdit.putInt(str + "dex.number", list.size() + 1);
        int i = 2;
        for (b bVar : list) {
            editorEdit.putLong(str + "dex.crc." + i, bVar.f3904b);
            editorEdit.putLong(str + "dex.time." + i, bVar.lastModified());
            i++;
        }
        editorEdit.commit();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f3903g.release();
        this.f3902f.close();
        this.f3901e.close();
    }

    /* JADX INFO: renamed from: h */
    List<? extends File> m5016h(Context context, String str, boolean z) {
        List<b> listM5014j;
        List<b> listM5013i;
        String str2 = "MultiDexExtractor.load(" + this.f3898b.getPath() + ", " + z + ", " + str + ")";
        if (!this.f3903g.isValid()) {
            throw new IllegalStateException("MultiDexExtractor was closed");
        }
        if (!z && !m5012g(context, this.f3898b, this.f3899c, str)) {
            try {
                listM5013i = m5013i(context, str);
            } catch (IOException unused) {
                listM5014j = m5014j();
                m5015k(context, str, m5010e(this.f3898b), this.f3899c, listM5014j);
                listM5013i = listM5014j;
            }
            String str3 = "load found " + listM5013i.size() + " secondary dex files";
            return listM5013i;
        }
        listM5014j = m5014j();
        m5015k(context, str, m5010e(this.f3898b), this.f3899c, listM5014j);
        listM5013i = listM5014j;
        String str32 = "load found " + listM5013i.size() + " secondary dex files";
        return listM5013i;
    }
}
