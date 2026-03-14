.class public Landroidx/constraintlayout/widget/g;
.super Landroid/view/View;
.source "SourceFile"

.field private b:I

.field private c:Landroid/view/View;

.field private d:I

.method public a(Landroidx/constraintlayout/widget/ConstraintLayout;)V
  .registers 5
  .line 1
    iget-object p1, p0, Landroidx/constraintlayout/widget/g;->c:Landroid/view/View;
    if-nez p1, :L0
    return-void
  :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p1
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;
  .line 3
    iget-object v0, p0, Landroidx/constraintlayout/widget/g;->c:Landroid/view/View;
  .line 4
    invoke-virtual { v0 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;
  .line 5
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m0:Lc/e/b/k/e;
    const/4 v2, 0
    invoke-virtual { v1, v2 }, Lc/e/b/k/e;->T0(I)V
  .line 6
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m0:Lc/e/b/k/e;
    invoke-virtual { v1 }, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;
    move-result-object v1
    sget-object v2, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    if-eq v1, v2, :L1
  .line 7
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m0:Lc/e/b/k/e;
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m0:Lc/e/b/k/e;
    invoke-virtual { v2 }, Lc/e/b/k/e;->R()I
    move-result v2
    invoke-virtual { v1, v2 }, Lc/e/b/k/e;->U0(I)V
  :L1
  .line 8
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m0:Lc/e/b/k/e;
    invoke-virtual { v1 }, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;
    move-result-object v1
    sget-object v2, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    if-eq v1, v2, :L2
  .line 9
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m0:Lc/e/b/k/e;
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m0:Lc/e/b/k/e;
    invoke-virtual { v1 }, Lc/e/b/k/e;->v()I
    move-result v1
    invoke-virtual { p1, v1 }, Lc/e/b/k/e;->v0(I)V
  :L2
  .line 10
    iget-object p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m0:Lc/e/b/k/e;
    const/16 v0, 8
    invoke-virtual { p1, v0 }, Lc/e/b/k/e;->T0(I)V
    return-void
.end method

.method public b(Landroidx/constraintlayout/widget/ConstraintLayout;)V
  .registers 4
  .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/g;->b:I
    const/4 v1, -1
    if-ne v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->isInEditMode()Z
    move-result v0
    if-nez v0, :L0
  .line 3
    iget v0, p0, Landroidx/constraintlayout/widget/g;->d:I
    invoke-virtual { p0, v0 }, Landroid/view/View;->setVisibility(I)V
  :L0
  .line 4
    iget v0, p0, Landroidx/constraintlayout/widget/g;->b:I
    invoke-virtual { p1, v0 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object p1
    iput-object p1, p0, Landroidx/constraintlayout/widget/g;->c:Landroid/view/View;
    if-eqz p1, :L1
  .line 5
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p1
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;
    const/4 v0, 1
  .line 6
    iput-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a0:Z
  .line 7
    iget-object p1, p0, Landroidx/constraintlayout/widget/g;->c:Landroid/view/View;
    const/4 v0, 0
    invoke-virtual { p1, v0 }, Landroid/view/View;->setVisibility(I)V
  .line 8
    invoke-virtual { p0, v0 }, Landroid/view/View;->setVisibility(I)V
  :L1
    return-void
.end method

.method public getContent()Landroid/view/View;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/g;->c:Landroid/view/View;
    return-object v0
.end method

.method public getEmptyVisibility()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/g;->d:I
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
  .registers 9
  .line 1
    invoke-virtual { p0 }, Landroid/view/View;->isInEditMode()Z
    move-result v0
    if-eqz v0, :L0
    const/16 v0, 223
  .line 2
    invoke-virtual { p1, v0, v0, v0 }, Landroid/graphics/Canvas;->drawRGB(III)V
  .line 3
    new-instance v0, Landroid/graphics/Paint;
    invoke-direct { v0 }, Landroid/graphics/Paint;-><init>()V
    const/16 v1, 255
    const/16 v2, 210
  .line 4
    invoke-virtual { v0, v1, v2, v2, v2 }, Landroid/graphics/Paint;->setARGB(IIII)V
  .line 5
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;
    invoke-virtual { v0, v1 }, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V
  .line 6
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;
    const/4 v2, 0
    invoke-static { v1, v2 }, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
  .line 7
    new-instance v1, Landroid/graphics/Rect;
    invoke-direct { v1 }, Landroid/graphics/Rect;-><init>()V
  .line 8
    invoke-virtual { p1, v1 }, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z
  .line 9
    invoke-virtual { v1 }, Landroid/graphics/Rect;->height()I
    move-result v3
    int-to-float v3, v3
    invoke-virtual { v0, v3 }, Landroid/graphics/Paint;->setTextSize(F)V
  .line 10
    invoke-virtual { v1 }, Landroid/graphics/Rect;->height()I
    move-result v3
  .line 11
    invoke-virtual { v1 }, Landroid/graphics/Rect;->width()I
    move-result v4
  .line 12
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;
    invoke-virtual { v0, v5 }, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V
    const-string v5, "?"
    const/4 v6, 1
  .line 13
    invoke-virtual { v0, v5, v2, v6, v1 }, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
    int-to-float v2, v4
    const/high16 v4, 16384
    div-float/2addr v2, v4
  .line 14
    invoke-virtual { v1 }, Landroid/graphics/Rect;->width()I
    move-result v6
    int-to-float v6, v6
    div-float/2addr v6, v4
    sub-float/2addr v2, v6
    iget v6, v1, Landroid/graphics/Rect;->left:I
    int-to-float v6, v6
    sub-float/2addr v2, v6
    int-to-float v3, v3
    div-float/2addr v3, v4
  .line 15
    invoke-virtual { v1 }, Landroid/graphics/Rect;->height()I
    move-result v6
    int-to-float v6, v6
    div-float/2addr v6, v4
    add-float/2addr v3, v6
    iget v1, v1, Landroid/graphics/Rect;->bottom:I
    int-to-float v1, v1
    sub-float/2addr v3, v1
  .line 16
    invoke-virtual { p1, v5, v2, v3, v0 }, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
  :L0
    return-void
.end method

.method public setContentId(I)V
  .registers 4
  .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/g;->b:I
    if-ne v0, p1, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/g;->c:Landroid/view/View;
    if-eqz v0, :L1
    const/4 v1, 0
  .line 3
    invoke-virtual { v0, v1 }, Landroid/view/View;->setVisibility(I)V
  .line 4
    iget-object v0, p0, Landroidx/constraintlayout/widget/g;->c:Landroid/view/View;
  .line 5
    invoke-virtual { v0 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;
  .line 6
    iput-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a0:Z
    const/4 v0, 0
  .line 7
    iput-object v0, p0, Landroidx/constraintlayout/widget/g;->c:Landroid/view/View;
  :L1
  .line 8
    iput p1, p0, Landroidx/constraintlayout/widget/g;->b:I
    const/4 v0, -1
    if-eq p1, v0, :L2
  .line 9
    invoke-virtual { p0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    check-cast v0, Landroid/view/View;
    invoke-virtual { v0, p1 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p1
    if-eqz p1, :L2
    const/16 v0, 8
  .line 10
    invoke-virtual { p1, v0 }, Landroid/view/View;->setVisibility(I)V
  :L2
    return-void
.end method

.method public setEmptyVisibility(I)V
  .registers 2
  .line 1
    iput p1, p0, Landroidx/constraintlayout/widget/g;->d:I
    return-void
.end method
