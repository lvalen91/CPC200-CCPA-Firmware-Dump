package d.a.a.b;

import android.opengl.GLES20;
import com.yalantis.ucrop.view.CropImageView;
import java.nio.Buffer;
import java.nio.FloatBuffer;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class f {
    private int a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f2266b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2267c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2268d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private float[] j = new float[9];
    private float[] k;
    private float l;

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[b.values().length];
            a = iArr;
            try {
                iArr[b.TEXTURE_2D.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[b.TEXTURE_EXT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[b.TEXTURE_EXT_BW.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[b.TEXTURE_EXT_FILT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public enum b {
        TEXTURE_2D,
        TEXTURE_EXT,
        TEXTURE_EXT_BW,
        TEXTURE_EXT_FILT
    }

    public f(b bVar) {
        int i = a.a[bVar.ordinal()];
        if (i == 1) {
            this.i = 3553;
            this.a = d.d("uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n", "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n");
        } else if (i == 2) {
            this.i = 36197;
            this.a = d.d("uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n", "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n");
        } else if (i == 3) {
            this.i = 36197;
            this.a = d.d("uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n", "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    vec4 tc = texture2D(sTexture, vTextureCoord);\n    float color = tc.r * 0.3 + tc.g * 0.59 + tc.b * 0.11;\n    gl_FragColor = vec4(color, color, color, 1.0);\n}\n");
        } else {
            if (i != 4) {
                throw new RuntimeException("Unhandled type " + bVar);
            }
            this.i = 36197;
            this.a = d.d("uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n", "#extension GL_OES_EGL_image_external : require\n#define KERNEL_SIZE 9\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform float uKernel[KERNEL_SIZE];\nuniform vec2 uTexOffset[KERNEL_SIZE];\nuniform float uColorAdjust;\nvoid main() {\n    int i = 0;\n    vec4 sum = vec4(0.0);\n    if (vTextureCoord.x < vTextureCoord.y - 0.005) {\n        for (i = 0; i < KERNEL_SIZE; i++) {\n            vec4 texc = texture2D(sTexture, vTextureCoord + uTexOffset[i]);\n            sum += texc * uKernel[i];\n        }\n    sum += uColorAdjust;\n    } else if (vTextureCoord.x > vTextureCoord.y + 0.005) {\n        sum = texture2D(sTexture, vTextureCoord);\n    } else {\n        sum.r = 1.0;\n    }\n    gl_FragColor = sum;\n}\n");
        }
        if (this.a == 0) {
            throw new RuntimeException("Unable to create program");
        }
        String str = "Created program " + this.a + " (" + bVar + ")";
        int iGlGetAttribLocation = GLES20.glGetAttribLocation(this.a, "aPosition");
        this.g = iGlGetAttribLocation;
        d.b(iGlGetAttribLocation, "aPosition");
        int iGlGetAttribLocation2 = GLES20.glGetAttribLocation(this.a, "aTextureCoord");
        this.h = iGlGetAttribLocation2;
        d.b(iGlGetAttribLocation2, "aTextureCoord");
        int iGlGetUniformLocation = GLES20.glGetUniformLocation(this.a, "uMVPMatrix");
        this.f2266b = iGlGetUniformLocation;
        d.b(iGlGetUniformLocation, "uMVPMatrix");
        int iGlGetUniformLocation2 = GLES20.glGetUniformLocation(this.a, "uTexMatrix");
        this.f2267c = iGlGetUniformLocation2;
        d.b(iGlGetUniformLocation2, "uTexMatrix");
        int iGlGetUniformLocation3 = GLES20.glGetUniformLocation(this.a, "uKernel");
        this.f2268d = iGlGetUniformLocation3;
        if (iGlGetUniformLocation3 < 0) {
            this.f2268d = -1;
            this.e = -1;
            this.f = -1;
            return;
        }
        int iGlGetUniformLocation4 = GLES20.glGetUniformLocation(this.a, "uTexOffset");
        this.e = iGlGetUniformLocation4;
        d.b(iGlGetUniformLocation4, "uTexOffset");
        int iGlGetUniformLocation5 = GLES20.glGetUniformLocation(this.a, "uColorAdjust");
        this.f = iGlGetUniformLocation5;
        d.b(iGlGetUniformLocation5, "uColorAdjust");
        c(new float[]{CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO}, CropImageView.DEFAULT_ASPECT_RATIO);
        d(256, 256);
    }

    public void a(float[] fArr, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, float[] fArr2, FloatBuffer floatBuffer2, int i5, int i6) {
        d.a("draw start");
        GLES20.glUseProgram(this.a);
        d.a("glUseProgram");
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(this.i, i5);
        GLES20.glUniformMatrix4fv(this.f2266b, 1, false, fArr, 0);
        d.a("glUniformMatrix4fv");
        GLES20.glUniformMatrix4fv(this.f2267c, 1, false, fArr2, 0);
        d.a("glUniformMatrix4fv");
        GLES20.glEnableVertexAttribArray(this.g);
        d.a("glEnableVertexAttribArray");
        GLES20.glVertexAttribPointer(this.g, i3, 5126, false, i4, (Buffer) floatBuffer);
        d.a("glVertexAttribPointer");
        GLES20.glEnableVertexAttribArray(this.h);
        d.a("glEnableVertexAttribArray");
        GLES20.glVertexAttribPointer(this.h, 2, 5126, false, i6, (Buffer) floatBuffer2);
        d.a("glVertexAttribPointer");
        int i7 = this.f2268d;
        if (i7 >= 0) {
            GLES20.glUniform1fv(i7, 9, this.j, 0);
            GLES20.glUniform2fv(this.e, 9, this.k, 0);
            GLES20.glUniform1f(this.f, this.l);
        }
        GLES20.glDrawArrays(5, i, i2);
        d.a("glDrawArrays");
        GLES20.glDisableVertexAttribArray(this.g);
        GLES20.glDisableVertexAttribArray(this.h);
        GLES20.glBindTexture(this.i, 0);
        GLES20.glUseProgram(0);
    }

    public void b() {
        String str = "deleting program " + this.a;
        GLES20.glDeleteProgram(this.a);
        this.a = -1;
    }

    public void c(float[] fArr, float f) {
        if (fArr.length == 9) {
            System.arraycopy(fArr, 0, this.j, 0, 9);
            this.l = f;
            return;
        }
        throw new IllegalArgumentException("Kernel size is " + fArr.length + " vs. 9");
    }

    public void d(int i, int i2) {
        float f = 1.0f / i;
        float f2 = 1.0f / i2;
        float f3 = -f;
        float f4 = -f2;
        this.k = new float[]{f3, f4, CropImageView.DEFAULT_ASPECT_RATIO, f4, f, f4, f3, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, f, CropImageView.DEFAULT_ASPECT_RATIO, f3, f2, CropImageView.DEFAULT_ASPECT_RATIO, f2, f, f2};
    }
}
