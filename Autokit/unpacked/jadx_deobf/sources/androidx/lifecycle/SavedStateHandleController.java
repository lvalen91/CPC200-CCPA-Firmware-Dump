package androidx.lifecycle;

import android.os.Bundle;
import androidx.lifecycle.AbstractC0392f;
import androidx.savedstate.InterfaceC0483c;
import androidx.savedstate.SavedStateRegistry;
import java.util.Iterator;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
final class SavedStateHandleController implements InterfaceC0394h {

    /* JADX INFO: renamed from: a */
    private final String f2494a;

    /* JADX INFO: renamed from: b */
    private boolean f2495b = false;

    /* JADX INFO: renamed from: c */
    private final C0406t f2496c;

    /* JADX INFO: renamed from: androidx.lifecycle.SavedStateHandleController$a */
    static final class C0383a implements SavedStateRegistry.InterfaceC0479a {
        C0383a() {
        }

        @Override // androidx.savedstate.SavedStateRegistry.InterfaceC0479a
        /* JADX INFO: renamed from: a */
        public void mo2976a(InterfaceC0483c interfaceC0483c) {
            if (!(interfaceC0483c instanceof InterfaceC0411y)) {
                throw new IllegalStateException("Internal error: OnRecreation should be registered only on componentsthat implement ViewModelStoreOwner");
            }
            C0410x viewModelStore = ((InterfaceC0411y) interfaceC0483c).getViewModelStore();
            SavedStateRegistry savedStateRegistry = interfaceC0483c.getSavedStateRegistry();
            Iterator<String> it = viewModelStore.m3059c().iterator();
            while (it.hasNext()) {
                SavedStateHandleController.m2970h(viewModelStore.m3058b(it.next()), savedStateRegistry, interfaceC0483c.getLifecycle());
            }
            if (viewModelStore.m3059c().isEmpty()) {
                return;
            }
            savedStateRegistry.m3988e(C0383a.class);
        }
    }

    SavedStateHandleController(String str, C0406t c0406t) {
        this.f2494a = str;
        this.f2496c = c0406t;
    }

    /* JADX INFO: renamed from: h */
    static void m2970h(AbstractC0408v abstractC0408v, SavedStateRegistry savedStateRegistry, AbstractC0392f abstractC0392f) {
        SavedStateHandleController savedStateHandleController = (SavedStateHandleController) abstractC0408v.m3051f("androidx.lifecycle.savedstate.vm.tag");
        if (savedStateHandleController == null || savedStateHandleController.m2975l()) {
            return;
        }
        savedStateHandleController.m2973i(savedStateRegistry, abstractC0392f);
        m2972m(savedStateRegistry, abstractC0392f);
    }

    /* JADX INFO: renamed from: j */
    static SavedStateHandleController m2971j(SavedStateRegistry savedStateRegistry, AbstractC0392f abstractC0392f, String str, Bundle bundle) {
        SavedStateHandleController savedStateHandleController = new SavedStateHandleController(str, C0406t.m3042a(savedStateRegistry.m3984a(str), bundle));
        savedStateHandleController.m2973i(savedStateRegistry, abstractC0392f);
        m2972m(savedStateRegistry, abstractC0392f);
        return savedStateHandleController;
    }

    /* JADX INFO: renamed from: m */
    private static void m2972m(final SavedStateRegistry savedStateRegistry, final AbstractC0392f abstractC0392f) {
        AbstractC0392f.c cVarMo2995b = abstractC0392f.mo2995b();
        if (cVarMo2995b == AbstractC0392f.c.INITIALIZED || cVarMo2995b.m3000a(AbstractC0392f.c.STARTED)) {
            savedStateRegistry.m3988e(C0383a.class);
        } else {
            abstractC0392f.mo2994a(new InterfaceC0394h() { // from class: androidx.lifecycle.SavedStateHandleController.1
                @Override // androidx.lifecycle.InterfaceC0394h
                /* JADX INFO: renamed from: d */
                public void mo303d(InterfaceC0396j interfaceC0396j, AbstractC0392f.b bVar) {
                    if (bVar == AbstractC0392f.b.ON_START) {
                        abstractC0392f.mo2996c(this);
                        savedStateRegistry.m3988e(C0383a.class);
                    }
                }
            });
        }
    }

    @Override // androidx.lifecycle.InterfaceC0394h
    /* JADX INFO: renamed from: d */
    public void mo303d(InterfaceC0396j interfaceC0396j, AbstractC0392f.b bVar) {
        if (bVar == AbstractC0392f.b.ON_DESTROY) {
            this.f2495b = false;
            interfaceC0396j.getLifecycle().mo2996c(this);
        }
    }

    /* JADX INFO: renamed from: i */
    void m2973i(SavedStateRegistry savedStateRegistry, AbstractC0392f abstractC0392f) {
        if (this.f2495b) {
            throw new IllegalStateException("Already attached to lifecycleOwner");
        }
        this.f2495b = true;
        abstractC0392f.mo2994a(this);
        savedStateRegistry.m3987d(this.f2494a, this.f2496c.m3044b());
    }

    /* JADX INFO: renamed from: k */
    C0406t m2974k() {
        return this.f2496c;
    }

    /* JADX INFO: renamed from: l */
    boolean m2975l() {
        return this.f2495b;
    }
}
