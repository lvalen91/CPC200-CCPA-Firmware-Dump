.class abstract Lc/k/a/a/d;
.super Ljava/lang/Object;
.implements Landroid/view/animation/Interpolator;
.source "SourceFile"

.field private final a:[F

.field private final b:F

.method protected constructor <init>([F)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Lc/k/a/a/d;->a:[F
  .line 3
    array-length p1, p1
    add-int/lit8 p1, p1, -1
    int-to-float p1, p1
    const/high16 v0, 16256
    div-float/2addr v0, p1
    iput v0, p0, Lc/k/a/a/d;->b:F
    return-void
.end method

.method public getInterpolation(F)F
  .registers 6
    const/high16 v0, 16256
    cmpl-float v1, p1, v0
    if-ltz v1, :L0
    return v0
  :L0
    const/4 v0, 0
    cmpg-float v1, p1, v0
    if-gtz v1, :L1
    return v0
  :L1
  .line 1
    iget-object v0, p0, Lc/k/a/a/d;->a:[F
    array-length v1, v0
    add-int/lit8 v1, v1, -1
    int-to-float v1, v1
    mul-float v1, v1, p1
    float-to-int v1, v1
    array-length v0, v0
    add-int/lit8 v0, v0, -2
    invoke-static { v1, v0 }, Ljava/lang/Math;->min(II)I
    move-result v0
    int-to-float v1, v0
  .line 2
    iget v2, p0, Lc/k/a/a/d;->b:F
    mul-float v1, v1, v2
    sub-float/2addr p1, v1
    div-float/2addr p1, v2
  .line 3
    iget-object v1, p0, Lc/k/a/a/d;->a:[F
    aget v2, v1, v0
    add-int/lit8 v3, v0, 1
    aget v3, v1, v3
    aget v0, v1, v0
    sub-float/2addr v3, v0
    mul-float p1, p1, v3
    add-float/2addr v2, p1
    return v2
.end method
