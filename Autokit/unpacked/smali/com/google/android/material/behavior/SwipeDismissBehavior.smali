.class public Lcom/google/android/material/behavior/SwipeDismissBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/google/android/material/behavior/SwipeDismissBehavior$d;,
    Lcom/google/android/material/behavior/SwipeDismissBehavior$c;
  }
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "<V:",
    "Landroid/view/View;",
    ">",
    "Landroidx/coordinatorlayout/widget/CoordinatorLayout$c<",
    "TV;>;"
  }
.end annotation

.field a:Lc/i/b/c;

.field b:Lcom/google/android/material/behavior/SwipeDismissBehavior$c;

.field private c:Z

.field private d:F

.field private e:Z

.field f:I

.field g:F

.field h:F

.field i:F

.field private final j:Lc/i/b/c$c;

.method public constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;-><init>()V
    const/4 v0, 0
  .line 2
    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->d:F
    const/4 v1, 2
  .line 3
    iput v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->f:I
    const/high16 v1, 16128
  .line 4
    iput v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->g:F
  .line 5
    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->h:F
  .line 6
    iput v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->i:F
  .line 7
    new-instance v0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;
    invoke-direct { v0, p0 }, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V
    iput-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->j:Lc/i/b/c$c;
    return-void
.end method

.method static F(FFF)F
  .registers 3
  .line 1
    invoke-static { p0, p1 }, Ljava/lang/Math;->max(FF)F
    move-result p0
    invoke-static { p0, p2 }, Ljava/lang/Math;->min(FF)F
    move-result p0
    return p0
.end method

.method static G(III)I
  .registers 3
  .line 1
    invoke-static { p0, p1 }, Ljava/lang/Math;->max(II)I
    move-result p0
    invoke-static { p0, p2 }, Ljava/lang/Math;->min(II)I
    move-result p0
    return p0
.end method

.method private H(Landroid/view/ViewGroup;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Lc/i/b/c;
    if-nez v0, :L2
  .line 2
    iget-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->e:Z
    if-eqz v0, :L0
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->d:F
    iget-object v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->j:Lc/i/b/c$c;
  .line 3
    invoke-static { p1, v0, v1 }, Lc/i/b/c;->l(Landroid/view/ViewGroup;FLc/i/b/c$c;)Lc/i/b/c;
    move-result-object p1
    goto :L1
  :L0
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->j:Lc/i/b/c$c;
  .line 4
    invoke-static { p1, v0 }, Lc/i/b/c;->m(Landroid/view/ViewGroup;Lc/i/b/c$c;)Lc/i/b/c;
    move-result-object p1
  :L1
    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Lc/i/b/c;
  :L2
    return-void
.end method

.method static I(FFF)F
  .registers 3
    sub-float/2addr p2, p0
    sub-float/2addr p1, p0
    div-float/2addr p2, p1
    return p2
.end method

.method private M(Landroid/view/View;)V
  .registers 5
    const/high16 v0, 16
  .line 1
    invoke-static { p1, v0 }, Landroidx/core/view/v;->i0(Landroid/view/View;I)V
  .line 2
    invoke-virtual { p0, p1 }, Lcom/google/android/material/behavior/SwipeDismissBehavior;->E(Landroid/view/View;)Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    sget-object v0, Landroidx/core/view/e0/c$a;->j:Landroidx/core/view/e0/c$a;
    const/4 v1, 0
    new-instance v2, Lcom/google/android/material/behavior/SwipeDismissBehavior$b;
    invoke-direct { v2, p0 }, Lcom/google/android/material/behavior/SwipeDismissBehavior$b;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V
    invoke-static { p1, v0, v1, v2 }, Landroidx/core/view/v;->k0(Landroid/view/View;Landroidx/core/view/e0/c$a;Ljava/lang/CharSequence;Landroidx/core/view/e0/f;)V
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
  .registers 4
  .line 1
    iget-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Lc/i/b/c;
    if-eqz p1, :L0
  .line 2
    invoke-virtual { p1, p3 }, Lc/i/b/c;->z(Landroid/view/MotionEvent;)V
    const/4 p1, 1
    return p1
  :L0
    const/4 p1, 0
    return p1
.end method

.method public E(Landroid/view/View;)Z
  .registers 2
    const/4 p1, 1
    return p1
.end method

.method public J(F)V
  .registers 4
    const/4 v0, 0
    const/high16 v1, 16256
  .line 1
    invoke-static { v0, p1, v1 }, Lcom/google/android/material/behavior/SwipeDismissBehavior;->F(FFF)F
    move-result p1
    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->i:F
    return-void
.end method

.method public K(F)V
  .registers 4
    const/4 v0, 0
    const/high16 v1, 16256
  .line 1
    invoke-static { v0, p1, v1 }, Lcom/google/android/material/behavior/SwipeDismissBehavior;->F(FFF)F
    move-result p1
    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->h:F
    return-void
.end method

.method public L(I)V
  .registers 2
  .line 1
    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->f:I
    return-void
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
  .registers 7
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:Z
  .line 2
    invoke-virtual { p3 }, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v1
    const/4 v2, 0
    if-eqz v1, :L1
    const/4 p2, 1
    if-eq v1, p2, :L0
    const/4 p2, 3
    if-eq v1, p2, :L0
    goto :L2
  :L0
  .line 3
    iput-boolean v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:Z
    goto :L2
  :L1
  .line 4
    invoke-virtual { p3 }, Landroid/view/MotionEvent;->getX()F
    move-result v0
    float-to-int v0, v0
    invoke-virtual { p3 }, Landroid/view/MotionEvent;->getY()F
    move-result v1
    float-to-int v1, v1
    invoke-virtual { p1, p2, v0, v1 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->B(Landroid/view/View;II)Z
    move-result v0
    iput-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:Z
  :L2
    if-eqz v0, :L3
  .line 5
    invoke-direct { p0, p1 }, Lcom/google/android/material/behavior/SwipeDismissBehavior;->H(Landroid/view/ViewGroup;)V
  .line 6
    iget-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Lc/i/b/c;
    invoke-virtual { p1, p3 }, Lc/i/b/c;->G(Landroid/view/MotionEvent;)Z
    move-result p1
    return p1
  :L3
    return v2
.end method

.method public l(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
      "TV;I)Z"
    }
  .end annotation
  .registers 4
  .line 1
    invoke-super { p0, p1, p2, p3 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->l(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    move-result p1
  .line 2
    invoke-static { p2 }, Landroidx/core/view/v;->A(Landroid/view/View;)I
    move-result p3
    if-nez p3, :L0
    const/4 p3, 1
  .line 3
    invoke-static { p2, p3 }, Landroidx/core/view/v;->x0(Landroid/view/View;I)V
  .line 4
    invoke-direct { p0, p2 }, Lcom/google/android/material/behavior/SwipeDismissBehavior;->M(Landroid/view/View;)V
  :L0
    return p1
.end method
