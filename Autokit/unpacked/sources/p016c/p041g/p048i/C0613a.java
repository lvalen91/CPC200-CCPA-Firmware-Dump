package p016c.p041g.p048i;

import android.text.SpannableStringBuilder;
import com.yalantis.ucrop.BuildConfig;
import java.util.Locale;

/* JADX INFO: renamed from: c.g.i.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0613a {

    /* JADX INFO: renamed from: d */
    static final InterfaceC0616d f3771d = C0617e.f3803c;

    /* JADX INFO: renamed from: e */
    private static final String f3772e = Character.toString(8206);

    /* JADX INFO: renamed from: f */
    private static final String f3773f = Character.toString(8207);

    /* JADX INFO: renamed from: g */
    static final C0613a f3774g = new C0613a(false, 2, f3771d);

    /* JADX INFO: renamed from: h */
    static final C0613a f3775h = new C0613a(true, 2, f3771d);

    /* JADX INFO: renamed from: a */
    private final boolean f3776a;

    /* JADX INFO: renamed from: b */
    private final int f3777b;

    /* JADX INFO: renamed from: c */
    private final InterfaceC0616d f3778c;

    /* JADX INFO: renamed from: c.g.i.a$a */
    public static final class a {

        /* JADX INFO: renamed from: a */
        private boolean f3779a;

        /* JADX INFO: renamed from: b */
        private int f3780b;

        /* JADX INFO: renamed from: c */
        private InterfaceC0616d f3781c;

        public a() {
            m4812c(C0613a.m4803e(Locale.getDefault()));
        }

        /* JADX INFO: renamed from: b */
        private static C0613a m4811b(boolean z) {
            return z ? C0613a.f3775h : C0613a.f3774g;
        }

        /* JADX INFO: renamed from: c */
        private void m4812c(boolean z) {
            this.f3779a = z;
            this.f3781c = C0613a.f3771d;
            this.f3780b = 2;
        }

        /* JADX INFO: renamed from: a */
        public C0613a m4813a() {
            return (this.f3780b == 2 && this.f3781c == C0613a.f3771d) ? m4811b(this.f3779a) : new C0613a(this.f3779a, this.f3780b, this.f3781c);
        }
    }

    /* JADX INFO: renamed from: c.g.i.a$b */
    private static class b {

        /* JADX INFO: renamed from: f */
        private static final byte[] f3782f = new byte[1792];

        /* JADX INFO: renamed from: a */
        private final CharSequence f3783a;

        /* JADX INFO: renamed from: b */
        private final boolean f3784b;

        /* JADX INFO: renamed from: c */
        private final int f3785c;

        /* JADX INFO: renamed from: d */
        private int f3786d;

        /* JADX INFO: renamed from: e */
        private char f3787e;

        static {
            for (int i = 0; i < 1792; i++) {
                f3782f[i] = Character.getDirectionality(i);
            }
        }

        b(CharSequence charSequence, boolean z) {
            this.f3783a = charSequence;
            this.f3784b = z;
            this.f3785c = charSequence.length();
        }

        /* JADX INFO: renamed from: c */
        private static byte m4814c(char c2) {
            return c2 < 1792 ? f3782f[c2] : Character.getDirectionality(c2);
        }

        /* JADX INFO: renamed from: f */
        private byte m4815f() {
            char cCharAt;
            int i = this.f3786d;
            do {
                int i2 = this.f3786d;
                if (i2 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f3783a;
                int i3 = i2 - 1;
                this.f3786d = i3;
                cCharAt = charSequence.charAt(i3);
                this.f3787e = cCharAt;
                if (cCharAt == '&') {
                    return (byte) 12;
                }
            } while (cCharAt != ';');
            this.f3786d = i;
            this.f3787e = ';';
            return (byte) 13;
        }

        /* JADX INFO: renamed from: g */
        private byte m4816g() {
            char cCharAt;
            do {
                int i = this.f3786d;
                if (i >= this.f3785c) {
                    return (byte) 12;
                }
                CharSequence charSequence = this.f3783a;
                this.f3786d = i + 1;
                cCharAt = charSequence.charAt(i);
                this.f3787e = cCharAt;
            } while (cCharAt != ';');
            return (byte) 12;
        }

        /* JADX INFO: renamed from: h */
        private byte m4817h() {
            char cCharAt;
            int i = this.f3786d;
            while (true) {
                int i2 = this.f3786d;
                if (i2 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f3783a;
                int i3 = i2 - 1;
                this.f3786d = i3;
                char cCharAt2 = charSequence.charAt(i3);
                this.f3787e = cCharAt2;
                if (cCharAt2 == '<') {
                    return (byte) 12;
                }
                if (cCharAt2 == '>') {
                    break;
                }
                if (cCharAt2 == '\"' || cCharAt2 == '\'') {
                    char c2 = this.f3787e;
                    do {
                        int i4 = this.f3786d;
                        if (i4 > 0) {
                            CharSequence charSequence2 = this.f3783a;
                            int i5 = i4 - 1;
                            this.f3786d = i5;
                            cCharAt = charSequence2.charAt(i5);
                            this.f3787e = cCharAt;
                        }
                    } while (cCharAt != c2);
                }
            }
            this.f3786d = i;
            this.f3787e = '>';
            return (byte) 13;
        }

        /* JADX INFO: renamed from: i */
        private byte m4818i() {
            char cCharAt;
            int i = this.f3786d;
            while (true) {
                int i2 = this.f3786d;
                if (i2 >= this.f3785c) {
                    this.f3786d = i;
                    this.f3787e = '<';
                    return (byte) 13;
                }
                CharSequence charSequence = this.f3783a;
                this.f3786d = i2 + 1;
                char cCharAt2 = charSequence.charAt(i2);
                this.f3787e = cCharAt2;
                if (cCharAt2 == '>') {
                    return (byte) 12;
                }
                if (cCharAt2 == '\"' || cCharAt2 == '\'') {
                    char c2 = this.f3787e;
                    do {
                        int i3 = this.f3786d;
                        if (i3 < this.f3785c) {
                            CharSequence charSequence2 = this.f3783a;
                            this.f3786d = i3 + 1;
                            cCharAt = charSequence2.charAt(i3);
                            this.f3787e = cCharAt;
                        }
                    } while (cCharAt != c2);
                }
            }
        }

        /* JADX INFO: renamed from: a */
        byte m4819a() {
            char cCharAt = this.f3783a.charAt(this.f3786d - 1);
            this.f3787e = cCharAt;
            if (Character.isLowSurrogate(cCharAt)) {
                int iCodePointBefore = Character.codePointBefore(this.f3783a, this.f3786d);
                this.f3786d -= Character.charCount(iCodePointBefore);
                return Character.getDirectionality(iCodePointBefore);
            }
            this.f3786d--;
            byte bM4814c = m4814c(this.f3787e);
            if (!this.f3784b) {
                return bM4814c;
            }
            char c2 = this.f3787e;
            return c2 == '>' ? m4817h() : c2 == ';' ? m4815f() : bM4814c;
        }

        /* JADX INFO: renamed from: b */
        byte m4820b() {
            char cCharAt = this.f3783a.charAt(this.f3786d);
            this.f3787e = cCharAt;
            if (Character.isHighSurrogate(cCharAt)) {
                int iCodePointAt = Character.codePointAt(this.f3783a, this.f3786d);
                this.f3786d += Character.charCount(iCodePointAt);
                return Character.getDirectionality(iCodePointAt);
            }
            this.f3786d++;
            byte bM4814c = m4814c(this.f3787e);
            if (!this.f3784b) {
                return bM4814c;
            }
            char c2 = this.f3787e;
            return c2 == '<' ? m4818i() : c2 == '&' ? m4816g() : bM4814c;
        }

        /* JADX INFO: renamed from: d */
        int m4821d() {
            this.f3786d = 0;
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            while (this.f3786d < this.f3785c && i == 0) {
                byte bM4820b = m4820b();
                if (bM4820b != 0) {
                    if (bM4820b == 1 || bM4820b == 2) {
                        if (i3 == 0) {
                            return 1;
                        }
                    } else if (bM4820b != 9) {
                        switch (bM4820b) {
                            case 14:
                            case 15:
                                i3++;
                                i2 = -1;
                                continue;
                            case 16:
                            case 17:
                                i3++;
                                i2 = 1;
                                continue;
                            case 18:
                                i3--;
                                i2 = 0;
                                continue;
                        }
                    }
                } else if (i3 == 0) {
                    return -1;
                }
                i = i3;
            }
            if (i == 0) {
                return 0;
            }
            if (i2 != 0) {
                return i2;
            }
            while (this.f3786d > 0) {
                switch (m4819a()) {
                    case 14:
                    case 15:
                        if (i == i3) {
                            return -1;
                        }
                        break;
                    case 16:
                    case 17:
                        if (i == i3) {
                            return 1;
                        }
                        break;
                    case 18:
                        i3++;
                        continue;
                }
                i3--;
            }
            return 0;
        }

        /* JADX INFO: renamed from: e */
        int m4822e() {
            this.f3786d = this.f3785c;
            int i = 0;
            int i2 = 0;
            while (this.f3786d > 0) {
                byte bM4819a = m4819a();
                if (bM4819a == 0) {
                    if (i == 0) {
                        return -1;
                    }
                    if (i2 == 0) {
                        i2 = i;
                    }
                } else if (bM4819a == 1 || bM4819a == 2) {
                    if (i == 0) {
                        return 1;
                    }
                    if (i2 == 0) {
                        i2 = i;
                    }
                } else if (bM4819a != 9) {
                    switch (bM4819a) {
                        case 14:
                        case 15:
                            if (i2 == i) {
                                return -1;
                            }
                            i--;
                            break;
                        case 16:
                        case 17:
                            if (i2 == i) {
                                return 1;
                            }
                            i--;
                            break;
                        case 18:
                            i++;
                            break;
                        default:
                            if (i2 == 0) {
                                i2 = i;
                            }
                            break;
                    }
                } else {
                    continue;
                }
            }
            return 0;
        }
    }

    C0613a(boolean z, int i, InterfaceC0616d interfaceC0616d) {
        this.f3776a = z;
        this.f3777b = i;
        this.f3778c = interfaceC0616d;
    }

    /* JADX INFO: renamed from: a */
    private static int m4800a(CharSequence charSequence) {
        return new b(charSequence, false).m4821d();
    }

    /* JADX INFO: renamed from: b */
    private static int m4801b(CharSequence charSequence) {
        return new b(charSequence, false).m4822e();
    }

    /* JADX INFO: renamed from: c */
    public static C0613a m4802c() {
        return new a().m4813a();
    }

    /* JADX INFO: renamed from: e */
    static boolean m4803e(Locale locale) {
        return C0618f.m4844b(locale) == 1;
    }

    /* JADX INFO: renamed from: f */
    private String m4804f(CharSequence charSequence, InterfaceC0616d interfaceC0616d) {
        boolean zMo4837a = interfaceC0616d.mo4837a(charSequence, 0, charSequence.length());
        return (this.f3776a || !(zMo4837a || m4801b(charSequence) == 1)) ? this.f3776a ? (!zMo4837a || m4801b(charSequence) == -1) ? f3773f : BuildConfig.FLAVOR : BuildConfig.FLAVOR : f3772e;
    }

    /* JADX INFO: renamed from: g */
    private String m4805g(CharSequence charSequence, InterfaceC0616d interfaceC0616d) {
        boolean zMo4837a = interfaceC0616d.mo4837a(charSequence, 0, charSequence.length());
        return (this.f3776a || !(zMo4837a || m4800a(charSequence) == 1)) ? this.f3776a ? (!zMo4837a || m4800a(charSequence) == -1) ? f3773f : BuildConfig.FLAVOR : BuildConfig.FLAVOR : f3772e;
    }

    /* JADX INFO: renamed from: d */
    public boolean m4806d() {
        return (this.f3777b & 2) != 0;
    }

    /* JADX INFO: renamed from: h */
    public CharSequence m4807h(CharSequence charSequence) {
        return m4808i(charSequence, this.f3778c, true);
    }

    /* JADX INFO: renamed from: i */
    public CharSequence m4808i(CharSequence charSequence, InterfaceC0616d interfaceC0616d, boolean z) {
        if (charSequence == null) {
            return null;
        }
        boolean zMo4837a = interfaceC0616d.mo4837a(charSequence, 0, charSequence.length());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (m4806d() && z) {
            spannableStringBuilder.append((CharSequence) m4805g(charSequence, zMo4837a ? C0617e.f3802b : C0617e.f3801a));
        }
        if (zMo4837a != this.f3776a) {
            spannableStringBuilder.append(zMo4837a ? (char) 8235 : (char) 8234);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append((char) 8236);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        if (z) {
            spannableStringBuilder.append((CharSequence) m4804f(charSequence, zMo4837a ? C0617e.f3802b : C0617e.f3801a));
        }
        return spannableStringBuilder;
    }

    /* JADX INFO: renamed from: j */
    public String m4809j(String str) {
        return m4810k(str, this.f3778c, true);
    }

    /* JADX INFO: renamed from: k */
    public String m4810k(String str, InterfaceC0616d interfaceC0616d, boolean z) {
        if (str == null) {
            return null;
        }
        return m4808i(str, interfaceC0616d, z).toString();
    }
}
