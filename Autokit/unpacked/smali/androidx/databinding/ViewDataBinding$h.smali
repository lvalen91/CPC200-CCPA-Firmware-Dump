.class Landroidx/databinding/ViewDataBinding$h;
.super Ljava/lang/Object;
.implements Landroidx/lifecycle/p;
.implements Landroidx/databinding/ViewDataBinding$i;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/databinding/ViewDataBinding;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "h"
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Landroidx/lifecycle/p;",
    "Landroidx/databinding/ViewDataBinding$i<",
    "Landroidx/lifecycle/LiveData<",
    "*>;>;"
  }
.end annotation

.field final a:Landroidx/databinding/ViewDataBinding$j;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroidx/databinding/ViewDataBinding$j<",
      "Landroidx/lifecycle/LiveData<",
      "*>;>;"
    }
  .end annotation
.end field

.field b:Landroidx/lifecycle/j;

.method public constructor <init>(Landroidx/databinding/ViewDataBinding;I)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Landroidx/databinding/ViewDataBinding$j;
    invoke-direct { v0, p1, p2, p0 }, Landroidx/databinding/ViewDataBinding$j;-><init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/ViewDataBinding$i;)V
    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$h;->a:Landroidx/databinding/ViewDataBinding$j;
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
  .registers 2
  .line 1
    check-cast p1, Landroidx/lifecycle/LiveData;
    invoke-virtual { p0, p1 }, Landroidx/databinding/ViewDataBinding$h;->e(Landroidx/lifecycle/LiveData;)V
    return-void
.end method

.method public b(Landroidx/lifecycle/j;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$h;->a:Landroidx/databinding/ViewDataBinding$j;
    invoke-virtual { v0 }, Landroidx/databinding/ViewDataBinding$j;->b()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/lifecycle/LiveData;
    if-eqz v0, :L1
  .line 2
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding$h;->b:Landroidx/lifecycle/j;
    if-eqz v1, :L0
  .line 3
    invoke-virtual { v0, p0 }, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/p;)V
  :L0
    if-eqz p1, :L1
  .line 4
    invoke-virtual { v0, p1, p0 }, Landroidx/lifecycle/LiveData;->f(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V
  :L1
  .line 5
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding$h;->b:Landroidx/lifecycle/j;
    return-void
.end method

.method public c(Ljava/lang/Object;)V
  .registers 5
  .line 1
    iget-object p1, p0, Landroidx/databinding/ViewDataBinding$h;->a:Landroidx/databinding/ViewDataBinding$j;
    invoke-virtual { p1 }, Landroidx/databinding/ViewDataBinding$j;->a()Landroidx/databinding/ViewDataBinding;
    move-result-object p1
    if-eqz p1, :L0
  .line 2
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$h;->a:Landroidx/databinding/ViewDataBinding$j;
    iget v1, v0, Landroidx/databinding/ViewDataBinding$j;->b:I
    invoke-virtual { v0 }, Landroidx/databinding/ViewDataBinding$j;->b()Ljava/lang/Object;
    move-result-object v0
    const/4 v2, 0
    invoke-static { p1, v1, v0, v2 }, Landroidx/databinding/ViewDataBinding;->k(Landroidx/databinding/ViewDataBinding;ILjava/lang/Object;I)V
  :L0
    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
  .registers 2
  .line 1
    check-cast p1, Landroidx/lifecycle/LiveData;
    invoke-virtual { p0, p1 }, Landroidx/databinding/ViewDataBinding$h;->g(Landroidx/lifecycle/LiveData;)V
    return-void
.end method

.method public e(Landroidx/lifecycle/LiveData;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/lifecycle/LiveData<",
      "*>;)V"
    }
  .end annotation
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$h;->b:Landroidx/lifecycle/j;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p1, v0, p0 }, Landroidx/lifecycle/LiveData;->f(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V
  :L0
    return-void
.end method

.method public f()Landroidx/databinding/ViewDataBinding$j;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Landroidx/databinding/ViewDataBinding$j<",
      "Landroidx/lifecycle/LiveData<",
      "*>;>;"
    }
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$h;->a:Landroidx/databinding/ViewDataBinding$j;
    return-object v0
.end method

.method public g(Landroidx/lifecycle/LiveData;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/lifecycle/LiveData<",
      "*>;)V"
    }
  .end annotation
  .registers 2
  .line 1
    invoke-virtual { p1, p0 }, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/p;)V
    return-void
.end method
