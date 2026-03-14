.class public Landroidx/appcompat/widget/g0;
.super Landroid/view/ViewGroup;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/appcompat/widget/g0$a;
  }
.end annotation

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:F

.field private i:Z

.field private j:[I

.field private k:[I

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.method public constructor <init>(Landroid/content/Context;)V
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-direct { p0, p1, v0 }, Landroidx/appcompat/widget/g0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
    const/4 v0, 0
  .line 2
    invoke-direct { p0, p1, p2, v0 }, Landroidx/appcompat/widget/g0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 15
  .line 3
    invoke-direct { p0, p1, p2, p3 }, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    const/4 v0, 1
  .line 4
    iput-boolean v0, p0, Landroidx/appcompat/widget/g0;->b:Z
    const/4 v1, -1
  .line 5
    iput v1, p0, Landroidx/appcompat/widget/g0;->c:I
    const/4 v2, 0
  .line 6
    iput v2, p0, Landroidx/appcompat/widget/g0;->d:I
    const v3, 8388659
  .line 7
    iput v3, p0, Landroidx/appcompat/widget/g0;->f:I
  .line 8
    sget-object v3, Lc/a/j;->LinearLayoutCompat:[I
    invoke-static { p1, p2, v3, p3, v2 }, Landroidx/appcompat/widget/u0;->v(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/u0;
    move-result-object v3
  .line 9
    sget-object v6, Lc/a/j;->LinearLayoutCompat:[I
  .line 10
    invoke-virtual { v3 }, Landroidx/appcompat/widget/u0;->r()Landroid/content/res/TypedArray;
    move-result-object v8
    const/4 v10, 0
    move-object v4, p0
    move-object v5, p1
    move-object v7, p2
    move v9, p3
  .line 11
    invoke-static/range { v4 .. v10 }, Landroidx/core/view/v;->m0(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V
  .line 12
    sget p1, Lc/a/j;->LinearLayoutCompat_android_orientation:I
    invoke-virtual { v3, p1, v1 }, Landroidx/appcompat/widget/u0;->k(II)I
    move-result p1
    if-ltz p1, :L0
  .line 13
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/g0;->setOrientation(I)V
  :L0
  .line 14
    sget p1, Lc/a/j;->LinearLayoutCompat_android_gravity:I
    invoke-virtual { v3, p1, v1 }, Landroidx/appcompat/widget/u0;->k(II)I
    move-result p1
    if-ltz p1, :L1
  .line 15
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/g0;->setGravity(I)V
  :L1
  .line 16
    sget p1, Lc/a/j;->LinearLayoutCompat_android_baselineAligned:I
    invoke-virtual { v3, p1, v0 }, Landroidx/appcompat/widget/u0;->a(IZ)Z
    move-result p1
    if-nez p1, :L2
  .line 17
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/g0;->setBaselineAligned(Z)V
  :L2
  .line 18
    sget p1, Lc/a/j;->LinearLayoutCompat_android_weightSum:I
    const/high16 p2, -16512
    invoke-virtual { v3, p1, p2 }, Landroidx/appcompat/widget/u0;->i(IF)F
    move-result p1
    iput p1, p0, Landroidx/appcompat/widget/g0;->h:F
  .line 19
    sget p1, Lc/a/j;->LinearLayoutCompat_android_baselineAlignedChildIndex:I
  .line 20
    invoke-virtual { v3, p1, v1 }, Landroidx/appcompat/widget/u0;->k(II)I
    move-result p1
    iput p1, p0, Landroidx/appcompat/widget/g0;->c:I
  .line 21
    sget p1, Lc/a/j;->LinearLayoutCompat_measureWithLargestChild:I
    invoke-virtual { v3, p1, v2 }, Landroidx/appcompat/widget/u0;->a(IZ)Z
    move-result p1
    iput-boolean p1, p0, Landroidx/appcompat/widget/g0;->i:Z
  .line 22
    sget p1, Lc/a/j;->LinearLayoutCompat_divider:I
    invoke-virtual { v3, p1 }, Landroidx/appcompat/widget/u0;->g(I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/g0;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
  .line 23
    sget p1, Lc/a/j;->LinearLayoutCompat_showDividers:I
    invoke-virtual { v3, p1, v2 }, Landroidx/appcompat/widget/u0;->k(II)I
    move-result p1
    iput p1, p0, Landroidx/appcompat/widget/g0;->o:I
  .line 24
    sget p1, Lc/a/j;->LinearLayoutCompat_dividerPadding:I
    invoke-virtual { v3, p1, v2 }, Landroidx/appcompat/widget/u0;->f(II)I
    move-result p1
    iput p1, p0, Landroidx/appcompat/widget/g0;->p:I
  .line 25
    invoke-virtual { v3 }, Landroidx/appcompat/widget/u0;->w()V
    return-void
.end method

.method private A(Landroid/view/View;IIII)V
  .registers 6
    add-int/2addr p4, p2
    add-int/2addr p5, p3
  .line 1
    invoke-virtual { p1, p2, p3, p4, p5 }, Landroid/view/View;->layout(IIII)V
    return-void
.end method

.method private k(II)V
  .registers 13
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getMeasuredHeight()I
    move-result v0
    const/high16 v1, 16384
    invoke-static { v0, v1 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, p1, :L2
  .line 2
    invoke-virtual { p0, v1 }, Landroidx/appcompat/widget/g0;->s(I)Landroid/view/View;
    move-result-object v3
  .line 3
    invoke-virtual { v3 }, Landroid/view/View;->getVisibility()I
    move-result v2
    const/16 v4, 8
    if-eq v2, v4, :L1
  .line 4
    invoke-virtual { v3 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v2
    move-object v8, v2
    check-cast v8, Landroidx/appcompat/widget/g0$a;
  .line 5
    iget v2, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I
    const/4 v4, -1
    if-ne v2, v4, :L1
  .line 6
    iget v9, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I
  .line 7
    invoke-virtual { v3 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v2
    iput v2, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I
    const/4 v5, 0
    const/4 v7, 0
    move-object v2, p0
    move v4, p2
    move v6, v0
  .line 8
    invoke-virtual/range { v2 .. v7 }, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V
  .line 9
    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    return-void
.end method

.method private l(II)V
  .registers 13
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getMeasuredWidth()I
    move-result v0
    const/high16 v1, 16384
    invoke-static { v0, v1 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, p1, :L2
  .line 2
    invoke-virtual { p0, v1 }, Landroidx/appcompat/widget/g0;->s(I)Landroid/view/View;
    move-result-object v3
  .line 3
    invoke-virtual { v3 }, Landroid/view/View;->getVisibility()I
    move-result v2
    const/16 v4, 8
    if-eq v2, v4, :L1
  .line 4
    invoke-virtual { v3 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v2
    move-object v8, v2
    check-cast v8, Landroidx/appcompat/widget/g0$a;
  .line 5
    iget v2, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I
    const/4 v4, -1
    if-ne v2, v4, :L1
  .line 6
    iget v9, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I
  .line 7
    invoke-virtual { v3 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v2
    iput v2, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I
    const/4 v5, 0
    const/4 v7, 0
    move-object v2, p0
    move v4, v0
    move v6, p2
  .line 8
    invoke-virtual/range { v2 .. v7 }, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V
  .line 9
    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
  .registers 2
  .line 1
    instance-of p1, p1, Landroidx/appcompat/widget/g0$a;
    return p1
.end method

.method g(Landroid/graphics/Canvas;)V
  .registers 8
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/g0;->getVirtualChildCount()I
    move-result v0
  .line 2
    invoke-static { p0 }, Landroidx/appcompat/widget/a1;->b(Landroid/view/View;)Z
    move-result v1
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L4
  .line 3
    invoke-virtual { p0, v2 }, Landroidx/appcompat/widget/g0;->s(I)Landroid/view/View;
    move-result-object v3
    if-eqz v3, :L3
  .line 4
    invoke-virtual { v3 }, Landroid/view/View;->getVisibility()I
    move-result v4
    const/16 v5, 8
    if-eq v4, v5, :L3
  .line 5
    invoke-virtual { p0, v2 }, Landroidx/appcompat/widget/g0;->t(I)Z
    move-result v4
    if-eqz v4, :L3
  .line 6
    invoke-virtual { v3 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v4
    check-cast v4, Landroidx/appcompat/widget/g0$a;
    if-eqz v1, :L1
  .line 7
    invoke-virtual { v3 }, Landroid/view/View;->getRight()I
    move-result v3
    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
    add-int/2addr v3, v4
    goto :L2
  :L1
  .line 8
    invoke-virtual { v3 }, Landroid/view/View;->getLeft()I
    move-result v3
    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
    sub-int/2addr v3, v4
    iget v4, p0, Landroidx/appcompat/widget/g0;->m:I
    sub-int/2addr v3, v4
  :L2
  .line 9
    invoke-virtual { p0, p1, v3 }, Landroidx/appcompat/widget/g0;->j(Landroid/graphics/Canvas;I)V
  :L3
    add-int/lit8 v2, v2, 1
    goto :L0
  :L4
  .line 10
    invoke-virtual { p0, v0 }, Landroidx/appcompat/widget/g0;->t(I)Z
    move-result v2
    if-eqz v2, :L10
    add-int/lit8 v0, v0, -1
  .line 11
    invoke-virtual { p0, v0 }, Landroidx/appcompat/widget/g0;->s(I)Landroid/view/View;
    move-result-object v0
    if-nez v0, :L6
    if-eqz v1, :L5
  .line 12
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v0
    goto :L9
  :L5
  .line 13
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getWidth()I
    move-result v0
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingRight()I
    move-result v1
    sub-int/2addr v0, v1
    iget v1, p0, Landroidx/appcompat/widget/g0;->m:I
    goto :L7
  :L6
  .line 14
    invoke-virtual { v0 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v2
    check-cast v2, Landroidx/appcompat/widget/g0$a;
    if-eqz v1, :L8
  .line 15
    invoke-virtual { v0 }, Landroid/view/View;->getLeft()I
    move-result v0
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
    sub-int/2addr v0, v1
    iget v1, p0, Landroidx/appcompat/widget/g0;->m:I
  :L7
    sub-int/2addr v0, v1
    goto :L9
  :L8
  .line 16
    invoke-virtual { v0 }, Landroid/view/View;->getRight()I
    move-result v0
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
    add-int/2addr v0, v1
  :L9
  .line 17
    invoke-virtual { p0, p1, v0 }, Landroidx/appcompat/widget/g0;->j(Landroid/graphics/Canvas;I)V
  :L10
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/g0;->m()Landroidx/appcompat/widget/g0$a;
    move-result-object v0
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/g0;->n(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/g0$a;
    move-result-object p1
    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
  .registers 2
  .line 2
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/g0;->o(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/g0$a;
    move-result-object p1
    return-object p1
.end method

.method public getBaseline()I
  .registers 6
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/g0;->c:I
    if-gez v0, :L0
  .line 2
    invoke-super { p0 }, Landroid/view/ViewGroup;->getBaseline()I
    move-result v0
    return v0
  :L0
  .line 3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v0
    iget v1, p0, Landroidx/appcompat/widget/g0;->c:I
    if-le v0, v1, :L6
  .line 4
    invoke-virtual { p0, v1 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v0
  .line 5
    invoke-virtual { v0 }, Landroid/view/View;->getBaseline()I
    move-result v1
    const/4 v2, -1
    if-ne v1, v2, :L2
  .line 6
    iget v0, p0, Landroidx/appcompat/widget/g0;->c:I
    if-nez v0, :L1
    return v2
  :L1
  .line 7
    new-instance v0, Ljava/lang/RuntimeException;
    const-string v1, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline."
    invoke-direct { v0, v1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw v0
  :L2
  .line 8
    iget v2, p0, Landroidx/appcompat/widget/g0;->d:I
  .line 9
    iget v3, p0, Landroidx/appcompat/widget/g0;->e:I
    const/4 v4, 1
    if-ne v3, v4, :L5
  .line 10
    iget v3, p0, Landroidx/appcompat/widget/g0;->f:I
    and-int/lit8 v3, v3, 112
    const/16 v4, 48
    if-eq v3, v4, :L5
    const/16 v4, 16
    if-eq v3, v4, :L4
    const/16 v4, 80
    if-eq v3, v4, :L3
    goto :L5
  :L3
  .line 11
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getBottom()I
    move-result v2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getTop()I
    move-result v3
    sub-int/2addr v2, v3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingBottom()I
    move-result v3
    sub-int/2addr v2, v3
    iget v3, p0, Landroidx/appcompat/widget/g0;->g:I
    sub-int/2addr v2, v3
    goto :L5
  :L4
  .line 12
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getBottom()I
    move-result v3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getTop()I
    move-result v4
    sub-int/2addr v3, v4
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result v4
    sub-int/2addr v3, v4
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingBottom()I
    move-result v4
    sub-int/2addr v3, v4
    iget v4, p0, Landroidx/appcompat/widget/g0;->g:I
    sub-int/2addr v3, v4
    div-int/lit8 v3, v3, 2
    add-int/2addr v2, v3
  :L5
  .line 13
    invoke-virtual { v0 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/appcompat/widget/g0$a;
  .line 14
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    add-int/2addr v2, v0
    add-int/2addr v2, v1
    return v2
  :L6
  .line 15
    new-instance v0, Ljava/lang/RuntimeException;
    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."
    invoke-direct { v0, v1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public getBaselineAlignedChildIndex()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/g0;->c:I
    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/g0;->l:Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method public getDividerPadding()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/g0;->p:I
    return v0
.end method

.method public getDividerWidth()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/g0;->m:I
    return v0
.end method

.method public getGravity()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/g0;->f:I
    return v0
.end method

.method public getOrientation()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/g0;->e:I
    return v0
.end method

.method public getShowDividers()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/g0;->o:I
    return v0
.end method

.method getVirtualChildCount()I
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v0
    return v0
.end method

.method public getWeightSum()F
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/g0;->h:F
    return v0
.end method

.method h(Landroid/graphics/Canvas;)V
  .registers 7
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/g0;->getVirtualChildCount()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L2
  .line 2
    invoke-virtual { p0, v1 }, Landroidx/appcompat/widget/g0;->s(I)Landroid/view/View;
    move-result-object v2
    if-eqz v2, :L1
  .line 3
    invoke-virtual { v2 }, Landroid/view/View;->getVisibility()I
    move-result v3
    const/16 v4, 8
    if-eq v3, v4, :L1
  .line 4
    invoke-virtual { p0, v1 }, Landroidx/appcompat/widget/g0;->t(I)Z
    move-result v3
    if-eqz v3, :L1
  .line 5
    invoke-virtual { v2 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v3
    check-cast v3, Landroidx/appcompat/widget/g0$a;
  .line 6
    invoke-virtual { v2 }, Landroid/view/View;->getTop()I
    move-result v2
    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    sub-int/2addr v2, v3
    iget v3, p0, Landroidx/appcompat/widget/g0;->n:I
    sub-int/2addr v2, v3
  .line 7
    invoke-virtual { p0, p1, v2 }, Landroidx/appcompat/widget/g0;->i(Landroid/graphics/Canvas;I)V
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
  .line 8
    invoke-virtual { p0, v0 }, Landroidx/appcompat/widget/g0;->t(I)Z
    move-result v1
    if-eqz v1, :L5
    add-int/lit8 v0, v0, -1
  .line 9
    invoke-virtual { p0, v0 }, Landroidx/appcompat/widget/g0;->s(I)Landroid/view/View;
    move-result-object v0
    if-nez v0, :L3
  .line 10
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getHeight()I
    move-result v0
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingBottom()I
    move-result v1
    sub-int/2addr v0, v1
    iget v1, p0, Landroidx/appcompat/widget/g0;->n:I
    sub-int/2addr v0, v1
    goto :L4
  :L3
  .line 11
    invoke-virtual { v0 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v1
    check-cast v1, Landroidx/appcompat/widget/g0$a;
  .line 12
    invoke-virtual { v0 }, Landroid/view/View;->getBottom()I
    move-result v0
    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
    add-int/2addr v0, v1
  :L4
  .line 13
    invoke-virtual { p0, p1, v0 }, Landroidx/appcompat/widget/g0;->i(Landroid/graphics/Canvas;I)V
  :L5
    return-void
.end method

.method i(Landroid/graphics/Canvas;I)V
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/g0;->l:Landroid/graphics/drawable/Drawable;
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v1
    iget v2, p0, Landroidx/appcompat/widget/g0;->p:I
    add-int/2addr v1, v2
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getWidth()I
    move-result v2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingRight()I
    move-result v3
    sub-int/2addr v2, v3
    iget v3, p0, Landroidx/appcompat/widget/g0;->p:I
    sub-int/2addr v2, v3
    iget v3, p0, Landroidx/appcompat/widget/g0;->n:I
    add-int/2addr v3, p2
  .line 3
    invoke-virtual { v0, v1, p2, v2, v3 }, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
  .line 4
    iget-object p2, p0, Landroidx/appcompat/widget/g0;->l:Landroid/graphics/drawable/Drawable;
    invoke-virtual { p2, p1 }, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    return-void
.end method

.method j(Landroid/graphics/Canvas;I)V
  .registers 8
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/g0;->l:Landroid/graphics/drawable/Drawable;
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result v1
    iget v2, p0, Landroidx/appcompat/widget/g0;->p:I
    add-int/2addr v1, v2
    iget v2, p0, Landroidx/appcompat/widget/g0;->m:I
    add-int/2addr v2, p2
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getHeight()I
    move-result v3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingBottom()I
    move-result v4
    sub-int/2addr v3, v4
    iget v4, p0, Landroidx/appcompat/widget/g0;->p:I
    sub-int/2addr v3, v4
  .line 3
    invoke-virtual { v0, p2, v1, v2, v3 }, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
  .line 4
    iget-object p2, p0, Landroidx/appcompat/widget/g0;->l:Landroid/graphics/drawable/Drawable;
    invoke-virtual { p2, p1 }, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    return-void
.end method

.method protected m()Landroidx/appcompat/widget/g0$a;
  .registers 4
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/g0;->e:I
    const/4 v1, -2
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroidx/appcompat/widget/g0$a;
    invoke-direct { v0, v1, v1 }, Landroidx/appcompat/widget/g0$a;-><init>(II)V
    return-object v0
  :L0
    const/4 v2, 1
    if-ne v0, v2, :L1
  .line 3
    new-instance v0, Landroidx/appcompat/widget/g0$a;
    const/4 v2, -1
    invoke-direct { v0, v2, v1 }, Landroidx/appcompat/widget/g0$a;-><init>(II)V
    return-object v0
  :L1
    const/4 v0, 0
    return-object v0
.end method

.method public n(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/g0$a;
  .registers 4
  .line 1
    new-instance v0, Landroidx/appcompat/widget/g0$a;
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-direct { v0, v1, p1 }, Landroidx/appcompat/widget/g0$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-object v0
.end method

.method protected o(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/g0$a;
  .registers 3
  .line 1
    new-instance v0, Landroidx/appcompat/widget/g0$a;
    invoke-direct { v0, p1 }, Landroidx/appcompat/widget/g0$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/g0;->l:Landroid/graphics/drawable/Drawable;
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    iget v0, p0, Landroidx/appcompat/widget/g0;->e:I
    const/4 v1, 1
    if-ne v0, v1, :L1
  .line 3
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/g0;->h(Landroid/graphics/Canvas;)V
    goto :L2
  :L1
  .line 4
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/g0;->g(Landroid/graphics/Canvas;)V
  :L2
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    const-string v0, "androidx.appcompat.widget.LinearLayoutCompat"
  .line 2
    invoke-virtual { p1, v0 }, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    const-string v0, "androidx.appcompat.widget.LinearLayoutCompat"
  .line 2
    invoke-virtual { p1, v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V
    return-void
.end method

.method protected onLayout(ZIIII)V
  .registers 7
  .line 1
    iget p1, p0, Landroidx/appcompat/widget/g0;->e:I
    const/4 v0, 1
    if-ne p1, v0, :L0
  .line 2
    invoke-virtual { p0, p2, p3, p4, p5 }, Landroidx/appcompat/widget/g0;->v(IIII)V
    goto :L1
  :L0
  .line 3
    invoke-virtual { p0, p2, p3, p4, p5 }, Landroidx/appcompat/widget/g0;->u(IIII)V
  :L1
    return-void
.end method

.method protected onMeasure(II)V
  .registers 5
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/g0;->e:I
    const/4 v1, 1
    if-ne v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1, p2 }, Landroidx/appcompat/widget/g0;->z(II)V
    goto :L1
  :L0
  .line 3
    invoke-virtual { p0, p1, p2 }, Landroidx/appcompat/widget/g0;->x(II)V
  :L1
    return-void
.end method

.method p(Landroid/view/View;I)I
  .registers 3
    const/4 p1, 0
    return p1
.end method

.method q(Landroid/view/View;)I
  .registers 2
    const/4 p1, 0
    return p1
.end method

.method r(Landroid/view/View;)I
  .registers 2
    const/4 p1, 0
    return p1
.end method

.method s(I)Landroid/view/View;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object p1
    return-object p1
.end method

.method public setBaselineAligned(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/g0;->b:Z
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
  .registers 4
    if-ltz p1, :L0
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v0
    if-ge p1, v0, :L0
  .line 2
    iput p1, p0, Landroidx/appcompat/widget/g0;->c:I
    return-void
  :L0
  .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "base aligned child index out of range (0, "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 4
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ")"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/g0;->l:Landroid/graphics/drawable/Drawable;
    if-ne p1, v0, :L0
    return-void
  :L0
  .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/g0;->l:Landroid/graphics/drawable/Drawable;
    const/4 v0, 0
    if-eqz p1, :L1
  .line 3
    invoke-virtual { p1 }, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
    move-result v1
    iput v1, p0, Landroidx/appcompat/widget/g0;->m:I
  .line 4
    invoke-virtual { p1 }, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    move-result v1
    iput v1, p0, Landroidx/appcompat/widget/g0;->n:I
    goto :L2
  :L1
  .line 5
    iput v0, p0, Landroidx/appcompat/widget/g0;->m:I
  .line 6
    iput v0, p0, Landroidx/appcompat/widget/g0;->n:I
  :L2
    if-nez p1, :L3
    const/4 v0, 1
  :L3
  .line 7
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->setWillNotDraw(Z)V
  .line 8
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->requestLayout()V
    return-void
.end method

.method public setDividerPadding(I)V
  .registers 2
  .line 1
    iput p1, p0, Landroidx/appcompat/widget/g0;->p:I
    return-void
.end method

.method public setGravity(I)V
  .registers 3
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/g0;->f:I
    if-eq v0, p1, :L2
    const v0, 8388615
    and-int/2addr v0, p1
    if-nez v0, :L0
    const v0, 8388611
    or-int/2addr p1, v0
  :L0
    and-int/lit8 v0, p1, 112
    if-nez v0, :L1
    or-int/lit8 p1, p1, 48
  :L1
  .line 2
    iput p1, p0, Landroidx/appcompat/widget/g0;->f:I
  .line 3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->requestLayout()V
  :L2
    return-void
.end method

.method public setHorizontalGravity(I)V
  .registers 4
    const v0, 8388615
    and-int/2addr p1, v0
  .line 1
    iget v1, p0, Landroidx/appcompat/widget/g0;->f:I
    and-int/2addr v0, v1
    if-eq v0, p1, :L0
    const v0, -8388616
    and-int/2addr v0, v1
    or-int/2addr p1, v0
  .line 2
    iput p1, p0, Landroidx/appcompat/widget/g0;->f:I
  .line 3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->requestLayout()V
  :L0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/g0;->i:Z
    return-void
.end method

.method public setOrientation(I)V
  .registers 3
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/g0;->e:I
    if-eq v0, p1, :L0
  .line 2
    iput p1, p0, Landroidx/appcompat/widget/g0;->e:I
  .line 3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->requestLayout()V
  :L0
    return-void
.end method

.method public setShowDividers(I)V
  .registers 3
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/g0;->o:I
    if-eq p1, v0, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->requestLayout()V
  :L0
  .line 3
    iput p1, p0, Landroidx/appcompat/widget/g0;->o:I
    return-void
.end method

.method public setVerticalGravity(I)V
  .registers 4
    and-int/lit8 p1, p1, 112
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/g0;->f:I
    and-int/lit8 v1, v0, 112
    if-eq v1, p1, :L0
    and-int/lit8 v0, v0, -113
    or-int/2addr p1, v0
  .line 2
    iput p1, p0, Landroidx/appcompat/widget/g0;->f:I
  .line 3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->requestLayout()V
  :L0
    return-void
.end method

.method public setWeightSum(F)V
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-static { v0, p1 }, Ljava/lang/Math;->max(FF)F
    move-result p1
    iput p1, p0, Landroidx/appcompat/widget/g0;->h:F
    return-void
.end method

.method public shouldDelayChildPressedState()Z
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method protected t(I)Z
  .registers 6
    const/4 v0, 0
    const/4 v1, 1
    if-nez p1, :L1
  .line 1
    iget p1, p0, Landroidx/appcompat/widget/g0;->o:I
    and-int/2addr p1, v1
    if-eqz p1, :L0
    const/4 v0, 1
  :L0
    return v0
  :L1
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v2
    if-ne p1, v2, :L3
  .line 3
    iget p1, p0, Landroidx/appcompat/widget/g0;->o:I
    and-int/lit8 p1, p1, 4
    if-eqz p1, :L2
    const/4 v0, 1
  :L2
    return v0
  :L3
  .line 4
    iget v2, p0, Landroidx/appcompat/widget/g0;->o:I
    and-int/lit8 v2, v2, 2
    if-eqz v2, :L6
    sub-int/2addr p1, v1
  :L4
    if-ltz p1, :L6
  .line 5
    invoke-virtual { p0, p1 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v2
    invoke-virtual { v2 }, Landroid/view/View;->getVisibility()I
    move-result v2
    const/16 v3, 8
    if-eq v2, v3, :L5
    const/4 v0, 1
    goto :L6
  :L5
    add-int/lit8 p1, p1, -1
    goto :L4
  :L6
    return v0
.end method

.method u(IIII)V
  .registers 29
    move-object/from16 v6, p0
  .line 1
    invoke-static/range { p0 .. p0 }, Landroidx/appcompat/widget/a1;->b(Landroid/view/View;)Z
    move-result v0
  .line 2
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result v7
    sub-int v1, p4, p2
  .line 3
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingBottom()I
    move-result v2
    sub-int v8, v1, v2
    sub-int/2addr v1, v7
  .line 4
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingBottom()I
    move-result v2
    sub-int v9, v1, v2
  .line 5
    invoke-virtual/range { p0 .. p0 }, Landroidx/appcompat/widget/g0;->getVirtualChildCount()I
    move-result v10
  .line 6
    iget v1, v6, Landroidx/appcompat/widget/g0;->f:I
    const v2, 8388615
    and-int/2addr v2, v1
    and-int/lit8 v11, v1, 112
  .line 7
    iget-boolean v12, v6, Landroidx/appcompat/widget/g0;->b:Z
  .line 8
    iget-object v13, v6, Landroidx/appcompat/widget/g0;->j:[I
  .line 9
    iget-object v14, v6, Landroidx/appcompat/widget/g0;->k:[I
  .line 10
    invoke-static/range { p0 .. p0 }, Landroidx/core/view/v;->C(Landroid/view/View;)I
    move-result v1
  .line 11
    invoke-static { v2, v1 }, Landroidx/core/view/e;->b(II)I
    move-result v1
    const/4 v15, 2
    const/4 v5, 1
    if-eq v1, v5, :L1
    const/4 v2, 5
    if-eq v1, v2, :L0
  .line 12
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v1
    goto :L2
  :L0
  .line 13
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v1
    add-int v1, v1, p3
    sub-int v1, v1, p1
    iget v2, v6, Landroidx/appcompat/widget/g0;->g:I
    sub-int/2addr v1, v2
    goto :L2
  :L1
  .line 14
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v1
    sub-int v2, p3, p1
    iget v3, v6, Landroidx/appcompat/widget/g0;->g:I
    sub-int/2addr v2, v3
    div-int/2addr v2, v15
    add-int/2addr v1, v2
  :L2
    const/4 v2, 0
    if-eqz v0, :L3
    add-int/lit8 v0, v10, -1
    move/from16 v16, v0
    const/16 v17, -1
    goto :L4
  :L3
    const/16 v16, 0
    const/16 v17, 1
  :L4
    const/4 v3, 0
  :L5
    if-ge v3, v10, :L20
    mul-int v0, v17, v3
    add-int v2, v16, v0
  .line 15
    invoke-virtual { v6, v2 }, Landroidx/appcompat/widget/g0;->s(I)Landroid/view/View;
    move-result-object v0
    if-nez v0, :L6
  .line 16
    invoke-virtual { v6, v2 }, Landroidx/appcompat/widget/g0;->y(I)I
    move-result v0
    add-int/2addr v1, v0
    goto/16 :L18
  :L6
  .line 17
    invoke-virtual { v0 }, Landroid/view/View;->getVisibility()I
    move-result v5
    const/16 v15, 8
    if-eq v5, v15, :L17
  .line 18
    invoke-virtual { v0 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v15
  .line 19
    invoke-virtual { v0 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v5
  .line 20
    invoke-virtual { v0 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v18
    move-object/from16 v4, v18
    check-cast v4, Landroidx/appcompat/widget/g0$a;
    move/from16 v18, v3
    if-eqz v12, :L7
  .line 21
    iget v3, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I
    move/from16 v19, v10
    const/4 v10, -1
    if-eq v3, v10, :L8
  .line 22
    invoke-virtual { v0 }, Landroid/view/View;->getBaseline()I
    move-result v10
    goto :L9
  :L7
    move/from16 v19, v10
  :L8
    const/4 v10, -1
  :L9
  .line 23
    iget v3, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
    if-gez v3, :L10
    move v3, v11
  :L10
    and-int/lit8 v3, v3, 112
    move/from16 v20, v11
    const/16 v11, 16
    if-eq v3, v11, :L14
    const/16 v11, 48
    if-eq v3, v11, :L12
    const/16 v11, 80
    if-eq v3, v11, :L11
    move v3, v7
    const/4 v11, -1
    goto :L13
  :L11
    sub-int v3, v8, v5
  .line 24
    iget v11, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
    sub-int/2addr v3, v11
    const/4 v11, -1
    if-eq v10, v11, :L13
  .line 25
    invoke-virtual { v0 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v21
    sub-int v21, v21, v10
    const/4 v10, 2
  .line 26
    aget v22, v14, v10
    sub-int v22, v22, v21
    sub-int v3, v3, v22
    goto :L13
  :L12
    const/4 v11, -1
  .line 27
    iget v3, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    add-int/2addr v3, v7
    if-eq v10, v11, :L13
    const/16 v21, 1
  .line 28
    aget v22, v13, v21
    sub-int v22, v22, v10
    add-int v3, v3, v22
    goto :L15
  :L13
    const/16 v21, 1
    goto :L15
  :L14
    const/4 v11, -1
    const/16 v21, 1
    sub-int v3, v9, v5
    const/4 v10, 2
  .line 29
    div-int/2addr v3, v10
    add-int/2addr v3, v7
    iget v10, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    add-int/2addr v3, v10
    iget v10, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
    sub-int/2addr v3, v10
  :L15
  .line 30
    invoke-virtual { v6, v2 }, Landroidx/appcompat/widget/g0;->t(I)Z
    move-result v10
    if-eqz v10, :L16
  .line 31
    iget v10, v6, Landroidx/appcompat/widget/g0;->m:I
    add-int/2addr v1, v10
  :L16
  .line 32
    iget v10, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
    add-int/2addr v10, v1
  .line 33
    invoke-virtual { v6, v0 }, Landroidx/appcompat/widget/g0;->q(Landroid/view/View;)I
    move-result v1
    add-int v22, v10, v1
    move-object v1, v0
    move-object/from16 v0, p0
    move-object/from16 p1, v1
    move v11, v2
    move/from16 v2, v22
    move/from16 v22, v7
    const/16 v23, -1
    move-object v7, v4
    move v4, v15
    invoke-direct/range { v0 .. v5 }, Landroidx/appcompat/widget/g0;->A(Landroid/view/View;IIII)V
  .line 34
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
    add-int/2addr v15, v0
    move-object/from16 v0, p1
  .line 35
    invoke-virtual { v6, v0 }, Landroidx/appcompat/widget/g0;->r(Landroid/view/View;)I
    move-result v1
    add-int/2addr v15, v1
    add-int/2addr v10, v15
  .line 36
    invoke-virtual { v6, v0, v11 }, Landroidx/appcompat/widget/g0;->p(Landroid/view/View;I)I
    move-result v0
    add-int v3, v18, v0
    move v1, v10
    goto :L19
  :L17
    move/from16 v18, v3
  :L18
    move/from16 v22, v7
    move/from16 v19, v10
    move/from16 v20, v11
    const/16 v21, 1
    const/16 v23, -1
  :L19
    add-int/lit8 v3, v3, 1
    move/from16 v10, v19
    move/from16 v11, v20
    move/from16 v7, v22
    const/4 v5, 1
    const/4 v15, 2
    goto/16 :L5
  :L20
    return-void
.end method

.method v(IIII)V
  .registers 22
    move-object/from16 v6, p0
  .line 1
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v7
    sub-int v0, p3, p1
  .line 2
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingRight()I
    move-result v1
    sub-int v8, v0, v1
    sub-int/2addr v0, v7
  .line 3
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingRight()I
    move-result v1
    sub-int v9, v0, v1
  .line 4
    invoke-virtual/range { p0 .. p0 }, Landroidx/appcompat/widget/g0;->getVirtualChildCount()I
    move-result v10
  .line 5
    iget v0, v6, Landroidx/appcompat/widget/g0;->f:I
    and-int/lit8 v1, v0, 112
    const v2, 8388615
    and-int v11, v0, v2
    const/16 v0, 16
    if-eq v1, v0, :L1
    const/16 v0, 80
    if-eq v1, v0, :L0
  .line 6
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result v0
    goto :L2
  :L0
  .line 7
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result v0
    add-int v0, v0, p4
    sub-int v0, v0, p2
    iget v1, v6, Landroidx/appcompat/widget/g0;->g:I
    sub-int/2addr v0, v1
    goto :L2
  :L1
  .line 8
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result v0
    sub-int v1, p4, p2
    iget v2, v6, Landroidx/appcompat/widget/g0;->g:I
    sub-int/2addr v1, v2
    div-int/lit8 v1, v1, 2
    add-int/2addr v0, v1
  :L2
    const/4 v1, 0
    const/4 v12, 0
  :L3
    if-ge v12, v10, :L12
  .line 9
    invoke-virtual { v6, v12 }, Landroidx/appcompat/widget/g0;->s(I)Landroid/view/View;
    move-result-object v13
    const/4 v14, 1
    if-nez v13, :L4
  .line 10
    invoke-virtual { v6, v12 }, Landroidx/appcompat/widget/g0;->y(I)I
    move-result v1
    add-int/2addr v0, v1
    goto/16 :L11
  :L4
  .line 11
    invoke-virtual { v13 }, Landroid/view/View;->getVisibility()I
    move-result v1
    const/16 v2, 8
    if-eq v1, v2, :L11
  .line 12
    invoke-virtual { v13 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v4
  .line 13
    invoke-virtual { v13 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v15
  .line 14
    invoke-virtual { v13 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v1
    move-object v5, v1
    check-cast v5, Landroidx/appcompat/widget/g0$a;
  .line 15
    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
    if-gez v1, :L5
    move v1, v11
  :L5
  .line 16
    invoke-static/range { p0 .. p0 }, Landroidx/core/view/v;->C(Landroid/view/View;)I
    move-result v2
  .line 17
    invoke-static { v1, v2 }, Landroidx/core/view/e;->b(II)I
    move-result v1
    and-int/lit8 v1, v1, 7
    if-eq v1, v14, :L7
    const/4 v2, 5
    if-eq v1, v2, :L6
  .line 18
    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
    add-int/2addr v1, v7
    goto :L9
  :L6
    sub-int v1, v8, v4
  .line 19
    iget v2, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
    goto :L8
  :L7
    sub-int v1, v9, v4
  .line 20
    div-int/lit8 v1, v1, 2
    add-int/2addr v1, v7
    iget v2, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
    add-int/2addr v1, v2
    iget v2, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
  :L8
    sub-int/2addr v1, v2
  :L9
    move v2, v1
  .line 21
    invoke-virtual { v6, v12 }, Landroidx/appcompat/widget/g0;->t(I)Z
    move-result v1
    if-eqz v1, :L10
  .line 22
    iget v1, v6, Landroidx/appcompat/widget/g0;->n:I
    add-int/2addr v0, v1
  :L10
  .line 23
    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    add-int v16, v0, v1
  .line 24
    invoke-virtual { v6, v13 }, Landroidx/appcompat/widget/g0;->q(Landroid/view/View;)I
    move-result v0
    add-int v3, v16, v0
    move-object/from16 v0, p0
    move-object v1, v13
    move-object v14, v5
    move v5, v15
    invoke-direct/range { v0 .. v5 }, Landroidx/appcompat/widget/g0;->A(Landroid/view/View;IIII)V
  .line 25
    iget v0, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
    add-int/2addr v15, v0
    invoke-virtual { v6, v13 }, Landroidx/appcompat/widget/g0;->r(Landroid/view/View;)I
    move-result v0
    add-int/2addr v15, v0
    add-int v16, v16, v15
  .line 26
    invoke-virtual { v6, v13, v12 }, Landroidx/appcompat/widget/g0;->p(Landroid/view/View;I)I
    move-result v0
    add-int/2addr v12, v0
    move/from16 v0, v16
  :L11
    const/4 v1, 1
    add-int/2addr v12, v1
    goto :L3
  :L12
    return-void
.end method

.method w(Landroid/view/View;IIIII)V
  .registers 13
    move-object v0, p0
    move-object v1, p1
    move v2, p3
    move v3, p4
    move v4, p5
    move v5, p6
  .line 1
    invoke-virtual/range { v0 .. v5 }, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V
    return-void
.end method

.method x(II)V
  .registers 40
    move-object/from16 v7, p0
    move/from16 v8, p1
    move/from16 v9, p2
    const/4 v10, 0
  .line 1
    iput v10, v7, Landroidx/appcompat/widget/g0;->g:I
  .line 2
    invoke-virtual/range { p0 .. p0 }, Landroidx/appcompat/widget/g0;->getVirtualChildCount()I
    move-result v11
  .line 3
    invoke-static/range { p1 .. p1 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result v12
  .line 4
    invoke-static/range { p2 .. p2 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result v13
  .line 5
    iget-object v0, v7, Landroidx/appcompat/widget/g0;->j:[I
    const/4 v14, 4
    if-eqz v0, :L0
    iget-object v0, v7, Landroidx/appcompat/widget/g0;->k:[I
    if-nez v0, :L1
  :L0
    new-array v0, v14, [I
  .line 6
    iput-object v0, v7, Landroidx/appcompat/widget/g0;->j:[I
    new-array v0, v14, [I
  .line 7
    iput-object v0, v7, Landroidx/appcompat/widget/g0;->k:[I
  :L1
  .line 8
    iget-object v15, v7, Landroidx/appcompat/widget/g0;->j:[I
  .line 9
    iget-object v6, v7, Landroidx/appcompat/widget/g0;->k:[I
    const/16 v16, 3
    const/4 v5, -1
  .line 10
    aput v5, v15, v16
    const/16 v17, 2
    aput v5, v15, v17
    const/16 v18, 1
    aput v5, v15, v18
    aput v5, v15, v10
  .line 11
    aput v5, v6, v16
    aput v5, v6, v17
    aput v5, v6, v18
    aput v5, v6, v10
  .line 12
    iget-boolean v4, v7, Landroidx/appcompat/widget/g0;->b:Z
  .line 13
    iget-boolean v3, v7, Landroidx/appcompat/widget/g0;->i:Z
    const/high16 v2, 16384
    if-ne v12, v2, :L2
    const/16 v19, 1
    goto :L3
  :L2
    const/16 v19, 0
  :L3
    const/16 v20, 0
    const/4 v0, 0
    const/4 v1, 0
    const/4 v14, 0
    const/16 v21, 0
    const/16 v22, 0
    const/16 v23, 0
    const/16 v24, 0
    const/16 v25, 0
    const/16 v26, 1
    const/16 v27, 0
  :L4
    move-object/from16 v28, v6
    const/16 v5, 8
    if-ge v1, v11, :L35
  .line 14
    invoke-virtual { v7, v1 }, Landroidx/appcompat/widget/g0;->s(I)Landroid/view/View;
    move-result-object v6
    if-nez v6, :L6
  .line 15
    iget v5, v7, Landroidx/appcompat/widget/g0;->g:I
    invoke-virtual { v7, v1 }, Landroidx/appcompat/widget/g0;->y(I)I
    move-result v6
    add-int/2addr v5, v6
    iput v5, v7, Landroidx/appcompat/widget/g0;->g:I
  :L5
    move v2, v1
    move/from16 v32, v3
    move/from16 v36, v4
    const/high16 v1, 16384
    goto/16 :L34
  :L6
  .line 16
    invoke-virtual { v6 }, Landroid/view/View;->getVisibility()I
    move-result v10
    if-ne v10, v5, :L7
  .line 17
    invoke-virtual { v7, v6, v1 }, Landroidx/appcompat/widget/g0;->p(Landroid/view/View;I)I
    move-result v5
    add-int/2addr v1, v5
    goto :L5
  :L7
  .line 18
    invoke-virtual { v7, v1 }, Landroidx/appcompat/widget/g0;->t(I)Z
    move-result v5
    if-eqz v5, :L8
  .line 19
    iget v5, v7, Landroidx/appcompat/widget/g0;->g:I
    iget v10, v7, Landroidx/appcompat/widget/g0;->m:I
    add-int/2addr v5, v10
    iput v5, v7, Landroidx/appcompat/widget/g0;->g:I
  :L8
  .line 20
    invoke-virtual { v6 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v5
    move-object v10, v5
    check-cast v10, Landroidx/appcompat/widget/g0$a;
  .line 21
    iget v5, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F
    add-float v31, v0, v5
    if-ne v12, v2, :L12
  .line 22
    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I
    if-nez v0, :L12
    cmpl-float v0, v5, v20
    if-lez v0, :L12
    if-eqz v19, :L9
  .line 23
    iget v0, v7, Landroidx/appcompat/widget/g0;->g:I
    iget v5, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
    iget v2, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
    add-int/2addr v5, v2
    add-int/2addr v0, v5
    iput v0, v7, Landroidx/appcompat/widget/g0;->g:I
    goto :L10
  :L9
  .line 24
    iget v0, v7, Landroidx/appcompat/widget/g0;->g:I
  .line 25
    iget v2, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
    add-int/2addr v2, v0
    iget v5, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
    add-int/2addr v2, v5
    invoke-static { v0, v2 }, Ljava/lang/Math;->max(II)I
    move-result v0
    iput v0, v7, Landroidx/appcompat/widget/g0;->g:I
  :L10
    if-eqz v4, :L11
    const/4 v0, 0
  .line 26
    invoke-static { v0, v0 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v2
  .line 27
    invoke-virtual { v6, v2, v2 }, Landroid/view/View;->measure(II)V
    move/from16 v34, v1
    move/from16 v32, v3
    move/from16 v36, v4
    move-object v3, v6
    const/16 v30, -2
    goto/16 :L20
  :L11
    move/from16 v34, v1
    move/from16 v32, v3
    move/from16 v36, v4
    move-object v3, v6
    const/high16 v1, 16384
    const/16 v24, 1
    const/16 v30, -2
    goto/16 :L21
  :L12
  .line 28
    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I
    if-nez v0, :L13
    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F
    cmpl-float v0, v0, v20
    if-lez v0, :L13
    const/4 v5, -2
  .line 29
    iput v5, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I
    const/4 v2, 0
    goto :L14
  :L13
    const/4 v5, -2
    const/high16 v2, -32768
  :L14
    cmpl-float v0, v31, v20
    if-nez v0, :L15
  .line 30
    iget v0, v7, Landroidx/appcompat/widget/g0;->g:I
    move/from16 v29, v0
    goto :L16
  :L15
    const/16 v29, 0
  :L16
    const/16 v33, 0
    move-object/from16 v0, p0
    move/from16 v34, v1
    move-object v1, v6
    move/from16 v35, v2
    move/from16 v2, v34
    move/from16 v32, v3
    move/from16 v3, p1
    move/from16 v36, v4
    move/from16 v4, v29
    const/4 v9, -1
    const/16 v29, -2
    move/from16 v5, p2
    move-object/from16 v29, v6
    const/high16 v9, -32768
    const/16 v30, -2
    move/from16 v6, v33
  .line 31
    invoke-virtual/range { v0 .. v6 }, Landroidx/appcompat/widget/g0;->w(Landroid/view/View;IIIII)V
    move/from16 v0, v35
    if-eq v0, v9, :L17
  .line 32
    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I
  :L17
  .line 33
    invoke-virtual/range { v29 .. v29 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v0
    if-eqz v19, :L18
  .line 34
    iget v1, v7, Landroidx/appcompat/widget/g0;->g:I
    iget v2, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
    add-int/2addr v2, v0
    iget v3, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
    add-int/2addr v2, v3
    move-object/from16 v3, v29
  .line 35
    invoke-virtual { v7, v3 }, Landroidx/appcompat/widget/g0;->r(Landroid/view/View;)I
    move-result v4
    add-int/2addr v2, v4
    add-int/2addr v1, v2
    iput v1, v7, Landroidx/appcompat/widget/g0;->g:I
    goto :L19
  :L18
    move-object/from16 v3, v29
  .line 36
    iget v1, v7, Landroidx/appcompat/widget/g0;->g:I
    add-int v2, v1, v0
  .line 37
    iget v4, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
    add-int/2addr v2, v4
    iget v4, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
    add-int/2addr v2, v4
  .line 38
    invoke-virtual { v7, v3 }, Landroidx/appcompat/widget/g0;->r(Landroid/view/View;)I
    move-result v4
    add-int/2addr v2, v4
  .line 39
    invoke-static { v1, v2 }, Ljava/lang/Math;->max(II)I
    move-result v1
    iput v1, v7, Landroidx/appcompat/widget/g0;->g:I
  :L19
    if-eqz v32, :L20
  .line 40
    invoke-static { v0, v14 }, Ljava/lang/Math;->max(II)I
    move-result v14
  :L20
    const/high16 v1, 16384
  :L21
    if-eq v13, v1, :L22
  .line 41
    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I
    const/4 v2, -1
    if-ne v0, v2, :L22
    const/4 v0, 1
    const/16 v27, 1
    goto :L23
  :L22
    const/4 v0, 0
  :L23
  .line 42
    iget v2, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    iget v4, v10, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
    add-int/2addr v2, v4
  .line 43
    invoke-virtual { v3 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v4
    add-int/2addr v4, v2
  .line 44
    invoke-virtual { v3 }, Landroid/view/View;->getMeasuredState()I
    move-result v5
    move/from16 v6, v25
    invoke-static { v6, v5 }, Landroid/view/View;->combineMeasuredStates(II)I
    move-result v25
    if-eqz v36, :L25
  .line 45
    invoke-virtual { v3 }, Landroid/view/View;->getBaseline()I
    move-result v5
    const/4 v6, -1
    if-eq v5, v6, :L25
  .line 46
    iget v6, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
    if-gez v6, :L24
    iget v6, v7, Landroidx/appcompat/widget/g0;->f:I
  :L24
    and-int/lit8 v6, v6, 112
    const/4 v9, 4
    shr-int/2addr v6, v9
    and-int/lit8 v6, v6, -2
    shr-int/lit8 v6, v6, 1
  .line 47
    aget v9, v15, v6
    invoke-static { v9, v5 }, Ljava/lang/Math;->max(II)I
    move-result v9
    aput v9, v15, v6
  .line 48
    aget v9, v28, v6
    sub-int v5, v4, v5
    invoke-static { v9, v5 }, Ljava/lang/Math;->max(II)I
    move-result v5
    aput v5, v28, v6
  :L25
    move/from16 v5, v21
  .line 49
    invoke-static { v5, v4 }, Ljava/lang/Math;->max(II)I
    move-result v21
    if-eqz v26, :L26
  .line 50
    iget v5, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I
    const/4 v6, -1
    if-ne v5, v6, :L26
    const/16 v26, 1
    goto :L27
  :L26
    const/16 v26, 0
  :L27
  .line 51
    iget v5, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F
    cmpl-float v5, v5, v20
    if-lez v5, :L30
    if-eqz v0, :L28
    goto :L29
  :L28
    move v2, v4
  :L29
    move/from16 v10, v23
  .line 52
    invoke-static { v10, v2 }, Ljava/lang/Math;->max(II)I
    move-result v23
    goto :L33
  :L30
    move/from16 v10, v23
    if-eqz v0, :L31
    goto :L32
  :L31
    move v2, v4
  :L32
    move/from16 v4, v22
  .line 53
    invoke-static { v4, v2 }, Ljava/lang/Math;->max(II)I
    move-result v22
    move/from16 v23, v10
  :L33
    move/from16 v10, v34
  .line 54
    invoke-virtual { v7, v3, v10 }, Landroidx/appcompat/widget/g0;->p(Landroid/view/View;I)I
    move-result v0
    add-int/2addr v0, v10
    move v2, v0
    move/from16 v0, v31
  :L34
    add-int/lit8 v2, v2, 1
    move/from16 v9, p2
    move v1, v2
    move-object/from16 v6, v28
    move/from16 v3, v32
    move/from16 v4, v36
    const/high16 v2, 16384
    const/4 v5, -1
    const/4 v10, 0
    goto/16 :L4
  :L35
    move/from16 v32, v3
    move/from16 v36, v4
    move/from16 v2, v21
    move/from16 v4, v22
    move/from16 v10, v23
    move/from16 v6, v25
    const/high16 v1, 16384
    const/high16 v9, -32768
    const/16 v30, -2
  .line 55
    iget v3, v7, Landroidx/appcompat/widget/g0;->g:I
    if-lez v3, :L36
    invoke-virtual { v7, v11 }, Landroidx/appcompat/widget/g0;->t(I)Z
    move-result v3
    if-eqz v3, :L36
  .line 56
    iget v3, v7, Landroidx/appcompat/widget/g0;->g:I
    iget v1, v7, Landroidx/appcompat/widget/g0;->m:I
    add-int/2addr v3, v1
    iput v3, v7, Landroidx/appcompat/widget/g0;->g:I
  :L36
  .line 57
    aget v1, v15, v18
    const/4 v3, -1
    if-ne v1, v3, :L38
    const/4 v1, 0
    aget v5, v15, v1
    if-ne v5, v3, :L38
    aget v1, v15, v17
    if-ne v1, v3, :L38
    aget v1, v15, v16
    if-eq v1, v3, :L37
    goto :L38
  :L37
    move v1, v2
    move/from16 v23, v6
    goto :L39
  :L38
  .line 58
    aget v1, v15, v16
    const/4 v3, 0
    aget v5, v15, v3
    aget v9, v15, v18
    aget v3, v15, v17
  .line 59
    invoke-static { v9, v3 }, Ljava/lang/Math;->max(II)I
    move-result v3
  .line 60
    invoke-static { v5, v3 }, Ljava/lang/Math;->max(II)I
    move-result v3
  .line 61
    invoke-static { v1, v3 }, Ljava/lang/Math;->max(II)I
    move-result v1
  .line 62
    aget v3, v28, v16
    const/4 v5, 0
    aget v9, v28, v5
    aget v5, v28, v18
    move/from16 v23, v6
    aget v6, v28, v17
  .line 63
    invoke-static { v5, v6 }, Ljava/lang/Math;->max(II)I
    move-result v5
  .line 64
    invoke-static { v9, v5 }, Ljava/lang/Math;->max(II)I
    move-result v5
  .line 65
    invoke-static { v3, v5 }, Ljava/lang/Math;->max(II)I
    move-result v3
    add-int/2addr v1, v3
  .line 66
    invoke-static { v2, v1 }, Ljava/lang/Math;->max(II)I
    move-result v1
  :L39
    if-eqz v32, :L47
    const/high16 v2, -32768
    if-eq v12, v2, :L40
    if-nez v12, :L47
  :L40
    const/4 v2, 0
  .line 67
    iput v2, v7, Landroidx/appcompat/widget/g0;->g:I
    const/4 v2, 0
  :L41
    if-ge v2, v11, :L47
  .line 68
    invoke-virtual { v7, v2 }, Landroidx/appcompat/widget/g0;->s(I)Landroid/view/View;
    move-result-object v3
    if-nez v3, :L42
  .line 69
    iget v3, v7, Landroidx/appcompat/widget/g0;->g:I
    invoke-virtual { v7, v2 }, Landroidx/appcompat/widget/g0;->y(I)I
    move-result v5
    add-int/2addr v3, v5
    iput v3, v7, Landroidx/appcompat/widget/g0;->g:I
    goto :L43
  :L42
  .line 70
    invoke-virtual { v3 }, Landroid/view/View;->getVisibility()I
    move-result v5
    const/16 v6, 8
    if-ne v5, v6, :L44
  .line 71
    invoke-virtual { v7, v3, v2 }, Landroidx/appcompat/widget/g0;->p(Landroid/view/View;I)I
    move-result v3
    add-int/2addr v2, v3
  :L43
    move/from16 v22, v1
    goto :L46
  :L44
  .line 72
    invoke-virtual { v3 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v5
    check-cast v5, Landroidx/appcompat/widget/g0$a;
    if-eqz v19, :L45
  .line 73
    iget v6, v7, Landroidx/appcompat/widget/g0;->g:I
    iget v9, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
    add-int/2addr v9, v14
    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
    add-int/2addr v9, v5
  .line 74
    invoke-virtual { v7, v3 }, Landroidx/appcompat/widget/g0;->r(Landroid/view/View;)I
    move-result v3
    add-int/2addr v9, v3
    add-int/2addr v6, v9
    iput v6, v7, Landroidx/appcompat/widget/g0;->g:I
    goto :L43
  :L45
  .line 75
    iget v6, v7, Landroidx/appcompat/widget/g0;->g:I
    add-int v9, v6, v14
    move/from16 v22, v1
  .line 76
    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
    add-int/2addr v9, v1
    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
    add-int/2addr v9, v1
  .line 77
    invoke-virtual { v7, v3 }, Landroidx/appcompat/widget/g0;->r(Landroid/view/View;)I
    move-result v1
    add-int/2addr v9, v1
  .line 78
    invoke-static { v6, v9 }, Ljava/lang/Math;->max(II)I
    move-result v1
    iput v1, v7, Landroidx/appcompat/widget/g0;->g:I
  :L46
    add-int/lit8 v2, v2, 1
    move/from16 v1, v22
    goto :L41
  :L47
    move/from16 v22, v1
  .line 79
    iget v1, v7, Landroidx/appcompat/widget/g0;->g:I
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v2
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingRight()I
    move-result v3
    add-int/2addr v2, v3
    add-int/2addr v1, v2
    iput v1, v7, Landroidx/appcompat/widget/g0;->g:I
  .line 80
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I
    move-result v2
    invoke-static { v1, v2 }, Ljava/lang/Math;->max(II)I
    move-result v1
    const/4 v2, 0
  .line 81
    invoke-static { v1, v8, v2 }, Landroid/view/View;->resolveSizeAndState(III)I
    move-result v1
    const v2, 16777215
    and-int/2addr v2, v1
  .line 82
    iget v3, v7, Landroidx/appcompat/widget/g0;->g:I
    sub-int/2addr v2, v3
    if-nez v24, :L53
    if-eqz v2, :L48
    cmpl-float v5, v0, v20
    if-lez v5, :L48
    goto :L53
  :L48
  .line 83
    invoke-static { v4, v10 }, Ljava/lang/Math;->max(II)I
    move-result v0
    if-eqz v32, :L52
    const/high16 v2, 16384
    if-eq v12, v2, :L52
    const/4 v10, 0
  :L49
    if-ge v10, v11, :L52
  .line 84
    invoke-virtual { v7, v10 }, Landroidx/appcompat/widget/g0;->s(I)Landroid/view/View;
    move-result-object v2
    if-eqz v2, :L51
  .line 85
    invoke-virtual { v2 }, Landroid/view/View;->getVisibility()I
    move-result v4
    const/16 v5, 8
    if-ne v4, v5, :L50
    goto :L51
  :L50
  .line 86
    invoke-virtual { v2 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v4
    check-cast v4, Landroidx/appcompat/widget/g0$a;
  .line 87
    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F
    cmpl-float v4, v4, v20
    if-lez v4, :L51
    const/high16 v4, 16384
  .line 88
    invoke-static { v14, v4 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v5
  .line 89
    invoke-virtual { v2 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v6
    invoke-static { v6, v4 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v6
  .line 90
    invoke-virtual { v2, v5, v6 }, Landroid/view/View;->measure(II)V
  :L51
    add-int/lit8 v10, v10, 1
    goto :L49
  :L52
    move/from16 v2, p2
    move/from16 v25, v11
    move/from16 v3, v22
    goto/16 :L83
  :L53
  .line 91
    iget v5, v7, Landroidx/appcompat/widget/g0;->h:F
    cmpl-float v6, v5, v20
    if-lez v6, :L54
    move v0, v5
  :L54
    const/4 v5, -1
  .line 92
    aput v5, v15, v16
    aput v5, v15, v17
    aput v5, v15, v18
    const/4 v6, 0
    aput v5, v15, v6
  .line 93
    aput v5, v28, v16
    aput v5, v28, v17
    aput v5, v28, v18
    aput v5, v28, v6
  .line 94
    iput v6, v7, Landroidx/appcompat/widget/g0;->g:I
    move v6, v4
    move/from16 v9, v23
    const/4 v4, -1
    const/4 v10, 0
  :L55
    if-ge v10, v11, :L79
  .line 95
    invoke-virtual { v7, v10 }, Landroidx/appcompat/widget/g0;->s(I)Landroid/view/View;
    move-result-object v14
    if-eqz v14, :L77
  .line 96
    invoke-virtual { v14 }, Landroid/view/View;->getVisibility()I
    move-result v5
    const/16 v3, 8
    if-ne v5, v3, :L56
    goto/16 :L77
  :L56
  .line 97
    invoke-virtual { v14 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v5
    check-cast v5, Landroidx/appcompat/widget/g0$a;
  .line 98
    iget v3, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F
    cmpl-float v23, v3, v20
    if-lez v23, :L64
    int-to-float v8, v2
    mul-float v8, v8, v3
    div-float/2addr v8, v0
    float-to-int v8, v8
    sub-float/2addr v0, v3
    sub-int/2addr v2, v8
  .line 99
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result v3
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingBottom()I
    move-result v23
    add-int v3, v3, v23
    move/from16 v23, v0
    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    add-int/2addr v3, v0
    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
    add-int/2addr v3, v0
    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I
    move/from16 v24, v2
    move/from16 v25, v11
    const/4 v11, -1
    move/from16 v2, p2
  .line 100
    invoke-static { v2, v3, v0 }, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I
    move-result v0
  .line 101
    iget v3, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I
    if-nez v3, :L60
    const/high16 v3, 16384
    if-eq v12, v3, :L57
    goto :L61
  :L57
    if-lez v8, :L58
    goto :L59
  :L58
    const/4 v8, 0
  :L59
  .line 102
    invoke-static { v8, v3 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v8
    invoke-virtual { v14, v8, v0 }, Landroid/view/View;->measure(II)V
    goto :L63
  :L60
    const/high16 v3, 16384
  :L61
  .line 103
    invoke-virtual { v14 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v29
    add-int v8, v29, v8
    if-gez v8, :L62
    const/4 v8, 0
  :L62
  .line 104
    invoke-static { v8, v3 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v8
  .line 105
    invoke-virtual { v14, v8, v0 }, Landroid/view/View;->measure(II)V
  :L63
  .line 106
    invoke-virtual { v14 }, Landroid/view/View;->getMeasuredState()I
    move-result v0
    const/high16 v3, -256
    and-int/2addr v0, v3
  .line 107
    invoke-static { v9, v0 }, Landroid/view/View;->combineMeasuredStates(II)I
    move-result v9
    move/from16 v0, v23
    move/from16 v3, v24
    goto :L65
  :L64
    move v3, v2
    move/from16 v25, v11
    const/4 v11, -1
    move/from16 v2, p2
  :L65
    if-eqz v19, :L66
  .line 108
    iget v8, v7, Landroidx/appcompat/widget/g0;->g:I
    invoke-virtual { v14 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v23
    iget v11, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
    add-int v23, v23, v11
    iget v11, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
    add-int v23, v23, v11
  .line 109
    invoke-virtual { v7, v14 }, Landroidx/appcompat/widget/g0;->r(Landroid/view/View;)I
    move-result v11
    add-int v23, v23, v11
    add-int v8, v8, v23
    iput v8, v7, Landroidx/appcompat/widget/g0;->g:I
    move/from16 v23, v0
    goto :L67
  :L66
  .line 110
    iget v8, v7, Landroidx/appcompat/widget/g0;->g:I
  .line 111
    invoke-virtual { v14 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v11
    add-int/2addr v11, v8
    move/from16 v23, v0
    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
    add-int/2addr v11, v0
    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
    add-int/2addr v11, v0
  .line 112
    invoke-virtual { v7, v14 }, Landroidx/appcompat/widget/g0;->r(Landroid/view/View;)I
    move-result v0
    add-int/2addr v11, v0
  .line 113
    invoke-static { v8, v11 }, Ljava/lang/Math;->max(II)I
    move-result v0
    iput v0, v7, Landroidx/appcompat/widget/g0;->g:I
  :L67
    const/high16 v0, 16384
    if-eq v13, v0, :L68
  .line 114
    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I
    const/4 v8, -1
    if-ne v0, v8, :L68
    const/4 v0, 1
    goto :L69
  :L68
    const/4 v0, 0
  :L69
  .line 115
    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    iget v11, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
    add-int/2addr v8, v11
  .line 116
    invoke-virtual { v14 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v11
    add-int/2addr v11, v8
  .line 117
    invoke-static { v4, v11 }, Ljava/lang/Math;->max(II)I
    move-result v4
    if-eqz v0, :L70
    goto :L71
  :L70
    move v8, v11
  :L71
  .line 118
    invoke-static { v6, v8 }, Ljava/lang/Math;->max(II)I
    move-result v0
    if-eqz v26, :L72
  .line 119
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I
    const/4 v8, -1
    if-ne v6, v8, :L73
    const/4 v6, 1
    goto :L74
  :L72
    const/4 v8, -1
  :L73
    const/4 v6, 0
  :L74
    if-eqz v36, :L76
  .line 120
    invoke-virtual { v14 }, Landroid/view/View;->getBaseline()I
    move-result v14
    if-eq v14, v8, :L76
  .line 121
    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
    if-gez v5, :L75
    iget v5, v7, Landroidx/appcompat/widget/g0;->f:I
  :L75
    and-int/lit8 v5, v5, 112
    const/4 v8, 4
    shr-int/2addr v5, v8
    and-int/lit8 v5, v5, -2
    shr-int/lit8 v5, v5, 1
  .line 122
    aget v8, v15, v5
    invoke-static { v8, v14 }, Ljava/lang/Math;->max(II)I
    move-result v8
    aput v8, v15, v5
  .line 123
    aget v8, v28, v5
    sub-int/2addr v11, v14
    invoke-static { v8, v11 }, Ljava/lang/Math;->max(II)I
    move-result v8
    aput v8, v28, v5
  :L76
    move/from16 v26, v6
    move v6, v0
    move/from16 v0, v23
    goto :L78
  :L77
    move v3, v2
    move/from16 v25, v11
    move/from16 v2, p2
  :L78
    add-int/lit8 v10, v10, 1
    move/from16 v8, p1
    move v2, v3
    move/from16 v11, v25
    const/4 v5, -1
    goto/16 :L55
  :L79
    move/from16 v2, p2
    move/from16 v25, v11
  .line 124
    iget v0, v7, Landroidx/appcompat/widget/g0;->g:I
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v3
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingRight()I
    move-result v5
    add-int/2addr v3, v5
    add-int/2addr v0, v3
    iput v0, v7, Landroidx/appcompat/widget/g0;->g:I
  .line 125
    aget v0, v15, v18
    const/4 v3, -1
    if-ne v0, v3, :L81
    const/4 v0, 0
    aget v5, v15, v0
    if-ne v5, v3, :L81
    aget v0, v15, v17
    if-ne v0, v3, :L81
    aget v0, v15, v16
    if-eq v0, v3, :L80
    goto :L81
  :L80
    move v0, v4
    goto :L82
  :L81
  .line 126
    aget v0, v15, v16
    const/4 v3, 0
    aget v5, v15, v3
    aget v8, v15, v18
    aget v10, v15, v17
  .line 127
    invoke-static { v8, v10 }, Ljava/lang/Math;->max(II)I
    move-result v8
  .line 128
    invoke-static { v5, v8 }, Ljava/lang/Math;->max(II)I
    move-result v5
  .line 129
    invoke-static { v0, v5 }, Ljava/lang/Math;->max(II)I
    move-result v0
  .line 130
    aget v5, v28, v16
    aget v3, v28, v3
    aget v8, v28, v18
    aget v10, v28, v17
  .line 131
    invoke-static { v8, v10 }, Ljava/lang/Math;->max(II)I
    move-result v8
  .line 132
    invoke-static { v3, v8 }, Ljava/lang/Math;->max(II)I
    move-result v3
  .line 133
    invoke-static { v5, v3 }, Ljava/lang/Math;->max(II)I
    move-result v3
    add-int/2addr v0, v3
  .line 134
    invoke-static { v4, v0 }, Ljava/lang/Math;->max(II)I
    move-result v0
  :L82
    move v3, v0
    move v0, v6
    move/from16 v23, v9
  :L83
    if-nez v26, :L84
    const/high16 v4, 16384
    if-eq v13, v4, :L84
    goto :L85
  :L84
    move v0, v3
  :L85
  .line 135
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result v3
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingBottom()I
    move-result v4
    add-int/2addr v3, v4
    add-int/2addr v0, v3
  .line 136
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I
    move-result v3
    invoke-static { v0, v3 }, Ljava/lang/Math;->max(II)I
    move-result v0
    const/high16 v3, -256
    and-int v3, v23, v3
    or-int/2addr v1, v3
    shl-int/lit8 v3, v23, 16
  .line 137
    invoke-static { v0, v2, v3 }, Landroid/view/View;->resolveSizeAndState(III)I
    move-result v0
  .line 138
    invoke-virtual { v7, v1, v0 }, Landroid/view/ViewGroup;->setMeasuredDimension(II)V
    if-eqz v27, :L86
    move/from16 v0, p1
    move/from16 v1, v25
  .line 139
    invoke-direct { v7, v1, v0 }, Landroidx/appcompat/widget/g0;->k(II)V
  :L86
    return-void
.end method

.method y(I)I
  .registers 2
    const/4 p1, 0
    return p1
.end method

.method z(II)V
  .registers 36
    move-object/from16 v7, p0
    move/from16 v8, p1
    move/from16 v9, p2
    const/4 v10, 0
  .line 1
    iput v10, v7, Landroidx/appcompat/widget/g0;->g:I
  .line 2
    invoke-virtual/range { p0 .. p0 }, Landroidx/appcompat/widget/g0;->getVirtualChildCount()I
    move-result v11
  .line 3
    invoke-static/range { p1 .. p1 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result v12
  .line 4
    invoke-static/range { p2 .. p2 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result v13
  .line 5
    iget v14, v7, Landroidx/appcompat/widget/g0;->c:I
  .line 6
    iget-boolean v15, v7, Landroidx/appcompat/widget/g0;->i:Z
    const/16 v16, 0
    const/16 v17, 1
    const/4 v0, 0
    const/4 v1, 0
    const/4 v2, 0
    const/4 v3, 0
    const/4 v4, 0
    const/4 v5, 0
    const/4 v6, 0
    const/16 v18, 0
    const/16 v19, 1
    const/16 v20, 0
  :L0
    const/16 v10, 8
    move/from16 v22, v4
    if-ge v6, v11, :L26
  .line 7
    invoke-virtual { v7, v6 }, Landroidx/appcompat/widget/g0;->s(I)Landroid/view/View;
    move-result-object v4
    if-nez v4, :L1
  .line 8
    iget v4, v7, Landroidx/appcompat/widget/g0;->g:I
    invoke-virtual { v7, v6 }, Landroidx/appcompat/widget/g0;->y(I)I
    move-result v10
    add-int/2addr v4, v10
    iput v4, v7, Landroidx/appcompat/widget/g0;->g:I
    move/from16 v26, v11
    move/from16 v24, v13
    move/from16 v4, v22
    goto/16 :L25
  :L1
    move/from16 v24, v1
  .line 9
    invoke-virtual { v4 }, Landroid/view/View;->getVisibility()I
    move-result v1
    if-ne v1, v10, :L2
  .line 10
    invoke-virtual { v7, v4, v6 }, Landroidx/appcompat/widget/g0;->p(Landroid/view/View;I)I
    move-result v1
    add-int/2addr v6, v1
    move/from16 v26, v11
    move/from16 v4, v22
    move/from16 v1, v24
    move/from16 v24, v13
    goto/16 :L25
  :L2
  .line 11
    invoke-virtual { v7, v6 }, Landroidx/appcompat/widget/g0;->t(I)Z
    move-result v1
    if-eqz v1, :L3
  .line 12
    iget v1, v7, Landroidx/appcompat/widget/g0;->g:I
    iget v10, v7, Landroidx/appcompat/widget/g0;->n:I
    add-int/2addr v1, v10
    iput v1, v7, Landroidx/appcompat/widget/g0;->g:I
  :L3
  .line 13
    invoke-virtual { v4 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v1
    move-object v10, v1
    check-cast v10, Landroidx/appcompat/widget/g0$a;
  .line 14
    iget v1, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F
    add-float v25, v0, v1
    const/high16 v0, 16384
    if-ne v13, v0, :L4
  .line 15
    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I
    if-nez v0, :L4
    cmpl-float v0, v1, v16
    if-lez v0, :L4
  .line 16
    iget v0, v7, Landroidx/appcompat/widget/g0;->g:I
  .line 17
    iget v1, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    add-int/2addr v1, v0
    move/from16 v26, v2
    iget v2, v10, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
    add-int/2addr v1, v2
    invoke-static { v0, v1 }, Ljava/lang/Math;->max(II)I
    move-result v0
    iput v0, v7, Landroidx/appcompat/widget/g0;->g:I
    move v0, v3
    move-object v3, v4
    move/from16 v31, v5
    move/from16 v8, v24
    move/from16 v29, v26
    const/16 v18, 1
    move/from16 v26, v11
    move/from16 v24, v13
    move/from16 v13, v22
    move v11, v6
    goto/16 :L11
  :L4
    move/from16 v26, v2
  .line 18
    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I
    if-nez v0, :L5
    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F
    cmpl-float v0, v0, v16
    if-lez v0, :L5
    const/4 v0, -2
  .line 19
    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I
    const/4 v2, 0
    goto :L6
  :L5
    const/high16 v2, -32768
  :L6
    const/16 v27, 0
    cmpl-float v0, v25, v16
    if-nez v0, :L7
  .line 20
    iget v0, v7, Landroidx/appcompat/widget/g0;->g:I
    move/from16 v23, v0
    goto :L8
  :L7
    const/16 v23, 0
  :L8
    const/high16 v28, 16384
    move-object/from16 v0, p0
    move/from16 v8, v24
    move-object v1, v4
    move/from16 v30, v2
    move/from16 v29, v26
    move v2, v6
    move v9, v3
    move/from16 v3, p1
    move/from16 v26, v11
    move/from16 v24, v13
    move/from16 v13, v22
    const/high16 v11, 16384
    move-object/from16 v22, v4
    move/from16 v4, v27
    move/from16 v31, v5
    move/from16 v5, p2
    move v11, v6
    move/from16 v6, v23
  .line 21
    invoke-virtual/range { v0 .. v6 }, Landroidx/appcompat/widget/g0;->w(Landroid/view/View;IIIII)V
    move/from16 v0, v30
    const/high16 v1, -32768
    if-eq v0, v1, :L9
  .line 22
    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I
  :L9
  .line 23
    invoke-virtual/range { v22 .. v22 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v0
  .line 24
    iget v1, v7, Landroidx/appcompat/widget/g0;->g:I
    add-int v2, v1, v0
  .line 25
    iget v3, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    add-int/2addr v2, v3
    iget v3, v10, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
    add-int/2addr v2, v3
    move-object/from16 v3, v22
  .line 26
    invoke-virtual { v7, v3 }, Landroidx/appcompat/widget/g0;->r(Landroid/view/View;)I
    move-result v4
    add-int/2addr v2, v4
  .line 27
    invoke-static { v1, v2 }, Ljava/lang/Math;->max(II)I
    move-result v1
    iput v1, v7, Landroidx/appcompat/widget/g0;->g:I
    if-eqz v15, :L10
  .line 28
    invoke-static { v0, v9 }, Ljava/lang/Math;->max(II)I
    move-result v0
    goto :L11
  :L10
    move v0, v9
  :L11
    if-ltz v14, :L12
    add-int/lit8 v6, v11, 1
    if-ne v14, v6, :L12
  .line 29
    iget v1, v7, Landroidx/appcompat/widget/g0;->g:I
    iput v1, v7, Landroidx/appcompat/widget/g0;->d:I
  :L12
    if-ge v11, v14, :L14
  .line 30
    iget v1, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F
    cmpl-float v1, v1, v16
    if-gtz v1, :L13
    goto :L14
  :L13
  .line 31
    new-instance v0, Ljava/lang/RuntimeException;
    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex."
    invoke-direct { v0, v1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw v0
  :L14
    const/high16 v1, 16384
    if-eq v12, v1, :L15
  .line 32
    iget v1, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I
    const/4 v2, -1
    if-ne v1, v2, :L15
    const/4 v1, 1
    const/16 v20, 1
    goto :L16
  :L15
    const/4 v1, 0
  :L16
  .line 33
    iget v2, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
    iget v4, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
    add-int/2addr v2, v4
  .line 34
    invoke-virtual { v3 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v4
    add-int/2addr v4, v2
    move/from16 v5, v29
  .line 35
    invoke-static { v5, v4 }, Ljava/lang/Math;->max(II)I
    move-result v5
  .line 36
    invoke-virtual { v3 }, Landroid/view/View;->getMeasuredState()I
    move-result v6
  .line 37
    invoke-static { v8, v6 }, Landroid/view/View;->combineMeasuredStates(II)I
    move-result v6
    if-eqz v19, :L17
  .line 38
    iget v8, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I
    const/4 v9, -1
    if-ne v8, v9, :L17
    const/16 v19, 1
    goto :L18
  :L17
    const/16 v19, 0
  :L18
  .line 39
    iget v8, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F
    cmpl-float v8, v8, v16
    if-lez v8, :L21
    if-eqz v1, :L19
    goto :L20
  :L19
    move v2, v4
  :L20
  .line 40
    invoke-static { v13, v2 }, Ljava/lang/Math;->max(II)I
    move-result v4
    move/from16 v1, v31
    goto :L24
  :L21
    if-eqz v1, :L22
    goto :L23
  :L22
    move v2, v4
  :L23
    move/from16 v1, v31
  .line 41
    invoke-static { v1, v2 }, Ljava/lang/Math;->max(II)I
    move-result v1
    move v4, v13
  :L24
  .line 42
    invoke-virtual { v7, v3, v11 }, Landroidx/appcompat/widget/g0;->p(Landroid/view/View;I)I
    move-result v2
    add-int/2addr v2, v11
    move v3, v0
    move/from16 v0, v25
    move/from16 v32, v5
    move v5, v1
    move v1, v6
    move v6, v2
    move/from16 v2, v32
  :L25
    add-int/lit8 v6, v6, 1
    move/from16 v8, p1
    move/from16 v9, p2
    move/from16 v13, v24
    move/from16 v11, v26
    goto/16 :L0
  :L26
    move v8, v1
    move v9, v3
    move v1, v5
    move/from16 v26, v11
    move/from16 v24, v13
    move/from16 v13, v22
    move v5, v2
  .line 43
    iget v2, v7, Landroidx/appcompat/widget/g0;->g:I
    if-lez v2, :L27
    move/from16 v2, v26
    invoke-virtual { v7, v2 }, Landroidx/appcompat/widget/g0;->t(I)Z
    move-result v3
    if-eqz v3, :L28
  .line 44
    iget v3, v7, Landroidx/appcompat/widget/g0;->g:I
    iget v4, v7, Landroidx/appcompat/widget/g0;->n:I
    add-int/2addr v3, v4
    iput v3, v7, Landroidx/appcompat/widget/g0;->g:I
    goto :L28
  :L27
    move/from16 v2, v26
  :L28
    move/from16 v3, v24
    if-eqz v15, :L34
    const/high16 v4, -32768
    if-eq v3, v4, :L29
    if-nez v3, :L34
  :L29
    const/4 v4, 0
  .line 45
    iput v4, v7, Landroidx/appcompat/widget/g0;->g:I
    const/4 v4, 0
  :L30
    if-ge v4, v2, :L34
  .line 46
    invoke-virtual { v7, v4 }, Landroidx/appcompat/widget/g0;->s(I)Landroid/view/View;
    move-result-object v6
    if-nez v6, :L31
  .line 47
    iget v6, v7, Landroidx/appcompat/widget/g0;->g:I
    invoke-virtual { v7, v4 }, Landroidx/appcompat/widget/g0;->y(I)I
    move-result v11
    add-int/2addr v6, v11
    iput v6, v7, Landroidx/appcompat/widget/g0;->g:I
    goto :L33
  :L31
  .line 48
    invoke-virtual { v6 }, Landroid/view/View;->getVisibility()I
    move-result v11
    if-ne v11, v10, :L32
  .line 49
    invoke-virtual { v7, v6, v4 }, Landroidx/appcompat/widget/g0;->p(Landroid/view/View;I)I
    move-result v6
    add-int/2addr v4, v6
    goto :L33
  :L32
  .line 50
    invoke-virtual { v6 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v11
    check-cast v11, Landroidx/appcompat/widget/g0$a;
  .line 51
    iget v14, v7, Landroidx/appcompat/widget/g0;->g:I
    add-int v21, v14, v9
  .line 52
    iget v10, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    add-int v21, v21, v10
    iget v10, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
    add-int v21, v21, v10
  .line 53
    invoke-virtual { v7, v6 }, Landroidx/appcompat/widget/g0;->r(Landroid/view/View;)I
    move-result v6
    add-int v6, v21, v6
  .line 54
    invoke-static { v14, v6 }, Ljava/lang/Math;->max(II)I
    move-result v6
    iput v6, v7, Landroidx/appcompat/widget/g0;->g:I
  :L33
    add-int/lit8 v4, v4, 1
    const/16 v10, 8
    goto :L30
  :L34
  .line 55
    iget v4, v7, Landroidx/appcompat/widget/g0;->g:I
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result v6
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingBottom()I
    move-result v10
    add-int/2addr v6, v10
    add-int/2addr v4, v6
    iput v4, v7, Landroidx/appcompat/widget/g0;->g:I
  .line 56
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I
    move-result v6
    invoke-static { v4, v6 }, Ljava/lang/Math;->max(II)I
    move-result v4
    move/from16 v6, p2
    move v10, v9
    const/4 v9, 0
  .line 57
    invoke-static { v4, v6, v9 }, Landroid/view/View;->resolveSizeAndState(III)I
    move-result v4
    const v9, 16777215
    and-int/2addr v9, v4
  .line 58
    iget v11, v7, Landroidx/appcompat/widget/g0;->g:I
    sub-int/2addr v9, v11
    if-nez v18, :L40
    if-eqz v9, :L35
    cmpl-float v11, v0, v16
    if-lez v11, :L35
    goto :L40
  :L35
  .line 59
    invoke-static { v1, v13 }, Ljava/lang/Math;->max(II)I
    move-result v0
    if-eqz v15, :L39
    const/high16 v1, 16384
    if-eq v3, v1, :L39
    const/4 v1, 0
  :L36
    if-ge v1, v2, :L39
  .line 60
    invoke-virtual { v7, v1 }, Landroidx/appcompat/widget/g0;->s(I)Landroid/view/View;
    move-result-object v3
    if-eqz v3, :L38
  .line 61
    invoke-virtual { v3 }, Landroid/view/View;->getVisibility()I
    move-result v9
    const/16 v11, 8
    if-ne v9, v11, :L37
    goto :L38
  :L37
  .line 62
    invoke-virtual { v3 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v9
    check-cast v9, Landroidx/appcompat/widget/g0$a;
  .line 63
    iget v9, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F
    cmpl-float v9, v9, v16
    if-lez v9, :L38
  .line 64
    invoke-virtual { v3 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v9
    const/high16 v11, 16384
    invoke-static { v9, v11 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v9
  .line 65
    invoke-static { v10, v11 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v13
  .line 66
    invoke-virtual { v3, v9, v13 }, Landroid/view/View;->measure(II)V
  :L38
    add-int/lit8 v1, v1, 1
    goto :L36
  :L39
    move/from16 v11, p1
    move v1, v8
    goto/16 :L62
  :L40
  .line 67
    iget v10, v7, Landroidx/appcompat/widget/g0;->h:F
    cmpl-float v11, v10, v16
    if-lez v11, :L41
    move v0, v10
  :L41
    const/4 v10, 0
  .line 68
    iput v10, v7, Landroidx/appcompat/widget/g0;->g:I
    move v11, v9
    move v9, v1
    move v1, v8
    const/4 v8, 0
  :L42
    if-ge v8, v2, :L61
  .line 69
    invoke-virtual { v7, v8 }, Landroidx/appcompat/widget/g0;->s(I)Landroid/view/View;
    move-result-object v13
  .line 70
    invoke-virtual { v13 }, Landroid/view/View;->getVisibility()I
    move-result v14
    const/16 v15, 8
    if-ne v14, v15, :L43
    move/from16 v21, v11
    move/from16 v11, p1
    goto/16 :L60
  :L43
  .line 71
    invoke-virtual { v13 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v14
    check-cast v14, Landroidx/appcompat/widget/g0$a;
  .line 72
    iget v10, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F
    cmpl-float v18, v10, v16
    if-lez v18, :L51
    int-to-float v15, v11
    mul-float v15, v15, v10
    div-float/2addr v15, v0
    float-to-int v15, v15
    sub-float/2addr v0, v10
    sub-int/2addr v11, v15
  .line 73
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v10
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingRight()I
    move-result v18
    add-int v10, v10, v18
    move/from16 v18, v0
    iget v0, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
    add-int/2addr v10, v0
    iget v0, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
    add-int/2addr v10, v0
    iget v0, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I
    move/from16 v21, v11
    move/from16 v11, p1
  .line 74
    invoke-static { v11, v10, v0 }, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I
    move-result v0
  .line 75
    iget v10, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I
    if-nez v10, :L47
    const/high16 v10, 16384
    if-eq v3, v10, :L44
    goto :L48
  :L44
    if-lez v15, :L45
    goto :L46
  :L45
    const/4 v15, 0
  :L46
  .line 76
    invoke-static { v15, v10 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v15
  .line 77
    invoke-virtual { v13, v0, v15 }, Landroid/view/View;->measure(II)V
    goto :L50
  :L47
    const/high16 v10, 16384
  :L48
  .line 78
    invoke-virtual { v13 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v23
    add-int v15, v23, v15
    if-gez v15, :L49
    const/4 v15, 0
  :L49
  .line 79
    invoke-static { v15, v10 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v15
  .line 80
    invoke-virtual { v13, v0, v15 }, Landroid/view/View;->measure(II)V
  :L50
  .line 81
    invoke-virtual { v13 }, Landroid/view/View;->getMeasuredState()I
    move-result v0
    and-int/lit16 v0, v0, -256
  .line 82
    invoke-static { v1, v0 }, Landroid/view/View;->combineMeasuredStates(II)I
    move-result v1
    move/from16 v0, v18
    goto :L52
  :L51
    move v10, v11
    move/from16 v11, p1
    move/from16 v21, v10
  :L52
  .line 83
    iget v10, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
    add-int/2addr v10, v15
  .line 84
    invoke-virtual { v13 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v15
    add-int/2addr v15, v10
  .line 85
    invoke-static { v5, v15 }, Ljava/lang/Math;->max(II)I
    move-result v5
    move/from16 v18, v0
    const/high16 v0, 16384
    if-eq v12, v0, :L53
  .line 86
    iget v0, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I
    move/from16 v23, v1
    const/4 v1, -1
    if-ne v0, v1, :L54
    const/4 v0, 1
    goto :L55
  :L53
    move/from16 v23, v1
    const/4 v1, -1
  :L54
    const/4 v0, 0
  :L55
    if-eqz v0, :L56
    goto :L57
  :L56
    move v10, v15
  :L57
  .line 87
    invoke-static { v9, v10 }, Ljava/lang/Math;->max(II)I
    move-result v0
    if-eqz v19, :L58
  .line 88
    iget v9, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I
    if-ne v9, v1, :L58
    const/4 v9, 1
    goto :L59
  :L58
    const/4 v9, 0
  :L59
  .line 89
    iget v10, v7, Landroidx/appcompat/widget/g0;->g:I
  .line 90
    invoke-virtual { v13 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v15
    add-int/2addr v15, v10
    iget v1, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    add-int/2addr v15, v1
    iget v1, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
    add-int/2addr v15, v1
  .line 91
    invoke-virtual { v7, v13 }, Landroidx/appcompat/widget/g0;->r(Landroid/view/View;)I
    move-result v1
    add-int/2addr v15, v1
  .line 92
    invoke-static { v10, v15 }, Ljava/lang/Math;->max(II)I
    move-result v1
    iput v1, v7, Landroidx/appcompat/widget/g0;->g:I
    move/from16 v19, v9
    move/from16 v1, v23
    move v9, v0
    move/from16 v0, v18
  :L60
    add-int/lit8 v8, v8, 1
    move/from16 v11, v21
    const/4 v10, 0
    goto/16 :L42
  :L61
    move/from16 v11, p1
  .line 93
    iget v0, v7, Landroidx/appcompat/widget/g0;->g:I
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result v3
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingBottom()I
    move-result v8
    add-int/2addr v3, v8
    add-int/2addr v0, v3
    iput v0, v7, Landroidx/appcompat/widget/g0;->g:I
    move v0, v9
  :L62
    if-nez v19, :L63
    const/high16 v3, 16384
    if-eq v12, v3, :L63
    goto :L64
  :L63
    move v0, v5
  :L64
  .line 94
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v3
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingRight()I
    move-result v5
    add-int/2addr v3, v5
    add-int/2addr v0, v3
  .line 95
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I
    move-result v3
    invoke-static { v0, v3 }, Ljava/lang/Math;->max(II)I
    move-result v0
  .line 96
    invoke-static { v0, v11, v1 }, Landroid/view/View;->resolveSizeAndState(III)I
    move-result v0
    invoke-virtual { v7, v0, v4 }, Landroid/view/ViewGroup;->setMeasuredDimension(II)V
    if-eqz v20, :L65
  .line 97
    invoke-direct { v7, v2, v6 }, Landroidx/appcompat/widget/g0;->l(II)V
  :L65
    return-void
.end method
