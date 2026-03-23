.class public Landroidx/constraintlayout/widget/Guideline;
.super Landroid/view/View;
.source "SourceFile"

.method public constructor <init>(Landroid/content/Context;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Landroid/view/View;-><init>(Landroid/content/Context;)V
    const/16 p1, 8
  .line 2
    invoke-super { p0, p1 }, Landroid/view/View;->setVisibility(I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 3
  .line 3
    invoke-direct { p0, p1, p2 }, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    const/16 p1, 8
  .line 4
    invoke-super { p0, p1 }, Landroid/view/View;->setVisibility(I)V
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
  .registers 2
    return-void
.end method

.method protected onMeasure(II)V
  .registers 3
    const/4 p1, 0
  .line 1
    invoke-virtual { p0, p1, p1 }, Landroid/view/View;->setMeasuredDimension(II)V
    return-void
.end method

.method public setGuidelineBegin(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;
  .line 2
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:I
  .line 3
    invoke-virtual { p0, v0 }, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    return-void
.end method

.method public setGuidelineEnd(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;
  .line 2
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b:I
  .line 3
    invoke-virtual { p0, v0 }, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    return-void
.end method

.method public setGuidelinePercent(F)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;
  .line 2
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c:F
  .line 3
    invoke-virtual { p0, v0 }, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    return-void
.end method

.method public setVisibility(I)V
  .registers 2
    return-void
.end method
