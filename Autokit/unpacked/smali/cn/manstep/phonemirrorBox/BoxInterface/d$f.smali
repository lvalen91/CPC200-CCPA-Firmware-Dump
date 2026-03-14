.class Lcn/manstep/phonemirrorBox/BoxInterface/d$f;
.super Ljava/util/TimerTask;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/BoxInterface/d;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = "f"
.end annotation

.field private b:Z

.field private c:I

.field final synthetic d:Lcn/manstep/phonemirrorBox/BoxInterface/d;

.method constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/d;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d$f;->d:Lcn/manstep/phonemirrorBox/BoxInterface/d;
    invoke-direct { p0 }, Ljava/util/TimerTask;-><init>()V
    const/4 p1, 0
  .line 2
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d$f;->b:Z
  .line 3
    iput p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d$f;->c:I
    return-void
.end method

.method public run()V
  .registers 8
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->e()Lcn/manstep/phonemirrorBox/BoxInterface/j;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/j;->l()Z
    move-result v0
  .line 2
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d$f;->b:Z
    const/16 v2, 13
    const/16 v3, 12
    const/4 v4, 0
    const/4 v5, 1
    if-eq v0, v1, :L3
  .line 3
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "BoxInterface,DetectUsbTask sendMsg  usbConnected="
    invoke-virtual { v1, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 4
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d$f;->b:Z
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->f()Landroid/os/Handler;
    move-result-object v1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->f()Landroid/os/Handler;
    move-result-object v6
    if-eqz v0, :L0
    goto :L1
  :L0
    const/16 v2, 12
  :L1
    invoke-virtual { v6, v5, v2, v4 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v2
    invoke-virtual { v1, v2 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    if-nez v0, :L2
    const/4 v0, -1
  .line 6
    sput v0, Lcn/manstep/phonemirrorBox/p;->r:I
  .line 7
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz v0, :L2
  .line 8
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b0()V
  :L2
    return-void
  :L3
    if-nez v0, :L5
  .line 9
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d$f;->d:Lcn/manstep/phonemirrorBox/BoxInterface/d;
    iget-object v1, v1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/content/Context;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/f;->c(Landroid/content/Context;)Z
    move-result v1
    if-eqz v1, :L4
    return-void
  :L4
  .line 10
    iget v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d$f;->c:I
    add-int/2addr v1, v5
    iput v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d$f;->c:I
  .line 11
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d$f;->d:Lcn/manstep/phonemirrorBox/BoxInterface/d;
    invoke-virtual { v6, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->n(I)V
    goto :L6
  :L5
  .line 12
    iput v4, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d$f;->c:I
  :L6
  .line 13
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d$f;->b:Z
    if-eq v0, v1, :L9
  .line 14
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d$f;->b:Z
  .line 15
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->f()Landroid/os/Handler;
    move-result-object v1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->f()Landroid/os/Handler;
    move-result-object v6
    if-eqz v0, :L7
    goto :L8
  :L7
    const/16 v2, 12
  :L8
    invoke-virtual { v6, v5, v2, v4 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object v0
    invoke-virtual { v1, v0 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
  :L9
    return-void
.end method
