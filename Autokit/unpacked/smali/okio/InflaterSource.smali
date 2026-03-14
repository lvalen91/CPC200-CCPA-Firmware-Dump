.class public final Lokio/InflaterSource;
.super Ljava/lang/Object;
.implements Lokio/Source;
.source "SourceFile"

.field private bufferBytesHeldByInflater:I

.field private closed:Z

.field private final inflater:Ljava/util/zip/Inflater;

.field private final source:Lokio/BufferedSource;

.method constructor <init>(Lokio/BufferedSource;Ljava/util/zip/Inflater;)V
  .registers 3
  .line 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    if-eqz p1, :L1
    if-eqz p2, :L0
  .line 3
    iput-object p1, p0, Lokio/InflaterSource;->source:Lokio/BufferedSource;
  .line 4
    iput-object p2, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;
    return-void
  :L0
  .line 5
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "inflater == null"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 6
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "source == null"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public constructor <init>(Lokio/Source;Ljava/util/zip/Inflater;)V
  .registers 3
  .line 1
    invoke-static { p1 }, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;
    move-result-object p1
    invoke-direct { p0, p1, p2 }, Lokio/InflaterSource;-><init>(Lokio/BufferedSource;Ljava/util/zip/Inflater;)V
    return-void
.end method

.method private releaseInflatedBytes()V
  .registers 5
  .line 1
    iget v0, p0, Lokio/InflaterSource;->bufferBytesHeldByInflater:I
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    iget-object v1, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;
    invoke-virtual { v1 }, Ljava/util/zip/Inflater;->getRemaining()I
    move-result v1
    sub-int/2addr v0, v1
  .line 3
    iget v1, p0, Lokio/InflaterSource;->bufferBytesHeldByInflater:I
    sub-int/2addr v1, v0
    iput v1, p0, Lokio/InflaterSource;->bufferBytesHeldByInflater:I
  .line 4
    iget-object v1, p0, Lokio/InflaterSource;->source:Lokio/BufferedSource;
    int-to-long v2, v0
    invoke-interface { v1, v2, v3 }, Lokio/BufferedSource;->skip(J)V
    return-void
.end method

.method public close()V
  .registers 2
  .line 1
    iget-boolean v0, p0, Lokio/InflaterSource;->closed:Z
    if-eqz v0, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;
    invoke-virtual { v0 }, Ljava/util/zip/Inflater;->end()V
    const/4 v0, 1
  .line 3
    iput-boolean v0, p0, Lokio/InflaterSource;->closed:Z
  .line 4
    iget-object v0, p0, Lokio/InflaterSource;->source:Lokio/BufferedSource;
    invoke-interface { v0 }, Lokio/Source;->close()V
    return-void
.end method

