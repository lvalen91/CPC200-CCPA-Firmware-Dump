.class Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;
.super Lokio/ForwardingSource;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/internal/http2/Http2Codec;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = "StreamFinishingSource"
.end annotation

.field bytesRead:J

.field completed:Z

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Codec;

.method constructor <init>(Lokhttp3/internal/http2/Http2Codec;Lokio/Source;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;->this$0:Lokhttp3/internal/http2/Http2Codec;
  .line 2
    invoke-direct { p0, p2 }, Lokio/ForwardingSource;-><init>(Lokio/Source;)V
    const/4 p1, 0
  .line 3
    iput-boolean p1, p0, Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;->completed:Z
    const-wide/16 p1, 0
  .line 4
    iput-wide p1, p0, Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;->bytesRead:J
    return-void
.end method

.method private endOfInput(Ljava/io/IOException;)V
  .registers 9
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;->completed:Z
    if-eqz v0, :L0
    return-void
  :L0
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;->completed:Z
  .line 3
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;->this$0:Lokhttp3/internal/http2/Http2Codec;
    iget-object v1, v3, Lokhttp3/internal/http2/Http2Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;
    const/4 v2, 0
    iget-wide v4, p0, Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;->bytesRead:J
    move-object v6, p1
    invoke-virtual/range { v1 .. v6 }, Lokhttp3/internal/connection/StreamAllocation;->streamFinished(ZLokhttp3/internal/http/HttpCodec;JLjava/io/IOException;)V
    return-void
.end method

.method public close()V
  .registers 2
  .line 1
    invoke-super { p0 }, Lokio/ForwardingSource;->close()V
    const/4 v0, 0
  .line 2
    invoke-direct { p0, v0 }, Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;->endOfInput(Ljava/io/IOException;)V
    return-void
.end method

.method public read(Lokio/Buffer;J)J
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L2
  .registers 6
  :L0
  .line 1
    invoke-virtual { p0 }, Lokio/ForwardingSource;->delegate()Lokio/Source;
    move-result-object v0
    invoke-interface { v0, p1, p2, p3 }, Lokio/Source;->read(Lokio/Buffer;J)J
    move-result-wide p1
    const-wide/16 v0, 0
    cmp-long p3, p1, v0
    if-lez p3, :L1
  .line 2
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;->bytesRead:J
    add-long/2addr v0, p1
    iput-wide v0, p0, Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;->bytesRead:J
  :L1
    return-wide p1
  :L2
    move-exception p1
  .line 3
    invoke-direct { p0, p1 }, Lokhttp3/internal/http2/Http2Codec$StreamFinishingSource;->endOfInput(Ljava/io/IOException;)V
  .line 4
    throw p1
.end method
