.class Landroidx/recyclerview/widget/RecyclerView$c;
.super Ljava/lang/Object;
.implements Landroidx/recyclerview/widget/p$b;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView;

.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c;->a:Landroidx/recyclerview/widget/RecyclerView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c;->a:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/RecyclerView$n;
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->c:Landroidx/recyclerview/widget/RecyclerView$u;
    invoke-virtual { v1, p1, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->m1(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$u;)V
    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$k$c;Landroidx/recyclerview/widget/RecyclerView$k$c;)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c;->a:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0, p1, p2, p3 }, Landroidx/recyclerview/widget/RecyclerView;->l(Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$k$c;Landroidx/recyclerview/widget/RecyclerView$k$c;)V
    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$k$c;Landroidx/recyclerview/widget/RecyclerView$k$c;)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c;->a:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->c:Landroidx/recyclerview/widget/RecyclerView$u;
    invoke-virtual { v0, p1 }, Landroidx/recyclerview/widget/RecyclerView$u;->J(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c;->a:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0, p1, p2, p3 }, Landroidx/recyclerview/widget/RecyclerView;->n(Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$k$c;Landroidx/recyclerview/widget/RecyclerView$k$c;)V
    return-void
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$k$c;Landroidx/recyclerview/widget/RecyclerView$k$c;)V
  .registers 6
    const/4 v0, 0
  .line 1
    invoke-virtual { p1, v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->G(Z)V
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c;->a:Landroidx/recyclerview/widget/RecyclerView;
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->D:Z
    if-eqz v1, :L0
  .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->M:Landroidx/recyclerview/widget/RecyclerView$k;
    invoke-virtual { v0, p1, p1, p2, p3 }, Landroidx/recyclerview/widget/RecyclerView$k;->b(Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$k$c;Landroidx/recyclerview/widget/RecyclerView$k$c;)Z
    move-result p1
    if-eqz p1, :L1
  .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c;->a:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView;->L0()V
    goto :L1
  :L0
  .line 5
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->M:Landroidx/recyclerview/widget/RecyclerView$k;
    invoke-virtual { v0, p1, p2, p3 }, Landroidx/recyclerview/widget/RecyclerView$k;->d(Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$k$c;Landroidx/recyclerview/widget/RecyclerView$k$c;)Z
    move-result p1
    if-eqz p1, :L1
  .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c;->a:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView;->L0()V
  :L1
    return-void
.end method
