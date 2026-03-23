.class Landroidx/recyclerview/widget/e$b;
.super Ljava/lang/Object;
.implements Landroidx/recyclerview/widget/RecyclerView$n$c;
.source "SourceFile"

.annotation build Landroid/annotation/SuppressLint;
  value = {
    "VisibleForTests"
  }
.end annotation
.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/e;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "b"
.end annotation

.field a:I

.field b:I

.field c:[I

.field d:I

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(II)V
  .registers 8
    if-ltz p1, :L3
    if-ltz p2, :L2
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/e$b;->d:I
    mul-int/lit8 v0, v0, 2
  .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/e$b;->c:[I
    if-nez v1, :L0
    const/4 v1, 4
    new-array v1, v1, [I
  .line 3
    iput-object v1, p0, Landroidx/recyclerview/widget/e$b;->c:[I
    const/4 v2, -1
  .line 4
    invoke-static { v1, v2 }, Ljava/util/Arrays;->fill([II)V
    goto :L1
  :L0
  .line 5
    array-length v2, v1
    if-lt v0, v2, :L1
    mul-int/lit8 v2, v0, 2
  .line 6
    new-array v2, v2, [I
    iput-object v2, p0, Landroidx/recyclerview/widget/e$b;->c:[I
  .line 7
    array-length v3, v1
    const/4 v4, 0
    invoke-static { v1, v4, v2, v4, v3 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  :L1
  .line 8
    iget-object v1, p0, Landroidx/recyclerview/widget/e$b;->c:[I
    aput p1, v1, v0
    add-int/lit8 v0, v0, 1
  .line 9
    aput p2, v1, v0
  .line 10
    iget p1, p0, Landroidx/recyclerview/widget/e$b;->d:I
    add-int/lit8 p1, p1, 1
    iput p1, p0, Landroidx/recyclerview/widget/e$b;->d:I
    return-void
  :L2
  .line 11
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "Pixel distance must be non-negative"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L3
  .line 12
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "Layout positions must be non-negative"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method b()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/e$b;->c:[I
    if-eqz v0, :L0
    const/4 v1, -1
  .line 2
    invoke-static { v0, v1 }, Ljava/util/Arrays;->fill([II)V
  :L0
    const/4 v0, 0
  .line 3
    iput v0, p0, Landroidx/recyclerview/widget/e$b;->d:I
    return-void
.end method

.method c(Landroidx/recyclerview/widget/RecyclerView;Z)V
  .registers 7
    const/4 v0, 0
  .line 1
    iput v0, p0, Landroidx/recyclerview/widget/e$b;->d:I
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/e$b;->c:[I
    if-eqz v0, :L0
    const/4 v1, -1
  .line 3
    invoke-static { v0, v1 }, Ljava/util/Arrays;->fill([II)V
  :L0
  .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/RecyclerView$n;
  .line 5
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$f;
    if-eqz v1, :L3
    if-eqz v0, :L3
  .line 6
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->u0()Z
    move-result v1
    if-eqz v1, :L3
    if-eqz p2, :L1
  .line 7
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/a;
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/a;->p()Z
    move-result v1
    if-nez v1, :L2
  .line 8
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$f;
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/RecyclerView$f;->c()I
    move-result v1
    invoke-virtual { v0, v1, p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->p(ILandroidx/recyclerview/widget/RecyclerView$n$c;)V
    goto :L2
  :L1
  .line 9
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView;->l0()Z
    move-result v1
    if-nez v1, :L2
  .line 10
    iget v1, p0, Landroidx/recyclerview/widget/e$b;->a:I
    iget v2, p0, Landroidx/recyclerview/widget/e$b;->b:I
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$z;
    invoke-virtual { v0, v1, v2, v3, p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->o(IILandroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/RecyclerView$n$c;)V
  :L2
  .line 11
    iget v1, p0, Landroidx/recyclerview/widget/e$b;->d:I
    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$n;->m:I
    if-le v1, v2, :L3
  .line 12
    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$n;->m:I
  .line 13
    iput-boolean p2, v0, Landroidx/recyclerview/widget/RecyclerView$n;->n:Z
  .line 14
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->c:Landroidx/recyclerview/widget/RecyclerView$u;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$u;->K()V
  :L3
    return-void
.end method

.method d(I)Z
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/e$b;->c:[I
    const/4 v1, 0
    if-eqz v0, :L2
  .line 2
    iget v0, p0, Landroidx/recyclerview/widget/e$b;->d:I
    mul-int/lit8 v0, v0, 2
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L2
  .line 3
    iget-object v3, p0, Landroidx/recyclerview/widget/e$b;->c:[I
    aget v3, v3, v2
    if-ne v3, p1, :L1
    const/4 p1, 1
    return p1
  :L1
    add-int/lit8 v2, v2, 2
    goto :L0
  :L2
    return v1
.end method

.method e(II)V
  .registers 3
  .line 1
    iput p1, p0, Landroidx/recyclerview/widget/e$b;->a:I
  .line 2
    iput p2, p0, Landroidx/recyclerview/widget/e$b;->b:I
    return-void
.end method
