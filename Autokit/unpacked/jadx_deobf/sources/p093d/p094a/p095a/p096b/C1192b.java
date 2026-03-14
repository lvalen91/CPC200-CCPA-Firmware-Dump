package p093d.p094a.p095a.p096b;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.view.Surface;

/* JADX INFO: renamed from: d.a.a.b.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C1192b {

    /* JADX INFO: renamed from: a */
    private EGLDisplay f7541a;

    /* JADX INFO: renamed from: b */
    private EGLContext f7542b;

    /* JADX INFO: renamed from: c */
    private EGLConfig f7543c;

    public C1192b(EGLContext eGLContext, int i) {
        EGLConfig eGLConfigM9058c;
        EGLDisplay eGLDisplay = EGL14.EGL_NO_DISPLAY;
        this.f7541a = eGLDisplay;
        this.f7542b = EGL14.EGL_NO_CONTEXT;
        this.f7543c = null;
        if (eGLDisplay != EGL14.EGL_NO_DISPLAY) {
            throw new RuntimeException("EGL already set up");
        }
        eGLContext = eGLContext == null ? EGL14.EGL_NO_CONTEXT : eGLContext;
        EGLDisplay eGLDisplayEglGetDisplay = EGL14.eglGetDisplay(0);
        this.f7541a = eGLDisplayEglGetDisplay;
        if (eGLDisplayEglGetDisplay == EGL14.EGL_NO_DISPLAY) {
            throw new RuntimeException("unable to get EGL14 display");
        }
        int[] iArr = new int[2];
        if (!EGL14.eglInitialize(eGLDisplayEglGetDisplay, iArr, 0, iArr, 1)) {
            this.f7541a = null;
            throw new RuntimeException("unable to initialize EGL14");
        }
        if ((i & 2) != 0 && (eGLConfigM9058c = m9058c(i, 3)) != null) {
            EGLContext eGLContextEglCreateContext = EGL14.eglCreateContext(this.f7541a, eGLConfigM9058c, eGLContext, new int[]{12440, 3, 12344}, 0);
            if (EGL14.eglGetError() == 12288) {
                this.f7543c = eGLConfigM9058c;
                this.f7542b = eGLContextEglCreateContext;
            }
        }
        if (this.f7542b == EGL14.EGL_NO_CONTEXT) {
            EGLConfig eGLConfigM9058c2 = m9058c(i, 2);
            if (eGLConfigM9058c2 == null) {
                throw new RuntimeException("Unable to find a suitable EGLConfig");
            }
            EGLContext eGLContextEglCreateContext2 = EGL14.eglCreateContext(this.f7541a, eGLConfigM9058c2, eGLContext, new int[]{12440, 2, 12344}, 0);
            m9057a("eglCreateContext");
            this.f7543c = eGLConfigM9058c2;
            this.f7542b = eGLContextEglCreateContext2;
        }
        int[] iArr2 = new int[1];
        EGL14.eglQueryContext(this.f7541a, this.f7542b, 12440, iArr2, 0);
        String str = "EGLContext created, client version " + iArr2[0];
    }

    /* JADX INFO: renamed from: a */
    private void m9057a(String str) {
        int iEglGetError = EGL14.eglGetError();
        if (iEglGetError == 12288) {
            return;
        }
        throw new RuntimeException(str + ": EGL error: 0x" + Integer.toHexString(iEglGetError));
    }

    /* JADX INFO: renamed from: c */
    private EGLConfig m9058c(int i, int i2) {
        int[] iArr = {12324, 8, 12323, 8, 12322, 8, 12321, 8, 12352, i2 >= 3 ? 68 : 4, 12344, 0, 12344};
        if ((i & 1) != 0) {
            iArr[10] = 12610;
            iArr[11] = 1;
        }
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        if (EGL14.eglChooseConfig(this.f7541a, iArr, 0, eGLConfigArr, 0, 1, new int[1], 0)) {
            return eGLConfigArr[0];
        }
        String str = "unable to find RGB8888 / " + i2 + " EGLConfig";
        return null;
    }

    /* JADX INFO: renamed from: b */
    public EGLSurface m9059b(Object obj) {
        if (!(obj instanceof Surface) && !(obj instanceof SurfaceTexture)) {
            throw new RuntimeException("invalid surface: " + obj);
        }
        EGLSurface eGLSurfaceEglCreateWindowSurface = EGL14.eglCreateWindowSurface(this.f7541a, this.f7543c, obj, new int[]{12344}, 0);
        m9057a("eglCreateWindowSurface");
        if (eGLSurfaceEglCreateWindowSurface != null) {
            return eGLSurfaceEglCreateWindowSurface;
        }
        throw new RuntimeException("surface was null");
    }

    /* JADX INFO: renamed from: d */
    public void m9060d(EGLSurface eGLSurface) {
        EGLDisplay eGLDisplay = this.f7541a;
        EGLDisplay eGLDisplay2 = EGL14.EGL_NO_DISPLAY;
        if (!EGL14.eglMakeCurrent(this.f7541a, eGLSurface, eGLSurface, this.f7542b)) {
            throw new RuntimeException("eglMakeCurrent failed");
        }
    }

    /* JADX INFO: renamed from: e */
    public void m9061e() {
        EGLDisplay eGLDisplay = this.f7541a;
        EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
        if (!EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT)) {
            throw new RuntimeException("eglMakeCurrent failed");
        }
    }

    /* JADX INFO: renamed from: f */
    public int m9062f(EGLSurface eGLSurface, int i) {
        int[] iArr = new int[1];
        EGL14.eglQuerySurface(this.f7541a, eGLSurface, i, iArr, 0);
        return iArr[0];
    }

    protected void finalize() throws Throwable {
        try {
            if (this.f7541a != EGL14.EGL_NO_DISPLAY) {
                m9063g();
            }
        } finally {
            super.finalize();
        }
    }

    /* JADX INFO: renamed from: g */
    public void m9063g() {
        EGLDisplay eGLDisplay = this.f7541a;
        if (eGLDisplay != EGL14.EGL_NO_DISPLAY) {
            EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
            EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
            EGL14.eglDestroyContext(this.f7541a, this.f7542b);
            EGL14.eglReleaseThread();
            EGL14.eglTerminate(this.f7541a);
        }
        this.f7541a = EGL14.EGL_NO_DISPLAY;
        this.f7542b = EGL14.EGL_NO_CONTEXT;
        this.f7543c = null;
    }

    /* JADX INFO: renamed from: h */
    public void m9064h(EGLSurface eGLSurface) {
        EGL14.eglDestroySurface(this.f7541a, eGLSurface);
    }

    /* JADX INFO: renamed from: i */
    public boolean m9065i(EGLSurface eGLSurface) {
        return EGL14.eglSwapBuffers(this.f7541a, eGLSurface);
    }
}
