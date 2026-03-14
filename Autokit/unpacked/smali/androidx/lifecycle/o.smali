.class public Landroidx/lifecycle/o;
.super Landroidx/lifecycle/LiveData;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "<T:",
    "Ljava/lang/Object;",
    ">",
    "Landroidx/lifecycle/LiveData<",
    "TT;>;"
  }
.end annotation

.method public constructor <init>()V
  .registers 1
  .line 2
    invoke-direct { p0 }, Landroidx/lifecycle/LiveData;-><init>()V
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TT;)V"
    }
  .end annotation
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Landroidx/lifecycle/LiveData;-><init>(Ljava/lang/Object;)V
    return-void
.end method

.method public k(Ljava/lang/Object;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TT;)V"
    }
  .end annotation
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroidx/lifecycle/LiveData;->k(Ljava/lang/Object;)V
    return-void
.end method
