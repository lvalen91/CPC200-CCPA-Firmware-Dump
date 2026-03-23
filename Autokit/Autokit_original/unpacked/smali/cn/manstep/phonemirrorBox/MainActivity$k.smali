.class Lcn/manstep/phonemirrorBox/MainActivity$k;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/MainActivity;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/MainActivity;

.method constructor <init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$k;->a:Lcn/manstep/phonemirrorBox/MainActivity;
    invoke-direct { p0 }, Landroid/content/BroadcastReceiver;-><init>()V
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
  .registers 4
  .line 1
    invoke-virtual { p2 }, Landroid/content/Intent;->getAction()Ljava/lang/String;
    move-result-object p1
    const-string v0, "GoMainActivity.BroadcastReceiver.action"
  .line 2
    invoke-virtual { p1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L0
    const/4 p1, 1
    const-string v0, "GoMainActivity.BroadcastReceiver.data"
  .line 3
    invoke-virtual { p2, v0, p1 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result p1
  .line 4
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "MainActivity, goMainActivityReceiver: mode = "
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-static { p2 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 5
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/MainActivity$k;->a:Lcn/manstep/phonemirrorBox/MainActivity;
    iput p1, p2, Lcn/manstep/phonemirrorBox/MainActivity;->v:I
    const/4 v0, 0
  .line 6
    invoke-static { p2, p1, v0 }, Lcn/manstep/phonemirrorBox/MainActivity;->n0(Lcn/manstep/phonemirrorBox/MainActivity;IZ)V
  :L0
    return-void
.end method
