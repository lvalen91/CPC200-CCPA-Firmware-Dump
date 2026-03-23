.class public Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;
.super Lcom/google/android/material/appbar/a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/google/android/material/appbar/AppBarLayout;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 12
  name = "BaseBehavior"
.end annotation
.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$e;,
    Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$d;
  }
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "<T:",
    "Lcom/google/android/material/appbar/AppBarLayout;",
    ">",
    "Lcom/google/android/material/appbar/a<",
    "TT;>;"
  }
.end annotation

.field private k:I

.field private l:I

.field private m:Landroid/animation/ValueAnimator;

.field private n:I

.field private o:Z

.field private p:F

.field private q:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Landroid/view/View;",
      ">;"
    }
  .end annotation
.end field

.field private r:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$d;

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/appbar/a;-><init>()V
    const/4 v0, -1
  .line 2
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->n:I
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 3
  .line 3
    invoke-direct { p0, p1, p2 }, Lcom/google/android/material/appbar/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    const/4 p1, -1
  .line 4
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->n:I
    return-void
.end method

.method static synthetic R(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;)I
  .registers 1
  .line 1
    iget p0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->k:I
    return p0
.end method

.method private S(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TT;",
      "Landroid/view/View;",
      ")V"
    }
  .end annotation
  .registers 13
  .line 1
    invoke-virtual { p0 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->M()I
    move-result v0
    invoke-virtual { p2 }, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I
    move-result v1
    neg-int v1, v1
    const/4 v2, 1
    if-eq v0, v1, :L0
  .line 2
    invoke-virtual { p3, v2 }, Landroid/view/View;->canScrollVertically(I)Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    sget-object v0, Landroidx/core/view/e0/c$a;->f:Landroidx/core/view/e0/c$a;
    const/4 v1, 0
    invoke-direct { p0, p1, p2, v0, v1 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->T(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroidx/core/view/e0/c$a;Z)V
  :L0
  .line 4
    invoke-virtual { p0 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->M()I
    move-result v0
    if-eqz v0, :L2
    const/4 v0, -1
  .line 5
    invoke-virtual { p3, v0 }, Landroid/view/View;->canScrollVertically(I)Z
    move-result v0
    if-eqz v0, :L1
  .line 6
    invoke-virtual { p2 }, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedPreScrollRange()I
    move-result v0
    neg-int v6, v0
    if-eqz v6, :L2
  .line 7
    sget-object v0, Landroidx/core/view/e0/c$a;->g:Landroidx/core/view/e0/c$a;
    const/4 v7, 0
    new-instance v8, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b;
    move-object v1, v8
    move-object v2, p0
    move-object v3, p1
    move-object v4, p2
    move-object v5, p3
    invoke-direct/range { v1 .. v6 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b;-><init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V
    invoke-static { p1, v0, v7, v8 }, Landroidx/core/view/v;->k0(Landroid/view/View;Landroidx/core/view/e0/c$a;Ljava/lang/CharSequence;Landroidx/core/view/e0/f;)V
    goto :L2
  :L1
  .line 8
    sget-object p3, Landroidx/core/view/e0/c$a;->g:Landroidx/core/view/e0/c$a;
    invoke-direct { p0, p1, p2, p3, v2 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->T(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroidx/core/view/e0/c$a;Z)V
  :L2
    return-void
.end method

.method private T(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroidx/core/view/e0/c$a;Z)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TT;",
      "Landroidx/core/view/e0/c$a;",
      "Z)V"
    }
  .end annotation
  .registers 6
  .line 1
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$c;
    invoke-direct { v0, p0, p2, p4 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$c;-><init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Lcom/google/android/material/appbar/AppBarLayout;Z)V
    const/4 p2, 0
    invoke-static { p1, p3, p2, v0 }, Landroidx/core/view/v;->k0(Landroid/view/View;Landroidx/core/view/e0/c$a;Ljava/lang/CharSequence;Landroidx/core/view/e0/f;)V
    return-void
.end method

.method private U(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IF)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TT;IF)V"
    }
  .end annotation
  .registers 7
  .line 1
    invoke-virtual { p0 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->M()I
    move-result v0
    sub-int/2addr v0, p3
    invoke-static { v0 }, Ljava/lang/Math;->abs(I)I
    move-result v0
  .line 2
    invoke-static { p4 }, Ljava/lang/Math;->abs(F)F
    move-result p4
    const/4 v1, 0
    cmpl-float v1, p4, v1
    if-lez v1, :L0
    const/high16 v1, 17530
    int-to-float v0, v0
    div-float/2addr v0, p4
    mul-float v0, v0, v1
  .line 3
    invoke-static { v0 }, Ljava/lang/Math;->round(F)I
    move-result p4
    mul-int/lit8 p4, p4, 3
    goto :L1
  :L0
    int-to-float p4, v0
  .line 4
    invoke-virtual { p2 }, Landroid/widget/LinearLayout;->getHeight()I
    move-result v0
    int-to-float v0, v0
    div-float/2addr p4, v0
    const/high16 v0, 16256
    add-float/2addr p4, v0
    const/high16 v0, 17174
    mul-float p4, p4, v0
    float-to-int p4, p4
  :L1
  .line 5
    invoke-direct { p0, p1, p2, p3, p4 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->V(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;II)V
    return-void
.end method

.method private V(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;II)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TT;II)V"
    }
  .end annotation
  .registers 8
  .line 1
    invoke-virtual { p0 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->M()I
    move-result v0
    if-ne v0, p3, :L1
  .line 2
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->m:Landroid/animation/ValueAnimator;
    if-eqz p1, :L0
    invoke-virtual { p1 }, Landroid/animation/ValueAnimator;->isRunning()Z
    move-result p1
    if-eqz p1, :L0
  .line 3
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->m:Landroid/animation/ValueAnimator;
    invoke-virtual { p1 }, Landroid/animation/ValueAnimator;->cancel()V
  :L0
    return-void
  :L1
  .line 4
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->m:Landroid/animation/ValueAnimator;
    if-nez v1, :L2
  .line 5
    new-instance v1, Landroid/animation/ValueAnimator;
    invoke-direct { v1 }, Landroid/animation/ValueAnimator;-><init>()V
    iput-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->m:Landroid/animation/ValueAnimator;
  .line 6
    sget-object v2, Ld/c/a/a/l/a;->e:Landroid/animation/TimeInterpolator;
    invoke-virtual { v1, v2 }, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V
  .line 7
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->m:Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$a;
    invoke-direct { v2, p0, p1, p2 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$a;-><init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    invoke-virtual { v1, v2 }, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    goto :L3
  :L2
  .line 8
    invoke-virtual { v1 }, Landroid/animation/ValueAnimator;->cancel()V
  :L3
  .line 9
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->m:Landroid/animation/ValueAnimator;
    const/16 p2, 600
    invoke-static { p4, p2 }, Ljava/lang/Math;->min(II)I
    move-result p2
    int-to-long v1, p2
    invoke-virtual { p1, v1, v2 }, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;
  .line 10
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->m:Landroid/animation/ValueAnimator;
    const/4 p2, 2
    new-array p2, p2, [I
    const/4 p4, 0
    aput v0, p2, p4
    const/4 p4, 1
    aput p3, p2, p4
    invoke-virtual { p1, p2 }, Landroid/animation/ValueAnimator;->setIntValues([I)V
  .line 11
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->m:Landroid/animation/ValueAnimator;
    invoke-virtual { p1 }, Landroid/animation/ValueAnimator;->start()V
    return-void
.end method

.method private X(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TT;",
      "Landroid/view/View;",
      ")Z"
    }
  .end annotation
  .registers 5
  .line 1
    invoke-virtual { p2 }, Lcom/google/android/material/appbar/AppBarLayout;->h()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getHeight()I
    move-result p1
    invoke-virtual { p3 }, Landroid/view/View;->getHeight()I
    move-result p3
    sub-int/2addr p1, p3
    invoke-virtual { p2 }, Landroid/widget/LinearLayout;->getHeight()I
    move-result p2
    if-gt p1, p2, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method private static Y(II)Z
  .registers 2
    and-int/2addr p0, p1
    if-ne p0, p1, :L0
    const/4 p0, 1
    goto :L1
  :L0
    const/4 p0, 0
  :L1
    return p0
.end method

.method private Z(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;
  .registers 6
  .line 1
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L3
  .line 2
    invoke-virtual { p1, v1 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v2
  .line 3
    instance-of v3, v2, Landroidx/core/view/k;
    if-nez v3, :L2
    instance-of v3, v2, Landroid/widget/ListView;
    if-nez v3, :L2
    instance-of v3, v2, Landroid/widget/ScrollView;
    if-eqz v3, :L1
    goto :L2
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    return-object v2
  :L3
    const/4 p1, 0
    return-object p1
.end method

.method private static a0(Lcom/google/android/material/appbar/AppBarLayout;I)Landroid/view/View;
  .registers 6
  .line 1
    invoke-static { p1 }, Ljava/lang/Math;->abs(I)I
    move-result p1
  .line 2
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getChildCount()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L2
  .line 3
    invoke-virtual { p0, v1 }, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v2
  .line 4
    invoke-virtual { v2 }, Landroid/view/View;->getTop()I
    move-result v3
    if-lt p1, v3, :L1
    invoke-virtual { v2 }, Landroid/view/View;->getBottom()I
    move-result v3
    if-gt p1, v3, :L1
    return-object v2
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    const/4 p0, 0
    return-object p0
.end method

.method private b0(Lcom/google/android/material/appbar/AppBarLayout;I)I
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TT;I)I"
    }
  .end annotation
  .registers 10
  .line 1
    invoke-virtual { p1 }, Landroid/widget/LinearLayout;->getChildCount()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L3
  .line 2
    invoke-virtual { p1, v1 }, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v2
  .line 3
    invoke-virtual { v2 }, Landroid/view/View;->getTop()I
    move-result v3
  .line 4
    invoke-virtual { v2 }, Landroid/view/View;->getBottom()I
    move-result v4
  .line 5
    invoke-virtual { v2 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v2
    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout$c;
  .line 6
    invoke-virtual { v2 }, Lcom/google/android/material/appbar/AppBarLayout$c;->a()I
    move-result v5
    const/16 v6, 32
    invoke-static { v5, v6 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->Y(II)Z
    move-result v5
    if-eqz v5, :L1
  .line 7
    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    sub-int/2addr v3, v5
  .line 8
    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
    add-int/2addr v4, v2
  :L1
    neg-int v2, p2
    if-gt v3, v2, :L2
    if-lt v4, v2, :L2
    return v1
  :L2
    add-int/lit8 v1, v1, 1
    goto :L0
  :L3
    const/4 p1, -1
    return p1
.end method

.method private e0(Lcom/google/android/material/appbar/AppBarLayout;I)I
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TT;I)I"
    }
  .end annotation
  .registers 11
  .line 1
    invoke-static { p2 }, Ljava/lang/Math;->abs(I)I
    move-result v0
  .line 2
    invoke-virtual { p1 }, Landroid/widget/LinearLayout;->getChildCount()I
    move-result v1
    const/4 v2, 0
    const/4 v3, 0
  :L0
    if-ge v3, v1, :L4
  .line 3
    invoke-virtual { p1, v3 }, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v4
  .line 4
    invoke-virtual { v4 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v5
    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout$c;
  .line 5
    invoke-virtual { v5 }, Lcom/google/android/material/appbar/AppBarLayout$c;->b()Landroid/view/animation/Interpolator;
    move-result-object v6
  .line 6
    invoke-virtual { v4 }, Landroid/view/View;->getTop()I
    move-result v7
    if-lt v0, v7, :L3
    invoke-virtual { v4 }, Landroid/view/View;->getBottom()I
    move-result v7
    if-gt v0, v7, :L3
    if-eqz v6, :L4
  .line 7
    invoke-virtual { v5 }, Lcom/google/android/material/appbar/AppBarLayout$c;->a()I
    move-result v1
    and-int/lit8 v3, v1, 1
    if-eqz v3, :L1
  .line 8
    invoke-virtual { v4 }, Landroid/view/View;->getHeight()I
    move-result v3
    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    add-int/2addr v3, v7
    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
    add-int/2addr v3, v5
    add-int/2addr v2, v3
    and-int/lit8 v1, v1, 2
    if-eqz v1, :L1
  .line 9
    invoke-static { v4 }, Landroidx/core/view/v;->D(Landroid/view/View;)I
    move-result v1
    sub-int/2addr v2, v1
  :L1
  .line 10
    invoke-static { v4 }, Landroidx/core/view/v;->z(Landroid/view/View;)Z
    move-result v1
    if-eqz v1, :L2
  .line 11
    invoke-virtual { p1 }, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I
    move-result p1
    sub-int/2addr v2, p1
  :L2
    if-lez v2, :L4
  .line 12
    invoke-virtual { v4 }, Landroid/view/View;->getTop()I
    move-result p1
    sub-int/2addr v0, p1
    int-to-float p1, v2
    int-to-float v0, v0
    div-float/2addr v0, p1
  .line 13
    invoke-interface { v6, v0 }, Landroid/view/animation/Interpolator;->getInterpolation(F)F
    move-result v0
    mul-float p1, p1, v0
  .line 14
    invoke-static { p1 }, Ljava/lang/Math;->round(F)I
    move-result p1
  .line 15
    invoke-static { p2 }, Ljava/lang/Integer;->signum(I)I
    move-result p2
    invoke-virtual { v4 }, Landroid/view/View;->getTop()I
    move-result v0
    add-int/2addr v0, p1
    mul-int p2, p2, v0
    return p2
  :L3
    add-int/lit8 v3, v3, 1
    goto :L0
  :L4
    return p2
.end method

.method private p0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TT;)Z"
    }
  .end annotation
  .registers 7
  .line 1
    invoke-virtual { p1, p2 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->s(Landroid/view/View;)Ljava/util/List;
    move-result-object p1
  .line 2
    invoke-interface { p1 }, Ljava/util/List;->size()I
    move-result p2
    const/4 v0, 0
    const/4 v1, 0
  :L0
    if-ge v1, p2, :L3
  .line 3
    invoke-interface { p1, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroid/view/View;
  .line 4
    invoke-virtual { v2 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v2
    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .line 5
    invoke-virtual { v2 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    move-result-object v2
  .line 6
    instance-of v3, v2, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    if-eqz v3, :L2
  .line 7
    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    invoke-virtual { v2 }, Lcom/google/android/material/appbar/b;->K()I
    move-result p1
    if-eqz p1, :L1
    const/4 v0, 1
  :L1
    return v0
  :L2
    add-int/lit8 v1, v1, 1
    goto :L0
  :L3
    return v0
.end method

.method private q0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TT;)V"
    }
  .end annotation
  .registers 11
  .line 1
    invoke-virtual { p0 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->M()I
    move-result v0
  .line 2
    invoke-direct { p0, p2, v0 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->b0(Lcom/google/android/material/appbar/AppBarLayout;I)I
    move-result v1
    if-ltz v1, :L6
  .line 3
    invoke-virtual { p2, v1 }, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v2
  .line 4
    invoke-virtual { v2 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v3
    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout$c;
  .line 5
    invoke-virtual { v3 }, Lcom/google/android/material/appbar/AppBarLayout$c;->a()I
    move-result v4
    and-int/lit8 v5, v4, 17
    const/16 v6, 17
    if-ne v5, v6, :L6
  .line 6
    invoke-virtual { v2 }, Landroid/view/View;->getTop()I
    move-result v5
    neg-int v5, v5
  .line 7
    invoke-virtual { v2 }, Landroid/view/View;->getBottom()I
    move-result v6
    neg-int v6, v6
  .line 8
    invoke-virtual { p2 }, Landroid/widget/LinearLayout;->getChildCount()I
    move-result v7
    add-int/lit8 v7, v7, -1
    if-ne v1, v7, :L0
  .line 9
    invoke-virtual { p2 }, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I
    move-result v1
    add-int/2addr v6, v1
  :L0
    const/4 v1, 2
  .line 10
    invoke-static { v4, v1 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->Y(II)Z
    move-result v7
    if-eqz v7, :L1
  .line 11
    invoke-static { v2 }, Landroidx/core/view/v;->D(Landroid/view/View;)I
    move-result v2
    add-int/2addr v6, v2
    goto :L3
  :L1
    const/4 v7, 5
  .line 12
    invoke-static { v4, v7 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->Y(II)Z
    move-result v7
    if-eqz v7, :L3
  .line 13
    invoke-static { v2 }, Landroidx/core/view/v;->D(Landroid/view/View;)I
    move-result v2
    add-int/2addr v2, v6
    if-ge v0, v2, :L2
    move v5, v2
    goto :L3
  :L2
    move v6, v2
  :L3
    const/16 v2, 32
  .line 14
    invoke-static { v4, v2 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->Y(II)Z
    move-result v2
    if-eqz v2, :L4
  .line 15
    iget v2, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    add-int/2addr v5, v2
  .line 16
    iget v2, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
    sub-int/2addr v6, v2
  :L4
    add-int v2, v6, v5
  .line 17
    div-int/2addr v2, v1
    if-ge v0, v2, :L5
    move v5, v6
  :L5
  .line 18
    invoke-virtual { p2 }, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I
    move-result v0
    neg-int v0, v0
    const/4 v1, 0
    invoke-static { v5, v0, v1 }, Lc/g/f/a;->b(III)I
    move-result v0
    const/4 v1, 0
  .line 19
    invoke-direct { p0, p1, p2, v0, v1 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->U(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IF)V
  :L6
    return-void
.end method

.method private r0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TT;)V"
    }
  .end annotation
  .registers 5
  .line 1
    sget-object v0, Landroidx/core/view/e0/c$a;->f:Landroidx/core/view/e0/c$a;
    invoke-virtual { v0 }, Landroidx/core/view/e0/c$a;->b()I
    move-result v0
    invoke-static { p1, v0 }, Landroidx/core/view/v;->i0(Landroid/view/View;I)V
  .line 2
    sget-object v0, Landroidx/core/view/e0/c$a;->g:Landroidx/core/view/e0/c$a;
    invoke-virtual { v0 }, Landroidx/core/view/e0/c$a;->b()I
    move-result v0
    invoke-static { p1, v0 }, Landroidx/core/view/v;->i0(Landroid/view/View;I)V
  .line 3
    invoke-direct { p0, p1 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->Z(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;
    move-result-object v0
    if-eqz v0, :L2
  .line 4
    invoke-virtual { p2 }, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I
    move-result v1
    if-nez v1, :L0
    goto :L2
  :L0
  .line 5
    invoke-virtual { v0 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v1
    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .line 6
    invoke-virtual { v1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    move-result-object v1
    instance-of v1, v1, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    if-nez v1, :L1
    return-void
  :L1
  .line 7
    invoke-direct { p0, p1, p2, v0 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->S(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;)V
  :L2
    return-void
.end method

.method private s0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIZ)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TT;IIZ)V"
    }
  .end annotation
  .registers 11
  .line 1
    invoke-static { p2, p3 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->a0(Lcom/google/android/material/appbar/AppBarLayout;I)Landroid/view/View;
    move-result-object v0
    if-eqz v0, :L5
  .line 2
    invoke-virtual { v0 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v1
    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout$c;
  .line 3
    invoke-virtual { v1 }, Lcom/google/android/material/appbar/AppBarLayout$c;->a()I
    move-result v1
    and-int/lit8 v2, v1, 1
    const/4 v3, 0
    if-eqz v2, :L2
  .line 4
    invoke-static { v0 }, Landroidx/core/view/v;->D(Landroid/view/View;)I
    move-result v2
    const/4 v4, 1
    if-lez p4, :L1
    and-int/lit8 p4, v1, 12
    if-eqz p4, :L1
    neg-int p3, p3
  .line 5
    invoke-virtual { v0 }, Landroid/view/View;->getBottom()I
    move-result p4
    sub-int/2addr p4, v2
    invoke-virtual { p2 }, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I
    move-result v0
    sub-int/2addr p4, v0
    if-lt p3, p4, :L2
  :L0
    const/4 v3, 1
    goto :L2
  :L1
    and-int/lit8 p4, v1, 2
    if-eqz p4, :L2
    neg-int p3, p3
  .line 6
    invoke-virtual { v0 }, Landroid/view/View;->getBottom()I
    move-result p4
    sub-int/2addr p4, v2
    invoke-virtual { p2 }, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I
    move-result v0
    sub-int/2addr p4, v0
    if-lt p3, p4, :L2
    goto :L0
  :L2
  .line 7
    invoke-virtual { p2 }, Lcom/google/android/material/appbar/AppBarLayout;->j()Z
    move-result p3
    if-eqz p3, :L3
  .line 8
    invoke-direct { p0, p1 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->Z(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;
    move-result-object p3
    invoke-virtual { p2, p3 }, Lcom/google/android/material/appbar/AppBarLayout;->r(Landroid/view/View;)Z
    move-result v3
  :L3
  .line 9
    invoke-virtual { p2, v3 }, Lcom/google/android/material/appbar/AppBarLayout;->p(Z)Z
    move-result p3
    if-nez p5, :L4
    if-eqz p3, :L5
  .line 10
    invoke-direct { p0, p1, p2 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->p0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)Z
    move-result p1
    if-eqz p1, :L5
  :L4
  .line 11
    invoke-virtual { p2 }, Landroid/widget/LinearLayout;->jumpDrawablesToCurrentState()V
  :L5
    return-void
.end method

.method public bridge synthetic A(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
  .registers 7
  .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;
    invoke-virtual/range { p0 .. p6 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->m0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    move-result p1
    return p1
.end method

.method public bridge synthetic C(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
  .registers 5
  .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;
    invoke-virtual { p0, p1, p2, p3, p4 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->n0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V
    return-void
.end method

.method bridge synthetic H(Landroid/view/View;)Z
  .registers 2
  .line 1
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;
    invoke-virtual { p0, p1 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->W(Lcom/google/android/material/appbar/AppBarLayout;)Z
    move-result p1
    return p1
.end method

.method bridge synthetic K(Landroid/view/View;)I
  .registers 2
  .line 1
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;
    invoke-virtual { p0, p1 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->c0(Lcom/google/android/material/appbar/AppBarLayout;)I
    move-result p1
    return p1
.end method

.method bridge synthetic L(Landroid/view/View;)I
  .registers 2
  .line 1
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;
    invoke-virtual { p0, p1 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->d0(Lcom/google/android/material/appbar/AppBarLayout;)I
    move-result p1
    return p1
.end method

.method M()I
  .registers 3
  .line 1
    invoke-virtual { p0 }, Lcom/google/android/material/appbar/c;->E()I
    move-result v0
    iget v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->k:I
    add-int/2addr v0, v1
    return v0
.end method

.method bridge synthetic N(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
  .registers 3
  .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;
    invoke-virtual { p0, p1, p2 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->f0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    return-void
.end method

.method bridge synthetic Q(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
  .registers 6
  .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;
    invoke-virtual/range { p0 .. p5 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->o0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;III)I
    move-result p1
    return p1
.end method

.method W(Lcom/google/android/material/appbar/AppBarLayout;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TT;)Z"
    }
  .end annotation
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->r:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$d;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$d;->a(Lcom/google/android/material/appbar/AppBarLayout;)Z
    move-result p1
    return p1
  :L0
  .line 3
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->q:Ljava/lang/ref/WeakReference;
    const/4 v0, 1
    if-eqz p1, :L2
  .line 4
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/view/View;
    if-eqz p1, :L1
  .line 5
    invoke-virtual { p1 }, Landroid/view/View;->isShown()Z
    move-result v1
    if-eqz v1, :L1
    const/4 v1, -1
  .line 6
    invoke-virtual { p1, v1 }, Landroid/view/View;->canScrollVertically(I)Z
    move-result p1
    if-nez p1, :L1
    goto :L2
  :L1
    const/4 v0, 0
  :L2
    return v0
.end method

.method c0(Lcom/google/android/material/appbar/AppBarLayout;)I
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TT;)I"
    }
  .end annotation
  .registers 2
  .line 1
    invoke-virtual { p1 }, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedScrollRange()I
    move-result p1
    neg-int p1, p1
    return p1
.end method

.method d0(Lcom/google/android/material/appbar/AppBarLayout;)I
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TT;)I"
    }
  .end annotation
  .registers 2
  .line 1
    invoke-virtual { p1 }, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I
    move-result p1
    return p1
.end method

.method f0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TT;)V"
    }
  .end annotation
  .registers 4
  .line 1
    invoke-direct { p0, p1, p2 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->q0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
  .line 2
    invoke-virtual { p2 }, Lcom/google/android/material/appbar/AppBarLayout;->j()Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    invoke-direct { p0, p1 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->Z(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;
    move-result-object p1
    invoke-virtual { p2, p1 }, Lcom/google/android/material/appbar/AppBarLayout;->r(Landroid/view/View;)Z
    move-result p1
    invoke-virtual { p2, p1 }, Lcom/google/android/material/appbar/AppBarLayout;->p(Z)Z
  :L0
    return-void
.end method

.method public g0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TT;I)Z"
    }
  .end annotation
  .registers 11
  .line 1
    invoke-super { p0, p1, p2, p3 }, Lcom/google/android/material/appbar/c;->l(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    move-result p3
  .line 2
    invoke-virtual { p2 }, Lcom/google/android/material/appbar/AppBarLayout;->getPendingAction()I
    move-result v0
  .line 3
    iget v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->n:I
    const/4 v2, 0
    if-ltz v1, :L2
    and-int/lit8 v3, v0, 8
    if-nez v3, :L2
  .line 4
    invoke-virtual { p2, v1 }, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v0
  .line 5
    invoke-virtual { v0 }, Landroid/view/View;->getBottom()I
    move-result v1
    neg-int v1, v1
  .line 6
    iget-boolean v3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->o:Z
    if-eqz v3, :L0
  .line 7
    invoke-static { v0 }, Landroidx/core/view/v;->D(Landroid/view/View;)I
    move-result v0
    invoke-virtual { p2 }, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I
    move-result v3
    add-int/2addr v0, v3
    goto :L1
  :L0
  .line 8
    invoke-virtual { v0 }, Landroid/view/View;->getHeight()I
    move-result v0
    int-to-float v0, v0
    iget v3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->p:F
    mul-float v0, v0, v3
    invoke-static { v0 }, Ljava/lang/Math;->round(F)I
    move-result v0
  :L1
    add-int/2addr v1, v0
  .line 9
    invoke-virtual { p0, p1, p2, v1 }, Lcom/google/android/material/appbar/a;->P(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I
    goto :L8
  :L2
    if-eqz v0, :L8
    and-int/lit8 v1, v0, 4
    const/4 v3, 1
    if-eqz v1, :L3
    const/4 v1, 1
    goto :L4
  :L3
    const/4 v1, 0
  :L4
    and-int/lit8 v4, v0, 2
    const/4 v5, 0
    if-eqz v4, :L6
  .line 10
    invoke-virtual { p2 }, Lcom/google/android/material/appbar/AppBarLayout;->getUpNestedPreScrollRange()I
    move-result v0
    neg-int v0, v0
    if-eqz v1, :L5
  .line 11
    invoke-direct { p0, p1, p2, v0, v5 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->U(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IF)V
    goto :L8
  :L5
  .line 12
    invoke-virtual { p0, p1, p2, v0 }, Lcom/google/android/material/appbar/a;->P(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I
    goto :L8
  :L6
    and-int/2addr v0, v3
    if-eqz v0, :L8
    if-eqz v1, :L7
  .line 13
    invoke-direct { p0, p1, p2, v2, v5 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->U(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IF)V
    goto :L8
  :L7
  .line 14
    invoke-virtual { p0, p1, p2, v2 }, Lcom/google/android/material/appbar/a;->P(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I
  :L8
  .line 15
    invoke-virtual { p2 }, Lcom/google/android/material/appbar/AppBarLayout;->l()V
    const/4 v0, -1
  .line 16
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->n:I
  .line 17
    invoke-virtual { p0 }, Lcom/google/android/material/appbar/c;->E()I
    move-result v0
    invoke-virtual { p2 }, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I
    move-result v1
    neg-int v1, v1
    invoke-static { v0, v1, v2 }, Lc/g/f/a;->b(III)I
    move-result v0
  .line 18
    invoke-virtual { p0, v0 }, Lcom/google/android/material/appbar/c;->G(I)Z
  .line 19
    invoke-virtual { p0 }, Lcom/google/android/material/appbar/c;->E()I
    move-result v4
    const/4 v5, 0
    const/4 v6, 1
    move-object v1, p0
    move-object v2, p1
    move-object v3, p2
  .line 20
    invoke-direct/range { v1 .. v6 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->s0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIZ)V
  .line 21
    invoke-virtual { p0 }, Lcom/google/android/material/appbar/c;->E()I
    move-result v0
    invoke-virtual { p2, v0 }, Lcom/google/android/material/appbar/AppBarLayout;->k(I)V
  .line 22
    invoke-direct { p0, p1, p2 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->r0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    return p3
.end method

.method public h0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIII)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TT;IIII)Z"
    }
  .end annotation
  .registers 13
  .line 1
    invoke-virtual { p2 }, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
  .line 2
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I
    const/4 v1, -2
    if-ne v0, v1, :L0
    const/4 p5, 0
  .line 3
    invoke-static { p5, p5 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v4
    move-object v0, p1
    move-object v1, p2
    move v2, p3
    move v3, p4
    move v5, p6
  .line 4
    invoke-virtual/range { v0 .. v5 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->J(Landroid/view/View;IIII)V
    const/4 p1, 1
    return p1
  :L0
  .line 5
    invoke-super/range { p0 .. p6 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->m(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    move-result p1
    return p1
.end method

.method public i0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TT;",
      "Landroid/view/View;",
      "II[II)V"
    }
  .end annotation
  .registers 14
    if-eqz p5, :L2
    if-gez p5, :L0
  .line 1
    invoke-virtual { p2 }, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I
    move-result p4
    neg-int p4, p4
  .line 2
    invoke-virtual { p2 }, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedPreScrollRange()I
    move-result p7
    add-int/2addr p7, p4
    move v4, p4
    move v5, p7
    goto :L1
  :L0
  .line 3
    invoke-virtual { p2 }, Lcom/google/android/material/appbar/AppBarLayout;->getUpNestedPreScrollRange()I
    move-result p4
    neg-int p4, p4
    const/4 p7, 0
    move v4, p4
    const/4 v5, 0
  :L1
    if-eq v4, v5, :L2
    const/4 p4, 1
    move-object v0, p0
    move-object v1, p1
    move-object v2, p2
    move v3, p5
  .line 4
    invoke-virtual/range { v0 .. v5 }, Lcom/google/android/material/appbar/a;->O(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    move-result p1
    aput p1, p6, p4
  :L2
  .line 5
    invoke-virtual { p2 }, Lcom/google/android/material/appbar/AppBarLayout;->j()Z
    move-result p1
    if-eqz p1, :L3
  .line 6
    invoke-virtual { p2, p3 }, Lcom/google/android/material/appbar/AppBarLayout;->r(Landroid/view/View;)Z
    move-result p1
    invoke-virtual { p2, p1 }, Lcom/google/android/material/appbar/AppBarLayout;->p(Z)Z
  :L3
    return-void
.end method

.method public j0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TT;",
      "Landroid/view/View;",
      "IIIII[I)V"
    }
  .end annotation
  .registers 16
    if-gez p7, :L0
    const/4 p3, 1
  .line 1
    invoke-virtual { p2 }, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedScrollRange()I
    move-result p4
    neg-int v4, p4
    const/4 v5, 0
    move-object v0, p0
    move-object v1, p1
    move-object v2, p2
    move v3, p7
    invoke-virtual/range { v0 .. v5 }, Lcom/google/android/material/appbar/a;->O(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    move-result p4
    aput p4, p9, p3
  :L0
    if-nez p7, :L1
  .line 2
    invoke-direct { p0, p1, p2 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->r0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
  :L1
    return-void
.end method

.method public k0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/os/Parcelable;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TT;",
      "Landroid/os/Parcelable;",
      ")V"
    }
  .end annotation
  .registers 5
  .line 1
    instance-of v0, p3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$e;
    if-eqz v0, :L0
  .line 2
    check-cast p3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$e;
  .line 3
    invoke-virtual { p3 }, Lc/i/a/a;->j()Landroid/os/Parcelable;
    move-result-object v0
    invoke-super { p0, p1, p2, v0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->x(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
  .line 4
    iget p1, p3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$e;->d:I
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->n:I
  .line 5
    iget p1, p3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$e;->e:F
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->p:F
  .line 6
    iget-boolean p1, p3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$e;->f:Z
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->o:Z
    goto :L1
  :L0
  .line 7
    invoke-super { p0, p1, p2, p3 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->x(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    const/4 p1, -1
  .line 8
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->n:I
  :L1
    return-void
.end method

.method public bridge synthetic l(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
  .registers 4
  .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;
    invoke-virtual { p0, p1, p2, p3 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->g0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)Z
    move-result p1
    return p1
.end method

.method public l0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/os/Parcelable;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TT;)",
      "Landroid/os/Parcelable;"
    }
  .end annotation
  .registers 10
  .line 1
    invoke-super { p0, p1, p2 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->y(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    move-result-object p1
  .line 2
    invoke-virtual { p0 }, Lcom/google/android/material/appbar/c;->E()I
    move-result v0
  .line 3
    invoke-virtual { p2 }, Landroid/widget/LinearLayout;->getChildCount()I
    move-result v1
    const/4 v2, 0
    const/4 v3, 0
  :L0
    if-ge v3, v1, :L3
  .line 4
    invoke-virtual { p2, v3 }, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v4
  .line 5
    invoke-virtual { v4 }, Landroid/view/View;->getBottom()I
    move-result v5
    add-int/2addr v5, v0
  .line 6
    invoke-virtual { v4 }, Landroid/view/View;->getTop()I
    move-result v6
    add-int/2addr v6, v0
    if-gtz v6, :L2
    if-ltz v5, :L2
  .line 7
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$e;
    invoke-direct { v0, p1 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$e;-><init>(Landroid/os/Parcelable;)V
  .line 8
    iput v3, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$e;->d:I
  .line 9
    invoke-static { v4 }, Landroidx/core/view/v;->D(Landroid/view/View;)I
    move-result p1
    invoke-virtual { p2 }, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I
    move-result p2
    add-int/2addr p1, p2
    if-ne v5, p1, :L1
    const/4 v2, 1
  :L1
    iput-boolean v2, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$e;->f:Z
    int-to-float p1, v5
  .line 10
    invoke-virtual { v4 }, Landroid/view/View;->getHeight()I
    move-result p2
    int-to-float p2, p2
    div-float/2addr p1, p2
    iput p1, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$e;->e:F
    return-object v0
  :L2
    add-int/lit8 v3, v3, 1
    goto :L0
  :L3
    return-object p1
.end method

.method public bridge synthetic m(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
  .registers 7
  .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;
    invoke-virtual/range { p0 .. p6 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->h0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIII)Z
    move-result p1
    return p1
.end method

.method public m0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TT;",
      "Landroid/view/View;",
      "Landroid/view/View;",
      "II)Z"
    }
  .end annotation
  .registers 7
    and-int/lit8 p4, p5, 2
    if-eqz p4, :L1
  .line 1
    invoke-virtual { p2 }, Lcom/google/android/material/appbar/AppBarLayout;->j()Z
    move-result p4
    if-nez p4, :L0
    invoke-direct { p0, p1, p2, p3 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->X(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;)Z
    move-result p1
    if-eqz p1, :L1
  :L0
    const/4 p1, 1
    goto :L2
  :L1
    const/4 p1, 0
  :L2
    if-eqz p1, :L3
  .line 2
    iget-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->m:Landroid/animation/ValueAnimator;
    if-eqz p2, :L3
  .line 3
    invoke-virtual { p2 }, Landroid/animation/ValueAnimator;->cancel()V
  :L3
    const/4 p2, 0
  .line 4
    iput-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->q:Ljava/lang/ref/WeakReference;
  .line 5
    iput p6, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->l:I
    return p1
.end method

.method public n0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TT;",
      "Landroid/view/View;",
      "I)V"
    }
  .end annotation
  .registers 6
  .line 1
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->l:I
    if-eqz v0, :L0
    const/4 v0, 1
    if-ne p4, v0, :L1
  :L0
  .line 2
    invoke-direct { p0, p1, p2 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->q0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
  .line 3
    invoke-virtual { p2 }, Lcom/google/android/material/appbar/AppBarLayout;->j()Z
    move-result p1
    if-eqz p1, :L1
  .line 4
    invoke-virtual { p2, p3 }, Lcom/google/android/material/appbar/AppBarLayout;->r(Landroid/view/View;)Z
    move-result p1
    invoke-virtual { p2, p1 }, Lcom/google/android/material/appbar/AppBarLayout;->p(Z)Z
  :L1
  .line 5
    new-instance p1, Ljava/lang/ref/WeakReference;
    invoke-direct { p1, p3 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->q:Ljava/lang/ref/WeakReference;
    return-void
.end method

.method o0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;III)I
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TT;III)I"
    }
  .end annotation
  .registers 14
  .line 1
    invoke-virtual { p0 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->M()I
    move-result v0
    const/4 v1, 0
    if-eqz p4, :L5
    if-lt v0, p4, :L5
    if-gt v0, p5, :L5
  .line 2
    invoke-static { p3, p4, p5 }, Lc/g/f/a;->b(III)I
    move-result v5
    if-eq v0, v5, :L6
  .line 3
    invoke-virtual { p2 }, Lcom/google/android/material/appbar/AppBarLayout;->f()Z
    move-result p3
    if-eqz p3, :L0
  .line 4
    invoke-direct { p0, p2, v5 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->e0(Lcom/google/android/material/appbar/AppBarLayout;I)I
    move-result p3
    goto :L1
  :L0
    move p3, v5
  :L1
  .line 5
    invoke-virtual { p0, p3 }, Lcom/google/android/material/appbar/c;->G(I)Z
    move-result p4
    sub-int v1, v0, v5
    sub-int p3, v5, p3
  .line 6
    iput p3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->k:I
    if-nez p4, :L2
  .line 7
    invoke-virtual { p2 }, Lcom/google/android/material/appbar/AppBarLayout;->f()Z
    move-result p3
    if-eqz p3, :L2
  .line 8
    invoke-virtual { p1, p2 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f(Landroid/view/View;)V
  :L2
  .line 9
    invoke-virtual { p0 }, Lcom/google/android/material/appbar/c;->E()I
    move-result p3
    invoke-virtual { p2, p3 }, Lcom/google/android/material/appbar/AppBarLayout;->k(I)V
    if-ge v5, v0, :L3
    const/4 p3, -1
    const/4 v6, -1
    goto :L4
  :L3
    const/4 p3, 1
    const/4 v6, 1
  :L4
    const/4 v7, 0
    move-object v2, p0
    move-object v3, p1
    move-object v4, p2
  .line 10
    invoke-direct/range { v2 .. v7 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->s0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIZ)V
    goto :L6
  :L5
  .line 11
    iput v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->k:I
  :L6
  .line 12
    invoke-direct { p0, p1, p2 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->r0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    return v1
.end method

.method public bridge synthetic q(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
  .registers 8
  .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;
    invoke-virtual/range { p0 .. p7 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->i0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V
    return-void
.end method

.method public bridge synthetic t(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
  .registers 10
  .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;
    invoke-virtual/range { p0 .. p9 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->j0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V
    return-void
.end method

.method public bridge synthetic x(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
  .registers 4
  .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;
    invoke-virtual { p0, p1, p2, p3 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->k0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/os/Parcelable;)V
    return-void
.end method

.method public bridge synthetic y(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
  .registers 3
  .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;
    invoke-virtual { p0, p1, p2 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->l0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/os/Parcelable;
    move-result-object p1
    return-object p1
.end method
