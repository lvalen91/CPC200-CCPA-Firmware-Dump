package p016c.p041g.p047h;

import android.content.Context;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Handler;
import p016c.p041g.p049j.C0626h;

/* JADX INFO: renamed from: c.g.h.f */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0611f {

    /* JADX INFO: renamed from: c.g.h.f$a */
    public static class a {

        /* JADX INFO: renamed from: a */
        private final int f3756a;

        /* JADX INFO: renamed from: b */
        private final b[] f3757b;

        @Deprecated
        public a(int i, b[] bVarArr) {
            this.f3756a = i;
            this.f3757b = bVarArr;
        }

        /* JADX INFO: renamed from: a */
        static a m4788a(int i, b[] bVarArr) {
            return new a(i, bVarArr);
        }

        /* JADX INFO: renamed from: b */
        public b[] m4789b() {
            return this.f3757b;
        }

        /* JADX INFO: renamed from: c */
        public int m4790c() {
            return this.f3756a;
        }
    }

    /* JADX INFO: renamed from: c.g.h.f$b */
    public static class b {

        /* JADX INFO: renamed from: a */
        private final Uri f3758a;

        /* JADX INFO: renamed from: b */
        private final int f3759b;

        /* JADX INFO: renamed from: c */
        private final int f3760c;

        /* JADX INFO: renamed from: d */
        private final boolean f3761d;

        /* JADX INFO: renamed from: e */
        private final int f3762e;

        @Deprecated
        public b(Uri uri, int i, int i2, boolean z, int i3) {
            C0626h.m4855e(uri);
            this.f3758a = uri;
            this.f3759b = i;
            this.f3760c = i2;
            this.f3761d = z;
            this.f3762e = i3;
        }

        /* JADX INFO: renamed from: a */
        static b m4791a(Uri uri, int i, int i2, boolean z, int i3) {
            return new b(uri, i, i2, z, i3);
        }

        /* JADX INFO: renamed from: b */
        public int m4792b() {
            return this.f3762e;
        }

        /* JADX INFO: renamed from: c */
        public int m4793c() {
            return this.f3759b;
        }

        /* JADX INFO: renamed from: d */
        public Uri m4794d() {
            return this.f3758a;
        }

        /* JADX INFO: renamed from: e */
        public int m4795e() {
            return this.f3760c;
        }

        /* JADX INFO: renamed from: f */
        public boolean m4796f() {
            return this.f3761d;
        }
    }

    /* JADX INFO: renamed from: c.g.h.f$c */
    public static class c {
        /* JADX INFO: renamed from: a */
        public void mo4700a(int i) {
            throw null;
        }

        /* JADX INFO: renamed from: b */
        public void mo4701b(Typeface typeface) {
            throw null;
        }
    }

    /* JADX INFO: renamed from: a */
    public static Typeface m4787a(Context context, C0609d c0609d, int i, boolean z, int i2, Handler handler, c cVar) {
        C0606a c0606a = new C0606a(cVar, handler);
        return z ? C0610e.m4780e(context, c0609d, c0606a, i, i2) : C0610e.m4779d(context, c0609d, i, null, c0606a);
    }
}
