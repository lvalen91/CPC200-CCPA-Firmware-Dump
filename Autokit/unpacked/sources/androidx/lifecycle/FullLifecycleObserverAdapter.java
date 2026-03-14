package androidx.lifecycle;

import androidx.lifecycle.AbstractC0392f;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class FullLifecycleObserverAdapter implements InterfaceC0394h {

    /* JADX INFO: renamed from: a */
    private final InterfaceC0390d f2472a;

    /* JADX INFO: renamed from: b */
    private final InterfaceC0394h f2473b;

    /* JADX INFO: renamed from: androidx.lifecycle.FullLifecycleObserverAdapter$a */
    static /* synthetic */ class C0379a {

        /* JADX INFO: renamed from: a */
        static final /* synthetic */ int[] f2474a;

        static {
            int[] iArr = new int[AbstractC0392f.b.values().length];
            f2474a = iArr;
            try {
                iArr[AbstractC0392f.b.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2474a[AbstractC0392f.b.ON_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2474a[AbstractC0392f.b.ON_RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2474a[AbstractC0392f.b.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2474a[AbstractC0392f.b.ON_STOP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2474a[AbstractC0392f.b.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2474a[AbstractC0392f.b.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    FullLifecycleObserverAdapter(InterfaceC0390d interfaceC0390d, InterfaceC0394h interfaceC0394h) {
        this.f2472a = interfaceC0390d;
        this.f2473b = interfaceC0394h;
    }

    @Override // androidx.lifecycle.InterfaceC0394h
    /* JADX INFO: renamed from: d */
    public void mo303d(InterfaceC0396j interfaceC0396j, AbstractC0392f.b bVar) {
        switch (C0379a.f2474a[bVar.ordinal()]) {
            case 1:
                this.f2472a.m2989c(interfaceC0396j);
                break;
            case 2:
                this.f2472a.m2992g(interfaceC0396j);
                break;
            case 3:
                this.f2472a.m2987a(interfaceC0396j);
                break;
            case 4:
                this.f2472a.m2990e(interfaceC0396j);
                break;
            case 5:
                this.f2472a.m2991f(interfaceC0396j);
                break;
            case 6:
                this.f2472a.m2988b(interfaceC0396j);
                break;
            case 7:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        InterfaceC0394h interfaceC0394h = this.f2473b;
        if (interfaceC0394h != null) {
            interfaceC0394h.mo303d(interfaceC0396j, bVar);
        }
    }
}
