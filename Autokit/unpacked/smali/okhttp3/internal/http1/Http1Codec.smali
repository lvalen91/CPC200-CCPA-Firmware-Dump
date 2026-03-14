.class public final Lokhttp3/internal/http1/Http1Codec;
.super Ljava/lang/Object;
.implements Lokhttp3/internal/http/HttpCodec;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;,
    Lokhttp3/internal/http1/Http1Codec$ChunkedSource;,
    Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;,
    Lokhttp3/internal/http1/Http1Codec$AbstractSource;,
    Lokhttp3/internal/http1/Http1Codec$ChunkedSink;,
    Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;
  }
.end annotation

.field private final static HEADER_LIMIT:I = 262144

.field private final static STATE_CLOSED:I = 6

.field private final static STATE_IDLE:I = 0

.field private final static STATE_OPEN_REQUEST_BODY:I = 1

.field private final static STATE_OPEN_RESPONSE_BODY:I = 4

.field private final static STATE_READING_RESPONSE_BODY:I = 5

.field private final static STATE_READ_RESPONSE_HEADERS:I = 3

.field private final static STATE_WRITING_REQUEST_BODY:I = 2

.field final client:Lokhttp3/OkHttpClient;

.field private headerLimit:J

.field final sink:Lokio/BufferedSink;

.field final source:Lokio/BufferedSource;

.field state:I

.field final streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

.method public constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/StreamAllocation;Lokio/BufferedSource;Lokio/BufferedSink;)V
  .registers 7
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I
    const-wide/32 v0, 262144
  .line 3
    iput-wide v0, p0, Lokhttp3/internal/http1/Http1Codec;->headerLimit:J
  .line 4
    iput-object p1, p0, Lokhttp3/internal/http1/Http1Codec;->client:Lokhttp3/OkHttpClient;
  .line 5
    iput-object p2, p0, Lokhttp3/internal/http1/Http1Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;
  .line 6
    iput-object p3, p0, Lokhttp3/internal/http1/Http1Codec;->source:Lokio/BufferedSource;
  .line 7
    iput-object p4, p0, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;
    return-void
.end method

.method private readHeaderLine()Ljava/lang/String;
  .registers 6
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec;->source:Lokio/BufferedSource;
    iget-wide v1, p0, Lokhttp3/internal/http1/Http1Codec;->headerLimit:J
    invoke-interface { v0, v1, v2 }, Lokio/BufferedSource;->readUtf8LineStrict(J)Ljava/lang/String;
    move-result-object v0
  .line 2
    iget-wide v1, p0, Lokhttp3/internal/http1/Http1Codec;->headerLimit:J
    invoke-virtual { v0 }, Ljava/lang/String;->length()I
    move-result v3
    int-to-long v3, v3
    sub-long/2addr v1, v3
    iput-wide v1, p0, Lokhttp3/internal/http1/Http1Codec;->headerLimit:J
    return-object v0
.end method

.method public cancel()V
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;
    invoke-virtual { v0 }, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Lokhttp3/internal/connection/RealConnection;->cancel()V
  :L0
    return-void
.end method

.method public createRequestBody(Lokhttp3/Request;J)Lokio/Sink;
  .registers 6
    const-string v0, "Transfer-Encoding"
  .line 1
    invoke-virtual { p1, v0 }, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    const-string v0, "chunked"
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result p1
    if-eqz p1, :L0
  .line 2
    invoke-virtual { p0 }, Lokhttp3/internal/http1/Http1Codec;->newChunkedSink()Lokio/Sink;
    move-result-object p1
    return-object p1
  :L0
    const-wide/16 v0, -1
    cmp-long p1, p2, v0
    if-eqz p1, :L1
  .line 3
    invoke-virtual { p0, p2, p3 }, Lokhttp3/internal/http1/Http1Codec;->newFixedLengthSink(J)Lokio/Sink;
    move-result-object p1
    return-object p1
  :L1
  .line 4
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method detachTimeout(Lokio/ForwardingTimeout;)V
  .registers 4
  .line 1
    invoke-virtual { p1 }, Lokio/ForwardingTimeout;->delegate()Lokio/Timeout;
    move-result-object v0
  .line 2
    sget-object v1, Lokio/Timeout;->NONE:Lokio/Timeout;
    invoke-virtual { p1, v1 }, Lokio/ForwardingTimeout;->setDelegate(Lokio/Timeout;)Lokio/ForwardingTimeout;
  .line 3
    invoke-virtual { v0 }, Lokio/Timeout;->clearDeadline()Lokio/Timeout;
  .line 4
    invoke-virtual { v0 }, Lokio/Timeout;->clearTimeout()Lokio/Timeout;
    return-void
