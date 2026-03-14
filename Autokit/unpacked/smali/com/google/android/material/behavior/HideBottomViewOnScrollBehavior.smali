.class public Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "<V:",
    "Landroid/view/View;",
    ">",
    "Landroidx/coordinatorlayout/widget/CoordinatorLayout$c<",
    "TV;>;"
  }
.end annotation

.field private a:I

.field private b:I

.field private c:I

.field private d:Landroid/view/ViewPropertyAnimator;

.method public constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;-><init>()V
    const/4 v0, 0
  .line 2
    iput v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->a:I
    const/4 v1, 2
  .line 3
    iput v1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->b:I
  .line 4
    iput v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->c:I
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 3
  .line 5
    invoke-direct { p0, p1, p2 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    const/4 p1, 0
  .line 6
    iput p1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->a:I
    const/4 p2, 2
  .line 7
    iput p2, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->b:I
  .line 8
    iput p1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->c:I
    return-void
.end method

.method static synthetic E(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->d:Landroid/view/ViewPropertyAnimator;
    return-object p1
.end method

.method private F(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TV;IJ",
      "Landroid/animation/TimeInterpolator;",
      ")V"
    }
  .end annotation
  .registers 6
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    int-to-float p2, p2
  .line 2
    invoke-virtual { p1, p2 }, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;
    move-result-object p1
  .line 3
    invoke-virtual { p1, p5 }, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;
    move-result-object p1
  .line 4
    invoke-virtual { p1, p3, p4 }, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    new-instance p2, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$a;
    invoke-direct { p2, p0 }, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$a;-><init>(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;)V
  .line 5
    invoke-virtual { p1, p2 }, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    iput-object p1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->d:Landroid/view/ViewPropertyAnimator;
    return-void
.end method

.method public A(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;",
      "Landroid/view/View;",
      "Landroid/view/View;",
      "II)Z"
    }
  .end annotation
  .registers 7
    const/4 p1, 2
    if-ne p5, p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method public G(Landroid/view/View;I)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TV;I)V"
    }
  .end annotation
  .registers 5
  .line 1
    iput p2, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->c:I
  .line 2
    iget v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->b:I
    const/4 v1, 1
    if-ne v0, v1, :L0
  .line 3
    iget v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->a:I
    add-int/2addr v0, p2
    int-to-float p2, v0
    invoke-virtual { p1, p2 }, Landroid/view/View;->setTranslationY(F)V
  :L0
    return-void
.end method

.method public H(Landroid/view/View;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TV;)V"
    }
  .end annotation
  .registers 10
  .line 1
    iget v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->b:I
    const/4 v1, 1
    if-ne v0, v1, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->d:Landroid/view/ViewPropertyAnimator;
    if-eqz v0, :L1
  .line 3
    invoke-virtual { v0 }, Landroid/view/ViewPropertyAnimator;->cancel()V
  .line 4
    invoke-virtual { p1 }, Landroid/view/View;->clearAnimation()V
  :L1
  .line 5
    iput v1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->b:I
  .line 6
    iget v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->a:I
    iget v1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->c:I
    add-int v4, v0, v1
    const-wide/16 v5, 175
    sget-object v7, Ld/c/a/a/l/a;->c:Landroid/animation/TimeInterpolator;
    move-object v2, p0
    move-object v3, p1
    invoke-direct/range { v2 .. v7 }, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->F(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V
    return-void
.end method

.method public I(Landroid/view/View;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TV;)V"
    }
  .end annotation
  .registers 10
  .line 1
    iget v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->b:I
    const/4 v1, 2
    if-ne v0, v1, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->d:Landroid/view/ViewPropertyAnimator;
    if-eqz v0, :L1
  .line 3
    invoke-virtual { v0 }, Landroid/view/ViewPropertyAnimator;->cancel()V
  .line 4
    invoke-virtual { p1 }, Landroid/view/View;->clearAnimation()V
  :L1
  .line 5
    iput v1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->b:I
    const/4 v4, 0
    const-wide/16 v5, 225
  .line 6
    sget-object v7, Ld/c/a/a/l/a;->d:Landroid/animation/TimeInterpolator;
    move-object v2, p0
    move-object v3, p1
    invoke-direct/range { v2 .. v7 }, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->F(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V
    return-void
.end method

.method public l(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;I)Z"
    }
  .end annotation
  .registers 6
  .line 1
    invoke-virtual { p2 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;
  .line 2
    invoke-virtual { p2 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v1
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    add-int/2addr v1, v0
    iput v1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->a:I
  .line 3
    invoke-super { p0, p1, p2, p3 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->l(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    move-result p1
    return p1
.end method

.method public t(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;",
      "Landroid/view/View;",
      "IIIII[I)V"
    }
  .end annotation
  .registers 10
    if-lez p5, :L0
  .line 1
    invoke-virtual { p0, p2 }, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->H(Landroid/view/View;)V
    goto :L1
  :L0
    if-gez p5, :L1
  .line 2
    invoke-virtual { p0, p2 }, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->I(Landroid/view/View;)V
  :L1
    return-void
.end method
