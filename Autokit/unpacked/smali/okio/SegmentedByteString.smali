.class final Lokio/SegmentedByteString;
.super Lokio/ByteString;
.source "SourceFile"

.field final transient directory:[I

.field final transient segments:[[B

.method constructor <init>(Lokio/Buffer;I)V
  .registers 10
    const/4 v0, 0
  .line 1
    invoke-direct { p0, v0 }, Lokio/ByteString;-><init>([B)V
  .line 2
    iget-wide v1, p1, Lokio/Buffer;->size:J
    int-to-long v5, p2
    const-wide/16 v3, 0
    invoke-static/range { v1 .. v6 }, Lokio/Util;->checkOffsetAndCount(JJJ)V
  .line 3
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;
    const/4 v1, 0
    const/4 v2, 0
    const/4 v3, 0
  :L0
    if-ge v2, p2, :L2
  .line 4
    iget v4, v0, Lokio/Segment;->limit:I
    iget v5, v0, Lokio/Segment;->pos:I
    if-eq v4, v5, :L1
    sub-int/2addr v4, v5
    add-int/2addr v2, v4
    add-int/lit8 v3, v3, 1
  .line 5
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;
    goto :L0
  :L1
  .line 6
    new-instance p1, Ljava/lang/AssertionError;
    const-string p2, "s.limit == s.pos"
    invoke-direct { p1, p2 }, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    throw p1
  :L2
  .line 7
    new-array v0, v3, [[B
    iput-object v0, p0, Lokio/SegmentedByteString;->segments:[[B
    mul-int/lit8 v3, v3, 2
  .line 8
    new-array v0, v3, [I
    iput-object v0, p0, Lokio/SegmentedByteString;->directory:[I
  .line 9
    iget-object p1, p1, Lokio/Buffer;->head:Lokio/Segment;
    const/4 v0, 0
  :L3
    if-ge v1, p2, :L5
  .line 10
    iget-object v2, p0, Lokio/SegmentedByteString;->segments:[[B
    iget-object v3, p1, Lokio/Segment;->data:[B
    aput-object v3, v2, v0
  .line 11
    iget v2, p1, Lokio/Segment;->limit:I
    iget v3, p1, Lokio/Segment;->pos:I
    sub-int/2addr v2, v3
    add-int/2addr v1, v2
    if-le v1, p2, :L4
    move v1, p2
  :L4
  .line 12
    iget-object v2, p0, Lokio/SegmentedByteString;->directory:[I
    aput v1, v2, v0
  .line 13
    iget-object v3, p0, Lokio/SegmentedByteString;->segments:[[B
    array-length v3, v3
    add-int/2addr v3, v0
    iget v4, p1, Lokio/Segment;->pos:I
    aput v4, v2, v3
    const/4 v2, 1
  .line 14
    iput-boolean v2, p1, Lokio/Segment;->shared:Z
    add-int/lit8 v0, v0, 1
  .line 15
    iget-object p1, p1, Lokio/Segment;->next:Lokio/Segment;
    goto :L3
  :L5
    return-void
.end method

.method private segment(I)I
  .registers 5
  .line 1
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I
    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B
    array-length v1, v1
    add-int/lit8 p1, p1, 1
    const/4 v2, 0
    invoke-static { v0, v2, v1, p1 }, Ljava/util/Arrays;->binarySearch([IIII)I
    move-result p1
    if-ltz p1, :L0
    goto :L1
  :L0
    xor-int/lit8 p1, p1, -1
  :L1
    return p1
.end method

.method private toByteString()Lokio/ByteString;
  .registers 3
  .line 1
    new-instance v0, Lokio/ByteString;
    invoke-virtual { p0 }, Lokio/SegmentedByteString;->toByteArray()[B
    move-result-object v1
    invoke-direct { v0, v1 }, Lokio/ByteString;-><init>([B)V
    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-direct { p0 }, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;
    move-result-object v0
    return-object v0
.end method

.method public asByteBuffer()Ljava/nio/ByteBuffer;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lokio/SegmentedByteString;->toByteArray()[B
    move-result-object v0
    invoke-static { v0 }, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    move-result-object v0
    return-object v0
.end method

.method public base64()Ljava/lang/String;
  .registers 2
  .line 1
    invoke-direct { p0 }, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;
    move-result-object v0
    invoke-virtual { v0 }, Lokio/ByteString;->base64()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
  .registers 2
  .line 1
    invoke-direct { p0 }, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;
    move-result-object v0
    invoke-virtual { v0 }, Lokio/ByteString;->base64Url()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 6
    const/4 v0, 1
    if-ne p1, p0, :L0
    return v0
  :L0
  .line 1
    instance-of v1, p1, Lokio/ByteString;
    const/4 v2, 0
    if-eqz v1, :L1
    check-cast p1, Lokio/ByteString;
  .line 2
    invoke-virtual { p1 }, Lokio/ByteString;->size()I
    move-result v1
    invoke-virtual { p0 }, Lokio/SegmentedByteString;->size()I
    move-result v3
    if-ne v1, v3, :L1
  .line 3
    invoke-virtual { p0 }, Lokio/SegmentedByteString;->size()I
    move-result v1
    invoke-virtual { p0, v2, p1, v2, v1 }, Lokio/SegmentedByteString;->rangeEquals(ILokio/ByteString;II)Z
    move-result p1
    if-eqz p1, :L1
    goto :L2
  :L1
    const/4 v0, 0
  :L2
    return v0
.end method

.method public getByte(I)B
  .registers 9
  .line 1
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I
    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B
    array-length v1, v1
    add-int/lit8 v1, v1, -1
    aget v0, v0, v1
    int-to-long v1, v0
    int-to-long v3, p1
    const-wide/16 v5, 1
    invoke-static/range { v1 .. v6 }, Lokio/Util;->checkOffsetAndCount(JJJ)V
  .line 2
    invoke-direct { p0, p1 }, Lokio/SegmentedByteString;->segment(I)I
    move-result v0
    if-nez v0, :L0
    const/4 v1, 0
    goto :L1
  :L0
  .line 3
    iget-object v1, p0, Lokio/SegmentedByteString;->directory:[I
    add-int/lit8 v2, v0, -1
    aget v1, v1, v2
  :L1
  .line 4
    iget-object v2, p0, Lokio/SegmentedByteString;->directory:[I
    iget-object v3, p0, Lokio/SegmentedByteString;->segments:[[B
    array-length v4, v3
    add-int/2addr v4, v0
    aget v2, v2, v4
  .line 5
    aget-object v0, v3, v0
    sub-int/2addr p1, v1
    add-int/2addr p1, v2
    aget-byte p1, v0, p1
    return p1
.end method

.method public hashCode()I
  .registers 9
  .line 1
    iget v0, p0, Lokio/ByteString;->hashCode:I
    if-eqz v0, :L0
    return v0
  :L0
  .line 2
    iget-object v0, p0, Lokio/SegmentedByteString;->segments:[[B
    array-length v0, v0
    const/4 v1, 0
    const/4 v2, 1
    const/4 v2, 0
    const/4 v3, 1
  :L1
    if-ge v1, v0, :L4
  .line 3
    iget-object v4, p0, Lokio/SegmentedByteString;->segments:[[B
    aget-object v4, v4, v1
  .line 4
    iget-object v5, p0, Lokio/SegmentedByteString;->directory:[I
    add-int v6, v0, v1
    aget v6, v5, v6
  .line 5
    aget v5, v5, v1
    sub-int v2, v5, v2
    add-int/2addr v2, v6
  :L2
    if-ge v6, v2, :L3
    mul-int/lit8 v3, v3, 31
  .line 6
    aget-byte v7, v4, v6
    add-int/2addr v3, v7
    add-int/lit8 v6, v6, 1
    goto :L2
  :L3
    add-int/lit8 v1, v1, 1
    move v2, v5
    goto :L1
  :L4
  .line 7
    iput v3, p0, Lokio/ByteString;->hashCode:I
    return v3
.end method

.method public hex()Ljava/lang/String;
  .registers 2
  .line 1
    invoke-direct { p0 }, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;
    move-result-object v0
    invoke-virtual { v0 }, Lokio/ByteString;->hex()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public hmacSha1(Lokio/ByteString;)Lokio/ByteString;
  .registers 3
  .line 1
    invoke-direct { p0 }, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;
    move-result-object v0
    invoke-virtual { v0, p1 }, Lokio/ByteString;->hmacSha1(Lokio/ByteString;)Lokio/ByteString;
    move-result-object p1
    return-object p1
.end method

.method public hmacSha256(Lokio/ByteString;)Lokio/ByteString;
  .registers 3
  .line 1
    invoke-direct { p0 }, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;
    move-result-object v0
    invoke-virtual { v0, p1 }, Lokio/ByteString;->hmacSha256(Lokio/ByteString;)Lokio/ByteString;
    move-result-object p1
    return-object p1
.end method

.method public indexOf([BI)I
  .registers 4
  .line 1
    invoke-direct { p0 }, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;
    move-result-object v0
    invoke-virtual { v0, p1, p2 }, Lokio/ByteString;->indexOf([BI)I
    move-result p1
    return p1
.end method

.method internalArray()[B
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lokio/SegmentedByteString;->toByteArray()[B
    move-result-object v0
    return-object v0
.end method

.method public lastIndexOf([BI)I
  .registers 4
  .line 1
    invoke-direct { p0 }, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;
    move-result-object v0
    invoke-virtual { v0, p1, p2 }, Lokio/ByteString;->lastIndexOf([BI)I
    move-result p1
    return p1
.end method

.method public md5()Lokio/ByteString;
  .registers 2
  .line 1
    invoke-direct { p0 }, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;
    move-result-object v0
    invoke-virtual { v0 }, Lokio/ByteString;->md5()Lokio/ByteString;
    move-result-object v0
    return-object v0
.end method

.method public rangeEquals(ILokio/ByteString;II)Z
  .registers 12
    const/4 v0, 0
    if-ltz p1, :L6
  .line 1
    invoke-virtual { p0 }, Lokio/SegmentedByteString;->size()I
    move-result v1
    sub-int/2addr v1, p4
    if-le p1, v1, :L0
    goto :L6
  :L0
  .line 2
    invoke-direct { p0, p1 }, Lokio/SegmentedByteString;->segment(I)I
    move-result v1
  :L1
    if-lez p4, :L5
    if-nez v1, :L2
    const/4 v2, 0
    goto :L3
  :L2
  .line 3
    iget-object v2, p0, Lokio/SegmentedByteString;->directory:[I
    add-int/lit8 v3, v1, -1
    aget v2, v2, v3
  :L3
  .line 4
    iget-object v3, p0, Lokio/SegmentedByteString;->directory:[I
    aget v3, v3, v1
    sub-int/2addr v3, v2
    add-int/2addr v3, v2
    sub-int/2addr v3, p1
  .line 5
    invoke-static { p4, v3 }, Ljava/lang/Math;->min(II)I
    move-result v3
  .line 6
    iget-object v4, p0, Lokio/SegmentedByteString;->directory:[I
    iget-object v5, p0, Lokio/SegmentedByteString;->segments:[[B
    array-length v6, v5
    add-int/2addr v6, v1
    aget v4, v4, v6
    sub-int v2, p1, v2
    add-int/2addr v2, v4
  .line 7
    aget-object v4, v5, v1
    invoke-virtual { p2, p3, v4, v2, v3 }, Lokio/ByteString;->rangeEquals(I[BII)Z
    move-result v2
    if-nez v2, :L4
    return v0
  :L4
    add-int/2addr p1, v3
    add-int/2addr p3, v3
    sub-int/2addr p4, v3
    add-int/lit8 v1, v1, 1
    goto :L1
  :L5
    const/4 p1, 1
    return p1
  :L6
    return v0
.end method

.method public rangeEquals(I[BII)Z
  .registers 12
    const/4 v0, 0
    if-ltz p1, :L6
  .line 8
    invoke-virtual { p0 }, Lokio/SegmentedByteString;->size()I
    move-result v1
    sub-int/2addr v1, p4
    if-gt p1, v1, :L6
    if-ltz p3, :L6
    array-length v1, p2
    sub-int/2addr v1, p4
    if-le p3, v1, :L0
    goto :L6
  :L0
  .line 9
    invoke-direct { p0, p1 }, Lokio/SegmentedByteString;->segment(I)I
    move-result v1
  :L1
    if-lez p4, :L5
    if-nez v1, :L2
    const/4 v2, 0
    goto :L3
  :L2
  .line 10
    iget-object v2, p0, Lokio/SegmentedByteString;->directory:[I
    add-int/lit8 v3, v1, -1
    aget v2, v2, v3
  :L3
  .line 11
    iget-object v3, p0, Lokio/SegmentedByteString;->directory:[I
    aget v3, v3, v1
    sub-int/2addr v3, v2
    add-int/2addr v3, v2
    sub-int/2addr v3, p1
  .line 12
    invoke-static { p4, v3 }, Ljava/lang/Math;->min(II)I
    move-result v3
  .line 13
    iget-object v4, p0, Lokio/SegmentedByteString;->directory:[I
    iget-object v5, p0, Lokio/SegmentedByteString;->segments:[[B
    array-length v6, v5
    add-int/2addr v6, v1
    aget v4, v4, v6
    sub-int v2, p1, v2
    add-int/2addr v2, v4
  .line 14
    aget-object v4, v5, v1
    invoke-static { v4, v2, p2, p3, v3 }, Lokio/Util;->arrayRangeEquals([BI[BII)Z
    move-result v2
    if-nez v2, :L4
    return v0
  :L4
    add-int/2addr p1, v3
    add-int/2addr p3, v3
    sub-int/2addr p4, v3
    add-int/lit8 v1, v1, 1
    goto :L1
  :L5
    const/4 p1, 1
    return p1
  :L6
    return v0
.end method

.method public sha1()Lokio/ByteString;
  .registers 2
  .line 1
    invoke-direct { p0 }, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;
    move-result-object v0
    invoke-virtual { v0 }, Lokio/ByteString;->sha1()Lokio/ByteString;
    move-result-object v0
    return-object v0
.end method

.method public sha256()Lokio/ByteString;
  .registers 2
  .line 1
    invoke-direct { p0 }, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;
    move-result-object v0
    invoke-virtual { v0 }, Lokio/ByteString;->sha256()Lokio/ByteString;
    move-result-object v0
    return-object v0
.end method

.method public size()I
  .registers 3
  .line 1
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I
    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B
    array-length v1, v1
    add-int/lit8 v1, v1, -1
    aget v0, v0, v1
    return v0
.end method

.method public string(Ljava/nio/charset/Charset;)Ljava/lang/String;
  .registers 3
  .line 1
    invoke-direct { p0 }, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;
    move-result-object v0
    invoke-virtual { v0, p1 }, Lokio/ByteString;->string(Ljava/nio/charset/Charset;)Ljava/lang/String;
    move-result-object p1
    return-object p1
.end method

.method public substring(I)Lokio/ByteString;
  .registers 3
  .line 1
    invoke-direct { p0 }, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;
    move-result-object v0
    invoke-virtual { v0, p1 }, Lokio/ByteString;->substring(I)Lokio/ByteString;
    move-result-object p1
    return-object p1
.end method

.method public substring(II)Lokio/ByteString;
  .registers 4
  .line 2
    invoke-direct { p0 }, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;
    move-result-object v0
    invoke-virtual { v0, p1, p2 }, Lokio/ByteString;->substring(II)Lokio/ByteString;
    move-result-object p1
    return-object p1
.end method

.method public toAsciiLowercase()Lokio/ByteString;
  .registers 2
  .line 1
    invoke-direct { p0 }, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;
    move-result-object v0
    invoke-virtual { v0 }, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;
    move-result-object v0
    return-object v0
.end method

.method public toAsciiUppercase()Lokio/ByteString;
  .registers 2
  .line 1
    invoke-direct { p0 }, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;
    move-result-object v0
    invoke-virtual { v0 }, Lokio/ByteString;->toAsciiUppercase()Lokio/ByteString;
    move-result-object v0
    return-object v0
.end method

.method public toByteArray()[B
  .registers 9
  .line 1
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I
    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B
    array-length v2, v1
    add-int/lit8 v2, v2, -1
    aget v0, v0, v2
    new-array v0, v0, [B
  .line 2
    array-length v1, v1
    const/4 v2, 0
    const/4 v3, 0
  :L0
    if-ge v2, v1, :L1
  .line 3
    iget-object v4, p0, Lokio/SegmentedByteString;->directory:[I
    add-int v5, v1, v2
    aget v5, v4, v5
  .line 4
    aget v4, v4, v2
  .line 5
    iget-object v6, p0, Lokio/SegmentedByteString;->segments:[[B
    aget-object v6, v6, v2
    sub-int v7, v4, v3
    invoke-static { v6, v5, v0, v3, v7 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    add-int/lit8 v2, v2, 1
    move v3, v4
    goto :L0
  :L1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
  .registers 2
  .line 1
    invoke-direct { p0 }, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;
    move-result-object v0
    invoke-virtual { v0 }, Lokio/ByteString;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public utf8()Ljava/lang/String;
  .registers 2
  .line 1
    invoke-direct { p0 }, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;
    move-result-object v0
    invoke-virtual { v0 }, Lokio/ByteString;->utf8()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
  .registers 8
    if-eqz p1, :L2
  .line 1
    iget-object v0, p0, Lokio/SegmentedByteString;->segments:[[B
    array-length v0, v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v1, v0, :L1
  .line 2
    iget-object v3, p0, Lokio/SegmentedByteString;->directory:[I
    add-int v4, v0, v1
    aget v4, v3, v4
  .line 3
    aget v3, v3, v1
  .line 4
    iget-object v5, p0, Lokio/SegmentedByteString;->segments:[[B
    aget-object v5, v5, v1
    sub-int v2, v3, v2
    invoke-virtual { p1, v5, v4, v2 }, Ljava/io/OutputStream;->write([BII)V
    add-int/lit8 v1, v1, 1
    move v2, v3
    goto :L0
  :L1
    return-void
  :L2
  .line 5
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "out == null"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    goto :L4
  :L3
    throw p1
  :L4
    goto :L3
.end method

.method write(Lokio/Buffer;)V
  .registers 13
  .line 6
    iget-object v0, p0, Lokio/SegmentedByteString;->segments:[[B
    array-length v0, v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v1, v0, :L3
  .line 7
    iget-object v3, p0, Lokio/SegmentedByteString;->directory:[I
    add-int v4, v0, v1
    aget v7, v3, v4
  .line 8
    aget v3, v3, v1
  .line 9
    new-instance v4, Lokio/Segment;
    iget-object v5, p0, Lokio/SegmentedByteString;->segments:[[B
    aget-object v6, v5, v1
    add-int v5, v7, v3
    sub-int v8, v5, v2
    const/4 v9, 1
    const/4 v10, 0
    move-object v5, v4
    invoke-direct/range { v5 .. v10 }, Lokio/Segment;-><init>([BIIZZ)V
  .line 10
    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;
    if-nez v2, :L1
  .line 11
    iput-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;
    iput-object v4, v4, Lokio/Segment;->next:Lokio/Segment;
    iput-object v4, p1, Lokio/Buffer;->head:Lokio/Segment;
    goto :L2
  :L1
  .line 12
    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;
    invoke-virtual { v2, v4 }, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;
  :L2
    add-int/lit8 v1, v1, 1
    move v2, v3
    goto :L0
  :L3
  .line 13
    iget-wide v0, p1, Lokio/Buffer;->size:J
    int-to-long v2, v2
    add-long/2addr v0, v2
    iput-wide v0, p1, Lokio/Buffer;->size:J
    return-void
.end method
