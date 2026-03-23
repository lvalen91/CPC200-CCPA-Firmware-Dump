.class Lcn/manstep/phonemirrorBox/BoxInterface/d$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/BoxInterface/d;->Y()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/BoxInterface/d;

.method constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/d;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d$c;->a:Lcn/manstep/phonemirrorBox/BoxInterface/d;
    invoke-direct { p0 }, Landroid/content/BroadcastReceiver;-><init>()V
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
  .registers 3
  .line 1
    invoke-virtual { p2 }, Landroid/content/Intent;->getAction()Ljava/lang/String;
    move-result-object p1
    const-string p2, "cn.manstep.phonemirror.USB_PERMISSION"
  .line 2
    invoke-virtual { p2, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L0
    const-string p1, "User have clicked USB_PERMISSION dialog"
  .line 3
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d$c;->a:Lcn/manstep/phonemirrorBox/BoxInterface/d;
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    invoke-static { p1, p2 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d(Lcn/manstep/phonemirrorBox/BoxInterface/d;Ljava/lang/Boolean;)Ljava/lang/Boolean;
  :L0
    return-void
.end method
