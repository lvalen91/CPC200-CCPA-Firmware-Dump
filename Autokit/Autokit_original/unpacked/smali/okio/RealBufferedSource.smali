.class final Lokio/RealBufferedSource;
.super Ljava/lang/Object;
.implements Lokio/BufferedSource;
.source "SourceFile"

.field public final buffer:Lokio/Buffer;

.field closed:Z

.field public final source:Lokio/Source;

.method constructor <init>(Lokio/Source;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Lokio/Buffer;
    invoke-direct { v0 }, Lokio/Buffer;-><init>()V
    iput-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    if-eqz p1, :L0
  .line 3
    iput-object p1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;
    return-void
  :L0
  .line 4
    new-instance p1, Ljava/lang/NullPointerException;
    const-string v0, "source == null"
    invoke-direct { p1, v0 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public buffer()Lokio/Buffer;
  .registers 2
  .line 1
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    return-object v0
.end method

.method public close()V
  .registers 2
  .line 1
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z
    if-eqz v0, :L0
    return-void
  :L0
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z
  .line 3
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;
    invoke-interface { v0 }, Lokio/Source;->close()V
  .line 4
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v0 }, Lokio/Buffer;->clear()V
    return-void
.end method

.method public exhausted()Z
  .registers 6
  .line 1
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z
    if-nez v0, :L2
  .line 2
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v0 }, Lokio/Buffer;->exhausted()Z
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;
    iget-object v1, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    const-wide/16 v2, 8192
    invoke-interface { v0, v1, v2, v3 }, Lokio/Source;->read(Lokio/Buffer;J)J
    move-result-wide v0
    const-wide/16 v2, -1
    cmp-long v4, v0, v2
    if-nez v4, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
  :L2
  .line 3
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "closed"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public indexOf(B)J
  .registers 8
    const-wide/16 v2, 0
    const-wide v4, 9223372036854775807L
    move-object v0, p0
    move v1, p1
  .line 1
    invoke-virtual/range { v0 .. v5 }, Lokio/RealBufferedSource;->indexOf(BJJ)J
    move-result-wide v0
    return-wide v0
.end method

.method public indexOf(BJ)J
  .registers 10
    const-wide v4, 9223372036854775807L
    move-object v0, p0
    move v1, p1
    move-wide v2, p2
  .line 2
    invoke-virtual/range { v0 .. v5 }, Lokio/RealBufferedSource;->indexOf(BJJ)J
    move-result-wide p1
    return-wide p1
.end method

