.class Landroidx/recyclerview/widget/RecyclerView$g;
.super Landroid/database/Observable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "g"
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Landroid/database/Observable<",
    "Landroidx/recyclerview/widget/RecyclerView$h;",
    ">;"
  }
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Landroid/database/Observable;-><init>()V
    return-void
.end method

.method public a()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroid/database/Observable;->mObservers:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->isEmpty()Z
    move-result v0
    xor-int/lit8 v0, v0, 1
    return v0
.end method

.method public b()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroid/database/Observable;->mObservers:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    add-int/lit8 v0, v0, -1
  :L0
    if-ltz v0, :L1
  .line 2
    iget-object v1, p0, Landroid/database/Observable;->mObservers:Ljava/util/ArrayList;
    invoke-virtual { v1, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$h;
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/RecyclerView$h;->a()V
    add-int/lit8 v0, v0, -1
    goto :L0
  :L1
    return-void
.end method
