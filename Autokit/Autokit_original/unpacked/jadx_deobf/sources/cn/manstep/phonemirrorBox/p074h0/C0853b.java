package cn.manstep.phonemirrorBox.p074h0;

import java.lang.Thread;
import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.h0.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0853b {

    /* JADX INFO: renamed from: a */
    private String f5002a = null;

    /* JADX INFO: renamed from: b */
    private Boolean f5003b = null;

    /* JADX INFO: renamed from: c */
    private Integer f5004c = null;

    /* JADX INFO: renamed from: d */
    private Thread.UncaughtExceptionHandler f5005d = null;

    /* JADX INFO: renamed from: e */
    private ThreadFactory f5006e = null;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.h0.b$a */
    static class a implements ThreadFactory {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ ThreadFactory f5007a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ String f5008b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ AtomicLong f5009c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ Boolean f5010d;

        /* JADX INFO: renamed from: e */
        final /* synthetic */ Integer f5011e;

        /* JADX INFO: renamed from: f */
        final /* synthetic */ Thread.UncaughtExceptionHandler f5012f;

        a(ThreadFactory threadFactory, String str, AtomicLong atomicLong, Boolean bool, Integer num, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.f5007a = threadFactory;
            this.f5008b = str;
            this.f5009c = atomicLong;
            this.f5010d = bool;
            this.f5011e = num;
            this.f5012f = uncaughtExceptionHandler;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread threadNewThread = this.f5007a.newThread(runnable);
            String str = this.f5008b;
            if (str != null) {
                AtomicLong atomicLong = this.f5009c;
                C0853b.m6342e(atomicLong);
                threadNewThread.setName(C0853b.m6341d(str, Long.valueOf(atomicLong.getAndIncrement())));
            }
            Boolean bool = this.f5010d;
            if (bool != null) {
                threadNewThread.setDaemon(bool.booleanValue());
            }
            Integer num = this.f5011e;
            if (num != null) {
                threadNewThread.setPriority(num.intValue());
            }
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f5012f;
            if (uncaughtExceptionHandler != null) {
                threadNewThread.setUncaughtExceptionHandler(uncaughtExceptionHandler);
            }
            return threadNewThread;
        }
    }

    /* JADX INFO: renamed from: c */
    private static ThreadFactory m6340c(C0853b c0853b) {
        String str = c0853b.f5002a;
        Boolean bool = c0853b.f5003b;
        Integer num = c0853b.f5004c;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = c0853b.f5005d;
        ThreadFactory threadFactoryDefaultThreadFactory = c0853b.f5006e;
        if (threadFactoryDefaultThreadFactory == null) {
            threadFactoryDefaultThreadFactory = Executors.defaultThreadFactory();
        }
        return new a(threadFactoryDefaultThreadFactory, str, str != null ? new AtomicLong(0L) : null, bool, num, uncaughtExceptionHandler);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: d */
    public static String m6341d(String str, Object... objArr) {
        return String.format(Locale.ROOT, str, objArr);
    }

    /* JADX INFO: renamed from: e */
    public static <T> T m6342e(T t) {
        if (t != null) {
            return t;
        }
        throw null;
    }

    /* JADX INFO: renamed from: b */
    public ThreadFactory m6343b() {
        return m6340c(this);
    }

    /* JADX INFO: renamed from: f */
    public C0853b m6344f(String str) {
        if (str.contains("%d")) {
            this.f5002a = str;
        } else {
            this.f5002a = str + "-%d";
        }
        return this;
    }
}
