.class final Lokhttp3/internal/ws/WebSocketWriter;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lokhttp3/internal/ws/WebSocketWriter$FrameSink;
  }
.end annotation

.field activeWriter:Z

.field final buffer:Lokio/Buffer;

.field final frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

.field final isClient:Z

.field private final maskCursor:Lokio/Buffer$UnsafeCursor;

.field private final maskKey:[B

.field final random:Ljava/util/Random;

.field final sink:Lokio/BufferedSink;

.field final sinkBuffer:Lokio/Buffer;

.field writerClosed:Z

.method constructor <init>(ZLokio/BufferedSink;Ljava/util/Random;)V
  .registers 5
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Lokio/Buffer;
    invoke-direct { v0 }, Lokio/Buffer;-><init>()V
    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;
  .line 3
    new-instance v0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;
    invoke-direct { v0, p0 }, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;-><init>(Lokhttp3/internal/ws/WebSocketWriter;)V
    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;
    if-eqz p2, :L4
    if-eqz p3, :L3
  .line 4
    iput-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z
  .line 5
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;
  .line 6
    invoke-interface { p2 }, Lokio/BufferedSink;->buffer()Lokio/Buffer;
    move-result-object p2
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;
  .line 7
    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;
    const/4 p2, 0
    if-eqz p1, :L0
    const/4 p3, 4
    new-array p3, p3, [B
    goto :L1
  :L0
    move-object p3, p2
  :L1
  .line 8
    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B
    if-eqz p1, :L2
  .line 9
    new-instance p2, Lokio/Buffer$UnsafeCursor;
    invoke-direct { p2 }, Lokio/Buffer$UnsafeCursor;-><init>()V
  :L2
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;
    return-void
  :L3
  .line 10
    new-instance p1, Ljava/lang/NullPointerException;
    const-string p2, "random == null"
    invoke-direct { p1, p2 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
  :L4
  .line 11
    new-instance p1, Ljava/lang/NullPointerException;
    const-string p2, "sink == null"
    invoke-direct { p1, p2 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method private writeControlFrame(ILokio/ByteString;)V
  .registers 9
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z
    if-nez v0, :L3
  .line 2
    invoke-virtual { p2 }, Lokio/ByteString;->size()I
    move-result v0
    int-to-long v1, v0
    const-wide/16 v3, 125
    cmp-long v5, v1, v3
    if-gtz v5, :L2
    or-int/lit16 p1, p1, 128
  .line 3
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;
    invoke-virtual { v1, p1 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
  .line 4
    iget-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z
    if-eqz p1, :L0
    or-int/lit16 p1, v0, 128
  .line 5
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;
    invoke-virtual { v1, p1 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
  .line 6
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B
    invoke-virtual { p1, v1 }, Ljava/util/Random;->nextBytes([B)V
  .line 7
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B
    invoke-virtual { p1, v1 }, Lokio/Buffer;->write([B)Lokio/Buffer;
    if-lez v0, :L1
  .line 8
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;
    invoke-virtual { p1 }, Lokio/Buffer;->size()J
    move-result-wide v0
  .line 9
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;
    invoke-virtual { p1, p2 }, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;
  .line 10
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;
    iget-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;
    invoke-virtual { p1, p2 }, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
  .line 11
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;
    invoke-virtual { p1, v0, v1 }, Lokio/Buffer$UnsafeCursor;->seek(J)I
  .line 12
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;
    iget-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B
    invoke-static { p1, p2 }, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask(Lokio/Buffer$UnsafeCursor;[B)V
  .line 13
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;
    invoke-virtual { p1 }, Lokio/Buffer$UnsafeCursor;->close()V
    goto :L1
  :L0
  .line 14
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;
    invoke-virtual { p1, v0 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
  .line 15
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;
    invoke-virtual { p1, p2 }, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;
  :L1
  .line 16
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;
    invoke-interface { p1 }, Lokio/BufferedSink;->flush()V
    return-void
  :L2
  .line 17
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "Payload size must be less than or equal to 125"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L3
  .line 18
    new-instance p1, Ljava/io/IOException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method newMessageSink(IJ)Lokio/Sink;
  .registers 6
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->activeWriter:Z
    if-nez v0, :L0
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->activeWriter:Z
  .line 3
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;
    iput p1, v1, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I
  .line 4
    iput-wide p2, v1, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->contentLength:J
  .line 5
    iput-boolean v0, v1, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z
    const/4 p1, 0
  .line 6
    iput-boolean p1, v1, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z
    return-object v1
  :L0
  .line 7
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "Another message writer is active. Did you call close()?"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method writeClose(ILokio/ByteString;)V
  .catchall { :L4 .. :L5 } :L6
  .registers 4
  .line 1
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;
    if-nez p1, :L0
    if-eqz p2, :L3
  :L0
    if-eqz p1, :L1
  .line 2
    invoke-static { p1 }, Lokhttp3/internal/ws/WebSocketProtocol;->validateCloseCode(I)V
  :L1
  .line 3
    new-instance v0, Lokio/Buffer;
    invoke-direct { v0 }, Lokio/Buffer;-><init>()V
  .line 4
    invoke-virtual { v0, p1 }, Lokio/Buffer;->writeShort(I)Lokio/Buffer;
    if-eqz p2, :L2
  .line 5
    invoke-virtual { v0, p2 }, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;
  :L2
  .line 6
    invoke-virtual { v0 }, Lokio/Buffer;->readByteString()Lokio/ByteString;
    move-result-object v0
  :L3
    const/16 p1, 8
    const/4 p2, 1
  :L4
  .line 7
    invoke-direct { p0, p1, v0 }, Lokhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILokio/ByteString;)V
  :L5
  .line 8
    iput-boolean p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z
    return-void
  :L6
    move-exception p1
    iput-boolean p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z
    throw p1
.end method

.method writeMessageFrame(IJZZ)V
  .registers 7
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z
    if-nez v0, :L9
    const/4 v0, 0
    if-eqz p4, :L0
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    if-eqz p5, :L2
    or-int/lit16 p1, p1, 128
  :L2
  .line 2
    iget-object p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;
    invoke-virtual { p4, p1 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
  .line 3
    iget-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z
    if-eqz p1, :L3
    const/16 v0, 128
  :L3
    const-wide/16 p4, 125
    cmp-long p1, p2, p4
    if-gtz p1, :L4
    long-to-int p1, p2
    or-int/2addr p1, v0
  .line 4
    iget-object p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;
    invoke-virtual { p4, p1 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
    goto :L6
  :L4
    const-wide/32 p4, 65535
    cmp-long p1, p2, p4
    if-gtz p1, :L5
    or-int/lit8 p1, v0, 126
  .line 5
    iget-object p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;
    invoke-virtual { p4, p1 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
  .line 6
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;
    long-to-int p4, p2
    invoke-virtual { p1, p4 }, Lokio/Buffer;->writeShort(I)Lokio/Buffer;
    goto :L6
  :L5
    or-int/lit8 p1, v0, 127
  .line 7
    iget-object p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;
    invoke-virtual { p4, p1 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
  .line 8
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;
    invoke-virtual { p1, p2, p3 }, Lokio/Buffer;->writeLong(J)Lokio/Buffer;
  :L6
  .line 9
    iget-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z
    if-eqz p1, :L7
  .line 10
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;
    iget-object p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B
    invoke-virtual { p1, p4 }, Ljava/util/Random;->nextBytes([B)V
  .line 11
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;
    iget-object p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B
    invoke-virtual { p1, p4 }, Lokio/Buffer;->write([B)Lokio/Buffer;
    const-wide/16 p4, 0
    cmp-long p1, p2, p4
    if-lez p1, :L8
  .line 12
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;
    invoke-virtual { p1 }, Lokio/Buffer;->size()J
    move-result-wide p4
  .line 13
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;
    invoke-virtual { p1, v0, p2, p3 }, Lokio/Buffer;->write(Lokio/Buffer;J)V
  .line 14
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;
    iget-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;
    invoke-virtual { p1, p2 }, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
  .line 15
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;
    invoke-virtual { p1, p4, p5 }, Lokio/Buffer$UnsafeCursor;->seek(J)I
  .line 16
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;
    iget-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B
    invoke-static { p1, p2 }, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask(Lokio/Buffer$UnsafeCursor;[B)V
  .line 17
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;
    invoke-virtual { p1 }, Lokio/Buffer$UnsafeCursor;->close()V
    goto :L8
  :L7
  .line 18
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;
    iget-object p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;
    invoke-virtual { p1, p4, p2, p3 }, Lokio/Buffer;->write(Lokio/Buffer;J)V
  :L8
  .line 19
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;
    invoke-interface { p1 }, Lokio/BufferedSink;->emit()Lokio/BufferedSink;
    return-void
  :L9
  .line 20
    new-instance p1, Ljava/io/IOException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method writePing(Lokio/ByteString;)V
  .registers 3
    const/16 v0, 9
  .line 1
    invoke-direct { p0, v0, p1 }, Lokhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILokio/ByteString;)V
    return-void
.end method

.method writePong(Lokio/ByteString;)V
  .registers 3
    const/16 v0, 10
  .line 1
    invoke-direct { p0, v0, p1 }, Lokhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILokio/ByteString;)V
    return-void
.end method
