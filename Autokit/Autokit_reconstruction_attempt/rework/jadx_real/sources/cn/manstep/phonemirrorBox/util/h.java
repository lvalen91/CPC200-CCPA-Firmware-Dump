package cn.manstep.phonemirrorBox.util;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class h implements ThreadFactory {
    private final AtomicInteger a = new AtomicInteger(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f1882b;

    public h(String str) {
        this.f1882b = str + "-";
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        return new Thread(runnable, this.f1882b + this.a.getAndIncrement());
    }
}
