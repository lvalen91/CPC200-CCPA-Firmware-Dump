.class public abstract Landroidx/recyclerview/widget/RecyclerView$f;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 1033
  name = "f"
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "<VH:",
    "Landroidx/recyclerview/widget/RecyclerView$c0;",
    ">",
    "Ljava/lang/Object;"
  }
.end annotation

.field private final a:Landroidx/recyclerview/widget/RecyclerView$g;

.field private b:Z

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$g;
    invoke-direct { v0 }, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView$g;
    const/4 v0, 0
  .line 3
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$f;->b:Z
    return-void
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TVH;I)V"
    }
  .end annotation
  .registers 5
  .line 1
    iput p2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->c:I
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$f;->g()Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    invoke-virtual { p0, p2 }, Landroidx/recyclerview/widget/RecyclerView$f;->d(I)J
    move-result-wide v0
    iput-wide v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->e:J
  :L0
    const/16 v0, 519
    const/4 v1, 1
  .line 4
    invoke-virtual { p1, v1, v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->F(II)V
    const-string v0, "RV OnBindView"
  .line 5
    invoke-static { v0 }, Lc/g/g/c;->a(Ljava/lang/String;)V
  .line 6
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->o()Ljava/util/List;
    move-result-object v0
    invoke-virtual { p0, p1, p2, v0 }, Landroidx/recyclerview/widget/RecyclerView$f;->k(Landroidx/recyclerview/widget/RecyclerView$c0;ILjava/util/List;)V
  .line 7
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->d()V
  .line 8
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p1
  .line 9
    instance-of p2, p1, Landroidx/recyclerview/widget/RecyclerView$o;
    if-eqz p2, :L1
  .line 10
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$o;
    iput-boolean v1, p1, Landroidx/recyclerview/widget/RecyclerView$o;->c:Z
  :L1
  .line 11
    invoke-static { }, Lc/g/g/c;->b()V
    return-void
.end method

.method public final b(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/view/ViewGroup;",
      "I)TVH;"
    }
  .end annotation
  .catchall { :L0 .. :L1 } :L3
  .catchall { :L2 .. :L3 } :L3
  .registers 4
  :L0
    const-string v0, "RV CreateView"
  .line 1
    invoke-static { v0 }, Lc/g/g/c;->a(Ljava/lang/String;)V
  .line 2
    invoke-virtual { p0, p1, p2 }, Landroidx/recyclerview/widget/RecyclerView$f;->l(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    move-result-object p1
  .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
    invoke-virtual { v0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    if-nez v0, :L2
  .line 4
    iput p2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->f:I
  :L1
  .line 5
    invoke-static { }, Lc/g/g/c;->b()V
    return-object p1
  :L2
  .line 6
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L3
    move-exception p1
  .line 7
    invoke-static { }, Lc/g/g/c;->b()V
  .line 8
    throw p1
.end method

.method public abstract c()I
.end method

.method public d(I)J
  .registers 4
    const-wide/16 v0, -1
    return-wide v0
.end method

.method public e(I)I
  .registers 2
    const/4 p1, 0
    return p1
.end method

.method public final f()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView$g;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$g;->a()Z
    move-result v0
    return v0
.end method

.method public final g()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$f;->b:Z
    return v0
.end method

.method public final h()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView$g;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$g;->b()V
    return-void
.end method

.method public i(Landroidx/recyclerview/widget/RecyclerView;)V
  .registers 2
    return-void
.end method

.method public abstract j(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TVH;I)V"
    }
  .end annotation
.end method

.method public k(Landroidx/recyclerview/widget/RecyclerView$c0;ILjava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TVH;I",
      "Ljava/util/List<",
      "Ljava/lang/Object;",
      ">;)V"
    }
  .end annotation
  .registers 4
  .line 1
    invoke-virtual { p0, p1, p2 }, Landroidx/recyclerview/widget/RecyclerView$f;->j(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    return-void
.end method

.method public abstract l(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/view/ViewGroup;",
      "I)TVH;"
    }
  .end annotation
.end method

.method public m(Landroidx/recyclerview/widget/RecyclerView;)V
  .registers 2
    return-void
.end method

.method public n(Landroidx/recyclerview/widget/RecyclerView$c0;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TVH;)Z"
    }
  .end annotation
  .registers 2
    const/4 p1, 0
    return p1
.end method

.method public o(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TVH;)V"
    }
  .end annotation
  .registers 2
    return-void
.end method

.method public p(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TVH;)V"
    }
  .end annotation
  .registers 2
    return-void
.end method

.method public q(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TVH;)V"
    }
  .end annotation
  .registers 2
    return-void
.end method

.method public r(Landroidx/recyclerview/widget/RecyclerView$h;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView$g;
    invoke-virtual { v0, p1 }, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V
    return-void
.end method

.method public s(Z)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$f;->f()Z
    move-result v0
    if-nez v0, :L0
  .line 2
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$f;->b:Z
    return-void
  :L0
  .line 3
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public t(Landroidx/recyclerview/widget/RecyclerView$h;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView$g;
    invoke-virtual { v0, p1 }, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V
    return-void
.end method
