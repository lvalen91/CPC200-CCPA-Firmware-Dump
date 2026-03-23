.class Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = "f"
.end annotation

.field a:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;"
    }
  .end annotation
.end field

.field b:I

.field c:I

.field d:I

.field final e:I

.field final synthetic f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

.method constructor <init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance p1, Ljava/util/ArrayList;
    invoke-direct { p1 }, Ljava/util/ArrayList;-><init>()V
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;
    const/high16 p1, -32768
  .line 3
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->b:I
  .line 4
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->c:I
    const/4 p1, 0
  .line 5
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->d:I
  .line 6
    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->e:I
    return-void
.end method

.method a(Landroid/view/View;)V
  .registers 6
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->n(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;
    move-result-object v0
  .line 2
    iput-object p0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
  .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;
    invoke-virtual { v1, p1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    const/high16 v1, -32768
  .line 4
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->c:I
  .line 5
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;
    invoke-virtual { v2 }, Ljava/util/ArrayList;->size()I
    move-result v2
    const/4 v3, 1
    if-ne v2, v3, :L0
  .line 6
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->b:I
  :L0
  .line 7
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$o;->c()Z
    move-result v1
    if-nez v1, :L1
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$o;->b()Z
    move-result v0
    if-eqz v0, :L2
  :L1
  .line 8
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->d:I
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v1, p1 }, Landroidx/recyclerview/widget/i;->e(Landroid/view/View;)I
    move-result p1
    add-int/2addr v0, p1
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->d:I
  :L2
    return-void
.end method

.method b(ZI)V
  .registers 6
    const/high16 v0, -32768
    if-eqz p1, :L0
  .line 1
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->l(I)I
    move-result v1
    goto :L1
  :L0
  .line 2
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->p(I)I
    move-result v1
  :L1
  .line 3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->e()V
    if-ne v1, v0, :L2
    return-void
  :L2
    if-eqz p1, :L3
  .line 4
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/i;->i()I
    move-result v2
    if-lt v1, v2, :L4
  :L3
    if-nez p1, :L5
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    iget-object p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 5
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/i;->m()I
    move-result p1
    if-le v1, p1, :L5
  :L4
    return-void
  :L5
    if-eq p2, v0, :L6
    add-int/2addr v1, p2
  :L6
  .line 6
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->c:I
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->b:I
    return-void
.end method

.method c()V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v1
    const/4 v2, 1
    sub-int/2addr v1, v2
    invoke-virtual { v0, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/View;
  .line 2
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->n(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;
    move-result-object v1
  .line 3
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v3, v0 }, Landroidx/recyclerview/widget/i;->d(Landroid/view/View;)I
    move-result v0
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->c:I
  .line 4
    iget-boolean v0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f:Z
    if-eqz v0, :L0
  .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;
  .line 6
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/RecyclerView$o;->a()I
    move-result v1
    invoke-virtual { v0, v1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;
    move-result-object v0
    if-eqz v0, :L0
  .line 7
    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;->c:I
    if-ne v1, v2, :L0
  .line 8
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->c:I
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->e:I
    invoke-virtual { v0, v2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;->j(I)I
    move-result v0
    add-int/2addr v1, v0
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->c:I
  :L0
    return-void
.end method

.method d()V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/View;
  .line 2
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->n(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;
    move-result-object v1
  .line 3
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v2, v0 }, Landroidx/recyclerview/widget/i;->g(Landroid/view/View;)I
    move-result v0
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->b:I
  .line 4
    iget-boolean v0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f:Z
    if-eqz v0, :L0
  .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;
  .line 6
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/RecyclerView$o;->a()I
    move-result v1
    invoke-virtual { v0, v1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;
    move-result-object v0
    if-eqz v0, :L0
  .line 7
    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;->c:I
    const/4 v2, -1
    if-ne v1, v2, :L0
  .line 8
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->b:I
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->e:I
    invoke-virtual { v0, v2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;->j(I)I
    move-result v0
    sub-int/2addr v1, v0
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->b:I
  :L0
    return-void
.end method

.method e()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->clear()V
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->q()V
    const/4 v0, 0
  .line 3
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->d:I
    return-void
.end method

.method public f()I
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z
    const/4 v1, 1
    if-eqz v0, :L0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;
  .line 2
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    sub-int/2addr v0, v1
    const/4 v2, -1
    invoke-virtual { p0, v0, v2, v1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->i(IIZ)I
    move-result v0
    goto :L1
  :L0
    const/4 v0, 0
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;
  .line 3
    invoke-virtual { v2 }, Ljava/util/ArrayList;->size()I
    move-result v2
    invoke-virtual { p0, v0, v2, v1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->i(IIZ)I
    move-result v0
  :L1
    return v0
.end method

.method public g()I
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z
    const/4 v1, 1
    if-eqz v0, :L0
    const/4 v0, 0
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;
  .line 2
    invoke-virtual { v2 }, Ljava/util/ArrayList;->size()I
    move-result v2
    invoke-virtual { p0, v0, v2, v1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->i(IIZ)I
    move-result v0
    goto :L1
  :L0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;
  .line 3
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    sub-int/2addr v0, v1
    const/4 v2, -1
    invoke-virtual { p0, v0, v2, v1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->i(IIZ)I
    move-result v0
  :L1
    return v0
.end method

.method h(IIZZZ)I
  .registers 16
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/i;->m()I
    move-result v0
  .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/i;->i()I
    move-result v1
    const/4 v2, -1
    const/4 v3, 1
    if-le p2, p1, :L0
    const/4 v4, 1
    goto :L1
  :L0
    const/4 v4, -1
  :L1
    if-eq p1, p2, :L13
  .line 3
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;
    invoke-virtual { v5, p1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Landroid/view/View;
  .line 4
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v6, v5 }, Landroidx/recyclerview/widget/i;->g(Landroid/view/View;)I
    move-result v6
  .line 5
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v7, v5 }, Landroidx/recyclerview/widget/i;->d(Landroid/view/View;)I
    move-result v7
    const/4 v8, 0
    if-eqz p5, :L2
    if-gt v6, v1, :L4
    goto :L3
  :L2
    if-ge v6, v1, :L4
  :L3
    const/4 v9, 1
    goto :L5
  :L4
    const/4 v9, 0
  :L5
    if-eqz p5, :L6
    if-lt v7, v0, :L8
    goto :L7
  :L6
    if-le v7, v0, :L8
  :L7
    const/4 v8, 1
  :L8
    if-eqz v9, :L12
    if-eqz v8, :L12
    if-eqz p3, :L9
    if-eqz p4, :L9
    if-lt v6, v0, :L12
    if-gt v7, v1, :L12
  .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    invoke-virtual { p1, v5 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result p1
    return p1
  :L9
    if-eqz p4, :L10
  .line 7
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    invoke-virtual { p1, v5 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result p1
    return p1
  :L10
    if-lt v6, v0, :L11
    if-le v7, v1, :L12
  :L11
  .line 8
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    invoke-virtual { p1, v5 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result p1
    return p1
  :L12
    add-int/2addr p1, v4
    goto :L1
  :L13
    return v2
.end method

.method i(IIZ)I
  .registers 10
    const/4 v3, 0
    const/4 v4, 0
    move-object v0, p0
    move v1, p1
    move v2, p2
    move v5, p3
  .line 1
    invoke-virtual/range { v0 .. v5 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->h(IIZZZ)I
    move-result p1
    return p1
.end method

.method public j()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->d:I
    return v0
.end method

.method k()I
  .registers 3
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->c:I
    const/high16 v1, -32768
    if-eq v0, v1, :L0
    return v0
  :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->c()V
  .line 3
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->c:I
    return v0
.end method

.method l(I)I
  .registers 4
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->c:I
    const/high16 v1, -32768
    if-eq v0, v1, :L0
    return v0
  :L0
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    if-nez v0, :L1
    return p1
  :L1
  .line 3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->c()V
  .line 4
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->c:I
    return p1
.end method

.method public m(II)Landroid/view/View;
  .registers 8
    const/4 v0, -1
    const/4 v1, 0
    if-ne p2, v0, :L3
  .line 1
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;
    invoke-virtual { p2 }, Ljava/util/ArrayList;->size()I
    move-result p2
    const/4 v0, 0
  :L0
    if-ge v0, p2, :L7
  .line 2
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;
    invoke-virtual { v2, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroid/view/View;
  .line 3
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    iget-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z
    if-eqz v4, :L1
    invoke-virtual { v3, v2 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v3
    if-le v3, p1, :L7
  :L1
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    iget-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z
    if-nez v4, :L2
  .line 4
    invoke-virtual { v3, v2 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v3
    if-lt v3, p1, :L2
    goto :L7
  :L2
  .line 5
    invoke-virtual { v2 }, Landroid/view/View;->hasFocusable()Z
    move-result v3
    if-eqz v3, :L7
    add-int/lit8 v0, v0, 1
    move-object v1, v2
    goto :L0
  :L3
  .line 6
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;
    invoke-virtual { p2 }, Ljava/util/ArrayList;->size()I
    move-result p2
    add-int/lit8 p2, p2, -1
  :L4
    if-ltz p2, :L7
  .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;
    invoke-virtual { v0, p2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/View;
  .line 8
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    iget-boolean v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z
    if-eqz v3, :L5
    invoke-virtual { v2, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v2
    if-ge v2, p1, :L7
  :L5
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    iget-boolean v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z
    if-nez v3, :L6
  .line 9
    invoke-virtual { v2, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v2
    if-gt v2, p1, :L6
    goto :L7
  :L6
  .line 10
    invoke-virtual { v0 }, Landroid/view/View;->hasFocusable()Z
    move-result v2
    if-eqz v2, :L7
    add-int/lit8 p2, p2, -1
    move-object v1, v0
    goto :L4
  :L7
    return-object v1
.end method

.method n(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;
  .registers 2
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p1
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;
    return-object p1
.end method

.method o()I
  .registers 3
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->b:I
    const/high16 v1, -32768
    if-eq v0, v1, :L0
    return v0
  :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->d()V
  .line 3
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->b:I
    return v0
.end method

.method p(I)I
  .registers 4
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->b:I
    const/high16 v1, -32768
    if-eq v0, v1, :L0
    return v0
  :L0
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    if-nez v0, :L1
    return p1
  :L1
  .line 3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->d()V
  .line 4
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->b:I
    return p1
.end method

.method q()V
  .registers 2
    const/high16 v0, -32768
  .line 1
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->b:I
  .line 2
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->c:I
    return-void
.end method

.method r(I)V
  .registers 4
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->b:I
    const/high16 v1, -32768
    if-eq v0, v1, :L0
    add-int/2addr v0, p1
  .line 2
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->b:I
  :L0
  .line 3
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->c:I
    if-eq v0, v1, :L1
    add-int/2addr v0, p1
  .line 4
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->c:I
  :L1
    return-void
.end method

.method s()V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
  .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;
    add-int/lit8 v2, v0, -1
    invoke-virtual { v1, v2 }, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/view/View;
  .line 3
    invoke-virtual { p0, v1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->n(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;
    move-result-object v2
    const/4 v3, 0
  .line 4
    iput-object v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
  .line 5
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/RecyclerView$o;->c()Z
    move-result v3
    if-nez v3, :L0
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/RecyclerView$o;->b()Z
    move-result v2
    if-eqz v2, :L1
  :L0
  .line 6
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->d:I
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v3, v1 }, Landroidx/recyclerview/widget/i;->e(Landroid/view/View;)I
    move-result v1
    sub-int/2addr v2, v1
    iput v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->d:I
  :L1
    const/high16 v1, -32768
    const/4 v2, 1
    if-ne v0, v2, :L2
  .line 7
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->b:I
  :L2
  .line 8
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->c:I
    return-void
.end method

.method t()V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/View;
  .line 2
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->n(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;
    move-result-object v1
    const/4 v2, 0
  .line 3
    iput-object v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
  .line 4
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;
    invoke-virtual { v2 }, Ljava/util/ArrayList;->size()I
    move-result v2
    const/high16 v3, -32768
    if-nez v2, :L0
  .line 5
    iput v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->c:I
  :L0
  .line 6
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/RecyclerView$o;->c()Z
    move-result v2
    if-nez v2, :L1
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/RecyclerView$o;->b()Z
    move-result v1
    if-eqz v1, :L2
  :L1
  .line 7
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->d:I
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v2, v0 }, Landroidx/recyclerview/widget/i;->e(Landroid/view/View;)I
    move-result v0
    sub-int/2addr v1, v0
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->d:I
  :L2
  .line 8
    iput v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->b:I
    return-void
.end method

.method u(Landroid/view/View;)V
  .registers 6
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->n(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;
    move-result-object v0
  .line 2
    iput-object p0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
  .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;
    const/4 v2, 0
    invoke-virtual { v1, v2, p1 }, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    const/high16 v1, -32768
  .line 4
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->b:I
  .line 5
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;
    invoke-virtual { v2 }, Ljava/util/ArrayList;->size()I
    move-result v2
    const/4 v3, 1
    if-ne v2, v3, :L0
  .line 6
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->c:I
  :L0
  .line 7
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$o;->c()Z
    move-result v1
    if-nez v1, :L1
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$o;->b()Z
    move-result v0
    if-eqz v0, :L2
  :L1
  .line 8
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->d:I
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v1, p1 }, Landroidx/recyclerview/widget/i;->e(Landroid/view/View;)I
    move-result p1
    add-int/2addr v0, p1
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->d:I
  :L2
    return-void
.end method

.method v(I)V
  .registers 2
  .line 1
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->b:I
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->c:I
    return-void
.end method
