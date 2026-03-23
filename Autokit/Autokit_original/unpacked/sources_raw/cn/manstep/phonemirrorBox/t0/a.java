package cn.manstep.phonemirrorBox.t0;

import android.content.Context;
import android.os.SystemClock;
import cn.manstep.phonemirrorBox.util.n;
import cn.manstep.phonemirrorBox.util.s;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Locale;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class a {
    private static volatile a e;
    private final WeakReference<Context> a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private FileOutputStream f1832b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private FileInputStream f1833c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f1834d = SystemClock.elapsedRealtime();

    private a(Context context) {
        this.a = new WeakReference<>(context);
    }

    public static a b(Context context) {
        if (e == null) {
            synchronized (a.class) {
                if (e == null) {
                    e = new a(context);
                }
            }
        }
        return e;
    }

    public int a(byte[] bArr, int i, int i2) {
        if (this.f1833c != null) {
            try {
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
                if (this.f1833c.read(byteBufferAllocate.array(), 0, 4) != 4) {
                    e();
                    throw new NullPointerException("Failed to read 4 bytes.");
                }
                byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
                Thread.sleep(byteBufferAllocate.getInt());
                ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(4);
                if (this.f1833c.read(byteBufferAllocate2.array(), 0, 4) != 4) {
                    e();
                    throw new NullPointerException("Failed to read 4 bytes.");
                }
                byteBufferAllocate2.order(ByteOrder.LITTLE_ENDIAN);
                int i3 = byteBufferAllocate2.getInt();
                int i4 = this.f1833c.read(bArr, i, i3);
                if (i4 != i3) {
                    s.f("UsbDataTester", "getData: " + i4 + ", " + i3 + ", " + i2);
                }
                return i4;
            } catch (Exception e2) {
                s.f("UsbDataTester", "getData: \n" + s.g(e2));
            }
        }
        return -1;
    }

    public void c(int i) {
        if (this.f1833c == null) {
            try {
                this.f1833c = new FileInputStream(new File(n.m(this.a.get()), String.format(Locale.getDefault(), "box_%x.data", Integer.valueOf(i))));
            } catch (FileNotFoundException e2) {
                s.f("UsbDataTester", "getData: \n" + s.g(e2));
            }
        }
    }

    public void d(byte[] bArr, int i, int i2, int i3) {
        if (i3 <= 0) {
            return;
        }
        if (this.f1832b == null) {
            File fileM = n.m(this.a.get());
            try {
                this.f1834d = 0L;
                this.f1832b = new FileOutputStream(new File(fileM, String.format(Locale.getDefault(), "box_%x.data", Integer.valueOf(i3))));
            } catch (FileNotFoundException e2) {
                e2.printStackTrace();
            }
        }
        if (this.f1832b != null) {
            try {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                int i4 = this.f1834d != 0 ? (int) (jElapsedRealtime - this.f1834d) : 0;
                this.f1834d = jElapsedRealtime;
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
                byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
                byteBufferAllocate.putInt(i4);
                this.f1832b.write(byteBufferAllocate.array(), 0, 4);
                ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(4);
                byteBufferAllocate2.order(ByteOrder.LITTLE_ENDIAN);
                byteBufferAllocate2.putInt(i2);
                this.f1832b.write(byteBufferAllocate2.array(), 0, 4);
                this.f1832b.write(bArr, i, i2);
            } catch (Exception e3) {
                s.d("UsbDataTester", "putData: \n" + s.g(e3));
            }
        }
    }

    public void e() {
        FileOutputStream fileOutputStream = this.f1832b;
        if (fileOutputStream != null) {
            try {
                fileOutputStream.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            this.f1832b = null;
        }
        FileInputStream fileInputStream = this.f1833c;
        if (fileInputStream != null) {
            try {
                fileInputStream.close();
            } catch (IOException e3) {
                e3.printStackTrace();
            }
            this.f1833c = null;
        }
    }
}
