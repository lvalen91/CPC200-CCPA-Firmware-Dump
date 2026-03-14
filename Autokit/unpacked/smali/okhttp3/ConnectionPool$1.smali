.class Lokhttp3/ConnectionPool$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/ConnectionPool;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lokhttp3/ConnectionPool;

.method constructor <init>(Lokhttp3/ConnectionPool;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lokhttp3/ConnectionPool$1;->this$0:Lokhttp3/ConnectionPool;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catch Ljava/lang/InterruptedException; { :L2 .. :L3 } :L5
  .catchall { :L2 .. :L3 } :L4
  .catchall { :L5 .. :L7 } :L4
  .registers 7
  :L0
  .line 1
    iget-object v0, p0, Lokhttp3/ConnectionPool$1;->this$0:Lokhttp3/ConnectionPool;
    invoke-static { }, Ljava/lang/System;->nanoTime()J
    move-result-wide v1
    invoke-virtual { v0, v1, v2 }, Lokhttp3/ConnectionPool;->cleanup(J)J
    move-result-wide v0
    const-wide/16 v2, -1
    cmp-long v4, v0, v2
    if-nez v4, :L1
    return-void
  :L1
    const-wide/16 v2, 0
    cmp-long v4, v0, v2
    if-lez v4, :L0
    const-wide/32 v2, 1000000
  .line 2
    div-long v4, v0, v2
    mul-long v2, v2, v4
    sub-long/2addr v0, v2
  .line 3
    iget-object v2, p0, Lokhttp3/ConnectionPool$1;->this$0:Lokhttp3/ConnectionPool;
    monitor-enter v2
  :L2
  .line 4
    iget-object v3, p0, Lokhttp3/ConnectionPool$1;->this$0:Lokhttp3/ConnectionPool;
    long-to-int v1, v0
    invoke-virtual { v3, v4, v5, v1 }, Ljava/lang/Object;->wait(JI)V
  :L3
    goto :L5
  :L4
    move-exception v0
    goto :L6
  :L5
  .line 5
    monitor-exit v2
    goto :L0
  :L6
    monitor-exit v2
  :L7
    goto :L9
  :L8
    throw v0
  :L9
    goto :L8
.end method
