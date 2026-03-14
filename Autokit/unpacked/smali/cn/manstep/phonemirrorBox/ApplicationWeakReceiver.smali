.class public Lcn/manstep/phonemirrorBox/ApplicationWeakReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Landroid/content/BroadcastReceiver;-><init>()V
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
  .registers 5
  .line 1
    invoke-virtual { p2 }, Landroid/content/Intent;->getAction()Ljava/lang/String;
    move-result-object v0
    const-string v1, "cn.manstep.phonemirrorBox.AUTO_BOX_WEAK"
  .line 2
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
    const/4 v0, 0
  .line 3
    invoke-virtual { p2, v1, v0 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result p2
    const/4 v1, 1
    if-nez p2, :L0
  .line 4
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/util/c0;->s(Landroid/content/Context;Z)V
  .line 5
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz p1, :L1
    sget-boolean p1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z
    if-eqz p1, :L1
    const/16 p1, 25
  .line 6
    invoke-static { v1, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
  .line 7
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b1()Z
    goto :L1
  :L0
    if-ne v1, p2, :L1
  .line 8
    invoke-static { p1, v1 }, Lcn/manstep/phonemirrorBox/util/c0;->s(Landroid/content/Context;Z)V
  :L1
    return-void
.end method
