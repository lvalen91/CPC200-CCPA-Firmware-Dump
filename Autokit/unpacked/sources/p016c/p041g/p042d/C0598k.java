package p016c.p041g.p042d;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.StrictMode;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p016c.p041g.p047h.C0611f;

/* JADX INFO: renamed from: c.g.d.k */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0598k {
    /* JADX INFO: renamed from: a */
    public static void m4741a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public static ByteBuffer m4742b(Context context, Resources resources, int i) {
        File fileM4745e = m4745e(context);
        if (fileM4745e == null) {
            return null;
        }
        try {
            if (m4743c(fileM4745e, resources, i)) {
                return m4747g(fileM4745e);
            }
            return null;
        } finally {
            fileM4745e.delete();
        }
    }

    /* JADX INFO: renamed from: c */
    public static boolean m4743c(File file, Resources resources, int i) throws Throwable {
        InputStream inputStreamOpenRawResource;
        try {
            inputStreamOpenRawResource = resources.openRawResource(i);
            try {
                boolean zM4744d = m4744d(file, inputStreamOpenRawResource);
                m4741a(inputStreamOpenRawResource);
                return zM4744d;
            } catch (Throwable th) {
                th = th;
                m4741a(inputStreamOpenRawResource);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            inputStreamOpenRawResource = null;
        }
    }

    /* JADX INFO: renamed from: d */
    public static boolean m4744d(File file, InputStream inputStream) throws Throwable {
        FileOutputStream fileOutputStream;
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file, false);
            } catch (IOException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int i = inputStream.read(bArr);
                if (i == -1) {
                    m4741a(fileOutputStream);
                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
                    return true;
                }
                fileOutputStream.write(bArr, 0, i);
            }
        } catch (IOException e2) {
            e = e2;
            fileOutputStream2 = fileOutputStream;
            String str = "Error copying resource contents to temp file: " + e.getMessage();
            m4741a(fileOutputStream2);
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
            return false;
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            m4741a(fileOutputStream2);
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
            throw th;
        }
    }

    /* JADX INFO: renamed from: e */
    public static File m4745e(Context context) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        String str = ".font" + Process.myPid() + "-" + Process.myTid() + "-";
        for (int i = 0; i < 100; i++) {
            File file = new File(cacheDir, str + i);
            if (file.createNewFile()) {
                return file;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: f */
    public static ByteBuffer m4746f(Context context, CancellationSignal cancellationSignal, Uri uri) {
        try {
            ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(uri, "r", cancellationSignal);
            if (parcelFileDescriptorOpenFileDescriptor == null) {
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                    parcelFileDescriptorOpenFileDescriptor.close();
                }
                return null;
            }
            try {
                FileInputStream fileInputStream = new FileInputStream(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
                try {
                    FileChannel channel = fileInputStream.getChannel();
                    MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                    fileInputStream.close();
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    }
                    return map;
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable unused) {
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                    try {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    } catch (Throwable unused2) {
                    }
                }
                throw th2;
            }
        } catch (IOException unused3) {
            return null;
        }
    }

    /* JADX INFO: renamed from: g */
    private static ByteBuffer m4747g(File file) {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                FileChannel channel = fileInputStream.getChannel();
                MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                fileInputStream.close();
                return map;
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable unused) {
                }
                throw th;
            }
        } catch (IOException unused2) {
            return null;
        }
    }

    /* JADX INFO: renamed from: h */
    public static Map<Uri, ByteBuffer> m4748h(Context context, C0611f.b[] bVarArr, CancellationSignal cancellationSignal) {
        HashMap map = new HashMap();
        for (C0611f.b bVar : bVarArr) {
            if (bVar.m4792b() == 0) {
                Uri uriM4794d = bVar.m4794d();
                if (!map.containsKey(uriM4794d)) {
                    map.put(uriM4794d, m4746f(context, cancellationSignal, uriM4794d));
                }
            }
        }
        return Collections.unmodifiableMap(map);
    }
}
