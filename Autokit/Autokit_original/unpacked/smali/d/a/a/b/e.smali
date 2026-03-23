.class public Ld/a/a/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

.field private a:Ld/a/a/b/a;

.field private b:[F

.field private c:I

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:[F

.field private j:Z

.field private k:[F

.method public constructor <init>(Ld/a/a/b/a;)V
  .registers 5
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/16 v0, 16
    new-array v1, v0, [F
  .line 2
    iput-object v1, p0, Ld/a/a/b/e;->k:[F
  .line 3
    iput-object p1, p0, Ld/a/a/b/e;->a:Ld/a/a/b/a;
    const/4 p1, 4
    new-array p1, p1, [F
  .line 4
    iput-object p1, p0, Ld/a/a/b/e;->b:[F
    const/4 v1, 3
    const/high16 v2, 16256
    aput v2, p1, v1
    const/4 p1, -1
  .line 5
    iput p1, p0, Ld/a/a/b/e;->c:I
    new-array p1, v0, [F
  .line 6
    iput-object p1, p0, Ld/a/a/b/e;->i:[F
    const/4 p1, 0
  .line 7
    iput-boolean p1, p0, Ld/a/a/b/e;->j:Z
    return-void
.end method

.method private c()V
  .registers 10
  .line 1
    iget-object v6, p0, Ld/a/a/b/e;->i:[F
    const/4 v7, 0
  .line 2
    invoke-static { v6, v7 }, Landroid/opengl/Matrix;->setIdentityM([FI)V
  .line 3
    iget v0, p0, Ld/a/a/b/e;->g:F
    iget v1, p0, Ld/a/a/b/e;->h:F
    const/4 v2, 0
    invoke-static { v6, v7, v0, v1, v2 }, Landroid/opengl/Matrix;->translateM([FIFFF)V
  .line 4
    iget v3, p0, Ld/a/a/b/e;->d:F
    cmpl-float v0, v3, v2
    if-eqz v0, :L0
    const/4 v1, 0
    const/4 v4, 0
    const/4 v5, 0
    const/high16 v8, 16256
    move-object v0, v6
    move v2, v3
    move v3, v4
    move v4, v5
    move v5, v8
  .line 5
    invoke-static/range { v0 .. v5 }, Landroid/opengl/Matrix;->rotateM([FIFFFF)V
  :L0
  .line 6
    iget v0, p0, Ld/a/a/b/e;->e:F
    iget v1, p0, Ld/a/a/b/e;->f:F
    const/high16 v2, 16256
    invoke-static { v6, v7, v0, v1, v2 }, Landroid/opengl/Matrix;->scaleM([FIFFF)V
    const/4 v0, 1
  .line 7
    iput-boolean v0, p0, Ld/a/a/b/e;->j:Z
    return-void
.end method

.method public a(Ld/a/a/b/f;[F)V
  .registers 21
    move-object/from16 v0, p0
  .line 1
    iget-object v1, v0, Ld/a/a/b/e;->k:[F
    invoke-virtual/range { p0 .. p0 }, Ld/a/a/b/e;->b()[F
    move-result-object v5
    const/4 v2, 0
    const/4 v4, 0
    const/4 v6, 0
    move-object/from16 v3, p2
    invoke-static/range { v1 .. v6 }, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V
  .line 2
    iget-object v8, v0, Ld/a/a/b/e;->k:[F
    iget-object v1, v0, Ld/a/a/b/e;->a:Ld/a/a/b/a;
    invoke-virtual { v1 }, Ld/a/a/b/a;->d()Ljava/nio/FloatBuffer;
    move-result-object v9
    iget-object v1, v0, Ld/a/a/b/e;->a:Ld/a/a/b/a;
  .line 3
    invoke-virtual { v1 }, Ld/a/a/b/a;->e()I
    move-result v11
    iget-object v1, v0, Ld/a/a/b/e;->a:Ld/a/a/b/a;
    invoke-virtual { v1 }, Ld/a/a/b/a;->a()I
    move-result v12
    iget-object v1, v0, Ld/a/a/b/e;->a:Ld/a/a/b/a;
  .line 4
    invoke-virtual { v1 }, Ld/a/a/b/a;->f()I
    move-result v13
    sget-object v14, Ld/a/a/b/d;->a:[F
    iget-object v1, v0, Ld/a/a/b/e;->a:Ld/a/a/b/a;
    invoke-virtual { v1 }, Ld/a/a/b/a;->b()Ljava/nio/FloatBuffer;
    move-result-object v15
    iget v1, v0, Ld/a/a/b/e;->c:I
    iget-object v2, v0, Ld/a/a/b/e;->a:Ld/a/a/b/a;
  .line 5
    invoke-virtual { v2 }, Ld/a/a/b/a;->c()I
    move-result v17
    const/4 v10, 0
    move-object/from16 v7, p1
    move/from16 v16, v1
  .line 6
    invoke-virtual/range { v7 .. v17 }, Ld/a/a/b/f;->a([FLjava/nio/FloatBuffer;IIII[FLjava/nio/FloatBuffer;II)V
    return-void
.end method

.method public b()[F
  .registers 2
  .line 1
    iget-boolean v0, p0, Ld/a/a/b/e;->j:Z
    if-nez v0, :L0
  .line 2
    invoke-direct { p0 }, Ld/a/a/b/e;->c()V
  :L0
  .line 3
    iget-object v0, p0, Ld/a/a/b/e;->i:[F
    return-object v0
.end method

.method public d(FF)V
  .registers 3
  .line 1
    iput p1, p0, Ld/a/a/b/e;->g:F
  .line 2
    iput p2, p0, Ld/a/a/b/e;->h:F
    const/4 p1, 0
  .line 3
    iput-boolean p1, p0, Ld/a/a/b/e;->j:Z
    return-void
.end method

.method public e(F)V
  .registers 4
  :L0
    const/high16 v0, 17332
    cmpl-float v1, p1, v0
    if-ltz v1, :L1
    sub-float/2addr p1, v0
    goto :L0
  :L1
    const/high16 v1, -15436
    cmpg-float v1, p1, v1
    if-gtz v1, :L2
    add-float/2addr p1, v0
    goto :L1
  :L2
  .line 1
    iput p1, p0, Ld/a/a/b/e;->d:F
    const/4 p1, 0
  .line 2
    iput-boolean p1, p0, Ld/a/a/b/e;->j:Z
    return-void
.end method

.method public f(FF)V
  .registers 3
  .line 1
    iput p1, p0, Ld/a/a/b/e;->e:F
  .line 2
    iput p2, p0, Ld/a/a/b/e;->f:F
    const/4 p1, 0
  .line 3
    iput-boolean p1, p0, Ld/a/a/b/e;->j:Z
    return-void
.end method

.method public g(I)V
  .registers 2
  .line 1
    iput p1, p0, Ld/a/a/b/e;->c:I
    return-void
.end method

.method public toString()Ljava/lang/String;
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "[Sprite2d pos="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Ld/a/a/b/e;->g:F
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    const-string v1, ","
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, p0, Ld/a/a/b/e;->h:F
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    const-string v2, " scale="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, p0, Ld/a/a/b/e;->e:F
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, p0, Ld/a/a/b/e;->f:F
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    const-string v2, " angle="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, p0, Ld/a/a/b/e;->d:F
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    const-string v2, " color={"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Ld/a/a/b/e;->b:[F
    const/4 v3, 0
    aget v2, v2, v3
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Ld/a/a/b/e;->b:[F
    const/4 v3, 1
    aget v2, v2, v3
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Ld/a/a/b/e;->b:[F
    const/4 v2, 2
    aget v1, v1, v2
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    const-string v1, "} drawable="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Ld/a/a/b/e;->a:Ld/a/a/b/a;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, "]"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
