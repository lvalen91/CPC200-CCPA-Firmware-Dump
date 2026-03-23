.class public Lcn/manstep/phonemirrorBox/androidOffscreenView;
.super Landroid/widget/TextView;
.implements Lcn/manstep/phonemirrorBox/BoxInterface/d$g;
.source "SourceFile"

.field b:Z

.field c:Landroid/os/Handler;

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    const/4 p1, 1
  .line 2
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/androidOffscreenView;->b:Z
  .line 3
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/v0/e;->M(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)Lcn/manstep/phonemirrorBox/BoxInterface/d;
  .line 4
    new-instance p1, Lcn/manstep/phonemirrorBox/androidOffscreenView$a;
    invoke-direct { p1, p0 }, Lcn/manstep/phonemirrorBox/androidOffscreenView$a;-><init>(Lcn/manstep/phonemirrorBox/androidOffscreenView;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/androidOffscreenView;->c:Landroid/os/Handler;
    return-void
.end method

.method public a(ILjava/lang/Object;)V
  .registers 3
    return-void
.end method

.method public c(I)V
  .registers 2
    return-void
.end method

.method public n(Lcn/manstep/phonemirrorBox/BoxInterface/d;)V
  .registers 2
    return-void
.end method

.method public o(I)V
  .registers 3
    const/16 v0, 14
    if-eq p1, v0, :L0
    goto :L1
  :L0
    const/4 p1, 0
  .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/androidOffscreenView;->b:Z
    const/16 p1, 8
  .line 2
    invoke-virtual { p0, p1 }, Landroid/widget/TextView;->setVisibility(I)V
  :L1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
  .registers 4
  .line 1
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v0
    if-nez v0, :L0
    const/4 v0, 3
    const/4 v1, 0
  .line 2
    invoke-static { v0, v1, v1, v1 }, Lcn/manstep/phonemirrorBox/v0/e;->L(IIII)V
  :L0
  .line 3
    invoke-super { p0, p1 }, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    move-result p1
    return p1
.end method

.method public v([B)V
  .registers 3
  .line 1
    invoke-static { p1 }, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    move-result-object p1
  .line 2
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;
    invoke-virtual { p1, v0 }, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    const/16 v0, 24
  .line 3
    invoke-virtual { p1, v0 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result p1
    const v0, 65535
    and-int/2addr p1, v0
    const/16 v0, 10
    if-ne p1, v0, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
  .line 4
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/androidOffscreenView;->b:Z
    if-eq p1, v0, :L2
  .line 5
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/androidOffscreenView;->b:Z
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/androidOffscreenView;->c:Landroid/os/Handler;
    invoke-virtual { v0, p1 }, Landroid/os/Handler;->sendEmptyMessage(I)Z
  :L2
    return-void
.end method
