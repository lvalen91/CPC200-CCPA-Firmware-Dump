package cn.manstep.phonemirrorBox.h0;

import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class a {
    private final ScheduledExecutorService a = Executors.newScheduledThreadPool(Runtime.getRuntime().availableProcessors());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ConcurrentMap<String, ScheduledFuture<?>> f1655b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ConcurrentMap<String, Runnable> f1656c = new ConcurrentHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ConcurrentMap<String, Long> f1657d = new ConcurrentHashMap();
    private final ConcurrentMap<String, Boolean> e = new ConcurrentHashMap();

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.h0.a$a, reason: collision with other inner class name */
    class RunnableC0085a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f1658b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Runnable f1659c;

        RunnableC0085a(String str, Runnable runnable) {
            this.f1658b = str;
            this.f1659c = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.d(this.f1658b)) {
                try {
                    this.f1659c.run();
                } catch (Exception unused) {
                }
            }
        }
    }

    private Runnable c(String str, Runnable runnable) {
        return new RunnableC0085a(str, runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d(String str) {
        return Boolean.TRUE.equals(this.e.get(str));
    }

    public synchronized void b(String str) {
        this.e.put(str, Boolean.FALSE);
        ScheduledFuture<?> scheduledFuture = this.f1655b.get(str);
        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
            scheduledFuture.cancel(true);
        }
        this.f1655b.remove(str);
    }

    public synchronized void e() {
        Iterator<String> it = this.f1655b.keySet().iterator();
        while (it.hasNext()) {
            b(it.next());
        }
        this.a.shutdownNow();
        this.f1655b.clear();
        this.f1656c.clear();
        this.f1657d.clear();
        this.e.clear();
    }

    public synchronized void f(String str, Runnable runnable, long j, long j2) {
        b(str);
        this.f1656c.put(str, runnable);
        this.f1657d.put(str, Long.valueOf(j2));
        this.e.put(str, Boolean.TRUE);
        this.f1655b.put(str, this.a.scheduleWithFixedDelay(c(str, runnable), j, j2, TimeUnit.MILLISECONDS));
    }
}
