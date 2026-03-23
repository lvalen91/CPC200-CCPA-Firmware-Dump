.class final Lokhttp3/internal/ws/WebSocketWriter$FrameSink;
.super Ljava/lang/Object;
.implements Lokio/Sink;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/internal/ws/WebSocketWriter;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 16
  name = "FrameSink"
.end annotation

.field closed:Z

.field contentLength:J

.field formatOpcode:I

.field isFirstFrame:Z

.field final synthetic this$0:Lokhttp3/internal/ws/WebSocketWriter;

.method constructor <init>(Lokhttp3/internal/ws/WebSocketWriter;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public close()V
  .registers 8
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z
    if-nez v0, :L0
  .line 2
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;
    iget v2, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I
    iget-object v0, v1, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;
    invoke-virtual { v0 }, Lokio/Buffer;->size()J
    move-result-wide v3
    iget-boolean v5, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z
    const/4 v6, 1
    invoke-virtual/range { v1 .. v6 }, Lokhttp3/internal/ws/WebSocketWriter;->writeMessageFrame(IJZZ)V
    const/4 v0, 1
  .line 3
    iput-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z
  .line 4
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;
    const/4 v1, 0
    iput-boolean v1, v0, Lokhttp3/internal/ws/WebSocketWriter;->activeWriter:Z
    return-void
  :L0
  .line 5
    new-instance v0, Ljava/io/IOException;
    const-string v1, "closed"
    invoke-direct { v0, v1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public flush()V
  .registers 8
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z
    if-nez v0, :L0
  .line 2
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;
    iget v2, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I
    iget-object v0, v1, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;
    invoke-virtual { v0 }, Lokio/Buffer;->size()J
    move-result-wide v3
    iget-boolean v5, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z
    const/4 v6, 0
    invoke-virtual/range { v1 .. v6 }, Lokhttp3/internal/ws/WebSocketWriter;->writeMessageFrame(IJZZ)V
    const/4 v0, 0
  .line 3
    iput-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z
    return-void
  :L0
  .line 4
    new-instance v0, Ljava/io/IOException;
    const-string v1, "closed"
    invoke-direct { v0, v1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public timeout()Lokio/Timeout;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;
    iget-object v0, v0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;
    invoke-interface { v0 }, Lokio/Sink;->timeout()Lokio/Timeout;
    move-result-object v0
    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
  .registers 10
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z
    if-nez v0, :L3
  .line 2
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;
    iget-object v0, v0, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;
    invoke-virtual { v0, p1, p2, p3 }, Lokio/Buffer;->write(Lokio/Buffer;J)V
  .line 3
    iget-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z
    const/4 p2, 0
    if-eqz p1, :L0
    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->contentLength:J
    const-wide/16 v2, -1
    cmp-long p1, v0, v2
    if-eqz p1, :L0
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;
    iget-object p1, p1, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;
  .line 4
    invoke-virtual { p1 }, Lokio/Buffer;->size()J
    move-result-wide v0
    iget-wide v2, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->contentLength:J
    const-wide/16 v4, 8192
    sub-long/2addr v2, v4
    cmp-long p1, v0, v2
    if-lez p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
  .line 5
    iget-object p3, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;
    iget-object p3, p3, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;
    invoke-virtual { p3 }, Lokio/Buffer;->completeSegmentByteCount()J
    move-result-wide v2
    const-wide/16 v0, 0
    cmp-long p3, v2, v0
    if-lez p3, :L2
    if-nez p1, :L2
  .line 6
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;
    iget v1, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I
    iget-boolean v4, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z
    const/4 v5, 0
    invoke-virtual/range { v0 .. v5 }, Lokhttp3/internal/ws/WebSocketWriter;->writeMessageFrame(IJZZ)V
  .line 7
    iput-boolean p2, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z
  :L2
    return-void
  :L3
  .line 8
    new-instance p1, Ljava/io/IOException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
.end method
