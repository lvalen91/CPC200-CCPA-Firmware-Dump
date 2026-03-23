.class public Lcom/google/android/material/internal/d;
.super Landroidx/appcompat/widget/g0;
.source "SourceFile"

.field private q:Landroid/graphics/drawable/Drawable;

.field private final r:Landroid/graphics/Rect;

.field private final s:Landroid/graphics/Rect;

.field private t:I

.field protected u:Z

.field v:Z

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
    const/4 v0, 0
  .line 1
    invoke-direct { p0, p1, p2, v0 }, Lcom/google/android/material/internal/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 12
  .line 2
    invoke-direct { p0, p1, p2, p3 }, Landroidx/appcompat/widget/g0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 3
    new-instance v0, Landroid/graphics/Rect;
    invoke-direct { v0 }, Landroid/graphics/Rect;-><init>()V
    iput-object v0, p0, Lcom/google/android/material/internal/d;->r:Landroid/graphics/Rect;
  .line 4
    new-instance v0, Landroid/graphics/Rect;
    invoke-direct { v0 }, Landroid/graphics/Rect;-><init>()V
    iput-object v0, p0, Lcom/google/android/material/internal/d;->s:Landroid/graphics/Rect;
    const/16 v0, 119
  .line 5
    iput v0, p0, Lcom/google/android/material/internal/d;->t:I
    const/4 v0, 1
  .line 6
    iput-boolean v0, p0, Lcom/google/android/material/internal/d;->u:Z
    const/4 v1, 0
  .line 7
    iput-boolean v1, p0, Lcom/google/android/material/internal/d;->v:Z
  .line 8
    sget-object v4, Ld/c/a/a/k;->ForegroundLinearLayout:[I
    new-array v7, v1, [I
    const/4 v6, 0
    move-object v2, p1
    move-object v3, p2
    move v5, p3
  .line 9
    invoke-static/range { v2 .. v7 }, Lcom/google/android/material/internal/j;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;
    move-result-object p1
  .line 10
    sget p2, Ld/c/a/a/k;->ForegroundLinearLayout_android_foregroundGravity:I
    iget p3, p0, Lcom/google/android/material/internal/d;->t:I
  .line 11
    invoke-virtual { p1, p2, p3 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result p2
    iput p2, p0, Lcom/google/android/material/internal/d;->t:I
  .line 12
    sget p2, Ld/c/a/a/k;->ForegroundLinearLayout_android_foreground:I
    invoke-virtual { p1, p2 }, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object p2
    if-eqz p2, :L0
  .line 13
    invoke-virtual { p0, p2 }, Lcom/google/android/material/internal/d;->setForeground(Landroid/graphics/drawable/Drawable;)V
  :L0
  .line 14
    sget p2, Ld/c/a/a/k;->ForegroundLinearLayout_foregroundInsidePadding:I
  .line 15
    invoke-virtual { p1, p2, v0 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result p2
    iput-boolean p2, p0, Lcom/google/android/material/internal/d;->u:Z
  .line 16
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->recycle()V
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
  .registers 10
  .line 1
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V
  .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/d;->q:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L3
  .line 3
    iget-boolean v1, p0, Lcom/google/android/material/internal/d;->v:Z
    if-eqz v1, :L2
    const/4 v1, 0
  .line 4
    iput-boolean v1, p0, Lcom/google/android/material/internal/d;->v:Z
  .line 5
    iget-object v2, p0, Lcom/google/android/material/internal/d;->r:Landroid/graphics/Rect;
  .line 6
    iget-object v3, p0, Lcom/google/android/material/internal/d;->s:Landroid/graphics/Rect;
  .line 7
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getRight()I
    move-result v4
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getLeft()I
    move-result v5
    sub-int/2addr v4, v5
  .line 8
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getBottom()I
    move-result v5
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getTop()I
    move-result v6
    sub-int/2addr v5, v6
  .line 9
    iget-boolean v6, p0, Lcom/google/android/material/internal/d;->u:Z
    if-eqz v6, :L0
  .line 10
    invoke-virtual { v2, v1, v1, v4, v5 }, Landroid/graphics/Rect;->set(IIII)V
    goto :L1
  :L0
  .line 11
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result v6
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingRight()I
    move-result v7
    sub-int/2addr v4, v7
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingBottom()I
    move-result v7
    sub-int/2addr v5, v7
  .line 12
    invoke-virtual { v2, v1, v6, v4, v5 }, Landroid/graphics/Rect;->set(IIII)V
  :L1
  .line 13
    iget v1, p0, Lcom/google/android/material/internal/d;->t:I
  .line 14
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
    move-result v4
  .line 15
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    move-result v5
  .line 16
    invoke-static { v1, v4, v5, v2, v3 }, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
  .line 17
    invoke-virtual { v0, v3 }, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
  :L2
  .line 18
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
  :L3
    return-void
.end method

.method public drawableHotspotChanged(FF)V
  .annotation build Landroid/annotation/TargetApi;
    value = 21
  .end annotation
  .registers 4
  .line 1
    invoke-super { p0, p1, p2 }, Landroid/view/ViewGroup;->drawableHotspotChanged(FF)V
  .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/d;->q:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0, p1, p2 }, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V
  :L0
    return-void
.end method

.method protected drawableStateChanged()V
  .registers 3
  .line 1
    invoke-super { p0 }, Landroid/view/ViewGroup;->drawableStateChanged()V
  .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/d;->q:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->isStateful()Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    iget-object v0, p0, Lcom/google/android/material/internal/d;->q:Landroid/graphics/drawable/Drawable;
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getDrawableState()[I
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/graphics/drawable/Drawable;->setState([I)Z
  :L0
    return-void
.end method

.method public getForeground()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/d;->q:Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method public getForegroundGravity()I
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/internal/d;->t:I
    return v0
.end method

.method public jumpDrawablesToCurrentState()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V
  .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/d;->q:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V
  :L0
    return-void
.end method

.method protected onLayout(ZIIII)V
  .registers 6
  .line 1
    invoke-super/range { p0 .. p5 }, Landroidx/appcompat/widget/g0;->onLayout(ZIIII)V
  .line 2
    iget-boolean p2, p0, Lcom/google/android/material/internal/d;->v:Z
    or-int/2addr p1, p2
    iput-boolean p1, p0, Lcom/google/android/material/internal/d;->v:Z
    return-void
.end method

.method protected onSizeChanged(IIII)V
  .registers 5
  .line 1
    invoke-super { p0, p1, p2, p3, p4 }, Landroid/view/ViewGroup;->onSizeChanged(IIII)V
    const/4 p1, 1
  .line 2
    iput-boolean p1, p0, Lcom/google/android/material/internal/d;->v:Z
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/d;->q:Landroid/graphics/drawable/Drawable;
    if-eq v0, p1, :L4
    if-eqz v0, :L0
    const/4 v1, 0
  .line 2
    invoke-virtual { v0, v1 }, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
  .line 3
    iget-object v0, p0, Lcom/google/android/material/internal/d;->q:Landroid/graphics/drawable/Drawable;
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
  :L0
  .line 4
    iput-object p1, p0, Lcom/google/android/material/internal/d;->q:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :L2
    const/4 v0, 0
  .line 5
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->setWillNotDraw(Z)V
  .line 6
    invoke-virtual { p1, p0 }, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
  .line 7
    invoke-virtual { p1 }, Landroid/graphics/drawable/Drawable;->isStateful()Z
    move-result v0
    if-eqz v0, :L1
  .line 8
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getDrawableState()[I
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/graphics/drawable/Drawable;->setState([I)Z
  :L1
  .line 9
    iget v0, p0, Lcom/google/android/material/internal/d;->t:I
    const/16 v1, 119
    if-ne v0, v1, :L3
  .line 10
    new-instance v0, Landroid/graphics/Rect;
    invoke-direct { v0 }, Landroid/graphics/Rect;-><init>()V
  .line 11
    invoke-virtual { p1, v0 }, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
    goto :L3
  :L2
    const/4 p1, 1
  .line 12
    invoke-virtual { p0, p1 }, Landroid/view/ViewGroup;->setWillNotDraw(Z)V
  :L3
  .line 13
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->requestLayout()V
  .line 14
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->invalidate()V
  :L4
    return-void
.end method

.method public setForegroundGravity(I)V
  .registers 3
  .line 1
    iget v0, p0, Lcom/google/android/material/internal/d;->t:I
    if-eq v0, p1, :L3
    const v0, 8388615
    and-int/2addr v0, p1
    if-nez v0, :L0
    const v0, 8388611
    or-int/2addr p1, v0
  :L0
    and-int/lit8 v0, p1, 112
    if-nez v0, :L1
    or-int/lit8 p1, p1, 48
  :L1
  .line 2
    iput p1, p0, Lcom/google/android/material/internal/d;->t:I
    const/16 v0, 119
    if-ne p1, v0, :L2
  .line 3
    iget-object p1, p0, Lcom/google/android/material/internal/d;->q:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :L2
  .line 4
    new-instance p1, Landroid/graphics/Rect;
    invoke-direct { p1 }, Landroid/graphics/Rect;-><init>()V
  .line 5
    iget-object v0, p0, Lcom/google/android/material/internal/d;->q:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
  :L2
  .line 6
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->requestLayout()V
  :L3
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    move-result v0
    if-nez v0, :L1
    iget-object v0, p0, Lcom/google/android/material/internal/d;->q:Landroid/graphics/drawable/Drawable;
    if-ne p1, v0, :L0
    goto :L1
  :L0
    const/4 p1, 0
    goto :L2
  :L1
    const/4 p1, 1
  :L2
    return p1
.end method
