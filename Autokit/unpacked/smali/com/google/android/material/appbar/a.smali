.class abstract Lcom/google/android/material/appbar/a;
.super Lcom/google/android/material/appbar/c;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/google/android/material/appbar/a$a;
  }
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "<V:",
    "Landroid/view/View;",
    ">",
    "Lcom/google/android/material/appbar/c<",
    "TV;>;"
  }
.end annotation

.field private d:Ljava/lang/Runnable;

.field e:Landroid/widget/OverScroller;

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/view/VelocityTracker;

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/appbar/c;-><init>()V
    const/4 v0, -1
  .line 2
    iput v0, p0, Lcom/google/android/material/appbar/a;->g:I
  .line 3
    iput v0, p0, Lcom/google/android/material/appbar/a;->i:I
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 3
  .line 4
    invoke-direct { p0, p1, p2 }, Lcom/google/android/material/appbar/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    const/4 p1, -1
  .line 5
    iput p1, p0, Lcom/google/android/material/appbar/a;->g:I
  .line 6
    iput p1, p0, Lcom/google/android/material/appbar/a;->i:I
    return-void
.end method

.method private I()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->j:Landroid/view/VelocityTracker;
    if-nez v0, :L0
  .line 2
    invoke-static { }, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;
    move-result-object v0
    iput-object v0, p0, Lcom/google/android/material/appbar/a;->j:Landroid/view/VelocityTracker;
  :L0
    return-void
.end method

.method public D(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;",
      "Landroid/view/MotionEvent;",
      ")Z"
    }
  .end annotation
  .registers 15
  .line 1
    invoke-virtual { p3 }, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v0
    const/4 v1, -1
    const/4 v2, 1
    const/4 v3, 0
    if-eq v0, v2, :L6
    const/4 v4, 2
    if-eq v0, v4, :L3
    const/4 p1, 3
    if-eq v0, p1, :L7
    const/4 p1, 6
    if-eq v0, p1, :L0
    goto :L5
  :L0
  .line 2
    invoke-virtual { p3 }, Landroid/view/MotionEvent;->getActionIndex()I
    move-result p1
    if-nez p1, :L1
    const/4 p1, 1
    goto :L2
  :L1
    const/4 p1, 0
  :L2
  .line 3
    invoke-virtual { p3, p1 }, Landroid/view/MotionEvent;->getPointerId(I)I
    move-result p2
    iput p2, p0, Lcom/google/android/material/appbar/a;->g:I
  .line 4
    invoke-virtual { p3, p1 }, Landroid/view/MotionEvent;->getY(I)F
    move-result p1
    const/high16 p2, 16128
    add-float/2addr p1, p2
    float-to-int p1, p1
    iput p1, p0, Lcom/google/android/material/appbar/a;->h:I
    goto :L5
  :L3
  .line 5
    iget v0, p0, Lcom/google/android/material/appbar/a;->g:I
    invoke-virtual { p3, v0 }, Landroid/view/MotionEvent;->findPointerIndex(I)I
    move-result v0
    if-ne v0, v1, :L4
    return v3
  :L4
  .line 6
    invoke-virtual { p3, v0 }, Landroid/view/MotionEvent;->getY(I)F
    move-result v0
    float-to-int v0, v0
  .line 7
    iget v1, p0, Lcom/google/android/material/appbar/a;->h:I
    sub-int v7, v1, v0
  .line 8
    iput v0, p0, Lcom/google/android/material/appbar/a;->h:I
  .line 9
    invoke-virtual { p0, p2 }, Lcom/google/android/material/appbar/a;->K(Landroid/view/View;)I
    move-result v8
    const/4 v9, 0
    move-object v4, p0
    move-object v5, p1
    move-object v6, p2
    invoke-virtual/range { v4 .. v9 }, Lcom/google/android/material/appbar/a;->O(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
  :L5
    const/4 p1, 0
    goto :L9
  :L6
  .line 10
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->j:Landroid/view/VelocityTracker;
    if-eqz v0, :L7
  .line 11
    invoke-virtual { v0, p3 }, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V
  .line 12
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->j:Landroid/view/VelocityTracker;
    const/16 v4, 1000
    invoke-virtual { v0, v4 }, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V
  .line 13
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->j:Landroid/view/VelocityTracker;
    iget v4, p0, Lcom/google/android/material/appbar/a;->g:I
    invoke-virtual { v0, v4 }, Landroid/view/VelocityTracker;->getYVelocity(I)F
    move-result v10
  .line 14
    invoke-virtual { p0, p2 }, Lcom/google/android/material/appbar/a;->L(Landroid/view/View;)I
    move-result v0
    neg-int v8, v0
    const/4 v9, 0
    move-object v5, p0
    move-object v6, p1
    move-object v7, p2
    invoke-virtual/range { v5 .. v10 }, Lcom/google/android/material/appbar/a;->J(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIF)Z
    const/4 p1, 1
    goto :L8
  :L7
    const/4 p1, 0
  :L8
  .line 15
    iput-boolean v3, p0, Lcom/google/android/material/appbar/a;->f:Z
  .line 16
    iput v1, p0, Lcom/google/android/material/appbar/a;->g:I
  .line 17
    iget-object p2, p0, Lcom/google/android/material/appbar/a;->j:Landroid/view/VelocityTracker;
    if-eqz p2, :L9
  .line 18
    invoke-virtual { p2 }, Landroid/view/VelocityTracker;->recycle()V
    const/4 p2, 0
  .line 19
    iput-object p2, p0, Lcom/google/android/material/appbar/a;->j:Landroid/view/VelocityTracker;
  :L9
  .line 20
    iget-object p2, p0, Lcom/google/android/material/appbar/a;->j:Landroid/view/VelocityTracker;
    if-eqz p2, :L10
  .line 21
    invoke-virtual { p2, p3 }, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V
  :L10
  .line 22
    iget-boolean p2, p0, Lcom/google/android/material/appbar/a;->f:Z
    if-nez p2, :L12
    if-eqz p1, :L11
    goto :L12
  :L11
    const/4 v2, 0
  :L12
    return v2
.end method

.method abstract H(Landroid/view/View;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TV;)Z"
    }
  .end annotation
