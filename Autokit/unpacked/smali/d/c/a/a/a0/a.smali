.class public final Ld/c/a/a/a0/a;
.super Ljava/lang/Object;
.implements Ld/c/a/a/a0/c;
.source "SourceFile"

.field private final a:F

.method public constructor <init>(F)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput p1, p0, Ld/c/a/a/a0/a;->a:F
    return-void
.end method

.method public a(Landroid/graphics/RectF;)F
  .registers 2
  .line 1
    iget p1, p0, Ld/c/a/a/a0/a;->a:F
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 5
    const/4 v0, 1
    if-ne p0, p1, :L0
    return v0
  :L0
  .line 1
    instance-of v1, p1, Ld/c/a/a/a0/a;
    const/4 v2, 0
    if-nez v1, :L1
    return v2
  :L1
  .line 2
    check-cast p1, Ld/c/a/a/a0/a;
  .line 3
    iget v1, p0, Ld/c/a/a/a0/a;->a:F
    iget p1, p1, Ld/c/a/a/a0/a;->a:F
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
    const/4 v0, 1
    new-array v0, v0, [Ljava/lang/Object;
  .line 1
    iget v1, p0, Ld/c/a/a/a0/a;->a:F
    invoke-static { v1 }, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object v1
    const/4 v2, 0
    aput-object v1, v0, v2
  .line 2
    invoke-static { v0 }, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
    move-result v0
    return v0
.end method
