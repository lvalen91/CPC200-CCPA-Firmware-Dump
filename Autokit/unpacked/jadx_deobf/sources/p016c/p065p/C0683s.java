package p016c.p065p;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: renamed from: c.p.s */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0683s {

    /* JADX INFO: renamed from: b */
    public View f4056b;

    /* JADX INFO: renamed from: a */
    public final Map<String, Object> f4055a = new HashMap();

    /* JADX INFO: renamed from: c */
    final ArrayList<AbstractC0676m> f4057c = new ArrayList<>();

    @Deprecated
    public C0683s() {
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C0683s)) {
            return false;
        }
        C0683s c0683s = (C0683s) obj;
        return this.f4056b == c0683s.f4056b && this.f4055a.equals(c0683s.f4055a);
    }

    public int hashCode() {
        return (this.f4056b.hashCode() * 31) + this.f4055a.hashCode();
    }

    public String toString() {
        String str = (("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n") + "    view = " + this.f4056b + "\n") + "    values:";
        for (String str2 : this.f4055a.keySet()) {
            str = str + "    " + str2 + ": " + this.f4055a.get(str2) + "\n";
        }
        return str;
    }

    public C0683s(View view) {
        this.f4056b = view;
    }
}
