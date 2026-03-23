.class public final Landroidx/recyclerview/widget/RecyclerView$u;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 17
  name = "u"
.end annotation

.field final a:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Landroidx/recyclerview/widget/RecyclerView$c0;",
      ">;"
    }
  .end annotation
.end field

.field b:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Landroidx/recyclerview/widget/RecyclerView$c0;",
      ">;"
    }
  .end annotation
.end field

.field final c:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Landroidx/recyclerview/widget/RecyclerView$c0;",
      ">;"
    }
  .end annotation
.end field

.field private final d:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Landroidx/recyclerview/widget/RecyclerView$c0;",
      ">;"
    }
  .end annotation
.end field

.field private e:I

.field f:I

.field g:Landroidx/recyclerview/widget/RecyclerView$t;

.field private h:Landroidx/recyclerview/widget/RecyclerView$a0;

.field final synthetic i:Landroidx/recyclerview/widget/RecyclerView;

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance p1, Ljava/util/ArrayList;
    invoke-direct { p1 }, Ljava/util/ArrayList;-><init>()V
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;
    const/4 p1, 0
  .line 3
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->b:Ljava/util/ArrayList;
  .line 4
    new-instance p1, Ljava/util/ArrayList;
    invoke-direct { p1 }, Ljava/util/ArrayList;-><init>()V
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;
  .line 5
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;
  .line 6
    invoke-static { p1 }, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    move-result-object p1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->d:Ljava/util/List;
    const/4 p1, 2
  .line 7
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->e:I
  .line 8
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->f:I
    return-void
.end method

