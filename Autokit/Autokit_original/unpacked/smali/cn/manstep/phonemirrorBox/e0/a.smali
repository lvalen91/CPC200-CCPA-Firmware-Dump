.class public Lcn/manstep/phonemirrorBox/e0/a;
.super Ljava/lang/Object;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.source "SourceFile"

.field private static c:Lcn/manstep/phonemirrorBox/e0/a;

.field private a:I

.field private b:Z

.method private constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/e0/a;->a:I
    return-void
.end method

.method public static a()Lcn/manstep/phonemirrorBox/e0/a;
  .catchall { :L0 .. :L3 } :L2
  .registers 2
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/e0/a;->c:Lcn/manstep/phonemirrorBox/e0/a;
    if-nez v0, :L4
  .line 2
    const-class v0, Lcn/manstep/phonemirrorBox/e0/a;
    monitor-enter v0
  :L0
  .line 3
    sget-object v1, Lcn/manstep/phonemirrorBox/e0/a;->c:Lcn/manstep/phonemirrorBox/e0/a;
    if-nez v1, :L1
  .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/e0/a;
    invoke-direct { v1 }, Lcn/manstep/phonemirrorBox/e0/a;-><init>()V
    sput-object v1, Lcn/manstep/phonemirrorBox/e0/a;->c:Lcn/manstep/phonemirrorBox/e0/a;
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
    sget-object v0, Lcn/manstep/phonemirrorBox/e0/a;->c:Lcn/manstep/phonemirrorBox/e0/a;
    return-object v0
.end method

.method public b()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/e0/a;->b:Z
    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
  .registers 3
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
  .registers 2
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
  .registers 4
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/e0/a;->a:I
    add-int/lit8 v0, v0, -1
    iput v0, p0, Lcn/manstep/phonemirrorBox/e0/a;->a:I
  .line 2
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/e0/a;->b:Z
    if-eqz v1, :L0
    if-nez v0, :L0
    const/4 v0, 0
  .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/e0/a;->b:Z
  :L0
  .line 4
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "onActivityPaused: bAppShow="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/e0/a;->b:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v1, ","
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    const-string v0, "ActivityTracker"
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
  .registers 5
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/e0/a;->a:I
    const/4 v1, 1
    add-int/2addr v0, v1
    iput v0, p0, Lcn/manstep/phonemirrorBox/e0/a;->a:I
  .line 2
    iget-boolean v2, p0, Lcn/manstep/phonemirrorBox/e0/a;->b:Z
    if-nez v2, :L0
    if-lez v0, :L0
  .line 3
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/e0/a;->b:Z
  :L0
  .line 4
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "onActivityResumed: bAppShow="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/e0/a;->b:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v1, ","
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    const-string v0, "ActivityTracker"
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
  .registers 3
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
  .registers 2
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
  .registers 2
    return-void
.end method
