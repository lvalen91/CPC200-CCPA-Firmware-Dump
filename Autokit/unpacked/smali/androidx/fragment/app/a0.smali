.class Landroidx/fragment/app/a0;
.super Ljava/lang/Object;
.implements Landroidx/savedstate/c;
.implements Landroidx/lifecycle/y;
.source "SourceFile"

.field private final b:Landroidx/lifecycle/x;

.field private c:Landroidx/lifecycle/k;

.field private d:Landroidx/savedstate/b;

.method constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/x;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 p1, 0
  .line 2
    iput-object p1, p0, Landroidx/fragment/app/a0;->c:Landroidx/lifecycle/k;
  .line 3
    iput-object p1, p0, Landroidx/fragment/app/a0;->d:Landroidx/savedstate/b;
  .line 4
    iput-object p2, p0, Landroidx/fragment/app/a0;->b:Landroidx/lifecycle/x;
    return-void
.end method

.method a(Landroidx/lifecycle/f$b;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->c:Landroidx/lifecycle/k;
    invoke-virtual { v0, p1 }, Landroidx/lifecycle/k;->h(Landroidx/lifecycle/f$b;)V
    return-void
.end method

.method b()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->c:Landroidx/lifecycle/k;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroidx/lifecycle/k;
    invoke-direct { v0, p0 }, Landroidx/lifecycle/k;-><init>(Landroidx/lifecycle/j;)V
    iput-object v0, p0, Landroidx/fragment/app/a0;->c:Landroidx/lifecycle/k;
  .line 3
    invoke-static { p0 }, Landroidx/savedstate/b;->a(Landroidx/savedstate/c;)Landroidx/savedstate/b;
    move-result-object v0
    iput-object v0, p0, Landroidx/fragment/app/a0;->d:Landroidx/savedstate/b;
  :L0
    return-void
.end method

.method c()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->c:Landroidx/lifecycle/k;
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method d(Landroid/os/Bundle;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->d:Landroidx/savedstate/b;
    invoke-virtual { v0, p1 }, Landroidx/savedstate/b;->c(Landroid/os/Bundle;)V
    return-void
.end method

.method e(Landroid/os/Bundle;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->d:Landroidx/savedstate/b;
    invoke-virtual { v0, p1 }, Landroidx/savedstate/b;->d(Landroid/os/Bundle;)V
    return-void
.end method

.method f(Landroidx/lifecycle/f$c;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->c:Landroidx/lifecycle/k;
    invoke-virtual { v0, p1 }, Landroidx/lifecycle/k;->o(Landroidx/lifecycle/f$c;)V
    return-void
.end method

.method public getLifecycle()Landroidx/lifecycle/f;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/fragment/app/a0;->b()V
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/a0;->c:Landroidx/lifecycle/k;
    return-object v0
.end method

.method public getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/fragment/app/a0;->b()V
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/a0;->d:Landroidx/savedstate/b;
    invoke-virtual { v0 }, Landroidx/savedstate/b;->b()Landroidx/savedstate/SavedStateRegistry;
    move-result-object v0
    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/x;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/fragment/app/a0;->b()V
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/a0;->b:Landroidx/lifecycle/x;
    return-object v0
.end method
