package cn.manstep.phonemirrorBox.util;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.yalantis.ucrop.BuildConfig;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class j {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static j f1884c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<String, Runnable> f1885b = new ConcurrentHashMap();
    private final Handler a = new Handler(Looper.getMainLooper());

    private class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Runnable f1886b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f1887c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final AtomicBoolean f1888d = new AtomicBoolean(false);

        public a(String str, Runnable runnable) {
            this.f1886b = runnable;
            this.f1887c = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f1886b.run();
                this.f1888d.set(true);
            } finally {
                if (this.f1888d.get()) {
                    j.this.f1885b.remove(this.f1887c);
                }
            }
        }
    }

    private j() {
    }

    public static j c() {
        if (f1884c == null) {
            synchronized (j.class) {
                if (f1884c == null) {
                    f1884c = new j();
                }
            }
        }
        return f1884c;
    }

    public static j d(Runnable runnable) {
        j jVarC = c();
        jVarC.e(BuildConfig.FLAVOR, 0L, runnable);
        return jVarC;
    }

    public j b(String str) {
        Runnable runnable = this.f1885b.get(str);
        if (runnable != null) {
            this.a.removeCallbacks(runnable);
            this.f1885b.remove(str);
        }
        return this;
    }

    public j e(String str, long j, Runnable runnable) {
        if (TextUtils.isEmpty(str)) {
            this.a.post(runnable);
        } else {
            b(str);
            a aVar = new a(str, runnable);
            this.f1885b.put(str, aVar);
            this.a.postDelayed(aVar, j);
        }
        return this;
    }
}
