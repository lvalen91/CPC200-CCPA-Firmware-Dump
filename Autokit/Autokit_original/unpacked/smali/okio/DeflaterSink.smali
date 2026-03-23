.class public final Lokio/DeflaterSink;
.super Ljava/lang/Object;
.implements Lokio/Sink;
.source "SourceFile"

.field private closed:Z

.field private final deflater:Ljava/util/zip/Deflater;

.field private final sink:Lokio/BufferedSink;

.method constructor <init>(Lokio/BufferedSink;Ljava/util/zip/Deflater;)V
  .registers 3
  .line 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    if-eqz p1, :L1
    if-eqz p2, :L0
  .line 3
    iput-object p1, p0, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;
  .line 4
    iput-object p2, p0, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;
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

.method public constructor <init>(Lokio/Sink;Ljava/util/zip/Deflater;)V
  .registers 3
  .line 1
    invoke-static { p1 }, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;
    move-result-object p1
    invoke-direct { p0, p1, p2 }, Lokio/DeflaterSink;-><init>(Lokio/BufferedSink;Ljava/util/zip/Deflater;)V
    return-void
.end method

.method private deflate(Z)V
  .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
  .end annotation
  .registers 9
  .line 1
    iget-object v0, p0, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;
    invoke-interface { v0 }, Lokio/BufferedSink;->buffer()Lokio/Buffer;
    move-result-object v0
  :L0
    const/4 v1, 1
  .line 2
    invoke-virtual { v0, v1 }, Lokio/Buffer;->writableSegment(I)Lokio/Segment;
    move-result-object v1
    if-eqz p1, :L1
  .line 3
    iget-object v2, p0, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;
    iget-object v3, v1, Lokio/Segment;->data:[B
    iget v4, v1, Lokio/Segment;->limit:I
    rsub-int v5, v4, 8192
    const/4 v6, 2
    invoke-virtual { v2, v3, v4, v5, v6 }, Ljava/util/zip/Deflater;->deflate([BIII)I
    move-result v2
    goto :L2
  :L1
  .line 4
    iget-object v2, p0, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;
    iget-object v3, v1, Lokio/Segment;->data:[B
    iget v4, v1, Lokio/Segment;->limit:I
    rsub-int v5, v4, 8192
    invoke-virtual { v2, v3, v4, v5 }, Ljava/util/zip/Deflater;->deflate([BII)I
    move-result v2
  :L2
    if-lez v2, :L3
  .line 5
    iget v3, v1, Lokio/Segment;->limit:I
    add-int/2addr v3, v2
    iput v3, v1, Lokio/Segment;->limit:I
  .line 6
    iget-wide v3, v0, Lokio/Buffer;->size:J
    int-to-long v1, v2
    add-long/2addr v3, v1
    iput-wide v3, v0, Lokio/Buffer;->size:J
  .line 7
    iget-object v1, p0, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;
    invoke-interface { v1 }, Lokio/BufferedSink;->emitCompleteSegments()Lokio/BufferedSink;
    goto :L0
  :L3
  .line 8
    iget-object v2, p0, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;
    invoke-virtual { v2 }, Ljava/util/zip/Deflater;->needsInput()Z
    move-result v2
    if-eqz v2, :L0
  .line 9
    iget p1, v1, Lokio/Segment;->pos:I
    iget v2, v1, Lokio/Segment;->limit:I
    if-ne p1, v2, :L4
  .line 10
    invoke-virtual { v1 }, Lokio/Segment;->pop()Lokio/Segment;
    move-result-object p1
    iput-object p1, v0, Lokio/Buffer;->head:Lokio/Segment;
  .line 11
    invoke-static { v1 }, Lokio/SegmentPool;->recycle(Lokio/Segment;)V
  :L4
    return-void
.end method

.method public close()V
  .catchall { :L1 .. :L2 } :L3
  .catchall { :L4 .. :L5 } :L6
  .catchall { :L7 .. :L8 } :L9
  .registers 3
  .line 1
    iget-boolean v0, p0, Lokio/DeflaterSink;->closed:Z
    if-eqz v0, :L0
    return-void
  :L0
    const/4 v0, 0
  :L1
  .line 2
    invoke-virtual { p0 }, Lokio/DeflaterSink;->finishDeflate()V
  :L2
    goto :L4
  :L3
    move-exception v0
  :L4
  .line 3
    iget-object v1, p0, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;
    invoke-virtual { v1 }, Ljava/util/zip/Deflater;->end()V
  :L5
    goto :L7
  :L6
    move-exception v1
    if-nez v0, :L7
    move-object v0, v1
  :L7
  .line 4
    iget-object v1, p0, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;
    invoke-interface { v1 }, Lokio/Sink;->close()V
  :L8
    goto :L10
  :L9
    move-exception v1
    if-nez v0, :L10
    move-object v0, v1
  :L10
    const/4 v1, 1
  .line 5
    iput-boolean v1, p0, Lokio/DeflaterSink;->closed:Z
    if-eqz v0, :L11
  .line 6
    invoke-static { v0 }, Lokio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V
  :L11
    return-void
.end method

.method finishDeflate()V
  .registers 2
  .line 1
    iget-object v0, p0, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;
    invoke-virtual { v0 }, Ljava/util/zip/Deflater;->finish()V
    const/4 v0, 0
  .line 2
    invoke-direct { p0, v0 }, Lokio/DeflaterSink;->deflate(Z)V
    return-void
.end method

.method public flush()V
  .registers 2
    const/4 v0, 1
  .line 1
    invoke-direct { p0, v0 }, Lokio/DeflaterSink;->deflate(Z)V
  .line 2
    iget-object v0, p0, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;
    invoke-interface { v0 }, Lokio/BufferedSink;->flush()V
    return-void
.end method

.method public timeout()Lokio/Timeout;
  .registers 2
  .line 1
    iget-object v0, p0, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;
    invoke-interface { v0 }, Lokio/Sink;->timeout()Lokio/Timeout;
    move-result-object v0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "DeflaterSink("
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, ")"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
  .registers 11
  .line 1
    iget-wide v0, p1, Lokio/Buffer;->size:J
    const-wide/16 v2, 0
    move-wide v4, p2
    invoke-static/range { v0 .. v5 }, Lokio/Util;->checkOffsetAndCount(JJJ)V
  :L0
    const-wide/16 v0, 0
    cmp-long v2, p2, v0
    if-lez v2, :L2
  .line 2
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;
  .line 3
    iget v1, v0, Lokio/Segment;->limit:I
    iget v2, v0, Lokio/Segment;->pos:I
    sub-int/2addr v1, v2
    int-to-long v1, v1
    invoke-static { p2, p3, v1, v2 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v1
    long-to-int v2, v1
  .line 4
    iget-object v1, p0, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;
    iget-object v3, v0, Lokio/Segment;->data:[B
    iget v4, v0, Lokio/Segment;->pos:I
    invoke-virtual { v1, v3, v4, v2 }, Ljava/util/zip/Deflater;->setInput([BII)V
    const/4 v1, 0
  .line 5
    invoke-direct { p0, v1 }, Lokio/DeflaterSink;->deflate(Z)V
  .line 6
    iget-wide v3, p1, Lokio/Buffer;->size:J
    int-to-long v5, v2
    sub-long/2addr v3, v5
    iput-wide v3, p1, Lokio/Buffer;->size:J
  .line 7
    iget v1, v0, Lokio/Segment;->pos:I
    add-int/2addr v1, v2
    iput v1, v0, Lokio/Segment;->pos:I
  .line 8
    iget v2, v0, Lokio/Segment;->limit:I
    if-ne v1, v2, :L1
  .line 9
    invoke-virtual { v0 }, Lokio/Segment;->pop()Lokio/Segment;
    move-result-object v1
    iput-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;
  .line 10
    invoke-static { v0 }, Lokio/SegmentPool;->recycle(Lokio/Segment;)V
  :L1
    sub-long/2addr p2, v5
    goto :L0
  :L2
    return-void
.end method
