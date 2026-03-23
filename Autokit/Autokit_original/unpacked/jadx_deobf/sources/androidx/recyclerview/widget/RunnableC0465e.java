package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;
import p016c.p041g.p046g.C0605c;

/* JADX INFO: renamed from: androidx.recyclerview.widget.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
final class RunnableC0465e implements Runnable {

    /* JADX INFO: renamed from: f */
    static final ThreadLocal<RunnableC0465e> f2989f = new ThreadLocal<>();

    /* JADX INFO: renamed from: g */
    static Comparator<c> f2990g = new a();

    /* JADX INFO: renamed from: c */
    long f2992c;

    /* JADX INFO: renamed from: d */
    long f2993d;

    /* JADX INFO: renamed from: b */
    ArrayList<RecyclerView> f2991b = new ArrayList<>();

    /* JADX INFO: renamed from: e */
    private ArrayList<c> f2994e = new ArrayList<>();

    /* JADX INFO: renamed from: androidx.recyclerview.widget.e$a */
    static class a implements Comparator<c> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(c cVar, c cVar2) {
            if ((cVar.f3002d == null) != (cVar2.f3002d == null)) {
                return cVar.f3002d == null ? 1 : -1;
            }
            boolean z = cVar.f2999a;
            if (z != cVar2.f2999a) {
                return z ? -1 : 1;
            }
            int i = cVar2.f3000b - cVar.f3000b;
            if (i != 0) {
                return i;
            }
            int i2 = cVar.f3001c - cVar2.f3001c;
            if (i2 != 0) {
                return i2;
            }
            return 0;
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.e$b */
    @SuppressLint({"VisibleForTests"})
    static class b implements RecyclerView.AbstractC0442n.c {

        /* JADX INFO: renamed from: a */
        int f2995a;

        /* JADX INFO: renamed from: b */
        int f2996b;

        /* JADX INFO: renamed from: c */
        int[] f2997c;

        /* JADX INFO: renamed from: d */
        int f2998d;

        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0442n.c
        /* JADX INFO: renamed from: a */
        public void mo3569a(int i, int i2) {
            if (i < 0) {
                throw new IllegalArgumentException("Layout positions must be non-negative");
            }
            if (i2 < 0) {
                throw new IllegalArgumentException("Pixel distance must be non-negative");
            }
            int i3 = this.f2998d * 2;
            int[] iArr = this.f2997c;
            if (iArr == null) {
                int[] iArr2 = new int[4];
                this.f2997c = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i3 >= iArr.length) {
                int[] iArr3 = new int[i3 * 2];
                this.f2997c = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            }
            int[] iArr4 = this.f2997c;
            iArr4[i3] = i;
            iArr4[i3 + 1] = i2;
            this.f2998d++;
        }

        /* JADX INFO: renamed from: b */
        void m3872b() {
            int[] iArr = this.f2997c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f2998d = 0;
        }

        /* JADX INFO: renamed from: c */
        void m3873c(RecyclerView recyclerView, boolean z) {
            this.f2998d = 0;
            int[] iArr = this.f2997c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.AbstractC0442n abstractC0442n = recyclerView.f2685m;
            if (recyclerView.f2683l == null || abstractC0442n == null || !abstractC0442n.m3554u0()) {
                return;
            }
            if (z) {
                if (!recyclerView.f2669e.m3793p()) {
                    abstractC0442n.mo3185p(recyclerView.f2683l.mo3407c(), this);
                }
            } else if (!recyclerView.m3305l0()) {
                abstractC0442n.mo3183o(this.f2995a, this.f2996b, recyclerView.f2676h0, this);
            }
            int i = this.f2998d;
            if (i > abstractC0442n.f2764m) {
                abstractC0442n.f2764m = i;
                abstractC0442n.f2765n = z;
                recyclerView.f2665c.m3607K();
            }
        }

        /* JADX INFO: renamed from: d */
        boolean m3874d(int i) {
            if (this.f2997c != null) {
                int i2 = this.f2998d * 2;
                for (int i3 = 0; i3 < i2; i3 += 2) {
                    if (this.f2997c[i3] == i) {
                        return true;
                    }
                }
            }
            return false;
        }

        /* JADX INFO: renamed from: e */
        void m3875e(int i, int i2) {
            this.f2995a = i;
            this.f2996b = i2;
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.e$c */
    static class c {

        /* JADX INFO: renamed from: a */
        public boolean f2999a;

        /* JADX INFO: renamed from: b */
        public int f3000b;

        /* JADX INFO: renamed from: c */
        public int f3001c;

        /* JADX INFO: renamed from: d */
        public RecyclerView f3002d;

        /* JADX INFO: renamed from: e */
        public int f3003e;

        c() {
        }

        /* JADX INFO: renamed from: a */
        public void m3876a() {
            this.f2999a = false;
            this.f3000b = 0;
            this.f3001c = 0;
            this.f3002d = null;
            this.f3003e = 0;
        }
    }

    RunnableC0465e() {
    }

    /* JADX INFO: renamed from: b */
    private void m3861b() {
        c cVar;
        int size = this.f2991b.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            RecyclerView recyclerView = this.f2991b.get(i2);
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.f2674g0.m3873c(recyclerView, false);
                i += recyclerView.f2674g0.f2998d;
            }
        }
        this.f2994e.ensureCapacity(i);
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            RecyclerView recyclerView2 = this.f2991b.get(i4);
            if (recyclerView2.getWindowVisibility() == 0) {
                b bVar = recyclerView2.f2674g0;
                int iAbs = Math.abs(bVar.f2995a) + Math.abs(bVar.f2996b);
                for (int i5 = 0; i5 < bVar.f2998d * 2; i5 += 2) {
                    if (i3 >= this.f2994e.size()) {
                        cVar = new c();
                        this.f2994e.add(cVar);
                    } else {
                        cVar = this.f2994e.get(i3);
                    }
                    int i6 = bVar.f2997c[i5 + 1];
                    cVar.f2999a = i6 <= iAbs;
                    cVar.f3000b = iAbs;
                    cVar.f3001c = i6;
                    cVar.f3002d = recyclerView2;
                    cVar.f3003e = bVar.f2997c[i5];
                    i3++;
                }
            }
        }
        Collections.sort(this.f2994e, f2990g);
    }

    /* JADX INFO: renamed from: c */
    private void m3862c(c cVar, long j) {
        RecyclerView.AbstractC0431c0 abstractC0431c0M3866i = m3866i(cVar.f3002d, cVar.f3003e, cVar.f2999a ? Long.MAX_VALUE : j);
        if (abstractC0431c0M3866i == null || abstractC0431c0M3866i.f2722b == null || !abstractC0431c0M3866i.m3377s() || abstractC0431c0M3866i.m3378t()) {
            return;
        }
        m3865h(abstractC0431c0M3866i.f2722b.get(), j);
    }

    /* JADX INFO: renamed from: d */
    private void m3863d(long j) {
        for (int i = 0; i < this.f2994e.size(); i++) {
            c cVar = this.f2994e.get(i);
            if (cVar.f3002d == null) {
                return;
            }
            m3862c(cVar, j);
            cVar.m3876a();
        }
    }

    /* JADX INFO: renamed from: e */
    static boolean m3864e(RecyclerView recyclerView, int i) {
        int iM3810j = recyclerView.f2671f.m3810j();
        for (int i2 = 0; i2 < iM3810j; i2++) {
            RecyclerView.AbstractC0431c0 abstractC0431c0M3233f0 = RecyclerView.m3233f0(recyclerView.f2671f.m3809i(i2));
            if (abstractC0431c0M3233f0.f2723c == i && !abstractC0431c0M3233f0.m3378t()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: h */
    private void m3865h(RecyclerView recyclerView, long j) {
        if (recyclerView == null) {
            return;
        }
        if (recyclerView.f2642D && recyclerView.f2671f.m3810j() != 0) {
            recyclerView.m3277T0();
        }
        b bVar = recyclerView.f2674g0;
        bVar.m3873c(recyclerView, true);
        if (bVar.f2998d != 0) {
            try {
                C0605c.m4756a("RV Nested Prefetch");
                recyclerView.f2676h0.m3666f(recyclerView.f2683l);
                for (int i = 0; i < bVar.f2998d * 2; i += 2) {
                    m3866i(recyclerView, bVar.f2997c[i], j);
                }
            } finally {
                C0605c.m4757b();
            }
        }
    }

    /* JADX INFO: renamed from: i */
    private RecyclerView.AbstractC0431c0 m3866i(RecyclerView recyclerView, int i, long j) {
        if (m3864e(recyclerView, i)) {
            return null;
        }
        RecyclerView.C0449u c0449u = recyclerView.f2665c;
        try {
            recyclerView.m3257F0();
            RecyclerView.AbstractC0431c0 abstractC0431c0M3605I = c0449u.m3605I(i, false, j);
            if (abstractC0431c0M3605I != null) {
                if (!abstractC0431c0M3605I.m3377s() || abstractC0431c0M3605I.m3378t()) {
                    c0449u.m3610a(abstractC0431c0M3605I, false);
                } else {
                    c0449u.m3599B(abstractC0431c0M3605I.f2721a);
                }
            }
            return abstractC0431c0M3605I;
        } finally {
            recyclerView.m3261H0(false);
        }
    }

    /* JADX INFO: renamed from: a */
    public void m3867a(RecyclerView recyclerView) {
        this.f2991b.add(recyclerView);
    }

    /* JADX INFO: renamed from: f */
    void m3868f(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.isAttachedToWindow() && this.f2992c == 0) {
            this.f2992c = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        recyclerView.f2674g0.m3875e(i, i2);
    }

    /* JADX INFO: renamed from: g */
    void m3869g(long j) {
        m3861b();
        m3863d(j);
    }

    /* JADX INFO: renamed from: j */
    public void m3870j(RecyclerView recyclerView) {
        this.f2991b.remove(recyclerView);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            C0605c.m4756a("RV Prefetch");
            if (!this.f2991b.isEmpty()) {
                int size = this.f2991b.size();
                long jMax = 0;
                for (int i = 0; i < size; i++) {
                    RecyclerView recyclerView = this.f2991b.get(i);
                    if (recyclerView.getWindowVisibility() == 0) {
                        jMax = Math.max(recyclerView.getDrawingTime(), jMax);
                    }
                }
                if (jMax != 0) {
                    m3869g(TimeUnit.MILLISECONDS.toNanos(jMax) + this.f2993d);
                }
            }
        } finally {
            this.f2992c = 0L;
            C0605c.m4757b();
        }
    }
}
