.class Landroidx/constraintlayout/widget/ConstraintLayout$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/e/b/k/m/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field final synthetic h:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method private d(III)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p2, :cond_4

    return v0

    .line 1
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p1, v2, :cond_20

    const/high16 p1, -0x80000000

    if-eq v1, p1, :cond_1d

    if-nez v1, :cond_20

    :cond_1d
    if-ne p3, p2, :cond_20

    return v0

    :cond_20
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a(Lc/e/b/k/e;Lc/e/b/k/m/b$a;)V
    .registers 20
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_9

    return-void

    .line 1
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->Q()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1f

    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->a0()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 2
    iput v5, v2, Lc/e/b/k/m/b$a;->e:I

    .line 3
    iput v5, v2, Lc/e/b/k/m/b$a;->f:I

    .line 4
    iput v5, v2, Lc/e/b/k/m/b$a;->g:I

    return-void

    .line 5
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->I()Lc/e/b/k/e;

    move-result-object v3

    if-nez v3, :cond_26

    return-void

    .line 6
    :cond_26
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
    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->q()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 13
    sget-object v11, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v11, v11, v12

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v5, -0x2

    const/4 v15, 0x1

    if-eq v11, v15, :cond_b2

    if-eq v11, v14, :cond_ab

    if-eq v11, v13, :cond_9e

    if-eq v11, v12, :cond_53

    const/4 v6, 0x0

    goto/16 :goto_b8

    .line 14
    :cond_53
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->f:I

    invoke-static {v6, v9, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 15
    iget v9, v1, Lc/e/b/k/e;->n:I

    if-ne v9, v15, :cond_5f

    const/4 v9, 0x1

    goto :goto_60

    :cond_5f
    const/4 v9, 0x0

    .line 16
    :goto_60
    iget v11, v2, Lc/e/b/k/m/b$a;->j:I

    sget v12, Lc/e/b/k/m/b$a;->l:I

    if-eq v11, v12, :cond_6a

    sget v12, Lc/e/b/k/m/b$a;->m:I

    if-ne v11, v12, :cond_b8

    .line 17
    :cond_6a
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->v()I

    move-result v12

    if-ne v11, v12, :cond_76

    const/4 v11, 0x1

    goto :goto_77

    :cond_76
    const/4 v11, 0x0

    .line 18
    :goto_77
    iget v12, v2, Lc/e/b/k/m/b$a;->j:I

    sget v13, Lc/e/b/k/m/b$a;->m:I

    if-eq v12, v13, :cond_90

    if-eqz v9, :cond_90

    if-eqz v9, :cond_83

    if-nez v11, :cond_90

    :cond_83
    instance-of v9, v10, Landroidx/constraintlayout/widget/g;

    if-nez v9, :cond_90

    .line 19
    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->e0()Z

    move-result v9

    if-eqz v9, :cond_8e

    goto :goto_90

    :cond_8e
    const/4 v9, 0x0

    goto :goto_91

    :cond_90
    :goto_90
    const/4 v9, 0x1

    :goto_91
    if-eqz v9, :cond_b8

    .line 20
    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->R()I

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_b8

    .line 21
    :cond_9e
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->f:I

    .line 22
    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->z()I

    move-result v11

    add-int/2addr v9, v11

    const/4 v11, -0x1

    .line 23
    invoke-static {v6, v9, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    goto :goto_b8

    .line 24
    :cond_ab
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->f:I

    invoke-static {v6, v9, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    goto :goto_b8

    :cond_b2
    const/high16 v9, 0x40000000    # 2.0f

    .line 25
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 26
    :cond_b8
    :goto_b8
    sget-object v9, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v9, v9, v11

    if-eq v9, v15, :cond_12c

    if-eq v9, v14, :cond_125

    const/4 v7, 0x3

    if-eq v9, v7, :cond_118

    const/4 v7, 0x4

    if-eq v9, v7, :cond_cd

    const/4 v5, 0x0

    goto/16 :goto_133

    .line 27
    :cond_cd
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->g:I

    invoke-static {v7, v8, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 28
    iget v7, v1, Lc/e/b/k/e;->o:I

    if-ne v7, v15, :cond_d9

    const/4 v7, 0x1

    goto :goto_da

    :cond_d9
    const/4 v7, 0x0

    .line 29
    :goto_da
    iget v8, v2, Lc/e/b/k/m/b$a;->j:I

    sget v9, Lc/e/b/k/m/b$a;->l:I

    if-eq v8, v9, :cond_e4

    sget v9, Lc/e/b/k/m/b$a;->m:I

    if-ne v8, v9, :cond_133

    .line 30
    :cond_e4
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->R()I

    move-result v9

    if-ne v8, v9, :cond_f0

    const/4 v8, 0x1

    goto :goto_f1

    :cond_f0
    const/4 v8, 0x0

    .line 31
    :goto_f1
    iget v9, v2, Lc/e/b/k/m/b$a;->j:I

    sget v11, Lc/e/b/k/m/b$a;->m:I

    if-eq v9, v11, :cond_10a

    if-eqz v7, :cond_10a

    if-eqz v7, :cond_fd

    if-nez v8, :cond_10a

    :cond_fd
    instance-of v7, v10, Landroidx/constraintlayout/widget/g;

    if-nez v7, :cond_10a

    .line 32
    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->f0()Z

    move-result v7

    if-eqz v7, :cond_108

    goto :goto_10a

    :cond_108
    const/4 v7, 0x0

    goto :goto_10b

    :cond_10a
    :goto_10a
    const/4 v7, 0x1

    :goto_10b
    if-eqz v7, :cond_133

    .line 33
    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->v()I

    move-result v5

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_133

    .line 34
    :cond_118
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->g:I

    .line 35
    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->P()I

    move-result v7

    add-int/2addr v8, v7

    const/4 v7, -0x1

    .line 36
    invoke-static {v5, v8, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    goto :goto_133

    .line 37
    :cond_125
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->g:I

    invoke-static {v7, v8, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    goto :goto_133

    :cond_12c
    const/high16 v5, 0x40000000    # 2.0f

    .line 38
    invoke-static {v7, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    move v5, v7

    .line 39
    :cond_133
    :goto_133
    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->I()Lc/e/b/k/e;

    move-result-object v7

    check-cast v7, Lc/e/b/k/f;

    if-eqz v7, :cond_1b5

    .line 40
    iget-object v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v8

    const/16 v9, 0x100

    invoke-static {v8, v9}, Lc/e/b/k/j;->b(II)Z

    move-result v8

    if-eqz v8, :cond_1b5

    .line 41
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->R()I

    move-result v9

    if-ne v8, v9, :cond_1b5

    .line 42
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v7}, Lc/e/b/k/e;->R()I

    move-result v9

    if-ge v8, v9, :cond_1b5

    .line 43
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->v()I

    move-result v9

    if-ne v8, v9, :cond_1b5

    .line 44
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v7}, Lc/e/b/k/e;->v()I

    move-result v7

    if-ge v8, v7, :cond_1b5

    .line 45
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->n()I

    move-result v8

    if-ne v7, v8, :cond_1b5

    .line 46
    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->d0()Z

    move-result v7

    if-nez v7, :cond_1b5

    .line 47
    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->A()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->R()I

    move-result v8

    invoke-direct {v0, v7, v6, v8}, Landroidx/constraintlayout/widget/ConstraintLayout$c;->d(III)Z

    move-result v7

    if-eqz v7, :cond_19f

    .line 48
    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->B()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->v()I

    move-result v8

    invoke-direct {v0, v7, v5, v8}, Landroidx/constraintlayout/widget/ConstraintLayout$c;->d(III)Z

    move-result v7

    if-eqz v7, :cond_19f

    const/4 v7, 0x1

    goto :goto_1a0

    :cond_19f
    const/4 v7, 0x0

    :goto_1a0
    if-eqz v7, :cond_1b5

    .line 49
    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->R()I

    move-result v3

    iput v3, v2, Lc/e/b/k/m/b$a;->e:I

    .line 50
    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->v()I

    move-result v3

    iput v3, v2, Lc/e/b/k/m/b$a;->f:I

    .line 51
    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->n()I

    move-result v1

    iput v1, v2, Lc/e/b/k/m/b$a;->g:I

    return-void

    .line 52
    :cond_1b5
    sget-object v7, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v3, v7, :cond_1bb

    const/4 v7, 0x1

    goto :goto_1bc

    :cond_1bb
    const/4 v7, 0x0

    .line 53
    :goto_1bc
    sget-object v8, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v4, v8, :cond_1c2

    const/4 v8, 0x1

    goto :goto_1c3

    :cond_1c2
    const/4 v8, 0x0

    .line 54
    :goto_1c3
    sget-object v9, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;

    if-eq v4, v9, :cond_1ce

    sget-object v9, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    if-ne v4, v9, :cond_1cc

    goto :goto_1ce

    :cond_1cc
    const/4 v4, 0x0

    goto :goto_1cf

    :cond_1ce
    :goto_1ce
    const/4 v4, 0x1

    .line 55
    :goto_1cf
    sget-object v9, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;

    if-eq v3, v9, :cond_1da

    sget-object v9, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    if-ne v3, v9, :cond_1d8

    goto :goto_1da

    :cond_1d8
    const/4 v3, 0x0

    goto :goto_1db

    :cond_1da
    :goto_1da
    const/4 v3, 0x1

    :goto_1db
    const/4 v9, 0x0

    if-eqz v7, :cond_1e6

    .line 56
    iget v11, v1, Lc/e/b/k/e;->U:F

    cmpl-float v11, v11, v9

    if-lez v11, :cond_1e6

    const/4 v11, 0x1

    goto :goto_1e7

    :cond_1e6
    const/4 v11, 0x0

    :goto_1e7
    if-eqz v8, :cond_1f1

    .line 57
    iget v12, v1, Lc/e/b/k/e;->U:F

    cmpl-float v9, v12, v9

    if-lez v9, :cond_1f1

    const/4 v9, 0x1

    goto :goto_1f2

    :cond_1f1
    const/4 v9, 0x0

    :goto_1f2
    if-nez v10, :cond_1f5

    return-void

    .line 58
    :cond_1f5
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 59
    iget v13, v2, Lc/e/b/k/m/b$a;->j:I

    sget v14, Lc/e/b/k/m/b$a;->l:I

    if-eq v13, v14, :cond_218

    sget v14, Lc/e/b/k/m/b$a;->m:I

    if-eq v13, v14, :cond_218

    if-eqz v7, :cond_218

    iget v7, v1, Lc/e/b/k/e;->n:I

    if-nez v7, :cond_218

    if-eqz v8, :cond_218

    iget v7, v1, Lc/e/b/k/e;->o:I

    if-eqz v7, :cond_212

    goto :goto_218

    :cond_212
    const/4 v0, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_2b4

    .line 60
    :cond_218
    :goto_218
    instance-of v7, v10, Landroidx/constraintlayout/widget/j;

    if-eqz v7, :cond_22a

    instance-of v7, v1, Lc/e/b/k/k;

    if-eqz v7, :cond_22a

    .line 61
    move-object v7, v1

    check-cast v7, Lc/e/b/k/k;

    .line 62
    move-object v8, v10

    check-cast v8, Landroidx/constraintlayout/widget/j;

    invoke-virtual {v8, v7, v6, v5}, Landroidx/constraintlayout/widget/j;->o(Lc/e/b/k/k;II)V

    goto :goto_22d

    .line 63
    :cond_22a
    invoke-virtual {v10, v6, v5}, Landroid/view/View;->measure(II)V

    .line 64
    :goto_22d
    invoke-virtual {v1, v6, v5}, Lc/e/b/k/e;->F0(II)V

    .line 65
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 66
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 67
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v13

    .line 68
    iget v14, v1, Lc/e/b/k/e;->q:I

    if-lez v14, :cond_245

    .line 69
    invoke-static {v14, v7}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_246

    :cond_245
    move v14, v7

    .line 70
    :goto_246
    iget v15, v1, Lc/e/b/k/e;->r:I

    if-lez v15, :cond_24e

    .line 71
    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 72
    :cond_24e
    iget v15, v1, Lc/e/b/k/e;->t:I

    if-lez v15, :cond_259

    .line 73
    invoke-static {v15, v8}, Ljava/lang/Math;->max(II)I

    move-result v15

    move/from16 v16, v5

    goto :goto_25c

    :cond_259
    move/from16 v16, v5

    move v15, v8

    .line 74
    :goto_25c
    iget v5, v1, Lc/e/b/k/e;->u:I

    if-lez v5, :cond_264

    .line 75
    invoke-static {v5, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 76
    :cond_264
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v5

    const/4 v0, 0x1

    invoke-static {v5, v0}, Lc/e/b/k/j;->b(II)Z

    move-result v5

    if-nez v5, :cond_289

    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz v11, :cond_27f

    if-eqz v4, :cond_27f

    .line 77
    iget v3, v1, Lc/e/b/k/e;->U:F

    int-to-float v4, v15

    mul-float v4, v4, v3

    add-float/2addr v4, v0

    float-to-int v14, v4

    goto :goto_289

    :cond_27f
    if-eqz v9, :cond_289

    if-eqz v3, :cond_289

    .line 78
    iget v3, v1, Lc/e/b/k/e;->U:F

    int-to-float v4, v14

    div-float/2addr v4, v3

    add-float/2addr v4, v0

    float-to-int v15, v4

    :cond_289
    :goto_289
    if-ne v7, v14, :cond_290

    if-eq v8, v15, :cond_28e

    goto :goto_290

    :cond_28e
    :goto_28e
    const/4 v0, -0x1

    goto :goto_2b4

    :cond_290
    :goto_290
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v7, v14, :cond_298

    .line 79
    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    :cond_298
    if-eq v8, v15, :cond_29f

    .line 80
    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_2a1

    :cond_29f
    move/from16 v5, v16

    .line 81
    :goto_2a1
    invoke-virtual {v10, v6, v5}, Landroid/view/View;->measure(II)V

    .line 82
    invoke-virtual {v1, v6, v5}, Lc/e/b/k/e;->F0(II)V

    .line 83
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 84
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 85
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v13

    goto :goto_28e

    :goto_2b4
    if-eq v13, v0, :cond_2b8

    const/4 v0, 0x1

    goto :goto_2b9

    :cond_2b8
    const/4 v0, 0x0

    .line 86
    :goto_2b9
    iget v3, v2, Lc/e/b/k/m/b$a;->c:I

    if-ne v14, v3, :cond_2c4

    iget v3, v2, Lc/e/b/k/m/b$a;->d:I

    if-eq v15, v3, :cond_2c2

    goto :goto_2c4

    :cond_2c2
    const/4 v5, 0x0

    goto :goto_2c5

    :cond_2c4
    :goto_2c4
    const/4 v5, 0x1

    :goto_2c5
    iput-boolean v5, v2, Lc/e/b/k/m/b$a;->i:Z

    .line 87
    iget-boolean v3, v12, Landroidx/constraintlayout/widget/ConstraintLayout$b;->X:Z

    if-eqz v3, :cond_2cc

    const/4 v0, 0x1

    :cond_2cc
    if-eqz v0, :cond_2da

    const/4 v3, -0x1

    if-eq v13, v3, :cond_2da

    .line 88
    invoke-virtual/range {p1 .. p1}, Lc/e/b/k/e;->n()I

    move-result v1

    if-eq v1, v13, :cond_2da

    const/4 v1, 0x1

    .line 89
    iput-boolean v1, v2, Lc/e/b/k/m/b$a;->i:Z

    .line 90
    :cond_2da
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

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_1e

    .line 2
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3
    instance-of v4, v3, Landroidx/constraintlayout/widget/g;

    if-eqz v4, :cond_1b

    .line 4
    check-cast v3, Landroidx/constraintlayout/widget/g;

    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/g;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 5
    :cond_1e
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_40

    :goto_2a
    if-ge v1, v0, :cond_40

    .line 6
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/b;

    .line 7
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/b;->k(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_40
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
