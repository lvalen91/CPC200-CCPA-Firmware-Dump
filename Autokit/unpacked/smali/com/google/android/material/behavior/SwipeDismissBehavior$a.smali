.class Lcom/google/android/material/behavior/SwipeDismissBehavior$a;
.super Lc/i/b/c$c;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/google/android/material/behavior/SwipeDismissBehavior;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field private a:I

.field private b:I

.field final synthetic c:Lcom/google/android/material/behavior/SwipeDismissBehavior;

.method constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->c:Lcom/google/android/material/behavior/SwipeDismissBehavior;
    invoke-direct { p0 }, Lc/i/b/c$c;-><init>()V
    const/4 p1, -1
  .line 2
    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->b:I
    return-void
.end method

.method private n(Landroid/view/View;F)Z
  .registers 8
    const/4 v0, 0
    const/4 v1, 0
    const/4 v2, 1
    cmpl-float v3, p2, v0
    if-eqz v3, :L10
  .line 1
    invoke-static { p1 }, Landroidx/core/view/v;->C(Landroid/view/View;)I
    move-result p1
    if-ne p1, v2, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
  .line 2
    iget-object v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->c:Lcom/google/android/material/behavior/SwipeDismissBehavior;
    iget v3, v3, Lcom/google/android/material/behavior/SwipeDismissBehavior;->f:I
    const/4 v4, 2
    if-ne v3, v4, :L2
    return v2
  :L2
    if-nez v3, :L6
    if-eqz p1, :L3
    cmpg-float p1, p2, v0
    if-gez p1, :L5
    goto :L4
  :L3
    cmpl-float p1, p2, v0
    if-lez p1, :L5
  :L4
    const/4 v1, 1
  :L5
    return v1
  :L6
    if-ne v3, v2, :L9
    if-eqz p1, :L7
    cmpl-float p1, p2, v0
    if-lez p1, :L9
    goto :L8
  :L7
    cmpg-float p1, p2, v0
    if-gez p1, :L9
  :L8
    const/4 v1, 1
  :L9
    return v1
  :L10
  .line 3
    invoke-virtual { p1 }, Landroid/view/View;->getLeft()I
    move-result p2
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->a:I
    sub-int/2addr p2, v0
  .line 4
    invoke-virtual { p1 }, Landroid/view/View;->getWidth()I
    move-result p1
    int-to-float p1, p1
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->c:Lcom/google/android/material/behavior/SwipeDismissBehavior;
    iget v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->g:F
    mul-float p1, p1, v0
    invoke-static { p1 }, Ljava/lang/Math;->round(F)I
    move-result p1
  .line 5
    invoke-static { p2 }, Ljava/lang/Math;->abs(I)I
    move-result p2
    if-lt p2, p1, :L11
    const/4 v1, 1
  :L11
    return v1
.end method

.method public a(Landroid/view/View;II)I
  .registers 6
  .line 1
    invoke-static { p1 }, Landroidx/core/view/v;->C(Landroid/view/View;)I
    move-result p3
    const/4 v0, 1
    if-ne p3, v0, :L0
    const/4 p3, 1
    goto :L1
  :L0
    const/4 p3, 0
  :L1
  .line 2
    iget-object v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->c:Lcom/google/android/material/behavior/SwipeDismissBehavior;
    iget v1, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->f:I
    if-nez v1, :L4
    if-eqz p3, :L2
  .line 3
    iget p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->a:I
    invoke-virtual { p1 }, Landroid/view/View;->getWidth()I
    move-result p1
    sub-int/2addr p3, p1
  .line 4
    iget p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->a:I
    goto :L7
  :L2
  .line 5
    iget p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->a:I
  .line 6
    invoke-virtual { p1 }, Landroid/view/View;->getWidth()I
    move-result p1
  :L3
    add-int/2addr p1, p3
    goto :L7
  :L4
    if-ne v1, v0, :L6
    if-eqz p3, :L5
  .line 7
    iget p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->a:I
  .line 8
    invoke-virtual { p1 }, Landroid/view/View;->getWidth()I
    move-result p1
    goto :L3
  :L5
  .line 9
    iget p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->a:I
    invoke-virtual { p1 }, Landroid/view/View;->getWidth()I
    move-result p1
    sub-int/2addr p3, p1
  .line 10
    iget p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->a:I
    goto :L7
  :L6
  .line 11
    iget p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->a:I
    invoke-virtual { p1 }, Landroid/view/View;->getWidth()I
    move-result v0
    sub-int/2addr p3, v0
  .line 12
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->a:I
    invoke-virtual { p1 }, Landroid/view/View;->getWidth()I
    move-result p1
    add-int/2addr p1, v0
  :L7
  .line 13
    invoke-static { p3, p2, p1 }, Lcom/google/android/material/behavior/SwipeDismissBehavior;->G(III)I
    move-result p1
    return p1
.end method

.method public b(Landroid/view/View;II)I
  .registers 4
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getTop()I
    move-result p1
    return p1
.end method

.method public d(Landroid/view/View;)I
  .registers 2
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getWidth()I
    move-result p1
    return p1
.end method

