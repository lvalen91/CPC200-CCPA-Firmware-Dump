.class Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
.super Landroidx/lifecycle/LiveData$b;
.implements Landroidx/lifecycle/h;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/lifecycle/LiveData;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = "LifecycleBoundObserver"
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Landroidx/lifecycle/LiveData<",
    "TT;>.b;",
    "Landroidx/lifecycle/h;"
  }
.end annotation

.field final e:Landroidx/lifecycle/j;

.field final synthetic f:Landroidx/lifecycle/LiveData;

.method constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/lifecycle/j;",
      "Landroidx/lifecycle/p<",
      "-TT;>;)V"
    }
  .end annotation
  .registers 4
  .line 1
    iput-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->f:Landroidx/lifecycle/LiveData;
  .line 2
    invoke-direct { p0, p1, p3 }, Landroidx/lifecycle/LiveData$b;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/p;)V
  .line 3
    iput-object p2, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/j;
    return-void
.end method

.method public d(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;)V
  .registers 4
  .line 1
    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/j;
    invoke-interface { p1 }, Landroidx/lifecycle/j;->getLifecycle()Landroidx/lifecycle/f;
    move-result-object p1
    invoke-virtual { p1 }, Landroidx/lifecycle/f;->b()Landroidx/lifecycle/f$c;
    move-result-object p1
  .line 2
    sget-object p2, Landroidx/lifecycle/f$c;->b:Landroidx/lifecycle/f$c;
    if-ne p1, p2, :L0
  .line 3
    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->f:Landroidx/lifecycle/LiveData;
    iget-object p2, p0, Landroidx/lifecycle/LiveData$b;->a:Landroidx/lifecycle/p;
    invoke-virtual { p1, p2 }, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/p;)V
    return-void
  :L0
    const/4 p2, 0
  :L1
    if-eq p2, p1, :L2
  .line 4
    invoke-virtual { p0 }, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->k()Z
    move-result p2
    invoke-virtual { p0, p2 }, Landroidx/lifecycle/LiveData$b;->h(Z)V
  .line 5
    iget-object p2, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/j;
    invoke-interface { p2 }, Landroidx/lifecycle/j;->getLifecycle()Landroidx/lifecycle/f;
    move-result-object p2
    invoke-virtual { p2 }, Landroidx/lifecycle/f;->b()Landroidx/lifecycle/f$c;
    move-result-object p2
    move-object v0, p2
    move-object p2, p1
    move-object p1, v0
    goto :L1
  :L2
    return-void
.end method

.method i()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/j;
    invoke-interface { v0 }, Landroidx/lifecycle/j;->getLifecycle()Landroidx/lifecycle/f;
    move-result-object v0
    invoke-virtual { v0, p0 }, Landroidx/lifecycle/f;->c(Landroidx/lifecycle/i;)V
    return-void
.end method

.method j(Landroidx/lifecycle/j;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/j;
    if-ne v0, p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method k()Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/j;
    invoke-interface { v0 }, Landroidx/lifecycle/j;->getLifecycle()Landroidx/lifecycle/f;
    move-result-object v0
    invoke-virtual { v0 }, Landroidx/lifecycle/f;->b()Landroidx/lifecycle/f$c;
    move-result-object v0
    sget-object v1, Landroidx/lifecycle/f$c;->e:Landroidx/lifecycle/f$c;
    invoke-virtual { v0, v1 }, Landroidx/lifecycle/f$c;->a(Landroidx/lifecycle/f$c;)Z
    move-result v0
    return v0
.end method
