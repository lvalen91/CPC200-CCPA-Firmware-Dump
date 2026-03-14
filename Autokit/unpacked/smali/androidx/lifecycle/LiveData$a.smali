.class Landroidx/lifecycle/LiveData$a;
.super Landroidx/lifecycle/LiveData$b;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/lifecycle/LiveData;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "a"
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Landroidx/lifecycle/LiveData<",
    "TT;>.b;"
  }
.end annotation

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
    invoke-direct { p0, p1, p2 }, Landroidx/lifecycle/LiveData$b;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/p;)V
    return-void
.end method

.method k()Z
  .registers 2
    const/4 v0, 1
    return v0
.end method
