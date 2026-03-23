.class Landroidx/appcompat/widget/d0;
.super Landroid/widget/ListView;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/appcompat/widget/d0$b;,
    Landroidx/appcompat/widget/d0$a;
  }
.end annotation

.field private final b:Landroid/graphics/Rect;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/lang/reflect/Field;

.field private i:Landroidx/appcompat/widget/d0$a;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Landroidx/core/view/z;

.field private n:Landroidx/core/widget/f;

.field o:Landroidx/appcompat/widget/d0$b;

.method constructor <init>(Landroid/content/Context;Z)V
  .catch Ljava/lang/NoSuchFieldException; { :L0 .. :L1 } :L2
  .registers 5
  .line 1
    sget v0, Lc/a/a;->dropDownListViewStyle:I
    const/4 v1, 0
    invoke-direct { p0, p1, v1, v0 }, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 2
    new-instance p1, Landroid/graphics/Rect;
    invoke-direct { p1 }, Landroid/graphics/Rect;-><init>()V
    iput-object p1, p0, Landroidx/appcompat/widget/d0;->b:Landroid/graphics/Rect;
    const/4 p1, 0
  .line 3
    iput p1, p0, Landroidx/appcompat/widget/d0;->c:I
  .line 4
    iput p1, p0, Landroidx/appcompat/widget/d0;->d:I
  .line 5
    iput p1, p0, Landroidx/appcompat/widget/d0;->e:I
  .line 6
    iput p1, p0, Landroidx/appcompat/widget/d0;->f:I
  .line 7
    iput-boolean p2, p0, Landroidx/appcompat/widget/d0;->k:Z
  .line 8
    invoke-virtual { p0, p1 }, Landroid/widget/ListView;->setCacheColorHint(I)V
  :L0
  .line 9
    const-class p1, Landroid/widget/AbsListView;
    const-string p2, "mIsChildViewEnabled"
    invoke-virtual { p1, p2 }, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object p1
    iput-object p1, p0, Landroidx/appcompat/widget/d0;->h:Ljava/lang/reflect/Field;
    const/4 p2, 1
  .line 10
    invoke-virtual { p1, p2 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
  :L1
    goto :L3
  :L2
    move-exception p1
  .line 11
    invoke-virtual { p1 }, Ljava/lang/NoSuchFieldException;->printStackTrace()V
  :L3
    return-void
.end method

.method private a()V
  .registers 4
    const/4 v0, 0
  .line 1
    iput-boolean v0, p0, Landroidx/appcompat/widget/d0;->l:Z
  .line 2
    invoke-virtual { p0, v0 }, Landroid/widget/ListView;->setPressed(Z)V
  .line 3
    invoke-virtual { p0 }, Landroidx/appcompat/widget/d0;->drawableStateChanged()V
  .line 4
    iget v1, p0, Landroidx/appcompat/widget/d0;->g:I
    invoke-virtual { p0 }, Landroid/widget/ListView;->getFirstVisiblePosition()I
    move-result v2
    sub-int/2addr v1, v2
    invoke-virtual { p0, v1 }, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;
    move-result-object v1
    if-eqz v1, :L0
  .line 5
    invoke-virtual { v1, v0 }, Landroid/view/View;->setPressed(Z)V
  :L0
  .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/d0;->m:Landroidx/core/view/z;
    if-eqz v0, :L1
  .line 7
    invoke-virtual { v0 }, Landroidx/core/view/z;->b()V
    const/4 v0, 0
  .line 8
    iput-object v0, p0, Landroidx/appcompat/widget/d0;->m:Landroidx/core/view/z;
  :L1
    return-void
.end method

.method private b(Landroid/view/View;I)V
  .registers 5
  .line 1
    invoke-virtual { p0, p2 }, Landroid/widget/ListView;->getItemIdAtPosition(I)J
    move-result-wide v0
  .line 2
    invoke-virtual { p0, p1, p2, v0, v1 }, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z
    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/d0;->b:Landroid/graphics/Rect;
    invoke-virtual { v0 }, Landroid/graphics/Rect;->isEmpty()Z
    move-result v0
    if-nez v0, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-eqz v0, :L0
  .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/d0;->b:Landroid/graphics/Rect;
    invoke-virtual { v0, v1 }, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
  .line 4
    invoke-virtual { v0, p1 }, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
  :L0
    return-void
.end method

.method private f(ILandroid/view/View;)V
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L3 } :L4
  .registers 8
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/d0;->b:Landroid/graphics/Rect;
  .line 2
    invoke-virtual { p2 }, Landroid/view/View;->getLeft()I
    move-result v1
    invoke-virtual { p2 }, Landroid/view/View;->getTop()I
    move-result v2
    invoke-virtual { p2 }, Landroid/view/View;->getRight()I
    move-result v3
    invoke-virtual { p2 }, Landroid/view/View;->getBottom()I
    move-result v4
    invoke-virtual { v0, v1, v2, v3, v4 }, Landroid/graphics/Rect;->set(IIII)V
  .line 3
    iget v1, v0, Landroid/graphics/Rect;->left:I
    iget v2, p0, Landroidx/appcompat/widget/d0;->c:I
    sub-int/2addr v1, v2
    iput v1, v0, Landroid/graphics/Rect;->left:I
  .line 4
    iget v1, v0, Landroid/graphics/Rect;->top:I
    iget v2, p0, Landroidx/appcompat/widget/d0;->d:I
    sub-int/2addr v1, v2
    iput v1, v0, Landroid/graphics/Rect;->top:I
  .line 5
    iget v1, v0, Landroid/graphics/Rect;->right:I
    iget v2, p0, Landroidx/appcompat/widget/d0;->e:I
    add-int/2addr v1, v2
    iput v1, v0, Landroid/graphics/Rect;->right:I
  .line 6
    iget v1, v0, Landroid/graphics/Rect;->bottom:I
    iget v2, p0, Landroidx/appcompat/widget/d0;->f:I
    add-int/2addr v1, v2
    iput v1, v0, Landroid/graphics/Rect;->bottom:I
  :L0
  .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/d0;->h:Ljava/lang/reflect/Field;
    invoke-virtual { v0, p0 }, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    move-result v0
  .line 8
    invoke-virtual { p2 }, Landroid/view/View;->isEnabled()Z
    move-result p2
    if-eq p2, v0, :L5
  .line 9
    iget-object p2, p0, Landroidx/appcompat/widget/d0;->h:Ljava/lang/reflect/Field;
    if-nez v0, :L1
    const/4 v0, 1
    goto :L2
  :L1
    const/4 v0, 0
  :L2
    invoke-static { v0 }, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v0
    invoke-virtual { p2, p0, v0 }, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    const/4 p2, -1
    if-eq p1, p2, :L5
  .line 10
    invoke-virtual { p0 }, Landroid/widget/ListView;->refreshDrawableState()V
  :L3
    goto :L5
  :L4
    move-exception p1
  .line 11
    invoke-virtual { p1 }, Ljava/lang/IllegalAccessException;->printStackTrace()V
  :L5
    return-void