.end method

.method public finishRequest()V
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;
    invoke-interface { v0 }, Lokio/BufferedSink;->flush()V
    return-void
.end method

.method public flushRequest()V
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;
    invoke-interface { v0 }, Lokio/BufferedSink;->flush()V
    return-void
.end method

.method public isClosed()Z
  .registers 3
  .line 1
    iget v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I
    const/4 v1, 6
    if-ne v0, v1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public newChunkedSink()Lokio/Sink;
  .registers 4
  .line 1
    iget v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I
    const/4 v1, 1
    if-ne v0, v1, :L0
    const/4 v0, 2
  .line 2
    iput v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I
  .line 3
    new-instance v0, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;
    invoke-direct { v0, p0 }, Lokhttp3/internal/http1/Http1Codec$ChunkedSink;-><init>(Lokhttp3/internal/http1/Http1Codec;)V
    return-object v0
  :L0
  .line 4
    new-instance v0, Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "state: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, p0, Lokhttp3/internal/http1/Http1Codec;->state:I
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public newChunkedSource(Lokhttp3/HttpUrl;)Lokio/Source;
  .registers 4
  .line 1
    iget v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I
    const/4 v1, 4
    if-ne v0, v1, :L0
    const/4 v0, 5
  .line 2
    iput v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I
  .line 3
    new-instance v0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;
    invoke-direct { v0, p0, p1 }, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;-><init>(Lokhttp3/internal/http1/Http1Codec;Lokhttp3/HttpUrl;)V
    return-object v0
  :L0
  .line 4
    new-instance p1, Ljava/lang/IllegalStateException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "state: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lokhttp3/internal/http1/Http1Codec;->state:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public newFixedLengthSink(J)Lokio/Sink;
  .registers 5
  .line 1
    iget v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I
    const/4 v1, 1
    if-ne v0, v1, :L0
    const/4 v0, 2
  .line 2
    iput v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I
  .line 3
    new-instance v0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;
    invoke-direct { v0, p0, p1, p2 }, Lokhttp3/internal/http1/Http1Codec$FixedLengthSink;-><init>(Lokhttp3/internal/http1/Http1Codec;J)V
    return-object v0
  :L0
  .line 4
    new-instance p1, Ljava/lang/IllegalStateException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "state: "
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public newFixedLengthSource(J)Lokio/Source;
  .registers 5
  .line 1
    iget v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I
    const/4 v1, 4
    if-ne v0, v1, :L0
    const/4 v0, 5
  .line 2
    iput v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I
  .line 3
    new-instance v0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;
    invoke-direct { v0, p0, p1, p2 }, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;-><init>(Lokhttp3/internal/http1/Http1Codec;J)V
    return-object v0
  :L0
  .line 4
    new-instance p1, Ljava/lang/IllegalStateException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "state: "
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public newUnknownLengthSource()Lokio/Source;
  .registers 4
  .line 1
    iget v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I
    const/4 v1, 4
    if-ne v0, v1, :L1
  .line 2
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;
    if-eqz v0, :L0
    const/4 v1, 5
  .line 3
    iput v1, p0, Lokhttp3/internal/http1/Http1Codec;->state:I
  .line 4
    invoke-virtual { v0 }, Lokhttp3/internal/connection/StreamAllocation;->noNewStreams()V
  .line 5
    new-instance v0, Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;
    invoke-direct { v0, p0 }, Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;-><init>(Lokhttp3/internal/http1/Http1Codec;)V
    return-object v0
  :L0
  .line 6
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "streamAllocation == null"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
  .line 7
    new-instance v0, Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "state: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, p0, Lokhttp3/internal/http1/Http1Codec;->state:I
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public openResponseBody(Lokhttp3/Response;)Lokhttp3/ResponseBody;
  .registers 8
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;
    iget-object v1, v0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;
    iget-object v0, v0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;
    invoke-virtual { v1, v0 }, Lokhttp3/EventListener;->responseBodyStart(Lokhttp3/Call;)V
    const-string v0, "Content-Type"
  .line 2
    invoke-virtual { p1, v0 }, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
  .line 3
    invoke-static { p1 }, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z
    move-result v1
    if-nez v1, :L0
    const-wide/16 v1, 0
  .line 4
    invoke-virtual { p0, v1, v2 }, Lokhttp3/internal/http1/Http1Codec;->newFixedLengthSource(J)Lokio/Source;
    move-result-object p1
  .line 5
    new-instance v3, Lokhttp3/internal/http/RealResponseBody;
    invoke-static { p1 }, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;
    move-result-object p1
    invoke-direct { v3, v0, v1, v2, p1 }, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V
    return-object v3
  :L0
    const-string v1, "Transfer-Encoding"
  .line 6
    invoke-virtual { p1, v1 }, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    const-string v2, "chunked"
    invoke-virtual { v2, v1 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v1
    const-wide/16 v2, -1
    if-eqz v1, :L1
  .line 7
    invoke-virtual { p1 }, Lokhttp3/Response;->request()Lokhttp3/Request;
    move-result-object p1
    invoke-virtual { p1 }, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    move-result-object p1
    invoke-virtual { p0, p1 }, Lokhttp3/internal/http1/Http1Codec;->newChunkedSource(Lokhttp3/HttpUrl;)Lokio/Source;
    move-result-object p1
  .line 8
    new-instance v1, Lokhttp3/internal/http/RealResponseBody;
    invoke-static { p1 }, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;
    move-result-object p1
    invoke-direct { v1, v0, v2, v3, p1 }, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V
    return-object v1
  :L1
  .line 9
    invoke-static { p1 }, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Response;)J
    move-result-wide v4
    cmp-long p1, v4, v2
    if-eqz p1, :L2
  .line 10
    invoke-virtual { p0, v4, v5 }, Lokhttp3/internal/http1/Http1Codec;->newFixedLengthSource(J)Lokio/Source;
    move-result-object p1
  .line 11
    new-instance v1, Lokhttp3/internal/http/RealResponseBody;
    invoke-static { p1 }, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;
    move-result-object p1
    invoke-direct { v1, v0, v4, v5, p1 }, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V
    return-object v1
  :L2
  .line 12
    new-instance p1, Lokhttp3/internal/http/RealResponseBody;
    invoke-virtual { p0 }, Lokhttp3/internal/http1/Http1Codec;->newUnknownLengthSource()Lokio/Source;
    move-result-object v1
    invoke-static { v1 }, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;
    move-result-object v1
    invoke-direct { p1, v0, v2, v3, v1 }, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V
    return-object p1
