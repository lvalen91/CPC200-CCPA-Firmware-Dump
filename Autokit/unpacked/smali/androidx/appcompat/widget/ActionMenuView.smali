.class public Landroidx/appcompat/widget/ActionMenuView;
.super Landroidx/appcompat/widget/g0;
.implements Landroidx/appcompat/view/menu/g$b;
.implements Landroidx/appcompat/view/menu/n;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/appcompat/widget/ActionMenuView$c;,
    Landroidx/appcompat/widget/ActionMenuView$a;,
    Landroidx/appcompat/widget/ActionMenuView$b;,
    Landroidx/appcompat/widget/ActionMenuView$d;,
    Landroidx/appcompat/widget/ActionMenuView$e;
  }
.end annotation

.field private A:I

.field B:Landroidx/appcompat/widget/ActionMenuView$e;

.field private q:Landroidx/appcompat/view/menu/g;

.field private r:Landroid/content/Context;

.field private s:I

.field private t:Z

.field private u:Landroidx/appcompat/widget/c;

.field private v:Landroidx/appcompat/view/menu/m$a;

.field w:Landroidx/appcompat/view/menu/g$a;

.field private x:Z

.field private y:I

.field private z:I

.method public constructor <init>(Landroid/content/Context;)V
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-direct { p0, p1, v0 }, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 5
  .line 2
    invoke-direct { p0, p1, p2 }, Landroidx/appcompat/widget/g0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    const/4 p2, 0
  .line 3
    invoke-virtual { p0, p2 }, Landroidx/appcompat/widget/g0;->setBaselineAligned(Z)V
  .line 4
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v0
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F
    const/high16 v1, 16992
    mul-float v1, v1, v0
    float-to-int v1, v1
  .line 5
    iput v1, p0, Landroidx/appcompat/widget/ActionMenuView;->z:I
    const/high16 v1, 16512
    mul-float v0, v0, v1
    float-to-int v0, v0
  .line 6
    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->A:I
  .line 7
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->r:Landroid/content/Context;
  .line 8
    iput p2, p0, Landroidx/appcompat/widget/ActionMenuView;->s:I
    return-void
.end method

