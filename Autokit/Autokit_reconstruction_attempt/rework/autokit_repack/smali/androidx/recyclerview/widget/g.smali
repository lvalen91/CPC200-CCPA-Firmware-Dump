.class public Landroidx/recyclerview/widget/g;
.super Landroidx/recyclerview/widget/RecyclerView$y;
.source "SourceFile"


# instance fields
.field protected final i:Landroid/view/animation/LinearInterpolator;

.field protected final j:Landroid/view/animation/DecelerateInterpolator;

.field protected k:Landroid/graphics/PointF;

.field private final l:Landroid/util/DisplayMetrics;

.field private m:Z

.field private n:F

.field protected o:I

.field protected p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$y;-><init>()V

    .line 2
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/g;->i:Landroid/view/animation/LinearInterpolator;

    .line 3
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/g;->j:Landroid/view/animation/DecelerateInterpolator;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/recyclerview/widget/g;->m:Z

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/g;->o:I

    iput v0, p0, Landroidx/recyclerview/widget/g;->p:I

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/g;->l:Landroid/util/DisplayMetrics;

    return-void
.end method

.method private A()F
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/g;->m:Z

    if-nez v0, :cond_f

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/g;->l:Landroid/util/DisplayMetrics;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/g;->v(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/g;->n:F

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/recyclerview/widget/g;->m:Z

    .line 4
    :cond_f
    iget v0, p0, Landroidx/recyclerview/widget/g;->n:F

    return v0
.end method

.method private y(II)I
    .registers 3

    sub-int p2, p1, p2

    mul-int p1, p1, p2

    if-gtz p1, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    return p2
.end method


# virtual methods
.method protected B()I
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/g;->k:Landroid/graphics/PointF;

    if-eqz v0, :cond_14

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_c

    goto :goto_14

    :cond_c
    cmpl-float v0, v0, v1

    if-lez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_15

    :cond_12
    const/4 v0, -0x1

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method protected C(Landroidx/recyclerview/widget/RecyclerView$y$a;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$y;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$y;->a(I)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 2
    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_18

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_18

    goto :goto_4d

    .line 3
    :cond_18
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$y;->i(Landroid/graphics/PointF;)V

    .line 4
    iput-object v0, p0, Landroidx/recyclerview/widget/g;->k:Landroid/graphics/PointF;

    .line 5
    iget v1, v0, Landroid/graphics/PointF;->x:F

    const v2, 0x461c4000    # 10000.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/recyclerview/widget/g;->o:I

    .line 6
    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroidx/recyclerview/widget/g;->p:I

    const/16 v0, 0x2710

    .line 7
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/g;->x(I)I

    move-result v0

    .line 8
    iget v1, p0, Landroidx/recyclerview/widget/g;->o:I

    int-to-float v1, v1

    const v2, 0x3f99999a    # 1.2f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iget v3, p0, Landroidx/recyclerview/widget/g;->p:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v3, v3

    int-to-float v0, v0

    mul-float v0, v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Landroidx/recyclerview/widget/g;->i:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p1, v1, v3, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$y$a;->d(IIILandroid/view/animation/Interpolator;)V

    return-void

    .line 9
    :cond_4d
    :goto_4d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$y;->f()I

    move-result v0

    .line 10
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$y$a;->b(I)V

    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$y;->r()V

    return-void
.end method

.method protected l(IILandroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/RecyclerView$y$a;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$y;->c()I

    move-result p3

    if-nez p3, :cond_a

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$y;->r()V

    return-void

    .line 3
    :cond_a
    iget p3, p0, Landroidx/recyclerview/widget/g;->o:I

    invoke-direct {p0, p3, p1}, Landroidx/recyclerview/widget/g;->y(II)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/g;->o:I

    .line 4
    iget p1, p0, Landroidx/recyclerview/widget/g;->p:I

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/g;->y(II)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/g;->p:I

    .line 5
    iget p2, p0, Landroidx/recyclerview/widget/g;->o:I

    if-nez p2, :cond_23

    if-nez p1, :cond_23

    .line 6
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/g;->C(Landroidx/recyclerview/widget/RecyclerView$y$a;)V

    :cond_23
    return-void
.end method

.method protected m()V
    .registers 1

    return-void
.end method

.method protected n()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroidx/recyclerview/widget/g;->p:I

    iput v0, p0, Landroidx/recyclerview/widget/g;->o:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/recyclerview/widget/g;->k:Landroid/graphics/PointF;

    return-void
.end method

.method protected o(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/RecyclerView$y$a;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/g;->z()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/g;->t(Landroid/view/View;I)I

    move-result p2

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/g;->B()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/g;->u(Landroid/view/View;I)I

    move-result p1

    mul-int v0, p2, p2

    mul-int v1, p1, p1

    add-int/2addr v0, v1

    int-to-double v0, v0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/g;->w(I)I

    move-result v0

    if-lez v0, :cond_28

    neg-int p2, p2

    neg-int p1, p1

    .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/g;->j:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, p2, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$y$a;->d(IIILandroid/view/animation/Interpolator;)V

    :cond_28
    return-void
.end method

.method public s(IIIII)I
    .registers 7

    const/4 v0, -0x1

    if-eq p5, v0, :cond_1c

    if-eqz p5, :cond_12

    const/4 p1, 0x1

    if-ne p5, p1, :cond_a

    sub-int/2addr p4, p2

    return p4

    .line 1
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    sub-int/2addr p3, p1

    if-lez p3, :cond_16

    return p3

    :cond_16
    sub-int/2addr p4, p2

    if-gez p4, :cond_1a

    return p4

    :cond_1a
    const/4 p1, 0x0

    return p1

    :cond_1c
    sub-int/2addr p3, p1

    return p3
.end method

.method public t(Landroid/view/View;I)I
    .registers 13

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$y;->e()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$n;->k()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_38

    .line 3
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 4
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$n;->Q(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v5, v2, v3

    .line 5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$n;->T(Landroid/view/View;)I

    move-result p1

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v6, p1, v1

    .line 6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$n;->e0()I

    move-result v7

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$n;->o0()I

    move-result p1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$n;->f0()I

    move-result v0

    sub-int v8, p1, v0

    move-object v4, p0

    move v9, p2

    .line 8
    invoke-virtual/range {v4 .. v9}, Landroidx/recyclerview/widget/g;->s(IIIII)I

    move-result p1

    return p1

    :cond_38
    :goto_38
    const/4 p1, 0x0

    return p1
.end method

.method public u(Landroid/view/View;I)I
    .registers 13

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$y;->e()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$n;->l()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_38

    .line 3
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 4
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$n;->U(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v5, v2, v3

    .line 5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$n;->O(Landroid/view/View;)I

    move-result p1

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v6, p1, v1

    .line 6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$n;->g0()I

    move-result v7

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$n;->W()I

    move-result p1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$n;->d0()I

    move-result v0

    sub-int v8, p1, v0

    move-object v4, p0

    move v9, p2

    .line 8
    invoke-virtual/range {v4 .. v9}, Landroidx/recyclerview/widget/g;->s(IIIII)I

    move-result p1

    return p1

    :cond_38
    :goto_38
    const/4 p1, 0x0

    return p1
.end method

.method protected v(Landroid/util/DisplayMetrics;)F
    .registers 3

    .line 1
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x41c80000    # 25.0f

    div-float/2addr v0, p1

    return v0
.end method

.method protected w(I)I
    .registers 6

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/g;->x(I)I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x3fd57a786c22680aL    # 0.3356

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method protected x(I)I
    .registers 4

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0}, Landroidx/recyclerview/widget/g;->A()F

    move-result v0

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method protected z()I
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/g;->k:Landroid/graphics/PointF;

    if-eqz v0, :cond_14

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_c

    goto :goto_14

    :cond_c
    cmpl-float v0, v0, v1

    if-lez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_15

    :cond_12
    const/4 v0, -0x1

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method
