package androidx.recyclerview.widget;

import android.view.View;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class o {
    final b a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    a f983b = new a();

    static class a {
        int a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f984b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f985c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f986d;
        int e;

        a() {
        }

        void a(int i) {
            this.a = i | this.a;
        }

        boolean b() {
            int i = this.a;
            if ((i & 7) != 0 && (i & (c(this.f986d, this.f984b) << 0)) == 0) {
                return false;
            }
            int i2 = this.a;
            if ((i2 & 112) != 0 && (i2 & (c(this.f986d, this.f985c) << 4)) == 0) {
                return false;
            }
            int i3 = this.a;
            if ((i3 & 1792) != 0 && (i3 & (c(this.e, this.f984b) << 8)) == 0) {
                return false;
            }
            int i4 = this.a;
            return (i4 & 28672) == 0 || (i4 & (c(this.e, this.f985c) << 12)) != 0;
        }

        int c(int i, int i2) {
            if (i > i2) {
                return 1;
            }
            return i == i2 ? 2 : 4;
        }

        void d() {
            this.a = 0;
        }

        void e(int i, int i2, int i3, int i4) {
            this.f984b = i;
            this.f985c = i2;
            this.f986d = i3;
            this.e = i4;
        }
    }

    interface b {
        View a(int i);

        int b();

        int c();

        int d(View view);

        int e(View view);
    }

    o(b bVar) {
        this.a = bVar;
    }

    View a(int i, int i2, int i3, int i4) {
        int iC = this.a.c();
        int iB = this.a.b();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        while (i != i2) {
            View viewA = this.a.a(i);
            this.f983b.e(iC, iB, this.a.e(viewA), this.a.d(viewA));
            if (i3 != 0) {
                this.f983b.d();
                this.f983b.a(i3);
                if (this.f983b.b()) {
                    return viewA;
                }
            }
            if (i4 != 0) {
                this.f983b.d();
                this.f983b.a(i4);
                if (this.f983b.b()) {
                    view = viewA;
                }
            }
            i += i5;
        }
        return view;
    }

    boolean b(View view, int i) {
        this.f983b.e(this.a.c(), this.a.b(), this.a.e(view), this.a.d(view));
        if (i == 0) {
            return false;
        }
        this.f983b.d();
        this.f983b.a(i);
        return this.f983b.b();
    }
}
