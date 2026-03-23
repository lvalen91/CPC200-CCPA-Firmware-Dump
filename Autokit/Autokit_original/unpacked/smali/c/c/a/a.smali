.class public Lc/c/a/a;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

.field private final static f:Lc/c/a/f;

.field private b:Z

.field private c:Z

.field final d:Landroid/graphics/Rect;

.field private final e:Lc/c/a/e;

.method static constructor <clinit>()V
  .registers 2
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    new-instance v0, Lc/c/a/c;
    invoke-direct { v0 }, Lc/c/a/c;-><init>()V
    sput-object v0, Lc/c/a/a;->f:Lc/c/a/f;
    goto :L2
  :L0
    const/16 v1, 17
    if-lt v0, v1, :L1
  .line 3
    new-instance v0, Lc/c/a/b;
    invoke-direct { v0 }, Lc/c/a/b;-><init>()V
    sput-object v0, Lc/c/a/a;->f:Lc/c/a/f;
    goto :L2
  :L1
  .line 4
    new-instance v0, Lc/c/a/d;
    invoke-direct { v0 }, Lc/c/a/d;-><init>()V
    sput-object v0, Lc/c/a/a;->f:Lc/c/a/f;
  :L2
  .line 5
    sget-object v0, Lc/c/a/a;->f:Lc/c/a/f;
    invoke-interface { v0 }, Lc/c/a/f;->m()V
    return-void
.end method

.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
  .registers 3
  .line 1
    sget-object v0, Lc/c/a/a;->f:Lc/c/a/f;
    iget-object v1, p0, Lc/c/a/a;->e:Lc/c/a/e;
    invoke-interface { v0, v1 }, Lc/c/a/f;->f(Lc/c/a/e;)Landroid/content/res/ColorStateList;
    move-result-object v0
    return-object v0
.end method

.method public getCardElevation()F
  .registers 3
  .line 1
    sget-object v0, Lc/c/a/a;->f:Lc/c/a/f;
    iget-object v1, p0, Lc/c/a/a;->e:Lc/c/a/e;
    invoke-interface { v0, v1 }, Lc/c/a/f;->k(Lc/c/a/e;)F
    move-result v0
    return v0
.end method

.method public getContentPaddingBottom()I
  .registers 2
  .line 1
    iget-object v0, p0, Lc/c/a/a;->d:Landroid/graphics/Rect;
    iget v0, v0, Landroid/graphics/Rect;->bottom:I
    return v0
.end method

.method public getContentPaddingLeft()I
  .registers 2
  .line 1
    iget-object v0, p0, Lc/c/a/a;->d:Landroid/graphics/Rect;
    iget v0, v0, Landroid/graphics/Rect;->left:I
    return v0
.end method

.method public getContentPaddingRight()I
  .registers 2
  .line 1
    iget-object v0, p0, Lc/c/a/a;->d:Landroid/graphics/Rect;
    iget v0, v0, Landroid/graphics/Rect;->right:I
    return v0
.end method

.method public getContentPaddingTop()I
  .registers 2
  .line 1
    iget-object v0, p0, Lc/c/a/a;->d:Landroid/graphics/Rect;
    iget v0, v0, Landroid/graphics/Rect;->top:I
    return v0
.end method

.method public getMaxCardElevation()F
  .registers 3
  .line 1
    sget-object v0, Lc/c/a/a;->f:Lc/c/a/f;
    iget-object v1, p0, Lc/c/a/a;->e:Lc/c/a/e;
    invoke-interface { v0, v1 }, Lc/c/a/f;->a(Lc/c/a/e;)F
    move-result v0
    return v0
.end method

.method public getPreventCornerOverlap()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lc/c/a/a;->c:Z
    return v0
.end method

.method public getRadius()F
  .registers 3
  .line 1
    sget-object v0, Lc/c/a/a;->f:Lc/c/a/f;
    iget-object v1, p0, Lc/c/a/a;->e:Lc/c/a/e;
    invoke-interface { v0, v1 }, Lc/c/a/f;->b(Lc/c/a/e;)F
    move-result v0
    return v0
.end method

.method public getUseCompatPadding()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lc/c/a/a;->b:Z
    return v0
.end method

