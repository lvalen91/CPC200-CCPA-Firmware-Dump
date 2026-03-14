.class final Landroidx/core/app/c$d;
.super Ljava/lang/Object;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/core/app/c;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 26
  name = "d"
.end annotation

.field a:Ljava/lang/Object;

.field private b:Landroid/app/Activity;

.field private final c:I

.field private d:Z

.field private e:Z

.field private f:Z

.method constructor <init>(Landroid/app/Activity;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Landroidx/core/app/c$d;->d:Z
  .line 3
    iput-boolean v0, p0, Landroidx/core/app/c$d;->e:Z
  .line 4
    iput-boolean v0, p0, Landroidx/core/app/c$d;->f:Z
  .line 5
    iput-object p1, p0, Landroidx/core/app/c$d;->b:Landroid/app/Activity;
  .line 6
    invoke-virtual { p1 }, Ljava/lang/Object;->hashCode()I
    move-result p1
    iput p1, p0, Landroidx/core/app/c$d;->c:I
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
  .registers 3
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/app/c$d;->b:Landroid/app/Activity;
    if-ne v0, p1, :L0
    const/4 p1, 0
  .line 2
    iput-object p1, p0, Landroidx/core/app/c$d;->b:Landroid/app/Activity;
    const/4 p1, 1
  .line 3
    iput-boolean p1, p0, Landroidx/core/app/c$d;->e:Z
  :L0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
  .registers 4
  .line 1
    iget-boolean v0, p0, Landroidx/core/app/c$d;->e:Z
    if-eqz v0, :L0
    iget-boolean v0, p0, Landroidx/core/app/c$d;->f:Z
    if-nez v0, :L0
    iget-boolean v0, p0, Landroidx/core/app/c$d;->d:Z
    if-nez v0, :L0
    iget-object v0, p0, Landroidx/core/app/c$d;->a:Ljava/lang/Object;
    iget v1, p0, Landroidx/core/app/c$d;->c:I
  .line 2
    invoke-static { v0, v1, p1 }, Landroidx/core/app/c;->h(Ljava/lang/Object;ILandroid/app/Activity;)Z
    move-result p1
    if-eqz p1, :L0
    const/4 p1, 1
  .line 3
    iput-boolean p1, p0, Landroidx/core/app/c$d;->f:Z
    const/4 p1, 0
  .line 4
    iput-object p1, p0, Landroidx/core/app/c$d;->a:Ljava/lang/Object;
  :L0
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
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/app/c$d;->b:Landroid/app/Activity;
    if-ne v0, p1, :L0
    const/4 p1, 1
  .line 2
    iput-boolean p1, p0, Landroidx/core/app/c$d;->d:Z
  :L0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
  .registers 2
    return-void
.end method
