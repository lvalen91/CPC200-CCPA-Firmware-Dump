package c.a.o;

import android.view.View;
import android.view.animation.Interpolator;
import androidx.core.view.a0;
import androidx.core.view.b0;
import androidx.core.view.z;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class h {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Interpolator f1042c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    a0 f1043d;
    private boolean e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f1041b = -1;
    private final b0 f = new a();
    final ArrayList<z> a = new ArrayList<>();

    class a extends b0 {
        private boolean a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f1044b = 0;

        a() {
        }

        @Override // androidx.core.view.a0
        public void a(View view) {
            int i = this.f1044b + 1;
            this.f1044b = i;
            if (i == h.this.a.size()) {
                a0 a0Var = h.this.f1043d;
                if (a0Var != null) {
                    a0Var.a(null);
                }
                d();
            }
        }

        @Override // androidx.core.view.b0, androidx.core.view.a0
        public void b(View view) {
            if (this.a) {
                return;
            }
            this.a = true;
            a0 a0Var = h.this.f1043d;
            if (a0Var != null) {
                a0Var.b(null);
            }
        }

        void d() {
            this.f1044b = 0;
            this.a = false;
            h.this.b();
        }
    }

    public void a() {
        if (this.e) {
            Iterator<z> it = this.a.iterator();
            while (it.hasNext()) {
                it.next().b();
            }
            this.e = false;
        }
    }

    void b() {
        this.e = false;
    }

    public h c(z zVar) {
        if (!this.e) {
            this.a.add(zVar);
        }
        return this;
    }

    public h d(z zVar, z zVar2) {
        this.a.add(zVar);
        zVar2.h(zVar.c());
        this.a.add(zVar2);
        return this;
    }

    public h e(long j) {
        if (!this.e) {
            this.f1041b = j;
        }
        return this;
    }

    public h f(Interpolator interpolator) {
        if (!this.e) {
            this.f1042c = interpolator;
        }
        return this;
    }

    public h g(a0 a0Var) {
        if (!this.e) {
            this.f1043d = a0Var;
        }
        return this;
    }

    public void h() {
        if (this.e) {
            return;
        }
        for (z zVar : this.a) {
            long j = this.f1041b;
            if (j >= 0) {
                zVar.d(j);
            }
            Interpolator interpolator = this.f1042c;
            if (interpolator != null) {
                zVar.e(interpolator);
            }
            if (this.f1043d != null) {
                zVar.f(this.f);
            }
            zVar.j();
        }
        this.e = true;
    }
}