.end method

.method private g(ILandroid/view/View;)V
  .registers 7
  .line 1
    invoke-virtual { p0 }, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    const/4 v1, 1
    const/4 v2, 0
    if-eqz v0, :L0
    const/4 v3, -1
    if-eq p1, v3, :L0
    const/4 v3, 1
    goto :L1
  :L0
    const/4 v3, 0
  :L1
    if-eqz v3, :L2
  .line 2
    invoke-virtual { v0, v2, v2 }, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
  :L2
  .line 3
    invoke-direct { p0, p1, p2 }, Landroidx/appcompat/widget/d0;->f(ILandroid/view/View;)V
    if-eqz v3, :L5
  .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/d0;->b:Landroid/graphics/Rect;
  .line 5
    invoke-virtual { p1 }, Landroid/graphics/Rect;->exactCenterX()F
    move-result p2
  .line 6
    invoke-virtual { p1 }, Landroid/graphics/Rect;->exactCenterY()F
    move-result p1
  .line 7
    invoke-virtual { p0 }, Landroid/widget/ListView;->getVisibility()I
    move-result v3
    if-nez v3, :L3
    goto :L4
  :L3
    const/4 v1, 0
  :L4
    invoke-virtual { v0, v1, v2 }, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
  .line 8
    invoke-static { v0, p2, p1 }, Landroidx/core/graphics/drawable/a;->k(Landroid/graphics/drawable/Drawable;FF)V
  :L5
    return-void
.end method

.method private h(ILandroid/view/View;FF)V
  .registers 6
  .line 1
    invoke-direct { p0, p1, p2 }, Landroidx/appcompat/widget/d0;->g(ILandroid/view/View;)V
  .line 2
    invoke-virtual { p0 }, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;
    move-result-object p2
    if-eqz p2, :L0
    const/4 v0, -1
    if-eq p1, v0, :L0
  .line 3
    invoke-static { p2, p3, p4 }, Landroidx/core/graphics/drawable/a;->k(Landroid/graphics/drawable/Drawable;FF)V
  :L0
    return-void
