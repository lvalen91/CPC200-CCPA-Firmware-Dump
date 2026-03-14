.class Lcn/manstep/phonemirrorBox/BoxInterface/a$b;
.super Ljava/lang/Thread;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/BoxInterface/a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "b"
.end annotation

.field private b:Landroid/os/Handler;

.method private constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/a;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Thread;-><init>()V
    const/4 p1, 0
  .line 2
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a$b;->b:Landroid/os/Handler;
    return-void
.end method

.method synthetic constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/a;Lcn/manstep/phonemirrorBox/BoxInterface/a$a;)V
  .registers 3
  .line 3
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a$b;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/a;)V
    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/BoxInterface/a$b;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a$b;->b()V
    return-void
.end method

.method private b()V
  .catchall { :L0 .. :L4 } :L3
  .registers 2
  .line 1
    monitor-enter p0
  :L0
  .line 2
    invoke-virtual { p0 }, Ljava/lang/Thread;->isAlive()Z
    move-result v0
    if-eqz v0, :L2
  .line 3
    invoke-static { }, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
    move-result-object v0
    if-eqz v0, :L1
  .line 4
    invoke-static { }, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/os/Looper;->quit()V
  :L1
    const/4 v0, 0
  .line 5
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a$b;->b:Landroid/os/Handler;
  :L2
  .line 6
    invoke-virtual { p0 }, Ljava/lang/Object;->notify()V
  .line 7
    monitor-exit p0
    return-void
  :L3
    move-exception v0
    monitor-exit p0
  :L4
    throw v0
.end method

.method public c()Landroid/os/Handler;
  .catchall { :L0 .. :L1 } :L8
  .catch Ljava/lang/InterruptedException; { :L2 .. :L3 } :L4
  .catchall { :L2 .. :L3 } :L8
  .catchall { :L5 .. :L7 } :L8
  .catchall { :L9 .. :L10 } :L8
  .registers 2
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a$b;->b:Landroid/os/Handler;
  :L1
    if-nez v0, :L6
  :L2
  .line 3
    invoke-virtual { p0 }, Ljava/lang/Object;->wait()V
  :L3
    goto :L6
  :L4
    move-exception v0
  :L5
  .line 4
    invoke-virtual { v0 }, Ljava/lang/InterruptedException;->printStackTrace()V
  .line 5
    invoke-static { v0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L6
  .line 6
    monitor-exit p0
  :L7
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a$b;->b:Landroid/os/Handler;
    return-object v0
  :L8
    move-exception v0
  :L9
  .line 8
    monitor-exit p0
  :L10
    throw v0
.end method

.method public d()V
  .catch Ljava/lang/InterruptedException; { :L0 .. :L1 } :L2
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a$b;->b:Landroid/os/Handler;
    if-eqz v0, :L0
    const/4 v1, 1
  .line 2
    invoke-static { v0, v1 }, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
  :L0
  .line 3
    invoke-virtual { p0 }, Ljava/lang/Thread;->join()V
  :L1
    goto :L3
  :L2
    move-exception v0
  .line 4
    invoke-virtual { v0 }, Ljava/lang/InterruptedException;->printStackTrace()V
  .line 5
    invoke-static { v0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L3
    return-void
.end method

.method public run()V
  .catchall { :L0 .. :L1 } :L2
  .catchall { :L3 .. :L4 } :L2
  .registers 2
    const/16 v0, -19
  .line 1
    invoke-static { v0 }, Landroid/os/Process;->setThreadPriority(I)V
  .line 2
    monitor-enter p0
  :L0
  .line 3
    invoke-static { }, Landroid/os/Looper;->prepare()V
  .line 4
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/a$b$a;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a$b$a;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/a$b;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a$b;->b:Landroid/os/Handler;
  .line 5
    invoke-virtual { p0 }, Ljava/lang/Object;->notify()V
  .line 6
    monitor-exit p0
  :L1
  .line 7
    invoke-static { }, Landroid/os/Looper;->loop()V
    return-void
  :L2
    move-exception v0
  :L3
  .line 8
    monitor-exit p0
  :L4
    throw v0
.end method
