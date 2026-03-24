package d.d.a;

import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.util.DisplayMetrics;
import com.yalantis.ucrop.view.CropImageView;
import java.nio.ByteBuffer;
import java.util.Arrays;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class b implements GLSurfaceView.Renderer {
    private d a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private GLSurfaceView f2391b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f2392c = new c(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2393d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private ByteBuffer j;
    private ByteBuffer k;
    private ByteBuffer l;

    public b(d dVar, GLSurfaceView gLSurfaceView, DisplayMetrics displayMetrics) {
        this.a = dVar;
        this.f2391b = gLSurfaceView;
        this.f2393d = displayMetrics.widthPixels;
        this.e = displayMetrics.heightPixels;
        e.a("GLFrameRenderer :: Screene size: " + this.f2393d + "x" + this.e);
    }

    public void a() {
        e.a("GLFrameRenderer :: flush_black: " + this.f + "x" + this.g);
        synchronized (this) {
            if (this.f2392c.g()) {
                if (this.j == null) {
                    return;
                }
                int i = this.f * this.g;
                int i2 = i / 4;
                this.j.clear();
                this.k.clear();
                this.l.clear();
                byte[] bArr = new byte[i];
                byte[] bArr2 = new byte[i2];
                byte[] bArr3 = new byte[i2];
                Arrays.fill(bArr, (byte) 0);
                Arrays.fill(bArr2, (byte) -128);
                Arrays.fill(bArr3, (byte) -128);
                this.j.put(bArr, 0, i);
                this.k.put(bArr2, 0, i2);
                this.l.put(bArr3, 0, i2);
                this.f2391b.requestRender();
            }
        }
    }

    public void b(int i, int i2) {
        synchronized (this) {
            e.a("update size: " + i + "x" + i2);
            if (i > 0 && i2 > 0) {
                if (this.h > 0 && this.i > 0) {
                    float f = (this.i * 1.0f) / this.h;
                    float f2 = (i2 * 1.0f) / i;
                    if (f == f2 || this.h > this.i) {
                        this.f2392c.d(c.v);
                    } else if (f < f2) {
                        float f3 = f / f2;
                        float f4 = -f3;
                        this.f2392c.d(new float[]{f4, -1.0f, f3, -1.0f, f4, 1.0f, f3, 1.0f});
                    } else {
                        float f5 = f2 / f;
                        float f6 = -f5;
                        this.f2392c.d(new float[]{-1.0f, f6, 1.0f, f6, -1.0f, f5, 1.0f, f5});
                    }
                }
                if (i != this.f || i2 != this.g) {
                    this.f = i;
                    this.g = i2;
                    int i3 = i * i2;
                    int i4 = i3 / 4;
                    synchronized (this) {
                        if (this.j == null || this.j.capacity() < i3) {
                            this.j = ByteBuffer.allocate(i3);
                            this.k = ByteBuffer.allocate(i4);
                            this.l = ByteBuffer.allocate(i4);
                        }
                        a();
                    }
                }
            }
            if (this.a != null) {
                this.a.a();
            }
        }
    }

    public void c(byte[] bArr) {
        synchronized (this) {
            int i = this.f * this.g;
            int i2 = i / 4;
            this.j.clear();
            this.k.clear();
            this.l.clear();
            this.j.put(bArr, 0, i);
            this.k.put(bArr, i, i2);
            this.l.put(bArr, i + i2, i2);
        }
        this.f2391b.requestRender();
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onDrawFrame(GL10 gl10) {
        synchronized (this) {
            if (this.j != null) {
                gl10.glViewport(0, 0, this.h, this.i);
                this.j.position(0);
                this.k.position(0);
                this.l.position(0);
                this.f2392c.b(this.j, this.k, this.l, this.f, this.g);
                GLES20.glClearColor(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f);
                GLES20.glClear(16384);
                this.f2392c.f();
            }
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceChanged(GL10 gl10, int i, int i2) {
        e.a("GLFrameRenderer :: onSurfaceChanged: " + i + "x" + i2);
        gl10.glViewport(0, 0, this.h, this.i);
        this.h = i;
        this.i = i2;
        b(this.f, this.g);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        e.a("GLFrameRenderer :: onSurfaceCreated");
        gl10.glClearColor(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f);
        if (this.f2392c.g()) {
            return;
        }
        this.f2392c.a();
        e.a("GLFrameRenderer :: buildProgram done");
    }
}
