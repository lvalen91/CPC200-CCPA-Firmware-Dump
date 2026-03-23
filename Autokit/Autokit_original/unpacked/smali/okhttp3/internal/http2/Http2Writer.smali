.class final Lokhttp3/internal/http2/Http2Writer;
.super Ljava/lang/Object;
.implements Ljava/io/Closeable;
.source "SourceFile"

.field private final static logger:Ljava/util/logging/Logger;

.field private final client:Z

.field private closed:Z

.field private final hpackBuffer:Lokio/Buffer;

.field final hpackWriter:Lokhttp3/internal/http2/Hpack$Writer;

.field private maxFrameSize:I

.field private final sink:Lokio/BufferedSink;

.method static constructor <clinit>()V
  .registers 3
  .line 1
    const-class v0, Lokhttp3/internal/http2/Http2;
    invoke-virtual { v0 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    move-result-object v0
    sput-object v0, Lokhttp3/internal/http2/Http2Writer;->logger:Ljava/util/logging/Logger;
    return-void
.end method

.method constructor <init>(Lokio/BufferedSink;Z)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;
  .line 3
    iput-boolean p2, p0, Lokhttp3/internal/http2/Http2Writer;->client:Z
  .line 4
    new-instance p1, Lokio/Buffer;
    invoke-direct { p1 }, Lokio/Buffer;-><init>()V
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Writer;->hpackBuffer:Lokio/Buffer;
  .line 5
    new-instance p2, Lokhttp3/internal/http2/Hpack$Writer;
    invoke-direct { p2, p1 }, Lokhttp3/internal/http2/Hpack$Writer;-><init>(Lokio/Buffer;)V
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Writer;->hpackWriter:Lokhttp3/internal/http2/Hpack$Writer;
    const/16 p1, 16384
  .line 6
    iput p1, p0, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I
    return-void
.end method

.method private writeContinuationFrames(IJ)V
  .registers 11
  :L0
    const-wide/16 v0, 0
    cmp-long v2, p2, v0
    if-lez v2, :L3
  .line 1
    iget v2, p0, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I
    int-to-long v2, v2
    invoke-static { v2, v3, p2, p3 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v2
    long-to-int v3, v2
    int-to-long v4, v3
    sub-long/2addr p2, v4
    const/16 v2, 9
    cmp-long v6, p2, v0
    if-nez v6, :L1
    const/4 v0, 4
    goto :L2
  :L1
    const/4 v0, 0
  :L2
  .line 2
    invoke-virtual { p0, p1, v3, v2, v0 }, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V
  .line 3
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Writer;->hpackBuffer:Lokio/Buffer;
    invoke-interface { v0, v1, v4, v5 }, Lokio/Sink;->write(Lokio/Buffer;J)V
    goto :L0
  :L3
    return-void
.end method

.method private static writeMedium(Lokio/BufferedSink;I)V
  .registers 3
    ushr-int/lit8 v0, p1, 16
    and-int/lit16 v0, v0, 255
  .line 1
    invoke-interface { p0, v0 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
    ushr-int/lit8 v0, p1, 8
    and-int/lit16 v0, v0, 255
  .line 2
    invoke-interface { p0, v0 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
    and-int/lit16 p1, p1, 255
  .line 3
    invoke-interface { p0, p1 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
    return-void
.end method

.method public declared-synchronized applyAndAckSettings(Lokhttp3/internal/http2/Settings;)V
  .catchall { :L0 .. :L2 } :L4
  .catchall { :L3 .. :L4 } :L4
  .registers 4
    monitor-enter p0
  :L0
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z
    if-nez v0, :L3
  .line 2
    iget v0, p0, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I
    invoke-virtual { p1, v0 }, Lokhttp3/internal/http2/Settings;->getMaxFrameSize(I)I
    move-result v0
    iput v0, p0, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I
  .line 3
    invoke-virtual { p1 }, Lokhttp3/internal/http2/Settings;->getHeaderTableSize()I
    move-result v0
    const/4 v1, -1
    if-eq v0, v1, :L1
  .line 4
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->hpackWriter:Lokhttp3/internal/http2/Hpack$Writer;
    invoke-virtual { p1 }, Lokhttp3/internal/http2/Settings;->getHeaderTableSize()I
    move-result p1
    invoke-virtual { v0, p1 }, Lokhttp3/internal/http2/Hpack$Writer;->setHeaderTableSizeSetting(I)V
  :L1
    const/4 p1, 4
    const/4 v0, 1
    const/4 v1, 0
  .line 5
    invoke-virtual { p0, v1, v1, p1, v0 }, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V
  .line 6
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;
    invoke-interface { p1 }, Lokio/BufferedSink;->flush()V
  :L2
  .line 7
    monitor-exit p0
    return-void
  :L3
  .line 8
    new-instance p1, Ljava/io/IOException;
    const-string v0, "closed"
    invoke-direct { p1, v0 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
  :L4
    move-exception p1
    monitor-exit p0
    throw p1
.end method

.method public declared-synchronized close()V
  .catchall { :L0 .. :L1 } :L2
  .registers 2
    monitor-enter p0
    const/4 v0, 1
  :L0
  .line 1
    iput-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z
  .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;
    invoke-interface { v0 }, Lokio/Sink;->close()V
  :L1
  .line 3
    monitor-exit p0
    return-void
  :L2
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method public declared-synchronized connectionPreface()V
  .catchall { :L0 .. :L1 } :L6
  .catchall { :L2 .. :L4 } :L6
  .catchall { :L5 .. :L6 } :L6
  .registers 6
    monitor-enter p0
  :L0
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z
    if-nez v0, :L5
  .line 2
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->client:Z
  :L1
    if-nez v0, :L2
    monitor-exit p0
    return-void
  :L2
  .line 3
    sget-object v0, Lokhttp3/internal/http2/Http2Writer;->logger:Ljava/util/logging/Logger;
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;
    invoke-virtual { v0, v1 }, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z
    move-result v0
    if-eqz v0, :L3
  .line 4
    sget-object v0, Lokhttp3/internal/http2/Http2Writer;->logger:Ljava/util/logging/Logger;
    const-string v1, ">> CONNECTION %s"
    const/4 v2, 1
    new-array v2, v2, [Ljava/lang/Object;
    const/4 v3, 0
    sget-object v4, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lokio/ByteString;
    invoke-virtual { v4 }, Lokio/ByteString;->hex()Ljava/lang/String;
    move-result-object v4
    aput-object v4, v2, v3
    invoke-static { v1, v2 }, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
  :L3
  .line 5
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;
    sget-object v1, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lokio/ByteString;
    invoke-virtual { v1 }, Lokio/ByteString;->toByteArray()[B
    move-result-object v1
    invoke-interface { v0, v1 }, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;
  .line 6
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;
    invoke-interface { v0 }, Lokio/BufferedSink;->flush()V
  :L4
  .line 7
    monitor-exit p0
    return-void
  :L5
  .line 8
    new-instance v0, Ljava/io/IOException;
    const-string v1, "closed"
    invoke-direct { v0, v1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L6
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method public declared-synchronized data(ZILokio/Buffer;I)V
  .catchall { :L0 .. :L2 } :L4
  .catchall { :L3 .. :L4 } :L4
  .registers 6
    monitor-enter p0
  :L0
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z
    if-nez v0, :L3
    const/4 v0, 0
    if-eqz p1, :L1
    const/4 p1, 1
    int-to-byte v0, p1
  :L1
  .line 2
    invoke-virtual { p0, p2, v0, p3, p4 }, Lokhttp3/internal/http2/Http2Writer;->dataFrame(IBLokio/Buffer;I)V
  :L2
  .line 3
    monitor-exit p0
    return-void
  :L3
  .line 4
    new-instance p1, Ljava/io/IOException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
  :L4
    move-exception p1
    monitor-exit p0
    throw p1
.end method

.method dataFrame(IBLokio/Buffer;I)V
  .registers 7
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, p1, p4, v0, p2 }, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V
    if-lez p4, :L0
  .line 2
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;
    int-to-long v0, p4
    invoke-interface { p1, p3, v0, v1 }, Lokio/Sink;->write(Lokio/Buffer;J)V
  :L0
    return-void
.end method

.method public declared-synchronized flush()V
  .catchall { :L0 .. :L1 } :L3
  .catchall { :L2 .. :L3 } :L3
  .registers 3
    monitor-enter p0
  :L0
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z
    if-nez v0, :L2
  .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;
    invoke-interface { v0 }, Lokio/BufferedSink;->flush()V
  :L1
  .line 3
    monitor-exit p0
    return-void
  :L2
  .line 4
    new-instance v0, Ljava/io/IOException;
    const-string v1, "closed"
    invoke-direct { v0, v1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L3
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method public frameHeader(IIBB)V
  .registers 8
  .line 1
    sget-object v0, Lokhttp3/internal/http2/Http2Writer;->logger:Ljava/util/logging/Logger;
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;
    invoke-virtual { v0, v1 }, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L0
    sget-object v0, Lokhttp3/internal/http2/Http2Writer;->logger:Ljava/util/logging/Logger;
    invoke-static { v1, p1, p2, p3, p4 }, Lokhttp3/internal/http2/Http2;->frameLog(ZIIBB)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v0, v2 }, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
  :L0
  .line 2
    iget v0, p0, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I
    const/4 v2, 1
    if-gt p2, v0, :L2
    const/high16 v0, -32768
    and-int/2addr v0, p1
    if-nez v0, :L1
  .line 3
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;
    invoke-static { v0, p2 }, Lokhttp3/internal/http2/Http2Writer;->writeMedium(Lokio/BufferedSink;I)V
  .line 4
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;
    and-int/lit16 p3, p3, 255
    invoke-interface { p2, p3 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
  .line 5
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;
    and-int/lit16 p3, p4, 255
    invoke-interface { p2, p3 }, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
  .line 6
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;
    const p3, 2147483647
    and-int/2addr p1, p3
    invoke-interface { p2, p1 }, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;
    return-void
  :L1
    new-array p2, v2, [Ljava/lang/Object;
  .line 7
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    aput-object p1, p2, v1
    const-string p1, "reserved bit set: %s"
    invoke-static { p1, p2 }, Lokhttp3/internal/http2/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    move-result-object p1
    throw p1
  :L2
    const/4 p1, 2
    new-array p1, p1, [Ljava/lang/Object;
  .line 8
    invoke-static { v0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p3
    aput-object p3, p1, v1
    invoke-static { p2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p2
    aput-object p2, p1, v2
    const-string p2, "FRAME_SIZE_ERROR length > %d: %d"
    invoke-static { p2, p1 }, Lokhttp3/internal/http2/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    move-result-object p1
    throw p1
.end method

.method public declared-synchronized goAway(ILokhttp3/internal/http2/ErrorCode;[B)V
  .catchall { :L0 .. :L2 } :L5
  .catchall { :L3 .. :L5 } :L5
  .registers 7
    monitor-enter p0
  :L0
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z
    if-nez v0, :L4
  .line 2
    iget v0, p2, Lokhttp3/internal/http2/ErrorCode;->httpCode:I
    const/4 v1, -1
    const/4 v2, 0
    if-eq v0, v1, :L3
  .line 3
    array-length v0, p3
    add-int/lit8 v0, v0, 8
    const/4 v1, 7
  .line 4
    invoke-virtual { p0, v2, v0, v1, v2 }, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V
  .line 5
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;
    invoke-interface { v0, p1 }, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;
  .line 6
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;
    iget p2, p2, Lokhttp3/internal/http2/ErrorCode;->httpCode:I
    invoke-interface { p1, p2 }, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;
  .line 7
    array-length p1, p3
    if-lez p1, :L1
  .line 8
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;
    invoke-interface { p1, p3 }, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;
  :L1
  .line 9
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;
    invoke-interface { p1 }, Lokio/BufferedSink;->flush()V
  :L2
  .line 10
    monitor-exit p0
    return-void
  :L3
    const-string p1, "errorCode.httpCode == -1"
    new-array p2, v2, [Ljava/lang/Object;
  .line 11
    invoke-static { p1, p2 }, Lokhttp3/internal/http2/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    move-result-object p1
    throw p1
  :L4
  .line 12
    new-instance p1, Ljava/io/IOException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
  :L5
    move-exception p1
    monitor-exit p0
    throw p1
.end method

.method public declared-synchronized headers(ILjava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(I",
      "Ljava/util/List<",
      "Lokhttp3/internal/http2/Header;",
      ">;)V"
    }
  .end annotation
  .catchall { :L0 .. :L1 } :L3
  .catchall { :L2 .. :L3 } :L3
  .registers 4
    monitor-enter p0
  :L0
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z
    if-nez v0, :L2
    const/4 v0, 0
  .line 2
    invoke-virtual { p0, v0, p1, p2 }, Lokhttp3/internal/http2/Http2Writer;->headers(ZILjava/util/List;)V
  :L1
  .line 3
    monitor-exit p0
    return-void
  :L2
  .line 4
    new-instance p1, Ljava/io/IOException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
  :L3
    move-exception p1
    monitor-exit p0
    throw p1
.end method

.method headers(ZILjava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(ZI",
      "Ljava/util/List<",
      "Lokhttp3/internal/http2/Header;",
      ">;)V"
    }
  .end annotation
  .registers 9
  .line 5
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z
    if-nez v0, :L4
  .line 6
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->hpackWriter:Lokhttp3/internal/http2/Hpack$Writer;
    invoke-virtual { v0, p3 }, Lokhttp3/internal/http2/Hpack$Writer;->writeHeaders(Ljava/util/List;)V
  .line 7
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Writer;->hpackBuffer:Lokio/Buffer;
    invoke-virtual { p3 }, Lokio/Buffer;->size()J
    move-result-wide v0
  .line 8
    iget p3, p0, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I
    int-to-long v2, p3
    invoke-static { v2, v3, v0, v1 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v2
    long-to-int p3, v2
    int-to-long v2, p3
    cmp-long v4, v0, v2
    if-nez v4, :L0
    const/4 v4, 4
    goto :L1
  :L0
    const/4 v4, 0
  :L1
    if-eqz p1, :L2
    or-int/lit8 p1, v4, 1
    int-to-byte v4, p1
  :L2
    const/4 p1, 1
  .line 9
    invoke-virtual { p0, p2, p3, p1, v4 }, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V
  .line 10
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Writer;->hpackBuffer:Lokio/Buffer;
    invoke-interface { p1, p3, v2, v3 }, Lokio/Sink;->write(Lokio/Buffer;J)V
    cmp-long p1, v0, v2
    if-lez p1, :L3
    sub-long/2addr v0, v2
  .line 11
    invoke-direct { p0, p2, v0, v1 }, Lokhttp3/internal/http2/Http2Writer;->writeContinuationFrames(IJ)V
  :L3
    return-void
  :L4
  .line 12
    new-instance p1, Ljava/io/IOException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public maxDataLength()I
  .registers 2
  .line 1
    iget v0, p0, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I
    return v0
.end method

.method public declared-synchronized ping(ZII)V
  .catchall { :L0 .. :L3 } :L5
  .catchall { :L4 .. :L5 } :L5
  .registers 7
    monitor-enter p0
  :L0
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z
    if-nez v0, :L4
    const/16 v0, 8
    const/4 v1, 6
    const/4 v2, 0
    if-eqz p1, :L1
    const/4 p1, 1
    goto :L2
  :L1
    const/4 p1, 0
  :L2
  .line 2
    invoke-virtual { p0, v2, v0, v1, p1 }, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V
  .line 3
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;
    invoke-interface { p1, p2 }, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;
  .line 4
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;
    invoke-interface { p1, p3 }, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;
  .line 5
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;
    invoke-interface { p1 }, Lokio/BufferedSink;->flush()V
  :L3
  .line 6
    monitor-exit p0
    return-void
  :L4
  .line 7
    new-instance p1, Ljava/io/IOException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
  :L5
    move-exception p1
    monitor-exit p0
    throw p1
.end method

.method public declared-synchronized pushPromise(IILjava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(II",
      "Ljava/util/List<",
      "Lokhttp3/internal/http2/Header;",
      ">;)V"
    }
  .end annotation
  .catchall { :L0 .. :L3 } :L5
  .catchall { :L4 .. :L5 } :L5
  .registers 11
    monitor-enter p0
  :L0
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z
    if-nez v0, :L4
  .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->hpackWriter:Lokhttp3/internal/http2/Hpack$Writer;
    invoke-virtual { v0, p3 }, Lokhttp3/internal/http2/Hpack$Writer;->writeHeaders(Ljava/util/List;)V
  .line 3
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Writer;->hpackBuffer:Lokio/Buffer;
    invoke-virtual { p3 }, Lokio/Buffer;->size()J
    move-result-wide v0
  .line 4
    iget p3, p0, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I
    const/4 v2, 4
    sub-int/2addr p3, v2
    int-to-long v3, p3
    invoke-static { v3, v4, v0, v1 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v3
    long-to-int p3, v3
    const/4 v3, 5
    int-to-long v4, p3
    cmp-long v6, v0, v4
    if-nez v6, :L1
    const/4 v6, 4
    goto :L2
  :L1
    const/4 v6, 0
  :L2
    add-int/2addr p3, v2
  .line 5
    invoke-virtual { p0, p1, p3, v3, v6 }, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V
  .line 6
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;
    const v2, 2147483647
    and-int/2addr p2, v2
    invoke-interface { p3, p2 }, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;
  .line 7
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Writer;->hpackBuffer:Lokio/Buffer;
    invoke-interface { p2, p3, v4, v5 }, Lokio/Sink;->write(Lokio/Buffer;J)V
    cmp-long p2, v0, v4
    if-lez p2, :L3
    sub-long/2addr v0, v4
  .line 8
    invoke-direct { p0, p1, v0, v1 }, Lokhttp3/internal/http2/Http2Writer;->writeContinuationFrames(IJ)V
  :L3
  .line 9
    monitor-exit p0
    return-void
  :L4
  .line 10
    new-instance p1, Ljava/io/IOException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
  :L5
    move-exception p1
    monitor-exit p0
    throw p1
.end method

.method public declared-synchronized rstStream(ILokhttp3/internal/http2/ErrorCode;)V
  .catchall { :L0 .. :L1 } :L4
  .catchall { :L2 .. :L4 } :L4
  .registers 6
    monitor-enter p0
  :L0
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z
    if-nez v0, :L3
  .line 2
    iget v0, p2, Lokhttp3/internal/http2/ErrorCode;->httpCode:I
    const/4 v1, -1
    if-eq v0, v1, :L2
    const/4 v0, 4
    const/4 v1, 3
    const/4 v2, 0
  .line 3
    invoke-virtual { p0, p1, v0, v1, v2 }, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V
  .line 4
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;
    iget p2, p2, Lokhttp3/internal/http2/ErrorCode;->httpCode:I
    invoke-interface { p1, p2 }, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;
  .line 5
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;
    invoke-interface { p1 }, Lokio/BufferedSink;->flush()V
  :L1
  .line 6
    monitor-exit p0
    return-void
  :L2
  .line 7
    new-instance p1, Ljava/lang/IllegalArgumentException;
    invoke-direct { p1 }, Ljava/lang/IllegalArgumentException;-><init>()V
    throw p1
  :L3
  .line 8
    new-instance p1, Ljava/io/IOException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
  :L4
    move-exception p1
    monitor-exit p0
    throw p1
.end method

.method public declared-synchronized settings(Lokhttp3/internal/http2/Settings;)V
  .catchall { :L0 .. :L8 } :L10
  .catchall { :L9 .. :L10 } :L10
  .registers 6
    monitor-enter p0
  :L0
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z
    if-nez v0, :L9
  .line 2
    invoke-virtual { p1 }, Lokhttp3/internal/http2/Settings;->size()I
    move-result v0
    mul-int/lit8 v0, v0, 6
    const/4 v1, 0
    const/4 v2, 4
  .line 3
    invoke-virtual { p0, v1, v0, v2, v1 }, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V
  :L1
    const/16 v0, 10
    if-ge v1, v0, :L7
  .line 4
    invoke-virtual { p1, v1 }, Lokhttp3/internal/http2/Settings;->isSet(I)Z
    move-result v0
    if-nez v0, :L2
    goto :L6
  :L2
    if-ne v1, v2, :L3
    const/4 v0, 3
    goto :L5
  :L3
    const/4 v0, 7
    if-ne v1, v0, :L4
    const/4 v0, 4
    goto :L5
  :L4
    move v0, v1
  :L5
  .line 5
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;
    invoke-interface { v3, v0 }, Lokio/BufferedSink;->writeShort(I)Lokio/BufferedSink;
  .line 6
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;
    invoke-virtual { p1, v1 }, Lokhttp3/internal/http2/Settings;->get(I)I
    move-result v3
    invoke-interface { v0, v3 }, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;
  :L6
    add-int/lit8 v1, v1, 1
    goto :L1
  :L7
  .line 7
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;
    invoke-interface { p1 }, Lokio/BufferedSink;->flush()V
  :L8
  .line 8
    monitor-exit p0
    return-void
  :L9
  .line 9
    new-instance p1, Ljava/io/IOException;
    const-string v0, "closed"
    invoke-direct { p1, v0 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
  :L10
    move-exception p1
    monitor-exit p0
    goto :L12
  :L11
    throw p1
  :L12
    goto :L11
.end method

.method public declared-synchronized synReply(ZILjava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(ZI",
      "Ljava/util/List<",
      "Lokhttp3/internal/http2/Header;",
      ">;)V"
    }
  .end annotation
  .catchall { :L0 .. :L1 } :L3
  .catchall { :L2 .. :L3 } :L3
  .registers 5
    monitor-enter p0
  :L0
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z
    if-nez v0, :L2
  .line 2
    invoke-virtual { p0, p1, p2, p3 }, Lokhttp3/internal/http2/Http2Writer;->headers(ZILjava/util/List;)V
  :L1
  .line 3
    monitor-exit p0
    return-void
  :L2
  .line 4
    new-instance p1, Ljava/io/IOException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
  :L3
    move-exception p1
    monitor-exit p0
    throw p1
.end method

.method public declared-synchronized synStream(ZIILjava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(ZII",
      "Ljava/util/List<",
      "Lokhttp3/internal/http2/Header;",
      ">;)V"
    }
  .end annotation
  .catchall { :L0 .. :L1 } :L3
  .catchall { :L2 .. :L3 } :L3
  .registers 5
    monitor-enter p0
  :L0
  .line 1
    iget-boolean p3, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z
    if-nez p3, :L2
  .line 2
    invoke-virtual { p0, p1, p2, p4 }, Lokhttp3/internal/http2/Http2Writer;->headers(ZILjava/util/List;)V
  :L1
  .line 3
    monitor-exit p0
    return-void
  :L2
  .line 4
    new-instance p1, Ljava/io/IOException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
  :L3
    move-exception p1
    monitor-exit p0
    throw p1
.end method

.method public declared-synchronized windowUpdate(IJ)V
  .catchall { :L0 .. :L1 } :L4
  .catchall { :L2 .. :L4 } :L4
  .registers 8
    monitor-enter p0
  :L0
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z
    if-nez v0, :L3
    const-wide/16 v0, 0
    const/4 v2, 0
    cmp-long v3, p2, v0
    if-eqz v3, :L2
    const-wide/32 v0, 2147483647
    cmp-long v3, p2, v0
    if-gtz v3, :L2
    const/4 v0, 4
    const/16 v1, 8
  .line 2
    invoke-virtual { p0, p1, v0, v1, v2 }, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V
  .line 3
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;
    long-to-int p3, p2
    invoke-interface { p1, p3 }, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;
  .line 4
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;
    invoke-interface { p1 }, Lokio/BufferedSink;->flush()V
  :L1
  .line 5
    monitor-exit p0
    return-void
  :L2
    const-string p1, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"
    const/4 v0, 1
    new-array v0, v0, [Ljava/lang/Object;
  .line 6
    invoke-static { p2, p3 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object p2
    aput-object p2, v0, v2
  .line 7
    invoke-static { p1, v0 }, Lokhttp3/internal/http2/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    move-result-object p1
    throw p1
  :L3
  .line 8
    new-instance p1, Ljava/io/IOException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
  :L4
    move-exception p1
    monitor-exit p0
    throw p1
.end method
