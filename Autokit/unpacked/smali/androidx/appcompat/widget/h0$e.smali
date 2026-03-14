.class Landroidx/appcompat/widget/h0$e;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnTouchListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/h0;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "e"
.end annotation

.field final synthetic b:Landroidx/appcompat/widget/h0;

.method constructor <init>(Landroidx/appcompat/widget/h0;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/h0$e;->b:Landroidx/appcompat/widget/h0;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
  .registers 5
  .line 1
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getAction()I
    move-result p1
  .line 2
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getX()F
    move-result v0
    float-to-int v0, v0
  .line 3
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getY()F
    move-result p2
    float-to-int p2, p2
    if-nez p1, :L0
  .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/h0$e;->b:Landroidx/appcompat/widget/h0;
    iget-object v1, v1, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;
    if-eqz v1, :L0
  .line 5
    invoke-virtual { v1 }, Landroid/widget/PopupWindow;->isShowing()Z
    move-result v1
    if-eqz v1, :L0
    if-ltz v0, :L0
    iget-object v1, p0, Landroidx/appcompat/widget/h0$e;->b:Landroidx/appcompat/widget/h0;
    iget-object v1, v1, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;
  .line 6
    invoke-virtual { v1 }, Landroid/widget/PopupWindow;->getWidth()I
    move-result v1
    if-ge v0, v1, :L0
    if-ltz p2, :L0
    iget-object v0, p0, Landroidx/appcompat/widget/h0$e;->b:Landroidx/appcompat/widget/h0;
    iget-object v0, v0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;
    invoke-virtual { v0 }, Landroid/widget/PopupWindow;->getHeight()I
    move-result v0
    if-ge p2, v0, :L0
  .line 7
    iget-object p1, p0, Landroidx/appcompat/widget/h0$e;->b:Landroidx/appcompat/widget/h0;
    iget-object p2, p1, Landroidx/appcompat/widget/h0;->B:Landroid/os/Handler;
    iget-object p1, p1, Landroidx/appcompat/widget/h0;->x:Landroidx/appcompat/widget/h0$f;
    const-wide/16 v0, 250
    invoke-virtual { p2, p1, v0, v1 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    goto :L1
  :L0
    const/4 p2, 1
    if-ne p1, p2, :L1
  .line 8
    iget-object p1, p0, Landroidx/appcompat/widget/h0$e;->b:Landroidx/appcompat/widget/h0;
    iget-object p2, p1, Landroidx/appcompat/widget/h0;->B:Landroid/os/Handler;
    iget-object p1, p1, Landroidx/appcompat/widget/h0;->x:Landroidx/appcompat/widget/h0$f;
    invoke-virtual { p2, p1 }, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
  :L1
    const/4 p1, 0
    return p1
.end method
