package cn.manstep.phonemirrorBox.util;

import android.os.Handler;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class a0 {
    private final long a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f1844b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f1845c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1846d;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.this.f1845c = true;
            a0.this.f1846d = -1;
        }
    }

    public a0(long j) {
        this.f1845c = true;
        this.f1846d = -1;
        this.a = j;
        this.f1844b = new Handler();
    }

    public void c(int i, Runnable runnable) {
        if (this.f1845c || i != this.f1846d) {
            runnable.run();
            this.f1846d = i;
            this.f1845c = false;
            this.f1844b.postDelayed(new a(), this.a);
        }
    }

    public a0(long j, Handler handler) {
        this.f1845c = true;
        this.f1846d = -1;
        this.a = j;
        this.f1844b = handler;
    }
}
