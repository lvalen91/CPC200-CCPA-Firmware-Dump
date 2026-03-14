package c.b.a.a;

import android.os.Looper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class b extends c {
    private final Object a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ExecutorService f1049b = Executors.newFixedThreadPool(4, new a(this));

    class a implements ThreadFactory {
        private final AtomicInteger a = new AtomicInteger(0);

        a(b bVar) {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName(String.format("arch_disk_io_%d", Integer.valueOf(this.a.getAndIncrement())));
            return thread;
        }
    }

    @Override // c.b.a.a.c
    public boolean a() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }
}
