.class public Landroidx/appcompat/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

.field private b:Z

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field f:Landroid/graphics/drawable/Drawable;

.field g:Landroid/graphics/drawable/Drawable;

.field h:Landroid/graphics/drawable/Drawable;

.field i:Z

.field j:Z

.field private k:I

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 5
  .line 1
    invoke-direct { p0, p1, p2 }, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .line 2
    new-instance v0, Landroidx/appcompat/widget/b;
    invoke-direct { v0, p0 }, Landroidx/appcompat/widget/b;-><init>(Landroidx/appcompat/widget/ActionBarContainer;)V
  .line 3
    invoke-static { p0, v0 }, Landroidx/core/view/v;->r0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
  .line 4
    sget-object v0, Lc/a/j;->ActionBar:[I
    invoke-virtual { p1, p2, v0 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    move-result-object p1
  .line 5
    sget p2, Lc/a/j;->ActionBar_background:I
    invoke-virtual { p1, p2 }, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object p2
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;
  .line 6
    sget p2, Lc/a/j;->ActionBar_backgroundStacked:I
    invoke-virtual { p1, p2 }, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object p2
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/graphics/drawable/Drawable;
  .line 7
    sget p2, Lc/a/j;->ActionBar_height:I
    const/4 v0, -1
    invoke-virtual { p1, p2, v0 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result p2
    iput p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->k:I
  .line 8
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getId()I
    move-result p2
    sget v0, Lc/a/f;->split_action_bar:I
    const/4 v1, 1
    if-ne p2, v0, :L0
  .line 9
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionBarContainer;->i:Z
  .line 10
    sget p2, Lc/a/j;->ActionBar_backgroundSplit:I
    invoke-virtual { p1, p2 }, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object p2
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Landroid/graphics/drawable/Drawable;
  :L0
  .line 11
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->recycle()V
  .line 12
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->i:Z
    const/4 p2, 0
    if-eqz p1, :L1
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Landroid/graphics/drawable/Drawable;
    if-nez p1, :L2
    goto :L3
  :L1
  .line 13
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;
    if-nez p1, :L2
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/graphics/drawable/Drawable;
    if-nez p1, :L2
    goto :L3
  :L2
    const/4 v1, 0
  :L3
  .line 14
    invoke-virtual { p0, v1 }, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V
    return-void
.end method

.method private a(Landroid/view/View;)I
  .registers 4
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;
  .line 2
    invoke-virtual { p1 }, Landroid/view/View;->getMeasuredHeight()I
    move-result p1
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I
    add-int/2addr p1, v1
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I
    add-int/2addr p1, v0
    return p1
.end method

.method private b(Landroid/view/View;)Z
  .registers 4
    if-eqz p1, :L1
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getVisibility()I
    move-result v0
    const/16 v1, 8
    if-eq v0, v1, :L1
    invoke-virtual { p1 }, Landroid/view/View;->getMeasuredHeight()I
    move-result p1
    if-nez p1, :L0
    goto :L1
  :L0
    const/4 p1, 0
    goto :L2
  :L1
    const/4 p1, 1
  :L2
    return p1
.end method

.method protected drawableStateChanged()V
  .registers 3
  .line 1
    invoke-super { p0 }, Landroid/widget/FrameLayout;->drawableStateChanged()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->isStateful()Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getDrawableState()[I
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/graphics/drawable/Drawable;->setState([I)Z
  :L0
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L1
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->isStateful()Z
    move-result v0
    if-eqz v0, :L1
  .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/graphics/drawable/Drawable;
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getDrawableState()[I
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/graphics/drawable/Drawable;->setState([I)Z
  :L1
  .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L2
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->isStateful()Z
    move-result v0
    if-eqz v0, :L2
  .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Landroid/graphics/drawable/Drawable;
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getDrawableState()[I
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/graphics/drawable/Drawable;->setState([I)Z
  :L2
    return-void
.end method

.method public getTabContainer()Landroid/view/View;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/view/View;
    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/widget/FrameLayout;->jumpDrawablesToCurrentState()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V
  :L0
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L1
  .line 5
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V
  :L1
  .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L2
  .line 7
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V
  :L2
    return-void
.end method

.method public onFinishInflate()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/widget/FrameLayout;->onFinishInflate()V
  .line 2
    sget v0, Lc/a/f;->action_bar:I
    invoke-virtual { p0, v0 }, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;
    move-result-object v0
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->d:Landroid/view/View;
  .line 3
    sget v0, Lc/a/f;->action_context_bar:I
    invoke-virtual { p0, v0 }, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;
    move-result-object v0
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->e:Landroid/view/View;
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z
    const/4 p1, 1
    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->b:Z
    if-nez v0, :L1
    invoke-super { p0, p1 }, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    move-result p1
    if-eqz p1, :L0
    goto :L1
  :L0
    const/4 p1, 0
    goto :L2
  :L1
    const/4 p1, 1
  :L2
    return p1
.end method

.method public onLayout(ZIIII)V
  .registers 10
  .line 1
    invoke-super/range { p0 .. p5 }, Landroid/widget/FrameLayout;->onLayout(ZIIII)V
  .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/view/View;
    const/16 p3, 8
    const/4 p5, 1
    const/4 v0, 0
    if-eqz p1, :L0
  .line 3
    invoke-virtual { p1 }, Landroid/view/View;->getVisibility()I
    move-result v1
    if-eq v1, p3, :L0
    const/4 v1, 1
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    if-eqz p1, :L2
  .line 4
    invoke-virtual { p1 }, Landroid/view/View;->getVisibility()I
    move-result v2
    if-eq v2, p3, :L2
  .line 5
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getMeasuredHeight()I
    move-result p3
  .line 6
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v2
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;
  .line 7
    invoke-virtual { p1 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v3
    sub-int v3, p3, v3
  .line 8
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I
    sub-int/2addr v3, v2
    sub-int/2addr p3, v2
    invoke-virtual { p1, p2, v3, p4, p3 }, Landroid/view/View;->layout(IIII)V
  :L2
  .line 9
    iget-boolean p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->i:Z
    if-eqz p2, :L4
  .line 10
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :L3
  .line 11
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getMeasuredWidth()I
    move-result p2
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getMeasuredHeight()I
    move-result p3
    invoke-virtual { p1, v0, v0, p2, p3 }, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    goto/16 :L10
  :L3
    const/4 p5, 0
    goto/16 :L10
  :L4
  .line 12
    iget-object p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;
    if-eqz p2, :L8
  .line 13
    iget-object p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->d:Landroid/view/View;
    invoke-virtual { p2 }, Landroid/view/View;->getVisibility()I
    move-result p2
    if-nez p2, :L5
  .line 14
    iget-object p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;
    iget-object p3, p0, Landroidx/appcompat/widget/ActionBarContainer;->d:Landroid/view/View;
    invoke-virtual { p3 }, Landroid/view/View;->getLeft()I
    move-result p3
    iget-object p4, p0, Landroidx/appcompat/widget/ActionBarContainer;->d:Landroid/view/View;
    invoke-virtual { p4 }, Landroid/view/View;->getTop()I
    move-result p4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->d:Landroid/view/View;
  .line 15
    invoke-virtual { v0 }, Landroid/view/View;->getRight()I
    move-result v0
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->d:Landroid/view/View;
    invoke-virtual { v2 }, Landroid/view/View;->getBottom()I
    move-result v2
  .line 16
    invoke-virtual { p2, p3, p4, v0, v2 }, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    goto :L7
  :L5
  .line 17
    iget-object p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->e:Landroid/view/View;
    if-eqz p2, :L6
  .line 18
    invoke-virtual { p2 }, Landroid/view/View;->getVisibility()I
    move-result p2
    if-nez p2, :L6
  .line 19
    iget-object p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;
    iget-object p3, p0, Landroidx/appcompat/widget/ActionBarContainer;->e:Landroid/view/View;
    invoke-virtual { p3 }, Landroid/view/View;->getLeft()I
    move-result p3
    iget-object p4, p0, Landroidx/appcompat/widget/ActionBarContainer;->e:Landroid/view/View;
    invoke-virtual { p4 }, Landroid/view/View;->getTop()I
    move-result p4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->e:Landroid/view/View;
  .line 20
    invoke-virtual { v0 }, Landroid/view/View;->getRight()I
    move-result v0
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->e:Landroid/view/View;
    invoke-virtual { v2 }, Landroid/view/View;->getBottom()I
    move-result v2
  .line 21
    invoke-virtual { p2, p3, p4, v0, v2 }, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    goto :L7
  :L6
  .line 22
    iget-object p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;
    invoke-virtual { p2, v0, v0, v0, v0 }, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
  :L7
    const/4 v0, 1
  :L8
  .line 23
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionBarContainer;->j:Z
    if-eqz v1, :L9
  .line 24
    iget-object p2, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/graphics/drawable/Drawable;
    if-eqz p2, :L9
  .line 25
    invoke-virtual { p1 }, Landroid/view/View;->getLeft()I
    move-result p3
    invoke-virtual { p1 }, Landroid/view/View;->getTop()I
    move-result p4
  .line 26
    invoke-virtual { p1 }, Landroid/view/View;->getRight()I
    move-result v0
    invoke-virtual { p1 }, Landroid/view/View;->getBottom()I
    move-result p1
  .line 27
    invoke-virtual { p2, p3, p4, v0, p1 }, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    goto :L10
  :L9
    move p5, v0
  :L10
    if-eqz p5, :L11
  .line 28
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->invalidate()V
  :L11
    return-void
.end method

.method public onMeasure(II)V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->d:Landroid/view/View;
    const/high16 v1, -32768
    if-nez v0, :L0
  .line 2
    invoke-static { p2 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result v0
    if-ne v0, v1, :L0
    iget v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->k:I
    if-ltz v0, :L0
  .line 3
    invoke-static { p2 }, Landroid/view/View$MeasureSpec;->getSize(I)I
    move-result p2
    invoke-static { v0, p2 }, Ljava/lang/Math;->min(II)I
    move-result p2
  .line 4
    invoke-static { p2, v1 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result p2
  :L0
  .line 5
    invoke-super { p0, p1, p2 }, Landroid/widget/FrameLayout;->onMeasure(II)V
  .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->d:Landroid/view/View;
    if-nez p1, :L1
    return-void
  :L1
  .line 7
    invoke-static { p2 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result p1
  .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/view/View;
    if-eqz v0, :L7
    invoke-virtual { v0 }, Landroid/view/View;->getVisibility()I
    move-result v0
    const/16 v2, 8
    if-eq v0, v2, :L7
    const/high16 v0, 16384
    if-eq p1, v0, :L7
  .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->d:Landroid/view/View;
    invoke-direct { p0, v0 }, Landroidx/appcompat/widget/ActionBarContainer;->b(Landroid/view/View;)Z
    move-result v0
    if-nez v0, :L2
  .line 10
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->d:Landroid/view/View;
    invoke-direct { p0, v0 }, Landroidx/appcompat/widget/ActionBarContainer;->a(Landroid/view/View;)I
    move-result v0
    goto :L4
  :L2
  .line 11
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->e:Landroid/view/View;
    invoke-direct { p0, v0 }, Landroidx/appcompat/widget/ActionBarContainer;->b(Landroid/view/View;)Z
    move-result v0
    if-nez v0, :L3
  .line 12
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->e:Landroid/view/View;
    invoke-direct { p0, v0 }, Landroidx/appcompat/widget/ActionBarContainer;->a(Landroid/view/View;)I
    move-result v0
    goto :L4
  :L3
    const/4 v0, 0
  :L4
    if-ne p1, v1, :L5
  .line 13
    invoke-static { p2 }, Landroid/view/View$MeasureSpec;->getSize(I)I
    move-result p1
    goto :L6
  :L5
    const p1, 2147483647
  :L6
  .line 14
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getMeasuredWidth()I
    move-result p2
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/view/View;
  .line 15
    invoke-direct { p0, v1 }, Landroidx/appcompat/widget/ActionBarContainer;->a(Landroid/view/View;)I
    move-result v1
    add-int/2addr v0, v1
    invoke-static { v0, p1 }, Ljava/lang/Math;->min(II)I
    move-result p1
  .line 16
    invoke-virtual { p0, p2, p1 }, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V
  :L7
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z
    const/4 p1, 1
    return p1
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
    const/4 v1, 0
  .line 2
    invoke-virtual { v0, v1 }, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;
    invoke-virtual { p0, v0 }, Landroid/widget/FrameLayout;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
  :L0
  .line 4
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :L1
  .line 5
    invoke-virtual { p1, p0 }, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
  .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->d:Landroid/view/View;
    if-eqz p1, :L1
  .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;
    invoke-virtual { p1 }, Landroid/view/View;->getLeft()I
    move-result p1
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContainer;->d:Landroid/view/View;
    invoke-virtual { v1 }, Landroid/view/View;->getTop()I
    move-result v1
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->d:Landroid/view/View;
  .line 8
    invoke-virtual { v2 }, Landroid/view/View;->getRight()I
    move-result v2
    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarContainer;->d:Landroid/view/View;
    invoke-virtual { v3 }, Landroid/view/View;->getBottom()I
    move-result v3
  .line 9
    invoke-virtual { v0, p1, v1, v2, v3 }, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
  :L1
  .line 10
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->i:Z
    const/4 v0, 1
    const/4 v1, 0
    if-eqz p1, :L2
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Landroid/graphics/drawable/Drawable;
    if-nez p1, :L3
    goto :L4
  :L2
  .line 11
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;
    if-nez p1, :L3
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/graphics/drawable/Drawable;
    if-nez p1, :L3
    goto :L4
  :L3
    const/4 v0, 0
  :L4
  .line 12
    invoke-virtual { p0, v0 }, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V
  .line 13
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->invalidate()V
  .line 14
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v0, 21
    if-lt p1, v0, :L5
  .line 15
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->invalidateOutline()V
  :L5
    return-void
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
    const/4 v1, 0
  .line 2
    invoke-virtual { v0, v1 }, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Landroid/graphics/drawable/Drawable;
    invoke-virtual { p0, v0 }, Landroid/widget/FrameLayout;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
  :L0
  .line 4
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Landroid/graphics/drawable/Drawable;
    const/4 v0, 0
    if-eqz p1, :L1
  .line 5
    invoke-virtual { p1, p0 }, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
  .line 6
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->i:Z
    if-eqz p1, :L1
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :L1
  .line 7
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getMeasuredWidth()I
    move-result v1
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getMeasuredHeight()I
    move-result v2
    invoke-virtual { p1, v0, v0, v1, v2 }, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
  :L1
  .line 8
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->i:Z
    const/4 v1, 1
    if-eqz p1, :L3
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Landroid/graphics/drawable/Drawable;
    if-nez p1, :L4
  :L2
    const/4 v0, 1
    goto :L4
  :L3
  .line 9
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;
    if-nez p1, :L4
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/graphics/drawable/Drawable;
    if-nez p1, :L4
    goto :L2
  :L4
  .line 10
    invoke-virtual { p0, v0 }, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V
  .line 11
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->invalidate()V
  .line 12
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v0, 21
    if-lt p1, v0, :L5
  .line 13
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->invalidateOutline()V
  :L5
    return-void
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L0
    const/4 v1, 0
  .line 2
    invoke-virtual { v0, v1 }, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/graphics/drawable/Drawable;
    invoke-virtual { p0, v0 }, Landroid/widget/FrameLayout;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
  :L0
  .line 4
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :L1
  .line 5
    invoke-virtual { p1, p0 }, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
  .line 6
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->j:Z
    if-eqz p1, :L1
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :L1
  .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/view/View;
    invoke-virtual { v0 }, Landroid/view/View;->getLeft()I
    move-result v0
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/view/View;
    invoke-virtual { v1 }, Landroid/view/View;->getTop()I
    move-result v1
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/view/View;
  .line 8
    invoke-virtual { v2 }, Landroid/view/View;->getRight()I
    move-result v2
    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/view/View;
    invoke-virtual { v3 }, Landroid/view/View;->getBottom()I
    move-result v3
  .line 9
    invoke-virtual { p1, v0, v1, v2, v3 }, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
  :L1
  .line 10
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->i:Z
    const/4 v0, 1
    const/4 v1, 0
    if-eqz p1, :L2
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Landroid/graphics/drawable/Drawable;
    if-nez p1, :L3
    goto :L4
  :L2
  .line 11
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;
    if-nez p1, :L3
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/graphics/drawable/Drawable;
    if-nez p1, :L3
    goto :L4
  :L3
    const/4 v0, 0
  :L4
  .line 12
    invoke-virtual { p0, v0 }, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V
  .line 13
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->invalidate()V
  .line 14
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v0, 21
    if-lt p1, v0, :L5
  .line 15
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->invalidateOutline()V
  :L5
    return-void
.end method

.method public setTabContainer(Landroidx/appcompat/widget/n0;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/view/View;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p0, v0 }, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V
  :L0
  .line 3
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/view/View;
    if-eqz p1, :L1
  .line 4
    invoke-virtual { p0, p1 }, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
  .line 5
    invoke-virtual { p1 }, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    const/4 v1, -1
  .line 6
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
    const/4 v1, -2
  .line 7
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
    const/4 v0, 0
  .line 8
    invoke-virtual { p1, v0 }, Landroidx/appcompat/widget/n0;->setAllowCollapse(Z)V
  :L1
    return-void
.end method

.method public setTransitioning(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->b:Z
    if-eqz p1, :L0
    const/high16 p1, 6
    goto :L1
  :L0
    const/high16 p1, 4
  :L1
  .line 2
    invoke-virtual { p0, p1 }, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V
    return-void
.end method

.method public setVisibility(I)V
  .registers 4
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/FrameLayout;->setVisibility(I)V
    const/4 v0, 0
    if-nez p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
  .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :L2
    invoke-virtual { v1, p1, v0 }, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
  :L2
  .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :L3
    invoke-virtual { v1, p1, v0 }, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
  :L3
  .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :L4
    invoke-virtual { v1, p1, v0 }, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
  :L4
    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
  .registers 3
    const/4 p1, 0
    return-object p1
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
  .registers 4
    if-eqz p3, :L0
  .line 1
    invoke-super { p0, p1, p2, p3 }, Landroid/widget/FrameLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    move-result-object p1
    return-object p1
  :L0
    const/4 p1, 0
    return-object p1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;
    if-ne p1, v0, :L0
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->i:Z
    if-eqz v0, :L3
  :L0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/graphics/drawable/Drawable;
    if-ne p1, v0, :L1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->j:Z
    if-nez v0, :L3
  :L1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Landroid/graphics/drawable/Drawable;
    if-ne p1, v0, :L2
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->i:Z
    if-nez v0, :L3
  :L2
  .line 2
    invoke-super { p0, p1 }, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    move-result p1
    if-eqz p1, :L4
  :L3
    const/4 p1, 1
    goto :L5
  :L4
    const/4 p1, 0
  :L5
    return p1
.end method
