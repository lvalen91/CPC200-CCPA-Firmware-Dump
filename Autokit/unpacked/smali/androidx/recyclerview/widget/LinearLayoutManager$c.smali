.class Landroidx/recyclerview/widget/LinearLayoutManager$c;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/LinearLayoutManager;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "c"
.end annotation

.field a:Z

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:Z

.field k:I

.field l:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Landroidx/recyclerview/widget/RecyclerView$c0;",
      ">;"
    }
  .end annotation
.end field

.field m:Z

.method constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a:Z
    const/4 v0, 0
  .line 3
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I
  .line 4
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->i:I
    const/4 v0, 0
  .line 5
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->l:Ljava/util/List;
    return-void
.end method

.method private e()Landroid/view/View;
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->l:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L3
  .line 2
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->l:Ljava/util/List;
    invoke-interface { v2, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$c0;
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
  .line 3
    invoke-virtual { v2 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v3
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$o;
  .line 4
    invoke-virtual { v3 }, Landroidx/recyclerview/widget/RecyclerView$o;->c()Z
    move-result v4
    if-eqz v4, :L1
    goto :L2
  :L1
  .line 5
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I
    invoke-virtual { v3 }, Landroidx/recyclerview/widget/RecyclerView$o;->a()I
    move-result v3
    if-ne v4, v3, :L2
  .line 6
    invoke-virtual { p0, v2 }, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b(Landroid/view/View;)V
    return-object v2
  :L2
    add-int/lit8 v1, v1, 1
    goto :L0
  :L3
    const/4 v0, 0
    return-object v0
.end method

.method public a()V
  .registers 2
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b(Landroid/view/View;)V
    return-void
.end method

.method public b(Landroid/view/View;)V
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f(Landroid/view/View;)Landroid/view/View;
    move-result-object p1
    if-nez p1, :L0
    const/4 p1, -1
  .line 2
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I
    goto :L1
  :L0
  .line 3
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p1
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$o;
  .line 4
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$o;->a()I
    move-result p1
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I
  :L1
    return-void
.end method

.method c(Landroidx/recyclerview/widget/RecyclerView$z;)Z
  .registers 3
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I
    if-ltz v0, :L0
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result p1
    if-ge v0, p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method d(Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->l:Ljava/util/List;
    if-eqz v0, :L0
  .line 2
    invoke-direct { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e()Landroid/view/View;
    move-result-object p1
    return-object p1
  :L0
  .line 3
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I
    invoke-virtual { p1, v0 }, Landroidx/recyclerview/widget/RecyclerView$u;->o(I)Landroid/view/View;
    move-result-object p1
  .line 4
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I
    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I
    add-int/2addr v0, v1
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I
    return-object p1
.end method

.method public f(Landroid/view/View;)Landroid/view/View;
  .registers 9
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->l:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    const/4 v1, 0
    const v2, 2147483647
    const/4 v3, 0
  :L0
    if-ge v3, v0, :L5
  .line 2
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->l:Ljava/util/List;
    invoke-interface { v4, v3 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$c0;
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
  .line 3
    invoke-virtual { v4 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v5
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$o;
    if-eq v4, p1, :L4
  .line 4
    invoke-virtual { v5 }, Landroidx/recyclerview/widget/RecyclerView$o;->c()Z
    move-result v6
    if-eqz v6, :L1
    goto :L4
  :L1
  .line 5
    invoke-virtual { v5 }, Landroidx/recyclerview/widget/RecyclerView$o;->a()I
    move-result v5
    iget v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I
    sub-int/2addr v5, v6
    iget v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I
    mul-int v5, v5, v6
    if-gez v5, :L2
    goto :L4
  :L2
    if-ge v5, v2, :L4
    move-object v1, v4
    if-nez v5, :L3
    goto :L5
  :L3
    move v2, v5
  :L4
    add-int/lit8 v3, v3, 1
    goto :L0
  :L5
    return-object v1
.end method
