.class public abstract Landroidx/fragment/app/z;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation build Landroid/annotation/SuppressLint;
  value = {
    "UnknownNullness"
  }
.end annotation

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method protected static d(Ljava/util/List;Landroid/view/View;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Landroid/view/View;",
      ">;",
      "Landroid/view/View;",
      ")V"
    }
  .end annotation
  .registers 8
  .line 1
    invoke-interface { p0 }, Ljava/util/List;->size()I
    move-result v0
  .line 2
    invoke-static { p0, p1, v0 }, Landroidx/fragment/app/z;->h(Ljava/util/List;Landroid/view/View;I)Z
    move-result v1
    if-eqz v1, :L0
    return-void
  :L0
  .line 3
    invoke-static { p1 }, Landroidx/core/view/v;->L(Landroid/view/View;)Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :L1
  .line 4
    invoke-interface { p0, p1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L1
    move p1, v0
  :L2
  .line 5
    invoke-interface { p0 }, Ljava/util/List;->size()I
    move-result v1
    if-ge p1, v1, :L6
  .line 6
    invoke-interface { p0, p1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/view/View;
  .line 7
    instance-of v2, v1, Landroid/view/ViewGroup;
    if-eqz v2, :L5
  .line 8
    check-cast v1, Landroid/view/ViewGroup;
  .line 9
    invoke-virtual { v1 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v2
    const/4 v3, 0
  :L3
    if-ge v3, v2, :L5
  .line 10
    invoke-virtual { v1, v3 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v4
  .line 11
    invoke-static { p0, v4, v0 }, Landroidx/fragment/app/z;->h(Ljava/util/List;Landroid/view/View;I)Z
    move-result v5
    if-nez v5, :L4
  .line 12
    invoke-static { v4 }, Landroidx/core/view/v;->L(Landroid/view/View;)Ljava/lang/String;
    move-result-object v5
    if-eqz v5, :L4
  .line 13
    invoke-interface { p0, v4 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L4
    add-int/lit8 v3, v3, 1
    goto :L3
  :L5
    add-int/lit8 p1, p1, 1
    goto :L2
  :L6
    return-void
.end method

.method private static h(Ljava/util/List;Landroid/view/View;I)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Landroid/view/View;",
      ">;",
      "Landroid/view/View;",
      "I)Z"
    }
  .end annotation
  .registers 6
    const/4 v0, 0
    const/4 v1, 0
  :L0
    if-ge v1, p2, :L2
  .line 1
    invoke-interface { p0, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    if-ne v2, p1, :L1
    const/4 p0, 1
    return p0
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    return v0
.end method

.method static i(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/Map<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;",
      "Ljava/lang/String;",
      ")",
      "Ljava/lang/String;"
    }
  .end annotation
  .registers 4
  .line 1
    invoke-interface { p0 }, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object p0
    invoke-interface { p0 }, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object p0
  :L0
    invoke-interface { p0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L1
    invoke-interface { p0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/Map$Entry;
  .line 2
    invoke-interface { v0 }, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    move-result-object v1
    invoke-virtual { p1, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L0
  .line 3
    invoke-interface { v0 }, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Ljava/lang/String;
    return-object p0
  :L1
    const/4 p0, 0
    return-object p0
.end method

.method protected static l(Ljava/util/List;)Z
  .registers 1
    if-eqz p0, :L1
  .line 1
    invoke-interface { p0 }, Ljava/util/List;->isEmpty()Z
    move-result p0
    if-eqz p0, :L0
    goto :L1
  :L0
    const/4 p0, 0
    goto :L2
  :L1
    const/4 p0, 1
  :L2
    return p0
.end method

.method public abstract A(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Object;",
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;",
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;)V"
    }
  .end annotation
.end method

.method public abstract B(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract a(Ljava/lang/Object;Landroid/view/View;)V
.end method

.method public abstract b(Ljava/lang/Object;Ljava/util/ArrayList;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Object;",
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;)V"
    }
  .end annotation
.end method

.method public abstract c(Landroid/view/ViewGroup;Ljava/lang/Object;)V
.end method

.method public abstract e(Ljava/lang/Object;)Z
.end method

.method f(Ljava/util/ArrayList;Landroid/view/View;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;",
      "Landroid/view/View;",
      ")V"
    }
  .end annotation
  .registers 6
  .line 1
    invoke-virtual { p2 }, Landroid/view/View;->getVisibility()I
    move-result v0
    if-nez v0, :L3
  .line 2
    instance-of v0, p2, Landroid/view/ViewGroup;
    if-eqz v0, :L2
  .line 3
    check-cast p2, Landroid/view/ViewGroup;
  .line 4
    invoke-static { p2 }, Landroidx/core/view/x;->a(Landroid/view/ViewGroup;)Z
    move-result v0
    if-eqz v0, :L0
  .line 5
    invoke-virtual { p1, p2 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :L3
  :L0
  .line 6
    invoke-virtual { p2 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v0
    const/4 v1, 0
  :L1
    if-ge v1, v0, :L3
  .line 7
    invoke-virtual { p2, v1 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v2
  .line 8
    invoke-virtual { p0, p1, v2 }, Landroidx/fragment/app/z;->f(Ljava/util/ArrayList;Landroid/view/View;)V
    add-int/lit8 v1, v1, 1
    goto :L1
  :L2
  .line 9
    invoke-virtual { p1, p2 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L3
    return-void
.end method

.method public abstract g(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method j(Ljava/util/Map;Landroid/view/View;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/Map<",
      "Ljava/lang/String;",
      "Landroid/view/View;",
      ">;",
      "Landroid/view/View;",
      ")V"
    }
  .end annotation
  .registers 6
  .line 1
    invoke-virtual { p2 }, Landroid/view/View;->getVisibility()I
    move-result v0
    if-nez v0, :L2
  .line 2
    invoke-static { p2 }, Landroidx/core/view/v;->L(Landroid/view/View;)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :L0
  .line 3
    invoke-interface { p1, v0, p2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L0
  .line 4
    instance-of v0, p2, Landroid/view/ViewGroup;
    if-eqz v0, :L2
  .line 5
    check-cast p2, Landroid/view/ViewGroup;
  .line 6
    invoke-virtual { p2 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v0
    const/4 v1, 0
  :L1
    if-ge v1, v0, :L2
  .line 7
    invoke-virtual { p2, v1 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v2
  .line 8
    invoke-virtual { p0, p1, v2 }, Landroidx/fragment/app/z;->j(Ljava/util/Map;Landroid/view/View;)V
    add-int/lit8 v1, v1, 1
    goto :L1
  :L2
    return-void
.end method

.method protected k(Landroid/view/View;Landroid/graphics/Rect;)V
  .registers 7
  .line 1
    invoke-static { p1 }, Landroidx/core/view/v;->S(Landroid/view/View;)Z
    move-result v0
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    new-instance v0, Landroid/graphics/RectF;
    invoke-direct { v0 }, Landroid/graphics/RectF;-><init>()V
  .line 3
    invoke-virtual { p1 }, Landroid/view/View;->getWidth()I
    move-result v1
    int-to-float v1, v1
    invoke-virtual { p1 }, Landroid/view/View;->getHeight()I
    move-result v2
    int-to-float v2, v2
    const/4 v3, 0
    invoke-virtual { v0, v3, v3, v1, v2 }, Landroid/graphics/RectF;->set(FFFF)V
  .line 4
    invoke-virtual { p1 }, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;
    move-result-object v1
    invoke-virtual { v1, v0 }, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z
  .line 5
    invoke-virtual { p1 }, Landroid/view/View;->getLeft()I
    move-result v1
    int-to-float v1, v1
    invoke-virtual { p1 }, Landroid/view/View;->getTop()I
    move-result v2
    int-to-float v2, v2
    invoke-virtual { v0, v1, v2 }, Landroid/graphics/RectF;->offset(FF)V
  .line 6
    invoke-virtual { p1 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v1
  :L1
  .line 7
    instance-of v2, v1, Landroid/view/View;
    if-eqz v2, :L2
  .line 8
    check-cast v1, Landroid/view/View;
  .line 9
    invoke-virtual { v1 }, Landroid/view/View;->getScrollX()I
    move-result v2
    neg-int v2, v2
    int-to-float v2, v2
    invoke-virtual { v1 }, Landroid/view/View;->getScrollY()I
    move-result v3
    neg-int v3, v3
    int-to-float v3, v3
    invoke-virtual { v0, v2, v3 }, Landroid/graphics/RectF;->offset(FF)V
  .line 10
    invoke-virtual { v1 }, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;
    move-result-object v2
    invoke-virtual { v2, v0 }, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z
  .line 11
    invoke-virtual { v1 }, Landroid/view/View;->getLeft()I
    move-result v2
    int-to-float v2, v2
    invoke-virtual { v1 }, Landroid/view/View;->getTop()I
    move-result v3
    int-to-float v3, v3
    invoke-virtual { v0, v2, v3 }, Landroid/graphics/RectF;->offset(FF)V
  .line 12
    invoke-virtual { v1 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v1
    goto :L1
  :L2
    const/4 v1, 2
    new-array v1, v1, [I
  .line 13
    invoke-virtual { p1 }, Landroid/view/View;->getRootView()Landroid/view/View;
    move-result-object p1
    invoke-virtual { p1, v1 }, Landroid/view/View;->getLocationOnScreen([I)V
    const/4 p1, 0
  .line 14
    aget p1, v1, p1
    int-to-float p1, p1
    const/4 v2, 1
    aget v1, v1, v2
    int-to-float v1, v1
    invoke-virtual { v0, p1, v1 }, Landroid/graphics/RectF;->offset(FF)V
  .line 15
    iget p1, v0, Landroid/graphics/RectF;->left:F
    invoke-static { p1 }, Ljava/lang/Math;->round(F)I
    move-result p1
    iget v1, v0, Landroid/graphics/RectF;->top:F
    invoke-static { v1 }, Ljava/lang/Math;->round(F)I
    move-result v1
    iget v2, v0, Landroid/graphics/RectF;->right:F
    invoke-static { v2 }, Ljava/lang/Math;->round(F)I
    move-result v2
    iget v0, v0, Landroid/graphics/RectF;->bottom:F
  .line 16
    invoke-static { v0 }, Ljava/lang/Math;->round(F)I
    move-result v0
  .line 17
    invoke-virtual { p2, p1, v1, v2, v0 }, Landroid/graphics/Rect;->set(IIII)V
    return-void
.end method

.method public abstract m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method o(Ljava/util/ArrayList;)Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;)",
      "Ljava/util/ArrayList<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
  .registers 7
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
  .line 2
    invoke-virtual { p1 }, Ljava/util/ArrayList;->size()I
    move-result v1
    const/4 v2, 0
  :L0
    if-ge v2, v1, :L1
  .line 3
    invoke-virtual { p1, v2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroid/view/View;
  .line 4
    invoke-static { v3 }, Landroidx/core/view/v;->L(Landroid/view/View;)Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v0, v4 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    const/4 v4, 0
  .line 5
    invoke-static { v3, v4 }, Landroidx/core/view/v;->D0(Landroid/view/View;Ljava/lang/String;)V
    add-int/lit8 v2, v2, 1
    goto :L0
  :L1
    return-object v0
.end method

.method public abstract p(Ljava/lang/Object;Landroid/view/View;)V
.end method

.method public abstract q(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Object;",
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;",
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;)V"
    }
  .end annotation
.end method

.method public abstract r(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Object;",
      "Landroid/view/View;",
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;)V"
    }
  .end annotation
.end method

.method s(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/view/ViewGroup;",
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;",
      "Ljava/util/Map<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;)V"
    }
  .end annotation
  .registers 5
  .line 1
    new-instance v0, Landroidx/fragment/app/z$c;
    invoke-direct { v0, p0, p2, p3 }, Landroidx/fragment/app/z$c;-><init>(Landroidx/fragment/app/z;Ljava/util/ArrayList;Ljava/util/Map;)V
    invoke-static { p1, v0 }, Landroidx/core/view/t;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/t;
    return-void
.end method

.method public abstract t(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Object;",
      "Ljava/lang/Object;",
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;",
      "Ljava/lang/Object;",
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;",
      "Ljava/lang/Object;",
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;)V"
    }
  .end annotation
.end method

.method public abstract u(Ljava/lang/Object;Landroid/graphics/Rect;)V
.end method

.method public abstract v(Ljava/lang/Object;Landroid/view/View;)V
.end method

.method public w(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Lc/g/g/b;Ljava/lang/Runnable;)V
  .registers 5
  .line 1
    invoke-interface { p4 }, Ljava/lang/Runnable;->run()V
    return-void
.end method

.method x(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/view/View;",
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;",
      "Ljava/util/Map<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;)V"
    }
  .end annotation
  .registers 5
  .line 1
    new-instance v0, Landroidx/fragment/app/z$b;
    invoke-direct { v0, p0, p2, p3 }, Landroidx/fragment/app/z$b;-><init>(Landroidx/fragment/app/z;Ljava/util/ArrayList;Ljava/util/Map;)V
    invoke-static { p1, v0 }, Landroidx/core/view/t;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/t;
    return-void
.end method

.method y(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/view/View;",
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;",
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;",
      "Ljava/util/ArrayList<",
      "Ljava/lang/String;",
      ">;",
      "Ljava/util/Map<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;)V"
    }
  .end annotation
  .registers 14
  .line 1
    invoke-virtual { p3 }, Ljava/util/ArrayList;->size()I
    move-result v2
  .line 2
    new-instance v6, Ljava/util/ArrayList;
    invoke-direct { v6 }, Ljava/util/ArrayList;-><init>()V
    const/4 v0, 0
    const/4 v1, 0
  :L0
    if-ge v1, v2, :L5
  .line 3
    invoke-virtual { p2, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroid/view/View;
  .line 4
    invoke-static { v3 }, Landroidx/core/view/v;->L(Landroid/view/View;)Ljava/lang/String;
    move-result-object v4
  .line 5
    invoke-virtual { v6, v4 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    if-nez v4, :L1
    goto :L4
  :L1
    const/4 v5, 0
  .line 6
    invoke-static { v3, v5 }, Landroidx/core/view/v;->D0(Landroid/view/View;Ljava/lang/String;)V
  .line 7
    invoke-interface { p5, v4 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/String;
    const/4 v5, 0
  :L2
    if-ge v5, v2, :L4
  .line 8
    invoke-virtual { p4, v5 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v7
    invoke-virtual { v3, v7 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v7
    if-eqz v7, :L3
  .line 9
    invoke-virtual { p3, v5 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroid/view/View;
    invoke-static { v3, v4 }, Landroidx/core/view/v;->D0(Landroid/view/View;Ljava/lang/String;)V
    goto :L4
  :L3
    add-int/lit8 v5, v5, 1
    goto :L2
  :L4
    add-int/lit8 v1, v1, 1
    goto :L0
  :L5
  .line 10
    new-instance p5, Landroidx/fragment/app/z$a;
    move-object v0, p5
    move-object v1, p0
    move-object v3, p3
    move-object v4, p4
    move-object v5, p2
    invoke-direct/range { v0 .. v6 }, Landroidx/fragment/app/z$a;-><init>(Landroidx/fragment/app/z;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    invoke-static { p1, p5 }, Landroidx/core/view/t;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/t;
    return-void
.end method

.method public abstract z(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Object;",
      "Landroid/view/View;",
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;)V"
    }
  .end annotation
.end method
