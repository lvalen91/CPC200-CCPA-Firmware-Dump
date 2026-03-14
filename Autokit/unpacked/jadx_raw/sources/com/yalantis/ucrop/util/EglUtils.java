package com.yalantis.ucrop.util;

import android.annotation.TargetApi;
import android.opengl.EGL14;
import android.opengl.GLES10;
import android.opengl.GLES20;
import android.os.Build;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class EglUtils {
    private static final String TAG = "EglUtils";

    private EglUtils() {
    }

    @TargetApi(14)
    private static int getMaxTextureEgl10() {
        EGL10 egl10 = (EGL10) EGLContext.getEGL();
        EGLDisplay eGLDisplayEglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        egl10.eglInitialize(eGLDisplayEglGetDisplay, new int[2]);
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        int[] iArr = new int[1];
        egl10.eglChooseConfig(eGLDisplayEglGetDisplay, new int[]{12351, 12430, 12329, 0, 12339, 1, 12344}, eGLConfigArr, 1, iArr);
        if (iArr[0] == 0) {
            return 0;
        }
        EGLConfig eGLConfig = eGLConfigArr[0];
        EGLSurface eGLSurfaceEglCreatePbufferSurface = egl10.eglCreatePbufferSurface(eGLDisplayEglGetDisplay, eGLConfig, new int[]{12375, 64, 12374, 64, 12344});
        EGLContext eGLContextEglCreateContext = egl10.eglCreateContext(eGLDisplayEglGetDisplay, eGLConfig, EGL10.EGL_NO_CONTEXT, new int[]{12440, 1, 12344});
        egl10.eglMakeCurrent(eGLDisplayEglGetDisplay, eGLSurfaceEglCreatePbufferSurface, eGLSurfaceEglCreatePbufferSurface, eGLContextEglCreateContext);
        int[] iArr2 = new int[1];
        GLES10.glGetIntegerv(3379, iArr2, 0);
        EGLSurface eGLSurface = EGL10.EGL_NO_SURFACE;
        egl10.eglMakeCurrent(eGLDisplayEglGetDisplay, eGLSurface, eGLSurface, EGL10.EGL_NO_CONTEXT);
        egl10.eglDestroySurface(eGLDisplayEglGetDisplay, eGLSurfaceEglCreatePbufferSurface);
        egl10.eglDestroyContext(eGLDisplayEglGetDisplay, eGLContextEglCreateContext);
        egl10.eglTerminate(eGLDisplayEglGetDisplay);
        return iArr2[0];
    }

    @TargetApi(17)
    private static int getMaxTextureEgl14() {
        android.opengl.EGLDisplay eGLDisplayEglGetDisplay = EGL14.eglGetDisplay(0);
        int[] iArr = new int[2];
        EGL14.eglInitialize(eGLDisplayEglGetDisplay, iArr, 0, iArr, 1);
        android.opengl.EGLConfig[] eGLConfigArr = new android.opengl.EGLConfig[1];
        int[] iArr2 = new int[1];
        EGL14.eglChooseConfig(eGLDisplayEglGetDisplay, new int[]{12351, 12430, 12329, 0, 12352, 4, 12339, 1, 12344}, 0, eGLConfigArr, 0, 1, iArr2, 0);
        if (iArr2[0] == 0) {
            return 0;
        }
        android.opengl.EGLConfig eGLConfig = eGLConfigArr[0];
        android.opengl.EGLSurface eGLSurfaceEglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eGLDisplayEglGetDisplay, eGLConfig, new int[]{12375, 64, 12374, 64, 12344}, 0);
        android.opengl.EGLContext eGLContextEglCreateContext = EGL14.eglCreateContext(eGLDisplayEglGetDisplay, eGLConfig, EGL14.EGL_NO_CONTEXT, new int[]{12440, 2, 12344}, 0);
        EGL14.eglMakeCurrent(eGLDisplayEglGetDisplay, eGLSurfaceEglCreatePbufferSurface, eGLSurfaceEglCreatePbufferSurface, eGLContextEglCreateContext);
        int[] iArr3 = new int[1];
        GLES20.glGetIntegerv(3379, iArr3, 0);
        android.opengl.EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
        EGL14.eglMakeCurrent(eGLDisplayEglGetDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
        EGL14.eglDestroySurface(eGLDisplayEglGetDisplay, eGLSurfaceEglCreatePbufferSurface);
        EGL14.eglDestroyContext(eGLDisplayEglGetDisplay, eGLContextEglCreateContext);
        EGL14.eglTerminate(eGLDisplayEglGetDisplay);
        return iArr3[0];
    }

    public static int getMaxTextureSize() {
        try {
            return Build.VERSION.SDK_INT >= 17 ? getMaxTextureEgl14() : getMaxTextureEgl10();
        } catch (Exception unused) {
            return 0;
        }
    }
}
