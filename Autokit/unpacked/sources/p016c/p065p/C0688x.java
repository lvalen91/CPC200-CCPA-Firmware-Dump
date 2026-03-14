package p016c.p065p;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.ViewGroup;

/* JADX INFO: renamed from: c.p.x */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0688x {

    /* JADX INFO: renamed from: a */
    private static boolean f4063a = true;

    /* JADX INFO: renamed from: a */
    static InterfaceC0687w m5179a(ViewGroup viewGroup) {
        return Build.VERSION.SDK_INT >= 18 ? new C0686v(viewGroup) : C0685u.m5176g(viewGroup);
    }

    @SuppressLint({"NewApi"})
    /* JADX INFO: renamed from: b */
    private static void m5180b(ViewGroup viewGroup, boolean z) {
        if (f4063a) {
            try {
                viewGroup.suppressLayout(z);
            } catch (NoSuchMethodError unused) {
                f4063a = false;
            }
        }
    }

    /* JADX INFO: renamed from: c */
    static void m5181c(ViewGroup viewGroup, boolean z) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            viewGroup.suppressLayout(z);
        } else if (i >= 18) {
            m5180b(viewGroup, z);
        } else {
            C0689y.m5183b(viewGroup, z);
        }
    }
}
