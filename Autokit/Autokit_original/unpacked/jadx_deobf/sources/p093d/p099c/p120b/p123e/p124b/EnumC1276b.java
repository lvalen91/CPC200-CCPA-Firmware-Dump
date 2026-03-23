package p093d.p099c.p120b.p123e.p124b;

/* JADX INFO: renamed from: d.c.b.e.b.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public enum EnumC1276b {
    TERMINATOR(new int[]{0, 0, 0}, 0),
    NUMERIC(new int[]{10, 12, 14}, 1),
    ALPHANUMERIC(new int[]{9, 11, 13}, 2),
    STRUCTURED_APPEND(new int[]{0, 0, 0}, 3),
    BYTE(new int[]{8, 16, 16}, 4),
    ECI(new int[]{0, 0, 0}, 7),
    KANJI(new int[]{8, 10, 12}, 8),
    FNC1_FIRST_POSITION(new int[]{0, 0, 0}, 5),
    FNC1_SECOND_POSITION(new int[]{0, 0, 0}, 9),
    HANZI(new int[]{8, 10, 12}, 13);


    /* JADX INFO: renamed from: b */
    private final int[] f7950b;

    /* JADX INFO: renamed from: c */
    private final int f7951c;

    EnumC1276b(int[] iArr, int i) {
        this.f7950b = iArr;
        this.f7951c = i;
    }

    /* JADX INFO: renamed from: a */
    public int m9522a() {
        return this.f7951c;
    }

    /* JADX INFO: renamed from: b */
    public int m9523b(C1277c c1277c) {
        int iM9529f = c1277c.m9529f();
        return this.f7950b[iM9529f <= 9 ? (char) 0 : iM9529f <= 26 ? (char) 1 : (char) 2];
    }
}
