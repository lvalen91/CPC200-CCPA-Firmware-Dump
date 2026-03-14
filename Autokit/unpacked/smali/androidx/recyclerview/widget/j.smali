.class public Landroidx/recyclerview/widget/j;
.super Landroidx/recyclerview/widget/n;
.source "SourceFile"

.field private c:Landroidx/recyclerview/widget/i;

.field private d:Landroidx/recyclerview/widget/i;

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Landroidx/recyclerview/widget/n;-><init>()V
    return-void
.end method

.method private l(Landroidx/recyclerview/widget/RecyclerView$n;Landroid/view/View;Landroidx/recyclerview/widget/i;)I
  .registers 4
  .line 1
    invoke-virtual { p3, p2 }, Landroidx/recyclerview/widget/i;->g(Landroid/view/View;)I
    move-result p1
  .line 2
    invoke-virtual { p3, p2 }, Landroidx/recyclerview/widget/i;->e(Landroid/view/View;)I
    move-result p2
    div-int/lit8 p2, p2, 2
    add-int/2addr p1, p2
  .line 3
    invoke-virtual { p3 }, Landroidx/recyclerview/widget/i;->m()I
    move-result p2
    invoke-virtual { p3 }, Landroidx/recyclerview/widget/i;->n()I
    move-result p3
    div-int/lit8 p3, p3, 2
    add-int/2addr p2, p3
    sub-int/2addr p1, p2
    return p1
.end method

