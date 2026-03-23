.class public Ld/d/a/b;
.super Ljava/lang/Object;
.implements Landroid/opengl/GLSurfaceView$Renderer;
.source "SourceFile"

.field private a:Ld/d/a/d;

.field private b:Landroid/opengl/GLSurfaceView;

.field private c:Ld/d/a/c;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/nio/ByteBuffer;

.field private k:Ljava/nio/ByteBuffer;

.field private l:Ljava/nio/ByteBuffer;

.method public constructor <init>(Ld/d/a/d;Landroid/opengl/GLSurfaceView;Landroid/util/DisplayMetrics;)V
  .registers 6
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ld/d/a/c;
    const/4 v1, 0
    invoke-direct { v0, v1 }, Ld/d/a/c;-><init>(I)V
    iput-object v0, p0, Ld/d/a/b;->c:Ld/d/a/c;
  .line 3
    iput-object p1, p0, Ld/d/a/b;->a:Ld/d/a/d;
  .line 4
    iput-object p2, p0, Ld/d/a/b;->b:Landroid/opengl/GLSurfaceView;
  .line 5
    iget p1, p3, Landroid/util/DisplayMetrics;->widthPixels:I
    iput p1, p0, Ld/d/a/b;->d:I
  .line 6
    iget p1, p3, Landroid/util/DisplayMetrics;->heightPixels:I
    iput p1, p0, Ld/d/a/b;->e:I
  .line 7
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "GLFrameRenderer :: Screene size: "
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget p2, p0, Ld/d/a/b;->d:I
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p2, "x"
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget p2, p0, Ld/d/a/b;->e:I
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Ld/d/a/e;->a(Ljava/lang/String;)V
    return-void
.end method

