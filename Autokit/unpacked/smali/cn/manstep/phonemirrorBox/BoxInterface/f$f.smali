.class Lcn/manstep/phonemirrorBox/BoxInterface/f$f;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/BoxInterface/f;->Y0()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/BoxInterface/f;

.method constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catchall { :L0 .. :L1 } :L2
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->o(Lcn/manstep/phonemirrorBox/BoxInterface/f;)Ljava/util/concurrent/atomic/AtomicBoolean;
    move-result-object v0
    const/4 v1, 0
    const/4 v2, 1
    invoke-virtual { v0, v1, v2 }, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    move-result v0
    if-eqz v0, :L3
  :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->X0()Z
  :L1
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->o(Lcn/manstep/phonemirrorBox/BoxInterface/f;)Ljava/util/concurrent/atomic/AtomicBoolean;
    move-result-object v0
    invoke-virtual { v0, v1 }, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    goto :L4
  :L2
    move-exception v0
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$f;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->o(Lcn/manstep/phonemirrorBox/BoxInterface/f;)Ljava/util/concurrent/atomic/AtomicBoolean;
    move-result-object v2
    invoke-virtual { v2, v1 }, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
  .line 4
    throw v0
  :L3
    const-string v0, "BoxProtocol"
    const-string v1, "send_g_open_async->run: send_g_open() is already running. Ignoring this call."
  .line 5
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/util/s;->p(Ljava/lang/String;Ljava/lang/String;)V
  :L4
    return-void
.end method
