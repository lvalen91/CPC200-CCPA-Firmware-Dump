package androidx.savedstate;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.lifecycle.AbstractC0392f;
import androidx.lifecycle.InterfaceC0394h;
import androidx.lifecycle.InterfaceC0396j;
import androidx.savedstate.SavedStateRegistry;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
@SuppressLint({"RestrictedApi"})
final class Recreator implements InterfaceC0394h {

    /* JADX INFO: renamed from: a */
    private final InterfaceC0483c f3050a;

    /* JADX INFO: renamed from: androidx.savedstate.Recreator$a */
    static final class C0477a implements SavedStateRegistry.InterfaceC0480b {

        /* JADX INFO: renamed from: a */
        final Set<String> f3051a = new HashSet();

        C0477a(SavedStateRegistry savedStateRegistry) {
            savedStateRegistry.m3987d("androidx.savedstate.Restarter", this);
        }

        @Override // androidx.savedstate.SavedStateRegistry.InterfaceC0480b
        /* JADX INFO: renamed from: a */
        public Bundle mo429a() {
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("classes_to_restore", new ArrayList<>(this.f3051a));
            return bundle;
        }

        /* JADX INFO: renamed from: b */
        void m3983b(String str) {
            this.f3051a.add(str);
        }
    }

    Recreator(InterfaceC0483c interfaceC0483c) {
        this.f3050a = interfaceC0483c;
    }

    /* JADX INFO: renamed from: h */
    private void m3982h(String str) {
        try {
            Class<? extends U> clsAsSubclass = Class.forName(str, false, Recreator.class.getClassLoader()).asSubclass(SavedStateRegistry.InterfaceC0479a.class);
            try {
                Constructor declaredConstructor = clsAsSubclass.getDeclaredConstructor(new Class[0]);
                declaredConstructor.setAccessible(true);
                try {
                    ((SavedStateRegistry.InterfaceC0479a) declaredConstructor.newInstance(new Object[0])).mo2976a(this.f3050a);
                } catch (Exception e) {
                    throw new RuntimeException("Failed to instantiate " + str, e);
                }
            } catch (NoSuchMethodException e2) {
                throw new IllegalStateException("Class" + clsAsSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e2);
            }
        } catch (ClassNotFoundException e3) {
            throw new RuntimeException("Class " + str + " wasn't found", e3);
        }
    }

    @Override // androidx.lifecycle.InterfaceC0394h
    /* JADX INFO: renamed from: d */
    public void mo303d(InterfaceC0396j interfaceC0396j, AbstractC0392f.b bVar) {
        if (bVar != AbstractC0392f.b.ON_CREATE) {
            throw new AssertionError("Next event must be ON_CREATE");
        }
        interfaceC0396j.getLifecycle().mo2996c(this);
        Bundle bundleM3984a = this.f3050a.getSavedStateRegistry().m3984a("androidx.savedstate.Restarter");
        if (bundleM3984a == null) {
            return;
        }
        ArrayList<String> stringArrayList = bundleM3984a.getStringArrayList("classes_to_restore");
        if (stringArrayList == null) {
            throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
        }
        Iterator<String> it = stringArrayList.iterator();
        while (it.hasNext()) {
            m3982h(it.next());
        }
    }
}
