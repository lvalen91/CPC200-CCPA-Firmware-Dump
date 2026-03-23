package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: androidx.recyclerview.widget.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0462b {

    /* JADX INFO: renamed from: a */
    final b f2897a;

    /* JADX INFO: renamed from: b */
    final a f2898b = new a();

    /* JADX INFO: renamed from: c */
    final List<View> f2899c = new ArrayList();

    /* JADX INFO: renamed from: androidx.recyclerview.widget.b$a */
    static class a {

        /* JADX INFO: renamed from: a */
        long f2900a = 0;

        /* JADX INFO: renamed from: b */
        a f2901b;

        a() {
        }

        /* JADX INFO: renamed from: c */
        private void m3819c() {
            if (this.f2901b == null) {
                this.f2901b = new a();
            }
        }

        /* JADX INFO: renamed from: a */
        void m3820a(int i) {
            if (i < 64) {
                this.f2900a &= (1 << i) ^ (-1);
                return;
            }
            a aVar = this.f2901b;
            if (aVar != null) {
                aVar.m3820a(i - 64);
            }
        }

        /* JADX INFO: renamed from: b */
        int m3821b(int i) {
            a aVar = this.f2901b;
            return aVar == null ? i >= 64 ? Long.bitCount(this.f2900a) : Long.bitCount(this.f2900a & ((1 << i) - 1)) : i < 64 ? Long.bitCount(this.f2900a & ((1 << i) - 1)) : aVar.m3821b(i - 64) + Long.bitCount(this.f2900a);
        }

        /* JADX INFO: renamed from: d */
        boolean m3822d(int i) {
            if (i < 64) {
                return (this.f2900a & (1 << i)) != 0;
            }
            m3819c();
            return this.f2901b.m3822d(i - 64);
        }

        /* JADX INFO: renamed from: e */
        void m3823e(int i, boolean z) {
            if (i >= 64) {
                m3819c();
                this.f2901b.m3823e(i - 64, z);
                return;
            }
            boolean z2 = (this.f2900a & Long.MIN_VALUE) != 0;
            long j = (1 << i) - 1;
            long j2 = this.f2900a;
            this.f2900a = ((j2 & (j ^ (-1))) << 1) | (j2 & j);
            if (z) {
                m3826h(i);
            } else {
                m3820a(i);
            }
            if (z2 || this.f2901b != null) {
                m3819c();
                this.f2901b.m3823e(0, z2);
            }
        }

        /* JADX INFO: renamed from: f */
        boolean m3824f(int i) {
            if (i >= 64) {
                m3819c();
                return this.f2901b.m3824f(i - 64);
            }
            long j = 1 << i;
            boolean z = (this.f2900a & j) != 0;
            long j2 = this.f2900a & (j ^ (-1));
            this.f2900a = j2;
            long j3 = j - 1;
            this.f2900a = (j2 & j3) | Long.rotateRight((j3 ^ (-1)) & j2, 1);
            a aVar = this.f2901b;
            if (aVar != null) {
                if (aVar.m3822d(0)) {
                    m3826h(63);
                }
                this.f2901b.m3824f(0);
            }
            return z;
        }

        /* JADX INFO: renamed from: g */
        void m3825g() {
            this.f2900a = 0L;
            a aVar = this.f2901b;
            if (aVar != null) {
                aVar.m3825g();
            }
        }

        /* JADX INFO: renamed from: h */
        void m3826h(int i) {
            if (i < 64) {
                this.f2900a |= 1 << i;
            } else {
                m3819c();
                this.f2901b.m3826h(i - 64);
            }
        }

        public String toString() {
            if (this.f2901b == null) {
                return Long.toBinaryString(this.f2900a);
            }
            return this.f2901b.toString() + "xx" + Long.toBinaryString(this.f2900a);
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.b$b */
    interface b {
        /* JADX INFO: renamed from: a */
        View mo3385a(int i);

        /* JADX INFO: renamed from: b */
        void mo3386b(View view);

        /* JADX INFO: renamed from: c */
        void mo3387c(int i);

        /* JADX INFO: renamed from: d */
        void mo3388d();

        /* JADX INFO: renamed from: e */
        RecyclerView.AbstractC0431c0 mo3389e(View view);

        /* JADX INFO: renamed from: f */
        void mo3390f(int i);

        /* JADX INFO: renamed from: g */
        void mo3391g(View view);

        /* JADX INFO: renamed from: h */
        void mo3392h(View view, int i, ViewGroup.LayoutParams layoutParams);

        /* JADX INFO: renamed from: i */
        void mo3393i(View view, int i);

        /* JADX INFO: renamed from: j */
        int mo3394j(View view);

        /* JADX INFO: renamed from: k */
        int mo3395k();
    }

    C0462b(b bVar) {
        this.f2897a = bVar;
    }

    /* JADX INFO: renamed from: h */
    private int m3799h(int i) {
        if (i < 0) {
            return -1;
        }
        int iMo3395k = this.f2897a.mo3395k();
        int i2 = i;
        while (i2 < iMo3395k) {
            int iM3821b = i - (i2 - this.f2898b.m3821b(i2));
            if (iM3821b == 0) {
                while (this.f2898b.m3822d(i2)) {
                    i2++;
                }
                return i2;
            }
            i2 += iM3821b;
        }
        return -1;
    }

    /* JADX INFO: renamed from: l */
    private void m3800l(View view) {
        this.f2899c.add(view);
        this.f2897a.mo3386b(view);
    }

    /* JADX INFO: renamed from: t */
    private boolean m3801t(View view) {
        if (!this.f2899c.remove(view)) {
            return false;
        }
        this.f2897a.mo3391g(view);
        return true;
    }

    /* JADX INFO: renamed from: a */
    void m3802a(View view, int i, boolean z) {
        int iMo3395k = i < 0 ? this.f2897a.mo3395k() : m3799h(i);
        this.f2898b.m3823e(iMo3395k, z);
        if (z) {
            m3800l(view);
        }
        this.f2897a.mo3393i(view, iMo3395k);
    }

    /* JADX INFO: renamed from: b */
    void m3803b(View view, boolean z) {
        m3802a(view, -1, z);
    }

    /* JADX INFO: renamed from: c */
    void m3804c(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int iMo3395k = i < 0 ? this.f2897a.mo3395k() : m3799h(i);
        this.f2898b.m3823e(iMo3395k, z);
        if (z) {
            m3800l(view);
        }
        this.f2897a.mo3392h(view, iMo3395k, layoutParams);
    }

    /* JADX INFO: renamed from: d */
    void m3805d(int i) {
        int iM3799h = m3799h(i);
        this.f2898b.m3824f(iM3799h);
        this.f2897a.mo3390f(iM3799h);
    }

    /* JADX INFO: renamed from: e */
    View m3806e(int i) {
        int size = this.f2899c.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = this.f2899c.get(i2);
            RecyclerView.AbstractC0431c0 abstractC0431c0Mo3389e = this.f2897a.mo3389e(view);
            if (abstractC0431c0Mo3389e.m3371m() == i && !abstractC0431c0Mo3389e.m3378t() && !abstractC0431c0Mo3389e.m3380v()) {
                return view;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: f */
    View m3807f(int i) {
        return this.f2897a.mo3385a(m3799h(i));
    }

    /* JADX INFO: renamed from: g */
    int m3808g() {
        return this.f2897a.mo3395k() - this.f2899c.size();
    }

    /* JADX INFO: renamed from: i */
    View m3809i(int i) {
        return this.f2897a.mo3385a(i);
    }

    /* JADX INFO: renamed from: j */
    int m3810j() {
        return this.f2897a.mo3395k();
    }

    /* JADX INFO: renamed from: k */
    void m3811k(View view) {
        int iMo3394j = this.f2897a.mo3394j(view);
        if (iMo3394j >= 0) {
            this.f2898b.m3826h(iMo3394j);
            m3800l(view);
        } else {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
    }

    /* JADX INFO: renamed from: m */
    int m3812m(View view) {
        int iMo3394j = this.f2897a.mo3394j(view);
        if (iMo3394j == -1 || this.f2898b.m3822d(iMo3394j)) {
            return -1;
        }
        return iMo3394j - this.f2898b.m3821b(iMo3394j);
    }

    /* JADX INFO: renamed from: n */
    boolean m3813n(View view) {
        return this.f2899c.contains(view);
    }

    /* JADX INFO: renamed from: o */
    void m3814o() {
        this.f2898b.m3825g();
        for (int size = this.f2899c.size() - 1; size >= 0; size--) {
            this.f2897a.mo3391g(this.f2899c.get(size));
            this.f2899c.remove(size);
        }
        this.f2897a.mo3388d();
    }

    /* JADX INFO: renamed from: p */
    void m3815p(View view) {
        int iMo3394j = this.f2897a.mo3394j(view);
        if (iMo3394j < 0) {
            return;
        }
        if (this.f2898b.m3824f(iMo3394j)) {
            m3801t(view);
        }
        this.f2897a.mo3387c(iMo3394j);
    }

    /* JADX INFO: renamed from: q */
    void m3816q(int i) {
        int iM3799h = m3799h(i);
        View viewMo3385a = this.f2897a.mo3385a(iM3799h);
        if (viewMo3385a == null) {
            return;
        }
        if (this.f2898b.m3824f(iM3799h)) {
            m3801t(viewMo3385a);
        }
        this.f2897a.mo3387c(iM3799h);
    }

    /* JADX INFO: renamed from: r */
    boolean m3817r(View view) {
        int iMo3394j = this.f2897a.mo3394j(view);
        if (iMo3394j == -1) {
            m3801t(view);
            return true;
        }
        if (!this.f2898b.m3822d(iMo3394j)) {
            return false;
        }
        this.f2898b.m3824f(iMo3394j);
        m3801t(view);
        this.f2897a.mo3387c(iMo3394j);
        return true;
    }

    /* JADX INFO: renamed from: s */
    void m3818s(View view) {
        int iMo3394j = this.f2897a.mo3394j(view);
        if (iMo3394j < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
        if (this.f2898b.m3822d(iMo3394j)) {
            this.f2898b.m3820a(iMo3394j);
            m3801t(view);
        } else {
            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
        }
    }

    public String toString() {
        return this.f2898b.toString() + ", hidden list:" + this.f2899c.size();
    }
}
