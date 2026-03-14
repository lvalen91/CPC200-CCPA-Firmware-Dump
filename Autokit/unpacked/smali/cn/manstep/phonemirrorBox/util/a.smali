.class public Lcn/manstep/phonemirrorBox/util/a;
.super Landroid/widget/ImageView;
.implements Landroid/view/View$OnTouchListener;
.source "SourceFile"

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .line 2
    invoke-virtual { p0, p0 }, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
  .registers 5
  .line 1
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getAction()I
    move-result p2
    const/4 v0, 1
    if-eqz p2, :L1
    if-eq p2, v0, :L0
    const/4 v1, 3
    if-eq p2, v1, :L0
    const/4 p1, 0
    return p1
  :L0
  .line 2
    invoke-virtual { p1 }, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object p2
    const/high16 v1, 16256
    invoke-virtual { p2, v1 }, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;
  .line 3
    invoke-virtual { p1 }, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    invoke-virtual { p1, v1 }, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;
  .line 4
    invoke-virtual { p0 }, Landroid/widget/ImageView;->callOnClick()Z
    return v0
  :L1
  .line 5
    invoke-virtual { p1 }, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object p2
    const/high16 v1, 16320
    invoke-virtual { p2, v1 }, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;
  .line 6
    invoke-virtual { p1 }, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object p1
    invoke-virtual { p1, v1 }, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;
    return v0
.end method
