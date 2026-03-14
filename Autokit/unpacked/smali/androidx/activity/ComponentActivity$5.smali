.class Landroidx/activity/ComponentActivity$5;
.super Ljava/lang/Object;
.implements Landroidx/lifecycle/h;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/activity/ComponentActivity;-><init>()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroidx/activity/ComponentActivity;

.method constructor <init>(Landroidx/activity/ComponentActivity;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/activity/ComponentActivity$5;->a:Landroidx/activity/ComponentActivity;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public d(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;)V
  .registers 3
  .line 1
    iget-object p1, p0, Landroidx/activity/ComponentActivity$5;->a:Landroidx/activity/ComponentActivity;
    invoke-virtual { p1 }, Landroidx/activity/ComponentActivity;->ensureViewModelStore()V
  .line 2
    iget-object p1, p0, Landroidx/activity/ComponentActivity$5;->a:Landroidx/activity/ComponentActivity;
    invoke-virtual { p1 }, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/f;
    move-result-object p1
    invoke-virtual { p1, p0 }, Landroidx/lifecycle/f;->c(Landroidx/lifecycle/i;)V
    return-void
.end method
