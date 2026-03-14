.class public Lcn/manstep/phonemirrorBox/AssistCmd;
.super Lcn/manstep/phonemirrorBox/util/a;
.implements Lcn/manstep/phonemirrorBox/g;
.source "SourceFile"

.field private b:Z

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/util/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    const/4 p1, 0
  .line 2
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/AssistCmd;->b:Z
  .line 3
    new-instance p1, Lcn/manstep/phonemirrorBox/AssistCmd$a;
    invoke-direct { p1, p0 }, Lcn/manstep/phonemirrorBox/AssistCmd$a;-><init>(Lcn/manstep/phonemirrorBox/AssistCmd;)V
    invoke-virtual { p0, p1 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/f;->d()Lcn/manstep/phonemirrorBox/e;
    move-result-object p1
    invoke-interface { p1, p0 }, Lcn/manstep/phonemirrorBox/e;->a(Lcn/manstep/phonemirrorBox/g;)V
    return-void
.end method

.method static synthetic b(Lcn/manstep/phonemirrorBox/AssistCmd;)Z
  .registers 1
  .line 1
    iget-boolean p0, p0, Lcn/manstep/phonemirrorBox/AssistCmd;->b:Z
    return p0
.end method

.method public a(IILjava/lang/Object;)V
  .registers 11
    const/4 v0, 0
    const/4 v1, 1
    if-eq p1, v1, :L9
    const/4 v2, 4
    const/4 v3, 3
    if-eq p1, v3, :L3
    if-eq p1, v2, :L0
    goto/16 :L15
  :L0
    if-ne p2, v1, :L1
    goto :L2
  :L1
    const/4 v0, 4
  :L2
  .line 1
    invoke-virtual { p0, v0 }, Landroid/widget/ImageView;->setVisibility(I)V
    goto/16 :L15
  :L3
  .line 2
    check-cast p3, [I
  .line 3
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getWidth()I
    move-result p1
  .line 4
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getHeight()I
    move-result p2
  .line 5
    aget v0, p3, v0
  .line 6
    aget v1, p3, v1
    const/4 v4, 2
  .line 7
    aget v5, p3, v4
  .line 8
    aget v6, p3, v3
  .line 9
    aget p3, p3, v2
    mul-int v2, p3, v5
    mul-int p3, p3, v6
    sub-int v5, v2, v5
  .line 10
    div-int/2addr v5, v4
    sub-int/2addr v0, v5
    sub-int v5, p3, v6
  .line 11
    div-int/2addr v5, v4
    sub-int/2addr v1, v5
  .line 12
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getId()I
    move-result v5
    packed-switch v5, :L16
  :L4
    goto/16 :L15
  :L5
  .line 13
    invoke-virtual { p0 }, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object v5
    sub-int/2addr v2, p1
    div-int/2addr v2, v4
    add-int/2addr v0, v2
    int-to-float p1, v0
    invoke-virtual { v5, p1 }, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;
  .line 14
    invoke-virtual { p0 }, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    add-int/2addr v1, p3
    div-int/2addr p3, v4
    sub-int/2addr p3, p2
    div-int/2addr p3, v3
    sub-int/2addr v1, p3
    sub-int/2addr v1, p2
    int-to-float p2, v1
    invoke-virtual { p1, p2 }, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;
    goto :L15
  :L6
  .line 15
    invoke-virtual { p0 }, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object v5
    add-int/2addr v0, v2
    div-int/2addr v2, v4
    sub-int/2addr v2, p1
    div-int/2addr v2, v3
    sub-int/2addr v0, v2
    sub-int/2addr v0, p1
    int-to-float p1, v0
    invoke-virtual { v5, p1 }, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;
  .line 16
    invoke-virtual { p0 }, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    sub-int/2addr p3, p2
    div-int/2addr p3, v4
    add-int/2addr v1, p3
    int-to-float p2, v1
    invoke-virtual { p1, p2 }, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;
    goto :L15
  :L7
  .line 17
    invoke-virtual { p0 }, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object v5
    sub-int/2addr v2, p1
    div-int/2addr v2, v4
    add-int/2addr v0, v2
    int-to-float p1, v0
    invoke-virtual { v5, p1 }, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;
  .line 18
    invoke-virtual { p0 }, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    div-int/2addr p3, v4
    sub-int/2addr p3, p2
    div-int/2addr p3, v3
    add-int/2addr v1, p3
    int-to-float p2, v1
    invoke-virtual { p1, p2 }, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;
    goto :L15
  :L8
  .line 19
    invoke-virtual { p0 }, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object v5
    div-int/2addr v2, v4
    sub-int/2addr v2, p1
    div-int/2addr v2, v3
    add-int/2addr v0, v2
    int-to-float p1, v0
    invoke-virtual { v5, p1 }, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;
  .line 20
    invoke-virtual { p0 }, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    sub-int/2addr p3, p2
    div-int/2addr p3, v4
    add-int/2addr v1, p3
    int-to-float p2, v1
    invoke-virtual { p1, p2 }, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;
    goto :L15
  :L9
  .line 21
    invoke-virtual { p0 }, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    if-ne p2, v1, :L10
    const/high16 p3, 16256
    goto :L11
  :L10
    const/4 p3, 0
  :L11
    invoke-virtual { p1, p3 }, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
    if-ne p2, v1, :L12
    const/4 p1, 1
    goto :L13
  :L12
    const/4 p1, 0
  :L13
  .line 22
    invoke-virtual { p0, p1 }, Landroid/widget/ImageView;->setClickable(Z)V
    if-ne p2, v1, :L14
    const/4 v0, 1
  :L14
  .line 23
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/AssistCmd;->b:Z
  :L15
    return-void
  :L16
  .packed-switch 2131296336
    :L8
    :L4
    :L7
    :L4
    :L6
    :L5
  .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
  .registers 6
  .line 1
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getAction()I
    move-result v0
    const/4 v1, 1
    if-eqz v0, :L0
    if-eq v0, v1, :L0
    const/4 v2, 3
    if-eq v0, v2, :L0
    goto :L1
  :L0
  .line 2
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/f;->b(Z)V
  :L1
  .line 3
    invoke-super { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/util/a;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    move-result p1
    return p1
.end method
