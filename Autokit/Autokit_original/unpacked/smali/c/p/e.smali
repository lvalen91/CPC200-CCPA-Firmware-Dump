.class public Lc/p/e;
.super Landroidx/fragment/app/z;
.source "SourceFile"

.annotation build Landroid/annotation/SuppressLint;
  value = {
    "RestrictedApi"
  }
.end annotation

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Landroidx/fragment/app/z;-><init>()V
    return-void
.end method

.method private static C(Lc/p/m;)Z
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lc/p/m;->y()Ljava/util/List;
    move-result-object v0
    invoke-static { v0 }, Landroidx/fragment/app/z;->l(Ljava/util/List;)Z
    move-result v0
    if-eqz v0, :L1
  .line 2
    invoke-virtual { p0 }, Lc/p/m;->z()Ljava/util/List;
    move-result-object v0
    invoke-static { v0 }, Landroidx/fragment/app/z;->l(Ljava/util/List;)Z
    move-result v0
    if-eqz v0, :L1
  .line 3
    invoke-virtual { p0 }, Lc/p/m;->A()Ljava/util/List;
    move-result-object p0
    invoke-static { p0 }, Landroidx/fragment/app/z;->l(Ljava/util/List;)Z
    move-result p0
    if-nez p0, :L0
    goto :L1
  :L0
    const/4 p0, 0
    goto :L2
  :L1
    const/4 p0, 1
  :L2
    return p0
.end method

