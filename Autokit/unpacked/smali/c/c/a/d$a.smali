.class Lc/c/a/d$a;
.super Ljava/lang/Object;
.implements Lc/c/a/h$a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lc/c/a/d;->m()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lc/c/a/d;

.method constructor <init>(Lc/c/a/d;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lc/c/a/d$a;->a:Lc/c/a/d;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V
  .registers 21
    move-object/from16 v0, p0
    move-object/from16 v7, p1
    move-object/from16 v8, p2
    const/high16 v1, 16384
    mul-float v1, v1, p3
  .line 1
    invoke-virtual/range { p2 .. p2 }, Landroid/graphics/RectF;->width()F
    move-result v2
    sub-float/2addr v2, v1
    const/high16 v9, 16256
    sub-float v10, v2, v9
  .line 2
    invoke-virtual/range { p2 .. p2 }, Landroid/graphics/RectF;->height()F
    move-result v2
    sub-float/2addr v2, v1
    sub-float v11, v2, v9
    cmpl-float v1, p3, v9
    if-ltz v1, :L0
    const/high16 v1, 16128
    add-float v12, p3, v1
  .line 3
    iget-object v1, v0, Lc/c/a/d$a;->a:Lc/c/a/d;
    iget-object v1, v1, Lc/c/a/d;->a:Landroid/graphics/RectF;
    neg-float v2, v12
    invoke-virtual { v1, v2, v2, v12, v12 }, Landroid/graphics/RectF;->set(FFFF)V
  .line 4
    invoke-virtual/range { p1 .. p1 }, Landroid/graphics/Canvas;->save()I
    move-result v13
  .line 5
    iget v1, v8, Landroid/graphics/RectF;->left:F
    add-float/2addr v1, v12
    iget v2, v8, Landroid/graphics/RectF;->top:F
    add-float/2addr v2, v12
    invoke-virtual { v7, v1, v2 }, Landroid/graphics/Canvas;->translate(FF)V
  .line 6
    iget-object v1, v0, Lc/c/a/d$a;->a:Lc/c/a/d;
    iget-object v2, v1, Lc/c/a/d;->a:Landroid/graphics/RectF;
    const/high16 v3, 17204
    const/high16 v4, 17076
    const/4 v5, 1
    move-object/from16 v1, p1
    move-object/from16 v6, p4
    invoke-virtual/range { v1 .. v6 }, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    const/4 v14, 0
  .line 7
    invoke-virtual { v7, v10, v14 }, Landroid/graphics/Canvas;->translate(FF)V
    const/high16 v15, 17076
  .line 8
    invoke-virtual { v7, v15 }, Landroid/graphics/Canvas;->rotate(F)V
  .line 9
    iget-object v1, v0, Lc/c/a/d$a;->a:Lc/c/a/d;
    iget-object v2, v1, Lc/c/a/d;->a:Landroid/graphics/RectF;
    move-object/from16 v1, p1
    invoke-virtual/range { v1 .. v6 }, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
  .line 10
    invoke-virtual { v7, v11, v14 }, Landroid/graphics/Canvas;->translate(FF)V
  .line 11
    invoke-virtual { v7, v15 }, Landroid/graphics/Canvas;->rotate(F)V
  .line 12
    iget-object v1, v0, Lc/c/a/d$a;->a:Lc/c/a/d;
    iget-object v2, v1, Lc/c/a/d;->a:Landroid/graphics/RectF;
    move-object/from16 v1, p1
    invoke-virtual/range { v1 .. v6 }, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
  .line 13
    invoke-virtual { v7, v10, v14 }, Landroid/graphics/Canvas;->translate(FF)V
  .line 14
    invoke-virtual { v7, v15 }, Landroid/graphics/Canvas;->rotate(F)V
  .line 15
    iget-object v1, v0, Lc/c/a/d$a;->a:Lc/c/a/d;
    iget-object v2, v1, Lc/c/a/d;->a:Landroid/graphics/RectF;
    move-object/from16 v1, p1
    invoke-virtual/range { v1 .. v6 }, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
  .line 16
    invoke-virtual { v7, v13 }, Landroid/graphics/Canvas;->restoreToCount(I)V
  .line 17
    iget v1, v8, Landroid/graphics/RectF;->left:F
    add-float/2addr v1, v12
    sub-float v2, v1, v9
    iget v3, v8, Landroid/graphics/RectF;->top:F
    iget v1, v8, Landroid/graphics/RectF;->right:F
    sub-float/2addr v1, v12
    add-float v4, v1, v9
    add-float v5, v3, v12
    move-object/from16 v1, p1
    invoke-virtual/range { v1 .. v6 }, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
  .line 18
    iget v1, v8, Landroid/graphics/RectF;->left:F
    add-float/2addr v1, v12
    sub-float v2, v1, v9
    iget v5, v8, Landroid/graphics/RectF;->bottom:F
    sub-float v3, v5, v12
    iget v1, v8, Landroid/graphics/RectF;->right:F
    sub-float/2addr v1, v12
    add-float v4, v1, v9
    move-object/from16 v1, p1
    invoke-virtual/range { v1 .. v6 }, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
  :L0
  .line 19
    iget v2, v8, Landroid/graphics/RectF;->left:F
    iget v1, v8, Landroid/graphics/RectF;->top:F
    add-float v3, v1, p3
    iget v4, v8, Landroid/graphics/RectF;->right:F
    iget v1, v8, Landroid/graphics/RectF;->bottom:F
    sub-float v5, v1, p3
    move-object/from16 v1, p1
    move-object/from16 v6, p4
    invoke-virtual/range { v1 .. v6 }, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
    return-void
.end method
