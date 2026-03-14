.class Landroidx/appcompat/app/n;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/appcompat/app/n$a;
  }
.end annotation

.field private static d:Landroidx/appcompat/app/n;

.field private final a:Landroid/content/Context;

.field private final b:Landroid/location/LocationManager;

.field private final c:Landroidx/appcompat/app/n$a;

.method constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Landroidx/appcompat/app/n$a;
    invoke-direct { v0 }, Landroidx/appcompat/app/n$a;-><init>()V
    iput-object v0, p0, Landroidx/appcompat/app/n;->c:Landroidx/appcompat/app/n$a;
  .line 3
    iput-object p1, p0, Landroidx/appcompat/app/n;->a:Landroid/content/Context;
  .line 4
    iput-object p2, p0, Landroidx/appcompat/app/n;->b:Landroid/location/LocationManager;
    return-void
.end method

.method static a(Landroid/content/Context;)Landroidx/appcompat/app/n;
  .registers 3
  .line 1
    sget-object v0, Landroidx/appcompat/app/n;->d:Landroidx/appcompat/app/n;
    if-nez v0, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    move-result-object p0
  .line 3
    new-instance v0, Landroidx/appcompat/app/n;
    const-string v1, "location"
  .line 4
    invoke-virtual { p0, v1 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/location/LocationManager;
    invoke-direct { v0, p0, v1 }, Landroidx/appcompat/app/n;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    sput-object v0, Landroidx/appcompat/app/n;->d:Landroidx/appcompat/app/n;
  :L0
  .line 5
    sget-object p0, Landroidx/appcompat/app/n;->d:Landroidx/appcompat/app/n;
    return-object p0
.end method

.method private b()Landroid/location/Location;
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "MissingPermission"
    }
  .end annotation
  .registers 8
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/n;->a:Landroid/content/Context;
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"
    invoke-static { v0, v1 }, Landroidx/core/content/b;->b(Landroid/content/Context;Ljava/lang/String;)I
    move-result v0
    const/4 v1, 0
    if-nez v0, :L0
    const-string v0, "network"
  .line 2
    invoke-direct { p0, v0 }, Landroidx/appcompat/app/n;->c(Ljava/lang/String;)Landroid/location/Location;
    move-result-object v0
    goto :L1
  :L0
    move-object v0, v1
  :L1
  .line 3
    iget-object v2, p0, Landroidx/appcompat/app/n;->a:Landroid/content/Context;
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"
    invoke-static { v2, v3 }, Landroidx/core/content/b;->b(Landroid/content/Context;Ljava/lang/String;)I
    move-result v2
    if-nez v2, :L2
    const-string v1, "gps"
  .line 4
    invoke-direct { p0, v1 }, Landroidx/appcompat/app/n;->c(Ljava/lang/String;)Landroid/location/Location;
    move-result-object v1
  :L2
    if-eqz v1, :L4
    if-eqz v0, :L4
  .line 5
    invoke-virtual { v1 }, Landroid/location/Location;->getTime()J
    move-result-wide v2
    invoke-virtual { v0 }, Landroid/location/Location;->getTime()J
    move-result-wide v4
    cmp-long v6, v2, v4
    if-lez v6, :L3
    move-object v0, v1
  :L3
    return-object v0
  :L4
    if-eqz v1, :L5
    move-object v0, v1
  :L5
    return-object v0
.end method

.method private c(Ljava/lang/String;)Landroid/location/Location;
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 3
  :L0
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/n;->b:Landroid/location/LocationManager;
    invoke-virtual { v0, p1 }, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L2
  .line 2
    iget-object v0, p0, Landroidx/appcompat/app/n;->b:Landroid/location/LocationManager;
    invoke-virtual { v0, p1 }, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    move-result-object p1
  :L1
    return-object p1
  :L2
    const/4 p1, 0
    return-object p1
.end method

