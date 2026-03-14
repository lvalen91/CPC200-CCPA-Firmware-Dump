.class Lokhttp3/internal/http1/Http1Codec$ChunkedSource;
.super Lokhttp3/internal/http1/Http1Codec$AbstractSource;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/internal/http1/Http1Codec;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "ChunkedSource"
.end annotation

.field private final static NO_CHUNK_YET:J = -1L

.field private bytesRemainingInChunk:J

.field private hasMoreChunks:Z

.field final synthetic this$0:Lokhttp3/internal/http1/Http1Codec;

.field private final url:Lokhttp3/HttpUrl;

.method constructor <init>(Lokhttp3/internal/http1/Http1Codec;Lokhttp3/HttpUrl;)V
  .registers 5
  .line 1
    iput-object p1, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Lokhttp3/internal/http1/Http1Codec;
    const/4 v0, 0
    invoke-direct { p0, p1, v0 }, Lokhttp3/internal/http1/Http1Codec$AbstractSource;-><init>(Lokhttp3/internal/http1/Http1Codec;Lokhttp3/internal/http1/Http1Codec$1;)V
    const-wide/16 v0, -1
  .line 2
    iput-wide v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J
    const/4 p1, 1
  .line 3
    iput-boolean p1, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->hasMoreChunks:Z
  .line 4
    iput-object p2, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->url:Lokhttp3/HttpUrl;
    return-void
.end method

.method private readChunkSize()V
  .catch Ljava/lang/NumberFormatException; { :L0 .. :L1 } :L5
  .catch Ljava/lang/NumberFormatException; { :L4 .. :L5 } :L5
  .registers 7
  .line 1
    iget-wide v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J
    const-wide/16 v2, -1
    cmp-long v4, v0, v2
    if-eqz v4, :L0
  .line 2
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Lokhttp3/internal/http1/Http1Codec;
    iget-object v0, v0, Lokhttp3/internal/http1/Http1Codec;->source:Lokio/BufferedSource;
    invoke-interface { v0 }, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;
  :L0
  .line 3
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Lokhttp3/internal/http1/Http1Codec;
    iget-object v0, v0, Lokhttp3/internal/http1/Http1Codec;->source:Lokio/BufferedSource;
    invoke-interface { v0 }, Lokio/BufferedSource;->readHexadecimalUnsignedLong()J
    move-result-wide v0
    iput-wide v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J
  .line 4
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Lokhttp3/internal/http1/Http1Codec;
    iget-object v0, v0, Lokhttp3/internal/http1/Http1Codec;->source:Lokio/BufferedSource;
    invoke-interface { v0 }, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v0
  .line 5
    iget-wide v1, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J
    const-wide/16 v3, 0
    cmp-long v5, v1, v3
    if-ltz v5, :L4
    invoke-virtual { v0 }, Ljava/lang/String;->isEmpty()Z
    move-result v1
    if-nez v1, :L2
    const-string v1, ";"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v1
  :L1
    if-eqz v1, :L4
  :L2
  .line 6
    iget-wide v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J
    cmp-long v2, v0, v3
    if-nez v2, :L3
    const/4 v0, 0
  .line 7
    iput-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->hasMoreChunks:Z
  .line 8
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Lokhttp3/internal/http1/Http1Codec;
    iget-object v0, v0, Lokhttp3/internal/http1/Http1Codec;->client:Lokhttp3/OkHttpClient;
    invoke-virtual { v0 }, Lokhttp3/OkHttpClient;->cookieJar()Lokhttp3/CookieJar;
    move-result-object v0
    iget-object v1, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->url:Lokhttp3/HttpUrl;
    iget-object v2, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Lokhttp3/internal/http1/Http1Codec;
    invoke-virtual { v2 }, Lokhttp3/internal/http1/Http1Codec;->readHeaders()Lokhttp3/Headers;
    move-result-object v2
    invoke-static { v0, v1, v2 }, Lokhttp3/internal/http/HttpHeaders;->receiveHeaders(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V
    const/4 v0, 1
    const/4 v1, 0
  .line 9
    invoke-virtual { p0, v0, v1 }, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->endOfInput(ZLjava/io/IOException;)V
  :L3
    return-void
  :L4
  .line 10
    new-instance v1, Ljava/net/ProtocolException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "expected chunk size and optional extensions but was \""
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-wide v3, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J
    invoke-virtual { v2, v3, v4 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "\""
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { v1, v0 }, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
    throw v1
  :L5
    move-exception v0
  .line 11
    new-instance v1, Ljava/net/ProtocolException;
    invoke-virtual { v0 }, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;
    move-result-object v0
    invoke-direct { v1, v0 }, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
    throw v1
.end method

.method public close()V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->closed:Z
    if-eqz v0, :L0
    return-void
  :L0
  .line 2
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->hasMoreChunks:Z
    if-eqz v0, :L1
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
    if-ltz v2, :L5
  .line 1
    iget-boolean v2, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->closed:Z
    if-nez v2, :L4
  .line 2
    iget-boolean v2, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->hasMoreChunks:Z
    const-wide/16 v3, -1
    if-nez v2, :L0
    return-wide v3
  :L0
  .line 3
    iget-wide v5, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J
    cmp-long v2, v5, v0
    if-eqz v2, :L1
    cmp-long v0, v5, v3
    if-nez v0, :L2
  :L1
  .line 4
    invoke-direct { p0 }, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->readChunkSize()V
  .line 5
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->hasMoreChunks:Z
    if-nez v0, :L2
    return-wide v3
  :L2
  .line 6
    iget-wide v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J
    invoke-static { p2, p3, v0, v1 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide p2
    invoke-super { p0, p1, p2, p3 }, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->read(Lokio/Buffer;J)J
    move-result-wide p1
    cmp-long p3, p1, v3
    if-eqz p3, :L3
  .line 7
    iget-wide v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J
    sub-long/2addr v0, p1
    iput-wide v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J
    return-wide p1
  :L3
  .line 8
    new-instance p1, Ljava/net/ProtocolException;
    const-string p2, "unexpected end of stream"
    invoke-direct { p1, p2 }, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
    const/4 p2, 0
  .line 9
    invoke-virtual { p0, p2, p1 }, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->endOfInput(ZLjava/io/IOException;)V
  .line 10
    throw p1
  :L4
  .line 11
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L5
  .line 12
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
