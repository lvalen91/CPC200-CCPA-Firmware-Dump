package p093d.p094a.p095a.p096b;

import android.opengl.GLES20;
import android.opengl.Matrix;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

/* JADX INFO: renamed from: d.a.a.b.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1194d {

    /* JADX INFO: renamed from: a */
    public static final float[] f7548a;

    static {
        float[] fArr = new float[16];
        f7548a = fArr;
        Matrix.setIdentityM(fArr, 0);
    }

    /* JADX INFO: renamed from: a */
    public static void m9072a(String str) {
        int iGlGetError = GLES20.glGetError();
        if (iGlGetError == 0) {
            return;
        }
        throw new RuntimeException(str + ": glError 0x" + Integer.toHexString(iGlGetError));
    }

    /* JADX INFO: renamed from: b */
    public static void m9073b(int i, String str) {
        if (i >= 0) {
            return;
        }
        throw new RuntimeException("Unable to locate '" + str + "' in program");
    }

    /* JADX INFO: renamed from: c */
    public static FloatBuffer m9074c(float[] fArr) {
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(fArr.length * 4);
        byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
        FloatBuffer floatBufferAsFloatBuffer = byteBufferAllocateDirect.asFloatBuffer();
        floatBufferAsFloatBuffer.put(fArr);
        floatBufferAsFloatBuffer.position(0);
        return floatBufferAsFloatBuffer;
    }

    /* JADX INFO: renamed from: d */
    public static int m9075d(String str, String str2) {
        int iM9076e;
        int iM9076e2 = m9076e(35633, str);
        if (iM9076e2 == 0 || (iM9076e = m9076e(35632, str2)) == 0) {
            return 0;
        }
        int iGlCreateProgram = GLES20.glCreateProgram();
        m9072a("glCreateProgram");
        GLES20.glAttachShader(iGlCreateProgram, iM9076e2);
        m9072a("glAttachShader");
        GLES20.glAttachShader(iGlCreateProgram, iM9076e);
        m9072a("glAttachShader");
        GLES20.glLinkProgram(iGlCreateProgram);
        int[] iArr = new int[1];
        GLES20.glGetProgramiv(iGlCreateProgram, 35714, iArr, 0);
        if (iArr[0] == 1) {
            return iGlCreateProgram;
        }
        GLES20.glGetProgramInfoLog(iGlCreateProgram);
        GLES20.glDeleteProgram(iGlCreateProgram);
        return 0;
    }

    /* JADX INFO: renamed from: e */
    public static int m9076e(int i, String str) {
        int iGlCreateShader = GLES20.glCreateShader(i);
        m9072a("glCreateShader type=" + i);
        GLES20.glShaderSource(iGlCreateShader, str);
        GLES20.glCompileShader(iGlCreateShader);
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
        if (iArr[0] != 0) {
            return iGlCreateShader;
        }
        String str2 = "Could not compile shader " + i + ":";
        String str3 = " " + GLES20.glGetShaderInfoLog(iGlCreateShader);
        GLES20.glDeleteShader(iGlCreateShader);
        return 0;
    }
}
