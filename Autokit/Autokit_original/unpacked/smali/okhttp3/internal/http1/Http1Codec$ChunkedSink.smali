.class final Lokhttp3/internal/http1/Http1Codec$ChunkedSink;
.super Ljava/lang/Object;
.implements Lokio/Sink;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/internal/http1/Http1Codec;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 18
  name = "ChunkedSink"
.end annotation

.field private closed:Z

.field final synthetic this$0:Lokhttp3/internal/http1/Http1Codec;

.field private final timeout:Lokio/ForwardingTimeout;

.method constructor <init>(Lokhttp3/internal/http1/Http1Codec;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp3/internal/http1/Http1Codec;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance p1, Lokio/ForwardingTimeout;
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp3/internal/http1/Http1Codec;
    iget-object v0, v0, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;
    invoke-interface { v0 }, Lokio/Sink;->timeout()Lokio/Timeout;
    move-result-object v0
    invoke-direct { p1, v0 }, Lokio/ForwardingTimeout;-><init>(Lokio/Timeout;)V
    iput-object p1, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->timeout:Lokio/ForwardingTimeout;
    return-void
.end method

.method public declared-synchronized close()V
  .catchall { :L0 .. :L1 } :L5
  .catchall { :L3 .. :L4 } :L5
  .registers 3
    monitor-enter p0
  :L0
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->closed:Z
  :L1
    if-eqz v0, :L2
    monitor-exit p0
    return-void
  :L2
    const/4 v0, 1
  :L3
  .line 2
    iput-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->closed:Z
  .line 3
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp3/internal/http1/Http1Codec;
    iget-object v0, v0, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;
    const-string v1, "0\r\n\r\n"
    invoke-interface { v0, v1 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
  .line 4
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp3/internal/http1/Http1Codec;
    iget-object v1, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->timeout:Lokio/ForwardingTimeout;
    invoke-virtual { v0, v1 }, Lokhttp3/internal/http1/Http1Codec;->detachTimeout(Lokio/ForwardingTimeout;)V
  .line 5
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp3/internal/http1/Http1Codec;
    const/4 v1, 3
    iput v1, v0, Lokhttp3/internal/http1/Http1Codec;->state:I
  :L4
  .line 6
    monitor-exit p0
    return-void
  :L5
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method public declared-synchronized flush()V
  .catchall { :L0 .. :L1 } :L4
  .catchall { :L2 .. :L3 } :L4
  .registers 2
    monitor-enter p0
  :L0
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->closed:Z
  :L1
    if-eqz v0, :L2
    monitor-exit p0
    return-void
  :L2
  .line 2
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp3/internal/http1/Http1Codec;
    iget-object v0, v0, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;
    invoke-interface { v0 }, Lokio/BufferedSink;->flush()V
  :L3
  .line 3
    monitor-exit p0
    return-void
  :L4
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method public timeout()Lokio/Timeout;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->timeout:Lokio/ForwardingTimeout;
    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
  .registers 7
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->closed:Z
    if-nez v0, :L1
    const-wide/16 v0, 0
    cmp-long v2, p2, v0
    if-nez v2, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp3/internal/http1/Http1Codec;
    iget-object v0, v0, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;
    invoke-interface { v0, p2, p3 }, Lokio/BufferedSink;->writeHexadecimalUnsignedLong(J)Lokio/BufferedSink;
  .line 3
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp3/internal/http1/Http1Codec;
    iget-object v0, v0, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;
    const-string v1, "\r\n"
    invoke-interface { v0, v1 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
  .line 4
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp3/internal/http1/Http1Codec;
    iget-object v0, v0, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;
    invoke-interface { v0, p1, p2, p3 }, Lokio/Sink;->write(Lokio/Buffer;J)V
  .line 5
    iget-object p1, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lokhttp3/internal/http1/Http1Codec;
    iget-object p1, p1, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;
    invoke-interface { p1, v1 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    return-void
  :L1
  .line 6
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method
