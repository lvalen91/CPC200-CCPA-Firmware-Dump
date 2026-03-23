.class public Lc/e/b/k/l;
.super Lc/e/b/k/e;
.source "SourceFile"

.field public p0:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Lc/e/b/k/e;",
      ">;"
    }
  .end annotation
.end field

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Lc/e/b/k/e;-><init>()V
  .line 2
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;
    return-void
.end method

.method public a(Lc/e/b/k/e;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 2
    invoke-virtual { p1 }, Lc/e/b/k/e;->I()Lc/e/b/k/e;
    move-result-object v0
    if-eqz v0, :L0
  .line 3
    invoke-virtual { p1 }, Lc/e/b/k/e;->I()Lc/e/b/k/e;
    move-result-object v0
    check-cast v0, Lc/e/b/k/l;
  .line 4
    invoke-virtual { v0, p1 }, Lc/e/b/k/l;->c1(Lc/e/b/k/e;)V
  :L0
  .line 5
    invoke-virtual { p1, p0 }, Lc/e/b/k/e;->M0(Lc/e/b/k/e;)V
    return-void
.end method

.method public a1()Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/ArrayList<",
      "Lc/e/b/k/e;",
      ">;"
    }
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;
    return-object v0
.end method

.method public b1()V
  .registers 5
  .line 1
    iget-object v0, p0, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 0
  :L1
    if-ge v1, v0, :L3
  .line 3
    iget-object v2, p0, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;
    invoke-virtual { v2, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lc/e/b/k/e;
  .line 4
    instance-of v3, v2, Lc/e/b/k/l;
    if-eqz v3, :L2
  .line 5
    check-cast v2, Lc/e/b/k/l;
    invoke-virtual { v2 }, Lc/e/b/k/l;->b1()V
  :L2
    add-int/lit8 v1, v1, 1
    goto :L1
  :L3
    return-void
.end method

.method public c1(Lc/e/b/k/e;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
  .line 2
    invoke-virtual { p1 }, Lc/e/b/k/e;->h0()V
    return-void
.end method

.method public d1()V
  .registers 2
  .line 1
    iget-object v0, p0, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->clear()V
    return-void
.end method

.method public h0()V
  .registers 2
  .line 1
    iget-object v0, p0, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->clear()V
  .line 2
    invoke-super { p0 }, Lc/e/b/k/e;->h0()V
    return-void
.end method

.method public j0(Lc/e/b/c;)V
  .registers 5
  .line 1
    invoke-super { p0, p1 }, Lc/e/b/k/e;->j0(Lc/e/b/c;)V
  .line 2
    iget-object v0, p0, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L1
  .line 3
    iget-object v2, p0, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;
    invoke-virtual { v2, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lc/e/b/k/e;
  .line 4
    invoke-virtual { v2, p1 }, Lc/e/b/k/e;->j0(Lc/e/b/c;)V
    add-int/lit8 v1, v1, 1
    goto :L0
  :L1
    return-void
.end method