.method public indexOf(BJJ)J
  .registers 15
  .line 3
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z
    if-nez v0, :L5
    const-wide/16 v0, 0
    cmp-long v2, p2, v0
    if-ltz v2, :L4
    cmp-long v0, p4, p2
    if-ltz v0, :L4
  :L0
    const-wide/16 v7, -1
    cmp-long v0, p2, p4
    if-gez v0, :L3
  .line 4
    iget-object v1, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    move v2, p1
    move-wide v3, p2
    move-wide v5, p4
    invoke-virtual/range { v1 .. v6 }, Lokio/Buffer;->indexOf(BJJ)J
    move-result-wide v0
    cmp-long v2, v0, v7
    if-eqz v2, :L1
    return-wide v0
  :L1
  .line 5
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    iget-wide v1, v0, Lokio/Buffer;->size:J
    cmp-long v3, v1, p4
    if-gez v3, :L3
  .line 6
    iget-object v3, p0, Lokio/RealBufferedSource;->source:Lokio/Source;
    const-wide/16 v4, 8192
    invoke-interface { v3, v0, v4, v5 }, Lokio/Source;->read(Lokio/Buffer;J)J
    move-result-wide v3
    cmp-long v0, v3, v7
    if-nez v0, :L2
    goto :L3
  :L2
  .line 7
    invoke-static { p2, p3, v1, v2 }, Ljava/lang/Math;->max(JJ)J
    move-result-wide p2
    goto :L0
  :L3
    return-wide v7
  :L4
  .line 8
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const/4 v0, 2
    new-array v0, v0, [Ljava/lang/Object;
    const/4 v1, 0
  .line 9
    invoke-static { p2, p3 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object p2
    aput-object p2, v0, v1
    const/4 p2, 1
    invoke-static { p4, p5 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object p3
    aput-object p3, v0, p2
    const-string p2, "fromIndex=%s toIndex=%s"
    invoke-static { p2, v0 }, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L5
  .line 10
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    goto :L7
  :L6
    throw p1
  :L7
    goto :L6
.end method

.method public indexOf(Lokio/ByteString;)J
  .registers 4
    const-wide/16 v0, 0
  .line 11
    invoke-virtual { p0, p1, v0, v1 }, Lokio/RealBufferedSource;->indexOf(Lokio/ByteString;J)J
    move-result-wide v0
    return-wide v0
.end method

.method public indexOf(Lokio/ByteString;J)J
  .registers 12
  .line 12
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z
    if-nez v0, :L3
  :L0
  .line 13
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v0, p1, p2, p3 }, Lokio/Buffer;->indexOf(Lokio/ByteString;J)J
    move-result-wide v0
    const-wide/16 v2, -1
    cmp-long v4, v0, v2
    if-eqz v4, :L1
    return-wide v0
  :L1
  .line 14
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    iget-wide v4, v0, Lokio/Buffer;->size:J
  .line 15
    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;
    const-wide/16 v6, 8192
    invoke-interface { v1, v0, v6, v7 }, Lokio/Source;->read(Lokio/Buffer;J)J
    move-result-wide v0
    cmp-long v6, v0, v2
    if-nez v6, :L2
    return-wide v2
  :L2
  .line 16
    invoke-virtual { p1 }, Lokio/ByteString;->size()I
    move-result v0
    int-to-long v0, v0
    sub-long/2addr v4, v0
    const-wide/16 v0, 1
    add-long/2addr v4, v0
    invoke-static { p2, p3, v4, v5 }, Ljava/lang/Math;->max(JJ)J
    move-result-wide p2
    goto :L0
  :L3
  .line 17
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    goto :L5
  :L4
    throw p1
  :L5
    goto :L4
.end method

.method public indexOfElement(Lokio/ByteString;)J
  .registers 4
    const-wide/16 v0, 0
  .line 1
    invoke-virtual { p0, p1, v0, v1 }, Lokio/RealBufferedSource;->indexOfElement(Lokio/ByteString;J)J
    move-result-wide v0
    return-wide v0
.end method

.method public indexOfElement(Lokio/ByteString;J)J
  .registers 12
  .line 2
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z
    if-nez v0, :L3
  :L0
  .line 3
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v0, p1, p2, p3 }, Lokio/Buffer;->indexOfElement(Lokio/ByteString;J)J
    move-result-wide v0
    const-wide/16 v2, -1
    cmp-long v4, v0, v2
    if-eqz v4, :L1
    return-wide v0
  :L1
  .line 4
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    iget-wide v4, v0, Lokio/Buffer;->size:J
  .line 5
    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;
    const-wide/16 v6, 8192
    invoke-interface { v1, v0, v6, v7 }, Lokio/Source;->read(Lokio/Buffer;J)J
    move-result-wide v0
    cmp-long v6, v0, v2
    if-nez v6, :L2
    return-wide v2
  :L2
  .line 6
    invoke-static { p2, p3, v4, v5 }, Ljava/lang/Math;->max(JJ)J
    move-result-wide p2
    goto :L0
  :L3
  .line 7
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    goto :L5
  :L4
    throw p1
  :L5
    goto :L4
.end method

.method public inputStream()Ljava/io/InputStream;
  .registers 2
  .line 1
    new-instance v0, Lokio/RealBufferedSource$1;
    invoke-direct { v0, p0 }, Lokio/RealBufferedSource$1;-><init>(Lokio/RealBufferedSource;)V
    return-object v0
.end method

.method public isOpen()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z
    xor-int/lit8 v0, v0, 1
    return v0
.end method

.method public rangeEquals(JLokio/ByteString;)Z
  .registers 10
  .line 1
    invoke-virtual { p3 }, Lokio/ByteString;->size()I
    move-result v5
    const/4 v4, 0
    move-object v0, p0
    move-wide v1, p1
    move-object v3, p3
    invoke-virtual/range { v0 .. v5 }, Lokio/RealBufferedSource;->rangeEquals(JLokio/ByteString;II)Z
    move-result p1
    return p1
.end method

.method public rangeEquals(JLokio/ByteString;II)Z
  .registers 13
  .line 2
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z
    if-nez v0, :L6
    const-wide/16 v0, 0
    const/4 v2, 0
    cmp-long v3, p1, v0
    if-ltz v3, :L5
    if-ltz p4, :L5
    if-ltz p5, :L5
  .line 3
    invoke-virtual { p3 }, Lokio/ByteString;->size()I
    move-result v0
    sub-int/2addr v0, p4
    if-ge v0, p5, :L0
    goto :L5
  :L0
    const/4 v0, 0
  :L1
    if-ge v0, p5, :L4
    int-to-long v3, v0
    add-long/2addr v3, p1
    const-wide/16 v5, 1
    add-long/2addr v5, v3
  .line 4
    invoke-virtual { p0, v5, v6 }, Lokio/RealBufferedSource;->request(J)Z
    move-result v1
    if-nez v1, :L2
    return v2
  :L2
  .line 5
    iget-object v1, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v1, v3, v4 }, Lokio/Buffer;->getByte(J)B
    move-result v1
    add-int v3, p4, v0
    invoke-virtual { p3, v3 }, Lokio/ByteString;->getByte(I)B
    move-result v3
    if-eq v1, v3, :L3
    return v2
  :L3
    add-int/lit8 v0, v0, 1
    goto :L1
  :L4
    const/4 p1, 1
    return p1
  :L5
    return v2
  :L6
  .line 6
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    goto :L8
  :L7
    throw p1
  :L8
    goto :L7