.end method

.method final J(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIF)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;IIF)Z"
    }
  .end annotation
  .registers 19
    move-object v0, p0
    move-object v1, p2
  .line 1
    iget-object v2, v0, Lcom/google/android/material/appbar/a;->d:Ljava/lang/Runnable;
    if-eqz v2, :L0
  .line 2
    invoke-virtual { p2, v2 }, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z
    const/4 v2, 0
  .line 3
    iput-object v2, v0, Lcom/google/android/material/appbar/a;->d:Ljava/lang/Runnable;
  :L0
  .line 4
    iget-object v2, v0, Lcom/google/android/material/appbar/a;->e:Landroid/widget/OverScroller;
    if-nez v2, :L1
  .line 5
    new-instance v2, Landroid/widget/OverScroller;
    invoke-virtual { p2 }, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v3
    invoke-direct { v2, v3 }, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V
    iput-object v2, v0, Lcom/google/android/material/appbar/a;->e:Landroid/widget/OverScroller;
  :L1
  .line 6
    iget-object v4, v0, Lcom/google/android/material/appbar/a;->e:Landroid/widget/OverScroller;
    const/4 v5, 0
  .line 7
    invoke-virtual { p0 }, Lcom/google/android/material/appbar/c;->E()I
    move-result v6
    const/4 v7, 0
  .line 8
    invoke-static/range { p5 .. p5 }, Ljava/lang/Math;->round(F)I
    move-result v8
    const/4 v9, 0
    const/4 v10, 0
    move/from16 v11, p3
    move/from16 v12, p4
  .line 9
    invoke-virtual/range { v4 .. v12 }, Landroid/widget/OverScroller;->fling(IIIIIIII)V
  .line 10
    iget-object v2, v0, Lcom/google/android/material/appbar/a;->e:Landroid/widget/OverScroller;
    invoke-virtual { v2 }, Landroid/widget/OverScroller;->computeScrollOffset()Z
    move-result v2
    if-eqz v2, :L2
  .line 11
    new-instance v2, Lcom/google/android/material/appbar/a$a;
    move-object v3, p1
    invoke-direct { v2, p0, p1, p2 }, Lcom/google/android/material/appbar/a$a;-><init>(Lcom/google/android/material/appbar/a;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    iput-object v2, v0, Lcom/google/android/material/appbar/a;->d:Ljava/lang/Runnable;
  .line 12
    invoke-static { p2, v2 }, Landroidx/core/view/v;->g0(Landroid/view/View;Ljava/lang/Runnable;)V
    const/4 v1, 1
    return v1
  :L2
    move-object v3, p1
  .line 13
    invoke-virtual { p0, p1, p2 }, Lcom/google/android/material/appbar/a;->N(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    const/4 v1, 0
    return v1
.end method

.method abstract K(Landroid/view/View;)I
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TV;)I"
    }
  .end annotation
.end method

.method abstract L(Landroid/view/View;)I
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TV;)I"
    }
  .end annotation
.end method

.method abstract M()I
.end method

.method abstract N(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;)V"
    }
  .end annotation
.end method

