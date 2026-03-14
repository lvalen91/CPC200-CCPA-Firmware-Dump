package androidx.lifecycle;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: renamed from: androidx.lifecycle.x */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0410x {

    /* JADX INFO: renamed from: a */
    private final HashMap<String, AbstractC0408v> f2561a = new HashMap<>();

    /* JADX INFO: renamed from: a */
    public final void m3057a() {
        Iterator<AbstractC0408v> it = this.f2561a.values().iterator();
        while (it.hasNext()) {
            it.next().m3050d();
        }
        this.f2561a.clear();
    }

    /* JADX INFO: renamed from: b */
    final AbstractC0408v m3058b(String str) {
        return this.f2561a.get(str);
    }

    /* JADX INFO: renamed from: c */
    Set<String> m3059c() {
        return new HashSet(this.f2561a.keySet());
    }

    /* JADX INFO: renamed from: d */
    final void m3060d(String str, AbstractC0408v abstractC0408v) {
        AbstractC0408v abstractC0408vPut = this.f2561a.put(str, abstractC0408v);
        if (abstractC0408vPut != null) {
            abstractC0408vPut.mo2825g();
        }
    }
}
