.class public Lcn/manstep/phonemirrorBox/AssistTouch;
.super Landroid/widget/ImageView;
.implements Lcn/manstep/phonemirrorBox/g;
.source "SourceFile"

.field b:F

.field c:F

.field d:Z

.field e:Z

.field f:I

.field g:I

.field h:Landroid/os/Handler;

.field i:Ljava/lang/Runnable;

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    const/4 p1, 1
  .line 2
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->d:Z
    const/4 p1, 0
  .line 3
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->e:Z
  .line 4
    new-instance p1, Landroid/os/Handler;
    invoke-direct { p1 }, Landroid/os/Handler;-><init>()V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->h:Landroid/os/Handler;
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/f;->d()Lcn/manstep/phonemirrorBox/e;
    move-result-object p1
    invoke-interface { p1, p0 }, Lcn/manstep/phonemirrorBox/e;->a(Lcn/manstep/phonemirrorBox/g;)V
    const-string p1, "AssistTouch,AssistTouch: init"
  .line 6
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    return-void
.end method

.method private c()V
  .registers 2
    const/4 v0, 1
  .line 1
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/f;->b(Z)V
    return-void
.end method

.method private getSrcWH()V
  .registers 3
    const/4 v0, 1
  .line 1
    invoke-virtual { p0, v0 }, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V
  .line 2
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;
    move-result-object v0
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0 }, Landroid/graphics/Bitmap;->getWidth()I
    move-result v1
    iput v1, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->f:I
  .line 4
    invoke-virtual { v0 }, Landroid/graphics/Bitmap;->getHeight()I
    move-result v0
    iput v0, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->g:I
  :L0
  .line 5
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "AssistTouch,getSrcWH: W  H :"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->f:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, " "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->g:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/4 v0, 0
  .line 6
    invoke-virtual { p0, v0 }, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V
    return-void
.end method

