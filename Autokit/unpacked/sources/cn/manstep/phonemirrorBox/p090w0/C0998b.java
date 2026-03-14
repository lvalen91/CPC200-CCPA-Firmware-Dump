package cn.manstep.phonemirrorBox.p090w0;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.view.TextureView;
import cn.manstep.phonemirrorBox.util.C0982s;
import com.yalantis.ucrop.view.CropImageView;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.w0.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0998b implements SurfaceTexture.OnFrameAvailableListener {

    /* JADX INFO: renamed from: d */
    private HandlerThread f6205d;

    /* JADX INFO: renamed from: e */
    private Handler f6206e;

    /* JADX INFO: renamed from: f */
    private TextureView f6207f;

    /* JADX INFO: renamed from: g */
    private int f6208g;

    /* JADX INFO: renamed from: k */
    private EGLSurface f6212k;

    /* JADX INFO: renamed from: l */
    private SurfaceTexture f6213l;

    /* JADX INFO: renamed from: m */
    private AbstractC0997a f6214m;

    /* JADX INFO: renamed from: b */
    private final float[] f6203b = new float[16];

    /* JADX INFO: renamed from: c */
    private final EGLConfig[] f6204c = new EGLConfig[1];

    /* JADX INFO: renamed from: h */
    private EGL10 f6209h = null;

    /* JADX INFO: renamed from: i */
    private EGLDisplay f6210i = EGL10.EGL_NO_DISPLAY;

    /* JADX INFO: renamed from: j */
    private EGLContext f6211j = EGL10.EGL_NO_CONTEXT;

    /* JADX INFO: renamed from: n */
    private boolean f6215n = true;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.w0.b$a */
    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                C0998b.this.m7477f();
            } else {
                if (i != 2) {
                    return;
                }
                C0998b.this.m7476d();
            }
        }
    }

    /* JADX INFO: renamed from: c */
    private int m7475c() {
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
    /* JADX INFO: renamed from: d */
    public void m7476d() {
        if (this.f6215n) {
            int width = this.f6207f.getWidth();
            int height = this.f6207f.getHeight();
            C0982s.m7373c("TextureViewRenderer,drawFrame: " + width + "x" + height);
            EGL10 egl10 = this.f6209h;
            EGLDisplay eGLDisplay = this.f6210i;
            EGLSurface eGLSurface = this.f6212k;
            egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.f6211j);
            GLES20.glViewport(0, 0, width, height);
            GLES20.glClear(16384);
            GLES20.glClearColor(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO);
            this.f6215n = false;
        }
        SurfaceTexture surfaceTexture = this.f6213l;
        if (surfaceTexture != null) {
            surfaceTexture.updateTexImage();
            this.f6213l.getTransformMatrix(this.f6203b);
        } else {
            C0982s.m7376f("TextureViewRenderer", "drawFrame: mOESSurfaceTexture==null");
        }
        this.f6214m.mo7468b(this.f6208g, this.f6203b);
        this.f6209h.eglSwapBuffers(this.f6210i, this.f6212k);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: f */
    public void m7477f() {
        this.f6208g = m7475c();
        EGL10 egl10 = (EGL10) EGLContext.getEGL();
        this.f6209h = egl10;
        EGLDisplay eGLDisplayEglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        this.f6210i = eGLDisplayEglGetDisplay;
        if (eGLDisplayEglGetDisplay == EGL10.EGL_NO_DISPLAY) {
            throw new RuntimeException("eglGetDisplay failed! " + this.f6209h.eglGetError());
        }
        if (!this.f6209h.eglInitialize(eGLDisplayEglGetDisplay, new int[2])) {
            throw new RuntimeException("eglInitialize failed! " + this.f6209h.eglGetError());
        }
        if (!this.f6209h.eglChooseConfig(this.f6210i, new int[]{12324, 8, 12323, 8, 12322, 8, 12321, 8, 12320, 32, 12325, 8, 12326, 8, 12352, 4, 12339, 4, 12344}, this.f6204c, 1, new int[1])) {
            throw new RuntimeException("eglChooseConfig failed! " + this.f6209h.eglGetError());
        }
        SurfaceTexture surfaceTexture = this.f6207f.getSurfaceTexture();
        if (surfaceTexture == null) {
            return;
        }
        this.f6212k = this.f6209h.eglCreateWindowSurface(this.f6210i, this.f6204c[0], surfaceTexture, null);
        EGLContext eGLContextEglCreateContext = this.f6209h.eglCreateContext(this.f6210i, this.f6204c[0], EGL10.EGL_NO_CONTEXT, new int[]{12440, 2, 12344});
        this.f6211j = eGLContextEglCreateContext;
        EGLDisplay eGLDisplay = this.f6210i;
        if (eGLDisplay == EGL10.EGL_NO_DISPLAY || eGLContextEglCreateContext == EGL10.EGL_NO_CONTEXT) {
            throw new RuntimeException("eglCreateContext fail failed! " + this.f6209h.eglGetError());
        }
        EGL10 egl102 = this.f6209h;
        EGLSurface eGLSurface = this.f6212k;
        if (egl102.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, eGLContextEglCreateContext)) {
            C0999c c0999c = new C0999c();
            this.f6214m = c0999c;
            c0999c.mo7469c();
        } else {
            throw new RuntimeException("eglMakeCurrent failed! " + this.f6209h.eglGetError());
        }
    }

    /* JADX INFO: renamed from: e */
    public void m7478e(TextureView textureView, Context context) {
        this.f6207f = textureView;
        HandlerThread handlerThread = new HandlerThread("Renderer Thread");
        this.f6205d = handlerThread;
        handlerThread.start();
        a aVar = new a(this.f6205d.getLooper());
        this.f6206e = aVar;
        aVar.sendEmptyMessage(1);
    }

    /* JADX INFO: renamed from: g */
    public SurfaceTexture m7479g() {
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f6208g);
        this.f6213l = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(this);
        return this.f6213l;
    }

    /* JADX INFO: renamed from: h */
    public void m7480h() {
        this.f6215n = true;
    }

    /* JADX INFO: renamed from: i */
    public void m7481i(String str, int i) {
        AbstractC0997a abstractC0997a = this.f6214m;
        if (abstractC0997a != null) {
            abstractC0997a.mo7472f(str, i);
            Handler handler = this.f6206e;
            if (handler != null) {
                handler.sendEmptyMessage(2);
            }
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        Handler handler = this.f6206e;
        if (handler != null) {
            handler.sendEmptyMessage(2);
        }
    }
}
