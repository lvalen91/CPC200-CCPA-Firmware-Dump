package cn.manstep.phonemirrorBox.p090w0;

import android.opengl.GLES20;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.w0.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0997a {

    /* JADX INFO: renamed from: a */
    public String f6201a;

    /* JADX INFO: renamed from: b */
    public String f6202b;

    /* JADX INFO: renamed from: a */
    public FloatBuffer m7467a(float[] fArr) {
        FloatBuffer floatBufferAsFloatBuffer = ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        floatBufferAsFloatBuffer.put(fArr, 0, fArr.length).position(0);
        return floatBufferAsFloatBuffer;
    }

    /* JADX INFO: renamed from: b */
    public abstract void mo7468b(int i, float[] fArr);

    /* JADX INFO: renamed from: c */
    public abstract void mo7469c();

    /* JADX INFO: renamed from: d */
    public int m7470d(int i, int i2) {
        int iGlCreateProgram = GLES20.glCreateProgram();
        if (iGlCreateProgram == 0) {
            throw new RuntimeException("Create Program Failed!" + GLES20.glGetError());
        }
        GLES20.glAttachShader(iGlCreateProgram, i);
        GLES20.glAttachShader(iGlCreateProgram, i2);
        GLES20.glLinkProgram(iGlCreateProgram);
        GLES20.glUseProgram(iGlCreateProgram);
        return iGlCreateProgram;
    }

    /* JADX INFO: renamed from: e */
    public int m7471e(int i, String str) {
        int iGlCreateShader = GLES20.glCreateShader(i);
        if (iGlCreateShader != 0) {
            GLES20.glShaderSource(iGlCreateShader, str);
            GLES20.glCompileShader(iGlCreateShader);
            return iGlCreateShader;
        }
        throw new RuntimeException("Create Shader Failed!" + GLES20.glGetError());
    }

    /* JADX INFO: renamed from: f */
    public void mo7472f(String str, int i) {
    }
}
