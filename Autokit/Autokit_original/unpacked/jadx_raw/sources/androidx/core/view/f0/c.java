package androidx.core.view.f0;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.view.inputmethod.InputContentInfo;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class c {
    private final InterfaceC0028c a;

    private static final class b implements InterfaceC0028c {
        private final Uri a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ClipDescription f590b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Uri f591c;

        b(Uri uri, ClipDescription clipDescription, Uri uri2) {
            this.a = uri;
            this.f590b = clipDescription;
            this.f591c = uri2;
        }

        @Override // androidx.core.view.f0.c.InterfaceC0028c
        public void a() {
        }

        @Override // androidx.core.view.f0.c.InterfaceC0028c
        public Uri b() {
            return this.f591c;
        }

        @Override // androidx.core.view.f0.c.InterfaceC0028c
        public ClipDescription c() {
            return this.f590b;
        }

        @Override // androidx.core.view.f0.c.InterfaceC0028c
        public Object d() {
            return null;
        }

        @Override // androidx.core.view.f0.c.InterfaceC0028c
        public Uri e() {
            return this.a;
        }
    }

    /* JADX INFO: renamed from: androidx.core.view.f0.c$c, reason: collision with other inner class name */
    private interface InterfaceC0028c {
        void a();

        Uri b();

        ClipDescription c();

        Object d();

        Uri e();
    }

    public c(Uri uri, ClipDescription clipDescription, Uri uri2) {
        if (Build.VERSION.SDK_INT >= 25) {
            this.a = new a(uri, clipDescription, uri2);
        } else {
            this.a = new b(uri, clipDescription, uri2);
        }
    }

    public static c f(Object obj) {
        if (obj != null && Build.VERSION.SDK_INT >= 25) {
            return new c(new a(obj));
        }
        return null;
    }

    public Uri a() {
        return this.a.e();
    }

    public ClipDescription b() {
        return this.a.c();
    }

    public Uri c() {
        return this.a.b();
    }

    public void d() {
        this.a.a();
    }

    public Object e() {
        return this.a.d();
    }

    private static final class a implements InterfaceC0028c {
        final InputContentInfo a;

        a(Object obj) {
            this.a = (InputContentInfo) obj;
        }

        @Override // androidx.core.view.f0.c.InterfaceC0028c
        public void a() {
            this.a.requestPermission();
        }

        @Override // androidx.core.view.f0.c.InterfaceC0028c
        public Uri b() {
            return this.a.getLinkUri();
        }

        @Override // androidx.core.view.f0.c.InterfaceC0028c
        public ClipDescription c() {
            return this.a.getDescription();
        }

        @Override // androidx.core.view.f0.c.InterfaceC0028c
        public Object d() {
            return this.a;
        }

        @Override // androidx.core.view.f0.c.InterfaceC0028c
        public Uri e() {
            return this.a.getContentUri();
        }

        a(Uri uri, ClipDescription clipDescription, Uri uri2) {
            this.a = new InputContentInfo(uri, clipDescription, uri2);
        }
    }

    private c(InterfaceC0028c interfaceC0028c) {
        this.a = interfaceC0028c;
    }
}
