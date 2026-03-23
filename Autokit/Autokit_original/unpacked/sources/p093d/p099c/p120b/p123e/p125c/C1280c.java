package p093d.p099c.p120b.p123e.p125c;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import p093d.p099c.p120b.C1267c;
import p093d.p099c.p120b.EnumC1266b;
import p093d.p099c.p120b.p121d.C1268a;
import p093d.p099c.p120b.p121d.EnumC1270c;
import p093d.p099c.p120b.p121d.p122d.C1271a;
import p093d.p099c.p120b.p121d.p122d.C1273c;
import p093d.p099c.p120b.p123e.p124b.C1277c;
import p093d.p099c.p120b.p123e.p124b.EnumC1275a;
import p093d.p099c.p120b.p123e.p124b.EnumC1276b;

/* JADX INFO: renamed from: d.c.b.e.c.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C1280c {

    /* JADX INFO: renamed from: a */
    private static final int[] f7965a = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 36, -1, -1, -1, 37, 38, -1, -1, -1, -1, 39, 40, -1, 41, 42, 43, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 44, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, -1, -1, -1, -1, -1};

    /* JADX INFO: renamed from: d.c.b.e.c.c$a */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a */
        static final /* synthetic */ int[] f7966a;

        static {
            int[] iArr = new int[EnumC1276b.values().length];
            f7966a = iArr;
            try {
                iArr[EnumC1276b.NUMERIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7966a[EnumC1276b.ALPHANUMERIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7966a[EnumC1276b.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f7966a[EnumC1276b.KANJI.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: renamed from: a */
    static void m9545a(String str, C1268a c1268a, String str2) throws C1267c {
        try {
            for (byte b2 : str.getBytes(str2)) {
                c1268a.m9487c(b2, 8);
            }
        } catch (UnsupportedEncodingException e) {
            throw new C1267c(e);
        }
    }

    /* JADX INFO: renamed from: b */
    static void m9546b(CharSequence charSequence, C1268a c1268a) throws C1267c {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            int iM9560p = m9560p(charSequence.charAt(i));
            if (iM9560p == -1) {
                throw new C1267c();
            }
            int i2 = i + 1;
            if (i2 < length) {
                int iM9560p2 = m9560p(charSequence.charAt(i2));
                if (iM9560p2 == -1) {
                    throw new C1267c();
                }
                c1268a.m9487c((iM9560p * 45) + iM9560p2, 11);
                i += 2;
            } else {
                c1268a.m9487c(iM9560p, 6);
                i = i2;
            }
        }
    }

    /* JADX INFO: renamed from: c */
    static void m9547c(String str, EnumC1276b enumC1276b, C1268a c1268a, String str2) throws C1267c {
        int i = a.f7966a[enumC1276b.ordinal()];
        if (i == 1) {
            m9552h(str, c1268a);
            return;
        }
        if (i == 2) {
            m9546b(str, c1268a);
            return;
        }
        if (i == 3) {
            m9545a(str, c1268a, str2);
        } else if (i == 4) {
            m9549e(str, c1268a);
        } else {
            throw new C1267c("Invalid mode: " + enumC1276b);
        }
    }

    /* JADX INFO: renamed from: d */
    private static void m9548d(EnumC1270c enumC1270c, C1268a c1268a) {
        c1268a.m9487c(EnumC1276b.ECI.m9522a(), 4);
        c1268a.m9487c(enumC1270c.m9500b(), 8);
    }

    /* JADX INFO: renamed from: e */
    static void m9549e(String str, C1268a c1268a) throws C1267c {
        int i;
        try {
            byte[] bytes = str.getBytes("Shift_JIS");
            int length = bytes.length;
            for (int i2 = 0; i2 < length; i2 += 2) {
                int i3 = ((bytes[i2] & 255) << 8) | (bytes[i2 + 1] & 255);
                int i4 = 33088;
                if (i3 >= 33088 && i3 <= 40956) {
                    i = i3 - i4;
                } else if (i3 < 57408 || i3 > 60351) {
                    i = -1;
                } else {
                    i4 = 49472;
                    i = i3 - i4;
                }
                if (i == -1) {
                    throw new C1267c("Invalid byte sequence");
                }
                c1268a.m9487c(((i >> 8) * 192) + (i & 255), 13);
            }
        } catch (UnsupportedEncodingException e) {
            throw new C1267c(e);
        }
    }

    /* JADX INFO: renamed from: f */
    static void m9550f(int i, C1277c c1277c, EnumC1276b enumC1276b, C1268a c1268a) throws C1267c {
        int iM9523b = enumC1276b.m9523b(c1277c);
        int i2 = 1 << iM9523b;
        if (i < i2) {
            c1268a.m9487c(i, iM9523b);
            return;
        }
        throw new C1267c(i + " is bigger than " + (i2 - 1));
    }

    /* JADX INFO: renamed from: g */
    static void m9551g(EnumC1276b enumC1276b, C1268a c1268a) {
        c1268a.m9487c(enumC1276b.m9522a(), 4);
    }

    /* JADX INFO: renamed from: h */
    static void m9552h(CharSequence charSequence, C1268a c1268a) {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            int iCharAt = charSequence.charAt(i) - '0';
            int i2 = i + 2;
            if (i2 < length) {
                c1268a.m9487c((iCharAt * 100) + ((charSequence.charAt(i + 1) - '0') * 10) + (charSequence.charAt(i2) - '0'), 10);
                i += 3;
            } else {
                i++;
                if (i < length) {
                    c1268a.m9487c((iCharAt * 10) + (charSequence.charAt(i) - '0'), 7);
                    i = i2;
                } else {
                    c1268a.m9487c(iCharAt, 4);
                }
            }
        }
    }

    /* JADX INFO: renamed from: i */
    private static int m9553i(EnumC1276b enumC1276b, C1268a c1268a, C1268a c1268a2, C1277c c1277c) {
        return c1268a.m9490g() + enumC1276b.m9523b(c1277c) + c1268a2.m9490g();
    }

    /* JADX INFO: renamed from: j */
    private static int m9554j(C1279b c1279b) {
        return C1281d.m9567a(c1279b) + C1281d.m9569c(c1279b) + C1281d.m9570d(c1279b) + C1281d.m9571e(c1279b);
    }

    /* JADX INFO: renamed from: k */
    private static int m9555k(C1268a c1268a, EnumC1275a enumC1275a, C1277c c1277c, C1279b c1279b) throws C1267c {
        int i = Integer.MAX_VALUE;
        int i2 = -1;
        for (int i3 = 0; i3 < 8; i3++) {
            C1282e.m9575a(c1268a, enumC1275a, c1277c, i3, c1279b);
            int iM9554j = m9554j(c1279b);
            if (iM9554j < i) {
                i2 = i3;
                i = iM9554j;
            }
        }
        return i2;
    }

    /* JADX INFO: renamed from: l */
    private static EnumC1276b m9556l(String str, String str2) {
        if ("Shift_JIS".equals(str2) && m9563s(str)) {
            return EnumC1276b.KANJI;
        }
        boolean z = false;
        boolean z2 = false;
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt >= '0' && cCharAt <= '9') {
                z2 = true;
            } else {
                if (m9560p(cCharAt) == -1) {
                    return EnumC1276b.BYTE;
                }
                z = true;
            }
        }
        return z ? EnumC1276b.ALPHANUMERIC : z2 ? EnumC1276b.NUMERIC : EnumC1276b.BYTE;
    }

    /* JADX INFO: renamed from: m */
    private static C1277c m9557m(int i, EnumC1275a enumC1275a) throws C1267c {
        for (int i2 = 1; i2 <= 40; i2++) {
            C1277c c1277cM9525e = C1277c.m9525e(i2);
            if (m9566v(i, c1277cM9525e, enumC1275a)) {
                return c1277cM9525e;
            }
        }
        throw new C1267c("Data too big");
    }

    /* JADX INFO: renamed from: n */
    public static C1283f m9558n(String str, EnumC1275a enumC1275a, Map<EnumC1266b, ?> map) throws C1267c {
        C1277c c1277cM9564t;
        EnumC1270c enumC1270cM9499a;
        String string = (map == null || !map.containsKey(EnumC1266b.CHARACTER_SET)) ? "ISO-8859-1" : map.get(EnumC1266b.CHARACTER_SET).toString();
        EnumC1276b enumC1276bM9556l = m9556l(str, string);
        C1268a c1268a = new C1268a();
        if (enumC1276bM9556l == EnumC1276b.BYTE && !"ISO-8859-1".equals(string) && (enumC1270cM9499a = EnumC1270c.m9499a(string)) != null) {
            m9548d(enumC1270cM9499a, c1268a);
        }
        m9551g(enumC1276bM9556l, c1268a);
        C1268a c1268a2 = new C1268a();
        m9547c(str, enumC1276bM9556l, c1268a2, string);
        if (map == null || !map.containsKey(EnumC1266b.QR_VERSION)) {
            c1277cM9564t = m9564t(enumC1275a, enumC1276bM9556l, c1268a, c1268a2);
        } else {
            c1277cM9564t = C1277c.m9525e(Integer.parseInt(map.get(EnumC1266b.QR_VERSION).toString()));
            if (!m9566v(m9553i(enumC1276bM9556l, c1268a, c1268a2, c1277cM9564t), c1277cM9564t, enumC1275a)) {
                throw new C1267c("Data too big for requested version");
            }
        }
        C1268a c1268a3 = new C1268a();
        c1268a3.m9486b(c1268a);
        m9550f(enumC1276bM9556l == EnumC1276b.BYTE ? c1268a2.m9491h() : str.length(), c1277cM9564t, enumC1276bM9556l, c1268a3);
        c1268a3.m9486b(c1268a2);
        C1277c.b bVarM9527c = c1277cM9564t.m9527c(enumC1275a);
        int iM9528d = c1277cM9564t.m9528d() - bVarM9527c.m9535d();
        m9565u(iM9528d, c1268a3);
        C1268a c1268aM9562r = m9562r(c1268a3, c1277cM9564t.m9528d(), iM9528d, bVarM9527c.m9534c());
        C1283f c1283f = new C1283f();
        c1283f.m9596c(enumC1275a);
        c1283f.m9599f(enumC1276bM9556l);
        c1283f.m9600g(c1277cM9564t);
        int iM9526b = c1277cM9564t.m9526b();
        C1279b c1279b = new C1279b(iM9526b, iM9526b);
        int iM9555k = m9555k(c1268aM9562r, enumC1275a, c1277cM9564t, c1279b);
        c1283f.m9597d(iM9555k);
        C1282e.m9575a(c1268aM9562r, enumC1275a, c1277cM9564t, iM9555k, c1279b);
        c1283f.m9598e(c1279b);
        return c1283f;
    }

    /* JADX INFO: renamed from: o */
    static byte[] m9559o(byte[] bArr, int i) {
        int length = bArr.length;
        int[] iArr = new int[length + i];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = bArr[i2] & 255;
        }
        new C1273c(C1271a.f7922h).m9518b(iArr, i);
        byte[] bArr2 = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr2[i3] = (byte) iArr[length + i3];
        }
        return bArr2;
    }

    /* JADX INFO: renamed from: p */
    static int m9560p(int i) {
        int[] iArr = f7965a;
        if (i < iArr.length) {
            return iArr[i];
        }
        return -1;
    }

    /* JADX INFO: renamed from: q */
    static void m9561q(int i, int i2, int i3, int i4, int[] iArr, int[] iArr2) throws C1267c {
        if (i4 >= i3) {
            throw new C1267c("Block ID too large");
        }
        int i5 = i % i3;
        int i6 = i3 - i5;
        int i7 = i / i3;
        int i8 = i7 + 1;
        int i9 = i2 / i3;
        int i10 = i9 + 1;
        int i11 = i7 - i9;
        int i12 = i8 - i10;
        if (i11 != i12) {
            throw new C1267c("EC bytes mismatch");
        }
        if (i3 != i6 + i5) {
            throw new C1267c("RS blocks mismatch");
        }
        if (i != ((i9 + i11) * i6) + ((i10 + i12) * i5)) {
            throw new C1267c("Total bytes mismatch");
        }
        if (i4 < i6) {
            iArr[0] = i9;
            iArr2[0] = i11;
        } else {
            iArr[0] = i10;
            iArr2[0] = i12;
        }
    }

    /* JADX INFO: renamed from: r */
    static C1268a m9562r(C1268a c1268a, int i, int i2, int i3) throws C1267c {
        if (c1268a.m9491h() != i2) {
            throw new C1267c("Number of bits and data bytes does not match");
        }
        ArrayList arrayList = new ArrayList(i3);
        int i4 = 0;
        int iMax = 0;
        int iMax2 = 0;
        for (int i5 = 0; i5 < i3; i5++) {
            int[] iArr = new int[1];
            int[] iArr2 = new int[1];
            m9561q(i, i2, i3, i5, iArr, iArr2);
            int i6 = iArr[0];
            byte[] bArr = new byte[i6];
            c1268a.m9492j(i4 << 3, bArr, 0, i6);
            byte[] bArrM9559o = m9559o(bArr, iArr2[0]);
            arrayList.add(new C1278a(bArr, bArrM9559o));
            iMax = Math.max(iMax, i6);
            iMax2 = Math.max(iMax2, bArrM9559o.length);
            i4 += iArr[0];
        }
        if (i2 != i4) {
            throw new C1267c("Data bytes does not match offset");
        }
        C1268a c1268a2 = new C1268a();
        for (int i7 = 0; i7 < iMax; i7++) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                byte[] bArrM9536a = ((C1278a) it.next()).m9536a();
                if (i7 < bArrM9536a.length) {
                    c1268a2.m9487c(bArrM9536a[i7], 8);
                }
            }
        }
        for (int i8 = 0; i8 < iMax2; i8++) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                byte[] bArrM9537b = ((C1278a) it2.next()).m9537b();
                if (i8 < bArrM9537b.length) {
                    c1268a2.m9487c(bArrM9537b[i8], 8);
                }
            }
        }
        if (i == c1268a2.m9491h()) {
            return c1268a2;
        }
        throw new C1267c("Interleaving error: " + i + " and " + c1268a2.m9491h() + " differ.");
    }

    /* JADX INFO: renamed from: s */
    private static boolean m9563s(String str) {
        try {
            byte[] bytes = str.getBytes("Shift_JIS");
            int length = bytes.length;
            if (length % 2 != 0) {
                return false;
            }
            for (int i = 0; i < length; i += 2) {
                int i2 = bytes[i] & 255;
                if ((i2 < 129 || i2 > 159) && (i2 < 224 || i2 > 235)) {
                    return false;
                }
            }
            return true;
        } catch (UnsupportedEncodingException unused) {
            return false;
        }
    }

    /* JADX INFO: renamed from: t */
    private static C1277c m9564t(EnumC1275a enumC1275a, EnumC1276b enumC1276b, C1268a c1268a, C1268a c1268a2) {
        return m9557m(m9553i(enumC1276b, c1268a, c1268a2, m9557m(m9553i(enumC1276b, c1268a, c1268a2, C1277c.m9525e(1)), enumC1275a)), enumC1275a);
    }

    /* JADX INFO: renamed from: u */
    static void m9565u(int i, C1268a c1268a) throws C1267c {
        int i2 = i << 3;
        if (c1268a.m9490g() > i2) {
            throw new C1267c("data bits cannot fit in the QR Code" + c1268a.m9490g() + " > " + i2);
        }
        for (int i3 = 0; i3 < 4 && c1268a.m9490g() < i2; i3++) {
            c1268a.m9485a(false);
        }
        int iM9490g = c1268a.m9490g() & 7;
        if (iM9490g > 0) {
            while (iM9490g < 8) {
                c1268a.m9485a(false);
                iM9490g++;
            }
        }
        int iM9491h = i - c1268a.m9491h();
        for (int i4 = 0; i4 < iM9491h; i4++) {
            c1268a.m9487c((i4 & 1) == 0 ? 236 : 17, 8);
        }
        if (c1268a.m9490g() != i2) {
            throw new C1267c("Bits size does not equal capacity");
        }
    }

    /* JADX INFO: renamed from: v */
    private static boolean m9566v(int i, C1277c c1277c, EnumC1275a enumC1275a) {
        return c1277c.m9528d() - c1277c.m9527c(enumC1275a).m9535d() >= (i + 7) / 8;
    }
}
