.class Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;
.super Ljava/lang/Object;
.implements Landroidx/lifecycle/h;
.implements Landroidx/activity/a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/activity/OnBackPressedDispatcher;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "LifecycleOnBackPressedCancellable"
.end annotation

.field private final a:Landroidx/lifecycle/f;

.field private final b:Landroidx/activity/b;

.field private c:Landroidx/activity/a;

.field final synthetic d:Landroidx/activity/OnBackPressedDispatcher;

.method constructor <init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/f;Landroidx/activity/b;)V
  .registers 4
  .line 1
    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->d:Landroidx/activity/OnBackPressedDispatcher;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->a:Landroidx/lifecycle/f;
  .line 3
    iput-object p3, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->b:Landroidx/activity/b;
  .line 4
    invoke-virtual { p2, p0 }, Landroidx/lifecycle/f;->a(Landroidx/lifecycle/i;)V
    return-void
.end method

.method public cancel()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->a:Landroidx/lifecycle/f;
    invoke-virtual { v0, p0 }, Landroidx/lifecycle/f;->c(Landroidx/lifecycle/i;)V
  .line 2
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->b:Landroidx/activity/b;
    invoke-virtual { v0, p0 }, Landroidx/activity/b;->e(Landroidx/activity/a;)V
  .line 3
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:Landroidx/activity/a;
    if-eqz v0, :L0
  .line 4
    invoke-interface { v0 }, Landroidx/activity/a;->cancel()V
    const/4 v0, 0
  .line 5
    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:Landroidx/activity/a;
  :L0
    return-void
.end method

.method public d(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;)V
  .registers 3
  .line 1
    sget-object p1, Landroidx/lifecycle/f$b;->ON_START:Landroidx/lifecycle/f$b;
    if-ne p2, p1, :L0
  .line 2
    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->d:Landroidx/activity/OnBackPressedDispatcher;
    iget-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->b:Landroidx/activity/b;
    invoke-virtual { p1, p2 }, Landroidx/activity/OnBackPressedDispatcher;->b(Landroidx/activity/b;)Landroidx/activity/a;
    move-result-object p1
    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:Landroidx/activity/a;
    goto :L2
  :L0
  .line 3
    sget-object p1, Landroidx/lifecycle/f$b;->ON_STOP:Landroidx/lifecycle/f$b;
    if-ne p2, p1, :L1
  .line 4
    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:Landroidx/activity/a;
    if-eqz p1, :L2
  .line 5
    invoke-interface { p1 }, Landroidx/activity/a;->cancel()V
    goto :L2
  :L1
  .line 6
    sget-object p1, Landroidx/lifecycle/f$b;->ON_DESTROY:Landroidx/lifecycle/f$b;
    if-ne p2, p1, :L2
  .line 7
    invoke-virtual { p0 }, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->cancel()V
  :L2
    return-void
.end method
