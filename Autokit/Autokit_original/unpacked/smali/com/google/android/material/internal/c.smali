.class public Lcom/google/android/material/internal/c;
.super Landroid/view/ViewGroup;
.source "SourceFile"

.field private b:I

.field private c:I

.field private d:Z

.field private e:I

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
    const/4 v0, 0
  .line 1
    invoke-direct { p0, p1, p2, v0 }, Lcom/google/android/material/internal/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 4
  .line 2
    invoke-direct { p0, p1, p2, p3 }, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    const/4 p3, 0
  .line 3
    iput-boolean p3, p0, Lcom/google/android/material/internal/c;->d:Z
  .line 4
    invoke-direct { p0, p1, p2 }, Lcom/google/android/material/internal/c;->d(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-void
.end method

.method private static a(III)I
  .registers 4
    const/high16 v0, -32768
    if-eq p1, v0, :L1
    const/high16 v0, 16384
    if-eq p1, v0, :L0
    return p2
  :L0
    return p0
  :L1
  .line 1
    invoke-static { p2, p0 }, Ljava/lang/Math;->min(II)I
    move-result p0
    return p0
.end method

.method private d(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 5
  .line 1
    invoke-virtual { p1 }, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
    move-result-object p1
    sget-object v0, Ld/c/a/a/k;->FlowLayout:[I
    const/4 v1, 0
    invoke-virtual { p1, p2, v0, v1, v1 }, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    move-result-object p1
  .line 2
    sget p2, Ld/c/a/a/k;->FlowLayout_lineSpacing:I
    invoke-virtual { p1, p2, v1 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result p2
    iput p2, p0, Lcom/google/android/material/internal/c;->b:I
  .line 3
    sget p2, Ld/c/a/a/k;->FlowLayout_itemSpacing:I
    invoke-virtual { p1, p2, v1 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result p2
    iput p2, p0, Lcom/google/android/material/internal/c;->c:I
  .line 4
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->recycle()V
    return-void
.end method

.method public b(Landroid/view/View;)I
  .registers 3
  .line 1
    sget v0, Ld/c/a/a/f;->row_index_key:I
    invoke-virtual { p1, v0 }, Landroid/view/View;->getTag(I)Ljava/lang/Object;
    move-result-object p1
  .line 2
    instance-of v0, p1, Ljava/lang/Integer;
    if-nez v0, :L0
    const/4 p1, -1
    return p1
  :L0
  .line 3
    check-cast p1, Ljava/lang/Integer;
    invoke-virtual { p1 }, Ljava/lang/Integer;->intValue()I
    move-result p1
    return p1
.end method

.method public c()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/internal/c;->d:Z
    return v0
.end method

.method protected getItemSpacing()I
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/internal/c;->c:I
    return v0
.end method

.method protected getLineSpacing()I
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/internal/c;->b:I
    return v0
.end method

.method protected getRowCount()I
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/internal/c;->e:I
    return v0
.end method

.method protected onLayout(ZIIII)V
  .registers 15
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result p1
    const/4 p3, 0
    if-nez p1, :L0
  .line 2
    iput p3, p0, Lcom/google/android/material/internal/c;->e:I
    return-void
  :L0
    const/4 p1, 1
  .line 3
    iput p1, p0, Lcom/google/android/material/internal/c;->e:I
  .line 4
    invoke-static { p0 }, Landroidx/core/view/v;->C(Landroid/view/View;)I
    move-result p5
    if-ne p5, p1, :L1
    const/4 p5, 1
    goto :L2
  :L1
    const/4 p5, 0
  :L2
    if-eqz p5, :L3
  .line 5
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingRight()I
    move-result v0
    goto :L4
  :L3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v0
  :L4
    if-eqz p5, :L5
  .line 6
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v1
    goto :L6
  :L5
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingRight()I
    move-result v1
  :L6
  .line 7
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result v2
    sub-int/2addr p4, p2
    sub-int/2addr p4, v1
    move v3, v0
    move p2, v2
    const/4 v1, 0
  :L7
  .line 8
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v4
    if-ge v1, v4, :L15
  .line 9
    invoke-virtual { p0, v1 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v4
  .line 10
    invoke-virtual { v4 }, Landroid/view/View;->getVisibility()I
    move-result v5
    const/16 v6, 8
    if-ne v5, v6, :L8
  .line 11
    sget v5, Ld/c/a/a/f;->row_index_key:I
    const/4 v6, -1
    invoke-static { v6 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual { v4, v5, v6 }, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    goto :L14
  :L8
  .line 12
    invoke-virtual { v4 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v5
  .line 13
    instance-of v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v6, :L9
  .line 14
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;
  .line 15
    invoke-static { v5 }, Landroidx/core/view/h;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I
    move-result v6
  .line 16
    invoke-static { v5 }, Landroidx/core/view/h;->a(Landroid/view/ViewGroup$MarginLayoutParams;)I
    move-result v5
    goto :L10
  :L9
    const/4 v5, 0
    const/4 v6, 0
  :L10
    add-int v7, v3, v6
  .line 17
    invoke-virtual { v4 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v8
    add-int/2addr v7, v8
  .line 18
    iget-boolean v8, p0, Lcom/google/android/material/internal/c;->d:Z
    if-nez v8, :L11
    if-le v7, p4, :L11
  .line 19
    iget p2, p0, Lcom/google/android/material/internal/c;->b:I
    add-int/2addr p2, v2
  .line 20
    iget v2, p0, Lcom/google/android/material/internal/c;->e:I
    add-int/2addr v2, p1
    iput v2, p0, Lcom/google/android/material/internal/c;->e:I
    move v3, v0
  :L11
  .line 21
    sget v2, Ld/c/a/a/f;->row_index_key:I
    iget v7, p0, Lcom/google/android/material/internal/c;->e:I
    sub-int/2addr v7, p1
    invoke-static { v7 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v7
    invoke-virtual { v4, v2, v7 }, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    add-int v2, v3, v6
  .line 22
    invoke-virtual { v4 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v7
    add-int/2addr v7, v2
  .line 23
    invoke-virtual { v4 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v8
    add-int/2addr v8, p2
    if-eqz p5, :L12
    sub-int v2, p4, v7
    sub-int v7, p4, v3
    sub-int/2addr v7, v6
  .line 24
    invoke-virtual { v4, v2, p2, v7, v8 }, Landroid/view/View;->layout(IIII)V
    goto :L13
  :L12
  .line 25
    invoke-virtual { v4, v2, p2, v7, v8 }, Landroid/view/View;->layout(IIII)V
  :L13
    add-int/2addr v6, v5
  .line 26
    invoke-virtual { v4 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v2
    add-int/2addr v6, v2
    iget v2, p0, Lcom/google/android/material/internal/c;->c:I
    add-int/2addr v6, v2
    add-int/2addr v3, v6
    move v2, v8
  :L14
    add-int/lit8 v1, v1, 1
    goto :L7
  :L15
    return-void
.end method

.method protected onMeasure(II)V
  .registers 23
    move-object/from16 v0, p0
  .line 1
    invoke-static/range { p1 .. p1 }, Landroid/view/View$MeasureSpec;->getSize(I)I
    move-result v1
  .line 2
    invoke-static/range { p1 .. p1 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result v2
  .line 3
    invoke-static/range { p2 .. p2 }, Landroid/view/View$MeasureSpec;->getSize(I)I
    move-result v3
  .line 4
    invoke-static/range { p2 .. p2 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result v4
    const/high16 v5, -32768
    if-eq v2, v5, :L1
    const/high16 v5, 16384
    if-ne v2, v5, :L0
    goto :L1
  :L0
    const v5, 2147483647
    goto :L2
  :L1
    move v5, v1
  :L2
  .line 5
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v6
  .line 6
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result v7
  .line 7
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingRight()I
    move-result v8
    sub-int/2addr v5, v8
    move v9, v7
    const/4 v10, 0
    const/4 v11, 0
  :L3
  .line 8
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v12
    if-ge v10, v12, :L12
  .line 9
    invoke-virtual { v0, v10 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v12
  .line 10
    invoke-virtual { v12 }, Landroid/view/View;->getVisibility()I
    move-result v13
    const/16 v14, 8
    if-ne v13, v14, :L4
    move/from16 v13, p1
    move/from16 v14, p2
    const/16 v16, 0
    goto :L11
  :L4
    move/from16 v13, p1
    move/from16 v14, p2
  .line 11
    invoke-virtual { v0, v12, v13, v14 }, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V
  .line 12
    invoke-virtual { v12 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v15
  .line 13
    instance-of v8, v15, Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v8, :L5
  .line 14
    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;
  .line 15
    iget v8, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
    const/16 v16, 0
    add-int/lit8 v8, v8, 0
  .line 16
    iget v15, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
    add-int/lit8 v15, v15, 0
    goto :L6
  :L5
    const/16 v16, 0
    const/4 v8, 0
    const/4 v15, 0
  :L6
    add-int v17, v6, v8
  .line 17
    invoke-virtual { v12 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v18
    move/from16 v19, v6
    add-int v6, v17, v18
    if-le v6, v5, :L7
  .line 18
    invoke-virtual/range { p0 .. p0 }, Lcom/google/android/material/internal/c;->c()Z
    move-result v6
    if-nez v6, :L7
  .line 19
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v6
  .line 20
    iget v9, v0, Lcom/google/android/material/internal/c;->b:I
    add-int/2addr v9, v7
    goto :L8
  :L7
    move/from16 v6, v19
  :L8
    add-int v7, v6, v8
  .line 21
    invoke-virtual { v12 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v17
    add-int v7, v7, v17
  .line 22
    invoke-virtual { v12 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v17
    add-int v17, v9, v17
    if-le v7, v11, :L9
    move v11, v7
  :L9
    add-int/2addr v8, v15
  .line 23
    invoke-virtual { v12 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v7
    add-int/2addr v8, v7
    iget v7, v0, Lcom/google/android/material/internal/c;->c:I
    add-int/2addr v8, v7
    add-int/2addr v6, v8
  .line 24
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v7
    add-int/lit8 v7, v7, -1
    if-ne v10, v7, :L10
    add-int/2addr v11, v15
  :L10
    move/from16 v7, v17
  :L11
    add-int/lit8 v10, v10, 1
    goto :L3
  :L12
  .line 25
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingRight()I
    move-result v5
    add-int/2addr v11, v5
  .line 26
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingBottom()I
    move-result v5
    add-int/2addr v7, v5
  .line 27
    invoke-static { v1, v2, v11 }, Lcom/google/android/material/internal/c;->a(III)I
    move-result v1
  .line 28
    invoke-static { v3, v4, v7 }, Lcom/google/android/material/internal/c;->a(III)I
    move-result v2
  .line 29
    invoke-virtual { v0, v1, v2 }, Landroid/view/ViewGroup;->setMeasuredDimension(II)V
    return-void
.end method

.method protected setItemSpacing(I)V
  .registers 2
  .line 1
    iput p1, p0, Lcom/google/android/material/internal/c;->c:I
    return-void
.end method

.method protected setLineSpacing(I)V
  .registers 2
  .line 1
    iput p1, p0, Lcom/google/android/material/internal/c;->b:I
    return-void
.end method

.method public setSingleLine(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcom/google/android/material/internal/c;->d:Z
    return-void
.end method
