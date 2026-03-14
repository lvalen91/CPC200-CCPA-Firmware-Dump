.class Lcn/manstep/phonemirrorBox/l0/p$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/l0/p;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/l0/p;

.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/p;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/p$c;->a:Lcn/manstep/phonemirrorBox/l0/p;
    invoke-direct { p0 }, Landroid/content/BroadcastReceiver;-><init>()V
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
  .registers 4
  .line 1
    invoke-virtual { p2 }, Landroid/content/Intent;->getAction()Ljava/lang/String;
    move-result-object p1
    const-string v0, "cn.manstep.phonemirror.USB_PERMISSION"
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L1
    const/4 p1, 0
    const-string v0, "permission"
  .line 2
    invoke-virtual { p2, v0, p1 }, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    move-result p1
  .line 3
    invoke-virtual { p2 }, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
    move-result-object p2
    const/4 v0, 0
    if-eqz p2, :L0
    const-string v0, "device"
  .line 4
    invoke-virtual { p2, v0 }, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p2
    move-object v0, p2
    check-cast v0, Landroid/hardware/usb/UsbDevice;
  :L0
  .line 5
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l0/p$c;->a:Lcn/manstep/phonemirrorBox/l0/p;
    invoke-static { p2 }, Lcn/manstep/phonemirrorBox/l0/p;->i2(Lcn/manstep/phonemirrorBox/l0/p;)Lcn/manstep/phonemirrorBox/util/l;
    move-result-object p2
    invoke-virtual { p2, v0, p1 }, Lcn/manstep/phonemirrorBox/util/l;->u(Landroid/hardware/usb/UsbDevice;Z)V
  :L1
    return-void
.end method
