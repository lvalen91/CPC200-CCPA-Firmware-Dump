package androidx.lifecycle;

import androidx.lifecycle.f;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class FullLifecycleObserverAdapter implements h {
    private final d a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h f805b;

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[f.b.values().length];
            a = iArr;
            try {
                iArr[f.b.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[f.b.ON_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[f.b.ON_RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[f.b.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[f.b.ON_STOP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[f.b.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[f.b.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    FullLifecycleObserverAdapter(d dVar, h hVar) {
        this.a = dVar;
        this.f805b = hVar;
    }

    @Override // androidx.lifecycle.h
    public void d(j jVar, f.b bVar) {
        switch (a.a[bVar.ordinal()]) {
            case 1:
                this.a.c(jVar);
                break;
            case 2:
                this.a.g(jVar);
                break;
            case 3:
                this.a.a(jVar);
                break;
            case 4:
                this.a.e(jVar);
                break;
            case 5:
                this.a.f(jVar);
                break;
            case 6:
                this.a.b(jVar);
                break;
            case 7:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        h hVar = this.f805b;
        if (hVar != null) {
            hVar.d(jVar, bVar);
        }
    }
}
