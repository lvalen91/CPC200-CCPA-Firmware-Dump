.class public Landroidx/core/view/l;
.super Ljava/lang/Object;
.source "SourceFile"

.field private a:Landroid/view/ViewParent;

.field private b:Landroid/view/ViewParent;

.field private final c:Landroid/view/View;

.field private d:Z

.field private e:[I

.method public constructor <init>(Landroid/view/View;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/core/view/l;->c:Landroid/view/View;
    return-void
.end method

.method private g(IIII[II[I)Z
  .registers 23
    move-object v0, p0
    move-object/from16 v1, p5
  .line 1
    invoke-virtual { p0 }, Landroidx/core/view/l;->l()Z
    move-result v2
    const/4 v3, 0
    if-eqz v2, :L8
    move/from16 v2, p6
  .line 2
    invoke-direct { p0, v2 }, Landroidx/core/view/l;->h(I)Landroid/view/ViewParent;
    move-result-object v4
    if-nez v4, :L0
    return v3
  :L0
    const/4 v12, 1
    if-nez p1, :L2
    if-nez p2, :L2
    if-nez p3, :L2
    if-eqz p4, :L1
    goto :L2
  :L1
    if-eqz v1, :L8
  .line 3
    aput v3, v1, v3
  .line 4
    aput v3, v1, v12
    goto :L8
  :L2
    if-eqz v1, :L3
  .line 5
    iget-object v5, v0, Landroidx/core/view/l;->c:Landroid/view/View;
    invoke-virtual { v5, v1 }, Landroid/view/View;->getLocationInWindow([I)V
  .line 6
    aget v5, v1, v3
  .line 7
    aget v6, v1, v12
    move v13, v5
    move v14, v6
    goto :L4
  :L3
    const/4 v13, 0
    const/4 v14, 0
  :L4
    if-nez p7, :L5
  .line 8
    invoke-direct { p0 }, Landroidx/core/view/l;->i()[I
    move-result-object v5
  .line 9
    aput v3, v5, v3
  .line 10
    aput v3, v5, v12
    move-object v11, v5
    goto :L6
  :L5
    move-object/from16 v11, p7
  :L6
  .line 11
    iget-object v5, v0, Landroidx/core/view/l;->c:Landroid/view/View;
    move/from16 v6, p1
    move/from16 v7, p2
    move/from16 v8, p3
    move/from16 v9, p4
    move/from16 v10, p6
    invoke-static/range { v4 .. v11 }, Landroidx/core/view/y;->d(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V
    if-eqz v1, :L7
  .line 12
    iget-object v2, v0, Landroidx/core/view/l;->c:Landroid/view/View;
    invoke-virtual { v2, v1 }, Landroid/view/View;->getLocationInWindow([I)V
  .line 13
    aget v2, v1, v3
    sub-int/2addr v2, v13
    aput v2, v1, v3
  .line 14
    aget v2, v1, v12
    sub-int/2addr v2, v14
    aput v2, v1, v12
  :L7
    return v12
  :L8
    return v3
.end method

.method private h(I)Landroid/view/ViewParent;
  .registers 3
    if-eqz p1, :L1
    const/4 v0, 1
    if-eq p1, v0, :L0
    const/4 p1, 0
    return-object p1
  :L0
  .line 1
    iget-object p1, p0, Landroidx/core/view/l;->b:Landroid/view/ViewParent;
    return-object p1
  :L1
  .line 2
    iget-object p1, p0, Landroidx/core/view/l;->a:Landroid/view/ViewParent;
    return-object p1
.end method

.method private i()[I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/l;->e:[I
    if-nez v0, :L0
    const/4 v0, 2
    new-array v0, v0, [I
  .line 2
    iput-object v0, p0, Landroidx/core/view/l;->e:[I
  :L0
  .line 3
    iget-object v0, p0, Landroidx/core/view/l;->e:[I
    return-object v0
.end method

.method private n(ILandroid/view/ViewParent;)V
  .registers 4
    if-eqz p1, :L1
    const/4 v0, 1
    if-eq p1, v0, :L0
    goto :L2
  :L0
  .line 1
    iput-object p2, p0, Landroidx/core/view/l;->b:Landroid/view/ViewParent;
    goto :L2
  :L1
  .line 2
    iput-object p2, p0, Landroidx/core/view/l;->a:Landroid/view/ViewParent;
  :L2
    return-void
.end method

.method public a(FFZ)Z
  .registers 6
  .line 1
    invoke-virtual { p0 }, Landroidx/core/view/l;->l()Z
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L0
  .line 2
    invoke-direct { p0, v1 }, Landroidx/core/view/l;->h(I)Landroid/view/ViewParent;
    move-result-object v0
    if-eqz v0, :L0
  .line 3
    iget-object v1, p0, Landroidx/core/view/l;->c:Landroid/view/View;
    invoke-static { v0, v1, p1, p2, p3 }, Landroidx/core/view/y;->a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    move-result p1
    return p1
  :L0
    return v1
.end method

.method public b(FF)Z
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroidx/core/view/l;->l()Z
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L0
  .line 2
    invoke-direct { p0, v1 }, Landroidx/core/view/l;->h(I)Landroid/view/ViewParent;
    move-result-object v0
    if-eqz v0, :L0
  .line 3
    iget-object v1, p0, Landroidx/core/view/l;->c:Landroid/view/View;
    invoke-static { v0, v1, p1, p2 }, Landroidx/core/view/y;->b(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    move-result p1
    return p1
  :L0
    return v1
.end method

.method public c(II[I[I)Z
  .registers 11
    const/4 v5, 0
    move-object v0, p0
    move v1, p1
    move v2, p2
    move-object v3, p3
    move-object v4, p4
  .line 1
    invoke-virtual/range { v0 .. v5 }, Landroidx/core/view/l;->d(II[I[II)Z
    move-result p1
    return p1
.end method

.method public d(II[I[II)Z
  .registers 16
  .line 1
    invoke-virtual { p0 }, Landroidx/core/view/l;->l()Z
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L8
  .line 2
    invoke-direct { p0, p5 }, Landroidx/core/view/l;->h(I)Landroid/view/ViewParent;
    move-result-object v2
    if-nez v2, :L0
    return v1
  :L0
    const/4 v0, 1
    if-nez p1, :L2
    if-eqz p2, :L1
    goto :L2
  :L1
    if-eqz p4, :L8
  .line 3
    aput v1, p4, v1
  .line 4
    aput v1, p4, v0
    goto :L8
  :L2
    if-eqz p4, :L3
  .line 5
    iget-object v3, p0, Landroidx/core/view/l;->c:Landroid/view/View;
    invoke-virtual { v3, p4 }, Landroid/view/View;->getLocationInWindow([I)V
  .line 6
    aget v3, p4, v1
  .line 7
    aget v4, p4, v0
    move v8, v3
    move v9, v4
    goto :L4
  :L3
    const/4 v8, 0
    const/4 v9, 0
  :L4
    if-nez p3, :L5
  .line 8
    invoke-direct { p0 }, Landroidx/core/view/l;->i()[I
    move-result-object p3
  :L5
  .line 9
    aput v1, p3, v1
  .line 10
    aput v1, p3, v0
  .line 11
    iget-object v3, p0, Landroidx/core/view/l;->c:Landroid/view/View;
    move v4, p1
    move v5, p2
    move-object v6, p3
    move v7, p5
    invoke-static/range { v2 .. v7 }, Landroidx/core/view/y;->c(Landroid/view/ViewParent;Landroid/view/View;II[II)V
    if-eqz p4, :L6
  .line 12
    iget-object p1, p0, Landroidx/core/view/l;->c:Landroid/view/View;
    invoke-virtual { p1, p4 }, Landroid/view/View;->getLocationInWindow([I)V
  .line 13
    aget p1, p4, v1
    sub-int/2addr p1, v8
    aput p1, p4, v1
  .line 14
    aget p1, p4, v0
    sub-int/2addr p1, v9
    aput p1, p4, v0
  :L6
  .line 15
    aget p1, p3, v1
    if-nez p1, :L7
    aget p1, p3, v0
    if-eqz p1, :L8
  :L7
    const/4 v1, 1
  :L8
    return v1
.end method

.method public e(IIII[II[I)V
  .registers 8
  .line 1
    invoke-direct/range { p0 .. p7 }, Landroidx/core/view/l;->g(IIII[II[I)Z
    return-void
.end method

.method public f(IIII[I)Z
  .registers 14
    const/4 v6, 0
    const/4 v7, 0
    move-object v0, p0
    move v1, p1
    move v2, p2
    move v3, p3
    move v4, p4
    move-object v5, p5
  .line 1
    invoke-direct/range { v0 .. v7 }, Landroidx/core/view/l;->g(IIII[II[I)Z
    move-result p1
    return p1
.end method

.method public j()Z
  .registers 2
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, v0 }, Landroidx/core/view/l;->k(I)Z
    move-result v0
    return v0
.end method

.method public k(I)Z
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Landroidx/core/view/l;->h(I)Landroid/view/ViewParent;
    move-result-object p1
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method public l()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/core/view/l;->d:Z
    return v0
.end method

.method public m(Z)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/core/view/l;->d:Z
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/core/view/l;->c:Landroid/view/View;
    invoke-static { v0 }, Landroidx/core/view/v;->G0(Landroid/view/View;)V
  :L0
  .line 3
    iput-boolean p1, p0, Landroidx/core/view/l;->d:Z
    return-void
.end method

.method public o(I)Z
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, p1, v0 }, Landroidx/core/view/l;->p(II)Z
    move-result p1
    return p1
.end method

.method public p(II)Z
  .registers 7
  .line 1
    invoke-virtual { p0, p2 }, Landroidx/core/view/l;->k(I)Z
    move-result v0
    const/4 v1, 1
    if-eqz v0, :L0
    return v1
  :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/core/view/l;->l()Z
    move-result v0
    if-eqz v0, :L4
  .line 3
    iget-object v0, p0, Landroidx/core/view/l;->c:Landroid/view/View;
    invoke-virtual { v0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
  .line 4
    iget-object v2, p0, Landroidx/core/view/l;->c:Landroid/view/View;
  :L1
    if-eqz v0, :L4
  .line 5
    iget-object v3, p0, Landroidx/core/view/l;->c:Landroid/view/View;
    invoke-static { v0, v2, v3, p1, p2 }, Landroidx/core/view/y;->f(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z
    move-result v3
    if-eqz v3, :L2
  .line 6
    invoke-direct { p0, p2, v0 }, Landroidx/core/view/l;->n(ILandroid/view/ViewParent;)V
  .line 7
    iget-object v3, p0, Landroidx/core/view/l;->c:Landroid/view/View;
    invoke-static { v0, v2, v3, p1, p2 }, Landroidx/core/view/y;->e(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V
    return v1
  :L2
  .line 8
    instance-of v3, v0, Landroid/view/View;
    if-eqz v3, :L3
  .line 9
    move-object v2, v0
    check-cast v2, Landroid/view/View;
  :L3
  .line 10
    invoke-interface { v0 }, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    goto :L1
  :L4
    const/4 p1, 0
    return p1
.end method

.method public q()V
  .registers 2
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, v0 }, Landroidx/core/view/l;->r(I)V
    return-void
.end method

.method public r(I)V
  .registers 4
  .line 1
    invoke-direct { p0, p1 }, Landroidx/core/view/l;->h(I)Landroid/view/ViewParent;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    iget-object v1, p0, Landroidx/core/view/l;->c:Landroid/view/View;
    invoke-static { v0, v1, p1 }, Landroidx/core/view/y;->g(Landroid/view/ViewParent;Landroid/view/View;I)V
    const/4 v0, 0
  .line 3
    invoke-direct { p0, p1, v0 }, Landroidx/core/view/l;->n(ILandroid/view/ViewParent;)V
  :L0
    return-void
.end method
