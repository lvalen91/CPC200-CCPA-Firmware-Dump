.class Landroidx/appcompat/app/m;
.super Ljava/lang/Object;
.source "SourceFile"

.field private static d:Landroidx/appcompat/app/m;

.field public a:J

.field public b:J

.field public c:I

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static b()Landroidx/appcompat/app/m;
  .registers 1
  .line 1
    sget-object v0, Landroidx/appcompat/app/m;->d:Landroidx/appcompat/app/m;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroidx/appcompat/app/m;
    invoke-direct { v0 }, Landroidx/appcompat/app/m;-><init>()V
    sput-object v0, Landroidx/appcompat/app/m;->d:Landroidx/appcompat/app/m;
  :L0
  .line 3
    sget-object v0, Landroidx/appcompat/app/m;->d:Landroidx/appcompat/app/m;
    return-object v0
.end method

.method public a(JDD)V
  .registers 22
    move-object v0, p0
    const-wide v1, 946728000000L
    sub-long v3, p1, v1
    long-to-float v3, v3
    const v4, 1285868416
    div-float/2addr v3, v4
    const v4, 1015868197
    mul-float v4, v4, v3
    const v5, 1086828178
    add-float/2addr v4, v5
    float-to-double v5, v4
  .line 1
    invoke-static { v5, v6 }, Ljava/lang/Math;->sin(D)D
    move-result-wide v7
    const-wide v9, 4584977093208571904L
    mul-double v7, v7, v9
    invoke-static { v5, v6 }, Ljava/lang/Double;->isNaN(D)Z
    add-double/2addr v7, v5
    const/high16 v9, 16384
    mul-float v9, v9, v4
    float-to-double v9, v9
  .line 2
    invoke-static { v9, v10 }, Ljava/lang/Math;->sin(D)D
    move-result-wide v9
    const-wide v11, 4555074754578481152L
    mul-double v9, v9, v11
    add-double/2addr v7, v9
    const/high16 v9, 16448
    mul-float v4, v4, v9
    float-to-double v9, v4
    invoke-static { v9, v10 }, Ljava/lang/Math;->sin(D)D
    move-result-wide v9
    const-wide v11, 4527795603731644416L
    mul-double v9, v9, v11
    add-double/2addr v7, v9
    const-wide v9, 4610769955021710130L
    add-double/2addr v7, v9
    const-wide v9, 4614256656552045848L
    add-double/2addr v7, v9
    move-wide/from16 v9, p5
    neg-double v9, v9
    const-wide v11, 4645040803167600640L
    div-double/2addr v9, v11
    const v4, 980151802
    sub-float/2addr v3, v4
    float-to-double v11, v3
  .line 3
    invoke-static { v11, v12 }, Ljava/lang/Double;->isNaN(D)Z
    sub-double/2addr v11, v9
    invoke-static { v11, v12 }, Ljava/lang/Math;->round(D)J
    move-result-wide v11
    long-to-float v3, v11
    add-float/2addr v3, v4
    float-to-double v3, v3
  .line 4
    invoke-static { v3, v4 }, Ljava/lang/Double;->isNaN(D)Z
    add-double/2addr v3, v9
    invoke-static { v5, v6 }, Ljava/lang/Math;->sin(D)D
    move-result-wide v5
    const-wide v9, 4572760506128099233L
    mul-double v5, v5, v9
    add-double/2addr v3, v5
    const-wide/high16 v5, 16384
    mul-double v5, v5, v7
  .line 5
    invoke-static { v5, v6 }, Ljava/lang/Math;->sin(D)D
    move-result-wide v5
    const-wide v9, -4648766856319305620L
    mul-double v5, v5, v9
    add-double/2addr v3, v5
  .line 6
    invoke-static { v7, v8 }, Ljava/lang/Math;->sin(D)D
    move-result-wide v5
    const-wide v7, 4601044547609296896L
    invoke-static { v7, v8 }, Ljava/lang/Math;->sin(D)D
    move-result-wide v7
    mul-double v5, v5, v7
    invoke-static { v5, v6 }, Ljava/lang/Math;->asin(D)D
    move-result-wide v5
    const-wide v7, 4580687790437564416L
    mul-double v7, v7, p3
    const-wide v9, -4631161762379464704L
  .line 7
    invoke-static { v9, v10 }, Ljava/lang/Math;->sin(D)D
    move-result-wide v9
    invoke-static { v7, v8 }, Ljava/lang/Math;->sin(D)D
    move-result-wide v11
  .line 8
    invoke-static { v5, v6 }, Ljava/lang/Math;->sin(D)D
    move-result-wide v13
    mul-double v11, v11, v13
    sub-double/2addr v9, v11
    invoke-static { v7, v8 }, Ljava/lang/Math;->cos(D)D
    move-result-wide v7
    invoke-static { v5, v6 }, Ljava/lang/Math;->cos(D)D
    move-result-wide v5
    mul-double v7, v7, v5
    div-double/2addr v9, v7
    const/4 v5, 1
    const-wide/16 v6, -1
    const-wide/high16 v11, 16368
    cmpl-double v8, v9, v11
    if-ltz v8, :L0
  .line 9
    iput v5, v0, Landroidx/appcompat/app/m;->c:I
  .line 10
    iput-wide v6, v0, Landroidx/appcompat/app/m;->a:J
  .line 11
    iput-wide v6, v0, Landroidx/appcompat/app/m;->b:J
    return-void
  :L0
    const-wide/high16 v11, -16400
    const/4 v8, 0
    cmpg-double v13, v9, v11
    if-gtz v13, :L1
  .line 12
    iput v8, v0, Landroidx/appcompat/app/m;->c:I
  .line 13
    iput-wide v6, v0, Landroidx/appcompat/app/m;->a:J
  .line 14
    iput-wide v6, v0, Landroidx/appcompat/app/m;->b:J
    return-void
  :L1
  .line 15
    invoke-static { v9, v10 }, Ljava/lang/Math;->acos(D)D
    move-result-wide v6
    const-wide v9, 4618760256179416344L
    div-double/2addr v6, v9
    double-to-float v6, v6
    float-to-double v6, v6
  .line 16
    invoke-static { v6, v7 }, Ljava/lang/Double;->isNaN(D)Z
    add-double v9, v3, v6
    const-wide v11, 4725570615333879808L
    mul-double v9, v9, v11
    invoke-static { v9, v10 }, Ljava/lang/Math;->round(D)J
    move-result-wide v9
    add-long/2addr v9, v1
    iput-wide v9, v0, Landroidx/appcompat/app/m;->a:J
  .line 17
    invoke-static { v6, v7 }, Ljava/lang/Double;->isNaN(D)Z
    sub-double/2addr v3, v6
    mul-double v3, v3, v11
    invoke-static { v3, v4 }, Ljava/lang/Math;->round(D)J
    move-result-wide v3
    add-long/2addr v3, v1
    iput-wide v3, v0, Landroidx/appcompat/app/m;->b:J
    cmp-long v1, v3, p1
    if-gez v1, :L2
  .line 18
    iget-wide v1, v0, Landroidx/appcompat/app/m;->a:J
    cmp-long v3, v1, p1
    if-lez v3, :L2
  .line 19
    iput v8, v0, Landroidx/appcompat/app/m;->c:I
    goto :L3
  :L2
  .line 20
    iput v5, v0, Landroidx/appcompat/app/m;->c:I
  :L3
    return-void
.end method
