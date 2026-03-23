package androidx.appcompat.widget;

/* JADX INFO: renamed from: androidx.appcompat.widget.m0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0179m0 {

    /* JADX INFO: renamed from: a */
    private int f1202a = 0;

    /* JADX INFO: renamed from: b */
    private int f1203b = 0;

    /* JADX INFO: renamed from: c */
    private int f1204c = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: d */
    private int f1205d = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: e */
    private int f1206e = 0;

    /* JADX INFO: renamed from: f */
    private int f1207f = 0;

    /* JADX INFO: renamed from: g */
    private boolean f1208g = false;

    /* JADX INFO: renamed from: h */
    private boolean f1209h = false;

    C0179m0() {
    }

    /* JADX INFO: renamed from: a */
    public int m1233a() {
        return this.f1208g ? this.f1202a : this.f1203b;
    }

    /* JADX INFO: renamed from: b */
    public int m1234b() {
        return this.f1202a;
    }

    /* JADX INFO: renamed from: c */
    public int m1235c() {
        return this.f1203b;
    }

    /* JADX INFO: renamed from: d */
    public int m1236d() {
        return this.f1208g ? this.f1203b : this.f1202a;
    }

    /* JADX INFO: renamed from: e */
    public void m1237e(int i, int i2) {
        this.f1209h = false;
        if (i != Integer.MIN_VALUE) {
            this.f1206e = i;
            this.f1202a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f1207f = i2;
            this.f1203b = i2;
        }
    }

    /* JADX INFO: renamed from: f */
    public void m1238f(boolean z) {
        if (z == this.f1208g) {
            return;
        }
        this.f1208g = z;
        if (!this.f1209h) {
            this.f1202a = this.f1206e;
            this.f1203b = this.f1207f;
            return;
        }
        if (z) {
            int i = this.f1205d;
            if (i == Integer.MIN_VALUE) {
                i = this.f1206e;
            }
            this.f1202a = i;
            int i2 = this.f1204c;
            if (i2 == Integer.MIN_VALUE) {
                i2 = this.f1207f;
            }
            this.f1203b = i2;
            return;
        }
        int i3 = this.f1204c;
        if (i3 == Integer.MIN_VALUE) {
            i3 = this.f1206e;
        }
        this.f1202a = i3;
        int i4 = this.f1205d;
        if (i4 == Integer.MIN_VALUE) {
            i4 = this.f1207f;
        }
        this.f1203b = i4;
    }

    /* JADX INFO: renamed from: g */
    public void m1239g(int i, int i2) {
        this.f1204c = i;
        this.f1205d = i2;
        this.f1209h = true;
        if (this.f1208g) {
            if (i2 != Integer.MIN_VALUE) {
                this.f1202a = i2;
            }
            if (i != Integer.MIN_VALUE) {
                this.f1203b = i;
                return;
            }
            return;
        }
        if (i != Integer.MIN_VALUE) {
            this.f1202a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f1203b = i2;
        }
    }
}
