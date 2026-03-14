package androidx.appcompat.app;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class m {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static m f163d;
    public long a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f164b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f165c;

    m() {
    }

    static m b() {
        if (f163d == null) {
            f163d = new m();
        }
        return f163d;
    }

    public void a(long j, double d2, double d3) {
        float f = (j - 946728000000L) / 8.64E7f;
        double d4 = (0.01720197f * f) + 6.24006f;
        double dSin = Math.sin(d4) * 0.03341960161924362d;
        Double.isNaN(d4);
        double dSin2 = dSin + d4 + (Math.sin(2.0f * r4) * 3.4906598739326E-4d) + (Math.sin(r4 * 3.0f) * 5.236000106378924E-6d) + 1.796593063d + 3.141592653589793d;
        Double.isNaN(f - 9.0E-4f);
        double dRound = Math.round(r11 - r9) + 9.0E-4f;
        Double.isNaN(dRound);
        double dSin3 = dRound + ((-d3) / 360.0d) + (Math.sin(d4) * 0.0053d) + (Math.sin(2.0d * dSin2) * (-0.0069d));
        double dAsin = Math.asin(Math.sin(dSin2) * Math.sin(0.4092797040939331d));
        double d5 = 0.01745329238474369d * d2;
        double dSin4 = (Math.sin(-0.10471975803375244d) - (Math.sin(d5) * Math.sin(dAsin))) / (Math.cos(d5) * Math.cos(dAsin));
        if (dSin4 >= 1.0d) {
            this.f165c = 1;
            this.a = -1L;
            this.f164b = -1L;
            return;
        }
        if (dSin4 <= -1.0d) {
            this.f165c = 0;
            this.a = -1L;
            this.f164b = -1L;
            return;
        }
        double dAcos = (float) (Math.acos(dSin4) / 6.283185307179586d);
        Double.isNaN(dAcos);
        this.a = Math.round((dSin3 + dAcos) * 8.64E7d) + 946728000000L;
        Double.isNaN(dAcos);
        long jRound = Math.round((dSin3 - dAcos) * 8.64E7d) + 946728000000L;
        this.f164b = jRound;
        if (jRound >= j || this.a <= j) {
            this.f165c = 1;
        } else {
            this.f165c = 0;
        }
    }
}
