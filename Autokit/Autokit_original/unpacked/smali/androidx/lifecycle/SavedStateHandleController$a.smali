.class final Landroidx/lifecycle/SavedStateHandleController$a;
.super Ljava/lang/Object;
.implements Landroidx/savedstate/SavedStateRegistry$a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/lifecycle/SavedStateHandleController;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 24
  name = "a"
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroidx/savedstate/c;)V
  .registers 7
  .line 1
    instance-of v0, p1, Landroidx/lifecycle/y;
    if-eqz v0, :L3
  .line 2
    move-object v0, p1
    check-cast v0, Landroidx/lifecycle/y;
    invoke-interface { v0 }, Landroidx/lifecycle/y;->getViewModelStore()Landroidx/lifecycle/x;
    move-result-object v0
  .line 3
    invoke-interface { p1 }, Landroidx/savedstate/c;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;
    move-result-object v1
  .line 4
    invoke-virtual { v0 }, Landroidx/lifecycle/x;->c()Ljava/util/Set;
    move-result-object v2
    invoke-interface { v2 }, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v2
  :L0
    invoke-interface { v2 }, Ljava/util/Iterator;->hasNext()Z
    move-result v3
    if-eqz v3, :L1
    invoke-interface { v2 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/String;
  .line 5
    invoke-virtual { v0, v3 }, Landroidx/lifecycle/x;->b(Ljava/lang/String;)Landroidx/lifecycle/v;
    move-result-object v3
  .line 6
    invoke-interface { p1 }, Landroidx/lifecycle/j;->getLifecycle()Landroidx/lifecycle/f;
    move-result-object v4
    invoke-static { v3, v1, v4 }, Landroidx/lifecycle/SavedStateHandleController;->h(Landroidx/lifecycle/v;Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/f;)V
    goto :L0
  :L1
  .line 7
    invoke-virtual { v0 }, Landroidx/lifecycle/x;->c()Ljava/util/Set;
    move-result-object p1
    invoke-interface { p1 }, Ljava/util/Set;->isEmpty()Z
    move-result p1
    if-nez p1, :L2
  .line 8
    const-class p1, Landroidx/lifecycle/SavedStateHandleController$a;
    invoke-virtual { v1, p1 }, Landroidx/savedstate/SavedStateRegistry;->e(Ljava/lang/Class;)V
  :L2
    return-void
  :L3
  .line 9
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "Internal error: OnRecreation should be registered only on componentsthat implement ViewModelStoreOwner"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    goto :L5
  :L4
    throw p1
  :L5
    goto :L4
.end method
