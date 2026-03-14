package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class p {
    private int a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f595b;

    public p(ViewGroup viewGroup) {
    }

    public int a() {
        return this.a | this.f595b;
    }

    public void b(View view, View view2, int i) {
        c(view, view2, i, 0);
    }

    public void c(View view, View view2, int i, int i2) {
        if (i2 == 1) {
            this.f595b = i;
        } else {
            this.a = i;
        }
    }

    public void d(View view, int i) {
        if (i == 1) {
            this.f595b = 0;
        } else {
            this.a = 0;
        }
    }
}
