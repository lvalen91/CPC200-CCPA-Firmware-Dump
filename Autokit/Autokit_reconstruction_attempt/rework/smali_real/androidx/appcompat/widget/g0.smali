.class public Landroidx/appcompat/widget/g0;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/g0$a;
    }
.end annotation


# instance fields
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/g0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/g0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 15

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/appcompat/widget/g0;->b:Z

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Landroidx/appcompat/widget/g0;->c:I

    const/4 v2, 0x0

    .line 6
    iput v2, p0, Landroidx/appcompat/widget/g0;->d:I

    const v3, 0x800033

    .line 7
    iput v3, p0, Landroidx/appcompat/widget/g0;->f:I

    .line 8
    sget-object v3, Lc/a/j;->LinearLayoutCompat:[I

    invoke-static {p1, p2, v3, p3, v2}, Landroidx/appcompat/widget/u0;->v(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/u0;

    move-result-object v3

    .line 9
    sget-object v6, Lc/a/j;->LinearLayoutCompat:[I

    .line 10
    invoke-virtual {v3}, Landroidx/appcompat/widget/u0;->r()Landroid/content/res/TypedArray;

    move-result-object v8

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move v9, p3

    .line 11
    invoke-static/range {v4 .. v10}, Landroidx/core/view/v;->m0(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 12
    sget p1, Lc/a/j;->LinearLayoutCompat_android_orientation:I

    invoke-virtual {v3, p1, v1}, Landroidx/appcompat/widget/u0;->k(II)I

    move-result p1

    if-ltz p1, :cond_30

    .line 13
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/g0;->setOrientation(I)V

    .line 14
    :cond_30
    sget p1, Lc/a/j;->LinearLayoutCompat_android_gravity:I

    invoke-virtual {v3, p1, v1}, Landroidx/appcompat/widget/u0;->k(II)I

    move-result p1

    if-ltz p1, :cond_3b

    .line 15
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/g0;->setGravity(I)V

    .line 16
    :cond_3b
    sget p1, Lc/a/j;->LinearLayoutCompat_android_baselineAligned:I

    invoke-virtual {v3, p1, v0}, Landroidx/appcompat/widget/u0;->a(IZ)Z

    move-result p1

    if-nez p1, :cond_46

    .line 17
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/g0;->setBaselineAligned(Z)V

    .line 18
    :cond_46
    sget p1, Lc/a/j;->LinearLayoutCompat_android_weightSum:I

    const/high16 p2, -0x40800000    # -1.0f

    invoke-virtual {v3, p1, p2}, Landroidx/appcompat/widget/u0;->i(IF)F

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/g0;->h:F

    .line 19
    sget p1, Lc/a/j;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    .line 20
    invoke-virtual {v3, p1, v1}, Landroidx/appcompat/widget/u0;->k(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/g0;->c:I

    .line 21
    sget p1, Lc/a/j;->LinearLayoutCompat_measureWithLargestChild:I

    invoke-virtual {v3, p1, v2}, Landroidx/appcompat/widget/u0;->a(IZ)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/appcompat/widget/g0;->i:Z

    .line 22
    sget p1, Lc/a/j;->LinearLayoutCompat_divider:I

    invoke-virtual {v3, p1}, Landroidx/appcompat/widget/u0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/g0;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    sget p1, Lc/a/j;->LinearLayoutCompat_showDividers:I

    invoke-virtual {v3, p1, v2}, Landroidx/appcompat/widget/u0;->k(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/g0;->o:I

    .line 24
    sget p1, Lc/a/j;->LinearLayoutCompat_dividerPadding:I

    invoke-virtual {v3, p1, v2}, Landroidx/appcompat/widget/u0;->f(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/g0;->p:I

    .line 25
    invoke-virtual {v3}, Landroidx/appcompat/widget/u0;->w()V

    return-void
.end method

.method private A(Landroid/view/View;IIII)V
    .registers 6

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    .line 1
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private k(II)V
    .registers 13

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, p1, :cond_3a

    .line 2
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/g0;->s(I)Landroid/view/View;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_37

    .line 4
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/appcompat/widget/g0$a;

    .line 5
    iget v2, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_37

    .line 6
    iget v9, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 7
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    move v6, v0

    .line 8
    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 9
    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_3a
    return-void
.end method

.method private l(II)V
    .registers 13

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, p1, :cond_3a

    .line 2
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/g0;->s(I)Landroid/view/View;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_37

    .line 4
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/appcompat/widget/g0$a;

    .line 5
    iget v2, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_37

    .line 6
    iget v9, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 7
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, v0

    move v6, p2

    .line 8
    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 9
    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_3a
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 1
    instance-of p1, p1, Landroidx/appcompat/widget/g0$a;

    return p1
.end method

.method g(Landroid/graphics/Canvas;)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/g0;->getVirtualChildCount()I

    move-result v0

    .line 2
    invoke-static {p0}, Landroidx/appcompat/widget/a1;->b(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_3f

    .line 3
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/g0;->s(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 4
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3c

    .line 5
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/g0;->t(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 6
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/g0$a;

    if-eqz v1, :cond_2f

    .line 7
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    goto :goto_39

    .line 8
    :cond_2f
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/g0;->m:I

    sub-int/2addr v3, v4

    .line 9
    :goto_39
    invoke-virtual {p0, p1, v3}, Landroidx/appcompat/widget/g0;->j(Landroid/graphics/Canvas;I)V

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 10
    :cond_3f
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/g0;->t(I)Z

    move-result v2

    if-eqz v2, :cond_7d

    add-int/lit8 v0, v0, -0x1

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/g0;->s(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_60

    if-eqz v1, :cond_54

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    goto :goto_7a

    .line 13
    :cond_54
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/g0;->m:I

    goto :goto_71

    .line 14
    :cond_60
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/g0$a;

    if-eqz v1, :cond_73

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/g0;->m:I

    :goto_71
    sub-int/2addr v0, v1

    goto :goto_7a

    .line 16
    :cond_73
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    .line 17
    :goto_7a
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/g0;->j(Landroid/graphics/Canvas;I)V

    :cond_7d
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/g0;->m()Landroidx/appcompat/widget/g0$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/g0;->n(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/g0$a;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/g0;->o(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/g0$a;

    move-result-object p1

    return-object p1
.end method

.method public getBaseline()I
    .registers 6

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/g0;->c:I

    if-gez v0, :cond_9

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0

    .line 3
    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/g0;->c:I

    if-le v0, v1, :cond_77

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_29

    .line 6
    iget v0, p0, Landroidx/appcompat/widget/g0;->c:I

    if-nez v0, :cond_21

    return v2

    .line 7
    :cond_21
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_29
    iget v2, p0, Landroidx/appcompat/widget/g0;->d:I

    .line 9
    iget v3, p0, Landroidx/appcompat/widget/g0;->e:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6c

    .line 10
    iget v3, p0, Landroidx/appcompat/widget/g0;->f:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x30

    if-eq v3, v4, :cond_6c

    const/16 v4, 0x10

    if-eq v3, v4, :cond_53

    const/16 v4, 0x50

    if-eq v3, v4, :cond_41

    goto :goto_6c

    .line 11
    :cond_41
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/g0;->g:I

    sub-int/2addr v2, v3

    goto :goto_6c

    .line 12
    :cond_53
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/g0;->g:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 13
    :cond_6c
    :goto_6c
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/g0$a;

    .line 14
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2

    .line 15
    :cond_77
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

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
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

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
    invoke-virtual {p0}, Landroidx/appcompat/widget/g0;->getVirtualChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_31

    .line 2
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/g0;->s(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 3
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2e

    .line 4
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/g0;->t(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/g0$a;

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/g0;->n:I

    sub-int/2addr v2, v3

    .line 7
    invoke-virtual {p0, p1, v2}, Landroidx/appcompat/widget/g0;->i(Landroid/graphics/Canvas;I)V

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 8
    :cond_31
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/g0;->t(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    add-int/lit8 v0, v0, -0x1

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/g0;->s(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4c

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/g0;->n:I

    sub-int/2addr v0, v1

    goto :goto_59

    .line 11
    :cond_4c
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/g0$a;

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 13
    :goto_59
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/g0;->i(Landroid/graphics/Canvas;I)V

    :cond_5c
    return-void
.end method

.method i(Landroid/graphics/Canvas;I)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/g0;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/g0;->p:I

    add-int/2addr v1, v2

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/g0;->p:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/g0;->n:I

    add-int/2addr v3, p2

    .line 3
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4
    iget-object p2, p0, Landroidx/appcompat/widget/g0;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method j(Landroid/graphics/Canvas;I)V
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/g0;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/g0;->p:I

    add-int/2addr v1, v2

    iget v2, p0, Landroidx/appcompat/widget/g0;->m:I

    add-int/2addr v2, p2

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/g0;->p:I

    sub-int/2addr v3, v4

    .line 3
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4
    iget-object p2, p0, Landroidx/appcompat/widget/g0;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected m()Landroidx/appcompat/widget/g0$a;
    .registers 4

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/g0;->e:I

    const/4 v1, -0x2

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Landroidx/appcompat/widget/g0$a;

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/widget/g0$a;-><init>(II)V

    return-object v0

    :cond_b
    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    .line 3
    new-instance v0, Landroidx/appcompat/widget/g0$a;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroidx/appcompat/widget/g0$a;-><init>(II)V

    return-object v0

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public n(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/g0$a;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/g0$a;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/g0$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected o(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/g0$a;
    .registers 3

    .line 1
    new-instance v0, Landroidx/appcompat/widget/g0$a;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/g0$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/g0;->l:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget v0, p0, Landroidx/appcompat/widget/g0;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/g0;->h(Landroid/graphics/Canvas;)V

    goto :goto_11

    .line 4
    :cond_e
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/g0;->g(Landroid/graphics/Canvas;)V

    :goto_11
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string v0, "androidx.appcompat.widget.LinearLayoutCompat"

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "androidx.appcompat.widget.LinearLayoutCompat"

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    .line 1
    iget p1, p0, Landroidx/appcompat/widget/g0;->e:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 2
    invoke-virtual {p0, p2, p3, p4, p5}, Landroidx/appcompat/widget/g0;->v(IIII)V

    goto :goto_c

    .line 3
    :cond_9
    invoke-virtual {p0, p2, p3, p4, p5}, Landroidx/appcompat/widget/g0;->u(IIII)V

    :goto_c
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/g0;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/g0;->z(II)V

    goto :goto_c

    .line 3
    :cond_9
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/g0;->x(II)V

    :goto_c
    return-void
.end method

.method p(Landroid/view/View;I)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method q(Landroid/view/View;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method r(Landroid/view/View;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method s(I)Landroid/view/View;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

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

    if-ltz p1, :cond_b

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_b

    .line 2
    iput p1, p0, Landroidx/appcompat/widget/g0;->c:I

    return-void

    .line 3
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "base aligned child index out of range (0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/g0;->l:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_5

    return-void

    .line 2
    :cond_5
    iput-object p1, p0, Landroidx/appcompat/widget/g0;->l:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/g0;->m:I

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/g0;->n:I

    goto :goto_1b

    .line 5
    :cond_17
    iput v0, p0, Landroidx/appcompat/widget/g0;->m:I

    .line 6
    iput v0, p0, Landroidx/appcompat/widget/g0;->n:I

    :goto_1b
    if-nez p1, :cond_1e

    const/4 v0, 0x1

    .line 7
    :cond_1e
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

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

    if-eq v0, p1, :cond_19

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_e

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_e
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_14

    or-int/lit8 p1, p1, 0x30

    .line 2
    :cond_14
    iput p1, p0, Landroidx/appcompat/widget/g0;->f:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_19
    return-void
.end method

.method public setHorizontalGravity(I)V
    .registers 4

    const v0, 0x800007

    and-int/2addr p1, v0

    .line 1
    iget v1, p0, Landroidx/appcompat/widget/g0;->f:I

    and-int/2addr v0, v1

    if-eq v0, p1, :cond_13

    const v0, -0x800008

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    .line 2
    iput p1, p0, Landroidx/appcompat/widget/g0;->f:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_13
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

    if-eq v0, p1, :cond_9

    .line 2
    iput p1, p0, Landroidx/appcompat/widget/g0;->e:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_9
    return-void
.end method

.method public setShowDividers(I)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/g0;->o:I

    if-eq p1, v0, :cond_7

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3
    :cond_7
    iput p1, p0, Landroidx/appcompat/widget/g0;->o:I

    return-void
.end method

.method public setVerticalGravity(I)V
    .registers 4

    and-int/lit8 p1, p1, 0x70

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/g0;->f:I

    and-int/lit8 v1, v0, 0x70

    if-eq v1, p1, :cond_10

    and-int/lit8 v0, v0, -0x71

    or-int/2addr p1, v0

    .line 2
    iput p1, p0, Landroidx/appcompat/widget/g0;->f:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_10
    return-void
.end method

.method public setWeightSum(F)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/g0;->h:F

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected t(I)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_b

    .line 1
    iget p1, p0, Landroidx/appcompat/widget/g0;->o:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0

    .line 2
    :cond_b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_19

    .line 3
    iget p1, p0, Landroidx/appcompat/widget/g0;->o:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0

    .line 4
    :cond_19
    iget v2, p0, Landroidx/appcompat/widget/g0;->o:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_33

    sub-int/2addr p1, v1

    :goto_20
    if-ltz p1, :cond_33

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_30

    const/4 v0, 0x1

    goto :goto_33

    :cond_30
    add-int/lit8 p1, p1, -0x1

    goto :goto_20

    :cond_33
    :goto_33
    return v0
.end method

.method u(IIII)V
    .registers 29

    move-object/from16 v6, p0

    .line 1
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/a1;->b(Landroid/view/View;)Z

    move-result v0

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    sub-int v1, p4, p2

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int v8, v1, v2

    sub-int/2addr v1, v7

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int v9, v1, v2

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/g0;->getVirtualChildCount()I

    move-result v10

    .line 6
    iget v1, v6, Landroidx/appcompat/widget/g0;->f:I

    const v2, 0x800007

    and-int/2addr v2, v1

    and-int/lit8 v11, v1, 0x70

    .line 7
    iget-boolean v12, v6, Landroidx/appcompat/widget/g0;->b:Z

    .line 8
    iget-object v13, v6, Landroidx/appcompat/widget/g0;->j:[I

    .line 9
    iget-object v14, v6, Landroidx/appcompat/widget/g0;->k:[I

    .line 10
    invoke-static/range {p0 .. p0}, Landroidx/core/view/v;->C(Landroid/view/View;)I

    move-result v1

    .line 11
    invoke-static {v2, v1}, Landroidx/core/view/e;->b(II)I

    move-result v1

    const/4 v15, 0x2

    const/4 v5, 0x1

    if-eq v1, v5, :cond_4b

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3f

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    goto :goto_56

    .line 13
    :cond_3f
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    add-int v1, v1, p3

    sub-int v1, v1, p1

    iget v2, v6, Landroidx/appcompat/widget/g0;->g:I

    sub-int/2addr v1, v2

    goto :goto_56

    .line 14
    :cond_4b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int v2, p3, p1

    iget v3, v6, Landroidx/appcompat/widget/g0;->g:I

    sub-int/2addr v2, v3

    div-int/2addr v2, v15

    add-int/2addr v1, v2

    :goto_56
    const/4 v2, 0x0

    if-eqz v0, :cond_60

    add-int/lit8 v0, v10, -0x1

    move/from16 v16, v0

    const/16 v17, -0x1

    goto :goto_64

    :cond_60
    const/16 v16, 0x0

    const/16 v17, 0x1

    :goto_64
    const/4 v3, 0x0

    :goto_65
    if-ge v3, v10, :cond_13f

    mul-int v0, v17, v3

    add-int v2, v16, v0

    .line 15
    invoke-virtual {v6, v2}, Landroidx/appcompat/widget/g0;->s(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_78

    .line 16
    invoke-virtual {v6, v2}, Landroidx/appcompat/widget/g0;->y(I)I

    move-result v0

    add-int/2addr v1, v0

    goto/16 :goto_129

    .line 17
    :cond_78
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v15, 0x8

    if-eq v5, v15, :cond_127

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v4, v18

    check-cast v4, Landroidx/appcompat/widget/g0$a;

    move/from16 v18, v3

    if-eqz v12, :cond_a0

    .line 21
    iget v3, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 v19, v10

    const/4 v10, -0x1

    if-eq v3, v10, :cond_a2

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v10

    goto :goto_a3

    :cond_a0
    move/from16 v19, v10

    :cond_a2
    const/4 v10, -0x1

    .line 23
    :goto_a3
    iget v3, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v3, :cond_a8

    move v3, v11

    :cond_a8
    and-int/lit8 v3, v3, 0x70

    move/from16 v20, v11

    const/16 v11, 0x10

    if-eq v3, v11, :cond_e3

    const/16 v11, 0x30

    if-eq v3, v11, :cond_d1

    const/16 v11, 0x50

    if-eq v3, v11, :cond_bb

    move v3, v7

    const/4 v11, -0x1

    goto :goto_e0

    :cond_bb
    sub-int v3, v8, v5

    .line 24
    iget v11, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v11

    const/4 v11, -0x1

    if-eq v10, v11, :cond_e0

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v21, v21, v10

    const/4 v10, 0x2

    .line 26
    aget v22, v14, v10

    sub-int v22, v22, v21

    sub-int v3, v3, v22

    goto :goto_e0

    :cond_d1
    const/4 v11, -0x1

    .line 27
    iget v3, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v7

    if-eq v10, v11, :cond_e0

    const/16 v21, 0x1

    .line 28
    aget v22, v13, v21

    sub-int v22, v22, v10

    add-int v3, v3, v22

    goto :goto_f1

    :cond_e0
    :goto_e0
    const/16 v21, 0x1

    goto :goto_f1

    :cond_e3
    const/4 v11, -0x1

    const/16 v21, 0x1

    sub-int v3, v9, v5

    const/4 v10, 0x2

    .line 29
    div-int/2addr v3, v10

    add-int/2addr v3, v7

    iget v10, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v10

    iget v10, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v10

    .line 30
    :goto_f1
    invoke-virtual {v6, v2}, Landroidx/appcompat/widget/g0;->t(I)Z

    move-result v10

    if-eqz v10, :cond_fa

    .line 31
    iget v10, v6, Landroidx/appcompat/widget/g0;->m:I

    add-int/2addr v1, v10

    .line 32
    :cond_fa
    iget v10, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v10, v1

    .line 33
    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/g0;->q(Landroid/view/View;)I

    move-result v1

    add-int v22, v10, v1

    move-object v1, v0

    move-object/from16 v0, p0

    move-object/from16 p1, v1

    move v11, v2

    move/from16 v2, v22

    move/from16 v22, v7

    const/16 v23, -0x1

    move-object v7, v4

    move v4, v15

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/g0;->A(Landroid/view/View;IIII)V

    .line 34
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v15, v0

    move-object/from16 v0, p1

    .line 35
    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/g0;->r(Landroid/view/View;)I

    move-result v1

    add-int/2addr v15, v1

    add-int/2addr v10, v15

    .line 36
    invoke-virtual {v6, v0, v11}, Landroidx/appcompat/widget/g0;->p(Landroid/view/View;I)I

    move-result v0

    add-int v3, v18, v0

    move v1, v10

    goto :goto_133

    :cond_127
    move/from16 v18, v3

    :goto_129
    move/from16 v22, v7

    move/from16 v19, v10

    move/from16 v20, v11

    const/16 v21, 0x1

    const/16 v23, -0x1

    :goto_133
    add-int/lit8 v3, v3, 0x1

    move/from16 v10, v19

    move/from16 v11, v20

    move/from16 v7, v22

    const/4 v5, 0x1

    const/4 v15, 0x2

    goto/16 :goto_65

    :cond_13f
    return-void
.end method

.method v(IIII)V
    .registers 22

    move-object/from16 v6, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    sub-int v0, p3, p1

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int v8, v0, v1

    sub-int/2addr v0, v7

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int v9, v0, v1

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/g0;->getVirtualChildCount()I

    move-result v10

    .line 5
    iget v0, v6, Landroidx/appcompat/widget/g0;->f:I

    and-int/lit8 v1, v0, 0x70

    const v2, 0x800007

    and-int v11, v0, v2

    const/16 v0, 0x10

    if-eq v1, v0, :cond_3b

    const/16 v0, 0x50

    if-eq v1, v0, :cond_2f

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    goto :goto_47

    .line 7
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    add-int v0, v0, p4

    sub-int v0, v0, p2

    iget v1, v6, Landroidx/appcompat/widget/g0;->g:I

    sub-int/2addr v0, v1

    goto :goto_47

    .line 8
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    sub-int v1, p4, p2

    iget v2, v6, Landroidx/appcompat/widget/g0;->g:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :goto_47
    const/4 v1, 0x0

    const/4 v12, 0x0

    :goto_49
    if-ge v12, v10, :cond_c8

    .line 9
    invoke-virtual {v6, v12}, Landroidx/appcompat/widget/g0;->s(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x1

    if-nez v13, :cond_59

    .line 10
    invoke-virtual {v6, v12}, Landroidx/appcompat/widget/g0;->y(I)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_c5

    .line 11
    :cond_59
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_c5

    .line 12
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 13
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 14
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/g0$a;

    .line 15
    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v1, :cond_75

    move v1, v11

    .line 16
    :cond_75
    invoke-static/range {p0 .. p0}, Landroidx/core/view/v;->C(Landroid/view/View;)I

    move-result v2

    .line 17
    invoke-static {v1, v2}, Landroidx/core/view/e;->b(II)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    if-eq v1, v14, :cond_8d

    const/4 v2, 0x5

    if-eq v1, v2, :cond_88

    .line 18
    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v7

    goto :goto_98

    :cond_88
    sub-int v1, v8, v4

    .line 19
    iget v2, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_97

    :cond_8d
    sub-int v1, v9, v4

    .line 20
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v7

    iget v2, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_97
    sub-int/2addr v1, v2

    :goto_98
    move v2, v1

    .line 21
    invoke-virtual {v6, v12}, Landroidx/appcompat/widget/g0;->t(I)Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 22
    iget v1, v6, Landroidx/appcompat/widget/g0;->n:I

    add-int/2addr v0, v1

    .line 23
    :cond_a2
    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v16, v0, v1

    .line 24
    invoke-virtual {v6, v13}, Landroidx/appcompat/widget/g0;->q(Landroid/view/View;)I

    move-result v0

    add-int v3, v16, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v14, v5

    move v5, v15

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/g0;->A(Landroid/view/View;IIII)V

    .line 25
    iget v0, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v15, v0

    invoke-virtual {v6, v13}, Landroidx/appcompat/widget/g0;->r(Landroid/view/View;)I

    move-result v0

    add-int/2addr v15, v0

    add-int v16, v16, v15

    .line 26
    invoke-virtual {v6, v13, v12}, Landroidx/appcompat/widget/g0;->p(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v12, v0

    move/from16 v0, v16

    :cond_c5
    :goto_c5
    const/4 v1, 0x1

    add-int/2addr v12, v1

    goto :goto_49

    :cond_c8
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
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method x(II)V
    .registers 40

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    .line 1
    iput v10, v7, Landroidx/appcompat/widget/g0;->g:I

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/g0;->getVirtualChildCount()I

    move-result v11

    .line 3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 4
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 5
    iget-object v0, v7, Landroidx/appcompat/widget/g0;->j:[I

    const/4 v14, 0x4

    if-eqz v0, :cond_1e

    iget-object v0, v7, Landroidx/appcompat/widget/g0;->k:[I

    if-nez v0, :cond_26

    :cond_1e
    new-array v0, v14, [I

    .line 6
    iput-object v0, v7, Landroidx/appcompat/widget/g0;->j:[I

    new-array v0, v14, [I

    .line 7
    iput-object v0, v7, Landroidx/appcompat/widget/g0;->k:[I

    .line 8
    :cond_26
    iget-object v15, v7, Landroidx/appcompat/widget/g0;->j:[I

    .line 9
    iget-object v6, v7, Landroidx/appcompat/widget/g0;->k:[I

    const/16 v16, 0x3

    const/4 v5, -0x1

    .line 10
    aput v5, v15, v16

    const/16 v17, 0x2

    aput v5, v15, v17

    const/16 v18, 0x1

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

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v12, v2, :cond_4c

    const/16 v19, 0x1

    goto :goto_4e

    :cond_4c
    const/16 v19, 0x0

    :goto_4e
    const/16 v20, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v14, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x0

    :goto_61
    move-object/from16 v28, v6

    const/16 v5, 0x8

    if-ge v1, v11, :cond_1ff

    .line 14
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/g0;->s(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_7f

    .line 15
    iget v5, v7, Landroidx/appcompat/widget/g0;->g:I

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/g0;->y(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v7, Landroidx/appcompat/widget/g0;->g:I

    :goto_76
    move v2, v1

    move/from16 v32, v3

    move/from16 v36, v4

    const/high16 v1, 0x40000000    # 2.0f

    goto/16 :goto_1ee

    .line 16
    :cond_7f
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-ne v10, v5, :cond_8b

    .line 17
    invoke-virtual {v7, v6, v1}, Landroidx/appcompat/widget/g0;->p(Landroid/view/View;I)I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_76

    .line 18
    :cond_8b
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/g0;->t(I)Z

    move-result v5

    if-eqz v5, :cond_98

    .line 19
    iget v5, v7, Landroidx/appcompat/widget/g0;->g:I

    iget v10, v7, Landroidx/appcompat/widget/g0;->m:I

    add-int/2addr v5, v10

    iput v5, v7, Landroidx/appcompat/widget/g0;->g:I

    .line 20
    :cond_98
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Landroidx/appcompat/widget/g0$a;

    .line 21
    iget v5, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v31, v0, v5

    if-ne v12, v2, :cond_ec

    .line 22
    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v0, :cond_ec

    cmpl-float v0, v5, v20

    if-lez v0, :cond_ec

    if-eqz v19, :cond_ba

    .line 23
    iget v0, v7, Landroidx/appcompat/widget/g0;->g:I

    iget v5, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v2, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v2

    add-int/2addr v0, v5

    iput v0, v7, Landroidx/appcompat/widget/g0;->g:I

    goto :goto_c8

    .line 24
    :cond_ba
    iget v0, v7, Landroidx/appcompat/widget/g0;->g:I

    .line 25
    iget v2, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v0

    iget v5, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v5

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Landroidx/appcompat/widget/g0;->g:I

    :goto_c8
    if-eqz v4, :cond_dd

    const/4 v0, 0x0

    .line 26
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 27
    invoke-virtual {v6, v2, v2}, Landroid/view/View;->measure(II)V

    move/from16 v34, v1

    move/from16 v32, v3

    move/from16 v36, v4

    move-object v3, v6

    const/16 v30, -0x2

    goto/16 :goto_168

    :cond_dd
    move/from16 v34, v1

    move/from16 v32, v3

    move/from16 v36, v4

    move-object v3, v6

    const/high16 v1, 0x40000000    # 2.0f

    const/16 v24, 0x1

    const/16 v30, -0x2

    goto/16 :goto_16a

    .line 28
    :cond_ec
    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v0, :cond_fb

    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v0, v0, v20

    if-lez v0, :cond_fb

    const/4 v5, -0x2

    .line 29
    iput v5, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v2, 0x0

    goto :goto_fe

    :cond_fb
    const/4 v5, -0x2

    const/high16 v2, -0x80000000

    :goto_fe
    cmpl-float v0, v31, v20

    if-nez v0, :cond_107

    .line 30
    iget v0, v7, Landroidx/appcompat/widget/g0;->g:I

    move/from16 v29, v0

    goto :goto_109

    :cond_107
    const/16 v29, 0x0

    :goto_109
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v34, v1

    move-object v1, v6

    move/from16 v35, v2

    move/from16 v2, v34

    move/from16 v32, v3

    move/from16 v3, p1

    move/from16 v36, v4

    move/from16 v4, v29

    const/4 v9, -0x1

    const/16 v29, -0x2

    move/from16 v5, p2

    move-object/from16 v29, v6

    const/high16 v9, -0x80000000

    const/16 v30, -0x2

    move/from16 v6, v33

    .line 31
    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/g0;->w(Landroid/view/View;IIIII)V

    move/from16 v0, v35

    if-eq v0, v9, :cond_132

    .line 32
    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 33
    :cond_132
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v19, :cond_14b

    .line 34
    iget v1, v7, Landroidx/appcompat/widget/g0;->g:I

    iget v2, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v0

    iget v3, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    move-object/from16 v3, v29

    .line 35
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/g0;->r(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    iput v1, v7, Landroidx/appcompat/widget/g0;->g:I

    goto :goto_162

    :cond_14b
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
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/g0;->r(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 39
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroidx/appcompat/widget/g0;->g:I

    :goto_162
    if-eqz v32, :cond_168

    .line 40
    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    :cond_168
    :goto_168
    const/high16 v1, 0x40000000    # 2.0f

    :goto_16a
    if-eq v13, v1, :cond_175

    .line 41
    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_175

    const/4 v0, 0x1

    const/16 v27, 0x1

    goto :goto_176

    :cond_175
    const/4 v0, 0x0

    .line 42
    :goto_176
    iget v2, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v4, v10, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    .line 43
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    .line 44
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    move/from16 v6, v25

    invoke-static {v6, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v25

    if-eqz v36, :cond_1b3

    .line 45
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1b3

    .line 46
    iget v6, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v6, :cond_199

    iget v6, v7, Landroidx/appcompat/widget/g0;->f:I

    :cond_199
    and-int/lit8 v6, v6, 0x70

    const/4 v9, 0x4

    shr-int/2addr v6, v9

    and-int/lit8 v6, v6, -0x2

    shr-int/lit8 v6, v6, 0x1

    .line 47
    aget v9, v15, v6

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v15, v6

    .line 48
    aget v9, v28, v6

    sub-int v5, v4, v5

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    aput v5, v28, v6

    :cond_1b3
    move/from16 v5, v21

    .line 49
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v21

    if-eqz v26, :cond_1c3

    .line 50
    iget v5, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1c3

    const/16 v26, 0x1

    goto :goto_1c5

    :cond_1c3
    const/16 v26, 0x0

    .line 51
    :goto_1c5
    iget v5, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v5, v5, v20

    if-lez v5, :cond_1d6

    if-eqz v0, :cond_1ce

    goto :goto_1cf

    :cond_1ce
    move v2, v4

    :goto_1cf
    move/from16 v10, v23

    .line 52
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v23

    goto :goto_1e4

    :cond_1d6
    move/from16 v10, v23

    if-eqz v0, :cond_1db

    goto :goto_1dc

    :cond_1db
    move v2, v4

    :goto_1dc
    move/from16 v4, v22

    .line 53
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v23, v10

    :goto_1e4
    move/from16 v10, v34

    .line 54
    invoke-virtual {v7, v3, v10}, Landroidx/appcompat/widget/g0;->p(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v0, v10

    move v2, v0

    move/from16 v0, v31

    :goto_1ee
    add-int/lit8 v2, v2, 0x1

    move/from16 v9, p2

    move v1, v2

    move-object/from16 v6, v28

    move/from16 v3, v32

    move/from16 v4, v36

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v5, -0x1

    const/4 v10, 0x0

    goto/16 :goto_61

    :cond_1ff
    move/from16 v32, v3

    move/from16 v36, v4

    move/from16 v2, v21

    move/from16 v4, v22

    move/from16 v10, v23

    move/from16 v6, v25

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v9, -0x80000000

    const/16 v30, -0x2

    .line 55
    iget v3, v7, Landroidx/appcompat/widget/g0;->g:I

    if-lez v3, :cond_222

    invoke-virtual {v7, v11}, Landroidx/appcompat/widget/g0;->t(I)Z

    move-result v3

    if-eqz v3, :cond_222

    .line 56
    iget v3, v7, Landroidx/appcompat/widget/g0;->g:I

    iget v1, v7, Landroidx/appcompat/widget/g0;->m:I

    add-int/2addr v3, v1

    iput v3, v7, Landroidx/appcompat/widget/g0;->g:I

    .line 57
    :cond_222
    aget v1, v15, v18

    const/4 v3, -0x1

    if-ne v1, v3, :cond_239

    const/4 v1, 0x0

    aget v5, v15, v1

    if-ne v5, v3, :cond_239

    aget v1, v15, v17

    if-ne v1, v3, :cond_239

    aget v1, v15, v16

    if-eq v1, v3, :cond_235

    goto :goto_239

    :cond_235
    move v1, v2

    move/from16 v23, v6

    goto :goto_26a

    .line 58
    :cond_239
    :goto_239
    aget v1, v15, v16

    const/4 v3, 0x0

    aget v5, v15, v3

    aget v9, v15, v18

    aget v3, v15, v17

    .line 59
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 60
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 61
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 62
    aget v3, v28, v16

    const/4 v5, 0x0

    aget v9, v28, v5

    aget v5, v28, v18

    move/from16 v23, v6

    aget v6, v28, v17

    .line 63
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 64
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 65
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 66
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_26a
    if-eqz v32, :cond_2cd

    const/high16 v2, -0x80000000

    if-eq v12, v2, :cond_272

    if-nez v12, :cond_2cd

    :cond_272
    const/4 v2, 0x0

    .line 67
    iput v2, v7, Landroidx/appcompat/widget/g0;->g:I

    const/4 v2, 0x0

    :goto_276
    if-ge v2, v11, :cond_2cd

    .line 68
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/g0;->s(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_288

    .line 69
    iget v3, v7, Landroidx/appcompat/widget/g0;->g:I

    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/g0;->y(I)I

    move-result v5

    add-int/2addr v3, v5

    iput v3, v7, Landroidx/appcompat/widget/g0;->g:I

    goto :goto_295

    .line 70
    :cond_288
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_298

    .line 71
    invoke-virtual {v7, v3, v2}, Landroidx/appcompat/widget/g0;->p(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v2, v3

    :goto_295
    move/from16 v22, v1

    goto :goto_2c8

    .line 72
    :cond_298
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/g0$a;

    if-eqz v19, :cond_2b1

    .line 73
    iget v6, v7, Landroidx/appcompat/widget/g0;->g:I

    iget v9, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v14

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v9, v5

    .line 74
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/g0;->r(Landroid/view/View;)I

    move-result v3

    add-int/2addr v9, v3

    add-int/2addr v6, v9

    iput v6, v7, Landroidx/appcompat/widget/g0;->g:I

    goto :goto_295

    .line 75
    :cond_2b1
    iget v6, v7, Landroidx/appcompat/widget/g0;->g:I

    add-int v9, v6, v14

    move/from16 v22, v1

    .line 76
    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v1

    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v9, v1

    .line 77
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/g0;->r(Landroid/view/View;)I

    move-result v1

    add-int/2addr v9, v1

    .line 78
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroidx/appcompat/widget/g0;->g:I

    :goto_2c8
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v22

    goto :goto_276

    :cond_2cd
    move/from16 v22, v1

    .line 79
    iget v1, v7, Landroidx/appcompat/widget/g0;->g:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v7, Landroidx/appcompat/widget/g0;->g:I

    .line 80
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    .line 81
    invoke-static {v1, v8, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    const v2, 0xffffff

    and-int/2addr v2, v1

    .line 82
    iget v3, v7, Landroidx/appcompat/widget/g0;->g:I

    sub-int/2addr v2, v3

    if-nez v24, :cond_33e

    if-eqz v2, :cond_2fa

    cmpl-float v5, v0, v20

    if-lez v5, :cond_2fa

    goto :goto_33e

    .line 83
    :cond_2fa
    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v32, :cond_336

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v12, v2, :cond_336

    const/4 v10, 0x0

    :goto_305
    if-ge v10, v11, :cond_336

    .line 84
    invoke-virtual {v7, v10}, Landroidx/appcompat/widget/g0;->s(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_333

    .line 85
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_316

    goto :goto_333

    .line 86
    :cond_316
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/g0$a;

    .line 87
    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v4, v4, v20

    if-lez v4, :cond_333

    const/high16 v4, 0x40000000    # 2.0f

    .line 88
    invoke-static {v14, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 89
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 90
    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    :cond_333
    :goto_333
    add-int/lit8 v10, v10, 0x1

    goto :goto_305

    :cond_336
    move/from16 v2, p2

    move/from16 v25, v11

    move/from16 v3, v22

    goto/16 :goto_4d8

    .line 91
    :cond_33e
    :goto_33e
    iget v5, v7, Landroidx/appcompat/widget/g0;->h:F

    cmpl-float v6, v5, v20

    if-lez v6, :cond_345

    move v0, v5

    :cond_345
    const/4 v5, -0x1

    .line 92
    aput v5, v15, v16

    aput v5, v15, v17

    aput v5, v15, v18

    const/4 v6, 0x0

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

    const/4 v4, -0x1

    const/4 v10, 0x0

    :goto_35e
    if-ge v10, v11, :cond_47f

    .line 95
    invoke-virtual {v7, v10}, Landroidx/appcompat/widget/g0;->s(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_470

    .line 96
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v3, 0x8

    if-ne v5, v3, :cond_370

    goto/16 :goto_470

    .line 97
    :cond_370
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/g0$a;

    .line 98
    iget v3, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v23, v3, v20

    if-lez v23, :cond_3d9

    int-to-float v8, v2

    mul-float v8, v8, v3

    div-float/2addr v8, v0

    float-to-int v8, v8

    sub-float/2addr v0, v3

    sub-int/2addr v2, v8

    .line 99
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

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

    const/4 v11, -0x1

    move/from16 v2, p2

    .line 100
    invoke-static {v2, v3, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 101
    iget v3, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v3, :cond_3b7

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v12, v3, :cond_3ab

    goto :goto_3b9

    :cond_3ab
    if-lez v8, :cond_3ae

    goto :goto_3af

    :cond_3ae
    const/4 v8, 0x0

    .line 102
    :goto_3af
    invoke-static {v8, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v14, v8, v0}, Landroid/view/View;->measure(II)V

    goto :goto_3c9

    :cond_3b7
    const/high16 v3, 0x40000000    # 2.0f

    .line 103
    :goto_3b9
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    add-int v8, v29, v8

    if-gez v8, :cond_3c2

    const/4 v8, 0x0

    .line 104
    :cond_3c2
    invoke-static {v8, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 105
    invoke-virtual {v14, v8, v0}, Landroid/view/View;->measure(II)V

    .line 106
    :goto_3c9
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    const/high16 v3, -0x1000000

    and-int/2addr v0, v3

    .line 107
    invoke-static {v9, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    move/from16 v0, v23

    move/from16 v3, v24

    goto :goto_3df

    :cond_3d9
    move v3, v2

    move/from16 v25, v11

    const/4 v11, -0x1

    move/from16 v2, p2

    :goto_3df
    if-eqz v19, :cond_3fc

    .line 108
    iget v8, v7, Landroidx/appcompat/widget/g0;->g:I

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    iget v11, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v23, v23, v11

    iget v11, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v23, v23, v11

    .line 109
    invoke-virtual {v7, v14}, Landroidx/appcompat/widget/g0;->r(Landroid/view/View;)I

    move-result v11

    add-int v23, v23, v11

    add-int v8, v8, v23

    iput v8, v7, Landroidx/appcompat/widget/g0;->g:I

    move/from16 v23, v0

    goto :goto_416

    .line 110
    :cond_3fc
    iget v8, v7, Landroidx/appcompat/widget/g0;->g:I

    .line 111
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v8

    move/from16 v23, v0

    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v11, v0

    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v11, v0

    .line 112
    invoke-virtual {v7, v14}, Landroidx/appcompat/widget/g0;->r(Landroid/view/View;)I

    move-result v0

    add-int/2addr v11, v0

    .line 113
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Landroidx/appcompat/widget/g0;->g:I

    :goto_416
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v13, v0, :cond_421

    .line 114
    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v8, -0x1

    if-ne v0, v8, :cond_421

    const/4 v0, 0x1

    goto :goto_422

    :cond_421
    const/4 v0, 0x0

    .line 115
    :goto_422
    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v11, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v11

    .line 116
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v8

    .line 117
    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eqz v0, :cond_433

    goto :goto_434

    :cond_433
    move v8, v11

    .line 118
    :goto_434
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v26, :cond_441

    .line 119
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v8, -0x1

    if-ne v6, v8, :cond_442

    const/4 v6, 0x1

    goto :goto_443

    :cond_441
    const/4 v8, -0x1

    :cond_442
    const/4 v6, 0x0

    :goto_443
    if-eqz v36, :cond_46a

    .line 120
    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v14

    if-eq v14, v8, :cond_46a

    .line 121
    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v5, :cond_451

    iget v5, v7, Landroidx/appcompat/widget/g0;->f:I

    :cond_451
    and-int/lit8 v5, v5, 0x70

    const/4 v8, 0x4

    shr-int/2addr v5, v8

    and-int/lit8 v5, v5, -0x2

    shr-int/lit8 v5, v5, 0x1

    .line 122
    aget v8, v15, v5

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v15, v5

    .line 123
    aget v8, v28, v5

    sub-int/2addr v11, v14

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v28, v5

    :cond_46a
    move/from16 v26, v6

    move v6, v0

    move/from16 v0, v23

    goto :goto_475

    :cond_470
    :goto_470
    move v3, v2

    move/from16 v25, v11

    move/from16 v2, p2

    :goto_475
    add-int/lit8 v10, v10, 0x1

    move/from16 v8, p1

    move v2, v3

    move/from16 v11, v25

    const/4 v5, -0x1

    goto/16 :goto_35e

    :cond_47f
    move/from16 v2, p2

    move/from16 v25, v11

    .line 124
    iget v0, v7, Landroidx/appcompat/widget/g0;->g:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    iput v0, v7, Landroidx/appcompat/widget/g0;->g:I

    .line 125
    aget v0, v15, v18

    const/4 v3, -0x1

    if-ne v0, v3, :cond_4a6

    const/4 v0, 0x0

    aget v5, v15, v0

    if-ne v5, v3, :cond_4a6

    aget v0, v15, v17

    if-ne v0, v3, :cond_4a6

    aget v0, v15, v16

    if-eq v0, v3, :cond_4a4

    goto :goto_4a6

    :cond_4a4
    move v0, v4

    goto :goto_4d4

    .line 126
    :cond_4a6
    :goto_4a6
    aget v0, v15, v16

    const/4 v3, 0x0

    aget v5, v15, v3

    aget v8, v15, v18

    aget v10, v15, v17

    .line 127
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 128
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 129
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 130
    aget v5, v28, v16

    aget v3, v28, v3

    aget v8, v28, v18

    aget v10, v28, v17

    .line 131
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 132
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 133
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 134
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_4d4
    move v3, v0

    move v0, v6

    move/from16 v23, v9

    :goto_4d8
    if-nez v26, :cond_4df

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v13, v4, :cond_4df

    goto :goto_4e0

    :cond_4df
    move v0, v3

    .line 135
    :goto_4e0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v3, -0x1000000

    and-int v3, v23, v3

    or-int/2addr v1, v3

    shl-int/lit8 v3, v23, 0x10

    .line 137
    invoke-static {v0, v2, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    .line 138
    invoke-virtual {v7, v1, v0}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    if-eqz v27, :cond_509

    move/from16 v0, p1

    move/from16 v1, v25

    .line 139
    invoke-direct {v7, v1, v0}, Landroidx/appcompat/widget/g0;->k(II)V

    :cond_509
    return-void
.end method

.method y(I)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method z(II)V
    .registers 36

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    .line 1
    iput v10, v7, Landroidx/appcompat/widget/g0;->g:I

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/g0;->getVirtualChildCount()I

    move-result v11

    .line 3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 4
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 5
    iget v14, v7, Landroidx/appcompat/widget/g0;->c:I

    .line 6
    iget-boolean v15, v7, Landroidx/appcompat/widget/g0;->i:Z

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    :goto_2a
    const/16 v10, 0x8

    move/from16 v22, v4

    if-ge v6, v11, :cond_199

    .line 7
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/g0;->s(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_47

    .line 8
    iget v4, v7, Landroidx/appcompat/widget/g0;->g:I

    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/g0;->y(I)I

    move-result v10

    add-int/2addr v4, v10

    iput v4, v7, Landroidx/appcompat/widget/g0;->g:I

    move/from16 v26, v11

    move/from16 v24, v13

    move/from16 v4, v22

    goto/16 :goto_18d

    :cond_47
    move/from16 v24, v1

    .line 9
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v10, :cond_5e

    .line 10
    invoke-virtual {v7, v4, v6}, Landroidx/appcompat/widget/g0;->p(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v6, v1

    move/from16 v26, v11

    move/from16 v4, v22

    move/from16 v1, v24

    move/from16 v24, v13

    goto/16 :goto_18d

    .line 11
    :cond_5e
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/g0;->t(I)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 12
    iget v1, v7, Landroidx/appcompat/widget/g0;->g:I

    iget v10, v7, Landroidx/appcompat/widget/g0;->n:I

    add-int/2addr v1, v10

    iput v1, v7, Landroidx/appcompat/widget/g0;->g:I

    .line 13
    :cond_6b
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/appcompat/widget/g0$a;

    .line 14
    iget v1, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v25, v0, v1

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v13, v0, :cond_a5

    .line 15
    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v0, :cond_a5

    cmpl-float v0, v1, v16

    if-lez v0, :cond_a5

    .line 16
    iget v0, v7, Landroidx/appcompat/widget/g0;->g:I

    .line 17
    iget v1, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v0

    move/from16 v26, v2

    iget v2, v10, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Landroidx/appcompat/widget/g0;->g:I

    move v0, v3

    move-object v3, v4

    move/from16 v31, v5

    move/from16 v8, v24

    move/from16 v29, v26

    const/16 v18, 0x1

    move/from16 v26, v11

    move/from16 v24, v13

    move/from16 v13, v22

    move v11, v6

    goto/16 :goto_115

    :cond_a5
    move/from16 v26, v2

    .line 18
    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v0, :cond_b6

    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_b6

    const/4 v0, -0x2

    .line 19
    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v2, 0x0

    goto :goto_b8

    :cond_b6
    const/high16 v2, -0x80000000

    :goto_b8
    const/16 v27, 0x0

    cmpl-float v0, v25, v16

    if-nez v0, :cond_c3

    .line 20
    iget v0, v7, Landroidx/appcompat/widget/g0;->g:I

    move/from16 v23, v0

    goto :goto_c5

    :cond_c3
    const/16 v23, 0x0

    :goto_c5
    const/high16 v28, 0x40000000    # 2.0f

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

    const/high16 v11, 0x40000000    # 2.0f

    move-object/from16 v22, v4

    move/from16 v4, v27

    move/from16 v31, v5

    move/from16 v5, p2

    move v11, v6

    move/from16 v6, v23

    .line 21
    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/g0;->w(Landroid/view/View;IIIII)V

    move/from16 v0, v30

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_f2

    .line 22
    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 23
    :cond_f2
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredHeight()I

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
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/g0;->r(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 27
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroidx/appcompat/widget/g0;->g:I

    if-eqz v15, :cond_114

    .line 28
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_115

    :cond_114
    move v0, v9

    :goto_115
    if-ltz v14, :cond_11f

    add-int/lit8 v6, v11, 0x1

    if-ne v14, v6, :cond_11f

    .line 29
    iget v1, v7, Landroidx/appcompat/widget/g0;->g:I

    iput v1, v7, Landroidx/appcompat/widget/g0;->d:I

    :cond_11f
    if-ge v11, v14, :cond_130

    .line 30
    iget v1, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v1, v1, v16

    if-gtz v1, :cond_128

    goto :goto_130

    .line 31
    :cond_128
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_130
    :goto_130
    const/high16 v1, 0x40000000    # 2.0f

    if-eq v12, v1, :cond_13d

    .line 32
    iget v1, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13d

    const/4 v1, 0x1

    const/16 v20, 0x1

    goto :goto_13e

    :cond_13d
    const/4 v1, 0x0

    .line 33
    :goto_13e
    iget v2, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v4, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    .line 34
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    move/from16 v5, v29

    .line 35
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 36
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v6

    .line 37
    invoke-static {v8, v6}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    if-eqz v19, :cond_160

    .line 38
    iget v8, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_160

    const/16 v19, 0x1

    goto :goto_162

    :cond_160
    const/16 v19, 0x0

    .line 39
    :goto_162
    iget v8, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v8, v8, v16

    if-lez v8, :cond_173

    if-eqz v1, :cond_16b

    goto :goto_16c

    :cond_16b
    move v2, v4

    .line 40
    :goto_16c
    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v1, v31

    goto :goto_17e

    :cond_173
    if-eqz v1, :cond_176

    goto :goto_177

    :cond_176
    move v2, v4

    :goto_177
    move/from16 v1, v31

    .line 41
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v4, v13

    .line 42
    :goto_17e
    invoke-virtual {v7, v3, v11}, Landroidx/appcompat/widget/g0;->p(Landroid/view/View;I)I

    move-result v2

    add-int/2addr v2, v11

    move v3, v0

    move/from16 v0, v25

    move/from16 v32, v5

    move v5, v1

    move v1, v6

    move v6, v2

    move/from16 v2, v32

    :goto_18d
    add-int/lit8 v6, v6, 0x1

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v13, v24

    move/from16 v11, v26

    goto/16 :goto_2a

    :cond_199
    move v8, v1

    move v9, v3

    move v1, v5

    move/from16 v26, v11

    move/from16 v24, v13

    move/from16 v13, v22

    move v5, v2

    .line 43
    iget v2, v7, Landroidx/appcompat/widget/g0;->g:I

    if-lez v2, :cond_1b7

    move/from16 v2, v26

    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/g0;->t(I)Z

    move-result v3

    if-eqz v3, :cond_1b9

    .line 44
    iget v3, v7, Landroidx/appcompat/widget/g0;->g:I

    iget v4, v7, Landroidx/appcompat/widget/g0;->n:I

    add-int/2addr v3, v4

    iput v3, v7, Landroidx/appcompat/widget/g0;->g:I

    goto :goto_1b9

    :cond_1b7
    move/from16 v2, v26

    :cond_1b9
    :goto_1b9
    move/from16 v3, v24

    if-eqz v15, :cond_208

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_1c3

    if-nez v3, :cond_208

    :cond_1c3
    const/4 v4, 0x0

    .line 45
    iput v4, v7, Landroidx/appcompat/widget/g0;->g:I

    const/4 v4, 0x0

    :goto_1c7
    if-ge v4, v2, :cond_208

    .line 46
    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/g0;->s(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_1d9

    .line 47
    iget v6, v7, Landroidx/appcompat/widget/g0;->g:I

    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/g0;->y(I)I

    move-result v11

    add-int/2addr v6, v11

    iput v6, v7, Landroidx/appcompat/widget/g0;->g:I

    goto :goto_203

    .line 48
    :cond_1d9
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-ne v11, v10, :cond_1e5

    .line 49
    invoke-virtual {v7, v6, v4}, Landroidx/appcompat/widget/g0;->p(Landroid/view/View;I)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_203

    .line 50
    :cond_1e5
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

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
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/g0;->r(Landroid/view/View;)I

    move-result v6

    add-int v6, v21, v6

    .line 54
    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v7, Landroidx/appcompat/widget/g0;->g:I

    :goto_203
    add-int/lit8 v4, v4, 0x1

    const/16 v10, 0x8

    goto :goto_1c7

    .line 55
    :cond_208
    iget v4, v7, Landroidx/appcompat/widget/g0;->g:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v10

    add-int/2addr v6, v10

    add-int/2addr v4, v6

    iput v4, v7, Landroidx/appcompat/widget/g0;->g:I

    .line 56
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v6, p2

    move v10, v9

    const/4 v9, 0x0

    .line 57
    invoke-static {v4, v6, v9}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v4

    const v9, 0xffffff

    and-int/2addr v9, v4

    .line 58
    iget v11, v7, Landroidx/appcompat/widget/g0;->g:I

    sub-int/2addr v9, v11

    if-nez v18, :cond_277

    if-eqz v9, :cond_236

    cmpl-float v11, v0, v16

    if-lez v11, :cond_236

    goto :goto_277

    .line 59
    :cond_236
    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v15, :cond_272

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v3, v1, :cond_272

    const/4 v1, 0x0

    :goto_241
    if-ge v1, v2, :cond_272

    .line 60
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/g0;->s(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_26f

    .line 61
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v11, 0x8

    if-ne v9, v11, :cond_252

    goto :goto_26f

    .line 62
    :cond_252
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/widget/g0$a;

    .line 63
    iget v9, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v9, v9, v16

    if-lez v9, :cond_26f

    .line 64
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 65
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 66
    invoke-virtual {v3, v9, v13}, Landroid/view/View;->measure(II)V

    :cond_26f
    :goto_26f
    add-int/lit8 v1, v1, 0x1

    goto :goto_241

    :cond_272
    move/from16 v11, p1

    move v1, v8

    goto/16 :goto_36a

    .line 67
    :cond_277
    :goto_277
    iget v10, v7, Landroidx/appcompat/widget/g0;->h:F

    cmpl-float v11, v10, v16

    if-lez v11, :cond_27e

    move v0, v10

    :cond_27e
    const/4 v10, 0x0

    .line 68
    iput v10, v7, Landroidx/appcompat/widget/g0;->g:I

    move v11, v9

    move v9, v1

    move v1, v8

    const/4 v8, 0x0

    :goto_285
    if-ge v8, v2, :cond_359

    .line 69
    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/g0;->s(I)Landroid/view/View;

    move-result-object v13

    .line 70
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_299

    move/from16 v21, v11

    move/from16 v11, p1

    goto/16 :goto_352

    .line 71
    :cond_299
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/widget/g0$a;

    .line 72
    iget v10, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v18, v10, v16

    if-lez v18, :cond_2fc

    int-to-float v15, v11

    mul-float v15, v15, v10

    div-float/2addr v15, v0

    float-to-int v15, v15

    sub-float/2addr v0, v10

    sub-int/2addr v11, v15

    .line 73
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

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
    invoke-static {v11, v10, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 75
    iget v10, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v10, :cond_2dd

    const/high16 v10, 0x40000000    # 2.0f

    if-eq v3, v10, :cond_2d1

    goto :goto_2df

    :cond_2d1
    if-lez v15, :cond_2d4

    goto :goto_2d5

    :cond_2d4
    const/4 v15, 0x0

    .line 76
    :goto_2d5
    invoke-static {v15, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 77
    invoke-virtual {v13, v0, v15}, Landroid/view/View;->measure(II)V

    goto :goto_2ef

    :cond_2dd
    const/high16 v10, 0x40000000    # 2.0f

    .line 78
    :goto_2df
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    add-int v15, v23, v15

    if-gez v15, :cond_2e8

    const/4 v15, 0x0

    .line 79
    :cond_2e8
    invoke-static {v15, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 80
    invoke-virtual {v13, v0, v15}, Landroid/view/View;->measure(II)V

    .line 81
    :goto_2ef
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    and-int/lit16 v0, v0, -0x100

    .line 82
    invoke-static {v1, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    move/from16 v0, v18

    goto :goto_301

    :cond_2fc
    move v10, v11

    move/from16 v11, p1

    move/from16 v21, v10

    .line 83
    :goto_301
    iget v10, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v10, v15

    .line 84
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v10

    .line 85
    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v18, v0

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v12, v0, :cond_31e

    .line 86
    iget v0, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v23, v1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_321

    const/4 v0, 0x1

    goto :goto_322

    :cond_31e
    move/from16 v23, v1

    const/4 v1, -0x1

    :cond_321
    const/4 v0, 0x0

    :goto_322
    if-eqz v0, :cond_325

    goto :goto_326

    :cond_325
    move v10, v15

    .line 87
    :goto_326
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v19, :cond_332

    .line 88
    iget v9, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-ne v9, v1, :cond_332

    const/4 v9, 0x1

    goto :goto_333

    :cond_332
    const/4 v9, 0x0

    .line 89
    :goto_333
    iget v10, v7, Landroidx/appcompat/widget/g0;->g:I

    .line 90
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v10

    iget v1, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v15, v1

    iget v1, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v15, v1

    .line 91
    invoke-virtual {v7, v13}, Landroidx/appcompat/widget/g0;->r(Landroid/view/View;)I

    move-result v1

    add-int/2addr v15, v1

    .line 92
    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroidx/appcompat/widget/g0;->g:I

    move/from16 v19, v9

    move/from16 v1, v23

    move v9, v0

    move/from16 v0, v18

    :goto_352
    add-int/lit8 v8, v8, 0x1

    move/from16 v11, v21

    const/4 v10, 0x0

    goto/16 :goto_285

    :cond_359
    move/from16 v11, p1

    .line 93
    iget v0, v7, Landroidx/appcompat/widget/g0;->g:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v8

    add-int/2addr v3, v8

    add-int/2addr v0, v3

    iput v0, v7, Landroidx/appcompat/widget/g0;->g:I

    move v0, v9

    :goto_36a
    if-nez v19, :cond_371

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v12, v3, :cond_371

    goto :goto_372

    :cond_371
    move v0, v5

    .line 94
    :goto_372
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 96
    invoke-static {v0, v11, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {v7, v0, v4}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    if-eqz v20, :cond_390

    .line 97
    invoke-direct {v7, v2, v6}, Landroidx/appcompat/widget/g0;->l(II)V

    :cond_390
    return-void
.end method