.method private e()Z
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/n;->c:Landroidx/appcompat/app/n$a;
    iget-wide v0, v0, Landroidx/appcompat/app/n$a;->f:J
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    cmp-long v4, v0, v2
    if-lez v4, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method private f(Landroid/location/Location;)V
  .registers 24
    move-object/from16 v0, p0
  .line 1
    iget-object v1, v0, Landroidx/appcompat/app/n;->c:Landroidx/appcompat/app/n$a;
  .line 2
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v9
  .line 3
    invoke-static { }, Landroidx/appcompat/app/m;->b()Landroidx/appcompat/app/m;
    move-result-object v11
    const-wide/32 v12, 86400000
    sub-long v3, v9, v12
  .line 4
    invoke-virtual/range { p1 .. p1 }, Landroid/location/Location;->getLatitude()D
    move-result-wide v5
    invoke-virtual/range { p1 .. p1 }, Landroid/location/Location;->getLongitude()D
    move-result-wide v7
    move-object v2, v11
  .line 5
    invoke-virtual/range { v2 .. v8 }, Landroidx/appcompat/app/m;->a(JDD)V
  .line 6
    iget-wide v14, v11, Landroidx/appcompat/app/m;->a:J
  .line 7
    invoke-virtual/range { p1 .. p1 }, Landroid/location/Location;->getLatitude()D
    move-result-wide v5
    invoke-virtual/range { p1 .. p1 }, Landroid/location/Location;->getLongitude()D
    move-result-wide v7
    move-wide v3, v9
    invoke-virtual/range { v2 .. v8 }, Landroidx/appcompat/app/m;->a(JDD)V
  .line 8
    iget v2, v11, Landroidx/appcompat/app/m;->c:I
    const/4 v3, 1
    if-ne v2, v3, :L0
    const/4 v7, 1
    goto :L1
  :L0
    const/4 v3, 0
    const/4 v7, 0
  :L1
  .line 9
    iget-wide v5, v11, Landroidx/appcompat/app/m;->b:J
  .line 10
    iget-wide v3, v11, Landroidx/appcompat/app/m;->a:J
    add-long/2addr v12, v9
  .line 11
    invoke-virtual/range { p1 .. p1 }, Landroid/location/Location;->getLatitude()D
    move-result-wide v16
    invoke-virtual/range { p1 .. p1 }, Landroid/location/Location;->getLongitude()D
    move-result-wide v18
    move-object v2, v11
    move-wide/from16 v20, v14
    move-wide v14, v3
    move-wide v3, v12
    move-wide v12, v5
    move-wide/from16 v5, v16
    move v0, v7
    move-wide/from16 v7, v18
  .line 12
    invoke-virtual/range { v2 .. v8 }, Landroidx/appcompat/app/m;->a(JDD)V
  .line 13
    iget-wide v2, v11, Landroidx/appcompat/app/m;->b:J
    const-wide/16 v4, 0
    const-wide/16 v6, -1
    cmp-long v8, v12, v6
    if-eqz v8, :L6
    cmp-long v8, v14, v6
    if-nez v8, :L2
    goto :L6
  :L2
    cmp-long v6, v9, v14
    if-lez v6, :L3
    add-long/2addr v4, v2
    goto :L5
  :L3
    cmp-long v6, v9, v12
    if-lez v6, :L4
    add-long/2addr v4, v14
    goto :L5
  :L4
    add-long/2addr v4, v12
  :L5
    const-wide/32 v6, 60000
    add-long/2addr v4, v6
    goto :L7
  :L6
    const-wide/32 v4, 43200000
    add-long/2addr v4, v9
  :L7
  .line 14
    iput-boolean v0, v1, Landroidx/appcompat/app/n$a;->a:Z
    move-wide/from16 v6, v20
  .line 15
    iput-wide v6, v1, Landroidx/appcompat/app/n$a;->b:J
  .line 16
    iput-wide v12, v1, Landroidx/appcompat/app/n$a;->c:J
  .line 17
    iput-wide v14, v1, Landroidx/appcompat/app/n$a;->d:J
  .line 18
    iput-wide v2, v1, Landroidx/appcompat/app/n$a;->e:J
  .line 19
    iput-wide v4, v1, Landroidx/appcompat/app/n$a;->f:J
    return-void
.end method

.method d()Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/n;->c:Landroidx/appcompat/app/n$a;
  .line 2
    invoke-direct { p0 }, Landroidx/appcompat/app/n;->e()Z
    move-result v1
    if-eqz v1, :L0
  .line 3
    iget-boolean v0, v0, Landroidx/appcompat/app/n$a;->a:Z
    return v0
  :L0
  .line 4
    invoke-direct { p0 }, Landroidx/appcompat/app/n;->b()Landroid/location/Location;
    move-result-object v1
    if-eqz v1, :L1
  .line 5
    invoke-direct { p0, v1 }, Landroidx/appcompat/app/n;->f(Landroid/location/Location;)V
  .line 6
    iget-boolean v0, v0, Landroidx/appcompat/app/n$a;->a:Z
    return v0
  :L1
  .line 7
    invoke-static { }, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
    move-result-object v0
    const/16 v1, 11
  .line 8
    invoke-virtual { v0, v1 }, Ljava/util/Calendar;->get(I)I
    move-result v0
    const/4 v1, 6
    if-lt v0, v1, :L3
    const/16 v1, 22
    if-lt v0, v1, :L2
    goto :L3
  :L2
    const/4 v0, 0
    goto :L4
  :L3
    const/4 v0, 1
  :L4
    return v0
.end method