.end method

.method public readHeaders()Lokhttp3/Headers;
  .registers 4
  .line 1
    new-instance v0, Lokhttp3/Headers$Builder;
    invoke-direct { v0 }, Lokhttp3/Headers$Builder;-><init>()V
  :L0
  .line 2
    invoke-direct { p0 }, Lokhttp3/internal/http1/Http1Codec;->readHeaderLine()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/String;->length()I
    move-result v2
    if-eqz v2, :L1
  .line 3
    sget-object v2, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;
    invoke-virtual { v2, v0, v1 }, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;)V
    goto :L0
  :L1
  .line 4
    invoke-virtual { v0 }, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;
    move-result-object v0
    return-object v0
.end method

.method public readResponseHeaders(Z)Lokhttp3/Response$Builder;
  .catch Ljava/io/EOFException; { :L1 .. :L4 } :L5
  .registers 6
  .line 1
    iget v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I
    const/4 v1, 3
    const/4 v2, 1
    if-eq v0, v2, :L1
    if-ne v0, v1, :L0
    goto :L1
  :L0
  .line 2
    new-instance p1, Ljava/lang/IllegalStateException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "state: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lokhttp3/internal/http1/Http1Codec;->state:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 3
    invoke-direct { p0 }, Lokhttp3/internal/http1/Http1Codec;->readHeaderLine()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lokhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;
    move-result-object v0
  .line 4
    new-instance v2, Lokhttp3/Response$Builder;
    invoke-direct { v2 }, Lokhttp3/Response$Builder;-><init>()V
    iget-object v3, v0, Lokhttp3/internal/http/StatusLine;->protocol:Lokhttp3/Protocol;
  .line 5
    invoke-virtual { v2, v3 }, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;
    move-result-object v2
    iget v3, v0, Lokhttp3/internal/http/StatusLine;->code:I
  .line 6
    invoke-virtual { v2, v3 }, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;
    move-result-object v2
    iget-object v3, v0, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/String;
  .line 7
    invoke-virtual { v2, v3 }, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;
    move-result-object v2
  .line 8
    invoke-virtual { p0 }, Lokhttp3/internal/http1/Http1Codec;->readHeaders()Lokhttp3/Headers;
    move-result-object v3
    invoke-virtual { v2, v3 }, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;
    move-result-object v2
    const/16 v3, 100
    if-eqz p1, :L2
  .line 9
    iget p1, v0, Lokhttp3/internal/http/StatusLine;->code:I
    if-ne p1, v3, :L2
    const/4 p1, 0
    return-object p1
  :L2
  .line 10
    iget p1, v0, Lokhttp3/internal/http/StatusLine;->code:I
    if-ne p1, v3, :L3
  .line 11
    iput v1, p0, Lokhttp3/internal/http1/Http1Codec;->state:I
    return-object v2
  :L3
    const/4 p1, 4
  .line 12
    iput p1, p0, Lokhttp3/internal/http1/Http1Codec;->state:I
  :L4
    return-object v2
  :L5
    move-exception p1
  .line 13
    new-instance v0, Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "unexpected end of stream on "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lokhttp3/internal/http1/Http1Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
  .line 14
    invoke-virtual { v0, p1 }, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
  .line 15
    throw v0
