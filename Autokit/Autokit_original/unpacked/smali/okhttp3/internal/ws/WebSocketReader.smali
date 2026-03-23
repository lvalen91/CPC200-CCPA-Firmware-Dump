.class final Lokhttp3/internal/ws/WebSocketReader;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lokhttp3/internal/ws/WebSocketReader$FrameCallback;
  }
.end annotation

.field closed:Z

.field private final controlFrameBuffer:Lokio/Buffer;

.field final frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

.field frameLength:J

.field final isClient:Z

.field isControlFrame:Z

.field isFinalFrame:Z

.field private final maskCursor:Lokio/Buffer$UnsafeCursor;

.field private final maskKey:[B

.field private final messageFrameBuffer:Lokio/Buffer;

.field opcode:I

.field final source:Lokio/BufferedSource;

.method constructor <init>(ZLokio/BufferedSource;Lokhttp3/internal/ws/WebSocketReader$FrameCallback;)V
  .registers 5
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Lokio/Buffer;
    invoke-direct { v0 }, Lokio/Buffer;-><init>()V
    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;
  .line 3
    new-instance v0, Lokio/Buffer;
    invoke-direct { v0 }, Lokio/Buffer;-><init>()V
    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;
    if-eqz p2, :L5
    if-eqz p3, :L4
  .line 4
    iput-boolean p1, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z
  .line 5
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;
  .line 6
    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;
    const/4 p2, 0
    if-eqz p1, :L0
    move-object p3, p2
    goto :L1
  :L0
    const/4 p3, 4
    new-array p3, p3, [B
  :L1
  .line 7
    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B
    if-eqz p1, :L2
    goto :L3
  :L2
  .line 8
    new-instance p2, Lokio/Buffer$UnsafeCursor;
    invoke-direct { p2 }, Lokio/Buffer$UnsafeCursor;-><init>()V
  :L3
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;
    return-void
  :L4
  .line 9
    new-instance p1, Ljava/lang/NullPointerException;
    const-string p2, "frameCallback == null"
    invoke-direct { p1, p2 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
  :L5
  .line 10
    new-instance p1, Ljava/lang/NullPointerException;
    const-string p2, "source == null"
    invoke-direct { p1, p2 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method private readControlFrame()V
  .registers 9
  .line 1
    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J
    const-wide/16 v2, 0
    cmp-long v4, v0, v2
    if-lez v4, :L0
  .line 2
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;
    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;
    invoke-interface { v4, v5, v0, v1 }, Lokio/BufferedSource;->readFully(Lokio/Buffer;J)V
  .line 3
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z
    if-nez v0, :L0
  .line 4
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;
    invoke-virtual { v0, v1 }, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
  .line 5
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;
    invoke-virtual { v0, v2, v3 }, Lokio/Buffer$UnsafeCursor;->seek(J)I
  .line 6
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B
    invoke-static { v0, v1 }, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask(Lokio/Buffer$UnsafeCursor;[B)V
  .line 7
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;
    invoke-virtual { v0 }, Lokio/Buffer$UnsafeCursor;->close()V
  :L0
  .line 8
    iget v0, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I
    packed-switch v0, :L9
  .line 9
    new-instance v0, Ljava/net/ProtocolException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Unknown control opcode: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I
    invoke-static { v2 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
  .line 10
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;
    invoke-virtual { v1 }, Lokio/Buffer;->readByteString()Lokio/ByteString;
    move-result-object v1
    invoke-interface { v0, v1 }, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadPong(Lokio/ByteString;)V
    goto :L7
  :L2
  .line 11
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;
    invoke-virtual { v1 }, Lokio/Buffer;->readByteString()Lokio/ByteString;
    move-result-object v1
    invoke-interface { v0, v1 }, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadPing(Lokio/ByteString;)V
    goto :L7
  :L3
    const/16 v0, 1005
  .line 12
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;
    invoke-virtual { v1 }, Lokio/Buffer;->size()J
    move-result-wide v4
    const-wide/16 v6, 1
    cmp-long v1, v4, v6
    if-eqz v1, :L8
    cmp-long v1, v4, v2
    if-eqz v1, :L5
  .line 13
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;
    invoke-virtual { v0 }, Lokio/Buffer;->readShort()S
    move-result v0
  .line 14
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;
    invoke-virtual { v1 }, Lokio/Buffer;->readUtf8()Ljava/lang/String;
    move-result-object v1
  .line 15
    invoke-static { v0 }, Lokhttp3/internal/ws/WebSocketProtocol;->closeCodeExceptionMessage(I)Ljava/lang/String;
    move-result-object v2
    if-nez v2, :L4
    goto :L6
  :L4
  .line 16
    new-instance v0, Ljava/net/ProtocolException;
    invoke-direct { v0, v2 }, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
    throw v0
  :L5
    const-string v1, ""
  :L6
  .line 17
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;
    invoke-interface { v2, v0, v1 }, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadClose(ILjava/lang/String;)V
    const/4 v0, 1
  .line 18
    iput-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z
  :L7
    return-void
  :L8
  .line 19
    new-instance v0, Ljava/net/ProtocolException;
    const-string v1, "Malformed close payload length of 1."
    invoke-direct { v0, v1 }, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
    throw v0
  :L9
  .packed-switch 8
    :L3
    :L2
    :L1
  .end packed-switch
.end method

.method private readHeader()V
  .catchall { :L0 .. :L1 } :L26
  .registers 7
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z
    if-nez v0, :L27
  .line 2
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;
    invoke-interface { v0 }, Lokio/Source;->timeout()Lokio/Timeout;
    move-result-object v0
    invoke-virtual { v0 }, Lokio/Timeout;->timeoutNanos()J
    move-result-wide v0
  .line 3
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;
    invoke-interface { v2 }, Lokio/Source;->timeout()Lokio/Timeout;
    move-result-object v2
    invoke-virtual { v2 }, Lokio/Timeout;->clearTimeout()Lokio/Timeout;
  :L0
  .line 4
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;
    invoke-interface { v2 }, Lokio/BufferedSource;->readByte()B
    move-result v2
  :L1
    and-int/lit16 v2, v2, 255
  .line 5
    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;
    invoke-interface { v3 }, Lokio/Source;->timeout()Lokio/Timeout;
    move-result-object v3
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-virtual { v3, v0, v1, v4 }, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
    and-int/lit8 v0, v2, 15
  .line 6
    iput v0, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I
    and-int/lit16 v0, v2, 128
    const/4 v1, 1
    const/4 v3, 0
    if-eqz v0, :L2
    const/4 v0, 1
    goto :L3
  :L2
    const/4 v0, 0
  :L3
  .line 7
    iput-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z
    and-int/lit8 v0, v2, 8
    if-eqz v0, :L4
    const/4 v0, 1
    goto :L5
  :L4
    const/4 v0, 0
  :L5
  .line 8
    iput-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z
    if-eqz v0, :L7
  .line 9
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z
    if-eqz v0, :L6
    goto :L7
  :L6
  .line 10
    new-instance v0, Ljava/net/ProtocolException;
    const-string v1, "Control frames must be final."
    invoke-direct { v0, v1 }, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
    throw v0
  :L7
    and-int/lit8 v0, v2, 64
    if-eqz v0, :L8
    const/4 v0, 1
    goto :L9
  :L8
    const/4 v0, 0
  :L9
    and-int/lit8 v4, v2, 32
    if-eqz v4, :L10
    const/4 v4, 1
    goto :L11
  :L10
    const/4 v4, 0
  :L11
    and-int/lit8 v2, v2, 16
    if-eqz v2, :L12
    const/4 v2, 1
    goto :L13
  :L12
    const/4 v2, 0
  :L13
    if-nez v0, :L25
    if-nez v4, :L25
    if-nez v2, :L25
  .line 11
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;
    invoke-interface { v0 }, Lokio/BufferedSource;->readByte()B
    move-result v0
    and-int/lit16 v0, v0, 255
    and-int/lit16 v2, v0, 128
    if-eqz v2, :L14
    goto :L15
  :L14
    const/4 v1, 0
  :L15
  .line 12
    iget-boolean v2, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z
    if-ne v1, v2, :L18
  .line 13
    new-instance v0, Ljava/net/ProtocolException;
    iget-boolean v1, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z
    if-eqz v1, :L16
    const-string v1, "Server-sent frames must not be masked."
    goto :L17
  :L16
    const-string v1, "Client-sent frames must be masked."
  :L17
  .line 14
    invoke-direct { v0, v1 }, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
    throw v0
  :L18
    and-int/lit8 v0, v0, 127
    int-to-long v2, v0
  .line 15
    iput-wide v2, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J
    const-wide/16 v4, 126
    cmp-long v0, v2, v4
    if-nez v0, :L19
  .line 16
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;
    invoke-interface { v0 }, Lokio/BufferedSource;->readShort()S
    move-result v0
    int-to-long v2, v0
    const-wide/32 v4, 65535
    and-long/2addr v2, v4
    iput-wide v2, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J
    goto :L21
  :L19
    const-wide/16 v4, 127
    cmp-long v0, v2, v4
    if-nez v0, :L21
  .line 17
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;
    invoke-interface { v0 }, Lokio/BufferedSource;->readLong()J
    move-result-wide v2
    iput-wide v2, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J
    const-wide/16 v4, 0
    cmp-long v0, v2, v4
    if-ltz v0, :L20
    goto :L21
  :L20
  .line 18
    new-instance v0, Ljava/net/ProtocolException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Frame length 0x"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-wide v2, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J
  .line 19
    invoke-static { v2, v3 }, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, " > 0x7FFFFFFFFFFFFFFF"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
    throw v0
  :L21
  .line 20
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z
    if-eqz v0, :L23
    iget-wide v2, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J
    const-wide/16 v4, 125
    cmp-long v0, v2, v4
    if-gtz v0, :L22
    goto :L23
  :L22
  .line 21
    new-instance v0, Ljava/net/ProtocolException;
    const-string v1, "Control frame must be less than 125B."
    invoke-direct { v0, v1 }, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
    throw v0
  :L23
    if-eqz v1, :L24
  .line 22
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B
    invoke-interface { v0, v1 }, Lokio/BufferedSource;->readFully([B)V
  :L24
    return-void
  :L25
  .line 23
    new-instance v0, Ljava/net/ProtocolException;
    const-string v1, "Reserved flags are unsupported."
    invoke-direct { v0, v1 }, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
    throw v0
  :L26
    move-exception v2
  .line 24
    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;
    invoke-interface { v3 }, Lokio/Source;->timeout()Lokio/Timeout;
    move-result-object v3
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-virtual { v3, v0, v1, v4 }, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
    throw v2
  :L27
  .line 25
    new-instance v0, Ljava/io/IOException;
    const-string v1, "closed"
    invoke-direct { v0, v1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method private readMessage()V
  .registers 6
  :L0
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z
    if-nez v0, :L4
  .line 2
    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J
    const-wide/16 v2, 0
    cmp-long v4, v0, v2
    if-lez v4, :L1
  .line 3
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;
    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;
    invoke-interface { v2, v3, v0, v1 }, Lokio/BufferedSource;->readFully(Lokio/Buffer;J)V
  .line 4
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z
    if-nez v0, :L1
  .line 5
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;
    invoke-virtual { v0, v1 }, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
  .line 6
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;
    invoke-virtual { v1 }, Lokio/Buffer;->size()J
    move-result-wide v1
    iget-wide v3, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J
    sub-long/2addr v1, v3
    invoke-virtual { v0, v1, v2 }, Lokio/Buffer$UnsafeCursor;->seek(J)I
  .line 7
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B
    invoke-static { v0, v1 }, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask(Lokio/Buffer$UnsafeCursor;[B)V
  .line 8
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;
    invoke-virtual { v0 }, Lokio/Buffer$UnsafeCursor;->close()V
  :L1
  .line 9
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z
    if-eqz v0, :L2
    return-void
  :L2
  .line 10
    invoke-direct { p0 }, Lokhttp3/internal/ws/WebSocketReader;->readUntilNonControlFrame()V
  .line 11
    iget v0, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I
    if-nez v0, :L3
    goto :L0
  :L3
  .line 12
    new-instance v0, Ljava/net/ProtocolException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Expected continuation opcode. Got: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I
    invoke-static { v2 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
    throw v0
  :L4
  .line 13
    new-instance v0, Ljava/io/IOException;
    const-string v1, "closed"
    invoke-direct { v0, v1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    goto :L6
  :L5
    throw v0
  :L6
    goto :L5
.end method

.method private readMessageFrame()V
  .registers 5
  .line 1
    iget v0, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I
    const/4 v1, 1
    if-eq v0, v1, :L1
    const/4 v2, 2
    if-ne v0, v2, :L0
    goto :L1
  :L0
  .line 2
    new-instance v1, Ljava/net/ProtocolException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Unknown opcode: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { v0 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { v1, v0 }, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
    throw v1
  :L1
  .line 3
    invoke-direct { p0 }, Lokhttp3/internal/ws/WebSocketReader;->readMessage()V
    if-ne v0, v1, :L2
  .line 4
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;
    invoke-virtual { v1 }, Lokio/Buffer;->readUtf8()Ljava/lang/String;
    move-result-object v1
    invoke-interface { v0, v1 }, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadMessage(Ljava/lang/String;)V
    goto :L3
  :L2
  .line 5
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;
    invoke-virtual { v1 }, Lokio/Buffer;->readByteString()Lokio/ByteString;
    move-result-object v1
    invoke-interface { v0, v1 }, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadMessage(Lokio/ByteString;)V
  :L3
    return-void
.end method

.method private readUntilNonControlFrame()V
  .registers 2
  :L0
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z
    if-nez v0, :L2
  .line 2
    invoke-direct { p0 }, Lokhttp3/internal/ws/WebSocketReader;->readHeader()V
  .line 3
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z
    if-nez v0, :L1
    goto :L2
  :L1
  .line 4
    invoke-direct { p0 }, Lokhttp3/internal/ws/WebSocketReader;->readControlFrame()V
    goto :L0
  :L2
    return-void
.end method

.method processNextFrame()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Lokhttp3/internal/ws/WebSocketReader;->readHeader()V
  .line 2
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z
    if-eqz v0, :L0
  .line 3
    invoke-direct { p0 }, Lokhttp3/internal/ws/WebSocketReader;->readControlFrame()V
    goto :L1
  :L0
  .line 4
    invoke-direct { p0 }, Lokhttp3/internal/ws/WebSocketReader;->readMessageFrame()V
  :L1
    return-void
.end method
