package okhttp3.internal.p128io;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import okio.Okio;
import okio.Sink;
import okio.Source;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public interface FileSystem {
    public static final FileSystem SYSTEM = new FileSystem() { // from class: okhttp3.internal.io.FileSystem.1
        @Override // okhttp3.internal.p128io.FileSystem
        public Sink appendingSink(File file) {
            try {
                return Okio.appendingSink(file);
            } catch (FileNotFoundException unused) {
                file.getParentFile().mkdirs();
                return Okio.appendingSink(file);
            }
        }

        @Override // okhttp3.internal.p128io.FileSystem
        public void delete(File file) throws IOException {
            if (file.delete() || !file.exists()) {
                return;
            }
            throw new IOException("failed to delete " + file);
        }

        @Override // okhttp3.internal.p128io.FileSystem
        public void deleteContents(File file) throws IOException {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                throw new IOException("not a readable directory: " + file);
            }
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    deleteContents(file2);
                }
                if (!file2.delete()) {
                    throw new IOException("failed to delete " + file2);
                }
            }
        }

        @Override // okhttp3.internal.p128io.FileSystem
        public boolean exists(File file) {
            return file.exists();
        }

        @Override // okhttp3.internal.p128io.FileSystem
        public void rename(File file, File file2) throws IOException {
            delete(file2);
            if (file.renameTo(file2)) {
                return;
            }
            throw new IOException("failed to rename " + file + " to " + file2);
        }

        @Override // okhttp3.internal.p128io.FileSystem
        public Sink sink(File file) {
            try {
                return Okio.sink(file);
            } catch (FileNotFoundException unused) {
                file.getParentFile().mkdirs();
                return Okio.sink(file);
            }
        }

        @Override // okhttp3.internal.p128io.FileSystem
        public long size(File file) {
            return file.length();
        }

        @Override // okhttp3.internal.p128io.FileSystem
        public Source source(File file) {
            return Okio.source(file);
        }
    };

    Sink appendingSink(File file);

    void delete(File file);

    void deleteContents(File file);

    boolean exists(File file);

    void rename(File file, File file2);

    Sink sink(File file);

    long size(File file);

    Source source(File file);
}
