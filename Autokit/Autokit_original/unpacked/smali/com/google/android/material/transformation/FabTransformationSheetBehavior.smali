.class public Lcom/google/android/material/transformation/FabTransformationSheetBehavior;
.super Lcom/google/android/material/transformation/FabTransformationBehavior;
.source "SourceFile"

.annotation runtime Ljava/lang/Deprecated;
.end annotation

.field private i:Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Map<",
      "Landroid/view/View;",
      "Ljava/lang/Integer;",
      ">;"
    }
  .end annotation
.end field

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/transformation/FabTransformationBehavior;-><init>()V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 3
  .line 2
    invoke-direct { p0, p1, p2 }, Lcom/google/android/material/transformation/FabTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-void
.end method

.method private g0(Landroid/view/View;Z)V
  .registers 11
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
  .line 2
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    if-nez v1, :L0
    return-void
  :L0
  .line 3
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;
  .line 4
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v1
  .line 5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v3, 16
    if-lt v2, v3, :L1
    if-eqz p2, :L1
  .line 6
    new-instance v2, Ljava/util/HashMap;
    invoke-direct { v2, v1 }, Ljava/util/HashMap;-><init>(I)V
    iput-object v2, p0, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->i:Ljava/util/Map;
  :L1
    const/4 v2, 0
    const/4 v4, 0
  :L2
    if-ge v4, v1, :L9
  .line 7
    invoke-virtual { v0, v4 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v5
  .line 8
    invoke-virtual { v5 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v6
    instance-of v6, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
    if-eqz v6, :L3
  .line 9
    invoke-virtual { v5 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v6
    check-cast v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;
    invoke-virtual { v6 }, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    move-result-object v6
    instance-of v6, v6, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;
    if-eqz v6, :L3
    const/4 v6, 1
    goto :L4
  :L3
    const/4 v6, 0
  :L4
    if-eq v5, p1, :L8
    if-eqz v6, :L5
    goto :L8
  :L5
    if-nez p2, :L6
  .line 10
    iget-object v6, p0, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->i:Ljava/util/Map;
    if-eqz v6, :L8
  .line 11
    invoke-interface { v6, v5 }, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    move-result v6
    if-eqz v6, :L8
  .line 12
    iget-object v6, p0, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->i:Ljava/util/Map;
    invoke-interface { v6, v5 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Ljava/lang/Integer;
    invoke-virtual { v6 }, Ljava/lang/Integer;->intValue()I
    move-result v6
    invoke-static { v5, v6 }, Landroidx/core/view/v;->x0(Landroid/view/View;I)V
    goto :L8
  :L6
  .line 13
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v6, v3, :L7
  .line 14
    iget-object v6, p0, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->i:Ljava/util/Map;
    invoke-virtual { v5 }, Landroid/view/View;->getImportantForAccessibility()I
    move-result v7
    invoke-static { v7 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v7
    invoke-interface { v6, v5, v7 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L7
    const/4 v6, 4
  .line 15
    invoke-static { v5, v6 }, Landroidx/core/view/v;->x0(Landroid/view/View;I)V
  :L8
    add-int/lit8 v4, v4, 1
    goto :L2
  :L9
    if-nez p2, :L10
    const/4 p1, 0
  .line 16
    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->i:Ljava/util/Map;
  :L10
    return-void
.end method

.method protected H(Landroid/view/View;Landroid/view/View;ZZ)Z
  .registers 5
  .line 1
    invoke-direct { p0, p2, p3 }, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->g0(Landroid/view/View;Z)V
  .line 2
    invoke-super { p0, p1, p2, p3, p4 }, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;->H(Landroid/view/View;Landroid/view/View;ZZ)Z
    move-result p1
    return p1
.end method

.method protected e0(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$e;
  .registers 5
    if-eqz p2, :L0
  .line 1
    sget p2, Ld/c/a/a/a;->mtrl_fab_transformation_sheet_expand_spec:I
    goto :L1
  :L0
  .line 2
    sget p2, Ld/c/a/a/a;->mtrl_fab_transformation_sheet_collapse_spec:I
  :L1
  .line 3
    new-instance v0, Lcom/google/android/material/transformation/FabTransformationBehavior$e;
    invoke-direct { v0 }, Lcom/google/android/material/transformation/FabTransformationBehavior$e;-><init>()V
  .line 4
    invoke-static { p1, p2 }, Ld/c/a/a/l/h;->c(Landroid/content/Context;I)Ld/c/a/a/l/h;
    move-result-object p1
    iput-object p1, v0, Lcom/google/android/material/transformation/FabTransformationBehavior$e;->a:Ld/c/a/a/l/h;
  .line 5
    new-instance p1, Ld/c/a/a/l/j;
    const/16 p2, 17
    const/4 v1, 0
    invoke-direct { p1, p2, v1, v1 }, Ld/c/a/a/l/j;-><init>(IFF)V
    iput-object p1, v0, Lcom/google/android/material/transformation/FabTransformationBehavior$e;->b:Ld/c/a/a/l/j;
    return-object v0
.end method
