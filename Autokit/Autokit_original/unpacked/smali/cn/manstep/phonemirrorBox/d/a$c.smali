.class Lcn/manstep/phonemirrorBox/d/a$c;
.super Landroid/os/Handler;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/d/a;-><init>(Landroid/content/Context;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/d/a;

.method constructor <init>(Lcn/manstep/phonemirrorBox/d/a;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/d/a$c;->a:Lcn/manstep/phonemirrorBox/d/a;
    invoke-direct { p0 }, Landroid/os/Handler;-><init>()V
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
  .registers 7
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "AndroidInterface msg:"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, " come"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    iget v0, p1, Landroid/os/Message;->what:I
    const/4 v1, 1
    if-ne v1, v0, :L4
  .line 3
    iget v0, p1, Landroid/os/Message;->arg1:I
    const-string v2, "WPARAM"
    const-string v3, "cn.manstep.hidetitle"
    if-eqz v0, :L1
    if-eq v0, v1, :L0
    goto :L2
  :L0
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d/a$c;->a:Lcn/manstep/phonemirrorBox/d/a;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/d/a;->k()V
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d/a$c;->a:Lcn/manstep/phonemirrorBox/d/a;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/d/a;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    if-eqz v0, :L2
  .line 6
    new-instance v1, Landroid/content/Intent;
    invoke-direct { v1, v3 }, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    const/4 v3, 0
  .line 7
    invoke-virtual { v1, v2, v3 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
  .line 8
    invoke-virtual { v0, v1 }, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    goto :L2
  :L1
  .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d/a$c;->a:Lcn/manstep/phonemirrorBox/d/a;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/d/a;->m()V
  .line 10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d/a$c;->a:Lcn/manstep/phonemirrorBox/d/a;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/d/a;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    if-eqz v0, :L2
  .line 11
    new-instance v4, Landroid/content/Intent;
    invoke-direct { v4, v3 }, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
  .line 12
    invoke-virtual { v4, v2, v1 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
  .line 13
    invoke-virtual { v0, v4 }, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
  :L2
  .line 14
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d/a$c;->a:Lcn/manstep/phonemirrorBox/d/a;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/d/a;->d(Lcn/manstep/phonemirrorBox/d/a;)Ljava/util/List;
    move-result-object v0
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L4
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/d/a$d;
  .line 15
    iget v2, p1, Landroid/os/Message;->arg1:I
    invoke-interface { v1, v2 }, Lcn/manstep/phonemirrorBox/d/a$d;->b(I)V
    goto :L3
  :L4
    return-void
.end method
