package androidx.lifecycle;

import android.os.Bundle;
import androidx.lifecycle.f;
import androidx.savedstate.SavedStateRegistry;
import java.util.Iterator;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
final class SavedStateHandleController implements h {
    private final String a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f813b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final t f814c;

    static final class a implements SavedStateRegistry.a {
        a() {
        }

        @Override // androidx.savedstate.SavedStateRegistry.a
        public void a(androidx.savedstate.c cVar) {
            if (!(cVar instanceof y)) {
                throw new IllegalStateException("Internal error: OnRecreation should be registered only on componentsthat implement ViewModelStoreOwner");
            }
            x viewModelStore = ((y) cVar).getViewModelStore();
            SavedStateRegistry savedStateRegistry = cVar.getSavedStateRegistry();
            Iterator<String> it = viewModelStore.c().iterator();
            while (it.hasNext()) {
                SavedStateHandleController.h(viewModelStore.b(it.next()), savedStateRegistry, cVar.getLifecycle());
            }
            if (viewModelStore.c().isEmpty()) {
                return;
            }
            savedStateRegistry.e(a.class);
        }
    }

    SavedStateHandleController(String str, t tVar) {
        this.a = str;
        this.f814c = tVar;
    }

    static void h(v vVar, SavedStateRegistry savedStateRegistry, f fVar) {
        SavedStateHandleController savedStateHandleController = (SavedStateHandleController) vVar.f("androidx.lifecycle.savedstate.vm.tag");
        if (savedStateHandleController == null || savedStateHandleController.l()) {
            return;
        }
        savedStateHandleController.i(savedStateRegistry, fVar);
        m(savedStateRegistry, fVar);
    }

    static SavedStateHandleController j(SavedStateRegistry savedStateRegistry, f fVar, String str, Bundle bundle) {
        SavedStateHandleController savedStateHandleController = new SavedStateHandleController(str, t.a(savedStateRegistry.a(str), bundle));
        savedStateHandleController.i(savedStateRegistry, fVar);
        m(savedStateRegistry, fVar);
        return savedStateHandleController;
    }

    private static void m(final SavedStateRegistry savedStateRegistry, final f fVar) {
        f.c cVarB = fVar.b();
        if (cVarB == f.c.INITIALIZED || cVarB.a(f.c.STARTED)) {
            savedStateRegistry.e(a.class);
        } else {
            fVar.a(new h() { // from class: androidx.lifecycle.SavedStateHandleController.1
                @Override // androidx.lifecycle.h
                public void d(j jVar, f.b bVar) {
                    if (bVar == f.b.ON_START) {
                        fVar.c(this);
                        savedStateRegistry.e(a.class);
                    }
                }
            });
        }
    }

    @Override // androidx.lifecycle.h
    public void d(j jVar, f.b bVar) {
        if (bVar == f.b.ON_DESTROY) {
            this.f813b = false;
            jVar.getLifecycle().c(this);
        }
    }

    void i(SavedStateRegistry savedStateRegistry, f fVar) {
        if (this.f813b) {
            throw new IllegalStateException("Already attached to lifecycleOwner");
        }
        this.f813b = true;
        fVar.a(this);
        savedStateRegistry.d(this.a, this.f814c.b());
    }

    t k() {
        return this.f814c;
    }

    boolean l() {
        return this.f813b;
    }
}
