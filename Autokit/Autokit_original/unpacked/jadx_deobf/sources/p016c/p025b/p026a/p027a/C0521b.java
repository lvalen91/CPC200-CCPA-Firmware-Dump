package p016c.p025b.p026a.p027a;

import android.os.Looper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: renamed from: c.b.a.a.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0521b extends AbstractC0522c {

    /* JADX INFO: renamed from: a */
    private final Object f3234a = new Object();

    /* JADX INFO: renamed from: b */
    private final ExecutorService f3235b = Executors.newFixedThreadPool(4, new a(this));

    /* JADX INFO: renamed from: c.b.a.a.b$a */
    class a implements ThreadFactory {

        /* JADX INFO: renamed from: a */
        private final AtomicInteger f3236a = new AtomicInteger(0);

        a(C0521b c0521b) {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName(String.format("arch_disk_io_%d", Integer.valueOf(this.f3236a.getAndIncrement())));
            return thread;
        }
    }

    @Override // p016c.p025b.p026a.p027a.AbstractC0522c
    /* JADX INFO: renamed from: a */
    public boolean mo4160a() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }
}
