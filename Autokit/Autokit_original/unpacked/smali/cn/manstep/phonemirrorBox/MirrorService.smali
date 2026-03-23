.class public Lcn/manstep/phonemirrorBox/MirrorService;
.super Landroid/app/Service;
.implements Lcn/manstep/phonemirrorBox/v0/e$d;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/MirrorService$b;
  }
.end annotation

.field private final b:Landroid/os/IBinder;

.field c:Landroid/content/BroadcastReceiver;

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Landroid/app/Service;-><init>()V
  .line 2
    new-instance v0, Lcn/manstep/phonemirrorBox/MirrorService$b;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/MirrorService$b;-><init>(Lcn/manstep/phonemirrorBox/MirrorService;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MirrorService;->b:Landroid/os/IBinder;
  .line 3
    new-instance v0, Lcn/manstep/phonemirrorBox/MirrorService$a;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/MirrorService$a;-><init>(Lcn/manstep/phonemirrorBox/MirrorService;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MirrorService;->c:Landroid/content/BroadcastReceiver;
    return-void
.end method

.method public g(III)V
  .registers 6
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "MirrorService "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, " "
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 2
    new-instance p1, Landroid/content/Intent;
    const-string p3, "cn.manstep.phonemirror.MirrorService.INTENT_MSG_OUT"
    invoke-direct { p1, p3 }, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    const-string p3, "WPARAM"
    const/4 v0, 1
  .line 3
    invoke-virtual { p1, p3, v0 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    const-string p3, "LPARAM"
  .line 4
    invoke-virtual { p1, p3, p2 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
  .line 5
    invoke-virtual { p0, p1 }, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
  .registers 3
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MirrorService;->b:Landroid/os/IBinder;
    if-eqz p1, :L0
    return-object p1
  :L0
  .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    const-string v0, "Not yet implemented"
    invoke-direct { p1, v0 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public onCreate()V
  .registers 3
  .line 1
    invoke-super { p0 }, Landroid/app/Service;->onCreate()V
    const-string v0, "Serivice onCreate"
  .line 2
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 3
    new-instance v0, Landroid/content/IntentFilter;
    invoke-direct { v0 }, Landroid/content/IntentFilter;-><init>()V
    const-string v1, "cn.manstep.phonemirror.MirrorService.INTENT_MSG_IN"
  .line 4
    invoke-virtual { v0, v1 }, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
  .line 5
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MirrorService;->c:Landroid/content/BroadcastReceiver;
    invoke-virtual { p0, v1, v0 }, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
  .line 6
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/v0/e;->B(Landroid/content/Context;)V
  .line 7
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/v0/e;->O(Lcn/manstep/phonemirrorBox/v0/e$d;)V
    const/4 v0, 1
  .line 8
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/v0/e;->Q(Z)V
    return-void
.end method

.method public onDestroy()V
  .registers 2
    const-string v0, "Serivice onDestroy"
  .line 1
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/e;->F()V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MirrorService;->c:Landroid/content/BroadcastReceiver;
    invoke-virtual { p0, v0 }, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
  .line 4
    invoke-super { p0 }, Landroid/app/Service;->onDestroy()V
    return-void
.end method

.method public s(IILandroid/os/Bundle;)V
  .registers 4
    return-void
.end method

.method public x(IILjava/lang/String;)V
  .registers 4
    return-void
.end method
