.class abstract Landroidx/lifecycle/LiveData$b;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/lifecycle/LiveData;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 1026
  name = "b"
.end annotation

.field final a:Landroidx/lifecycle/p;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroidx/lifecycle/p<",
      "-TT;>;"
    }
  .end annotation
.end field

.field b:Z

.field c:I

.field final synthetic d:Landroidx/lifecycle/LiveData;

.method constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/p;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/lifecycle/p<",
      "-TT;>;)V"
    }
  .end annotation
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/lifecycle/LiveData$b;->d:Landroidx/lifecycle/LiveData;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 p1, -1
  .line 2
    iput p1, p0, Landroidx/lifecycle/LiveData$b;->c:I
  .line 3
    iput-object p2, p0, Landroidx/lifecycle/LiveData$b;->a:Landroidx/lifecycle/p;
    return-void
.end method

.method h(Z)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/LiveData$b;->b:Z
    if-ne p1, v0, :L0
    return-void
  :L0
  .line 2
    iput-boolean p1, p0, Landroidx/lifecycle/LiveData$b;->b:Z
  .line 3
    iget-object v0, p0, Landroidx/lifecycle/LiveData$b;->d:Landroidx/lifecycle/LiveData;
    if-eqz p1, :L1
    const/4 p1, 1
    goto :L2
  :L1
    const/4 p1, -1
  :L2
    invoke-virtual { v0, p1 }, Landroidx/lifecycle/LiveData;->b(I)V
  .line 4
    iget-boolean p1, p0, Landroidx/lifecycle/LiveData$b;->b:Z
    if-eqz p1, :L3
  .line 5
    iget-object p1, p0, Landroidx/lifecycle/LiveData$b;->d:Landroidx/lifecycle/LiveData;
    invoke-virtual { p1, p0 }, Landroidx/lifecycle/LiveData;->d(Landroidx/lifecycle/LiveData$b;)V
  :L3
    return-void
.end method

.method i()V
  .registers 1
    return-void
.end method

.method j(Landroidx/lifecycle/j;)Z
  .registers 2
    const/4 p1, 0
    return p1
.end method

.method abstract k()Z
.end method
