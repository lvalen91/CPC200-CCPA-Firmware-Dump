package cn.manstep.phonemirrorBox.util;

import android.os.Handler;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class k {
    private final Handler a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<String, Runnable> f1889b = new ConcurrentHashMap();

    public k(Handler handler) {
        this.a = handler;
    }

    public void a(String str) {
        Runnable runnable = this.f1889b.get(str);
        if (runnable != null) {
            this.a.removeCallbacks(runnable);
            this.f1889b.remove(str);
        }
    }

    public void b(String str, long j, Runnable runnable) {
        a(str);
        this.f1889b.put(str, runnable);
        this.a.postDelayed(runnable, j);
    }
}
