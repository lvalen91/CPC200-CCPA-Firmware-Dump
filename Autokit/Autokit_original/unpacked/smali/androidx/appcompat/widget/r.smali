.class public Landroidx/appcompat/widget/r;
.super Landroid/widget/RatingBar;
.source "SourceFile"

.field private final b:Landroidx/appcompat/widget/p;

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
  .line 1
    sget v0, Lc/a/a;->ratingBarStyle:I
    invoke-direct { p0, p1, p2, v0 }, Landroidx/appcompat/widget/r;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 4
  .line 2
    invoke-direct { p0, p1, p2, p3 }, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 3
    invoke-virtual { p0 }, Landroid/widget/RatingBar;->getContext()Landroid/content/Context;
    move-result-object p1
    invoke-static { p0, p1 }, Landroidx/appcompat/widget/p0;->a(Landroid/view/View;Landroid/content/Context;)V
  .line 4
    new-instance p1, Landroidx/appcompat/widget/p;
    invoke-direct { p1, p0 }, Landroidx/appcompat/widget/p;-><init>(Landroid/widget/ProgressBar;)V
    iput-object p1, p0, Landroidx/appcompat/widget/r;->b:Landroidx/appcompat/widget/p;
  .line 5
    invoke-virtual { p1, p2, p3 }, Landroidx/appcompat/widget/p;->c(Landroid/util/AttributeSet;I)V
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
  .catchall { :L0 .. :L1 } :L2
  .registers 4
    monitor-enter p0
  :L0
  .line 1
    invoke-super { p0, p1, p2 }, Landroid/widget/RatingBar;->onMeasure(II)V
  .line 2
    iget-object p2, p0, Landroidx/appcompat/widget/r;->b:Landroidx/appcompat/widget/p;
    invoke-virtual { p2 }, Landroidx/appcompat/widget/p;->b()Landroid/graphics/Bitmap;
    move-result-object p2
    if-eqz p2, :L1
  .line 3
    invoke-virtual { p2 }, Landroid/graphics/Bitmap;->getWidth()I
    move-result p2
    invoke-virtual { p0 }, Landroid/widget/RatingBar;->getNumStars()I
    move-result v0
    mul-int p2, p2, v0
    const/4 v0, 0
  .line 4
    invoke-static { p2, p1, v0 }, Landroid/view/View;->resolveSizeAndState(III)I
    move-result p1
  .line 5
    invoke-virtual { p0 }, Landroid/widget/RatingBar;->getMeasuredHeight()I
    move-result p2
  .line 6
    invoke-virtual { p0, p1, p2 }, Landroid/widget/RatingBar;->setMeasuredDimension(II)V
  :L1
  .line 7
    monitor-exit p0
    return-void
  :L2
    move-exception p1
    monitor-exit p0
    throw p1
.end method
