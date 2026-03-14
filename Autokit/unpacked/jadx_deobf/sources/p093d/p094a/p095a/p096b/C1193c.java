package p093d.p094a.p095a.p096b;

import android.opengl.EGL14;
import android.opengl.EGLSurface;

/* JADX INFO: renamed from: d.a.a.b.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1193c {

    /* JADX INFO: renamed from: a */
    protected C1192b f7544a;

    /* JADX INFO: renamed from: b */
    private EGLSurface f7545b = EGL14.EGL_NO_SURFACE;

    /* JADX INFO: renamed from: c */
    private int f7546c = -1;

    /* JADX INFO: renamed from: d */
    private int f7547d = -1;

    protected C1193c(C1192b c1192b) {
        this.f7544a = c1192b;
    }

    /* JADX INFO: renamed from: a */
    public void m9066a(Object obj) {
        if (this.f7545b != EGL14.EGL_NO_SURFACE) {
            throw new IllegalStateException("surface already created");
        }
        this.f7545b = this.f7544a.m9059b(obj);
    }

    /* JADX INFO: renamed from: b */
    public int m9067b() {
        int i = this.f7547d;
        return i < 0 ? this.f7544a.m9062f(this.f7545b, 12374) : i;
    }

    /* JADX INFO: renamed from: c */
    public int m9068c() {
        int i = this.f7546c;
        return i < 0 ? this.f7544a.m9062f(this.f7545b, 12375) : i;
    }

    /* JADX INFO: renamed from: d */
    public void m9069d() {
        this.f7544a.m9060d(this.f7545b);
    }

    /* JADX INFO: renamed from: e */
    public void m9070e() {
        this.f7544a.m9064h(this.f7545b);
        this.f7545b = EGL14.EGL_NO_SURFACE;
        this.f7547d = -1;
        this.f7546c = -1;
    }

    /* JADX INFO: renamed from: f */
    public boolean m9071f() {
        return this.f7544a.m9065i(this.f7545b);
    }
}
