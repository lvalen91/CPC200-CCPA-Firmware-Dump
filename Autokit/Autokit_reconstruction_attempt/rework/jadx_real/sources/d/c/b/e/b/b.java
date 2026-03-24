package d.c.b.e.b;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public enum b {
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


    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int[] f2375b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f2376c;

    b(int[] iArr, int i) {
        this.f2375b = iArr;
        this.f2376c = i;
    }

    public int a() {
        return this.f2376c;
    }

    public int b(c cVar) {
        int iF = cVar.f();
        return this.f2375b[iF <= 9 ? (char) 0 : iF <= 26 ? (char) 1 : (char) 2];
    }
}
