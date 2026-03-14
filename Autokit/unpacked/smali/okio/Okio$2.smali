.class final Lokio/Okio$2;
.super Ljava/lang/Object;
.implements Lokio/Source;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lokio/Okio;->source(Ljava/io/InputStream;Lokio/Timeout;)Lokio/Source;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic val$in:Ljava/io/InputStream;

.field final synthetic val$timeout:Lokio/Timeout;

.method constructor <init>(Lokio/Timeout;Ljava/io/InputStream;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lokio/Okio$2;->val$timeout:Lokio/Timeout;
    iput-object p2, p0, Lokio/Okio$2;->val$in:Ljava/io/InputStream;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public close()V
  .registers 2
  .line 1
    iget-object v0, p0, Lokio/Okio$2;->val$in:Ljava/io/InputStream;
    invoke-virtual { v0 }, Ljava/io/InputStream;->close()V
    return-void
.end method

.method public read(Lokio/Buffer;J)J
  .catch Ljava/lang/AssertionError; { :L0 .. :L2 } :L3
  .registers 7
    const-wide/16 v0, 0
    cmp-long v2, p2, v0
    if-ltz v2, :L5
    cmp-long v2, p2, v0
    if-nez v2, :L0
    return-wide v0
  :L0
  .line 1
    iget-object v0, p0, Lokio/Okio$2;->val$timeout:Lokio/Timeout;
    invoke-virtual { v0 }, Lokio/Timeout;->throwIfReached()V
    const/4 v0, 1
  .line 2
    invoke-virtual { p1, v0 }, Lokio/Buffer;->writableSegment(I)Lokio/Segment;
    move-result-object v0
  .line 3
    iget v1, v0, Lokio/Segment;->limit:I
    rsub-int v1, v1, 8192
    int-to-long v1, v1
    invoke-static { p2, p3, v1, v2 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide p2
    long-to-int p3, p2
  .line 4
    iget-object p2, p0, Lokio/Okio$2;->val$in:Ljava/io/InputStream;
    iget-object v1, v0, Lokio/Segment;->data:[B
    iget v2, v0, Lokio/Segment;->limit:I
    invoke-virtual { p2, v1, v2, p3 }, Ljava/io/InputStream;->read([BII)I
    move-result p2
    const/4 p3, -1
    if-ne p2, p3, :L1
    const-wide/16 p1, -1
    return-wide p1
  :L1
  .line 5
    iget p3, v0, Lokio/Segment;->limit:I
    add-int/2addr p3, p2
    iput p3, v0, Lokio/Segment;->limit:I
  .line 6
    iget-wide v0, p1, Lokio/Buffer;->size:J
    int-to-long p2, p2
    add-long/2addr v0, p2
    iput-wide v0, p1, Lokio/Buffer;->size:J
  :L2
    return-wide p2
  :L3
    move-exception p1
  .line 7
    invoke-static { p1 }, Lokio/Okio;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    move-result p2
    if-eqz p2, :L4
    new-instance p2, Ljava/io/IOException;
    invoke-direct { p2, p1 }, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V
    throw p2
  :L4
  .line 8
    throw p1
  :L5
  .line 9
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
.end method

.method public timeout()Lokio/Timeout;
  .registers 2
  .line 1
    iget-object v0, p0, Lokio/Okio$2;->val$timeout:Lokio/Timeout;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "source("
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lokio/Okio$2;->val$in:Ljava/io/InputStream;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, ")"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
