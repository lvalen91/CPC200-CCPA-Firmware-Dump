.class Lcn/manstep/phonemirrorBox/BoxInterface/f$e;
.super Ljava/util/TimerTask;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/BoxInterface/f;->v1()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/BoxInterface/f;

.method constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$e;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-direct { p0 }, Ljava/util/TimerTask;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$e;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->s(Lcn/manstep/phonemirrorBox/BoxInterface/f;)Z
    move-result v0
    if-eqz v0, :L0
    const-string v0, "bThreadExit "
  .line 2
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$e;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->l(Lcn/manstep/phonemirrorBox/BoxInterface/f;)Ljava/util/concurrent/ScheduledExecutorService;
    move-result-object v0
    invoke-interface { v0 }, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$e;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    const/4 v1, 0
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->m(Lcn/manstep/phonemirrorBox/BoxInterface/f;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;
    return-void
  :L0
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$e;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    const/16 v1, 170
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->n(Lcn/manstep/phonemirrorBox/BoxInterface/f;I)Z
    move-result v0
    if-eqz v0, :L1
    const-string v0, "send heart beat Start"
  .line 6
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V
    goto :L2
  :L1
    const-string v0, "send heart beat err"
  .line 7
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L2
    return-void
.end method
