package androidx.databinding;

import android.view.View;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: renamed from: androidx.databinding.h */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0330h extends AbstractC0325c {

    /* JADX INFO: renamed from: a */
    private Set<Class<? extends AbstractC0325c>> f2039a = new HashSet();

    /* JADX INFO: renamed from: b */
    private List<AbstractC0325c> f2040b = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: c */
    private List<String> f2041c = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: e */
    private boolean m2364e() {
        boolean z = false;
        for (String str : this.f2041c) {
            try {
                Class<?> cls = Class.forName(str);
                if (AbstractC0325c.class.isAssignableFrom(cls)) {
                    m2365d((AbstractC0325c) cls.newInstance());
                    this.f2041c.remove(str);
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

    @Override // androidx.databinding.AbstractC0325c
    /* JADX INFO: renamed from: b */
    public ViewDataBinding mo2353b(InterfaceC0327e interfaceC0327e, View view, int i) {
        Iterator<AbstractC0325c> it = this.f2040b.iterator();
        while (it.hasNext()) {
            ViewDataBinding viewDataBindingMo2353b = it.next().mo2353b(interfaceC0327e, view, i);
            if (viewDataBindingMo2353b != null) {
                return viewDataBindingMo2353b;
            }
        }
        if (m2364e()) {
            return mo2353b(interfaceC0327e, view, i);
        }
        return null;
    }

    @Override // androidx.databinding.AbstractC0325c
    /* JADX INFO: renamed from: c */
    public ViewDataBinding mo2354c(InterfaceC0327e interfaceC0327e, View[] viewArr, int i) {
        Iterator<AbstractC0325c> it = this.f2040b.iterator();
        while (it.hasNext()) {
            ViewDataBinding viewDataBindingMo2354c = it.next().mo2354c(interfaceC0327e, viewArr, i);
            if (viewDataBindingMo2354c != null) {
                return viewDataBindingMo2354c;
            }
        }
        if (m2364e()) {
            return mo2354c(interfaceC0327e, viewArr, i);
        }
        return null;
    }

    /* JADX INFO: renamed from: d */
    public void m2365d(AbstractC0325c abstractC0325c) {
        if (this.f2039a.add((Class<? extends AbstractC0325c>) abstractC0325c.getClass())) {
            this.f2040b.add(abstractC0325c);
            Iterator<AbstractC0325c> it = abstractC0325c.mo2352a().iterator();
            while (it.hasNext()) {
                m2365d(it.next());
            }
        }
    }
}
