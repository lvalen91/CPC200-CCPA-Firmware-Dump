package androidx.savedstate;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.lifecycle.f;
import androidx.lifecycle.h;
import androidx.lifecycle.j;
import androidx.savedstate.Recreator;
import java.util.Map;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
@SuppressLint({"RestrictedApi"})
public final class SavedStateRegistry {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Bundle f991b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f992c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Recreator.a f993d;
    private c.b.a.b.b<String, b> a = new c.b.a.b.b<>();
    boolean e = true;

    public interface a {
        void a(c cVar);
    }

    public interface b {
        Bundle a();
    }

    SavedStateRegistry() {
    }

    public Bundle a(String str) {
        if (!this.f992c) {
            throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
        }
        Bundle bundle = this.f991b;
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = bundle.getBundle(str);
        this.f991b.remove(str);
        if (this.f991b.isEmpty()) {
            this.f991b = null;
        }
        return bundle2;
    }

    void b(f fVar, Bundle bundle) {
        if (this.f992c) {
            throw new IllegalStateException("SavedStateRegistry was already restored.");
        }
        if (bundle != null) {
            this.f991b = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
        }
        fVar.a(new h() { // from class: androidx.savedstate.SavedStateRegistry.1
            @Override // androidx.lifecycle.h
            public void d(j jVar, f.b bVar) {
                if (bVar == f.b.ON_START) {
                    SavedStateRegistry.this.e = true;
                } else if (bVar == f.b.ON_STOP) {
                    SavedStateRegistry.this.e = false;
                }
            }
        });
        this.f992c = true;
    }

    void c(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = this.f991b;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        c.b.a.b.b<String, b>.d dVarD = this.a.d();
        while (dVarD.hasNext()) {
            Map.Entry next = dVarD.next();
            bundle2.putBundle((String) next.getKey(), ((b) next.getValue()).a());
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }

    public void d(String str, b bVar) {
        if (this.a.g(str, bVar) != null) {
            throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
        }
    }

    public void e(Class<? extends a> cls) {
        if (!this.e) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.f993d == null) {
            this.f993d = new Recreator.a(this);
        }
        try {
            cls.getDeclaredConstructor(new Class[0]);
            this.f993d.b(cls.getName());
        } catch (NoSuchMethodException e) {
            throw new IllegalArgumentException("Class" + cls.getSimpleName() + " must have default constructor in order to be automatically recreated", e);
        }
    }
}
