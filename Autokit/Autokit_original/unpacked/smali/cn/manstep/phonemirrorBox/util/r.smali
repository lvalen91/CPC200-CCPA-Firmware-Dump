.class public Lcn/manstep/phonemirrorBox/util/r;
.super Ljava/lang/Object;
.source "SourceFile"

.field private static volatile e:Lcn/manstep/phonemirrorBox/util/r;

.field private a:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Landroid/content/Context;",
      ">;"
    }
  .end annotation
.end field

.field private b:Landroid/location/LocationManager;

.field private c:Landroid/location/OnNmeaMessageListener;

.field private final d:Landroid/location/LocationListener;

.method private constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Lcn/manstep/phonemirrorBox/util/r$a;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/util/r$a;-><init>(Lcn/manstep/phonemirrorBox/util/r;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/r;->d:Landroid/location/LocationListener;
    return-void
.end method

.method public static a()Lcn/manstep/phonemirrorBox/util/r;
  .catchall { :L0 .. :L3 } :L2
  .registers 4
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/util/r;->e:Lcn/manstep/phonemirrorBox/util/r;
    if-nez v0, :L4
  .line 2
    const-class v0, Lcn/manstep/phonemirrorBox/util/r;
    monitor-enter v0
  :L0
  .line 3
    sget-object v1, Lcn/manstep/phonemirrorBox/util/r;->e:Lcn/manstep/phonemirrorBox/util/r;
    if-nez v1, :L1
  .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/util/r;
    invoke-direct { v1 }, Lcn/manstep/phonemirrorBox/util/r;-><init>()V
    sput-object v1, Lcn/manstep/phonemirrorBox/util/r;->e:Lcn/manstep/phonemirrorBox/util/r;
  :L1
  .line 5
    monitor-exit v0
    goto :L4
  :L2
    move-exception v1
    monitor-exit v0
  :L3
    throw v1
  :L4
  .line 6
    sget-object v0, Lcn/manstep/phonemirrorBox/util/r;->e:Lcn/manstep/phonemirrorBox/util/r;
    return-object v0
.end method

.method private d()V
  .registers 10
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/r;->a:Ljava/lang/ref/WeakReference;
    if-eqz v0, :L5
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    if-nez v0, :L0
    goto :L5
  :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/r;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"
    invoke-static { v0, v1 }, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I
    move-result v0
    const-string v1, "LocationUtil"
    if-nez v0, :L4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/r;->a:Ljava/lang/ref/WeakReference;
  .line 3
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"
    invoke-static { v0, v2 }, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I
    move-result v0
    if-eqz v0, :L1
    goto :L4
  :L1
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/r;->b:Landroid/location/LocationManager;
    const/4 v2, 1
    invoke-virtual { v0, v2 }, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;
    move-result-object v0
    const-string v2, "gps"
  .line 5
    invoke-interface { v0, v2 }, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L2
  .line 6
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/util/r;->b:Landroid/location/LocationManager;
    const-wide/16 v5, 5000
    const/high16 v7, 16448
    iget-object v8, p0, Lcn/manstep/phonemirrorBox/util/r;->d:Landroid/location/LocationListener;
    const-string v4, "gps"
    invoke-virtual/range { v3 .. v8 }, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
  :L2
  .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v3, 24
    if-lt v0, v3, :L3
  .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/r;->b:Landroid/location/LocationManager;
    if-eqz v0, :L3
    invoke-virtual { v0, v2 }, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L3
  .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/r;->c:Landroid/location/OnNmeaMessageListener;
    if-eqz v0, :L3
  .line 10
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/util/r;->b:Landroid/location/LocationManager;
    invoke-virtual { v2, v0 }, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/OnNmeaMessageListener;)V
    const-string v0, "startInner: Add NMEA Listener."
  .line 11
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/r;->b:Landroid/location/LocationManager;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/r;->c:Landroid/location/OnNmeaMessageListener;
    invoke-virtual { v0, v1 }, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/OnNmeaMessageListener;)Z
  :L3
    return-void
  :L4
    const-string v0, "startInner: Location permission not granted!"
  .line 13
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  :L5
    return-void
.end method

.method public b(Landroid/content/Context;)Lcn/manstep/phonemirrorBox/util/r;
  .registers 2
    return-object p0
.end method

.method public c()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/util/r;->d()V
    return-void
.end method

.method public e()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/r;->b:Landroid/location/LocationManager;
    if-eqz v0, :L0
  .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/r;->d:Landroid/location/LocationListener;
    invoke-virtual { v0, v1 }, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/r;->c:Landroid/location/OnNmeaMessageListener;
    if-eqz v0, :L0
  .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 24
    if-lt v0, v1, :L0
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/r;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"
    invoke-static { v0, v1 }, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I
    move-result v0
    if-nez v0, :L0
    const-string v0, "LocationUtil"
    const-string v1, "stop: Remove NMEA Listener."
  .line 6
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/util/s;->p(Ljava/lang/String;Ljava/lang/String;)V
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/r;->b:Landroid/location/LocationManager;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/r;->c:Landroid/location/OnNmeaMessageListener;
    invoke-virtual { v0, v1 }, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/OnNmeaMessageListener;)V
  :L0
    return-void
.end method
