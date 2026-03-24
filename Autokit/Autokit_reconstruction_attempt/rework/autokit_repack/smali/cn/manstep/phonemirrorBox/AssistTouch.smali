.class public Lcn/manstep/phonemirrorBox/AssistTouch;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/g;


# instance fields
.field b:F

.field c:F

.field d:Z

.field e:Z

.field f:I

.field g:I

.field h:Landroid/os/Handler;

.field i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->d:Z

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->e:Z

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->h:Landroid/os/Handler;

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/f;->d()Lcn/manstep/phonemirrorBox/e;

    move-result-object p1

    invoke-interface {p1, p0}, Lcn/manstep/phonemirrorBox/e;->a(Lcn/manstep/phonemirrorBox/g;)V

    const-string p1, "AssistTouch,AssistTouch: init"

    .line 6
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/f;->b(Z)V

    return-void
.end method

.method private getSrcWH()V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->f:I

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->g:I

    .line 5
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AssistTouch,getSrcWH: W  H :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/Object;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_e5

    const/4 v3, 0x2

    if-eq p1, v3, :cond_19

    const/4 p3, 0x4

    if-eq p1, p3, :cond_d

    goto/16 :goto_10a

    .line 1
    :cond_d
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/AssistTouch;->d()V

    if-ne p2, v2, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x4

    .line 2
    :goto_14
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_10a

    .line 3
    :cond_19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AssistTouch,onMsg: getWidth="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", getHeight="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AssistTouch,onMsg: getLeft="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", getRight="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getRight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AssistTouch,onMsg: getTop="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", getBottom="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBottom()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AssistTouch,onMsg: getX="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getX()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", getY="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getY()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 7
    instance-of p1, p3, Landroid/graphics/Point;

    if-eqz p1, :cond_ba

    .line 8
    check-cast p3, Landroid/graphics/Point;

    .line 9
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result p2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 10
    :cond_ba
    invoke-virtual {p0}, Landroid/widget/ImageView;->getX()F

    move-result p1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_c5

    .line 11
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 12
    :cond_c5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_10a

    .line 13
    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 14
    invoke-virtual {p0}, Landroid/widget/ImageView;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    div-int/2addr p1, v3

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_10a

    .line 15
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setX(F)V

    goto :goto_10a

    .line 16
    :cond_e5
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-ne p2, v2, :cond_ec

    goto :goto_ee

    :cond_ec
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_ee
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    if-eq p2, v2, :cond_f4

    const/4 v0, 0x1

    .line 17
    :cond_f4
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->d:Z

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AssistTouch,onMsg: AndroidWorkUILogic.MSG_EXPAND val0="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    :cond_10a
    :goto_10a
    return-void
.end method

.method b()V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_91

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v2

    const/4 v3, 0x0

    if-le v1, v2, :cond_23

    .line 4
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_30

    .line 5
    :cond_23
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    if-gez v1, :cond_2f

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    neg-int v1, v1

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    .line 7
    :goto_30
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBottom()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v4

    if-le v2, v4, :cond_45

    .line 8
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    sub-int v3, v2, v3

    goto :goto_50

    .line 9
    :cond_45
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    if-gez v2, :cond_50

    .line 10
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    neg-int v3, v2

    :cond_50
    :goto_50
    if-nez v1, :cond_54

    if-eqz v3, :cond_6b

    .line 11
    :cond_54
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getRight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBottom()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p0, v2, v4, v5, v1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 12
    :cond_6b
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_89

    .line 13
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_91

    .line 14
    :cond_89
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    :cond_91
    :goto_91
    return-void
.end method

.method public d()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/AssistTouch;->getSrcWH()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AssistTouch,resetSelf: W  H :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->d:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->e:Z

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLeft(I)V

    .line 6
    iget v1, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->f:I

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setRight(I)V

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setTop(I)V

    .line 8
    iget v0, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->g:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBottom(I)V

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setY(F)V

    .line 11
    iget v0, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->g:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 12
    iget v0, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->f:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setMaxWidth(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->d:Z

    if-eqz v0, :cond_ad

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7c

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_20

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1b

    .line 4
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/AssistTouch;->b()V

    .line 5
    :cond_1b
    invoke-virtual {p0, v2}, Lcn/manstep/phonemirrorBox/AssistTouch;->setbDraging(Z)V

    goto/16 :goto_ad

    .line 6
    :cond_20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->b:F

    sub-float/2addr v0, v2

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v2, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->c:F

    sub-float/2addr p1, v2

    .line 8
    iget-boolean v2, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->e:Z

    if-nez v2, :cond_47

    .line 9
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_44

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_47

    .line 10
    :cond_44
    invoke-virtual {p0, v1}, Lcn/manstep/phonemirrorBox/AssistTouch;->setbDraging(Z)V

    .line 11
    :cond_47
    iget-boolean v2, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->e:Z

    if-eqz v2, :cond_69

    const-string v2, "AssistTouch,onTouchEvent: change pos"

    .line 12
    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    float-to-int v0, v0

    .line 13
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    add-int/2addr v2, v0

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getRight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBottom()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v2, v3, v4, v0}, Landroid/widget/ImageView;->layout(IIII)V

    :cond_69
    return v1

    .line 14
    :cond_6a
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->e:Z

    if-nez p1, :cond_72

    .line 15
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/AssistTouch;->c()V

    goto :goto_78

    .line 16
    :cond_72
    invoke-virtual {p0, v2}, Lcn/manstep/phonemirrorBox/AssistTouch;->setbDraging(Z)V

    .line 17
    invoke-static {v2}, Lcn/manstep/phonemirrorBox/f;->b(Z)V

    .line 18
    :goto_78
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/AssistTouch;->b()V

    return v1

    .line 19
    :cond_7c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->b:F

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->c:F

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AssistTouch,onTouchEvent: w="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " h="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    return v1

    .line 22
    :cond_ad
    :goto_ad
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setbDraging(Z)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->e:Z

    if-eq p1, v0, :cond_2f

    .line 2
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->e:Z

    if-eqz p1, :cond_1b

    .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->i:Ljava/lang/Runnable;

    if-eqz p1, :cond_11

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->h:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    :cond_11
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_2f

    .line 6
    :cond_1b
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->i:Ljava/lang/Runnable;

    if-nez p1, :cond_26

    .line 7
    new-instance p1, Lcn/manstep/phonemirrorBox/AssistTouch$a;

    invoke-direct {p1, p0}, Lcn/manstep/phonemirrorBox/AssistTouch$a;-><init>(Lcn/manstep/phonemirrorBox/AssistTouch;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->i:Ljava/lang/Runnable;

    .line 8
    :cond_26
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->h:Landroid/os/Handler;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AssistTouch;->i:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2f
    :goto_2f
    return-void
.end method
