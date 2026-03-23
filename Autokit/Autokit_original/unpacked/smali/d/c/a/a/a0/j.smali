.class public Ld/c/a/a/a0/j;
.super Ld/c/a/a/a0/d;
.source "SourceFile"

.field a:F

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ld/c/a/a/a0/d;-><init>()V
    const/high16 v0, -16512
  .line 2
    iput v0, p0, Ld/c/a/a/a0/j;->a:F
    return-void
.end method

.method public a(Ld/c/a/a/a0/m;FFF)V
  .registers 12
    mul-float v0, p4, p3
    const/high16 v1, 17204
    sub-float v2, v1, p2
    const/4 v3, 0
  .line 1
    invoke-virtual { p1, v3, v0, v1, v2 }, Ld/c/a/a/a0/m;->o(FFFF)V
    const/high16 v0, 16384
    mul-float p4, p4, v0
    mul-float v4, p4, p3
    const/4 v1, 0
    const/4 v2, 0
    const/high16 v5, 17204
    move-object v0, p1
    move v3, v4
    move v6, p2
  .line 2
    invoke-virtual/range { v0 .. v6 }, Ld/c/a/a/a0/m;->a(FFFFFF)V
    return-void
.end method
