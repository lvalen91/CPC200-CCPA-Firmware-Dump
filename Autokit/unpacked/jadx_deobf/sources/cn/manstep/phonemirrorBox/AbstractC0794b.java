package cn.manstep.phonemirrorBox;

import android.content.Context;
import android.widget.Button;
import cn.manstep.phonemirrorBox.util.C0964c0;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0794b {
    /* JADX INFO: renamed from: a */
    public abstract int[] mo6059a();

    /* JADX INFO: renamed from: b */
    public int m6060b(Context context, boolean z) {
        return z ? C0964c0.m7178b(context, 64.0f) : C0964c0.m7178b(context, 48.0f);
    }

    /* JADX INFO: renamed from: c */
    public abstract int mo6061c(Context context, int i);

    /* JADX INFO: renamed from: d */
    public abstract String[] mo6062d();

    /* JADX INFO: renamed from: e */
    public abstract int mo6063e();

    /* JADX INFO: renamed from: f */
    public abstract void mo6064f(Context context, Button button, boolean z, boolean z2, boolean z3);
}
