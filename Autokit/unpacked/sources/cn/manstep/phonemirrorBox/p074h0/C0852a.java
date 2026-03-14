package cn.manstep.phonemirrorBox.p074h0;

import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.h0.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0852a {

    /* JADX INFO: renamed from: a */
    private final ScheduledExecutorService f4994a = Executors.newScheduledThreadPool(Runtime.getRuntime().availableProcessors());

    /* JADX INFO: renamed from: b */
    private final ConcurrentMap<String, ScheduledFuture<?>> f4995b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c */
    private final ConcurrentMap<String, Runnable> f4996c = new ConcurrentHashMap();

    /* JADX INFO: renamed from: d */
    private final ConcurrentMap<String, Long> f4997d = new ConcurrentHashMap();

    /* JADX INFO: renamed from: e */
    private final ConcurrentMap<String, Boolean> f4998e = new ConcurrentHashMap();

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.h0.a$a */
    class a implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ String f4999b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ Runnable f5000c;

        a(String str, Runnable runnable) {
            this.f4999b = str;
            this.f5000c = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C0852a.this.m6335d(this.f4999b)) {
                try {
                    this.f5000c.run();
                } catch (Exception unused) {
                }
            }
        }
    }

    /* JADX INFO: renamed from: c */
    private Runnable m6334c(String str, Runnable runnable) {
        return new a(str, runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: d */
    public boolean m6335d(String str) {
        return Boolean.TRUE.equals(this.f4998e.get(str));
    }

    /* JADX INFO: renamed from: b */
    public synchronized void m6336b(String str) {
        this.f4998e.put(str, Boolean.FALSE);
        ScheduledFuture<?> scheduledFuture = this.f4995b.get(str);
        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
            scheduledFuture.cancel(true);
        }
        this.f4995b.remove(str);
    }

    /* JADX INFO: renamed from: e */
    public synchronized void m6337e() {
        Iterator<String> it = this.f4995b.keySet().iterator();
        while (it.hasNext()) {
            m6336b(it.next());
        }
        this.f4994a.shutdownNow();
        this.f4995b.clear();
        this.f4996c.clear();
        this.f4997d.clear();
        this.f4998e.clear();
    }

    /* JADX INFO: renamed from: f */
    public synchronized void m6338f(String str, Runnable runnable, long j, long j2) {
        m6336b(str);
        this.f4996c.put(str, runnable);
        this.f4997d.put(str, Long.valueOf(j2));
        this.f4998e.put(str, Boolean.TRUE);
        this.f4995b.put(str, this.f4994a.scheduleWithFixedDelay(m6334c(str, runnable), j, j2, TimeUnit.MILLISECONDS));
    }
}
