package p016c.p041g.p047h;

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
import p016c.p041g.p049j.InterfaceC0619a;

/* JADX INFO: renamed from: c.g.h.g */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0612g {

    /* JADX INFO: renamed from: c.g.h.g$a */
    private static class a implements ThreadFactory {

        /* JADX INFO: renamed from: a */
        private String f3763a;

        /* JADX INFO: renamed from: b */
        private int f3764b;

        /* JADX INFO: renamed from: c.g.h.g$a$a, reason: collision with other inner class name */
        private static class C1347a extends Thread {

            /* JADX INFO: renamed from: b */
            private final int f3765b;

            C1347a(Runnable runnable, String str, int i) {
                super(runnable, str);
                this.f3765b = i;
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Process.setThreadPriority(this.f3765b);
                super.run();
            }
        }

        a(String str, int i) {
            this.f3763a = str;
            this.f3764b = i;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new C1347a(runnable, this.f3763a, this.f3764b);
        }
    }

    /* JADX INFO: renamed from: c.g.h.g$b */
    private static class b<T> implements Runnable {

        /* JADX INFO: renamed from: b */
        private Callable<T> f3766b;

        /* JADX INFO: renamed from: c */
        private InterfaceC0619a<T> f3767c;

        /* JADX INFO: renamed from: d */
        private Handler f3768d;

        /* JADX INFO: renamed from: c.g.h.g$b$a */
        class a implements Runnable {

            /* JADX INFO: renamed from: b */
            final /* synthetic */ InterfaceC0619a f3769b;

            /* JADX INFO: renamed from: c */
            final /* synthetic */ Object f3770c;

            a(b bVar, InterfaceC0619a interfaceC0619a, Object obj) {
                this.f3769b = interfaceC0619a;
                this.f3770c = obj;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                this.f3769b.mo4782a(this.f3770c);
            }
        }

        b(Handler handler, Callable<T> callable, InterfaceC0619a<T> interfaceC0619a) {
            this.f3766b = callable;
            this.f3767c = interfaceC0619a;
            this.f3768d = handler;
        }

        @Override // java.lang.Runnable
        public void run() {
            T tCall;
            try {
                tCall = this.f3766b.call();
            } catch (Exception unused) {
                tCall = null;
            }
            this.f3768d.post(new a(this, this.f3767c, tCall));
        }
    }

    /* JADX INFO: renamed from: a */
    static ThreadPoolExecutor m4797a(String str, int i, int i2) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, i2, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), new a(str, i));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    /* JADX INFO: renamed from: b */
    static <T> void m4798b(Executor executor, Callable<T> callable, InterfaceC0619a<T> interfaceC0619a) {
        executor.execute(new b(C0607b.m4761a(), callable, interfaceC0619a));
    }

    /* JADX INFO: renamed from: c */
    static <T> T m4799c(ExecutorService executorService, Callable<T> callable, int i) throws InterruptedException {
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
