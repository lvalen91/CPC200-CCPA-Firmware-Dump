.class final Landroidx/core/view/a$a;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/core/view/a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 24
  name = "a"
.end annotation

.field final a:Landroidx/core/view/a;

.method constructor <init>(Landroidx/core/view/a;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Landroid/view/View$AccessibilityDelegate;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/core/view/a$a;->a:Landroidx/core/view/a;
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/core/view/a$a;->a:Landroidx/core/view/a;
    invoke-virtual { v0, p1, p2 }, Landroidx/core/view/a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    move-result p1
    return p1
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/view/a$a;->a:Landroidx/core/view/a;
  .line 2
    invoke-virtual { v0, p1 }, Landroidx/core/view/a;->b(Landroid/view/View;)Landroidx/core/view/e0/d;
    move-result-object p1
    if-eqz p1, :L0
  .line 3
    invoke-virtual { p1 }, Landroidx/core/view/e0/d;->e()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeProvider;
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/core/view/a$a;->a:Landroidx/core/view/a;
    invoke-virtual { v0, p1, p2 }, Landroidx/core/view/a;->f(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
  .registers 5
  .line 1
    invoke-static { p2 }, Landroidx/core/view/e0/c;->v0(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/e0/c;
    move-result-object v0
  .line 2
    invoke-static { p1 }, Landroidx/core/view/v;->W(Landroid/view/View;)Z
    move-result v1
    invoke-virtual { v0, v1 }, Landroidx/core/view/e0/c;->m0(Z)V
  .line 3
    invoke-static { p1 }, Landroidx/core/view/v;->R(Landroid/view/View;)Z
    move-result v1
    invoke-virtual { v0, v1 }, Landroidx/core/view/e0/c;->f0(Z)V
  .line 4
    invoke-static { p1 }, Landroidx/core/view/v;->p(Landroid/view/View;)Ljava/lang/CharSequence;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroidx/core/view/e0/c;->j0(Ljava/lang/CharSequence;)V
  .line 5
    invoke-static { p1 }, Landroidx/core/view/v;->K(Landroid/view/View;)Ljava/lang/CharSequence;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroidx/core/view/e0/c;->q0(Ljava/lang/CharSequence;)V
  .line 6
    iget-object v1, p0, Landroidx/core/view/a$a;->a:Landroidx/core/view/a;
    invoke-virtual { v1, p1, v0 }, Landroidx/core/view/a;->g(Landroid/view/View;Landroidx/core/view/e0/c;)V
  .line 7
    invoke-virtual { p2 }, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;
    move-result-object p2
    invoke-virtual { v0, p2, p1 }, Landroidx/core/view/e0/c;->e(Ljava/lang/CharSequence;Landroid/view/View;)V
  .line 8
    invoke-static { p1 }, Landroidx/core/view/a;->c(Landroid/view/View;)Ljava/util/List;
    move-result-object p1
    const/4 p2, 0
  :L0
  .line 9
    invoke-interface { p1 }, Ljava/util/List;->size()I
    move-result v1
    if-ge p2, v1, :L1
  .line 10
    invoke-interface { p1, p2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/core/view/e0/c$a;
    invoke-virtual { v0, v1 }, Landroidx/core/view/e0/c;->b(Landroidx/core/view/e0/c$a;)V
    add-int/lit8 p2, p2, 1
    goto :L0
  :L1
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/core/view/a$a;->a:Landroidx/core/view/a;
    invoke-virtual { v0, p1, p2 }, Landroidx/core/view/a;->h(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/core/view/a$a;->a:Landroidx/core/view/a;
    invoke-virtual { v0, p1, p2, p3 }, Landroidx/core/view/a;->i(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    move-result p1
    return p1
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/core/view/a$a;->a:Landroidx/core/view/a;
    invoke-virtual { v0, p1, p2, p3 }, Landroidx/core/view/a;->j(Landroid/view/View;ILandroid/os/Bundle;)Z
    move-result p1
    return p1
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/core/view/a$a;->a:Landroidx/core/view/a;
    invoke-virtual { v0, p1, p2 }, Landroidx/core/view/a;->l(Landroid/view/View;I)V
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/core/view/a$a;->a:Landroidx/core/view/a;
    invoke-virtual { v0, p1, p2 }, Landroidx/core/view/a;->m(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    return-void
.end method
