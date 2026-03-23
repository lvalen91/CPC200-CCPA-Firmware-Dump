.class Lc/a/l/a/a$f;
.super Ljava/lang/Object;
.implements Landroid/animation/TimeInterpolator;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/a/l/a/a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "f"
.end annotation

.field private a:[I

.field private b:I

.field private c:I

.method constructor <init>(Landroid/graphics/drawable/AnimationDrawable;Z)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    invoke-virtual { p0, p1, p2 }, Lc/a/l/a/a$f;->b(Landroid/graphics/drawable/AnimationDrawable;Z)I
    return-void
.end method

.method a()I
  .registers 2
  .line 1
    iget v0, p0, Lc/a/l/a/a$f;->c:I
    return v0
.end method

.method b(Landroid/graphics/drawable/AnimationDrawable;Z)I
  .registers 8
  .line 1
    invoke-virtual { p1 }, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I
    move-result v0
  .line 2
    iput v0, p0, Lc/a/l/a/a$f;->b:I
  .line 3
    iget-object v1, p0, Lc/a/l/a/a$f;->a:[I
    if-eqz v1, :L0
    array-length v1, v1
    if-ge v1, v0, :L1
  :L0
  .line 4
    new-array v1, v0, [I
    iput-object v1, p0, Lc/a/l/a/a$f;->a:[I
  :L1
  .line 5
    iget-object v1, p0, Lc/a/l/a/a$f;->a:[I
    const/4 v2, 0
    const/4 v3, 0
  :L2
    if-ge v2, v0, :L5
    if-eqz p2, :L3
    sub-int v4, v0, v2
    add-int/lit8 v4, v4, -1
    goto :L4
  :L3
    move v4, v2
  :L4
  .line 6
    invoke-virtual { p1, v4 }, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I
    move-result v4
  .line 7
    aput v4, v1, v2
    add-int/2addr v3, v4
    add-int/lit8 v2, v2, 1
    goto :L2
  :L5
  .line 8
    iput v3, p0, Lc/a/l/a/a$f;->c:I
    return v3
.end method

.method public getInterpolation(F)F
  .registers 6
  .line 1
    iget v0, p0, Lc/a/l/a/a$f;->c:I
    int-to-float v0, v0
    mul-float p1, p1, v0
    const/high16 v0, 16128
    add-float/2addr p1, v0
    float-to-int p1, p1
  .line 2
    iget v0, p0, Lc/a/l/a/a$f;->b:I
  .line 3
    iget-object v1, p0, Lc/a/l/a/a$f;->a:[I
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L1
  .line 4
    aget v3, v1, v2
    if-lt p1, v3, :L1
  .line 5
    aget v3, v1, v2
    sub-int/2addr p1, v3
    add-int/lit8 v2, v2, 1
    goto :L0
  :L1
    if-ge v2, v0, :L2
    int-to-float p1, p1
  .line 6
    iget v1, p0, Lc/a/l/a/a$f;->c:I
    int-to-float v1, v1
    div-float/2addr p1, v1
    goto :L3
  :L2
    const/4 p1, 0
  :L3
    int-to-float v1, v2
    int-to-float v0, v0
    div-float/2addr v1, v0
    add-float/2addr v1, p1
    return v1
.end method
