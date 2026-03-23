.class public final Lokio/Buffer$UnsafeCursor;
.super Ljava/lang/Object;
.implements Ljava/io/Closeable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokio/Buffer;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 25
  name = "UnsafeCursor"
.end annotation

.field public buffer:Lokio/Buffer;

.field public data:[B

.field public end:I

.field public offset:J

.field public readWrite:Z

.field private segment:Lokio/Segment;

.field public start:I

.method public constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const-wide/16 v0, -1
  .line 2
    iput-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J
    const/4 v0, -1
  .line 3
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I
  .line 4
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I
    return-void
.end method

.method public close()V
  .registers 4
  .line 1
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;
    if-eqz v0, :L0
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;
  .line 3
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;
    const-wide/16 v1, -1
  .line 4
    iput-wide v1, p0, Lokio/Buffer$UnsafeCursor;->offset:J
  .line 5
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->data:[B
    const/4 v0, -1
  .line 6
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I
  .line 7
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I
    return-void
  :L0
  .line 8
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "not attached to a buffer"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public final expandBuffer(I)J
  .registers 11
    if-lez p1, :L3
    const/16 v0, 8192
    if-gt p1, v0, :L2
  .line 1
    iget-object v1, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;
    if-eqz v1, :L1
  .line 2
    iget-boolean v2, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z
    if-eqz v2, :L0
  .line 3
    iget-wide v2, v1, Lokio/Buffer;->size:J
  .line 4
    invoke-virtual { v1, p1 }, Lokio/Buffer;->writableSegment(I)Lokio/Segment;
    move-result-object p1
  .line 5
    iget v1, p1, Lokio/Segment;->limit:I
    rsub-int v1, v1, 8192
  .line 6
    iput v0, p1, Lokio/Segment;->limit:I
  .line 7
    iget-object v4, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;
    int-to-long v5, v1
    add-long v7, v2, v5
    iput-wide v7, v4, Lokio/Buffer;->size:J
  .line 8
    iput-object p1, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;
  .line 9
    iput-wide v2, p0, Lokio/Buffer$UnsafeCursor;->offset:J
  .line 10
    iget-object p1, p1, Lokio/Segment;->data:[B
    iput-object p1, p0, Lokio/Buffer$UnsafeCursor;->data:[B
    rsub-int p1, v1, 8192
  .line 11
    iput p1, p0, Lokio/Buffer$UnsafeCursor;->start:I
  .line 12
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I
    return-wide v5
  :L0
  .line 13
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "expandBuffer() only permitted for read/write buffers"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 14
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "not attached to a buffer"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L2
  .line 15
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "minByteCount > Segment.SIZE: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L3
  .line 16
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "minByteCount <= 0: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public final next()I
  .registers 6
  .line 1
    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J
    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;
    iget-wide v2, v2, Lokio/Buffer;->size:J
    cmp-long v4, v0, v2
    if-eqz v4, :L1
    const-wide/16 v2, -1
    cmp-long v4, v0, v2
    if-nez v4, :L0
    const-wide/16 v0, 0
  .line 2
    invoke-virtual { p0, v0, v1 }, Lokio/Buffer$UnsafeCursor;->seek(J)I
    move-result v0
    return v0
  :L0
  .line 3
    iget v2, p0, Lokio/Buffer$UnsafeCursor;->end:I
    iget v3, p0, Lokio/Buffer$UnsafeCursor;->start:I
    sub-int/2addr v2, v3
    int-to-long v2, v2
    add-long/2addr v0, v2
    invoke-virtual { p0, v0, v1 }, Lokio/Buffer$UnsafeCursor;->seek(J)I
    move-result v0
    return v0
  :L1
  .line 4
    new-instance v0, Ljava/lang/IllegalStateException;
    invoke-direct { v0 }, Ljava/lang/IllegalStateException;-><init>()V
    throw v0
.end method

.method public final resizeBuffer(J)J
  .registers 16
  .line 1
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;
    if-eqz v0, :L8
  .line 2
    iget-boolean v1, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z
    if-eqz v1, :L7
  .line 3
    iget-wide v0, v0, Lokio/Buffer;->size:J
    const-wide/16 v2, 0
    cmp-long v4, p1, v0
    if-gtz v4, :L4
    cmp-long v4, p1, v2
    if-ltz v4, :L3
    sub-long v4, v0, p1
  :L0
    cmp-long v6, v4, v2
    if-lez v6, :L2
  .line 4
    iget-object v6, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;
    iget-object v7, v6, Lokio/Buffer;->head:Lokio/Segment;
    iget-object v7, v7, Lokio/Segment;->prev:Lokio/Segment;
  .line 5
    iget v8, v7, Lokio/Segment;->limit:I
    iget v9, v7, Lokio/Segment;->pos:I
    sub-int v9, v8, v9
    int-to-long v9, v9
    cmp-long v11, v9, v4
    if-gtz v11, :L1
  .line 6
    invoke-virtual { v7 }, Lokio/Segment;->pop()Lokio/Segment;
    move-result-object v8
    iput-object v8, v6, Lokio/Buffer;->head:Lokio/Segment;
  .line 7
    invoke-static { v7 }, Lokio/SegmentPool;->recycle(Lokio/Segment;)V
    sub-long/2addr v4, v9
    goto :L0
  :L1
    int-to-long v2, v8
    sub-long/2addr v2, v4
    long-to-int v3, v2
  .line 8
    iput v3, v7, Lokio/Segment;->limit:I
  :L2
    const/4 v2, 0
  .line 9
    iput-object v2, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;
  .line 10
    iput-wide p1, p0, Lokio/Buffer$UnsafeCursor;->offset:J
  .line 11
    iput-object v2, p0, Lokio/Buffer$UnsafeCursor;->data:[B
    const/4 v2, -1
  .line 12
    iput v2, p0, Lokio/Buffer$UnsafeCursor;->start:I
  .line 13
    iput v2, p0, Lokio/Buffer$UnsafeCursor;->end:I
    goto :L6
  :L3
  .line 14
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "newSize < 0: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1, p2 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L4
    cmp-long v4, p1, v0
    if-lez v4, :L6
    sub-long v4, p1, v0
    const/4 v6, 1
    const/4 v7, 1
  :L5
    cmp-long v8, v4, v2
    if-lez v8, :L6
  .line 15
    iget-object v8, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;
    invoke-virtual { v8, v6 }, Lokio/Buffer;->writableSegment(I)Lokio/Segment;
    move-result-object v8
  .line 16
    iget v9, v8, Lokio/Segment;->limit:I
    rsub-int v9, v9, 8192
    int-to-long v9, v9
    invoke-static { v4, v5, v9, v10 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v9
    long-to-int v10, v9
  .line 17
    iget v9, v8, Lokio/Segment;->limit:I
    add-int/2addr v9, v10
    iput v9, v8, Lokio/Segment;->limit:I
    int-to-long v11, v10
    sub-long/2addr v4, v11
    if-eqz v7, :L5
  .line 18
    iput-object v8, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;
  .line 19
    iput-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J
  .line 20
    iget-object v7, v8, Lokio/Segment;->data:[B
    iput-object v7, p0, Lokio/Buffer$UnsafeCursor;->data:[B
    sub-int v7, v9, v10
  .line 21
    iput v7, p0, Lokio/Buffer$UnsafeCursor;->start:I
  .line 22
    iput v9, p0, Lokio/Buffer$UnsafeCursor;->end:I
    const/4 v7, 0
    goto :L5
  :L6
  .line 23
    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;
    iput-wide p1, v2, Lokio/Buffer;->size:J
    return-wide v0
  :L7
  .line 24
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "resizeBuffer() only permitted for read/write buffers"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L8
  .line 25
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "not attached to a buffer"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    goto :L10
  :L9
    throw p1
  :L10
    goto :L9
.end method

.method public final seek(J)I
  .registers 15
    const-wide/16 v0, -1
    cmp-long v2, p1, v0
    if-ltz v2, :L11
  .line 1
    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;
    iget-wide v3, v2, Lokio/Buffer;->size:J
    cmp-long v5, p1, v3
    if-gtz v5, :L11
    cmp-long v5, p1, v0
    if-eqz v5, :L10
    cmp-long v0, p1, v3
    if-nez v0, :L0
    goto/16 :L10
  :L0
    const-wide/16 v0, 0
  .line 2
    iget-object v2, v2, Lokio/Buffer;->head:Lokio/Segment;
  .line 3
    iget-object v5, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;
    if-eqz v5, :L2
  .line 4
    iget-wide v6, p0, Lokio/Buffer$UnsafeCursor;->offset:J
    iget v8, p0, Lokio/Buffer$UnsafeCursor;->start:I
    iget v9, v5, Lokio/Segment;->pos:I
    sub-int/2addr v8, v9
    int-to-long v8, v8
    sub-long/2addr v6, v8
    cmp-long v8, v6, p1
    if-lez v8, :L1
    move-wide v3, v6
    move-object v11, v5
    move-object v5, v2
    move-object v2, v11
    goto :L3
  :L1
    move-wide v0, v6
    goto :L3
  :L2
    move-object v5, v2
  :L3
    sub-long v6, v3, p1
    sub-long v8, p1, v0
    cmp-long v10, v6, v8
    if-lez v10, :L5
  :L4
  .line 5
    iget v2, v5, Lokio/Segment;->limit:I
    iget v3, v5, Lokio/Segment;->pos:I
    sub-int v4, v2, v3
    int-to-long v6, v4
    add-long/2addr v6, v0
    cmp-long v4, p1, v6
    if-ltz v4, :L7
    sub-int/2addr v2, v3
    int-to-long v2, v2
    add-long/2addr v0, v2
  .line 6
    iget-object v5, v5, Lokio/Segment;->next:Lokio/Segment;
    goto :L4
  :L5
    cmp-long v0, v3, p1
    if-lez v0, :L6
  .line 7
    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;
  .line 8
    iget v0, v2, Lokio/Segment;->limit:I
    iget v1, v2, Lokio/Segment;->pos:I
    sub-int/2addr v0, v1
    int-to-long v0, v0
    sub-long/2addr v3, v0
    goto :L5
  :L6
    move-object v5, v2
    move-wide v0, v3
  :L7
  .line 9
    iget-boolean v2, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z
    if-eqz v2, :L9
    iget-boolean v2, v5, Lokio/Segment;->shared:Z
    if-eqz v2, :L9
  .line 10
    invoke-virtual { v5 }, Lokio/Segment;->unsharedCopy()Lokio/Segment;
    move-result-object v2
  .line 11
    iget-object v3, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;
    iget-object v4, v3, Lokio/Buffer;->head:Lokio/Segment;
    if-ne v4, v5, :L8
  .line 12
    iput-object v2, v3, Lokio/Buffer;->head:Lokio/Segment;
  :L8
  .line 13
    invoke-virtual { v5, v2 }, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;
    move-result-object v5
  .line 14
    iget-object v2, v5, Lokio/Segment;->prev:Lokio/Segment;
    invoke-virtual { v2 }, Lokio/Segment;->pop()Lokio/Segment;
  :L9
  .line 15
    iput-object v5, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;
  .line 16
    iput-wide p1, p0, Lokio/Buffer$UnsafeCursor;->offset:J
  .line 17
    iget-object v2, v5, Lokio/Segment;->data:[B
    iput-object v2, p0, Lokio/Buffer$UnsafeCursor;->data:[B
  .line 18
    iget v2, v5, Lokio/Segment;->pos:I
    sub-long/2addr p1, v0
    long-to-int p2, p1
    add-int/2addr v2, p2
    iput v2, p0, Lokio/Buffer$UnsafeCursor;->start:I
  .line 19
    iget p1, v5, Lokio/Segment;->limit:I
    iput p1, p0, Lokio/Buffer$UnsafeCursor;->end:I
    sub-int/2addr p1, v2
    return p1
  :L10
    const/4 v0, 0
  .line 20
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;
  .line 21
    iput-wide p1, p0, Lokio/Buffer$UnsafeCursor;->offset:J
  .line 22
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->data:[B
    const/4 p1, -1
  .line 23
    iput p1, p0, Lokio/Buffer$UnsafeCursor;->start:I
  .line 24
    iput p1, p0, Lokio/Buffer$UnsafeCursor;->end:I
    return p1
  :L11
  .line 25
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v1, 2
    new-array v1, v1, [Ljava/lang/Object;
    const/4 v2, 0
  .line 26
    invoke-static { p1, p2 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object p1
    aput-object p1, v1, v2
    const/4 p1, 1
    iget-object p2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;
    iget-wide v2, p2, Lokio/Buffer;->size:J
    invoke-static { v2, v3 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object p2
    aput-object p2, v1, p1
    const-string p1, "offset=%s > size=%s"
    invoke-static { p1, v1 }, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
    goto :L13
  :L12
    throw v0
  :L13
    goto :L12
.end method
