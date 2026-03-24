package androidx.lifecycle;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class x {
    private final HashMap<String, v> a = new HashMap<>();

    public final void a() {
        Iterator<v> it = this.a.values().iterator();
        while (it.hasNext()) {
            it.next().d();
        }
        this.a.clear();
    }

    final v b(String str) {
        return this.a.get(str);
    }

    Set<String> c() {
        return new HashSet(this.a.keySet());
    }

    final void d(String str, v vVar) {
        v vVarPut = this.a.put(str, vVar);
        if (vVarPut != null) {
            vVarPut.g();
        }
    }
}
