.class public Lcn/manstep/phonemirrorBox/EmptyActivity;
.super Lcn/manstep/phonemirrorBox/k;
.source "SourceFile"

.method static constructor <clinit>()V
  .registers 2
    const v0, 1471
    invoke-static { v0 }, Lcom/stub/StubApp;->interface11(I)V
    return-void
.end method

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/k;-><init>()V
    return-void
.end method

.method private n0()V
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v0
    const/16 v1, 51
  .line 2
    invoke-virtual { v0, v1 }, Landroid/view/Window;->setGravity(I)V
  .line 3
    invoke-virtual { v0 }, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;
    move-result-object v1
    const/4 v2, 0
  .line 4
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I
  .line 5
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I
    const/4 v2, 1
  .line 6
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I
  .line 7
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I
    const/4 v2, 0
  .line 8
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F
  .line 9
    invoke-virtual { v0, v1 }, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    const/16 v1, 2003
  .line 10
    invoke-virtual { v0, v1 }, Landroid/view/Window;->setType(I)V
    const/16 v1, 32
  .line 11
    invoke-virtual { v0, v1, v1 }, Landroid/view/Window;->setFlags(II)V
    const/high16 v1, 4
  .line 12
    invoke-virtual { v0, v1, v1 }, Landroid/view/Window;->setFlags(II)V
  .line 13
    invoke-virtual { v0, v2 }, Landroid/view/Window;->setDimAmount(F)V
    return-void
.end method

.method public finish()V
  .registers 2
    const v0, 2130771982
  .line 1
    invoke-virtual { p0, v0, v0 }, Landroid/app/Activity;->overridePendingTransition(II)V
  .line 2
    invoke-super { p0 }, Lcn/manstep/phonemirrorBox/k;->finish()V
    return-void
.end method

.method protected native onCreate(Landroid/os/Bundle;)V
.end method

.method protected onDestroy()V
  .registers 2
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/q;->g()Lcn/manstep/phonemirrorBox/q;
    move-result-object v0
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/q;->l(Landroid/app/Activity;)V
  .line 2
    invoke-super { p0 }, Lcn/manstep/phonemirrorBox/k;->onDestroy()V
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
  .registers 4
  .line 1
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getAction()I
    move-result v0
    const/4 v1, 4
    if-ne v1, v0, :L0
    const/4 v0, 1
  .line 2
    invoke-virtual { p0, v0 }, Landroid/app/Activity;->moveTaskToBack(Z)Z
  :L0
  .line 3
    invoke-super { p0, p1 }, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z
    move-result p1
    return p1
.end method
