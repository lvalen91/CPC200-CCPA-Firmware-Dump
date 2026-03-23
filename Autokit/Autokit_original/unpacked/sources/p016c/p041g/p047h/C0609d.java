package p016c.p041g.p047h;

import android.util.Base64;
import java.util.List;
import p016c.p041g.p049j.C0626h;

/* JADX INFO: renamed from: c.g.h.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0609d {

    /* JADX INFO: renamed from: a */
    private final String f3734a;

    /* JADX INFO: renamed from: b */
    private final String f3735b;

    /* JADX INFO: renamed from: c */
    private final String f3736c;

    /* JADX INFO: renamed from: d */
    private final List<List<byte[]>> f3737d;

    /* JADX INFO: renamed from: e */
    private final int f3738e;

    /* JADX INFO: renamed from: f */
    private final String f3739f;

    public C0609d(String str, String str2, String str3, List<List<byte[]>> list) {
        C0626h.m4855e(str);
        this.f3734a = str;
        C0626h.m4855e(str2);
        this.f3735b = str2;
        C0626h.m4855e(str3);
        this.f3736c = str3;
        C0626h.m4855e(list);
        this.f3737d = list;
        this.f3738e = 0;
        this.f3739f = m4769a(str, str2, str3);
    }

    /* JADX INFO: renamed from: a */
    private String m4769a(String str, String str2, String str3) {
        return str + "-" + str2 + "-" + str3;
    }

    /* JADX INFO: renamed from: b */
    public List<List<byte[]>> m4770b() {
        return this.f3737d;
    }

    /* JADX INFO: renamed from: c */
    public int m4771c() {
        return this.f3738e;
    }

    /* JADX INFO: renamed from: d */
    String m4772d() {
        return this.f3739f;
    }

    /* JADX INFO: renamed from: e */
    public String m4773e() {
        return this.f3734a;
    }

    /* JADX INFO: renamed from: f */
    public String m4774f() {
        return this.f3735b;
    }

    /* JADX INFO: renamed from: g */
    public String m4775g() {
        return this.f3736c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.f3734a + ", mProviderPackage: " + this.f3735b + ", mQuery: " + this.f3736c + ", mCertificates:");
        for (int i = 0; i < this.f3737d.size(); i++) {
            sb.append(" [");
            List<byte[]> list = this.f3737d.get(i);
            for (int i2 = 0; i2 < list.size(); i2++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString(list.get(i2), 0));
                sb.append("\"");
            }
            sb.append(" ]");
        }
        sb.append("}");
        sb.append("mCertificatesArray: " + this.f3738e);
        return sb.toString();
    }
}
