.class public Lcn/manstep/phonemirrorBox/AssistTouchRoundRect;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/g;


# instance fields
.field b:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 3
    new-instance p1, Lcn/manstep/phonemirrorBox/AssistTouchRoundRect$a;

    invoke-direct {p1, p0}, Lcn/manstep/phonemirrorBox/AssistTouchRoundRect$a;-><init>(Lcn/manstep/phonemirrorBox/AssistTouchRoundRect;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-static {}, Lcn/manstep/phonemirrorBox/f;->d()Lcn/manstep/phonemirrorBox/e;

    move-result-object p1

    invoke-interface {p1, p0}, Lcn/manstep/phonemirrorBox/e;->a(Lcn/manstep/phonemirrorBox/g;)V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/Object;)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_12

    const/4 p3, 0x4

    if-eq p1, p3, :cond_9

    goto/16 :goto_b1

    :cond_9
    if-ne p2, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x4

    .line 1
    :goto_d
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b1

    :cond_12
    if-ne p2, v1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 2
    :goto_16
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v1, :cond_20

    const p2, 0x3f333333    # 0.7f

    goto :goto_21

    :cond_20
    const/4 p2, 0x0

    :goto_21
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_b1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 5
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRight()I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    sub-int/2addr p2, v2

    .line 6
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTop()I

    move-result p1

    sub-int/2addr v2, p1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr p1, v3

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    if-eqz v1, :cond_82

    const/high16 p3, 0x40800000    # 4.0f

    sub-int/2addr p2, p1

    .line 9
    div-int/lit8 p2, p2, 0x2

    sub-int/2addr v2, v3

    .line 10
    div-int/lit8 v2, v2, 0x2

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 15
    invoke-static {p2, v2, p1, v3, p3}, Lcn/manstep/phonemirrorBox/f;->f(IIIIF)V

    goto :goto_b1

    .line 16
    :cond_82
    instance-of p2, p3, Landroid/graphics/Point;

    if-eqz p2, :cond_8d

    .line 17
    check-cast p3, Landroid/graphics/Point;

    iget v0, p3, Landroid/graphics/Point;->x:I

    .line 18
    iget p2, p3, Landroid/graphics/Point;->y:I

    goto :goto_8e

    :cond_8d
    const/4 p2, 0x0

    .line 19
    :goto_8e
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    int-to-float v1, v0

    invoke-virtual {p3, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    int-to-float v1, p2

    invoke-virtual {p3, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p3, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 23
    invoke-static {v0, p2, p1, v3, v1}, Lcn/manstep/phonemirrorBox/f;->f(IIIIF)V

    :cond_b1
    :goto_b1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AssistTouchRoundRect;->b:Landroid/graphics/Paint;

    if-nez v0, :cond_2a

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AssistTouchRoundRect;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AssistTouchRoundRect;->b:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AssistTouchRoundRect;->b:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AssistTouchRoundRect;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9
    :cond_2a
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AssistTouchRoundRect;->b:Landroid/graphics/Paint;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method
