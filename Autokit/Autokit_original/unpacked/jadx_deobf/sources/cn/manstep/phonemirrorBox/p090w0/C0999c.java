package cn.manstep.phonemirrorBox.p090w0;

import android.opengl.GLES20;
import com.yalantis.ucrop.view.CropImageView;
import java.nio.Buffer;
import java.nio.FloatBuffer;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.w0.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0999c extends AbstractC0997a {

    /* JADX INFO: renamed from: q */
    private static final float[] f6217q = {1.0f, 1.0f, 1.0f, 1.0f, -1.0f, 1.0f, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f, -1.0f, -1.0f, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f, 1.0f, 1.0f, 1.0f, -1.0f, -1.0f, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f, -1.0f, 1.0f, CropImageView.DEFAULT_ASPECT_RATIO};

    /* JADX INFO: renamed from: c */
    private FloatBuffer f6218c;

    /* JADX INFO: renamed from: d */
    private int f6219d = -1;

    /* JADX INFO: renamed from: e */
    private int f6220e = -1;

    /* JADX INFO: renamed from: f */
    private int f6221f = -1;

    /* JADX INFO: renamed from: g */
    private int f6222g = -1;

    /* JADX INFO: renamed from: h */
    private float f6223h = 1.0f;

    /* JADX INFO: renamed from: i */
    private int f6224i = -1;

    /* JADX INFO: renamed from: j */
    private float f6225j = CropImageView.DEFAULT_ASPECT_RATIO;

    /* JADX INFO: renamed from: k */
    private int f6226k = -1;

    /* JADX INFO: renamed from: l */
    private float f6227l = CropImageView.DEFAULT_ASPECT_RATIO;

    /* JADX INFO: renamed from: m */
    private int f6228m = -1;

    /* JADX INFO: renamed from: n */
    private float f6229n = 1.0f;

    /* JADX INFO: renamed from: o */
    private int f6230o = -1;

    /* JADX INFO: renamed from: p */
    private boolean f6231p = true;

    public C0999c() {
        this.f6201a = "attribute vec4 aPosition;\nuniform mat4 uTextureMatrix;\nattribute vec4 aTextureCoordinate;\nvarying vec2 vTextureCoord;\nvoid main()\n{\n    vTextureCoord = (uTextureMatrix * aTextureCoordinate).xy;\n    gl_Position = aPosition;\n}";
        this.f6202b = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES uTextureSampler;\nvarying vec2 vTextureCoord;\nconst mediump vec3 luminanceWeighting = vec3(0.2125, 0.7154, 0.0721);\n\nuniform lowp float saturation;\nuniform lowp float brightness;\nuniform lowp float exposure;\nuniform lowp float contrast;\n\nvoid main()\n{\n    //纹理颜色\n    vec4 vTextureColor = texture2D(uTextureSampler, vTextureCoord);\n\n    //饱和度\n    lowp float luminance = dot(vTextureColor.rgb, luminanceWeighting);\n    lowp vec3 greyScaleColor = vec3(luminance);\n    vec4 saturationColor = vec4(mix(greyScaleColor, vTextureColor.rgb, saturation), vTextureColor.w);\n    vTextureColor = saturationColor;\n\n    //亮度\n    vec4 brightnessColor = vec4((vTextureColor.rgb + vec3(brightness)), vTextureColor.w);\n    vTextureColor = brightnessColor;\n\n    //曝光度\n    vec4 exposureColor = vec4(vTextureColor.rgb * pow(2.0, exposure), vTextureColor.w);\n    vTextureColor = exposureColor;\n\n    //对比度\n    vec4 contrastColor = vec4(((vTextureColor.rgb - vec3(0.5)) * contrast + vec3(0.5)), vTextureColor.w);\n    vTextureColor = contrastColor;\n\n    gl_FragColor = vTextureColor;\n}";
    }

    @Override // cn.manstep.phonemirrorBox.p090w0.AbstractC0997a
    /* JADX INFO: renamed from: b */
    public void mo7468b(int i, float[] fArr) {
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, i);
        GLES20.glUniform1i(this.f6222g, 0);
        GLES20.glUniformMatrix4fv(this.f6221f, 1, false, fArr, 0);
        if (this.f6231p) {
            GLES20.glUniform1f(this.f6224i, this.f6223h);
            GLES20.glUniform1f(this.f6228m, this.f6227l);
            GLES20.glUniform1f(this.f6226k, this.f6225j);
            GLES20.glUniform1f(this.f6230o, this.f6229n);
            this.f6231p = false;
        }
        GLES20.glDrawArrays(4, 0, 6);
    }

    @Override // cn.manstep.phonemirrorBox.p090w0.AbstractC0997a
    /* JADX INFO: renamed from: c */
    public void mo7469c() {
        this.f6218c = m7467a(f6217q);
        int iM7470d = m7470d(m7471e(35633, this.f6201a.trim()), m7471e(35632, this.f6202b.trim()));
        this.f6219d = GLES20.glGetAttribLocation(iM7470d, "aPosition");
        this.f6220e = GLES20.glGetAttribLocation(iM7470d, "aTextureCoordinate");
        this.f6221f = GLES20.glGetUniformLocation(iM7470d, "uTextureMatrix");
        this.f6222g = GLES20.glGetUniformLocation(iM7470d, "uTextureSampler");
        this.f6224i = GLES20.glGetUniformLocation(iM7470d, "saturation");
        this.f6228m = GLES20.glGetUniformLocation(iM7470d, "brightness");
        this.f6226k = GLES20.glGetUniformLocation(iM7470d, "exposure");
        this.f6230o = GLES20.glGetUniformLocation(iM7470d, "contrast");
        FloatBuffer floatBuffer = this.f6218c;
        if (floatBuffer != null) {
            floatBuffer.position(0);
            GLES20.glEnableVertexAttribArray(this.f6219d);
            GLES20.glVertexAttribPointer(this.f6219d, 2, 5126, false, 16, (Buffer) this.f6218c);
            this.f6218c.position(2);
            GLES20.glEnableVertexAttribArray(this.f6220e);
            GLES20.glVertexAttribPointer(this.f6220e, 2, 5126, false, 16, (Buffer) this.f6218c);
        }
    }

    @Override // cn.manstep.phonemirrorBox.p090w0.AbstractC0997a
    /* JADX INFO: renamed from: f */
    public void mo7472f(String str, int i) {
        super.mo7472f(str, i);
        this.f6231p = true;
        if ("saturation".equals(str)) {
            this.f6223h = (i / 10.0f) - 4.0f;
            return;
        }
        if ("brightness".equals(str)) {
            this.f6227l = (i / 50.0f) - 1.0f;
        } else if ("exposure".equals(str)) {
            this.f6225j = (i / 10.0f) - 5.0f;
        } else if ("contrast".equals(str)) {
            this.f6229n = (i / 10.0f) - 4.0f;
        }
    }
}
