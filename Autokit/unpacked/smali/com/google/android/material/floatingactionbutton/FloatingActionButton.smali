.class public Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.super Lcom/google/android/material/internal/m;
.implements Landroidx/core/view/u;
.implements Landroidx/core/widget/m;
.implements Ld/c/a/a/u/a;
.implements Ld/c/a/a/a0/n;
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/google/android/material/floatingactionbutton/FloatingActionButton$c;,
    Lcom/google/android/material/floatingactionbutton/FloatingActionButton$d;,
    Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;,
    Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;,
    Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;
  }
.end annotation

.field private c:Landroid/content/res/ColorStateList;

.field private d:Landroid/graphics/PorterDuff$Mode;

.field private e:Landroid/content/res/ColorStateList;

.field private f:Landroid/graphics/PorterDuff$Mode;

.field private g:Landroid/content/res/ColorStateList;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field l:Z

.field final m:Landroid/graphics/Rect;

.field private final n:Landroid/graphics/Rect;

.field private final o:Landroidx/appcompat/widget/m;

.field private final p:Ld/c/a/a/u/b;

.field private q:Lcom/google/android/material/floatingactionbutton/b;

.method static constructor <clinit>()V
  .registers 2
    return-void
.end method

.method static synthetic c(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)I
  .registers 1
  .line 1
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->j:I
    return p0
.end method

