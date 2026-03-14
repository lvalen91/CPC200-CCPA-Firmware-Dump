package androidx.lifecycle;

import androidx.lifecycle.AbstractC0392f;
import p016c.p025b.p026a.p027a.C0520a;
import p016c.p025b.p026a.p028b.C0524b;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class LiveData<T> {

    /* JADX INFO: renamed from: j */
    static final Object f2476j = new Object();

    /* JADX INFO: renamed from: a */
    final Object f2477a;

    /* JADX INFO: renamed from: b */
    private C0524b<InterfaceC0402p<? super T>, LiveData<T>.AbstractC0381b> f2478b;

    /* JADX INFO: renamed from: c */
    int f2479c;

    /* JADX INFO: renamed from: d */
    private boolean f2480d;

    /* JADX INFO: renamed from: e */
    private volatile Object f2481e;

    /* JADX INFO: renamed from: f */
    volatile Object f2482f;

    /* JADX INFO: renamed from: g */
    private int f2483g;

    /* JADX INFO: renamed from: h */
    private boolean f2484h;

    /* JADX INFO: renamed from: i */
    private boolean f2485i;

    class LifecycleBoundObserver extends LiveData<T>.AbstractC0381b implements InterfaceC0394h {

        /* JADX INFO: renamed from: e */
        final InterfaceC0396j f2486e;

        LifecycleBoundObserver(InterfaceC0396j interfaceC0396j, InterfaceC0402p<? super T> interfaceC0402p) {
            super(interfaceC0402p);
            this.f2486e = interfaceC0396j;
        }

        @Override // androidx.lifecycle.InterfaceC0394h
        /* JADX INFO: renamed from: d */
        public void mo303d(InterfaceC0396j interfaceC0396j, AbstractC0392f.b bVar) {
            AbstractC0392f.c cVarMo2995b = this.f2486e.getLifecycle().mo2995b();
            if (cVarMo2995b == AbstractC0392f.c.DESTROYED) {
                LiveData.this.mo2964j(this.f2488a);
                return;
            }
            AbstractC0392f.c cVar = null;
            while (cVar != cVarMo2995b) {
                m2969h(mo2968k());
                cVar = cVarMo2995b;
                cVarMo2995b = this.f2486e.getLifecycle().mo2995b();
            }
        }

        @Override // androidx.lifecycle.LiveData.AbstractC0381b
        /* JADX INFO: renamed from: i */
        void mo2966i() {
            this.f2486e.getLifecycle().mo2996c(this);
        }

        @Override // androidx.lifecycle.LiveData.AbstractC0381b
        /* JADX INFO: renamed from: j */
        boolean mo2967j(InterfaceC0396j interfaceC0396j) {
            return this.f2486e == interfaceC0396j;
        }

        @Override // androidx.lifecycle.LiveData.AbstractC0381b
        /* JADX INFO: renamed from: k */
        boolean mo2968k() {
            return this.f2486e.getLifecycle().mo2995b().m3000a(AbstractC0392f.c.STARTED);
        }
    }

    /* JADX INFO: renamed from: androidx.lifecycle.LiveData$a */
    private class C0380a extends LiveData<T>.AbstractC0381b {
        C0380a(LiveData liveData, InterfaceC0402p<? super T> interfaceC0402p) {
            super(interfaceC0402p);
        }

        @Override // androidx.lifecycle.LiveData.AbstractC0381b
        /* JADX INFO: renamed from: k */
        boolean mo2968k() {
            return true;
        }
    }

    /* JADX INFO: renamed from: androidx.lifecycle.LiveData$b */
    private abstract class AbstractC0381b {

        /* JADX INFO: renamed from: a */
        final InterfaceC0402p<? super T> f2488a;

        /* JADX INFO: renamed from: b */
        boolean f2489b;

        /* JADX INFO: renamed from: c */
        int f2490c = -1;

        AbstractC0381b(InterfaceC0402p<? super T> interfaceC0402p) {
            this.f2488a = interfaceC0402p;
        }

        /* JADX INFO: renamed from: h */
        void m2969h(boolean z) {
            if (z == this.f2489b) {
                return;
            }
            this.f2489b = z;
            LiveData.this.m2957b(z ? 1 : -1);
            if (this.f2489b) {
                LiveData.this.m2958d(this);
            }
        }

        /* JADX INFO: renamed from: i */
        void mo2966i() {
        }

        /* JADX INFO: renamed from: j */
        boolean mo2967j(InterfaceC0396j interfaceC0396j) {
            return false;
        }

        /* JADX INFO: renamed from: k */
        abstract boolean mo2968k();
    }

    public LiveData(T t) {
        this.f2477a = new Object();
        this.f2478b = new C0524b<>();
        this.f2479c = 0;
        this.f2482f = f2476j;
        this.f2481e = t;
        this.f2483g = 0;
    }

    /* JADX INFO: renamed from: a */
    static void m2955a(String str) {
        if (C0520a.m4159b().mo4160a()) {
            return;
        }
        throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
    }

    /* JADX INFO: renamed from: c */
    private void m2956c(LiveData<T>.AbstractC0381b abstractC0381b) {
        if (abstractC0381b.f2489b) {
            if (!abstractC0381b.mo2968k()) {
                abstractC0381b.m2969h(false);
                return;
            }
            int i = abstractC0381b.f2490c;
            int i2 = this.f2483g;
            if (i >= i2) {
                return;
            }
            abstractC0381b.f2490c = i2;
            abstractC0381b.f2488a.mo2340c((Object) this.f2481e);
        }
    }

    /* JADX INFO: renamed from: b */
    void m2957b(int i) {
        int i2 = this.f2479c;
        this.f2479c = i + i2;
        if (this.f2480d) {
            return;
        }
        this.f2480d = true;
        while (true) {
            try {
                if (i2 == this.f2479c) {
                    return;
                }
                boolean z = i2 == 0 && this.f2479c > 0;
                boolean z2 = i2 > 0 && this.f2479c == 0;
                int i3 = this.f2479c;
                if (z) {
                    mo2962h();
                } else if (z2) {
                    mo2963i();
                }
                i2 = i3;
            } finally {
                this.f2480d = false;
            }
        }
    }

    /* JADX INFO: renamed from: d */
    void m2958d(LiveData<T>.AbstractC0381b abstractC0381b) {
        if (this.f2484h) {
            this.f2485i = true;
            return;
        }
        this.f2484h = true;
        do {
            this.f2485i = false;
            if (abstractC0381b != null) {
                m2956c(abstractC0381b);
                abstractC0381b = null;
            } else {
                C0524b<InterfaceC0402p<? super T>, LiveData<T>.AbstractC0381b>.d dVarM4167d = this.f2478b.m4167d();
                while (dVarM4167d.hasNext()) {
                    m2956c((AbstractC0381b) dVarM4167d.next().getValue());
                    if (this.f2485i) {
                        break;
                    }
                }
            }
        } while (this.f2485i);
        this.f2484h = false;
    }

    /* JADX INFO: renamed from: e */
    public T m2959e() {
        T t = (T) this.f2481e;
        if (t != f2476j) {
            return t;
        }
        return null;
    }

    /* JADX INFO: renamed from: f */
    public void m2960f(InterfaceC0396j interfaceC0396j, InterfaceC0402p<? super T> interfaceC0402p) {
        m2955a("observe");
        if (interfaceC0396j.getLifecycle().mo2995b() == AbstractC0392f.c.DESTROYED) {
            return;
        }
        LifecycleBoundObserver lifecycleBoundObserver = new LifecycleBoundObserver(interfaceC0396j, interfaceC0402p);
        LiveData<T>.AbstractC0381b abstractC0381bMo4162g = this.f2478b.mo4162g(interfaceC0402p, lifecycleBoundObserver);
        if (abstractC0381bMo4162g != null && !abstractC0381bMo4162g.mo2967j(interfaceC0396j)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (abstractC0381bMo4162g != null) {
            return;
        }
        interfaceC0396j.getLifecycle().mo2994a(lifecycleBoundObserver);
    }

    /* JADX INFO: renamed from: g */
    public void m2961g(InterfaceC0402p<? super T> interfaceC0402p) {
        m2955a("observeForever");
        C0380a c0380a = new C0380a(this, interfaceC0402p);
        LiveData<T>.AbstractC0381b abstractC0381bMo4162g = this.f2478b.mo4162g(interfaceC0402p, c0380a);
        if (abstractC0381bMo4162g instanceof LifecycleBoundObserver) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (abstractC0381bMo4162g != null) {
            return;
        }
        c0380a.m2969h(true);
    }

    /* JADX INFO: renamed from: h */
    protected void mo2962h() {
    }

    /* JADX INFO: renamed from: i */
    protected void mo2963i() {
    }

    /* JADX INFO: renamed from: j */
    public void mo2964j(InterfaceC0402p<? super T> interfaceC0402p) {
        m2955a("removeObserver");
        LiveData<T>.AbstractC0381b abstractC0381bMo4163h = this.f2478b.mo4163h(interfaceC0402p);
        if (abstractC0381bMo4163h == null) {
            return;
        }
        abstractC0381bMo4163h.mo2966i();
        abstractC0381bMo4163h.m2969h(false);
    }

    /* JADX INFO: renamed from: k */
    protected void mo2965k(T t) {
        m2955a("setValue");
        this.f2483g++;
        this.f2481e = t;
        m2958d(null);
    }

    public LiveData() {
        this.f2477a = new Object();
        this.f2478b = new C0524b<>();
        this.f2479c = 0;
        this.f2482f = f2476j;
        this.f2481e = f2476j;
        this.f2483g = -1;
    }
}
