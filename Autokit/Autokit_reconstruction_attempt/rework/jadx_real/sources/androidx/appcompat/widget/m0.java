package androidx.appcompat.widget;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class m0 {
    private int a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f354b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f355c = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f356d = Integer.MIN_VALUE;
    private int e = 0;
    private int f = 0;
    private boolean g = false;
    private boolean h = false;

    m0() {
    }

    public int a() {
        return this.g ? this.a : this.f354b;
    }

    public int b() {
        return this.a;
    }

    public int c() {
        return this.f354b;
    }

    public int d() {
        return this.g ? this.f354b : this.a;
    }

    public void e(int i, int i2) {
        this.h = false;
        if (i != Integer.MIN_VALUE) {
            this.e = i;
            this.a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f = i2;
            this.f354b = i2;
        }
    }

    public void f(boolean z) {
        if (z == this.g) {
            return;
        }
        this.g = z;
        if (!this.h) {
            this.a = this.e;
            this.f354b = this.f;
            return;
        }
        if (z) {
            int i = this.f356d;
            if (i == Integer.MIN_VALUE) {
                i = this.e;
            }
            this.a = i;
            int i2 = this.f355c;
            if (i2 == Integer.MIN_VALUE) {
                i2 = this.f;
            }
            this.f354b = i2;
            return;
        }
        int i3 = this.f355c;
        if (i3 == Integer.MIN_VALUE) {
            i3 = this.e;
        }
        this.a = i3;
        int i4 = this.f356d;
        if (i4 == Integer.MIN_VALUE) {
            i4 = this.f;
        }
        this.f354b = i4;
    }

    public void g(int i, int i2) {
        this.f355c = i;
        this.f356d = i2;
        this.h = true;
        if (this.g) {
            if (i2 != Integer.MIN_VALUE) {
                this.a = i2;
            }
            if (i != Integer.MIN_VALUE) {
                this.f354b = i;
                return;
            }
            return;
        }
        if (i != Integer.MIN_VALUE) {
            this.a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f354b = i2;
        }
    }
}
