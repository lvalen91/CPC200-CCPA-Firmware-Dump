package cn.manstep.phonemirrorBox.util;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.h */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class ThreadFactoryC0971h implements ThreadFactory {

    /* JADX INFO: renamed from: a */
    private final AtomicInteger f6059a = new AtomicInteger(1);

    /* JADX INFO: renamed from: b */
    private String f6060b;

    public ThreadFactoryC0971h(String str) {
        this.f6060b = str + "-";
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        return new Thread(runnable, this.f6060b + this.f6059a.getAndIncrement());
    }
}
