.class public abstract Landroidx/recyclerview/widget/n;
.super Landroidx/recyclerview/widget/RecyclerView$q;
.source "SourceFile"

.field a:Landroidx/recyclerview/widget/RecyclerView;

.field private final b:Landroidx/recyclerview/widget/RecyclerView$s;

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Landroidx/recyclerview/widget/RecyclerView$q;-><init>()V
  .line 2
    new-instance v0, Landroidx/recyclerview/widget/n$a;
    invoke-direct { v0, p0 }, Landroidx/recyclerview/widget/n$a;-><init>(Landroidx/recyclerview/widget/n;)V
    iput-object v0, p0, Landroidx/recyclerview/widget/n;->b:Landroidx/recyclerview/widget/RecyclerView$s;
    return-void
.end method

.method private f()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/n;->a:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v1, p0, Landroidx/recyclerview/widget/n;->b:Landroidx/recyclerview/widget/RecyclerView$s;
    invoke-virtual { v0, v1 }, Landroidx/recyclerview/widget/RecyclerView;->X0(Landroidx/recyclerview/widget/RecyclerView$s;)V
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/n;->a:Landroidx/recyclerview/widget/RecyclerView;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$q;)V
    return-void
.end method

.method private i()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/n;->a:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView;->getOnFlingListener()Landroidx/recyclerview/widget/RecyclerView$q;
    move-result-object v0
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/n;->a:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v1, p0, Landroidx/recyclerview/widget/n;->b:Landroidx/recyclerview/widget/RecyclerView$s;
    invoke-virtual { v0, v1 }, Landroidx/recyclerview/widget/RecyclerView;->k(Landroidx/recyclerview/widget/RecyclerView$s;)V
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/n;->a:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0, p0 }, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$q;)V
    return-void
  :L0
  .line 4
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "An instance of OnFlingListener already set."
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method private j(Landroidx/recyclerview/widget/RecyclerView$n;II)Z
  .registers 6
  .line 1
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$y$b;
    const/4 v1, 0
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/n;->d(Landroidx/recyclerview/widget/RecyclerView$n;)Landroidx/recyclerview/widget/RecyclerView$y;
    move-result-object v0
    if-nez v0, :L1
    return v1
  :L1
  .line 3
    invoke-virtual { p0, p1, p2, p3 }, Landroidx/recyclerview/widget/n;->h(Landroidx/recyclerview/widget/RecyclerView$n;II)I
    move-result p2
    const/4 p3, -1
    if-ne p2, p3, :L2
    return v1
  :L2
  .line 4
    invoke-virtual { v0, p2 }, Landroidx/recyclerview/widget/RecyclerView$y;->p(I)V
  .line 5
    invoke-virtual { p1, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J1(Landroidx/recyclerview/widget/RecyclerView$y;)V
    const/4 p1, 1
    return p1
.end method

.method public a(II)Z
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/n;->a:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;
    move-result-object v0
    const/4 v1, 0
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    iget-object v2, p0, Landroidx/recyclerview/widget/n;->a:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$f;
    move-result-object v2
    if-nez v2, :L1
    return v1
  :L1
  .line 3
    iget-object v2, p0, Landroidx/recyclerview/widget/n;->a:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/RecyclerView;->getMinFlingVelocity()I
    move-result v2
  .line 4
    invoke-static { p2 }, Ljava/lang/Math;->abs(I)I
    move-result v3
    if-gt v3, v2, :L2
    invoke-static { p1 }, Ljava/lang/Math;->abs(I)I
    move-result v3
    if-le v3, v2, :L3
  :L2
  .line 5
    invoke-direct { p0, v0, p1, p2 }, Landroidx/recyclerview/widget/n;->j(Landroidx/recyclerview/widget/RecyclerView$n;II)Z
    move-result p1
    if-eqz p1, :L3
    const/4 v1, 1
  :L3
    return v1
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/n;->a:Landroidx/recyclerview/widget/RecyclerView;
    if-ne v0, p1, :L0
    return-void
  :L0
    if-eqz v0, :L1
  .line 2
    invoke-direct { p0 }, Landroidx/recyclerview/widget/n;->f()V
  :L1
  .line 3
    iput-object p1, p0, Landroidx/recyclerview/widget/n;->a:Landroidx/recyclerview/widget/RecyclerView;
    if-eqz p1, :L2
  .line 4
    invoke-direct { p0 }, Landroidx/recyclerview/widget/n;->i()V
  .line 5
    new-instance p1, Landroid/widget/Scroller;
    iget-object v0, p0, Landroidx/recyclerview/widget/n;->a:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v0
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;
    invoke-direct { v1 }, Landroid/view/animation/DecelerateInterpolator;-><init>()V
    invoke-direct { p1, v0, v1 }, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
  .line 6
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/n;->k()V
  :L2
    return-void
.end method

.method public abstract c(Landroidx/recyclerview/widget/RecyclerView$n;Landroid/view/View;)[I
.end method

.method protected d(Landroidx/recyclerview/widget/RecyclerView$n;)Landroidx/recyclerview/widget/RecyclerView$y;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/n;->e(Landroidx/recyclerview/widget/RecyclerView$n;)Landroidx/recyclerview/widget/g;
    move-result-object p1
    return-object p1
.end method

.method protected abstract e(Landroidx/recyclerview/widget/RecyclerView$n;)Landroidx/recyclerview/widget/g;
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
.end method

.method public abstract g(Landroidx/recyclerview/widget/RecyclerView$n;)Landroid/view/View;
.end method

.method public abstract h(Landroidx/recyclerview/widget/RecyclerView$n;II)I
.end method

.method k()V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/n;->a:Landroidx/recyclerview/widget/RecyclerView;
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;
    move-result-object v0
    if-nez v0, :L1
    return-void
  :L1
  .line 3
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/n;->g(Landroidx/recyclerview/widget/RecyclerView$n;)Landroid/view/View;
    move-result-object v1
    if-nez v1, :L2
    return-void
  :L2
  .line 4
    invoke-virtual { p0, v0, v1 }, Landroidx/recyclerview/widget/n;->c(Landroidx/recyclerview/widget/RecyclerView$n;Landroid/view/View;)[I
    move-result-object v0
    const/4 v1, 0
  .line 5
    aget v2, v0, v1
    const/4 v3, 1
    if-nez v2, :L3
    aget v2, v0, v3
    if-eqz v2, :L4
  :L3
  .line 6
    iget-object v2, p0, Landroidx/recyclerview/widget/n;->a:Landroidx/recyclerview/widget/RecyclerView;
    aget v1, v0, v1
    aget v0, v0, v3
    invoke-virtual { v2, v1, v0 }, Landroidx/recyclerview/widget/RecyclerView;->k1(II)V
  :L4
    return-void
.end method
