package c.g.h;

import android.util.Base64;
import c.g.j.h;
import java.util.List;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class d {
    private final String a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f1189b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f1190c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<List<byte[]>> f1191d;
    private final int e;
    private final String f;

    public d(String str, String str2, String str3, List<List<byte[]>> list) {
        h.e(str);
        this.a = str;
        h.e(str2);
        this.f1189b = str2;
        h.e(str3);
        this.f1190c = str3;
        h.e(list);
        this.f1191d = list;
        this.e = 0;
        this.f = a(str, str2, str3);
    }

    private String a(String str, String str2, String str3) {
        return str + "-" + str2 + "-" + str3;
    }

    public List<List<byte[]>> b() {
        return this.f1191d;
    }

    public int c() {
        return this.e;
    }

    String d() {
        return this.f;
    }

    public String e() {
        return this.a;
    }

    public String f() {
        return this.f1189b;
    }

    public String g() {
        return this.f1190c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.a + ", mProviderPackage: " + this.f1189b + ", mQuery: " + this.f1190c + ", mCertificates:");
        for (int i = 0; i < this.f1191d.size(); i++) {
            sb.append(" [");
            List<byte[]> list = this.f1191d.get(i);
            for (int i2 = 0; i2 < list.size(); i2++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString(list.get(i2), 0));
                sb.append("\"");
            }
            sb.append(" ]");
        }
        sb.append("}");
        sb.append("mCertificatesArray: " + this.e);
        return sb.toString();
    }
}
