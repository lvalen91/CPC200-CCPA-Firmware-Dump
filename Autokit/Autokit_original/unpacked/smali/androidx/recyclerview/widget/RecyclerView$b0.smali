.class Landroidx/recyclerview/widget/RecyclerView$b0;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = "b0"
.end annotation

.field private b:I

.field private c:I

.field d:Landroid/widget/OverScroller;

.field e:Landroid/view/animation/Interpolator;

.field private f:Z

.field private g:Z

.field final synthetic h:Landroidx/recyclerview/widget/RecyclerView;

.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
  .registers 4
  .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->F0:Landroid/view/animation/Interpolator;
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->e:Landroid/view/animation/Interpolator;
    const/4 v0, 0
  .line 3
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->f:Z
  .line 4
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->g:Z
  .line 5
    new-instance v0, Landroid/widget/OverScroller;
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object p1
    sget-object v1, Landroidx/recyclerview/widget/RecyclerView;->F0:Landroid/view/animation/Interpolator;
    invoke-direct { v0, p1, v1 }, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->d:Landroid/widget/OverScroller;
    return-void
.end method

.method private a(IIII)I
  .registers 9
  .line 1
    invoke-static { p1 }, Ljava/lang/Math;->abs(I)I
    move-result v0
  .line 2
    invoke-static { p2 }, Ljava/lang/Math;->abs(I)I
    move-result v1
    if-le v0, v1, :L0
    const/4 v2, 1
    goto :L1
  :L0
    const/4 v2, 0
  :L1
    mul-int p3, p3, p3
    mul-int p4, p4, p4
    add-int/2addr p3, p4
    int-to-double p3, p3
  .line 3
    invoke-static { p3, p4 }, Ljava/lang/Math;->sqrt(D)D
    move-result-wide p3
    double-to-int p3, p3
    mul-int p1, p1, p1
    mul-int p2, p2, p2
    add-int/2addr p1, p2
    int-to-double p1, p1
  .line 4
    invoke-static { p1, p2 }, Ljava/lang/Math;->sqrt(D)D
    move-result-wide p1
    double-to-int p1, p1
  .line 5
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v2, :L2
    invoke-virtual { p2 }, Landroid/view/ViewGroup;->getWidth()I
    move-result p2
    goto :L3
  :L2
    invoke-virtual { p2 }, Landroid/view/ViewGroup;->getHeight()I
    move-result p2
  :L3
  .line 6
    div-int/lit8 p4, p2, 2
    int-to-float p1, p1
    const/high16 v3, 16256
    mul-float p1, p1, v3
    int-to-float p2, p2
    div-float/2addr p1, p2
  .line 7
    invoke-static { v3, p1 }, Ljava/lang/Math;->min(FF)F
    move-result p1
    int-to-float p4, p4
  .line 8
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$b0;->b(F)F
    move-result p1
    mul-float p1, p1, p4
    add-float/2addr p4, p1
    if-lez p3, :L4
    const/high16 p1, 17530
    int-to-float p2, p3
    div-float/2addr p4, p2
  .line 9
    invoke-static { p4 }, Ljava/lang/Math;->abs(F)F
    move-result p2
    mul-float p2, p2, p1
    invoke-static { p2 }, Ljava/lang/Math;->round(F)I
    move-result p1
    mul-int/lit8 p1, p1, 4
    goto :L7
  :L4
    if-eqz v2, :L5
    goto :L6
  :L5
    move v0, v1
  :L6
    int-to-float p1, v0
    div-float/2addr p1, p2
    add-float/2addr p1, v3
    const/high16 p2, 17302
    mul-float p1, p1, p2
    float-to-int p1, p1
  :L7
    const/16 p2, 2000
  .line 10
    invoke-static { p1, p2 }, Ljava/lang/Math;->min(II)I
    move-result p1
    return p1
.end method

.method private b(F)F
  .registers 4
    const/high16 v0, 16128
    sub-float/2addr p1, v0
    const v0, 1055999547
    mul-float p1, p1, v0
    float-to-double v0, p1
  .line 1
    invoke-static { v0, v1 }, Ljava/lang/Math;->sin(D)D
    move-result-wide v0
    double-to-float p1, v0
    return p1
.end method

.method private d()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0, p0 }, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;
    invoke-static { v0, p0 }, Landroidx/core/view/v;->g0(Landroid/view/View;Ljava/lang/Runnable;)V
    return-void
.end method

