package androidx.recyclerview.widget;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.view.C0258a;
import androidx.core.view.C0292v;
import androidx.core.view.p004e0.C0269c;
import androidx.core.view.p004e0.C0270d;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: renamed from: androidx.recyclerview.widget.k */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0471k extends C0258a {

    /* JADX INFO: renamed from: d */
    final RecyclerView f3028d;

    /* JADX INFO: renamed from: e */
    private final a f3029e;

    /* JADX INFO: renamed from: androidx.recyclerview.widget.k$a */
    public static class a extends C0258a {

        /* JADX INFO: renamed from: d */
        final C0471k f3030d;

        /* JADX INFO: renamed from: e */
        private Map<View, C0258a> f3031e = new WeakHashMap();

        public a(C0471k c0471k) {
            this.f3030d = c0471k;
        }

        @Override // androidx.core.view.C0258a
        /* JADX INFO: renamed from: a */
        public boolean mo1809a(View view, AccessibilityEvent accessibilityEvent) {
            C0258a c0258a = this.f3031e.get(view);
            return c0258a != null ? c0258a.mo1809a(view, accessibilityEvent) : super.mo1809a(view, accessibilityEvent);
        }

        @Override // androidx.core.view.C0258a
        /* JADX INFO: renamed from: b */
        public C0270d mo1810b(View view) {
            C0258a c0258a = this.f3031e.get(view);
            return c0258a != null ? c0258a.mo1810b(view) : super.mo1810b(view);
        }

        @Override // androidx.core.view.C0258a
        /* JADX INFO: renamed from: f */
        public void mo1812f(View view, AccessibilityEvent accessibilityEvent) {
            C0258a c0258a = this.f3031e.get(view);
            if (c0258a != null) {
                c0258a.mo1812f(view, accessibilityEvent);
            } else {
                super.mo1812f(view, accessibilityEvent);
            }
        }

        @Override // androidx.core.view.C0258a
        /* JADX INFO: renamed from: g */
        public void mo1813g(View view, C0269c c0269c) {
            if (this.f3030d.m3927o() || this.f3030d.f3028d.getLayoutManager() == null) {
                super.mo1813g(view, c0269c);
                return;
            }
            this.f3030d.f3028d.getLayoutManager().m3498O0(view, c0269c);
            C0258a c0258a = this.f3031e.get(view);
            if (c0258a != null) {
                c0258a.mo1813g(view, c0269c);
            } else {
                super.mo1813g(view, c0269c);
            }
        }

        @Override // androidx.core.view.C0258a
        /* JADX INFO: renamed from: h */
        public void mo1814h(View view, AccessibilityEvent accessibilityEvent) {
            C0258a c0258a = this.f3031e.get(view);
            if (c0258a != null) {
                c0258a.mo1814h(view, accessibilityEvent);
            } else {
                super.mo1814h(view, accessibilityEvent);
            }
        }

        @Override // androidx.core.view.C0258a
        /* JADX INFO: renamed from: i */
        public boolean mo1815i(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            C0258a c0258a = this.f3031e.get(viewGroup);
            return c0258a != null ? c0258a.mo1815i(viewGroup, view, accessibilityEvent) : super.mo1815i(viewGroup, view, accessibilityEvent);
        }

        @Override // androidx.core.view.C0258a
        /* JADX INFO: renamed from: j */
        public boolean mo1816j(View view, int i, Bundle bundle) {
            if (this.f3030d.m3927o() || this.f3030d.f3028d.getLayoutManager() == null) {
                return super.mo1816j(view, i, bundle);
            }
            C0258a c0258a = this.f3031e.get(view);
            if (c0258a != null) {
                if (c0258a.mo1816j(view, i, bundle)) {
                    return true;
                }
            } else if (super.mo1816j(view, i, bundle)) {
                return true;
            }
            return this.f3030d.f3028d.getLayoutManager().m3533i1(view, i, bundle);
        }

        @Override // androidx.core.view.C0258a
        /* JADX INFO: renamed from: l */
        public void mo1817l(View view, int i) {
            C0258a c0258a = this.f3031e.get(view);
            if (c0258a != null) {
                c0258a.mo1817l(view, i);
            } else {
                super.mo1817l(view, i);
            }
        }

        @Override // androidx.core.view.C0258a
        /* JADX INFO: renamed from: m */
        public void mo1818m(View view, AccessibilityEvent accessibilityEvent) {
            C0258a c0258a = this.f3031e.get(view);
            if (c0258a != null) {
                c0258a.mo1818m(view, accessibilityEvent);
            } else {
                super.mo1818m(view, accessibilityEvent);
            }
        }

        /* JADX INFO: renamed from: n */
        C0258a m3928n(View view) {
            return this.f3031e.remove(view);
        }

        /* JADX INFO: renamed from: o */
        void m3929o(View view) {
            C0258a c0258aM2098l = C0292v.m2098l(view);
            if (c0258aM2098l == null || c0258aM2098l == this) {
                return;
            }
            this.f3031e.put(view, c0258aM2098l);
        }
    }

    public C0471k(RecyclerView recyclerView) {
        this.f3028d = recyclerView;
        C0258a c0258aM3926n = m3926n();
        if (c0258aM3926n == null || !(c0258aM3926n instanceof a)) {
            this.f3029e = new a(this);
        } else {
            this.f3029e = (a) c0258aM3926n;
        }
    }

    @Override // androidx.core.view.C0258a
    /* JADX INFO: renamed from: f */
    public void mo1812f(View view, AccessibilityEvent accessibilityEvent) {
        super.mo1812f(view, accessibilityEvent);
        if (!(view instanceof RecyclerView) || m3927o()) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view;
        if (recyclerView.getLayoutManager() != null) {
            recyclerView.getLayoutManager().mo3165K0(accessibilityEvent);
        }
    }

    @Override // androidx.core.view.C0258a
    /* JADX INFO: renamed from: g */
    public void mo1813g(View view, C0269c c0269c) {
        super.mo1813g(view, c0269c);
        if (m3927o() || this.f3028d.getLayoutManager() == null) {
            return;
        }
        this.f3028d.getLayoutManager().m3495M0(c0269c);
    }

    @Override // androidx.core.view.C0258a
    /* JADX INFO: renamed from: j */
    public boolean mo1816j(View view, int i, Bundle bundle) {
        if (super.mo1816j(view, i, bundle)) {
            return true;
        }
        if (m3927o() || this.f3028d.getLayoutManager() == null) {
            return false;
        }
        return this.f3028d.getLayoutManager().m3528g1(i, bundle);
    }

    /* JADX INFO: renamed from: n */
    public C0258a m3926n() {
        return this.f3029e;
    }

    /* JADX INFO: renamed from: o */
    boolean m3927o() {
        return this.f3028d.m3305l0();
    }
}
