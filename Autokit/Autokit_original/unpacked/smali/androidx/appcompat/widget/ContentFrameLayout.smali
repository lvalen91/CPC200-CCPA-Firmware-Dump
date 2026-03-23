.class public Landroidx/appcompat/widget/ContentFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/appcompat/widget/ContentFrameLayout$a;
  }
.end annotation

.field private b:Landroid/util/TypedValue;

.field private c:Landroid/util/TypedValue;

.field private d:Landroid/util/TypedValue;

.field private e:Landroid/util/TypedValue;

.field private f:Landroid/util/TypedValue;

.field private g:Landroid/util/TypedValue;

.field private final h:Landroid/graphics/Rect;

.field private i:Landroidx/appcompat/widget/ContentFrameLayout$a;

.method public constructor <init>(Landroid/content/Context;)V
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-direct { p0, p1, v0 }, Landroidx/appcompat/widget/ContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
    const/4 v0, 0
  .line 2
    invoke-direct { p0, p1, p2, v0 }, Landroidx/appcompat/widget/ContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 4
  .line 3
    invoke-direct { p0, p1, p2, p3 }, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 4
    new-instance p1, Landroid/graphics/Rect;
    invoke-direct { p1 }, Landroid/graphics/Rect;-><init>()V
    iput-object p1, p0, Landroidx/appcompat/widget/ContentFrameLayout;->h:Landroid/graphics/Rect;
    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z
    return-void
.end method

.method public b(IIII)V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->h:Landroid/graphics/Rect;
    invoke-virtual { v0, p1, p2, p3, p4 }, Landroid/graphics/Rect;->set(IIII)V
  .line 2
    invoke-static { p0 }, Landroidx/core/view/v;->T(Landroid/view/View;)Z
    move-result p1
    if-eqz p1, :L0
  .line 3
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->requestLayout()V
  :L0
    return-void
.end method

.method public getFixedHeightMajor()Landroid/util/TypedValue;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->f:Landroid/util/TypedValue;
    if-nez v0, :L0
    new-instance v0, Landroid/util/TypedValue;
    invoke-direct { v0 }, Landroid/util/TypedValue;-><init>()V
    iput-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->f:Landroid/util/TypedValue;
  :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->f:Landroid/util/TypedValue;
    return-object v0
.end method

.method public getFixedHeightMinor()Landroid/util/TypedValue;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->g:Landroid/util/TypedValue;
    if-nez v0, :L0
    new-instance v0, Landroid/util/TypedValue;
    invoke-direct { v0 }, Landroid/util/TypedValue;-><init>()V
    iput-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->g:Landroid/util/TypedValue;
  :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->g:Landroid/util/TypedValue;
    return-object v0
.end method

.method public getFixedWidthMajor()Landroid/util/TypedValue;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->d:Landroid/util/TypedValue;
    if-nez v0, :L0
    new-instance v0, Landroid/util/TypedValue;
    invoke-direct { v0 }, Landroid/util/TypedValue;-><init>()V
    iput-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->d:Landroid/util/TypedValue;
  :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->d:Landroid/util/TypedValue;
    return-object v0
.end method

.method public getFixedWidthMinor()Landroid/util/TypedValue;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->e:Landroid/util/TypedValue;
    if-nez v0, :L0
    new-instance v0, Landroid/util/TypedValue;
    invoke-direct { v0 }, Landroid/util/TypedValue;-><init>()V
    iput-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->e:Landroid/util/TypedValue;
  :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->e:Landroid/util/TypedValue;
    return-object v0
.end method

.method public getMinWidthMajor()Landroid/util/TypedValue;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->b:Landroid/util/TypedValue;
    if-nez v0, :L0
    new-instance v0, Landroid/util/TypedValue;
    invoke-direct { v0 }, Landroid/util/TypedValue;-><init>()V
    iput-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->b:Landroid/util/TypedValue;
  :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->b:Landroid/util/TypedValue;
    return-object v0