.end method

.method public read(Ljava/nio/ByteBuffer;)I
  .registers 8
  .line 15
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    iget-wide v1, v0, Lokio/Buffer;->size:J
    const-wide/16 v3, 0
    cmp-long v5, v1, v3
    if-nez v5, :L0
  .line 16
    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;
    const-wide/16 v2, 8192
    invoke-interface { v1, v0, v2, v3 }, Lokio/Source;->read(Lokio/Buffer;J)J
    move-result-wide v0
    const-wide/16 v2, -1
    cmp-long v4, v0, v2
    if-nez v4, :L0
    const/4 p1, -1
    return p1
  :L0
  .line 17
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v0, p1 }, Lokio/Buffer;->read(Ljava/nio/ByteBuffer;)I
    move-result p1
    return p1
.end method

.method public read([B)I
  .registers 4
  .line 9
    array-length v0, p1
    const/4 v1, 0
    invoke-virtual { p0, p1, v1, v0 }, Lokio/RealBufferedSource;->read([BII)I
    move-result p1
    return p1
.end method

.method public read([BII)I
  .registers 13
  .line 10
    array-length v0, p1
    int-to-long v1, v0
    int-to-long v3, p2
    int-to-long v7, p3
    move-wide v5, v7
    invoke-static/range { v1 .. v6 }, Lokio/Util;->checkOffsetAndCount(JJJ)V
  .line 11
    iget-object p3, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    iget-wide v0, p3, Lokio/Buffer;->size:J
    const-wide/16 v2, 0
    cmp-long v4, v0, v2
    if-nez v4, :L0
  .line 12
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;
    const-wide/16 v1, 8192
    invoke-interface { v0, p3, v1, v2 }, Lokio/Source;->read(Lokio/Buffer;J)J
    move-result-wide v0
    const-wide/16 v2, -1
    cmp-long p3, v0, v2
    if-nez p3, :L0
    const/4 p1, -1
    return p1
  :L0
  .line 13
    iget-object p3, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    iget-wide v0, p3, Lokio/Buffer;->size:J
    invoke-static { v7, v8, v0, v1 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v0
    long-to-int p3, v0
  .line 14
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v0, p1, p2, p3 }, Lokio/Buffer;->read([BII)I
    move-result p1
    return p1
.end method

.method public read(Lokio/Buffer;J)J
  .registers 10
    if-eqz p1, :L3
    const-wide/16 v0, 0
    cmp-long v2, p2, v0
    if-ltz v2, :L2
  .line 1
    iget-boolean v2, p0, Lokio/RealBufferedSource;->closed:Z
    if-nez v2, :L1
  .line 2
    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    iget-wide v3, v2, Lokio/Buffer;->size:J
    cmp-long v5, v3, v0
    if-nez v5, :L0
  .line 3
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;
    const-wide/16 v3, 8192
    invoke-interface { v0, v2, v3, v4 }, Lokio/Source;->read(Lokio/Buffer;J)J
    move-result-wide v0
    const-wide/16 v2, -1
    cmp-long v4, v0, v2
    if-nez v4, :L0
    return-wide v2
  :L0
  .line 4
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    iget-wide v0, v0, Lokio/Buffer;->size:J
    invoke-static { p2, p3, v0, v1 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide p2
  .line 5
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v0, p1, p2, p3 }, Lokio/Buffer;->read(Lokio/Buffer;J)J
    move-result-wide p1
    return-wide p1
  :L1
  .line 6
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L2
  .line 7
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
  :L3
  .line 8
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "sink == null"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public readAll(Lokio/Sink;)J
  .registers 11
    if-eqz p1, :L3
    const-wide/16 v0, 0
    move-wide v2, v0
  :L0
  .line 1
    iget-object v4, p0, Lokio/RealBufferedSource;->source:Lokio/Source;
    iget-object v5, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    const-wide/16 v6, 8192
    invoke-interface { v4, v5, v6, v7 }, Lokio/Source;->read(Lokio/Buffer;J)J
    move-result-wide v4
    const-wide/16 v6, -1
    cmp-long v8, v4, v6
    if-eqz v8, :L1
  .line 2
    iget-object v4, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v4 }, Lokio/Buffer;->completeSegmentByteCount()J
    move-result-wide v4
    cmp-long v6, v4, v0
    if-lez v6, :L0
    add-long/2addr v2, v4
  .line 3
    iget-object v6, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-interface { p1, v6, v4, v5 }, Lokio/Sink;->write(Lokio/Buffer;J)V
    goto :L0
  :L1
  .line 4
    iget-object v4, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v4 }, Lokio/Buffer;->size()J
    move-result-wide v4
    cmp-long v6, v4, v0
    if-lez v6, :L2
  .line 5
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v0 }, Lokio/Buffer;->size()J
    move-result-wide v0
    add-long/2addr v2, v0
  .line 6
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v0 }, Lokio/Buffer;->size()J
    move-result-wide v4
    invoke-interface { p1, v0, v4, v5 }, Lokio/Sink;->write(Lokio/Buffer;J)V
  :L2
    return-wide v2
  :L3
  .line 7
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "sink == null"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    goto :L5
  :L4
    throw p1
  :L5
    goto :L4
