.class Lcn/manstep/phonemirrorBox/MirrorService$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/MirrorService;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/MirrorService;

.method constructor <init>(Lcn/manstep/phonemirrorBox/MirrorService;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MirrorService$a;->a:Lcn/manstep/phonemirrorBox/MirrorService;
    invoke-direct { p0 }, Landroid/content/BroadcastReceiver;-><init>()V
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
  .registers 4
  .line 1
    invoke-virtual { p2 }, Landroid/content/Intent;->getAction()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    invoke-virtual { p2 }, Landroid/content/Intent;->getAction()Ljava/lang/String;
    move-result-object p1
    const-string v0, "cn.manstep.phonemirror.MirrorService.INTENT_MSG_IN"
    invoke-virtual { p1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L3
    const-string p1, "Action"
  .line 3
    invoke-virtual { p2, p1 }, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    if-eqz p1, :L3
    const-string p2, "onResume"
  .line 4
    invoke-virtual { p1, p2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p2
    const/4 v0, 1
    if-eqz p2, :L0
  .line 5
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/v0/e;->Q(Z)V
    goto :L3
  :L0
    const-string p2, "onStop"
  .line 6
    invoke-virtual { p1, p2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p2
    if-eqz p2, :L1
    const/4 p1, 0
  .line 7
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->Q(Z)V
    goto :L3
  :L1
    const-string p2, "onDestroy"
  .line 8
    invoke-virtual { p1, p2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p2
    if-eqz p2, :L2
  .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MirrorService$a;->a:Lcn/manstep/phonemirrorBox/MirrorService;
    invoke-virtual { p1 }, Landroid/app/Service;->stopSelf()V
    goto :L3
  :L2
    const-string p2, "OnRestart"
  .line 10
    invoke-virtual { p1, p2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L3
    const/4 p1, 3
  .line 11
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->x(I)V
    const/4 p1, 4
  .line 12
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->x(I)V
  .line 13
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/v0/e;->Q(Z)V
  :L3
    return-void
.end method
