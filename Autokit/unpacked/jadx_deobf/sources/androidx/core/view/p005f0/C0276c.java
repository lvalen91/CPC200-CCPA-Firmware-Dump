package androidx.core.view.p005f0;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.view.inputmethod.InputContentInfo;

/* JADX INFO: renamed from: androidx.core.view.f0.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0276c {

    /* JADX INFO: renamed from: a */
    private final c f1882a;

    /* JADX INFO: renamed from: androidx.core.view.f0.c$b */
    private static final class b implements c {

        /* JADX INFO: renamed from: a */
        private final Uri f1884a;

        /* JADX INFO: renamed from: b */
        private final ClipDescription f1885b;

        /* JADX INFO: renamed from: c */
        private final Uri f1886c;

        b(Uri uri, ClipDescription clipDescription, Uri uri2) {
            this.f1884a = uri;
            this.f1885b = clipDescription;
            this.f1886c = uri2;
        }

        @Override // androidx.core.view.p005f0.C0276c.c
        /* JADX INFO: renamed from: a */
        public void mo2000a() {
        }

        @Override // androidx.core.view.p005f0.C0276c.c
        /* JADX INFO: renamed from: b */
        public Uri mo2001b() {
            return this.f1886c;
        }

        @Override // androidx.core.view.p005f0.C0276c.c
        /* JADX INFO: renamed from: c */
        public ClipDescription mo2002c() {
            return this.f1885b;
        }

        @Override // androidx.core.view.p005f0.C0276c.c
        /* JADX INFO: renamed from: d */
        public Object mo2003d() {
            return null;
        }

        @Override // androidx.core.view.p005f0.C0276c.c
        /* JADX INFO: renamed from: e */
        public Uri mo2004e() {
            return this.f1884a;
        }
    }

    /* JADX INFO: renamed from: androidx.core.view.f0.c$c */
    private interface c {
        /* JADX INFO: renamed from: a */
        void mo2000a();

        /* JADX INFO: renamed from: b */
        Uri mo2001b();

        /* JADX INFO: renamed from: c */
        ClipDescription mo2002c();

        /* JADX INFO: renamed from: d */
        Object mo2003d();

        /* JADX INFO: renamed from: e */
        Uri mo2004e();
    }

    public C0276c(Uri uri, ClipDescription clipDescription, Uri uri2) {
        if (Build.VERSION.SDK_INT >= 25) {
            this.f1882a = new a(uri, clipDescription, uri2);
        } else {
            this.f1882a = new b(uri, clipDescription, uri2);
        }
    }

    /* JADX INFO: renamed from: f */
    public static C0276c m1994f(Object obj) {
        if (obj != null && Build.VERSION.SDK_INT >= 25) {
            return new C0276c(new a(obj));
        }
        return null;
    }

    /* JADX INFO: renamed from: a */
    public Uri m1995a() {
        return this.f1882a.mo2004e();
    }

    /* JADX INFO: renamed from: b */
    public ClipDescription m1996b() {
        return this.f1882a.mo2002c();
    }

    /* JADX INFO: renamed from: c */
    public Uri m1997c() {
        return this.f1882a.mo2001b();
    }

    /* JADX INFO: renamed from: d */
    public void m1998d() {
        this.f1882a.mo2000a();
    }

    /* JADX INFO: renamed from: e */
    public Object m1999e() {
        return this.f1882a.mo2003d();
    }

    /* JADX INFO: renamed from: androidx.core.view.f0.c$a */
    private static final class a implements c {

        /* JADX INFO: renamed from: a */
        final InputContentInfo f1883a;

        a(Object obj) {
            this.f1883a = (InputContentInfo) obj;
        }

        @Override // androidx.core.view.p005f0.C0276c.c
        /* JADX INFO: renamed from: a */
        public void mo2000a() {
            this.f1883a.requestPermission();
        }

        @Override // androidx.core.view.p005f0.C0276c.c
        /* JADX INFO: renamed from: b */
        public Uri mo2001b() {
            return this.f1883a.getLinkUri();
        }

        @Override // androidx.core.view.p005f0.C0276c.c
        /* JADX INFO: renamed from: c */
        public ClipDescription mo2002c() {
            return this.f1883a.getDescription();
        }

        @Override // androidx.core.view.p005f0.C0276c.c
        /* JADX INFO: renamed from: d */
        public Object mo2003d() {
            return this.f1883a;
        }

        @Override // androidx.core.view.p005f0.C0276c.c
        /* JADX INFO: renamed from: e */
        public Uri mo2004e() {
            return this.f1883a.getContentUri();
        }

        a(Uri uri, ClipDescription clipDescription, Uri uri2) {
            this.f1883a = new InputContentInfo(uri, clipDescription, uri2);
        }
    }

    private C0276c(c cVar) {
        this.f1882a = cVar;
    }
}
