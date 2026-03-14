package p093d.p099c.p120b.p123e.p124b;

/* JADX INFO: renamed from: d.c.b.e.b.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C1277c {

    /* JADX INFO: renamed from: d */
    private static final C1277c[] f7952d = m9524a();

    /* JADX INFO: renamed from: a */
    private final int f7953a;

    /* JADX INFO: renamed from: b */
    private final b[] f7954b;

    /* JADX INFO: renamed from: c */
    private final int f7955c;

    /* JADX INFO: renamed from: d.c.b.e.b.c$a */
    public static final class a {

        /* JADX INFO: renamed from: a */
        private final int f7956a;

        /* JADX INFO: renamed from: b */
        private final int f7957b;

        a(int i, int i2) {
            this.f7956a = i;
            this.f7957b = i2;
        }

        /* JADX INFO: renamed from: a */
        public int m9530a() {
            return this.f7956a;
        }

        /* JADX INFO: renamed from: b */
        public int m9531b() {
            return this.f7957b;
        }
    }

    /* JADX INFO: renamed from: d.c.b.e.b.c$b */
    public static final class b {

        /* JADX INFO: renamed from: a */
        private final int f7958a;

        /* JADX INFO: renamed from: b */
        private final a[] f7959b;

        b(int i, a... aVarArr) {
            this.f7958a = i;
            this.f7959b = aVarArr;
        }

        /* JADX INFO: renamed from: a */
        public a[] m9532a() {
            return this.f7959b;
        }

        /* JADX INFO: renamed from: b */
        public int m9533b() {
            return this.f7958a;
        }

        /* JADX INFO: renamed from: c */
        public int m9534c() {
            int iM9530a = 0;
            for (a aVar : this.f7959b) {
                iM9530a += aVar.m9530a();
            }
            return iM9530a;
        }

        /* JADX INFO: renamed from: d */
        public int m9535d() {
            return this.f7958a * m9534c();
        }
    }

    private C1277c(int i, int[] iArr, b... bVarArr) {
        this.f7953a = i;
        this.f7954b = bVarArr;
        int iM9533b = bVarArr[0].m9533b();
        int iM9530a = 0;
        for (a aVar : bVarArr[0].m9532a()) {
            iM9530a += aVar.m9530a() * (aVar.m9531b() + iM9533b);
        }
        this.f7955c = iM9530a;
    }

    /* JADX INFO: renamed from: a */
    private static C1277c[] m9524a() {
        return new C1277c[]{new C1277c(1, new int[0], new b(7, new a(1, 19)), new b(10, new a(1, 16)), new b(13, new a(1, 13)), new b(17, new a(1, 9))), new C1277c(2, new int[]{6, 18}, new b(10, new a(1, 34)), new b(16, new a(1, 28)), new b(22, new a(1, 22)), new b(28, new a(1, 16))), new C1277c(3, new int[]{6, 22}, new b(15, new a(1, 55)), new b(26, new a(1, 44)), new b(18, new a(2, 17)), new b(22, new a(2, 13))), new C1277c(4, new int[]{6, 26}, new b(20, new a(1, 80)), new b(18, new a(2, 32)), new b(26, new a(2, 24)), new b(16, new a(4, 9))), new C1277c(5, new int[]{6, 30}, new b(26, new a(1, 108)), new b(24, new a(2, 43)), new b(18, new a(2, 15), new a(2, 16)), new b(22, new a(2, 11), new a(2, 12))), new C1277c(6, new int[]{6, 34}, new b(18, new a(2, 68)), new b(16, new a(4, 27)), new b(24, new a(4, 19)), new b(28, new a(4, 15))), new C1277c(7, new int[]{6, 22, 38}, new b(20, new a(2, 78)), new b(18, new a(4, 31)), new b(18, new a(2, 14), new a(4, 15)), new b(26, new a(4, 13), new a(1, 14))), new C1277c(8, new int[]{6, 24, 42}, new b(24, new a(2, 97)), new b(22, new a(2, 38), new a(2, 39)), new b(22, new a(4, 18), new a(2, 19)), new b(26, new a(4, 14), new a(2, 15))), new C1277c(9, new int[]{6, 26, 46}, new b(30, new a(2, 116)), new b(22, new a(3, 36), new a(2, 37)), new b(20, new a(4, 16), new a(4, 17)), new b(24, new a(4, 12), new a(4, 13))), new C1277c(10, new int[]{6, 28, 50}, new b(18, new a(2, 68), new a(2, 69)), new b(26, new a(4, 43), new a(1, 44)), new b(24, new a(6, 19), new a(2, 20)), new b(28, new a(6, 15), new a(2, 16))), new C1277c(11, new int[]{6, 30, 54}, new b(20, new a(4, 81)), new b(30, new a(1, 50), new a(4, 51)), new b(28, new a(4, 22), new a(4, 23)), new b(24, new a(3, 12), new a(8, 13))), new C1277c(12, new int[]{6, 32, 58}, new b(24, new a(2, 92), new a(2, 93)), new b(22, new a(6, 36), new a(2, 37)), new b(26, new a(4, 20), new a(6, 21)), new b(28, new a(7, 14), new a(4, 15))), new C1277c(13, new int[]{6, 34, 62}, new b(26, new a(4, 107)), new b(22, new a(8, 37), new a(1, 38)), new b(24, new a(8, 20), new a(4, 21)), new b(22, new a(12, 11), new a(4, 12))), new C1277c(14, new int[]{6, 26, 46, 66}, new b(30, new a(3, 115), new a(1, 116)), new b(24, new a(4, 40), new a(5, 41)), new b(20, new a(11, 16), new a(5, 17)), new b(24, new a(11, 12), new a(5, 13))), new C1277c(15, new int[]{6, 26, 48, 70}, new b(22, new a(5, 87), new a(1, 88)), new b(24, new a(5, 41), new a(5, 42)), new b(30, new a(5, 24), new a(7, 25)), new b(24, new a(11, 12), new a(7, 13))), new C1277c(16, new int[]{6, 26, 50, 74}, new b(24, new a(5, 98), new a(1, 99)), new b(28, new a(7, 45), new a(3, 46)), new b(24, new a(15, 19), new a(2, 20)), new b(30, new a(3, 15), new a(13, 16))), new C1277c(17, new int[]{6, 30, 54, 78}, new b(28, new a(1, 107), new a(5, 108)), new b(28, new a(10, 46), new a(1, 47)), new b(28, new a(1, 22), new a(15, 23)), new b(28, new a(2, 14), new a(17, 15))), new C1277c(18, new int[]{6, 30, 56, 82}, new b(30, new a(5, 120), new a(1, 121)), new b(26, new a(9, 43), new a(4, 44)), new b(28, new a(17, 22), new a(1, 23)), new b(28, new a(2, 14), new a(19, 15))), new C1277c(19, new int[]{6, 30, 58, 86}, new b(28, new a(3, 113), new a(4, 114)), new b(26, new a(3, 44), new a(11, 45)), new b(26, new a(17, 21), new a(4, 22)), new b(26, new a(9, 13), new a(16, 14))), new C1277c(20, new int[]{6, 34, 62, 90}, new b(28, new a(3, 107), new a(5, 108)), new b(26, new a(3, 41), new a(13, 42)), new b(30, new a(15, 24), new a(5, 25)), new b(28, new a(15, 15), new a(10, 16))), new C1277c(21, new int[]{6, 28, 50, 72, 94}, new b(28, new a(4, 116), new a(4, 117)), new b(26, new a(17, 42)), new b(28, new a(17, 22), new a(6, 23)), new b(30, new a(19, 16), new a(6, 17))), new C1277c(22, new int[]{6, 26, 50, 74, 98}, new b(28, new a(2, 111), new a(7, 112)), new b(28, new a(17, 46)), new b(30, new a(7, 24), new a(16, 25)), new b(24, new a(34, 13))), new C1277c(23, new int[]{6, 30, 54, 78, 102}, new b(30, new a(4, 121), new a(5, 122)), new b(28, new a(4, 47), new a(14, 48)), new b(30, new a(11, 24), new a(14, 25)), new b(30, new a(16, 15), new a(14, 16))), new C1277c(24, new int[]{6, 28, 54, 80, 106}, new b(30, new a(6, 117), new a(4, 118)), new b(28, new a(6, 45), new a(14, 46)), new b(30, new a(11, 24), new a(16, 25)), new b(30, new a(30, 16), new a(2, 17))), new C1277c(25, new int[]{6, 32, 58, 84, 110}, new b(26, new a(8, 106), new a(4, 107)), new b(28, new a(8, 47), new a(13, 48)), new b(30, new a(7, 24), new a(22, 25)), new b(30, new a(22, 15), new a(13, 16))), new C1277c(26, new int[]{6, 30, 58, 86, 114}, new b(28, new a(10, 114), new a(2, 115)), new b(28, new a(19, 46), new a(4, 47)), new b(28, new a(28, 22), new a(6, 23)), new b(30, new a(33, 16), new a(4, 17))), new C1277c(27, new int[]{6, 34, 62, 90, 118}, new b(30, new a(8, 122), new a(4, 123)), new b(28, new a(22, 45), new a(3, 46)), new b(30, new a(8, 23), new a(26, 24)), new b(30, new a(12, 15), new a(28, 16))), new C1277c(28, new int[]{6, 26, 50, 74, 98, 122}, new b(30, new a(3, 117), new a(10, 118)), new b(28, new a(3, 45), new a(23, 46)), new b(30, new a(4, 24), new a(31, 25)), new b(30, new a(11, 15), new a(31, 16))), new C1277c(29, new int[]{6, 30, 54, 78, 102, 126}, new b(30, new a(7, 116), new a(7, 117)), new b(28, new a(21, 45), new a(7, 46)), new b(30, new a(1, 23), new a(37, 24)), new b(30, new a(19, 15), new a(26, 16))), new C1277c(30, new int[]{6, 26, 52, 78, 104, 130}, new b(30, new a(5, 115), new a(10, 116)), new b(28, new a(19, 47), new a(10, 48)), new b(30, new a(15, 24), new a(25, 25)), new b(30, new a(23, 15), new a(25, 16))), new C1277c(31, new int[]{6, 30, 56, 82, 108, 134}, new b(30, new a(13, 115), new a(3, 116)), new b(28, new a(2, 46), new a(29, 47)), new b(30, new a(42, 24), new a(1, 25)), new b(30, new a(23, 15), new a(28, 16))), new C1277c(32, new int[]{6, 34, 60, 86, 112, 138}, new b(30, new a(17, 115)), new b(28, new a(10, 46), new a(23, 47)), new b(30, new a(10, 24), new a(35, 25)), new b(30, new a(19, 15), new a(35, 16))), new C1277c(33, new int[]{6, 30, 58, 86, 114, 142}, new b(30, new a(17, 115), new a(1, 116)), new b(28, new a(14, 46), new a(21, 47)), new b(30, new a(29, 24), new a(19, 25)), new b(30, new a(11, 15), new a(46, 16))), new C1277c(34, new int[]{6, 34, 62, 90, 118, 146}, new b(30, new a(13, 115), new a(6, 116)), new b(28, new a(14, 46), new a(23, 47)), new b(30, new a(44, 24), new a(7, 25)), new b(30, new a(59, 16), new a(1, 17))), new C1277c(35, new int[]{6, 30, 54, 78, 102, 126, 150}, new b(30, new a(12, 121), new a(7, 122)), new b(28, new a(12, 47), new a(26, 48)), new b(30, new a(39, 24), new a(14, 25)), new b(30, new a(22, 15), new a(41, 16))), new C1277c(36, new int[]{6, 24, 50, 76, 102, 128, 154}, new b(30, new a(6, 121), new a(14, 122)), new b(28, new a(6, 47), new a(34, 48)), new b(30, new a(46, 24), new a(10, 25)), new b(30, new a(2, 15), new a(64, 16))), new C1277c(37, new int[]{6, 28, 54, 80, 106, 132, 158}, new b(30, new a(17, 122), new a(4, 123)), new b(28, new a(29, 46), new a(14, 47)), new b(30, new a(49, 24), new a(10, 25)), new b(30, new a(24, 15), new a(46, 16))), new C1277c(38, new int[]{6, 32, 58, 84, 110, 136, 162}, new b(30, new a(4, 122), new a(18, 123)), new b(28, new a(13, 46), new a(32, 47)), new b(30, new a(48, 24), new a(14, 25)), new b(30, new a(42, 15), new a(32, 16))), new C1277c(39, new int[]{6, 26, 54, 82, 110, 138, 166}, new b(30, new a(20, 117), new a(4, 118)), new b(28, new a(40, 47), new a(7, 48)), new b(30, new a(43, 24), new a(22, 25)), new b(30, new a(10, 15), new a(67, 16))), new C1277c(40, new int[]{6, 30, 58, 86, 114, 142, 170}, new b(30, new a(19, 118), new a(6, 119)), new b(28, new a(18, 47), new a(31, 48)), new b(30, new a(34, 24), new a(34, 25)), new b(30, new a(20, 15), new a(61, 16)))};
    }

    /* JADX INFO: renamed from: e */
    public static C1277c m9525e(int i) {
        if (i <= 0 || i > 40) {
            throw new IllegalArgumentException();
        }
        return f7952d[i - 1];
    }

    /* JADX INFO: renamed from: b */
    public int m9526b() {
        return (this.f7953a * 4) + 17;
    }

    /* JADX INFO: renamed from: c */
    public b m9527c(EnumC1275a enumC1275a) {
        return this.f7954b[enumC1275a.ordinal()];
    }

    /* JADX INFO: renamed from: d */
    public int m9528d() {
        return this.f7955c;
    }

    /* JADX INFO: renamed from: f */
    public int m9529f() {
        return this.f7953a;
    }

    public String toString() {
        return String.valueOf(this.f7953a);
    }
}