.method static synthetic d(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method

.method private getImpl()Lcom/google/android/material/floatingactionbutton/b;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->q:Lcom/google/android/material/floatingactionbutton/b;
    if-nez v0, :L0
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->h()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object v0
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->q:Lcom/google/android/material/floatingactionbutton/b;
  :L0
  .line 3
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->q:Lcom/google/android/material/floatingactionbutton/b;
    return-object v0
.end method

.method private h()Lcom/google/android/material/floatingactionbutton/b;
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    new-instance v0, Lcom/google/android/material/floatingactionbutton/c;
    new-instance v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$c;
    invoke-direct { v1, p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$c;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    invoke-direct { v0, p0, v1 }, Lcom/google/android/material/floatingactionbutton/c;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Ld/c/a/a/z/b;)V
    return-object v0
  :L0
  .line 3
    new-instance v0, Lcom/google/android/material/floatingactionbutton/b;
    new-instance v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$c;
    invoke-direct { v1, p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$c;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    invoke-direct { v0, p0, v1 }, Lcom/google/android/material/floatingactionbutton/b;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Ld/c/a/a/z/b;)V
    return-object v0
.end method

.method private k(I)I
  .registers 5
  .line 1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i:I
    if-eqz v0, :L0
    return v0
  :L0
  .line 2
    invoke-virtual { p0 }, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const/4 v1, -1
    const/4 v2, 1
    if-eq p1, v1, :L2
    if-eq p1, v2, :L1
  .line 3
    sget p1, Ld/c/a/a/d;->design_fab_size_normal:I
    invoke-virtual { v0, p1 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result p1
    return p1
  :L1
  .line 4
    sget p1, Ld/c/a/a/d;->design_fab_size_mini:I
    invoke-virtual { v0, p1 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result p1
    return p1
  :L2
  .line 5
    invoke-virtual { v0 }, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
    move-result-object p1
    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I
  .line 6
    invoke-virtual { v0 }, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
    move-result-object v0
    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I
  .line 7
    invoke-static { p1, v0 }, Ljava/lang/Math;->max(II)I
    move-result p1
    const/16 v0, 470
    if-ge p1, v0, :L3
  .line 8
    invoke-direct { p0, v2 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->k(I)I
    move-result p1
    goto :L4
  :L3
    const/4 p1, 0
  .line 9
    invoke-direct { p0, p1 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->k(I)I
    move-result p1
  :L4
    return p1
.end method

.method private p(Landroid/graphics/Rect;)V
  .registers 5
  .line 1
    iget v0, p1, Landroid/graphics/Rect;->left:I
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->m:Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I
    add-int/2addr v0, v2
    iput v0, p1, Landroid/graphics/Rect;->left:I
  .line 2
    iget v0, p1, Landroid/graphics/Rect;->top:I
    iget v2, v1, Landroid/graphics/Rect;->top:I
    add-int/2addr v0, v2
    iput v0, p1, Landroid/graphics/Rect;->top:I
  .line 3
    iget v0, p1, Landroid/graphics/Rect;->right:I
    iget v2, v1, Landroid/graphics/Rect;->right:I
    sub-int/2addr v0, v2
    iput v0, p1, Landroid/graphics/Rect;->right:I
  .line 4
    iget v0, p1, Landroid/graphics/Rect;->bottom:I
    iget v1, v1, Landroid/graphics/Rect;->bottom:I
    sub-int/2addr v0, v1
    iput v0, p1, Landroid/graphics/Rect;->bottom:I
    return-void
.end method

.method private q()V
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:Landroid/content/res/ColorStateList;
    if-nez v1, :L1
  .line 3
    invoke-static { v0 }, Landroidx/core/graphics/drawable/a;->c(Landroid/graphics/drawable/Drawable;)V
    return-void
  :L1
  .line 4
    invoke-virtual { p0 }, Landroid/widget/ImageButton;->getDrawableState()[I
    move-result-object v2
    const/4 v3, 0
    invoke-virtual { v1, v2, v3 }, Landroid/content/res/ColorStateList;->getColorForState([II)I
    move-result v1
  .line 5
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/graphics/PorterDuff$Mode;
    if-nez v2, :L2
  .line 6
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
  :L2
  .line 7
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
    move-result-object v0
  .line 8
    invoke-static { v1, v2 }, Landroidx/appcompat/widget/i;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
    return-void
.end method

.method private static r(II)I
  .registers 4
  .line 1
    invoke-static { p1 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result v0
  .line 2
    invoke-static { p1 }, Landroid/view/View$MeasureSpec;->getSize(I)I
    move-result p1
    const/high16 v1, -32768
    if-eq v0, v1, :L1
    if-eqz v0, :L2
    const/high16 p0, 16384
    if-ne v0, p0, :L0
    move p0, p1
    goto :L2
  :L0
  .line 3
    new-instance p0, Ljava/lang/IllegalArgumentException;
    invoke-direct { p0 }, Ljava/lang/IllegalArgumentException;-><init>()V
    throw p0
  :L1
  .line 4
    invoke-static { p0, p1 }, Ljava/lang/Math;->min(II)I
    move-result p0
  :L2
    return p0
.end method

.method private u(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;)Lcom/google/android/material/floatingactionbutton/b$j;
  .registers 3
    if-nez p1, :L0
    const/4 p1, 0
    return-object p1
  :L0
  .line 1
    new-instance v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;
    invoke-direct { v0, p0, p1 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;)V
    return-object v0
.end method

.method public a()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->p:Ld/c/a/a/u/b;
    invoke-virtual { v0 }, Ld/c/a/a/u/b;->b()Z
    const/4 v0, 0
    throw v0
.end method

.method protected drawableStateChanged()V
  .registers 3
  .line 1
    invoke-super { p0 }, Landroid/widget/ImageButton;->drawableStateChanged()V
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object v0
    invoke-virtual { p0 }, Landroid/widget/ImageButton;->getDrawableState()[I
    move-result-object v1
    invoke-virtual { v0, v1 }, Lcom/google/android/material/floatingactionbutton/b;->C([I)V
    return-void
.end method

.method public e(Landroid/animation/Animator$AnimatorListener;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object v0
    invoke-virtual { v0, p1 }, Lcom/google/android/material/floatingactionbutton/b;->d(Landroid/animation/Animator$AnimatorListener;)V
    return-void
.end method

.method public f(Landroid/animation/Animator$AnimatorListener;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object v0
    invoke-virtual { v0, p1 }, Lcom/google/android/material/floatingactionbutton/b;->e(Landroid/animation/Animator$AnimatorListener;)V
    return-void
.end method

.method public g(Ld/c/a/a/l/k;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ld/c/a/a/l/k<",
      "+",
      "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
      ">;)V"
    }
  .end annotation
  .registers 4
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object v0
    new-instance v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$d;
    invoke-direct { v1, p0, p1 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$d;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Ld/c/a/a/l/k;)V
    invoke-virtual { v0, v1 }, Lcom/google/android/material/floatingactionbutton/b;->f(Lcom/google/android/material/floatingactionbutton/b$i;)V
    return-void
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/content/res/ColorStateList;
    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d:Landroid/graphics/PorterDuff$Mode;
    return-object v0
.end method

.method public getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Landroidx/coordinatorlayout/widget/CoordinatorLayout$c<",
      "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
      ">;"
    }
  .end annotation
  .registers 2
  .line 1
    new-instance v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;
    invoke-direct { v0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;-><init>()V
    return-object v0
.end method

.method public getCompatElevation()F
  .registers 2
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/google/android/material/floatingactionbutton/b;->m()F
    move-result v0
    return v0
.end method

.method public getCompatHoveredFocusedTranslationZ()F
  .registers 2
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/google/android/material/floatingactionbutton/b;->p()F
    move-result v0
    return v0
.end method

.method public getCompatPressedTranslationZ()F
  .registers 2
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/google/android/material/floatingactionbutton/b;->s()F
    move-result v0
    return v0
.end method

.method public getContentBackground()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/google/android/material/floatingactionbutton/b;->j()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    return-object v0
.end method

.method public getCustomSize()I
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i:I
    return v0
.end method

.method public getExpandedComponentIdHint()I
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->p:Ld/c/a/a/u/b;
    invoke-virtual { v0 }, Ld/c/a/a/u/b;->a()I
    const/4 v0, 0
    throw v0
.end method

.method public getHideMotionSpec()Ld/c/a/a/l/h;
  .registers 2
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/google/android/material/floatingactionbutton/b;->o()Ld/c/a/a/l/h;
    move-result-object v0
    return-object v0
.end method

.method public getRippleColor()I
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:Landroid/content/res/ColorStateList;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroid/content/res/ColorStateList;->getDefaultColor()I
    move-result v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public getRippleColorStateList()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:Landroid/content/res/ColorStateList;
    return-object v0
.end method

.method public getShapeAppearanceModel()Ld/c/a/a/a0/k;
  .registers 2
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/google/android/material/floatingactionbutton/b;->t()Ld/c/a/a/a0/k;
    move-result-object v0
    invoke-static { v0 }, Lc/g/j/h;->e(Ljava/lang/Object;)Ljava/lang/Object;
    check-cast v0, Ld/c/a/a/a0/k;
    return-object v0
.end method

.method public getShowMotionSpec()Ld/c/a/a/l/h;
  .registers 2
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/google/android/material/floatingactionbutton/b;->u()Ld/c/a/a/l/h;
    move-result-object v0
    return-object v0
.end method

.method public getSize()I
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->h:I
    return v0
.end method

.method getSizeDimension()I
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->h:I
    invoke-direct { p0, v0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->k(I)I
    move-result v0
    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getBackgroundTintList()Landroid/content/res/ColorStateList;
    move-result-object v0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    move-result-object v0
    return-object v0
.end method

.method public getSupportImageTintList()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:Landroid/content/res/ColorStateList;
    return-object v0
.end method

.method public getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/graphics/PorterDuff$Mode;
    return-object v0
.end method

.method public getUseCompatPadding()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->l:Z
    return v0
.end method

.method public i(Landroid/graphics/Rect;)Z
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 5
  .line 1
    invoke-static { p0 }, Landroidx/core/view/v;->T(Landroid/view/View;)Z
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/widget/ImageButton;->getWidth()I
    move-result v0
    invoke-virtual { p0 }, Landroid/widget/ImageButton;->getHeight()I
    move-result v2
    invoke-virtual { p1, v1, v1, v0, v2 }, Landroid/graphics/Rect;->set(IIII)V
  .line 3
    invoke-direct { p0, p1 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->p(Landroid/graphics/Rect;)V
    const/4 p1, 1
    return p1
  :L0
    return v1
.end method

.method public j(Landroid/graphics/Rect;)V
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroid/widget/ImageButton;->getMeasuredWidth()I
    move-result v0
    invoke-virtual { p0 }, Landroid/widget/ImageButton;->getMeasuredHeight()I
    move-result v1
    const/4 v2, 0
    invoke-virtual { p1, v2, v2, v0, v1 }, Landroid/graphics/Rect;->set(IIII)V
  .line 2
    invoke-direct { p0, p1 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->p(Landroid/graphics/Rect;)V
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/widget/ImageButton;->jumpDrawablesToCurrentState()V
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/google/android/material/floatingactionbutton/b;->y()V
    return-void
.end method

.method public l(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;)V
  .registers 3
    const/4 v0, 1
  .line 1
    invoke-virtual { p0, p1, v0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->m(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;Z)V
    return-void
.end method

.method m(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;Z)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object v0
    invoke-direct { p0, p1 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->u(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;)Lcom/google/android/material/floatingactionbutton/b$j;
    move-result-object p1
    invoke-virtual { v0, p1, p2 }, Lcom/google/android/material/floatingactionbutton/b;->v(Lcom/google/android/material/floatingactionbutton/b$j;Z)V
    return-void
.end method

.method public n()Z
  .registers 2
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/google/android/material/floatingactionbutton/b;->w()Z
    move-result v0
    return v0
.end method

.method public o()Z
  .registers 2
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/google/android/material/floatingactionbutton/b;->x()Z
    move-result v0
    return v0
.end method

.method protected onAttachedToWindow()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/widget/ImageButton;->onAttachedToWindow()V
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/google/android/material/floatingactionbutton/b;->z()V
    return-void
.end method

.method protected onDetachedFromWindow()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/widget/ImageButton;->onDetachedFromWindow()V
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/google/android/material/floatingactionbutton/b;->B()V
    return-void
.end method

.method protected onMeasure(II)V
  .registers 5
  .line 1
    invoke-virtual { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I
    move-result v0
  .line 2
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->k:I
    sub-int v1, v0, v1
    div-int/lit8 v1, v1, 2
    iput v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->j:I
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object v1
    invoke-virtual { v1 }, Lcom/google/android/material/floatingactionbutton/b;->b0()V
  .line 4
    invoke-static { v0, p1 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->r(II)I
    move-result p1
  .line 5
    invoke-static { v0, p2 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->r(II)I
    move-result p2
  .line 6
    invoke-static { p1, p2 }, Ljava/lang/Math;->min(II)I
    move-result p1
  .line 7
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->m:Landroid/graphics/Rect;
    iget v0, p2, Landroid/graphics/Rect;->left:I
    add-int/2addr v0, p1
    iget v1, p2, Landroid/graphics/Rect;->right:I
    add-int/2addr v0, v1
    iget v1, p2, Landroid/graphics/Rect;->top:I
    add-int/2addr p1, v1
    iget p2, p2, Landroid/graphics/Rect;->bottom:I
    add-int/2addr p1, p2
    invoke-virtual { p0, v0, p1 }, Landroid/widget/ImageButton;->setMeasuredDimension(II)V
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
  .registers 4
  .line 1
    instance-of v0, p1, Ld/c/a/a/b0/a;
    if-nez v0, :L0
  .line 2
    invoke-super { p0, p1 }, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    return-void
  :L0
  .line 3
    check-cast p1, Ld/c/a/a/b0/a;
  .line 4
    invoke-virtual { p1 }, Lc/i/a/a;->j()Landroid/os/Parcelable;
    move-result-object v0
    invoke-super { p0, v0 }, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V
  .line 5
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->p:Ld/c/a/a/u/b;
    iget-object p1, p1, Ld/c/a/a/b0/a;->d:Lc/d/g;
    const-string v1, "expandableWidgetHelper"
  .line 6
    invoke-virtual { p1, v1 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    invoke-static { p1 }, Lc/g/j/h;->e(Ljava/lang/Object;)Ljava/lang/Object;
    check-cast p1, Landroid/os/Bundle;
  .line 7
    invoke-virtual { v0, p1 }, Ld/c/a/a/u/b;->c(Landroid/os/Bundle;)V
    const/4 p1, 0
    throw p1
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
  .registers 3
  .line 1
    invoke-super { p0 }, Landroid/widget/ImageButton;->onSaveInstanceState()Landroid/os/Parcelable;
    move-result-object v0
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroid/os/Bundle;
    invoke-direct { v0 }, Landroid/os/Bundle;-><init>()V
  :L0
  .line 3
    new-instance v1, Ld/c/a/a/b0/a;
    invoke-direct { v1, v0 }, Ld/c/a/a/b0/a;-><init>(Landroid/os/Parcelable;)V
  .line 4
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->p:Ld/c/a/a/u/b;
  .line 5
    invoke-virtual { v0 }, Ld/c/a/a/u/b;->d()Landroid/os/Bundle;
    const/4 v0, 0
    throw v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
  .registers 5
  .line 1
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getAction()I
    move-result v0
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->n:Landroid/graphics/Rect;
    invoke-virtual { p0, v0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i(Landroid/graphics/Rect;)Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->n:Landroid/graphics/Rect;
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getX()F
    move-result v1
    float-to-int v1, v1
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getY()F
    move-result v2
    float-to-int v2, v2
    invoke-virtual { v0, v1, v2 }, Landroid/graphics/Rect;->contains(II)Z
    move-result v0
    if-nez v0, :L0
    const/4 p1, 0
    return p1
  :L0
  .line 3
    invoke-super { p0, p1 }, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z
    move-result p1
    return p1
.end method

.method public s(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;)V
  .registers 3
    const/4 v0, 1
  .line 1
    invoke-virtual { p0, p1, v0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->t(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;Z)V
    return-void
.end method

.method public setBackgroundColor(I)V
  .registers 2
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
  .registers 2
    return-void
.end method

.method public setBackgroundResource(I)V
  .registers 2
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/content/res/ColorStateList;
    if-eq v0, p1, :L0
  .line 2
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/content/res/ColorStateList;
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object v0
    invoke-virtual { v0, p1 }, Lcom/google/android/material/floatingactionbutton/b;->J(Landroid/content/res/ColorStateList;)V
  :L0
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d:Landroid/graphics/PorterDuff$Mode;
    if-eq v0, p1, :L0
  .line 2
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d:Landroid/graphics/PorterDuff$Mode;
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object v0
    invoke-virtual { v0, p1 }, Lcom/google/android/material/floatingactionbutton/b;->K(Landroid/graphics/PorterDuff$Mode;)V
  :L0
    return-void
.end method

.method public setCompatElevation(F)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object v0
    invoke-virtual { v0, p1 }, Lcom/google/android/material/floatingactionbutton/b;->L(F)V
    return-void
.end method

.method public setCompatElevationResource(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/res/Resources;->getDimension(I)F
    move-result p1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setCompatElevation(F)V
    return-void
.end method

.method public setCompatHoveredFocusedTranslationZ(F)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object v0
    invoke-virtual { v0, p1 }, Lcom/google/android/material/floatingactionbutton/b;->O(F)V
    return-void
.end method

.method public setCompatHoveredFocusedTranslationZResource(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/res/Resources;->getDimension(I)F
    move-result p1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setCompatHoveredFocusedTranslationZ(F)V
    return-void
.end method

.method public setCompatPressedTranslationZ(F)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object v0
    invoke-virtual { v0, p1 }, Lcom/google/android/material/floatingactionbutton/b;->Q(F)V
    return-void
.end method

.method public setCompatPressedTranslationZResource(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/res/Resources;->getDimension(I)F
    move-result p1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setCompatPressedTranslationZ(F)V
    return-void
.end method

.method public setCustomSize(I)V
  .registers 3
    if-ltz p1, :L1
  .line 1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i:I
    if-eq p1, v0, :L0
  .line 2
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i:I
  .line 3
    invoke-virtual { p0 }, Landroid/widget/ImageButton;->requestLayout()V
  :L0
    return-void
  :L1
  .line 4
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "Custom size must be non-negative"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public setElevation(F)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/ImageButton;->setElevation(F)V
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object v0
    invoke-virtual { v0, p1 }, Lcom/google/android/material/floatingactionbutton/b;->c0(F)V
    return-void
.end method

.method public setEnsureMinTouchTargetSize(Z)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/google/android/material/floatingactionbutton/b;->n()Z
    move-result v0
    if-eq p1, v0, :L0
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object v0
    invoke-virtual { v0, p1 }, Lcom/google/android/material/floatingactionbutton/b;->M(Z)V
  .line 3
    invoke-virtual { p0 }, Landroid/widget/ImageButton;->requestLayout()V
  :L0
    return-void
.end method

.method public setExpandedComponentIdHint(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->p:Ld/c/a/a/u/b;
    invoke-virtual { v0, p1 }, Ld/c/a/a/u/b;->e(I)V
    const/4 p1, 0
    throw p1
.end method

.method public setHideMotionSpec(Ld/c/a/a/l/h;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object v0
    invoke-virtual { v0, p1 }, Lcom/google/android/material/floatingactionbutton/b;->N(Ld/c/a/a/l/h;)V
    return-void
.end method

.method public setHideMotionSpecResource(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0, p1 }, Ld/c/a/a/l/h;->c(Landroid/content/Context;I)Ld/c/a/a/l/h;
    move-result-object p1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setHideMotionSpec(Ld/c/a/a/l/h;)V
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-eq v0, p1, :L0
  .line 2
    invoke-super { p0, p1 }, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object p1
    invoke-virtual { p1 }, Lcom/google/android/material/floatingactionbutton/b;->a0()V
  .line 4
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:Landroid/content/res/ColorStateList;
    if-eqz p1, :L0
  .line 5
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->q()V
  :L0
    return-void
.end method

.method public setImageResource(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->o:Landroidx/appcompat/widget/m;
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/m;->g(I)V
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->q()V
    return-void
.end method

.method public setRippleColor(I)V
  .registers 2
  .line 1
    invoke-static { p1 }, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;
    move-result-object p1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setRippleColor(Landroid/content/res/ColorStateList;)V
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:Landroid/content/res/ColorStateList;
    if-eq v0, p1, :L0
  .line 3
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:Landroid/content/res/ColorStateList;
  .line 4
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object p1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:Landroid/content/res/ColorStateList;
    invoke-virtual { p1, v0 }, Lcom/google/android/material/floatingactionbutton/b;->R(Landroid/content/res/ColorStateList;)V
  :L0
    return-void
.end method

.method public setScaleX(F)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/ImageButton;->setScaleX(F)V
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object p1
    invoke-virtual { p1 }, Lcom/google/android/material/floatingactionbutton/b;->G()V
    return-void
.end method

.method public setScaleY(F)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/ImageButton;->setScaleY(F)V
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object p1
    invoke-virtual { p1 }, Lcom/google/android/material/floatingactionbutton/b;->G()V
    return-void
.end method

.method public setShadowPaddingEnabled(Z)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object v0
    invoke-virtual { v0, p1 }, Lcom/google/android/material/floatingactionbutton/b;->S(Z)V
    return-void
.end method

.method public setShapeAppearanceModel(Ld/c/a/a/a0/k;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object v0
    invoke-virtual { v0, p1 }, Lcom/google/android/material/floatingactionbutton/b;->T(Ld/c/a/a/a0/k;)V
    return-void
.end method

.method public setShowMotionSpec(Ld/c/a/a/l/h;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object v0
    invoke-virtual { v0, p1 }, Lcom/google/android/material/floatingactionbutton/b;->U(Ld/c/a/a/l/h;)V
    return-void
.end method

.method public setShowMotionSpecResource(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0, p1 }, Ld/c/a/a/l/h;->c(Landroid/content/Context;I)Ld/c/a/a/l/h;
    move-result-object p1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setShowMotionSpec(Ld/c/a/a/l/h;)V
    return-void
.end method

.method public setSize(I)V
  .registers 3
    const/4 v0, 0
  .line 1
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i:I
  .line 2
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->h:I
    if-eq p1, v0, :L0
  .line 3
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->h:I
  .line 4
    invoke-virtual { p0 }, Landroid/widget/ImageButton;->requestLayout()V
  :L0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    return-void
.end method

.method public setSupportImageTintList(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:Landroid/content/res/ColorStateList;
    if-eq v0, p1, :L0
  .line 2
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:Landroid/content/res/ColorStateList;
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->q()V
  :L0
    return-void
.end method

.method public setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/graphics/PorterDuff$Mode;
    if-eq v0, p1, :L0
  .line 2
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/graphics/PorterDuff$Mode;
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->q()V
  :L0
    return-void
.end method

.method public setTranslationX(F)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/ImageButton;->setTranslationX(F)V
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object p1
    invoke-virtual { p1 }, Lcom/google/android/material/floatingactionbutton/b;->H()V
    return-void
.end method

.method public setTranslationY(F)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/ImageButton;->setTranslationY(F)V
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object p1
    invoke-virtual { p1 }, Lcom/google/android/material/floatingactionbutton/b;->H()V
    return-void
.end method

.method public setTranslationZ(F)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/ImageButton;->setTranslationZ(F)V
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object p1
    invoke-virtual { p1 }, Lcom/google/android/material/floatingactionbutton/b;->H()V
    return-void
.end method

.method public setUseCompatPadding(Z)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->l:Z
    if-eq v0, p1, :L0
  .line 2
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->l:Z
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object p1
    invoke-virtual { p1 }, Lcom/google/android/material/floatingactionbutton/b;->A()V
  :L0
    return-void
.end method

.method public setVisibility(I)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Lcom/google/android/material/internal/m;->setVisibility(I)V
    return-void
.end method

.method t(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;Z)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/b;
    move-result-object v0
    invoke-direct { p0, p1 }, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->u(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;)Lcom/google/android/material/floatingactionbutton/b$j;
    move-result-object p1
    invoke-virtual { v0, p1, p2 }, Lcom/google/android/material/floatingactionbutton/b;->Y(Lcom/google/android/material/floatingactionbutton/b$j;Z)V
    return-void
.end method
