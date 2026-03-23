package p093d.p099c.p100a.p101a.p115v;

/* JADX INFO: renamed from: d.c.a.a.v.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C1253a {
    /* JADX INFO: renamed from: a */
    public static float m9444a(float f, float f2, float f3, float f4) {
        return (float) Math.hypot(f3 - f, f4 - f2);
    }

    /* JADX INFO: renamed from: b */
    public static float m9445b(float f, float f2, float f3, float f4, float f5, float f6) {
        return m9447d(m9444a(f, f2, f3, f4), m9444a(f, f2, f5, f4), m9444a(f, f2, f5, f6), m9444a(f, f2, f3, f6));
    }

    /* JADX INFO: renamed from: c */
    public static float m9446c(float f, float f2, float f3) {
        return ((1.0f - f3) * f) + (f3 * f2);
    }

    /* JADX INFO: renamed from: d */
    private static float m9447d(float f, float f2, float f3, float f4) {
        return (f <= f2 || f <= f3 || f <= f4) ? (f2 <= f3 || f2 <= f4) ? f3 > f4 ? f3 : f4 : f2 : f;
    }
}
