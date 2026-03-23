.class public final Ld/c/a/a/a0/b;
.super Ljava/lang/Object;
.implements Ld/c/a/a/a0/c;
.source "SourceFile"

.field private final a:Ld/c/a/a/a0/c;

.field private final b:F

.method public constructor <init>(FLd/c/a/a/a0/c;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  :L0
  .line 2
    instance-of v0, p2, Ld/c/a/a/a0/b;
    if-eqz v0, :L1
  .line 3
    check-cast p2, Ld/c/a/a/a0/b;
    iget-object p2, p2, Ld/c/a/a/a0/b;->a:Ld/c/a/a/a0/c;
  .line 4
    move-object v0, p2
    check-cast v0, Ld/c/a/a/a0/b;
    iget v0, v0, Ld/c/a/a/a0/b;->b:F
    add-float/2addr p1, v0
    goto :L0
  :L1
  .line 5
    iput-object p2, p0, Ld/c/a/a/a0/b;->a:Ld/c/a/a/a0/c;
  .line 6
    iput p1, p0, Ld/c/a/a/a0/b;->b:F
    return-void
.end method

.method public a(Landroid/graphics/RectF;)F
  .registers 3
  .line 1
    iget-object v0, p0, Ld/c/a/a/a0/b;->a:Ld/c/a/a/a0/c;
    invoke-interface { v0, p1 }, Ld/c/a/a/a0/c;->a(Landroid/graphics/RectF;)F
    move-result p1
    iget v0, p0, Ld/c/a/a/a0/b;->b:F
    add-float/2addr p1, v0
    const/4 v0, 0
    invoke-static { v0, p1 }, Ljava/lang/Math;->max(FF)F
    move-result p1
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 6
    const/4 v0, 1
    if-ne p0, p1, :L0
    return v0
  :L0
  .line 1
    instance-of v1, p1, Ld/c/a/a/a0/b;
    const/4 v2, 0
    if-nez v1, :L1
    return v2
  :L1
  .line 2
    check-cast p1, Ld/c/a/a/a0/b;
  .line 3
    iget-object v1, p0, Ld/c/a/a/a0/b;->a:Ld/c/a/a/a0/c;
    iget-object v3, p1, Ld/c/a/a/a0/b;->a:Ld/c/a/a/a0/c;
    invoke-virtual { v1, v3 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L2
    iget v1, p0, Ld/c/a/a/a0/b;->b:F
    iget p1, p1, Ld/c/a/a/a0/b;->b:F
    cmpl-float p1, v1, p1
    if-nez p1, :L2
    goto :L3
  :L2
    const/4 v0, 0
  :L3
    return v0
.end method

.method public hashCode()I
  .registers 4
    const/4 v0, 2
    new-array v0, v0, [Ljava/lang/Object;
  .line 1
    iget-object v1, p0, Ld/c/a/a/a0/b;->a:Ld/c/a/a/a0/c;
    const/4 v2, 0
    aput-object v1, v0, v2
    iget v1, p0, Ld/c/a/a/a0/b;->b:F
    invoke-static { v1 }, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object v1
    const/4 v2, 1
    aput-object v1, v0, v2
  .line 2
    invoke-static { v0 }, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
    move-result v0
    return v0
.end method
