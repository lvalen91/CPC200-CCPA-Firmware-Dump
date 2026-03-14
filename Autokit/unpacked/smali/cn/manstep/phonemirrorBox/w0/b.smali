.class public Lcn/manstep/phonemirrorBox/w0/b;
.super Ljava/lang/Object;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.source "SourceFile"

.field private final b:[F

.field private final c:[Ljavax/microedition/khronos/egl/EGLConfig;

.field private d:Landroid/os/HandlerThread;

.field private e:Landroid/os/Handler;

.field private f:Landroid/view/TextureView;

.field private g:I

.field private h:Ljavax/microedition/khronos/egl/EGL10;

.field private i:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private j:Ljavax/microedition/khronos/egl/EGLContext;

.field private k:Ljavax/microedition/khronos/egl/EGLSurface;

.field private l:Landroid/graphics/SurfaceTexture;

.field private m:Lcn/manstep/phonemirrorBox/w0/a;

.field private n:Z

.method public constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/16 v0, 16
    new-array v0, v0, [F
  .line 2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/w0/b;->b:[F
    const/4 v0, 1
    new-array v1, v0, [Ljavax/microedition/khronos/egl/EGLConfig;
  .line 3
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/w0/b;->c:[Ljavax/microedition/khronos/egl/EGLConfig;
    const/4 v1, 0
  .line 4
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/w0/b;->h:Ljavax/microedition/khronos/egl/EGL10;
  .line 5
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/w0/b;->i:Ljavax/microedition/khronos/egl/EGLDisplay;
  .line 6
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/w0/b;->j:Ljavax/microedition/khronos/egl/EGLContext;
  .line 7
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/w0/b;->n:Z
    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/w0/b;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/w0/b;->f()V
    return-void
.end method

.method static synthetic b(Lcn/manstep/phonemirrorBox/w0/b;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/w0/b;->d()V
    return-void
.end method

.method private c()I
  .registers 6
    const/4 v0, 1
    new-array v1, v0, [I
    const/4 v2, 0
  .line 1
    invoke-static { v0, v1, v2 }, Landroid/opengl/GLES20;->glGenTextures(I[II)V
  .line 2
    aget v0, v1, v2
    const v3, 36197
    invoke-static { v3, v0 }, Landroid/opengl/GLES20;->glBindTexture(II)V
    const/16 v0, 10241
    const/high16 v4, 17944
  .line 3
    invoke-static { v3, v0, v4 }, Landroid/opengl/GLES20;->glTexParameterf(IIF)V
    const/16 v0, 10240
    const v4, 1175979008
  .line 4
    invoke-static { v3, v0, v4 }, Landroid/opengl/GLES20;->glTexParameterf(IIF)V
    const/16 v0, 10242
    const v4, 1191259904
  .line 5
    invoke-static { v3, v0, v4 }, Landroid/opengl/GLES20;->glTexParameterf(IIF)V
    const/16 v0, 10243
  .line 6
    invoke-static { v3, v0, v4 }, Landroid/opengl/GLES20;->glTexParameterf(IIF)V
  .line 7
    invoke-static { v3, v2 }, Landroid/opengl/GLES20;->glBindTexture(II)V
  .line 8
    aget v0, v1, v2
    return v0
.end method

.method private d()V
  .registers 7
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/w0/b;->n:Z
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/w0/b;->f:Landroid/view/TextureView;
    invoke-virtual { v0 }, Landroid/view/TextureView;->getWidth()I
    move-result v0
  .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/w0/b;->f:Landroid/view/TextureView;
    invoke-virtual { v1 }, Landroid/view/TextureView;->getHeight()I
    move-result v1
  .line 4
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "TextureViewRenderer,drawFrame: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, "x"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 5
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/w0/b;->h:Ljavax/microedition/khronos/egl/EGL10;
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/w0/b;->i:Ljavax/microedition/khronos/egl/EGLDisplay;
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/w0/b;->k:Ljavax/microedition/khronos/egl/EGLSurface;
    iget-object v5, p0, Lcn/manstep/phonemirrorBox/w0/b;->j:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-interface { v2, v3, v4, v4, v5 }, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z
    const/4 v2, 0
  .line 6
    invoke-static { v2, v2, v0, v1 }, Landroid/opengl/GLES20;->glViewport(IIII)V
    const/16 v0, 16384
  .line 7
    invoke-static { v0 }, Landroid/opengl/GLES20;->glClear(I)V
    const/4 v0, 0
  .line 8
    invoke-static { v0, v0, v0, v0 }, Landroid/opengl/GLES20;->glClearColor(FFFF)V
  .line 9
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/w0/b;->n:Z
  :L0
  .line 10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/w0/b;->l:Landroid/graphics/SurfaceTexture;
    if-eqz v0, :L1
  .line 11
    invoke-virtual { v0 }, Landroid/graphics/SurfaceTexture;->updateTexImage()V
  .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/w0/b;->l:Landroid/graphics/SurfaceTexture;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/w0/b;->b:[F
    invoke-virtual { v0, v1 }, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V
    goto :L2
  :L1
    const-string v0, "TextureViewRenderer"
    const-string v1, "drawFrame: mOESSurfaceTexture==null"
  .line 13
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  :L2
  .line 14
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/w0/b;->m:Lcn/manstep/phonemirrorBox/w0/a;
    iget v1, p0, Lcn/manstep/phonemirrorBox/w0/b;->g:I
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/w0/b;->b:[F
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/w0/a;->b(I[F)V
  .line 15
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/w0/b;->h:Ljavax/microedition/khronos/egl/EGL10;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/w0/b;->i:Ljavax/microedition/khronos/egl/EGLDisplay;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/w0/b;->k:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-interface { v0, v1, v2 }, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
    return-void
.end method

.method private f()V
  .registers 8
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/w0/b;->c()I
    move-result v0
    iput v0, p0, Lcn/manstep/phonemirrorBox/w0/b;->g:I
  .line 2
    invoke-static { }, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;
    move-result-object v0
    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/w0/b;->h:Ljavax/microedition/khronos/egl/EGL10;
  .line 3
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;
    invoke-interface { v0, v1 }, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/w0/b;->i:Ljavax/microedition/khronos/egl/EGLDisplay;
  .line 4
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;
    if-eq v0, v1, :L5
    const/4 v1, 2
    new-array v1, v1, [I
  .line 5
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/w0/b;->h:Ljavax/microedition/khronos/egl/EGL10;
    invoke-interface { v2, v0, v1 }, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z
    move-result v0
    if-eqz v0, :L4
    const/16 v0, 19
    new-array v3, v0, [I
  .line 6
    fill-array-data v3, :L6
    const/4 v0, 1
    new-array v6, v0, [I
  .line 7
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/w0/b;->h:Ljavax/microedition/khronos/egl/EGL10;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/w0/b;->i:Ljavax/microedition/khronos/egl/EGLDisplay;
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/w0/b;->c:[Ljavax/microedition/khronos/egl/EGLConfig;
    const/4 v5, 1
    invoke-interface/range { v1 .. v6 }, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
    move-result v0
    if-eqz v0, :L3
  .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/w0/b;->f:Landroid/view/TextureView;
    invoke-virtual { v0 }, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    move-result-object v0
    if-nez v0, :L0
    return-void
  :L0
  .line 9
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/w0/b;->h:Ljavax/microedition/khronos/egl/EGL10;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/w0/b;->i:Ljavax/microedition/khronos/egl/EGLDisplay;
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/w0/b;->c:[Ljavax/microedition/khronos/egl/EGLConfig;
    const/4 v4, 0
    aget-object v3, v3, v4
    const/4 v5, 0
    invoke-interface { v1, v2, v3, v0, v5 }, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/w0/b;->k:Ljavax/microedition/khronos/egl/EGLSurface;
    const/4 v0, 3
    new-array v0, v0, [I
  .line 10
    fill-array-data v0, :L7
  .line 11
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/w0/b;->h:Ljavax/microedition/khronos/egl/EGL10;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/w0/b;->i:Ljavax/microedition/khronos/egl/EGLDisplay;
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/w0/b;->c:[Ljavax/microedition/khronos/egl/EGLConfig;
    aget-object v3, v3, v4
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-interface { v1, v2, v3, v4, v0 }, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/w0/b;->j:Ljavax/microedition/khronos/egl/EGLContext;
  .line 12
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/w0/b;->i:Ljavax/microedition/khronos/egl/EGLDisplay;
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;
    if-eq v1, v2, :L2
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;
    if-eq v0, v2, :L2
  .line 13
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/w0/b;->h:Ljavax/microedition/khronos/egl/EGL10;
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/w0/b;->k:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-interface { v2, v1, v3, v3, v0 }, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z
    move-result v0
    if-eqz v0, :L1
  .line 14
    new-instance v0, Lcn/manstep/phonemirrorBox/w0/c;
    invoke-direct { v0 }, Lcn/manstep/phonemirrorBox/w0/c;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/w0/b;->m:Lcn/manstep/phonemirrorBox/w0/a;
  .line 15
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/w0/a;->c()V
    return-void
  :L1
  .line 16
    new-instance v0, Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "eglMakeCurrent failed! "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/w0/b;->h:Ljavax/microedition/khronos/egl/EGL10;
    invoke-interface { v2 }, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I
    move-result v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw v0
  :L2
  .line 17
    new-instance v0, Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "eglCreateContext fail failed! "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/w0/b;->h:Ljavax/microedition/khronos/egl/EGL10;
    invoke-interface { v2 }, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I
    move-result v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw v0
  :L3
  .line 18
    new-instance v0, Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "eglChooseConfig failed! "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/w0/b;->h:Ljavax/microedition/khronos/egl/EGL10;
    invoke-interface { v2 }, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I
    move-result v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw v0
  :L4
  .line 19
    new-instance v0, Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "eglInitialize failed! "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/w0/b;->h:Ljavax/microedition/khronos/egl/EGL10;
    invoke-interface { v2 }, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I
    move-result v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw v0
  :L5
  .line 20
    new-instance v0, Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "eglGetDisplay failed! "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/w0/b;->h:Ljavax/microedition/khronos/egl/EGL10;
    invoke-interface { v2 }, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I
    move-result v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw v0
  :L6
  .array-data 4
    36t 48t 0t 0t
    8t 0t 0t 0t
    35t 48t 0t 0t
    8t 0t 0t 0t
    34t 48t 0t 0t
    8t 0t 0t 0t
    33t 48t 0t 0t
    8t 0t 0t 0t
    32t 48t 0t 0t
    32t 0t 0t 0t
    37t 48t 0t 0t
    8t 0t 0t 0t
    38t 48t 0t 0t
    8t 0t 0t 0t
    64t 48t 0t 0t
    4t 0t 0t 0t
    51t 48t 0t 0t
    4t 0t 0t 0t
    56t 48t 0t 0t
  .end array-data
  :L7
  .array-data 4
    -104t 48t 0t 0t
    2t 0t 0t 0t
    56t 48t 0t 0t
  .end array-data
.end method

.method public e(Landroid/view/TextureView;Landroid/content/Context;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/w0/b;->f:Landroid/view/TextureView;
  .line 2
    new-instance p1, Landroid/os/HandlerThread;
    const-string p2, "Renderer Thread"
    invoke-direct { p1, p2 }, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/w0/b;->d:Landroid/os/HandlerThread;
  .line 3
    invoke-virtual { p1 }, Landroid/os/HandlerThread;->start()V
  .line 4
    new-instance p1, Lcn/manstep/phonemirrorBox/w0/b$a;
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/w0/b;->d:Landroid/os/HandlerThread;
    invoke-virtual { p2 }, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
    move-result-object p2
    invoke-direct { p1, p0, p2 }, Lcn/manstep/phonemirrorBox/w0/b$a;-><init>(Lcn/manstep/phonemirrorBox/w0/b;Landroid/os/Looper;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/w0/b;->e:Landroid/os/Handler;
    const/4 p2, 1
  .line 5
    invoke-virtual { p1, p2 }, Landroid/os/Handler;->sendEmptyMessage(I)Z
    return-void
.end method

.method public g()Landroid/graphics/SurfaceTexture;
  .registers 3
  .line 1
    new-instance v0, Landroid/graphics/SurfaceTexture;
    iget v1, p0, Lcn/manstep/phonemirrorBox/w0/b;->g:I
    invoke-direct { v0, v1 }, Landroid/graphics/SurfaceTexture;-><init>(I)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/w0/b;->l:Landroid/graphics/SurfaceTexture;
  .line 2
    invoke-virtual { v0, p0 }, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/w0/b;->l:Landroid/graphics/SurfaceTexture;
    return-object v0
.end method

.method public h()V
  .registers 2
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/w0/b;->n:Z
    return-void
.end method

.method public i(Ljava/lang/String;I)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/w0/b;->m:Lcn/manstep/phonemirrorBox/w0/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1, p2 }, Lcn/manstep/phonemirrorBox/w0/a;->f(Ljava/lang/String;I)V
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/w0/b;->e:Landroid/os/Handler;
    if-eqz p1, :L0
    const/4 p2, 2
  .line 4
    invoke-virtual { p1, p2 }, Landroid/os/Handler;->sendEmptyMessage(I)Z
  :L0
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
  .registers 3
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/w0/b;->e:Landroid/os/Handler;
    if-eqz p1, :L0
    const/4 v0, 2
  .line 2
    invoke-virtual { p1, v0 }, Landroid/os/Handler;->sendEmptyMessage(I)Z
  :L0
    return-void
.end method