.method public A(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
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
  .registers 5
  .line 1
    check-cast p1, Lc/p/q;
    if-eqz p1, :L0
  .line 2
    invoke-virtual { p1 }, Lc/p/m;->B()Ljava/util/List;
    move-result-object v0
    invoke-interface { v0 }, Ljava/util/List;->clear()V
  .line 3
    invoke-virtual { p1 }, Lc/p/m;->B()Ljava/util/List;
    move-result-object v0
    invoke-interface { v0, p3 }, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
  .line 4
    invoke-virtual { p0, p1, p2, p3 }, Lc/p/e;->q(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
  :L0
    return-void
.end method

.method public B(Ljava/lang/Object;)Ljava/lang/Object;
  .registers 3
    if-nez p1, :L0
    const/4 p1, 0
    return-object p1
  :L0
  .line 1
    new-instance v0, Lc/p/q;
    invoke-direct { v0 }, Lc/p/q;-><init>()V
  .line 2
    check-cast p1, Lc/p/m;
    invoke-virtual { v0, p1 }, Lc/p/q;->d0(Lc/p/m;)Lc/p/q;
    return-object v0
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;)V
  .registers 3
    if-eqz p1, :L0
  .line 1
    check-cast p1, Lc/p/m;
  .line 2
    invoke-virtual { p1, p2 }, Lc/p/m;->b(Landroid/view/View;)Lc/p/m;
  :L0
    return-void
.end method

.method public b(Ljava/lang/Object;Ljava/util/ArrayList;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Object;",
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;)V"
    }
  .end annotation
  .registers 6
  .line 1
    check-cast p1, Lc/p/m;
    if-nez p1, :L0
    return-void
  :L0
  .line 2
    instance-of v0, p1, Lc/p/q;
    const/4 v1, 0
    if-eqz v0, :L2
  .line 3
    check-cast p1, Lc/p/q;
  .line 4
    invoke-virtual { p1 }, Lc/p/q;->g0()I
    move-result v0
  :L1
    if-ge v1, v0, :L4
  .line 5
    invoke-virtual { p1, v1 }, Lc/p/q;->f0(I)Lc/p/m;
    move-result-object v2
  .line 6
    invoke-virtual { p0, v2, p2 }, Lc/p/e;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V
    add-int/lit8 v1, v1, 1
    goto :L1
  :L2
  .line 7
    invoke-static { p1 }, Lc/p/e;->C(Lc/p/m;)Z
    move-result v0
    if-nez v0, :L4
  .line 8
    invoke-virtual { p1 }, Lc/p/m;->B()Ljava/util/List;
    move-result-object v0
  .line 9
    invoke-static { v0 }, Landroidx/fragment/app/z;->l(Ljava/util/List;)Z
    move-result v0
    if-eqz v0, :L4
  .line 10
    invoke-virtual { p2 }, Ljava/util/ArrayList;->size()I
    move-result v0
  :L3
    if-ge v1, v0, :L4
  .line 11
    invoke-virtual { p2, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroid/view/View;
    invoke-virtual { p1, v2 }, Lc/p/m;->b(Landroid/view/View;)Lc/p/m;
    add-int/lit8 v1, v1, 1
    goto :L3
  :L4
    return-void
.end method

.method public c(Landroid/view/ViewGroup;Ljava/lang/Object;)V
  .registers 3
  .line 1
    check-cast p2, Lc/p/m;
    invoke-static { p1, p2 }, Lc/p/o;->a(Landroid/view/ViewGroup;Lc/p/m;)V
    return-void
.end method

.method public e(Ljava/lang/Object;)Z
  .registers 2
  .line 1
    instance-of p1, p1, Lc/p/m;
    return p1
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Object;
  .registers 2
    if-eqz p1, :L0
  .line 1
    check-cast p1, Lc/p/m;
    invoke-virtual { p1 }, Lc/p/m;->l()Lc/p/m;
    move-result-object p1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return-object p1
.end method

.method public m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .registers 5
  .line 1
    check-cast p1, Lc/p/m;
  .line 2
    check-cast p2, Lc/p/m;
  .line 3
    check-cast p3, Lc/p/m;
    if-eqz p1, :L0
    if-eqz p2, :L0
  .line 4
    new-instance v0, Lc/p/q;
    invoke-direct { v0 }, Lc/p/q;-><init>()V
  .line 5
    invoke-virtual { v0, p1 }, Lc/p/q;->d0(Lc/p/m;)Lc/p/q;
  .line 6
    invoke-virtual { v0, p2 }, Lc/p/q;->d0(Lc/p/m;)Lc/p/q;
    const/4 p1, 1
  .line 7
    invoke-virtual { v0, p1 }, Lc/p/q;->l0(I)Lc/p/q;
    move-object p1, v0
    goto :L3
  :L0
    if-eqz p1, :L1
    goto :L3
  :L1
    if-eqz p2, :L2
    move-object p1, p2
    goto :L3
  :L2
    const/4 p1, 0
  :L3
    if-eqz p3, :L5
  .line 8
    new-instance p2, Lc/p/q;
    invoke-direct { p2 }, Lc/p/q;-><init>()V
    if-eqz p1, :L4
  .line 9
    invoke-virtual { p2, p1 }, Lc/p/q;->d0(Lc/p/m;)Lc/p/q;
  :L4
  .line 10
    invoke-virtual { p2, p3 }, Lc/p/q;->d0(Lc/p/m;)Lc/p/q;
    return-object p2
  :L5
    return-object p1
.end method

.method public n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .registers 5
  .line 1
    new-instance v0, Lc/p/q;
    invoke-direct { v0 }, Lc/p/q;-><init>()V
    if-eqz p1, :L0
  .line 2
    check-cast p1, Lc/p/m;
    invoke-virtual { v0, p1 }, Lc/p/q;->d0(Lc/p/m;)Lc/p/q;
  :L0
    if-eqz p2, :L1
  .line 3
    check-cast p2, Lc/p/m;
    invoke-virtual { v0, p2 }, Lc/p/q;->d0(Lc/p/m;)Lc/p/q;
  :L1
    if-eqz p3, :L2
  .line 4
    check-cast p3, Lc/p/m;
    invoke-virtual { v0, p3 }, Lc/p/q;->d0(Lc/p/m;)Lc/p/q;
  :L2
    return-object v0
.end method

.method public p(Ljava/lang/Object;Landroid/view/View;)V
  .registers 3
    if-eqz p1, :L0
  .line 1
    check-cast p1, Lc/p/m;
  .line 2
    invoke-virtual { p1, p2 }, Lc/p/m;->P(Landroid/view/View;)Lc/p/m;
  :L0
    return-void
.end method

.method public q(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
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
  .registers 8
  .line 1
    check-cast p1, Lc/p/m;
  .line 2
    instance-of v0, p1, Lc/p/q;
    const/4 v1, 0
    if-eqz v0, :L1
  .line 3
    check-cast p1, Lc/p/q;
  .line 4
    invoke-virtual { p1 }, Lc/p/q;->g0()I
    move-result v0
  :L0
    if-ge v1, v0, :L6
  .line 5
    invoke-virtual { p1, v1 }, Lc/p/q;->f0(I)Lc/p/m;
    move-result-object v2
  .line 6
    invoke-virtual { p0, v2, p2, p3 }, Lc/p/e;->q(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    add-int/lit8 v1, v1, 1
    goto :L0
  :L1
  .line 7
    invoke-static { p1 }, Lc/p/e;->C(Lc/p/m;)Z
    move-result v0
    if-nez v0, :L6
  .line 8
    invoke-virtual { p1 }, Lc/p/m;->B()Ljava/util/List;
    move-result-object v0
  .line 9
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v2
    invoke-virtual { p2 }, Ljava/util/ArrayList;->size()I
    move-result v3
    if-ne v2, v3, :L6
  .line 10
    invoke-interface { v0, p2 }, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z
    move-result v0
    if-eqz v0, :L6
    if-nez p3, :L2
    const/4 v0, 0
    goto :L3
  :L2
  .line 11
    invoke-virtual { p3 }, Ljava/util/ArrayList;->size()I
    move-result v0
  :L3
    if-ge v1, v0, :L4
  .line 12
    invoke-virtual { p3, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroid/view/View;
    invoke-virtual { p1, v2 }, Lc/p/m;->b(Landroid/view/View;)Lc/p/m;
    add-int/lit8 v1, v1, 1
    goto :L3
  :L4
  .line 13
    invoke-virtual { p2 }, Ljava/util/ArrayList;->size()I
    move-result p3
    add-int/lit8 p3, p3, -1
  :L5
    if-ltz p3, :L6
  .line 14
    invoke-virtual { p2, p3 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/View;
    invoke-virtual { p1, v0 }, Lc/p/m;->P(Landroid/view/View;)Lc/p/m;
    add-int/lit8 p3, p3, -1
    goto :L5
  :L6
    return-void
.end method

.method public r(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
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
  .registers 5
  .line 1
    check-cast p1, Lc/p/m;
  .line 2
    new-instance v0, Lc/p/e$b;
    invoke-direct { v0, p0, p2, p3 }, Lc/p/e$b;-><init>(Lc/p/e;Landroid/view/View;Ljava/util/ArrayList;)V
    invoke-virtual { p1, v0 }, Lc/p/m;->a(Lc/p/m$f;)Lc/p/m;
    return-void
.end method

.method public t(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
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
  .registers 18
  .line 1
    move-object v0, p1
    check-cast v0, Lc/p/m;
  .line 2
    new-instance v9, Lc/p/e$c;
    move-object v1, v9
    move-object v2, p0
    move-object v3, p2
    move-object v4, p3
    move-object v5, p4
    move-object v6, p5
    move-object/from16 v7, p6
    move-object/from16 v8, p7
    invoke-direct/range { v1 .. v8 }, Lc/p/e$c;-><init>(Lc/p/e;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    invoke-virtual { v0, v9 }, Lc/p/m;->a(Lc/p/m$f;)Lc/p/m;
    return-void
.end method

.method public u(Ljava/lang/Object;Landroid/graphics/Rect;)V
  .registers 4
    if-eqz p1, :L0
  .line 1
    check-cast p1, Lc/p/m;
  .line 2
    new-instance v0, Lc/p/e$d;
    invoke-direct { v0, p0, p2 }, Lc/p/e$d;-><init>(Lc/p/e;Landroid/graphics/Rect;)V
    invoke-virtual { p1, v0 }, Lc/p/m;->U(Lc/p/m$e;)V
  :L0
    return-void
.end method

.method public v(Ljava/lang/Object;Landroid/view/View;)V
  .registers 4
    if-eqz p2, :L0
  .line 1
    check-cast p1, Lc/p/m;
  .line 2
    new-instance v0, Landroid/graphics/Rect;
    invoke-direct { v0 }, Landroid/graphics/Rect;-><init>()V
  .line 3
    invoke-virtual { p0, p2, v0 }, Landroidx/fragment/app/z;->k(Landroid/view/View;Landroid/graphics/Rect;)V
  .line 4
    new-instance p2, Lc/p/e$a;
    invoke-direct { p2, p0, v0 }, Lc/p/e$a;-><init>(Lc/p/e;Landroid/graphics/Rect;)V
    invoke-virtual { p1, p2 }, Lc/p/m;->U(Lc/p/m$e;)V
  :L0
    return-void
.end method

.method public z(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
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
  .registers 8
  .line 1
    check-cast p1, Lc/p/q;
  .line 2
    invoke-virtual { p1 }, Lc/p/m;->B()Ljava/util/List;
    move-result-object v0
  .line 3
    invoke-interface { v0 }, Ljava/util/List;->clear()V
  .line 4
    invoke-virtual { p3 }, Ljava/util/ArrayList;->size()I
    move-result v1
    const/4 v2, 0
  :L0
    if-ge v2, v1, :L1
  .line 5
    invoke-virtual { p3, v2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroid/view/View;
  .line 6
    invoke-static { v0, v3 }, Landroidx/fragment/app/z;->d(Ljava/util/List;Landroid/view/View;)V
    add-int/lit8 v2, v2, 1
    goto :L0
  :L1
  .line 7
    invoke-interface { v0, p2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 8
    invoke-virtual { p3, p2 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 9
    invoke-virtual { p0, p1, p3 }, Lc/p/e;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V
    return-void
.end method
