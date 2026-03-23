package androidx.lifecycle;

import android.annotation.SuppressLint;
import androidx.lifecycle.AbstractC0392f;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import p016c.p025b.p026a.p027a.C0520a;
import p016c.p025b.p026a.p028b.C0523a;
import p016c.p025b.p026a.p028b.C0524b;

/* JADX INFO: renamed from: androidx.lifecycle.k */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0397k extends AbstractC0392f {

    /* JADX INFO: renamed from: a */
    private C0523a<InterfaceC0395i, a> f2517a;

    /* JADX INFO: renamed from: b */
    private AbstractC0392f.c f2518b;

    /* JADX INFO: renamed from: c */
    private final WeakReference<InterfaceC0396j> f2519c;

    /* JADX INFO: renamed from: d */
    private int f2520d;

    /* JADX INFO: renamed from: e */
    private boolean f2521e;

    /* JADX INFO: renamed from: f */
    private boolean f2522f;

    /* JADX INFO: renamed from: g */
    private ArrayList<AbstractC0392f.c> f2523g;

    /* JADX INFO: renamed from: h */
    private final boolean f2524h;

    /* JADX INFO: renamed from: androidx.lifecycle.k$a */
    static class a {

        /* JADX INFO: renamed from: a */
        AbstractC0392f.c f2525a;

        /* JADX INFO: renamed from: b */
        InterfaceC0394h f2526b;

        a(InterfaceC0395i interfaceC0395i, AbstractC0392f.c cVar) {
            this.f2526b = C0399m.m3021f(interfaceC0395i);
            this.f2525a = cVar;
        }

        /* JADX INFO: renamed from: a */
        void m3015a(InterfaceC0396j interfaceC0396j, AbstractC0392f.b bVar) {
            AbstractC0392f.c cVarM2999b = bVar.m2999b();
            this.f2525a = C0397k.m3007k(this.f2525a, cVarM2999b);
            this.f2526b.mo303d(interfaceC0396j, bVar);
            this.f2525a = cVarM2999b;
        }
    }

    public C0397k(InterfaceC0396j interfaceC0396j) {
        this(interfaceC0396j, true);
    }

    /* JADX INFO: renamed from: d */
    private void m3002d(InterfaceC0396j interfaceC0396j) {
        Iterator<Map.Entry<InterfaceC0395i, a>> itM4165a = this.f2517a.m4165a();
        while (itM4165a.hasNext() && !this.f2522f) {
            Map.Entry<InterfaceC0395i, a> next = itM4165a.next();
            a value = next.getValue();
            while (value.f2525a.compareTo(this.f2518b) > 0 && !this.f2522f && this.f2517a.contains(next.getKey())) {
                AbstractC0392f.b bVarM2997a = AbstractC0392f.b.m2997a(value.f2525a);
                if (bVarM2997a == null) {
                    throw new IllegalStateException("no event down from " + value.f2525a);
                }
                m3010n(bVarM2997a.m2999b());
                value.m3015a(interfaceC0396j, bVarM2997a);
                m3009m();
            }
        }
    }

    /* JADX INFO: renamed from: e */
    private AbstractC0392f.c m3003e(InterfaceC0395i interfaceC0395i) {
        Map.Entry<InterfaceC0395i, a> entryM4164i = this.f2517a.m4164i(interfaceC0395i);
        AbstractC0392f.c cVar = null;
        AbstractC0392f.c cVar2 = entryM4164i != null ? entryM4164i.getValue().f2525a : null;
        if (!this.f2523g.isEmpty()) {
            cVar = this.f2523g.get(r0.size() - 1);
        }
        return m3007k(m3007k(this.f2518b, cVar2), cVar);
    }

    @SuppressLint({"RestrictedApi"})
    /* JADX INFO: renamed from: f */
    private void m3004f(String str) {
        if (!this.f2524h || C0520a.m4159b().mo4160a()) {
            return;
        }
        throw new IllegalStateException("Method " + str + " must be called on the main thread");
    }

    /* JADX INFO: renamed from: g */
    private void m3005g(InterfaceC0396j interfaceC0396j) {
        C0524b<InterfaceC0395i, a>.d dVarM4167d = this.f2517a.m4167d();
        while (dVarM4167d.hasNext() && !this.f2522f) {
            Map.Entry next = dVarM4167d.next();
            a aVar = (a) next.getValue();
            while (aVar.f2525a.compareTo(this.f2518b) < 0 && !this.f2522f && this.f2517a.contains((InterfaceC0395i) next.getKey())) {
                m3010n(aVar.f2525a);
                AbstractC0392f.b bVarM2998c = AbstractC0392f.b.m2998c(aVar.f2525a);
                if (bVarM2998c == null) {
                    throw new IllegalStateException("no event up from " + aVar.f2525a);
                }
                aVar.m3015a(interfaceC0396j, bVarM2998c);
                m3009m();
            }
        }
    }

    /* JADX INFO: renamed from: i */
    private boolean m3006i() {
        if (this.f2517a.size() == 0) {
            return true;
        }
        AbstractC0392f.c cVar = this.f2517a.m4166b().getValue().f2525a;
        AbstractC0392f.c cVar2 = this.f2517a.m4168e().getValue().f2525a;
        return cVar == cVar2 && this.f2518b == cVar2;
    }

    /* JADX INFO: renamed from: k */
    static AbstractC0392f.c m3007k(AbstractC0392f.c cVar, AbstractC0392f.c cVar2) {
        return (cVar2 == null || cVar2.compareTo(cVar) >= 0) ? cVar : cVar2;
    }

    /* JADX INFO: renamed from: l */
    private void m3008l(AbstractC0392f.c cVar) {
        if (this.f2518b == cVar) {
            return;
        }
        this.f2518b = cVar;
        if (this.f2521e || this.f2520d != 0) {
            this.f2522f = true;
            return;
        }
        this.f2521e = true;
        m3011p();
        this.f2521e = false;
    }

    /* JADX INFO: renamed from: m */
    private void m3009m() {
        this.f2523g.remove(r0.size() - 1);
    }

    /* JADX INFO: renamed from: n */
    private void m3010n(AbstractC0392f.c cVar) {
        this.f2523g.add(cVar);
    }

    /* JADX INFO: renamed from: p */
    private void m3011p() {
        InterfaceC0396j interfaceC0396j = this.f2519c.get();
        if (interfaceC0396j == null) {
            throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state.");
        }
        while (!m3006i()) {
            this.f2522f = false;
            if (this.f2518b.compareTo(this.f2517a.m4166b().getValue().f2525a) < 0) {
                m3002d(interfaceC0396j);
            }
            Map.Entry<InterfaceC0395i, a> entryM4168e = this.f2517a.m4168e();
            if (!this.f2522f && entryM4168e != null && this.f2518b.compareTo(entryM4168e.getValue().f2525a) > 0) {
                m3005g(interfaceC0396j);
            }
        }
        this.f2522f = false;
    }

    @Override // androidx.lifecycle.AbstractC0392f
    /* JADX INFO: renamed from: a */
    public void mo2994a(InterfaceC0395i interfaceC0395i) {
        InterfaceC0396j interfaceC0396j;
        m3004f("addObserver");
        AbstractC0392f.c cVar = this.f2518b;
        AbstractC0392f.c cVar2 = AbstractC0392f.c.DESTROYED;
        if (cVar != cVar2) {
            cVar2 = AbstractC0392f.c.INITIALIZED;
        }
        a aVar = new a(interfaceC0395i, cVar2);
        if (this.f2517a.mo4162g(interfaceC0395i, aVar) == null && (interfaceC0396j = this.f2519c.get()) != null) {
            boolean z = this.f2520d != 0 || this.f2521e;
            AbstractC0392f.c cVarM3003e = m3003e(interfaceC0395i);
            this.f2520d++;
            while (aVar.f2525a.compareTo(cVarM3003e) < 0 && this.f2517a.contains(interfaceC0395i)) {
                m3010n(aVar.f2525a);
                AbstractC0392f.b bVarM2998c = AbstractC0392f.b.m2998c(aVar.f2525a);
                if (bVarM2998c == null) {
                    throw new IllegalStateException("no event up from " + aVar.f2525a);
                }
                aVar.m3015a(interfaceC0396j, bVarM2998c);
                m3009m();
                cVarM3003e = m3003e(interfaceC0395i);
            }
            if (!z) {
                m3011p();
            }
            this.f2520d--;
        }
    }

    @Override // androidx.lifecycle.AbstractC0392f
    /* JADX INFO: renamed from: b */
    public AbstractC0392f.c mo2995b() {
        return this.f2518b;
    }

    @Override // androidx.lifecycle.AbstractC0392f
    /* JADX INFO: renamed from: c */
    public void mo2996c(InterfaceC0395i interfaceC0395i) {
        m3004f("removeObserver");
        this.f2517a.mo4163h(interfaceC0395i);
    }

    /* JADX INFO: renamed from: h */
    public void m3012h(AbstractC0392f.b bVar) {
        m3004f("handleLifecycleEvent");
        m3008l(bVar.m2999b());
    }

    @Deprecated
    /* JADX INFO: renamed from: j */
    public void m3013j(AbstractC0392f.c cVar) {
        m3004f("markState");
        m3014o(cVar);
    }

    /* JADX INFO: renamed from: o */
    public void m3014o(AbstractC0392f.c cVar) {
        m3004f("setCurrentState");
        m3008l(cVar);
    }

    private C0397k(InterfaceC0396j interfaceC0396j, boolean z) {
        this.f2517a = new C0523a<>();
        this.f2520d = 0;
        this.f2521e = false;
        this.f2522f = false;
        this.f2523g = new ArrayList<>();
        this.f2519c = new WeakReference<>(interfaceC0396j);
        this.f2518b = AbstractC0392f.c.INITIALIZED;
        this.f2524h = z;
    }
}
