package androidx.recyclerview.widget;

import android.view.View;

/* JADX INFO: renamed from: androidx.recyclerview.widget.o */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0475o {

    /* JADX INFO: renamed from: a */
    final b f3037a;

    /* JADX INFO: renamed from: b */
    a f3038b = new a();

    /* JADX INFO: renamed from: androidx.recyclerview.widget.o$a */
    static class a {

        /* JADX INFO: renamed from: a */
        int f3039a = 0;

        /* JADX INFO: renamed from: b */
        int f3040b;

        /* JADX INFO: renamed from: c */
        int f3041c;

        /* JADX INFO: renamed from: d */
        int f3042d;

        /* JADX INFO: renamed from: e */
        int f3043e;

        a() {
        }

        /* JADX INFO: renamed from: a */
        void m3957a(int i) {
            this.f3039a = i | this.f3039a;
        }

        /* JADX INFO: renamed from: b */
        boolean m3958b() {
            int i = this.f3039a;
            if ((i & 7) != 0 && (i & (m3959c(this.f3042d, this.f3040b) << 0)) == 0) {
                return false;
            }
            int i2 = this.f3039a;
            if ((i2 & 112) != 0 && (i2 & (m3959c(this.f3042d, this.f3041c) << 4)) == 0) {
                return false;
            }
            int i3 = this.f3039a;
            if ((i3 & 1792) != 0 && (i3 & (m3959c(this.f3043e, this.f3040b) << 8)) == 0) {
                return false;
            }
            int i4 = this.f3039a;
            return (i4 & 28672) == 0 || (i4 & (m3959c(this.f3043e, this.f3041c) << 12)) != 0;
        }

        /* JADX INFO: renamed from: c */
        int m3959c(int i, int i2) {
            if (i > i2) {
                return 1;
            }
            return i == i2 ? 2 : 4;
        }

        /* JADX INFO: renamed from: d */
        void m3960d() {
            this.f3039a = 0;
        }

        /* JADX INFO: renamed from: e */
        void m3961e(int i, int i2, int i3, int i4) {
            this.f3040b = i;
            this.f3041c = i2;
            this.f3042d = i3;
            this.f3043e = i4;
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.o$b */
    interface b {
        /* JADX INFO: renamed from: a */
        View mo3564a(int i);

        /* JADX INFO: renamed from: b */
        int mo3565b();

        /* JADX INFO: renamed from: c */
        int mo3566c();

        /* JADX INFO: renamed from: d */
        int mo3567d(View view);

        /* JADX INFO: renamed from: e */
        int mo3568e(View view);
    }

    C0475o(b bVar) {
        this.f3037a = bVar;
    }

    /* JADX INFO: renamed from: a */
    View m3955a(int i, int i2, int i3, int i4) {
        int iMo3566c = this.f3037a.mo3566c();
        int iMo3565b = this.f3037a.mo3565b();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        while (i != i2) {
            View viewMo3564a = this.f3037a.mo3564a(i);
            this.f3038b.m3961e(iMo3566c, iMo3565b, this.f3037a.mo3568e(viewMo3564a), this.f3037a.mo3567d(viewMo3564a));
            if (i3 != 0) {
                this.f3038b.m3960d();
                this.f3038b.m3957a(i3);
                if (this.f3038b.m3958b()) {
                    return viewMo3564a;
                }
            }
            if (i4 != 0) {
                this.f3038b.m3960d();
                this.f3038b.m3957a(i4);
                if (this.f3038b.m3958b()) {
                    view = viewMo3564a;
                }
            }
            i += i5;
        }
        return view;
    }

    /* JADX INFO: renamed from: b */
    boolean m3956b(View view, int i) {
        this.f3038b.m3961e(this.f3037a.mo3566c(), this.f3037a.mo3565b(), this.f3037a.mo3568e(view), this.f3037a.mo3567d(view));
        if (i == 0) {
            return false;
        }
        this.f3038b.m3960d();
        this.f3038b.m3957a(i);
        return this.f3038b.m3958b();
    }
}
