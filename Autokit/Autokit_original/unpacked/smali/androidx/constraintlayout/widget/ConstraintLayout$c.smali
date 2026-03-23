.class Landroidx/constraintlayout/widget/ConstraintLayout$c;
.super Ljava/lang/Object;
.implements Lc/e/b/k/m/b$b;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = "c"
.end annotation

.field a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field final synthetic h:Landroidx/constraintlayout/widget/ConstraintLayout;

.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->h:Landroidx/constraintlayout/widget/ConstraintLayout;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;
    return-void
.end method

.method private d(III)Z
  .registers 7
    const/4 v0, 1
    if-ne p1, p2, :L0
    return v0
  :L0
  .line 1
    invoke-static { p1 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result v1
  .line 2
    invoke-static { p1 }, Landroid/view/View$MeasureSpec;->getSize(I)I
  .line 3
    invoke-static { p2 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result p1
  .line 4
    invoke-static { p2 }, Landroid/view/View$MeasureSpec;->getSize(I)I
    move-result p2
    const/high16 v2, 16384
    if-ne p1, v2, :L2
    const/high16 p1, -32768
    if-eq v1, p1, :L1
    if-nez v1, :L2
  :L1
    if-ne p3, p2, :L2
    return v0
  :L2
    const/4 p1, 0
    return p1
.end method

.method public final a(Lc/e/b/k/e;Lc/e/b/k/m/b$a;)V
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "WrongCall"
    }
  .end annotation
  .registers 20
    move-object/from16 v0, p0
    move-object/from16 v1, p1
    move-object/from16 v2, p2
    if-nez v1, :L0
    return-void
  :L0
  .line 1
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->Q()I
    move-result v3
    const/16 v4, 8
    const/4 v5, 0
    if-ne v3, v4, :L1
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->a0()Z
    move-result v3
    if-nez v3, :L1
  .line 2
    iput v5, v2, Lc/e/b/k/m/b$a;->e:I
  .line 3
    iput v5, v2, Lc/e/b/k/m/b$a;->f:I
  .line 4
    iput v5, v2, Lc/e/b/k/m/b$a;->g:I
    return-void
  :L1
  .line 5
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->I()Lc/e/b/k/e;
    move-result-object v3
    if-nez v3, :L2
    return-void
  :L2
  .line 6
    iget-object v3, v2, Lc/e/b/k/m/b$a;->a:Lc/e/b/k/e$b;
  .line 7
    iget-object v4, v2, Lc/e/b/k/m/b$a;->b:Lc/e/b/k/e$b;
  .line 8
    iget v6, v2, Lc/e/b/k/m/b$a;->c:I
  .line 9
    iget v7, v2, Lc/e/b/k/m/b$a;->d:I
  .line 10
    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->b:I
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->c:I
    add-int/2addr v8, v9
  .line 11
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->d:I
  .line 12
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->q()Ljava/lang/Object;
    move-result-object v10
    check-cast v10, Landroid/view/View;
  .line 13
    sget-object v11, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a:[I
    invoke-virtual { v3 }, Ljava/lang/Enum;->ordinal()I
    move-result v12
    aget v11, v11, v12
    const/4 v12, 4
    const/4 v13, 3
    const/4 v14, 2
    const/4 v5, -2
    const/4 v15, 1
    if-eq v11, v15, :L15
    if-eq v11, v14, :L14
    if-eq v11, v13, :L13
    if-eq v11, v12, :L3
    const/4 v6, 0
    goto/16 :L16
  :L3
  .line 14
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->f:I
    invoke-static { v6, v9, v5 }, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I
    move-result v6
  .line 15
    iget v9, v1, Lc/e/b/k/e;->n:I
    if-ne v9, v15, :L4
    const/4 v9, 1
    goto :L5
  :L4
    const/4 v9, 0
  :L5
  .line 16
    iget v11, v2, Lc/e/b/k/m/b$a;->j:I
    sget v12, Lc/e/b/k/m/b$a;->l:I
    if-eq v11, v12, :L6
    sget v12, Lc/e/b/k/m/b$a;->m:I
    if-ne v11, v12, :L16
  :L6
  .line 17
    invoke-virtual { v10 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v11
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->v()I
    move-result v12
    if-ne v11, v12, :L7
    const/4 v11, 1
    goto :L8
  :L7
    const/4 v11, 0
  :L8
  .line 18
    iget v12, v2, Lc/e/b/k/m/b$a;->j:I
    sget v13, Lc/e/b/k/m/b$a;->m:I
    if-eq v12, v13, :L11
    if-eqz v9, :L11
    if-eqz v9, :L9
    if-nez v11, :L11
  :L9
    instance-of v9, v10, Landroidx/constraintlayout/widget/g;
    if-nez v9, :L11
  .line 19
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->e0()Z
    move-result v9
    if-eqz v9, :L10
    goto :L11
  :L10
    const/4 v9, 0
    goto :L12
  :L11
    const/4 v9, 1
  :L12
    if-eqz v9, :L16
  .line 20
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->R()I
    move-result v6
    const/high16 v9, 16384
    invoke-static { v6, v9 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v6
    goto :L16
  :L13
  .line 21
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->f:I
  .line 22
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->z()I
    move-result v11
    add-int/2addr v9, v11
    const/4 v11, -1
  .line 23
    invoke-static { v6, v9, v11 }, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I
    move-result v6
    goto :L16
  :L14
  .line 24
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->f:I
    invoke-static { v6, v9, v5 }, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I
    move-result v6
    goto :L16
  :L15
    const/high16 v9, 16384
  .line 25
    invoke-static { v6, v9 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v6
  :L16
  .line 26
    sget-object v9, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a:[I
    invoke-virtual { v4 }, Ljava/lang/Enum;->ordinal()I
    move-result v11
    aget v9, v9, v11
    if-eq v9, v15, :L29
    if-eq v9, v14, :L28
    const/4 v7, 3
    if-eq v9, v7, :L27
    const/4 v7, 4
    if-eq v9, v7, :L17
    const/4 v5, 0
    goto/16 :L30
  :L17
  .line 27
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->g:I
    invoke-static { v7, v8, v5 }, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I
    move-result v5
  .line 28
    iget v7, v1, Lc/e/b/k/e;->o:I
    if-ne v7, v15, :L18
    const/4 v7, 1
    goto :L19
  :L18
    const/4 v7, 0
  :L19
  .line 29
    iget v8, v2, Lc/e/b/k/m/b$a;->j:I
    sget v9, Lc/e/b/k/m/b$a;->l:I
    if-eq v8, v9, :L20
    sget v9, Lc/e/b/k/m/b$a;->m:I
    if-ne v8, v9, :L30
  :L20
  .line 30
    invoke-virtual { v10 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v8
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->R()I
    move-result v9
    if-ne v8, v9, :L21
    const/4 v8, 1
    goto :L22
  :L21
    const/4 v8, 0
  :L22
  .line 31
    iget v9, v2, Lc/e/b/k/m/b$a;->j:I
    sget v11, Lc/e/b/k/m/b$a;->m:I
    if-eq v9, v11, :L25
    if-eqz v7, :L25
    if-eqz v7, :L23
    if-nez v8, :L25
  :L23
    instance-of v7, v10, Landroidx/constraintlayout/widget/g;
    if-nez v7, :L25
  .line 32
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->f0()Z
    move-result v7
    if-eqz v7, :L24
    goto :L25
  :L24
    const/4 v7, 0
    goto :L26
  :L25
    const/4 v7, 1
  :L26
    if-eqz v7, :L30
  .line 33
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->v()I
    move-result v5
    const/high16 v7, 16384
    invoke-static { v5, v7 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v5
    goto :L30
  :L27
  .line 34
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->g:I
  .line 35
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->P()I
    move-result v7
    add-int/2addr v8, v7
    const/4 v7, -1
  .line 36
    invoke-static { v5, v8, v7 }, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I
    move-result v5
    goto :L30
  :L28
  .line 37
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->g:I
    invoke-static { v7, v8, v5 }, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I
    move-result v5
    goto :L30
  :L29
    const/high16 v5, 16384
  .line 38
    invoke-static { v7, v5 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v7
    move v5, v7
  :L30
  .line 39
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->I()Lc/e/b/k/e;
    move-result-object v7
    check-cast v7, Lc/e/b/k/f;
    if-eqz v7, :L33
  .line 40
    iget-object v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->h:Landroidx/constraintlayout/widget/ConstraintLayout;
    invoke-static { v8 }, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)I
    move-result v8
    const/16 v9, 256
    invoke-static { v8, v9 }, Lc/e/b/k/j;->b(II)Z
    move-result v8
    if-eqz v8, :L33
  .line 41
    invoke-virtual { v10 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v8
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->R()I
    move-result v9
    if-ne v8, v9, :L33
  .line 42
    invoke-virtual { v10 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v8
    invoke-virtual { v7 }, Lc/e/b/k/e;->R()I
    move-result v9
    if-ge v8, v9, :L33
  .line 43
    invoke-virtual { v10 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v8
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->v()I
    move-result v9
    if-ne v8, v9, :L33
  .line 44
    invoke-virtual { v10 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v8
    invoke-virtual { v7 }, Lc/e/b/k/e;->v()I
    move-result v7
    if-ge v8, v7, :L33
  .line 45
    invoke-virtual { v10 }, Landroid/view/View;->getBaseline()I
    move-result v7
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->n()I
    move-result v8
    if-ne v7, v8, :L33
  .line 46
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->d0()Z
    move-result v7
    if-nez v7, :L33
  .line 47
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->A()I
    move-result v7
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->R()I
    move-result v8
    invoke-direct { v0, v7, v6, v8 }, Landroidx/constraintlayout/widget/ConstraintLayout$c;->d(III)Z
    move-result v7
    if-eqz v7, :L31
  .line 48
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->B()I
    move-result v7
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->v()I
    move-result v8
    invoke-direct { v0, v7, v5, v8 }, Landroidx/constraintlayout/widget/ConstraintLayout$c;->d(III)Z
    move-result v7
    if-eqz v7, :L31
    const/4 v7, 1
    goto :L32
  :L31
    const/4 v7, 0
  :L32
    if-eqz v7, :L33
  .line 49
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->R()I
    move-result v3
    iput v3, v2, Lc/e/b/k/m/b$a;->e:I
  .line 50
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->v()I
    move-result v3
    iput v3, v2, Lc/e/b/k/m/b$a;->f:I
  .line 51
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->n()I
    move-result v1
    iput v1, v2, Lc/e/b/k/m/b$a;->g:I
    return-void
  :L33
  .line 52
    sget-object v7, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v3, v7, :L34
    const/4 v7, 1
    goto :L35
  :L34
    const/4 v7, 0
  :L35
  .line 53
    sget-object v8, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v4, v8, :L36
    const/4 v8, 1
    goto :L37
  :L36
    const/4 v8, 0
  :L37
  .line 54
    sget-object v9, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;
    if-eq v4, v9, :L39
    sget-object v9, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    if-ne v4, v9, :L38
    goto :L39
  :L38
    const/4 v4, 0
    goto :L40
  :L39
    const/4 v4, 1
  :L40
  .line 55
    sget-object v9, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;
    if-eq v3, v9, :L42
    sget-object v9, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    if-ne v3, v9, :L41
    goto :L42
  :L41
    const/4 v3, 0
    goto :L43
  :L42
    const/4 v3, 1
  :L43
    const/4 v9, 0
    if-eqz v7, :L44
  .line 56
    iget v11, v1, Lc/e/b/k/e;->U:F
    cmpl-float v11, v11, v9
    if-lez v11, :L44
    const/4 v11, 1
    goto :L45
  :L44
    const/4 v11, 0
  :L45
    if-eqz v8, :L46
  .line 57
    iget v12, v1, Lc/e/b/k/e;->U:F
    cmpl-float v9, v12, v9
    if-lez v9, :L46
    const/4 v9, 1
    goto :L47
  :L46
    const/4 v9, 0
  :L47
    if-nez v10, :L48
    return-void
  :L48
  .line 58
    invoke-virtual { v10 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v12
    check-cast v12, Landroidx/constraintlayout/widget/ConstraintLayout$b;
  .line 59
    iget v13, v2, Lc/e/b/k/m/b$a;->j:I
    sget v14, Lc/e/b/k/m/b$a;->l:I
    if-eq v13, v14, :L50
    sget v14, Lc/e/b/k/m/b$a;->m:I
    if-eq v13, v14, :L50
    if-eqz v7, :L50
    iget v7, v1, Lc/e/b/k/e;->n:I
    if-nez v7, :L50
    if-eqz v8, :L50
    iget v7, v1, Lc/e/b/k/e;->o:I
    if-eqz v7, :L49
    goto :L50
  :L49
    const/4 v0, -1
    const/4 v13, 0
    const/4 v14, 0
    const/4 v15, 0
    goto/16 :L66
  :L50
  .line 60
    instance-of v7, v10, Landroidx/constraintlayout/widget/j;
    if-eqz v7, :L51
    instance-of v7, v1, Lc/e/b/k/k;
    if-eqz v7, :L51
  .line 61
    move-object v7, v1
    check-cast v7, Lc/e/b/k/k;
  .line 62
    move-object v8, v10
    check-cast v8, Landroidx/constraintlayout/widget/j;
    invoke-virtual { v8, v7, v6, v5 }, Landroidx/constraintlayout/widget/j;->o(Lc/e/b/k/k;II)V
    goto :L52
  :L51
  .line 63
    invoke-virtual { v10, v6, v5 }, Landroid/view/View;->measure(II)V
  :L52
  .line 64
    invoke-virtual { v1, v6, v5 }, Lc/e/b/k/e;->F0(II)V
  .line 65
    invoke-virtual { v10 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v7
  .line 66
    invoke-virtual { v10 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v8
  .line 67
    invoke-virtual { v10 }, Landroid/view/View;->getBaseline()I
    move-result v13
  .line 68
    iget v14, v1, Lc/e/b/k/e;->q:I
    if-lez v14, :L53
  .line 69
    invoke-static { v14, v7 }, Ljava/lang/Math;->max(II)I
    move-result v14
    goto :L54
  :L53
    move v14, v7
  :L54
  .line 70
    iget v15, v1, Lc/e/b/k/e;->r:I
    if-lez v15, :L55
  .line 71
    invoke-static { v15, v14 }, Ljava/lang/Math;->min(II)I
    move-result v14
  :L55
  .line 72
    iget v15, v1, Lc/e/b/k/e;->t:I
    if-lez v15, :L56
  .line 73
    invoke-static { v15, v8 }, Ljava/lang/Math;->max(II)I
    move-result v15
    move/from16 v16, v5
    goto :L57
  :L56
    move/from16 v16, v5
    move v15, v8
  :L57
  .line 74
    iget v5, v1, Lc/e/b/k/e;->u:I
    if-lez v5, :L58
  .line 75
    invoke-static { v5, v15 }, Ljava/lang/Math;->min(II)I
    move-result v15
  :L58
  .line 76
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->h:Landroidx/constraintlayout/widget/ConstraintLayout;
    invoke-static { v5 }, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)I
    move-result v5
    const/4 v0, 1
    invoke-static { v5, v0 }, Lc/e/b/k/j;->b(II)Z
    move-result v5
    if-nez v5, :L60
    const/high16 v0, 16128
    if-eqz v11, :L59
    if-eqz v4, :L59
  .line 77
    iget v3, v1, Lc/e/b/k/e;->U:F
    int-to-float v4, v15
    mul-float v4, v4, v3
    add-float/2addr v4, v0
    float-to-int v14, v4
    goto :L60
  :L59
    if-eqz v9, :L60
    if-eqz v3, :L60
  .line 78
    iget v3, v1, Lc/e/b/k/e;->U:F
    int-to-float v4, v14
    div-float/2addr v4, v3
    add-float/2addr v4, v0
    float-to-int v15, v4
  :L60
    if-ne v7, v14, :L62
    if-eq v8, v15, :L61
    goto :L62
  :L61
    const/4 v0, -1
    goto :L66
  :L62
    const/high16 v0, 16384
    if-eq v7, v14, :L63
  .line 79
    invoke-static { v14, v0 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v6
  :L63
    if-eq v8, v15, :L64
  .line 80
    invoke-static { v15, v0 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v5
    goto :L65
  :L64
    move/from16 v5, v16
  :L65
  .line 81
    invoke-virtual { v10, v6, v5 }, Landroid/view/View;->measure(II)V
  .line 82
    invoke-virtual { v1, v6, v5 }, Lc/e/b/k/e;->F0(II)V
  .line 83
    invoke-virtual { v10 }, Landroid/view/View;->getMeasuredWidth()I
    move-result v14
  .line 84
    invoke-virtual { v10 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v15
  .line 85
    invoke-virtual { v10 }, Landroid/view/View;->getBaseline()I
    move-result v13
    goto :L61
  :L66
    if-eq v13, v0, :L67
    const/4 v0, 1
    goto :L68
  :L67
    const/4 v0, 0
  :L68
  .line 86
    iget v3, v2, Lc/e/b/k/m/b$a;->c:I
    if-ne v14, v3, :L70
    iget v3, v2, Lc/e/b/k/m/b$a;->d:I
    if-eq v15, v3, :L69
    goto :L70
  :L69
    const/4 v5, 0
    goto :L71
  :L70
    const/4 v5, 1
  :L71
    iput-boolean v5, v2, Lc/e/b/k/m/b$a;->i:Z
  .line 87
    iget-boolean v3, v12, Landroidx/constraintlayout/widget/ConstraintLayout$b;->X:Z
    if-eqz v3, :L72
    const/4 v0, 1
  :L72
    if-eqz v0, :L73
    const/4 v3, -1
    if-eq v13, v3, :L73
  .line 88
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->n()I
    move-result v1
    if-eq v1, v13, :L73
    const/4 v1, 1
  .line 89
    iput-boolean v1, v2, Lc/e/b/k/m/b$a;->i:Z
  :L73
  .line 90
    iput v14, v2, Lc/e/b/k/m/b$a;->e:I
  .line 91
    iput v15, v2, Lc/e/b/k/m/b$a;->f:I
  .line 92
    iput-boolean v0, v2, Lc/e/b/k/m/b$a;->h:Z
  .line 93
    iput v13, v2, Lc/e/b/k/m/b$a;->g:I
    return-void
.end method

.method public final b()V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L2
  .line 2
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;
    invoke-virtual { v3, v2 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v3
  .line 3
    instance-of v4, v3, Landroidx/constraintlayout/widget/g;
    if-eqz v4, :L1
  .line 4
    check-cast v3, Landroidx/constraintlayout/widget/g;
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;
    invoke-virtual { v3, v4 }, Landroidx/constraintlayout/widget/g;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V
  :L1
    add-int/lit8 v2, v2, 1
    goto :L0
  :L2
  .line 5
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;
    invoke-static { v0 }, Landroidx/constraintlayout/widget/ConstraintLayout;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    if-lez v0, :L4
  :L3
    if-ge v1, v0, :L4
  .line 6
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;
    invoke-static { v2 }, Landroidx/constraintlayout/widget/ConstraintLayout;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;
    move-result-object v2
    invoke-virtual { v2, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/constraintlayout/widget/b;
  .line 7
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;
    invoke-virtual { v2, v3 }, Landroidx/constraintlayout/widget/b;->k(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    add-int/lit8 v1, v1, 1
    goto :L3
  :L4
    return-void
.end method

.method public c(IIIIII)V
  .registers 7
  .line 1
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->b:I
  .line 2
    iput p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->c:I
  .line 3
    iput p5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->d:I
  .line 4
    iput p6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->e:I
  .line 5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->f:I
  .line 6
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->g:I
    return-void
.end method
