.class public Landroidx/appcompat/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

.field private b:Z

.field private c:I

.field private d:I

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 11
  .line 1
    invoke-direct { p0, p1, p2 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    const/4 v0, -1
  .line 2
    iput v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->c:I
    const/4 v0, 0
  .line 3
    iput v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->d:I
  .line 4
    sget-object v0, Lc/a/j;->ButtonBarLayout:[I
    invoke-virtual { p1, p2, v0 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    move-result-object v0
  .line 5
    sget-object v3, Lc/a/j;->ButtonBarLayout:[I
    const/4 v6, 0
    const/4 v7, 0
    move-object v1, p0
    move-object v2, p1
    move-object v4, p2
    move-object v5, v0
    invoke-static/range { v1 .. v7 }, Landroidx/core/view/v;->m0(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V
  .line 6
    sget p1, Lc/a/j;->ButtonBarLayout_allowStacking:I
    const/4 p2, 1
    invoke-virtual { v0, p1, p2 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result p1
    iput-boolean p1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->b:Z
  .line 7
    invoke-virtual { v0 }, Landroid/content/res/TypedArray;->recycle()V
    return-void
.end method

.method private a(I)I
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getChildCount()I
    move-result v0
  :L0
    if-ge p1, v0, :L2
  .line 2
    invoke-virtual { p0, p1 }, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/view/View;->getVisibility()I
    move-result v1
    if-nez v1, :L1
    return p1
  :L1
    add-int/lit8 p1, p1, 1
    goto :L0
  :L2
    const/4 p1, -1
    return p1
.end method

.method private b()Z
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getOrientation()I
    move-result v0
    const/4 v1, 1
    if-ne v0, v1, :L0
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    return v1
.end method

.method private setStacked(Z)V
  .registers 3
  .line 1
    invoke-virtual { p0, p1 }, Landroid/widget/LinearLayout;->setOrientation(I)V
    if-eqz p1, :L0
    const v0, 8388613
    goto :L1
  :L0
    const/16 v0, 80
  :L1
  .line 2
    invoke-virtual { p0, v0 }, Landroid/widget/LinearLayout;->setGravity(I)V
  .line 3
    sget v0, Lc/a/f;->spacer:I
    invoke-virtual { p0, v0 }, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
    move-result-object v0
    if-eqz v0, :L4
    if-eqz p1, :L2
    const/16 p1, 8
    goto :L3
  :L2
    const/4 p1, 4
  :L3
  .line 4
    invoke-virtual { v0, p1 }, Landroid/view/View;->setVisibility(I)V
  :L4
  .line 5
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getChildCount()I
    move-result p1
    add-int/lit8 p1, p1, -2
  :L5
    if-ltz p1, :L6
  .line 6
    invoke-virtual { p0, p1 }, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v0
    invoke-virtual { p0, v0 }, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V
    add-int/lit8 p1, p1, -1
    goto :L5
  :L6
    return-void
.end method

.method public getMinimumHeight()I
  .registers 3
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->d:I
    invoke-super { p0 }, Landroid/widget/LinearLayout;->getMinimumHeight()I
    move-result v1
    invoke-static { v0, v1 }, Ljava/lang/Math;->max(II)I
    move-result v0
    return v0
.end method

.method protected onMeasure(II)V
  .registers 8
  .line 1
    invoke-static { p1 }, Landroid/view/View$MeasureSpec;->getSize(I)I
    move-result v0
  .line 2
    iget-boolean v1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->b:Z
    const/4 v2, 0
    if-eqz v1, :L1
  .line 3
    iget v1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->c:I
    if-le v0, v1, :L0
    invoke-direct { p0 }, Landroidx/appcompat/widget/ButtonBarLayout;->b()Z
    move-result v1
    if-eqz v1, :L0
  .line 4
    invoke-direct { p0, v2 }, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V
  :L0
  .line 5
    iput v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->c:I
  :L1
  .line 6
    invoke-direct { p0 }, Landroidx/appcompat/widget/ButtonBarLayout;->b()Z
    move-result v1
    const/4 v3, 1
    if-nez v1, :L2
    invoke-static { p1 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result v1
    const/high16 v4, 16384
    if-ne v1, v4, :L2
    const/high16 v1, -32768
  .line 7
    invoke-static { v0, v1 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v0
    const/4 v1, 1
    goto :L3
  :L2
    move v0, p1
    const/4 v1, 0
  :L3
  .line 8
    invoke-super { p0, v0, p2 }, Landroid/widget/LinearLayout;->onMeasure(II)V
  .line 9
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->b:Z
    if-eqz v0, :L6
    invoke-direct { p0 }, Landroidx/appcompat/widget/ButtonBarLayout;->b()Z
    move-result v0
    if-nez v0, :L6
  .line 10
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getMeasuredWidthAndState()I
    move-result v0
    const/high16 v4, -256
    and-int/2addr v0, v4
    const/high16 v4, 256
    if-ne v0, v4, :L4
    const/4 v0, 1
    goto :L5
  :L4
    const/4 v0, 0
  :L5
    if-eqz v0, :L6
  .line 11
    invoke-direct { p0, v3 }, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V
    const/4 v1, 1
  :L6
    if-eqz v1, :L7
  .line 12
    invoke-super { p0, p1, p2 }, Landroid/widget/LinearLayout;->onMeasure(II)V
  :L7
  .line 13
    invoke-direct { p0, v2 }, Landroidx/appcompat/widget/ButtonBarLayout;->a(I)I
    move-result p1
    if-ltz p1, :L10
  .line 14
    invoke-virtual { p0, p1 }, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
    move-result-object p2
  .line 15
    invoke-virtual { p2 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;
  .line 16
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getPaddingTop()I
    move-result v1
    invoke-virtual { p2 }, Landroid/view/View;->getMeasuredHeight()I
    move-result p2
    add-int/2addr v1, p2
    iget p2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    add-int/2addr v1, p2
    iget p2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
    add-int/2addr v1, p2
    add-int/2addr v1, v2
  .line 17
    invoke-direct { p0 }, Landroidx/appcompat/widget/ButtonBarLayout;->b()Z
    move-result p2
    if-eqz p2, :L9
    add-int/2addr p1, v3
  .line 18
    invoke-direct { p0, p1 }, Landroidx/appcompat/widget/ButtonBarLayout;->a(I)I
    move-result p1
    if-ltz p1, :L8
  .line 19
    invoke-virtual { p0, p1 }, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/view/View;->getPaddingTop()I
    move-result p1
    const/high16 p2, 16768
  .line 20
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v0
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F
    mul-float v0, v0, p2
    float-to-int p2, v0
    add-int/2addr p1, p2
    add-int/2addr v1, p1
  :L8
    move v2, v1
    goto :L10
  :L9
  .line 21
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getPaddingBottom()I
    move-result p1
    add-int v2, v1, p1
  :L10
  .line 22
    invoke-static { p0 }, Landroidx/core/view/v;->D(Landroid/view/View;)I
    move-result p1
    if-eq p1, v2, :L11
  .line 23
    invoke-virtual { p0, v2 }, Landroid/widget/LinearLayout;->setMinimumHeight(I)V
  :L11
    return-void
.end method

.method public setAllowStacking(Z)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->b:Z
    if-eq v0, p1, :L1
  .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->b:Z
    if-nez p1, :L0
  .line 3
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getOrientation()I
    move-result p1
    const/4 v0, 1
    if-ne p1, v0, :L0
    const/4 p1, 0
  .line 4
    invoke-direct { p0, p1 }, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V
  :L0
  .line 5
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->requestLayout()V
  :L1
    return-void
.end method
