package cn.manstep.phonemirrorBox.util;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class u {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f1931c = 0;
    private final Handler a = new Handler(Looper.myLooper());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f1930b = 5000;

    public void a(Runnable runnable) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = jCurrentTimeMillis - this.f1931c;
        if (j < 0 || j <= this.f1930b) {
            return;
        }
        this.f1931c = jCurrentTimeMillis;
        this.a.removeCallbacks(runnable);
        this.a.post(runnable);
    }

    public void b(Runnable runnable, long j) {
        this.f1930b = j;
        a(runnable);
    }
}