.method static L(Landroid/view/View;IIII)I
  .registers 10
  .line 1
    invoke-virtual { p0 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/appcompat/widget/ActionMenuView$c;
  .line 2
    invoke-static { p3 }, Landroid/view/View$MeasureSpec;->getSize(I)I
    move-result v1
    sub-int/2addr v1, p4
  .line 3
    invoke-static { p3 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result p3
  .line 4
    invoke-static { v1, p3 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result p3
  .line 5
    instance-of p4, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;
    if-eqz p4, :L0
  .line 6
    move-object p4, p0
    check-cast p4, Landroidx/appcompat/view/menu/ActionMenuItemView;
    goto :L1
  :L0
    const/4 p4, 0
  :L1
    const/4 v1, 1
    const/4 v2, 0
    if-eqz p4, :L2
  .line 7
    invoke-virtual { p4 }, Landroidx/appcompat/view/menu/ActionMenuItemView;->h()Z
    move-result p4
    if-eqz p4, :L2
    const/4 p4, 1
    goto :L3
  :L2
    const/4 p4, 0
  :L3
    const/4 v3, 2
    if-lez p2, :L7
    if-eqz p4, :L4
    if-lt p2, v3, :L7
  :L4
    mul-int p2, p2, p1
    const/high16 v4, -32768
  .line 8
    invoke-static { p2, v4 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result p2
  .line 9
    invoke-virtual { p0, p2, p3 }, Landroid/view/View;->measure(II)V
  .line 10
    invoke-virtual { p0 }, Landroid/view/View;->getMeasuredWidth()I
    move-result p2
  .line 11
    div-int v4, p2, p1
  .line 12
    rem-int/2addr p2, p1
    if-eqz p2, :L5
    add-int/lit8 v4, v4, 1
  :L5
    if-eqz p4, :L6
    if-ge v4, v3, :L6
    goto :L8
  :L6
    move v3, v4
    goto :L8
  :L7
    const/4 v3, 0
  :L8
  .line 13
    iget-boolean p2, v0, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z
    if-nez p2, :L9
    if-eqz p4, :L9
    goto :L10
  :L9
    const/4 v1, 0
  :L10
  .line 14
    iput-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView$c;->d:Z
  .line 15
    iput v3, v0, Landroidx/appcompat/widget/ActionMenuView$c;->b:I
    mul-int p1, p1, v3
    const/high16 p2, 16384
  .line 16
    invoke-static { p1, p2 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result p1
    invoke-virtual { p0, p1, p3 }, Landroid/view/View;->measure(II)V
    return v3
.end method

.method private M(II)V
  .registers 32
    move-object/from16 v0, p0
  .line 1
    invoke-static/range { p2 .. p2 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result v1
  .line 2
    invoke-static/range { p1 .. p1 }, Landroid/view/View$MeasureSpec;->getSize(I)I
    move-result v2
  .line 3
    invoke-static/range { p2 .. p2 }, Landroid/view/View$MeasureSpec;->getSize(I)I
    move-result v3
  .line 4
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v4
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingRight()I
    move-result v5
    add-int/2addr v4, v5
  .line 5
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result v5
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingBottom()I
    move-result v6
    add-int/2addr v5, v6
    const/4 v6, -2
    move/from16 v7, p2
  .line 6
    invoke-static { v7, v5, v6 }, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I
    move-result v6
    sub-int/2addr v2, v4
  .line 7
    iget v4, v0, Landroidx/appcompat/widget/ActionMenuView;->z:I
    div-int v7, v2, v4
  .line 8
    rem-int v8, v2, v4
    const/4 v9, 0
    if-nez v7, :L0
  .line 9
    invoke-virtual { v0, v2, v9 }, Landroid/view/ViewGroup;->setMeasuredDimension(II)V
    return-void
  :L0
  .line 10
    div-int/2addr v8, v7
    add-int/2addr v4, v8
  .line 11
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v8
    const/4 v10, 0
    const/4 v12, 0
    const/4 v13, 0
    const/4 v14, 0
    const/4 v15, 0
    const/16 v16, 0
    const-wide/16 v17, 0
  :L1
    if-ge v12, v8, :L14
  .line 12
    invoke-virtual { v0, v12 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v11
  .line 13
    invoke-virtual { v11 }, Landroid/view/View;->getVisibility()I
    move-result v9
    move/from16 v19, v3
    const/16 v3, 8
    if-ne v9, v3, :L2
    goto/16 :L13
  :L2
  .line 14
    instance-of v3, v11, Landroidx/appcompat/view/menu/ActionMenuItemView;
    add-int/lit8 v14, v14, 1
    if-eqz v3, :L3
  .line 15
    iget v9, v0, Landroidx/appcompat/widget/ActionMenuView;->A:I
    move/from16 v20, v14
    const/4 v14, 0
    invoke-virtual { v11, v9, v14, v9, v14 }, Landroid/view/View;->setPadding(IIII)V
    goto :L4
  :L3
    move/from16 v20, v14
    const/4 v14, 0
  :L4
  .line 16
    invoke-virtual { v11 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v9
    check-cast v9, Landroidx/appcompat/widget/ActionMenuView$c;
  .line 17
    iput-boolean v14, v9, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z
  .line 18
    iput v14, v9, Landroidx/appcompat/widget/ActionMenuView$c;->c:I
  .line 19
    iput v14, v9, Landroidx/appcompat/widget/ActionMenuView$c;->b:I
  .line 20
    iput-boolean v14, v9, Landroidx/appcompat/widget/ActionMenuView$c;->d:Z
  .line 21
    iput v14, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
  .line 22
    iput v14, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
    if-eqz v3, :L5
  .line 23
    move-object v3, v11
    check-cast v3, Landroidx/appcompat/view/menu/ActionMenuItemView;
    invoke-virtual { v3 }, Landroidx/appcompat/view/menu/ActionMenuItemView;->h()Z
    move-result v3
    if-eqz v3, :L5
    const/4 v3, 1
    goto :L6
  :L5
    const/4 v3, 0
  :L6
    iput-boolean v3, v9, Landroidx/appcompat/widget/ActionMenuView$c;->e:Z
  .line 24
    iget-boolean v3, v9, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z
    if-eqz v3, :L7
    const/4 v3, 1
    goto :L8
  :L7
    move v3, v7
  :L8
  .line 25
    invoke-static { v11, v4, v3, v6, v5 }, Landroidx/appcompat/widget/ActionMenuView;->L(Landroid/view/View;IIII)I
    move-result v3
  .line 26
    invoke-static { v15, v3 }, Ljava/lang/Math;->max(II)I
    move-result v15
  .line 27
    iget-boolean v14, v9, Landroidx/appcompat/widget/ActionMenuView$c;->d:Z
    if-eqz v14, :L9
    add-int/lit8 v16, v16, 1
  :L9
  .line 28
    iget-boolean v9, v9, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z
    if-eqz v9, :L10
    const/4 v13, 1
  :L10
    sub-int/2addr v7, v3
  .line 29
    invoke-virtual { v11 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v9
    invoke-static { v10, v9 }, Ljava/lang/Math;->max(II)I
    move-result v10
    const/4 v9, 1
    if-ne v3, v9, :L11
    shl-int v3, v9, v12
    move v11, v10
    int-to-long v9, v3
    or-long v9, v17, v9
    move-wide/from16 v17, v9
    move v10, v11
    goto :L12
  :L11
    move v11, v10
  :L12
    move/from16 v14, v20
  :L13
    add-int/lit8 v12, v12, 1
    move/from16 v3, v19
    const/4 v9, 0
    goto :L1
  :L14
    move/from16 v19, v3
    const/4 v3, 2
    if-eqz v13, :L15
    if-ne v14, v3, :L15
    const/4 v5, 1
    goto :L16
  :L15
    const/4 v5, 0
  :L16
    const/4 v9, 0
  :L17
    if-lez v16, :L31
    if-lez v7, :L31
    const v20, 2147483647
    const/4 v3, 0
    const/4 v11, 0
    const v12, 2147483647
    const-wide/16 v20, 0
  :L18
    if-ge v11, v8, :L22
  .line 30
    invoke-virtual { v0, v11 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v24
  .line 31
    invoke-virtual/range { v24 .. v24 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v24
    move/from16 v25, v9
    move-object/from16 v9, v24
    check-cast v9, Landroidx/appcompat/widget/ActionMenuView$c;
    move/from16 v24, v10
  .line 32
    iget-boolean v10, v9, Landroidx/appcompat/widget/ActionMenuView$c;->d:Z
    if-nez v10, :L19
    goto :L21
  :L19
  .line 33
    iget v9, v9, Landroidx/appcompat/widget/ActionMenuView$c;->b:I
    if-ge v9, v12, :L20
    const-wide/16 v22, 1
    shl-long v20, v22, v11
    move v12, v9
    const/4 v3, 1
    goto :L21
  :L20
    const-wide/16 v22, 1
    if-ne v9, v12, :L21
    shl-long v9, v22, v11
    or-long v9, v20, v9
    add-int/lit8 v3, v3, 1
    move-wide/from16 v20, v9
  :L21
    add-int/lit8 v11, v11, 1
    move/from16 v10, v24
    move/from16 v9, v25
    goto :L18
  :L22
    move/from16 v25, v9
    move/from16 v24, v10
    or-long v17, v17, v20
    if-le v3, v7, :L23
    move v11, v1
    move/from16 v26, v2
    goto :L32
  :L23
    add-int/lit8 v12, v12, 1
    const/4 v3, 0
  :L24
    if-ge v3, v8, :L30
  .line 34
    invoke-virtual { v0, v3 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v9
  .line 35
    invoke-virtual { v9 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v10
    check-cast v10, Landroidx/appcompat/widget/ActionMenuView$c;
    move/from16 v26, v2
    const/4 v11, 1
    shl-int v2, v11, v3
    move v11, v1
    int-to-long v1, v2
    and-long v22, v20, v1
    const-wide/16 v27, 0
    cmp-long v25, v22, v27
    if-nez v25, :L26
  .line 36
    iget v9, v10, Landroidx/appcompat/widget/ActionMenuView$c;->b:I
    if-ne v9, v12, :L25
    or-long v17, v17, v1
  :L25
    move/from16 v27, v5
    goto :L29
  :L26
    if-eqz v5, :L27
  .line 37
    iget-boolean v1, v10, Landroidx/appcompat/widget/ActionMenuView$c;->e:Z
    if-eqz v1, :L27
    const/4 v1, 1
    if-ne v7, v1, :L27
  .line 38
    iget v2, v0, Landroidx/appcompat/widget/ActionMenuView;->A:I
    add-int v1, v2, v4
    move/from16 v27, v5
    const/4 v5, 0
    invoke-virtual { v9, v1, v5, v2, v5 }, Landroid/view/View;->setPadding(IIII)V
    goto :L28
  :L27
    move/from16 v27, v5
  :L28
  .line 39
    iget v1, v10, Landroidx/appcompat/widget/ActionMenuView$c;->b:I
    const/4 v2, 1
    add-int/2addr v1, v2
    iput v1, v10, Landroidx/appcompat/widget/ActionMenuView$c;->b:I
  .line 40
    iput-boolean v2, v10, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z
    add-int/lit8 v7, v7, -1
  :L29
    add-int/lit8 v3, v3, 1
    move v1, v11
    move/from16 v2, v26
    move/from16 v5, v27
    goto :L24
  :L30
    move/from16 v10, v24
    const/4 v3, 2
    const/4 v9, 1
    goto/16 :L17
  :L31
    move v11, v1
    move/from16 v26, v2
    move/from16 v25, v9
    move/from16 v24, v10
  :L32
    const/4 v1, 1
    if-nez v13, :L33
    if-ne v14, v1, :L33
    const/4 v2, 1
    goto :L34
  :L33
    const/4 v2, 0
  :L34
    if-lez v7, :L50
    const-wide/16 v9, 0
    cmp-long v3, v17, v9
    if-eqz v3, :L50
    sub-int/2addr v14, v1
    if-lt v7, v14, :L35
    if-nez v2, :L35
    if-le v15, v1, :L50
  :L35
  .line 41
    invoke-static/range { v17 .. v18 }, Ljava/lang/Long;->bitCount(J)I
    move-result v1
    int-to-float v1, v1
    if-nez v2, :L37
    const-wide/16 v2, 1
    and-long v2, v17, v2
    const/high16 v5, 16128
    const-wide/16 v9, 0
    cmp-long v12, v2, v9
    const/4 v14, 0
    if-eqz v12, :L36
  .line 42
    invoke-virtual { v0, v14 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v2
    invoke-virtual { v2 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v2
    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$c;
  .line 43
    iget-boolean v2, v2, Landroidx/appcompat/widget/ActionMenuView$c;->e:Z
    if-nez v2, :L36
    sub-float/2addr v1, v5
  :L36
    add-int/lit8 v2, v8, -1
    const/4 v3, 1
    shl-int v9, v3, v2
    int-to-long v9, v9
    and-long v9, v17, v9
    const-wide/16 v12, 0
    cmp-long v3, v9, v12
    if-eqz v3, :L38
  .line 44
    invoke-virtual { v0, v2 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v2
    invoke-virtual { v2 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v2
    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$c;
  .line 45
    iget-boolean v2, v2, Landroidx/appcompat/widget/ActionMenuView$c;->e:Z
    if-nez v2, :L38
    sub-float/2addr v1, v5
    goto :L38
  :L37
    const/4 v14, 0
  :L38
    const/4 v2, 0
    cmpl-float v2, v1, v2
    if-lez v2, :L39
    mul-int v7, v7, v4
    int-to-float v2, v7
    div-float/2addr v2, v1
    float-to-int v1, v2
    goto :L40
  :L39
    const/4 v1, 0
  :L40
    move/from16 v9, v25
    const/4 v2, 0
  :L41
    if-ge v2, v8, :L51
    const/4 v3, 1
    shl-int v5, v3, v2
    int-to-long v12, v5
    and-long v12, v17, v12
    const-wide/16 v15, 0
    cmp-long v3, v12, v15
    if-nez v3, :L42
    const/4 v3, 1
    const/4 v7, 2
    goto :L49
  :L42
  .line 46
    invoke-virtual { v0, v2 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v3
  .line 47
    invoke-virtual { v3 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v5
    check-cast v5, Landroidx/appcompat/widget/ActionMenuView$c;
  .line 48
    instance-of v3, v3, Landroidx/appcompat/view/menu/ActionMenuItemView;
    if-eqz v3, :L45
  .line 49
    iput v1, v5, Landroidx/appcompat/widget/ActionMenuView$c;->c:I
    const/4 v3, 1
  .line 50
    iput-boolean v3, v5, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z
    if-nez v2, :L43
  .line 51
    iget-boolean v3, v5, Landroidx/appcompat/widget/ActionMenuView$c;->e:Z
    if-nez v3, :L43
    neg-int v3, v1
    const/4 v7, 2
  .line 52
    div-int/2addr v3, v7
    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
    goto :L44
  :L43
    const/4 v7, 2
  :L44
    const/4 v3, 1
    goto :L46
  :L45
    const/4 v7, 2
  .line 53
    iget-boolean v3, v5, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z
    if-eqz v3, :L47
  .line 54
    iput v1, v5, Landroidx/appcompat/widget/ActionMenuView$c;->c:I
    const/4 v3, 1
  .line 55
    iput-boolean v3, v5, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z
    neg-int v9, v1
  .line 56
    div-int/2addr v9, v7
    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
  :L46
    const/4 v9, 1
    goto :L49
  :L47
    const/4 v3, 1
    if-eqz v2, :L48
  .line 57
    div-int/lit8 v10, v1, 2
    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
  :L48
    add-int/lit8 v10, v8, -1
    if-eq v2, v10, :L49
  .line 58
    div-int/lit8 v10, v1, 2
    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
  :L49
    add-int/lit8 v2, v2, 1
    goto :L41
  :L50
    const/4 v14, 0
    move/from16 v9, v25
  :L51
    const/high16 v1, 16384
    if-eqz v9, :L55
    const/4 v9, 0
  :L52
    if-ge v9, v8, :L55
  .line 59
    invoke-virtual { v0, v9 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v2
  .line 60
    invoke-virtual { v2 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v3
    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$c;
  .line 61
    iget-boolean v5, v3, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z
    if-nez v5, :L53
    goto :L54
  :L53
  .line 62
    iget v5, v3, Landroidx/appcompat/widget/ActionMenuView$c;->b:I
    mul-int v5, v5, v4
    iget v3, v3, Landroidx/appcompat/widget/ActionMenuView$c;->c:I
    add-int/2addr v5, v3
  .line 63
    invoke-static { v5, v1 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v3
    invoke-virtual { v2, v3, v6 }, Landroid/view/View;->measure(II)V
  :L54
    add-int/lit8 v9, v9, 1
    goto :L52
  :L55
    if-eq v11, v1, :L56
    move/from16 v3, v24
    goto :L57
  :L56
    move/from16 v3, v19
  :L57
    move/from16 v2, v26
  .line 64
    invoke-virtual { v0, v2, v3 }, Landroid/view/ViewGroup;->setMeasuredDimension(II)V
    return-void
.end method

.method public B()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->u:Landroidx/appcompat/widget/c;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/appcompat/widget/c;->y()Z
  :L0
    return-void
.end method

.method protected C()Landroidx/appcompat/widget/ActionMenuView$c;
  .registers 3
  .line 1
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$c;
    const/4 v1, -2
    invoke-direct { v0, v1, v1 }, Landroidx/appcompat/widget/ActionMenuView$c;-><init>(II)V
    const/16 v1, 16
  .line 2
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
    return-object v0
.end method

.method public D(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$c;
  .registers 4
  .line 1
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$c;
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-direct { v0, v1, p1 }, Landroidx/appcompat/widget/ActionMenuView$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-object v0
.end method

.method protected E(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$c;
  .registers 3
    if-eqz p1, :L3
  .line 1
    instance-of v0, p1, Landroidx/appcompat/widget/ActionMenuView$c;
    if-eqz v0, :L0
  .line 2
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$c;
    check-cast p1, Landroidx/appcompat/widget/ActionMenuView$c;
    invoke-direct { v0, p1 }, Landroidx/appcompat/widget/ActionMenuView$c;-><init>(Landroidx/appcompat/widget/ActionMenuView$c;)V
    goto :L1
  :L0
  .line 3
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$c;
    invoke-direct { v0, p1 }, Landroidx/appcompat/widget/ActionMenuView$c;-><init>(Landroid/view/ViewGroup$LayoutParams;)V
  :L1
  .line 4
    iget p1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
    if-gtz p1, :L2
    const/16 p1, 16
  .line 5
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
  :L2
    return-object v0
  :L3
  .line 6
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionMenuView;->C()Landroidx/appcompat/widget/ActionMenuView$c;
    move-result-object p1
    return-object p1
.end method

.method public F()Landroidx/appcompat/widget/ActionMenuView$c;
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionMenuView;->C()Landroidx/appcompat/widget/ActionMenuView$c;
    move-result-object v0
    const/4 v1, 1
  .line 2
    iput-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z
    return-object v0
.end method

.method protected G(I)Z
  .registers 6
    const/4 v0, 0
    if-nez p1, :L0
    return v0
  :L0
    add-int/lit8 v1, p1, -1
  .line 1
    invoke-virtual { p0, v1 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v1
  .line 2
    invoke-virtual { p0, p1 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v2
  .line 3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v3
    if-ge p1, v3, :L1
    instance-of v3, v1, Landroidx/appcompat/widget/ActionMenuView$a;
    if-eqz v3, :L1
  .line 4
    check-cast v1, Landroidx/appcompat/widget/ActionMenuView$a;
    invoke-interface { v1 }, Landroidx/appcompat/widget/ActionMenuView$a;->b()Z
    move-result v1
    or-int/2addr v0, v1
  :L1
    if-lez p1, :L2
  .line 5
    instance-of p1, v2, Landroidx/appcompat/widget/ActionMenuView$a;
    if-eqz p1, :L2
  .line 6
    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$a;
    invoke-interface { v2 }, Landroidx/appcompat/widget/ActionMenuView$a;->d()Z
    move-result p1
    or-int/2addr v0, p1
  :L2
    return v0
.end method

.method public H()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->u:Landroidx/appcompat/widget/c;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroidx/appcompat/widget/c;->B()Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public I()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->u:Landroidx/appcompat/widget/c;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroidx/appcompat/widget/c;->D()Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public J()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->u:Landroidx/appcompat/widget/c;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroidx/appcompat/widget/c;->E()Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public K()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuView;->t:Z
    return v0
.end method

.method public N()Landroidx/appcompat/view/menu/g;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->q:Landroidx/appcompat/view/menu/g;
    return-object v0
.end method

.method public O(Landroidx/appcompat/view/menu/m$a;Landroidx/appcompat/view/menu/g$a;)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->v:Landroidx/appcompat/view/menu/m$a;
  .line 2
    iput-object p2, p0, Landroidx/appcompat/widget/ActionMenuView;->w:Landroidx/appcompat/view/menu/g$a;
    return-void
.end method

.method public P()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->u:Landroidx/appcompat/widget/c;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroidx/appcompat/widget/c;->K()Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public a(Landroidx/appcompat/view/menu/i;)Z
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->q:Landroidx/appcompat/view/menu/g;
    const/4 v1, 0
    invoke-virtual { v0, p1, v1 }, Landroidx/appcompat/view/menu/g;->L(Landroid/view/MenuItem;I)Z
    move-result p1
    return p1
.end method

.method public b(Landroidx/appcompat/view/menu/g;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->q:Landroidx/appcompat/view/menu/g;
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
  .registers 2
  .line 1
    instance-of p1, p1, Landroidx/appcompat/widget/ActionMenuView$c;
    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
  .registers 2
    const/4 p1, 0
    return p1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionMenuView;->C()Landroidx/appcompat/widget/ActionMenuView$c;
    move-result-object v0
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/ActionMenuView;->D(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$c;
    move-result-object p1
    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
  .registers 2
  .line 2
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/ActionMenuView;->E(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$c;
    move-result-object p1
    return-object p1
.end method

.method public getMenu()Landroid/view/Menu;
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->q:Landroidx/appcompat/view/menu/g;
    if-nez v0, :L2
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v0
  .line 3
    new-instance v1, Landroidx/appcompat/view/menu/g;
    invoke-direct { v1, v0 }, Landroidx/appcompat/view/menu/g;-><init>(Landroid/content/Context;)V
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->q:Landroidx/appcompat/view/menu/g;
  .line 4
    new-instance v2, Landroidx/appcompat/widget/ActionMenuView$d;
    invoke-direct { v2, p0 }, Landroidx/appcompat/widget/ActionMenuView$d;-><init>(Landroidx/appcompat/widget/ActionMenuView;)V
    invoke-virtual { v1, v2 }, Landroidx/appcompat/view/menu/g;->R(Landroidx/appcompat/view/menu/g$a;)V
  .line 5
    new-instance v1, Landroidx/appcompat/widget/c;
    invoke-direct { v1, v0 }, Landroidx/appcompat/widget/c;-><init>(Landroid/content/Context;)V
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->u:Landroidx/appcompat/widget/c;
    const/4 v0, 1
  .line 6
    invoke-virtual { v1, v0 }, Landroidx/appcompat/widget/c;->J(Z)V
  .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->u:Landroidx/appcompat/widget/c;
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->v:Landroidx/appcompat/view/menu/m$a;
    if-eqz v1, :L0
    goto :L1
  :L0
  .line 8
    new-instance v1, Landroidx/appcompat/widget/ActionMenuView$b;
    invoke-direct { v1 }, Landroidx/appcompat/widget/ActionMenuView$b;-><init>()V
  :L1
  .line 9
    invoke-virtual { v0, v1 }, Landroidx/appcompat/view/menu/b;->h(Landroidx/appcompat/view/menu/m$a;)V
  .line 10
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->q:Landroidx/appcompat/view/menu/g;
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->u:Landroidx/appcompat/widget/c;
    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->r:Landroid/content/Context;
    invoke-virtual { v0, v1, v2 }, Landroidx/appcompat/view/menu/g;->c(Landroidx/appcompat/view/menu/m;Landroid/content/Context;)V
  .line 11
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->u:Landroidx/appcompat/widget/c;
    invoke-virtual { v0, p0 }, Landroidx/appcompat/widget/c;->H(Landroidx/appcompat/widget/ActionMenuView;)V
  :L2
  .line 12
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->q:Landroidx/appcompat/view/menu/g;
    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->u:Landroidx/appcompat/widget/c;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/c;->A()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    return-object v0
.end method

.method public getPopupTheme()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->s:I
    return v0
.end method

.method public getWindowAnimations()I
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method protected bridge synthetic m()Landroidx/appcompat/widget/g0$a;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionMenuView;->C()Landroidx/appcompat/widget/ActionMenuView$c;
    move-result-object v0
    return-object v0
.end method

.method public bridge synthetic n(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/g0$a;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/ActionMenuView;->D(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$c;
    move-result-object p1
    return-object p1
.end method

.method protected bridge synthetic o(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/g0$a;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/ActionMenuView;->E(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$c;
    move-result-object p1
    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V
  .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->u:Landroidx/appcompat/widget/c;
    if-eqz p1, :L0
    const/4 v0, 0
  .line 3
    invoke-virtual { p1, v0 }, Landroidx/appcompat/widget/c;->j(Z)V
  .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->u:Landroidx/appcompat/widget/c;
    invoke-virtual { p1 }, Landroidx/appcompat/widget/c;->E()Z
    move-result p1
    if-eqz p1, :L0
  .line 5
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->u:Landroidx/appcompat/widget/c;
    invoke-virtual { p1 }, Landroidx/appcompat/widget/c;->B()Z
  .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->u:Landroidx/appcompat/widget/c;
    invoke-virtual { p1 }, Landroidx/appcompat/widget/c;->K()Z
  :L0
    return-void
.end method

.method public onDetachedFromWindow()V
  .registers 1
  .line 1
    invoke-super { p0 }, Landroid/view/ViewGroup;->onDetachedFromWindow()V
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionMenuView;->B()V
    return-void
.end method

.method protected onLayout(ZIIII)V
  .registers 23
    move-object/from16 v0, p0
  .line 1
    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView;->x:Z
    if-nez v1, :L0
  .line 2
    invoke-super/range { p0 .. p5 }, Landroidx/appcompat/widget/g0;->onLayout(ZIIII)V
    return-void
  :L0
  .line 3
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v1
    sub-int v2, p5, p3
  .line 4
    div-int/lit8 v2, v2, 2
  .line 5
    invoke-virtual/range { p0 .. p0 }, Landroidx/appcompat/widget/g0;->getDividerWidth()I
    move-result v3
    sub-int v4, p4, p2
  .line 6
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingRight()I
    move-result v5
    sub-int v5, v4, v5
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v6
    sub-int/2addr v5, v6
  .line 7
    invoke-static/range { p0 .. p0 }, Landroidx/appcompat/widget/a1;->b(Landroid/view/View;)Z
    move-result v6
    const/4 v8, 0
    const/4 v9, 0
    const/4 v10, 0
  :L1
    const/16 v11, 8
    const/4 v12, 1
    if-ge v8, v1, :L8
  .line 8
    invoke-virtual { v0, v8 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v13
  .line 9
    invoke-virtual { v13 }, Landroid/view/View;->getVisibility()I
    move-result v14
    if-ne v14, v11, :L2
    goto :L7
  :L2
  .line 10
    invoke-virtual { v13 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v11
    check-cast v11, Landroidx/appcompat/widget/ActionMenuView$c;
  .line 11
    iget-boolean v14, v11, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z
    if-eqz v14, :L6
  .line 12
    invoke-virtual { v13 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v9
  .line 13
    invoke-virtual { v0, v8 }, Landroidx/appcompat/widget/ActionMenuView;->G(I)Z
    move-result v14
    if-eqz v14, :L3
    add-int/2addr v9, v3
  :L3
  .line 14
    invoke-virtual { v13 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v14
    if-eqz v6, :L4
  .line 15
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v15
    iget v11, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
    add-int/2addr v15, v11
    add-int v11, v15, v9
    goto :L5
  :L4
  .line 16
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getWidth()I
    move-result v15
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingRight()I
    move-result v16
    sub-int v15, v15, v16
    iget v11, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
    sub-int v11, v15, v11
    sub-int v15, v11, v9
  :L5
  .line 17
    div-int/lit8 v16, v14, 2
    sub-int v7, v2, v16
    add-int/2addr v14, v7
  .line 18
    invoke-virtual { v13, v15, v7, v11, v14 }, Landroid/view/View;->layout(IIII)V
    sub-int/2addr v5, v9
    const/4 v9, 1
    goto :L7
  :L6
  .line 19
    invoke-virtual { v13 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v7
    iget v12, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
    add-int/2addr v7, v12
    iget v11, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
    add-int/2addr v7, v11
    sub-int/2addr v5, v7
  .line 20
    invoke-virtual { v0, v8 }, Landroidx/appcompat/widget/ActionMenuView;->G(I)Z
    add-int/lit8 v10, v10, 1
  :L7
    add-int/lit8 v8, v8, 1
    goto :L1
  :L8
    if-ne v1, v12, :L9
    if-nez v9, :L9
    const/4 v3, 0
  .line 21
    invoke-virtual { v0, v3 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v1
  .line 22
    invoke-virtual { v1 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v3
  .line 23
    invoke-virtual { v1 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v5
  .line 24
    div-int/lit8 v4, v4, 2
  .line 25
    div-int/lit8 v6, v3, 2
    sub-int/2addr v4, v6
  .line 26
    div-int/lit8 v6, v5, 2
    sub-int/2addr v2, v6
    add-int/2addr v3, v4
    add-int/2addr v5, v2
  .line 27
    invoke-virtual { v1, v4, v2, v3, v5 }, Landroid/view/View;->layout(IIII)V
    return-void
  :L9
    xor-int/lit8 v3, v9, 1
    sub-int/2addr v10, v3
    if-lez v10, :L10
  .line 28
    div-int v3, v5, v10
    goto :L11
  :L10
    const/4 v3, 0
  :L11
    const/4 v4, 0
    invoke-static { v4, v3 }, Ljava/lang/Math;->max(II)I
    move-result v3
    if-eqz v6, :L15
  .line 29
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getWidth()I
    move-result v5
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingRight()I
    move-result v6
    sub-int/2addr v5, v6
    const/4 v7, 0
  :L12
    if-ge v7, v1, :L19
  .line 30
    invoke-virtual { v0, v7 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v4
  .line 31
    invoke-virtual { v4 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v6
    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$c;
  .line 32
    invoke-virtual { v4 }, Landroid/view/View;->getVisibility()I
    move-result v8
    if-eq v8, v11, :L14
    iget-boolean v8, v6, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z
    if-eqz v8, :L13
    goto :L14
  :L13
  .line 33
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
    sub-int/2addr v5, v8
  .line 34
    invoke-virtual { v4 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v8
  .line 35
    invoke-virtual { v4 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v9
  .line 36
    div-int/lit8 v10, v9, 2
    sub-int v10, v2, v10
    sub-int v12, v5, v8
    add-int/2addr v9, v10
  .line 37
    invoke-virtual { v4, v12, v10, v5, v9 }, Landroid/view/View;->layout(IIII)V
  .line 38
    iget v4, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
    add-int/2addr v8, v4
    add-int/2addr v8, v3
    sub-int/2addr v5, v8
  :L14
    add-int/lit8 v7, v7, 1
    goto :L12
  :L15
  .line 39
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v5
    const/4 v7, 0
  :L16
    if-ge v7, v1, :L19
  .line 40
    invoke-virtual { v0, v7 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v4
  .line 41
    invoke-virtual { v4 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v6
    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$c;
  .line 42
    invoke-virtual { v4 }, Landroid/view/View;->getVisibility()I
    move-result v8
    if-eq v8, v11, :L18
    iget-boolean v8, v6, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z
    if-eqz v8, :L17
    goto :L18
  :L17
  .line 43
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
    add-int/2addr v5, v8
  .line 44
    invoke-virtual { v4 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v8
  .line 45
    invoke-virtual { v4 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v9
  .line 46
    div-int/lit8 v10, v9, 2
    sub-int v10, v2, v10
    add-int v12, v5, v8
    add-int/2addr v9, v10
  .line 47
    invoke-virtual { v4, v5, v10, v12, v9 }, Landroid/view/View;->layout(IIII)V
  .line 48
    iget v4, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
    add-int/2addr v8, v4
    add-int/2addr v8, v3
    add-int/2addr v5, v8
  :L18
    add-int/lit8 v7, v7, 1
    goto :L16
  :L19
    return-void
.end method

.method protected onMeasure(II)V
  .registers 8
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuView;->x:Z
  .line 2
    invoke-static { p1 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result v1
    const/4 v2, 1
    const/4 v3, 0
    const/high16 v4, 16384
    if-ne v1, v4, :L0
    const/4 v1, 1
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuView;->x:Z
    if-eq v0, v1, :L2
  .line 3
    iput v3, p0, Landroidx/appcompat/widget/ActionMenuView;->y:I
  :L2
  .line 4
    invoke-static { p1 }, Landroid/view/View$MeasureSpec;->getSize(I)I
    move-result v0
  .line 5
    iget-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuView;->x:Z
    if-eqz v1, :L3
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->q:Landroidx/appcompat/view/menu/g;
    if-eqz v1, :L3
    iget v4, p0, Landroidx/appcompat/widget/ActionMenuView;->y:I
    if-eq v0, v4, :L3
  .line 6
    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->y:I
  .line 7
    invoke-virtual { v1, v2 }, Landroidx/appcompat/view/menu/g;->K(Z)V
  :L3
  .line 8
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v0
  .line 9
    iget-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuView;->x:Z
    if-eqz v1, :L4
    if-lez v0, :L4
  .line 10
    invoke-direct { p0, p1, p2 }, Landroidx/appcompat/widget/ActionMenuView;->M(II)V
    goto :L7
  :L4
    const/4 v1, 0
  :L5
    if-ge v1, v0, :L6
  .line 11
    invoke-virtual { p0, v1 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v2
  .line 12
    invoke-virtual { v2 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v2
    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$c;
  .line 13
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
    add-int/lit8 v1, v1, 1
    goto :L5
  :L6
  .line 14
    invoke-super { p0, p1, p2 }, Landroidx/appcompat/widget/g0;->onMeasure(II)V
  :L7
    return-void
.end method

.method public setExpandedActionViewsExclusive(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->u:Landroidx/appcompat/widget/c;
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/c;->G(Z)V
    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$e;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->B:Landroidx/appcompat/widget/ActionMenuView$e;
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->u:Landroidx/appcompat/widget/c;
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/c;->I(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method public setOverflowReserved(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuView;->t:Z
    return-void
.end method

.method public setPopupTheme(I)V
  .registers 4
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->s:I
    if-eq v0, p1, :L1
  .line 2
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->s:I
    if-nez p1, :L0
  .line 3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object p1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->r:Landroid/content/Context;
    goto :L1
  :L0
  .line 4
    new-instance v0, Landroid/view/ContextThemeWrapper;
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-direct { v0, v1, p1 }, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V
    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->r:Landroid/content/Context;
  :L1
    return-void
.end method

.method public setPresenter(Landroidx/appcompat/widget/c;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->u:Landroidx/appcompat/widget/c;
  .line 2
    invoke-virtual { p1, p0 }, Landroidx/appcompat/widget/c;->H(Landroidx/appcompat/widget/ActionMenuView;)V
    return-void
.end method
