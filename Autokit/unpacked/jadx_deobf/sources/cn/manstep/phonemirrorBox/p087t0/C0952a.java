package cn.manstep.phonemirrorBox.p087t0;

import android.content.Context;
import android.os.SystemClock;
import cn.manstep.phonemirrorBox.util.C0977n;
import cn.manstep.phonemirrorBox.util.C0982s;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Locale;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.t0.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0952a {

    /* JADX INFO: renamed from: e */
    private static volatile C0952a f5943e;

    /* JADX INFO: renamed from: a */
    private final WeakReference<Context> f5944a;

    /* JADX INFO: renamed from: b */
    private FileOutputStream f5945b;

    /* JADX INFO: renamed from: c */
    private FileInputStream f5946c;

    /* JADX INFO: renamed from: d */
    private long f5947d = SystemClock.elapsedRealtime();

    private C0952a(Context context) {
        this.f5944a = new WeakReference<>(context);
    }

    /* JADX INFO: renamed from: b */
    public static C0952a m6994b(Context context) {
        if (f5943e == null) {
            synchronized (C0952a.class) {
                if (f5943e == null) {
                    f5943e = new C0952a(context);
                }
            }
        }
        return f5943e;
    }

    /* JADX INFO: renamed from: a */
    public int m6995a(byte[] bArr, int i, int i2) {
        if (this.f5946c != null) {
            try {
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
                if (this.f5946c.read(byteBufferAllocate.array(), 0, 4) != 4) {
                    m6998e();
                    throw new NullPointerException("Failed to read 4 bytes.");
                }
                byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
                Thread.sleep(byteBufferAllocate.getInt());
                ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(4);
                if (this.f5946c.read(byteBufferAllocate2.array(), 0, 4) != 4) {
                    m6998e();
                    throw new NullPointerException("Failed to read 4 bytes.");
                }
                byteBufferAllocate2.order(ByteOrder.LITTLE_ENDIAN);
                int i3 = byteBufferAllocate2.getInt();
                int i4 = this.f5946c.read(bArr, i, i3);
                if (i4 != i3) {
                    C0982s.m7376f("UsbDataTester", "getData: " + i4 + ", " + i3 + ", " + i2);
                }
                return i4;
            } catch (Exception e) {
                C0982s.m7376f("UsbDataTester", "getData: \n" + C0982s.m7377g(e));
            }
        }
        return -1;
    }

    /* JADX INFO: renamed from: c */
    public void m6996c(int i) {
        if (this.f5946c == null) {
            try {
                this.f5946c = new FileInputStream(new File(C0977n.m7310m(this.f5944a.get()), String.format(Locale.getDefault(), "box_%x.data", Integer.valueOf(i))));
            } catch (FileNotFoundException e) {
                C0982s.m7376f("UsbDataTester", "getData: \n" + C0982s.m7377g(e));
            }
        }
    }

    /* JADX INFO: renamed from: d */
    public void m6997d(byte[] bArr, int i, int i2, int i3) {
        if (i3 <= 0) {
            return;
        }
        if (this.f5945b == null) {
            File fileM7310m = C0977n.m7310m(this.f5944a.get());
            try {
                this.f5947d = 0L;
                this.f5945b = new FileOutputStream(new File(fileM7310m, String.format(Locale.getDefault(), "box_%x.data", Integer.valueOf(i3))));
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            }
        }
        if (this.f5945b != null) {
            try {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                int i4 = this.f5947d != 0 ? (int) (jElapsedRealtime - this.f5947d) : 0;
                this.f5947d = jElapsedRealtime;
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
                byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
                byteBufferAllocate.putInt(i4);
                this.f5945b.write(byteBufferAllocate.array(), 0, 4);
                ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(4);
                byteBufferAllocate2.order(ByteOrder.LITTLE_ENDIAN);
                byteBufferAllocate2.putInt(i2);
                this.f5945b.write(byteBufferAllocate2.array(), 0, 4);
                this.f5945b.write(bArr, i, i2);
            } catch (Exception e2) {
                C0982s.m7374d("UsbDataTester", "putData: \n" + C0982s.m7377g(e2));
            }
        }
    }

    /* JADX INFO: renamed from: e */
    public void m6998e() {
        FileOutputStream fileOutputStream = this.f5945b;
        if (fileOutputStream != null) {
            try {
                fileOutputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            this.f5945b = null;
        }
        FileInputStream fileInputStream = this.f5946c;
        if (fileInputStream != null) {
            try {
                fileInputStream.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            this.f5946c = null;
        }
    }
}
