.class public Landroidx/appcompat/widget/AlertDialogLayout;
.super Landroidx/appcompat/widget/g0;
.source "SourceFile"

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Landroidx/appcompat/widget/g0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

.method private static B(Landroid/view/View;)I
  .registers 4
  .line 1
    invoke-static { p0 }, Landroidx/core/view/v;->D(Landroid/view/View;)I
    move-result v0
    if-lez v0, :L0
    return v0
  :L0
  .line 2
    instance-of v0, p0, Landroid/view/ViewGroup;
    const/4 v1, 0
    if-eqz v0, :L1
  .line 3
    check-cast p0, Landroid/view/ViewGroup;
  .line 4
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v0
    const/4 v2, 1
    if-ne v0, v2, :L1
  .line 5
    invoke-virtual { p0, v1 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object p0
    invoke-static { p0 }, Landroidx/appcompat/widget/AlertDialogLayout;->B(Landroid/view/View;)I
    move-result p0
    return p0
  :L1
    return v1
.end method

.method private C(II)Z
  .registers 19
    move-object/from16 v0, p0
    move/from16 v1, p1
    move/from16 v2, p2
  .line 1
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v3
    const/4 v4, 0
    const/4 v5, 0
    move-object v6, v4
    move-object v7, v6
    const/4 v8, 0
  :L0
    const/16 v9, 8
    if-ge v8, v3, :L8
  .line 2
    invoke-virtual { v0, v8 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v10
  .line 3
    invoke-virtual { v10 }, Landroid/view/View;->getVisibility()I
    move-result v11
    if-ne v11, v9, :L1
    goto :L7
  :L1
  .line 4
    invoke-virtual { v10 }, Landroid/view/View;->getId()I
    move-result v9
  .line 5
    sget v11, Lc/a/f;->topPanel:I
    if-ne v9, v11, :L2
    move-object v4, v10
    goto :L7
  :L2
  .line 6
    sget v11, Lc/a/f;->buttonPanel:I
    if-ne v9, v11, :L3
    move-object v6, v10
    goto :L7
  :L3
  .line 7
    sget v11, Lc/a/f;->contentPanel:I
    if-eq v9, v11, :L5
    sget v11, Lc/a/f;->customPanel:I
    if-ne v9, v11, :L4
    goto :L5
  :L4
    return v5
  :L5
    if-eqz v7, :L6
    return v5
  :L6
    move-object v7, v10
  :L7
    add-int/lit8 v8, v8, 1
    goto :L0
  :L8
  .line 8
    invoke-static/range { p2 .. p2 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result v8
  .line 9
    invoke-static/range { p2 .. p2 }, Landroid/view/View$MeasureSpec;->getSize(I)I
    move-result v10
  .line 10
    invoke-static/range { p1 .. p1 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result v11
  .line 11
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result v12
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingBottom()I
    move-result v13
    add-int/2addr v12, v13
    if-eqz v4, :L9
  .line 12
    invoke-virtual { v4, v1, v5 }, Landroid/view/View;->measure(II)V
  .line 13
    invoke-virtual { v4 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v13
    add-int/2addr v12, v13
  .line 14
    invoke-virtual { v4 }, Landroid/view/View;->getMeasuredState()I
    move-result v4
    invoke-static { v5, v4 }, Landroid/view/View;->combineMeasuredStates(II)I
    move-result v4
    goto :L10
  :L9
    const/4 v4, 0
  :L10
    if-eqz v6, :L11
  .line 15
    invoke-virtual { v6, v1, v5 }, Landroid/view/View;->measure(II)V
  .line 16
    invoke-static { v6 }, Landroidx/appcompat/widget/AlertDialogLayout;->B(Landroid/view/View;)I
    move-result v13
  .line 17
    invoke-virtual { v6 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v14
    sub-int/2addr v14, v13
    add-int/2addr v12, v13
  .line 18
    invoke-virtual { v6 }, Landroid/view/View;->getMeasuredState()I
    move-result v15
    invoke-static { v4, v15 }, Landroid/view/View;->combineMeasuredStates(II)I
    move-result v4
    goto :L12
  :L11
    const/4 v13, 0
    const/4 v14, 0
  :L12
    if-eqz v7, :L15
    if-nez v8, :L13
    const/4 v15, 0
    goto :L14
  :L13
    sub-int v15, v10, v12
  .line 19
    invoke-static { v5, v15 }, Ljava/lang/Math;->max(II)I
    move-result v15
  .line 20
    invoke-static { v15, v8 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v15
  :L14
  .line 21
    invoke-virtual { v7, v1, v15 }, Landroid/view/View;->measure(II)V
  .line 22
    invoke-virtual { v7 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v15
    add-int/2addr v12, v15
  .line 23
    invoke-virtual { v7 }, Landroid/view/View;->getMeasuredState()I
    move-result v5
    invoke-static { v4, v5 }, Landroid/view/View;->combineMeasuredStates(II)I
    move-result v4
    goto :L16
  :L15
    const/4 v15, 0
  :L16
    sub-int/2addr v10, v12
    const/high16 v5, 16384
    if-eqz v6, :L18
    sub-int/2addr v12, v13
  .line 24
    invoke-static { v10, v14 }, Ljava/lang/Math;->min(II)I
    move-result v14
    if-lez v14, :L17
    sub-int/2addr v10, v14
    add-int/2addr v13, v14
  :L17
  .line 25
    invoke-static { v13, v5 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v13
  .line 26
    invoke-virtual { v6, v1, v13 }, Landroid/view/View;->measure(II)V
  .line 27
    invoke-virtual { v6 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v13
    add-int/2addr v12, v13
  .line 28
    invoke-virtual { v6 }, Landroid/view/View;->getMeasuredState()I
    move-result v6
    invoke-static { v4, v6 }, Landroid/view/View;->combineMeasuredStates(II)I
    move-result v4
  :L18
    if-eqz v7, :L19
    if-lez v10, :L19
    sub-int/2addr v12, v15
    add-int/2addr v15, v10
  .line 29
    invoke-static { v15, v8 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v6
  .line 30
    invoke-virtual { v7, v1, v6 }, Landroid/view/View;->measure(II)V
  .line 31
    invoke-virtual { v7 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v6
    add-int/2addr v12, v6
  .line 32
    invoke-virtual { v7 }, Landroid/view/View;->getMeasuredState()I
    move-result v6
    invoke-static { v4, v6 }, Landroid/view/View;->combineMeasuredStates(II)I
    move-result v4
  :L19
    const/4 v6, 0
    const/4 v7, 0
  :L20
    if-ge v6, v3, :L22
  .line 33
    invoke-virtual { v0, v6 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v8
  .line 34
    invoke-virtual { v8 }, Landroid/view/View;->getVisibility()I
    move-result v10
    if-eq v10, v9, :L21
  .line 35
    invoke-virtual { v8 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v8
    invoke-static { v7, v8 }, Ljava/lang/Math;->max(II)I
    move-result v7
  :L21
    add-int/lit8 v6, v6, 1
    goto :L20
  :L22
  .line 36
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v6
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingRight()I
    move-result v8
    add-int/2addr v6, v8
    add-int/2addr v7, v6
  .line 37
    invoke-static { v7, v1, v4 }, Landroid/view/View;->resolveSizeAndState(III)I
    move-result v1
    const/4 v4, 0
  .line 38
    invoke-static { v12, v2, v4 }, Landroid/view/View;->resolveSizeAndState(III)I
    move-result v4
  .line 39
    invoke-virtual { v0, v1, v4 }, Landroid/view/ViewGroup;->setMeasuredDimension(II)V
    if-eq v11, v5, :L23
  .line 40
    invoke-direct { v0, v3, v2 }, Landroidx/appcompat/widget/AlertDialogLayout;->l(II)V
  :L23
    const/4 v1, 1
    return v1
.end method

.method private l(II)V
  .registers 13
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getMeasuredWidth()I
    move-result v0
    const/high16 v1, 16384
  .line 2
    invoke-static { v0, v1 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, p1, :L2
  .line 3
    invoke-virtual { p0, v1 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v3
  .line 4
    invoke-virtual { v3 }, Landroid/view/View;->getVisibility()I
    move-result v2
    const/16 v4, 8
    if-eq v2, v4, :L1
  .line 5
    invoke-virtual { v3 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v2
    move-object v8, v2
    check-cast v8, Landroidx/appcompat/widget/g0$a;
  .line 6
    iget v2, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I
    const/4 v4, -1
    if-ne v2, v4, :L1
  .line 7
    iget v9, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I
  .line 8
    invoke-virtual { v3 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v2
    iput v2, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I
    const/4 v5, 0
    const/4 v7, 0
    move-object v2, p0
    move v4, v0
    move v6, p2
  .line 9
    invoke-virtual/range { v2 .. v7 }, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V
  .line 10
    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    return-void
.end method

.method protected onLayout(ZIIII)V
  .registers 23
    move-object/from16 v6, p0
  .line 1
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v7
    sub-int v0, p4, p2
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
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getMeasuredHeight()I
    move-result v0
  .line 5
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v10
  .line 6
    invoke-virtual/range { p0 .. p0 }, Landroidx/appcompat/widget/g0;->getGravity()I
    move-result v1
    and-int/lit8 v2, v1, 112
    const v3, 8388615
    and-int v11, v1, v3
    const/16 v1, 16
    if-eq v2, v1, :L1
    const/16 v1, 80
    if-eq v2, v1, :L0
  .line 7
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result v0
    goto :L2
  :L0
  .line 8
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result v1
    add-int v1, v1, p5
    sub-int v1, v1, p3
    sub-int v0, v1, v0
    goto :L2
  :L1
  .line 9
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result v1
    sub-int v2, p5, p3
    sub-int/2addr v2, v0
    div-int/lit8 v2, v2, 2
    add-int v0, v1, v2
  :L2
  .line 10
    invoke-virtual/range { p0 .. p0 }, Landroidx/appcompat/widget/g0;->getDividerDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v1
    const/4 v2, 0
    if-nez v1, :L3
    const/4 v12, 0
    goto :L4
  :L3
  .line 11
    invoke-virtual { v1 }, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    move-result v1
    move v12, v1
  :L4
    const/4 v13, 0
  :L5
    if-ge v13, v10, :L13
  .line 12
    invoke-virtual { v6, v13 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v1
    if-eqz v1, :L12
  .line 13
    invoke-virtual { v1 }, Landroid/view/View;->getVisibility()I
    move-result v2
    const/16 v3, 8
    if-eq v2, v3, :L12
  .line 14
    invoke-virtual { v1 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v4
  .line 15
    invoke-virtual { v1 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v14
  .line 16
    invoke-virtual { v1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v2
    move-object v15, v2
    check-cast v15, Landroidx/appcompat/widget/g0$a;
  .line 17
    iget v2, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
    if-gez v2, :L6
    move v2, v11
  :L6
  .line 18
    invoke-static/range { p0 .. p0 }, Landroidx/core/view/v;->C(Landroid/view/View;)I
    move-result v3
  .line 19
    invoke-static { v2, v3 }, Landroidx/core/view/e;->b(II)I
    move-result v2
    and-int/lit8 v2, v2, 7
    const/4 v3, 1
    if-eq v2, v3, :L8
    const/4 v3, 5
    if-eq v2, v3, :L7
  .line 20
    iget v2, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
    add-int/2addr v2, v7
    goto :L10
  :L7
    sub-int v2, v8, v4
  .line 21
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
    goto :L9
  :L8
    sub-int v2, v9, v4
  .line 22
    div-int/lit8 v2, v2, 2
    add-int/2addr v2, v7
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
    add-int/2addr v2, v3
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
  :L9
    sub-int/2addr v2, v3
  :L10
  .line 23
    invoke-virtual { v6, v13 }, Landroidx/appcompat/widget/g0;->t(I)Z
    move-result v3
    if-eqz v3, :L11
    add-int/2addr v0, v12
  :L11
  .line 24
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    add-int v16, v0, v3
    move-object/from16 v0, p0
    move/from16 v3, v16
    move v5, v14
  .line 25
    invoke-direct/range { v0 .. v5 }, Landroidx/appcompat/widget/AlertDialogLayout;->A(Landroid/view/View;IIII)V
  .line 26
    iget v0, v15, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
    add-int/2addr v14, v0
    add-int v16, v16, v14
    move/from16 v0, v16
  :L12
    add-int/lit8 v13, v13, 1
    goto :L5
  :L13
    return-void
.end method

.method protected onMeasure(II)V
  .registers 4
  .line 1
    invoke-direct { p0, p1, p2 }, Landroidx/appcompat/widget/AlertDialogLayout;->C(II)Z
    move-result v0
    if-nez v0, :L0
  .line 2
    invoke-super { p0, p1, p2 }, Landroidx/appcompat/widget/g0;->onMeasure(II)V
  :L0
    return-void
.end method
