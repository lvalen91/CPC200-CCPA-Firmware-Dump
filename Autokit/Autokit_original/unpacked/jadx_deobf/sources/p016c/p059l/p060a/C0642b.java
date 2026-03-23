package p016c.p059l.p060a;

import android.os.Bundle;
import androidx.lifecycle.AbstractC0408v;
import androidx.lifecycle.C0401o;
import androidx.lifecycle.C0409w;
import androidx.lifecycle.C0410x;
import androidx.lifecycle.InterfaceC0396j;
import androidx.lifecycle.InterfaceC0402p;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import p016c.p032d.C0541h;
import p016c.p041g.p049j.C0620b;
import p016c.p059l.p061b.C0643a;

/* JADX INFO: renamed from: c.l.a.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0642b extends AbstractC0641a {

    /* JADX INFO: renamed from: c */
    static boolean f3880c;

    /* JADX INFO: renamed from: a */
    private final InterfaceC0396j f3881a;

    /* JADX INFO: renamed from: b */
    private final c f3882b;

    /* JADX WARN: Unexpected interfaces in signature: [java.lang.Object<D>] */
    /* JADX INFO: renamed from: c.l.a.b$a */
    public static class a<D> extends C0401o<D> {

        /* JADX INFO: renamed from: k */
        private final int f3883k;

        /* JADX INFO: renamed from: l */
        private final Bundle f3884l;

        /* JADX INFO: renamed from: m */
        private final C0643a<D> f3885m;

        /* JADX INFO: renamed from: n */
        private InterfaceC0396j f3886n;

        /* JADX INFO: renamed from: o */
        private b<D> f3887o;

        /* JADX INFO: renamed from: p */
        private C0643a<D> f3888p;

        @Override // androidx.lifecycle.LiveData
        /* JADX INFO: renamed from: h */
        protected void mo2962h() {
            if (C0642b.f3880c) {
                String str = "  Starting: " + this;
            }
            this.f3885m.m4982d();
            throw null;
        }

        @Override // androidx.lifecycle.LiveData
        /* JADX INFO: renamed from: i */
        protected void mo2963i() {
            if (C0642b.f3880c) {
                String str = "  Stopping: " + this;
            }
            this.f3885m.m4983e();
            throw null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.lifecycle.LiveData
        /* JADX INFO: renamed from: j */
        public void mo2964j(InterfaceC0402p<? super D> interfaceC0402p) {
            super.mo2964j(interfaceC0402p);
            this.f3886n = null;
            this.f3887o = null;
        }

        @Override // androidx.lifecycle.C0401o, androidx.lifecycle.LiveData
        /* JADX INFO: renamed from: k */
        public void mo2965k(D d2) {
            super.mo2965k(d2);
            C0643a<D> c0643a = this.f3888p;
            if (c0643a == null) {
                return;
            }
            c0643a.m4981c();
            throw null;
        }

        /* JADX INFO: renamed from: l */
        C0643a<D> m4973l(boolean z) {
            if (C0642b.f3880c) {
                String str = "  Destroying: " + this;
            }
            this.f3885m.m4979a();
            throw null;
        }

        /* JADX INFO: renamed from: m */
        public void m4974m(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.f3883k);
            printWriter.print(" mArgs=");
            printWriter.println(this.f3884l);
            printWriter.print(str);
            printWriter.print("mLoader=");
            printWriter.println(this.f3885m);
            this.f3885m.m4980b(str + "  ", fileDescriptor, printWriter, strArr);
            throw null;
        }

        /* JADX INFO: renamed from: n */
        void m4975n() {
            InterfaceC0396j interfaceC0396j = this.f3886n;
            b<D> bVar = this.f3887o;
            if (interfaceC0396j == null || bVar == null) {
                return;
            }
            super.mo2964j(bVar);
            m2960f(interfaceC0396j, bVar);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(this.f3883k);
            sb.append(" : ");
            C0620b.m4845a(this.f3885m, sb);
            sb.append("}}");
            return sb.toString();
        }
    }

    /* JADX INFO: renamed from: c.l.a.b$b */
    static class b<D> implements InterfaceC0402p<D> {
    }

    /* JADX INFO: renamed from: c.l.a.b$c */
    static class c extends AbstractC0408v {

        /* JADX INFO: renamed from: d */
        private static final C0409w.b f3889d = new a();

        /* JADX INFO: renamed from: c */
        private C0541h<a> f3890c = new C0541h<>();

        /* JADX INFO: renamed from: c.l.a.b$c$a */
        static class a implements C0409w.b {
            a() {
            }

            @Override // androidx.lifecycle.C0409w.b
            /* JADX INFO: renamed from: a */
            public <T extends AbstractC0408v> T mo2836a(Class<T> cls) {
                return new c();
            }
        }

        c() {
        }

        /* JADX INFO: renamed from: j */
        static c m4976j(C0410x c0410x) {
            return (c) new C0409w(c0410x, f3889d).m3053a(c.class);
        }

        @Override // androidx.lifecycle.AbstractC0408v
        /* JADX INFO: renamed from: g */
        protected void mo2825g() {
            super.mo2825g();
            if (this.f3890c.m4307j() <= 0) {
                this.f3890c.m4300b();
            } else {
                this.f3890c.m4308k(0).m4973l(true);
                throw null;
            }
        }

        /* JADX INFO: renamed from: i */
        public void m4977i(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            if (this.f3890c.m4307j() > 0) {
                printWriter.print(str);
                printWriter.println("Loaders:");
                String str2 = str + "    ";
                if (this.f3890c.m4307j() <= 0) {
                    return;
                }
                a aVarM4308k = this.f3890c.m4308k(0);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(this.f3890c.m4305h(0));
                printWriter.print(": ");
                printWriter.println(aVarM4308k.toString());
                aVarM4308k.m4974m(str2, fileDescriptor, printWriter, strArr);
                throw null;
            }
        }

        /* JADX INFO: renamed from: k */
        void m4978k() {
            int iM4307j = this.f3890c.m4307j();
            for (int i = 0; i < iM4307j; i++) {
                this.f3890c.m4308k(i).m4975n();
            }
        }
    }

    C0642b(InterfaceC0396j interfaceC0396j, C0410x c0410x) {
        this.f3881a = interfaceC0396j;
        this.f3882b = c.m4976j(c0410x);
    }

    @Override // p016c.p059l.p060a.AbstractC0641a
    @Deprecated
    /* JADX INFO: renamed from: a */
    public void mo4971a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.f3882b.m4977i(str, fileDescriptor, printWriter, strArr);
    }

    @Override // p016c.p059l.p060a.AbstractC0641a
    /* JADX INFO: renamed from: c */
    public void mo4972c() {
        this.f3882b.m4978k();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        C0620b.m4845a(this.f3881a, sb);
        sb.append("}}");
        return sb.toString();
    }
}
