package cn.manstep.phonemirrorBox.util;

import android.os.Handler;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.k */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0974k {

    /* JADX INFO: renamed from: a */
    private final Handler f6070a;

    /* JADX INFO: renamed from: b */
    private final Map<String, Runnable> f6071b = new ConcurrentHashMap();

    public C0974k(Handler handler) {
        this.f6070a = handler;
    }

    /* JADX INFO: renamed from: a */
    public void m7261a(String str) {
        Runnable runnable = this.f6071b.get(str);
        if (runnable != null) {
            this.f6070a.removeCallbacks(runnable);
            this.f6071b.remove(str);
        }
    }

    /* JADX INFO: renamed from: b */
    public void m7262b(String str, long j, Runnable runnable) {
        m7261a(str);
        this.f6071b.put(str, runnable);
        this.f6070a.postDelayed(runnable, j);
    }
}