.method private H(Landroidx/recyclerview/widget/RecyclerView$c0;IIJ)Z
  .registers 15
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->r:Landroidx/recyclerview/widget/RecyclerView;
  .line 2
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->l()I
    move-result v2
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J
    move-result-wide v7
    const-wide v0, 9223372036854775807L
    cmp-long v3, p4, v0
    if-eqz v3, :L0
  .line 4
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->g:Landroidx/recyclerview/widget/RecyclerView$t;
    move-wide v3, v7
    move-wide v5, p4
  .line 5
    invoke-virtual/range { v1 .. v6 }, Landroidx/recyclerview/widget/RecyclerView$t;->k(IJJ)Z
    move-result p4
    if-nez p4, :L0
    const/4 p1, 0
    return p1
  :L0
  .line 6
    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object p4, p4, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$f;
    invoke-virtual { p4, p1, p2 }, Landroidx/recyclerview/widget/RecyclerView$f;->a(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
  .line 7
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J
    move-result-wide p4
  .line 8
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$u;->g:Landroidx/recyclerview/widget/RecyclerView$t;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->l()I
    move-result v0
    sub-long/2addr p4, v7
    invoke-virtual { p2, v0, p4, p5 }, Landroidx/recyclerview/widget/RecyclerView$t;->d(IJ)V
  .line 9
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$u;->b(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  .line 10
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$z;
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/RecyclerView$z;->e()Z
    move-result p2
    if-eqz p2, :L1
  .line 11
    iput p3, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->g:I
  :L1
    const/4 p1, 1
    return p1
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView;->s0()Z
    move-result v0
    if-eqz v0, :L3
  .line 2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
  .line 3
    invoke-static { p1 }, Landroidx/core/view/v;->A(Landroid/view/View;)I
    move-result v0
    if-nez v0, :L0
    const/4 v0, 1
  .line 4
    invoke-static { p1, v0 }, Landroidx/core/view/v;->x0(Landroid/view/View;I)V
  :L0
  .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->o0:Landroidx/recyclerview/widget/k;
    if-nez v0, :L1
    return-void
  :L1
  .line 6
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/k;->n()Landroidx/core/view/a;
    move-result-object v0
  .line 7
    instance-of v1, v0, Landroidx/recyclerview/widget/k$a;
    if-eqz v1, :L2
  .line 8
    move-object v1, v0
    check-cast v1, Landroidx/recyclerview/widget/k$a;
  .line 9
    invoke-virtual { v1, p1 }, Landroidx/recyclerview/widget/k$a;->o(Landroid/view/View;)V
  :L2
  .line 10
    invoke-static { p1, v0 }, Landroidx/core/view/v;->o0(Landroid/view/View;Landroidx/core/view/a;)V
  :L3
    return-void
.end method

.method private q(Landroid/view/ViewGroup;Z)V
  .registers 7
  .line 1
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v0
    const/4 v1, 1
    sub-int/2addr v0, v1
  :L0
    if-ltz v0, :L2
  .line 2
    invoke-virtual { p1, v0 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v2
  .line 3
    instance-of v3, v2, Landroid/view/ViewGroup;
    if-eqz v3, :L1
  .line 4
    check-cast v2, Landroid/view/ViewGroup;
    invoke-direct { p0, v2, v1 }, Landroidx/recyclerview/widget/RecyclerView$u;->q(Landroid/view/ViewGroup;Z)V
  :L1
    add-int/lit8 v0, v0, -1
    goto :L0
  :L2
    if-nez p2, :L3
    return-void
  :L3
  .line 5
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getVisibility()I
    move-result p2
    const/4 v0, 4
    if-ne p2, v0, :L4
    const/4 p2, 0
  .line 6
    invoke-virtual { p1, p2 }, Landroid/view/ViewGroup;->setVisibility(I)V
  .line 7
    invoke-virtual { p1, v0 }, Landroid/view/ViewGroup;->setVisibility(I)V
    goto :L5
  :L4
  .line 8
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getVisibility()I
    move-result p2
  .line 9
    invoke-virtual { p1, v0 }, Landroid/view/ViewGroup;->setVisibility(I)V
  .line 10
    invoke-virtual { p1, p2 }, Landroid/view/ViewGroup;->setVisibility(I)V
  :L5
    return-void
.end method

.method private r(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  .registers 3
  .line 1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
    instance-of v0, p1, Landroid/view/ViewGroup;
    if-eqz v0, :L0
  .line 2
    check-cast p1, Landroid/view/ViewGroup;
    const/4 v0, 0
    invoke-direct { p0, p1, v0 }, Landroidx/recyclerview/widget/RecyclerView$u;->q(Landroid/view/ViewGroup;Z)V
  :L0
    return-void
.end method

.method A(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$c0;
    const/4 v1, 1
  .line 2
    invoke-virtual { p0, v0, v1 }, Landroidx/recyclerview/widget/RecyclerView$u;->a(Landroidx/recyclerview/widget/RecyclerView$c0;Z)V
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    return-void
.end method

.method public B(Landroid/view/View;)V
  .registers 5
  .line 1
    invoke-static { p1 }, Landroidx/recyclerview/widget/RecyclerView;->f0(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$c0;
    move-result-object v0
  .line 2
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->x()Z
    move-result v1
    if-eqz v1, :L0
  .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    const/4 v2, 0
    invoke-virtual { v1, p1, v2 }, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V
  :L0
  .line 4
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->w()Z
    move-result p1
    if-eqz p1, :L1
  .line 5
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->K()V
    goto :L2
  :L1
  .line 6
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->L()Z
    move-result p1
    if-eqz p1, :L2
  .line 7
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->e()V
  :L2
  .line 8
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/RecyclerView$u;->C(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  .line 9
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->M:Landroidx/recyclerview/widget/RecyclerView$k;
    if-eqz p1, :L3
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->u()Z
    move-result p1
    if-nez p1, :L3
  .line 10
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->M:Landroidx/recyclerview/widget/RecyclerView$k;
    invoke-virtual { p1, v0 }, Landroidx/recyclerview/widget/RecyclerView$k;->j(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  :L3
    return-void
.end method

.method C(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  .registers 8
  .line 1
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->w()Z
    move-result v0
    const/4 v1, 0
    const/4 v2, 1
    if-nez v0, :L17
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
    invoke-virtual { v0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    if-eqz v0, :L0
    goto/16 :L17
  :L0
  .line 2
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->x()Z
    move-result v0
    if-nez v0, :L16
  .line 3
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->J()Z
    move-result v0
    if-nez v0, :L15
  .line 4
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->h()Z
    move-result v0
  .line 5
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$f;
    if-eqz v3, :L1
    if-eqz v0, :L1
  .line 6
    invoke-virtual { v3, p1 }, Landroidx/recyclerview/widget/RecyclerView$f;->n(Landroidx/recyclerview/widget/RecyclerView$c0;)Z
    move-result v3
    if-eqz v3, :L1
    const/4 v3, 1
    goto :L2
  :L1
    const/4 v3, 0
  :L2
    if-nez v3, :L4
  .line 7
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->u()Z
    move-result v3
    if-eqz v3, :L3
    goto :L4
  :L3
    const/4 v2, 0
    goto :L13
  :L4
  .line 8
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$u;->f:I
    if-lez v3, :L10
    const/16 v3, 526
  .line 9
    invoke-virtual { p1, v3 }, Landroidx/recyclerview/widget/RecyclerView$c0;->p(I)Z
    move-result v3
    if-nez v3, :L10
  .line 10
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;
    invoke-virtual { v3 }, Ljava/util/ArrayList;->size()I
    move-result v3
  .line 11
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView$u;->f:I
    if-lt v3, v4, :L5
    if-lez v3, :L5
  .line 12
    invoke-virtual { p0, v1 }, Landroidx/recyclerview/widget/RecyclerView$u;->A(I)V
    add-int/lit8 v3, v3, -1
  :L5
  .line 13
    sget-boolean v4, Landroidx/recyclerview/widget/RecyclerView;->B0:Z
    if-eqz v4, :L9
    if-lez v3, :L9
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/e$b;
    iget v5, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->c:I
  .line 14
    invoke-virtual { v4, v5 }, Landroidx/recyclerview/widget/e$b;->d(I)Z
    move-result v4
    if-nez v4, :L9
    add-int/lit8 v3, v3, -1
  :L6
    if-ltz v3, :L8
  .line 15
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;
    invoke-virtual { v4, v3 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$c0;
    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$c0;->c:I
  .line 16
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/e$b;
    invoke-virtual { v5, v4 }, Landroidx/recyclerview/widget/e$b;->d(I)Z
    move-result v4
    if-nez v4, :L7
    goto :L8
  :L7
    add-int/lit8 v3, v3, -1
    goto :L6
  :L8
    add-int/2addr v3, v2
  :L9
  .line 17
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;
    invoke-virtual { v4, v3, p1 }, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    const/4 v3, 1
    goto :L11
  :L10
    const/4 v3, 0
  :L11
    if-nez v3, :L12
  .line 18
    invoke-virtual { p0, p1, v2 }, Landroidx/recyclerview/widget/RecyclerView$u;->a(Landroidx/recyclerview/widget/RecyclerView$c0;Z)V
    move v1, v3
    goto :L13
  :L12
    move v1, v3
    goto :L3
  :L13
  .line 19
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/p;
    invoke-virtual { v3, p1 }, Landroidx/recyclerview/widget/p;->q(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    if-nez v1, :L14
    if-nez v2, :L14
    if-eqz v0, :L14
    const/4 v0, 0
  .line 20
    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->r:Landroidx/recyclerview/widget/RecyclerView;
  :L14
    return-void
  :L15
  .line 21
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
  .line 22
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/RecyclerView;->P()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L16
  .line 23
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
  .line 24
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView;->P()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L17
  .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 26
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->w()Z
    move-result v4
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v4, " isAttached:"
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
  .line 27
    invoke-virtual { p1 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object p1
    if-eqz p1, :L18
    const/4 v1, 1
  :L18
    invoke-virtual { v3, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView;->P()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    goto :L20
  :L19
    throw v0
  :L20
    goto :L19
.end method

.method D(Landroid/view/View;)V
  .registers 4
  .line 1
    invoke-static { p1 }, Landroidx/recyclerview/widget/RecyclerView;->f0(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$c0;
    move-result-object p1
    const/16 v0, 12
  .line 2
    invoke-virtual { p1, v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->p(I)Z
    move-result v0
    if-nez v0, :L2
  .line 3
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->y()Z
    move-result v0
    if-eqz v0, :L2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0, p1 }, Landroidx/recyclerview/widget/RecyclerView;->p(Landroidx/recyclerview/widget/RecyclerView$c0;)Z
    move-result v0
    if-eqz v0, :L0
    goto :L2
  :L0
  .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->b:Ljava/util/ArrayList;
    if-nez v0, :L1
  .line 5
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->b:Ljava/util/ArrayList;
  :L1
    const/4 v0, 1
  .line 6
    invoke-virtual { p1, p0, v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->H(Landroidx/recyclerview/widget/RecyclerView$u;Z)V
  .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->b:Ljava/util/ArrayList;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :L5
  :L2
  .line 8
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->t()Z
    move-result v0
    if-eqz v0, :L4
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->v()Z
    move-result v0
    if-nez v0, :L4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$f;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$f;->g()Z
    move-result v0
    if-eqz v0, :L3
    goto :L4
  :L3
  .line 9
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
  .line 10
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/RecyclerView;->P()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L4
    const/4 v0, 0
  .line 11
    invoke-virtual { p1, p0, v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->H(Landroidx/recyclerview/widget/RecyclerView$u;Z)V
  .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L5
    return-void
.end method

.method E(Landroidx/recyclerview/widget/RecyclerView$t;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->g:Landroidx/recyclerview/widget/RecyclerView$t;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$t;->c()V
  :L0
  .line 3
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->g:Landroidx/recyclerview/widget/RecyclerView$t;
    if-eqz p1, :L1
  .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$f;
    move-result-object p1
    if-eqz p1, :L1
  .line 5
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->g:Landroidx/recyclerview/widget/RecyclerView$t;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$t;->a()V
  :L1
    return-void
.end method

.method F(Landroidx/recyclerview/widget/RecyclerView$a0;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView$a0;
    return-void
.end method

.method public G(I)V
  .registers 2
  .line 1
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->e:I
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$u;->K()V
    return-void
.end method

.method I(IZJ)Landroidx/recyclerview/widget/RecyclerView$c0;
  .registers 21
    move-object/from16 v6, p0
    move/from16 v3, p1
    move/from16 v0, p2
    if-ltz v3, :L29
  .line 1
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$z;
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result v1
    if-ge v3, v1, :L29
  .line 2
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$z;
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/RecyclerView$z;->e()Z
    move-result v1
    const/4 v2, 0
    const/4 v7, 1
    const/4 v8, 0
    if-eqz v1, :L0
  .line 3
    invoke-virtual/range { p0 .. p1 }, Landroidx/recyclerview/widget/RecyclerView$u;->h(I)Landroidx/recyclerview/widget/RecyclerView$c0;
    move-result-object v1
    if-eqz v1, :L1
    const/4 v4, 1
    goto :L2
  :L0
    move-object v1, v2
  :L1
    const/4 v4, 0
  :L2
    if-nez v1, :L7
  .line 4
    invoke-virtual/range { p0 .. p2 }, Landroidx/recyclerview/widget/RecyclerView$u;->m(IZ)Landroidx/recyclerview/widget/RecyclerView$c0;
    move-result-object v1
    if-eqz v1, :L7
  .line 5
    invoke-virtual { v6, v1 }, Landroidx/recyclerview/widget/RecyclerView$u;->L(Landroidx/recyclerview/widget/RecyclerView$c0;)Z
    move-result v5
    if-nez v5, :L6
    if-nez v0, :L5
    const/4 v5, 4
  .line 6
    invoke-virtual { v1, v5 }, Landroidx/recyclerview/widget/RecyclerView$c0;->b(I)V
  .line 7
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->w()Z
    move-result v5
    if-eqz v5, :L3
  .line 8
    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v9, v1, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
    invoke-virtual { v5, v9, v8 }, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V
  .line 9
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->K()V
    goto :L4
  :L3
  .line 10
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->L()Z
    move-result v5
    if-eqz v5, :L4
  .line 11
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->e()V
  :L4
  .line 12
    invoke-virtual { v6, v1 }, Landroidx/recyclerview/widget/RecyclerView$u;->C(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  :L5
    move-object v1, v2
    goto :L7
  :L6
    const/4 v4, 1
  :L7
    if-nez v1, :L17
  .line 13
    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/a;
    invoke-virtual { v5, v3 }, Landroidx/recyclerview/widget/a;->m(I)I
    move-result v5
    if-ltz v5, :L16
  .line 14
    iget-object v9, v6, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$f;
    invoke-virtual { v9 }, Landroidx/recyclerview/widget/RecyclerView$f;->c()I
    move-result v9
    if-ge v5, v9, :L16
  .line 15
    iget-object v9, v6, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$f;
    invoke-virtual { v9, v5 }, Landroidx/recyclerview/widget/RecyclerView$f;->e(I)I
    move-result v9
  .line 16
    iget-object v10, v6, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$f;
    invoke-virtual { v10 }, Landroidx/recyclerview/widget/RecyclerView$f;->g()Z
    move-result v10
    if-eqz v10, :L8
  .line 17
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$f;
    invoke-virtual { v1, v5 }, Landroidx/recyclerview/widget/RecyclerView$f;->d(I)J
    move-result-wide v10
    invoke-virtual { v6, v10, v11, v9, v0 }, Landroidx/recyclerview/widget/RecyclerView$u;->l(JIZ)Landroidx/recyclerview/widget/RecyclerView$c0;
    move-result-object v1
    if-eqz v1, :L8
  .line 18
    iput v5, v1, Landroidx/recyclerview/widget/RecyclerView$c0;->c:I
    const/4 v4, 1
  :L8
    if-nez v1, :L11
  .line 19
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$u;->h:Landroidx/recyclerview/widget/RecyclerView$a0;
    if-eqz v0, :L11
  .line 20
    invoke-virtual { v0, v6, v3, v9 }, Landroidx/recyclerview/widget/RecyclerView$a0;->a(Landroidx/recyclerview/widget/RecyclerView$u;II)Landroid/view/View;
    move-result-object v0
    if-eqz v0, :L11
  .line 21
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v1, v0 }, Landroidx/recyclerview/widget/RecyclerView;->e0(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$c0;
    move-result-object v1
    if-eqz v1, :L10
  .line 22
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->J()Z
    move-result v0
    if-nez v0, :L9
    goto :L11
  :L9
  .line 23
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
  .line 24
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/RecyclerView;->P()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L10
  .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "getViewForPositionAndType returned a view which does not have a ViewHolder"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
  .line 26
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/RecyclerView;->P()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L11
    if-nez v1, :L13
  .line 27
    invoke-virtual/range { p0 .. p0 }, Landroidx/recyclerview/widget/RecyclerView$u;->i()Landroidx/recyclerview/widget/RecyclerView$t;
    move-result-object v0
    invoke-virtual { v0, v9 }, Landroidx/recyclerview/widget/RecyclerView$t;->f(I)Landroidx/recyclerview/widget/RecyclerView$c0;
    move-result-object v0
    if-eqz v0, :L12
  .line 28
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->D()V
  .line 29
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->z0:Z
    if-eqz v1, :L12
  .line 30
    invoke-direct { v6, v0 }, Landroidx/recyclerview/widget/RecyclerView$u;->r(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  :L12
    move-object v1, v0
  :L13
    if-nez v1, :L17
  .line 31
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J
    move-result-wide v0
    const-wide v10, 9223372036854775807L
    cmp-long v5, p3, v10
    if-eqz v5, :L14
  .line 32
    iget-object v10, v6, Landroidx/recyclerview/widget/RecyclerView$u;->g:Landroidx/recyclerview/widget/RecyclerView$t;
    move v11, v9
    move-wide v12, v0
    move-wide/from16 v14, p3
  .line 33
    invoke-virtual/range { v10 .. v15 }, Landroidx/recyclerview/widget/RecyclerView$t;->l(IJJ)Z
    move-result v5
    if-nez v5, :L14
    return-object v2
  :L14
  .line 34
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$f;
    invoke-virtual { v5, v2, v9 }, Landroidx/recyclerview/widget/RecyclerView$f;->b(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    move-result-object v2
  .line 35
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->B0:Z
    if-eqz v5, :L15
  .line 36
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
    invoke-static { v5 }, Landroidx/recyclerview/widget/RecyclerView;->V(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;
    move-result-object v5
    if-eqz v5, :L15
  .line 37
    new-instance v10, Ljava/lang/ref/WeakReference;
    invoke-direct { v10, v5 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v10, v2, Landroidx/recyclerview/widget/RecyclerView$c0;->b:Ljava/lang/ref/WeakReference;
  :L15
  .line 38
    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v5 }, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J
    move-result-wide v10
  .line 39
    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView$u;->g:Landroidx/recyclerview/widget/RecyclerView$t;
    sub-long/2addr v10, v0
    invoke-virtual { v5, v9, v10, v11 }, Landroidx/recyclerview/widget/RecyclerView$t;->e(IJ)V
    move-object v9, v2
    goto :L18
  :L16
  .line 40
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Inconsistency detected. Invalid item position "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, "(offset:"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v5 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, ").state:"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$z;
  .line 41
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/RecyclerView;->P()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
    throw v0
  :L17
    move-object v9, v1
  :L18
    move v10, v4
    if-eqz v10, :L19
  .line 42
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$z;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$z;->e()Z
    move-result v0
    if-nez v0, :L19
    const/16 v0, 8192
  .line 43
    invoke-virtual { v9, v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->p(I)Z
    move-result v1
    if-eqz v1, :L19
  .line 44
    invoke-virtual { v9, v8, v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->F(II)V
  .line 45
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$z;
    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$z;->k:Z
    if-eqz v0, :L19
  .line 46
    invoke-static { v9 }, Landroidx/recyclerview/widget/RecyclerView$k;->e(Landroidx/recyclerview/widget/RecyclerView$c0;)I
    move-result v0
    or-int/lit16 v0, v0, 4096
  .line 47
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->M:Landroidx/recyclerview/widget/RecyclerView$k;
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$z;
  .line 48
    invoke-virtual { v9 }, Landroidx/recyclerview/widget/RecyclerView$c0;->o()Ljava/util/List;
    move-result-object v4
  .line 49
    invoke-virtual { v2, v1, v9, v0, v4 }, Landroidx/recyclerview/widget/RecyclerView$k;->t(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/RecyclerView$c0;ILjava/util/List;)Landroidx/recyclerview/widget/RecyclerView$k$c;
    move-result-object v0
  .line 50
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v1, v9, v0 }, Landroidx/recyclerview/widget/RecyclerView;->Q0(Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$k$c;)V
  :L19
  .line 51
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$z;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$z;->e()Z
    move-result v0
    if-eqz v0, :L20
    invoke-virtual { v9 }, Landroidx/recyclerview/widget/RecyclerView$c0;->s()Z
    move-result v0
    if-eqz v0, :L20
  .line 52
    iput v3, v9, Landroidx/recyclerview/widget/RecyclerView$c0;->g:I
    goto :L21
  :L20
  .line 53
    invoke-virtual { v9 }, Landroidx/recyclerview/widget/RecyclerView$c0;->s()Z
    move-result v0
    if-eqz v0, :L22
    invoke-virtual { v9 }, Landroidx/recyclerview/widget/RecyclerView$c0;->z()Z
    move-result v0
    if-nez v0, :L22
    invoke-virtual { v9 }, Landroidx/recyclerview/widget/RecyclerView$c0;->t()Z
    move-result v0
    if-eqz v0, :L21
    goto :L22
  :L21
    const/4 v0, 0
    goto :L23
  :L22
  .line 54
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/a;
    invoke-virtual { v0, v3 }, Landroidx/recyclerview/widget/a;->m(I)I
    move-result v2
    move-object/from16 v0, p0
    move-object v1, v9
    move/from16 v3, p1
    move-wide/from16 v4, p3
  .line 55
    invoke-direct/range { v0 .. v5 }, Landroidx/recyclerview/widget/RecyclerView$u;->H(Landroidx/recyclerview/widget/RecyclerView$c0;IIJ)Z
    move-result v0
  :L23
  .line 56
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
    invoke-virtual { v1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v1
    if-nez v1, :L24
  .line 57
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v1
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$o;
  .line 58
    iget-object v2, v9, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
    invoke-virtual { v2, v1 }, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    goto :L26
  :L24
  .line 59
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v2, v1 }, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    move-result v2
    if-nez v2, :L25
  .line 60
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v2, v1 }, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    move-result-object v1
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$o;
  .line 61
    iget-object v2, v9, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
    invoke-virtual { v2, v1 }, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    goto :L26
  :L25
  .line 62
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$o;
  :L26
  .line 63
    iput-object v9, v1, Landroidx/recyclerview/widget/RecyclerView$o;->a:Landroidx/recyclerview/widget/RecyclerView$c0;
    if-eqz v10, :L27
    if-eqz v0, :L27
    goto :L28
  :L27
    const/4 v7, 0
  :L28
  .line 64
    iput-boolean v7, v1, Landroidx/recyclerview/widget/RecyclerView$o;->d:Z
    return-object v9
  :L29
  .line 65
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Invalid item position "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, "("
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, "). Item count:"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$z;
  .line 66
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
  .line 67
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/RecyclerView;->P()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method J(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  .registers 3
  .line 1
    iget-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->o:Z
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->b:Ljava/util/ArrayList;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    goto :L1
  :L0
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
  :L1
    const/4 v0, 0
  .line 4
    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->n:Landroidx/recyclerview/widget/RecyclerView$u;
    const/4 v0, 0
  .line 5
    iput-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->o:Z
  .line 6
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->e()V
    return-void
.end method

.method K()V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/RecyclerView$n;
    if-eqz v0, :L0
    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$n;->m:I
    goto :L1
  :L0
    const/4 v0, 0
  :L1
  .line 2
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->e:I
    add-int/2addr v1, v0
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->f:I
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    add-int/lit8 v0, v0, -1
  :L2
    if-ltz v0, :L3
  .line 4
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;
    invoke-virtual { v1 }, Ljava/util/ArrayList;->size()I
    move-result v1
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$u;->f:I
    if-le v1, v2, :L3
  .line 5
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/RecyclerView$u;->A(I)V
    add-int/lit8 v0, v0, -1
    goto :L2
  :L3
    return-void
.end method

.method L(Landroidx/recyclerview/widget/RecyclerView$c0;)Z
  .registers 9
  .line 1
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->v()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$z;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$z;->e()Z
    move-result p1
    return p1
  :L0
  .line 3
    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->c:I
    if-ltz v0, :L4
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$f;
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/RecyclerView$f;->c()I
    move-result v1
    if-ge v0, v1, :L4
  .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$z;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$z;->e()Z
    move-result v0
    const/4 v1, 0
    if-nez v0, :L1
  .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$f;
    iget v2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->c:I
    invoke-virtual { v0, v2 }, Landroidx/recyclerview/widget/RecyclerView$f;->e(I)I
    move-result v0
  .line 6
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->l()I
    move-result v2
    if-eq v0, v2, :L1
    return v1
  :L1
  .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$f;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$f;->g()Z
    move-result v0
    const/4 v2, 1
    if-eqz v0, :L3
  .line 8
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->k()J
    move-result-wide v3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$f;
    iget p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->c:I
    invoke-virtual { v0, p1 }, Landroidx/recyclerview/widget/RecyclerView$f;->d(I)J
    move-result-wide v5
    cmp-long p1, v3, v5
    if-nez p1, :L2
    const/4 v1, 1
  :L2
    return v1
  :L3
    return v2
  :L4
  .line 9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Inconsistency detected. Invalid view holder adapter position"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
  .line 10
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView;->P()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method M(II)V
  .registers 6
    add-int/2addr p2, p1
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    add-int/lit8 v0, v0, -1
  :L0
    if-ltz v0, :L3
  .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;
    invoke-virtual { v1, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$c0;
    if-nez v1, :L1
    goto :L2
  :L1
  .line 3
    iget v2, v1, Landroidx/recyclerview/widget/RecyclerView$c0;->c:I
    if-lt v2, p1, :L2
    if-ge v2, p2, :L2
    const/4 v2, 2
  .line 4
    invoke-virtual { v1, v2 }, Landroidx/recyclerview/widget/RecyclerView$c0;->b(I)V
  .line 5
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/RecyclerView$u;->A(I)V
  :L2
    add-int/lit8 v0, v0, -1
    goto :L0
  :L3
    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$c0;Z)V
  .registers 7
  .line 1
    invoke-static { p1 }, Landroidx/recyclerview/widget/RecyclerView;->r(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
  .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->o0:Landroidx/recyclerview/widget/k;
    const/4 v2, 0
    if-eqz v1, :L2
  .line 4
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/k;->n()Landroidx/core/view/a;
    move-result-object v1
  .line 5
    instance-of v3, v1, Landroidx/recyclerview/widget/k$a;
    if-eqz v3, :L0
  .line 6
    check-cast v1, Landroidx/recyclerview/widget/k$a;
  .line 7
    invoke-virtual { v1, v0 }, Landroidx/recyclerview/widget/k$a;->n(Landroid/view/View;)Landroidx/core/view/a;
    move-result-object v1
    goto :L1
  :L0
    move-object v1, v2
  :L1
  .line 8
    invoke-static { v0, v1 }, Landroidx/core/view/v;->o0(Landroid/view/View;Landroidx/core/view/a;)V
  :L2
    if-eqz p2, :L3
  .line 9
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$u;->g(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  :L3
  .line 10
    iput-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->r:Landroidx/recyclerview/widget/RecyclerView;
  .line 11
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$u;->i()Landroidx/recyclerview/widget/RecyclerView$t;
    move-result-object p2
    invoke-virtual { p2, p1 }, Landroidx/recyclerview/widget/RecyclerView$t;->i(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    return-void
.end method

.method public c()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->clear()V
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$u;->z()V
    return-void
.end method

.method d()V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L1
  .line 2
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;
    invoke-virtual { v3, v2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$c0;
  .line 3
    invoke-virtual { v3 }, Landroidx/recyclerview/widget/RecyclerView$c0;->c()V
    add-int/lit8 v2, v2, 1
    goto :L0
  :L1
  .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v2, 0
  :L2
    if-ge v2, v0, :L3
  .line 5
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;
    invoke-virtual { v3, v2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$c0;
    invoke-virtual { v3 }, Landroidx/recyclerview/widget/RecyclerView$c0;->c()V
    add-int/lit8 v2, v2, 1
    goto :L2
  :L3
  .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->b:Ljava/util/ArrayList;
    if-eqz v0, :L5
  .line 7
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
  :L4
    if-ge v1, v0, :L5
  .line 8
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$u;->b:Ljava/util/ArrayList;
    invoke-virtual { v2, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$c0;
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/RecyclerView$c0;->c()V
    add-int/lit8 v1, v1, 1
    goto :L4
  :L5
    return-void
.end method

.method e()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->clear()V
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->b:Ljava/util/ArrayList;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0 }, Ljava/util/ArrayList;->clear()V
  :L0
    return-void
.end method

.method public f(I)I
  .registers 5
    if-ltz p1, :L1
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$z;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result v0
    if-ge p1, v0, :L1
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$z;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$z;->e()Z
    move-result v0
    if-nez v0, :L0
    return p1
  :L0
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/a;
    invoke-virtual { v0, p1 }, Landroidx/recyclerview/widget/a;->m(I)I
    move-result p1
    return p1
  :L1
  .line 4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "invalid position "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, ". State item count is "
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$z;
  .line 5
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result p1
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView;->P()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method g(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/RecyclerView$v;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0, p1 }, Landroidx/recyclerview/widget/RecyclerView$v;->a(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  :L0
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$f;
    if-eqz v0, :L1
  .line 4
    invoke-virtual { v0, p1 }, Landroidx/recyclerview/widget/RecyclerView$f;->q(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  :L1
  .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$z;
    if-eqz v1, :L2
  .line 6
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/p;
    invoke-virtual { v0, p1 }, Landroidx/recyclerview/widget/p;->q(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  :L2
    return-void
.end method

.method h(I)Landroidx/recyclerview/widget/RecyclerView$c0;
  .registers 11
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->b:Ljava/util/ArrayList;
    const/4 v1, 0
    if-eqz v0, :L6
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    if-nez v0, :L0
    goto :L6
  :L0
    const/4 v2, 0
    const/4 v3, 0
  :L1
    const/16 v4, 32
    if-ge v3, v0, :L3
  .line 2
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$u;->b:Ljava/util/ArrayList;
    invoke-virtual { v5, v3 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$c0;
  .line 3
    invoke-virtual { v5 }, Landroidx/recyclerview/widget/RecyclerView$c0;->L()Z
    move-result v6
    if-nez v6, :L2
    invoke-virtual { v5 }, Landroidx/recyclerview/widget/RecyclerView$c0;->m()I
    move-result v6
    if-ne v6, p1, :L2
  .line 4
    invoke-virtual { v5, v4 }, Landroidx/recyclerview/widget/RecyclerView$c0;->b(I)V
    return-object v5
  :L2
    add-int/lit8 v3, v3, 1
    goto :L1
  :L3
  .line 5
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$f;
    invoke-virtual { v3 }, Landroidx/recyclerview/widget/RecyclerView$f;->g()Z
    move-result v3
    if-eqz v3, :L6
  .line 6
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/a;
    invoke-virtual { v3, p1 }, Landroidx/recyclerview/widget/a;->m(I)I
    move-result p1
    if-lez p1, :L6
  .line 7
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$f;
    invoke-virtual { v3 }, Landroidx/recyclerview/widget/RecyclerView$f;->c()I
    move-result v3
    if-ge p1, v3, :L6
  .line 8
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$f;
    invoke-virtual { v3, p1 }, Landroidx/recyclerview/widget/RecyclerView$f;->d(I)J
    move-result-wide v5
  :L4
    if-ge v2, v0, :L6
  .line 9
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->b:Ljava/util/ArrayList;
    invoke-virtual { p1, v2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$c0;
  .line 10
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->L()Z
    move-result v3
    if-nez v3, :L5
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->k()J
    move-result-wide v7
    cmp-long v3, v7, v5
    if-nez v3, :L5
  .line 11
    invoke-virtual { p1, v4 }, Landroidx/recyclerview/widget/RecyclerView$c0;->b(I)V
    return-object p1
  :L5
    add-int/lit8 v2, v2, 1
    goto :L4
  :L6
    return-object v1
.end method

.method i()Landroidx/recyclerview/widget/RecyclerView$t;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->g:Landroidx/recyclerview/widget/RecyclerView$t;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$t;
    invoke-direct { v0 }, Landroidx/recyclerview/widget/RecyclerView$t;-><init>()V
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->g:Landroidx/recyclerview/widget/RecyclerView$t;
  :L0
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->g:Landroidx/recyclerview/widget/RecyclerView$t;
    return-object v0
.end method

.method j()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    return v0
.end method

.method public k()Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/List<",
      "Landroidx/recyclerview/widget/RecyclerView$c0;",
      ">;"
    }
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->d:Ljava/util/List;
    return-object v0
.end method

.method l(JIZ)Landroidx/recyclerview/widget/RecyclerView$c0;
  .registers 11
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    add-int/lit8 v0, v0, -1
  :L0
    if-ltz v0, :L4
  .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;
    invoke-virtual { v1, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$c0;
  .line 3
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->k()J
    move-result-wide v2
    cmp-long v4, v2, p1
    if-nez v4, :L3
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->L()Z
    move-result v2
    if-nez v2, :L3
  .line 4
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->l()I
    move-result v2
    if-ne p3, v2, :L2
    const/16 p1, 32
  .line 5
    invoke-virtual { v1, p1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->b(I)V
  .line 6
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->v()Z
    move-result p1
    if-eqz p1, :L1
  .line 7
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$z;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$z;->e()Z
    move-result p1
    if-nez p1, :L1
    const/4 p1, 2
    const/16 p2, 14
  .line 8
    invoke-virtual { v1, p1, p2 }, Landroidx/recyclerview/widget/RecyclerView$c0;->F(II)V
  :L1
    return-object v1
  :L2
    if-nez p4, :L3
  .line 9
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;
    invoke-virtual { v2, v0 }, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
  .line 10
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
    const/4 v4, 0
    invoke-virtual { v2, v3, v4 }, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V
  .line 11
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
    invoke-virtual { p0, v1 }, Landroidx/recyclerview/widget/RecyclerView$u;->y(Landroid/view/View;)V
  :L3
    add-int/lit8 v0, v0, -1
    goto :L0
  :L4
  .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    add-int/lit8 v0, v0, -1
  :L5
    const/4 v1, 0
    if-ltz v0, :L9
  .line 13
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;
    invoke-virtual { v2, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$c0;
  .line 14
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/RecyclerView$c0;->k()J
    move-result-wide v3
    cmp-long v5, v3, p1
    if-nez v5, :L8
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/RecyclerView$c0;->r()Z
    move-result v3
    if-nez v3, :L8
  .line 15
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/RecyclerView$c0;->l()I
    move-result v3
    if-ne p3, v3, :L7
    if-nez p4, :L6
  .line 16
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;
    invoke-virtual { p1, v0 }, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
  :L6
    return-object v2
  :L7
    if-nez p4, :L8
  .line 17
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/RecyclerView$u;->A(I)V
    return-object v1
  :L8
    add-int/lit8 v0, v0, -1
    goto :L5
  :L9
    return-object v1
.end method

.method m(IZ)Landroidx/recyclerview/widget/RecyclerView$c0;
  .registers 8
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L3
  .line 2
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;
    invoke-virtual { v3, v2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$c0;
  .line 3
    invoke-virtual { v3 }, Landroidx/recyclerview/widget/RecyclerView$c0;->L()Z
    move-result v4
    if-nez v4, :L2
    invoke-virtual { v3 }, Landroidx/recyclerview/widget/RecyclerView$c0;->m()I
    move-result v4
    if-ne v4, p1, :L2
  .line 4
    invoke-virtual { v3 }, Landroidx/recyclerview/widget/RecyclerView$c0;->t()Z
    move-result v4
    if-nez v4, :L2
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$z;
    iget-boolean v4, v4, Landroidx/recyclerview/widget/RecyclerView$z;->h:Z
    if-nez v4, :L1
    invoke-virtual { v3 }, Landroidx/recyclerview/widget/RecyclerView$c0;->v()Z
    move-result v4
    if-nez v4, :L2
  :L1
    const/16 p1, 32
  .line 5
    invoke-virtual { v3, p1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->b(I)V
    return-object v3
  :L2
    add-int/lit8 v2, v2, 1
    goto :L0
  :L3
    if-nez p2, :L5
  .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/b;
    invoke-virtual { v0, p1 }, Landroidx/recyclerview/widget/b;->e(I)Landroid/view/View;
    move-result-object v0
    if-eqz v0, :L5
  .line 7
    invoke-static { v0 }, Landroidx/recyclerview/widget/RecyclerView;->f0(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$c0;
    move-result-object p1
  .line 8
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/b;
    invoke-virtual { p2, v0 }, Landroidx/recyclerview/widget/b;->s(Landroid/view/View;)V
  .line 9
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/b;
    invoke-virtual { p2, v0 }, Landroidx/recyclerview/widget/b;->m(Landroid/view/View;)I
    move-result p2
    const/4 v1, -1
    if-eq p2, v1, :L4
  .line 10
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/b;
    invoke-virtual { v1, p2 }, Landroidx/recyclerview/widget/b;->d(I)V
  .line 11
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/RecyclerView$u;->D(Landroid/view/View;)V
    const/16 p2, 8224
  .line 12
    invoke-virtual { p1, p2 }, Landroidx/recyclerview/widget/RecyclerView$c0;->b(I)V
    return-object p1
  :L4
  .line 13
    new-instance p2, Ljava/lang/IllegalStateException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "layout index should not be -1 after unhiding a view:"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
  .line 14
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView;->P()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p2, p1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p2
  :L5
  .line 15
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
  :L6
    if-ge v1, v0, :L9
  .line 16
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;
    invoke-virtual { v2, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$c0;
  .line 17
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/RecyclerView$c0;->t()Z
    move-result v3
    if-nez v3, :L8
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/RecyclerView$c0;->m()I
    move-result v3
    if-ne v3, p1, :L8
  .line 18
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/RecyclerView$c0;->r()Z
    move-result v3
    if-nez v3, :L8
    if-nez p2, :L7
  .line 19
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;
    invoke-virtual { p1, v1 }, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
  :L7
    return-object v2
  :L8
    add-int/lit8 v1, v1, 1
    goto :L6
  :L9
    const/4 p1, 0
    return-object p1
.end method

.method n(I)Landroid/view/View;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->a:Ljava/util/ArrayList;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$c0;
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
    return-object p1
.end method

.method public o(I)Landroid/view/View;
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, p1, v0 }, Landroidx/recyclerview/widget/RecyclerView$u;->p(IZ)Landroid/view/View;
    move-result-object p1
    return-object p1
.end method

.method p(IZ)Landroid/view/View;
  .registers 5
    const-wide v0, 9223372036854775807L
  .line 1
    invoke-virtual { p0, p1, p2, v0, v1 }, Landroidx/recyclerview/widget/RecyclerView$u;->I(IZJ)Landroidx/recyclerview/widget/RecyclerView$c0;
    move-result-object p1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
    return-object p1
.end method

.method s()V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L2
  .line 2
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;
    invoke-virtual { v2, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$c0;
  .line 3
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
    invoke-virtual { v2 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v2
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$o;
    if-eqz v2, :L1
    const/4 v3, 1
  .line 4
    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$o;->c:Z
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    return-void
.end method

.method t()V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L2
  .line 2
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;
    invoke-virtual { v2, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$c0;
    if-eqz v2, :L1
    const/4 v3, 6
  .line 3
    invoke-virtual { v2, v3 }, Landroidx/recyclerview/widget/RecyclerView$c0;->b(I)V
    const/4 v3, 0
  .line 4
    invoke-virtual { v2, v3 }, Landroidx/recyclerview/widget/RecyclerView$c0;->a(Ljava/lang/Object;)V
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
  .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$f;
    if-eqz v0, :L3
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$f;->g()Z
    move-result v0
    if-nez v0, :L4
  :L3
  .line 6
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$u;->z()V
  :L4
    return-void
.end method

.method u(II)V
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L2
  .line 2
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;
    invoke-virtual { v2, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$c0;
    if-eqz v2, :L1
  .line 3
    iget v3, v2, Landroidx/recyclerview/widget/RecyclerView$c0;->c:I
    if-lt v3, p1, :L1
    const/4 v3, 1
  .line 4
    invoke-virtual { v2, p2, v3 }, Landroidx/recyclerview/widget/RecyclerView$c0;->A(IZ)V
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    return-void
.end method

.method v(II)V
  .registers 11
    if-ge p1, p2, :L0
    const/4 v0, -1
    move v1, p1
    move v2, p2
    goto :L1
  :L0
    const/4 v0, 1
    move v2, p1
    move v1, p2
  :L1
  .line 1
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;
    invoke-virtual { v3 }, Ljava/util/ArrayList;->size()I
    move-result v3
    const/4 v4, 0
    const/4 v5, 0
  :L2
    if-ge v5, v3, :L6
  .line 2
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;
    invoke-virtual { v6, v5 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$c0;
    if-eqz v6, :L5
  .line 3
    iget v7, v6, Landroidx/recyclerview/widget/RecyclerView$c0;->c:I
    if-lt v7, v1, :L5
    if-le v7, v2, :L3
    goto :L5
  :L3
    if-ne v7, p1, :L4
    sub-int v7, p2, p1
  .line 4
    invoke-virtual { v6, v7, v4 }, Landroidx/recyclerview/widget/RecyclerView$c0;->A(IZ)V
    goto :L5
  :L4
  .line 5
    invoke-virtual { v6, v0, v4 }, Landroidx/recyclerview/widget/RecyclerView$c0;->A(IZ)V
  :L5
    add-int/lit8 v5, v5, 1
    goto :L2
  :L6
    return-void
.end method

.method w(IIZ)V
  .registers 8
    add-int v0, p1, p2
  .line 1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;
    invoke-virtual { v1 }, Ljava/util/ArrayList;->size()I
    move-result v1
    add-int/lit8 v1, v1, -1
  :L0
    if-ltz v1, :L3
  .line 2
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;
    invoke-virtual { v2, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$c0;
    if-eqz v2, :L2
  .line 3
    iget v3, v2, Landroidx/recyclerview/widget/RecyclerView$c0;->c:I
    if-lt v3, v0, :L1
    neg-int v3, p2
  .line 4
    invoke-virtual { v2, v3, p3 }, Landroidx/recyclerview/widget/RecyclerView$c0;->A(IZ)V
    goto :L2
  :L1
    if-lt v3, p1, :L2
    const/16 v3, 8
  .line 5
    invoke-virtual { v2, v3 }, Landroidx/recyclerview/widget/RecyclerView$c0;->b(I)V
  .line 6
    invoke-virtual { p0, v1 }, Landroidx/recyclerview/widget/RecyclerView$u;->A(I)V
  :L2
    add-int/lit8 v1, v1, -1
    goto :L0
  :L3
    return-void
.end method

.method x(Landroidx/recyclerview/widget/RecyclerView$f;Landroidx/recyclerview/widget/RecyclerView$f;Z)V
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$u;->c()V
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$u;->i()Landroidx/recyclerview/widget/RecyclerView$t;
    move-result-object v0
    invoke-virtual { v0, p1, p2, p3 }, Landroidx/recyclerview/widget/RecyclerView$t;->h(Landroidx/recyclerview/widget/RecyclerView$f;Landroidx/recyclerview/widget/RecyclerView$f;Z)V
    return-void
.end method

.method y(Landroid/view/View;)V
  .registers 3
  .line 1
    invoke-static { p1 }, Landroidx/recyclerview/widget/RecyclerView;->f0(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$c0;
    move-result-object p1
    const/4 v0, 0
  .line 2
    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->n:Landroidx/recyclerview/widget/RecyclerView$u;
    const/4 v0, 0
  .line 3
    iput-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->o:Z
  .line 4
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->e()V
  .line 5
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$u;->C(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    return-void
.end method

.method z()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    add-int/lit8 v0, v0, -1
  :L0
    if-ltz v0, :L1
  .line 2
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/RecyclerView$u;->A(I)V
    add-int/lit8 v0, v0, -1
    goto :L0
  :L1
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->c:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->clear()V
  .line 4
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->B0:Z
    if-eqz v0, :L2
  .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->i:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/e$b;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/e$b;->b()V
  :L2
    return-void
.end method
