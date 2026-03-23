package androidx.recyclerview.widget;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.view.v;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class k extends androidx.core.view.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final RecyclerView f979d;
    private final a e;

    public static class a extends androidx.core.view.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final k f980d;
        private Map<View, androidx.core.view.a> e = new WeakHashMap();

        public a(k kVar) {
            this.f980d = kVar;
        }

        @Override // androidx.core.view.a
        public boolean a(View view, AccessibilityEvent accessibilityEvent) {
            androidx.core.view.a aVar = this.e.get(view);
            return aVar != null ? aVar.a(view, accessibilityEvent) : super.a(view, accessibilityEvent);
        }

        @Override // androidx.core.view.a
        public androidx.core.view.e0.d b(View view) {
            androidx.core.view.a aVar = this.e.get(view);
            return aVar != null ? aVar.b(view) : super.b(view);
        }

        @Override // androidx.core.view.a
        public void f(View view, AccessibilityEvent accessibilityEvent) {
            androidx.core.view.a aVar = this.e.get(view);
            if (aVar != null) {
                aVar.f(view, accessibilityEvent);
            } else {
                super.f(view, accessibilityEvent);
            }
        }

        @Override // androidx.core.view.a
        public void g(View view, androidx.core.view.e0.c cVar) {
            if (this.f980d.o() || this.f980d.f979d.getLayoutManager() == null) {
                super.g(view, cVar);
                return;
            }
            this.f980d.f979d.getLayoutManager().O0(view, cVar);
            androidx.core.view.a aVar = this.e.get(view);
            if (aVar != null) {
                aVar.g(view, cVar);
            } else {
                super.g(view, cVar);
            }
        }

        @Override // androidx.core.view.a
        public void h(View view, AccessibilityEvent accessibilityEvent) {
            androidx.core.view.a aVar = this.e.get(view);
            if (aVar != null) {
                aVar.h(view, accessibilityEvent);
            } else {
                super.h(view, accessibilityEvent);
            }
        }

        @Override // androidx.core.view.a
        public boolean i(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            androidx.core.view.a aVar = this.e.get(viewGroup);
            return aVar != null ? aVar.i(viewGroup, view, accessibilityEvent) : super.i(viewGroup, view, accessibilityEvent);
        }

        @Override // androidx.core.view.a
        public boolean j(View view, int i, Bundle bundle) {
            if (this.f980d.o() || this.f980d.f979d.getLayoutManager() == null) {
                return super.j(view, i, bundle);
            }
            androidx.core.view.a aVar = this.e.get(view);
            if (aVar != null) {
                if (aVar.j(view, i, bundle)) {
                    return true;
                }
            } else if (super.j(view, i, bundle)) {
                return true;
            }
            return this.f980d.f979d.getLayoutManager().i1(view, i, bundle);
        }

        @Override // androidx.core.view.a
        public void l(View view, int i) {
            androidx.core.view.a aVar = this.e.get(view);
            if (aVar != null) {
                aVar.l(view, i);
            } else {
                super.l(view, i);
            }
        }

        @Override // androidx.core.view.a
        public void m(View view, AccessibilityEvent accessibilityEvent) {
            androidx.core.view.a aVar = this.e.get(view);
            if (aVar != null) {
                aVar.m(view, accessibilityEvent);
            } else {
                super.m(view, accessibilityEvent);
            }
        }

        androidx.core.view.a n(View view) {
            return this.e.remove(view);
        }

        void o(View view) {
            androidx.core.view.a aVarL = v.l(view);
            if (aVarL == null || aVarL == this) {
                return;
            }
            this.e.put(view, aVarL);
        }
    }

    public k(RecyclerView recyclerView) {
        this.f979d = recyclerView;
        androidx.core.view.a aVarN = n();
        if (aVarN == null || !(aVarN instanceof a)) {
            this.e = new a(this);
        } else {
            this.e = (a) aVarN;
        }
    }

    @Override // androidx.core.view.a
    public void f(View view, AccessibilityEvent accessibilityEvent) {
        super.f(view, accessibilityEvent);
        if (!(view instanceof RecyclerView) || o()) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view;
        if (recyclerView.getLayoutManager() != null) {
            recyclerView.getLayoutManager().K0(accessibilityEvent);
        }
    }

    @Override // androidx.core.view.a
    public void g(View view, androidx.core.view.e0.c cVar) {
        super.g(view, cVar);
        if (o() || this.f979d.getLayoutManager() == null) {
            return;
        }
        this.f979d.getLayoutManager().M0(cVar);
    }

    @Override // androidx.core.view.a
    public boolean j(View view, int i, Bundle bundle) {
        if (super.j(view, i, bundle)) {
            return true;
        }
        if (o() || this.f979d.getLayoutManager() == null) {
            return false;
        }
        return this.f979d.getLayoutManager().g1(i, bundle);
    }

    public androidx.core.view.a n() {
        return this.e;
    }

    boolean o() {
        return this.f979d.l0();
    }
}
