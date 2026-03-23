.class public Landroidx/recyclerview/widget/k$a;
.super Landroidx/core/view/a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/k;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "a"
.end annotation

.field final d:Landroidx/recyclerview/widget/k;

.field private e:Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Map<",
      "Landroid/view/View;",
      "Landroidx/core/view/a;",
      ">;"
    }
  .end annotation
.end field

.method public constructor <init>(Landroidx/recyclerview/widget/k;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroidx/core/view/a;-><init>()V
  .line 2
    new-instance v0, Ljava/util/WeakHashMap;
    invoke-direct { v0 }, Ljava/util/WeakHashMap;-><init>()V
    iput-object v0, p0, Landroidx/recyclerview/widget/k$a;->e:Ljava/util/Map;
  .line 3
    iput-object p1, p0, Landroidx/recyclerview/widget/k$a;->d:Landroidx/recyclerview/widget/k;
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->e:Ljava/util/Map;
    invoke-interface { v0, p1 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/core/view/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1, p2 }, Landroidx/core/view/a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    move-result p1
    return p1
  :L0
  .line 3
    invoke-super { p0, p1, p2 }, Landroidx/core/view/a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    move-result p1
    return p1
.end method

.method public b(Landroid/view/View;)Landroidx/core/view/e0/d;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->e:Ljava/util/Map;
    invoke-interface { v0, p1 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/core/view/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroidx/core/view/a;->b(Landroid/view/View;)Landroidx/core/view/e0/d;
    move-result-object p1
    return-object p1
  :L0
  .line 3
    invoke-super { p0, p1 }, Landroidx/core/view/a;->b(Landroid/view/View;)Landroidx/core/view/e0/d;
    move-result-object p1
    return-object p1
.end method

.method public f(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->e:Ljava/util/Map;
    invoke-interface { v0, p1 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/core/view/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1, p2 }, Landroidx/core/view/a;->f(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    goto :L1
  :L0
  .line 3
    invoke-super { p0, p1, p2 }, Landroidx/core/view/a;->f(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
  :L1
    return-void
.end method

.method public g(Landroid/view/View;Landroidx/core/view/e0/c;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->d:Landroidx/recyclerview/widget/k;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/k;->o()Z
    move-result v0
    if-nez v0, :L1
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->d:Landroidx/recyclerview/widget/k;
    iget-object v0, v0, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/RecyclerView;
  .line 2
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;
    move-result-object v0
    if-eqz v0, :L1
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->d:Landroidx/recyclerview/widget/k;
    iget-object v0, v0, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;
    move-result-object v0
  .line 4
    invoke-virtual { v0, p1, p2 }, Landroidx/recyclerview/widget/RecyclerView$n;->O0(Landroid/view/View;Landroidx/core/view/e0/c;)V
  .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->e:Ljava/util/Map;
    invoke-interface { v0, p1 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/core/view/a;
    if-eqz v0, :L0
  .line 6
    invoke-virtual { v0, p1, p2 }, Landroidx/core/view/a;->g(Landroid/view/View;Landroidx/core/view/e0/c;)V
    goto :L2
  :L0
  .line 7
    invoke-super { p0, p1, p2 }, Landroidx/core/view/a;->g(Landroid/view/View;Landroidx/core/view/e0/c;)V
    goto :L2
  :L1
  .line 8
    invoke-super { p0, p1, p2 }, Landroidx/core/view/a;->g(Landroid/view/View;Landroidx/core/view/e0/c;)V
  :L2
    return-void
.end method

.method public h(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->e:Ljava/util/Map;
    invoke-interface { v0, p1 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/core/view/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1, p2 }, Landroidx/core/view/a;->h(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    goto :L1
  :L0
  .line 3
    invoke-super { p0, p1, p2 }, Landroidx/core/view/a;->h(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
  :L1
    return-void
.end method

.method public i(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->e:Ljava/util/Map;
    invoke-interface { v0, p1 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/core/view/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1, p2, p3 }, Landroidx/core/view/a;->i(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    move-result p1
    return p1
  :L0
  .line 3
    invoke-super { p0, p1, p2, p3 }, Landroidx/core/view/a;->i(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    move-result p1
    return p1
.end method

.method public j(Landroid/view/View;ILandroid/os/Bundle;)Z
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->d:Landroidx/recyclerview/widget/k;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/k;->o()Z
    move-result v0
    if-nez v0, :L2
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->d:Landroidx/recyclerview/widget/k;
    iget-object v0, v0, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/RecyclerView;
  .line 2
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;
    move-result-object v0
    if-eqz v0, :L2
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->e:Ljava/util/Map;
    invoke-interface { v0, p1 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/core/view/a;
    const/4 v1, 1
    if-eqz v0, :L0
  .line 4
    invoke-virtual { v0, p1, p2, p3 }, Landroidx/core/view/a;->j(Landroid/view/View;ILandroid/os/Bundle;)Z
    move-result v0
    if-eqz v0, :L1
    return v1
  :L0
  .line 5
    invoke-super { p0, p1, p2, p3 }, Landroidx/core/view/a;->j(Landroid/view/View;ILandroid/os/Bundle;)Z
    move-result v0
    if-eqz v0, :L1
    return v1
  :L1
  .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->d:Landroidx/recyclerview/widget/k;
    iget-object v0, v0, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;
    move-result-object v0
  .line 7
    invoke-virtual { v0, p1, p2, p3 }, Landroidx/recyclerview/widget/RecyclerView$n;->i1(Landroid/view/View;ILandroid/os/Bundle;)Z
    move-result p1
    return p1
  :L2
  .line 8
    invoke-super { p0, p1, p2, p3 }, Landroidx/core/view/a;->j(Landroid/view/View;ILandroid/os/Bundle;)Z
    move-result p1
    return p1
.end method

.method public l(Landroid/view/View;I)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->e:Ljava/util/Map;
    invoke-interface { v0, p1 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/core/view/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1, p2 }, Landroidx/core/view/a;->l(Landroid/view/View;I)V
    goto :L1
  :L0
  .line 3
    invoke-super { p0, p1, p2 }, Landroidx/core/view/a;->l(Landroid/view/View;I)V
  :L1
    return-void
.end method

.method public m(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->e:Ljava/util/Map;
    invoke-interface { v0, p1 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/core/view/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1, p2 }, Landroidx/core/view/a;->m(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    goto :L1
  :L0
  .line 3
    invoke-super { p0, p1, p2 }, Landroidx/core/view/a;->m(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
  :L1
    return-void
.end method

.method n(Landroid/view/View;)Landroidx/core/view/a;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->e:Ljava/util/Map;
    invoke-interface { v0, p1 }, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroidx/core/view/a;
    return-object p1
.end method

.method o(Landroid/view/View;)V
  .registers 4
  .line 1
    invoke-static { p1 }, Landroidx/core/view/v;->l(Landroid/view/View;)Landroidx/core/view/a;
    move-result-object v0
    if-eqz v0, :L0
    if-eq v0, p0, :L0
  .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/k$a;->e:Ljava/util/Map;
    invoke-interface { v1, p1, v0 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L0
    return-void
.end method
