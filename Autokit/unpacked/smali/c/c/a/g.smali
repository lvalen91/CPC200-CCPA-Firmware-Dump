.class Lc/c/a/g;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

.field private a:F

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/RectF;

.field private final d:Landroid/graphics/Rect;

.field private e:F

.field private f:Z

.field private g:Z

.field private h:Landroid/content/res/ColorStateList;

.field private i:Landroid/graphics/PorterDuffColorFilter;

.field private j:Landroid/content/res/ColorStateList;

.field private k:Landroid/graphics/PorterDuff$Mode;

.method private a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
  .registers 5
    if-eqz p1, :L1
    if-nez p2, :L0
    goto :L1
  :L0
  .line 1
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->getState()[I
    move-result-object v0
    const/4 v1, 0
    invoke-virtual { p1, v0, v1 }, Landroid/content/res/ColorStateList;->getColorForState([II)I
    move-result p1
  .line 2
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;
    invoke-direct { v0, p1, p2 }, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V
    return-object v0
  :L1
    const/4 p1, 0
    return-object p1
.end method

.method private e(Landroid/content/res/ColorStateList;)V
  .registers 5
    if-nez p1, :L0
    const/4 p1, 0
  .line 1
    invoke-static { p1 }, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;
    move-result-object p1
  :L0
    iput-object p1, p0, Lc/c/a/g;->h:Landroid/content/res/ColorStateList;
  .line 2
    iget-object v0, p0, Lc/c/a/g;->b:Landroid/graphics/Paint;
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->getState()[I
    move-result-object v1
    iget-object v2, p0, Lc/c/a/g;->h:Landroid/content/res/ColorStateList;
    invoke-virtual { v2 }, Landroid/content/res/ColorStateList;->getDefaultColor()I
    move-result v2
    invoke-virtual { p1, v1, v2 }, Landroid/content/res/ColorStateList;->getColorForState([II)I
    move-result p1
    invoke-virtual { v0, p1 }, Landroid/graphics/Paint;->setColor(I)V
    return-void
.end method

.method private i(Landroid/graphics/Rect;)V
  .registers 7
    if-nez p1, :L0
  .line 1
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;
    move-result-object p1
  :L0
  .line 2
    iget-object v0, p0, Lc/c/a/g;->c:Landroid/graphics/RectF;
    iget v1, p1, Landroid/graphics/Rect;->left:I
    int-to-float v1, v1
    iget v2, p1, Landroid/graphics/Rect;->top:I
    int-to-float v2, v2
    iget v3, p1, Landroid/graphics/Rect;->right:I
    int-to-float v3, v3
    iget v4, p1, Landroid/graphics/Rect;->bottom:I
    int-to-float v4, v4
    invoke-virtual { v0, v1, v2, v3, v4 }, Landroid/graphics/RectF;->set(FFFF)V
  .line 3
    iget-object v0, p0, Lc/c/a/g;->d:Landroid/graphics/Rect;
    invoke-virtual { v0, p1 }, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
  .line 4
    iget-boolean p1, p0, Lc/c/a/g;->f:Z
    if-eqz p1, :L1
  .line 5
    iget p1, p0, Lc/c/a/g;->e:F
    iget v0, p0, Lc/c/a/g;->a:F
    iget-boolean v1, p0, Lc/c/a/g;->g:Z
    invoke-static { p1, v0, v1 }, Lc/c/a/h;->d(FFZ)F
    move-result p1
  .line 6
    iget v0, p0, Lc/c/a/g;->e:F
    iget v1, p0, Lc/c/a/g;->a:F
    iget-boolean v2, p0, Lc/c/a/g;->g:Z
    invoke-static { v0, v1, v2 }, Lc/c/a/h;->c(FFZ)F
    move-result v0
  .line 7
    iget-object v1, p0, Lc/c/a/g;->d:Landroid/graphics/Rect;
    float-to-double v2, v0
    invoke-static { v2, v3 }, Ljava/lang/Math;->ceil(D)D
    move-result-wide v2
    double-to-int v0, v2
    float-to-double v2, p1
    invoke-static { v2, v3 }, Ljava/lang/Math;->ceil(D)D
    move-result-wide v2
    double-to-int p1, v2
    invoke-virtual { v1, v0, p1 }, Landroid/graphics/Rect;->inset(II)V
  .line 8
    iget-object p1, p0, Lc/c/a/g;->c:Landroid/graphics/RectF;
    iget-object v0, p0, Lc/c/a/g;->d:Landroid/graphics/Rect;
    invoke-virtual { p1, v0 }, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V
  :L1
    return-void
.end method

.method public b()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Lc/c/a/g;->h:Landroid/content/res/ColorStateList;
    return-object v0
.end method

.method c()F
  .registers 2
  .line 1
    iget v0, p0, Lc/c/a/g;->e:F
    return v0
.end method

.method public d()F
  .registers 2
  .line 1
    iget v0, p0, Lc/c/a/g;->a:F
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
  .registers 6
  .line 1
    iget-object v0, p0, Lc/c/a/g;->b:Landroid/graphics/Paint;
  .line 2
    iget-object v1, p0, Lc/c/a/g;->i:Landroid/graphics/PorterDuffColorFilter;
    if-eqz v1, :L0
    invoke-virtual { v0 }, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;
    move-result-object v1
    if-nez v1, :L0
  .line 3
    iget-object v1, p0, Lc/c/a/g;->i:Landroid/graphics/PorterDuffColorFilter;
    invoke-virtual { v0, v1 }, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
    const/4 v1, 1
    goto :L1
  :L0
    const/4 v1, 0
  :L1
  .line 4
    iget-object v2, p0, Lc/c/a/g;->c:Landroid/graphics/RectF;
    iget v3, p0, Lc/c/a/g;->a:F
    invoke-virtual { p1, v2, v3, v3, v0 }, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    if-eqz v1, :L2
    const/4 p1, 0
  .line 5
    invoke-virtual { v0, p1 }, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
  :L2
    return-void
.end method

.method public f(Landroid/content/res/ColorStateList;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lc/c/a/g;->e(Landroid/content/res/ColorStateList;)V
  .line 2
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->invalidateSelf()V
    return-void
.end method

.method g(FZZ)V
  .registers 5
  .line 1
    iget v0, p0, Lc/c/a/g;->e:F
    cmpl-float v0, p1, v0
    if-nez v0, :L0
    iget-boolean v0, p0, Lc/c/a/g;->f:Z
    if-ne v0, p2, :L0
    iget-boolean v0, p0, Lc/c/a/g;->g:Z
    if-ne v0, p3, :L0
    return-void
  :L0
  .line 2
    iput p1, p0, Lc/c/a/g;->e:F
  .line 3
    iput-boolean p2, p0, Lc/c/a/g;->f:Z
  .line 4
    iput-boolean p3, p0, Lc/c/a/g;->g:Z
    const/4 p1, 0
  .line 5
    invoke-direct { p0, p1 }, Lc/c/a/g;->i(Landroid/graphics/Rect;)V
  .line 6
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->invalidateSelf()V
    return-void
.end method

.method public getOpacity()I
  .registers 2
    const/4 v0, -3
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lc/c/a/g;->d:Landroid/graphics/Rect;
    iget v1, p0, Lc/c/a/g;->a:F
    invoke-virtual { p1, v0, v1 }, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V
    return-void
.end method

.method h(F)V
  .registers 3
  .line 1
    iget v0, p0, Lc/c/a/g;->a:F
    cmpl-float v0, p1, v0
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    iput p1, p0, Lc/c/a/g;->a:F
    const/4 p1, 0
  .line 3
    invoke-direct { p0, p1 }, Lc/c/a/g;->i(Landroid/graphics/Rect;)V
  .line 4
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->invalidateSelf()V
    return-void
.end method

.method public isStateful()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lc/c/a/g;->j:Landroid/content/res/ColorStateList;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroid/content/res/ColorStateList;->isStateful()Z
    move-result v0
    if-nez v0, :L2
  :L0
    iget-object v0, p0, Lc/c/a/g;->h:Landroid/content/res/ColorStateList;
    if-eqz v0, :L1
  .line 2
    invoke-virtual { v0 }, Landroid/content/res/ColorStateList;->isStateful()Z
    move-result v0
    if-nez v0, :L2
  :L1
    invoke-super { p0 }, Landroid/graphics/drawable/Drawable;->isStateful()Z
    move-result v0
    if-eqz v0, :L3
  :L2
    const/4 v0, 1
    goto :L4
  :L3
    const/4 v0, 0
  :L4
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V
  .line 2
    invoke-direct { p0, p1 }, Lc/c/a/g;->i(Landroid/graphics/Rect;)V
    return-void
.end method

.method protected onStateChange([I)Z
  .registers 5
  .line 1
    iget-object v0, p0, Lc/c/a/g;->h:Landroid/content/res/ColorStateList;
    invoke-virtual { v0 }, Landroid/content/res/ColorStateList;->getDefaultColor()I
    move-result v1
    invoke-virtual { v0, p1, v1 }, Landroid/content/res/ColorStateList;->getColorForState([II)I
    move-result p1
  .line 2
    iget-object v0, p0, Lc/c/a/g;->b:Landroid/graphics/Paint;
    invoke-virtual { v0 }, Landroid/graphics/Paint;->getColor()I
    move-result v0
    const/4 v1, 1
    if-eq p1, v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    if-eqz v0, :L2
  .line 3
    iget-object v2, p0, Lc/c/a/g;->b:Landroid/graphics/Paint;
    invoke-virtual { v2, p1 }, Landroid/graphics/Paint;->setColor(I)V
  :L2
  .line 4
    iget-object p1, p0, Lc/c/a/g;->j:Landroid/content/res/ColorStateList;
    if-eqz p1, :L3
    iget-object v2, p0, Lc/c/a/g;->k:Landroid/graphics/PorterDuff$Mode;
    if-eqz v2, :L3
  .line 5
    invoke-direct { p0, p1, v2 }, Lc/c/a/g;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    move-result-object p1
    iput-object p1, p0, Lc/c/a/g;->i:Landroid/graphics/PorterDuffColorFilter;
    return v1
  :L3
    return v0
.end method

.method public setAlpha(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/c/a/g;->b:Landroid/graphics/Paint;
    invoke-virtual { v0, p1 }, Landroid/graphics/Paint;->setAlpha(I)V
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/c/a/g;->b:Landroid/graphics/Paint;
    invoke-virtual { v0, p1 }, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lc/c/a/g;->j:Landroid/content/res/ColorStateList;
  .line 2
    iget-object v0, p0, Lc/c/a/g;->k:Landroid/graphics/PorterDuff$Mode;
    invoke-direct { p0, p1, v0 }, Lc/c/a/g;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    move-result-object p1
    iput-object p1, p0, Lc/c/a/g;->i:Landroid/graphics/PorterDuffColorFilter;
  .line 3
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->invalidateSelf()V
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lc/c/a/g;->k:Landroid/graphics/PorterDuff$Mode;
  .line 2
    iget-object v0, p0, Lc/c/a/g;->j:Landroid/content/res/ColorStateList;
    invoke-direct { p0, v0, p1 }, Lc/c/a/g;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    move-result-object p1
    iput-object p1, p0, Lc/c/a/g;->i:Landroid/graphics/PorterDuffColorFilter;
  .line 3
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->invalidateSelf()V
    return-void
.end method
