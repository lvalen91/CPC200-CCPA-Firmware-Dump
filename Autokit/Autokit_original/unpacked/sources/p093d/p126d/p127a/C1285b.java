package p093d.p126d.p127a;

import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.util.DisplayMetrics;
import com.yalantis.ucrop.view.CropImageView;
import java.nio.ByteBuffer;
import java.util.Arrays;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: renamed from: d.d.a.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1285b implements GLSurfaceView.Renderer {

    /* JADX INFO: renamed from: a */
    private InterfaceC1287d f7976a;

    /* JADX INFO: renamed from: b */
    private GLSurfaceView f7977b;

    /* JADX INFO: renamed from: c */
    private C1286c f7978c = new C1286c(0);

    /* JADX INFO: renamed from: d */
    private int f7979d;

    /* JADX INFO: renamed from: e */
    private int f7980e;

    /* JADX INFO: renamed from: f */
    private int f7981f;

    /* JADX INFO: renamed from: g */
    private int f7982g;

    /* JADX INFO: renamed from: h */
    private int f7983h;

    /* JADX INFO: renamed from: i */
    private int f7984i;

    /* JADX INFO: renamed from: j */
    private ByteBuffer f7985j;

    /* JADX INFO: renamed from: k */
    private ByteBuffer f7986k;

    /* JADX INFO: renamed from: l */
    private ByteBuffer f7987l;

    public C1285b(InterfaceC1287d interfaceC1287d, GLSurfaceView gLSurfaceView, DisplayMetrics displayMetrics) {
        this.f7976a = interfaceC1287d;
        this.f7977b = gLSurfaceView;
        this.f7979d = displayMetrics.widthPixels;
        this.f7980e = displayMetrics.heightPixels;
        C1288e.m9615a("GLFrameRenderer :: Screene size: " + this.f7979d + "x" + this.f7980e);
    }

    /* JADX INFO: renamed from: a */
    public void m9602a() {
        C1288e.m9615a("GLFrameRenderer :: flush_black: " + this.f7981f + "x" + this.f7982g);
        synchronized (this) {
            if (this.f7978c.m9612g()) {
                if (this.f7985j == null) {
                    return;
                }
                int i = this.f7981f * this.f7982g;
                int i2 = i / 4;
                this.f7985j.clear();
                this.f7986k.clear();
                this.f7987l.clear();
                byte[] bArr = new byte[i];
                byte[] bArr2 = new byte[i2];
                byte[] bArr3 = new byte[i2];
                Arrays.fill(bArr, (byte) 0);
                Arrays.fill(bArr2, (byte) -128);
                Arrays.fill(bArr3, (byte) -128);
                this.f7985j.put(bArr, 0, i);
                this.f7986k.put(bArr2, 0, i2);
                this.f7987l.put(bArr3, 0, i2);
                this.f7977b.requestRender();
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public void m9603b(int i, int i2) {
        synchronized (this) {
            C1288e.m9615a("update size: " + i + "x" + i2);
            if (i > 0 && i2 > 0) {
                if (this.f7983h > 0 && this.f7984i > 0) {
                    float f = (this.f7984i * 1.0f) / this.f7983h;
                    float f2 = (i2 * 1.0f) / i;
                    if (f == f2 || this.f7983h > this.f7984i) {
                        this.f7978c.m9609d(C1286c.f7989v);
                    } else if (f < f2) {
                        float f3 = f / f2;
                        float f4 = -f3;
                        this.f7978c.m9609d(new float[]{f4, -1.0f, f3, -1.0f, f4, 1.0f, f3, 1.0f});
                    } else {
                        float f5 = f2 / f;
                        float f6 = -f5;
                        this.f7978c.m9609d(new float[]{-1.0f, f6, 1.0f, f6, -1.0f, f5, 1.0f, f5});
                    }
                }
                if (i != this.f7981f || i2 != this.f7982g) {
                    this.f7981f = i;
                    this.f7982g = i2;
                    int i3 = i * i2;
                    int i4 = i3 / 4;
                    synchronized (this) {
                        if (this.f7985j == null || this.f7985j.capacity() < i3) {
                            this.f7985j = ByteBuffer.allocate(i3);
                            this.f7986k = ByteBuffer.allocate(i4);
                            this.f7987l = ByteBuffer.allocate(i4);
                        }
                        m9602a();
                    }
                }
            }
            if (this.f7976a != null) {
                this.f7976a.m9614a();
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public void m9604c(byte[] bArr) {
        synchronized (this) {
            int i = this.f7981f * this.f7982g;
            int i2 = i / 4;
            this.f7985j.clear();
            this.f7986k.clear();
            this.f7987l.clear();
            this.f7985j.put(bArr, 0, i);
            this.f7986k.put(bArr, i, i2);
            this.f7987l.put(bArr, i + i2, i2);
        }
        this.f7977b.requestRender();
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onDrawFrame(GL10 gl10) {
        synchronized (this) {
            if (this.f7985j != null) {
                gl10.glViewport(0, 0, this.f7983h, this.f7984i);
                this.f7985j.position(0);
                this.f7986k.position(0);
                this.f7987l.position(0);
                this.f7978c.m9608b(this.f7985j, this.f7986k, this.f7987l, this.f7981f, this.f7982g);
                GLES20.glClearColor(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f);
                GLES20.glClear(16384);
                this.f7978c.m9611f();
            }
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceChanged(GL10 gl10, int i, int i2) {
        C1288e.m9615a("GLFrameRenderer :: onSurfaceChanged: " + i + "x" + i2);
        gl10.glViewport(0, 0, this.f7983h, this.f7984i);
        this.f7983h = i;
        this.f7984i = i2;
        m9603b(this.f7981f, this.f7982g);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        C1288e.m9615a("GLFrameRenderer :: onSurfaceCreated");
        gl10.glClearColor(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f);
        if (this.f7978c.m9612g()) {
            return;
        }
        this.f7978c.m9607a();
        C1288e.m9615a("GLFrameRenderer :: buildProgram done");
    }
}
