.class final Lcn/manstep/phonemirrorBox/widget/b$a;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnTouchListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/widget/b;->b(Landroid/view/View;)Landroid/view/View;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = null
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
  .registers 9
  .line 1
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getAction()I
    move-result v0
    const/4 v1, 1
    if-eqz v0, :L3
    const/high16 v2, 16256
    if-eq v0, v1, :L1
    const/4 p2, 3
    if-eq v0, p2, :L0
    const/4 p1, 0
    return p1
  :L0
  .line 2
    invoke-virtual { p1, v2 }, Landroid/view/View;->setAlpha(F)V
    goto :L4
  :L1
  .line 3
    invoke-virtual { p1, v2 }, Landroid/view/View;->setAlpha(F)V
  .line 4
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getEventTime()J
    move-result-wide v2
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getDownTime()J
    move-result-wide v4
    sub-long/2addr v2, v4
    const-wide/16 v4, 1000
    cmp-long p2, v2, v4
    if-lez p2, :L2
  .line 5
    invoke-virtual { p1 }, Landroid/view/View;->performLongClick()Z
    move-result p2
    if-nez p2, :L4
  .line 6
    invoke-virtual { p1 }, Landroid/view/View;->performClick()Z
    goto :L4
  :L2
  .line 7
    invoke-virtual { p1 }, Landroid/view/View;->performClick()Z
    goto :L4
  :L3
    const/high16 p2, 16128
  .line 8
    invoke-virtual { p1, p2 }, Landroid/view/View;->setAlpha(F)V
  :L4
    return v1
.end method
