.class Landroidx/appcompat/app/g$t;
.super Landroidx/appcompat/widget/ContentFrameLayout;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/app/g;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "t"
.end annotation

.field final synthetic j:Landroidx/appcompat/app/g;

.method public constructor <init>(Landroidx/appcompat/app/g;Landroid/content/Context;)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/appcompat/app/g$t;->j:Landroidx/appcompat/app/g;
  .line 2
    invoke-direct { p0, p2 }, Landroidx/appcompat/widget/ContentFrameLayout;-><init>(Landroid/content/Context;)V
    return-void
.end method

.method private c(II)Z
  .registers 4
    const/4 v0, -5
    if-lt p1, v0, :L1
    if-lt p2, v0, :L1
  .line 1
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getWidth()I
    move-result v0
    add-int/lit8 v0, v0, 5
    if-gt p1, v0, :L1
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getHeight()I
    move-result p1
    add-int/lit8 p1, p1, 5
    if-le p2, p1, :L0
    goto :L1
  :L0
    const/4 p1, 0
    goto :L2
  :L1
    const/4 p1, 1
  :L2
    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g$t;->j:Landroidx/appcompat/app/g;
    invoke-virtual { v0, p1 }, Landroidx/appcompat/app/g;->Z(Landroid/view/KeyEvent;)Z
    move-result v0
    if-nez v0, :L1
  .line 2
    invoke-super { p0, p1 }, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
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

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
  .registers 4
  .line 1
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getAction()I
    move-result v0
    if-nez v0, :L0
  .line 2
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getX()F
    move-result v0
    float-to-int v0, v0
  .line 3
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getY()F
    move-result v1
    float-to-int v1, v1
  .line 4
    invoke-direct { p0, v0, v1 }, Landroidx/appcompat/app/g$t;->c(II)Z
    move-result v0
    if-eqz v0, :L0
  .line 5
    iget-object p1, p0, Landroidx/appcompat/app/g$t;->j:Landroidx/appcompat/app/g;
    const/4 v0, 0
    invoke-virtual { p1, v0 }, Landroidx/appcompat/app/g;->T(I)V
    const/4 p1, 1
    return p1
  :L0
  .line 6
    invoke-super { p0, p1 }, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    move-result p1
    return p1
.end method

.method public setBackgroundResource(I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0, p1 }, Lc/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    return-void
.end method
