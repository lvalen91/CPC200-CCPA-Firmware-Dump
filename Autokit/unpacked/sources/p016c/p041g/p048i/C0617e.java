package p016c.p041g.p048i;

import java.util.Locale;

/* JADX INFO: renamed from: c.g.i.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0617e {

    /* JADX INFO: renamed from: a */
    public static final InterfaceC0616d f3801a = new e(null, false);

    /* JADX INFO: renamed from: b */
    public static final InterfaceC0616d f3802b = new e(null, true);

    /* JADX INFO: renamed from: c */
    public static final InterfaceC0616d f3803c = new e(b.f3807a, false);

    /* JADX INFO: renamed from: d */
    public static final InterfaceC0616d f3804d = new e(b.f3807a, true);

    /* JADX INFO: renamed from: c.g.i.e$a */
    private static class a implements c {

        /* JADX INFO: renamed from: b */
        static final a f3805b = new a(true);

        /* JADX INFO: renamed from: a */
        private final boolean f3806a;

        private a(boolean z) {
            this.f3806a = z;
        }

        @Override // p016c.p041g.p048i.C0617e.c
        /* JADX INFO: renamed from: a */
        public int mo4840a(CharSequence charSequence, int i, int i2) {
            int i3 = i2 + i;
            boolean z = false;
            while (i < i3) {
                int iM4838a = C0617e.m4838a(Character.getDirectionality(charSequence.charAt(i)));
                if (iM4838a != 0) {
                    if (iM4838a != 1) {
                        continue;
                        i++;
                    } else if (!this.f3806a) {
                        return 1;
                    }
                } else if (this.f3806a) {
                    return 0;
                }
                z = true;
                i++;
            }
            if (z) {
                return this.f3806a ? 1 : 0;
            }
            return 2;
        }
    }

    /* JADX INFO: renamed from: c.g.i.e$b */
    private static class b implements c {

        /* JADX INFO: renamed from: a */
        static final b f3807a = new b();

        private b() {
        }

        @Override // p016c.p041g.p048i.C0617e.c
        /* JADX INFO: renamed from: a */
        public int mo4840a(CharSequence charSequence, int i, int i2) {
            int i3 = i2 + i;
            int iM4839b = 2;
            while (i < i3 && iM4839b == 2) {
                iM4839b = C0617e.m4839b(Character.getDirectionality(charSequence.charAt(i)));
                i++;
            }
            return iM4839b;
        }
    }

    /* JADX INFO: renamed from: c.g.i.e$c */
    private interface c {
        /* JADX INFO: renamed from: a */
        int mo4840a(CharSequence charSequence, int i, int i2);
    }

    /* JADX INFO: renamed from: c.g.i.e$d */
    private static abstract class d implements InterfaceC0616d {

        /* JADX INFO: renamed from: a */
        private final c f3808a;

        d(c cVar) {
            this.f3808a = cVar;
        }

        /* JADX INFO: renamed from: c */
        private boolean m4841c(CharSequence charSequence, int i, int i2) {
            int iMo4840a = this.f3808a.mo4840a(charSequence, i, i2);
            if (iMo4840a == 0) {
                return true;
            }
            if (iMo4840a != 1) {
                return mo4842b();
            }
            return false;
        }

        @Override // p016c.p041g.p048i.InterfaceC0616d
        /* JADX INFO: renamed from: a */
        public boolean mo4837a(CharSequence charSequence, int i, int i2) {
            if (charSequence == null || i < 0 || i2 < 0 || charSequence.length() - i2 < i) {
                throw new IllegalArgumentException();
            }
            return this.f3808a == null ? mo4842b() : m4841c(charSequence, i, i2);
        }

        /* JADX INFO: renamed from: b */
        protected abstract boolean mo4842b();
    }

    /* JADX INFO: renamed from: c.g.i.e$e */
    private static class e extends d {

        /* JADX INFO: renamed from: b */
        private final boolean f3809b;

        e(c cVar, boolean z) {
            super(cVar);
            this.f3809b = z;
        }

        @Override // p016c.p041g.p048i.C0617e.d
        /* JADX INFO: renamed from: b */
        protected boolean mo4842b() {
            return this.f3809b;
        }
    }

    /* JADX INFO: renamed from: c.g.i.e$f */
    private static class f extends d {

        /* JADX INFO: renamed from: b */
        static final f f3810b = new f();

        f() {
            super(null);
        }

        @Override // p016c.p041g.p048i.C0617e.d
        /* JADX INFO: renamed from: b */
        protected boolean mo4842b() {
            return C0618f.m4844b(Locale.getDefault()) == 1;
        }
    }

    static {
        a aVar = a.f3805b;
        f fVar = f.f3810b;
    }

    /* JADX INFO: renamed from: a */
    static int m4838a(int i) {
        if (i != 0) {
            return (i == 1 || i == 2) ? 0 : 2;
        }
        return 1;
    }

    /* JADX INFO: renamed from: b */
    static int m4839b(int i) {
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
