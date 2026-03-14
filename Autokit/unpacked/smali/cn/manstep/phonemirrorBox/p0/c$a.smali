.class Lcn/manstep/phonemirrorBox/p0/c$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/p0/c;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/p0/c;

.method constructor <init>(Lcn/manstep/phonemirrorBox/p0/c;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c$a;->a:Lcn/manstep/phonemirrorBox/p0/c;
    invoke-direct { p0 }, Landroid/content/BroadcastReceiver;-><init>()V
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
  .registers 5
    if-nez p2, :L0
    return-void
  :L0
  .line 1
    invoke-virtual { p2 }, Landroid/content/Intent;->getAction()Ljava/lang/String;
    move-result-object p1
    if-nez p1, :L1
    return-void
  :L1
    const-string v0, "cn.manstep.phonemirror.MirrorService.INTENT_MSG_OUT"
  .line 2
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L9
    const-string p1, "WPARAM"
    const/4 v0, 0
  .line 3
    invoke-virtual { p2, p1, v0 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result p1
    const-string v1, "LPARAM"
  .line 4
    invoke-virtual { p2, v1, v0 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result p2
  .line 5
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "MainPresenter,onReceive: Msgcome:WPARAM:"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, " LPARAM:"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/4 v0, 2
    if-ne p1, v0, :L2
    const-string p1, "MainPresenter,onReceive: get EVT_TEST_QUIT, then finish"
  .line 6
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c$a;->a:Lcn/manstep/phonemirrorBox/p0/c;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/p0/c;->a(Lcn/manstep/phonemirrorBox/p0/c;)Lcn/manstep/phonemirrorBox/p0/b;
    move-result-object p1
    invoke-interface { p1 }, Lcn/manstep/phonemirrorBox/p0/b;->o()V
    goto/16 :L9
  :L2
    const/4 v0, 1
    if-ne v0, p1, :L3
  .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c$a;->a:Lcn/manstep/phonemirrorBox/p0/c;
    invoke-static { p1, p2 }, Lcn/manstep/phonemirrorBox/p0/c;->b(Lcn/manstep/phonemirrorBox/p0/c;I)V
    goto :L9
  :L3
    const/4 v0, 3
    if-ne v0, p1, :L4
  .line 9
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "MainPresenter,onReceive: EVT_BACK_HOME: "
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c$a;->a:Lcn/manstep/phonemirrorBox/p0/c;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/p0/c;->a(Lcn/manstep/phonemirrorBox/p0/c;)Lcn/manstep/phonemirrorBox/p0/b;
    move-result-object p1
    invoke-interface { p1, p2 }, Lcn/manstep/phonemirrorBox/p0/b;->p(I)V
    goto :L9
  :L4
    const/4 v0, 7
    if-ne v0, p1, :L5
  .line 11
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c$a;->a:Lcn/manstep/phonemirrorBox/p0/c;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/p0/c;->a(Lcn/manstep/phonemirrorBox/p0/c;)Lcn/manstep/phonemirrorBox/p0/b;
    move-result-object p1
    invoke-interface { p1 }, Lcn/manstep/phonemirrorBox/p0/b;->a()V
    goto :L9
  :L5
    const/4 v0, 6
    if-ne v0, p1, :L6
  .line 12
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c$a;->a:Lcn/manstep/phonemirrorBox/p0/c;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/p0/c;->C()V
    goto :L9
  :L6
    const/4 v0, 4
    if-ne v0, p1, :L7
  .line 13
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c$a;->a:Lcn/manstep/phonemirrorBox/p0/c;
    invoke-static { p1, p2 }, Lcn/manstep/phonemirrorBox/p0/c;->c(Lcn/manstep/phonemirrorBox/p0/c;I)V
    goto :L9
  :L7
    const/4 v0, 5
    if-ne v0, p1, :L8
  .line 14
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "MainPresenter,onReceive: Uilogic: EVT_SET_PERMISSION_UILOG: "
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 15
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c$a;->a:Lcn/manstep/phonemirrorBox/p0/c;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/p0/c;->a(Lcn/manstep/phonemirrorBox/p0/c;)Lcn/manstep/phonemirrorBox/p0/b;
    move-result-object p1
    invoke-interface { p1 }, Lcn/manstep/phonemirrorBox/p0/b;->u()V
    goto :L9
  :L8
    const/16 v0, 8
    if-ne v0, p1, :L9
  .line 16
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c$a;->a:Lcn/manstep/phonemirrorBox/p0/c;
    invoke-virtual { p1, p2 }, Lcn/manstep/phonemirrorBox/p0/c;->k(I)V
  :L9
    return-void
.end method
