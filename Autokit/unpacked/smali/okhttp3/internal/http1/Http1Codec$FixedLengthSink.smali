.class final Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;
.super Ljava/lang/Object;
.implements Lokio/Sink;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/internal/http1/Http1Codec;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 18
  name = "FixedLengthSink"
.end annotation

.field private bytesRemaining:J

.field private closed:Z

.field final synthetic this$0:Lokhttp3/internal/http1/Http1Codec;

.field private final timeout:Lokio/ForwardingTimeout;

.method constructor <init>(Lokhttp3/internal/http1/Http1Codec;J)V
  .registers 5
  .line 1
    iput-object p1, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Lokhttp3/internal/http1/Http1Codec;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance p1, Lokio/ForwardingTimeout;
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Lokhttp3/internal/http1/Http1Codec;
    iget-object v0, v0, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;
    invoke-interface { v0 }, Lokio/Sink;->timeout()Lokio/Timeout;
    move-result-object v0
    invoke-direct { p1, v0 }, Lokio/ForwardingTimeout;-><init>(Lokio/Timeout;)V
    iput-object p1, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->timeout:Lokio/ForwardingTimeout;
  .line 3
    iput-wide p2, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J
    return-void
.end method

.method public close()V
  .registers 6
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->closed:Z
    if-eqz v0, :L0
    return-void
  :L0
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->closed:Z
  .line 3
    iget-wide v0, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J
    const-wide/16 v2, 0
    cmp-long v4, v0, v2
    if-gtz v4, :L1
  .line 4
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Lokhttp3/internal/http1/Http1Codec;
    iget-object v1, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->timeout:Lokio/ForwardingTimeout;
    invoke-virtual { v0, v1 }, Lokhttp3/internal/http1/Http1Codec;->detachTimeout(Lokio/ForwardingTimeout;)V
  .line 5
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Lokhttp3/internal/http1/Http1Codec;
    const/4 v1, 3
    iput v1, v0, Lokhttp3/internal/http1/Http1Codec;->state:I
    return-void
  :L1
  .line 6
    new-instance v0, Ljava/net/ProtocolException;
    const-string v1, "unexpected end of stream"
    invoke-direct { v0, v1 }, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public flush()V
  .registers 2
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->closed:Z
    if-eqz v0, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Lokhttp3/internal/http1/Http1Codec;
    iget-object v0, v0, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;
    invoke-interface { v0 }, Lokio/BufferedSink;->flush()V
    return-void
.end method

.method public timeout()Lokio/Timeout;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->timeout:Lokio/ForwardingTimeout;
    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
  .registers 11
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->closed:Z
    if-nez v0, :L1
  .line 2
    invoke-virtual { p1 }, Lokio/Buffer;->size()J
    move-result-wide v1
    const-wide/16 v3, 0
    move-wide v5, p2
    invoke-static/range { v1 .. v6 }, Lokhttp3/internal/Util;->checkOffsetAndCount(JJJ)V
  .line 3
    iget-wide v0, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J
    cmp-long v2, p2, v0
    if-gtz v2, :L0
  .line 4
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Lokhttp3/internal/http1/Http1Codec;
    iget-object v0, v0, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;
    invoke-interface { v0, p1, p2, p3 }, Lokio/Sink;->write(Lokio/Buffer;J)V
  .line 5
    iget-wide v0, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J
    sub-long/2addr v0, p2
    iput-wide v0, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J
    return-void
  :L0
  .line 6
    new-instance p1, Ljava/net/ProtocolException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "expected "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-wide v1, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J
    invoke-virtual { v0, v1, v2 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v1, " bytes but received "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2, p3 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 7
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method