.method public read(Lokio/Buffer;J)J
  .catch Ljava/util/zip/DataFormatException; { :L1 .. :L6 } :L7
  .registers 10
    const-wide/16 v0, 0
    cmp-long v2, p2, v0
    if-ltz v2, :L9
  .line 1
    iget-boolean v2, p0, Lokio/InflaterSource;->closed:Z
    if-nez v2, :L8
    cmp-long v2, p2, v0
    if-nez v2, :L0
    return-wide v0
  :L0
  .line 2
    invoke-virtual { p0 }, Lokio/InflaterSource;->refill()Z
    move-result v0
    const/4 v1, 1
  :L1
  .line 3
    invoke-virtual { p1, v1 }, Lokio/Buffer;->writableSegment(I)Lokio/Segment;
    move-result-object v1
  .line 4
    iget v2, v1, Lokio/Segment;->limit:I
    rsub-int v2, v2, 8192
    int-to-long v2, v2
    invoke-static { p2, p3, v2, v3 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v2
    long-to-int v3, v2
  .line 5
    iget-object v2, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;
    iget-object v4, v1, Lokio/Segment;->data:[B
    iget v5, v1, Lokio/Segment;->limit:I
    invoke-virtual { v2, v4, v5, v3 }, Ljava/util/zip/Inflater;->inflate([BII)I
    move-result v2
    if-lez v2, :L2
  .line 6
    iget p2, v1, Lokio/Segment;->limit:I
    add-int/2addr p2, v2
    iput p2, v1, Lokio/Segment;->limit:I
  .line 7
    iget-wide p2, p1, Lokio/Buffer;->size:J
    int-to-long v0, v2
    add-long/2addr p2, v0
    iput-wide p2, p1, Lokio/Buffer;->size:J
    return-wide v0
  :L2
  .line 8
    iget-object v2, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;
    invoke-virtual { v2 }, Ljava/util/zip/Inflater;->finished()Z
    move-result v2
    if-nez v2, :L5
    iget-object v2, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;
    invoke-virtual { v2 }, Ljava/util/zip/Inflater;->needsDictionary()Z
    move-result v2
    if-eqz v2, :L3
    goto :L5
  :L3
    if-nez v0, :L4
    goto :L0
  :L4
  .line 9
    new-instance p1, Ljava/io/EOFException;
    const-string p2, "source exhausted prematurely"
    invoke-direct { p1, p2 }, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V
    throw p1
  :L5
  .line 10
    invoke-direct { p0 }, Lokio/InflaterSource;->releaseInflatedBytes()V
  .line 11
    iget p2, v1, Lokio/Segment;->pos:I
    iget p3, v1, Lokio/Segment;->limit:I
    if-ne p2, p3, :L6
  .line 12
    invoke-virtual { v1 }, Lokio/Segment;->pop()Lokio/Segment;
    move-result-object p2
    iput-object p2, p1, Lokio/Buffer;->head:Lokio/Segment;
  .line 13
    invoke-static { v1 }, Lokio/SegmentPool;->recycle(Lokio/Segment;)V
  :L6
    const-wide/16 p1, -1
    return-wide p1
  :L7
    move-exception p1
  .line 14
    new-instance p2, Ljava/io/IOException;
    invoke-direct { p2, p1 }, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V
    throw p2
  :L8
  .line 15
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "closed"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L9
  .line 16
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "byteCount < 0: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2, p3 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    goto :L11
  :L10
    throw p1
  :L11
    goto :L10
.end method

.method public final refill()Z
  .registers 6
  .line 1
    iget-object v0, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;
    invoke-virtual { v0 }, Ljava/util/zip/Inflater;->needsInput()Z
    move-result v0
    const/4 v1, 0
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    invoke-direct { p0 }, Lokio/InflaterSource;->releaseInflatedBytes()V
  .line 3
    iget-object v0, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;
    invoke-virtual { v0 }, Ljava/util/zip/Inflater;->getRemaining()I
    move-result v0
    if-nez v0, :L2
  .line 4
    iget-object v0, p0, Lokio/InflaterSource;->source:Lokio/BufferedSource;
    invoke-interface { v0 }, Lokio/BufferedSource;->exhausted()Z
    move-result v0
    if-eqz v0, :L1
    const/4 v0, 1
    return v0
  :L1
  .line 5
    iget-object v0, p0, Lokio/InflaterSource;->source:Lokio/BufferedSource;
    invoke-interface { v0 }, Lokio/BufferedSource;->buffer()Lokio/Buffer;
    move-result-object v0
    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;
  .line 6
    iget v2, v0, Lokio/Segment;->limit:I
    iget v3, v0, Lokio/Segment;->pos:I
    sub-int/2addr v2, v3
    iput v2, p0, Lokio/InflaterSource;->bufferBytesHeldByInflater:I
  .line 7
    iget-object v4, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;
    iget-object v0, v0, Lokio/Segment;->data:[B
    invoke-virtual { v4, v0, v3, v2 }, Ljava/util/zip/Inflater;->setInput([BII)V
    return v1
  :L2
  .line 8
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "?"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public timeout()Lokio/Timeout;
  .registers 2
  .line 1
    iget-object v0, p0, Lokio/InflaterSource;->source:Lokio/BufferedSource;
    invoke-interface { v0 }, Lokio/Source;->timeout()Lokio/Timeout;
    move-result-object v0
    return-object v0
.end method
