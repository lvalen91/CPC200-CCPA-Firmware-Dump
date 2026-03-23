package d.d.a;

import android.opengl.GLES20;
import com.yalantis.ucrop.view.CropImageView;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class c {
    private int a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2394b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2395c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2396d;
    private int e;
    private int f;
    private int g;
    private int h;
    private ByteBuffer q;
    private ByteBuffer r;
    static float[] v = {-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f};
    static float[] w = {-1.0f, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, -1.0f, 1.0f, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f};
    static float[] x = {CropImageView.DEFAULT_ASPECT_RATIO, -1.0f, 1.0f, -1.0f, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f, CropImageView.DEFAULT_ASPECT_RATIO};
    static float[] y = {-1.0f, -1.0f, CropImageView.DEFAULT_ASPECT_RATIO, -1.0f, -1.0f, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO};
    static float[] z = {CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f, 1.0f, 1.0f};
    private static float[] A = {CropImageView.DEFAULT_ASPECT_RATIO, 1.0f, 1.0f, 1.0f, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f, CropImageView.DEFAULT_ASPECT_RATIO};
    private int i = -1;
    private int j = -1;
    private int k = -1;
    private int l = -1;
    private int m = -1;
    private int n = -1;
    private int o = -1;
    private int p = -1;
    private int s = -1;
    private int t = -1;
    private boolean u = false;

    public c(int i) {
        if (i < 0 || i > 4) {
            throw new RuntimeException("Index can only be 0 to 4");
        }
        this.f2394b = i;
        i(i);
    }

    private void c(String str) {
        int iGlGetError = GLES20.glGetError();
        if (iGlGetError == 0) {
            return;
        }
        e.b("***** " + str + ": glError " + iGlGetError);
        throw new RuntimeException(str + ": glError " + iGlGetError);
    }

    private int h(int i, String str) {
        int iGlCreateShader = GLES20.glCreateShader(i);
        if (iGlCreateShader == 0) {
            return iGlCreateShader;
        }
        GLES20.glShaderSource(iGlCreateShader, str);
        GLES20.glCompileShader(iGlCreateShader);
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
        if (iArr[0] != 0) {
            return iGlCreateShader;
        }
        e.b("Could not compile shader " + i);
        e.b(GLES20.glGetShaderInfoLog(iGlCreateShader));
        GLES20.glDeleteShader(iGlCreateShader);
        return 0;
    }

    public void a() {
        if (this.a <= 0) {
            this.a = e("attribute vec4 vPosition;\nattribute vec2 a_texCoord;\nvarying vec2 tc;\nvoid main() {\ngl_Position = vPosition;\ntc = a_texCoord;\n}\n", "precision mediump float;\nuniform sampler2D tex_y;\nuniform sampler2D tex_u;\nuniform sampler2D tex_v;\nvarying vec2 tc;\nvoid main() {\nvec4 c = vec4((texture2D(tex_y, tc).r - 16./255.) * 1.164);\nvec4 U = vec4(texture2D(tex_u, tc).r - 128./255.);\nvec4 V = vec4(texture2D(tex_v, tc).r - 128./255.);\nc += V * vec4(1.596, -0.813, 0, 0);\nc += U * vec4(0, -0.392, 2.017, 0);\nc.a = 1.0;\ngl_FragColor = c;\n}\n");
        }
        e.a("_program = " + this.a);
        this.i = GLES20.glGetAttribLocation(this.a, "vPosition");
        e.a("_positionHandle = " + this.i);
        c("glGetAttribLocation vPosition");
        if (this.i == -1) {
            throw new RuntimeException("Could not get attribute location for vPosition");
        }
        this.j = GLES20.glGetAttribLocation(this.a, "a_texCoord");
        e.a("_coordHandle = " + this.j);
        c("glGetAttribLocation a_texCoord");
        if (this.j == -1) {
            throw new RuntimeException("Could not get attribute location for a_texCoord");
        }
        this.k = GLES20.glGetUniformLocation(this.a, "tex_y");
        e.a("_yhandle = " + this.k);
        c("glGetUniformLocation tex_y");
        if (this.k == -1) {
            throw new RuntimeException("Could not get uniform location for tex_y");
        }
        this.l = GLES20.glGetUniformLocation(this.a, "tex_u");
        e.a("_uhandle = " + this.l);
        c("glGetUniformLocation tex_u");
        if (this.l == -1) {
            throw new RuntimeException("Could not get uniform location for tex_u");
        }
        this.m = GLES20.glGetUniformLocation(this.a, "tex_v");
        e.a("_vhandle = " + this.m);
        c("glGetUniformLocation tex_v");
        if (this.m == -1) {
            throw new RuntimeException("Could not get uniform location for tex_v");
        }
        this.u = true;
    }

    public void b(Buffer buffer, Buffer buffer2, Buffer buffer3, int i, int i2) {
        boolean z2 = (i == this.s && i2 == this.t) ? false : true;
        if (z2) {
            this.s = i;
            this.t = i2;
            e.a("buildTextures videoSizeChanged: w=" + this.s + " h=" + this.t);
        }
        if (this.n < 0 || z2) {
            if (this.n >= 0) {
                e.a("glDeleteTextures Y");
                GLES20.glDeleteTextures(1, new int[]{this.n}, 0);
                c("glDeleteTextures");
            }
            GLES20.glPixelStorei(3317, 1);
            int[] iArr = new int[1];
            GLES20.glGenTextures(1, iArr, 0);
            c("glGenTextures");
            this.n = iArr[0];
            e.a("glGenTextures Y = " + this.n);
        }
        GLES20.glBindTexture(3553, this.n);
        c("glBindTexture");
        GLES20.glTexImage2D(3553, 0, 6409, this.s, this.t, 0, 6409, 5121, buffer);
        c("glTexImage2D");
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameteri(3553, 10242, 33071);
        GLES20.glTexParameteri(3553, 10243, 33071);
        if (this.o < 0 || z2) {
            if (this.o >= 0) {
                e.a("glDeleteTextures U");
                GLES20.glDeleteTextures(1, new int[]{this.o}, 0);
                c("glDeleteTextures");
            }
            int[] iArr2 = new int[1];
            GLES20.glGenTextures(1, iArr2, 0);
            c("glGenTextures");
            this.o = iArr2[0];
            e.a("glGenTextures U = " + this.o);
        }
        GLES20.glBindTexture(3553, this.o);
        GLES20.glTexImage2D(3553, 0, 6409, this.s / 2, this.t / 2, 0, 6409, 5121, buffer2);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameteri(3553, 10242, 33071);
        GLES20.glTexParameteri(3553, 10243, 33071);
        if (this.p < 0 || z2) {
            if (this.p >= 0) {
                e.a("glDeleteTextures V");
                GLES20.glDeleteTextures(1, new int[]{this.p}, 0);
                c("glDeleteTextures");
            }
            int[] iArr3 = new int[1];
            GLES20.glGenTextures(1, iArr3, 0);
            c("glGenTextures");
            this.p = iArr3[0];
            e.a("glGenTextures V = " + this.p);
        }
        GLES20.glBindTexture(3553, this.p);
        GLES20.glTexImage2D(3553, 0, 6409, this.s / 2, this.t / 2, 0, 6409, 5121, buffer3);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameteri(3553, 10242, 33071);
        GLES20.glTexParameteri(3553, 10243, 33071);
    }

    void d(float[] fArr) {
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(fArr.length * 4);
        this.q = byteBufferAllocateDirect;
        byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
        this.q.asFloatBuffer().put(fArr);
        this.q.position(0);
        if (this.r == null) {
            ByteBuffer byteBufferAllocateDirect2 = ByteBuffer.allocateDirect(A.length * 4);
            this.r = byteBufferAllocateDirect2;
            byteBufferAllocateDirect2.order(ByteOrder.nativeOrder());
            this.r.asFloatBuffer().put(A);
            this.r.position(0);
        }
    }

    public int e(String str, String str2) {
        int iH = h(35633, str);
        int iH2 = h(35632, str2);
        e.a("vertexShader = " + iH);
        e.a("pixelShader = " + iH2);
        int iGlCreateProgram = GLES20.glCreateProgram();
        if (iGlCreateProgram == 0) {
            return iGlCreateProgram;
        }
        GLES20.glAttachShader(iGlCreateProgram, iH);
        c("glAttachShader");
        GLES20.glAttachShader(iGlCreateProgram, iH2);
        c("glAttachShader");
        GLES20.glLinkProgram(iGlCreateProgram);
        int[] iArr = new int[1];
        GLES20.glGetProgramiv(iGlCreateProgram, 35714, iArr, 0);
        if (iArr[0] == 1) {
            return iGlCreateProgram;
        }
        e.b("Could not link program: ");
        e.b(GLES20.glGetProgramInfoLog(iGlCreateProgram));
        GLES20.glDeleteProgram(iGlCreateProgram);
        return 0;
    }

    public void f() {
        GLES20.glUseProgram(this.a);
        c("glUseProgram: " + this.a);
        GLES20.glVertexAttribPointer(this.i, 2, 5126, false, 8, (Buffer) this.q);
        c("glVertexAttribPointer mPositionHandle");
        GLES20.glEnableVertexAttribArray(this.i);
        GLES20.glVertexAttribPointer(this.j, 2, 5126, false, 8, (Buffer) this.r);
        c("glVertexAttribPointer maTextureHandle");
        GLES20.glEnableVertexAttribArray(this.j);
        GLES20.glActiveTexture(this.f2395c);
        GLES20.glBindTexture(3553, this.n);
        GLES20.glUniform1i(this.k, this.f);
        GLES20.glActiveTexture(this.f2396d);
        GLES20.glBindTexture(3553, this.o);
        GLES20.glUniform1i(this.l, this.g);
        GLES20.glActiveTexture(this.e);
        GLES20.glBindTexture(3553, this.p);
        GLES20.glUniform1i(this.m, this.h);
        GLES20.glDrawArrays(5, 0, 4);
        GLES20.glFinish();
        GLES20.glDisableVertexAttribArray(this.i);
        GLES20.glDisableVertexAttribArray(this.j);
    }

    public boolean g() {
        return this.u;
    }

    public void i(int i) {
        int i2 = this.f2394b;
        if (i2 == 1) {
            this.f2395c = 33984;
            this.f2396d = 33985;
            this.e = 33986;
            this.f = 0;
            this.g = 1;
            this.h = 2;
            return;
        }
        if (i2 == 2) {
            this.f2395c = 33987;
            this.f2396d = 33988;
            this.e = 33989;
            this.f = 3;
            this.g = 4;
            this.h = 5;
            return;
        }
        if (i2 == 3) {
            this.f2395c = 33990;
            this.f2396d = 33991;
            this.e = 33992;
            this.f = 6;
            this.g = 7;
            this.h = 8;
            return;
        }
        if (i2 != 4) {
            this.f2395c = 33984;
            this.f2396d = 33985;
            this.e = 33986;
            this.f = 0;
            this.g = 1;
            this.h = 2;
            return;
        }
        this.f2395c = 33993;
        this.f2396d = 33994;
        this.e = 33995;
        this.f = 9;
        this.g = 10;
        this.h = 11;
    }
}
