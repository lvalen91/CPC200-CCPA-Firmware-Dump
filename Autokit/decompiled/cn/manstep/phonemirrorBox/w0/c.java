package cn.manstep.phonemirrorBox.w0;

import android.opengl.GLES20;
import com.yalantis.ucrop.view.CropImageView;
import java.nio.Buffer;
import java.nio.FloatBuffer;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class c extends a {
    private static final float[] q = {1.0f, 1.0f, 1.0f, 1.0f, -1.0f, 1.0f, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f, -1.0f, -1.0f, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f, 1.0f, 1.0f, 1.0f, -1.0f, -1.0f, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f, -1.0f, 1.0f, CropImageView.DEFAULT_ASPECT_RATIO};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private FloatBuffer f1954c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1955d = -1;
    private int e = -1;
    private int f = -1;
    private int g = -1;
    private float h = 1.0f;
    private int i = -1;
    private float j = CropImageView.DEFAULT_ASPECT_RATIO;
    private int k = -1;
    private float l = CropImageView.DEFAULT_ASPECT_RATIO;
    private int m = -1;
    private float n = 1.0f;
    private int o = -1;
    private boolean p = true;

    public c() {
        this.a = "attribute vec4 aPosition;\nuniform mat4 uTextureMatrix;\nattribute vec4 aTextureCoordinate;\nvarying vec2 vTextureCoord;\nvoid main()\n{\n    vTextureCoord = (uTextureMatrix * aTextureCoordinate).xy;\n    gl_Position = aPosition;\n}";
        this.f1950b = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES uTextureSampler;\nvarying vec2 vTextureCoord;\nconst mediump vec3 luminanceWeighting = vec3(0.2125, 0.7154, 0.0721);\n\nuniform lowp float saturation;\nuniform lowp float brightness;\nuniform lowp float exposure;\nuniform lowp float contrast;\n\nvoid main()\n{\n    //纹理颜色\n    vec4 vTextureColor = texture2D(uTextureSampler, vTextureCoord);\n\n    //饱和度\n    lowp float luminance = dot(vTextureColor.rgb, luminanceWeighting);\n    lowp vec3 greyScaleColor = vec3(luminance);\n    vec4 saturationColor = vec4(mix(greyScaleColor, vTextureColor.rgb, saturation), vTextureColor.w);\n    vTextureColor = saturationColor;\n\n    //亮度\n    vec4 brightnessColor = vec4((vTextureColor.rgb + vec3(brightness)), vTextureColor.w);\n    vTextureColor = brightnessColor;\n\n    //曝光度\n    vec4 exposureColor = vec4(vTextureColor.rgb * pow(2.0, exposure), vTextureColor.w);\n    vTextureColor = exposureColor;\n\n    //对比度\n    vec4 contrastColor = vec4(((vTextureColor.rgb - vec3(0.5)) * contrast + vec3(0.5)), vTextureColor.w);\n    vTextureColor = contrastColor;\n\n    gl_FragColor = vTextureColor;\n}";
    }

    @Override // cn.manstep.phonemirrorBox.w0.a
    public void b(int i, float[] fArr) {
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, i);
        GLES20.glUniform1i(this.g, 0);
        GLES20.glUniformMatrix4fv(this.f, 1, false, fArr, 0);
        if (this.p) {
            GLES20.glUniform1f(this.i, this.h);
            GLES20.glUniform1f(this.m, this.l);
            GLES20.glUniform1f(this.k, this.j);
            GLES20.glUniform1f(this.o, this.n);
            this.p = false;
        }
        GLES20.glDrawArrays(4, 0, 6);
    }

    @Override // cn.manstep.phonemirrorBox.w0.a
    public void c() {
        this.f1954c = a(q);
        int iD = d(e(35633, this.a.trim()), e(35632, this.f1950b.trim()));
        this.f1955d = GLES20.glGetAttribLocation(iD, "aPosition");
        this.e = GLES20.glGetAttribLocation(iD, "aTextureCoordinate");
        this.f = GLES20.glGetUniformLocation(iD, "uTextureMatrix");
        this.g = GLES20.glGetUniformLocation(iD, "uTextureSampler");
        this.i = GLES20.glGetUniformLocation(iD, "saturation");
        this.m = GLES20.glGetUniformLocation(iD, "brightness");
        this.k = GLES20.glGetUniformLocation(iD, "exposure");
        this.o = GLES20.glGetUniformLocation(iD, "contrast");
        FloatBuffer floatBuffer = this.f1954c;
        if (floatBuffer != null) {
            floatBuffer.position(0);
            GLES20.glEnableVertexAttribArray(this.f1955d);
            GLES20.glVertexAttribPointer(this.f1955d, 2, 5126, false, 16, (Buffer) this.f1954c);
            this.f1954c.position(2);
            GLES20.glEnableVertexAttribArray(this.e);
            GLES20.glVertexAttribPointer(this.e, 2, 5126, false, 16, (Buffer) this.f1954c);
        }
    }

    @Override // cn.manstep.phonemirrorBox.w0.a
    public void f(String str, int i) {
        super.f(str, i);
        this.p = true;
        if ("saturation".equals(str)) {
            this.h = (i / 10.0f) - 4.0f;
            return;
        }
        if ("brightness".equals(str)) {
            this.l = (i / 50.0f) - 1.0f;
        } else if ("exposure".equals(str)) {
            this.j = (i / 10.0f) - 5.0f;
        } else if ("contrast".equals(str)) {
            this.n = (i / 10.0f) - 4.0f;
        }
    }
}
