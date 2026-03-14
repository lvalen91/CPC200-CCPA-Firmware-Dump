.class public abstract Lcom/google/android/material/transformation/ExpandableBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "Landroidx/coordinatorlayout/widget/CoordinatorLayout$c<",
    "Landroid/view/View;",
    ">;"
  }
.end annotation
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.field private a:I

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;-><init>()V
    const/4 v0, 0
  .line 2
    iput v0, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->a:I
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 3
  .line 3
    invoke-direct { p0, p1, p2 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    const/4 p1, 0
  .line 4
    iput p1, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->a:I
    return-void
.end method

.method static synthetic E(Lcom/google/android/material/transformation/ExpandableBehavior;)I
  .registers 1
  .line 1
    iget p0, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->a:I
    return p0
.end method

.method private F(Z)Z
  .registers 5
    const/4 v0, 0
    const/4 v1, 1
    if-eqz p1, :L2
  .line 1
    iget p1, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->a:I
    if-eqz p1, :L0
    const/4 v2, 2
    if-ne p1, v2, :L1
  :L0
    const/4 v0, 1
  :L1
    return v0
  :L2
  .line 2
    iget p1, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->a:I
    if-ne p1, v1, :L3
    const/4 v0, 1
  :L3
    return v0
.end method

.method protected G(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Ld/c/a/a/u/a;
  .registers 8
  .line 1
    invoke-virtual { p1, p2 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r(Landroid/view/View;)Ljava/util/List;
    move-result-object v0
  .line 2
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v1
    const/4 v2, 0
  :L0
    if-ge v2, v1, :L2
  .line 3
    invoke-interface { v0, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroid/view/View;
  .line 4
    invoke-virtual { p0, p1, p2, v3 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    move-result v4
    if-eqz v4, :L1
  .line 5
    check-cast v3, Ld/c/a/a/u/a;
    return-object v3
  :L1
    add-int/lit8 v2, v2, 1
    goto :L0
  :L2
    const/4 p1, 0
    return-object p1
.end method

.method protected abstract H(Landroid/view/View;Landroid/view/View;ZZ)Z
.end method

.method public h(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
  .registers 5
  .line 1
    check-cast p3, Ld/c/a/a/u/a;
  .line 2
    invoke-interface { p3 }, Ld/c/a/a/u/a;->a()Z
    move-result p1
  .line 3
    invoke-direct { p0, p1 }, Lcom/google/android/material/transformation/ExpandableBehavior;->F(Z)Z
    move-result p1
    if-eqz p1, :L2
  .line 4
    invoke-interface { p3 }, Ld/c/a/a/u/a;->a()Z
    move-result p1
    const/4 v0, 1
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 2
  :L1
    iput p1, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->a:I
  .line 5
    move-object p1, p3
    check-cast p1, Landroid/view/View;
    invoke-interface { p3 }, Ld/c/a/a/u/a;->a()Z
    move-result p3
    invoke-virtual { p0, p1, p2, p3, v0 }, Lcom/google/android/material/transformation/ExpandableBehavior;->H(Landroid/view/View;Landroid/view/View;ZZ)Z
    move-result p1
    return p1
  :L2
    const/4 p1, 0
    return p1
.end method

.method public l(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
  .registers 6
  .line 1
    invoke-static { p2 }, Landroidx/core/view/v;->T(Landroid/view/View;)Z
    move-result p3
    if-nez p3, :L2
  .line 2
    invoke-virtual { p0, p1, p2 }, Lcom/google/android/material/transformation/ExpandableBehavior;->G(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Ld/c/a/a/u/a;
    move-result-object p1
    if-eqz p1, :L2
  .line 3
    invoke-interface { p1 }, Ld/c/a/a/u/a;->a()Z
    move-result p3
    invoke-direct { p0, p3 }, Lcom/google/android/material/transformation/ExpandableBehavior;->F(Z)Z
    move-result p3
    if-eqz p3, :L2
  .line 4
    invoke-interface { p1 }, Ld/c/a/a/u/a;->a()Z
    move-result p3
    if-eqz p3, :L0
    const/4 p3, 1
    goto :L1
  :L0
    const/4 p3, 2
  :L1
    iput p3, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->a:I
  .line 5
    invoke-virtual { p2 }, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    move-result-object v0
    new-instance v1, Lcom/google/android/material/transformation/ExpandableBehavior$a;
    invoke-direct { v1, p0, p2, p3, p1 }, Lcom/google/android/material/transformation/ExpandableBehavior$a;-><init>(Lcom/google/android/material/transformation/ExpandableBehavior;Landroid/view/View;ILd/c/a/a/u/a;)V
  .line 6
    invoke-virtual { v0, v1 }, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
  :L2
    const/4 p1, 0
    return p1
.end method