.end method

.method private i(Landroid/view/View;IFF)V
  .registers 11
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Landroidx/appcompat/widget/d0;->l:Z
  .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 21
    if-lt v1, v2, :L0
  .line 3
    invoke-virtual { p0, p3, p4 }, Landroid/widget/ListView;->drawableHotspotChanged(FF)V
  :L0
  .line 4
    invoke-virtual { p0 }, Landroid/widget/ListView;->isPressed()Z
    move-result v1
    if-nez v1, :L1
  .line 5
    invoke-virtual { p0, v0 }, Landroid/widget/ListView;->setPressed(Z)V
  :L1
  .line 6
    invoke-virtual { p0 }, Landroid/widget/ListView;->layoutChildren()V
  .line 7
    iget v1, p0, Landroidx/appcompat/widget/d0;->g:I
    const/4 v3, -1
    const/4 v4, 0
    if-eq v1, v3, :L2
  .line 8
    invoke-virtual { p0 }, Landroid/widget/ListView;->getFirstVisiblePosition()I
    move-result v3
    sub-int/2addr v1, v3
    invoke-virtual { p0, v1 }, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;
    move-result-object v1
    if-eqz v1, :L2
    if-eq v1, p1, :L2
  .line 9
    invoke-virtual { v1 }, Landroid/view/View;->isPressed()Z
    move-result v3
    if-eqz v3, :L2
  .line 10
    invoke-virtual { v1, v4 }, Landroid/view/View;->setPressed(Z)V
  :L2
  .line 11
    iput p2, p0, Landroidx/appcompat/widget/d0;->g:I
  .line 12
    invoke-virtual { p1 }, Landroid/view/View;->getLeft()I
    move-result v1
    int-to-float v1, v1
    sub-float v1, p3, v1
  .line 13
    invoke-virtual { p1 }, Landroid/view/View;->getTop()I
    move-result v3
    int-to-float v3, v3
    sub-float v3, p4, v3
  .line 14
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v5, v2, :L3
  .line 15
    invoke-virtual { p1, v1, v3 }, Landroid/view/View;->drawableHotspotChanged(FF)V
  :L3
  .line 16
    invoke-virtual { p1 }, Landroid/view/View;->isPressed()Z
    move-result v1
    if-nez v1, :L4
  .line 17
    invoke-virtual { p1, v0 }, Landroid/view/View;->setPressed(Z)V
  :L4
  .line 18
    invoke-direct { p0, p2, p1, p3, p4 }, Landroidx/appcompat/widget/d0;->h(ILandroid/view/View;FF)V
  .line 19
    invoke-direct { p0, v4 }, Landroidx/appcompat/widget/d0;->setSelectorEnabled(Z)V
  .line 20
    invoke-virtual { p0 }, Landroid/widget/ListView;->refreshDrawableState()V
    return-void
.end method

.method private j()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/d0;->l:Z
    return v0
.end method

