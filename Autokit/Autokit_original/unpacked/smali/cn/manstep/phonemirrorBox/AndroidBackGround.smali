.class public Lcn/manstep/phonemirrorBox/AndroidBackGround;
.super Landroid/view/View;
.source "SourceFile"

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    const/4 p1, 1
  .line 2
    invoke-virtual { p0, p1 }, Landroid/view/View;->setClickable(Z)V
  .line 3
    new-instance p1, Lcn/manstep/phonemirrorBox/AndroidBackGround$a;
    invoke-direct { p1, p0 }, Lcn/manstep/phonemirrorBox/AndroidBackGround$a;-><init>(Lcn/manstep/phonemirrorBox/AndroidBackGround;)V
    invoke-virtual { p0, p1 }, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "ClickableViewAccessibility"
    }
  .end annotation
  .registers 2
    const/4 p1, 0
    return p1
.end method
