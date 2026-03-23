.class public abstract Landroidx/appcompat/widget/f0;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/appcompat/widget/f0$b;,
    Landroidx/appcompat/widget/f0$a;
  }
.end annotation

.field private final b:F

.field private final c:I

.field private final d:I

.field final e:Landroid/view/View;

.field private f:Ljava/lang/Runnable;

.field private g:Ljava/lang/Runnable;

.field private h:Z

.field private i:I

.field private final j:[I

.method public constructor <init>(Landroid/view/View;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 2
    new-array v1, v0, [I
  .line 2
    iput-object v1, p0, Landroidx/appcompat/widget/f0;->j:[I
  .line 3
    iput-object p1, p0, Landroidx/appcompat/widget/f0;->e:Landroid/view/View;
    const/4 v1, 1
  .line 4
    invoke-virtual { p1, v1 }, Landroid/view/View;->setLongClickable(Z)V
  .line 5
    invoke-virtual { p1, p0 }, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
  .line 6
    invoke-virtual { p1 }, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object p1
    invoke-static { p1 }, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I
    move-result p1
    int-to-float p1, p1
    iput p1, p0, Landroidx/appcompat/widget/f0;->b:F
  .line 7
    invoke-static { }, Landroid/view/ViewConfiguration;->getTapTimeout()I
    move-result p1
    iput p1, p0, Landroidx/appcompat/widget/f0;->c:I
  .line 8
    invoke-static { }, Landroid/view/ViewConfiguration;->getLongPressTimeout()I
    move-result v1
    add-int/2addr p1, v1
    div-int/2addr p1, v0
    iput p1, p0, Landroidx/appcompat/widget/f0;->d:I
    return-void
.end method

.method private a()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/f0;->g:Ljava/lang/Runnable;
    if-eqz v0, :L0
  .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/f0;->e:Landroid/view/View;
    invoke-virtual { v1, v0 }, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/f0;->f:Ljava/lang/Runnable;
    if-eqz v0, :L1
  .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/f0;->e:Landroid/view/View;
    invoke-virtual { v1, v0 }, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z
  :L1
    return-void
.end method

.method private f(Landroid/view/MotionEvent;)Z
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/f0;->e:Landroid/view/View;
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/widget/f0;->b()Landroidx/appcompat/view/menu/p;
    move-result-object v1
    const/4 v2, 0
    if-eqz v1, :L4
  .line 3
    invoke-interface { v1 }, Landroidx/appcompat/view/menu/p;->b()Z
    move-result v3
    if-nez v3, :L0
    goto :L4
  :L0
  .line 4
    invoke-interface { v1 }, Landroidx/appcompat/view/menu/p;->l()Landroid/widget/ListView;
    move-result-object v1
    check-cast v1, Landroidx/appcompat/widget/d0;
    if-eqz v1, :L4
  .line 5
    invoke-virtual { v1 }, Landroid/widget/ListView;->isShown()Z
    move-result v3
    if-nez v3, :L1
    goto :L4
  :L1
  .line 6
    invoke-static { p1 }, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    move-result-object v3
  .line 7
    invoke-direct { p0, v0, v3 }, Landroidx/appcompat/widget/f0;->i(Landroid/view/View;Landroid/view/MotionEvent;)Z
  .line 8
    invoke-direct { p0, v1, v3 }, Landroidx/appcompat/widget/f0;->j(Landroid/view/View;Landroid/view/MotionEvent;)Z
  .line 9
    iget v0, p0, Landroidx/appcompat/widget/f0;->i:I
    invoke-virtual { v1, v3, v0 }, Landroidx/appcompat/widget/d0;->e(Landroid/view/MotionEvent;I)Z
    move-result v0
  .line 10
    invoke-virtual { v3 }, Landroid/view/MotionEvent;->recycle()V
  .line 11
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getActionMasked()I
    move-result p1
    const/4 v1, 1
    if-eq p1, v1, :L2
    const/4 v3, 3
    if-eq p1, v3, :L2
    const/4 p1, 1
    goto :L3
  :L2
    const/4 p1, 0
  :L3
    if-eqz v0, :L4
    if-eqz p1, :L4
    const/4 v2, 1
  :L4
    return v2
.end method

.method private g(Landroid/view/MotionEvent;)Z
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/f0;->e:Landroid/view/View;
  .line 2
    invoke-virtual { v0 }, Landroid/view/View;->isEnabled()Z
    move-result v1
    const/4 v2, 0
    if-nez v1, :L0
    return v2
  :L0
  .line 3
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v1
    if-eqz v1, :L3
    const/4 v3, 1
    if-eq v1, v3, :L2
    const/4 v4, 2
    if-eq v1, v4, :L1
    const/4 p1, 3
    if-eq v1, p1, :L2
    goto :L6
  :L1
  .line 4
    iget v1, p0, Landroidx/appcompat/widget/f0;->i:I
    invoke-virtual { p1, v1 }, Landroid/view/MotionEvent;->findPointerIndex(I)I
    move-result v1
    if-ltz v1, :L6
  .line 5
    invoke-virtual { p1, v1 }, Landroid/view/MotionEvent;->getX(I)F
    move-result v4
  .line 6
    invoke-virtual { p1, v1 }, Landroid/view/MotionEvent;->getY(I)F
    move-result p1
  .line 7
    iget v1, p0, Landroidx/appcompat/widget/f0;->b:F
    invoke-static { v0, v4, p1, v1 }, Landroidx/appcompat/widget/f0;->h(Landroid/view/View;FFF)Z
    move-result p1
    if-nez p1, :L6
  .line 8
    invoke-direct { p0 }, Landroidx/appcompat/widget/f0;->a()V
  .line 9
    invoke-virtual { v0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object p1
    invoke-interface { p1, v3 }, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V
    return v3
  :L2
  .line 10
    invoke-direct { p0 }, Landroidx/appcompat/widget/f0;->a()V
    goto :L6
  :L3
  .line 11
    invoke-virtual { p1, v2 }, Landroid/view/MotionEvent;->getPointerId(I)I
    move-result p1
    iput p1, p0, Landroidx/appcompat/widget/f0;->i:I
  .line 12
    iget-object p1, p0, Landroidx/appcompat/widget/f0;->f:Ljava/lang/Runnable;
    if-nez p1, :L4
  .line 13
    new-instance p1, Landroidx/appcompat/widget/f0$a;
    invoke-direct { p1, p0 }, Landroidx/appcompat/widget/f0$a;-><init>(Landroidx/appcompat/widget/f0;)V
    iput-object p1, p0, Landroidx/appcompat/widget/f0;->f:Ljava/lang/Runnable;
  :L4
  .line 14
    iget-object p1, p0, Landroidx/appcompat/widget/f0;->f:Ljava/lang/Runnable;
    iget v1, p0, Landroidx/appcompat/widget/f0;->c:I
    int-to-long v3, v1
    invoke-virtual { v0, p1, v3, v4 }, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
  .line 15
    iget-object p1, p0, Landroidx/appcompat/widget/f0;->g:Ljava/lang/Runnable;
    if-nez p1, :L5
  .line 16
    new-instance p1, Landroidx/appcompat/widget/f0$b;
    invoke-direct { p1, p0 }, Landroidx/appcompat/widget/f0$b;-><init>(Landroidx/appcompat/widget/f0;)V
    iput-object p1, p0, Landroidx/appcompat/widget/f0;->g:Ljava/lang/Runnable;
  :L5
  .line 17
    iget-object p1, p0, Landroidx/appcompat/widget/f0;->g:Ljava/lang/Runnable;
    iget v1, p0, Landroidx/appcompat/widget/f0;->d:I
    int-to-long v3, v1
    invoke-virtual { v0, p1, v3, v4 }, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
  :L6
    return v2
.end method

.method private static h(Landroid/view/View;FFF)Z
  .registers 6
    neg-float v0, p3
    cmpl-float v1, p1, v0
    if-ltz v1, :L0
    cmpl-float v0, p2, v0
    if-ltz v0, :L0
  .line 1
    invoke-virtual { p0 }, Landroid/view/View;->getRight()I
    move-result v0
    invoke-virtual { p0 }, Landroid/view/View;->getLeft()I
    move-result v1
    sub-int/2addr v0, v1
    int-to-float v0, v0
    add-float/2addr v0, p3
    cmpg-float p1, p1, v0
    if-gez p1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->getBottom()I
    move-result p1
    invoke-virtual { p0 }, Landroid/view/View;->getTop()I
    move-result p0
    sub-int/2addr p1, p0
    int-to-float p0, p1
    add-float/2addr p0, p3
    cmpg-float p0, p2, p0
    if-gez p0, :L0
    const/4 p0, 1
    goto :L1
  :L0
    const/4 p0, 0
  :L1
    return p0
.end method

.method private i(Landroid/view/View;Landroid/view/MotionEvent;)Z
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/f0;->j:[I
  .line 2
    invoke-virtual { p1, v0 }, Landroid/view/View;->getLocationOnScreen([I)V
    const/4 p1, 0
  .line 3
    aget p1, v0, p1
    int-to-float p1, p1
    const/4 v1, 1
    aget v0, v0, v1
    int-to-float v0, v0
    invoke-virtual { p2, p1, v0 }, Landroid/view/MotionEvent;->offsetLocation(FF)V
    return v1
.end method

.method private j(Landroid/view/View;Landroid/view/MotionEvent;)Z
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/f0;->j:[I
  .line 2
    invoke-virtual { p1, v0 }, Landroid/view/View;->getLocationOnScreen([I)V
    const/4 p1, 0
  .line 3
    aget p1, v0, p1
    neg-int p1, p1
    int-to-float p1, p1
    const/4 v1, 1
    aget v0, v0, v1
    neg-int v0, v0
    int-to-float v0, v0
    invoke-virtual { p2, p1, v0 }, Landroid/view/MotionEvent;->offsetLocation(FF)V
    return v1
.end method

.method public abstract b()Landroidx/appcompat/view/menu/p;
.end method

.method protected abstract c()Z
.end method

.method protected d()Z
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/f0;->b()Landroidx/appcompat/view/menu/p;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0 }, Landroidx/appcompat/view/menu/p;->b()Z
    move-result v1
    if-eqz v1, :L0
  .line 3
    invoke-interface { v0 }, Landroidx/appcompat/view/menu/p;->dismiss()V
  :L0
    const/4 v0, 1
    return v0
.end method

.method e()V
  .registers 12
  .line 1
    invoke-direct { p0 }, Landroidx/appcompat/widget/f0;->a()V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/f0;->e:Landroid/view/View;
  .line 3
    invoke-virtual { v0 }, Landroid/view/View;->isEnabled()Z
    move-result v1
    if-eqz v1, :L2
    invoke-virtual { v0 }, Landroid/view/View;->isLongClickable()Z
    move-result v1
    if-eqz v1, :L0
    goto :L2
  :L0
  .line 4
    invoke-virtual { p0 }, Landroidx/appcompat/widget/f0;->c()Z
    move-result v1
    if-nez v1, :L1
    return-void
  :L1
  .line 5
    invoke-virtual { v0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v1
    const/4 v2, 1
    invoke-interface { v1, v2 }, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V
  .line 6
    invoke-static { }, Landroid/os/SystemClock;->uptimeMillis()J
    move-result-wide v5
    const/4 v7, 3
    const/4 v8, 0
    const/4 v9, 0
    const/4 v10, 0
    move-wide v3, v5
  .line 7
    invoke-static/range { v3 .. v10 }, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;
    move-result-object v1
  .line 8
    invoke-virtual { v0, v1 }, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z
  .line 9
    invoke-virtual { v1 }, Landroid/view/MotionEvent;->recycle()V
  .line 10
    iput-boolean v2, p0, Landroidx/appcompat/widget/f0;->h:Z
  :L2
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
  .registers 13
  .line 1
    iget-boolean p1, p0, Landroidx/appcompat/widget/f0;->h:Z
    const/4 v0, 1
    const/4 v1, 0
    if-eqz p1, :L2
  .line 2
    invoke-direct { p0, p2 }, Landroidx/appcompat/widget/f0;->f(Landroid/view/MotionEvent;)Z
    move-result p2
    if-nez p2, :L1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/f0;->d()Z
    move-result p2
    if-nez p2, :L0
    goto :L1
  :L0
    const/4 p2, 0
    goto :L5
  :L1
    const/4 p2, 1
    goto :L5
  :L2
  .line 3
    invoke-direct { p0, p2 }, Landroidx/appcompat/widget/f0;->g(Landroid/view/MotionEvent;)Z
    move-result p2
    if-eqz p2, :L3
    invoke-virtual { p0 }, Landroidx/appcompat/widget/f0;->c()Z
    move-result p2
    if-eqz p2, :L3
    const/4 p2, 1
    goto :L4
  :L3
    const/4 p2, 0
  :L4
    if-eqz p2, :L5
  .line 4
    invoke-static { }, Landroid/os/SystemClock;->uptimeMillis()J
    move-result-wide v4
    const/4 v6, 3
    const/4 v7, 0
    const/4 v8, 0
    const/4 v9, 0
    move-wide v2, v4
  .line 5
    invoke-static/range { v2 .. v9 }, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;
    move-result-object v2
  .line 6
    iget-object v3, p0, Landroidx/appcompat/widget/f0;->e:Landroid/view/View;
    invoke-virtual { v3, v2 }, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z
  .line 7
    invoke-virtual { v2 }, Landroid/view/MotionEvent;->recycle()V
  :L5
  .line 8
    iput-boolean p2, p0, Landroidx/appcompat/widget/f0;->h:Z
    if-nez p2, :L7
    if-eqz p1, :L6
    goto :L7
  :L6
    const/4 v0, 0
  :L7
    return v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
  .registers 2
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
  .registers 3
    const/4 p1, 0
  .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/f0;->h:Z
    const/4 p1, -1
  .line 2
    iput p1, p0, Landroidx/appcompat/widget/f0;->i:I
  .line 3
    iget-object p1, p0, Landroidx/appcompat/widget/f0;->f:Ljava/lang/Runnable;
    if-eqz p1, :L0
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/f0;->e:Landroid/view/View;
    invoke-virtual { v0, p1 }, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z
  :L0
    return-void
.end method
