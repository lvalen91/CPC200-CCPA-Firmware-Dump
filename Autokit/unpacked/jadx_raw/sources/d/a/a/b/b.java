package d.a.a.b;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.view.Surface;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class b {
    private EGLDisplay a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private EGLContext f2258b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private EGLConfig f2259c;

    public b(EGLContext eGLContext, int i) {
        EGLConfig eGLConfigC;
        EGLDisplay eGLDisplay = EGL14.EGL_NO_DISPLAY;
        this.a = eGLDisplay;
        this.f2258b = EGL14.EGL_NO_CONTEXT;
        this.f2259c = null;
        if (eGLDisplay != EGL14.EGL_NO_DISPLAY) {
            throw new RuntimeException("EGL already set up");
        }
        eGLContext = eGLContext == null ? EGL14.EGL_NO_CONTEXT : eGLContext;
        EGLDisplay eGLDisplayEglGetDisplay = EGL14.eglGetDisplay(0);
        this.a = eGLDisplayEglGetDisplay;
        if (eGLDisplayEglGetDisplay == EGL14.EGL_NO_DISPLAY) {
            throw new RuntimeException("unable to get EGL14 display");
        }
        int[] iArr = new int[2];
        if (!EGL14.eglInitialize(eGLDisplayEglGetDisplay, iArr, 0, iArr, 1)) {
            this.a = null;
            throw new RuntimeException("unable to initialize EGL14");
        }
        if ((i & 2) != 0 && (eGLConfigC = c(i, 3)) != null) {
            EGLContext eGLContextEglCreateContext = EGL14.eglCreateContext(this.a, eGLConfigC, eGLContext, new int[]{12440, 3, 12344}, 0);
            if (EGL14.eglGetError() == 12288) {
                this.f2259c = eGLConfigC;
                this.f2258b = eGLContextEglCreateContext;
            }
        }
        if (this.f2258b == EGL14.EGL_NO_CONTEXT) {
            EGLConfig eGLConfigC2 = c(i, 2);
            if (eGLConfigC2 == null) {
                throw new RuntimeException("Unable to find a suitable EGLConfig");
            }
            EGLContext eGLContextEglCreateContext2 = EGL14.eglCreateContext(this.a, eGLConfigC2, eGLContext, new int[]{12440, 2, 12344}, 0);
            a("eglCreateContext");
            this.f2259c = eGLConfigC2;
            this.f2258b = eGLContextEglCreateContext2;
        }
        int[] iArr2 = new int[1];
        EGL14.eglQueryContext(this.a, this.f2258b, 12440, iArr2, 0);
        String str = "EGLContext created, client version " + iArr2[0];
    }

    private void a(String str) {
        int iEglGetError = EGL14.eglGetError();
        if (iEglGetError == 12288) {
            return;
        }
        throw new RuntimeException(str + ": EGL error: 0x" + Integer.toHexString(iEglGetError));
    }

    private EGLConfig c(int i, int i2) {
        int[] iArr = {12324, 8, 12323, 8, 12322, 8, 12321, 8, 12352, i2 >= 3 ? 68 : 4, 12344, 0, 12344};
        if ((i & 1) != 0) {
            iArr[10] = 12610;
            iArr[11] = 1;
        }
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        if (EGL14.eglChooseConfig(this.a, iArr, 0, eGLConfigArr, 0, 1, new int[1], 0)) {
            return eGLConfigArr[0];
        }
        String str = "unable to find RGB8888 / " + i2 + " EGLConfig";
        return null;
    }

    public EGLSurface b(Object obj) {
        if (!(obj instanceof Surface) && !(obj instanceof SurfaceTexture)) {
            throw new RuntimeException("invalid surface: " + obj);
        }
        EGLSurface eGLSurfaceEglCreateWindowSurface = EGL14.eglCreateWindowSurface(this.a, this.f2259c, obj, new int[]{12344}, 0);
        a("eglCreateWindowSurface");
        if (eGLSurfaceEglCreateWindowSurface != null) {
            return eGLSurfaceEglCreateWindowSurface;
        }
        throw new RuntimeException("surface was null");
    }

    public void d(EGLSurface eGLSurface) {
        EGLDisplay eGLDisplay = this.a;
        EGLDisplay eGLDisplay2 = EGL14.EGL_NO_DISPLAY;
        if (!EGL14.eglMakeCurrent(this.a, eGLSurface, eGLSurface, this.f2258b)) {
            throw new RuntimeException("eglMakeCurrent failed");
        }
    }

    public void e() {
        EGLDisplay eGLDisplay = this.a;
        EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
        if (!EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT)) {
            throw new RuntimeException("eglMakeCurrent failed");
        }
    }

    public int f(EGLSurface eGLSurface, int i) {
        int[] iArr = new int[1];
        EGL14.eglQuerySurface(this.a, eGLSurface, i, iArr, 0);
        return iArr[0];
    }

    protected void finalize() throws Throwable {
        try {
            if (this.a != EGL14.EGL_NO_DISPLAY) {
                g();
            }
        } finally {
            super.finalize();
        }
    }

    public void g() {
        EGLDisplay eGLDisplay = this.a;
        if (eGLDisplay != EGL14.EGL_NO_DISPLAY) {
            EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
            EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
            EGL14.eglDestroyContext(this.a, this.f2258b);
            EGL14.eglReleaseThread();
            EGL14.eglTerminate(this.a);
        }
        this.a = EGL14.EGL_NO_DISPLAY;
        this.f2258b = EGL14.EGL_NO_CONTEXT;
        this.f2259c = null;
    }

    public void h(EGLSurface eGLSurface) {
        EGL14.eglDestroySurface(this.a, eGLSurface);
    }

    public boolean i(EGLSurface eGLSurface) {
        return EGL14.eglSwapBuffers(this.a, eGLSurface);
    }
}
