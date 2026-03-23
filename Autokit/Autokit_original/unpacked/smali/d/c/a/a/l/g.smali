.class public Ld/c/a/a/l/g;
.super Ljava/lang/Object;
.implements Landroid/animation/TypeEvaluator;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Landroid/animation/TypeEvaluator<",
    "Landroid/graphics/Matrix;",
    ">;"
  }
.end annotation

.field private final a:[F

.field private final b:[F

.field private final c:Landroid/graphics/Matrix;

.method public constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/16 v0, 9
    new-array v1, v0, [F
  .line 2
    iput-object v1, p0, Ld/c/a/a/l/g;->a:[F
    new-array v0, v0, [F
  .line 3
    iput-object v0, p0, Ld/c/a/a/l/g;->b:[F
  .line 4
    new-instance v0, Landroid/graphics/Matrix;
    invoke-direct { v0 }, Landroid/graphics/Matrix;-><init>()V
    iput-object v0, p0, Ld/c/a/a/l/g;->c:Landroid/graphics/Matrix;
    return-void
.end method

.method public a(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
  .registers 7
  .line 1
    iget-object v0, p0, Ld/c/a/a/l/g;->a:[F
    invoke-virtual { p2, v0 }, Landroid/graphics/Matrix;->getValues([F)V
  .line 2
    iget-object p2, p0, Ld/c/a/a/l/g;->b:[F
    invoke-virtual { p3, p2 }, Landroid/graphics/Matrix;->getValues([F)V
    const/4 p2, 0
  :L0
    const/16 p3, 9
    if-ge p2, p3, :L1
  .line 3
    iget-object p3, p0, Ld/c/a/a/l/g;->b:[F
    aget v0, p3, p2
    iget-object v1, p0, Ld/c/a/a/l/g;->a:[F
    aget v2, v1, p2
    sub-float/2addr v0, v2
  .line 4
    aget v1, v1, p2
    mul-float v0, v0, p1
    add-float/2addr v1, v0
    aput v1, p3, p2
    add-int/lit8 p2, p2, 1
    goto :L0
  :L1
  .line 5
    iget-object p1, p0, Ld/c/a/a/l/g;->c:Landroid/graphics/Matrix;
    iget-object p2, p0, Ld/c/a/a/l/g;->b:[F
    invoke-virtual { p1, p2 }, Landroid/graphics/Matrix;->setValues([F)V
  .line 6
    iget-object p1, p0, Ld/c/a/a/l/g;->c:Landroid/graphics/Matrix;
    return-object p1
.end method
