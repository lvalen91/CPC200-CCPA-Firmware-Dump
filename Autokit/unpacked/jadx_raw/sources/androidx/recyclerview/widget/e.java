package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
final class e implements Runnable {
    static final ThreadLocal<e> f = new ThreadLocal<>();
    static Comparator<c> g = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    long f964c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long f965d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ArrayList<RecyclerView> f963b = new ArrayList<>();
    private ArrayList<c> e = new ArrayList<>();

    static class a implements Comparator<c> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(c cVar, c cVar2) {
            if ((cVar.f971d == null) != (cVar2.f971d == null)) {
                return cVar.f971d == null ? 1 : -1;
            }
            boolean z = cVar.a;
            if (z != cVar2.a) {
                return z ? -1 : 1;
            }
            int i = cVar2.f969b - cVar.f969b;
            if (i != 0) {
                return i;
            }
            int i2 = cVar.f970c - cVar2.f970c;
            if (i2 != 0) {
                return i2;
            }
            return 0;
        }
    }

    @SuppressLint({"VisibleForTests"})
    static class b implements RecyclerView.n.c {
        int a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f966b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int[] f967c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f968d;

        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.n.c
        public void a(int i, int i2) {
            if (i < 0) {
                throw new IllegalArgumentException("Layout positions must be non-negative");
            }
            if (i2 < 0) {
                throw new IllegalArgumentException("Pixel distance must be non-negative");
            }
            int i3 = this.f968d * 2;
            int[] iArr = this.f967c;
            if (iArr == null) {
                int[] iArr2 = new int[4];
                this.f967c = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i3 >= iArr.length) {
                int[] iArr3 = new int[i3 * 2];
                this.f967c = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            }
            int[] iArr4 = this.f967c;
            iArr4[i3] = i;
            iArr4[i3 + 1] = i2;
            this.f968d++;
        }

        void b() {
            int[] iArr = this.f967c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f968d = 0;
        }

        void c(RecyclerView recyclerView, boolean z) {
            this.f968d = 0;
            int[] iArr = this.f967c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.n nVar = recyclerView.m;
            if (recyclerView.l == null || nVar == null || !nVar.u0()) {
                return;
            }
            if (z) {
                if (!recyclerView.e.p()) {
                    nVar.p(recyclerView.l.c(), this);
                }
            } else if (!recyclerView.l0()) {
                nVar.o(this.a, this.f966b, recyclerView.h0, this);
            }
            int i = this.f968d;
            if (i > nVar.m) {
                nVar.m = i;
                nVar.n = z;
                recyclerView.f868c.K();
            }
        }

        boolean d(int i) {
            if (this.f967c != null) {
                int i2 = this.f968d * 2;
                for (int i3 = 0; i3 < i2; i3 += 2) {
                    if (this.f967c[i3] == i) {
                        return true;
                    }
                }
            }
            return false;
        }

        void e(int i, int i2) {
            this.a = i;
            this.f966b = i2;
        }
    }

    static class c {
        public boolean a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f969b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f970c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public RecyclerView f971d;
        public int e;

        c() {
        }

        public void a() {
            this.a = false;
            this.f969b = 0;
            this.f970c = 0;
            this.f971d = null;
            this.e = 0;
        }
    }

    e() {
    }

    private void b() {
        c cVar;
        int size = this.f963b.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            RecyclerView recyclerView = this.f963b.get(i2);
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.g0.c(recyclerView, false);
                i += recyclerView.g0.f968d;
            }
        }
        this.e.ensureCapacity(i);
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            RecyclerView recyclerView2 = this.f963b.get(i4);
            if (recyclerView2.getWindowVisibility() == 0) {
                b bVar = recyclerView2.g0;
                int iAbs = Math.abs(bVar.a) + Math.abs(bVar.f966b);
                for (int i5 = 0; i5 < bVar.f968d * 2; i5 += 2) {
                    if (i3 >= this.e.size()) {
                        cVar = new c();
                        this.e.add(cVar);
                    } else {
                        cVar = this.e.get(i3);
                    }
                    int i6 = bVar.f967c[i5 + 1];
                    cVar.a = i6 <= iAbs;
                    cVar.f969b = iAbs;
                    cVar.f970c = i6;
                    cVar.f971d = recyclerView2;
                    cVar.e = bVar.f967c[i5];
                    i3++;
                }
            }
        }
        Collections.sort(this.e, g);
    }

    private void c(c cVar, long j) {
        RecyclerView.c0 c0VarI = i(cVar.f971d, cVar.e, cVar.a ? Long.MAX_VALUE : j);
        if (c0VarI == null || c0VarI.f874b == null || !c0VarI.s() || c0VarI.t()) {
            return;
        }
        h(c0VarI.f874b.get(), j);
    }

    private void d(long j) {
        for (int i = 0; i < this.e.size(); i++) {
            c cVar = this.e.get(i);
            if (cVar.f971d == null) {
                return;
            }
            c(cVar, j);
            cVar.a();
        }
    }

    static boolean e(RecyclerView recyclerView, int i) {
        int iJ = recyclerView.f.j();
        for (int i2 = 0; i2 < iJ; i2++) {
            RecyclerView.c0 c0VarF0 = RecyclerView.f0(recyclerView.f.i(i2));
            if (c0VarF0.f875c == i && !c0VarF0.t()) {
                return true;
            }
        }
        return false;
    }

    private void h(RecyclerView recyclerView, long j) {
        if (recyclerView == null) {
            return;
        }
        if (recyclerView.D && recyclerView.f.j() != 0) {
            recyclerView.T0();
        }
        b bVar = recyclerView.g0;
        bVar.c(recyclerView, true);
        if (bVar.f968d != 0) {
            try {
                c.g.g.c.a("RV Nested Prefetch");
                recyclerView.h0.f(recyclerView.l);
                for (int i = 0; i < bVar.f968d * 2; i += 2) {
                    i(recyclerView, bVar.f967c[i], j);
                }
            } finally {
                c.g.g.c.b();
            }
        }
    }

    private RecyclerView.c0 i(RecyclerView recyclerView, int i, long j) {
        if (e(recyclerView, i)) {
            return null;
        }
        RecyclerView.u uVar = recyclerView.f868c;
        try {
            recyclerView.F0();
            RecyclerView.c0 c0VarI = uVar.I(i, false, j);
            if (c0VarI != null) {
                if (!c0VarI.s() || c0VarI.t()) {
                    uVar.a(c0VarI, false);
                } else {
                    uVar.B(c0VarI.a);
                }
            }
            return c0VarI;
        } finally {
            recyclerView.H0(false);
        }
    }

    public void a(RecyclerView recyclerView) {
        this.f963b.add(recyclerView);
    }

    void f(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.isAttachedToWindow() && this.f964c == 0) {
            this.f964c = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        recyclerView.g0.e(i, i2);
    }

    void g(long j) {
        b();
        d(j);
    }

    public void j(RecyclerView recyclerView) {
        this.f963b.remove(recyclerView);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            c.g.g.c.a("RV Prefetch");
            if (!this.f963b.isEmpty()) {
                int size = this.f963b.size();
                long jMax = 0;
                for (int i = 0; i < size; i++) {
                    RecyclerView recyclerView = this.f963b.get(i);
                    if (recyclerView.getWindowVisibility() == 0) {
                        jMax = Math.max(recyclerView.getDrawingTime(), jMax);
                    }
                }
                if (jMax != 0) {
                    g(TimeUnit.MILLISECONDS.toNanos(jMax) + this.f965d);
                }
            }
        } finally {
            this.f964c = 0L;
            c.g.g.c.b();
        }
    }
}