.method public c(II)V
  .registers 15
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;
    const/4 v1, 2
    invoke-virtual { v0, v1 }, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V
    const/4 v0, 0
  .line 2
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->c:I
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->b:I
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->e:Landroid/view/animation/Interpolator;
    sget-object v1, Landroidx/recyclerview/widget/RecyclerView;->F0:Landroid/view/animation/Interpolator;
    if-eq v0, v1, :L0
  .line 4
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->e:Landroid/view/animation/Interpolator;
  .line 5
    new-instance v0, Landroid/widget/OverScroller;
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v1 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v1
    sget-object v2, Landroidx/recyclerview/widget/RecyclerView;->F0:Landroid/view/animation/Interpolator;
    invoke-direct { v0, v1, v2 }, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->d:Landroid/widget/OverScroller;
  :L0
  .line 6
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->d:Landroid/widget/OverScroller;
    const/4 v4, 0
    const/4 v5, 0
    const/high16 v8, -32768
    const v9, 2147483647
    const/high16 v10, -32768
    const v11, 2147483647
    move v6, p1
    move v7, p2
    invoke-virtual/range { v3 .. v11 }, Landroid/widget/OverScroller;->fling(IIIIIIII)V
  .line 7
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$b0;->e()V
    return-void
.end method

.method e()V
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->f:Z
    if-eqz v0, :L0
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->g:Z
    goto :L1
  :L0
  .line 3
    invoke-direct { p0 }, Landroidx/recyclerview/widget/RecyclerView$b0;->d()V
  :L1
    return-void
.end method

.method public f(IIILandroid/view/animation/Interpolator;)V
  .registers 12
    const/4 v0, 0
    const/high16 v1, -32768
    if-ne p3, v1, :L0
  .line 1
    invoke-direct { p0, p1, p2, v0, v0 }, Landroidx/recyclerview/widget/RecyclerView$b0;->a(IIII)I
    move-result p3
  :L0
    move v6, p3
    if-nez p4, :L1
  .line 2
    sget-object p4, Landroidx/recyclerview/widget/RecyclerView;->F0:Landroid/view/animation/Interpolator;
  :L1
  .line 3
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->e:Landroid/view/animation/Interpolator;
    if-eq p3, p4, :L2
  .line 4
    iput-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->e:Landroid/view/animation/Interpolator;
  .line 5
    new-instance p3, Landroid/widget/OverScroller;
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v1 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-direct { p3, v1, p4 }, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    iput-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->d:Landroid/widget/OverScroller;
  :L2
  .line 6
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->c:I
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->b:I
  .line 7
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;
    const/4 p4, 2
    invoke-virtual { p3, p4 }, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V
  .line 8
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->d:Landroid/widget/OverScroller;
    const/4 v2, 0
    const/4 v3, 0
    move v4, p1
    move v5, p2
    invoke-virtual/range { v1 .. v6 }, Landroid/widget/OverScroller;->startScroll(IIIII)V
  .line 9
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 p2, 23
    if-ge p1, p2, :L3
  .line 10
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->d:Landroid/widget/OverScroller;
    invoke-virtual { p1 }, Landroid/widget/OverScroller;->computeScrollOffset()Z
  :L3
  .line 11
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$b0;->e()V
    return-void
.end method

.method public g()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0, p0 }, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->d:Landroid/widget/OverScroller;
    invoke-virtual { v0 }, Landroid/widget/OverScroller;->abortAnimation()V
    return-void
.end method