.method public a()V
  .catchall { :L0 .. :L3 } :L4
  .catchall { :L5 .. :L6 } :L4
  .registers 8
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "GLFrameRenderer :: flush_black: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Ld/d/a/b;->f:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, "x"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Ld/d/a/b;->g:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Ld/d/a/e;->a(Ljava/lang/String;)V
  .line 2
    monitor-enter p0
  :L0
  .line 3
    iget-object v0, p0, Ld/d/a/b;->c:Ld/d/a/c;
    invoke-virtual { v0 }, Ld/d/a/c;->g()Z
    move-result v0
    if-nez v0, :L1
  .line 4
    monitor-exit p0
    return-void
  :L1
  .line 5
    iget-object v0, p0, Ld/d/a/b;->j:Ljava/nio/ByteBuffer;
    if-nez v0, :L2
  .line 6
    monitor-exit p0
    return-void
  :L2
  .line 7
    iget v0, p0, Ld/d/a/b;->f:I
    iget v1, p0, Ld/d/a/b;->g:I
    mul-int v0, v0, v1
  .line 8
    div-int/lit8 v1, v0, 4
  .line 9
    iget-object v2, p0, Ld/d/a/b;->j:Ljava/nio/ByteBuffer;
    invoke-virtual { v2 }, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
  .line 10
    iget-object v2, p0, Ld/d/a/b;->k:Ljava/nio/ByteBuffer;
    invoke-virtual { v2 }, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
  .line 11
    iget-object v2, p0, Ld/d/a/b;->l:Ljava/nio/ByteBuffer;
    invoke-virtual { v2 }, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
  .line 12
    new-array v2, v0, [B
  .line 13
    new-array v3, v1, [B
  .line 14
    new-array v4, v1, [B
    const/4 v5, 0
  .line 15
    invoke-static { v2, v5 }, Ljava/util/Arrays;->fill([BB)V
    const/16 v6, -128
  .line 16
    invoke-static { v3, v6 }, Ljava/util/Arrays;->fill([BB)V
  .line 17
    invoke-static { v4, v6 }, Ljava/util/Arrays;->fill([BB)V
  .line 18
    iget-object v6, p0, Ld/d/a/b;->j:Ljava/nio/ByteBuffer;
    invoke-virtual { v6, v2, v5, v0 }, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
  .line 19
    iget-object v0, p0, Ld/d/a/b;->k:Ljava/nio/ByteBuffer;
    invoke-virtual { v0, v3, v5, v1 }, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
  .line 20
    iget-object v0, p0, Ld/d/a/b;->l:Ljava/nio/ByteBuffer;
    invoke-virtual { v0, v4, v5, v1 }, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
  .line 21
    monitor-exit p0
  :L3
  .line 22
    iget-object v0, p0, Ld/d/a/b;->b:Landroid/opengl/GLSurfaceView;
    invoke-virtual { v0 }, Landroid/opengl/GLSurfaceView;->requestRender()V
    return-void
  :L4
    move-exception v0
  :L5
  .line 23
    monitor-exit p0
  :L6
    throw v0
.end method

.method public b(II)V
  .catchall { :L0 .. :L6 } :L13
  .catchall { :L6 .. :L10 } :L9
  .catchall { :L10 .. :L14 } :L13
  .registers 20
    move-object/from16 v1, p0
    move/from16 v0, p1
    move/from16 v2, p2
  .line 1
    monitor-enter p0
  :L0
  .line 2
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "update size: "
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v4, "x"
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static { v3 }, Ld/d/a/e;->a(Ljava/lang/String;)V
    if-lez v0, :L11
    if-lez v2, :L11
  .line 3
    iget v3, v1, Ld/d/a/b;->h:I
    if-lez v3, :L4
    iget v3, v1, Ld/d/a/b;->i:I
    if-lez v3, :L4
  .line 4
    iget v3, v1, Ld/d/a/b;->i:I
    int-to-float v3, v3
    const/high16 v4, 16256
    mul-float v3, v3, v4
    iget v5, v1, Ld/d/a/b;->h:I
    int-to-float v5, v5
    div-float/2addr v3, v5
    int-to-float v5, v2
    mul-float v5, v5, v4
    int-to-float v6, v0
    div-float/2addr v5, v6
    cmpl-float v6, v3, v5
    if-eqz v6, :L3
  .line 5
    iget v6, v1, Ld/d/a/b;->h:I
    iget v7, v1, Ld/d/a/b;->i:I
    if-le v6, v7, :L1
    goto :L3
  :L1
    const/4 v7, 6
    const/4 v8, 5
    const/4 v9, 3
    const/4 v10, 2
    const/4 v11, 1
    const/4 v12, 0
    const/16 v13, 8
    const/4 v14, 4
    const/high16 v15, -16512
    cmpg-float v16, v3, v5
    if-gez v16, :L2
    div-float/2addr v3, v5
  .line 6
    iget-object v5, v1, Ld/d/a/b;->c:Ld/d/a/c;
    new-array v13, v13, [F
    neg-float v6, v3
    aput v6, v13, v12
    aput v15, v13, v11
    aput v3, v13, v10
    aput v15, v13, v9
    aput v6, v13, v14
    aput v4, v13, v8
    aput v3, v13, v7
    const/4 v3, 7
    aput v4, v13, v3
    invoke-virtual { v5, v13 }, Ld/d/a/c;->d([F)V
    goto :L4
  :L2
    div-float/2addr v5, v3
  .line 7
    iget-object v3, v1, Ld/d/a/b;->c:Ld/d/a/c;
    new-array v6, v13, [F
    aput v15, v6, v12
    neg-float v12, v5
    aput v12, v6, v11
    aput v4, v6, v10
    aput v12, v6, v9
    aput v15, v6, v14
    aput v5, v6, v8
    aput v4, v6, v7
    const/4 v4, 7
    aput v5, v6, v4
    invoke-virtual { v3, v6 }, Ld/d/a/c;->d([F)V
    goto :L4
  :L3
  .line 8
    iget-object v3, v1, Ld/d/a/b;->c:Ld/d/a/c;
    sget-object v4, Ld/d/a/c;->v:[F
    invoke-virtual { v3, v4 }, Ld/d/a/c;->d([F)V
  :L4
  .line 9
    iget v3, v1, Ld/d/a/b;->f:I
    if-ne v0, v3, :L5
    iget v3, v1, Ld/d/a/b;->g:I
    if-eq v2, v3, :L11
  :L5
  .line 10
    iput v0, v1, Ld/d/a/b;->f:I
  .line 11
    iput v2, v1, Ld/d/a/b;->g:I
    mul-int v0, v0, v2
  .line 12
    div-int/lit8 v2, v0, 4
  .line 13
    monitor-enter p0
  :L6
  .line 14
    iget-object v3, v1, Ld/d/a/b;->j:Ljava/nio/ByteBuffer;
    if-eqz v3, :L7
    iget-object v3, v1, Ld/d/a/b;->j:Ljava/nio/ByteBuffer;
    invoke-virtual { v3 }, Ljava/nio/ByteBuffer;->capacity()I
    move-result v3
    if-ge v3, v0, :L8
  :L7
  .line 15
    invoke-static { v0 }, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
    move-result-object v0
    iput-object v0, v1, Ld/d/a/b;->j:Ljava/nio/ByteBuffer;
  .line 16
    invoke-static { v2 }, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
    move-result-object v0
    iput-object v0, v1, Ld/d/a/b;->k:Ljava/nio/ByteBuffer;
  .line 17
    invoke-static { v2 }, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
    move-result-object v0
    iput-object v0, v1, Ld/d/a/b;->l:Ljava/nio/ByteBuffer;
  :L8
  .line 18
    invoke-virtual/range { p0 .. p0 }, Ld/d/a/b;->a()V
  .line 19
    monitor-exit p0
    goto :L11
  :L9
    move-exception v0
    monitor-exit p0
  :L10
    throw v0
  :L11
  .line 20
    iget-object v0, v1, Ld/d/a/b;->a:Ld/d/a/d;
    if-eqz v0, :L12
  .line 21
    iget-object v0, v1, Ld/d/a/b;->a:Ld/d/a/d;
    invoke-interface { v0 }, Ld/d/a/d;->a()V
  :L12
  .line 22
    monitor-exit p0
    return-void
  :L13
    move-exception v0
    monitor-exit p0
  :L14
    throw v0
.end method

.method public c([B)V
  .catchall { :L0 .. :L1 } :L2
  .catchall { :L3 .. :L4 } :L2
  .registers 6
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iget v0, p0, Ld/d/a/b;->f:I
    iget v1, p0, Ld/d/a/b;->g:I
    mul-int v0, v0, v1
  .line 3
    div-int/lit8 v1, v0, 4
  .line 4
    iget-object v2, p0, Ld/d/a/b;->j:Ljava/nio/ByteBuffer;
    invoke-virtual { v2 }, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
  .line 5
    iget-object v2, p0, Ld/d/a/b;->k:Ljava/nio/ByteBuffer;
    invoke-virtual { v2 }, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
  .line 6
    iget-object v2, p0, Ld/d/a/b;->l:Ljava/nio/ByteBuffer;
    invoke-virtual { v2 }, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
  .line 7
    iget-object v2, p0, Ld/d/a/b;->j:Ljava/nio/ByteBuffer;
    const/4 v3, 0
    invoke-virtual { v2, p1, v3, v0 }, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
  .line 8
    iget-object v2, p0, Ld/d/a/b;->k:Ljava/nio/ByteBuffer;
    invoke-virtual { v2, p1, v0, v1 }, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
  .line 9
    iget-object v2, p0, Ld/d/a/b;->l:Ljava/nio/ByteBuffer;
    add-int/2addr v0, v1
    invoke-virtual { v2, p1, v0, v1 }, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
  .line 10
    monitor-exit p0
  :L1
  .line 11
    iget-object p1, p0, Ld/d/a/b;->b:Landroid/opengl/GLSurfaceView;
    invoke-virtual { p1 }, Landroid/opengl/GLSurfaceView;->requestRender()V
    return-void
  :L2
    move-exception p1
  :L3
  .line 12
    monitor-exit p0
  :L4
    throw p1
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
  .catchall { :L0 .. :L3 } :L2
  .registers 11
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iget-object v0, p0, Ld/d/a/b;->j:Ljava/nio/ByteBuffer;
    if-eqz v0, :L1
  .line 3
    iget v0, p0, Ld/d/a/b;->h:I
    iget v1, p0, Ld/d/a/b;->i:I
    const/4 v2, 0
    invoke-interface { p1, v2, v2, v0, v1 }, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V
  .line 4
    iget-object p1, p0, Ld/d/a/b;->j:Ljava/nio/ByteBuffer;
    invoke-virtual { p1, v2 }, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
  .line 5
    iget-object p1, p0, Ld/d/a/b;->k:Ljava/nio/ByteBuffer;
    invoke-virtual { p1, v2 }, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
  .line 6
    iget-object p1, p0, Ld/d/a/b;->l:Ljava/nio/ByteBuffer;
    invoke-virtual { p1, v2 }, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
  .line 7
    iget-object v3, p0, Ld/d/a/b;->c:Ld/d/a/c;
    iget-object v4, p0, Ld/d/a/b;->j:Ljava/nio/ByteBuffer;
    iget-object v5, p0, Ld/d/a/b;->k:Ljava/nio/ByteBuffer;
    iget-object v6, p0, Ld/d/a/b;->l:Ljava/nio/ByteBuffer;
    iget v7, p0, Ld/d/a/b;->f:I
    iget v8, p0, Ld/d/a/b;->g:I
    invoke-virtual/range { v3 .. v8 }, Ld/d/a/c;->b(Ljava/nio/Buffer;Ljava/nio/Buffer;Ljava/nio/Buffer;II)V
    const/high16 p1, 16256
    const/4 v0, 0
  .line 8
    invoke-static { v0, v0, v0, p1 }, Landroid/opengl/GLES20;->glClearColor(FFFF)V
    const/16 p1, 16384
  .line 9
    invoke-static { p1 }, Landroid/opengl/GLES20;->glClear(I)V
  .line 10
    iget-object p1, p0, Ld/d/a/b;->c:Ld/d/a/c;
    invoke-virtual { p1 }, Ld/d/a/c;->f()V
  :L1
  .line 11
    monitor-exit p0
    return-void
  :L2
    move-exception p1
    monitor-exit p0
  :L3
    throw p1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
  .registers 7
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "GLFrameRenderer :: onSurfaceChanged: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, "x"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Ld/d/a/e;->a(Ljava/lang/String;)V
  .line 2
    iget v0, p0, Ld/d/a/b;->h:I
    iget v1, p0, Ld/d/a/b;->i:I
    const/4 v2, 0
    invoke-interface { p1, v2, v2, v0, v1 }, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V
  .line 3
    iput p2, p0, Ld/d/a/b;->h:I
  .line 4
    iput p3, p0, Ld/d/a/b;->i:I
  .line 5
    iget p1, p0, Ld/d/a/b;->f:I
    iget p2, p0, Ld/d/a/b;->g:I
    invoke-virtual { p0, p1, p2 }, Ld/d/a/b;->b(II)V
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
  .registers 4
    const-string p2, "GLFrameRenderer :: onSurfaceCreated"
  .line 1
    invoke-static { p2 }, Ld/d/a/e;->a(Ljava/lang/String;)V
    const/4 p2, 0
    const/high16 v0, 16256
  .line 2
    invoke-interface { p1, p2, p2, p2, v0 }, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V
  .line 3
    iget-object p1, p0, Ld/d/a/b;->c:Ld/d/a/c;
    invoke-virtual { p1 }, Ld/d/a/c;->g()Z
    move-result p1
    if-nez p1, :L0
  .line 4
    iget-object p1, p0, Ld/d/a/b;->c:Ld/d/a/c;
    invoke-virtual { p1 }, Ld/d/a/c;->a()V
    const-string p1, "GLFrameRenderer :: buildProgram done"
  .line 5
    invoke-static { p1 }, Ld/d/a/e;->a(Ljava/lang/String;)V
  :L0
    return-void
.end method
