package androidx.lifecycle;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class f {

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f821b;

        static {
            int[] iArr = new int[b.values().length];
            f821b = iArr;
            try {
                iArr[b.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f821b[b.ON_STOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f821b[b.ON_START.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f821b[b.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f821b[b.ON_RESUME.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f821b[b.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f821b[b.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr2 = new int[c.values().length];
            a = iArr2;
            try {
                iArr2[c.CREATED.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[c.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                a[c.RESUMED.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                a[c.DESTROYED.ordinal()] = 4;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                a[c.INITIALIZED.ordinal()] = 5;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    public enum b {
        ON_CREATE,
        ON_START,
        ON_RESUME,
        ON_PAUSE,
        ON_STOP,
        ON_DESTROY,
        ON_ANY;

        public static b a(c cVar) {
            int i = a.a[cVar.ordinal()];
            if (i == 1) {
                return ON_DESTROY;
            }
            if (i == 2) {
                return ON_STOP;
            }
            if (i != 3) {
                return null;
            }
            return ON_PAUSE;
        }

        public static b c(c cVar) {
            int i = a.a[cVar.ordinal()];
            if (i == 1) {
                return ON_START;
            }
            if (i == 2) {
                return ON_RESUME;
            }
            if (i != 5) {
                return null;
            }
            return ON_CREATE;
        }

        public c b() {
            switch (a.f821b[ordinal()]) {
                case 1:
                case 2:
                    return c.CREATED;
                case 3:
                case 4:
                    return c.STARTED;
                case 5:
                    return c.RESUMED;
                case 6:
                    return c.DESTROYED;
                default:
                    throw new IllegalArgumentException(this + " has no target state");
            }
        }
    }

    public enum c {
        DESTROYED,
        INITIALIZED,
        CREATED,
        STARTED,
        RESUMED;

        public boolean a(c cVar) {
            return compareTo(cVar) >= 0;
        }
    }

    public f() {
        new AtomicReference();
    }

    public abstract void a(i iVar);

    public abstract c b();

    public abstract void c(i iVar);
}
