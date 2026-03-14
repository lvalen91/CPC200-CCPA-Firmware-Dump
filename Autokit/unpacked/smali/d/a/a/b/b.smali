.class public final Ld/a/a/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

.field private a:Landroid/opengl/EGLDisplay;

.field private b:Landroid/opengl/EGLContext;

.field private c:Landroid/opengl/EGLConfig;

.method public constructor <init>(Landroid/opengl/EGLContext;I)V
  .registers 11
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;
    iput-object v0, p0, Ld/a/a/b/b;->a:Landroid/opengl/EGLDisplay;
  .line 3
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;
    iput-object v1, p0, Ld/a/a/b/b;->b:Landroid/opengl/EGLContext;
    const/4 v1, 0
  .line 4
    iput-object v1, p0, Ld/a/a/b/b;->c:Landroid/opengl/EGLConfig;
  .line 5
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;
    if-ne v0, v2, :L6
    if-nez p1, :L0
  .line 6
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;
  :L0
    const/4 v0, 0
  .line 7
    invoke-static { v0 }, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;
    move-result-object v2
    iput-object v2, p0, Ld/a/a/b/b;->a:Landroid/opengl/EGLDisplay;
  .line 8
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;
    if-eq v2, v3, :L5
    const/4 v3, 2
    new-array v4, v3, [I
    const/4 v5, 1
  .line 9
    invoke-static { v2, v4, v0, v4, v5 }, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z
    move-result v2
    if-eqz v2, :L4
    and-int/lit8 v1, p2, 2
    const/4 v2, 3
    if-eqz v1, :L1
  .line 10
    invoke-direct { p0, p2, v2 }, Ld/a/a/b/b;->c(II)Landroid/opengl/EGLConfig;
    move-result-object v1
    if-eqz v1, :L1
    new-array v4, v2, [I
  .line 11
    fill-array-data v4, :L7
  .line 12
    iget-object v6, p0, Ld/a/a/b/b;->a:Landroid/opengl/EGLDisplay;
    invoke-static { v6, v1, p1, v4, v0 }, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;
    move-result-object v4
  .line 13
    invoke-static { }, Landroid/opengl/EGL14;->eglGetError()I
    move-result v6
    const/16 v7, 12288
    if-ne v6, v7, :L1
  .line 14
    iput-object v1, p0, Ld/a/a/b/b;->c:Landroid/opengl/EGLConfig;
  .line 15
    iput-object v4, p0, Ld/a/a/b/b;->b:Landroid/opengl/EGLContext;
  :L1
  .line 16
    iget-object v1, p0, Ld/a/a/b/b;->b:Landroid/opengl/EGLContext;
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;
    if-ne v1, v4, :L3
  .line 17
    invoke-direct { p0, p2, v3 }, Ld/a/a/b/b;->c(II)Landroid/opengl/EGLConfig;
    move-result-object p2
    if-eqz p2, :L2
    new-array v1, v2, [I
  .line 18
    fill-array-data v1, :L8
  .line 19
    iget-object v2, p0, Ld/a/a/b/b;->a:Landroid/opengl/EGLDisplay;
    invoke-static { v2, p2, p1, v1, v0 }, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;
    move-result-object p1
    const-string v1, "eglCreateContext"
  .line 20
    invoke-direct { p0, v1 }, Ld/a/a/b/b;->a(Ljava/lang/String;)V
  .line 21
    iput-object p2, p0, Ld/a/a/b/b;->c:Landroid/opengl/EGLConfig;
  .line 22
    iput-object p1, p0, Ld/a/a/b/b;->b:Landroid/opengl/EGLContext;
    goto :L3
  :L2
  .line 23
    new-instance p1, Ljava/lang/RuntimeException;
    const-string p2, "Unable to find a suitable EGLConfig"
    invoke-direct { p1, p2 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw p1
  :L3
    new-array p1, v5, [I
  .line 24
    iget-object p2, p0, Ld/a/a/b/b;->a:Landroid/opengl/EGLDisplay;
    iget-object v1, p0, Ld/a/a/b/b;->b:Landroid/opengl/EGLContext;
    const/16 v2, 12440
    invoke-static { p2, v1, v2, p1, v0 }, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z
  .line 25
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "EGLContext created, client version "
    invoke-virtual { p2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    aget p1, p1, v0
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    return-void
  :L4
  .line 26
    iput-object v1, p0, Ld/a/a/b/b;->a:Landroid/opengl/EGLDisplay;
  .line 27
    new-instance p1, Ljava/lang/RuntimeException;
    const-string p2, "unable to initialize EGL14"
    invoke-direct { p1, p2 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw p1
  :L5
  .line 28
    new-instance p1, Ljava/lang/RuntimeException;
    const-string p2, "unable to get EGL14 display"
    invoke-direct { p1, p2 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw p1
  :L6
  .line 29
    new-instance p1, Ljava/lang/RuntimeException;
    const-string p2, "EGL already set up"
    invoke-direct { p1, p2 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw p1
  :L7
  .array-data 4
    -104t 48t 0t 0t
    3t 0t 0t 0t
    56t 48t 0t 0t
  .end array-data
  :L8
  .array-data 4
    -104t 48t 0t 0t
    2t 0t 0t 0t
    56t 48t 0t 0t
  .end array-data
.end method

.method private a(Ljava/lang/String;)V
  .registers 5
  .line 1
    invoke-static { }, Landroid/opengl/EGL14;->eglGetError()I
    move-result v0
    const/16 v1, 12288
    if-ne v0, v1, :L0
    return-void
  :L0
  .line 2
    new-instance v1, Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, ": EGL error: 0x"
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { v0 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v1, p1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw v1
.end method

.method private c(II)Landroid/opengl/EGLConfig;
  .registers 16
    const/4 v0, 3
    const/4 v1, 4
    if-lt p2, v0, :L0
    const/16 v2, 68
    goto :L1
  :L0
    const/4 v2, 4
  :L1
    const/16 v3, 13
    new-array v5, v3, [I
    const/16 v3, 12324
    const/4 v12, 0
    aput v3, v5, v12
    const/4 v3, 1
    const/16 v4, 8
    aput v4, v5, v3
    const/4 v6, 2
    const/16 v7, 12323
    aput v7, v5, v6
    aput v4, v5, v0
    const/16 v0, 12322
    aput v0, v5, v1
    const/4 v0, 5
    aput v4, v5, v0
    const/4 v0, 6
    const/16 v1, 12321
    aput v1, v5, v0
    const/4 v0, 7
    aput v4, v5, v0
    const/16 v0, 12352
    aput v0, v5, v4
    const/16 v0, 9
    aput v2, v5, v0
    const/16 v0, 10
    const/16 v1, 12344
    aput v1, v5, v0
    const/16 v2, 11
    aput v12, v5, v2
    const/16 v4, 12
    aput v1, v5, v4
    and-int/2addr p1, v3
    if-eqz p1, :L2
    const/16 p1, 12610
    aput p1, v5, v0
    aput v3, v5, v2
  :L2
    new-array p1, v3, [Landroid/opengl/EGLConfig;
    new-array v10, v3, [I
  .line 1
    iget-object v4, p0, Ld/a/a/b/b;->a:Landroid/opengl/EGLDisplay;
    const/4 v6, 0
    const/4 v8, 0
    const/4 v11, 0
    const/4 v9, 1
    move-object v7, p1
    invoke-static/range { v4 .. v11 }, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z
    move-result v0
    if-nez v0, :L3
  .line 2
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "unable to find RGB8888 / "
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p2, " EGLConfig"
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    const/4 p1, 0
    return-object p1
  :L3
  .line 3
    aget-object p1, p1, v12
    return-object p1
.end method

.method public b(Ljava/lang/Object;)Landroid/opengl/EGLSurface;
  .registers 6
  .line 1
    instance-of v0, p1, Landroid/view/Surface;
    if-nez v0, :L1
    instance-of v0, p1, Landroid/graphics/SurfaceTexture;
    if-eqz v0, :L0
    goto :L1
  :L0
  .line 2
    new-instance v0, Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "invalid surface: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
    const/4 v0, 1
    new-array v0, v0, [I
    const/16 v1, 12344
    const/4 v2, 0
    aput v1, v0, v2
  .line 3
    iget-object v1, p0, Ld/a/a/b/b;->a:Landroid/opengl/EGLDisplay;
    iget-object v3, p0, Ld/a/a/b/b;->c:Landroid/opengl/EGLConfig;
    invoke-static { v1, v3, p1, v0, v2 }, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;
    move-result-object p1
    const-string v0, "eglCreateWindowSurface"
  .line 4
    invoke-direct { p0, v0 }, Ld/a/a/b/b;->a(Ljava/lang/String;)V
    if-eqz p1, :L2
    return-object p1
  :L2
  .line 5
    new-instance p1, Ljava/lang/RuntimeException;
    const-string v0, "surface was null"
    invoke-direct { p1, v0 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public d(Landroid/opengl/EGLSurface;)V
  .registers 4
  .line 1
    iget-object v0, p0, Ld/a/a/b/b;->a:Landroid/opengl/EGLDisplay;
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;
  .line 2
    iget-object v0, p0, Ld/a/a/b/b;->a:Landroid/opengl/EGLDisplay;
    iget-object v1, p0, Ld/a/a/b/b;->b:Landroid/opengl/EGLContext;
    invoke-static { v0, p1, p1, v1 }, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z
    move-result p1
    if-eqz p1, :L0
    return-void
  :L0
  .line 3
    new-instance p1, Ljava/lang/RuntimeException;
    const-string v0, "eglMakeCurrent failed"
    invoke-direct { p1, v0 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public e()V
  .registers 4
  .line 1
    iget-object v0, p0, Ld/a/a/b/b;->a:Landroid/opengl/EGLDisplay;
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;
    invoke-static { v0, v1, v1, v2 }, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z
    move-result v0
    if-eqz v0, :L0
    return-void
  :L0
  .line 2
    new-instance v0, Ljava/lang/RuntimeException;
    const-string v1, "eglMakeCurrent failed"
    invoke-direct { v0, v1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public f(Landroid/opengl/EGLSurface;I)I
  .registers 6
    const/4 v0, 1
    new-array v0, v0, [I
  .line 1
    iget-object v1, p0, Ld/a/a/b/b;->a:Landroid/opengl/EGLDisplay;
    const/4 v2, 0
    invoke-static { v1, p1, p2, v0, v2 }, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z
  .line 2
    aget p1, v0, v2
    return p1
.end method

.method protected finalize()V
  .catchall { :L0 .. :L1 } :L2
  .registers 3
  :L0
  .line 1
    iget-object v0, p0, Ld/a/a/b/b;->a:Landroid/opengl/EGLDisplay;
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;
    if-eq v0, v1, :L1
  .line 2
    invoke-virtual { p0 }, Ld/a/a/b/b;->g()V
  :L1
  .line 3
    invoke-super { p0 }, Ljava/lang/Object;->finalize()V
    return-void
  :L2
    move-exception v0
    invoke-super { p0 }, Ljava/lang/Object;->finalize()V
  .line 4
    throw v0
.end method

.method public g()V
  .registers 4
  .line 1
    iget-object v0, p0, Ld/a/a/b/b;->a:Landroid/opengl/EGLDisplay;
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;
    if-eq v0, v1, :L0
  .line 2
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;
    invoke-static { v0, v1, v1, v2 }, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z
  .line 3
    iget-object v0, p0, Ld/a/a/b/b;->a:Landroid/opengl/EGLDisplay;
    iget-object v1, p0, Ld/a/a/b/b;->b:Landroid/opengl/EGLContext;
    invoke-static { v0, v1 }, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z
  .line 4
    invoke-static { }, Landroid/opengl/EGL14;->eglReleaseThread()Z
  .line 5
    iget-object v0, p0, Ld/a/a/b/b;->a:Landroid/opengl/EGLDisplay;
    invoke-static { v0 }, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z
  :L0
  .line 6
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;
    iput-object v0, p0, Ld/a/a/b/b;->a:Landroid/opengl/EGLDisplay;
  .line 7
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;
    iput-object v0, p0, Ld/a/a/b/b;->b:Landroid/opengl/EGLContext;
    const/4 v0, 0
  .line 8
    iput-object v0, p0, Ld/a/a/b/b;->c:Landroid/opengl/EGLConfig;
    return-void
.end method

.method public h(Landroid/opengl/EGLSurface;)V
  .registers 3
  .line 1
    iget-object v0, p0, Ld/a/a/b/b;->a:Landroid/opengl/EGLDisplay;
    invoke-static { v0, p1 }, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
    return-void
.end method

.method public i(Landroid/opengl/EGLSurface;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Ld/a/a/b/b;->a:Landroid/opengl/EGLDisplay;
    invoke-static { v0, p1 }, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
    move-result p1
    return p1
.end method
