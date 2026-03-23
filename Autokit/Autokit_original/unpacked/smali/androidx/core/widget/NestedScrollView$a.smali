.class Landroidx/core/widget/NestedScrollView$a;
.super Landroidx/core/view/a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/core/widget/NestedScrollView;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "a"
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Landroidx/core/view/a;-><init>()V
    return-void
.end method

.method public f(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
  .registers 4
  .line 1
    invoke-super { p0, p1, p2 }, Landroidx/core/view/a;->f(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
  .line 2
    check-cast p1, Landroidx/core/widget/NestedScrollView;
  .line 3
    const-class v0, Landroid/widget/ScrollView;
    invoke-virtual { v0 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p2, v0 }, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V
  .line 4
    invoke-virtual { p1 }, Landroidx/core/widget/NestedScrollView;->getScrollRange()I
    move-result v0
    if-lez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
  .line 5
    invoke-virtual { p2, v0 }, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V
  .line 6
    invoke-virtual { p1 }, Landroid/widget/FrameLayout;->getScrollX()I
    move-result v0
    invoke-virtual { p2, v0 }, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V
  .line 7
    invoke-virtual { p1 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result v0
    invoke-virtual { p2, v0 }, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V
  .line 8
    invoke-virtual { p1 }, Landroid/widget/FrameLayout;->getScrollX()I
    move-result v0
    invoke-static { p2, v0 }, Landroidx/core/view/e0/e;->a(Landroid/view/accessibility/AccessibilityRecord;I)V
  .line 9
    invoke-virtual { p1 }, Landroidx/core/widget/NestedScrollView;->getScrollRange()I
    move-result p1
    invoke-static { p2, p1 }, Landroidx/core/view/e0/e;->b(Landroid/view/accessibility/AccessibilityRecord;I)V
    return-void
.end method

.method public g(Landroid/view/View;Landroidx/core/view/e0/c;)V
  .registers 5
  .line 1
    invoke-super { p0, p1, p2 }, Landroidx/core/view/a;->g(Landroid/view/View;Landroidx/core/view/e0/c;)V
  .line 2
    check-cast p1, Landroidx/core/widget/NestedScrollView;
  .line 3
    const-class v0, Landroid/widget/ScrollView;
    invoke-virtual { v0 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p2, v0 }, Landroidx/core/view/e0/c;->W(Ljava/lang/CharSequence;)V
  .line 4
    invoke-virtual { p1 }, Landroid/widget/FrameLayout;->isEnabled()Z
    move-result v0
    if-eqz v0, :L1
  .line 5
    invoke-virtual { p1 }, Landroidx/core/widget/NestedScrollView;->getScrollRange()I
    move-result v0
    if-lez v0, :L1
    const/4 v1, 1
  .line 6
    invoke-virtual { p2, v1 }, Landroidx/core/view/e0/c;->n0(Z)V
  .line 7
    invoke-virtual { p1 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result v1
    if-lez v1, :L0
  .line 8
    sget-object v1, Landroidx/core/view/e0/c$a;->g:Landroidx/core/view/e0/c$a;
    invoke-virtual { p2, v1 }, Landroidx/core/view/e0/c;->b(Landroidx/core/view/e0/c$a;)V
  .line 9
    sget-object v1, Landroidx/core/view/e0/c$a;->k:Landroidx/core/view/e0/c$a;
    invoke-virtual { p2, v1 }, Landroidx/core/view/e0/c;->b(Landroidx/core/view/e0/c$a;)V
  :L0
  .line 10
    invoke-virtual { p1 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result p1
    if-ge p1, v0, :L1
  .line 11
    sget-object p1, Landroidx/core/view/e0/c$a;->f:Landroidx/core/view/e0/c$a;
    invoke-virtual { p2, p1 }, Landroidx/core/view/e0/c;->b(Landroidx/core/view/e0/c$a;)V
  .line 12
    sget-object p1, Landroidx/core/view/e0/c$a;->l:Landroidx/core/view/e0/c$a;
    invoke-virtual { p2, p1 }, Landroidx/core/view/e0/c;->b(Landroidx/core/view/e0/c$a;)V
  :L1
    return-void
.end method

.method public j(Landroid/view/View;ILandroid/os/Bundle;)Z
  .registers 6
  .line 1
    invoke-super { p0, p1, p2, p3 }, Landroidx/core/view/a;->j(Landroid/view/View;ILandroid/os/Bundle;)Z
    move-result p3
    const/4 v0, 1
    if-eqz p3, :L0
    return v0
  :L0
  .line 2
    check-cast p1, Landroidx/core/widget/NestedScrollView;
  .line 3
    invoke-virtual { p1 }, Landroid/widget/FrameLayout;->isEnabled()Z
    move-result p3
    const/4 v1, 0
    if-nez p3, :L1
    return v1
  :L1
    const/16 p3, 4096
    if-eq p2, p3, :L4
    const/16 p3, 8192
    if-eq p2, p3, :L2
    const p3, 16908344
    if-eq p2, p3, :L2
    const p3, 16908346
    if-eq p2, p3, :L4
    return v1
  :L2
  .line 4
    invoke-virtual { p1 }, Landroid/widget/FrameLayout;->getHeight()I
    move-result p2
    invoke-virtual { p1 }, Landroid/widget/FrameLayout;->getPaddingBottom()I
    move-result p3
    sub-int/2addr p2, p3
  .line 5
    invoke-virtual { p1 }, Landroid/widget/FrameLayout;->getPaddingTop()I
    move-result p3
    sub-int/2addr p2, p3
  .line 6
    invoke-virtual { p1 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result p3
    sub-int/2addr p3, p2
    invoke-static { p3, v1 }, Ljava/lang/Math;->max(II)I
    move-result p2
  .line 7
    invoke-virtual { p1 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result p3
    if-eq p2, p3, :L3
  .line 8
    invoke-virtual { p1, v1, p2, v0 }, Landroidx/core/widget/NestedScrollView;->O(IIZ)V
    return v0
  :L3
    return v1
  :L4
  .line 9
    invoke-virtual { p1 }, Landroid/widget/FrameLayout;->getHeight()I
    move-result p2
    invoke-virtual { p1 }, Landroid/widget/FrameLayout;->getPaddingBottom()I
    move-result p3
    sub-int/2addr p2, p3
  .line 10
    invoke-virtual { p1 }, Landroid/widget/FrameLayout;->getPaddingTop()I
    move-result p3
    sub-int/2addr p2, p3
  .line 11
    invoke-virtual { p1 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result p3
    add-int/2addr p3, p2
  .line 12
    invoke-virtual { p1 }, Landroidx/core/widget/NestedScrollView;->getScrollRange()I
    move-result p2
  .line 13
    invoke-static { p3, p2 }, Ljava/lang/Math;->min(II)I
    move-result p2
  .line 14
    invoke-virtual { p1 }, Landroid/widget/FrameLayout;->getScrollY()I
    move-result p3
    if-eq p2, p3, :L5
  .line 15
    invoke-virtual { p1, v1, p2, v0 }, Landroidx/core/widget/NestedScrollView;->O(IIZ)V
    return v0
  :L5
    return v1
.end method
