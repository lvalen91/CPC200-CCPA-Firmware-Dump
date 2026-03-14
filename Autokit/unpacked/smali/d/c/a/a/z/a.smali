.class public Ld/c/a/a/z/a;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final static i:[I

.field private final static j:[F

.field private final static k:[I

.field private final static l:[F

.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private d:I

.field private e:I

.field private f:I

.field private final g:Landroid/graphics/Path;

.field private h:Landroid/graphics/Paint;

.method static constructor <clinit>()V
  .registers 4
    const/4 v0, 3
    new-array v1, v0, [I
  .line 1
    sput-object v1, Ld/c/a/a/z/a;->i:[I
    new-array v0, v0, [F
  .line 2
    fill-array-data v0, :L0
    sput-object v0, Ld/c/a/a/z/a;->j:[F
    const/4 v0, 4
    new-array v1, v0, [I
  .line 3
    sput-object v1, Ld/c/a/a/z/a;->k:[I
    new-array v0, v0, [F
  .line 4
    fill-array-data v0, :L1
    sput-object v0, Ld/c/a/a/z/a;->l:[F
    return-void
  :L0
  .array-data 4
    0t 0t 0t 0t
    0t 0t 0t 63t
    0t 0t -128t 63t
  .end array-data
  :L1
  .array-data 4
    0t 0t 0t 0t
    0t 0t 0t 0t
    0t 0t 0t 63t
    0t 0t -128t 63t
  .end array-data
.end method

.method public constructor <init>()V
  .registers 2
    const/high16 v0, -256
  .line 1
    invoke-direct { p0, v0 }, Ld/c/a/a/z/a;-><init>(I)V
    return-void
.end method

.method public constructor <init>(I)V
  .registers 3
  .line 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 3
    new-instance v0, Landroid/graphics/Path;
    invoke-direct { v0 }, Landroid/graphics/Path;-><init>()V
    iput-object v0, p0, Ld/c/a/a/z/a;->g:Landroid/graphics/Path;
  .line 4
    new-instance v0, Landroid/graphics/Paint;
    invoke-direct { v0 }, Landroid/graphics/Paint;-><init>()V
    iput-object v0, p0, Ld/c/a/a/z/a;->h:Landroid/graphics/Paint;
  .line 5
    new-instance v0, Landroid/graphics/Paint;
    invoke-direct { v0 }, Landroid/graphics/Paint;-><init>()V
    iput-object v0, p0, Ld/c/a/a/z/a;->a:Landroid/graphics/Paint;
  .line 6
    invoke-virtual { p0, p1 }, Ld/c/a/a/z/a;->d(I)V
  .line 7
    iget-object p1, p0, Ld/c/a/a/z/a;->h:Landroid/graphics/Paint;
    const/4 v0, 0
    invoke-virtual { p1, v0 }, Landroid/graphics/Paint;->setColor(I)V
  .line 8
    new-instance p1, Landroid/graphics/Paint;
    const/4 v0, 4
    invoke-direct { p1, v0 }, Landroid/graphics/Paint;-><init>(I)V
    iput-object p1, p0, Ld/c/a/a/z/a;->b:Landroid/graphics/Paint;
  .line 9
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
    invoke-virtual { p1, v0 }, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
  .line 10
    new-instance p1, Landroid/graphics/Paint;
    iget-object v0, p0, Ld/c/a/a/z/a;->b:Landroid/graphics/Paint;
    invoke-direct { p1, v0 }, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V
    iput-object p1, p0, Ld/c/a/a/z/a;->c:Landroid/graphics/Paint;
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;IFF)V
  .registers 27
    move-object/from16 v0, p0
    move-object/from16 v7, p1
    move-object/from16 v2, p3
    move/from16 v1, p4
    move/from16 v4, p6
    const/4 v3, 0
    const/4 v5, 1
    const/4 v6, 0
    cmpg-float v8, v4, v3
    if-gez v8, :L0
    const/4 v8, 1
    goto :L1
  :L0
    const/4 v8, 0
  :L1
  .line 1
    iget-object v9, v0, Ld/c/a/a/z/a;->g:Landroid/graphics/Path;
    const/4 v10, 3
    const/4 v11, 2
    if-eqz v8, :L2
  .line 2
    sget-object v12, Ld/c/a/a/z/a;->k:[I
    aput v6, v12, v6
  .line 3
    iget v6, v0, Ld/c/a/a/z/a;->f:I
    aput v6, v12, v5
  .line 4
    iget v6, v0, Ld/c/a/a/z/a;->e:I
    aput v6, v12, v11
  .line 5
    iget v6, v0, Ld/c/a/a/z/a;->d:I
    aput v6, v12, v10
    move/from16 v12, p5
    goto :L3
  :L2
  .line 6
    invoke-virtual { v9 }, Landroid/graphics/Path;->rewind()V
  .line 7
    invoke-virtual/range { p3 .. p3 }, Landroid/graphics/RectF;->centerX()F
    move-result v12
    invoke-virtual/range { p3 .. p3 }, Landroid/graphics/RectF;->centerY()F
    move-result v13
    invoke-virtual { v9, v12, v13 }, Landroid/graphics/Path;->moveTo(FF)V
    move/from16 v12, p5
  .line 8
    invoke-virtual { v9, v2, v12, v4 }, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V
  .line 9
    invoke-virtual { v9 }, Landroid/graphics/Path;->close()V
    neg-int v13, v1
    int-to-float v13, v13
  .line 10
    invoke-virtual { v2, v13, v13 }, Landroid/graphics/RectF;->inset(FF)V
  .line 11
    sget-object v13, Ld/c/a/a/z/a;->k:[I
    aput v6, v13, v6
  .line 12
    iget v6, v0, Ld/c/a/a/z/a;->d:I
    aput v6, v13, v5
  .line 13
    iget v6, v0, Ld/c/a/a/z/a;->e:I
    aput v6, v13, v11
  .line 14
    iget v6, v0, Ld/c/a/a/z/a;->f:I
    aput v6, v13, v10
  :L3
  .line 15
    invoke-virtual/range { p3 .. p3 }, Landroid/graphics/RectF;->width()F
    move-result v6
    const/high16 v10, 16384
    div-float v16, v6, v10
    cmpg-float v3, v16, v3
    if-gtz v3, :L4
    return-void
  :L4
    int-to-float v1, v1
    div-float v1, v1, v16
    const/high16 v3, 16256
    sub-float v1, v3, v1
    sub-float v6, v3, v1
    div-float/2addr v6, v10
    add-float/2addr v6, v1
  .line 16
    sget-object v10, Ld/c/a/a/z/a;->l:[F
    aput v1, v10, v5
  .line 17
    aput v6, v10, v11
  .line 18
    new-instance v1, Landroid/graphics/RadialGradient;
  .line 19
    invoke-virtual/range { p3 .. p3 }, Landroid/graphics/RectF;->centerX()F
    move-result v14
  .line 20
    invoke-virtual/range { p3 .. p3 }, Landroid/graphics/RectF;->centerY()F
    move-result v15
    sget-object v17, Ld/c/a/a/z/a;->k:[I
    sget-object v18, Ld/c/a/a/z/a;->l:[F
    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;
    move-object v13, v1
    invoke-direct/range { v13 .. v19 }, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V
  .line 21
    iget-object v5, v0, Ld/c/a/a/z/a;->b:Landroid/graphics/Paint;
    invoke-virtual { v5, v1 }, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
  .line 22
    invoke-virtual/range { p1 .. p1 }, Landroid/graphics/Canvas;->save()I
  .line 23
    invoke-virtual/range { p1 .. p2 }, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V
  .line 24
    invoke-virtual/range { p3 .. p3 }, Landroid/graphics/RectF;->height()F
    move-result v1
    invoke-virtual/range { p3 .. p3 }, Landroid/graphics/RectF;->width()F
    move-result v5
    div-float/2addr v1, v5
    invoke-virtual { v7, v3, v1 }, Landroid/graphics/Canvas;->scale(FF)V
    if-nez v8, :L5
  .line 25
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;
    invoke-virtual { v7, v9, v1 }, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
  .line 26
    iget-object v1, v0, Ld/c/a/a/z/a;->h:Landroid/graphics/Paint;
    invoke-virtual { v7, v9, v1 }, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
  :L5
    const/4 v5, 1
  .line 27
    iget-object v6, v0, Ld/c/a/a/z/a;->b:Landroid/graphics/Paint;
    move-object/from16 v1, p1
    move-object/from16 v2, p3
    move/from16 v3, p5
    move/from16 v4, p6
    invoke-virtual/range { v1 .. v6 }, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
  .line 28
    invoke-virtual/range { p1 .. p1 }, Landroid/graphics/Canvas;->restore()V
    return-void
.end method

.method public b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;I)V
  .registers 14
  .line 1
    iget v0, p3, Landroid/graphics/RectF;->bottom:F
    int-to-float v1, p4
    add-float/2addr v0, v1
    iput v0, p3, Landroid/graphics/RectF;->bottom:F
    neg-int p4, p4
    int-to-float p4, p4
    const/4 v0, 0
  .line 2
    invoke-virtual { p3, v0, p4 }, Landroid/graphics/RectF;->offset(FF)V
  .line 3
    sget-object p4, Ld/c/a/a/z/a;->i:[I
    iget v0, p0, Ld/c/a/a/z/a;->f:I
    const/4 v1, 0
    aput v0, p4, v1
  .line 4
    iget v0, p0, Ld/c/a/a/z/a;->e:I
    const/4 v1, 1
    aput v0, p4, v1
  .line 5
    iget v0, p0, Ld/c/a/a/z/a;->d:I
    const/4 v1, 2
    aput v0, p4, v1
  .line 6
    iget-object p4, p0, Ld/c/a/a/z/a;->c:Landroid/graphics/Paint;
    new-instance v8, Landroid/graphics/LinearGradient;
    iget v3, p3, Landroid/graphics/RectF;->left:F
    iget v2, p3, Landroid/graphics/RectF;->top:F
    iget v4, p3, Landroid/graphics/RectF;->bottom:F
    sget-object v5, Ld/c/a/a/z/a;->i:[I
    sget-object v6, Ld/c/a/a/z/a;->j:[F
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;
    move-object v0, v8
    move v1, v3
    invoke-direct/range { v0 .. v7 }, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V
    invoke-virtual { p4, v8 }, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
  .line 7
    invoke-virtual { p1 }, Landroid/graphics/Canvas;->save()I
  .line 8
    invoke-virtual { p1, p2 }, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V
  .line 9
    iget-object p2, p0, Ld/c/a/a/z/a;->c:Landroid/graphics/Paint;
    invoke-virtual { p1, p3, p2 }, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
  .line 10
    invoke-virtual { p1 }, Landroid/graphics/Canvas;->restore()V
    return-void
.end method

.method public c()Landroid/graphics/Paint;
  .registers 2
  .line 1
    iget-object v0, p0, Ld/c/a/a/z/a;->a:Landroid/graphics/Paint;
    return-object v0
.end method

.method public d(I)V
  .registers 3
    const/16 v0, 68
  .line 1
    invoke-static { p1, v0 }, Lc/g/d/a;->d(II)I
    move-result v0
    iput v0, p0, Ld/c/a/a/z/a;->d:I
    const/16 v0, 20
  .line 2
    invoke-static { p1, v0 }, Lc/g/d/a;->d(II)I
    move-result v0
    iput v0, p0, Ld/c/a/a/z/a;->e:I
    const/4 v0, 0
  .line 3
    invoke-static { p1, v0 }, Lc/g/d/a;->d(II)I
    move-result p1
    iput p1, p0, Ld/c/a/a/z/a;->f:I
  .line 4
    iget-object p1, p0, Ld/c/a/a/z/a;->a:Landroid/graphics/Paint;
    iget v0, p0, Ld/c/a/a/z/a;->d:I
    invoke-virtual { p1, v0 }, Landroid/graphics/Paint;->setColor(I)V
    return-void
.end method