.method public a(IILjava/lang/Object;)V
  .registers 8
    const/4 v0, 0
    const/4 v1, 0
    const/4 v2, 1
    if-eq p1, v2, :L6
    const/4 v3, 2
    if-eq p1, v3, :L3
    const/4 p3, 4
    if-eq p1, p3, :L0
    goto/16 :L10
  :L0
  .line 1
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/AssistTouch;->d()V
    if-ne p2, v2, :L1
    goto :L2
  :L1
    const/4 v0, 4
  :L2
  .line 2
    invoke-virtual { p0, v0 }, Landroid/widget/ImageView;->setVisibility(I)V
    goto/16 :L10
  :L3
  .line 3
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "AssistTouch,onMsg: getWidth="
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getWidth()I
    move-result p2
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p2, ", getHeight="
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getHeight()I
    move-result p2
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 4
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "AssistTouch,onMsg: getLeft="
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getLeft()I
    move-result p2
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p2, ", getRight="
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getRight()I
    move-result p2
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 5
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "AssistTouch,onMsg: getTop="
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getTop()I
    move-result p2
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p2, ", getBottom="
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getBottom()I
    move-result p2
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 6
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "AssistTouch,onMsg: getX="
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getX()F
    move-result p2
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    const-string p2, ", getY="
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getY()F
    move-result p2
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 7
    instance-of p1, p3, Landroid/graphics/Point;
    if-eqz p1, :L4
  .line 8
    check-cast p3, Landroid/graphics/Point;
  .line 9
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getLeft()I
    move-result p1
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getTop()I
    move-result p2
    invoke-virtual { p3, p1, p2 }, Landroid/graphics/Point;->set(II)V
  :L4
  .line 10
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getX()F
    move-result p1
    cmpg-float p1, p1, v1
    if-gez p1, :L5
  .line 11
    invoke-virtual { p0, v1 }, Landroid/widget/ImageView;->setX(F)V
  :L5
  .line 12
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;
    move-result-object p1
    instance-of p1, p1, Landroid/widget/FrameLayout;
    if-eqz p1, :L10
  .line 13
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;
    move-result-object p1
    check-cast p1, Landroid/widget/FrameLayout;
  .line 14
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getX()F
    move-result p2
    invoke-virtual { p1 }, Landroid/widget/FrameLayout;->getWidth()I
    move-result p1
    div-int/2addr p1, v3
    int-to-float p1, p1
    cmpg-float p1, p2, p1
    if-gez p1, :L10
  .line 15
    invoke-virtual { p0, v1 }, Landroid/widget/ImageView;->setX(F)V
    goto :L10
  :L6
  .line 16
    invoke-virtual { p0 }, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    if-ne p2, v2, :L7
    goto :L8
  :L7
    const/high16 v1, 16256
  :L8
    invoke-virtual { p1, v1 }, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
    if-eq p2, v2, :L9
    const/4 v0, 1
  :L9
  .line 17
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->d:Z
  .line 18
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "AssistTouch,onMsg: AndroidWorkUILogic.MSG_EXPAND val0="
    invoke-virtual { p1, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  :L10
    return-void
.end method

.method b()V
  .registers 7
  .line 1
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    instance-of v0, v0, Landroid/widget/FrameLayout;
    if-eqz v0, :L8
  .line 2
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    check-cast v0, Landroid/widget/FrameLayout;
  .line 3
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getRight()I
    move-result v1
    invoke-virtual { v0 }, Landroid/widget/FrameLayout;->getRight()I
    move-result v2
    const/4 v3, 0
    if-le v1, v2, :L0
  .line 4
    invoke-virtual { v0 }, Landroid/widget/FrameLayout;->getRight()I
    move-result v1
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getRight()I
    move-result v2
    sub-int/2addr v1, v2
    goto :L2
  :L0
  .line 5
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getLeft()I
    move-result v1
    if-gez v1, :L1
  .line 6
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getLeft()I
    move-result v1
    neg-int v1, v1
    goto :L2
  :L1
    const/4 v1, 0
  :L2
  .line 7
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getBottom()I
    move-result v2
    invoke-virtual { v0 }, Landroid/widget/FrameLayout;->getBottom()I
    move-result v4
    if-le v2, v4, :L3
  .line 8
    invoke-virtual { v0 }, Landroid/widget/FrameLayout;->getBottom()I
    move-result v2
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getBottom()I
    move-result v3
    sub-int v3, v2, v3
    goto :L4
  :L3
  .line 9
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getTop()I
    move-result v2
    if-gez v2, :L4
  .line 10
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getTop()I
    move-result v2
    neg-int v3, v2
  :L4
    if-nez v1, :L5
    if-eqz v3, :L6
  :L5
  .line 11
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getLeft()I
    move-result v2
    add-int/2addr v2, v1
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getTop()I
    move-result v4
    add-int/2addr v4, v3
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getRight()I
    move-result v5
    add-int/2addr v5, v1
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getBottom()I
    move-result v1
    add-int/2addr v1, v3
    invoke-virtual { p0, v2, v4, v5, v1 }, Landroid/widget/ImageView;->layout(IIII)V
  :L6
  .line 12
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getLeft()I
    move-result v1
    invoke-virtual { v0 }, Landroid/widget/FrameLayout;->getWidth()I
    move-result v2
    div-int/lit8 v2, v2, 2
    if-lt v1, v2, :L7
  .line 13
    invoke-virtual { p0 }, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object v1
    invoke-virtual { v0 }, Landroid/widget/FrameLayout;->getRight()I
    move-result v0
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getWidth()I
    move-result v2
    sub-int/2addr v0, v2
    int-to-float v0, v0
    invoke-virtual { v1, v0 }, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;
    goto :L8
  :L7
  .line 14
    invoke-virtual { p0 }, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;
  :L8
    return-void
.end method

.method public d()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AssistTouch;->getSrcWH()V
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "AssistTouch,resetSelf: W  H :"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->f:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, " "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->g:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/4 v0, 1
  .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->d:Z
    const/4 v0, 0
  .line 4
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->e:Z
  .line 5
    invoke-virtual { p0, v0 }, Landroid/widget/ImageView;->setLeft(I)V
  .line 6
    iget v1, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->f:I
    invoke-virtual { p0, v1 }, Landroid/widget/ImageView;->setRight(I)V
  .line 7
    invoke-virtual { p0, v0 }, Landroid/widget/ImageView;->setTop(I)V
  .line 8
    iget v0, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->g:I
    invoke-virtual { p0, v0 }, Landroid/widget/ImageView;->setBottom(I)V
    const/4 v0, 0
  .line 9
    invoke-virtual { p0, v0 }, Landroid/widget/ImageView;->setX(F)V
  .line 10
    invoke-virtual { p0, v0 }, Landroid/widget/ImageView;->setY(F)V
  .line 11
    iget v0, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->g:I
    invoke-virtual { p0, v0 }, Landroid/widget/ImageView;->setMaxHeight(I)V
  .line 12
    iget v0, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->f:I
    invoke-virtual { p0, v0 }, Landroid/widget/ImageView;->setMaxWidth(I)V
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
  .registers 7
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->d:Z
    if-eqz v0, :L9
  .line 2
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v0
    const/4 v1, 1
    if-eqz v0, :L8
    const/4 v2, 0
    if-eq v0, v1, :L5
    const/4 v3, 2
    if-eq v0, v3, :L1
  .line 3
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v0
    const/4 v1, 3
    if-ne v0, v1, :L0
  .line 4
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/AssistTouch;->b()V
  :L0
  .line 5
    invoke-virtual { p0, v2 }, Lcn/manstep/phonemirrorBox/AssistTouch;->setbDraging(Z)V
    goto/16 :L9
  :L1
  .line 6
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getX()F
    move-result v0
    iget v2, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->b:F
    sub-float/2addr v0, v2
  .line 7
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getY()F
    move-result p1
    iget v2, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->c:F
    sub-float/2addr p1, v2
  .line 8
    iget-boolean v2, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->e:Z
    if-nez v2, :L3
  .line 9
    invoke-static { v0 }, Ljava/lang/Math;->abs(F)F
    move-result v2
    const/high16 v3, 16544
    cmpl-float v2, v2, v3
    if-gtz v2, :L2
    invoke-static { p1 }, Ljava/lang/Math;->abs(F)F
    move-result v2
    cmpl-float v2, v2, v3
    if-lez v2, :L3
  :L2
  .line 10
    invoke-virtual { p0, v1 }, Lcn/manstep/phonemirrorBox/AssistTouch;->setbDraging(Z)V
  :L3
  .line 11
    iget-boolean v2, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->e:Z
    if-eqz v2, :L4
    const-string v2, "AssistTouch,onTouchEvent: change pos"
  .line 12
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    float-to-int v0, v0
  .line 13
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getLeft()I
    move-result v2
    add-int/2addr v2, v0
    float-to-int p1, p1
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getTop()I
    move-result v3
    add-int/2addr v3, p1
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getRight()I
    move-result v4
    add-int/2addr v4, v0
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getBottom()I
    move-result v0
    add-int/2addr v0, p1
    invoke-virtual { p0, v2, v3, v4, v0 }, Landroid/widget/ImageView;->layout(IIII)V
  :L4
    return v1
  :L5
  .line 14
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->e:Z
    if-nez p1, :L6
  .line 15
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AssistTouch;->c()V
    goto :L7
  :L6
  .line 16
    invoke-virtual { p0, v2 }, Lcn/manstep/phonemirrorBox/AssistTouch;->setbDraging(Z)V
  .line 17
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/f;->b(Z)V
  :L7
  .line 18
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/AssistTouch;->b()V
    return v1
  :L8
  .line 19
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getX()F
    move-result v0
    iput v0, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->b:F
  .line 20
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getY()F
    move-result p1
    iput p1, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->c:F
  .line 21
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "AssistTouch,onTouchEvent: w="
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getWidth()I
    move-result v0
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v0, " h="
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getHeight()I
    move-result v0
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    return v1
  :L9
  .line 22
    invoke-super { p0, p1 }, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    move-result p1
    return p1
.end method

.method public setbDraging(Z)V
  .registers 5
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->e:Z
    if-eq p1, v0, :L3
  .line 2
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->e:Z
    if-eqz p1, :L1
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->i:Ljava/lang/Runnable;
    if-eqz p1, :L0
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->h:Landroid/os/Handler;
    invoke-virtual { v0, p1 }, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
  :L0
  .line 5
    invoke-virtual { p0 }, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    const/high16 v0, 16256
    invoke-virtual { p1, v0 }, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
    goto :L3
  :L1
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->i:Ljava/lang/Runnable;
    if-nez p1, :L2
  .line 7
    new-instance p1, Lcn/manstep/phonemirrorBox/AssistTouch$a;
    invoke-direct { p1, p0 }, Lcn/manstep/phonemirrorBox/AssistTouch$a;-><init>(Lcn/manstep/phonemirrorBox/AssistTouch;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->i:Ljava/lang/Runnable;
  :L2
  .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->h:Landroid/os/Handler;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->i:Ljava/lang/Runnable;
    const-wide/16 v1, 5000
    invoke-virtual { p1, v0, v1, v2 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
  :L3
    return-void
.end method