.method protected onMeasure(II)V
  .registers 8
  .line 1
    sget-object v0, Lc/c/a/a;->f:Lc/c/a/f;
    instance-of v0, v0, Lc/c/a/c;
    if-nez v0, :L4
  .line 2
    invoke-static { p1 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result v0
    const/high16 v1, 16384
    const/high16 v2, -32768
    if-eq v0, v2, :L0
    if-eq v0, v1, :L0
    goto :L1
  :L0
  .line 3
    sget-object v3, Lc/c/a/a;->f:Lc/c/a/f;
    iget-object v4, p0, Lc/c/a/a;->e:Lc/c/a/e;
    invoke-interface { v3, v4 }, Lc/c/a/f;->d(Lc/c/a/e;)F
    move-result v3
    float-to-double v3, v3
    invoke-static { v3, v4 }, Ljava/lang/Math;->ceil(D)D
    move-result-wide v3
    double-to-int v3, v3
  .line 4
    invoke-static { p1 }, Landroid/view/View$MeasureSpec;->getSize(I)I
    move-result p1
  .line 5
    invoke-static { v3, p1 }, Ljava/lang/Math;->max(II)I
    move-result p1
    invoke-static { p1, v0 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result p1
  :L1
  .line 6
    invoke-static { p2 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result v0
    if-eq v0, v2, :L2
    if-eq v0, v1, :L2
    goto :L3
  :L2
  .line 7
    sget-object v1, Lc/c/a/a;->f:Lc/c/a/f;
    iget-object v2, p0, Lc/c/a/a;->e:Lc/c/a/e;
    invoke-interface { v1, v2 }, Lc/c/a/f;->c(Lc/c/a/e;)F
    move-result v1
    float-to-double v1, v1
    invoke-static { v1, v2 }, Ljava/lang/Math;->ceil(D)D
    move-result-wide v1
    double-to-int v1, v1
  .line 8
    invoke-static { p2 }, Landroid/view/View$MeasureSpec;->getSize(I)I
    move-result p2
  .line 9
    invoke-static { v1, p2 }, Ljava/lang/Math;->max(II)I
    move-result p2
    invoke-static { p2, v0 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result p2
  :L3
  .line 10
    invoke-super { p0, p1, p2 }, Landroid/widget/FrameLayout;->onMeasure(II)V
    goto :L5
  :L4
  .line 11
    invoke-super { p0, p1, p2 }, Landroid/widget/FrameLayout;->onMeasure(II)V
  :L5
    return-void
.end method

.method public setCardBackgroundColor(I)V
  .registers 4
  .line 1
    sget-object v0, Lc/c/a/a;->f:Lc/c/a/f;
    iget-object v1, p0, Lc/c/a/a;->e:Lc/c/a/e;
    invoke-static { p1 }, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;
    move-result-object p1
    invoke-interface { v0, v1, p1 }, Lc/c/a/f;->j(Lc/c/a/e;Landroid/content/res/ColorStateList;)V
    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
  .registers 4
  .line 2
    sget-object v0, Lc/c/a/a;->f:Lc/c/a/f;
    iget-object v1, p0, Lc/c/a/a;->e:Lc/c/a/e;
    invoke-interface { v0, v1, p1 }, Lc/c/a/f;->j(Lc/c/a/e;Landroid/content/res/ColorStateList;)V
    return-void
.end method

.method public setCardElevation(F)V
  .registers 4
  .line 1
    sget-object v0, Lc/c/a/a;->f:Lc/c/a/f;
    iget-object v1, p0, Lc/c/a/a;->e:Lc/c/a/e;
    invoke-interface { v0, v1, p1 }, Lc/c/a/f;->g(Lc/c/a/e;F)V
    return-void
.end method

.method public setMaxCardElevation(F)V
  .registers 4
  .line 1
    sget-object v0, Lc/c/a/a;->f:Lc/c/a/f;
    iget-object v1, p0, Lc/c/a/a;->e:Lc/c/a/e;
    invoke-interface { v0, v1, p1 }, Lc/c/a/f;->l(Lc/c/a/e;F)V
    return-void
.end method

.method public setMinimumHeight(I)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/FrameLayout;->setMinimumHeight(I)V
    return-void
.end method

.method public setMinimumWidth(I)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/FrameLayout;->setMinimumWidth(I)V
    return-void
.end method

.method public setPadding(IIII)V
  .registers 5
    return-void
.end method

.method public setPaddingRelative(IIII)V
  .registers 5
    return-void
.end method

.method public setPreventCornerOverlap(Z)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lc/c/a/a;->c:Z
    if-eq p1, v0, :L0
  .line 2
    iput-boolean p1, p0, Lc/c/a/a;->c:Z
  .line 3
    sget-object p1, Lc/c/a/a;->f:Lc/c/a/f;
    iget-object v0, p0, Lc/c/a/a;->e:Lc/c/a/e;
    invoke-interface { p1, v0 }, Lc/c/a/f;->i(Lc/c/a/e;)V
  :L0
    return-void
.end method

.method public setRadius(F)V
  .registers 4
  .line 1
    sget-object v0, Lc/c/a/a;->f:Lc/c/a/f;
    iget-object v1, p0, Lc/c/a/a;->e:Lc/c/a/e;
    invoke-interface { v0, v1, p1 }, Lc/c/a/f;->h(Lc/c/a/e;F)V
    return-void
.end method

.method public setUseCompatPadding(Z)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lc/c/a/a;->b:Z
    if-eq v0, p1, :L0
  .line 2
    iput-boolean p1, p0, Lc/c/a/a;->b:Z
  .line 3
    sget-object p1, Lc/c/a/a;->f:Lc/c/a/f;
    iget-object v0, p0, Lc/c/a/a;->e:Lc/c/a/e;
    invoke-interface { p1, v0 }, Lc/c/a/f;->e(Lc/c/a/e;)V
  :L0
    return-void
.end method
