.class Lcn/manstep/phonemirrorBox/BoxInterface/f$b;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/BoxInterface/f;-><init>(Landroid/content/Context;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/BoxInterface/f;

.method constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$b;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catch Ljava/lang/InterruptedException; { :L0 .. :L2 } :L3
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "iosAudioThread_ id="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { }, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Thread;->getId()J
    move-result-wide v1
    invoke-virtual { v0, v1, v2 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    const/16 v0, -19
  .line 2
    invoke-static { v0 }, Landroid/os/Process;->setThreadPriority(I)V
  :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$b;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->s(Lcn/manstep/phonemirrorBox/BoxInterface/f;)Z
    move-result v0
    if-nez v0, :L4
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$b;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->g(Lcn/manstep/phonemirrorBox/BoxInterface/f;)Lcn/manstep/phonemirrorBox/BoxInterface/f$h;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;->a()Lcn/manstep/phonemirrorBox/BoxInterface/f$l;
    move-result-object v0
    if-eqz v0, :L0
  .line 5
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$b;->b:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->h(Lcn/manstep/phonemirrorBox/BoxInterface/f;)Ljava/util/List;
    move-result-object v1
    invoke-interface { v1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L1
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L0
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcn/manstep/phonemirrorBox/BoxInterface/a;
  .line 6
    invoke-virtual { v2, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->t(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)V
  :L2
    goto :L1
  :L3
    move-exception v0
  .line 7
    invoke-static { v0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L4
    return-void
.end method
