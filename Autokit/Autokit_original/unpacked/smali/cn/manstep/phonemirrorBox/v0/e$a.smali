.class Lcn/manstep/phonemirrorBox/v0/e$a;
.super Landroid/os/Handler;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/v0/e;-><init>(Landroid/content/Context;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/v0/e;

.method constructor <init>(Lcn/manstep/phonemirrorBox/v0/e;Landroid/os/Looper;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e$a;->a:Lcn/manstep/phonemirrorBox/v0/e;
    invoke-direct { p0, p2 }, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
  .registers 5
  .line 1
    iget v0, p1, Landroid/os/Message;->what:I
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e$a;->a:Lcn/manstep/phonemirrorBox/v0/e;
    iget p1, p1, Landroid/os/Message;->arg1:I
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/v0/e;->k(Lcn/manstep/phonemirrorBox/v0/e;I)V
    goto :L4
  :L0
    const/4 v1, 1
    if-ne v1, v0, :L4
    const/4 v0, 0
  .line 3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    if-eqz v1, :L3
  .line 4
    instance-of v2, v1, Ljava/lang/Integer;
    if-eqz v2, :L1
  .line 5
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual { v1 }, Ljava/lang/Integer;->intValue()I
    move-result v0
    goto :L3
  :L1
  .line 6
    instance-of v2, v1, Landroid/os/Bundle;
    if-eqz v2, :L2
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e$a;->a:Lcn/manstep/phonemirrorBox/v0/e;
    iget v2, p1, Landroid/os/Message;->arg1:I
    iget p1, p1, Landroid/os/Message;->arg2:I
    check-cast v1, Landroid/os/Bundle;
    invoke-static { v0, v2, p1, v1 }, Lcn/manstep/phonemirrorBox/v0/e;->l(Lcn/manstep/phonemirrorBox/v0/e;IILandroid/os/Bundle;)V
    return-void
  :L2
  .line 8
    instance-of v2, v1, Ljava/lang/String;
    if-eqz v2, :L3
  .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e$a;->a:Lcn/manstep/phonemirrorBox/v0/e;
    iget v2, p1, Landroid/os/Message;->arg1:I
    iget p1, p1, Landroid/os/Message;->arg2:I
    check-cast v1, Ljava/lang/String;
    invoke-static { v0, v2, p1, v1 }, Lcn/manstep/phonemirrorBox/v0/e;->m(Lcn/manstep/phonemirrorBox/v0/e;IILjava/lang/String;)V
    return-void
  :L3
  .line 10
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e$a;->a:Lcn/manstep/phonemirrorBox/v0/e;
    iget v2, p1, Landroid/os/Message;->arg1:I
    iget p1, p1, Landroid/os/Message;->arg2:I
    invoke-static { v1, v2, p1, v0 }, Lcn/manstep/phonemirrorBox/v0/e;->p(Lcn/manstep/phonemirrorBox/v0/e;III)V
  :L4
    return-void
.end method
