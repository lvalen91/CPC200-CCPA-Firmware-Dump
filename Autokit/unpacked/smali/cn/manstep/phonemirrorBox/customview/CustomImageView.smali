.class public Lcn/manstep/phonemirrorBox/customview/CustomImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"

.field private d:I

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    const/4 p1, 0
  .line 2
    iput p1, p0, Lcn/manstep/phonemirrorBox/customview/CustomImageView;->d:I
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
  .registers 8
  .line 1
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getAction()I
    move-result v0
    const/4 v1, 1
    if-eqz v0, :L4
    if-eq v0, v1, :L1
    const/4 v2, 3
    if-eq v0, v2, :L0
  .line 2
    invoke-super { p0, p1 }, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    move-result p1
    return p1
  :L0
  .line 3
    iget p1, p0, Lcn/manstep/phonemirrorBox/customview/CustomImageView;->d:I
    invoke-virtual { p0, p1 }, Landroid/widget/ImageView;->setImageAlpha(I)V
    goto :L5
  :L1
  .line 4
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getEventTime()J
    move-result-wide v2
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getDownTime()J
    move-result-wide v4
    sub-long/2addr v2, v4
    const-wide/16 v4, 1000
    cmp-long p1, v2, v4
    if-lez p1, :L2
  .line 5
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/customview/CustomImageView;->performLongClick()Z
    goto :L3
  :L2
  .line 6
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/customview/CustomImageView;->performClick()Z
  :L3
  .line 7
    iget p1, p0, Lcn/manstep/phonemirrorBox/customview/CustomImageView;->d:I
    invoke-virtual { p0, p1 }, Landroid/widget/ImageView;->setImageAlpha(I)V
    goto :L5
  :L4
  .line 8
    invoke-virtual { p0 }, Landroid/widget/ImageView;->getImageAlpha()I
    move-result p1
    iput p1, p0, Lcn/manstep/phonemirrorBox/customview/CustomImageView;->d:I
    const/16 p1, 150
  .line 9
    invoke-virtual { p0, p1 }, Landroid/widget/ImageView;->setImageAlpha(I)V
  :L5
    return v1
.end method

.method public performClick()Z
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/widget/ImageView;->performClick()Z
    move-result v0
    return v0
.end method

.method public performLongClick()Z
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/widget/ImageView;->performLongClick()Z
    move-result v0
    return v0
.end method
