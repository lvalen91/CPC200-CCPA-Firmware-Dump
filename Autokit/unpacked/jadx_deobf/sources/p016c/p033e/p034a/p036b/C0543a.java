package p016c.p033e.p034a.p036b;

import android.view.View;

/* JADX INFO: renamed from: c.e.a.b.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0543a {
    /* JADX INFO: renamed from: a */
    public static String m4309a(View view) {
        try {
            return view.getContext().getResources().getResourceEntryName(view.getId());
        } catch (Exception unused) {
            return "UNKNOWN";
        }
    }
}
