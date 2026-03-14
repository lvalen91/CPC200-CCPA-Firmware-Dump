package p093d.p094a.p095a.p096b;

import android.opengl.GLES20;
import com.yalantis.ucrop.view.CropImageView;
import java.nio.Buffer;
import java.nio.FloatBuffer;

/* JADX INFO: renamed from: d.a.a.b.f */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1196f {

    /* JADX INFO: renamed from: a */
    private int f7560a;

    /* JADX INFO: renamed from: b */
    private int f7561b;

    /* JADX INFO: renamed from: c */
    private int f7562c;

    /* JADX INFO: renamed from: d */
    private int f7563d;

    /* JADX INFO: renamed from: e */
    private int f7564e;

    /* JADX INFO: renamed from: f */
    private int f7565f;

    /* JADX INFO: renamed from: g */
    private int f7566g;

    /* JADX INFO: renamed from: h */
    private int f7567h;

    /* JADX INFO: renamed from: i */
    private int f7568i;

    /* JADX INFO: renamed from: j */
    private float[] f7569j = new float[9];

    /* JADX INFO: renamed from: k */
    private float[] f7570k;

    /* JADX INFO: renamed from: l */
    private float f7571l;

    /* JADX INFO: renamed from: d.a.a.b.f$a */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a */
        static final /* synthetic */ int[] f7572a;

        static {
            int[] iArr = new int[b.values().length];
            f7572a = iArr;
            try {
                iArr[b.TEXTURE_2D.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7572a[b.TEXTURE_EXT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7572a[b.TEXTURE_EXT_BW.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f7572a[b.TEXTURE_EXT_FILT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: renamed from: d.a.a.b.f$b */
    public enum b {
        TEXTURE_2D,
        TEXTURE_EXT,
        TEXTURE_EXT_BW,
        TEXTURE_EXT_FILT
    }

    public C1196f(b bVar) {
        int i = a.f7572a[bVar.ordinal()];
        if (i == 1) {
            this.f7568i = 3553;
            this.f7560a = C1194d.m9075d("uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n", "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n");
        } else if (i == 2) {
            this.f7568i = 36197;
            this.f7560a = C1194d.m9075d("uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n", "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n");
        } else if (i == 3) {
            this.f7568i = 36197;
            this.f7560a = C1194d.m9075d("uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n", "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    vec4 tc = texture2D(sTexture, vTextureCoord);\n    float color = tc.r * 0.3 + tc.g * 0.59 + tc.b * 0.11;\n    gl_FragColor = vec4(color, color, color, 1.0);\n}\n");
        } else {
            if (i != 4) {
                throw new RuntimeException("Unhandled type " + bVar);
            }
            this.f7568i = 36197;
            this.f7560a = C1194d.m9075d("uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n", "#extension GL_OES_EGL_image_external : require\n#define KERNEL_SIZE 9\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform float uKernel[KERNEL_SIZE];\nuniform vec2 uTexOffset[KERNEL_SIZE];\nuniform float uColorAdjust;\nvoid main() {\n    int i = 0;\n    vec4 sum = vec4(0.0);\n    if (vTextureCoord.x < vTextureCoord.y - 0.005) {\n        for (i = 0; i < KERNEL_SIZE; i++) {\n            vec4 texc = texture2D(sTexture, vTextureCoord + uTexOffset[i]);\n            sum += texc * uKernel[i];\n        }\n    sum += uColorAdjust;\n    } else if (vTextureCoord.x > vTextureCoord.y + 0.005) {\n        sum = texture2D(sTexture, vTextureCoord);\n    } else {\n        sum.r = 1.0;\n    }\n    gl_FragColor = sum;\n}\n");
        }
        if (this.f7560a == 0) {
            throw new RuntimeException("Unable to create program");
        }
        String str = "Created program " + this.f7560a + " (" + bVar + ")";
        int iGlGetAttribLocation = GLES20.glGetAttribLocation(this.f7560a, "aPosition");
        this.f7566g = iGlGetAttribLocation;
        C1194d.m9073b(iGlGetAttribLocation, "aPosition");
        int iGlGetAttribLocation2 = GLES20.glGetAttribLocation(this.f7560a, "aTextureCoord");
        this.f7567h = iGlGetAttribLocation2;
        C1194d.m9073b(iGlGetAttribLocation2, "aTextureCoord");
        int iGlGetUniformLocation = GLES20.glGetUniformLocation(this.f7560a, "uMVPMatrix");
        this.f7561b = iGlGetUniformLocation;
        C1194d.m9073b(iGlGetUniformLocation, "uMVPMatrix");
        int iGlGetUniformLocation2 = GLES20.glGetUniformLocation(this.f7560a, "uTexMatrix");
        this.f7562c = iGlGetUniformLocation2;
        C1194d.m9073b(iGlGetUniformLocation2, "uTexMatrix");
        int iGlGetUniformLocation3 = GLES20.glGetUniformLocation(this.f7560a, "uKernel");
        this.f7563d = iGlGetUniformLocation3;
        if (iGlGetUniformLocation3 < 0) {
            this.f7563d = -1;
            this.f7564e = -1;
            this.f7565f = -1;
            return;
        }
        int iGlGetUniformLocation4 = GLES20.glGetUniformLocation(this.f7560a, "uTexOffset");
        this.f7564e = iGlGetUniformLocation4;
        C1194d.m9073b(iGlGetUniformLocation4, "uTexOffset");
        int iGlGetUniformLocation5 = GLES20.glGetUniformLocation(this.f7560a, "uColorAdjust");
        this.f7565f = iGlGetUniformLocation5;
        C1194d.m9073b(iGlGetUniformLocation5, "uColorAdjust");
        m9086c(new float[]{CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO}, CropImageView.DEFAULT_ASPECT_RATIO);
        m9087d(256, 256);
    }

    /* JADX INFO: renamed from: a */
    public void m9084a(float[] fArr, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, float[] fArr2, FloatBuffer floatBuffer2, int i5, int i6) {
        C1194d.m9072a("draw start");
        GLES20.glUseProgram(this.f7560a);
        C1194d.m9072a("glUseProgram");
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(this.f7568i, i5);
        GLES20.glUniformMatrix4fv(this.f7561b, 1, false, fArr, 0);
        C1194d.m9072a("glUniformMatrix4fv");
        GLES20.glUniformMatrix4fv(this.f7562c, 1, false, fArr2, 0);
        C1194d.m9072a("glUniformMatrix4fv");
        GLES20.glEnableVertexAttribArray(this.f7566g);
        C1194d.m9072a("glEnableVertexAttribArray");
        GLES20.glVertexAttribPointer(this.f7566g, i3, 5126, false, i4, (Buffer) floatBuffer);
        C1194d.m9072a("glVertexAttribPointer");
        GLES20.glEnableVertexAttribArray(this.f7567h);
        C1194d.m9072a("glEnableVertexAttribArray");
        GLES20.glVertexAttribPointer(this.f7567h, 2, 5126, false, i6, (Buffer) floatBuffer2);
        C1194d.m9072a("glVertexAttribPointer");
        int i7 = this.f7563d;
        if (i7 >= 0) {
            GLES20.glUniform1fv(i7, 9, this.f7569j, 0);
            GLES20.glUniform2fv(this.f7564e, 9, this.f7570k, 0);
            GLES20.glUniform1f(this.f7565f, this.f7571l);
        }
        GLES20.glDrawArrays(5, i, i2);
        C1194d.m9072a("glDrawArrays");
        GLES20.glDisableVertexAttribArray(this.f7566g);
        GLES20.glDisableVertexAttribArray(this.f7567h);
        GLES20.glBindTexture(this.f7568i, 0);
        GLES20.glUseProgram(0);
    }

    /* JADX INFO: renamed from: b */
    public void m9085b() {
        String str = "deleting program " + this.f7560a;
        GLES20.glDeleteProgram(this.f7560a);
        this.f7560a = -1;
    }

    /* JADX INFO: renamed from: c */
    public void m9086c(float[] fArr, float f) {
        if (fArr.length == 9) {
            System.arraycopy(fArr, 0, this.f7569j, 0, 9);
            this.f7571l = f;
            return;
        }
        throw new IllegalArgumentException("Kernel size is " + fArr.length + " vs. 9");
    }

    /* JADX INFO: renamed from: d */
    public void m9087d(int i, int i2) {
        float f = 1.0f / i;
        float f2 = 1.0f / i2;
        float f3 = -f;
        float f4 = -f2;
        this.f7570k = new float[]{f3, f4, CropImageView.DEFAULT_ASPECT_RATIO, f4, f, f4, f3, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, f, CropImageView.DEFAULT_ASPECT_RATIO, f3, f2, CropImageView.DEFAULT_ASPECT_RATIO, f2, f, f2};
    }
}
