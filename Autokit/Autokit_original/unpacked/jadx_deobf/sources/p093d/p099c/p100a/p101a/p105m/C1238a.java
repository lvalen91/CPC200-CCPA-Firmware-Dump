package p093d.p099c.p100a.p101a.p105m;

import android.graphics.Canvas;
import android.os.Build;

/* JADX INFO: renamed from: d.c.a.a.m.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1238a {
    /* JADX INFO: renamed from: a */
    public static int m9365a(Canvas canvas, float f, float f2, float f3, float f4, int i) {
        return Build.VERSION.SDK_INT > 21 ? canvas.saveLayerAlpha(f, f2, f3, f4, i) : canvas.saveLayerAlpha(f, f2, f3, f4, i, 31);
    }
}