.end method

.method public readByte()B
  .registers 3
    const-wide/16 v0, 1
  .line 1
    invoke-virtual { p0, v0, v1 }, Lokio/RealBufferedSource;->require(J)V
  .line 2
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v0 }, Lokio/Buffer;->readByte()B
    move-result v0
    return v0
.end method

.method public readByteArray()[B
  .registers 3
  .line 1
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;
    invoke-virtual { v0, v1 }, Lokio/Buffer;->writeAll(Lokio/Source;)J
  .line 2
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v0 }, Lokio/Buffer;->readByteArray()[B
    move-result-object v0
    return-object v0
.end method

.method public readByteArray(J)[B
  .registers 4
  .line 3
    invoke-virtual { p0, p1, p2 }, Lokio/RealBufferedSource;->require(J)V
  .line 4
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v0, p1, p2 }, Lokio/Buffer;->readByteArray(J)[B
    move-result-object p1
    return-object p1
.end method

.method public readByteString()Lokio/ByteString;
  .registers 3
  .line 1
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;
    invoke-virtual { v0, v1 }, Lokio/Buffer;->writeAll(Lokio/Source;)J
  .line 2
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v0 }, Lokio/Buffer;->readByteString()Lokio/ByteString;
    move-result-object v0
    return-object v0
.end method

.method public readByteString(J)Lokio/ByteString;
  .registers 4
  .line 3
    invoke-virtual { p0, p1, p2 }, Lokio/RealBufferedSource;->require(J)V
  .line 4
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v0, p1, p2 }, Lokio/Buffer;->readByteString(J)Lokio/ByteString;
    move-result-object p1
    return-object p1
.end method

