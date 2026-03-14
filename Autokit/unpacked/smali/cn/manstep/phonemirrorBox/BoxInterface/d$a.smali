.class Lcn/manstep/phonemirrorBox/BoxInterface/d$a;
.super Landroid/os/Handler;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/BoxInterface/d;-><init>(Landroid/content/Context;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/BoxInterface/d;

.method constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/d;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d$a;->a:Lcn/manstep/phonemirrorBox/BoxInterface/d;
    invoke-direct { p0 }, Landroid/os/Handler;-><init>()V
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
  .registers 6
  .line 1
    iget v0, p1, Landroid/os/Message;->what:I
    const/4 v1, 2
    const/4 v2, 1
    if-ne v2, v0, :L8
  .line 2
    iget v0, p1, Landroid/os/Message;->arg1:I
    if-eqz v0, :L3
    if-eq v0, v1, :L2
    const/16 v1, 12
    if-eq v0, v1, :L1
    const/16 v1, 13
    if-eq v0, v1, :L0
    goto :L4
  :L0
    const-string v0, "EVT_OTG_PLUG_IN: startMirror"
  .line 3
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d$a;->a:Lcn/manstep/phonemirrorBox/BoxInterface/d;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->Z()V
    goto :L4
  :L1
    const-string v0, "EVT_OTG_PLUG_OUT: stopMirror"
  .line 5
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d$a;->a:Lcn/manstep/phonemirrorBox/BoxInterface/d;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->b0()V
    goto :L4
  :L2
    const-string v0, "EVT_IPHONE_PLUG_OUT"
  .line 7
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    goto :L4
  :L3
    const-string v0, "EVT_ANDROID_PLUG_OUT"
  .line 8
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L4
  .line 9
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->a()Ljava/util/List;
    move-result-object v0
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    if-gtz v0, :L5
  .line 10
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxInterface,handleMessage: MSG_PHASE mlisteners.size()="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->a()Ljava/util/List;
    move-result-object v1
    invoke-interface { v1 }, Ljava/util/List;->size()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L5
  .line 11
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->a()Ljava/util/List;
    move-result-object v0
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L6
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L14
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/BoxInterface/d$g;
  .line 12
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    if-nez v2, :L7
  .line 13
    iget v2, p1, Landroid/os/Message;->arg1:I
    invoke-interface { v1, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/d$g;->o(I)V
    goto :L6
  :L7
  .line 14
    iget v3, p1, Landroid/os/Message;->arg1:I
    invoke-interface { v1, v3, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/d$g;->a(ILjava/lang/Object;)V
    goto :L6
  :L8
    if-ne v1, v0, :L10
  .line 15
    iget v0, p1, Landroid/os/Message;->arg1:I
  .line 16
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->a()Ljava/util/List;
    move-result-object v0
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L9
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L14
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/BoxInterface/d$g;
  .line 17
    iget v2, p1, Landroid/os/Message;->arg1:I
    invoke-interface { v1, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/d$g;->c(I)V
    goto :L9
  :L10
    const/4 v1, 3
    if-ne v1, v0, :L11
    goto :L14
  :L11
    const/4 v2, 4
    if-ne v2, v0, :L12
  .line 18
    new-instance v0, Landroid/content/Intent;
    const-string v2, "cn.manstep.phonemirror.MirrorService.INTENT_MSG_OUT"
    invoke-direct { v0, v2 }, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    const-string v2, "WPARAM"
  .line 19
    invoke-virtual { v0, v2, v1 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
  .line 20
    iget p1, p1, Landroid/os/Message;->arg1:I
    const-string v1, "LPARAM"
    invoke-virtual { v0, v1, p1 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
  .line 21
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d$a;->a:Lcn/manstep/phonemirrorBox/BoxInterface/d;
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/content/Context;
    invoke-virtual { p1, v0 }, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    goto :L14
  :L12
    const/4 v1, 6
    if-ne v1, v0, :L14
  .line 22
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->a()Ljava/util/List;
    move-result-object v0
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L13
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L14
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/BoxInterface/d$g;
  .line 23
    iget v2, p1, Landroid/os/Message;->arg1:I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    invoke-interface { v1, v2, v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/d$g;->a(ILjava/lang/Object;)V
    goto :L13
  :L14
    return-void
.end method
