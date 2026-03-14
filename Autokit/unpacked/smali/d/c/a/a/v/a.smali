.class public final Ld/c/a/a/v/a;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static a(FFFF)F
  .registers 4
    sub-float/2addr p2, p0
    sub-float/2addr p3, p1
    float-to-double p0, p2
    float-to-double p2, p3
  .line 1
    invoke-static { p0, p1, p2, p3 }, Ljava/lang/Math;->hypot(DD)D
    move-result-wide p0
    double-to-float p0, p0
    return p0
.end method

.method public static b(FFFFFF)F
  .registers 7
  .line 1
    invoke-static { p0, p1, p2, p3 }, Ld/c/a/a/v/a;->a(FFFF)F
    move-result v0
  .line 2
    invoke-static { p0, p1, p4, p3 }, Ld/c/a/a/v/a;->a(FFFF)F
    move-result p3
  .line 3
    invoke-static { p0, p1, p4, p5 }, Ld/c/a/a/v/a;->a(FFFF)F
    move-result p4
  .line 4
    invoke-static { p0, p1, p2, p5 }, Ld/c/a/a/v/a;->a(FFFF)F
    move-result p0
  .line 5
    invoke-static { v0, p3, p4, p0 }, Ld/c/a/a/v/a;->d(FFFF)F
    move-result p0
    return p0
.end method

.method public static c(FFF)F
  .registers 4
    const/high16 v0, 16256
    sub-float/2addr v0, p2
    mul-float v0, v0, p0
    mul-float p2, p2, p1
    add-float/2addr v0, p2
    return v0
.end method

.method private static d(FFFF)F
  .registers 5
    cmpl-float v0, p0, p1
    if-lez v0, :L0
    cmpl-float v0, p0, p2
    if-lez v0, :L0
    cmpl-float v0, p0, p3
    if-lez v0, :L0
    goto :L3
  :L0
    cmpl-float p0, p1, p2
    if-lez p0, :L1
    cmpl-float p0, p1, p3
    if-lez p0, :L1
    move p0, p1
    goto :L3
  :L1
    cmpl-float p0, p2, p3
    if-lez p0, :L2
    move p0, p2
    goto :L3
  :L2
    move p0, p3
  :L3
    return p0
.end method