.method public readDecimalLong()J
  .registers 7
    const-wide/16 v0, 1
  .line 1
    invoke-virtual { p0, v0, v1 }, Lokio/RealBufferedSource;->require(J)V
    const/4 v0, 0
    const/4 v1, 0
  :L0
    add-int/lit8 v2, v1, 1
    int-to-long v3, v2
  .line 2
    invoke-virtual { p0, v3, v4 }, Lokio/RealBufferedSource;->request(J)Z
    move-result v3
    if-eqz v3, :L5
  .line 3
    iget-object v3, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    int-to-long v4, v1
    invoke-virtual { v3, v4, v5 }, Lokio/Buffer;->getByte(J)B
    move-result v3
    const/16 v4, 48
    if-lt v3, v4, :L1
    const/16 v4, 57
    if-le v3, v4, :L2
  :L1
    if-nez v1, :L3
    const/16 v4, 45
    if-eq v3, v4, :L2
    goto :L3
  :L2
    move v1, v2
    goto :L0
  :L3
    if-eqz v1, :L4
    goto :L5
  :L4
  .line 4
    new-instance v1, Ljava/lang/NumberFormatException;
    const/4 v2, 1
    new-array v2, v2, [Ljava/lang/Object;
  .line 5
    invoke-static { v3 }, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
    move-result-object v3
    aput-object v3, v2, v0
    const-string v0, "Expected leading [0-9] or '-' character but was %#x"
  .line 6
    invoke-static { v0, v2 }, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    invoke-direct { v1, v0 }, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V
    throw v1
  :L5
  .line 7
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v0 }, Lokio/Buffer;->readDecimalLong()J
    move-result-wide v0
    return-wide v0
.end method

.method public readFully(Lokio/Buffer;J)V
  .catch Ljava/io/EOFException; { :L0 .. :L1 } :L2
  .registers 5
  :L0
  .line 7
    invoke-virtual { p0, p2, p3 }, Lokio/RealBufferedSource;->require(J)V
  :L1
  .line 8
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v0, p1, p2, p3 }, Lokio/Buffer;->readFully(Lokio/Buffer;J)V
    return-void
  :L2
    move-exception p2
  .line 9
    iget-object p3, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { p1, p3 }, Lokio/Buffer;->writeAll(Lokio/Source;)J
  .line 10
    throw p2
.end method

.method public readFully([B)V
  .catch Ljava/io/EOFException; { :L0 .. :L1 } :L2
  .registers 10
  :L0
  .line 1
    array-length v0, p1
    int-to-long v0, v0
    invoke-virtual { p0, v0, v1 }, Lokio/RealBufferedSource;->require(J)V
  :L1
  .line 2
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v0, p1 }, Lokio/Buffer;->readFully([B)V
    return-void
  :L2
    move-exception v0
    const/4 v1, 0
  :L3
  .line 3
    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    iget-wide v3, v2, Lokio/Buffer;->size:J
    const-wide/16 v5, 0
    cmp-long v7, v3, v5
    if-lez v7, :L5
    long-to-int v4, v3
  .line 4
    invoke-virtual { v2, p1, v1, v4 }, Lokio/Buffer;->read([BII)I
    move-result v2
    const/4 v3, -1
    if-eq v2, v3, :L4
    add-int/2addr v1, v2
    goto :L3
  :L4
  .line 5
    new-instance p1, Ljava/lang/AssertionError;
    invoke-direct { p1 }, Ljava/lang/AssertionError;-><init>()V
    throw p1
  :L5
  .line 6
    goto :L7
  :L6
    throw v0
  :L7
    goto :L6
.end method

.method public readHexadecimalUnsignedLong()J
  .registers 7
    const-wide/16 v0, 1
  .line 1
    invoke-virtual { p0, v0, v1 }, Lokio/RealBufferedSource;->require(J)V
    const/4 v0, 0
    const/4 v1, 0
  :L0
    add-int/lit8 v2, v1, 1
    int-to-long v3, v2
  .line 2
    invoke-virtual { p0, v3, v4 }, Lokio/RealBufferedSource;->request(J)Z
    move-result v3
    if-eqz v3, :L6
  .line 3
    iget-object v3, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    int-to-long v4, v1
    invoke-virtual { v3, v4, v5 }, Lokio/Buffer;->getByte(J)B
    move-result v3
    const/16 v4, 48
    if-lt v3, v4, :L1
    const/16 v4, 57
    if-le v3, v4, :L3
  :L1
    const/16 v4, 97
    if-lt v3, v4, :L2
    const/16 v4, 102
    if-le v3, v4, :L3
  :L2
    const/16 v4, 65
    if-lt v3, v4, :L4
    const/16 v4, 70
    if-le v3, v4, :L3
    goto :L4
  :L3
    move v1, v2
    goto :L0
  :L4
    if-eqz v1, :L5
    goto :L6
  :L5
  .line 4
    new-instance v1, Ljava/lang/NumberFormatException;
    const/4 v2, 1
    new-array v2, v2, [Ljava/lang/Object;
  .line 5
    invoke-static { v3 }, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
    move-result-object v3
    aput-object v3, v2, v0
    const-string v0, "Expected leading [0-9a-fA-F] character but was %#x"
  .line 6
    invoke-static { v0, v2 }, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    invoke-direct { v1, v0 }, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V
    throw v1
  :L6
  .line 7
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v0 }, Lokio/Buffer;->readHexadecimalUnsignedLong()J
    move-result-wide v0
    return-wide v0
.end method

.method public readInt()I
  .registers 3
    const-wide/16 v0, 4
  .line 1
    invoke-virtual { p0, v0, v1 }, Lokio/RealBufferedSource;->require(J)V
  .line 2
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v0 }, Lokio/Buffer;->readInt()I
    move-result v0
    return v0
.end method

.method public readIntLe()I
  .registers 3
    const-wide/16 v0, 4
  .line 1
    invoke-virtual { p0, v0, v1 }, Lokio/RealBufferedSource;->require(J)V
  .line 2
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v0 }, Lokio/Buffer;->readIntLe()I
    move-result v0
    return v0
