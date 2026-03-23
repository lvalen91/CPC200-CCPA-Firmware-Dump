.class Lcn/manstep/phonemirrorBox/v0/e$c$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/v0/e$c;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/v0/e$c;

.method constructor <init>(Lcn/manstep/phonemirrorBox/v0/e$c;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e$c$a;->a:Lcn/manstep/phonemirrorBox/v0/e$c;
    invoke-direct { p0 }, Landroid/content/BroadcastReceiver;-><init>()V
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
  .registers 7
  .line 1
    invoke-virtual { p2 }, Landroid/content/Intent;->getAction()Ljava/lang/String;
    move-result-object p1
    const-string v0, "cn.manstep.phonemirrorBox.AUTO_BOX_CONTROL_CMD_EVT"
    invoke-virtual { p1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L32
    const-string p1, "cn.manstep.phonemirrorBox.AUTO_BOX_CONTROL_CMD_DATA"
    const/4 v0, 0
  .line 2
    invoke-virtual { p2, p1, v0 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result p1
  .line 3
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Uilogic,onReceive: KeyControl: cmd = "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/16 v1, 2000
    if-eq p1, v1, :L31
    const/16 v1, 2001
    const/4 v2, 1
    if-eq p1, v1, :L30
    packed-switch p1, :L33
    const-string v1, ""
    const-string v3, "cn.manstep.phonemirrorBox.AUTO_BOX_CONTROL_CMD_DATA_STRING"
    packed-switch p1, :L34
    goto/16 :L32
  :L0
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e$c$a;->a:Lcn/manstep/phonemirrorBox/v0/e$c;
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/v0/e$c;->c:Lcn/manstep/phonemirrorBox/v0/e;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->i(Lcn/manstep/phonemirrorBox/v0/e;)V
    goto/16 :L32
  :L1
  .line 5
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz p1, :L32
    sget-boolean p1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z
    if-eqz p1, :L32
  .line 6
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->Q0()Z
    goto/16 :L32
  :L2
  .line 7
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz p1, :L32
    sget-boolean p1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z
    if-eqz p1, :L32
    const/16 p1, 25
  .line 8
    invoke-static { v2, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
  .line 9
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b1()Z
    goto/16 :L32
  :L3
  .line 10
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz p1, :L32
  .line 11
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->m0()Z
    goto/16 :L32
  :L4
  .line 12
    invoke-virtual { p2, v3 }, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
  .line 13
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "Uilogic,broadcastReceiverControl: Bluetooth Pin Code = "
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-static { p2 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    if-nez p1, :L5
    goto :L6
  :L5
    move-object v1, p1
  :L6
  .line 14
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e$c$a;->a:Lcn/manstep/phonemirrorBox/v0/e$c;
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/v0/e$c;->c:Lcn/manstep/phonemirrorBox/v0/e;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->h(Lcn/manstep/phonemirrorBox/v0/e;)Ljava/lang/ref/WeakReference;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/content/Context;
    invoke-static { p1, v1 }, Lcn/manstep/phonemirrorBox/b0;->y(Landroid/content/Context;Ljava/lang/String;)V
  .line 15
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result p1
    if-eqz p1, :L32
  .line 16
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz p1, :L32
  .line 17
    invoke-virtual { v1 }, Ljava/lang/String;->getBytes()[B
    move-result-object p2
    invoke-virtual { p1, p2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->p0([B)Z
    goto/16 :L32
  :L7
    const-string p1, "broadcastReceiverControl,AudioRecoder: Receive AUTO_BOX_CONTROL_CMD_RECORD_START"
  .line 18
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 19
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;
    if-eqz p1, :L32
  .line 20
    invoke-virtual { p1, v0 }, Ld/b/a/c;->j(Z)V
    goto/16 :L32
  :L8
  .line 21
    invoke-virtual { p2, v3 }, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
  .line 22
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "Uilogic,broadcastReceiverControl: sBluetooth = "
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-static { p2 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    if-nez p1, :L9
    goto :L10
  :L9
    move-object v1, p1
  :L10
  .line 23
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e$c$a;->a:Lcn/manstep/phonemirrorBox/v0/e$c;
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/v0/e$c;->c:Lcn/manstep/phonemirrorBox/v0/e;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->h(Lcn/manstep/phonemirrorBox/v0/e;)Ljava/lang/ref/WeakReference;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/content/Context;
    invoke-static { p1, v1 }, Lcn/manstep/phonemirrorBox/b0;->r(Landroid/content/Context;Ljava/lang/String;)V
  .line 24
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result p1
    if-eqz p1, :L32
  .line 25
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz p1, :L32
  .line 26
    invoke-virtual { v1 }, Ljava/lang/String;->getBytes()[B
    move-result-object p2
    invoke-virtual { p1, p2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->n0([B)Z
    goto/16 :L32
  :L11
    const/16 p1, 16
  .line 27
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto/16 :L32
  :L12
    const/16 p1, 17
  .line 28
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto/16 :L32
  :L13
    add-int/lit8 p1, p1, -30
    add-int/lit16 p1, p1, 400
  .line 29
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto/16 :L32
  :L14
    const/16 p1, 106
  .line 30
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto/16 :L32
  :L15
    add-int/lit8 p1, p1, -15
    add-int/lit16 p1, p1, 300
  .line 31
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto/16 :L32
  :L16
    const/16 p1, 205
  .line 32
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto/16 :L32
  :L17
    const/16 p1, 204
  .line 33
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto/16 :L32
  :L18
    const/16 p1, 203
  .line 34
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto/16 :L32
  :L19
    const/16 p1, 202
  .line 35
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto :L32
  :L20
    const/16 p1, 201
  .line 36
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto :L32
  :L21
    const/16 p1, 200
  .line 37
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto :L32
  :L22
    const/16 p1, 105
  .line 38
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto :L32
  :L23
    const/16 p1, 104
  .line 39
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto :L32
  :L24
    const/16 p1, 103
  .line 40
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto :L32
  :L25
    const/16 p1, 102
  .line 41
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto :L32
  :L26
    const/16 p1, 101
  .line 42
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto :L32
  :L27
    const/16 p1, 100
  .line 43
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto :L32
  :L28
    const/4 p1, 6
  .line 44
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto :L32
  :L29
    const/4 p1, 5
  .line 45
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto :L32
  :L30
  .line 46
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e$c$a;->a:Lcn/manstep/phonemirrorBox/v0/e$c;
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/v0/e$c;->c:Lcn/manstep/phonemirrorBox/v0/e;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->j(Lcn/manstep/phonemirrorBox/v0/e;)Landroid/os/Handler;
    move-result-object p1
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/v0/e$c$a;->a:Lcn/manstep/phonemirrorBox/v0/e$c;
    iget-object p2, p2, Lcn/manstep/phonemirrorBox/v0/e$c;->c:Lcn/manstep/phonemirrorBox/v0/e;
    invoke-static { p2 }, Lcn/manstep/phonemirrorBox/v0/e;->j(Lcn/manstep/phonemirrorBox/v0/e;)Landroid/os/Handler;
    move-result-object p2
    const/4 v0, 4
    const/16 v1, 39
    invoke-virtual { p2, v2, v0, v1 }, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
    move-result-object p2
    invoke-virtual { p1, p2 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto :L32
  :L31
    const/4 p1, -1
    const-string v0, "CMD"
  .line 47
    invoke-virtual { p2, v0, p1 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result p1
    if-ltz p1, :L32
  .line 48
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V
  :L32
    return-void
  :L33
  .packed-switch 1
    :L29
    :L28
    :L27
    :L26
    :L25
    :L24
    :L23
    :L22
    :L21
    :L20
    :L19
    :L18
    :L17
    :L16
    :L15
    :L15
    :L15
    :L15
    :L15
    :L15
    :L15
    :L15
    :L15
    :L15
    :L15
    :L15
    :L15
    :L15
    :L14
    :L13
    :L13
    :L13
    :L13
    :L12
    :L11
  .end packed-switch
  :L34
  .packed-switch 100
    :L8
    :L7
    :L4
    :L3
    :L2
    :L1
    :L0
  .end packed-switch
.end method
