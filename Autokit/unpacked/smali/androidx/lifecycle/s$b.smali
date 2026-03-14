.class Landroidx/lifecycle/s$b;
.super Ljava/lang/Object;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/lifecycle/s;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "b"
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static registerIn(Landroid/app/Activity;)V
  .registers 2
  .line 1
    new-instance v0, Landroidx/lifecycle/s$b;
    invoke-direct { v0 }, Landroidx/lifecycle/s$b;-><init>()V
    invoke-virtual { p0, v0 }, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    return-void
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
  .registers 2
    return-void
.end method

.method public onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
  .registers 3
  .line 1
    sget-object p2, Landroidx/lifecycle/f$b;->ON_CREATE:Landroidx/lifecycle/f$b;
    invoke-static { p1, p2 }, Landroidx/lifecycle/s;->a(Landroid/app/Activity;Landroidx/lifecycle/f$b;)V
    return-void
.end method

.method public onActivityPostResumed(Landroid/app/Activity;)V
  .registers 3
  .line 1
    sget-object v0, Landroidx/lifecycle/f$b;->ON_RESUME:Landroidx/lifecycle/f$b;
    invoke-static { p1, v0 }, Landroidx/lifecycle/s;->a(Landroid/app/Activity;Landroidx/lifecycle/f$b;)V
    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
  .registers 3
  .line 1
    sget-object v0, Landroidx/lifecycle/f$b;->ON_START:Landroidx/lifecycle/f$b;
    invoke-static { p1, v0 }, Landroidx/lifecycle/s;->a(Landroid/app/Activity;Landroidx/lifecycle/f$b;)V
    return-void
.end method

.method public onActivityPreDestroyed(Landroid/app/Activity;)V
  .registers 3
  .line 1
    sget-object v0, Landroidx/lifecycle/f$b;->ON_DESTROY:Landroidx/lifecycle/f$b;
    invoke-static { p1, v0 }, Landroidx/lifecycle/s;->a(Landroid/app/Activity;Landroidx/lifecycle/f$b;)V
    return-void
.end method

.method public onActivityPrePaused(Landroid/app/Activity;)V
  .registers 3
  .line 1
    sget-object v0, Landroidx/lifecycle/f$b;->ON_PAUSE:Landroidx/lifecycle/f$b;
    invoke-static { p1, v0 }, Landroidx/lifecycle/s;->a(Landroid/app/Activity;Landroidx/lifecycle/f$b;)V
    return-void
.end method

.method public onActivityPreStopped(Landroid/app/Activity;)V
  .registers 3
  .line 1
    sget-object v0, Landroidx/lifecycle/f$b;->ON_STOP:Landroidx/lifecycle/f$b;
    invoke-static { p1, v0 }, Landroidx/lifecycle/s;->a(Landroid/app/Activity;Landroidx/lifecycle/f$b;)V
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
  .registers 2
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
