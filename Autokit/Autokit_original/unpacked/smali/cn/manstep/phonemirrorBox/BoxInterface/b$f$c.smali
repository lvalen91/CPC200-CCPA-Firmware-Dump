.class Lcn/manstep/phonemirrorBox/BoxInterface/b$f$c;
.super Ljava/util/TimerTask;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/BoxInterface/b$f;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = "c"
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/BoxInterface/b$f;

.method constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$f;
    invoke-direct { p0 }, Ljava/util/TimerTask;-><init>()V
    return-void
.end method

.method public run()V
  .catchall { :L0 .. :L2 } :L1
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$f;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->h(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;)Ljava/lang/Object;
    move-result-object v0
    monitor-enter v0
  :L0
  .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$f;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->i(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;)V
  .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f$c;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$f;
    const/4 v2, 0
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->j(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;Ljava/util/Timer;)Ljava/util/Timer;
  .line 4
    monitor-exit v0
    return-void
  :L1
    move-exception v1
    monitor-exit v0
  :L2
    throw v1
.end method
