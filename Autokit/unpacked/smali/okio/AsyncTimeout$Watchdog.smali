.class final Lokio/AsyncTimeout$Watchdog;
.super Ljava/lang/Thread;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokio/AsyncTimeout;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 26
  name = "Watchdog"
.end annotation

.method constructor <init>()V
  .registers 2
    const-string v0, "Okio Watchdog"
  .line 1
    invoke-direct { p0, v0 }, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V
    const/4 v0, 1
  .line 2
    invoke-virtual { p0, v0 }, Ljava/lang/Thread;->setDaemon(Z)V
    return-void
.end method

.method public run()V
  .catch Ljava/lang/InterruptedException; { :L0 .. :L1 } :L0
  .catchall { :L1 .. :L4 } :L6
  .catch Ljava/lang/InterruptedException; { :L4 .. :L5 } :L0
  .catchall { :L7 .. :L8 } :L6
  .catch Ljava/lang/InterruptedException; { :L8 .. :L9 } :L0
  .registers 4
  :L0
  .line 1
    const-class v0, Lokio/AsyncTimeout;
    monitor-enter v0
  :L1
  .line 2
    invoke-static { }, Lokio/AsyncTimeout;->awaitTimeout()Lokio/AsyncTimeout;
    move-result-object v1
    if-nez v1, :L2
  .line 3
    monitor-exit v0
    goto :L0
  :L2
  .line 4
    sget-object v2, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;
    if-ne v1, v2, :L3
    const/4 v1, 0
  .line 5
    sput-object v1, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;
  .line 6
    monitor-exit v0
    return-void
  :L3
  .line 7
    monitor-exit v0
  :L4
  .line 8
    invoke-virtual { v1 }, Lokio/AsyncTimeout;->timedOut()V
  :L5
    goto :L0
  :L6
    move-exception v1
  :L7
  .line 9
    monitor-exit v0
  :L8
    goto :L10
  :L9
    throw v1
  :L10
    goto :L9
.end method