.end method

.method public readLong()J
  .registers 3
    const-wide/16 v0, 8
  .line 1
    invoke-virtual { p0, v0, v1 }, Lokio/RealBufferedSource;->require(J)V
  .line 2
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v0 }, Lokio/Buffer;->readLong()J
    move-result-wide v0
    return-wide v0
.end method

.method public readLongLe()J
  .registers 3
    const-wide/16 v0, 8
  .line 1
    invoke-virtual { p0, v0, v1 }, Lokio/RealBufferedSource;->require(J)V
  .line 2
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v0 }, Lokio/Buffer;->readLongLe()J
    move-result-wide v0
    return-wide v0
.end method

.method public readShort()S
  .registers 3
    const-wide/16 v0, 2
  .line 1
    invoke-virtual { p0, v0, v1 }, Lokio/RealBufferedSource;->require(J)V
  .line 2
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v0 }, Lokio/Buffer;->readShort()S
    move-result v0
    return v0
.end method

.method public readShortLe()S
  .registers 3
    const-wide/16 v0, 2
  .line 1
    invoke-virtual { p0, v0, v1 }, Lokio/RealBufferedSource;->require(J)V
  .line 2
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v0 }, Lokio/Buffer;->readShortLe()S
    move-result v0
    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
  .registers 5
  .line 4
    invoke-virtual { p0, p1, p2 }, Lokio/RealBufferedSource;->require(J)V
    if-eqz p3, :L0
  .line 5
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v0, p1, p2, p3 }, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    move-result-object p1
    return-object p1
  :L0
  .line 6
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "charset == null"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
  .registers 4
    if-eqz p1, :L0
  .line 1
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;
    invoke-virtual { v0, v1 }, Lokio/Buffer;->writeAll(Lokio/Source;)J
  .line 2
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v0, p1 }, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    move-result-object p1
    return-object p1
  :L0
  .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "charset == null"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public readUtf8()Ljava/lang/String;
  .registers 3
  .line 1
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;
    invoke-virtual { v0, v1 }, Lokio/Buffer;->writeAll(Lokio/Source;)J
  .line 2
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v0 }, Lokio/Buffer;->readUtf8()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public readUtf8(J)Ljava/lang/String;
  .registers 4
  .line 3
    invoke-virtual { p0, p1, p2 }, Lokio/RealBufferedSource;->require(J)V
  .line 4
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v0, p1, p2 }, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;
    move-result-object p1
    return-object p1
.end method

.method public readUtf8CodePoint()I
  .registers 4
    const-wide/16 v0, 1
  .line 1
    invoke-virtual { p0, v0, v1 }, Lokio/RealBufferedSource;->require(J)V
  .line 2
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    const-wide/16 v1, 0
    invoke-virtual { v0, v1, v2 }, Lokio/Buffer;->getByte(J)B
    move-result v0
    and-int/lit16 v1, v0, 224
    const/16 v2, 192
    if-ne v1, v2, :L0
    const-wide/16 v0, 2
  .line 3
    invoke-virtual { p0, v0, v1 }, Lokio/RealBufferedSource;->require(J)V
    goto :L2
  :L0
    and-int/lit16 v1, v0, 240
    const/16 v2, 224
    if-ne v1, v2, :L1
    const-wide/16 v0, 3
  .line 4
    invoke-virtual { p0, v0, v1 }, Lokio/RealBufferedSource;->require(J)V
    goto :L2
  :L1
    and-int/lit16 v0, v0, 248
    const/16 v1, 240
    if-ne v0, v1, :L2
    const-wide/16 v0, 4
  .line 5
    invoke-virtual { p0, v0, v1 }, Lokio/RealBufferedSource;->require(J)V
  :L2
  .line 6
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v0 }, Lokio/Buffer;->readUtf8CodePoint()I
    move-result v0
    return v0
