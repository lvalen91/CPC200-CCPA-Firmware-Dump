package c.g.i;

import java.util.Locale;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class e {
    public static final c.g.i.d a = new C0055e(null, false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final c.g.i.d f1231b = new C0055e(null, true);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final c.g.i.d f1232c = new C0055e(b.a, false);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final c.g.i.d f1233d = new C0055e(b.a, true);

    private static class a implements c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final a f1234b = new a(true);
        private final boolean a;

        private a(boolean z) {
            this.a = z;
        }

        @Override // c.g.i.e.c
        public int a(CharSequence charSequence, int i, int i2) {
            int i3 = i2 + i;
            boolean z = false;
            while (i < i3) {
                int iA = e.a(Character.getDirectionality(charSequence.charAt(i)));
                if (iA != 0) {
                    if (iA != 1) {
                        continue;
                        i++;
                    } else if (!this.a) {
                        return 1;
                    }
                } else if (this.a) {
                    return 0;
                }
                z = true;
                i++;
            }
            if (z) {
                return this.a ? 1 : 0;
            }
            return 2;
        }
    }

    private static class b implements c {
        static final b a = new b();

        private b() {
        }

        @Override // c.g.i.e.c
        public int a(CharSequence charSequence, int i, int i2) {
            int i3 = i2 + i;
            int iB = 2;
            while (i < i3 && iB == 2) {
                iB = e.b(Character.getDirectionality(charSequence.charAt(i)));
                i++;
            }
            return iB;
        }
    }

    private interface c {
        int a(CharSequence charSequence, int i, int i2);
    }

    private static abstract class d implements c.g.i.d {
        private final c a;

        d(c cVar) {
            this.a = cVar;
        }

        private boolean c(CharSequence charSequence, int i, int i2) {
            int iA = this.a.a(charSequence, i, i2);
            if (iA == 0) {
                return true;
            }
            if (iA != 1) {
                return b();
            }
            return false;
        }

        @Override // c.g.i.d
        public boolean a(CharSequence charSequence, int i, int i2) {
            if (charSequence == null || i < 0 || i2 < 0 || charSequence.length() - i2 < i) {
                throw new IllegalArgumentException();
            }
            return this.a == null ? b() : c(charSequence, i, i2);
        }

        protected abstract boolean b();
    }

    /* JADX INFO: renamed from: c.g.i.e$e, reason: collision with other inner class name */
    private static class C0055e extends d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f1235b;

        C0055e(c cVar, boolean z) {
            super(cVar);
            this.f1235b = z;
        }

        @Override // c.g.i.e.d
        protected boolean b() {
            return this.f1235b;
        }
    }

    private static class f extends d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final f f1236b = new f();

        f() {
            super(null);
        }

        @Override // c.g.i.e.d
        protected boolean b() {
            return c.g.i.f.b(Locale.getDefault()) == 1;
        }
    }

    static {
        a aVar = a.f1234b;
        f fVar = f.f1236b;
    }

    static int a(int i) {
        if (i != 0) {
            return (i == 1 || i == 2) ? 0 : 2;
        }
        return 1;
    }

    static int b(int i) {
        if (i != 0) {
            if (i == 1 || i == 2) {
                return 0;
            }
            switch (i) {
                case 14:
                case 15:
                    break;
                case 16:
                case 17:
                    return 0;
                default:
                    return 2;
            }
        }
        return 1;
    }
}