.method public i(Landroid/view/View;I)V
  .registers 3
  .line 1
    iput p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->b:I
  .line 2
    invoke-virtual { p1 }, Landroid/view/View;->getLeft()I
    move-result p2
    iput p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->a:I
  .line 3
    invoke-virtual { p1 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object p1
    if-eqz p1, :L0
    const/4 p2, 1
  .line 4
    invoke-interface { p1, p2 }, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V
  :L0
    return-void
.end method

.method public j(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->c:Lcom/google/android/material/behavior/SwipeDismissBehavior;
    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:Lcom/google/android/material/behavior/SwipeDismissBehavior$c;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0, p1 }, Lcom/google/android/material/behavior/SwipeDismissBehavior$c;->b(I)V
  :L0
    return-void
.end method

.method public k(Landroid/view/View;IIII)V
  .registers 8
  .line 1
    iget p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->a:I
    int-to-float p3, p3
  .line 2
    invoke-virtual { p1 }, Landroid/view/View;->getWidth()I
    move-result p4
    int-to-float p4, p4
    iget-object p5, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->c:Lcom/google/android/material/behavior/SwipeDismissBehavior;
    iget p5, p5, Lcom/google/android/material/behavior/SwipeDismissBehavior;->h:F
    mul-float p4, p4, p5
    add-float/2addr p3, p4
  .line 3
    iget p4, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->a:I
    int-to-float p4, p4
  .line 4
    invoke-virtual { p1 }, Landroid/view/View;->getWidth()I
    move-result p5
    int-to-float p5, p5
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->c:Lcom/google/android/material/behavior/SwipeDismissBehavior;
    iget v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->i:F
    mul-float p5, p5, v0
    add-float/2addr p4, p5
    int-to-float p2, p2
    const/high16 p5, 16256
    cmpg-float v0, p2, p3
    if-gtz v0, :L0
  .line 5
    invoke-virtual { p1, p5 }, Landroid/view/View;->setAlpha(F)V
    goto :L2
  :L0
    const/4 v0, 0
    cmpl-float v1, p2, p4
    if-ltz v1, :L1
  .line 6
    invoke-virtual { p1, v0 }, Landroid/view/View;->setAlpha(F)V
    goto :L2
  :L1
  .line 7
    invoke-static { p3, p4, p2 }, Lcom/google/android/material/behavior/SwipeDismissBehavior;->I(FFF)F
    move-result p2
    sub-float p2, p5, p2
  .line 8
    invoke-static { v0, p2, p5 }, Lcom/google/android/material/behavior/SwipeDismissBehavior;->F(FFF)F
    move-result p2
    invoke-virtual { p1, p2 }, Landroid/view/View;->setAlpha(F)V
  :L2
    return-void
.end method

.method public l(Landroid/view/View;FF)V
  .registers 6
    const/4 p3, -1
  .line 1
    iput p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->b:I
  .line 2
    invoke-virtual { p1 }, Landroid/view/View;->getWidth()I
    move-result p3
  .line 3
    invoke-direct { p0, p1, p2 }, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->n(Landroid/view/View;F)Z
    move-result p2
    if-eqz p2, :L2
  .line 4
    invoke-virtual { p1 }, Landroid/view/View;->getLeft()I
    move-result p2
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->a:I
    if-ge p2, v0, :L0
    sub-int/2addr v0, p3
    goto :L1
  :L0
    add-int/2addr v0, p3
  :L1
    const/4 p2, 1
    goto :L3
  :L2
  .line 5
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->a:I
    const/4 p2, 0
  :L3
  .line 6
    iget-object p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->c:Lcom/google/android/material/behavior/SwipeDismissBehavior;
    iget-object p3, p3, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Lc/i/b/c;
    invoke-virtual { p1 }, Landroid/view/View;->getTop()I
    move-result v1
    invoke-virtual { p3, v0, v1 }, Lc/i/b/c;->F(II)Z
    move-result p3
    if-eqz p3, :L4
  .line 7
    new-instance p3, Lcom/google/android/material/behavior/SwipeDismissBehavior$d;
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->c:Lcom/google/android/material/behavior/SwipeDismissBehavior;
    invoke-direct { p3, v0, p1, p2 }, Lcom/google/android/material/behavior/SwipeDismissBehavior$d;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V
    invoke-static { p1, p3 }, Landroidx/core/view/v;->g0(Landroid/view/View;Ljava/lang/Runnable;)V
    goto :L5
  :L4
    if-eqz p2, :L5
  .line 8
    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->c:Lcom/google/android/material/behavior/SwipeDismissBehavior;
    iget-object p2, p2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:Lcom/google/android/material/behavior/SwipeDismissBehavior$c;
    if-eqz p2, :L5
  .line 9
    invoke-interface { p2, p1 }, Lcom/google/android/material/behavior/SwipeDismissBehavior$c;->a(Landroid/view/View;)V
  :L5
    return-void
.end method

.method public m(Landroid/view/View;I)Z
  .registers 5
  .line 1
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->b:I
    const/4 v1, -1
    if-eq v0, v1, :L0
    if-ne v0, p2, :L1
  :L0
    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->c:Lcom/google/android/material/behavior/SwipeDismissBehavior;
  .line 2
    invoke-virtual { p2, p1 }, Lcom/google/android/material/behavior/SwipeDismissBehavior;->E(Landroid/view/View;)Z
    move-result p1
    if-eqz p1, :L1
    const/4 p1, 1
    goto :L2
  :L1
    const/4 p1, 0
  :L2
    return p1
.end method