.end method

.method public readUtf8Line()Ljava/lang/String;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 6
    const/16 v0, 10
  .line 1
    invoke-virtual { p0, v0 }, Lokio/RealBufferedSource;->indexOf(B)J
    move-result-wide v0
    const-wide/16 v2, -1
    cmp-long v4, v0, v2
    if-nez v4, :L2
  .line 2
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    iget-wide v0, v0, Lokio/Buffer;->size:J
    const-wide/16 v2, 0
    cmp-long v4, v0, v2
    if-eqz v4, :L0
    invoke-virtual { p0, v0, v1 }, Lokio/RealBufferedSource;->readUtf8(J)Ljava/lang/String;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
  :L2
  .line 3
    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v2, v0, v1 }, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
  .registers 3
    const-wide v0, 9223372036854775807L
  .line 1
    invoke-virtual { p0, v0, v1 }, Lokio/RealBufferedSource;->readUtf8LineStrict(J)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public readUtf8LineStrict(J)Ljava/lang/String;
  .registers 15
    const-wide/16 v0, 0
    cmp-long v2, p1, v0
    if-ltz v2, :L4
    const-wide/16 v0, 1
    const-wide v2, 9223372036854775807L
    cmp-long v4, p1, v2
    if-nez v4, :L0
    move-wide v4, v2
    goto :L1
  :L0
    add-long v4, p1, v0
  :L1
    const/16 v7, 10
    const-wide/16 v8, 0
    move-object v6, p0
    move-wide v10, v4
  .line 2
    invoke-virtual/range { v6 .. v11 }, Lokio/RealBufferedSource;->indexOf(BJJ)J
    move-result-wide v6
    const-wide/16 v8, -1
    cmp-long v10, v6, v8
    if-eqz v10, :L2
  .line 3
    iget-object p1, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { p1, v6, v7 }, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;
    move-result-object p1
    return-object p1
  :L2
    cmp-long v6, v4, v2
    if-gez v6, :L3
  .line 4
    invoke-virtual { p0, v4, v5 }, Lokio/RealBufferedSource;->request(J)Z
    move-result v2
    if-eqz v2, :L3
    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    sub-long v6, v4, v0
    invoke-virtual { v2, v6, v7 }, Lokio/Buffer;->getByte(J)B
    move-result v2
    const/16 v3, 13
    if-ne v2, v3, :L3
    add-long/2addr v0, v4
  .line 5
    invoke-virtual { p0, v0, v1 }, Lokio/RealBufferedSource;->request(J)Z
    move-result v0
    if-eqz v0, :L3
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v0, v4, v5 }, Lokio/Buffer;->getByte(J)B
    move-result v0
    const/16 v1, 10
    if-ne v0, v1, :L3
  .line 6
    iget-object p1, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { p1, v4, v5 }, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;
    move-result-object p1
    return-object p1
  :L3
  .line 7
    new-instance v6, Lokio/Buffer;
    invoke-direct { v6 }, Lokio/Buffer;-><init>()V
  .line 8
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    const-wide/16 v2, 0
    const-wide/16 v4, 32
    invoke-virtual { v0 }, Lokio/Buffer;->size()J
    move-result-wide v7
    invoke-static { v4, v5, v7, v8 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v4
    move-object v1, v6
    invoke-virtual/range { v0 .. v5 }, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;
  .line 9
    new-instance v0, Ljava/io/EOFException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "\\n not found: limit="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v2 }, Lokio/Buffer;->size()J
    move-result-wide v2
    invoke-static { v2, v3, p1, p2 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide p1
    invoke-virtual { v1, p1, p2 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string p1, " content="
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 10
    invoke-virtual { v6 }, Lokio/Buffer;->readByteString()Lokio/ByteString;
    move-result-object p1
    invoke-virtual { p1 }, Lokio/ByteString;->hex()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/16 p1, 8230
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V
    throw v0
  :L4
  .line 11
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "limit < 0: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1, p2 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public request(J)Z
  .registers 8
    const-wide/16 v0, 0
    cmp-long v2, p1, v0
    if-ltz v2, :L3
  .line 1
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z
    if-nez v0, :L2
  :L0
  .line 2
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    iget-wide v1, v0, Lokio/Buffer;->size:J
    cmp-long v3, v1, p1
    if-gez v3, :L1
  .line 3
    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;
    const-wide/16 v2, 8192
    invoke-interface { v1, v0, v2, v3 }, Lokio/Source;->read(Lokio/Buffer;J)J
    move-result-wide v0
    const-wide/16 v2, -1
    cmp-long v4, v0, v2
    if-nez v4, :L0
    const/4 p1, 0
    return p1
  :L1
    const/4 p1, 1
    return p1
  :L2
  .line 4
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L3
  .line 5
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "byteCount < 0: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1, p2 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    goto :L5
  :L4
    throw v0
  :L5
    goto :L4
.end method

.method public require(J)V
  .registers 3
  .line 1
    invoke-virtual { p0, p1, p2 }, Lokio/RealBufferedSource;->request(J)Z
    move-result p1
    if-eqz p1, :L0
    return-void
  :L0
    new-instance p1, Ljava/io/EOFException;
    invoke-direct { p1 }, Ljava/io/EOFException;-><init>()V
    throw p1
.end method

.method public select(Lokio/Options;)I
  .registers 8
  .line 1
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z
    if-nez v0, :L3
  :L0
  .line 2
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    const/4 v1, 1
    invoke-virtual { v0, p1, v1 }, Lokio/Buffer;->selectPrefix(Lokio/Options;Z)I
    move-result v0
    const/4 v1, -1
    if-ne v0, v1, :L1
    return v1
  :L1
    const/4 v2, -2
    if-ne v0, v2, :L2
  .line 3
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;
    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    const-wide/16 v3, 8192
    invoke-interface { v0, v2, v3, v4 }, Lokio/Source;->read(Lokio/Buffer;J)J
    move-result-wide v2
    const-wide/16 v4, -1
    cmp-long v0, v2, v4
    if-nez v0, :L0
    return v1
  :L2
  .line 4
    iget-object p1, p1, Lokio/Options;->byteStrings:[Lokio/ByteString;
    aget-object p1, p1, v0
    invoke-virtual { p1 }, Lokio/ByteString;->size()I
    move-result p1
  .line 5
    iget-object v1, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    int-to-long v2, p1
    invoke-virtual { v1, v2, v3 }, Lokio/Buffer;->skip(J)V
    return v0
  :L3
  .line 6
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "closed"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    goto :L5
  :L4
    throw p1
  :L5
    goto :L4
.end method

.method public skip(J)V
  .registers 9
  .line 1
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z
    if-nez v0, :L4
  :L0
    const-wide/16 v0, 0
    cmp-long v2, p1, v0
    if-lez v2, :L3
  .line 2
    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    iget-wide v3, v2, Lokio/Buffer;->size:J
    cmp-long v5, v3, v0
    if-nez v5, :L2
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;
    const-wide/16 v3, 8192
    invoke-interface { v0, v2, v3, v4 }, Lokio/Source;->read(Lokio/Buffer;J)J
    move-result-wide v0
    const-wide/16 v2, -1
    cmp-long v4, v0, v2
    if-eqz v4, :L1
    goto :L2
  :L1
  .line 3
    new-instance p1, Ljava/io/EOFException;
    invoke-direct { p1 }, Ljava/io/EOFException;-><init>()V
    throw p1
  :L2
  .line 4
    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v0 }, Lokio/Buffer;->size()J
    move-result-wide v0
    invoke-static { p1, p2, v0, v1 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v0
  .line 5
    iget-object v2, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;
    invoke-virtual { v2, v0, v1 }, Lokio/Buffer;->skip(J)V
    sub-long/2addr p1, v0
    goto :L0
  :L3
    return-void
  :L4
  .line 6
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    goto :L6
  :L5
    throw p1
  :L6
    goto :L5
.end method

.method public timeout()Lokio/Timeout;
  .registers 2
  .line 1
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;
    invoke-interface { v0 }, Lokio/Source;->timeout()Lokio/Timeout;
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
    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, ")"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
