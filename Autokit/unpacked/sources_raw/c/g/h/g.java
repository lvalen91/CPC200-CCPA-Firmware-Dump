package c.g.h;

import android.os.Handler;
import android.os.Process;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class g {

    private static class a implements ThreadFactory {
        private String a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f1206b;

        /* JADX INFO: renamed from: c.g.h.g$a$a, reason: collision with other inner class name */
        private static class C0052a extends Thread {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final int f1207b;

            C0052a(Runnable runnable, String str, int i) {
                super(runnable, str);
                this.f1207b = i;
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Process.setThreadPriority(this.f1207b);
                super.run();
            }
        }

        a(String str, int i) {
            this.a = str;
            this.f1206b = i;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new C0052a(runnable, this.a, this.f1206b);
        }
    }

    private static class b<T> implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Callable<T> f1208b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private c.g.j.a<T> f1209c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Handler f1210d;

        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ c.g.j.a f1211b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ Object f1212c;

            a(b bVar, c.g.j.a aVar, Object obj) {
                this.f1211b = aVar;
                this.f1212c = obj;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                this.f1211b.a(this.f1212c);
            }
        }

        b(Handler handler, Callable<T> callable, c.g.j.a<T> aVar) {
            this.f1208b = callable;
            this.f1209c = aVar;
            this.f1210d = handler;
        }

        @Override // java.lang.Runnable
        public void run() {
            T tCall;
            try {
                tCall = this.f1208b.call();
            } catch (Exception unused) {
                tCall = null;
            }
            this.f1210d.post(new a(this, this.f1209c, tCall));
        }
    }

    static ThreadPoolExecutor a(String str, int i, int i2) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, i2, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), new a(str, i));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    static <T> void b(Executor executor, Callable<T> callable, c.g.j.a<T> aVar) {
        executor.execute(new b(c.g.h.b.a(), callable, aVar));
    }

    static <T> T c(ExecutorService executorService, Callable<T> callable, int i) throws InterruptedException {
        try {
            return executorService.submit(callable).get(i, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            throw e;
        } catch (ExecutionException e2) {
            throw new RuntimeException(e2);
        } catch (TimeoutException unused) {
            throw new InterruptedException("timeout");
        }
    }
}
