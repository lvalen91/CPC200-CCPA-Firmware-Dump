package p093d.p099c.p120b.p121d;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: renamed from: d.c.b.d.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public enum EnumC1270c {
    Cp437(new int[]{0, 2}, new String[0]),
    ISO8859_1(new int[]{1, 3}, "ISO-8859-1"),
    ISO8859_2(4, "ISO-8859-2"),
    ISO8859_3(5, "ISO-8859-3"),
    ISO8859_4(6, "ISO-8859-4"),
    ISO8859_5(7, "ISO-8859-5"),
    ISO8859_6(8, "ISO-8859-6"),
    ISO8859_7(9, "ISO-8859-7"),
    ISO8859_8(10, "ISO-8859-8"),
    ISO8859_9(11, "ISO-8859-9"),
    ISO8859_10(12, "ISO-8859-10"),
    ISO8859_11(13, "ISO-8859-11"),
    ISO8859_13(15, "ISO-8859-13"),
    ISO8859_14(16, "ISO-8859-14"),
    ISO8859_15(17, "ISO-8859-15"),
    ISO8859_16(18, "ISO-8859-16"),
    SJIS(20, "Shift_JIS"),
    Cp1250(21, "windows-1250"),
    Cp1251(22, "windows-1251"),
    Cp1252(23, "windows-1252"),
    Cp1256(24, "windows-1256"),
    UnicodeBigUnmarked(25, "UTF-16BE", "UnicodeBig"),
    UTF8(26, "UTF-8"),
    ASCII(new int[]{27, 170}, "US-ASCII"),
    Big5(28),
    GB18030(29, "GB2312", "EUC_CN", "GBK"),
    EUC_KR(30, "EUC-KR");


    /* JADX INFO: renamed from: E */
    private static final Map<Integer, EnumC1270c> f7893E = new HashMap();

    /* JADX INFO: renamed from: F */
    private static final Map<String, EnumC1270c> f7894F = new HashMap();

    /* JADX INFO: renamed from: b */
    private final int[] f7919b;

    /* JADX INFO: renamed from: c */
    private final String[] f7920c;

    static {
        for (EnumC1270c enumC1270c : values()) {
            for (int i : enumC1270c.f7919b) {
                f7893E.put(Integer.valueOf(i), enumC1270c);
            }
            f7894F.put(enumC1270c.name(), enumC1270c);
            for (String str : enumC1270c.f7920c) {
                f7894F.put(str, enumC1270c);
            }
        }
    }

    EnumC1270c(int i) {
        this(new int[]{i}, new String[0]);
    }

    /* JADX INFO: renamed from: a */
    public static EnumC1270c m9499a(String str) {
        return f7894F.get(str);
    }

    /* JADX INFO: renamed from: b */
    public int m9500b() {
        return this.f7919b[0];
    }

    EnumC1270c(int i, String... strArr) {
        this.f7919b = new int[]{i};
        this.f7920c = strArr;
    }

    EnumC1270c(int[] iArr, String... strArr) {
        this.f7919b = iArr;
        this.f7920c = strArr;
    }
}
