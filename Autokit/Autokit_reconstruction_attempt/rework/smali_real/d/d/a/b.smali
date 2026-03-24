.class public Ld/d/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
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


# direct methods
.method public constructor <init>(Ld/d/a/d;Landroid/opengl/GLSurfaceView;Landroid/util/DisplayMetrics;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ld/d/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld/d/a/c;-><init>(I)V

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

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "GLFrameRenderer :: Screene size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Ld/d/a/b;->d:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Ld/d/a/b;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ld/d/a/e;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLFrameRenderer :: flush_black: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ld/d/a/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ld/d/a/b;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/d/a/e;->a(Ljava/lang/String;)V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_21
    iget-object v0, p0, Ld/d/a/b;->c:Ld/d/a/c;

    invoke-virtual {v0}, Ld/d/a/c;->g()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_2b
    iget-object v0, p0, Ld/d/a/b;->j:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_31

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_31
    iget v0, p0, Ld/d/a/b;->f:I

    iget v1, p0, Ld/d/a/b;->g:I

    mul-int v0, v0, v1

    .line 8
    div-int/lit8 v1, v0, 0x4

    .line 9
    iget-object v2, p0, Ld/d/a/b;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 10
    iget-object v2, p0, Ld/d/a/b;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 11
    iget-object v2, p0, Ld/d/a/b;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 12
    new-array v2, v0, [B

    .line 13
    new-array v3, v1, [B

    .line 14
    new-array v4, v1, [B

    const/4 v5, 0x0

    .line 15
    invoke-static {v2, v5}, Ljava/util/Arrays;->fill([BB)V

    const/16 v6, -0x80

    .line 16
    invoke-static {v3, v6}, Ljava/util/Arrays;->fill([BB)V

    .line 17
    invoke-static {v4, v6}, Ljava/util/Arrays;->fill([BB)V

    .line 18
    iget-object v6, p0, Ld/d/a/b;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v2, v5, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 19
    iget-object v0, p0, Ld/d/a/b;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3, v5, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 20
    iget-object v0, p0, Ld/d/a/b;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v4, v5, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 21
    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_21 .. :try_end_6a} :catchall_70

    .line 22
    iget-object v0, p0, Ld/d/a/b;->b:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void

    :catchall_70
    move-exception v0

    .line 23
    :try_start_71
    monitor-exit p0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v0
.end method

.method public b(II)V
    .registers 20

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ld/d/a/e;->a(Ljava/lang/String;)V

    if-lez v0, :cond_cd

    if-lez v2, :cond_cd

    .line 3
    iget v3, v1, Ld/d/a/b;->h:I

    if-lez v3, :cond_96

    iget v3, v1, Ld/d/a/b;->i:I

    if-lez v3, :cond_96

    .line 4
    iget v3, v1, Ld/d/a/b;->i:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v3, v3, v4

    iget v5, v1, Ld/d/a/b;->h:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    int-to-float v5, v2

    mul-float v5, v5, v4

    int-to-float v6, v0

    div-float/2addr v5, v6

    cmpl-float v6, v3, v5

    if-eqz v6, :cond_8f

    .line 5
    iget v6, v1, Ld/d/a/b;->h:I

    iget v7, v1, Ld/d/a/b;->i:I

    if-le v6, v7, :cond_4a

    goto :goto_8f

    :cond_4a
    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x8

    const/4 v14, 0x4

    const/high16 v15, -0x40800000    # -1.0f

    cmpg-float v16, v3, v5

    if-gez v16, :cond_74

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

    const/4 v3, 0x7

    aput v4, v13, v3

    invoke-virtual {v5, v13}, Ld/d/a/c;->d([F)V

    goto :goto_96

    :cond_74
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

    const/4 v4, 0x7

    aput v5, v6, v4

    invoke-virtual {v3, v6}, Ld/d/a/c;->d([F)V

    goto :goto_96

    .line 8
    :cond_8f
    :goto_8f
    iget-object v3, v1, Ld/d/a/b;->c:Ld/d/a/c;

    sget-object v4, Ld/d/a/c;->v:[F

    invoke-virtual {v3, v4}, Ld/d/a/c;->d([F)V

    .line 9
    :cond_96
    :goto_96
    iget v3, v1, Ld/d/a/b;->f:I

    if-ne v0, v3, :cond_9e

    iget v3, v1, Ld/d/a/b;->g:I

    if-eq v2, v3, :cond_cd

    .line 10
    :cond_9e
    iput v0, v1, Ld/d/a/b;->f:I

    .line 11
    iput v2, v1, Ld/d/a/b;->g:I

    mul-int v0, v0, v2

    .line 12
    div-int/lit8 v2, v0, 0x4

    .line 13
    monitor-enter p0
    :try_end_a7
    .catchall {:try_start_7 .. :try_end_a7} :catchall_d8

    .line 14
    :try_start_a7
    iget-object v3, v1, Ld/d/a/b;->j:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_b3

    iget-object v3, v1, Ld/d/a/b;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v3, v0, :cond_c5

    .line 15
    :cond_b3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v1, Ld/d/a/b;->j:Ljava/nio/ByteBuffer;

    .line 16
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v1, Ld/d/a/b;->k:Ljava/nio/ByteBuffer;

    .line 17
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v1, Ld/d/a/b;->l:Ljava/nio/ByteBuffer;

    .line 18
    :cond_c5
    invoke-virtual/range {p0 .. p0}, Ld/d/a/b;->a()V

    .line 19
    monitor-exit p0

    goto :goto_cd

    :catchall_ca
    move-exception v0

    monitor-exit p0
    :try_end_cc
    .catchall {:try_start_a7 .. :try_end_cc} :catchall_ca

    :try_start_cc
    throw v0

    .line 20
    :cond_cd
    :goto_cd
    iget-object v0, v1, Ld/d/a/b;->a:Ld/d/a/d;

    if-eqz v0, :cond_d6

    .line 21
    iget-object v0, v1, Ld/d/a/b;->a:Ld/d/a/d;

    invoke-interface {v0}, Ld/d/a/d;->a()V

    .line 22
    :cond_d6
    monitor-exit p0

    return-void

    :catchall_d8
    move-exception v0

    monitor-exit p0
    :try_end_da
    .catchall {:try_start_cc .. :try_end_da} :catchall_d8

    throw v0
.end method

.method public c([B)V
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget v0, p0, Ld/d/a/b;->f:I

    iget v1, p0, Ld/d/a/b;->g:I

    mul-int v0, v0, v1

    .line 3
    div-int/lit8 v1, v0, 0x4

    .line 4
    iget-object v2, p0, Ld/d/a/b;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 5
    iget-object v2, p0, Ld/d/a/b;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 6
    iget-object v2, p0, Ld/d/a/b;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 7
    iget-object v2, p0, Ld/d/a/b;->j:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 8
    iget-object v2, p0, Ld/d/a/b;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, v0, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 9
    iget-object v2, p0, Ld/d/a/b;->l:Ljava/nio/ByteBuffer;

    add-int/2addr v0, v1

    invoke-virtual {v2, p1, v0, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 10
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_30

    .line 11
    iget-object p1, p0, Ld/d/a/b;->b:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void

    :catchall_30
    move-exception p1

    .line 12
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Ld/d/a/b;->j:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3b

    .line 3
    iget v0, p0, Ld/d/a/b;->h:I

    iget v1, p0, Ld/d/a/b;->i:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 4
    iget-object p1, p0, Ld/d/a/b;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    iget-object p1, p0, Ld/d/a/b;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 6
    iget-object p1, p0, Ld/d/a/b;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    iget-object v3, p0, Ld/d/a/b;->c:Ld/d/a/c;

    iget-object v4, p0, Ld/d/a/b;->j:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Ld/d/a/b;->k:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Ld/d/a/b;->l:Ljava/nio/ByteBuffer;

    iget v7, p0, Ld/d/a/b;->f:I

    iget v8, p0, Ld/d/a/b;->g:I

    invoke-virtual/range {v3 .. v8}, Ld/d/a/c;->b(Ljava/nio/Buffer;Ljava/nio/Buffer;Ljava/nio/Buffer;II)V

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 8
    invoke-static {v0, v0, v0, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0x4000

    .line 9
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 10
    iget-object p1, p0, Ld/d/a/b;->c:Ld/d/a/c;

    invoke-virtual {p1}, Ld/d/a/c;->f()V

    .line 11
    :cond_3b
    monitor-exit p0

    return-void

    :catchall_3d
    move-exception p1

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLFrameRenderer :: onSurfaceChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/d/a/e;->a(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Ld/d/a/b;->h:I

    iget v1, p0, Ld/d/a/b;->i:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 3
    iput p2, p0, Ld/d/a/b;->h:I

    .line 4
    iput p3, p0, Ld/d/a/b;->i:I

    .line 5
    iget p1, p0, Ld/d/a/b;->f:I

    iget p2, p0, Ld/d/a/b;->g:I

    invoke-virtual {p0, p1, p2}, Ld/d/a/b;->b(II)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 4

    const-string p2, "GLFrameRenderer :: onSurfaceCreated"

    .line 1
    invoke-static {p2}, Ld/d/a/e;->a(Ljava/lang/String;)V

    const/4 p2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-interface {p1, p2, p2, p2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 3
    iget-object p1, p0, Ld/d/a/b;->c:Ld/d/a/c;

    invoke-virtual {p1}, Ld/d/a/c;->g()Z

    move-result p1

    if-nez p1, :cond_1d

    .line 4
    iget-object p1, p0, Ld/d/a/b;->c:Ld/d/a/c;

    invoke-virtual {p1}, Ld/d/a/c;->a()V

    const-string p1, "GLFrameRenderer :: buildProgram done"

    .line 5
    invoke-static {p1}, Ld/d/a/e;->a(Ljava/lang/String;)V

    :cond_1d
    return-void
.end method
