.class Lcn/manstep/phonemirrorBox/x0/k$f;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/x0/k;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/x0/k;

.method constructor <init>(Lcn/manstep/phonemirrorBox/x0/k;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/k$f;->a:Lcn/manstep/phonemirrorBox/x0/k;
    invoke-direct { p0 }, Landroid/content/BroadcastReceiver;-><init>()V
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
  .registers 3
  .line 1
    invoke-virtual { p2 }, Landroid/content/Intent;->getAction()Ljava/lang/String;
    move-result-object p1
    const-string p2, "android.intent.action.LOCALE_CHANGED"
    invoke-virtual { p1, p2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L0
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/k$f;->a:Lcn/manstep/phonemirrorBox/x0/k;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/x0/k;->z()Landroidx/lifecycle/o;
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/k$f;->a:Lcn/manstep/phonemirrorBox/x0/k;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/x0/k;->j(Lcn/manstep/phonemirrorBox/x0/k;)V
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/k$f;->a:Lcn/manstep/phonemirrorBox/x0/k;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/x0/k;->v()Landroidx/lifecycle/o;
  :L0
    return-void
.end method
