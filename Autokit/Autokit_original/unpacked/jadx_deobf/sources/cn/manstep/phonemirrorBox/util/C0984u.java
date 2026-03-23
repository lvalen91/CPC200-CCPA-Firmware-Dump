package cn.manstep.phonemirrorBox.util;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.u */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0984u {

    /* JADX INFO: renamed from: c */
    private long f6155c = 0;

    /* JADX INFO: renamed from: a */
    private final Handler f6153a = new Handler(Looper.myLooper());

    /* JADX INFO: renamed from: b */
    private long f6154b = 5000;

    /* JADX INFO: renamed from: a */
    public void m7390a(Runnable runnable) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = jCurrentTimeMillis - this.f6155c;
        if (j < 0 || j <= this.f6154b) {
            return;
        }
        this.f6155c = jCurrentTimeMillis;
        this.f6153a.removeCallbacks(runnable);
        this.f6153a.post(runnable);
    }

    /* JADX INFO: renamed from: b */
    public void m7391b(Runnable runnable, long j) {
        this.f6154b = j;
        m7390a(runnable);
    }
}
