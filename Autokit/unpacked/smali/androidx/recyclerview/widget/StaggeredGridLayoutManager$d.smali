.class Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "d"
.end annotation
.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;
  }
.end annotation

.field a:[I

.field b:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;",
      ">;"
    }
  .end annotation
.end field

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private i(I)I
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:Ljava/util/List;
    const/4 v1, -1
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;
    move-result-object v0
    if-eqz v0, :L1
  .line 3
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:Ljava/util/List;
    invoke-interface { v2, v0 }, Ljava/util/List;->remove(Ljava/lang/Object;)Z
  :L1
  .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    const/4 v2, 0
  :L2
    if-ge v2, v0, :L4
  .line 5
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:Ljava/util/List;
    invoke-interface { v3, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;
  .line 6
    iget v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;->b:I
    if-lt v3, p1, :L3
    goto :L5
  :L3
    add-int/lit8 v2, v2, 1
    goto :L2
  :L4
    const/4 v2, -1
  :L5
    if-eq v2, v1, :L6
  .line 7
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:Ljava/util/List;
    invoke-interface { p1, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;
  .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:Ljava/util/List;
    invoke-interface { v0, v2 }, Ljava/util/List;->remove(I)Ljava/lang/Object;
  .line 9
    iget p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;->b:I
    return p1
  :L6
    return v1
.end method

.method private l(II)V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:Ljava/util/List;
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    add-int/lit8 v0, v0, -1
  :L1
    if-ltz v0, :L4
  .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:Ljava/util/List;
    invoke-interface { v1, v0 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;
  .line 4
    iget v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;->b:I
    if-ge v2, p1, :L2
    goto :L3
  :L2
    add-int/2addr v2, p2
  .line 5
    iput v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;->b:I
  :L3
    add-int/lit8 v0, v0, -1
    goto :L1
  :L4
    return-void
.end method

.method private m(II)V
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:Ljava/util/List;
    if-nez v0, :L0
    return-void
  :L0
    add-int v1, p1, p2
  .line 2
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    add-int/lit8 v0, v0, -1
  :L1
    if-ltz v0, :L5
  .line 3
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:Ljava/util/List;
    invoke-interface { v2, v0 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;
  .line 4
    iget v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;->b:I
    if-ge v3, p1, :L2
    goto :L4
  :L2
    if-ge v3, v1, :L3
  .line 5
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:Ljava/util/List;
    invoke-interface { v2, v0 }, Ljava/util/List;->remove(I)Ljava/lang/Object;
    goto :L4
  :L3
    sub-int/2addr v3, p2
  .line 6
    iput v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;->b:I
  :L4
    add-int/lit8 v0, v0, -1
    goto :L1
  :L5
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;)V
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:Ljava/util/List;
    if-nez v0, :L0
  .line 2
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:Ljava/util/List;
  :L0
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    const/4 v1, 0
  :L1
    if-ge v1, v0, :L4
  .line 4
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:Ljava/util/List;
    invoke-interface { v2, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;
  .line 5
    iget v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;->b:I
    iget v4, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;->b:I
    if-ne v3, v4, :L2
  .line 6
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:Ljava/util/List;
    invoke-interface { v3, v1 }, Ljava/util/List;->remove(I)Ljava/lang/Object;
  :L2
  .line 7
    iget v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;->b:I
    iget v3, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;->b:I
    if-lt v2, v3, :L3
  .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:Ljava/util/List;
    invoke-interface { v0, v1, p1 }, Ljava/util/List;->add(ILjava/lang/Object;)V
    return-void
  :L3
    add-int/lit8 v1, v1, 1
    goto :L1
  :L4
  .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:Ljava/util/List;
    invoke-interface { v0, p1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    return-void
.end method

.method b()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:[I
    if-eqz v0, :L0
    const/4 v1, -1
  .line 2
    invoke-static { v0, v1 }, Ljava/util/Arrays;->fill([II)V
  :L0
    const/4 v0, 0
  .line 3
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:Ljava/util/List;
    return-void
.end method

.method c(I)V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:[I
    const/4 v1, -1
    if-nez v0, :L0
    const/16 v0, 10
  .line 2
    invoke-static { p1, v0 }, Ljava/lang/Math;->max(II)I
    move-result p1
    add-int/lit8 p1, p1, 1
    new-array p1, p1, [I
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:[I
  .line 3
    invoke-static { p1, v1 }, Ljava/util/Arrays;->fill([II)V
    goto :L1
  :L0
  .line 4
    array-length v2, v0
    if-lt p1, v2, :L1
  .line 5
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->o(I)I
    move-result p1
    new-array p1, p1, [I
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:[I
  .line 6
    array-length v2, v0
    const/4 v3, 0
    invoke-static { v0, v3, p1, v3, v2 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 7
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:[I
    array-length v0, v0
    array-length v2, p1
    invoke-static { p1, v0, v2, v1 }, Ljava/util/Arrays;->fill([IIII)V
  :L1
    return-void
.end method

.method d(I)I
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:Ljava/util/List;
    if-eqz v0, :L2
  .line 2
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    add-int/lit8 v0, v0, -1
  :L0
    if-ltz v0, :L2
  .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:Ljava/util/List;
    invoke-interface { v1, v0 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;
  .line 4
    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;->b:I
    if-lt v1, p1, :L1
  .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:Ljava/util/List;
    invoke-interface { v1, v0 }, Ljava/util/List;->remove(I)Ljava/lang/Object;
  :L1
    add-int/lit8 v0, v0, -1
    goto :L0
  :L2
  .line 6
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->h(I)I
    move-result p1
    return p1
.end method

.method public e(IIIZ)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;
  .registers 10
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:Ljava/util/List;
    const/4 v1, 0
    if-nez v0, :L0
    return-object v1
  :L0
  .line 2
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    const/4 v2, 0
  :L1
    if-ge v2, v0, :L5
  .line 3
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:Ljava/util/List;
    invoke-interface { v3, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;
  .line 4
    iget v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;->b:I
    if-lt v4, p2, :L2
    return-object v1
  :L2
    if-lt v4, p1, :L4
    if-eqz p3, :L3
  .line 5
    iget v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;->c:I
    if-eq v4, p3, :L3
    if-eqz p4, :L4
    iget-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;->e:Z
    if-eqz v4, :L4
  :L3
    return-object v3
  :L4
    add-int/lit8 v2, v2, 1
    goto :L1
  :L5
    return-object v1
.end method

.method public f(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:Ljava/util/List;
    const/4 v1, 0
    if-nez v0, :L0
    return-object v1
  :L0
  .line 2
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    add-int/lit8 v0, v0, -1
  :L1
    if-ltz v0, :L3
  .line 3
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:Ljava/util/List;
    invoke-interface { v2, v0 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;
  .line 4
    iget v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;->b:I
    if-ne v3, p1, :L2
    return-object v2
  :L2
    add-int/lit8 v0, v0, -1
    goto :L1
  :L3
    return-object v1
.end method

.method g(I)I
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:[I
    if-eqz v0, :L1
    array-length v1, v0
    if-lt p1, v1, :L0
    goto :L1
  :L0
  .line 2
    aget p1, v0, p1
    return p1
  :L1
    const/4 p1, -1
    return p1
.end method

.method h(I)I
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:[I
    const/4 v1, -1
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    array-length v0, v0
    if-lt p1, v0, :L1
    return v1
  :L1
  .line 3
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->i(I)I
    move-result v0
    if-ne v0, v1, :L2
  .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:[I
    array-length v2, v0
    invoke-static { v0, p1, v2, v1 }, Ljava/util/Arrays;->fill([IIII)V
  .line 5
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:[I
    array-length p1, p1
    return p1
  :L2
  .line 6
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:[I
    add-int/lit8 v0, v0, 1
    invoke-static { v2, p1, v0, v1 }, Ljava/util/Arrays;->fill([IIII)V
    return v0
.end method

.method j(II)V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:[I
    if-eqz v0, :L1
    array-length v0, v0
    if-lt p1, v0, :L0
    goto :L1
  :L0
    add-int v0, p1, p2
  .line 2
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c(I)V
  .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:[I
    array-length v2, v1
    sub-int/2addr v2, p1
    sub-int/2addr v2, p2
    invoke-static { v1, p1, v1, v0, v2 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 4
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:[I
    const/4 v2, -1
    invoke-static { v1, p1, v0, v2 }, Ljava/util/Arrays;->fill([IIII)V
  .line 5
    invoke-direct { p0, p1, p2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->l(II)V
  :L1
    return-void
.end method

.method k(II)V
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:[I
    if-eqz v0, :L1
    array-length v0, v0
    if-lt p1, v0, :L0
    goto :L1
  :L0
    add-int v0, p1, p2
  .line 2
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c(I)V
  .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:[I
    array-length v2, v1
    sub-int/2addr v2, p1
    sub-int/2addr v2, p2
    invoke-static { v1, v0, v1, p1, v2 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:[I
    array-length v1, v0
    sub-int/2addr v1, p2
    array-length v2, v0
    const/4 v3, -1
    invoke-static { v0, v1, v2, v3 }, Ljava/util/Arrays;->fill([IIII)V
  .line 5
    invoke-direct { p0, p1, p2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->m(II)V
  :L1
    return-void
.end method

.method n(ILandroidx/recyclerview/widget/StaggeredGridLayoutManager$f;)V
  .registers 4
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c(I)V
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:[I
    iget p2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->e:I
    aput p2, v0, p1
    return-void
.end method

.method o(I)I
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:[I
    array-length v0, v0
  :L0
    if-gt v0, p1, :L1
    mul-int/lit8 v0, v0, 2
    goto :L0
  :L1
    return v0
.end method
