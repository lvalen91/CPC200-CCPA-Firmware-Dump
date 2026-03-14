.class final Lokio/RealBufferedSink;
.super Ljava/lang/Object;
.implements Lokio/BufferedSink;
.source "SourceFile"

.field public final buffer:Lokio/Buffer;

.field closed:Z

.field public final sink:Lokio/Sink;

.method constructor <init>(Lokio/Sink;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Lokio/Buffer;
    invoke-direct { v0 }, Lokio/Buffer;-><init>()V
    iput-object v0, p0, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;
    if-eqz p1, :L0
  .line 3
    iput-object p1, p0, Lokio/RealBufferedSink;->sink:Lokio/Sink;
    return-void
  :L0
  .line 4
    new-instance p1, Ljava/lang/NullPointerException;
    const-string v0, "sink == null"
    invoke-direct { p1, v0 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public buffer()Lokio/Buffer;
  .registers 2
  .line 1
    iget-object v0, p0, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;
    return-object v0
.end method

.method public close()V
  .catchall { :L1 .. :L2 } :L3
  .catchall { :L4 .. :L5 } :L6
  .registers 7
  .line 1
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z
    if-eqz v0, :L0
    return-void
  :L0
    const/4 v0, 0
  :L1
  .line 2
    iget-object v1, p0, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;
    iget-wide v1, v1, Lokio/Buffer;->size:J
    const-wide/16 v3, 0
    cmp-long v5, v1, v3
    if-lez v5, :L4
  .line 3
    iget-object v1, p0, Lokio/RealBufferedSink;->sink:Lokio/Sink;
    iget-object v2, p0, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;
    iget-object v3, p0, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;
    iget-wide v3, v3, Lokio/Buffer;->size:J
    invoke-interface { v1, v2, v3, v4 }, Lokio/Sink;->write(Lokio/Buffer;J)V
  :L2
    goto :L4
  :L3
    move-exception v0
  :L4
  .line 4
    iget-object v1, p0, Lokio/RealBufferedSink;->sink:Lokio/Sink;
    invoke-interface { v1 }, Lokio/Sink;->close()V
  :L5
    goto :L7
  :L6
    move-exception v1
    if-nez v0, :L7
    move-object v0, v1
  :L7
    const/4 v1, 1
  .line 5
    iput-boolean v1, p0, Lokio/RealBufferedSink;->closed:Z
    if-eqz v0, :L8
  .line 6
    invoke-static { v0 }, Lokio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V
  :L8
    return-void
.end method

.method public emit()Lokio/BufferedSink;
  .registers 6
  .line 1
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z
    if-nez v0, :L1
  .line 2
    iget-object v0, p0, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;
    invoke-virtual { v0 }, Lokio/Buffer;->size()J
    move-result-wide v0
    const-wide/16 v2, 0
    cmp-long v4, v0, v2
    if-lez v4, :L0
  .line 3
    iget-object v2, p0, Lokio/RealBufferedSink;->sink:Lokio/Sink;
    iget-object v3, p0, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;
    invoke-interface { v2, v3, v0, v1 }, Lokio/Sink;->write(Lokio/Buffer;J)V
  :L0
    return-object p0
  :L1
  .line 4
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "closed"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public emitCompleteSegments()Lokio/BufferedSink;
  .registers 6
  .line 1
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z
    if-nez v0, :L1
  .line 2
    iget-object v0, p0, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;
    invoke-virtual { v0 }, Lokio/Buffer;->completeSegmentByteCount()J
    move-result-wide v0
    const-wide/16 v2, 0
    cmp-long v4, v0, v2
    if-lez v4, :L0
  .line 3
    iget-object v2, p0, Lokio/RealBufferedSink;->sink:Lokio/Sink;
    iget-object v3, p0, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;
    invoke-interface { v2, v3, v0, v1 }, Lokio/Sink;->write(Lokio/Buffer;J)V
  :L0
    return-object p0
  :L1
  .line 4
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "closed"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public flush()V
  .registers 7
  .line 1
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z
    if-nez v0, :L1
  .line 2
    iget-object v0, p0, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;
    iget-wide v1, v0, Lokio/Buffer;->size:J
    const-wide/16 v3, 0
    cmp-long v5, v1, v3
    if-lez v5, :L0
  .line 3
    iget-object v3, p0, Lokio/RealBufferedSink;->sink:Lokio/Sink;
    invoke-interface { v3, v0, v1, v2 }, Lokio/Sink;->write(Lokio/Buffer;J)V
  :L0
  .line 4
    iget-object v0, p0, Lokio/RealBufferedSink;->sink:Lokio/Sink;
    invoke-interface { v0 }, Lokio/Sink;->flush()V
    return-void
  :L1
  .line 5
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "closed"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public isOpen()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z
    xor-int/lit8 v0, v0, 1
    return v0
.end method

.method public outputStream()Ljava/io/OutputStream;
  .registers 2
  .line 1
    new-instance v0, Lokio/RealBufferedSink$1;
    invoke-direct { v0, p0 }, Lokio/RealBufferedSink$1;-><init>(Lokio/RealBufferedSink;)V
    return-object v0
.end method

.method public timeout()Lokio/Timeout;
  .registers 2
  .line 1
    iget-object v0, p0, Lokio/RealBufferedSink;->sink:Lokio/Sink;
    invoke-interface { v0 }, Lokio/Sink;->timeout()Lokio/Timeout;
    move-result-object v0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "buffer("
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lokio/RealBufferedSink;->sink:Lokio/Sink;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, ")"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
  .registers 3
  .line 17
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z
    if-nez v0, :L0
  .line 18
    iget-object v0, p0, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;
    invoke-virtual { v0, p1 }, Lokio/Buffer;->write(Ljava/nio/ByteBuffer;)I
    move-result p1
  .line 19
    invoke-virtual { p0 }, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;
    return p1
  :L0
  .line 20
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "closed"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public write(Lokio/ByteString;)Lokio/BufferedSink;
  .registers 3
  .line 5
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z
    if-nez v0, :L0
  .line 6
    iget-object v0, p0, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;
    invoke-virtual { v0, p1 }, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;
  .line 7
    invoke-virtual { p0 }, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;
    move-result-object p1
    return-object p1
  :L0
  .line 8
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "closed"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public write(Lokio/Source;J)Lokio/BufferedSink;
  .registers 9
  :L0
    const-wide/16 v0, 0
    cmp-long v2, p2, v0
    if-lez v2, :L2
  .line 21
    iget-object v0, p0, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;
    invoke-interface { p1, v0, p2, p3 }, Lokio/Source;->read(Lokio/Buffer;J)J
    move-result-wide v0
    const-wide/16 v2, -1
    cmp-long v4, v0, v2
    if-eqz v4, :L1
    sub-long/2addr p2, v0
  .line 22
    invoke-virtual { p0 }, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;
    goto :L0
  :L1
  .line 23
    new-instance p1, Ljava/io/EOFException;
    invoke-direct { p1 }, Ljava/io/EOFException;-><init>()V
    throw p1
  :L2
    return-object p0
.end method

.method public write([B)Lokio/BufferedSink;
  .registers 3
  .line 9
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z
    if-nez v0, :L0
  .line 10
    iget-object v0, p0, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;
    invoke-virtual { v0, p1 }, Lokio/Buffer;->write([B)Lokio/Buffer;
  .line 11
    invoke-virtual { p0 }, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;
    move-result-object p1
    return-object p1
  :L0
  .line 12
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "closed"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public write([BII)Lokio/BufferedSink;
  .registers 5
  .line 13
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z
    if-nez v0, :L0
  .line 14
    iget-object v0, p0, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;
    invoke-virtual { v0, p1, p2, p3 }, Lokio/Buffer;->write([BII)Lokio/Buffer;
  .line 15
    invoke-virtual { p0 }, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;
    move-result-object p1
    return-object p1
  :L0
  .line 16
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public write(Lokio/Buffer;J)V
  .registers 5
  .line 1
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;
    invoke-virtual { v0, p1, p2, p3 }, Lokio/Buffer;->write(Lokio/Buffer;J)V
  .line 3
    invoke-virtual { p0 }, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;
    return-void
  :L0
  .line 4
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public writeAll(Lokio/Source;)J
  .registers 9
    if-eqz p1, :L2
    const-wide/16 v0, 0
  :L0
  .line 1
    iget-object v2, p0, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;
    const-wide/16 v3, 8192
    invoke-interface { p1, v2, v3, v4 }, Lokio/Source;->read(Lokio/Buffer;J)J
    move-result-wide v2
    const-wide/16 v4, -1
    cmp-long v6, v2, v4
    if-eqz v6, :L1
    add-long/2addr v0, v2
  .line 2
    invoke-virtual { p0 }, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;
    goto :L0
  :L1
    return-wide v0
  :L2
  .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "source == null"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    goto :L4
  :L3
    throw p1
  :L4
    goto :L3
.end method

.method public writeByte(I)Lokio/BufferedSink;
  .registers 3
  .line 1
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;
    invoke-virtual { v0, p1 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
  .line 3
    invoke-virtual { p0 }, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;
    move-result-object p1
    return-object p1
  :L0
  .line 4
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "closed"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public writeDecimalLong(J)Lokio/BufferedSink;
  .registers 4
  .line 1
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;
    invoke-virtual { v0, p1, p2 }, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;
  .line 3
    invoke-virtual { p0 }, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;
    move-result-object p1
    return-object p1
  :L0
  .line 4
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public writeHexadecimalUnsignedLong(J)Lokio/BufferedSink;
  .registers 4
  .line 1
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;
    invoke-virtual { v0, p1, p2 }, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;
  .line 3
    invoke-virtual { p0 }, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;
    move-result-object p1
    return-object p1
  :L0
  .line 4
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public writeInt(I)Lokio/BufferedSink;
  .registers 3
  .line 1
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;
    invoke-virtual { v0, p1 }, Lokio/Buffer;->writeInt(I)Lokio/Buffer;
  .line 3
    invoke-virtual { p0 }, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;
    move-result-object p1
    return-object p1
  :L0
  .line 4
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "closed"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public writeIntLe(I)Lokio/BufferedSink;
  .registers 3
  .line 1
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;
    invoke-virtual { v0, p1 }, Lokio/Buffer;->writeIntLe(I)Lokio/Buffer;
  .line 3
    invoke-virtual { p0 }, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;
    move-result-object p1
    return-object p1
  :L0
  .line 4
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "closed"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public writeLong(J)Lokio/BufferedSink;
  .registers 4
  .line 1
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;
    invoke-virtual { v0, p1, p2 }, Lokio/Buffer;->writeLong(J)Lokio/Buffer;
  .line 3
    invoke-virtual { p0 }, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;
    move-result-object p1
    return-object p1
  :L0
  .line 4
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public writeLongLe(J)Lokio/BufferedSink;
  .registers 4
  .line 1
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;
    invoke-virtual { v0, p1, p2 }, Lokio/Buffer;->writeLongLe(J)Lokio/Buffer;
  .line 3
    invoke-virtual { p0 }, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;
    move-result-object p1
    return-object p1
  :L0
  .line 4
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public writeShort(I)Lokio/BufferedSink;
  .registers 3
  .line 1
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;
    invoke-virtual { v0, p1 }, Lokio/Buffer;->writeShort(I)Lokio/Buffer;
  .line 3
    invoke-virtual { p0 }, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;
    move-result-object p1
    return-object p1
  :L0
  .line 4
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "closed"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public writeShortLe(I)Lokio/BufferedSink;
  .registers 3
  .line 1
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;
    invoke-virtual { v0, p1 }, Lokio/Buffer;->writeShortLe(I)Lokio/Buffer;
  .line 3
    invoke-virtual { p0 }, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;
    move-result-object p1
    return-object p1
  :L0
  .line 4
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "closed"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/BufferedSink;
  .registers 6
  .line 5
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z
    if-nez v0, :L0
  .line 6
    iget-object v0, p0, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;
    invoke-virtual { v0, p1, p2, p3, p4 }, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;
  .line 7
    invoke-virtual { p0 }, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;
    move-result-object p1
    return-object p1
  :L0
  .line 8
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/BufferedSink;
  .registers 4
  .line 1
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;
    invoke-virtual { v0, p1, p2 }, Lokio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;
  .line 3
    invoke-virtual { p0 }, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;
    move-result-object p1
    return-object p1
  :L0
  .line 4
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
  .registers 3
  .line 1
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;
    invoke-virtual { v0, p1 }, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;
  .line 3
    invoke-virtual { p0 }, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;
    move-result-object p1
    return-object p1
  :L0
  .line 4
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "closed"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;
  .registers 5
  .line 5
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z
    if-nez v0, :L0
  .line 6
    iget-object v0, p0, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;
    invoke-virtual { v0, p1, p2, p3 }, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;
  .line 7
    invoke-virtual { p0 }, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;
    move-result-object p1
    return-object p1
  :L0
  .line 8
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public writeUtf8CodePoint(I)Lokio/BufferedSink;
  .registers 3
  .line 1
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lokio/RealBufferedSink;->buffer:Lokio/Buffer;
    invoke-virtual { v0, p1 }, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;
  .line 3
    invoke-virtual { p0 }, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;
    move-result-object p1
    return-object p1
  :L0
  .line 4
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "closed"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method
