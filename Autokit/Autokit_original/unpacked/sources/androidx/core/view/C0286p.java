package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: renamed from: androidx.core.view.p */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0286p {

    /* JADX INFO: renamed from: a */
    private int f1892a;

    /* JADX INFO: renamed from: b */
    private int f1893b;

    public C0286p(ViewGroup viewGroup) {
    }

    /* JADX INFO: renamed from: a */
    public int m2035a() {
        return this.f1892a | this.f1893b;
    }

    /* JADX INFO: renamed from: b */
    public void m2036b(View view, View view2, int i) {
        m2037c(view, view2, i, 0);
    }

    /* JADX INFO: renamed from: c */
    public void m2037c(View view, View view2, int i, int i2) {
        if (i2 == 1) {
            this.f1893b = i;
        } else {
            this.f1892a = i;
        }
    }

    /* JADX INFO: renamed from: d */
    public void m2038d(View view, int i) {
        if (i == 1) {
            this.f1893b = 0;
        } else {
            this.f1892a = 0;
        }
    }
}
