.class public Lcom/google/android/material/snackbar/SnackbarContentLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/Button;

.field private d:I

.field private e:I

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
  .line 1
    invoke-direct { p0, p1, p2 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .line 2
    sget-object v0, Ld/c/a/a/k;->SnackbarLayout:[I
    invoke-virtual { p1, p2, v0 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    move-result-object p1
  .line 3
    sget p2, Ld/c/a/a/k;->SnackbarLayout_android_maxWidth:I
    const/4 v0, -1
    invoke-virtual { p1, p2, v0 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result p2
    iput p2, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->d:I
  .line 4
    sget p2, Ld/c/a/a/k;->SnackbarLayout_maxActionInlineWidth:I
  .line 5
    invoke-virtual { p1, p2, v0 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result p2
    iput p2, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->e:I
  .line 6
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->recycle()V
    return-void
.end method

.method private static a(Landroid/view/View;II)V
  .registers 5
  .line 1
    invoke-static { p0 }, Landroidx/core/view/v;->V(Landroid/view/View;)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-static { p0 }, Landroidx/core/view/v;->I(Landroid/view/View;)I
    move-result v0
  .line 3
    invoke-static { p0 }, Landroidx/core/view/v;->H(Landroid/view/View;)I
    move-result v1
  .line 4
    invoke-static { p0, v0, p1, v1, p2 }, Landroidx/core/view/v;->A0(Landroid/view/View;IIII)V
    goto :L1
  :L0
  .line 5
    invoke-virtual { p0 }, Landroid/view/View;->getPaddingLeft()I
    move-result v0
    invoke-virtual { p0 }, Landroid/view/View;->getPaddingRight()I
    move-result v1
    invoke-virtual { p0, v0, p1, v1, p2 }, Landroid/view/View;->setPadding(IIII)V
  :L1
    return-void
.end method

.method private b(III)Z
  .registers 6
  .line 1
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getOrientation()I
    move-result v0
    const/4 v1, 1
    if-eq p1, v0, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/widget/LinearLayout;->setOrientation(I)V
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
  .line 3
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->b:Landroid/widget/TextView;
    invoke-virtual { v0 }, Landroid/widget/TextView;->getPaddingTop()I
    move-result v0
    if-ne v0, p2, :L3
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->b:Landroid/widget/TextView;
  .line 4
    invoke-virtual { v0 }, Landroid/widget/TextView;->getPaddingBottom()I
    move-result v0
    if-eq v0, p3, :L2
    goto :L3
  :L2
    move v1, p1
    goto :L4
  :L3
  .line 5
    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->b:Landroid/widget/TextView;
    invoke-static { p1, p2, p3 }, Lcom/google/android/material/snackbar/SnackbarContentLayout;->a(Landroid/view/View;II)V
  :L4
    return v1
.end method

.method public getActionView()Landroid/widget/Button;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->c:Landroid/widget/Button;
    return-object v0
.end method

.method public getMessageView()Landroid/widget/TextView;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->b:Landroid/widget/TextView;
    return-object v0
.end method

.method protected onFinishInflate()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/widget/LinearLayout;->onFinishInflate()V
  .line 2
    sget v0, Ld/c/a/a/f;->snackbar_text:I
    invoke-virtual { p0, v0 }, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
    iput-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->b:Landroid/widget/TextView;
  .line 3
    sget v0, Ld/c/a/a/f;->snackbar_action:I
    invoke-virtual { p0, v0 }, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/Button;
    iput-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->c:Landroid/widget/Button;
    return-void
.end method

.method protected onMeasure(II)V
  .registers 10
  .line 1
    invoke-super { p0, p1, p2 }, Landroid/widget/LinearLayout;->onMeasure(II)V
  .line 2
    iget v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->d:I
    if-lez v0, :L0
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getMeasuredWidth()I
    move-result v0
    iget v1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->d:I
    if-le v0, v1, :L0
    const/high16 p1, 16384
  .line 3
    invoke-static { v1, p1 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result p1
  .line 4
    invoke-super { p0, p1, p2 }, Landroid/widget/LinearLayout;->onMeasure(II)V
  :L0
  .line 5
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    sget v1, Ld/c/a/a/d;->design_snackbar_padding_vertical_2lines:I
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result v0
  .line 6
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    sget v2, Ld/c/a/a/d;->design_snackbar_padding_vertical:I
    invoke-virtual { v1, v2 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result v1
  .line 7
    iget-object v2, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->b:Landroid/widget/TextView;
    invoke-virtual { v2 }, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;
    move-result-object v2
    invoke-virtual { v2 }, Landroid/text/Layout;->getLineCount()I
    move-result v2
    const/4 v3, 0
    const/4 v4, 1
    if-le v2, v4, :L1
    const/4 v2, 1
    goto :L2
  :L1
    const/4 v2, 0
  :L2
    if-eqz v2, :L3
  .line 8
    iget v5, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->e:I
    if-lez v5, :L3
    iget-object v5, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->c:Landroid/widget/Button;
  .line 9
    invoke-virtual { v5 }, Landroid/widget/Button;->getMeasuredWidth()I
    move-result v5
    iget v6, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->e:I
    if-le v5, v6, :L3
    sub-int v1, v0, v1
  .line 10
    invoke-direct { p0, v4, v0, v1 }, Lcom/google/android/material/snackbar/SnackbarContentLayout;->b(III)Z
    move-result v0
    if-eqz v0, :L7
    goto :L6
  :L3
    if-eqz v2, :L4
    goto :L5
  :L4
    move v0, v1
  :L5
  .line 11
    invoke-direct { p0, v3, v0, v0 }, Lcom/google/android/material/snackbar/SnackbarContentLayout;->b(III)Z
    move-result v0
    if-eqz v0, :L7
  :L6
    const/4 v3, 1
  :L7
    if-eqz v3, :L8
  .line 12
    invoke-super { p0, p1, p2 }, Landroid/widget/LinearLayout;->onMeasure(II)V
  :L8
    return-void
.end method

.method public setMaxInlineActionWidth(I)V
  .registers 2
  .line 1
    iput p1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->e:I
    return-void
.end method
