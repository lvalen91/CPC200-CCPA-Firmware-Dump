package p093d.p126d.p127a;

import android.opengl.GLES20;
import com.yalantis.ucrop.view.CropImageView;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: renamed from: d.d.a.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1286c {

    /* JADX INFO: renamed from: a */
    private int f7994a;

    /* JADX INFO: renamed from: b */
    public final int f7995b;

    /* JADX INFO: renamed from: c */
    private int f7996c;

    /* JADX INFO: renamed from: d */
    private int f7997d;

    /* JADX INFO: renamed from: e */
    private int f7998e;

    /* JADX INFO: renamed from: f */
    private int f7999f;

    /* JADX INFO: renamed from: g */
    private int f8000g;

    /* JADX INFO: renamed from: h */
    private int f8001h;

    /* JADX INFO: renamed from: q */
    private ByteBuffer f8010q;

    /* JADX INFO: renamed from: r */
    private ByteBuffer f8011r;

    /* JADX INFO: renamed from: v */
    static float[] f7989v = {-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f};

    /* JADX INFO: renamed from: w */
    static float[] f7990w = {-1.0f, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, -1.0f, 1.0f, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f};

    /* JADX INFO: renamed from: x */
    static float[] f7991x = {CropImageView.DEFAULT_ASPECT_RATIO, -1.0f, 1.0f, -1.0f, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f, CropImageView.DEFAULT_ASPECT_RATIO};

    /* JADX INFO: renamed from: y */
    static float[] f7992y = {-1.0f, -1.0f, CropImageView.DEFAULT_ASPECT_RATIO, -1.0f, -1.0f, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO};

    /* JADX INFO: renamed from: z */
    static float[] f7993z = {CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f, 1.0f, 1.0f};

    /* JADX INFO: renamed from: A */
    private static float[] f7988A = {CropImageView.DEFAULT_ASPECT_RATIO, 1.0f, 1.0f, 1.0f, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f, CropImageView.DEFAULT_ASPECT_RATIO};

    /* JADX INFO: renamed from: i */
    private int f8002i = -1;

    /* JADX INFO: renamed from: j */
    private int f8003j = -1;

    /* JADX INFO: renamed from: k */
    private int f8004k = -1;

    /* JADX INFO: renamed from: l */
    private int f8005l = -1;

    /* JADX INFO: renamed from: m */
    private int f8006m = -1;

    /* JADX INFO: renamed from: n */
    private int f8007n = -1;

    /* JADX INFO: renamed from: o */
    private int f8008o = -1;

    /* JADX INFO: renamed from: p */
    private int f8009p = -1;

    /* JADX INFO: renamed from: s */
    private int f8012s = -1;

    /* JADX INFO: renamed from: t */
    private int f8013t = -1;

    /* JADX INFO: renamed from: u */
    private boolean f8014u = false;

    public C1286c(int i) {
        if (i < 0 || i > 4) {
            throw new RuntimeException("Index can only be 0 to 4");
        }
        this.f7995b = i;
        m9613i(i);
    }

    /* JADX INFO: renamed from: c */
    private void m9605c(String str) {
        int iGlGetError = GLES20.glGetError();
        if (iGlGetError == 0) {
            return;
        }
        C1288e.m9616b("***** " + str + ": glError " + iGlGetError);
        throw new RuntimeException(str + ": glError " + iGlGetError);
    }

    /* JADX INFO: renamed from: h */
    private int m9606h(int i, String str) {
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
        C1288e.m9616b("Could not compile shader " + i);
        C1288e.m9616b(GLES20.glGetShaderInfoLog(iGlCreateShader));
        GLES20.glDeleteShader(iGlCreateShader);
        return 0;
    }

    /* JADX INFO: renamed from: a */
    public void m9607a() {
        if (this.f7994a <= 0) {
            this.f7994a = m9610e("attribute vec4 vPosition;\nattribute vec2 a_texCoord;\nvarying vec2 tc;\nvoid main() {\ngl_Position = vPosition;\ntc = a_texCoord;\n}\n", "precision mediump float;\nuniform sampler2D tex_y;\nuniform sampler2D tex_u;\nuniform sampler2D tex_v;\nvarying vec2 tc;\nvoid main() {\nvec4 c = vec4((texture2D(tex_y, tc).r - 16./255.) * 1.164);\nvec4 U = vec4(texture2D(tex_u, tc).r - 128./255.);\nvec4 V = vec4(texture2D(tex_v, tc).r - 128./255.);\nc += V * vec4(1.596, -0.813, 0, 0);\nc += U * vec4(0, -0.392, 2.017, 0);\nc.a = 1.0;\ngl_FragColor = c;\n}\n");
        }
        C1288e.m9615a("_program = " + this.f7994a);
        this.f8002i = GLES20.glGetAttribLocation(this.f7994a, "vPosition");
        C1288e.m9615a("_positionHandle = " + this.f8002i);
        m9605c("glGetAttribLocation vPosition");
        if (this.f8002i == -1) {
            throw new RuntimeException("Could not get attribute location for vPosition");
        }
        this.f8003j = GLES20.glGetAttribLocation(this.f7994a, "a_texCoord");
        C1288e.m9615a("_coordHandle = " + this.f8003j);
        m9605c("glGetAttribLocation a_texCoord");
        if (this.f8003j == -1) {
            throw new RuntimeException("Could not get attribute location for a_texCoord");
        }
        this.f8004k = GLES20.glGetUniformLocation(this.f7994a, "tex_y");
        C1288e.m9615a("_yhandle = " + this.f8004k);
        m9605c("glGetUniformLocation tex_y");
        if (this.f8004k == -1) {
            throw new RuntimeException("Could not get uniform location for tex_y");
        }
        this.f8005l = GLES20.glGetUniformLocation(this.f7994a, "tex_u");
        C1288e.m9615a("_uhandle = " + this.f8005l);
        m9605c("glGetUniformLocation tex_u");
        if (this.f8005l == -1) {
            throw new RuntimeException("Could not get uniform location for tex_u");
        }
        this.f8006m = GLES20.glGetUniformLocation(this.f7994a, "tex_v");
        C1288e.m9615a("_vhandle = " + this.f8006m);
        m9605c("glGetUniformLocation tex_v");
        if (this.f8006m == -1) {
            throw new RuntimeException("Could not get uniform location for tex_v");
        }
        this.f8014u = true;
    }

    /* JADX INFO: renamed from: b */
    public void m9608b(Buffer buffer, Buffer buffer2, Buffer buffer3, int i, int i2) {
        boolean z = (i == this.f8012s && i2 == this.f8013t) ? false : true;
        if (z) {
            this.f8012s = i;
            this.f8013t = i2;
            C1288e.m9615a("buildTextures videoSizeChanged: w=" + this.f8012s + " h=" + this.f8013t);
        }
        if (this.f8007n < 0 || z) {
            if (this.f8007n >= 0) {
                C1288e.m9615a("glDeleteTextures Y");
                GLES20.glDeleteTextures(1, new int[]{this.f8007n}, 0);
                m9605c("glDeleteTextures");
            }
            GLES20.glPixelStorei(3317, 1);
            int[] iArr = new int[1];
            GLES20.glGenTextures(1, iArr, 0);
            m9605c("glGenTextures");
            this.f8007n = iArr[0];
            C1288e.m9615a("glGenTextures Y = " + this.f8007n);
        }
        GLES20.glBindTexture(3553, this.f8007n);
        m9605c("glBindTexture");
        GLES20.glTexImage2D(3553, 0, 6409, this.f8012s, this.f8013t, 0, 6409, 5121, buffer);
        m9605c("glTexImage2D");
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameteri(3553, 10242, 33071);
        GLES20.glTexParameteri(3553, 10243, 33071);
        if (this.f8008o < 0 || z) {
            if (this.f8008o >= 0) {
                C1288e.m9615a("glDeleteTextures U");
                GLES20.glDeleteTextures(1, new int[]{this.f8008o}, 0);
                m9605c("glDeleteTextures");
            }
            int[] iArr2 = new int[1];
            GLES20.glGenTextures(1, iArr2, 0);
            m9605c("glGenTextures");
            this.f8008o = iArr2[0];
            C1288e.m9615a("glGenTextures U = " + this.f8008o);
        }
        GLES20.glBindTexture(3553, this.f8008o);
        GLES20.glTexImage2D(3553, 0, 6409, this.f8012s / 2, this.f8013t / 2, 0, 6409, 5121, buffer2);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameteri(3553, 10242, 33071);
        GLES20.glTexParameteri(3553, 10243, 33071);
        if (this.f8009p < 0 || z) {
            if (this.f8009p >= 0) {
                C1288e.m9615a("glDeleteTextures V");
                GLES20.glDeleteTextures(1, new int[]{this.f8009p}, 0);
                m9605c("glDeleteTextures");
            }
            int[] iArr3 = new int[1];
            GLES20.glGenTextures(1, iArr3, 0);
            m9605c("glGenTextures");
            this.f8009p = iArr3[0];
            C1288e.m9615a("glGenTextures V = " + this.f8009p);
        }
        GLES20.glBindTexture(3553, this.f8009p);
        GLES20.glTexImage2D(3553, 0, 6409, this.f8012s / 2, this.f8013t / 2, 0, 6409, 5121, buffer3);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameteri(3553, 10242, 33071);
        GLES20.glTexParameteri(3553, 10243, 33071);
    }

    /* JADX INFO: renamed from: d */
    void m9609d(float[] fArr) {
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(fArr.length * 4);
        this.f8010q = byteBufferAllocateDirect;
        byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
        this.f8010q.asFloatBuffer().put(fArr);
        this.f8010q.position(0);
        if (this.f8011r == null) {
            ByteBuffer byteBufferAllocateDirect2 = ByteBuffer.allocateDirect(f7988A.length * 4);
            this.f8011r = byteBufferAllocateDirect2;
            byteBufferAllocateDirect2.order(ByteOrder.nativeOrder());
            this.f8011r.asFloatBuffer().put(f7988A);
            this.f8011r.position(0);
        }
    }

    /* JADX INFO: renamed from: e */
    public int m9610e(String str, String str2) {
        int iM9606h = m9606h(35633, str);
        int iM9606h2 = m9606h(35632, str2);
        C1288e.m9615a("vertexShader = " + iM9606h);
        C1288e.m9615a("pixelShader = " + iM9606h2);
        int iGlCreateProgram = GLES20.glCreateProgram();
        if (iGlCreateProgram == 0) {
            return iGlCreateProgram;
        }
        GLES20.glAttachShader(iGlCreateProgram, iM9606h);
        m9605c("glAttachShader");
        GLES20.glAttachShader(iGlCreateProgram, iM9606h2);
        m9605c("glAttachShader");
        GLES20.glLinkProgram(iGlCreateProgram);
        int[] iArr = new int[1];
        GLES20.glGetProgramiv(iGlCreateProgram, 35714, iArr, 0);
        if (iArr[0] == 1) {
            return iGlCreateProgram;
        }
        C1288e.m9616b("Could not link program: ");
        C1288e.m9616b(GLES20.glGetProgramInfoLog(iGlCreateProgram));
        GLES20.glDeleteProgram(iGlCreateProgram);
        return 0;
    }

    /* JADX INFO: renamed from: f */
    public void m9611f() {
        GLES20.glUseProgram(this.f7994a);
        m9605c("glUseProgram: " + this.f7994a);
        GLES20.glVertexAttribPointer(this.f8002i, 2, 5126, false, 8, (Buffer) this.f8010q);
        m9605c("glVertexAttribPointer mPositionHandle");
        GLES20.glEnableVertexAttribArray(this.f8002i);
        GLES20.glVertexAttribPointer(this.f8003j, 2, 5126, false, 8, (Buffer) this.f8011r);
        m9605c("glVertexAttribPointer maTextureHandle");
        GLES20.glEnableVertexAttribArray(this.f8003j);
        GLES20.glActiveTexture(this.f7996c);
        GLES20.glBindTexture(3553, this.f8007n);
        GLES20.glUniform1i(this.f8004k, this.f7999f);
        GLES20.glActiveTexture(this.f7997d);
        GLES20.glBindTexture(3553, this.f8008o);
        GLES20.glUniform1i(this.f8005l, this.f8000g);
        GLES20.glActiveTexture(this.f7998e);
        GLES20.glBindTexture(3553, this.f8009p);
        GLES20.glUniform1i(this.f8006m, this.f8001h);
        GLES20.glDrawArrays(5, 0, 4);
        GLES20.glFinish();
        GLES20.glDisableVertexAttribArray(this.f8002i);
        GLES20.glDisableVertexAttribArray(this.f8003j);
    }

    /* JADX INFO: renamed from: g */
    public boolean m9612g() {
        return this.f8014u;
    }

    /* JADX INFO: renamed from: i */
    public void m9613i(int i) {
        int i2 = this.f7995b;
        if (i2 == 1) {
            this.f7996c = 33984;
            this.f7997d = 33985;
            this.f7998e = 33986;
            this.f7999f = 0;
            this.f8000g = 1;
            this.f8001h = 2;
            return;
        }
        if (i2 == 2) {
            this.f7996c = 33987;
            this.f7997d = 33988;
            this.f7998e = 33989;
            this.f7999f = 3;
            this.f8000g = 4;
            this.f8001h = 5;
            return;
        }
        if (i2 == 3) {
            this.f7996c = 33990;
            this.f7997d = 33991;
            this.f7998e = 33992;
            this.f7999f = 6;
            this.f8000g = 7;
            this.f8001h = 8;
            return;
        }
        if (i2 != 4) {
            this.f7996c = 33984;
            this.f7997d = 33985;
            this.f7998e = 33986;
            this.f7999f = 0;
            this.f8000g = 1;
            this.f8001h = 2;
            return;
        }
        this.f7996c = 33993;
        this.f7997d = 33994;
        this.f7998e = 33995;
        this.f7999f = 9;
        this.f8000g = 10;
        this.f8001h = 11;
    }
}
