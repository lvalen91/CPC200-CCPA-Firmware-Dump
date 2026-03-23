.class public Ld/c/a/a/n/a;
.super Lc/c/a/a;
.implements Landroid/widget/Checkable;
.implements Ld/c/a/a/a0/n;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Ld/c/a/a/n/a$a;
  }
.end annotation

.field private final static l:[I

.field private final static m:[I

.field private final static n:[I

.field private final g:Ld/c/a/a/n/b;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Ld/c/a/a/n/a$a;

.method static constructor <clinit>()V
  .registers 4
    const/4 v0, 1
    new-array v1, v0, [I
    const v2, 16842911
    const/4 v3, 0
    aput v2, v1, v3
  .line 1
    sput-object v1, Ld/c/a/a/n/a;->l:[I
    new-array v1, v0, [I
    const v2, 16842912
    aput v2, v1, v3
  .line 2
    sput-object v1, Ld/c/a/a/n/a;->m:[I
    new-array v0, v0, [I
  .line 3
    sget v1, Ld/c/a/a/b;->state_dragged:I
    aput v1, v0, v3
    sput-object v0, Ld/c/a/a/n/a;->n:[I
    return-void
.end method

.method static synthetic c(Ld/c/a/a/n/a;)F
  .registers 1
  .line 1
    invoke-super { p0 }, Lc/c/a/a;->getRadius()F
    move-result p0
    return p0
.end method

.method private d()V
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 26
    if-gt v0, v1, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { v0 }, Ld/c/a/a/n/b;->a()V
    const/4 v0, 0
    throw v0
.end method

.method private getBoundsAsRectF()Landroid/graphics/RectF;
  .registers 2
  .line 1
    new-instance v0, Landroid/graphics/RectF;
    invoke-direct { v0 }, Landroid/graphics/RectF;-><init>()V
  .line 2
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { v0 }, Ld/c/a/a/n/b;->b()Ld/c/a/a/a0/g;
    const/4 v0, 0
    throw v0
.end method

.method public e()Z
  .registers 2
  .line 1
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    if-nez v0, :L0
    const/4 v0, 0
    return v0
  :L0
    invoke-virtual { v0 }, Ld/c/a/a/n/b;->r()Z
    const/4 v0, 0
    throw v0
.end method

.method public f()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Ld/c/a/a/n/a;->j:Z
    return v0
.end method

.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { v0 }, Ld/c/a/a/n/b;->c()Landroid/content/res/ColorStateList;
    const/4 v0, 0
    throw v0
.end method

.method public getCardForegroundColor()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { v0 }, Ld/c/a/a/n/b;->d()Landroid/content/res/ColorStateList;
    const/4 v0, 0
    throw v0
.end method

.method getCardViewRadius()F
  .registers 2
  .line 1
    invoke-static { p0 }, Ld/c/a/a/n/a;->c(Ld/c/a/a/n/a;)F
    move-result v0
    return v0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { v0 }, Ld/c/a/a/n/b;->e()Landroid/graphics/drawable/Drawable;
    const/4 v0, 0
    throw v0
.end method

.method public getCheckedIconMargin()I
  .registers 2
  .line 1
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { v0 }, Ld/c/a/a/n/b;->f()I
    const/4 v0, 0
    throw v0
.end method

.method public getCheckedIconSize()I
  .registers 2
  .line 1
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { v0 }, Ld/c/a/a/n/b;->g()I
    const/4 v0, 0
    throw v0
.end method

.method public getCheckedIconTint()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { v0 }, Ld/c/a/a/n/b;->h()Landroid/content/res/ColorStateList;
    const/4 v0, 0
    throw v0
.end method

.method public getContentPaddingBottom()I
  .registers 2
  .line 1
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { v0 }, Ld/c/a/a/n/b;->p()Landroid/graphics/Rect;
    const/4 v0, 0
    throw v0
.end method

.method public getContentPaddingLeft()I
  .registers 2
  .line 1
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { v0 }, Ld/c/a/a/n/b;->p()Landroid/graphics/Rect;
    const/4 v0, 0
    throw v0
.end method

.method public getContentPaddingRight()I
  .registers 2
  .line 1
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { v0 }, Ld/c/a/a/n/b;->p()Landroid/graphics/Rect;
    const/4 v0, 0
    throw v0
.end method

.method public getContentPaddingTop()I
  .registers 2
  .line 1
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { v0 }, Ld/c/a/a/n/b;->p()Landroid/graphics/Rect;
    const/4 v0, 0
    throw v0
.end method

.method public getProgress()F
  .registers 2
  .line 1
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { v0 }, Ld/c/a/a/n/b;->j()F
    const/4 v0, 0
    throw v0
.end method

.method public getRadius()F
  .registers 2
  .line 1
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { v0 }, Ld/c/a/a/n/b;->i()F
    const/4 v0, 0
    throw v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { v0 }, Ld/c/a/a/n/b;->k()Landroid/content/res/ColorStateList;
    const/4 v0, 0
    throw v0
.end method

.method public getShapeAppearanceModel()Ld/c/a/a/a0/k;
  .registers 2
  .line 1
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { v0 }, Ld/c/a/a/n/b;->l()Ld/c/a/a/a0/k;
    const/4 v0, 0
    throw v0
.end method

.method public getStrokeColor()I
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { v0 }, Ld/c/a/a/n/b;->m()I
    const/4 v0, 0
    throw v0
.end method

.method public getStrokeColorStateList()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { v0 }, Ld/c/a/a/n/b;->n()Landroid/content/res/ColorStateList;
    const/4 v0, 0
    throw v0
.end method

.method public getStrokeWidth()I
  .registers 2
  .line 1
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { v0 }, Ld/c/a/a/n/b;->o()I
    const/4 v0, 0
    throw v0
.end method

.method public isChecked()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Ld/c/a/a/n/a;->i:Z
    return v0
.end method

.method protected onAttachedToWindow()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/widget/FrameLayout;->onAttachedToWindow()V
  .line 2
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { v0 }, Ld/c/a/a/n/b;->b()Ld/c/a/a/a0/g;
    const/4 v0, 0
    throw v0
.end method

.method protected onCreateDrawableState(I)[I
  .registers 3
    add-int/lit8 p1, p1, 3
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I
    move-result-object p1
  .line 2
    invoke-virtual { p0 }, Ld/c/a/a/n/a;->e()Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    sget-object v0, Ld/c/a/a/n/a;->l:[I
    invoke-static { p1, v0 }, Landroid/widget/FrameLayout;->mergeDrawableStates([I[I)[I
  :L0
  .line 4
    invoke-virtual { p0 }, Ld/c/a/a/n/a;->isChecked()Z
    move-result v0
    if-eqz v0, :L1
  .line 5
    sget-object v0, Ld/c/a/a/n/a;->m:[I
    invoke-static { p1, v0 }, Landroid/widget/FrameLayout;->mergeDrawableStates([I[I)[I
  :L1
  .line 6
    invoke-virtual { p0 }, Ld/c/a/a/n/a;->f()Z
    move-result v0
    if-eqz v0, :L2
  .line 7
    sget-object v0, Ld/c/a/a/n/a;->n:[I
    invoke-static { p1, v0 }, Landroid/widget/FrameLayout;->mergeDrawableStates([I[I)[I
  :L2
    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    const-string v0, "androidx.cardview.widget.CardView"
  .line 2
    invoke-virtual { p1, v0 }, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V
  .line 3
    invoke-virtual { p0 }, Ld/c/a/a/n/a;->isChecked()Z
    move-result v0
    invoke-virtual { p1, v0 }, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    const-string v0, "androidx.cardview.widget.CardView"
  .line 2
    invoke-virtual { p1, v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V
  .line 3
    invoke-virtual { p0 }, Ld/c/a/a/n/a;->e()Z
    move-result v0
    invoke-virtual { p1, v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V
  .line 4
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->isClickable()Z
    move-result v0
    invoke-virtual { p1, v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V
  .line 5
    invoke-virtual { p0 }, Ld/c/a/a/n/a;->isChecked()Z
    move-result v0
    invoke-virtual { p1, v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V
    return-void
.end method

.method protected onMeasure(II)V
  .registers 4
  .line 1
    invoke-super { p0, p1, p2 }, Lc/c/a/a;->onMeasure(II)V
  .line 2
    iget-object p1, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getMeasuredWidth()I
    move-result p2
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getMeasuredHeight()I
    move-result v0
    invoke-virtual { p1, p2, v0 }, Ld/c/a/a/n/b;->s(II)V
    const/4 p1, 0
    throw p1
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Ld/c/a/a/n/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
  .registers 2
  .line 1
    iget-boolean p1, p0, Ld/c/a/a/n/a;->h:Z
    if-nez p1, :L0
    return-void
  :L0
  .line 2
    iget-object p1, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { p1 }, Ld/c/a/a/n/b;->q()Z
    const/4 p1, 0
    throw p1
.end method

.method setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method public setCardBackgroundColor(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-static { p1 }, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;
    move-result-object p1
    invoke-virtual { v0, p1 }, Ld/c/a/a/n/b;->t(Landroid/content/res/ColorStateList;)V
    const/4 p1, 0
    throw p1
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 2
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { v0, p1 }, Ld/c/a/a/n/b;->t(Landroid/content/res/ColorStateList;)V
    const/4 p1, 0
    throw p1
.end method

.method public setCardElevation(F)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Lc/c/a/a;->setCardElevation(F)V
  .line 2
    iget-object p1, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { p1 }, Ld/c/a/a/n/b;->H()V
    const/4 p1, 0
    throw p1
.end method

.method public setCardForegroundColor(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { v0, p1 }, Ld/c/a/a/n/b;->u(Landroid/content/res/ColorStateList;)V
    const/4 p1, 0
    throw p1
.end method

.method public setCheckable(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { v0, p1 }, Ld/c/a/a/n/b;->v(Z)V
    const/4 p1, 0
    throw p1
.end method

.method public setChecked(Z)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Ld/c/a/a/n/a;->i:Z
    if-eq v0, p1, :L0
  .line 2
    invoke-virtual { p0 }, Ld/c/a/a/n/a;->toggle()V
  :L0
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
  .registers 3
  .line 1
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { v0, p1 }, Ld/c/a/a/n/b;->w(Landroid/graphics/drawable/Drawable;)V
    const/4 p1, 0
    throw p1
.end method

.method public setCheckedIconMargin(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { v0, p1 }, Ld/c/a/a/n/b;->x(I)V
    const/4 p1, 0
    throw p1
.end method

.method public setCheckedIconMarginResource(I)V
  .registers 4
    const/4 v0, -1
    if-ne p1, v0, :L0
    return-void
  :L0
  .line 1
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
  .line 2
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    invoke-virtual { v1, p1 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result p1
  .line 3
    invoke-virtual { v0, p1 }, Ld/c/a/a/n/b;->x(I)V
    const/4 p1, 0
    throw p1
.end method

.method public setCheckedIconResource(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-static { v1, p1 }, Lc/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    invoke-virtual { v0, p1 }, Ld/c/a/a/n/b;->w(Landroid/graphics/drawable/Drawable;)V
    const/4 p1, 0
    throw p1
.end method

.method public setCheckedIconSize(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { v0, p1 }, Ld/c/a/a/n/b;->y(I)V
    const/4 p1, 0
    throw p1
.end method

.method public setCheckedIconSizeResource(I)V
  .registers 4
    if-nez p1, :L0
    return-void
  :L0
  .line 1
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    invoke-virtual { v1, p1 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result p1
    invoke-virtual { v0, p1 }, Ld/c/a/a/n/b;->y(I)V
    const/4 p1, 0
    throw p1
.end method

.method public setCheckedIconTint(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { v0, p1 }, Ld/c/a/a/n/b;->z(Landroid/content/res/ColorStateList;)V
    const/4 p1, 0
    throw p1
.end method

.method public setClickable(Z)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/FrameLayout;->setClickable(Z)V
  .line 2
    iget-object p1, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    if-nez p1, :L0
    return-void
  :L0
  .line 3
    invoke-virtual { p1 }, Ld/c/a/a/n/b;->G()V
    const/4 p1, 0
    throw p1
.end method

.method public setDragged(Z)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Ld/c/a/a/n/a;->j:Z
    if-eq v0, p1, :L0
  .line 2
    iput-boolean p1, p0, Ld/c/a/a/n/a;->j:Z
  .line 3
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->refreshDrawableState()V
  .line 4
    invoke-direct { p0 }, Ld/c/a/a/n/a;->d()V
  .line 5
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->invalidate()V
  :L0
    return-void
.end method

.method public setMaxCardElevation(F)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Lc/c/a/a;->setMaxCardElevation(F)V
  .line 2
    iget-object p1, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { p1 }, Ld/c/a/a/n/b;->I()V
    const/4 p1, 0
    throw p1
.end method

.method public setOnCheckedChangeListener(Ld/c/a/a/n/a$a;)V
  .registers 2
  .line 1
    iput-object p1, p0, Ld/c/a/a/n/a;->k:Ld/c/a/a/n/a$a;
    return-void
.end method

.method public setPreventCornerOverlap(Z)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Lc/c/a/a;->setPreventCornerOverlap(Z)V
  .line 2
    iget-object p1, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { p1 }, Ld/c/a/a/n/b;->I()V
    const/4 p1, 0
    throw p1
.end method

.method public setProgress(F)V
  .registers 3
  .line 1
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { v0, p1 }, Ld/c/a/a/n/b;->B(F)V
    const/4 p1, 0
    throw p1
.end method

.method public setRadius(F)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Lc/c/a/a;->setRadius(F)V
  .line 2
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { v0, p1 }, Ld/c/a/a/n/b;->A(F)V
    const/4 p1, 0
    throw p1
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { v0, p1 }, Ld/c/a/a/n/b;->C(Landroid/content/res/ColorStateList;)V
    const/4 p1, 0
    throw p1
.end method

.method public setRippleColorResource(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
  .line 2
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-static { v1, p1 }, Lc/a/k/a/a;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    move-result-object p1
  .line 3
    invoke-virtual { v0, p1 }, Ld/c/a/a/n/b;->C(Landroid/content/res/ColorStateList;)V
    const/4 p1, 0
    throw p1
.end method

.method public setShapeAppearanceModel(Ld/c/a/a/a0/k;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-direct { p0 }, Ld/c/a/a/n/a;->getBoundsAsRectF()Landroid/graphics/RectF;
    move-result-object v0
    invoke-virtual { p1, v0 }, Ld/c/a/a/a0/k;->u(Landroid/graphics/RectF;)Z
    move-result v0
    invoke-virtual { p0, v0 }, Landroid/widget/FrameLayout;->setClipToOutline(Z)V
  :L0
  .line 3
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { v0, p1 }, Ld/c/a/a/n/b;->D(Ld/c/a/a/a0/k;)V
    const/4 p1, 0
    throw p1
.end method

.method public setStrokeColor(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-static { p1 }, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;
    move-result-object p1
    invoke-virtual { v0, p1 }, Ld/c/a/a/n/b;->E(Landroid/content/res/ColorStateList;)V
    const/4 p1, 0
    throw p1
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 2
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { v0, p1 }, Ld/c/a/a/n/b;->E(Landroid/content/res/ColorStateList;)V
    const/4 p1, 0
    throw p1
.end method

.method public setStrokeWidth(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { v0, p1 }, Ld/c/a/a/n/b;->F(I)V
    const/4 p1, 0
    throw p1
.end method

.method public setUseCompatPadding(Z)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Lc/c/a/a;->setUseCompatPadding(Z)V
  .line 2
    iget-object p1, p0, Ld/c/a/a/n/a;->g:Ld/c/a/a/n/b;
    invoke-virtual { p1 }, Ld/c/a/a/n/b;->I()V
    const/4 p1, 0
    throw p1
.end method

.method public toggle()V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Ld/c/a/a/n/a;->e()Z
    move-result v0
    if-eqz v0, :L0
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->isEnabled()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-boolean v0, p0, Ld/c/a/a/n/a;->i:Z
    xor-int/lit8 v0, v0, 1
    iput-boolean v0, p0, Ld/c/a/a/n/a;->i:Z
  .line 3
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->refreshDrawableState()V
  .line 4
    invoke-direct { p0 }, Ld/c/a/a/n/a;->d()V
  .line 5
    iget-object v0, p0, Ld/c/a/a/n/a;->k:Ld/c/a/a/n/a$a;
    if-eqz v0, :L0
  .line 6
    iget-boolean v1, p0, Ld/c/a/a/n/a;->i:Z
    invoke-interface { v0, p0, v1 }, Ld/c/a/a/n/a$a;->a(Ld/c/a/a/n/a;Z)V
  :L0
    return-void
.end method