.method final O(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;III)I"
    }
  .end annotation
  .registers 13
  .line 1
    invoke-virtual { p0 }, Lcom/google/android/material/appbar/a;->M()I
    move-result v0
    sub-int v4, v0, p3
    move-object v1, p0
    move-object v2, p1
    move-object v3, p2
    move v5, p4
    move v6, p5
  .line 2
    invoke-virtual/range { v1 .. v6 }, Lcom/google/android/material/appbar/a;->Q(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    move-result p1
    return p1
.end method

.method P(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;I)I"
    }
  .end annotation
  .registers 10
    const/high16 v4, -32768
    const v5, 2147483647
    move-object v0, p0
    move-object v1, p1
    move-object v2, p2
    move v3, p3
  .line 1
    invoke-virtual/range { v0 .. v5 }, Lcom/google/android/material/appbar/a;->Q(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    move-result p1
    return p1
.end method

.method abstract Q(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;III)I"
    }
  .end annotation
.end method

.method public k(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;",
      "Landroid/view/MotionEvent;",
      ")Z"
    }
  .end annotation
  .registers 10
  .line 1
    iget v0, p0, Lcom/google/android/material/appbar/a;->i:I
    if-gez v0, :L0
  .line 2
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0 }, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I
    move-result v0
    iput v0, p0, Lcom/google/android/material/appbar/a;->i:I
  :L0
  .line 3
    invoke-virtual { p3 }, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v0
    const/4 v1, 2
    const/4 v2, 1
    const/4 v3, -1
    const/4 v4, 0
    if-ne v0, v1, :L3
    iget-boolean v0, p0, Lcom/google/android/material/appbar/a;->f:Z
    if-eqz v0, :L3
  .line 4
    iget v0, p0, Lcom/google/android/material/appbar/a;->g:I
    if-ne v0, v3, :L1
    return v4
  :L1
  .line 5
    invoke-virtual { p3, v0 }, Landroid/view/MotionEvent;->findPointerIndex(I)I
    move-result v0
    if-ne v0, v3, :L2
    return v4
  :L2
  .line 6
    invoke-virtual { p3, v0 }, Landroid/view/MotionEvent;->getY(I)F
    move-result v0
    float-to-int v0, v0
  .line 7
    iget v1, p0, Lcom/google/android/material/appbar/a;->h:I
    sub-int v1, v0, v1
    invoke-static { v1 }, Ljava/lang/Math;->abs(I)I
    move-result v1
  .line 8
    iget v5, p0, Lcom/google/android/material/appbar/a;->i:I
    if-le v1, v5, :L3
  .line 9
    iput v0, p0, Lcom/google/android/material/appbar/a;->h:I
    return v2
  :L3
  .line 10
    invoke-virtual { p3 }, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v0
    if-nez v0, :L6
  .line 11
    iput v3, p0, Lcom/google/android/material/appbar/a;->g:I
  .line 12
    invoke-virtual { p3 }, Landroid/view/MotionEvent;->getX()F
    move-result v0
    float-to-int v0, v0
  .line 13
    invoke-virtual { p3 }, Landroid/view/MotionEvent;->getY()F
    move-result v1
    float-to-int v1, v1
  .line 14
    invoke-virtual { p0, p2 }, Lcom/google/android/material/appbar/a;->H(Landroid/view/View;)Z
    move-result v3
    if-eqz v3, :L4
    invoke-virtual { p1, p2, v0, v1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->B(Landroid/view/View;II)Z
    move-result p1
    if-eqz p1, :L4
    const/4 p1, 1
    goto :L5
  :L4
    const/4 p1, 0
  :L5
    iput-boolean p1, p0, Lcom/google/android/material/appbar/a;->f:Z
    if-eqz p1, :L6
  .line 15
    iput v1, p0, Lcom/google/android/material/appbar/a;->h:I
  .line 16
    invoke-virtual { p3, v4 }, Landroid/view/MotionEvent;->getPointerId(I)I
    move-result p1
    iput p1, p0, Lcom/google/android/material/appbar/a;->g:I
  .line 17
    invoke-direct { p0 }, Lcom/google/android/material/appbar/a;->I()V
  .line 18
    iget-object p1, p0, Lcom/google/android/material/appbar/a;->e:Landroid/widget/OverScroller;
    if-eqz p1, :L6
    invoke-virtual { p1 }, Landroid/widget/OverScroller;->isFinished()Z
    move-result p1
    if-nez p1, :L6
  .line 19
    iget-object p1, p0, Lcom/google/android/material/appbar/a;->e:Landroid/widget/OverScroller;
    invoke-virtual { p1 }, Landroid/widget/OverScroller;->abortAnimation()V
    return v2
  :L6
  .line 20
    iget-object p1, p0, Lcom/google/android/material/appbar/a;->j:Landroid/view/VelocityTracker;
    if-eqz p1, :L7
  .line 21
    invoke-virtual { p1, p3 }, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V
  :L7
    return v4
.end method
