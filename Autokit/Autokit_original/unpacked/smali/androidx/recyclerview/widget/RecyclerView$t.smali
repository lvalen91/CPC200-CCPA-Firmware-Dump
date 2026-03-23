.class public Landroidx/recyclerview/widget/RecyclerView$t;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "t"
.end annotation
.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/recyclerview/widget/RecyclerView$t$a;
  }
.end annotation

.field a:Landroid/util/SparseArray;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/util/SparseArray<",
      "Landroidx/recyclerview/widget/RecyclerView$t$a;",
      ">;"
    }
  .end annotation
.end field

.field private b:I

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Landroid/util/SparseArray;
    invoke-direct { v0 }, Landroid/util/SparseArray;-><init>()V
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$t;->a:Landroid/util/SparseArray;
    const/4 v0, 0
  .line 3
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$t;->b:I
    return-void
.end method

.method private g(I)Landroidx/recyclerview/widget/RecyclerView$t$a;
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$t;->a:Landroid/util/SparseArray;
    invoke-virtual { v0, p1 }, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$t$a;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$t$a;
    invoke-direct { v0 }, Landroidx/recyclerview/widget/RecyclerView$t$a;-><init>()V
  .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$t;->a:Landroid/util/SparseArray;
    invoke-virtual { v1, p1, v0 }, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
  :L0
    return-object v0
.end method

.method a()V
  .registers 2
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$t;->b:I
    add-int/lit8 v0, v0, 1
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$t;->b:I
    return-void
.end method

.method public b()V
  .registers 3
    const/4 v0, 0
  :L0
  .line 1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$t;->a:Landroid/util/SparseArray;
    invoke-virtual { v1 }, Landroid/util/SparseArray;->size()I
    move-result v1
    if-ge v0, v1, :L1
  .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$t;->a:Landroid/util/SparseArray;
    invoke-virtual { v1, v0 }, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$t$a;
  .line 3
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$t$a;->a:Ljava/util/ArrayList;
    invoke-virtual { v1 }, Ljava/util/ArrayList;->clear()V
    add-int/lit8 v0, v0, 1
    goto :L0
  :L1
    return-void
.end method

.method c()V
  .registers 2
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$t;->b:I
    add-int/lit8 v0, v0, -1
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$t;->b:I
    return-void
.end method

.method d(IJ)V
  .registers 6
  .line 1
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$t;->g(I)Landroidx/recyclerview/widget/RecyclerView$t$a;
    move-result-object p1
  .line 2
    iget-wide v0, p1, Landroidx/recyclerview/widget/RecyclerView$t$a;->d:J
    invoke-virtual { p0, v0, v1, p2, p3 }, Landroidx/recyclerview/widget/RecyclerView$t;->j(JJ)J
    move-result-wide p2
    iput-wide p2, p1, Landroidx/recyclerview/widget/RecyclerView$t$a;->d:J
    return-void
.end method

.method e(IJ)V
  .registers 6
  .line 1
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$t;->g(I)Landroidx/recyclerview/widget/RecyclerView$t$a;
    move-result-object p1
  .line 2
    iget-wide v0, p1, Landroidx/recyclerview/widget/RecyclerView$t$a;->c:J
    invoke-virtual { p0, v0, v1, p2, p3 }, Landroidx/recyclerview/widget/RecyclerView$t;->j(JJ)J
    move-result-wide p2
    iput-wide p2, p1, Landroidx/recyclerview/widget/RecyclerView$t$a;->c:J
    return-void
.end method

.method public f(I)Landroidx/recyclerview/widget/RecyclerView$c0;
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$t;->a:Landroid/util/SparseArray;
    invoke-virtual { v0, p1 }, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$t$a;
    if-eqz p1, :L2
  .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$t$a;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->isEmpty()Z
    move-result v0
    if-nez v0, :L2
  .line 3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$t$a;->a:Ljava/util/ArrayList;
  .line 4
    invoke-virtual { p1 }, Ljava/util/ArrayList;->size()I
    move-result v0
    add-int/lit8 v0, v0, -1
  :L0
    if-ltz v0, :L2
  .line 5
    invoke-virtual { p1, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$c0;
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->r()Z
    move-result v1
    if-nez v1, :L1
  .line 6
    invoke-virtual { p1, v0 }, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$c0;
    return-object p1
  :L1
    add-int/lit8 v0, v0, -1
    goto :L0
  :L2
    const/4 p1, 0
    return-object p1
.end method

.method h(Landroidx/recyclerview/widget/RecyclerView$f;Landroidx/recyclerview/widget/RecyclerView$f;Z)V
  .registers 4
    if-eqz p1, :L0
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$t;->c()V
  :L0
    if-nez p3, :L1
  .line 2
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$t;->b:I
    if-nez p1, :L1
  .line 3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$t;->b()V
  :L1
    if-eqz p2, :L2
  .line 4
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$t;->a()V
  :L2
    return-void
.end method

.method public i(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  .registers 5
  .line 1
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->l()I
    move-result v0
  .line 2
    invoke-direct { p0, v0 }, Landroidx/recyclerview/widget/RecyclerView$t;->g(I)Landroidx/recyclerview/widget/RecyclerView$t$a;
    move-result-object v1
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$t$a;->a:Ljava/util/ArrayList;
  .line 3
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$t;->a:Landroid/util/SparseArray;
    invoke-virtual { v2, v0 }, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$t$a;
    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$t$a;->b:I
    invoke-virtual { v1 }, Ljava/util/ArrayList;->size()I
    move-result v2
    if-gt v0, v2, :L0
    return-void
  :L0
  .line 4
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->D()V
  .line 5
    invoke-virtual { v1, p1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    return-void
.end method

.method j(JJ)J
  .registers 9
    const-wide/16 v0, 0
    cmp-long v2, p1, v0
    if-nez v2, :L0
    return-wide p3
  :L0
    const-wide/16 v0, 4
  .line 1
    div-long/2addr p1, v0
    const-wide/16 v2, 3
    mul-long p1, p1, v2
    div-long/2addr p3, v0
    add-long/2addr p1, p3
    return-wide p1
.end method

.method k(IJJ)Z
  .registers 10
  .line 1
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$t;->g(I)Landroidx/recyclerview/widget/RecyclerView$t$a;
    move-result-object p1
    iget-wide v0, p1, Landroidx/recyclerview/widget/RecyclerView$t$a;->d:J
    const-wide/16 v2, 0
    cmp-long p1, v0, v2
    if-eqz p1, :L1
    add-long/2addr p2, v0
    cmp-long p1, p2, p4
    if-gez p1, :L0
    goto :L1
  :L0
    const/4 p1, 0
    goto :L2
  :L1
    const/4 p1, 1
  :L2
    return p1
.end method

.method l(IJJ)Z
  .registers 10
  .line 1
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$t;->g(I)Landroidx/recyclerview/widget/RecyclerView$t$a;
    move-result-object p1
    iget-wide v0, p1, Landroidx/recyclerview/widget/RecyclerView$t$a;->c:J
    const-wide/16 v2, 0
    cmp-long p1, v0, v2
    if-eqz p1, :L1
    add-long/2addr p2, v0
    cmp-long p1, p2, p4
    if-gez p1, :L0
    goto :L1
  :L0
    const/4 p1, 0
    goto :L2
  :L1
    const/4 p1, 1
  :L2
    return p1
.end method
