.class public Lcom/yalantis/ucrop/util/EglUtils;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final static TAG:Ljava/lang/String; = "EglUtils"

.method private constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static getMaxTextureEgl10()I
  .annotation build Landroid/annotation/TargetApi;
    value = 14
  .end annotation
  .registers 11
  .line 1
    invoke-static { }, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;
    move-result-object v0
    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;
  .line 2
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;
    invoke-interface { v0, v1 }, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;
    move-result-object v7
    const/4 v1, 2
    new-array v1, v1, [I
  .line 3
    invoke-interface { v0, v7, v1 }, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z
    const/4 v1, 7
    new-array v3, v1, [I
  .line 4
    fill-array-data v3, :L1
    const/4 v8, 1
    new-array v9, v8, [Ljavax/microedition/khronos/egl/EGLConfig;
    new-array v10, v8, [I
    const/4 v5, 1
    move-object v1, v0
    move-object v2, v7
    move-object v4, v9
    move-object v6, v10
  .line 5
    invoke-interface/range { v1 .. v6 }, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
    const/4 v1, 0
  .line 6
    aget v2, v10, v1
    if-nez v2, :L0
    return v1
  :L0
  .line 7
    aget-object v2, v9, v1
    const/4 v3, 5
    new-array v3, v3, [I
  .line 8
    fill-array-data v3, :L2
  .line 9
    invoke-interface { v0, v7, v2, v3 }, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    move-result-object v3
    const/4 v4, 3
    new-array v4, v4, [I
  .line 10
    fill-array-data v4, :L3
  .line 11
    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-interface { v0, v7, v2, v5, v4 }, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;
    move-result-object v2
  .line 12
    invoke-interface { v0, v7, v3, v3, v2 }, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z
    new-array v4, v8, [I
    const/16 v5, 3379
  .line 13
    invoke-static { v5, v4, v1 }, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V
  .line 14
    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;
    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-interface { v0, v7, v5, v5, v6 }, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z
  .line 15
    invoke-interface { v0, v7, v3 }, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
  .line 16
    invoke-interface { v0, v7, v2 }, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z
  .line 17
    invoke-interface { v0, v7 }, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z
  .line 18
    aget v0, v4, v1
    return v0
  :L1
  .array-data 4
    63t 48t 0t 0t
    -114t 48t 0t 0t
    41t 48t 0t 0t
    0t 0t 0t 0t
    51t 48t 0t 0t
    1t 0t 0t 0t
    56t 48t 0t 0t
  .end array-data
  :L2
  .array-data 4
    87t 48t 0t 0t
    64t 0t 0t 0t
    86t 48t 0t 0t
    64t 0t 0t 0t
    56t 48t 0t 0t
  .end array-data
  :L3
  .array-data 4
    -104t 48t 0t 0t
    1t 0t 0t 0t
    56t 48t 0t 0t
  .end array-data
.end method

.method private static getMaxTextureEgl14()I
  .annotation build Landroid/annotation/TargetApi;
    value = 17
  .end annotation
  .registers 13
    const/4 v0, 0
  .line 1
    invoke-static { v0 }, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;
    move-result-object v9
    const/4 v1, 2
    new-array v1, v1, [I
    const/4 v10, 1
  .line 2
    invoke-static { v9, v1, v0, v1, v10 }, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z
    const/16 v1, 9
    new-array v2, v1, [I
  .line 3
    fill-array-data v2, :L1
    new-array v11, v10, [Landroid/opengl/EGLConfig;
    new-array v12, v10, [I
    const/4 v3, 0
    const/4 v5, 0
    const/4 v6, 1
    const/4 v8, 0
    move-object v1, v9
    move-object v4, v11
    move-object v7, v12
  .line 4
    invoke-static/range { v1 .. v8 }, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z
  .line 5
    aget v1, v12, v0
    if-nez v1, :L0
    return v0
  :L0
  .line 6
    aget-object v1, v11, v0
    const/4 v2, 5
    new-array v2, v2, [I
  .line 7
    fill-array-data v2, :L2
  .line 8
    invoke-static { v9, v1, v2, v0 }, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;
    move-result-object v2
    const/4 v3, 3
    new-array v3, v3, [I
  .line 9
    fill-array-data v3, :L3
  .line 10
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;
    invoke-static { v9, v1, v4, v3, v0 }, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;
    move-result-object v1
  .line 11
    invoke-static { v9, v2, v2, v1 }, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z
    new-array v3, v10, [I
    const/16 v4, 3379
  .line 12
    invoke-static { v4, v3, v0 }, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V
  .line 13
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;
    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;
    invoke-static { v9, v4, v4, v5 }, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z
  .line 14
    invoke-static { v9, v2 }, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
  .line 15
    invoke-static { v9, v1 }, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z
  .line 16
    invoke-static { v9 }, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z
  .line 17
    aget v0, v3, v0
    return v0
  :L1
  .array-data 4
    63t 48t 0t 0t
    -114t 48t 0t 0t
    41t 48t 0t 0t
    0t 0t 0t 0t
    64t 48t 0t 0t
    4t 0t 0t 0t
    51t 48t 0t 0t
    1t 0t 0t 0t
    56t 48t 0t 0t
  .end array-data
  :L2
  .array-data 4
    87t 48t 0t 0t
    64t 0t 0t 0t
    86t 48t 0t 0t
    64t 0t 0t 0t
    56t 48t 0t 0t
  .end array-data
  :L3
  .array-data 4
    -104t 48t 0t 0t
    2t 0t 0t 0t
    56t 48t 0t 0t
  .end array-data
.end method

.method public static getMaxTextureSize()I
  .catch Ljava/lang/Exception; { :L0 .. :L2 } :L3
  .registers 2
  :L0
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 17
    if-lt v0, v1, :L1
  .line 2
    invoke-static { }, Lcom/yalantis/ucrop/util/EglUtils;->getMaxTextureEgl14()I
    move-result v0
    return v0
  :L1
  .line 3
    invoke-static { }, Lcom/yalantis/ucrop/util/EglUtils;->getMaxTextureEgl10()I
    move-result v0
  :L2
    return v0
  :L3
    const/4 v0, 0
    return v0
.end method