.method private m(Landroidx/recyclerview/widget/RecyclerView$n;Landroidx/recyclerview/widget/i;)Landroid/view/View;
  .registers 11
  .line 1
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    const/4 v1, 0
    if-nez v0, :L0
    return-object v1
  :L0
  .line 2
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/i;->m()I
    move-result v2
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/i;->n()I
    move-result v3
    div-int/lit8 v3, v3, 2
    add-int/2addr v2, v3
    const v3, 2147483647
    const/4 v4, 0
  :L1
    if-ge v4, v0, :L3
  .line 3
    invoke-virtual { p1, v4 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v5
  .line 4
    invoke-virtual { p2, v5 }, Landroidx/recyclerview/widget/i;->g(Landroid/view/View;)I
    move-result v6
  .line 5
    invoke-virtual { p2, v5 }, Landroidx/recyclerview/widget/i;->e(Landroid/view/View;)I
    move-result v7
    div-int/lit8 v7, v7, 2
    add-int/2addr v6, v7
    sub-int/2addr v6, v2
  .line 6
    invoke-static { v6 }, Ljava/lang/Math;->abs(I)I
    move-result v6
    if-ge v6, v3, :L2
    move-object v1, v5
    move v3, v6
  :L2
    add-int/lit8 v4, v4, 1
    goto :L1
  :L3
    return-object v1
.end method

.method private n(Landroidx/recyclerview/widget/RecyclerView$n;)Landroidx/recyclerview/widget/i;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/j;->d:Landroidx/recyclerview/widget/i;
    if-eqz v0, :L0
    iget-object v0, v0, Landroidx/recyclerview/widget/i;->a:Landroidx/recyclerview/widget/RecyclerView$n;
    if-eq v0, p1, :L1
  :L0
  .line 2
    invoke-static { p1 }, Landroidx/recyclerview/widget/i;->a(Landroidx/recyclerview/widget/RecyclerView$n;)Landroidx/recyclerview/widget/i;
    move-result-object p1
    iput-object p1, p0, Landroidx/recyclerview/widget/j;->d:Landroidx/recyclerview/widget/i;
  :L1
  .line 3
    iget-object p1, p0, Landroidx/recyclerview/widget/j;->d:Landroidx/recyclerview/widget/i;
    return-object p1
.end method

.method private o(Landroidx/recyclerview/widget/RecyclerView$n;)Landroidx/recyclerview/widget/i;
  .registers 3
  .line 1
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->l()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/j;->p(Landroidx/recyclerview/widget/RecyclerView$n;)Landroidx/recyclerview/widget/i;
    move-result-object p1
    return-object p1
  :L0
  .line 3
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->k()Z
    move-result v0
    if-eqz v0, :L1
  .line 4
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/j;->n(Landroidx/recyclerview/widget/RecyclerView$n;)Landroidx/recyclerview/widget/i;
    move-result-object p1
    return-object p1
  :L1
    const/4 p1, 0
    return-object p1
.end method

.method private p(Landroidx/recyclerview/widget/RecyclerView$n;)Landroidx/recyclerview/widget/i;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/j;->c:Landroidx/recyclerview/widget/i;
    if-eqz v0, :L0
    iget-object v0, v0, Landroidx/recyclerview/widget/i;->a:Landroidx/recyclerview/widget/RecyclerView$n;
    if-eq v0, p1, :L1
  :L0
  .line 2
    invoke-static { p1 }, Landroidx/recyclerview/widget/i;->c(Landroidx/recyclerview/widget/RecyclerView$n;)Landroidx/recyclerview/widget/i;
    move-result-object p1
    iput-object p1, p0, Landroidx/recyclerview/widget/j;->c:Landroidx/recyclerview/widget/i;
  :L1
  .line 3
    iget-object p1, p0, Landroidx/recyclerview/widget/j;->c:Landroidx/recyclerview/widget/i;
    return-object p1
.end method

.method private q(Landroidx/recyclerview/widget/RecyclerView$n;II)Z
  .registers 6
  .line 1
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->k()Z
    move-result p1
    const/4 v0, 1
    const/4 v1, 0
    if-eqz p1, :L2
    if-lez p2, :L0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
  :L2
    if-lez p3, :L3
    goto :L4
  :L3
    const/4 v0, 0
  :L4
    return v0
.end method

.method private r(Landroidx/recyclerview/widget/RecyclerView$n;)Z
  .registers 6
  .line 1
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->Y()I
    move-result v0
  .line 2
    instance-of v1, p1, Landroidx/recyclerview/widget/RecyclerView$y$b;
    const/4 v2, 0
    if-eqz v1, :L1
  .line 3
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$y$b;
    const/4 v1, 1
    sub-int/2addr v0, v1
  .line 4
    invoke-interface { p1, v0 }, Landroidx/recyclerview/widget/RecyclerView$y$b;->a(I)Landroid/graphics/PointF;
    move-result-object p1
    if-eqz p1, :L1
  .line 5
    iget v0, p1, Landroid/graphics/PointF;->x:F
    const/4 v3, 0
    cmpg-float v0, v0, v3
    if-ltz v0, :L0
    iget p1, p1, Landroid/graphics/PointF;->y:F
    cmpg-float p1, p1, v3
    if-gez p1, :L1
  :L0
    const/4 v2, 1
  :L1
    return v2
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$n;Landroid/view/View;)[I
  .registers 7
    const/4 v0, 2
    new-array v0, v0, [I
  .line 1
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->k()Z
    move-result v1
    const/4 v2, 0
    if-eqz v1, :L0
  .line 2
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/j;->n(Landroidx/recyclerview/widget/RecyclerView$n;)Landroidx/recyclerview/widget/i;
    move-result-object v1
  .line 3
    invoke-direct { p0, p1, p2, v1 }, Landroidx/recyclerview/widget/j;->l(Landroidx/recyclerview/widget/RecyclerView$n;Landroid/view/View;Landroidx/recyclerview/widget/i;)I
    move-result v1
    aput v1, v0, v2
    goto :L1
  :L0
    aput v2, v0, v2
  :L1
  .line 4
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->l()Z
    move-result v1
    const/4 v3, 1
    if-eqz v1, :L2
  .line 5
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/j;->p(Landroidx/recyclerview/widget/RecyclerView$n;)Landroidx/recyclerview/widget/i;
    move-result-object v1
  .line 6
    invoke-direct { p0, p1, p2, v1 }, Landroidx/recyclerview/widget/j;->l(Landroidx/recyclerview/widget/RecyclerView$n;Landroid/view/View;Landroidx/recyclerview/widget/i;)I
    move-result p1
    aput p1, v0, v3
    goto :L3
  :L2
    aput v2, v0, v3
  :L3
    return-object v0
.end method

.method protected e(Landroidx/recyclerview/widget/RecyclerView$n;)Landroidx/recyclerview/widget/g;
  .registers 3
  .line 1
    instance-of p1, p1, Landroidx/recyclerview/widget/RecyclerView$y$b;
    if-nez p1, :L0
    const/4 p1, 0
    return-object p1
  :L0
  .line 2
    new-instance p1, Landroidx/recyclerview/widget/j$a;
    iget-object v0, p0, Landroidx/recyclerview/widget/n;->a:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-direct { p1, p0, v0 }, Landroidx/recyclerview/widget/j$a;-><init>(Landroidx/recyclerview/widget/j;Landroid/content/Context;)V
    return-object p1
.end method

.method public g(Landroidx/recyclerview/widget/RecyclerView$n;)Landroid/view/View;
  .registers 3
  .line 1
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->l()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/j;->p(Landroidx/recyclerview/widget/RecyclerView$n;)Landroidx/recyclerview/widget/i;
    move-result-object v0
    invoke-direct { p0, p1, v0 }, Landroidx/recyclerview/widget/j;->m(Landroidx/recyclerview/widget/RecyclerView$n;Landroidx/recyclerview/widget/i;)Landroid/view/View;
    move-result-object p1
    return-object p1
  :L0
  .line 3
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->k()Z
    move-result v0
    if-eqz v0, :L1
  .line 4
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/j;->n(Landroidx/recyclerview/widget/RecyclerView$n;)Landroidx/recyclerview/widget/i;
    move-result-object v0
    invoke-direct { p0, p1, v0 }, Landroidx/recyclerview/widget/j;->m(Landroidx/recyclerview/widget/RecyclerView$n;Landroidx/recyclerview/widget/i;)Landroid/view/View;
    move-result-object p1
    return-object p1
  :L1
    const/4 p1, 0
    return-object p1
.end method

.method public h(Landroidx/recyclerview/widget/RecyclerView$n;II)I
  .registers 15
  .line 1
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->Y()I
    move-result v0
    const/4 v1, -1
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/j;->o(Landroidx/recyclerview/widget/RecyclerView$n;)Landroidx/recyclerview/widget/i;
    move-result-object v2
    if-nez v2, :L1
    return v1
  :L1
    const/high16 v3, -32768
    const v4, 2147483647
  .line 3
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v5
    const/4 v6, 0
    const/4 v7, 0
    move-object v8, v7
  :L2
    if-ge v6, v5, :L6
  .line 4
    invoke-virtual { p1, v6 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v9
    if-nez v9, :L3
    goto :L5
  :L3
  .line 5
    invoke-direct { p0, p1, v9, v2 }, Landroidx/recyclerview/widget/j;->l(Landroidx/recyclerview/widget/RecyclerView$n;Landroid/view/View;Landroidx/recyclerview/widget/i;)I
    move-result v10
    if-gtz v10, :L4
    if-le v10, v3, :L4
    move-object v8, v9
    move v3, v10
  :L4
    if-ltz v10, :L5
    if-ge v10, v4, :L5
    move-object v7, v9
    move v4, v10
  :L5
    add-int/lit8 v6, v6, 1
    goto :L2
  :L6
  .line 6
    invoke-direct { p0, p1, p2, p3 }, Landroidx/recyclerview/widget/j;->q(Landroidx/recyclerview/widget/RecyclerView$n;II)Z
    move-result p2
    if-eqz p2, :L7
    if-eqz v7, :L7
  .line 7
    invoke-virtual { p1, v7 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result p1
    return p1
  :L7
    if-nez p2, :L8
    if-eqz v8, :L8
  .line 8
    invoke-virtual { p1, v8 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result p1
    return p1
  :L8
    if-eqz p2, :L9
    move-object v7, v8
  :L9
    if-nez v7, :L10
    return v1
  :L10
  .line 9
    invoke-virtual { p1, v7 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result p3
  .line 10
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/j;->r(Landroidx/recyclerview/widget/RecyclerView$n;)Z
    move-result p1
    if-ne p1, p2, :L11
    const/4 p1, -1
    goto :L12
  :L11
    const/4 p1, 1
  :L12
    add-int/2addr p3, p1
    if-ltz p3, :L14
    if-lt p3, v0, :L13
    goto :L14
  :L13
    return p3
  :L14
    return v1
.end method