.method public run()V
  .registers 23
    move-object/from16 v0, p0
  .line 1
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/RecyclerView$n;
    if-nez v2, :L0
  .line 2
    invoke-virtual/range { p0 .. p0 }, Landroidx/recyclerview/widget/RecyclerView$b0;->g()V
    return-void
  :L0
    const/4 v2, 0
  .line 3
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->g:Z
    const/4 v3, 1
  .line 4
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->f:Z
  .line 5
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/RecyclerView;->u()V
  .line 6
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->d:Landroid/widget/OverScroller;
  .line 7
    invoke-virtual { v1 }, Landroid/widget/OverScroller;->computeScrollOffset()Z
    move-result v4
    if-eqz v4, :L29
  .line 8
    invoke-virtual { v1 }, Landroid/widget/OverScroller;->getCurrX()I
    move-result v4
  .line 9
    invoke-virtual { v1 }, Landroid/widget/OverScroller;->getCurrY()I
    move-result v5
  .line 10
    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->b:I
    sub-int v6, v4, v6
  .line 11
    iget v7, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->c:I
    sub-int v13, v5, v7
  .line 12
    iput v4, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->b:I
  .line 13
    iput v5, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->c:I
  .line 14
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v10, v7, Landroidx/recyclerview/widget/RecyclerView;->u0:[I
    aput v2, v10, v2
  .line 15
    aput v2, v10, v3
    const/4 v11, 0
    const/4 v12, 1
    move v8, v6
    move v9, v13
  .line 16
    invoke-virtual/range { v7 .. v12 }, Landroidx/recyclerview/widget/RecyclerView;->F(II[I[II)Z
    move-result v4
    if-eqz v4, :L1
  .line 17
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->u0:[I
    aget v5, v4, v2
    sub-int/2addr v6, v5
  .line 18
    aget v4, v4, v3
    sub-int/2addr v13, v4
  :L1
  .line 19
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v4 }, Landroid/view/ViewGroup;->getOverScrollMode()I
    move-result v4
    const/4 v5, 2
    if-eq v4, v5, :L2
  .line 20
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v4, v6, v13 }, Landroidx/recyclerview/widget/RecyclerView;->t(II)V
  :L2
  .line 21
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$f;
    if-eqz v7, :L5
  .line 22
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->u0:[I
    aput v2, v7, v2
  .line 23
    aput v2, v7, v3
  .line 24
    invoke-virtual { v4, v6, v13, v7 }, Landroidx/recyclerview/widget/RecyclerView;->f1(II[I)V
  .line 25
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->u0:[I
    aget v8, v7, v2
  .line 26
    aget v7, v7, v3
    sub-int/2addr v6, v8
    sub-int/2addr v13, v7
  .line 27
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/RecyclerView$n;
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$n;->g:Landroidx/recyclerview/widget/RecyclerView$y;
    if-eqz v4, :L6
  .line 28
    invoke-virtual { v4 }, Landroidx/recyclerview/widget/RecyclerView$y;->g()Z
    move-result v9
    if-nez v9, :L6
  .line 29
    invoke-virtual { v4 }, Landroidx/recyclerview/widget/RecyclerView$y;->h()Z
    move-result v9
    if-eqz v9, :L6
  .line 30
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$z;
    invoke-virtual { v9 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result v9
    if-nez v9, :L3
  .line 31
    invoke-virtual { v4 }, Landroidx/recyclerview/widget/RecyclerView$y;->r()V
    goto :L6
  :L3
  .line 32
    invoke-virtual { v4 }, Landroidx/recyclerview/widget/RecyclerView$y;->f()I
    move-result v10
    if-lt v10, v9, :L4
    sub-int/2addr v9, v3
  .line 33
    invoke-virtual { v4, v9 }, Landroidx/recyclerview/widget/RecyclerView$y;->p(I)V
  .line 34
    invoke-virtual { v4, v8, v7 }, Landroidx/recyclerview/widget/RecyclerView$y;->j(II)V
    goto :L6
  :L4
  .line 35
    invoke-virtual { v4, v8, v7 }, Landroidx/recyclerview/widget/RecyclerView$y;->j(II)V
    goto :L6
  :L5
    const/4 v7, 0
    const/4 v8, 0
  :L6
  .line 36
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->o:Ljava/util/ArrayList;
    invoke-virtual { v4 }, Ljava/util/ArrayList;->isEmpty()Z
    move-result v4
    if-nez v4, :L7
  .line 37
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v4 }, Landroid/view/ViewGroup;->invalidate()V
  :L7
  .line 38
    iget-object v14, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v4, v14, Landroidx/recyclerview/widget/RecyclerView;->u0:[I
    aput v2, v4, v2
  .line 39
    aput v2, v4, v3
    const/16 v19, 0
    const/16 v20, 1
    move v15, v8
    move/from16 v16, v7
    move/from16 v17, v6
    move/from16 v18, v13
    move-object/from16 v21, v4
  .line 40
    invoke-virtual/range { v14 .. v21 }, Landroidx/recyclerview/widget/RecyclerView;->G(IIII[II[I)V
  .line 41
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->u0:[I
    aget v9, v4, v2
    sub-int/2addr v6, v9
  .line 42
    aget v4, v4, v3
    sub-int/2addr v13, v4
    if-nez v8, :L8
    if-eqz v7, :L9
  :L8
  .line 43
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v4, v8, v7 }, Landroidx/recyclerview/widget/RecyclerView;->I(II)V
  :L9
  .line 44
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;
    invoke-static { v4 }, Landroidx/recyclerview/widget/RecyclerView;->e(Landroidx/recyclerview/widget/RecyclerView;)Z
    move-result v4
    if-nez v4, :L10
  .line 45
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v4 }, Landroid/view/ViewGroup;->invalidate()V
  :L10
  .line 46
    invoke-virtual { v1 }, Landroid/widget/OverScroller;->getCurrX()I
    move-result v4
    invoke-virtual { v1 }, Landroid/widget/OverScroller;->getFinalX()I
    move-result v9
    if-ne v4, v9, :L11
    const/4 v4, 1
    goto :L12
  :L11
    const/4 v4, 0
  :L12
  .line 47
    invoke-virtual { v1 }, Landroid/widget/OverScroller;->getCurrY()I
    move-result v9
    invoke-virtual { v1 }, Landroid/widget/OverScroller;->getFinalY()I
    move-result v10
    if-ne v9, v10, :L13
    const/4 v9, 1
    goto :L14
  :L13
    const/4 v9, 0
  :L14
  .line 48
    invoke-virtual { v1 }, Landroid/widget/OverScroller;->isFinished()Z
    move-result v10
    if-nez v10, :L17
    if-nez v4, :L15
    if-eqz v6, :L16
  :L15
    if-nez v9, :L17
    if-eqz v13, :L16
    goto :L17
  :L16
    const/4 v4, 0
    goto :L18
  :L17
    const/4 v4, 1
  :L18
  .line 49
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/RecyclerView$n;
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$n;->g:Landroidx/recyclerview/widget/RecyclerView$y;
    if-eqz v9, :L19
  .line 50
    invoke-virtual { v9 }, Landroidx/recyclerview/widget/RecyclerView$y;->g()Z
    move-result v9
    if-eqz v9, :L19
    const/4 v9, 1
    goto :L20
  :L19
    const/4 v9, 0
  :L20
    if-nez v9, :L28
    if-eqz v4, :L28
  .line 51
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v4 }, Landroid/view/ViewGroup;->getOverScrollMode()I
    move-result v4
    if-eq v4, v5, :L27
  .line 52
    invoke-virtual { v1 }, Landroid/widget/OverScroller;->getCurrVelocity()F
    move-result v1
    float-to-int v1, v1
    if-gez v6, :L21
    neg-int v4, v1
    goto :L23
  :L21
    if-lez v6, :L22
    move v4, v1
    goto :L23
  :L22
    const/4 v4, 0
  :L23
    if-gez v13, :L24
    neg-int v1, v1
    goto :L26
  :L24
    if-lez v13, :L25
    goto :L26
  :L25
    const/4 v1, 0
  :L26
  .line 53
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v5, v4, v1 }, Landroidx/recyclerview/widget/RecyclerView;->a(II)V
  :L27
  .line 54
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->B0:Z
    if-eqz v1, :L29
  .line 55
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/e$b;
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/e$b;->b()V
    goto :L29
  :L28
  .line 56
    invoke-virtual/range { p0 .. p0 }, Landroidx/recyclerview/widget/RecyclerView$b0;->e()V
  .line 57
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/e;
    if-eqz v4, :L29
  .line 58
    invoke-virtual { v4, v1, v8, v7 }, Landroidx/recyclerview/widget/e;->f(Landroidx/recyclerview/widget/RecyclerView;II)V
  :L29
  .line 59
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/RecyclerView$n;
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$n;->g:Landroidx/recyclerview/widget/RecyclerView$y;
    if-eqz v1, :L30
  .line 60
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/RecyclerView$y;->g()Z
    move-result v4
    if-eqz v4, :L30
  .line 61
    invoke-virtual { v1, v2, v2 }, Landroidx/recyclerview/widget/RecyclerView$y;->j(II)V
  :L30
  .line 62
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->f:Z
  .line 63
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->g:Z
    if-eqz v1, :L31
  .line 64
    invoke-direct/range { p0 .. p0 }, Landroidx/recyclerview/widget/RecyclerView$b0;->d()V
    goto :L32
  :L31
  .line 65
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v1, v2 }, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V
  .line 66
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v1, v3 }, Landroidx/recyclerview/widget/RecyclerView;->s1(I)V
  :L32
    return-void
.end method