.end method

.method public writeRequest(Lokhttp3/Headers;Ljava/lang/String;)V
  .registers 7
  .line 1
    iget v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I
    if-nez v0, :L2
  .line 2
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;
    invoke-interface { v0, p2 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object p2
    const-string v0, "\r\n"
    invoke-interface { p2, v0 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    const/4 p2, 0
  .line 3
    invoke-virtual { p1 }, Lokhttp3/Headers;->size()I
    move-result v1
  :L0
    if-ge p2, v1, :L1
  .line 4
    iget-object v2, p0, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;
    invoke-virtual { p1, p2 }, Lokhttp3/Headers;->name(I)Ljava/lang/String;
    move-result-object v3
    invoke-interface { v2, v3 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object v2
    const-string v3, ": "
  .line 5
    invoke-interface { v2, v3 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object v2
  .line 6
    invoke-virtual { p1, p2 }, Lokhttp3/Headers;->value(I)Ljava/lang/String;
    move-result-object v3
    invoke-interface { v2, v3 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object v2
  .line 7
    invoke-interface { v2, v0 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    add-int/lit8 p2, p2, 1
    goto :L0
  :L1
  .line 8
    iget-object p1, p0, Lokhttp3/internal/http1/Http1Codec;->sink:Lokio/BufferedSink;
    invoke-interface { p1, v0 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    const/4 p1, 1
  .line 9
    iput p1, p0, Lokhttp3/internal/http1/Http1Codec;->state:I
    return-void
  :L2
  .line 10
    new-instance p1, Ljava/lang/IllegalStateException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "state: "
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v0, p0, Lokhttp3/internal/http1/Http1Codec;->state:I
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    goto :L4
  :L3
    throw p1
  :L4
    goto :L3
.end method

.method public writeRequestHeaders(Lokhttp3/Request;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;
  .line 2
    invoke-virtual { v0 }, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/Route;->proxy()Ljava/net/Proxy;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;
    move-result-object v0
  .line 3
    invoke-static { p1, v0 }, Lokhttp3/internal/http/RequestLine;->get(Lokhttp3/Request;Ljava/net/Proxy$Type;)Ljava/lang/String;
    move-result-object v0
  .line 4
    invoke-virtual { p1 }, Lokhttp3/Request;->headers()Lokhttp3/Headers;
    move-result-object p1
    invoke-virtual { p0, p1, v0 }, Lokhttp3/internal/http1/Http1Codec;->writeRequest(Lokhttp3/Headers;Ljava/lang/String;)V
    return-void
.end method
