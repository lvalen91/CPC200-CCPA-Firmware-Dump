.class Landroidx/recyclerview/widget/RecyclerView$b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b0"
.end annotation


# instance fields
.field private b:I

.field private c:I

.field d:Landroid/widget/OverScroller;

.field e:Landroid/view/animation/Interpolator;

.field private f:Z

.field private g:Z

.field final synthetic h:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 4

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->F0:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->e:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->f:Z

    .line 4
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->g:Z

    .line 5
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Landroidx/recyclerview/widget/RecyclerView;->F0:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->d:Landroid/widget/OverScroller;

    return-void
.end method

.method private a(IIII)I
    .registers 9

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    mul-int p3, p3, p3

    mul-int p4, p4, p4

    add-int/2addr p3, p4

    int-to-double p3, p3

    .line 3
    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    double-to-int p3, p3

    mul-int p1, p1, p1

    mul-int p2, p2, p2

    add-int/2addr p1, p2

    int-to-double p1, p1

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 5
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_2c

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    goto :goto_30

    :cond_2c
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    .line 6
    :goto_30
    div-int/lit8 p4, p2, 0x2

    int-to-float p1, p1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float p1, p1, v3

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 7
    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    int-to-float p4, p4

    .line 8
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->b(F)F

    move-result p1

    mul-float p1, p1, p4

    add-float/2addr p4, p1

    if-lez p3, :cond_58

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p2, p3

    div-float/2addr p4, p2

    .line 9
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_64

    :cond_58
    if-eqz v2, :cond_5b

    goto :goto_5c

    :cond_5b
    move v0, v1

    :goto_5c
    int-to-float p1, v0

    div-float/2addr p1, p2

    add-float/2addr p1, v3

    const/high16 p2, 0x43960000    # 300.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    :goto_64
    const/16 p2, 0x7d0

    .line 10
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private b(F)F
    .registers 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    const v0, 0x3ef1463b

    mul-float p1, p1, v0

    float-to-double v0, p1

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private d()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p0}, Landroidx/core/view/v;->g0(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public c(II)V
    .registers 15

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->c:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->b:I

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->e:Landroid/view/animation/Interpolator;

    sget-object v1, Landroidx/recyclerview/widget/RecyclerView;->F0:Landroid/view/animation/Interpolator;

    if-eq v0, v1, :cond_22

    .line 4
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->e:Landroid/view/animation/Interpolator;

    .line 5
    new-instance v0, Landroid/widget/OverScroller;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/recyclerview/widget/RecyclerView;->F0:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->d:Landroid/widget/OverScroller;

    .line 6
    :cond_22
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->d:Landroid/widget/OverScroller;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    const/high16 v10, -0x80000000

    const v11, 0x7fffffff

    move v6, p1

    move v7, p2

    invoke-virtual/range {v3 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->e()V

    return-void
.end method

.method e()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->f:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->g:Z

    goto :goto_b

    .line 3
    :cond_8
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->d()V

    :goto_b
    return-void
.end method

.method public f(IIILandroid/view/animation/Interpolator;)V
    .registers 12

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-ne p3, v1, :cond_9

    .line 1
    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->a(IIII)I

    move-result p3

    :cond_9
    move v6, p3

    if-nez p4, :cond_e

    .line 2
    sget-object p4, Landroidx/recyclerview/widget/RecyclerView;->F0:Landroid/view/animation/Interpolator;

    .line 3
    :cond_e
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->e:Landroid/view/animation/Interpolator;

    if-eq p3, p4, :cond_21

    .line 4
    iput-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->e:Landroid/view/animation/Interpolator;

    .line 5
    new-instance p3, Landroid/widget/OverScroller;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, v1, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->d:Landroid/widget/OverScroller;

    .line 6
    :cond_21
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->c:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->b:I

    .line 7
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p4, 0x2

    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 8
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->d:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 9
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-ge p1, p2, :cond_3f

    .line 10
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->d:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 11
    :cond_3f
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->e()V

    return-void
.end method

.method public g()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->d:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    return-void
.end method

.method public run()V
    .registers 23

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/RecyclerView$n;

    if-nez v2, :cond_c

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->g()V

    return-void

    :cond_c
    const/4 v2, 0x0

    .line 3
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->g:Z

    const/4 v3, 0x1

    .line 4
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->f:Z

    .line 5
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->u()V

    .line 6
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->d:Landroid/widget/OverScroller;

    .line 7
    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_16b

    .line 8
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v4

    .line 9
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

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

    const/4 v11, 0x0

    const/4 v12, 0x1

    move v8, v6

    move v9, v13

    .line 16
    invoke-virtual/range {v7 .. v12}, Landroidx/recyclerview/widget/RecyclerView;->F(II[I[II)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 17
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->u0:[I

    aget v5, v4, v2

    sub-int/2addr v6, v5

    .line 18
    aget v4, v4, v3

    sub-int/2addr v13, v4

    .line 19
    :cond_4d
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5b

    .line 20
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v6, v13}, Landroidx/recyclerview/widget/RecyclerView;->t(II)V

    .line 21
    :cond_5b
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$f;

    if-eqz v7, :cond_a6

    .line 22
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->u0:[I

    aput v2, v7, v2

    .line 23
    aput v2, v7, v3

    .line 24
    invoke-virtual {v4, v6, v13, v7}, Landroidx/recyclerview/widget/RecyclerView;->f1(II[I)V

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

    if-eqz v4, :cond_a8

    .line 28
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$y;->g()Z

    move-result v9

    if-nez v9, :cond_a8

    .line 29
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$y;->h()Z

    move-result v9

    if-eqz v9, :cond_a8

    .line 30
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$z;->b()I

    move-result v9

    if-nez v9, :cond_94

    .line 31
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$y;->r()V

    goto :goto_a8

    .line 32
    :cond_94
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$y;->f()I

    move-result v10

    if-lt v10, v9, :cond_a2

    sub-int/2addr v9, v3

    .line 33
    invoke-virtual {v4, v9}, Landroidx/recyclerview/widget/RecyclerView$y;->p(I)V

    .line 34
    invoke-virtual {v4, v8, v7}, Landroidx/recyclerview/widget/RecyclerView$y;->j(II)V

    goto :goto_a8

    .line 35
    :cond_a2
    invoke-virtual {v4, v8, v7}, Landroidx/recyclerview/widget/RecyclerView$y;->j(II)V

    goto :goto_a8

    :cond_a6
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 36
    :cond_a8
    :goto_a8
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->o:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b7

    .line 37
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    .line 38
    :cond_b7
    iget-object v14, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v14, Landroidx/recyclerview/widget/RecyclerView;->u0:[I

    aput v2, v4, v2

    .line 39
    aput v2, v4, v3

    const/16 v19, 0x0

    const/16 v20, 0x1

    move v15, v8

    move/from16 v16, v7

    move/from16 v17, v6

    move/from16 v18, v13

    move-object/from16 v21, v4

    .line 40
    invoke-virtual/range {v14 .. v21}, Landroidx/recyclerview/widget/RecyclerView;->G(IIII[II[I)V

    .line 41
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->u0:[I

    aget v9, v4, v2

    sub-int/2addr v6, v9

    .line 42
    aget v4, v4, v3

    sub-int/2addr v13, v4

    if-nez v8, :cond_dd

    if-eqz v7, :cond_e2

    .line 43
    :cond_dd
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v8, v7}, Landroidx/recyclerview/widget/RecyclerView;->I(II)V

    .line 44
    :cond_e2
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->e(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v4

    if-nez v4, :cond_ef

    .line 45
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    .line 46
    :cond_ef
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v9

    if-ne v4, v9, :cond_fb

    const/4 v4, 0x1

    goto :goto_fc

    :cond_fb
    const/4 v4, 0x0

    .line 47
    :goto_fc
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v9

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v10

    if-ne v9, v10, :cond_108

    const/4 v9, 0x1

    goto :goto_109

    :cond_108
    const/4 v9, 0x0

    .line 48
    :goto_109
    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v10

    if-nez v10, :cond_11a

    if-nez v4, :cond_113

    if-eqz v6, :cond_118

    :cond_113
    if-nez v9, :cond_11a

    if-eqz v13, :cond_118

    goto :goto_11a

    :cond_118
    const/4 v4, 0x0

    goto :goto_11b

    :cond_11a
    :goto_11a
    const/4 v4, 0x1

    .line 49
    :goto_11b
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/RecyclerView$n;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$n;->g:Landroidx/recyclerview/widget/RecyclerView$y;

    if-eqz v9, :cond_12b

    .line 50
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$y;->g()Z

    move-result v9

    if-eqz v9, :cond_12b

    const/4 v9, 0x1

    goto :goto_12c

    :cond_12b
    const/4 v9, 0x0

    :goto_12c
    if-nez v9, :cond_15f

    if-eqz v4, :cond_15f

    .line 51
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v4

    if-eq v4, v5, :cond_153

    .line 52
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    if-gez v6, :cond_141

    neg-int v4, v1

    goto :goto_146

    :cond_141
    if-lez v6, :cond_145

    move v4, v1

    goto :goto_146

    :cond_145
    const/4 v4, 0x0

    :goto_146
    if-gez v13, :cond_14a

    neg-int v1, v1

    goto :goto_14e

    :cond_14a
    if-lez v13, :cond_14d

    goto :goto_14e

    :cond_14d
    const/4 v1, 0x0

    .line 53
    :goto_14e
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(II)V

    .line 54
    :cond_153
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->B0:Z

    if-eqz v1, :cond_16b

    .line 55
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/e$b;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/e$b;->b()V

    goto :goto_16b

    .line 56
    :cond_15f
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->e()V

    .line 57
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/e;

    if-eqz v4, :cond_16b

    .line 58
    invoke-virtual {v4, v1, v8, v7}, Landroidx/recyclerview/widget/e;->f(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 59
    :cond_16b
    :goto_16b
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/RecyclerView$n;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$n;->g:Landroidx/recyclerview/widget/RecyclerView$y;

    if-eqz v1, :cond_17c

    .line 60
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$y;->g()Z

    move-result v4

    if-eqz v4, :cond_17c

    .line 61
    invoke-virtual {v1, v2, v2}, Landroidx/recyclerview/widget/RecyclerView$y;->j(II)V

    .line 62
    :cond_17c
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->f:Z

    .line 63
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->g:Z

    if-eqz v1, :cond_186

    .line 64
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->d()V

    goto :goto_190

    .line 65
    :cond_186
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 66
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->s1(I)V

    :goto_190
    return-void
.end method
