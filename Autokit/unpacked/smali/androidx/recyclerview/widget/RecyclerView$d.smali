.class Landroidx/recyclerview/widget/RecyclerView$d;
.super Ljava/lang/Object;
.implements Landroidx/recyclerview/widget/b$b;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/recyclerview/widget/RecyclerView;->p0()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView;

.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(I)Landroid/view/View;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0, p1 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object p1
    return-object p1
.end method

.method public b(Landroid/view/View;)V
  .registers 3
  .line 1
    invoke-static { p1 }, Landroidx/recyclerview/widget/RecyclerView;->f0(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$c0;
    move-result-object p1
    if-eqz p1, :L0
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { p1, v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->B(Landroidx/recyclerview/widget/RecyclerView;)V
  :L0
    return-void
.end method

.method public c(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0, p1 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v1, v0 }, Landroidx/recyclerview/widget/RecyclerView;->z(Landroid/view/View;)V
  .line 3
    invoke-virtual { v0 }, Landroid/view/View;->clearAnimation()V
  :L0
  .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0, p1 }, Landroid/view/ViewGroup;->removeViewAt(I)V
    return-void
.end method

.method public d()V
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$d;->k()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L1
  .line 2
    invoke-virtual { p0, v1 }, Landroidx/recyclerview/widget/RecyclerView$d;->a(I)Landroid/view/View;
    move-result-object v2
  .line 3
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v3, v2 }, Landroidx/recyclerview/widget/RecyclerView;->z(Landroid/view/View;)V
  .line 4
    invoke-virtual { v2 }, Landroid/view/View;->clearAnimation()V
    add-int/lit8 v1, v1, 1
    goto :L0
  :L1
  .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->removeAllViews()V
    return-void
.end method

.method public e(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$c0;
  .registers 2
  .line 1
    invoke-static { p1 }, Landroidx/recyclerview/widget/RecyclerView;->f0(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$c0;
    move-result-object p1
    return-object p1
.end method

.method public f(I)V
  .registers 5
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$d;->a(I)Landroid/view/View;
    move-result-object v0
    if-eqz v0, :L2
  .line 2
    invoke-static { v0 }, Landroidx/recyclerview/widget/RecyclerView;->f0(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$c0;
    move-result-object v0
    if-eqz v0, :L2
  .line 3
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->x()Z
    move-result v1
    if-eqz v1, :L1
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->J()Z
    move-result v1
    if-eqz v1, :L0
    goto :L1
  :L0
  .line 4
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "called detach on an already detached child "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;
  .line 5
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView;->P()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
    const/16 v1, 256
  .line 6
    invoke-virtual { v0, v1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->b(I)V
  :L2
  .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;
    invoke-static { v0, p1 }, Landroidx/recyclerview/widget/RecyclerView;->d(Landroidx/recyclerview/widget/RecyclerView;I)V
    return-void
.end method

.method public g(Landroid/view/View;)V
  .registers 3
  .line 1
    invoke-static { p1 }, Landroidx/recyclerview/widget/RecyclerView;->f0(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$c0;
    move-result-object p1
    if-eqz p1, :L0
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { p1, v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->C(Landroidx/recyclerview/widget/RecyclerView;)V
  :L0
    return-void
.end method

.method public h(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
  .registers 6
  .line 1
    invoke-static { p1 }, Landroidx/recyclerview/widget/RecyclerView;->f0(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$c0;
    move-result-object v0
    if-eqz v0, :L2
  .line 2
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->x()Z
    move-result v1
    if-nez v1, :L1
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->J()Z
    move-result v1
    if-eqz v1, :L0
    goto :L1
  :L0
  .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "Called attach on a child which is not detached: "
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;
  .line 4
    invoke-virtual { p3 }, Landroidx/recyclerview/widget/RecyclerView;->P()Ljava/lang/String;
    move-result-object p3
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 5
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->f()V
  :L2
  .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;
    invoke-static { v0, p1, p2, p3 }, Landroidx/recyclerview/widget/RecyclerView;->c(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    return-void
.end method

.method public i(Landroid/view/View;I)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0, p1, p2 }, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
  .line 2
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { p2, p1 }, Landroidx/recyclerview/widget/RecyclerView;->y(Landroid/view/View;)V
    return-void
.end method

.method public j(Landroid/view/View;)I
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0, p1 }, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I
    move-result p1
    return p1
.end method

.method public k()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$d;->a:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v0
    return v0
.end method