.method private k()V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-direct { p0 }, Landroidx/appcompat/widget/d0;->j()Z
    move-result v1
    if-eqz v1, :L0
    invoke-virtual { p0 }, Landroid/widget/ListView;->isPressed()Z
    move-result v1
    if-eqz v1, :L0
  .line 3
    invoke-virtual { p0 }, Landroid/widget/ListView;->getDrawableState()[I
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/graphics/drawable/Drawable;->setState([I)Z
  :L0
    return-void
.end method

.method private setSelectorEnabled(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/d0;->i:Landroidx/appcompat/widget/d0$a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/d0$a;->c(Z)V
  :L0
    return-void
.end method

.method public d(IIIII)I
  .registers 16
  .line 1
    invoke-virtual { p0 }, Landroid/widget/ListView;->getListPaddingTop()I
    move-result p2
  .line 2
    invoke-virtual { p0 }, Landroid/widget/ListView;->getListPaddingBottom()I
    move-result p3
  .line 3
    invoke-virtual { p0 }, Landroid/widget/ListView;->getDividerHeight()I
    move-result v0
  .line 4
    invoke-virtual { p0 }, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;
    move-result-object v1
  .line 5
    invoke-virtual { p0 }, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;
    move-result-object v2
    if-nez v2, :L0
    add-int/2addr p2, p3
    return p2
  :L0
    add-int/2addr p2, p3
    const/4 p3, 0
    if-lez v0, :L1
    if-eqz v1, :L1
    goto :L2
  :L1
    const/4 v0, 0
  :L2
  .line 6
    invoke-interface { v2 }, Landroid/widget/ListAdapter;->getCount()I
    move-result v1
    const/4 v3, 0
    move-object v6, v3
    const/4 v4, 0
    const/4 v5, 0
    const/4 v7, 0
  :L3
    if-ge v4, v1, :L12
  .line 7
    invoke-interface { v2, v4 }, Landroid/widget/ListAdapter;->getItemViewType(I)I
    move-result v8
    if-eq v8, v5, :L4
    move-object v6, v3
    move v5, v8
  :L4
  .line 8
    invoke-interface { v2, v4, v6, p0 }, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    move-result-object v6
  .line 9
    invoke-virtual { v6 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v8
    if-nez v8, :L5
  .line 10
    invoke-virtual { p0 }, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v8
  .line 11
    invoke-virtual { v6, v8 }, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  :L5
  .line 12
    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I
    if-lez v8, :L6
    const/high16 v9, 16384
  .line 13
    invoke-static { v8, v9 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v8
    goto :L7
  :L6
  .line 14
    invoke-static { p3, p3 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v8
  :L7
  .line 15
    invoke-virtual { v6, p1, v8 }, Landroid/view/View;->measure(II)V
  .line 16
    invoke-virtual { v6 }, Landroid/view/View;->forceLayout()V
    if-lez v4, :L8
    add-int/2addr p2, v0
  :L8
  .line 17
    invoke-virtual { v6 }, Landroid/view/View;->getMeasuredHeight()I
    move-result v8
    add-int/2addr p2, v8
    if-lt p2, p4, :L10
    if-ltz p5, :L9
    if-le v4, p5, :L9
    if-lez v7, :L9
    if-eq p2, p4, :L9
    move p4, v7
  :L9
    return p4
  :L10
    if-ltz p5, :L11
    if-lt v4, p5, :L11
    move v7, p2
  :L11
    add-int/lit8 v4, v4, 1
    goto :L3
  :L12
    return p2
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Landroidx/appcompat/widget/d0;->c(Landroid/graphics/Canvas;)V
  .line 2
    invoke-super { p0, p1 }, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V
    return-void
.end method

.method protected drawableStateChanged()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/d0;->o:Landroidx/appcompat/widget/d0$b;
    if-eqz v0, :L0
    return-void
  :L0
  .line 2
    invoke-super { p0 }, Landroid/widget/ListView;->drawableStateChanged()V
    const/4 v0, 1
  .line 3
    invoke-direct { p0, v0 }, Landroidx/appcompat/widget/d0;->setSelectorEnabled(Z)V
  .line 4
    invoke-direct { p0 }, Landroidx/appcompat/widget/d0;->k()V
    return-void
.end method

.method public e(Landroid/view/MotionEvent;I)Z
  .registers 10
  .line 1
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 1
    if-eq v0, v2, :L3
    const/4 v3, 2
    if-eq v0, v3, :L2
    const/4 p2, 3
    if-eq v0, p2, :L1
  :L0
    const/4 p2, 0
    const/4 v3, 1
    goto :L7
  :L1
    const/4 p2, 0
    const/4 v3, 0
    goto :L7
  :L2
    const/4 v3, 1
    goto :L4
  :L3
    const/4 v3, 0
  :L4
  .line 2
    invoke-virtual { p1, p2 }, Landroid/view/MotionEvent;->findPointerIndex(I)I
    move-result p2
    if-gez p2, :L5
    goto :L1
  :L5
  .line 3
    invoke-virtual { p1, p2 }, Landroid/view/MotionEvent;->getX(I)F
    move-result v4
    float-to-int v4, v4
  .line 4
    invoke-virtual { p1, p2 }, Landroid/view/MotionEvent;->getY(I)F
    move-result p2
    float-to-int p2, p2
  .line 5
    invoke-virtual { p0, v4, p2 }, Landroid/widget/ListView;->pointToPosition(II)I
    move-result v5
    const/4 v6, -1
    if-ne v5, v6, :L6
    const/4 p2, 1
    goto :L7
  :L6
  .line 6
    invoke-virtual { p0 }, Landroid/widget/ListView;->getFirstVisiblePosition()I
    move-result v3
    sub-int v3, v5, v3
    invoke-virtual { p0, v3 }, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;
    move-result-object v3
    int-to-float v4, v4
    int-to-float p2, p2
  .line 7
    invoke-direct { p0, v3, v5, v4, p2 }, Landroidx/appcompat/widget/d0;->i(Landroid/view/View;IFF)V
    if-ne v0, v2, :L0
  .line 8
    invoke-direct { p0, v3, v5 }, Landroidx/appcompat/widget/d0;->b(Landroid/view/View;I)V
    goto :L0
  :L7
    if-eqz v3, :L8
    if-eqz p2, :L9
  :L8
  .line 9
    invoke-direct { p0 }, Landroidx/appcompat/widget/d0;->a()V
  :L9
    if-eqz v3, :L11
  .line 10
    iget-object p2, p0, Landroidx/appcompat/widget/d0;->n:Landroidx/core/widget/f;
    if-nez p2, :L10
  .line 11
    new-instance p2, Landroidx/core/widget/f;
    invoke-direct { p2, p0 }, Landroidx/core/widget/f;-><init>(Landroid/widget/ListView;)V
    iput-object p2, p0, Landroidx/appcompat/widget/d0;->n:Landroidx/core/widget/f;
  :L10
  .line 12
    iget-object p2, p0, Landroidx/appcompat/widget/d0;->n:Landroidx/core/widget/f;
    invoke-virtual { p2, v2 }, Landroidx/core/widget/a;->m(Z)Landroidx/core/widget/a;
  .line 13
    iget-object p2, p0, Landroidx/appcompat/widget/d0;->n:Landroidx/core/widget/f;
    invoke-virtual { p2, p0, p1 }, Landroidx/core/widget/a;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    goto :L12
  :L11
  .line 14
    iget-object p1, p0, Landroidx/appcompat/widget/d0;->n:Landroidx/core/widget/f;
    if-eqz p1, :L12
  .line 15
    invoke-virtual { p1, v1 }, Landroidx/core/widget/a;->m(Z)Landroidx/core/widget/a;
  :L12
    return v3
.end method

.method public hasFocus()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/d0;->k:Z
    if-nez v0, :L1
    invoke-super { p0 }, Landroid/widget/ListView;->hasFocus()Z
    move-result v0
    if-eqz v0, :L0
    goto :L1
  :L0
    const/4 v0, 0
    goto :L2
  :L1
    const/4 v0, 1
  :L2
    return v0
.end method

.method public hasWindowFocus()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/d0;->k:Z
    if-nez v0, :L1
    invoke-super { p0 }, Landroid/widget/ListView;->hasWindowFocus()Z
    move-result v0
    if-eqz v0, :L0
    goto :L1
  :L0
    const/4 v0, 0
    goto :L2
  :L1
    const/4 v0, 1
  :L2
    return v0
.end method

.method public isFocused()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/d0;->k:Z
    if-nez v0, :L1
    invoke-super { p0 }, Landroid/widget/ListView;->isFocused()Z
    move-result v0
    if-eqz v0, :L0
    goto :L1
  :L0
    const/4 v0, 0
    goto :L2
  :L1
    const/4 v0, 1
  :L2
    return v0
.end method

.method public isInTouchMode()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/d0;->k:Z
    if-eqz v0, :L0
    iget-boolean v0, p0, Landroidx/appcompat/widget/d0;->j:Z
    if-nez v0, :L1
  :L0
    invoke-super { p0 }, Landroid/widget/ListView;->isInTouchMode()Z
    move-result v0
    if-eqz v0, :L2
  :L1
    const/4 v0, 1
    goto :L3
  :L2
    const/4 v0, 0
  :L3
    return v0
.end method

.method protected onDetachedFromWindow()V
  .registers 2
    const/4 v0, 0
  .line 1
    iput-object v0, p0, Landroidx/appcompat/widget/d0;->o:Landroidx/appcompat/widget/d0$b;
  .line 2
    invoke-super { p0 }, Landroid/widget/ListView;->onDetachedFromWindow()V
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
  .registers 6
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 26
    if-ge v0, v1, :L0
  .line 2
    invoke-super { p0, p1 }, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z
    move-result p1
    return p1
  :L0
  .line 3
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v0
    const/16 v1, 10
    if-ne v0, v1, :L1
  .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/d0;->o:Landroidx/appcompat/widget/d0$b;
    if-nez v1, :L1
  .line 5
    new-instance v1, Landroidx/appcompat/widget/d0$b;
    invoke-direct { v1, p0 }, Landroidx/appcompat/widget/d0$b;-><init>(Landroidx/appcompat/widget/d0;)V
    iput-object v1, p0, Landroidx/appcompat/widget/d0;->o:Landroidx/appcompat/widget/d0$b;
  .line 6
    invoke-virtual { v1 }, Landroidx/appcompat/widget/d0$b;->b()V
  :L1
  .line 7
    invoke-super { p0, p1 }, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z
    move-result v1
    const/16 v2, 9
    const/4 v3, -1
    if-eq v0, v2, :L3
    const/4 v2, 7
    if-ne v0, v2, :L2
    goto :L3
  :L2
  .line 8
    invoke-virtual { p0, v3 }, Landroid/widget/ListView;->setSelection(I)V
    goto :L5
  :L3
  .line 9
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getX()F
    move-result v0
    float-to-int v0, v0
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getY()F
    move-result p1
    float-to-int p1, p1
    invoke-virtual { p0, v0, p1 }, Landroid/widget/ListView;->pointToPosition(II)I
    move-result p1
    if-eq p1, v3, :L5
  .line 10
    invoke-virtual { p0 }, Landroid/widget/ListView;->getSelectedItemPosition()I
    move-result v0
    if-eq p1, v0, :L5
  .line 11
    invoke-virtual { p0 }, Landroid/widget/ListView;->getFirstVisiblePosition()I
    move-result v0
    sub-int v0, p1, v0
    invoke-virtual { p0, v0 }, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;
    move-result-object v0
  .line 12
    invoke-virtual { v0 }, Landroid/view/View;->isEnabled()Z
    move-result v2
    if-eqz v2, :L4
  .line 13
    invoke-virtual { v0 }, Landroid/view/View;->getTop()I
    move-result v0
    invoke-virtual { p0 }, Landroid/widget/ListView;->getTop()I
    move-result v2
    sub-int/2addr v0, v2
    invoke-virtual { p0, p1, v0 }, Landroid/widget/ListView;->setSelectionFromTop(II)V
  :L4
  .line 14
    invoke-direct { p0 }, Landroidx/appcompat/widget/d0;->k()V
  :L5
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
  .registers 4
  .line 1
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getAction()I
    move-result v0
    if-eqz v0, :L0
    goto :L1
  :L0
  .line 2
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getX()F
    move-result v0
    float-to-int v0, v0
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getY()F
    move-result v1
    float-to-int v1, v1
    invoke-virtual { p0, v0, v1 }, Landroid/widget/ListView;->pointToPosition(II)I
    move-result v0
    iput v0, p0, Landroidx/appcompat/widget/d0;->g:I
  :L1
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/d0;->o:Landroidx/appcompat/widget/d0$b;
    if-eqz v0, :L2
  .line 4
    invoke-virtual { v0 }, Landroidx/appcompat/widget/d0$b;->a()V
  :L2
  .line 5
    invoke-super { p0, p1 }, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    move-result p1
    return p1
.end method

.method setListSelectionHidden(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/d0;->j:Z
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
  .registers 3
    if-eqz p1, :L0
  .line 1
    new-instance v0, Landroidx/appcompat/widget/d0$a;
    invoke-direct { v0, p1 }, Landroidx/appcompat/widget/d0$a;-><init>(Landroid/graphics/drawable/Drawable;)V
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    iput-object v0, p0, Landroidx/appcompat/widget/d0;->i:Landroidx/appcompat/widget/d0$a;
  .line 2
    invoke-super { p0, v0 }, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V
  .line 3
    new-instance v0, Landroid/graphics/Rect;
    invoke-direct { v0 }, Landroid/graphics/Rect;-><init>()V
    if-eqz p1, :L2
  .line 4
    invoke-virtual { p1, v0 }, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
  :L2
  .line 5
    iget p1, v0, Landroid/graphics/Rect;->left:I
    iput p1, p0, Landroidx/appcompat/widget/d0;->c:I
  .line 6
    iget p1, v0, Landroid/graphics/Rect;->top:I
    iput p1, p0, Landroidx/appcompat/widget/d0;->d:I
  .line 7
    iget p1, v0, Landroid/graphics/Rect;->right:I
    iput p1, p0, Landroidx/appcompat/widget/d0;->e:I
  .line 8
    iget p1, v0, Landroid/graphics/Rect;->bottom:I
    iput p1, p0, Landroidx/appcompat/widget/d0;->f:I
    return-void
.end method
