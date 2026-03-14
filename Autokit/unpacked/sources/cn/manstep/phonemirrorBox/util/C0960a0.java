package cn.manstep.phonemirrorBox.util;

import android.os.Handler;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.a0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0960a0 {

    /* JADX INFO: renamed from: a */
    private final long f5990a;

    /* JADX INFO: renamed from: b */
    private final Handler f5991b;

    /* JADX INFO: renamed from: c */
    private boolean f5992c;

    /* JADX INFO: renamed from: d */
    private int f5993d;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.a0$a */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0960a0.this.f5992c = true;
            C0960a0.this.f5993d = -1;
        }
    }

    public C0960a0(long j) {
        this.f5992c = true;
        this.f5993d = -1;
        this.f5990a = j;
        this.f5991b = new Handler();
    }

    /* JADX INFO: renamed from: c */
    public void m7158c(int i, Runnable runnable) {
        if (this.f5992c || i != this.f5993d) {
            runnable.run();
            this.f5993d = i;
            this.f5992c = false;
            this.f5991b.postDelayed(new a(), this.f5990a);
        }
    }

    public C0960a0(long j, Handler handler) {
        this.f5992c = true;
        this.f5993d = -1;
        this.f5990a = j;
        this.f5991b = handler;
    }
}
