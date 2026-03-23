package cn.manstep.phonemirrorBox.h0;

import java.lang.Thread;
import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class b {
    private String a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Boolean f1661b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Integer f1662c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f1663d = null;
    private ThreadFactory e = null;

    static class a implements ThreadFactory {
        final /* synthetic */ ThreadFactory a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f1664b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ AtomicLong f1665c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Boolean f1666d;
        final /* synthetic */ Integer e;
        final /* synthetic */ Thread.UncaughtExceptionHandler f;

        a(ThreadFactory threadFactory, String str, AtomicLong atomicLong, Boolean bool, Integer num, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.a = threadFactory;
            this.f1664b = str;
            this.f1665c = atomicLong;
            this.f1666d = bool;
            this.e = num;
            this.f = uncaughtExceptionHandler;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread threadNewThread = this.a.newThread(runnable);
            String str = this.f1664b;
            if (str != null) {
                AtomicLong atomicLong = this.f1665c;
                b.e(atomicLong);
                threadNewThread.setName(b.d(str, Long.valueOf(atomicLong.getAndIncrement())));
            }
            Boolean bool = this.f1666d;
            if (bool != null) {
                threadNewThread.setDaemon(bool.booleanValue());
            }
            Integer num = this.e;
            if (num != null) {
                threadNewThread.setPriority(num.intValue());
            }
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f;
            if (uncaughtExceptionHandler != null) {
                threadNewThread.setUncaughtExceptionHandler(uncaughtExceptionHandler);
            }
            return threadNewThread;
        }
    }

    private static ThreadFactory c(b bVar) {
        String str = bVar.a;
        Boolean bool = bVar.f1661b;
        Integer num = bVar.f1662c;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = bVar.f1663d;
        ThreadFactory threadFactoryDefaultThreadFactory = bVar.e;
        if (threadFactoryDefaultThreadFactory == null) {
            threadFactoryDefaultThreadFactory = Executors.defaultThreadFactory();
        }
        return new a(threadFactoryDefaultThreadFactory, str, str != null ? new AtomicLong(0L) : null, bool, num, uncaughtExceptionHandler);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String d(String str, Object... objArr) {
        return String.format(Locale.ROOT, str, objArr);
    }

    public static <T> T e(T t) {
        if (t != null) {
            return t;
        }
        throw null;
    }

    public ThreadFactory b() {
        return c(this);
    }

    public b f(String str) {
        if (str.contains("%d")) {
            this.a = str;
        } else {
            this.a = str + "-%d";
        }
        return this;
    }
}
