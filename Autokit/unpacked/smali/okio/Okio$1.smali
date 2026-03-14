.class final Lokio/Okio$1;
.super Ljava/lang/Object;
.implements Lokio/Sink;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lokio/Okio;->sink(Ljava/io/OutputStream;Lokio/Timeout;)Lokio/Sink;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic val$out:Ljava/io/OutputStream;

.field final synthetic val$timeout:Lokio/Timeout;

.method constructor <init>(Lokio/Timeout;Ljava/io/OutputStream;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lokio/Okio$1;->val$timeout:Lokio/Timeout;
    iput-object p2, p0, Lokio/Okio$1;->val$out:Ljava/io/OutputStream;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public close()V
  .registers 2
  .line 1
    iget-object v0, p0, Lokio/Okio$1;->val$out:Ljava/io/OutputStream;
    invoke-virtual { v0 }, Ljava/io/OutputStream;->close()V
    return-void
.end method

.method public flush()V
  .registers 2
  .line 1
    iget-object v0, p0, Lokio/Okio$1;->val$out:Ljava/io/OutputStream;
    invoke-virtual { v0 }, Ljava/io/OutputStream;->flush()V
    return-void
.end method

.method public timeout()Lokio/Timeout;
  .registers 2
  .line 1
    iget-object v0, p0, Lokio/Okio$1;->val$timeout:Lokio/Timeout;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "sink("
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lokio/Okio$1;->val$out:Ljava/io/OutputStream;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, ")"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
  .registers 10
  .line 1
    iget-wide v0, p1, Lokio/Buffer;->size:J
    const-wide/16 v2, 0
    move-wide v4, p2
    invoke-static/range { v0 .. v5 }, Lokio/Util;->checkOffsetAndCount(JJJ)V
  :L0
    const-wide/16 v0, 0
    cmp-long v2, p2, v0
    if-lez v2, :L1
  .line 2
    iget-object v0, p0, Lokio/Okio$1;->val$timeout:Lokio/Timeout;
    invoke-virtual { v0 }, Lokio/Timeout;->throwIfReached()V
  .line 3
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;
  .line 4
    iget v1, v0, Lokio/Segment;->limit:I
    iget v2, v0, Lokio/Segment;->pos:I
    sub-int/2addr v1, v2
    int-to-long v1, v1
    invoke-static { p2, p3, v1, v2 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v1
    long-to-int v2, v1
  .line 5
    iget-object v1, p0, Lokio/Okio$1;->val$out:Ljava/io/OutputStream;
    iget-object v3, v0, Lokio/Segment;->data:[B
    iget v4, v0, Lokio/Segment;->pos:I
    invoke-virtual { v1, v3, v4, v2 }, Ljava/io/OutputStream;->write([BII)V
  .line 6
    iget v1, v0, Lokio/Segment;->pos:I
    add-int/2addr v1, v2
    iput v1, v0, Lokio/Segment;->pos:I
    int-to-long v2, v2
    sub-long/2addr p2, v2
  .line 7
    iget-wide v4, p1, Lokio/Buffer;->size:J
    sub-long/2addr v4, v2
    iput-wide v4, p1, Lokio/Buffer;->size:J
  .line 8
    iget v2, v0, Lokio/Segment;->limit:I
    if-ne v1, v2, :L0
  .line 9
    invoke-virtual { v0 }, Lokio/Segment;->pop()Lokio/Segment;
    move-result-object v1
    iput-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;
  .line 10
    invoke-static { v0 }, Lokio/SegmentPool;->recycle(Lokio/Segment;)V
    goto :L0
  :L1
    return-void
.end method
