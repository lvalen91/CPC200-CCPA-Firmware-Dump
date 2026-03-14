.class Landroidx/activity/ComponentActivity$3;
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
    iput-object p1, p0, Landroidx/activity/ComponentActivity$3;->a:Landroidx/activity/ComponentActivity;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public d(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;)V
  .registers 3
  .line 1
    sget-object p1, Landroidx/lifecycle/f$b;->ON_STOP:Landroidx/lifecycle/f$b;
    if-ne p2, p1, :L2
  .line 2
    iget-object p1, p0, Landroidx/activity/ComponentActivity$3;->a:Landroidx/activity/ComponentActivity;
    invoke-virtual { p1 }, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object p1
    if-eqz p1, :L0
  .line 3
    invoke-virtual { p1 }, Landroid/view/Window;->peekDecorView()Landroid/view/View;
    move-result-object p1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    if-eqz p1, :L2
  .line 4
    invoke-virtual { p1 }, Landroid/view/View;->cancelPendingInputEvents()V
  :L2
    return-void
.end method
