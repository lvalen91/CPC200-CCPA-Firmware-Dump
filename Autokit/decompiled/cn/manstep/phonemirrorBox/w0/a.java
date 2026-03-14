package cn.manstep.phonemirrorBox.w0;

import android.opengl.GLES20;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public abstract class a {
    public String a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f1950b;

    public FloatBuffer a(float[] fArr) {
        FloatBuffer floatBufferAsFloatBuffer = ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        floatBufferAsFloatBuffer.put(fArr, 0, fArr.length).position(0);
        return floatBufferAsFloatBuffer;
    }

    public abstract void b(int i, float[] fArr);

    public abstract void c();

    public int d(int i, int i2) {
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

    public int e(int i, String str) {
        int iGlCreateShader = GLES20.glCreateShader(i);
        if (iGlCreateShader != 0) {
            GLES20.glShaderSource(iGlCreateShader, str);
            GLES20.glCompileShader(iGlCreateShader);
            return iGlCreateShader;
        }
        throw new RuntimeException("Create Shader Failed!" + GLES20.glGetError());
    }

    public void f(String str, int i) {
    }
}
