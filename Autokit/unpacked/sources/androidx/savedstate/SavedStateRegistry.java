package androidx.savedstate;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.lifecycle.AbstractC0392f;
import androidx.lifecycle.InterfaceC0394h;
import androidx.lifecycle.InterfaceC0396j;
import androidx.savedstate.Recreator;
import java.util.Map;
import p016c.p025b.p026a.p028b.C0524b;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
@SuppressLint({"RestrictedApi"})
public final class SavedStateRegistry {

    /* JADX INFO: renamed from: b */
    private Bundle f3053b;

    /* JADX INFO: renamed from: c */
    private boolean f3054c;

    /* JADX INFO: renamed from: d */
    private Recreator.C0477a f3055d;

    /* JADX INFO: renamed from: a */
    private C0524b<String, InterfaceC0480b> f3052a = new C0524b<>();

    /* JADX INFO: renamed from: e */
    boolean f3056e = true;

    /* JADX INFO: renamed from: androidx.savedstate.SavedStateRegistry$a */
    public interface InterfaceC0479a {
        /* JADX INFO: renamed from: a */
        void mo2976a(InterfaceC0483c interfaceC0483c);
    }

    /* JADX INFO: renamed from: androidx.savedstate.SavedStateRegistry$b */
    public interface InterfaceC0480b {
        /* JADX INFO: renamed from: a */
        Bundle mo429a();
    }

    SavedStateRegistry() {
    }

    /* JADX INFO: renamed from: a */
    public Bundle m3984a(String str) {
        if (!this.f3054c) {
            throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
        }
        Bundle bundle = this.f3053b;
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = bundle.getBundle(str);
        this.f3053b.remove(str);
        if (this.f3053b.isEmpty()) {
            this.f3053b = null;
        }
        return bundle2;
    }

    /* JADX INFO: renamed from: b */
    void m3985b(AbstractC0392f abstractC0392f, Bundle bundle) {
        if (this.f3054c) {
            throw new IllegalStateException("SavedStateRegistry was already restored.");
        }
        if (bundle != null) {
            this.f3053b = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
        }
        abstractC0392f.mo2994a(new InterfaceC0394h() { // from class: androidx.savedstate.SavedStateRegistry.1
            @Override // androidx.lifecycle.InterfaceC0394h
            /* JADX INFO: renamed from: d */
            public void mo303d(InterfaceC0396j interfaceC0396j, AbstractC0392f.b bVar) {
                if (bVar == AbstractC0392f.b.ON_START) {
                    SavedStateRegistry.this.f3056e = true;
                } else if (bVar == AbstractC0392f.b.ON_STOP) {
                    SavedStateRegistry.this.f3056e = false;
                }
            }
        });
        this.f3054c = true;
    }

    /* JADX INFO: renamed from: c */
    void m3986c(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = this.f3053b;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        C0524b<String, InterfaceC0480b>.d dVarM4167d = this.f3052a.m4167d();
        while (dVarM4167d.hasNext()) {
            Map.Entry next = dVarM4167d.next();
            bundle2.putBundle((String) next.getKey(), ((InterfaceC0480b) next.getValue()).mo429a());
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }

    /* JADX INFO: renamed from: d */
    public void m3987d(String str, InterfaceC0480b interfaceC0480b) {
        if (this.f3052a.mo4162g(str, interfaceC0480b) != null) {
            throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
        }
    }

    /* JADX INFO: renamed from: e */
    public void m3988e(Class<? extends InterfaceC0479a> cls) {
        if (!this.f3056e) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.f3055d == null) {
            this.f3055d = new Recreator.C0477a(this);
        }
        try {
            cls.getDeclaredConstructor(new Class[0]);
            this.f3055d.m3983b(cls.getName());
        } catch (NoSuchMethodException e) {
            throw new IllegalArgumentException("Class" + cls.getSimpleName() + " must have default constructor in order to be automatically recreated", e);
        }
    }
}
