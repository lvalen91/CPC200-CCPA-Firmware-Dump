.class public Landroidx/recyclerview/widget/k;
.super Landroidx/core/view/a;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/recyclerview/widget/k$a;
  }
.end annotation

.field final d:Landroidx/recyclerview/widget/RecyclerView;

.field private final e:Landroidx/recyclerview/widget/k$a;

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroidx/core/view/a;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/RecyclerView;
  .line 3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/k;->n()Landroidx/core/view/a;
    move-result-object p1
    if-eqz p1, :L0
  .line 4
    instance-of v0, p1, Landroidx/recyclerview/widget/k$a;
    if-eqz v0, :L0
  .line 5
    check-cast p1, Landroidx/recyclerview/widget/k$a;
    iput-object p1, p0, Landroidx/recyclerview/widget/k;->e:Landroidx/recyclerview/widget/k$a;
    goto :L1
  :L0
  .line 6
    new-instance p1, Landroidx/recyclerview/widget/k$a;
    invoke-direct { p1, p0 }, Landroidx/recyclerview/widget/k$a;-><init>(Landroidx/recyclerview/widget/k;)V
    iput-object p1, p0, Landroidx/recyclerview/widget/k;->e:Landroidx/recyclerview/widget/k$a;
  :L1
    return-void
.end method

.method public f(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
  .registers 4
  .line 1
    invoke-super { p0, p1, p2 }, Landroidx/core/view/a;->f(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
  .line 2
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v0, :L0
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/k;->o()Z
    move-result v0
    if-nez v0, :L0
  .line 3
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;
  .line 4
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;
    move-result-object v0
    if-eqz v0, :L0
  .line 5
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;
    move-result-object p1
    invoke-virtual { p1, p2 }, Landroidx/recyclerview/widget/RecyclerView$n;->K0(Landroid/view/accessibility/AccessibilityEvent;)V
  :L0
    return-void
.end method

.method public g(Landroid/view/View;Landroidx/core/view/e0/c;)V
  .registers 3
  .line 1
    invoke-super { p0, p1, p2 }, Landroidx/core/view/a;->g(Landroid/view/View;Landroidx/core/view/e0/c;)V
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/k;->o()Z
    move-result p1
    if-nez p1, :L0
    iget-object p1, p0, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;
    move-result-object p1
    if-eqz p1, :L0
  .line 3
    iget-object p1, p0, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;
    move-result-object p1
    invoke-virtual { p1, p2 }, Landroidx/recyclerview/widget/RecyclerView$n;->M0(Landroidx/core/view/e0/c;)V
  :L0
    return-void
.end method

.method public j(Landroid/view/View;ILandroid/os/Bundle;)Z
  .registers 4
  .line 1
    invoke-super { p0, p1, p2, p3 }, Landroidx/core/view/a;->j(Landroid/view/View;ILandroid/os/Bundle;)Z
    move-result p1
    if-eqz p1, :L0
    const/4 p1, 1
    return p1
  :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/k;->o()Z
    move-result p1
    if-nez p1, :L1
    iget-object p1, p0, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;
    move-result-object p1
    if-eqz p1, :L1
  .line 3
    iget-object p1, p0, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;
    move-result-object p1
    invoke-virtual { p1, p2, p3 }, Landroidx/recyclerview/widget/RecyclerView$n;->g1(ILandroid/os/Bundle;)Z
    move-result p1
    return p1
  :L1
    const/4 p1, 0
    return p1
.end method

.method public n()Landroidx/core/view/a;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->e:Landroidx/recyclerview/widget/k$a;
    return-object v0
.end method

.method o()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView;->l0()Z
    move-result v0
    return v0
.end method
