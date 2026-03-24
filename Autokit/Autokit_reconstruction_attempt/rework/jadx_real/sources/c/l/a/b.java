package c.l.a;

import android.os.Bundle;
import androidx.lifecycle.j;
import androidx.lifecycle.o;
import androidx.lifecycle.p;
import androidx.lifecycle.v;
import androidx.lifecycle.w;
import androidx.lifecycle.x;
import c.d.h;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class b extends c.l.a.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static boolean f1258c;
    private final j a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f1259b;

    /* JADX WARN: Unexpected interfaces in signature: [java.lang.Object<D>] */
    public static class a<D> extends o<D> {
        private final int k;
        private final Bundle l;
        private final c.l.b.a<D> m;
        private j n;
        private C0061b<D> o;
        private c.l.b.a<D> p;

        @Override // androidx.lifecycle.LiveData
        protected void h() {
            if (b.f1258c) {
                String str = "  Starting: " + this;
            }
            this.m.d();
            throw null;
        }

        @Override // androidx.lifecycle.LiveData
        protected void i() {
            if (b.f1258c) {
                String str = "  Stopping: " + this;
            }
            this.m.e();
            throw null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.lifecycle.LiveData
        public void j(p<? super D> pVar) {
            super.j(pVar);
            this.n = null;
            this.o = null;
        }

        @Override // androidx.lifecycle.o, androidx.lifecycle.LiveData
        public void k(D d2) {
            super.k(d2);
            c.l.b.a<D> aVar = this.p;
            if (aVar == null) {
                return;
            }
            aVar.c();
            throw null;
        }

        c.l.b.a<D> l(boolean z) {
            if (b.f1258c) {
                String str = "  Destroying: " + this;
            }
            this.m.a();
            throw null;
        }

        public void m(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.k);
            printWriter.print(" mArgs=");
            printWriter.println(this.l);
            printWriter.print(str);
            printWriter.print("mLoader=");
            printWriter.println(this.m);
            this.m.b(str + "  ", fileDescriptor, printWriter, strArr);
            throw null;
        }

        void n() {
            j jVar = this.n;
            C0061b<D> c0061b = this.o;
            if (jVar == null || c0061b == null) {
                return;
            }
            super.j(c0061b);
            f(jVar, c0061b);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(this.k);
            sb.append(" : ");
            c.g.j.b.a(this.m, sb);
            sb.append("}}");
            return sb.toString();
        }
    }

    /* JADX INFO: renamed from: c.l.a.b$b, reason: collision with other inner class name */
    static class C0061b<D> implements p<D> {
    }

    static class c extends v {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final w.b f1260d = new a();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private h<a> f1261c = new h<>();

        static class a implements w.b {
            a() {
            }

            @Override // androidx.lifecycle.w.b
            public <T extends v> T a(Class<T> cls) {
                return new c();
            }
        }

        c() {
        }

        static c j(x xVar) {
            return (c) new w(xVar, f1260d).a(c.class);
        }

        @Override // androidx.lifecycle.v
        protected void g() {
            super.g();
            if (this.f1261c.j() <= 0) {
                this.f1261c.b();
            } else {
                this.f1261c.k(0).l(true);
                throw null;
            }
        }

        public void i(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            if (this.f1261c.j() > 0) {
                printWriter.print(str);
                printWriter.println("Loaders:");
                String str2 = str + "    ";
                if (this.f1261c.j() <= 0) {
                    return;
                }
                a aVarK = this.f1261c.k(0);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(this.f1261c.h(0));
                printWriter.print(": ");
                printWriter.println(aVarK.toString());
                aVarK.m(str2, fileDescriptor, printWriter, strArr);
                throw null;
            }
        }

        void k() {
            int iJ = this.f1261c.j();
            for (int i = 0; i < iJ; i++) {
                this.f1261c.k(i).n();
            }
        }
    }

    b(j jVar, x xVar) {
        this.a = jVar;
        this.f1259b = c.j(xVar);
    }

    @Override // c.l.a.a
    @Deprecated
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.f1259b.i(str, fileDescriptor, printWriter, strArr);
    }

    @Override // c.l.a.a
    public void c() {
        this.f1259b.k();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        c.g.j.b.a(this.a, sb);
        sb.append("}}");
        return sb.toString();
    }
}
