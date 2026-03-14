.class Landroidx/activity/ComponentActivity$4;
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
    iput-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Landroidx/activity/ComponentActivity;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public d(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;)V
  .registers 3
  .line 1
    sget-object p1, Landroidx/lifecycle/f$b;->ON_DESTROY:Landroidx/lifecycle/f$b;
    if-ne p2, p1, :L0
  .line 2
    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Landroidx/activity/ComponentActivity;
    iget-object p1, p1, Landroidx/activity/ComponentActivity;->mContextAwareHelper:Landroidx/activity/d/a;
    invoke-virtual { p1 }, Landroidx/activity/d/a;->b()V
  .line 3
    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Landroidx/activity/ComponentActivity;
    invoke-virtual { p1 }, Landroid/app/Activity;->isChangingConfigurations()Z
    move-result p1
    if-nez p1, :L0
  .line 4
    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Landroidx/activity/ComponentActivity;
    invoke-virtual { p1 }, Landroidx/activity/ComponentActivity;->getViewModelStore()Landroidx/lifecycle/x;
    move-result-object p1
    invoke-virtual { p1 }, Landroidx/lifecycle/x;->a()V
  :L0
    return-void
.end method
