package cn.manstep.phonemirrorBox.w0;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.view.TextureView;
import cn.manstep.phonemirrorBox.util.s;
import com.yalantis.ucrop.view.CropImageView;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class b implements SurfaceTexture.OnFrameAvailableListener {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private HandlerThread f1953d;
    private Handler e;
    private TextureView f;
    private int g;
    private EGLSurface k;
    private SurfaceTexture l;
    private cn.manstep.phonemirrorBox.w0.a m;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float[] f1951b = new float[16];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final EGLConfig[] f1952c = new EGLConfig[1];
    private EGL10 h = null;
    private EGLDisplay i = EGL10.EGL_NO_DISPLAY;
    private EGLContext j = EGL10.EGL_NO_CONTEXT;
    private boolean n = true;

    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                b.this.f();
            } else {
                if (i != 2) {
                    return;
                }
                b.this.d();
            }
        }
    }

    private int c() {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        GLES20.glBindTexture(36197, iArr[0]);
        GLES20.glTexParameterf(36197, 10241, 9728.0f);
        GLES20.glTexParameterf(36197, 10240, 9729.0f);
        GLES20.glTexParameterf(36197, 10242, 33071.0f);
        GLES20.glTexParameterf(36197, 10243, 33071.0f);
        GLES20.glBindTexture(36197, 0);
        return iArr[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.n) {
            int width = this.f.getWidth();
            int height = this.f.getHeight();
            s.c("TextureViewRenderer,drawFrame: " + width + "x" + height);
            EGL10 egl10 = this.h;
            EGLDisplay eGLDisplay = this.i;
            EGLSurface eGLSurface = this.k;
            egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.j);
            GLES20.glViewport(0, 0, width, height);
            GLES20.glClear(16384);
            GLES20.glClearColor(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO);
            this.n = false;
        }
        SurfaceTexture surfaceTexture = this.l;
        if (surfaceTexture != null) {
            surfaceTexture.updateTexImage();
            this.l.getTransformMatrix(this.f1951b);
        } else {
            s.f("TextureViewRenderer", "drawFrame: mOESSurfaceTexture==null");
        }
        this.m.b(this.g, this.f1951b);
        this.h.eglSwapBuffers(this.i, this.k);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        this.g = c();
        EGL10 egl10 = (EGL10) EGLContext.getEGL();
        this.h = egl10;
        EGLDisplay eGLDisplayEglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        this.i = eGLDisplayEglGetDisplay;
        if (eGLDisplayEglGetDisplay == EGL10.EGL_NO_DISPLAY) {
            throw new RuntimeException("eglGetDisplay failed! " + this.h.eglGetError());
        }
        if (!this.h.eglInitialize(eGLDisplayEglGetDisplay, new int[2])) {
            throw new RuntimeException("eglInitialize failed! " + this.h.eglGetError());
        }
        if (!this.h.eglChooseConfig(this.i, new int[]{12324, 8, 12323, 8, 12322, 8, 12321, 8, 12320, 32, 12325, 8, 12326, 8, 12352, 4, 12339, 4, 12344}, this.f1952c, 1, new int[1])) {
            throw new RuntimeException("eglChooseConfig failed! " + this.h.eglGetError());
        }
        SurfaceTexture surfaceTexture = this.f.getSurfaceTexture();
        if (surfaceTexture == null) {
            return;
        }
        this.k = this.h.eglCreateWindowSurface(this.i, this.f1952c[0], surfaceTexture, null);
        EGLContext eGLContextEglCreateContext = this.h.eglCreateContext(this.i, this.f1952c[0], EGL10.EGL_NO_CONTEXT, new int[]{12440, 2, 12344});
        this.j = eGLContextEglCreateContext;
        EGLDisplay eGLDisplay = this.i;
        if (eGLDisplay == EGL10.EGL_NO_DISPLAY || eGLContextEglCreateContext == EGL10.EGL_NO_CONTEXT) {
            throw new RuntimeException("eglCreateContext fail failed! " + this.h.eglGetError());
        }
        EGL10 egl102 = this.h;
        EGLSurface eGLSurface = this.k;
        if (egl102.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, eGLContextEglCreateContext)) {
            c cVar = new c();
            this.m = cVar;
            cVar.c();
        } else {
            throw new RuntimeException("eglMakeCurrent failed! " + this.h.eglGetError());
        }
    }

    public void e(TextureView textureView, Context context) {
        this.f = textureView;
        HandlerThread handlerThread = new HandlerThread("Renderer Thread");
        this.f1953d = handlerThread;
        handlerThread.start();
        a aVar = new a(this.f1953d.getLooper());
        this.e = aVar;
        aVar.sendEmptyMessage(1);
    }

    public SurfaceTexture g() {
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.g);
        this.l = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(this);
        return this.l;
    }

    public void h() {
        this.n = true;
    }

    public void i(String str, int i) {
        cn.manstep.phonemirrorBox.w0.a aVar = this.m;
        if (aVar != null) {
            aVar.f(str, i);
            Handler handler = this.e;
            if (handler != null) {
                handler.sendEmptyMessage(2);
            }
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        Handler handler = this.e;
        if (handler != null) {
            handler.sendEmptyMessage(2);
        }
    }
}
