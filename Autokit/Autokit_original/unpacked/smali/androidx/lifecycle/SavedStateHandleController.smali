.class final Landroidx/lifecycle/SavedStateHandleController;
.super Ljava/lang/Object;
.implements Landroidx/lifecycle/h;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/lifecycle/SavedStateHandleController$a;
  }
.end annotation

.field private final a:Ljava/lang/String;

.field private b:Z

.field private final c:Landroidx/lifecycle/t;

.method constructor <init>(Ljava/lang/String;Landroidx/lifecycle/t;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->b:Z
  .line 3
    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandleController;->a:Ljava/lang/String;
  .line 4
    iput-object p2, p0, Landroidx/lifecycle/SavedStateHandleController;->c:Landroidx/lifecycle/t;
    return-void
.end method

.method static h(Landroidx/lifecycle/v;Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/f;)V
  .registers 4
    const-string v0, "androidx.lifecycle.savedstate.vm.tag"
  .line 1
    invoke-virtual { p0, v0 }, Landroidx/lifecycle/v;->f(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Landroidx/lifecycle/SavedStateHandleController;
    if-eqz p0, :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/lifecycle/SavedStateHandleController;->l()Z
    move-result v0
    if-nez v0, :L0
  .line 3
    invoke-virtual { p0, p1, p2 }, Landroidx/lifecycle/SavedStateHandleController;->i(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/f;)V
  .line 4
    invoke-static { p1, p2 }, Landroidx/lifecycle/SavedStateHandleController;->m(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/f;)V
  :L0
    return-void
.end method

.method static j(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/f;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandleController;
  .registers 5
  .line 1
    invoke-virtual { p0, p2 }, Landroidx/savedstate/SavedStateRegistry;->a(Ljava/lang/String;)Landroid/os/Bundle;
    move-result-object v0
  .line 2
    invoke-static { v0, p3 }, Landroidx/lifecycle/t;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/t;
    move-result-object p3
  .line 3
    new-instance v0, Landroidx/lifecycle/SavedStateHandleController;
    invoke-direct { v0, p2, p3 }, Landroidx/lifecycle/SavedStateHandleController;-><init>(Ljava/lang/String;Landroidx/lifecycle/t;)V
  .line 4
    invoke-virtual { v0, p0, p1 }, Landroidx/lifecycle/SavedStateHandleController;->i(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/f;)V
  .line 5
    invoke-static { p0, p1 }, Landroidx/lifecycle/SavedStateHandleController;->m(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/f;)V
    return-object v0
.end method

.method private static m(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/f;)V
  .registers 4
  .line 1
    invoke-virtual { p1 }, Landroidx/lifecycle/f;->b()Landroidx/lifecycle/f$c;
    move-result-object v0
  .line 2
    sget-object v1, Landroidx/lifecycle/f$c;->c:Landroidx/lifecycle/f$c;
    if-eq v0, v1, :L1
    sget-object v1, Landroidx/lifecycle/f$c;->e:Landroidx/lifecycle/f$c;
    invoke-virtual { v0, v1 }, Landroidx/lifecycle/f$c;->a(Landroidx/lifecycle/f$c;)Z
    move-result v0
    if-eqz v0, :L0
    goto :L1
  :L0
  .line 3
    new-instance v0, Landroidx/lifecycle/SavedStateHandleController$1;
    invoke-direct { v0, p1, p0 }, Landroidx/lifecycle/SavedStateHandleController$1;-><init>(Landroidx/lifecycle/f;Landroidx/savedstate/SavedStateRegistry;)V
    invoke-virtual { p1, v0 }, Landroidx/lifecycle/f;->a(Landroidx/lifecycle/i;)V
    goto :L2
  :L1
  .line 4
    const-class p1, Landroidx/lifecycle/SavedStateHandleController$a;
    invoke-virtual { p0, p1 }, Landroidx/savedstate/SavedStateRegistry;->e(Ljava/lang/Class;)V
  :L2
    return-void
.end method

.method public d(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;)V
  .registers 4
  .line 1
    sget-object v0, Landroidx/lifecycle/f$b;->ON_DESTROY:Landroidx/lifecycle/f$b;
    if-ne p2, v0, :L0
    const/4 p2, 0
  .line 2
    iput-boolean p2, p0, Landroidx/lifecycle/SavedStateHandleController;->b:Z
  .line 3
    invoke-interface { p1 }, Landroidx/lifecycle/j;->getLifecycle()Landroidx/lifecycle/f;
    move-result-object p1
    invoke-virtual { p1, p0 }, Landroidx/lifecycle/f;->c(Landroidx/lifecycle/i;)V
  :L0
    return-void
.end method

.method i(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/f;)V
  .registers 4
  .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->b:Z
    if-nez v0, :L0
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->b:Z
  .line 3
    invoke-virtual { p2, p0 }, Landroidx/lifecycle/f;->a(Landroidx/lifecycle/i;)V
  .line 4
    iget-object p2, p0, Landroidx/lifecycle/SavedStateHandleController;->a:Ljava/lang/String;
    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandleController;->c:Landroidx/lifecycle/t;
    invoke-virtual { v0 }, Landroidx/lifecycle/t;->b()Landroidx/savedstate/SavedStateRegistry$b;
    move-result-object v0
    invoke-virtual { p1, p2, v0 }, Landroidx/savedstate/SavedStateRegistry;->d(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$b;)V
    return-void
  :L0
  .line 5
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "Already attached to lifecycleOwner"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method k()Landroidx/lifecycle/t;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandleController;->c:Landroidx/lifecycle/t;
    return-object v0
.end method

.method l()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->b:Z
    return v0
.end method
