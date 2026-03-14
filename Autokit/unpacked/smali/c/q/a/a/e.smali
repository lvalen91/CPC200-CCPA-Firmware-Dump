.class public Lc/q/a/a/e;
.super Ljava/lang/Object;
.implements Landroid/animation/TypeEvaluator;
.source "SourceFile"

.field private final static a:Lc/q/a/a/e;

.method static constructor <clinit>()V
  .registers 3
  .line 1
    new-instance v0, Lc/q/a/a/e;
    invoke-direct { v0 }, Lc/q/a/a/e;-><init>()V
    sput-object v0, Lc/q/a/a/e;->a:Lc/q/a/a/e;
    return-void
.end method

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static a()Lc/q/a/a/e;
  .registers 1
  .line 1
    sget-object v0, Lc/q/a/a/e;->a:Lc/q/a/a/e;
    return-object v0
.end method

.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .registers 15
  .line 1
    check-cast p2, Ljava/lang/Integer;
    invoke-virtual { p2 }, Ljava/lang/Integer;->intValue()I
    move-result p2
    shr-int/lit8 v0, p2, 24
    and-int/lit16 v0, v0, 255
    int-to-float v0, v0
    const/high16 v1, 17279
    div-float/2addr v0, v1
    shr-int/lit8 v2, p2, 16
    and-int/lit16 v2, v2, 255
    int-to-float v2, v2
    div-float/2addr v2, v1
    shr-int/lit8 v3, p2, 8
    and-int/lit16 v3, v3, 255
    int-to-float v3, v3
    div-float/2addr v3, v1
    and-int/lit16 p2, p2, 255
    int-to-float p2, p2
    div-float/2addr p2, v1
  .line 2
    check-cast p3, Ljava/lang/Integer;
    invoke-virtual { p3 }, Ljava/lang/Integer;->intValue()I
    move-result p3
    shr-int/lit8 v4, p3, 24
    and-int/lit16 v4, v4, 255
    int-to-float v4, v4
    div-float/2addr v4, v1
    shr-int/lit8 v5, p3, 16
    and-int/lit16 v5, v5, 255
    int-to-float v5, v5
    div-float/2addr v5, v1
    shr-int/lit8 v6, p3, 8
    and-int/lit16 v6, v6, 255
    int-to-float v6, v6
    div-float/2addr v6, v1
    and-int/lit16 p3, p3, 255
    int-to-float p3, p3
    div-float/2addr p3, v1
    float-to-double v7, v2
    const-wide v9, 4612136378390124954L
  .line 3
    invoke-static { v7, v8, v9, v10 }, Ljava/lang/Math;->pow(DD)D
    move-result-wide v7
    double-to-float v2, v7
    float-to-double v7, v3
  .line 4
    invoke-static { v7, v8, v9, v10 }, Ljava/lang/Math;->pow(DD)D
    move-result-wide v7
    double-to-float v3, v7
    float-to-double v7, p2
  .line 5
    invoke-static { v7, v8, v9, v10 }, Ljava/lang/Math;->pow(DD)D
    move-result-wide v7
    double-to-float p2, v7
    float-to-double v7, v5
  .line 6
    invoke-static { v7, v8, v9, v10 }, Ljava/lang/Math;->pow(DD)D
    move-result-wide v7
    double-to-float v5, v7
    float-to-double v6, v6
  .line 7
    invoke-static { v6, v7, v9, v10 }, Ljava/lang/Math;->pow(DD)D
    move-result-wide v6
    double-to-float v6, v6
    float-to-double v7, p3
  .line 8
    invoke-static { v7, v8, v9, v10 }, Ljava/lang/Math;->pow(DD)D
    move-result-wide v7
    double-to-float p3, v7
    sub-float/2addr v4, v0
    mul-float v4, v4, p1
    add-float/2addr v0, v4
    sub-float/2addr v5, v2
    mul-float v5, v5, p1
    add-float/2addr v2, v5
    sub-float/2addr v6, v3
    mul-float v6, v6, p1
    add-float/2addr v3, v6
    sub-float/2addr p3, p2
    mul-float p1, p1, p3
    add-float/2addr p2, p1
    mul-float v0, v0, v1
    float-to-double v4, v2
    const-wide v6, 4601859982876761367L
  .line 9
    invoke-static { v4, v5, v6, v7 }, Ljava/lang/Math;->pow(DD)D
    move-result-wide v4
    double-to-float p1, v4
    mul-float p1, p1, v1
    float-to-double v2, v3
  .line 10
    invoke-static { v2, v3, v6, v7 }, Ljava/lang/Math;->pow(DD)D
    move-result-wide v2
    double-to-float p3, v2
    mul-float p3, p3, v1
    float-to-double v2, p2
  .line 11
    invoke-static { v2, v3, v6, v7 }, Ljava/lang/Math;->pow(DD)D
    move-result-wide v2
    double-to-float p2, v2
    mul-float p2, p2, v1
  .line 12
    invoke-static { v0 }, Ljava/lang/Math;->round(F)I
    move-result v0
    shl-int/lit8 v0, v0, 24
    invoke-static { p1 }, Ljava/lang/Math;->round(F)I
    move-result p1
    shl-int/lit8 p1, p1, 16
    or-int/2addr p1, v0
    invoke-static { p3 }, Ljava/lang/Math;->round(F)I
    move-result p3
    shl-int/lit8 p3, p3, 8
    or-int/2addr p1, p3
    invoke-static { p2 }, Ljava/lang/Math;->round(F)I
    move-result p2
    or-int/2addr p1, p2
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    return-object p1
.end method
