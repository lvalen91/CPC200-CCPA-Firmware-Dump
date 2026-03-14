package p016c.p032d;

import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: renamed from: c.d.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0538e<K, V> {

    /* JADX INFO: renamed from: a */
    private final LinkedHashMap<K, V> f3308a;

    /* JADX INFO: renamed from: b */
    private int f3309b;

    /* JADX INFO: renamed from: c */
    private int f3310c;

    /* JADX INFO: renamed from: d */
    private int f3311d;

    /* JADX INFO: renamed from: e */
    private int f3312e;

    /* JADX INFO: renamed from: f */
    private int f3313f;

    /* JADX INFO: renamed from: g */
    private int f3314g;

    /* JADX INFO: renamed from: h */
    private int f3315h;

    public C0538e(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.f3310c = i;
        this.f3308a = new LinkedHashMap<>(0, 0.75f, true);
    }

    /* JADX INFO: renamed from: e */
    private int m4267e(K k, V v) {
        int iM4272f = m4272f(k, v);
        if (iM4272f >= 0) {
            return iM4272f;
        }
        throw new IllegalStateException("Negative size: " + k + "=" + v);
    }

    /* JADX INFO: renamed from: a */
    protected V m4268a(K k) {
        return null;
    }

    /* JADX INFO: renamed from: b */
    protected void m4269b(boolean z, K k, V v, V v2) {
    }

    /* JADX INFO: renamed from: c */
    public final V m4270c(K k) {
        V vPut;
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            V v = this.f3308a.get(k);
            if (v != null) {
                this.f3314g++;
                return v;
            }
            this.f3315h++;
            V vM4268a = m4268a(k);
            if (vM4268a == null) {
                return null;
            }
            synchronized (this) {
                this.f3312e++;
                vPut = this.f3308a.put(k, vM4268a);
                if (vPut != null) {
                    this.f3308a.put(k, vPut);
                } else {
                    this.f3309b += m4267e(k, vM4268a);
                }
            }
            if (vPut != null) {
                m4269b(false, k, vM4268a, vPut);
                return vPut;
            }
            m4273g(this.f3310c);
            return vM4268a;
        }
    }

    /* JADX INFO: renamed from: d */
    public final V m4271d(K k, V v) {
        V vPut;
        if (k == null || v == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            this.f3311d++;
            this.f3309b += m4267e(k, v);
            vPut = this.f3308a.put(k, v);
            if (vPut != null) {
                this.f3309b -= m4267e(k, vPut);
            }
        }
        if (vPut != null) {
            m4269b(false, k, vPut, v);
        }
        m4273g(this.f3310c);
        return vPut;
    }

    /* JADX INFO: renamed from: f */
    protected int m4272f(K k, V v) {
        return 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0070, code lost:
    
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /* JADX INFO: renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m4273g(int i) {
        K key;
        V value;
        while (true) {
            synchronized (this) {
                if (this.f3309b >= 0 && (!this.f3308a.isEmpty() || this.f3309b == 0)) {
                    if (this.f3309b <= i || this.f3308a.isEmpty()) {
                        break;
                    }
                    Map.Entry<K, V> next = this.f3308a.entrySet().iterator().next();
                    key = next.getKey();
                    value = next.getValue();
                    this.f3308a.remove(key);
                    this.f3309b -= m4267e(key, value);
                    this.f3313f++;
                } else {
                    break;
                }
            }
            m4269b(true, key, value, null);
        }
    }

    public final synchronized String toString() {
        int i;
        i = this.f3314g + this.f3315h;
        return String.format(Locale.US, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.f3310c), Integer.valueOf(this.f3314g), Integer.valueOf(this.f3315h), Integer.valueOf(i != 0 ? (this.f3314g * 100) / i : 0));
    }
}
