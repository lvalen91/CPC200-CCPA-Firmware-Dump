.class Lcn/manstep/phonemirrorBox/l0/o$h;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/l0/o;->l2(Landroid/content/Context;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/l0/o;

.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/o;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o$h;->a:Lcn/manstep/phonemirrorBox/l0/o;
    invoke-direct { p0 }, Landroid/content/BroadcastReceiver;-><init>()V
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
  .registers 4
  .line 1
    invoke-virtual { p2 }, Landroid/content/Intent;->getAction()Ljava/lang/String;
    move-result-object p1
  .line 2
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "onReceive: "
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    const-string v0, "DebugFragment"
    invoke-static { v0, p2 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 3
    invoke-virtual { p1 }, Ljava/lang/String;->hashCode()I
    move-result p2
    sparse-switch p2, :L11
    goto :L10
  :L0
    const-string p2, "android.intent.action.MEDIA_BAD_REMOVAL"
  :L1
    invoke-virtual { p1, p2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    goto :L10
  :L2
    const-string p2, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"
    goto :L1
  :L3
    const-string p2, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"
    goto :L1
  :L4
    const-string p2, "android.intent.action.MEDIA_EJECT"
    goto :L1
  :L5
    const-string p2, "android.intent.action.MEDIA_UNMOUNTED"
    goto :L1
  :L6
    const-string p2, "android.intent.action.MEDIA_MOUNTED"
    goto :L1
  :L7
    const-string p2, "android.hardware.usb.action.USB_DEVICE_DETACHED"
    goto :L1
  :L8
    const-string p2, "android.intent.action.MEDIA_REMOVED"
    goto :L1
  :L9
    const-string p2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"
    goto :L1
  :L10
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o$h;->a:Lcn/manstep/phonemirrorBox/l0/o;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/l0/o;->k2(Lcn/manstep/phonemirrorBox/l0/o;)V
    return-void
  :L11
  .sparse-switch
    -2114103349 -> :L9
    -1665311200 -> :L8
    -1608292967 -> :L7
    -1514214344 -> :L6
    -963871873 -> :L5
    -625887599 -> :L4
    1099555123 -> :L3
    1605365505 -> :L2
    2045140818 -> :L0
  .end sparse-switch
.end method
