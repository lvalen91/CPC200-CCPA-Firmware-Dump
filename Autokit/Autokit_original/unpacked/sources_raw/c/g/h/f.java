package c.g.h;

import android.content.Context;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Handler;
import c.g.j.h;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class f {

    public static class a {
        private final int a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final b[] f1202b;

        @Deprecated
        public a(int i, b[] bVarArr) {
            this.a = i;
            this.f1202b = bVarArr;
        }

        static a a(int i, b[] bVarArr) {
            return new a(i, bVarArr);
        }

        public b[] b() {
            return this.f1202b;
        }

        public int c() {
            return this.a;
        }
    }

    public static class b {
        private final Uri a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f1203b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f1204c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f1205d;
        private final int e;

        @Deprecated
        public b(Uri uri, int i, int i2, boolean z, int i3) {
            h.e(uri);
            this.a = uri;
            this.f1203b = i;
            this.f1204c = i2;
            this.f1205d = z;
            this.e = i3;
        }

        static b a(Uri uri, int i, int i2, boolean z, int i3) {
            return new b(uri, i, i2, z, i3);
        }

        public int b() {
            return this.e;
        }

        public int c() {
            return this.f1203b;
        }

        public Uri d() {
            return this.a;
        }

        public int e() {
            return this.f1204c;
        }

        public boolean f() {
            return this.f1205d;
        }
    }

    public static class c {
        public void a(int i) {
            throw null;
        }

        public void b(Typeface typeface) {
            throw null;
        }
    }

    public static Typeface a(Context context, d dVar, int i, boolean z, int i2, Handler handler, c cVar) {
        c.g.h.a aVar = new c.g.h.a(cVar, handler);
        return z ? e.e(context, dVar, aVar, i, i2) : e.d(context, dVar, i, null, aVar);
    }
}
