.class final Lokio/Pipe$PipeSource;
.super Ljava/lang/Object;
.implements Lokio/Source;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokio/Pipe;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 16
  name = "PipeSource"
.end annotation

.field final synthetic this$0:Lokio/Pipe;

.field final timeout:Lokio/Timeout;

.method constructor <init>(Lokio/Pipe;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance p1, Lokio/Timeout;
    invoke-direct { p1 }, Lokio/Timeout;-><init>()V
    iput-object p1, p0, Lokio/Pipe$PipeSource;->timeout:Lokio/Timeout;
    return-void
.end method

.method public close()V
  .catchall { :L0 .. :L2 } :L1
  .registers 4
  .line 1
    iget-object v0, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;
    iget-object v0, v0, Lokio/Pipe;->buffer:Lokio/Buffer;
    monitor-enter v0
  :L0
  .line 2
    iget-object v1, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;
    const/4 v2, 1
    iput-boolean v2, v1, Lokio/Pipe;->sourceClosed:Z
  .line 3
    iget-object v1, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;
    iget-object v1, v1, Lokio/Pipe;->buffer:Lokio/Buffer;
    invoke-virtual { v1 }, Ljava/lang/Object;->notifyAll()V
  .line 4
    monitor-exit v0
    return-void
  :L1
    move-exception v1
    monitor-exit v0
  :L2
    throw v1
.end method

.method public read(Lokio/Buffer;J)J
  .catchall { :L0 .. :L6 } :L5
  .registers 10
  .line 1
    iget-object v0, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;
    iget-object v0, v0, Lokio/Pipe;->buffer:Lokio/Buffer;
    monitor-enter v0
  :L0
  .line 2
    iget-object v1, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;
    iget-boolean v1, v1, Lokio/Pipe;->sourceClosed:Z
    if-nez v1, :L4
  :L1
  .line 3
    iget-object v1, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;
    iget-object v1, v1, Lokio/Pipe;->buffer:Lokio/Buffer;
    invoke-virtual { v1 }, Lokio/Buffer;->size()J
    move-result-wide v1
    const-wide/16 v3, 0
    cmp-long v5, v1, v3
    if-nez v5, :L3
  .line 4
    iget-object v1, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;
    iget-boolean v1, v1, Lokio/Pipe;->sinkClosed:Z
    if-eqz v1, :L2
    const-wide/16 p1, -1
    monitor-exit v0
    return-wide p1
  :L2
  .line 5
    iget-object v1, p0, Lokio/Pipe$PipeSource;->timeout:Lokio/Timeout;
    iget-object v2, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;
    iget-object v2, v2, Lokio/Pipe;->buffer:Lokio/Buffer;
    invoke-virtual { v1, v2 }, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V
    goto :L1
  :L3
  .line 6
    iget-object v1, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;
    iget-object v1, v1, Lokio/Pipe;->buffer:Lokio/Buffer;
    invoke-virtual { v1, p1, p2, p3 }, Lokio/Buffer;->read(Lokio/Buffer;J)J
    move-result-wide p1
  .line 7
    iget-object p3, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;
    iget-object p3, p3, Lokio/Pipe;->buffer:Lokio/Buffer;
    invoke-virtual { p3 }, Ljava/lang/Object;->notifyAll()V
  .line 8
    monitor-exit v0
    return-wide p1
  :L4
  .line 9
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L5
    move-exception p1
  .line 10
    monitor-exit v0
  :L6
    goto :L8
  :L7
    throw p1
  :L8
    goto :L7
.end method

.method public timeout()Lokio/Timeout;
  .registers 2
  .line 1
    iget-object v0, p0, Lokio/Pipe$PipeSource;->timeout:Lokio/Timeout;
    return-object v0
.end method
