.class Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;
.super Lokhttp3/internal/http1/Http1Codec$AbstractSource;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/internal/http1/Http1Codec;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "FixedLengthSource"
.end annotation

.field private bytesRemaining:J

.field final synthetic this$0:Lokhttp3/internal/http1/Http1Codec;

.method constructor <init>(Lokhttp3/internal/http1/Http1Codec;J)V
  .registers 7
  .line 1
    iput-object p1, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->this$0:Lokhttp3/internal/http1/Http1Codec;
    const/4 v0, 0
    invoke-direct { p0, p1, v0 }, Lokhttp3/internal/http1/Http1Codec$AbstractSource;-><init>(Lokhttp3/internal/http1/Http1Codec;Lokhttp3/internal/http1/Http1Codec$1;)V
  .line 2
    iput-wide p2, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J
    const-wide/16 v1, 0
    cmp-long p1, p2, v1
    if-nez p1, :L0
    const/4 p1, 1
  .line 3
    invoke-virtual { p0, p1, v0 }, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->endOfInput(ZLjava/io/IOException;)V
  :L0
    return-void
.end method

.method public close()V
  .registers 6
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->closed:Z
    if-eqz v0, :L0
    return-void
  :L0
  .line 2
    iget-wide v0, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J
    const-wide/16 v2, 0
    cmp-long v4, v0, v2
    if-eqz v4, :L1
    const/16 v0, 100
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-static { p0, v0, v1 }, Lokhttp3/internal/Util;->discard(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z
    move-result v0
    if-nez v0, :L1
    const/4 v0, 0
    const/4 v1, 0
  .line 3
    invoke-virtual { p0, v0, v1 }, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->endOfInput(ZLjava/io/IOException;)V
  :L1
    const/4 v0, 1
  .line 4
    iput-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->closed:Z
    return-void
.end method

.method public read(Lokio/Buffer;J)J
  .registers 11
    const-wide/16 v0, 0
    cmp-long v2, p2, v0
    if-ltz v2, :L4
  .line 1
    iget-boolean v2, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->closed:Z
    if-nez v2, :L3
  .line 2
    iget-wide v2, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J
    const-wide/16 v4, -1
    cmp-long v6, v2, v0
    if-nez v6, :L0
    return-wide v4
  :L0
  .line 3
    invoke-static { v2, v3, p2, p3 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide p2
    invoke-super { p0, p1, p2, p3 }, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->read(Lokio/Buffer;J)J
    move-result-wide p1
    cmp-long p3, p1, v4
    if-eqz p3, :L2
  .line 4
    iget-wide v2, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J
    sub-long/2addr v2, p1
    iput-wide v2, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J
    cmp-long p3, v2, v0
    if-nez p3, :L1
    const/4 p3, 1
    const/4 v0, 0
  .line 5
    invoke-virtual { p0, p3, v0 }, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->endOfInput(ZLjava/io/IOException;)V
  :L1
    return-wide p1
  :L2
  .line 6
    new-instance p1, Ljava/net/ProtocolException;
    const-string p2, "unexpected end of stream"
    invoke-direct { p1, p2 }, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
    const/4 p2, 0
  .line 7
    invoke-virtual { p0, p2, p1 }, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->endOfInput(ZLjava/io/IOException;)V
  .line 8
    throw p1
  :L3
  .line 9
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L4
  .line 10
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "byteCount < 0: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2, p3 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method