.end method

.method public getMinWidthMinor()Landroid/util/TypedValue;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->c:Landroid/util/TypedValue;
    if-nez v0, :L0
    new-instance v0, Landroid/util/TypedValue;
    invoke-direct { v0 }, Landroid/util/TypedValue;-><init>()V
    iput-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->c:Landroid/util/TypedValue;
  :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->c:Landroid/util/TypedValue;
    return-object v0
.end method

.method protected onAttachedToWindow()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/widget/FrameLayout;->onAttachedToWindow()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->i:Landroidx/appcompat/widget/ContentFrameLayout$a;
    if-eqz v0, :L0
  .line 3
    invoke-interface { v0 }, Landroidx/appcompat/widget/ContentFrameLayout$a;->a()V
  :L0
    return-void
.end method

.method protected onDetachedFromWindow()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/widget/FrameLayout;->onDetachedFromWindow()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->i:Landroidx/appcompat/widget/ContentFrameLayout$a;
    if-eqz v0, :L0
  .line 3
    invoke-interface { v0 }, Landroidx/appcompat/widget/ContentFrameLayout$a;->onDetachedFromWindow()V
  :L0
    return-void
.end method

.method protected onMeasure(II)V
  .registers 16
  .line 1
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v0
  .line 2
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I
    const/4 v3, 1
    const/4 v4, 0
    if-ge v1, v2, :L0
    const/4 v1, 1
    goto :L1
  :L0
    const/4 v1, 0
  :L1
  .line 3
    invoke-static { p1 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result v2
  .line 4
    invoke-static { p2 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result v5
    const/4 v6, 6
    const/4 v7, 5
    const/high16 v8, -32768
    const/high16 v9, 16384
    if-ne v2, v8, :L8
    if-eqz v1, :L2
  .line 5
    iget-object v10, p0, Landroidx/appcompat/widget/ContentFrameLayout;->e:Landroid/util/TypedValue;
    goto :L3
  :L2
    iget-object v10, p0, Landroidx/appcompat/widget/ContentFrameLayout;->d:Landroid/util/TypedValue;
  :L3
    if-eqz v10, :L8
  .line 6
    iget v11, v10, Landroid/util/TypedValue;->type:I
    if-eqz v11, :L8
    if-ne v11, v7, :L5
  .line 7
    invoke-virtual { v10, v0 }, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F
    move-result v10
  :L4
    float-to-int v10, v10
    goto :L7
  :L5
    if-ne v11, v6, :L6
  .line 8
    iget v11, v0, Landroid/util/DisplayMetrics;->widthPixels:I
    int-to-float v12, v11
    int-to-float v11, v11
    invoke-virtual { v10, v12, v11 }, Landroid/util/TypedValue;->getFraction(FF)F
    move-result v10
    goto :L4
  :L6
    const/4 v10, 0
  :L7
    if-lez v10, :L8
  .line 9
    iget-object v11, p0, Landroidx/appcompat/widget/ContentFrameLayout;->h:Landroid/graphics/Rect;
    iget v12, v11, Landroid/graphics/Rect;->left:I
    iget v11, v11, Landroid/graphics/Rect;->right:I
    add-int/2addr v12, v11
    sub-int/2addr v10, v12
  .line 10
    invoke-static { p1 }, Landroid/view/View$MeasureSpec;->getSize(I)I
    move-result p1
  .line 11
    invoke-static { v10, p1 }, Ljava/lang/Math;->min(II)I
    move-result p1
  .line 12
    invoke-static { p1, v9 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result p1
    const/4 v10, 1
    goto :L9
  :L8
    const/4 v10, 0
  :L9
    if-ne v5, v8, :L16
    if-eqz v1, :L10
  .line 13
    iget-object v5, p0, Landroidx/appcompat/widget/ContentFrameLayout;->f:Landroid/util/TypedValue;
    goto :L11
  :L10
    iget-object v5, p0, Landroidx/appcompat/widget/ContentFrameLayout;->g:Landroid/util/TypedValue;
  :L11
    if-eqz v5, :L16
  .line 14
    iget v11, v5, Landroid/util/TypedValue;->type:I
    if-eqz v11, :L16
    if-ne v11, v7, :L13
  .line 15
    invoke-virtual { v5, v0 }, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F
    move-result v5
  :L12
    float-to-int v5, v5
    goto :L15
  :L13
    if-ne v11, v6, :L14
  .line 16
    iget v11, v0, Landroid/util/DisplayMetrics;->heightPixels:I
    int-to-float v12, v11
    int-to-float v11, v11
    invoke-virtual { v5, v12, v11 }, Landroid/util/TypedValue;->getFraction(FF)F
    move-result v5
    goto :L12
  :L14
    const/4 v5, 0
  :L15
    if-lez v5, :L16
  .line 17
    iget-object v11, p0, Landroidx/appcompat/widget/ContentFrameLayout;->h:Landroid/graphics/Rect;
    iget v12, v11, Landroid/graphics/Rect;->top:I
    iget v11, v11, Landroid/graphics/Rect;->bottom:I
    add-int/2addr v12, v11
    sub-int/2addr v5, v12
  .line 18
    invoke-static { p2 }, Landroid/view/View$MeasureSpec;->getSize(I)I
    move-result p2
  .line 19
    invoke-static { v5, p2 }, Ljava/lang/Math;->min(II)I
    move-result p2
  .line 20
    invoke-static { p2, v9 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result p2
  :L16
  .line 21
    invoke-super { p0, p1, p2 }, Landroid/widget/FrameLayout;->onMeasure(II)V
  .line 22
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getMeasuredWidth()I
    move-result p1
  .line 23
    invoke-static { p1, v9 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v5
    if-nez v10, :L24
    if-ne v2, v8, :L24
    if-eqz v1, :L17
  .line 24
    iget-object v1, p0, Landroidx/appcompat/widget/ContentFrameLayout;->c:Landroid/util/TypedValue;
    goto :L18
  :L17
    iget-object v1, p0, Landroidx/appcompat/widget/ContentFrameLayout;->b:Landroid/util/TypedValue;
  :L18
    if-eqz v1, :L24
  .line 25
    iget v2, v1, Landroid/util/TypedValue;->type:I
    if-eqz v2, :L24
    if-ne v2, v7, :L20
  .line 26
    invoke-virtual { v1, v0 }, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F
    move-result v0
  :L19
    float-to-int v0, v0
    goto :L22
  :L20
    if-ne v2, v6, :L21
  .line 27
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I
    int-to-float v2, v0
    int-to-float v0, v0
    invoke-virtual { v1, v2, v0 }, Landroid/util/TypedValue;->getFraction(FF)F
    move-result v0
    goto :L19
  :L21
    const/4 v0, 0
  :L22
    if-lez v0, :L23
  .line 28
    iget-object v1, p0, Landroidx/appcompat/widget/ContentFrameLayout;->h:Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I
    iget v1, v1, Landroid/graphics/Rect;->right:I
    add-int/2addr v2, v1
    sub-int/2addr v0, v2
  :L23
    if-ge p1, v0, :L24
  .line 29
    invoke-static { v0, v9 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v5
    goto :L25
  :L24
    const/4 v3, 0
  :L25
    if-eqz v3, :L26
  .line 30
    invoke-super { p0, v5, p2 }, Landroid/widget/FrameLayout;->onMeasure(II)V
  :L26
    return-void
.end method

.method public setAttachListener(Landroidx/appcompat/widget/ContentFrameLayout$a;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ContentFrameLayout;->i:Landroidx/appcompat/widget/ContentFrameLayout$a;
    return-void
.end method
