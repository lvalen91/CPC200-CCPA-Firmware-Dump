.class public Lcom/google/android/material/appbar/AppBarLayout;
.super Landroid/widget/LinearLayout;
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;,
    Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;,
    Lcom/google/android/material/appbar/AppBarLayout$Behavior;,
    Lcom/google/android/material/appbar/AppBarLayout$c;,
    Lcom/google/android/material/appbar/AppBarLayout$b;
  }
.end annotation

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:I

.field private h:Landroidx/core/view/d0;

.field private i:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Lcom/google/android/material/appbar/AppBarLayout$b;",
      ">;"
    }
  .end annotation
.end field

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:I

.field private o:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Landroid/view/View;",
      ">;"
    }
  .end annotation
.end field

.field private p:Landroid/animation/ValueAnimator;

.field private q:[I

.field private r:Landroid/graphics/drawable/Drawable;

.method static constructor <clinit>()V
  .registers 2
    return-void
.end method

.method private a()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->o:Ljava/lang/ref/WeakReference;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->clear()V
  :L0
    const/4 v0, 0
  .line 3
    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->o:Ljava/lang/ref/WeakReference;
    return-void
.end method

.method private b(Landroid/view/View;)Landroid/view/View;
  .registers 5
  .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->o:Ljava/lang/ref/WeakReference;
    const/4 v1, 0
    if-nez v0, :L3
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->n:I
    const/4 v2, -1
    if-eq v0, v2, :L3
    if-eqz p1, :L0
  .line 2
    invoke-virtual { p1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p1
    goto :L1
  :L0
    move-object p1, v1
  :L1
    if-nez p1, :L2
  .line 3
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    instance-of v0, v0, Landroid/view/ViewGroup;
    if-eqz v0, :L2
  .line 4
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;
    move-result-object p1
    check-cast p1, Landroid/view/ViewGroup;
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->n:I
    invoke-virtual { p1, v0 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object p1
  :L2
    if-eqz p1, :L3
  .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->o:Ljava/lang/ref/WeakReference;
  :L3
  .line 6
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->o:Ljava/lang/ref/WeakReference;
    if-eqz p1, :L4
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    move-object v1, p1
    check-cast v1, Landroid/view/View;
  :L4
    return-object v1
.end method

.method private g()Z
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getChildCount()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L2
  .line 2
    invoke-virtual { p0, v2 }, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v3
    invoke-virtual { v3 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v3
    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout$c;
    invoke-virtual { v3 }, Lcom/google/android/material/appbar/AppBarLayout$c;->c()Z
    move-result v3
    if-eqz v3, :L1
    const/4 v0, 1
    return v0
  :L1
    add-int/lit8 v2, v2, 1
    goto :L0
  :L2
    return v1
.end method

.method private i()V
  .registers 2
    const/4 v0, -1
  .line 1
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->c:I
  .line 2
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->d:I
  .line 3
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->e:I
    return-void
.end method

.method private n(ZZZ)V
  .registers 5
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 2
  :L1
    const/4 v0, 0
    if-eqz p2, :L2
    const/4 p2, 4
    goto :L3
  :L2
    const/4 p2, 0
  :L3
    or-int/2addr p1, p2
    if-eqz p3, :L4
    const/16 v0, 8
  :L4
    or-int/2addr p1, v0
  .line 1
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->g:I
  .line 2
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->requestLayout()V
    return-void
.end method

.method private o(Z)Z
  .registers 3
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->k:Z
    if-eq v0, p1, :L0
  .line 2
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->k:Z
  .line 3
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->refreshDrawableState()V
    const/4 p1, 1
    return p1
  :L0
    const/4 p1, 0
    return p1
.end method

.method private q()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->r:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
    invoke-virtual { p0 }, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I
    move-result v0
    if-lez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method private s()Z
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getChildCount()I
    move-result v0
    const/4 v1, 0
    if-lez v0, :L0
  .line 2
    invoke-virtual { p0, v1 }, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v0
  .line 3
    invoke-virtual { v0 }, Landroid/view/View;->getVisibility()I
    move-result v2
    const/16 v3, 8
    if-eq v2, v3, :L0
    invoke-static { v0 }, Landroidx/core/view/v;->z(Landroid/view/View;)Z
    move-result v0
    if-nez v0, :L0
    const/4 v1, 1
  :L0
    return v1
.end method

.method private t(Ld/c/a/a/a0/g;Z)V
  .registers 6
  .line 1
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    sget v1, Ld/c/a/a/d;->design_appbar_elevation:I
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getDimension(I)F
    move-result v0
    const/4 v1, 0
    if-eqz p2, :L0
    const/4 v2, 0
    goto :L1
  :L0
    move v2, v0
  :L1
    if-eqz p2, :L2
    goto :L3
  :L2
    const/4 v0, 0
  :L3
  .line 2
    iget-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->p:Landroid/animation/ValueAnimator;
    if-eqz p2, :L4
  .line 3
    invoke-virtual { p2 }, Landroid/animation/ValueAnimator;->cancel()V
  :L4
    const/4 p2, 2
    new-array p2, p2, [F
    const/4 v1, 0
    aput v2, p2, v1
    const/4 v1, 1
    aput v0, p2, v1
  .line 4
    invoke-static { p2 }, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;
    move-result-object p2
    iput-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->p:Landroid/animation/ValueAnimator;
  .line 5
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    sget v1, Ld/c/a/a/g;->app_bar_elevation_anim_duration:I
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getInteger(I)I
    move-result v0
    int-to-long v0, v0
  .line 6
    invoke-virtual { p2, v0, v1 }, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;
  .line 7
    iget-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->p:Landroid/animation/ValueAnimator;
    sget-object v0, Ld/c/a/a/l/a;->a:Landroid/animation/TimeInterpolator;
    invoke-virtual { p2, v0 }, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V
  .line 8
    iget-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->p:Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$a;
    invoke-direct { v0, p0, p1 }, Lcom/google/android/material/appbar/AppBarLayout$a;-><init>(Lcom/google/android/material/appbar/AppBarLayout;Ld/c/a/a/a0/g;)V
    invoke-virtual { p2, v0 }, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
  .line 9
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->p:Landroid/animation/ValueAnimator;
    invoke-virtual { p1 }, Landroid/animation/ValueAnimator;->start()V
    return-void
.end method

.method private u()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/appbar/AppBarLayout;->q()Z
    move-result v0
    xor-int/lit8 v0, v0, 1
    invoke-virtual { p0, v0 }, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V
    return-void
.end method

.method protected c()Lcom/google/android/material/appbar/AppBarLayout$c;
  .registers 4
  .line 1
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$c;
    const/4 v1, -1
    const/4 v2, -2
    invoke-direct { v0, v1, v2 }, Lcom/google/android/material/appbar/AppBarLayout$c;-><init>(II)V
    return-object v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
  .registers 2
  .line 1
    instance-of p1, p1, Lcom/google/android/material/appbar/AppBarLayout$c;
    return p1
.end method

.method public d(Landroid/util/AttributeSet;)Lcom/google/android/material/appbar/AppBarLayout$c;
  .registers 4
  .line 1
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$c;
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-direct { v0, v1, p1 }, Lcom/google/android/material/appbar/AppBarLayout$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
  .registers 5
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/appbar/AppBarLayout;->q()Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    invoke-virtual { p1 }, Landroid/graphics/Canvas;->save()I
    move-result v0
    const/4 v1, 0
  .line 4
    iget v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->b:I
    neg-int v2, v2
    int-to-float v2, v2
    invoke-virtual { p1, v1, v2 }, Landroid/graphics/Canvas;->translate(FF)V
  .line 5
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->r:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v1, p1 }, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
  .line 6
    invoke-virtual { p1, v0 }, Landroid/graphics/Canvas;->restoreToCount(I)V
  :L0
    return-void
.end method

.method protected drawableStateChanged()V
  .registers 4
  .line 1
    invoke-super { p0 }, Landroid/widget/LinearLayout;->drawableStateChanged()V
  .line 2
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getDrawableState()[I
    move-result-object v0
  .line 3
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->r:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :L0
  .line 4
    invoke-virtual { v1 }, Landroid/graphics/drawable/Drawable;->isStateful()Z
    move-result v2
    if-eqz v2, :L0
    invoke-virtual { v1, v0 }, Landroid/graphics/drawable/Drawable;->setState([I)Z
    move-result v0
    if-eqz v0, :L0
  .line 5
    invoke-virtual { p0, v1 }, Landroid/widget/LinearLayout;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
  :L0
    return-void
.end method

.method protected e(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/appbar/AppBarLayout$c;
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-lt v0, v1, :L0
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :L0
  .line 2
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$c;
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct { v0, p1 }, Lcom/google/android/material/appbar/AppBarLayout$c;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V
    return-object v0
  :L0
  .line 3
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v0, :L1
  .line 4
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$c;
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-direct { v0, p1 }, Lcom/google/android/material/appbar/AppBarLayout$c;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    return-object v0
  :L1
  .line 5
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$c;
    invoke-direct { v0, p1 }, Lcom/google/android/material/appbar/AppBarLayout$c;-><init>(Landroid/view/ViewGroup$LayoutParams;)V
    return-object v0
.end method

.method f()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->f:Z
    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lcom/google/android/material/appbar/AppBarLayout;->c()Lcom/google/android/material/appbar/AppBarLayout$c;
    move-result-object v0
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
  .registers 2
  .line 2
    invoke-virtual { p0 }, Lcom/google/android/material/appbar/AppBarLayout;->c()Lcom/google/android/material/appbar/AppBarLayout$c;
    move-result-object v0
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/appbar/AppBarLayout;->d(Landroid/util/AttributeSet;)Lcom/google/android/material/appbar/AppBarLayout$c;
    move-result-object p1
    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
  .registers 2
  .line 2
    invoke-virtual { p0, p1 }, Lcom/google/android/material/appbar/AppBarLayout;->e(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/appbar/AppBarLayout$c;
    move-result-object p1
    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
  .registers 2
  .line 3
    invoke-virtual { p0, p1 }, Lcom/google/android/material/appbar/AppBarLayout;->d(Landroid/util/AttributeSet;)Lcom/google/android/material/appbar/AppBarLayout$c;
    move-result-object p1
    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
  .registers 2
  .line 4
    invoke-virtual { p0, p1 }, Lcom/google/android/material/appbar/AppBarLayout;->e(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/appbar/AppBarLayout$c;
    move-result-object p1
    return-object p1
.end method

.method public getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout$c<",
      "Lcom/google/android/material/appbar/AppBarLayout;",
      ">;"
    }
  .end annotation
  .registers 2
  .line 1
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;
    invoke-direct { v0 }, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>()V
    return-object v0
.end method

.method getDownNestedPreScrollRange()I
  .registers 10
  .line 1
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->d:I
    const/4 v1, -1
    if-eq v0, v1, :L0
    return v0
  :L0
  .line 2
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getChildCount()I
    move-result v0
    add-int/lit8 v0, v0, -1
    const/4 v1, 0
    const/4 v2, 0
  :L1
    if-ltz v0, :L9
  .line 3
    invoke-virtual { p0, v0 }, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v3
  .line 4
    invoke-virtual { v3 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v4
    check-cast v4, Lcom/google/android/material/appbar/AppBarLayout$c;
  .line 5
    invoke-virtual { v3 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v5
  .line 6
    iget v6, v4, Lcom/google/android/material/appbar/AppBarLayout$c;->a:I
    and-int/lit8 v7, v6, 5
    const/4 v8, 5
    if-ne v7, v8, :L7
  .line 7
    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
    add-int/2addr v7, v4
    and-int/lit8 v4, v6, 8
    if-eqz v4, :L3
  .line 8
    invoke-static { v3 }, Landroidx/core/view/v;->D(Landroid/view/View;)I
    move-result v4
  :L2
    add-int/2addr v7, v4
    goto :L5
  :L3
    and-int/lit8 v4, v6, 2
    if-eqz v4, :L4
  .line 9
    invoke-static { v3 }, Landroidx/core/view/v;->D(Landroid/view/View;)I
    move-result v4
    sub-int v4, v5, v4
    goto :L2
  :L4
    add-int/2addr v7, v5
  :L5
    if-nez v0, :L6
  .line 10
    invoke-static { v3 }, Landroidx/core/view/v;->z(Landroid/view/View;)Z
    move-result v3
    if-eqz v3, :L6
  .line 11
    invoke-virtual { p0 }, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I
    move-result v3
    sub-int/2addr v5, v3
    invoke-static { v7, v5 }, Ljava/lang/Math;->min(II)I
    move-result v7
  :L6
    add-int/2addr v2, v7
    goto :L8
  :L7
    if-lez v2, :L8
    goto :L9
  :L8
    add-int/lit8 v0, v0, -1
    goto :L1
  :L9
  .line 12
    invoke-static { v1, v2 }, Ljava/lang/Math;->max(II)I
    move-result v0
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->d:I
    return v0
.end method

.method getDownNestedScrollRange()I
  .registers 10
  .line 1
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->e:I
    const/4 v1, -1
    if-eq v0, v1, :L0
    return v0
  :L0
  .line 2
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getChildCount()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
    const/4 v3, 0
  :L1
    if-ge v2, v0, :L3
  .line 3
    invoke-virtual { p0, v2 }, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v4
  .line 4
    invoke-virtual { v4 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v5
    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout$c;
  .line 5
    invoke-virtual { v4 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v6
  .line 6
    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
    add-int/2addr v7, v8
    add-int/2addr v6, v7
  .line 7
    iget v5, v5, Lcom/google/android/material/appbar/AppBarLayout$c;->a:I
    and-int/lit8 v7, v5, 1
    if-eqz v7, :L3
    add-int/2addr v3, v6
    and-int/lit8 v5, v5, 2
    if-eqz v5, :L2
  .line 8
    invoke-static { v4 }, Landroidx/core/view/v;->D(Landroid/view/View;)I
    move-result v0
    sub-int/2addr v3, v0
    goto :L3
  :L2
    add-int/lit8 v2, v2, 1
    goto :L1
  :L3
  .line 9
    invoke-static { v1, v3 }, Ljava/lang/Math;->max(II)I
    move-result v0
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->e:I
    return v0
.end method

.method public getLiftOnScrollTargetViewId()I
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->n:I
    return v0
.end method

.method public final getMinimumHeightForVisibleOverlappingContent()I
  .registers 4
  .line 1
    invoke-virtual { p0 }, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I
    move-result v0
  .line 2
    invoke-static { p0 }, Landroidx/core/view/v;->D(Landroid/view/View;)I
    move-result v1
    if-eqz v1, :L1
  :L0
    mul-int/lit8 v1, v1, 2
    add-int/2addr v1, v0
    return v1
  :L1
  .line 3
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getChildCount()I
    move-result v1
    const/4 v2, 1
    if-lt v1, v2, :L2
    sub-int/2addr v1, v2
  .line 4
    invoke-virtual { p0, v1 }, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v1
    invoke-static { v1 }, Landroidx/core/view/v;->D(Landroid/view/View;)I
    move-result v1
    goto :L3
  :L2
    const/4 v1, 0
  :L3
    if-eqz v1, :L4
    goto :L0
  :L4
  .line 5
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getHeight()I
    move-result v0
    div-int/lit8 v0, v0, 3
    return v0
.end method

.method getPendingAction()I
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->g:I
    return v0
.end method

.method public getStatusBarForeground()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->r:Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method public getTargetElevation()F
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method final getTopInset()I
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->h:Landroidx/core/view/d0;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroidx/core/view/d0;->i()I
    move-result v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public final getTotalScrollRange()I
  .registers 10
  .line 1
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->c:I
    const/4 v1, -1
    if-eq v0, v1, :L0
    return v0
  :L0
  .line 2
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getChildCount()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
    const/4 v3, 0
  :L1
    if-ge v2, v0, :L4
  .line 3
    invoke-virtual { p0, v2 }, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v4
  .line 4
    invoke-virtual { v4 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v5
    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout$c;
  .line 5
    invoke-virtual { v4 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v6
  .line 6
    iget v7, v5, Lcom/google/android/material/appbar/AppBarLayout$c;->a:I
    and-int/lit8 v8, v7, 1
    if-eqz v8, :L4
  .line 7
    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    add-int/2addr v6, v8
    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
    add-int/2addr v6, v5
    add-int/2addr v3, v6
    if-nez v2, :L2
  .line 8
    invoke-static { v4 }, Landroidx/core/view/v;->z(Landroid/view/View;)Z
    move-result v5
    if-eqz v5, :L2
  .line 9
    invoke-virtual { p0 }, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I
    move-result v5
    sub-int/2addr v3, v5
  :L2
    and-int/lit8 v5, v7, 2
    if-eqz v5, :L3
  .line 10
    invoke-static { v4 }, Landroidx/core/view/v;->D(Landroid/view/View;)I
    move-result v0
    sub-int/2addr v3, v0
    goto :L4
  :L3
    add-int/lit8 v2, v2, 1
    goto :L1
  :L4
  .line 11
    invoke-static { v1, v3 }, Ljava/lang/Math;->max(II)I
    move-result v0
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->c:I
    return v0
.end method

.method getUpNestedPreScrollRange()I
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I
    move-result v0
    return v0
.end method

.method h()Z
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public j()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->m:Z
    return v0
.end method

.method k(I)V
  .registers 5
  .line 1
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->b:I
  .line 2
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->willNotDraw()Z
    move-result v0
    if-nez v0, :L0
  .line 3
    invoke-static { p0 }, Landroidx/core/view/v;->f0(Landroid/view/View;)V
  :L0
  .line 4
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->i:Ljava/util/List;
    if-eqz v0, :L3
    const/4 v1, 0
  .line 5
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
  :L1
    if-ge v1, v0, :L3
  .line 6
    iget-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->i:Ljava/util/List;
    invoke-interface { v2, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout$b;
    if-eqz v2, :L2
  .line 7
    invoke-interface { v2, p0, p1 }, Lcom/google/android/material/appbar/AppBarLayout$b;->a(Lcom/google/android/material/appbar/AppBarLayout;I)V
  :L2
    add-int/lit8 v1, v1, 1
    goto :L1
  :L3
    return-void
.end method

.method l()V
  .registers 2
    const/4 v0, 0
  .line 1
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->g:I
    return-void
.end method

.method public m(ZZ)V
  .registers 4
    const/4 v0, 1
  .line 1
    invoke-direct { p0, p1, p2, v0 }, Lcom/google/android/material/appbar/AppBarLayout;->n(ZZZ)V
    return-void
.end method

.method protected onAttachedToWindow()V
  .registers 1
  .line 1
    invoke-super { p0 }, Landroid/widget/LinearLayout;->onAttachedToWindow()V
  .line 2
    invoke-static { p0 }, Ld/c/a/a/a0/h;->e(Landroid/view/View;)V
    return-void
.end method

.method protected onCreateDrawableState(I)[I
  .registers 5
  .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->q:[I
    if-nez v0, :L0
    const/4 v0, 4
    new-array v0, v0, [I
  .line 2
    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->q:[I
  :L0
  .line 3
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->q:[I
  .line 4
    array-length v1, v0
    add-int/2addr p1, v1
    invoke-super { p0, p1 }, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I
    move-result-object p1
    const/4 v1, 0
  .line 5
    iget-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->k:Z
    if-eqz v2, :L1
    sget v2, Ld/c/a/a/b;->state_liftable:I
    goto :L2
  :L1
    sget v2, Ld/c/a/a/b;->state_liftable:I
    neg-int v2, v2
  :L2
    aput v2, v0, v1
    const/4 v1, 1
  .line 6
    iget-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->k:Z
    if-eqz v2, :L3
    iget-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->l:Z
    if-eqz v2, :L3
    sget v2, Ld/c/a/a/b;->state_lifted:I
    goto :L4
  :L3
    sget v2, Ld/c/a/a/b;->state_lifted:I
    neg-int v2, v2
  :L4
    aput v2, v0, v1
    const/4 v1, 2
  .line 7
    iget-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->k:Z
    if-eqz v2, :L5
    sget v2, Ld/c/a/a/b;->state_collapsible:I
    goto :L6
  :L5
    sget v2, Ld/c/a/a/b;->state_collapsible:I
    neg-int v2, v2
  :L6
    aput v2, v0, v1
    const/4 v1, 3
  .line 8
    iget-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->k:Z
    if-eqz v2, :L7
    iget-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->l:Z
    if-eqz v2, :L7
    sget v2, Ld/c/a/a/b;->state_collapsed:I
    goto :L8
  :L7
    sget v2, Ld/c/a/a/b;->state_collapsed:I
    neg-int v2, v2
  :L8
    aput v2, v0, v1
  .line 9
    invoke-static { p1, v0 }, Landroid/widget/LinearLayout;->mergeDrawableStates([I[I)[I
    move-result-object p1
    return-object p1
.end method

.method protected onDetachedFromWindow()V
  .registers 1
  .line 1
    invoke-super { p0 }, Landroid/widget/LinearLayout;->onDetachedFromWindow()V
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/appbar/AppBarLayout;->a()V
    return-void
.end method

.method protected onLayout(ZIIII)V
  .registers 6
  .line 1
    invoke-super/range { p0 .. p5 }, Landroid/widget/LinearLayout;->onLayout(ZIIII)V
  .line 2
    invoke-static { p0 }, Landroidx/core/view/v;->z(Landroid/view/View;)Z
    move-result p1
    const/4 p2, 1
    if-eqz p1, :L1
    invoke-direct { p0 }, Lcom/google/android/material/appbar/AppBarLayout;->s()Z
    move-result p1
    if-eqz p1, :L1
  .line 3
    invoke-virtual { p0 }, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I
    move-result p1
  .line 4
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getChildCount()I
    move-result p3
    sub-int/2addr p3, p2
  :L0
    if-ltz p3, :L1
  .line 5
    invoke-virtual { p0, p3 }, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
    move-result-object p4
    invoke-static { p4, p1 }, Landroidx/core/view/v;->Z(Landroid/view/View;I)V
    add-int/lit8 p3, p3, -1
    goto :L0
  :L1
  .line 6
    invoke-direct { p0 }, Lcom/google/android/material/appbar/AppBarLayout;->i()V
    const/4 p1, 0
  .line 7
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->f:Z
  .line 8
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getChildCount()I
    move-result p3
    const/4 p4, 0
  :L2
    if-ge p4, p3, :L4
  .line 9
    invoke-virtual { p0, p4 }, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
    move-result-object p5
  .line 10
    invoke-virtual { p5 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p5
    check-cast p5, Lcom/google/android/material/appbar/AppBarLayout$c;
  .line 11
    invoke-virtual { p5 }, Lcom/google/android/material/appbar/AppBarLayout$c;->b()Landroid/view/animation/Interpolator;
    move-result-object p5
    if-eqz p5, :L3
  .line 12
    iput-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->f:Z
    goto :L4
  :L3
    add-int/lit8 p4, p4, 1
    goto :L2
  :L4
  .line 13
    iget-object p3, p0, Lcom/google/android/material/appbar/AppBarLayout;->r:Landroid/graphics/drawable/Drawable;
    if-eqz p3, :L5
  .line 14
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getWidth()I
    move-result p4
    invoke-virtual { p0 }, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I
    move-result p5
    invoke-virtual { p3, p1, p1, p4, p5 }, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
  :L5
  .line 15
    iget-boolean p3, p0, Lcom/google/android/material/appbar/AppBarLayout;->j:Z
    if-nez p3, :L8
  .line 16
    iget-boolean p3, p0, Lcom/google/android/material/appbar/AppBarLayout;->m:Z
    if-nez p3, :L7
    invoke-direct { p0 }, Lcom/google/android/material/appbar/AppBarLayout;->g()Z
    move-result p3
    if-eqz p3, :L6
    goto :L7
  :L6
    const/4 p2, 0
  :L7
    invoke-direct { p0, p2 }, Lcom/google/android/material/appbar/AppBarLayout;->o(Z)Z
  :L8
    return-void
.end method

.method protected onMeasure(II)V
  .registers 5
  .line 1
    invoke-super { p0, p1, p2 }, Landroid/widget/LinearLayout;->onMeasure(II)V
  .line 2
    invoke-static { p2 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result p1
    const/high16 v0, 16384
    if-eq p1, v0, :L3
  .line 3
    invoke-static { p0 }, Landroidx/core/view/v;->z(Landroid/view/View;)Z
    move-result v0
    if-eqz v0, :L3
  .line 4
    invoke-direct { p0 }, Lcom/google/android/material/appbar/AppBarLayout;->s()Z
    move-result v0
    if-eqz v0, :L3
  .line 5
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getMeasuredHeight()I
    move-result v0
    const/high16 v1, -32768
    if-eq p1, v1, :L1
    if-eqz p1, :L0
    goto :L2
  :L0
  .line 6
    invoke-virtual { p0 }, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I
    move-result p1
    add-int/2addr v0, p1
    goto :L2
  :L1
  .line 7
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getMeasuredHeight()I
    move-result p1
    invoke-virtual { p0 }, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I
    move-result v0
    add-int/2addr p1, v0
    const/4 v0, 0
    invoke-static { p2 }, Landroid/view/View$MeasureSpec;->getSize(I)I
    move-result p2
  .line 8
    invoke-static { p1, v0, p2 }, Lc/g/f/a;->b(III)I
    move-result v0
  :L2
  .line 9
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getMeasuredWidth()I
    move-result p1
    invoke-virtual { p0, p1, v0 }, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V
  :L3
  .line 10
    invoke-direct { p0 }, Lcom/google/android/material/appbar/AppBarLayout;->i()V
    return-void
.end method

.method p(Z)Z
  .registers 3
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->l:Z
    if-eq v0, p1, :L1
  .line 2
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->l:Z
  .line 3
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->refreshDrawableState()V
  .line 4
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->m:Z
    if-eqz v0, :L0
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    instance-of v0, v0, Ld/c/a/a/a0/g;
    if-eqz v0, :L0
  .line 5
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    check-cast v0, Ld/c/a/a/a0/g;
    invoke-direct { p0, v0, p1 }, Lcom/google/android/material/appbar/AppBarLayout;->t(Ld/c/a/a/a0/g;Z)V
  :L0
    const/4 p1, 1
    return p1
  :L1
    const/4 p1, 0
    return p1
.end method

.method r(Landroid/view/View;)Z
  .registers 3
  .line 1
    invoke-direct { p0, p1 }, Lcom/google/android/material/appbar/AppBarLayout;->b(Landroid/view/View;)Landroid/view/View;
    move-result-object v0
    if-nez v0, :L0
    goto :L1
  :L0
    move-object p1, v0
  :L1
    if-eqz p1, :L3
    const/4 v0, -1
  .line 2
    invoke-virtual { p1, v0 }, Landroid/view/View;->canScrollVertically(I)Z
    move-result v0
    if-nez v0, :L2
    invoke-virtual { p1 }, Landroid/view/View;->getScrollY()I
    move-result p1
    if-lez p1, :L3
  :L2
    const/4 p1, 1
    goto :L4
  :L3
    const/4 p1, 0
  :L4
    return p1
.end method

.method public setElevation(F)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/LinearLayout;->setElevation(F)V
  .line 2
    invoke-static { p0, p1 }, Ld/c/a/a/a0/h;->d(Landroid/view/View;F)V
    return-void
.end method

.method public setExpanded(Z)V
  .registers 3
  .line 1
    invoke-static { p0 }, Landroidx/core/view/v;->T(Landroid/view/View;)Z
    move-result v0
    invoke-virtual { p0, p1, v0 }, Lcom/google/android/material/appbar/AppBarLayout;->m(ZZ)V
    return-void
.end method

.method public setLiftOnScroll(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->m:Z
    return-void
.end method

.method public setLiftOnScrollTargetViewId(I)V
  .registers 2
  .line 1
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->n:I
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/appbar/AppBarLayout;->a()V
    return-void
.end method

.method public setOrientation(I)V
  .registers 3
    const/4 v0, 1
    if-ne p1, v0, :L0
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/LinearLayout;->setOrientation(I)V
    return-void
  :L0
  .line 2
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "AppBarLayout is always vertical and does not support horizontal orientation"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->r:Landroid/graphics/drawable/Drawable;
    if-eq v0, p1, :L6
    const/4 v1, 0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, v1 }, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
  :L0
    if-eqz p1, :L1
  .line 3
    invoke-virtual { p1 }, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
    move-result-object v1
  :L1
    iput-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->r:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :L5
  .line 4
    invoke-virtual { v1 }, Landroid/graphics/drawable/Drawable;->isStateful()Z
    move-result p1
    if-eqz p1, :L2
  .line 5
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->r:Landroid/graphics/drawable/Drawable;
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getDrawableState()[I
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/graphics/drawable/Drawable;->setState([I)Z
  :L2
  .line 6
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->r:Landroid/graphics/drawable/Drawable;
    invoke-static { p0 }, Landroidx/core/view/v;->C(Landroid/view/View;)I
    move-result v0
    invoke-static { p1, v0 }, Landroidx/core/graphics/drawable/a;->m(Landroid/graphics/drawable/Drawable;I)Z
  .line 7
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->r:Landroid/graphics/drawable/Drawable;
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getVisibility()I
    move-result v0
    const/4 v1, 0
    if-nez v0, :L3
    const/4 v0, 1
    goto :L4
  :L3
    const/4 v0, 0
  :L4
    invoke-virtual { p1, v0, v1 }, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
  .line 8
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->r:Landroid/graphics/drawable/Drawable;
    invoke-virtual { p1, p0 }, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
  :L5
  .line 9
    invoke-direct { p0 }, Lcom/google/android/material/appbar/AppBarLayout;->u()V
  .line 10
    invoke-static { p0 }, Landroidx/core/view/v;->f0(Landroid/view/View;)V
  :L6
    return-void
.end method

.method public setStatusBarForegroundColor(I)V
  .registers 3
  .line 1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;
    invoke-direct { v0, p1 }, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
    invoke-virtual { p0, v0 }, Lcom/google/android/material/appbar/AppBarLayout;->setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method public setStatusBarForegroundResource(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0, p1 }, Lc/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/appbar/AppBarLayout;->setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method public setTargetElevation(F)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-static { p0, p1 }, Lcom/google/android/material/appbar/e;->a(Landroid/view/View;F)V
  :L0
    return-void
.end method

.method public setVisibility(I)V
  .registers 4
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/LinearLayout;->setVisibility(I)V
    const/4 v0, 0
    if-nez p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
  .line 2
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->r:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :L2
  .line 3
    invoke-virtual { v1, p1, v0 }, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
  :L2
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/LinearLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    move-result v0
    if-nez v0, :L1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->r:Landroid/graphics/drawable/Drawable;
    if-ne p1, v0, :L0
    goto :L1
  :L0
    const/4 p1, 0
    goto :L2
  :L1
    const/4 p1, 1
  :L2
    return p1
.end method
