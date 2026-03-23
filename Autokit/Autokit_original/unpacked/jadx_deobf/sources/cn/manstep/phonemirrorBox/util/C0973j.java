package cn.manstep.phonemirrorBox.util;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.yalantis.ucrop.BuildConfig;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.j */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0973j {

    /* JADX INFO: renamed from: c */
    private static C0973j f6063c;

    /* JADX INFO: renamed from: b */
    private final Map<String, Runnable> f6065b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a */
    private final Handler f6064a = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.j$a */
    private class a implements Runnable {

        /* JADX INFO: renamed from: b */
        private final Runnable f6066b;

        /* JADX INFO: renamed from: c */
        private final String f6067c;

        /* JADX INFO: renamed from: d */
        private final AtomicBoolean f6068d = new AtomicBoolean(false);

        public a(String str, Runnable runnable) {
            this.f6066b = runnable;
            this.f6067c = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f6066b.run();
                this.f6068d.set(true);
            } finally {
                if (this.f6068d.get()) {
                    C0973j.this.f6065b.remove(this.f6067c);
                }
            }
        }
    }

    private C0973j() {
    }

    /* JADX INFO: renamed from: c */
    public static C0973j m7257c() {
        if (f6063c == null) {
            synchronized (C0973j.class) {
                if (f6063c == null) {
                    f6063c = new C0973j();
                }
            }
        }
        return f6063c;
    }

    /* JADX INFO: renamed from: d */
    public static C0973j m7258d(Runnable runnable) {
        C0973j c0973jM7257c = m7257c();
        c0973jM7257c.m7260e(BuildConfig.FLAVOR, 0L, runnable);
        return c0973jM7257c;
    }

    /* JADX INFO: renamed from: b */
    public C0973j m7259b(String str) {
        Runnable runnable = this.f6065b.get(str);
        if (runnable != null) {
            this.f6064a.removeCallbacks(runnable);
            this.f6065b.remove(str);
        }
        return this;
    }

    /* JADX INFO: renamed from: e */
    public C0973j m7260e(String str, long j, Runnable runnable) {
        if (TextUtils.isEmpty(str)) {
            this.f6064a.post(runnable);
        } else {
            m7259b(str);
            a aVar = new a(str, runnable);
            this.f6065b.put(str, aVar);
            this.f6064a.postDelayed(aVar, j);
        }
        return this;
    }
}
