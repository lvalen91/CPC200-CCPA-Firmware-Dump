package androidx.lifecycle;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: renamed from: androidx.lifecycle.v */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0408v {

    /* JADX INFO: renamed from: a */
    private final Map<String, Object> f2554a = new HashMap();

    /* JADX INFO: renamed from: b */
    private volatile boolean f2555b = false;

    /* JADX INFO: renamed from: e */
    private static void m3049e(Object obj) {
        if (obj instanceof Closeable) {
            try {
                ((Closeable) obj).close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* JADX INFO: renamed from: d */
    final void m3050d() {
        this.f2555b = true;
        Map<String, Object> map = this.f2554a;
        if (map != null) {
            synchronized (map) {
                Iterator<Object> it = this.f2554a.values().iterator();
                while (it.hasNext()) {
                    m3049e(it.next());
                }
            }
        }
        mo2825g();
    }

    /* JADX INFO: renamed from: f */
    <T> T m3051f(String str) {
        T t;
        Map<String, Object> map = this.f2554a;
        if (map == null) {
            return null;
        }
        synchronized (map) {
            t = (T) this.f2554a.get(str);
        }
        return t;
    }

    /* JADX INFO: renamed from: g */
    protected void mo2825g() {
    }

    /* JADX INFO: renamed from: h */
    <T> T m3052h(String str, T t) {
        Object obj;
        synchronized (this.f2554a) {
            obj = this.f2554a.get(str);
            if (obj == null) {
                this.f2554a.put(str, t);
            }
        }
        if (obj != null) {
            t = (T) obj;
        }
        if (this.f2555b) {
            m3049e(t);
        }
        return t;
    }
}
