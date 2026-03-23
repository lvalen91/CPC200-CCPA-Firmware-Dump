package c.d;

import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class e<K, V> {
    private final LinkedHashMap<K, V> a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1080b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1081c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1082d;
    private int e;
    private int f;
    private int g;
    private int h;

    public e(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.f1081c = i;
        this.a = new LinkedHashMap<>(0, 0.75f, true);
    }

    private int e(K k, V v) {
        int iF = f(k, v);
        if (iF >= 0) {
            return iF;
        }
        throw new IllegalStateException("Negative size: " + k + "=" + v);
    }

    protected V a(K k) {
        return null;
    }

    protected void b(boolean z, K k, V v, V v2) {
    }

    public final V c(K k) {
        V vPut;
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            V v = this.a.get(k);
            if (v != null) {
                this.g++;
                return v;
            }
            this.h++;
            V vA = a(k);
            if (vA == null) {
                return null;
            }
            synchronized (this) {
                this.e++;
                vPut = this.a.put(k, vA);
                if (vPut != null) {
                    this.a.put(k, vPut);
                } else {
                    this.f1080b += e(k, vA);
                }
            }
            if (vPut != null) {
                b(false, k, vA, vPut);
                return vPut;
            }
            g(this.f1081c);
            return vA;
        }
    }

    public final V d(K k, V v) {
        V vPut;
        if (k == null || v == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            this.f1082d++;
            this.f1080b += e(k, v);
            vPut = this.a.put(k, v);
            if (vPut != null) {
                this.f1080b -= e(k, vPut);
            }
        }
        if (vPut != null) {
            b(false, k, vPut, v);
        }
        g(this.f1081c);
        return vPut;
    }

    protected int f(K k, V v) {
        return 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0070, code lost:
    
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void g(int i) {
        K key;
        V value;
        while (true) {
            synchronized (this) {
                if (this.f1080b >= 0 && (!this.a.isEmpty() || this.f1080b == 0)) {
                    if (this.f1080b <= i || this.a.isEmpty()) {
                        break;
                    }
                    Map.Entry<K, V> next = this.a.entrySet().iterator().next();
                    key = next.getKey();
                    value = next.getValue();
                    this.a.remove(key);
                    this.f1080b -= e(key, value);
                    this.f++;
                } else {
                    break;
                }
            }
            b(true, key, value, null);
        }
    }

    public final synchronized String toString() {
        int i;
        i = this.g + this.h;
        return String.format(Locale.US, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.f1081c), Integer.valueOf(this.g), Integer.valueOf(this.h), Integer.valueOf(i != 0 ? (this.g * 100) / i : 0));
    }
}
