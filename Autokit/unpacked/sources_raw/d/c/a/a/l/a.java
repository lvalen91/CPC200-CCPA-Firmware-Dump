package d.c.a.a.l;

import android.animation.TimeInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class a {
    public static final TimeInterpolator a = new LinearInterpolator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final TimeInterpolator f2315b = new c.k.a.a.b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final TimeInterpolator f2316c = new c.k.a.a.a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final TimeInterpolator f2317d = new c.k.a.a.c();
    public static final TimeInterpolator e = new DecelerateInterpolator();

    public static float a(float f, float f2, float f3) {
        return f + (f3 * (f2 - f));
    }

    public static float b(float f, float f2, float f3, float f4, float f5) {
        return f5 < f3 ? f : f5 > f4 ? f2 : a(f, f2, (f5 - f3) / (f4 - f3));
    }
}
