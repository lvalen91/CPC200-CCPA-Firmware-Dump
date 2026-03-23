.class Lcn/manstep/phonemirrorBox/BoxInterface/b$f$b;
.super Ljava/util/TimerTask;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/BoxInterface/b$f;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "b"
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/util/TimerTask;-><init>()V
    return-void
.end method

.method public run()V
  .catch Ljava/lang/InterruptedException; { :L0 .. :L1 } :L2
  .registers 3
  .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->h:Z
    if-eqz v0, :L4
    const-string v0, "Send control cmd for get new frame!!!"
  .line 2
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    const/16 v0, 101
  .line 3
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    const-wide/16 v0, 100
  :L0
  .line 4
    invoke-static { v0, v1 }, Ljava/lang/Thread;->sleep(J)V
  :L1
    goto :L3
  :L2
    move-exception v0
  .line 5
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    const-string v1, "BoxCarPlay"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  :L3
    const/16 v0, 100
  .line 6
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
  :L4
    return-void
.end method
