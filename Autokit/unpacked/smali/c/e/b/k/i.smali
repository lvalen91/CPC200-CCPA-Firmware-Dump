.class public Lc/e/b/k/i;
.super Lc/e/b/k/e;
.implements Lc/e/b/k/h;
.source "SourceFile"

.field public p0:[Lc/e/b/k/e;

.field public q0:I

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Lc/e/b/k/e;-><init>()V
    const/4 v0, 4
    new-array v0, v0, [Lc/e/b/k/e;
  .line 2
    iput-object v0, p0, Lc/e/b/k/i;->p0:[Lc/e/b/k/e;
    const/4 v0, 0
  .line 3
    iput v0, p0, Lc/e/b/k/i;->q0:I
    return-void
.end method

.method public a(Lc/e/b/k/e;)V
  .registers 5
    if-eq p1, p0, :L2
    if-nez p1, :L0
    goto :L2
  :L0
  .line 1
    iget v0, p0, Lc/e/b/k/i;->q0:I
    add-int/lit8 v0, v0, 1
    iget-object v1, p0, Lc/e/b/k/i;->p0:[Lc/e/b/k/e;
    array-length v2, v1
    if-le v0, v2, :L1
  .line 2
    array-length v0, v1
    mul-int/lit8 v0, v0, 2
    invoke-static { v1, v0 }, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Lc/e/b/k/e;
    iput-object v0, p0, Lc/e/b/k/i;->p0:[Lc/e/b/k/e;
  :L1
  .line 3
    iget-object v0, p0, Lc/e/b/k/i;->p0:[Lc/e/b/k/e;
    iget v1, p0, Lc/e/b/k/i;->q0:I
    aput-object p1, v0, v1
    add-int/lit8 v1, v1, 1
  .line 4
    iput v1, p0, Lc/e/b/k/i;->q0:I
  :L2
    return-void
.end method

.method public a1(Ljava/util/ArrayList;ILc/e/b/k/m/o;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/ArrayList<",
      "Lc/e/b/k/m/o;",
      ">;I",
      "Lc/e/b/k/m/o;",
      ")V"
    }
  .end annotation
  .registers 7
    const/4 v0, 0
    const/4 v1, 0
  :L0
  .line 1
    iget v2, p0, Lc/e/b/k/i;->q0:I
    if-ge v1, v2, :L1
  .line 2
    iget-object v2, p0, Lc/e/b/k/i;->p0:[Lc/e/b/k/e;
    aget-object v2, v2, v1
  .line 3
    invoke-virtual { p3, v2 }, Lc/e/b/k/m/o;->a(Lc/e/b/k/e;)Z
    add-int/lit8 v1, v1, 1
    goto :L0
  :L1
  .line 4
    iget v1, p0, Lc/e/b/k/i;->q0:I
    if-ge v0, v1, :L2
  .line 5
    iget-object v1, p0, Lc/e/b/k/i;->p0:[Lc/e/b/k/e;
    aget-object v1, v1, v0
  .line 6
    invoke-static { v1, p2, p1, p3 }, Lc/e/b/k/m/i;->a(Lc/e/b/k/e;ILjava/util/ArrayList;Lc/e/b/k/m/o;)Lc/e/b/k/m/o;
    add-int/lit8 v0, v0, 1
    goto :L1
  :L2
    return-void
.end method

.method public b(Lc/e/b/k/f;)V
  .registers 2
    return-void
.end method

.method public b1(I)I
  .registers 6
    const/4 v0, 0
  :L0
  .line 1
    iget v1, p0, Lc/e/b/k/i;->q0:I
    const/4 v2, -1
    if-ge v0, v1, :L3
  .line 2
    iget-object v1, p0, Lc/e/b/k/i;->p0:[Lc/e/b/k/e;
    aget-object v1, v1, v0
    if-nez p1, :L1
  .line 3
    iget v3, v1, Lc/e/b/k/e;->m0:I
    if-eq v3, v2, :L1
    return v3
  :L1
    const/4 v3, 1
    if-ne p1, v3, :L2
  .line 4
    iget v1, v1, Lc/e/b/k/e;->n0:I
    if-eq v1, v2, :L2
    return v1
  :L2
    add-int/lit8 v0, v0, 1
    goto :L0
  :L3
    return v2
.end method

.method public c()V
  .registers 3
    const/4 v0, 0
  .line 1
    iput v0, p0, Lc/e/b/k/i;->q0:I
  .line 2
    iget-object v0, p0, Lc/e/b/k/i;->p0:[Lc/e/b/k/e;
    const/4 v1, 0
    invoke-static { v0, v1 }, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
    return-void
.end method
