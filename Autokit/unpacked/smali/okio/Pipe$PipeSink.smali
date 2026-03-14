.class final Lokio/Pipe$PipeSink;
.super Ljava/lang/Object;
.implements Lokio/Sink;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokio/Pipe;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 16
  name = "PipeSink"
.end annotation

.field final synthetic this$0:Lokio/Pipe;

.field final timeout:Lokio/Timeout;

.method constructor <init>(Lokio/Pipe;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance p1, Lokio/Timeout;
    invoke-direct { p1 }, Lokio/Timeout;-><init>()V
    iput-object p1, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/Timeout;
    return-void
.end method

.method public close()V
  .catchall { :L0 .. :L5 } :L4
  .registers 7
  .line 1
    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;
    iget-object v0, v0, Lokio/Pipe;->buffer:Lokio/Buffer;
    monitor-enter v0
  :L0
  .line 2
    iget-object v1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;
    iget-boolean v1, v1, Lokio/Pipe;->sinkClosed:Z
    if-eqz v1, :L1
    monitor-exit v0
    return-void
  :L1
  .line 3
    iget-object v1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;
    iget-boolean v1, v1, Lokio/Pipe;->sourceClosed:Z
    if-eqz v1, :L3
    iget-object v1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;
    iget-object v1, v1, Lokio/Pipe;->buffer:Lokio/Buffer;
    invoke-virtual { v1 }, Lokio/Buffer;->size()J
    move-result-wide v1
    const-wide/16 v3, 0
    cmp-long v5, v1, v3
    if-gtz v5, :L2
    goto :L3
  :L2
    new-instance v1, Ljava/io/IOException;
    const-string v2, "source is closed"
    invoke-direct { v1, v2 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v1
  :L3
  .line 4
    iget-object v1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;
    const/4 v2, 1
    iput-boolean v2, v1, Lokio/Pipe;->sinkClosed:Z
  .line 5
    iget-object v1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;
    iget-object v1, v1, Lokio/Pipe;->buffer:Lokio/Buffer;
    invoke-virtual { v1 }, Ljava/lang/Object;->notifyAll()V
  .line 6
    monitor-exit v0
    return-void
  :L4
    move-exception v1
    monitor-exit v0
  :L5
    throw v1
.end method

.method public flush()V
  .catchall { :L0 .. :L5 } :L4
  .registers 7
  .line 1
    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;
    iget-object v0, v0, Lokio/Pipe;->buffer:Lokio/Buffer;
    monitor-enter v0
  :L0
  .line 2
    iget-object v1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;
    iget-boolean v1, v1, Lokio/Pipe;->sinkClosed:Z
    if-nez v1, :L3
  .line 3
    iget-object v1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;
    iget-boolean v1, v1, Lokio/Pipe;->sourceClosed:Z
    if-eqz v1, :L2
    iget-object v1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;
    iget-object v1, v1, Lokio/Pipe;->buffer:Lokio/Buffer;
    invoke-virtual { v1 }, Lokio/Buffer;->size()J
    move-result-wide v1
    const-wide/16 v3, 0
    cmp-long v5, v1, v3
    if-gtz v5, :L1
    goto :L2
  :L1
    new-instance v1, Ljava/io/IOException;
    const-string v2, "source is closed"
    invoke-direct { v1, v2 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v1
  :L2
  .line 4
    monitor-exit v0
    return-void
  :L3
  .line 5
    new-instance v1, Ljava/lang/IllegalStateException;
    const-string v2, "closed"
    invoke-direct { v1, v2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v1
  :L4
    move-exception v1
  .line 6
    monitor-exit v0
  :L5
    throw v1
.end method

.method public timeout()Lokio/Timeout;
  .registers 2
  .line 1
    iget-object v0, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/Timeout;
    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
  .catchall { :L0 .. :L7 } :L6
  .registers 11
  .line 1
    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;
    iget-object v0, v0, Lokio/Pipe;->buffer:Lokio/Buffer;
    monitor-enter v0
  :L0
  .line 2
    iget-object v1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;
    iget-boolean v1, v1, Lokio/Pipe;->sinkClosed:Z
    if-nez v1, :L5
  :L1
    const-wide/16 v1, 0
    cmp-long v3, p2, v1
    if-lez v3, :L4
  .line 3
    iget-object v3, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;
    iget-boolean v3, v3, Lokio/Pipe;->sourceClosed:Z
    if-nez v3, :L3
  .line 4
    iget-object v3, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;
    iget-wide v3, v3, Lokio/Pipe;->maxBufferSize:J
    iget-object v5, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;
    iget-object v5, v5, Lokio/Pipe;->buffer:Lokio/Buffer;
    invoke-virtual { v5 }, Lokio/Buffer;->size()J
    move-result-wide v5
    sub-long/2addr v3, v5
    cmp-long v5, v3, v1
    if-nez v5, :L2
  .line 5
    iget-object v1, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/Timeout;
    iget-object v2, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;
    iget-object v2, v2, Lokio/Pipe;->buffer:Lokio/Buffer;
    invoke-virtual { v1, v2 }, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V
    goto :L1
  :L2
  .line 6
    invoke-static { v3, v4, p2, p3 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v1
  .line 7
    iget-object v3, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;
    iget-object v3, v3, Lokio/Pipe;->buffer:Lokio/Buffer;
    invoke-virtual { v3, p1, v1, v2 }, Lokio/Buffer;->write(Lokio/Buffer;J)V
    sub-long/2addr p2, v1
  .line 8
    iget-object v1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;
    iget-object v1, v1, Lokio/Pipe;->buffer:Lokio/Buffer;
    invoke-virtual { v1 }, Ljava/lang/Object;->notifyAll()V
    goto :L1
  :L3
  .line 9
    new-instance p1, Ljava/io/IOException;
    const-string p2, "source is closed"
    invoke-direct { p1, p2 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
  :L4
  .line 10
    monitor-exit v0
    return-void
  :L5
  .line 11
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L6
    move-exception p1
  .line 12
    monitor-exit v0
  :L7
    goto :L9
  :L8
    throw p1
  :L9
    goto :L8
.end method
