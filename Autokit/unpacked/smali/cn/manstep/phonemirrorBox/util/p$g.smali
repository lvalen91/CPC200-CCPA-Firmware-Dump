.class final Lcn/manstep/phonemirrorBox/util/p$g;
.super Landroid/os/Handler;
.source "SourceFile"

.annotation build Landroid/annotation/SuppressLint;
  value = {
    "HandlerLeak"
  }
.end annotation
.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/util/p;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 16
  name = "g"
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/util/p;

.method constructor <init>(Lcn/manstep/phonemirrorBox/util/p;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/p$g;->a:Lcn/manstep/phonemirrorBox/util/p;
    invoke-direct { p0 }, Landroid/os/Handler;-><init>()V
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
  .registers 5
  .line 1
    invoke-super { p0, p1 }, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/p$g;->a:Lcn/manstep/phonemirrorBox/util/p;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/p;->c(Lcn/manstep/phonemirrorBox/util/p;)Ljava/util/LinkedList;
    move-result-object v0
    iget v1, p1, Landroid/os/Message;->arg1:I
    invoke-virtual { v0, v1 }, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/util/p$e;
    if-eqz v0, :L5
  .line 3
    iget v1, p1, Landroid/os/Message;->what:I
    if-eqz v1, :L4
    const/4 v2, 1
    if-eq v1, v2, :L3
    const/4 v2, 2
    if-eq v1, v2, :L2
    const/4 v2, 3
    if-eq v1, v2, :L1
    const/4 v2, 4
    if-eq v1, v2, :L0
    goto :L5
  :L0
  .line 4
    check-cast v0, Lcn/manstep/phonemirrorBox/util/p$f;
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    check-cast p1, Ljava/lang/Long;
    invoke-virtual { p1 }, Ljava/lang/Long;->longValue()J
    move-result-wide v1
    invoke-interface { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/util/p$f;->d(J)V
    goto :L5
  :L1
  .line 5
    check-cast v0, Lcn/manstep/phonemirrorBox/util/p$f;
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    check-cast p1, Ljava/lang/Long;
    invoke-virtual { p1 }, Ljava/lang/Long;->longValue()J
    move-result-wide v1
    invoke-interface { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/util/p$f;->e(J)V
    goto :L5
  :L2
  .line 6
    check-cast v0, Lcn/manstep/phonemirrorBox/util/p$f;
    invoke-interface { v0 }, Lcn/manstep/phonemirrorBox/util/p$f;->a()V
    goto :L5
  :L3
  .line 7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    check-cast p1, Ljava/lang/String;
    invoke-interface { v0, p1 }, Lcn/manstep/phonemirrorBox/util/p$e;->b(Ljava/lang/String;)V
    goto :L5
  :L4
  .line 8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    check-cast p1, Ljava/lang/String;
    invoke-interface { v0, p1 }, Lcn/manstep/phonemirrorBox/util/p$e;->c(Ljava/lang/String;)V
  :L5
    return-void
.end method
