.class Landroidx/recyclerview/widget/LinearLayoutManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/LinearLayoutManager;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "a"
.end annotation

.field a:Landroidx/recyclerview/widget/i;

.field b:I

.field c:I

.field d:Z

.field e:Z

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager$a;->e()V
    return-void
.end method

.method a()V
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z
    if-eqz v0, :L0
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/i;
  .line 2
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/i;->i()I
    move-result v0
    goto :L1
  :L0
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/i;
  .line 3
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/i;->m()I
    move-result v0
  :L1
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I
    return-void
.end method

.method public b(Landroid/view/View;I)V
  .registers 4
  .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/i;
    invoke-virtual { v0, p1 }, Landroidx/recyclerview/widget/i;->d(Landroid/view/View;)I
    move-result p1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/i;
  .line 3
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/i;->o()I
    move-result v0
    add-int/2addr p1, v0
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I
    goto :L1
  :L0
  .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/i;
    invoke-virtual { v0, p1 }, Landroidx/recyclerview/widget/i;->g(Landroid/view/View;)I
    move-result p1
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I
  :L1
  .line 5
    iput p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I
    return-void
.end method

.method public c(Landroid/view/View;I)V
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/i;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/i;->o()I
    move-result v0
    if-ltz v0, :L0
  .line 2
    invoke-virtual { p0, p1, p2 }, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b(Landroid/view/View;I)V
    return-void
  :L0
  .line 3
    iput p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I
  .line 4
    iget-boolean p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z
    const/4 v1, 0
    if-eqz p2, :L1
  .line 5
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/i;
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/i;->i()I
    move-result p2
    sub-int/2addr p2, v0
  .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/i;
    invoke-virtual { v0, p1 }, Landroidx/recyclerview/widget/i;->d(Landroid/view/View;)I
    move-result v0
    sub-int/2addr p2, v0
  .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/i;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/i;->i()I
    move-result v0
    sub-int/2addr v0, p2
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I
    if-lez p2, :L2
  .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/i;
    invoke-virtual { v0, p1 }, Landroidx/recyclerview/widget/i;->e(Landroid/view/View;)I
    move-result v0
  .line 9
    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I
    sub-int/2addr v2, v0
  .line 10
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/i;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/i;->m()I
    move-result v0
  .line 11
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/i;
    invoke-virtual { v3, p1 }, Landroidx/recyclerview/widget/i;->g(Landroid/view/View;)I
    move-result p1
    sub-int/2addr p1, v0
  .line 12
    invoke-static { p1, v1 }, Ljava/lang/Math;->min(II)I
    move-result p1
    add-int/2addr v0, p1
    sub-int/2addr v2, v0
    if-gez v2, :L2
  .line 13
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I
    neg-int v0, v2
    invoke-static { p2, v0 }, Ljava/lang/Math;->min(II)I
    move-result p2
    add-int/2addr p1, p2
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I
    goto :L2
  :L1
  .line 14
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/i;
    invoke-virtual { p2, p1 }, Landroidx/recyclerview/widget/i;->g(Landroid/view/View;)I
    move-result p2
  .line 15
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/i;
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/i;->m()I
    move-result v2
    sub-int v2, p2, v2
  .line 16
    iput p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I
    if-lez v2, :L2
  .line 17
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/i;
  .line 18
    invoke-virtual { v3, p1 }, Landroidx/recyclerview/widget/i;->e(Landroid/view/View;)I
    move-result v3
    add-int/2addr p2, v3
  .line 19
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/i;
    invoke-virtual { v3 }, Landroidx/recyclerview/widget/i;->i()I
    move-result v3
    sub-int/2addr v3, v0
  .line 20
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/i;
  .line 21
    invoke-virtual { v0, p1 }, Landroidx/recyclerview/widget/i;->d(Landroid/view/View;)I
    move-result p1
    sub-int/2addr v3, p1
  .line 22
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/i;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/i;->i()I
    move-result p1
  .line 23
    invoke-static { v1, v3 }, Ljava/lang/Math;->min(II)I
    move-result v0
    sub-int/2addr p1, v0
    sub-int/2addr p1, p2
    if-gez p1, :L2
  .line 24
    iget p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I
    neg-int p1, p1
    invoke-static { v2, p1 }, Ljava/lang/Math;->min(II)I
    move-result p1
    sub-int/2addr p2, p1
    iput p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I
  :L2
    return-void
.end method

.method d(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$z;)Z
  .registers 4
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p1
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$o;
  .line 2
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$o;->c()Z
    move-result v0
    if-nez v0, :L0
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$o;->a()I
    move-result v0
    if-ltz v0, :L0
  .line 3
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$o;->a()I
    move-result p1
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result p2
    if-ge p1, p2, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method e()V
  .registers 2
    const/4 v0, -1
  .line 1
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I
    const/high16 v0, -32768
  .line 2
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I
    const/4 v0, 0
  .line 3
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z
  .line 4
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->e:Z
    return-void
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "AnchorInfo{mPosition="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", mCoordinate="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", mLayoutFromEnd="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v1, ", mValid="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->e:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const/16 v1, 125
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
