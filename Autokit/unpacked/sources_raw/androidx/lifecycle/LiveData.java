package androidx.lifecycle;

import androidx.lifecycle.f;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class LiveData<T> {
    static final Object j = new Object();
    final Object a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c.b.a.b.b<p<? super T>, LiveData<T>.b> f806b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f807c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f808d;
    private volatile Object e;
    volatile Object f;
    private int g;
    private boolean h;
    private boolean i;

    class LifecycleBoundObserver extends LiveData<T>.b implements h {
        final j e;

        LifecycleBoundObserver(j jVar, p<? super T> pVar) {
            super(pVar);
            this.e = jVar;
        }

        @Override // androidx.lifecycle.h
        public void d(j jVar, f.b bVar) {
            f.c cVarB = this.e.getLifecycle().b();
            if (cVarB == f.c.DESTROYED) {
                LiveData.this.j(this.a);
                return;
            }
            f.c cVar = null;
            while (cVar != cVarB) {
                h(k());
                cVar = cVarB;
                cVarB = this.e.getLifecycle().b();
            }
        }

        @Override // androidx.lifecycle.LiveData.b
        void i() {
            this.e.getLifecycle().c(this);
        }

        @Override // androidx.lifecycle.LiveData.b
        boolean j(j jVar) {
            return this.e == jVar;
        }

        @Override // androidx.lifecycle.LiveData.b
        boolean k() {
            return this.e.getLifecycle().b().a(f.c.STARTED);
        }
    }

    private class a extends LiveData<T>.b {
        a(LiveData liveData, p<? super T> pVar) {
            super(pVar);
        }

        @Override // androidx.lifecycle.LiveData.b
        boolean k() {
            return true;
        }
    }

    private abstract class b {
        final p<? super T> a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f809b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f810c = -1;

        b(p<? super T> pVar) {
            this.a = pVar;
        }

        void h(boolean z) {
            if (z == this.f809b) {
                return;
            }
            this.f809b = z;
            LiveData.this.b(z ? 1 : -1);
            if (this.f809b) {
                LiveData.this.d(this);
            }
        }

        void i() {
        }

        boolean j(j jVar) {
            return false;
        }

        abstract boolean k();
    }

    public LiveData(T t) {
        this.a = new Object();
        this.f806b = new c.b.a.b.b<>();
        this.f807c = 0;
        this.f = j;
        this.e = t;
        this.g = 0;
    }

    static void a(String str) {
        if (c.b.a.a.a.b().a()) {
            return;
        }
        throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
    }

    private void c(LiveData<T>.b bVar) {
        if (bVar.f809b) {
            if (!bVar.k()) {
                bVar.h(false);
                return;
            }
            int i = bVar.f810c;
            int i2 = this.g;
            if (i >= i2) {
                return;
            }
            bVar.f810c = i2;
            bVar.a.c((Object) this.e);
        }
    }

    void b(int i) {
        int i2 = this.f807c;
        this.f807c = i + i2;
        if (this.f808d) {
            return;
        }
        this.f808d = true;
        while (true) {
            try {
                if (i2 == this.f807c) {
                    return;
                }
                boolean z = i2 == 0 && this.f807c > 0;
                boolean z2 = i2 > 0 && this.f807c == 0;
                int i3 = this.f807c;
                if (z) {
                    h();
                } else if (z2) {
                    i();
                }
                i2 = i3;
            } finally {
                this.f808d = false;
            }
        }
    }

    void d(LiveData<T>.b bVar) {
        if (this.h) {
            this.i = true;
            return;
        }
        this.h = true;
        do {
            this.i = false;
            if (bVar != null) {
                c(bVar);
                bVar = null;
            } else {
                c.b.a.b.b<p<? super T>, LiveData<T>.b>.d dVarD = this.f806b.d();
                while (dVarD.hasNext()) {
                    c((b) dVarD.next().getValue());
                    if (this.i) {
                        break;
                    }
                }
            }
        } while (this.i);
        this.h = false;
    }

    public T e() {
        T t = (T) this.e;
        if (t != j) {
            return t;
        }
        return null;
    }

    public void f(j jVar, p<? super T> pVar) {
        a("observe");
        if (jVar.getLifecycle().b() == f.c.DESTROYED) {
            return;
        }
        LifecycleBoundObserver lifecycleBoundObserver = new LifecycleBoundObserver(jVar, pVar);
        LiveData<T>.b bVarG = this.f806b.g(pVar, lifecycleBoundObserver);
        if (bVarG != null && !bVarG.j(jVar)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (bVarG != null) {
            return;
        }
        jVar.getLifecycle().a(lifecycleBoundObserver);
    }

    public void g(p<? super T> pVar) {
        a("observeForever");
        a aVar = new a(this, pVar);
        LiveData<T>.b bVarG = this.f806b.g(pVar, aVar);
        if (bVarG instanceof LifecycleBoundObserver) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (bVarG != null) {
            return;
        }
        aVar.h(true);
    }

    protected void h() {
    }

    protected void i() {
    }

    public void j(p<? super T> pVar) {
        a("removeObserver");
        LiveData<T>.b bVarH = this.f806b.h(pVar);
        if (bVarH == null) {
            return;
        }
        bVarH.i();
        bVarH.h(false);
    }

    protected void k(T t) {
        a("setValue");
        this.g++;
        this.e = t;
        d(null);
    }

    public LiveData() {
        this.a = new Object();
        this.f806b = new c.b.a.b.b<>();
        this.f807c = 0;
        this.f = j;
        this.e = j;
        this.g = -1;
    }
}
