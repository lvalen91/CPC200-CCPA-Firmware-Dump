.class Landroidx/lifecycle/r$c$a;
.super Landroidx/lifecycle/c;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/lifecycle/r$c;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$1:Landroidx/lifecycle/r$c;

.method constructor <init>(Landroidx/lifecycle/r$c;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/lifecycle/r$c$a;->this$1:Landroidx/lifecycle/r$c;
    invoke-direct { p0 }, Landroidx/lifecycle/c;-><init>()V
    return-void
.end method

.method public onActivityPostResumed(Landroid/app/Activity;)V
  .registers 2
  .line 1
    iget-object p1, p0, Landroidx/lifecycle/r$c$a;->this$1:Landroidx/lifecycle/r$c;
    iget-object p1, p1, Landroidx/lifecycle/r$c;->this$0:Landroidx/lifecycle/r;
    invoke-virtual { p1 }, Landroidx/lifecycle/r;->b()V
    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
  .registers 2
  .line 1
    iget-object p1, p0, Landroidx/lifecycle/r$c$a;->this$1:Landroidx/lifecycle/r$c;
    iget-object p1, p1, Landroidx/lifecycle/r$c;->this$0:Landroidx/lifecycle/r;
    invoke-virtual { p1 }, Landroidx/lifecycle/r;->c()V
    return-void
.end method
