.class public Lcn/manstep/phonemirrorBox/AssistTouchRoundRect;
.super Landroid/view/View;
.implements Lcn/manstep/phonemirrorBox/g;
.source "SourceFile"

.field b:Landroid/graphics/Paint;

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    const/4 p1, 1
  .line 2
    invoke-virtual { p0, p1 }, Landroid/view/View;->setClickable(Z)V
  .line 3
    new-instance p1, Lcn/manstep/phonemirrorBox/AssistTouchRoundRect$a;
    invoke-direct { p1, p0 }, Lcn/manstep/phonemirrorBox/AssistTouchRoundRect$a;-><init>(Lcn/manstep/phonemirrorBox/AssistTouchRoundRect;)V
    invoke-virtual { p0, p1 }, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/f;->d()Lcn/manstep/phonemirrorBox/e;
    move-result-object p1
    invoke-interface { p1, p0 }, Lcn/manstep/phonemirrorBox/e;->a(Lcn/manstep/phonemirrorBox/g;)V
    return-void
.end method

.method public a(IILjava/lang/Object;)V
  .registers 9
    const/4 v0, 0
    const/4 v1, 1
    if-eq p1, v1, :L3
    const/4 p3, 4
    if-eq p1, p3, :L0
    goto/16 :L11
  :L0
    if-ne p2, v1, :L1
    goto :L2
  :L1
    const/4 v0, 4
  :L2
  .line 1
    invoke-virtual { p0, v0 }, Landroid/view/View;->setVisibility(I)V
    goto/16 :L11
  :L3
    if-ne p2, v1, :L4
    goto :L5
  :L4
    const/4 v1, 0
  :L5
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    if-eqz v1, :L6
    const p2, 1060320051
    goto :L7
  :L6
    const/4 p2, 0
  :L7
    invoke-virtual { p1, p2 }, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
  .line 3
    invoke-virtual { p0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object p1
    instance-of p1, p1, Landroid/widget/FrameLayout;
    if-eqz p1, :L11
  .line 4
    invoke-virtual { p0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object p1
    check-cast p1, Landroid/widget/FrameLayout;
  .line 5
    invoke-virtual { p1 }, Landroid/widget/FrameLayout;->getRight()I
    move-result p2
    invoke-virtual { p1 }, Landroid/widget/FrameLayout;->getLeft()I
    move-result v2
    sub-int/2addr p2, v2
  .line 6
    invoke-virtual { p1 }, Landroid/widget/FrameLayout;->getBottom()I
    move-result v2
    invoke-virtual { p1 }, Landroid/widget/FrameLayout;->getTop()I
    move-result p1
    sub-int/2addr v2, p1
  .line 7
    invoke-virtual { p0 }, Landroid/view/View;->getRight()I
    move-result p1
    invoke-virtual { p0 }, Landroid/view/View;->getLeft()I
    move-result v3
    sub-int/2addr p1, v3
  .line 8
    invoke-virtual { p0 }, Landroid/view/View;->getBottom()I
    move-result v3
    invoke-virtual { p0 }, Landroid/view/View;->getTop()I
    move-result v4
    sub-int/2addr v3, v4
    if-eqz v1, :L8
    const/high16 p3, 16512
    sub-int/2addr p2, p1
  .line 9
    div-int/lit8 p2, p2, 2
    sub-int/2addr v2, v3
  .line 10
    div-int/lit8 v2, v2, 2
  .line 11
    invoke-virtual { p0 }, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    int-to-float v1, p2
    invoke-virtual { v0, v1 }, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;
  .line 12
    invoke-virtual { p0 }, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    int-to-float v1, v2
    invoke-virtual { v0, v1 }, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;
  .line 13
    invoke-virtual { p0 }, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    invoke-virtual { v0, p3 }, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;
  .line 14
    invoke-virtual { p0 }, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    invoke-virtual { v0, p3 }, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;
  .line 15
    invoke-static { p2, v2, p1, v3, p3 }, Lcn/manstep/phonemirrorBox/f;->f(IIIIF)V
    goto :L11
  :L8
  .line 16
    instance-of p2, p3, Landroid/graphics/Point;
    if-eqz p2, :L9
  .line 17
    check-cast p3, Landroid/graphics/Point;
    iget v0, p3, Landroid/graphics/Point;->x:I
  .line 18
    iget p2, p3, Landroid/graphics/Point;->y:I
    goto :L10
  :L9
    const/4 p2, 0
  :L10
  .line 19
    invoke-virtual { p0 }, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object p3
    int-to-float v1, v0
    invoke-virtual { p3, v1 }, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;
  .line 20
    invoke-virtual { p0 }, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object p3
    int-to-float v1, p2
    invoke-virtual { p3, v1 }, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;
  .line 21
    invoke-virtual { p0 }, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object p3
    const/high16 v1, 16256
    invoke-virtual { p3, v1 }, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;
  .line 22
    invoke-virtual { p0 }, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object p3
    invoke-virtual { p3, v1 }, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;
  .line 23
    invoke-static { v0, p2, p1, v3, v1 }, Lcn/manstep/phonemirrorBox/f;->f(IIIIF)V
  :L11
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
  .registers 5
  .line 1
    invoke-super { p0, p1 }, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AssistTouchRoundRect;->b:Landroid/graphics/Paint;
    if-nez v0, :L0
  .line 3
    new-instance v0, Landroid/graphics/Paint;
    invoke-direct { v0 }, Landroid/graphics/Paint;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AssistTouchRoundRect;->b:Landroid/graphics/Paint;
    const/4 v1, 1
  .line 4
    invoke-virtual { v0, v1 }, Landroid/graphics/Paint;->setAntiAlias(Z)V
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AssistTouchRoundRect;->b:Landroid/graphics/Paint;
    const/high16 v1, -256
    invoke-virtual { v0, v1 }, Landroid/graphics/Paint;->setColor(I)V
    const/4 v0, 0
  .line 6
    invoke-virtual { p1, v0 }, Landroid/graphics/Canvas;->drawColor(I)V
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AssistTouchRoundRect;->b:Landroid/graphics/Paint;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroid/graphics/Paint;->setStrokeWidth(F)V
  .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AssistTouchRoundRect;->b:Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
    invoke-virtual { v0, v1 }, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
  :L0
  .line 9
    new-instance v0, Landroid/graphics/RectF;
    invoke-direct { v0 }, Landroid/graphics/RectF;-><init>()V
  .line 10
    invoke-virtual { p0 }, Landroid/view/View;->getLeft()I
    move-result v1
    int-to-float v1, v1
    iput v1, v0, Landroid/graphics/RectF;->left:F
  .line 11
    invoke-virtual { p0 }, Landroid/view/View;->getTop()I
    move-result v1
    int-to-float v1, v1
    iput v1, v0, Landroid/graphics/RectF;->top:F
  .line 12
    invoke-virtual { p0 }, Landroid/view/View;->getRight()I
    move-result v1
    int-to-float v1, v1
    iput v1, v0, Landroid/graphics/RectF;->right:F
  .line 13
    invoke-virtual { p0 }, Landroid/view/View;->getBottom()I
    move-result v1
    int-to-float v1, v1
    iput v1, v0, Landroid/graphics/RectF;->bottom:F
  .line 14
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "rect"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 15
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AssistTouchRoundRect;->b:Landroid/graphics/Paint;
    const/high16 v2, 16512
    invoke-virtual { p1, v0, v2, v2, v1 }, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    return-void
.end method
