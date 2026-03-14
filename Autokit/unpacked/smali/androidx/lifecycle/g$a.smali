.class Landroidx/lifecycle/g$a;
.super Landroidx/lifecycle/c;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/lifecycle/g;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "a"
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Landroidx/lifecycle/c;-><init>()V
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
  .registers 3
  .line 1
    invoke-static { p1 }, Landroidx/lifecycle/s;->g(Landroid/app/Activity;)V
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
  .registers 3
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
  .registers 2
    return-void
.end method
