.class final Lokhttp3/internal/http2/Http2Reader;
.super Ljava/lang/Object;
.implements Ljava/io/Closeable;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lokhttp3/internal/http2/Http2Reader$Handler;,
    Lokhttp3/internal/http2/Http2Reader$ContinuationSource;
  }
.end annotation

.field final static logger:Ljava/util/logging/Logger;

.field private final client:Z

.field private final continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

.field final hpackReader:Lokhttp3/internal/http2/Hpack$Reader;

.field private final source:Lokio/BufferedSource;

.method static constructor <clinit>()V
  .registers 1
  .line 1
    const-class v0, Lokhttp3/internal/http2/Http2;
    invoke-virtual { v0 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    move-result-object v0
    sput-object v0, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;
    return-void
.end method

.method constructor <init>(Lokio/BufferedSource;Z)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;
  .line 3
    iput-boolean p2, p0, Lokhttp3/internal/http2/Http2Reader;->client:Z
  .line 4
    new-instance p2, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;
    invoke-direct { p2, p1 }, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;-><init>(Lokio/BufferedSource;)V
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;
  .line 5
    new-instance p1, Lokhttp3/internal/http2/Hpack$Reader;
    const/16 v0, 4096
    invoke-direct { p1, v0, p2 }, Lokhttp3/internal/http2/Hpack$Reader;-><init>(ILokio/Source;)V
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->hpackReader:Lokhttp3/internal/http2/Hpack$Reader;
    return-void
.end method

.method static lengthWithoutPadding(IBS)I
  .registers 4
    and-int/lit8 p1, p1, 8
    if-eqz p1, :L0
    add-int/lit8 p0, p0, -1
  :L0
    if-gt p2, p0, :L1
    sub-int/2addr p0, p2
    int-to-short p0, p0
    return p0
  :L1
    const/4 p1, 2
    new-array p1, p1, [Ljava/lang/Object;
    const/4 v0, 0
  .line 1
    invoke-static { p2 }, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;
    move-result-object p2
    aput-object p2, p1, v0
    const/4 p2, 1
    invoke-static { p0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p0
    aput-object p0, p1, p2
    const-string p0, "PROTOCOL_ERROR padding %s > remaining length %s"
    invoke-static { p0, p1 }, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    move-result-object p0
    throw p0
.end method

.method private readData(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
  .registers 9
    const/4 v0, 0
    if-eqz p4, :L6
    and-int/lit8 v1, p3, 1
    const/4 v2, 1
    if-eqz v1, :L0
    const/4 v1, 1
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    and-int/lit8 v3, p3, 32
    if-eqz v3, :L2
    goto :L3
  :L2
    const/4 v2, 0
  :L3
    if-nez v2, :L5
    and-int/lit8 v2, p3, 8
    if-eqz v2, :L4
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;
    invoke-interface { v0 }, Lokio/BufferedSource;->readByte()B
    move-result v0
    and-int/lit16 v0, v0, 255
    int-to-short v0, v0
  :L4
  .line 2
    invoke-static { p2, p3, v0 }, Lokhttp3/internal/http2/Http2Reader;->lengthWithoutPadding(IBS)I
    move-result p2
  .line 3
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;
    invoke-interface { p1, v1, p4, p3, p2 }, Lokhttp3/internal/http2/Http2Reader$Handler;->data(ZILokio/BufferedSource;I)V
  .line 4
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;
    int-to-long p2, v0
    invoke-interface { p1, p2, p3 }, Lokio/BufferedSource;->skip(J)V
    return-void
  :L5
    new-array p1, v0, [Ljava/lang/Object;
    const-string p2, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"
  .line 5
    invoke-static { p2, p1 }, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    move-result-object p1
    throw p1
  :L6
    new-array p1, v0, [Ljava/lang/Object;
    const-string p2, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"
  .line 6
    invoke-static { p2, p1 }, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    move-result-object p1
    throw p1
.end method

.method private readGoAway(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
  .registers 8
    const/4 p3, 1
    const/16 v0, 8
    const/4 v1, 0
    if-lt p2, v0, :L3
    if-nez p4, :L2
  .line 1
    iget-object p4, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;
    invoke-interface { p4 }, Lokio/BufferedSource;->readInt()I
    move-result p4
  .line 2
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;
    invoke-interface { v2 }, Lokio/BufferedSource;->readInt()I
    move-result v2
    sub-int/2addr p2, v0
  .line 3
    invoke-static { v2 }, Lokhttp3/internal/http2/ErrorCode;->fromHttp2(I)Lokhttp3/internal/http2/ErrorCode;
    move-result-object v0
    if-eqz v0, :L1
  .line 4
    sget-object p3, Lokio/ByteString;->EMPTY:Lokio/ByteString;
    if-lez p2, :L0
  .line 5
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;
    int-to-long v1, p2
    invoke-interface { p3, v1, v2 }, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;
    move-result-object p3
  :L0
  .line 6
    invoke-interface { p1, p4, v0, p3 }, Lokhttp3/internal/http2/Http2Reader$Handler;->goAway(ILokhttp3/internal/http2/ErrorCode;Lokio/ByteString;)V
    return-void
  :L1
    new-array p1, p3, [Ljava/lang/Object;
  .line 7
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p2
    aput-object p2, p1, v1
    const-string p2, "TYPE_GOAWAY unexpected error code: %d"
    invoke-static { p2, p1 }, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    move-result-object p1
    throw p1
  :L2
    new-array p1, v1, [Ljava/lang/Object;
    const-string p2, "TYPE_GOAWAY streamId != 0"
  .line 8
    invoke-static { p2, p1 }, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    move-result-object p1
    throw p1
  :L3
    new-array p1, p3, [Ljava/lang/Object;
  .line 9
    invoke-static { p2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p2
    aput-object p2, p1, v1
    const-string p2, "TYPE_GOAWAY length < 8: %s"
    invoke-static { p2, p1 }, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    move-result-object p1
    throw p1
.end method

.method private readHeaderBlock(ISBI)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(ISBI)",
      "Ljava/util/List<",
      "Lokhttp3/internal/http2/Header;",
      ">;"
    }
  .end annotation
  .registers 6
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;
    iput p1, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->left:I
    iput p1, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->length:I
  .line 2
    iput-short p2, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->padding:S
  .line 3
    iput-byte p3, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->flags:B
  .line 4
    iput p4, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->streamId:I
  .line 5
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->hpackReader:Lokhttp3/internal/http2/Hpack$Reader;
    invoke-virtual { p1 }, Lokhttp3/internal/http2/Hpack$Reader;->readHeaders()V
  .line 6
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->hpackReader:Lokhttp3/internal/http2/Hpack$Reader;
    invoke-virtual { p1 }, Lokhttp3/internal/http2/Hpack$Reader;->getAndResetHeaderList()Ljava/util/List;
    move-result-object p1
    return-object p1
.end method

.method private readHeaders(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
  .registers 8
    const/4 v0, 0
    if-eqz p4, :L4
    and-int/lit8 v1, p3, 1
    if-eqz v1, :L0
    const/4 v1, 1
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    and-int/lit8 v2, p3, 8
    if-eqz v2, :L2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;
    invoke-interface { v0 }, Lokio/BufferedSource;->readByte()B
    move-result v0
    and-int/lit16 v0, v0, 255
    int-to-short v0, v0
  :L2
    and-int/lit8 v2, p3, 32
    if-eqz v2, :L3
  .line 2
    invoke-direct { p0, p1, p4 }, Lokhttp3/internal/http2/Http2Reader;->readPriority(Lokhttp3/internal/http2/Http2Reader$Handler;I)V
    add-int/lit8 p2, p2, -5
  :L3
  .line 3
    invoke-static { p2, p3, v0 }, Lokhttp3/internal/http2/Http2Reader;->lengthWithoutPadding(IBS)I
    move-result p2
  .line 4
    invoke-direct { p0, p2, v0, p3, p4 }, Lokhttp3/internal/http2/Http2Reader;->readHeaderBlock(ISBI)Ljava/util/List;
    move-result-object p2
    const/4 p3, -1
  .line 5
    invoke-interface { p1, v1, p4, p3, p2 }, Lokhttp3/internal/http2/Http2Reader$Handler;->headers(ZIILjava/util/List;)V
    return-void
  :L4
    new-array p1, v0, [Ljava/lang/Object;
    const-string p2, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"
  .line 6
    invoke-static { p2, p1 }, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    move-result-object p1
    throw p1
.end method

.method static readMedium(Lokio/BufferedSource;)I
  .registers 3
  .line 1
    invoke-interface { p0 }, Lokio/BufferedSource;->readByte()B
    move-result v0
    and-int/lit16 v0, v0, 255
    shl-int/lit8 v0, v0, 16
  .line 2
    invoke-interface { p0 }, Lokio/BufferedSource;->readByte()B
    move-result v1
    and-int/lit16 v1, v1, 255
    shl-int/lit8 v1, v1, 8
    or-int/2addr v0, v1
  .line 3
    invoke-interface { p0 }, Lokio/BufferedSource;->readByte()B
    move-result p0
    and-int/lit16 p0, p0, 255
    or-int/2addr p0, v0
    return p0
.end method

.method private readPing(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
  .registers 8
    const/4 v0, 0
    const/4 v1, 1
    const/16 v2, 8
    if-ne p2, v2, :L2
    if-nez p4, :L1
  .line 1
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;
    invoke-interface { p2 }, Lokio/BufferedSource;->readInt()I
    move-result p2
  .line 2
    iget-object p4, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;
    invoke-interface { p4 }, Lokio/BufferedSource;->readInt()I
    move-result p4
    and-int/2addr p3, v1
    if-eqz p3, :L0
    const/4 v0, 1
  :L0
  .line 3
    invoke-interface { p1, v0, p2, p4 }, Lokhttp3/internal/http2/Http2Reader$Handler;->ping(ZII)V
    return-void
  :L1
    new-array p1, v0, [Ljava/lang/Object;
    const-string p2, "TYPE_PING streamId != 0"
  .line 4
    invoke-static { p2, p1 }, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    move-result-object p1
    throw p1
  :L2
    new-array p1, v1, [Ljava/lang/Object;
  .line 5
    invoke-static { p2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p2
    aput-object p2, p1, v0
    const-string p2, "TYPE_PING length != 8: %s"
    invoke-static { p2, p1 }, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    move-result-object p1
    throw p1
.end method

.method private readPriority(Lokhttp3/internal/http2/Http2Reader$Handler;I)V
  .registers 7
  .line 4
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;
    invoke-interface { v0 }, Lokio/BufferedSource;->readInt()I
    move-result v0
    const/high16 v1, -32768
    and-int/2addr v1, v0
    const/4 v2, 1
    if-eqz v1, :L0
    const/4 v1, 1
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    const v3, 2147483647
    and-int/2addr v0, v3
  .line 5
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;
    invoke-interface { v3 }, Lokio/BufferedSource;->readByte()B
    move-result v3
    and-int/lit16 v3, v3, 255
    add-int/2addr v3, v2
  .line 6
    invoke-interface { p1, p2, v0, v3, v1 }, Lokhttp3/internal/http2/Http2Reader$Handler;->priority(IIIZ)V
    return-void
.end method

.method private readPriority(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
  .registers 6
    const/4 p3, 0
    const/4 v0, 5
    if-ne p2, v0, :L1
    if-eqz p4, :L0
  .line 1
    invoke-direct { p0, p1, p4 }, Lokhttp3/internal/http2/Http2Reader;->readPriority(Lokhttp3/internal/http2/Http2Reader$Handler;I)V
    return-void
  :L0
    new-array p1, p3, [Ljava/lang/Object;
    const-string p2, "TYPE_PRIORITY streamId == 0"
  .line 2
    invoke-static { p2, p1 }, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    move-result-object p1
    throw p1
  :L1
    const/4 p1, 1
    new-array p1, p1, [Ljava/lang/Object;
  .line 3
    invoke-static { p2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p2
    aput-object p2, p1, p3
    const-string p2, "TYPE_PRIORITY length: %d != 5"
    invoke-static { p2, p1 }, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    move-result-object p1
    throw p1
.end method

.method private readPushPromise(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
  .registers 8
    const/4 v0, 0
    if-eqz p4, :L1
    and-int/lit8 v1, p3, 8
    if-eqz v1, :L0
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;
    invoke-interface { v0 }, Lokio/BufferedSource;->readByte()B
    move-result v0
    and-int/lit16 v0, v0, 255
    int-to-short v0, v0
  :L0
  .line 2
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;
    invoke-interface { v1 }, Lokio/BufferedSource;->readInt()I
    move-result v1
    const v2, 2147483647
    and-int/2addr v1, v2
    add-int/lit8 p2, p2, -4
  .line 3
    invoke-static { p2, p3, v0 }, Lokhttp3/internal/http2/Http2Reader;->lengthWithoutPadding(IBS)I
    move-result p2
  .line 4
    invoke-direct { p0, p2, v0, p3, p4 }, Lokhttp3/internal/http2/Http2Reader;->readHeaderBlock(ISBI)Ljava/util/List;
    move-result-object p2
  .line 5
    invoke-interface { p1, p4, v1, p2 }, Lokhttp3/internal/http2/Http2Reader$Handler;->pushPromise(IILjava/util/List;)V
    return-void
  :L1
    new-array p1, v0, [Ljava/lang/Object;
    const-string p2, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"
  .line 6
    invoke-static { p2, p1 }, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    move-result-object p1
    throw p1
.end method

.method private readRstStream(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
  .registers 7
    const/4 p3, 1
    const/4 v0, 0
    const/4 v1, 4
    if-ne p2, v1, :L2
    if-eqz p4, :L1
  .line 1
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;
    invoke-interface { p2 }, Lokio/BufferedSource;->readInt()I
    move-result p2
  .line 2
    invoke-static { p2 }, Lokhttp3/internal/http2/ErrorCode;->fromHttp2(I)Lokhttp3/internal/http2/ErrorCode;
    move-result-object v1
    if-eqz v1, :L0
  .line 3
    invoke-interface { p1, p4, v1 }, Lokhttp3/internal/http2/Http2Reader$Handler;->rstStream(ILokhttp3/internal/http2/ErrorCode;)V
    return-void
  :L0
    new-array p1, p3, [Ljava/lang/Object;
  .line 4
    invoke-static { p2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p2
    aput-object p2, p1, v0
    const-string p2, "TYPE_RST_STREAM unexpected error code: %d"
    invoke-static { p2, p1 }, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    move-result-object p1
    throw p1
  :L1
    new-array p1, v0, [Ljava/lang/Object;
    const-string p2, "TYPE_RST_STREAM streamId == 0"
  .line 5
    invoke-static { p2, p1 }, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    move-result-object p1
    throw p1
  :L2
    new-array p1, p3, [Ljava/lang/Object;
  .line 6
    invoke-static { p2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p2
    aput-object p2, p1, v0
    const-string p2, "TYPE_RST_STREAM length: %d != 4"
    invoke-static { p2, p1 }, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    move-result-object p1
    throw p1
.end method

.method private readSettings(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
  .registers 11
    const/4 v0, 0
    if-nez p4, :L13
    const/4 p4, 1
    and-int/2addr p3, p4
    if-eqz p3, :L1
    if-nez p2, :L0
  .line 1
    invoke-interface { p1 }, Lokhttp3/internal/http2/Http2Reader$Handler;->ackSettings()V
    return-void
  :L0
    new-array p1, v0, [Ljava/lang/Object;
    const-string p2, "FRAME_SIZE_ERROR ack frame should be empty!"
  .line 2
    invoke-static { p2, p1 }, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    move-result-object p1
    throw p1
  :L1
  .line 3
    rem-int/lit8 p3, p2, 6
    if-nez p3, :L12
  .line 4
    new-instance p3, Lokhttp3/internal/http2/Settings;
    invoke-direct { p3 }, Lokhttp3/internal/http2/Settings;-><init>()V
    const/4 v1, 0
  :L2
    if-ge v1, p2, :L11
  .line 5
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;
    invoke-interface { v2 }, Lokio/BufferedSource;->readShort()S
    move-result v2
    const v3, 65535
    and-int/2addr v2, v3
  .line 6
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;
    invoke-interface { v3 }, Lokio/BufferedSource;->readInt()I
    move-result v3
    const/4 v4, 2
    const/4 v5, 4
    if-eq v2, v4, :L8
    const/4 v4, 3
    if-eq v2, v4, :L7
    if-eq v2, v5, :L5
    const/4 v4, 5
    if-eq v2, v4, :L3
    goto :L10
  :L3
    const/16 v4, 16384
    if-lt v3, v4, :L4
    const v4, 16777215
    if-gt v3, v4, :L4
    goto :L10
  :L4
    new-array p1, p4, [Ljava/lang/Object;
  .line 7
    invoke-static { v3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p2
    aput-object p2, p1, v0
    const-string p2, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"
    invoke-static { p2, p1 }, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    move-result-object p1
    throw p1
  :L5
    const/4 v2, 7
    if-ltz v3, :L6
    goto :L10
  :L6
    new-array p1, v0, [Ljava/lang/Object;
    const-string p2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"
  .line 8
    invoke-static { p2, p1 }, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    move-result-object p1
    throw p1
  :L7
    const/4 v2, 4
    goto :L10
  :L8
    if-eqz v3, :L10
    if-ne v3, p4, :L9
    goto :L10
  :L9
    new-array p1, v0, [Ljava/lang/Object;
    const-string p2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"
  .line 9
    invoke-static { p2, p1 }, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    move-result-object p1
    throw p1
  :L10
  .line 10
    invoke-virtual { p3, v2, v3 }, Lokhttp3/internal/http2/Settings;->set(II)Lokhttp3/internal/http2/Settings;
    add-int/lit8 v1, v1, 6
    goto :L2
  :L11
  .line 11
    invoke-interface { p1, v0, p3 }, Lokhttp3/internal/http2/Http2Reader$Handler;->settings(ZLokhttp3/internal/http2/Settings;)V
    return-void
  :L12
    new-array p1, p4, [Ljava/lang/Object;
  .line 12
    invoke-static { p2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p2
    aput-object p2, p1, v0
    const-string p2, "TYPE_SETTINGS length %% 6 != 0: %s"
    invoke-static { p2, p1 }, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    move-result-object p1
    throw p1
  :L13
    new-array p1, v0, [Ljava/lang/Object;
    const-string p2, "TYPE_SETTINGS streamId != 0"
  .line 13
    invoke-static { p2, p1 }, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    move-result-object p1
    goto :L15
  :L14
    throw p1
  :L15
    goto :L14
.end method

.method private readWindowUpdate(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
  .registers 10
    const/4 p3, 0
    const/4 v0, 1
    const/4 v1, 4
    if-ne p2, v1, :L1
  .line 1
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;
    invoke-interface { p2 }, Lokio/BufferedSource;->readInt()I
    move-result p2
    int-to-long v1, p2
    const-wide/32 v3, 2147483647
    and-long/2addr v1, v3
    const-wide/16 v3, 0
    cmp-long p2, v1, v3
    if-eqz p2, :L0
  .line 2
    invoke-interface { p1, p4, v1, v2 }, Lokhttp3/internal/http2/Http2Reader$Handler;->windowUpdate(IJ)V
    return-void
  :L0
    new-array p1, v0, [Ljava/lang/Object;
  .line 3
    invoke-static { v1, v2 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object p2
    aput-object p2, p1, p3
    const-string p2, "windowSizeIncrement was 0"
    invoke-static { p2, p1 }, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    move-result-object p1
    throw p1
  :L1
    new-array p1, v0, [Ljava/lang/Object;
  .line 4
    invoke-static { p2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p2
    aput-object p2, p1, p3
    const-string p2, "TYPE_WINDOW_UPDATE length !=4: %s"
    invoke-static { p2, p1 }, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    move-result-object p1
    throw p1
.end method

.method public close()V
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;
    invoke-interface { v0 }, Lokio/Source;->close()V
    return-void
.end method

.method public nextFrame(ZLokhttp3/internal/http2/Http2Reader$Handler;)Z
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L16
  .registers 9
    const/4 v0, 0
  :L0
  .line 1
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;
    const-wide/16 v2, 9
    invoke-interface { v1, v2, v3 }, Lokio/BufferedSource;->require(J)V
  :L1
  .line 2
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;
    invoke-static { v1 }, Lokhttp3/internal/http2/Http2Reader;->readMedium(Lokio/BufferedSource;)I
    move-result v1
    const/4 v2, 1
    if-ltz v1, :L15
    const/16 v3, 16384
    if-gt v1, v3, :L15
  .line 3
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;
    invoke-interface { v3 }, Lokio/BufferedSource;->readByte()B
    move-result v3
    and-int/lit16 v3, v3, 255
    int-to-byte v3, v3
    if-eqz p1, :L3
    const/4 p1, 4
    if-ne v3, p1, :L2
    goto :L3
  :L2
    new-array p1, v2, [Ljava/lang/Object;
  .line 4
    invoke-static { v3 }, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
    move-result-object p2
    aput-object p2, p1, v0
    const-string p2, "Expected a SETTINGS frame but was %s"
    invoke-static { p2, p1 }, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    move-result-object p1
    throw p1
  :L3
  .line 5
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;
    invoke-interface { p1 }, Lokio/BufferedSource;->readByte()B
    move-result p1
    and-int/lit16 p1, p1, 255
    int-to-byte p1, p1
  .line 6
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;
    invoke-interface { v0 }, Lokio/BufferedSource;->readInt()I
    move-result v0
    const v4, 2147483647
    and-int/2addr v0, v4
  .line 7
    sget-object v4, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;
    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;
    invoke-virtual { v4, v5 }, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z
    move-result v4
    if-eqz v4, :L4
    sget-object v4, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;
    invoke-static { v2, v0, v1, v3, p1 }, Lokhttp3/internal/http2/Http2;->frameLog(ZIIBB)Ljava/lang/String;
    move-result-object v5
    invoke-virtual { v4, v5 }, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
  :L4
    packed-switch v3, :L17
  .line 8
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;
    int-to-long v0, v1
    invoke-interface { p1, v0, v1 }, Lokio/BufferedSource;->skip(J)V
    goto :L14
  :L5
  .line 9
    invoke-direct { p0, p2, v1, p1, v0 }, Lokhttp3/internal/http2/Http2Reader;->readWindowUpdate(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
    goto :L14
  :L6
  .line 10
    invoke-direct { p0, p2, v1, p1, v0 }, Lokhttp3/internal/http2/Http2Reader;->readGoAway(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
    goto :L14
  :L7
  .line 11
    invoke-direct { p0, p2, v1, p1, v0 }, Lokhttp3/internal/http2/Http2Reader;->readPing(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
    goto :L14
  :L8
  .line 12
    invoke-direct { p0, p2, v1, p1, v0 }, Lokhttp3/internal/http2/Http2Reader;->readPushPromise(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
    goto :L14
  :L9
  .line 13
    invoke-direct { p0, p2, v1, p1, v0 }, Lokhttp3/internal/http2/Http2Reader;->readSettings(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
    goto :L14
  :L10
  .line 14
    invoke-direct { p0, p2, v1, p1, v0 }, Lokhttp3/internal/http2/Http2Reader;->readRstStream(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
    goto :L14
  :L11
  .line 15
    invoke-direct { p0, p2, v1, p1, v0 }, Lokhttp3/internal/http2/Http2Reader;->readPriority(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
    goto :L14
  :L12
  .line 16
    invoke-direct { p0, p2, v1, p1, v0 }, Lokhttp3/internal/http2/Http2Reader;->readHeaders(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
    goto :L14
  :L13
  .line 17
    invoke-direct { p0, p2, v1, p1, v0 }, Lokhttp3/internal/http2/Http2Reader;->readData(Lokhttp3/internal/http2/Http2Reader$Handler;IBI)V
  :L14
    return v2
  :L15
    new-array p1, v2, [Ljava/lang/Object;
  .line 18
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p2
    aput-object p2, p1, v0
    const-string p2, "FRAME_SIZE_ERROR: %s"
    invoke-static { p2, p1 }, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    move-result-object p1
    throw p1
  :L16
    return v0
  :L17
  .packed-switch 0
    :L13
    :L12
    :L11
    :L10
    :L9
    :L8
    :L7
    :L6
    :L5
  .end packed-switch
.end method

.method public readConnectionPreface(Lokhttp3/internal/http2/Http2Reader$Handler;)V
  .registers 7
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Reader;->client:Z
    const/4 v1, 0
    const/4 v2, 1
    if-eqz v0, :L1
  .line 2
    invoke-virtual { p0, v2, p1 }, Lokhttp3/internal/http2/Http2Reader;->nextFrame(ZLokhttp3/internal/http2/Http2Reader$Handler;)Z
    move-result p1
    if-eqz p1, :L0
    goto :L3
  :L0
    new-array p1, v1, [Ljava/lang/Object;
    const-string v0, "Required SETTINGS preface not received"
  .line 3
    invoke-static { v0, p1 }, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    move-result-object p1
    throw p1
  :L1
  .line 4
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;
    sget-object v0, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lokio/ByteString;
    invoke-virtual { v0 }, Lokio/ByteString;->size()I
    move-result v0
    int-to-long v3, v0
    invoke-interface { p1, v3, v4 }, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;
    move-result-object p1
  .line 5
    sget-object v0, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;
    invoke-virtual { v0, v3 }, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z
    move-result v0
    if-eqz v0, :L2
    sget-object v0, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;
    new-array v3, v2, [Ljava/lang/Object;
    invoke-virtual { p1 }, Lokio/ByteString;->hex()Ljava/lang/String;
    move-result-object v4
    aput-object v4, v3, v1
    const-string v4, "<< CONNECTION %s"
    invoke-static { v4, v3 }, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v0, v3 }, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
  :L2
  .line 6
    sget-object v0, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lokio/ByteString;
    invoke-virtual { v0, p1 }, Lokio/ByteString;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L4
  :L3
    return-void
  :L4
    new-array v0, v2, [Ljava/lang/Object;
  .line 7
    invoke-virtual { p1 }, Lokio/ByteString;->utf8()Ljava/lang/String;
    move-result-object p1
    aput-object p1, v0, v1
    const-string p1, "Expected a connection header but was %s"
    invoke-static { p1, v0 }, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    move-result-object p1
    throw p1
.end method
