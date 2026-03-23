.class public Lcom/google/android/material/transformation/FabTransformationScrimBehavior;
.super Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
.source "SourceFile"

.annotation runtime Ljava/lang/Deprecated;
.end annotation

.field private final c:Ld/c/a/a/l/i;

.field private final d:Ld/c/a/a/l/i;

.method public constructor <init>()V
  .registers 6
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>()V
  .line 2
    new-instance v0, Ld/c/a/a/l/i;
    const-wide/16 v1, 75
    const-wide/16 v3, 150
    invoke-direct { v0, v1, v2, v3, v4 }, Ld/c/a/a/l/i;-><init>(JJ)V
    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->c:Ld/c/a/a/l/i;
  .line 3
    new-instance v0, Ld/c/a/a/l/i;
    const-wide/16 v1, 0
    invoke-direct { v0, v1, v2, v3, v4 }, Ld/c/a/a/l/i;-><init>(JJ)V
    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->d:Ld/c/a/a/l/i;
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 7
  .line 4
    invoke-direct { p0, p1, p2 }, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .line 5
    new-instance p1, Ld/c/a/a/l/i;
    const-wide/16 v0, 75
    const-wide/16 v2, 150
    invoke-direct { p1, v0, v1, v2, v3 }, Ld/c/a/a/l/i;-><init>(JJ)V
    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->c:Ld/c/a/a/l/i;
  .line 6
    new-instance p1, Ld/c/a/a/l/i;
    const-wide/16 v0, 0
    invoke-direct { p1, v0, v1, v2, v3 }, Ld/c/a/a/l/i;-><init>(JJ)V
    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->d:Ld/c/a/a/l/i;
    return-void
.end method

.method private K(Landroid/view/View;ZZLjava/util/List;Ljava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/view/View;",
      "ZZ",
      "Ljava/util/List<",
      "Landroid/animation/Animator;",
      ">;",
      "Ljava/util/List<",
      "Landroid/animation/Animator$AnimatorListener;",
      ">;)V"
    }
  .end annotation
  .registers 9
    if-eqz p2, :L0
  .line 1
    iget-object p5, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->c:Ld/c/a/a/l/i;
    goto :L1
  :L0
    iget-object p5, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->d:Ld/c/a/a/l/i;
  :L1
    const/4 v0, 0
    const/4 v1, 0
    const/4 v2, 1
    if-eqz p2, :L3
    if-nez p3, :L2
  .line 2
    invoke-virtual { p1, v0 }, Landroid/view/View;->setAlpha(F)V
  :L2
  .line 3
    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;
    new-array p3, v2, [F
    const/high16 v0, 16256
    aput v0, p3, v1
    invoke-static { p1, p2, p3 }, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;
    move-result-object p1
    goto :L4
  :L3
  .line 4
    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;
    new-array p3, v2, [F
    aput v0, p3, v1
    invoke-static { p1, p2, p3 }, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;
    move-result-object p1
  :L4
  .line 5
    invoke-virtual { p5, p1 }, Ld/c/a/a/l/i;->a(Landroid/animation/Animator;)V
  .line 6
    invoke-interface { p4, p1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    return-void
.end method

.method public D(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
  .registers 4
  .line 1
    invoke-super { p0, p1, p2, p3 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->D(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    move-result p1
    return p1
.end method

.method protected J(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
  .registers 11
  .line 1
    new-instance p1, Ljava/util/ArrayList;
    invoke-direct { p1 }, Ljava/util/ArrayList;-><init>()V
  .line 2
    new-instance v5, Ljava/util/ArrayList;
    invoke-direct { v5 }, Ljava/util/ArrayList;-><init>()V
    move-object v0, p0
    move-object v1, p2
    move v2, p3
    move v3, p4
    move-object v4, p1
  .line 3
    invoke-direct/range { v0 .. v5 }, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->K(Landroid/view/View;ZZLjava/util/List;Ljava/util/List;)V
  .line 4
    new-instance p4, Landroid/animation/AnimatorSet;
    invoke-direct { p4 }, Landroid/animation/AnimatorSet;-><init>()V
  .line 5
    invoke-static { p4, p1 }, Ld/c/a/a/l/b;->a(Landroid/animation/AnimatorSet;Ljava/util/List;)V
  .line 6
    new-instance p1, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$a;
    invoke-direct { p1, p0, p3, p2 }, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$a;-><init>(Lcom/google/android/material/transformation/FabTransformationScrimBehavior;ZLandroid/view/View;)V
    invoke-virtual { p4, p1 }, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V
    return-object p4
.end method

.method public e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
  .registers 4
  .line 1
    instance-of p1, p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    return p1
.end method
