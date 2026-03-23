.class public Lcom/google/android/material/internal/BaselineLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"

.field private b:I

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
    const/4 v0, 0
  .line 1
    invoke-direct { p0, p1, p2, v0 }, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    const/4 p1, -1
  .line 2
    iput p1, p0, Lcom/google/android/material/internal/BaselineLayout;->b:I
    return-void
.end method

.method public getBaseline()I
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/internal/BaselineLayout;->b:I
    return v0
.end method

.method protected onLayout(ZIIII)V
  .registers 12
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result p1
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result p3
    sub-int/2addr p4, p2
  .line 3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingRight()I
    move-result p2
    sub-int/2addr p4, p2
    sub-int/2addr p4, p3
  .line 4
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result p2
    const/4 p5, 0
  :L0
    if-ge p5, p1, :L5
  .line 5
    invoke-virtual { p0, p5 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v0
  .line 6
    invoke-virtual { v0 }, Landroid/view/View;->getVisibility()I
    move-result v1
    const/16 v2, 8
    if-ne v1, v2, :L1
    goto :L4
  :L1
  .line 7
    invoke-virtual { v0 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v1
  .line 8
    invoke-virtual { v0 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v2
    sub-int v3, p4, v1
  .line 9
    div-int/lit8 v3, v3, 2
    add-int/2addr v3, p3
  .line 10
    iget v4, p0, Lcom/google/android/material/internal/BaselineLayout;->b:I
    const/4 v5, -1
    if-eq v4, v5, :L2
    invoke-virtual { v0 }, Landroid/view/View;->getBaseline()I
    move-result v4
    if-eq v4, v5, :L2
  .line 11
    iget v4, p0, Lcom/google/android/material/internal/BaselineLayout;->b:I
    add-int/2addr v4, p2
    invoke-virtual { v0 }, Landroid/view/View;->getBaseline()I
    move-result v5
    sub-int/2addr v4, v5
    goto :L3
  :L2
    move v4, p2
  :L3
    add-int/2addr v1, v3
    add-int/2addr v2, v4
  .line 12
    invoke-virtual { v0, v3, v4, v1, v2 }, Landroid/view/View;->layout(IIII)V
  :L4
    add-int/lit8 p5, p5, 1
    goto :L0
  :L5
    return-void
.end method

.method protected onMeasure(II)V
  .registers 14
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v0
    const/4 v1, -1
    const/4 v2, 0
    const/4 v3, 0
    const/4 v4, 0
    const/4 v5, 0
    const/4 v6, -1
    const/4 v7, -1
  :L0
    if-ge v2, v0, :L4
  .line 2
    invoke-virtual { p0, v2 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v8
  .line 3
    invoke-virtual { v8 }, Landroid/view/View;->getVisibility()I
    move-result v9
    const/16 v10, 8
    if-ne v9, v10, :L1
    goto :L3
  :L1
  .line 4
    invoke-virtual { p0, v8, p1, p2 }, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V
  .line 5
    invoke-virtual { v8 }, Landroid/view/View;->getBaseline()I
    move-result v9
    if-eq v9, v1, :L2
  .line 6
    invoke-static { v6, v9 }, Ljava/lang/Math;->max(II)I
    move-result v6
  .line 7
    invoke-virtual { v8 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v10
    sub-int/2addr v10, v9
    invoke-static { v7, v10 }, Ljava/lang/Math;->max(II)I
    move-result v7
  :L2
  .line 8
    invoke-virtual { v8 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v9
    invoke-static { v4, v9 }, Ljava/lang/Math;->max(II)I
    move-result v4
  .line 9
    invoke-virtual { v8 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v9
    invoke-static { v3, v9 }, Ljava/lang/Math;->max(II)I
    move-result v3
  .line 10
    invoke-virtual { v8 }, Landroid/view/View;->getMeasuredState()I
    move-result v8
    invoke-static { v5, v8 }, Landroid/view/View;->combineMeasuredStates(II)I
    move-result v5
  :L3
    add-int/lit8 v2, v2, 1
    goto :L0
  :L4
    if-eq v6, v1, :L5
  .line 11
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingBottom()I
    move-result v0
    invoke-static { v7, v0 }, Ljava/lang/Math;->max(II)I
    move-result v0
    add-int/2addr v0, v6
  .line 12
    invoke-static { v3, v0 }, Ljava/lang/Math;->max(II)I
    move-result v3
  .line 13
    iput v6, p0, Lcom/google/android/material/internal/BaselineLayout;->b:I
  :L5
  .line 14
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I
    move-result v0
    invoke-static { v3, v0 }, Ljava/lang/Math;->max(II)I
    move-result v0
  .line 15
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I
    move-result v1
    invoke-static { v4, v1 }, Ljava/lang/Math;->max(II)I
    move-result v1
  .line 16
    invoke-static { v1, p1, v5 }, Landroid/view/View;->resolveSizeAndState(III)I
    move-result p1
    shl-int/lit8 v1, v5, 16
  .line 17
    invoke-static { v0, p2, v1 }, Landroid/view/View;->resolveSizeAndState(III)I
    move-result p2
  .line 18
    invoke-virtual { p0, p1, p2 }, Landroid/view/ViewGroup;->setMeasuredDimension(II)V
    return-void
.end method
