.class public Lcn/manstep/phonemirrorBox/u0/d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Landroid/content/BroadcastReceiver;-><init>()V
    return-void
.end method

.method private a(I)V
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "ZlinkReceiver,onKeyDown: cmd="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/4 v0, 1
    if-eq p1, v0, :L18
    const/4 v0, 2
    if-eq p1, v0, :L17
    const/4 v0, 4
    if-eq p1, v0, :L16
    const/4 v0, 5
    if-eq p1, v0, :L15
    const/4 v1, 6
    if-eq p1, v1, :L14
    const/16 v2, 19
    if-eq p1, v2, :L13
    const/16 v2, 20
    if-eq p1, v2, :L12
    const/16 v2, 66
    if-eq p1, v2, :L11
    const/16 v2, 85
    if-eq p1, v2, :L10
    const/16 v2, 87
    if-eq p1, v2, :L9
    const/16 v2, 88
    if-eq p1, v2, :L8
    const/16 v2, 126
    if-eq p1, v2, :L7
    const/16 v2, 127
    if-eq p1, v2, :L6
    packed-switch p1, :L20
    packed-switch p1, :L21
    goto/16 :L19
  :L0
    const/16 p1, 200
  .line 2
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V
    goto/16 :L19
  :L1
    const/16 p1, 403
  .line 3
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V
    goto/16 :L19
  :L2
    const/16 p1, 402
  .line 4
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V
    goto/16 :L19
  :L3
    const/16 p1, 401
  .line 5
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V
    goto :L19
  :L4
    const/16 p1, 400
  .line 6
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V
    goto :L19
  :L5
  .line 7
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V
  .line 8
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V
    goto :L19
  :L6
    const/16 p1, 202
  .line 9
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V
    goto :L19
  :L7
    const/16 p1, 201
  .line 10
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V
    goto :L19
  :L8
    const/16 p1, 205
  .line 11
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V
    goto :L19
  :L9
    const/16 p1, 204
  .line 12
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V
    goto :L19
  :L10
    const/16 p1, 203
  .line 13
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V
    goto :L19
  :L11
    const/16 p1, 104
  .line 14
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V
    const/16 p1, 105
  .line 15
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V
    goto :L19
  :L12
    const/16 p1, 103
  .line 16
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V
    goto :L19
  :L13
    const/16 p1, 102
  .line 17
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V
    goto :L19
  :L14
    const/16 p1, 301
  .line 18
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V
    goto :L19
  :L15
    const/16 p1, 300
  .line 19
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V
    goto :L19
  :L16
    const/16 p1, 106
  .line 20
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V
    goto :L19
  :L17
    const/16 p1, 101
  .line 21
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V
    goto :L19
  :L18
    const/16 p1, 100
  .line 22
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V
  :L19
    return-void
  :L20
  .packed-switch 1500
    :L5
    :L18
    :L17
  .end packed-switch
  :L21
  .packed-switch 1504
    :L4
    :L3
    :L2
    :L1
    :L0
  .end packed-switch
.end method

.method public b(Landroid/content/Context;)V
  .registers 4
  .line 1
    new-instance v0, Landroid/content/IntentFilter;
    invoke-direct { v0 }, Landroid/content/IntentFilter;-><init>()V
    const-string v1, "com.zjinnova.zlink"
  .line 2
    invoke-virtual { v0, v1 }, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    const-string v1, "com.zjinnova.zlink.action.BACKCAR_START"
  .line 3
    invoke-virtual { v0, v1 }, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    const-string v1, "com.zjinnova.zlink.action.BACKCAR_STOP"
  .line 4
    invoke-virtual { v0, v1 }, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    const-string v1, "com.zjinnova.zlink.action.OUT_DARK_START"
  .line 5
    invoke-virtual { v0, v1 }, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    const-string v1, "com.zjinnova.zlink.action.OUT_DARK_STOP"
  .line 6
    invoke-virtual { v0, v1 }, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
  .line 7
    invoke-virtual { p1, p0, v0 }, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    return-void
.end method

.method public c(Landroid/content/Context;)V
  .registers 2
  .line 1
    invoke-virtual { p1, p0 }, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
  .registers 7
  .line 1
    invoke-virtual { p2 }, Landroid/content/Intent;->getAction()Ljava/lang/String;
    move-result-object p1
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "ZlinkReceiver,onReceive: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    if-eqz p1, :L7
    const/4 v0, -1
  .line 3
    invoke-virtual { p1 }, Ljava/lang/String;->hashCode()I
    move-result v1
    const/4 v2, 0
    const/4 v3, 4
    sparse-switch v1, :L8
    goto :L5
  :L0
    const-string v1, "com.zjinnova.zlink.action.OUT_DARK_START"
    invoke-virtual { p1, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L5
    const/4 v0, 0
    goto :L5
  :L1
    const-string v1, "com.zjinnova.zlink.action.OUT_DARK_STOP"
    invoke-virtual { p1, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L5
    const/4 v0, 1
    goto :L5
  :L2
    const-string v1, "com.zjinnova.zlink"
    invoke-virtual { p1, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L5
    const/4 v0, 4
    goto :L5
  :L3
    const-string v1, "com.zjinnova.zlink.action.BACKCAR_STOP"
    invoke-virtual { p1, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L5
    const/4 v0, 3
    goto :L5
  :L4
    const-string v1, "com.zjinnova.zlink.action.BACKCAR_START"
    invoke-virtual { p1, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L5
    const/4 v0, 2
  :L5
    if-eq v0, v3, :L6
    goto :L7
  :L6
    const-string p1, "command"
  .line 4
    invoke-virtual { p2, p1 }, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    const-string v0, "REQ_SPEC_FUNC_CMD"
  .line 5
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L7
    const-string p1, "specFuncCode"
  .line 6
    invoke-virtual { p2, p1, v2 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result p1
  .line 7
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/u0/d;->a(I)V
  :L7
    return-void
  :L8
  .sparse-switch
    448328082 -> :L4
    568651954 -> :L3
    978935124 -> :L2
    1023038972 -> :L1
    1649423752 -> :L0
  .end sparse-switch
.end method
