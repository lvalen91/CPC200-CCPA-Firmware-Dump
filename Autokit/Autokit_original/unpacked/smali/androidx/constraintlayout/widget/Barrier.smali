.class public Landroidx/constraintlayout/widget/Barrier;
.super Landroidx/constraintlayout/widget/b;
.source "SourceFile"

.field private j:I

.field private k:I

.field private l:Lc/e/b/k/a;

.method public constructor <init>(Landroid/content/Context;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Landroidx/constraintlayout/widget/b;-><init>(Landroid/content/Context;)V
    const/16 p1, 8
  .line 2
    invoke-super { p0, p1 }, Landroid/view/View;->setVisibility(I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 3
  .line 3
    invoke-direct { p0, p1, p2 }, Landroidx/constraintlayout/widget/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    const/16 p1, 8
  .line 4
    invoke-super { p0, p1 }, Landroid/view/View;->setVisibility(I)V
    return-void
.end method

.method private p(Lc/e/b/k/e;IZ)V
  .registers 9
  .line 1
    iput p2, p0, Landroidx/constraintlayout/widget/Barrier;->k:I
  .line 2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I
    const/4 v0, 1
    const/4 v1, 0
    const/4 v2, 6
    const/4 v3, 5
    const/16 v4, 17
    if-ge p2, v4, :L1
  .line 3
    iget p2, p0, Landroidx/constraintlayout/widget/Barrier;->j:I
    if-ne p2, v3, :L0
  .line 4
    iput v1, p0, Landroidx/constraintlayout/widget/Barrier;->k:I
    goto :L5
  :L0
    if-ne p2, v2, :L5
  .line 5
    iput v0, p0, Landroidx/constraintlayout/widget/Barrier;->k:I
    goto :L5
  :L1
    if-eqz p3, :L3
  .line 6
    iget p2, p0, Landroidx/constraintlayout/widget/Barrier;->j:I
    if-ne p2, v3, :L2
  .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/Barrier;->k:I
    goto :L5
  :L2
    if-ne p2, v2, :L5
  .line 8
    iput v1, p0, Landroidx/constraintlayout/widget/Barrier;->k:I
    goto :L5
  :L3
  .line 9
    iget p2, p0, Landroidx/constraintlayout/widget/Barrier;->j:I
    if-ne p2, v3, :L4
  .line 10
    iput v1, p0, Landroidx/constraintlayout/widget/Barrier;->k:I
    goto :L5
  :L4
    if-ne p2, v2, :L5
  .line 11
    iput v0, p0, Landroidx/constraintlayout/widget/Barrier;->k:I
  :L5
  .line 12
    instance-of p2, p1, Lc/e/b/k/a;
    if-eqz p2, :L6
  .line 13
    check-cast p1, Lc/e/b/k/a;
  .line 14
    iget p2, p0, Landroidx/constraintlayout/widget/Barrier;->k:I
    invoke-virtual { p1, p2 }, Lc/e/b/k/a;->j1(I)V
  :L6
    return-void
.end method

.method public getMargin()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->l:Lc/e/b/k/a;
    invoke-virtual { v0 }, Lc/e/b/k/a;->f1()I
    move-result v0
    return v0
.end method

.method public getType()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/Barrier;->j:I
    return v0
.end method

.method protected h(Landroid/util/AttributeSet;)V
  .registers 8
  .line 1
    invoke-super { p0, p1 }, Landroidx/constraintlayout/widget/b;->h(Landroid/util/AttributeSet;)V
  .line 2
    new-instance v0, Lc/e/b/k/a;
    invoke-direct { v0 }, Lc/e/b/k/a;-><init>()V
    iput-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->l:Lc/e/b/k/a;
    if-eqz p1, :L5
  .line 3
    invoke-virtual { p0 }, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v0
    sget-object v1, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout:[I
    invoke-virtual { v0, p1, v1 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    move-result-object p1
  .line 4
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->getIndexCount()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L4
  .line 5
    invoke-virtual { p1, v2 }, Landroid/content/res/TypedArray;->getIndex(I)I
    move-result v3
  .line 6
    sget v4, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_barrierDirection:I
    if-ne v3, v4, :L1
  .line 7
    invoke-virtual { p1, v3, v1 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result v3
    invoke-virtual { p0, v3 }, Landroidx/constraintlayout/widget/Barrier;->setType(I)V
    goto :L3
  :L1
  .line 8
    sget v4, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_barrierAllowsGoneWidgets:I
    if-ne v3, v4, :L2
  .line 9
    iget-object v4, p0, Landroidx/constraintlayout/widget/Barrier;->l:Lc/e/b/k/a;
    const/4 v5, 1
    invoke-virtual { p1, v3, v5 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result v3
    invoke-virtual { v4, v3 }, Lc/e/b/k/a;->i1(Z)V
    goto :L3
  :L2
  .line 10
    sget v4, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_barrierMargin:I
    if-ne v3, v4, :L3
  .line 11
    invoke-virtual { p1, v3, v1 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result v3
  .line 12
    iget-object v4, p0, Landroidx/constraintlayout/widget/Barrier;->l:Lc/e/b/k/a;
    invoke-virtual { v4, v3 }, Lc/e/b/k/a;->k1(I)V
  :L3
    add-int/lit8 v2, v2, 1
    goto :L0
  :L4
  .line 13
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->recycle()V
  :L5
  .line 14
    iget-object p1, p0, Landroidx/constraintlayout/widget/Barrier;->l:Lc/e/b/k/a;
    iput-object p1, p0, Landroidx/constraintlayout/widget/b;->e:Lc/e/b/k/h;
  .line 15
    invoke-virtual { p0 }, Landroidx/constraintlayout/widget/b;->n()V
    return-void
.end method

.method public i(Lc/e/b/k/e;Z)V
  .registers 4
  .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/Barrier;->j:I
    invoke-direct { p0, p1, v0, p2 }, Landroidx/constraintlayout/widget/Barrier;->p(Lc/e/b/k/e;IZ)V
    return-void
.end method

.method public o()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->l:Lc/e/b/k/a;
    invoke-virtual { v0 }, Lc/e/b/k/a;->d1()Z
    move-result v0
    return v0
.end method

.method public setAllowsGoneWidget(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->l:Lc/e/b/k/a;
    invoke-virtual { v0, p1 }, Lc/e/b/k/a;->i1(Z)V
    return-void
.end method

.method public setDpMargin(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/view/View;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v0
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F
    int-to-float p1, p1
    mul-float p1, p1, v0
    const/high16 v0, 16128
    add-float/2addr p1, v0
    float-to-int p1, p1
  .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->l:Lc/e/b/k/a;
    invoke-virtual { v0, p1 }, Lc/e/b/k/a;->k1(I)V
    return-void
.end method

.method public setMargin(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->l:Lc/e/b/k/a;
    invoke-virtual { v0, p1 }, Lc/e/b/k/a;->k1(I)V
    return-void
.end method

.method public setType(I)V
  .registers 2
  .line 1
    iput p1, p0, Landroidx/constraintlayout/widget/Barrier;->j:I
    return-void
.end method
