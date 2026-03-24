package androidx.databinding;

import android.view.View;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class h extends c {
    private Set<Class<? extends c>> a = new HashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<c> f645b = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<String> f646c = new CopyOnWriteArrayList();

    private boolean e() {
        boolean z = false;
        for (String str : this.f646c) {
            try {
                Class<?> cls = Class.forName(str);
                if (c.class.isAssignableFrom(cls)) {
                    d((c) cls.newInstance());
                    this.f646c.remove(str);
                    z = true;
                }
            } catch (ClassNotFoundException unused) {
            } catch (IllegalAccessException unused2) {
                String str2 = "unable to add feature mapper for " + str;
            } catch (InstantiationException unused3) {
                String str3 = "unable to add feature mapper for " + str;
            }
        }
        return z;
    }

    @Override // androidx.databinding.c
    public ViewDataBinding b(e eVar, View view, int i) {
        Iterator<c> it = this.f645b.iterator();
        while (it.hasNext()) {
            ViewDataBinding viewDataBindingB = it.next().b(eVar, view, i);
            if (viewDataBindingB != null) {
                return viewDataBindingB;
            }
        }
        if (e()) {
            return b(eVar, view, i);
        }
        return null;
    }

    @Override // androidx.databinding.c
    public ViewDataBinding c(e eVar, View[] viewArr, int i) {
        Iterator<c> it = this.f645b.iterator();
        while (it.hasNext()) {
            ViewDataBinding viewDataBindingC = it.next().c(eVar, viewArr, i);
            if (viewDataBindingC != null) {
                return viewDataBindingC;
            }
        }
        if (e()) {
            return c(eVar, viewArr, i);
        }
        return null;
    }

    public void d(c cVar) {
        if (this.a.add((Class<? extends c>) cVar.getClass())) {
            this.f645b.add(cVar);
            Iterator<c> it = cVar.a().iterator();
            while (it.hasNext()) {
                d(it.next());
            }
        }
    }
}
