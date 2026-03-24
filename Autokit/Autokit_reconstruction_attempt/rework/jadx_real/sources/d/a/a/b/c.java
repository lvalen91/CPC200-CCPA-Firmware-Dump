package d.a.a.b;

import android.opengl.EGL14;
import android.opengl.EGLSurface;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class c {
    protected b a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private EGLSurface f2260b = EGL14.EGL_NO_SURFACE;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2261c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2262d = -1;

    protected c(b bVar) {
        this.a = bVar;
    }

    public void a(Object obj) {
        if (this.f2260b != EGL14.EGL_NO_SURFACE) {
            throw new IllegalStateException("surface already created");
        }
        this.f2260b = this.a.b(obj);
    }

    public int b() {
        int i = this.f2262d;
        return i < 0 ? this.a.f(this.f2260b, 12374) : i;
    }

    public int c() {
        int i = this.f2261c;
        return i < 0 ? this.a.f(this.f2260b, 12375) : i;
    }

    public void d() {
        this.a.d(this.f2260b);
    }

    public void e() {
        this.a.h(this.f2260b);
        this.f2260b = EGL14.EGL_NO_SURFACE;
        this.f2262d = -1;
        this.f2261c = -1;
    }

    public boolean f() {
        return this.a.i(this.f2260b);
    }
}
