.class public final Lokio/Buffer;
.super Ljava/lang/Object;
.implements Lokio/BufferedSource;
.implements Lokio/BufferedSink;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lokio/Buffer$UnsafeCursor;
  }
.end annotation

.field private final static DIGITS:[B

.field final static REPLACEMENT_CHARACTER:I = 65533

.field head:Lokio/Segment;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.field size:J

.method static constructor <clinit>()V
  .registers 2
    const/16 v0, 16
    new-array v0, v0, [B
  .line 1
    fill-array-data v0, :L0
    sput-object v0, Lokio/Buffer;->DIGITS:[B
    return-void
  :L0
  .array-data 1
    48t
    49t
    50t
    51t
    52t
    53t
    54t
    55t
    56t
    57t
    97t
    98t
    99t
    100t
    101t
    102t
  .end array-data
.end method

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private digest(Ljava/lang/String;)Lokio/ByteString;
  .catch Ljava/security/NoSuchAlgorithmException; { :L0 .. :L3 } :L4
  .registers 7
  :L0
  .line 1
    invoke-static { p1 }, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    move-result-object p1
  .line 2
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;
    if-eqz v0, :L2
  .line 3
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;
    iget-object v0, v0, Lokio/Segment;->data:[B
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;
    iget v1, v1, Lokio/Segment;->pos:I
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;
    iget v2, v2, Lokio/Segment;->limit:I
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;
    iget v3, v3, Lokio/Segment;->pos:I
    sub-int/2addr v2, v3
    invoke-virtual { p1, v0, v1, v2 }, Ljava/security/MessageDigest;->update([BII)V
  .line 4
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;
  :L1
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;
    if-eq v0, v1, :L2
  .line 5
    iget-object v1, v0, Lokio/Segment;->data:[B
    iget v2, v0, Lokio/Segment;->pos:I
    iget v3, v0, Lokio/Segment;->limit:I
    iget v4, v0, Lokio/Segment;->pos:I
    sub-int/2addr v3, v4
    invoke-virtual { p1, v1, v2, v3 }, Ljava/security/MessageDigest;->update([BII)V
    goto :L1
  :L2
  .line 6
    invoke-virtual { p1 }, Ljava/security/MessageDigest;->digest()[B
    move-result-object p1
    invoke-static { p1 }, Lokio/ByteString;->of([B)Lokio/ByteString;
    move-result-object p1
  :L3
    return-object p1
  :L4
  .line 7
    new-instance p1, Ljava/lang/AssertionError;
    invoke-direct { p1 }, Ljava/lang/AssertionError;-><init>()V
    goto :L6
  :L5
    throw p1
  :L6
    goto :L5
.end method

.method private hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
  .catch Ljava/security/NoSuchAlgorithmException; { :L0 .. :L3 } :L5
  .catch Ljava/security/InvalidKeyException; { :L0 .. :L3 } :L4
  .registers 7
  :L0
  .line 1
    invoke-static { p1 }, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
    move-result-object v0
  .line 2
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual { p2 }, Lokio/ByteString;->toByteArray()[B
    move-result-object p2
    invoke-direct { v1, p2, p1 }, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    invoke-virtual { v0, v1 }, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
  .line 3
    iget-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;
    if-eqz p1, :L2
  .line 4
    iget-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;
    iget-object p1, p1, Lokio/Segment;->data:[B
    iget-object p2, p0, Lokio/Buffer;->head:Lokio/Segment;
    iget p2, p2, Lokio/Segment;->pos:I
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;
    iget v1, v1, Lokio/Segment;->limit:I
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;
    iget v2, v2, Lokio/Segment;->pos:I
    sub-int/2addr v1, v2
    invoke-virtual { v0, p1, p2, v1 }, Ljavax/crypto/Mac;->update([BII)V
  .line 5
    iget-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;
  :L1
    iget-object p1, p1, Lokio/Segment;->next:Lokio/Segment;
    iget-object p2, p0, Lokio/Buffer;->head:Lokio/Segment;
    if-eq p1, p2, :L2
  .line 6
    iget-object p2, p1, Lokio/Segment;->data:[B
    iget v1, p1, Lokio/Segment;->pos:I
    iget v2, p1, Lokio/Segment;->limit:I
    iget v3, p1, Lokio/Segment;->pos:I
    sub-int/2addr v2, v3
    invoke-virtual { v0, p2, v1, v2 }, Ljavax/crypto/Mac;->update([BII)V
    goto :L1
  :L2
  .line 7
    invoke-virtual { v0 }, Ljavax/crypto/Mac;->doFinal()[B
    move-result-object p1
    invoke-static { p1 }, Lokio/ByteString;->of([B)Lokio/ByteString;
    move-result-object p1
  :L3
    return-object p1
  :L4
    move-exception p1
  .line 8
    new-instance p2, Ljava/lang/IllegalArgumentException;
    invoke-direct { p2, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V
    throw p2
  :L5
  .line 9
    new-instance p1, Ljava/lang/AssertionError;
    invoke-direct { p1 }, Ljava/lang/AssertionError;-><init>()V
    goto :L7
  :L6
    throw p1
  :L7
    goto :L6
.end method

.method private rangeEquals(Lokio/Segment;ILokio/ByteString;II)Z
  .registers 11
  .line 5
    iget v0, p1, Lokio/Segment;->limit:I
  .line 6
    iget-object v1, p1, Lokio/Segment;->data:[B
  :L0
    if-ge p4, p5, :L3
    if-ne p2, v0, :L1
  .line 7
    iget-object p1, p1, Lokio/Segment;->next:Lokio/Segment;
  .line 8
    iget-object p2, p1, Lokio/Segment;->data:[B
  .line 9
    iget v0, p1, Lokio/Segment;->pos:I
  .line 10
    iget v1, p1, Lokio/Segment;->limit:I
    move v4, v1
    move-object v1, p2
    move p2, v0
    move v0, v4
  :L1
  .line 11
    aget-byte v2, v1, p2
    invoke-virtual { p3, p4 }, Lokio/ByteString;->getByte(I)B
    move-result v3
    if-eq v2, v3, :L2
    const/4 p1, 0
    return p1
  :L2
    add-int/lit8 p2, p2, 1
    add-int/lit8 p4, p4, 1
    goto :L0
  :L3
    const/4 p1, 1
    return p1
.end method

.method private readFrom(Ljava/io/InputStream;JZ)V
  .registers 9
    if-eqz p1, :L5
  :L0
    const-wide/16 v0, 0
    cmp-long v2, p2, v0
    if-gtz v2, :L2
    if-eqz p4, :L1
    goto :L2
  :L1
    return-void
  :L2
    const/4 v0, 1
  .line 4
    invoke-virtual { p0, v0 }, Lokio/Buffer;->writableSegment(I)Lokio/Segment;
    move-result-object v0
  .line 5
    iget v1, v0, Lokio/Segment;->limit:I
    rsub-int v1, v1, 8192
    int-to-long v1, v1
    invoke-static { p2, p3, v1, v2 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v1
    long-to-int v2, v1
  .line 6
    iget-object v1, v0, Lokio/Segment;->data:[B
    iget v3, v0, Lokio/Segment;->limit:I
    invoke-virtual { p1, v1, v3, v2 }, Ljava/io/InputStream;->read([BII)I
    move-result v1
    const/4 v2, -1
    if-ne v1, v2, :L4
    if-eqz p4, :L3
    return-void
  :L3
  .line 7
    new-instance p1, Ljava/io/EOFException;
    invoke-direct { p1 }, Ljava/io/EOFException;-><init>()V
    throw p1
  :L4
  .line 8
    iget v2, v0, Lokio/Segment;->limit:I
    add-int/2addr v2, v1
    iput v2, v0, Lokio/Segment;->limit:I
  .line 9
    iget-wide v2, p0, Lokio/Buffer;->size:J
    int-to-long v0, v1
    add-long/2addr v2, v0
    iput-wide v2, p0, Lokio/Buffer;->size:J
    sub-long/2addr p2, v0
    goto :L0
  :L5
  .line 10
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "in == null"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    goto :L7
  :L6
    throw p1
  :L7
    goto :L6
.end method

.method public buffer()Lokio/Buffer;
  .registers 1
    return-object p0
.end method

.method public final clear()V
  .catch Ljava/io/EOFException; { :L0 .. :L1 } :L2
  .registers 3
  :L0
  .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J
    invoke-virtual { p0, v0, v1 }, Lokio/Buffer;->skip(J)V
  :L1
    return-void
  :L2
    move-exception v0
  .line 2
    new-instance v1, Ljava/lang/AssertionError;
    invoke-direct { v1, v0 }, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lokio/Buffer;->clone()Lokio/Buffer;
    move-result-object v0
    return-object v0
.end method

.method public clone()Lokio/Buffer;
  .registers 7
  .line 2
    new-instance v0, Lokio/Buffer;
    invoke-direct { v0 }, Lokio/Buffer;-><init>()V
  .line 3
    iget-wide v1, p0, Lokio/Buffer;->size:J
    const-wide/16 v3, 0
    cmp-long v5, v1, v3
    if-nez v5, :L0
    return-object v0
  :L0
  .line 4
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;
    invoke-virtual { v1 }, Lokio/Segment;->sharedCopy()Lokio/Segment;
    move-result-object v1
    iput-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;
  .line 5
    iput-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;
    iput-object v1, v1, Lokio/Segment;->next:Lokio/Segment;
  .line 6
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;
  :L1
    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;
    if-eq v1, v2, :L2
  .line 7
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;
    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;
    invoke-virtual { v1 }, Lokio/Segment;->sharedCopy()Lokio/Segment;
    move-result-object v3
    invoke-virtual { v2, v3 }, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;
    goto :L1
  :L2
  .line 8
    iget-wide v1, p0, Lokio/Buffer;->size:J
    iput-wide v1, v0, Lokio/Buffer;->size:J
    return-object v0
.end method

.method public close()V
  .registers 1
    return-void
.end method

.method public final completeSegmentByteCount()J
  .registers 6
  .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J
    const-wide/16 v2, 0
    cmp-long v4, v0, v2
    if-nez v4, :L0
    return-wide v2
  :L0
  .line 2
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;
    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;
  .line 3
    iget v3, v2, Lokio/Segment;->limit:I
    const/16 v4, 8192
    if-ge v3, v4, :L1
    iget-boolean v4, v2, Lokio/Segment;->owner:Z
    if-eqz v4, :L1
  .line 4
    iget v2, v2, Lokio/Segment;->pos:I
    sub-int/2addr v3, v2
    int-to-long v2, v3
    sub-long/2addr v0, v2
  :L1
    return-wide v0
.end method

.method public final copyTo(Ljava/io/OutputStream;)Lokio/Buffer;
  .registers 8
  .line 1
    iget-wide v4, p0, Lokio/Buffer;->size:J
    const-wide/16 v2, 0
    move-object v0, p0
    move-object v1, p1
    invoke-virtual/range { v0 .. v5 }, Lokio/Buffer;->copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;
    move-result-object p1
    return-object p1
.end method

.method public final copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;
  .registers 14
    if-eqz p1, :L4
  .line 2
    iget-wide v0, p0, Lokio/Buffer;->size:J
    move-wide v2, p2
    move-wide v4, p4
    invoke-static/range { v0 .. v5 }, Lokio/Util;->checkOffsetAndCount(JJJ)V
    const-wide/16 v0, 0
    cmp-long v2, p4, v0
    if-nez v2, :L0
    return-object p0
  :L0
  .line 3
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;
  :L1
  .line 4
    iget v3, v2, Lokio/Segment;->limit:I
    iget v4, v2, Lokio/Segment;->pos:I
    sub-int v5, v3, v4
    int-to-long v5, v5
    cmp-long v7, p2, v5
    if-ltz v7, :L2
    sub-int/2addr v3, v4
    int-to-long v3, v3
    sub-long/2addr p2, v3
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;
    goto :L1
  :L2
    cmp-long v3, p4, v0
    if-lez v3, :L3
  .line 5
    iget v3, v2, Lokio/Segment;->pos:I
    int-to-long v3, v3
    add-long/2addr v3, p2
    long-to-int p2, v3
  .line 6
    iget p3, v2, Lokio/Segment;->limit:I
    sub-int/2addr p3, p2
    int-to-long v3, p3
    invoke-static { v3, v4, p4, p5 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v3
    long-to-int p3, v3
  .line 7
    iget-object v3, v2, Lokio/Segment;->data:[B
    invoke-virtual { p1, v3, p2, p3 }, Ljava/io/OutputStream;->write([BII)V
    int-to-long p2, p3
    sub-long/2addr p4, p2
  .line 8
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;
    move-wide p2, v0
    goto :L2
  :L3
    return-object p0
  :L4
  .line 9
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "out == null"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    goto :L6
  :L5
    throw p1
  :L6
    goto :L5
.end method

.method public final copyTo(Lokio/Buffer;JJ)Lokio/Buffer;
  .registers 14
    if-eqz p1, :L6
  .line 10
    iget-wide v0, p0, Lokio/Buffer;->size:J
    move-wide v2, p2
    move-wide v4, p4
    invoke-static/range { v0 .. v5 }, Lokio/Util;->checkOffsetAndCount(JJJ)V
    const-wide/16 v0, 0
    cmp-long v2, p4, v0
    if-nez v2, :L0
    return-object p0
  :L0
  .line 11
    iget-wide v2, p1, Lokio/Buffer;->size:J
    add-long/2addr v2, p4
    iput-wide v2, p1, Lokio/Buffer;->size:J
  .line 12
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;
  :L1
  .line 13
    iget v3, v2, Lokio/Segment;->limit:I
    iget v4, v2, Lokio/Segment;->pos:I
    sub-int v5, v3, v4
    int-to-long v5, v5
    cmp-long v7, p2, v5
    if-ltz v7, :L2
    sub-int/2addr v3, v4
    int-to-long v3, v3
    sub-long/2addr p2, v3
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;
    goto :L1
  :L2
    cmp-long v3, p4, v0
    if-lez v3, :L5
  .line 14
    invoke-virtual { v2 }, Lokio/Segment;->sharedCopy()Lokio/Segment;
    move-result-object v3
  .line 15
    iget v4, v3, Lokio/Segment;->pos:I
    int-to-long v4, v4
    add-long/2addr v4, p2
    long-to-int p2, v4
    iput p2, v3, Lokio/Segment;->pos:I
    long-to-int p3, p4
    add-int/2addr p2, p3
  .line 16
    iget p3, v3, Lokio/Segment;->limit:I
    invoke-static { p2, p3 }, Ljava/lang/Math;->min(II)I
    move-result p2
    iput p2, v3, Lokio/Segment;->limit:I
  .line 17
    iget-object p2, p1, Lokio/Buffer;->head:Lokio/Segment;
    if-nez p2, :L3
  .line 18
    iput-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;
    iput-object v3, v3, Lokio/Segment;->next:Lokio/Segment;
    iput-object v3, p1, Lokio/Buffer;->head:Lokio/Segment;
    goto :L4
  :L3
  .line 19
    iget-object p2, p2, Lokio/Segment;->prev:Lokio/Segment;
    invoke-virtual { p2, v3 }, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;
  :L4
  .line 20
    iget p2, v3, Lokio/Segment;->limit:I
    iget p3, v3, Lokio/Segment;->pos:I
    sub-int/2addr p2, p3
    int-to-long p2, p2
    sub-long/2addr p4, p2
  .line 21
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;
    move-wide p2, v0
    goto :L2
  :L5
    return-object p0
  :L6
  .line 22
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "out == null"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    goto :L8
  :L7
    throw p1
  :L8
    goto :L7
.end method

.method public emit()Lokio/BufferedSink;
  .registers 1
    return-object p0
.end method

.method public emitCompleteSegments()Lokio/Buffer;
  .registers 1
    return-object p0
.end method

.method public bridge synthetic emitCompleteSegments()Lokio/BufferedSink;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lokio/Buffer;->emitCompleteSegments()Lokio/Buffer;
    move-result-object v0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 15
    const/4 v0, 1
    if-ne p0, p1, :L0
    return v0
  :L0
  .line 1
    instance-of v1, p1, Lokio/Buffer;
    const/4 v2, 0
    if-nez v1, :L1
    return v2
  :L1
  .line 2
    check-cast p1, Lokio/Buffer;
  .line 3
    iget-wide v3, p0, Lokio/Buffer;->size:J
    iget-wide v5, p1, Lokio/Buffer;->size:J
    cmp-long v1, v3, v5
    if-eqz v1, :L2
    return v2
  :L2
    const-wide/16 v5, 0
    cmp-long v1, v3, v5
    if-nez v1, :L3
    return v0
  :L3
  .line 4
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;
  .line 5
    iget-object p1, p1, Lokio/Buffer;->head:Lokio/Segment;
  .line 6
    iget v3, v1, Lokio/Segment;->pos:I
  .line 7
    iget v4, p1, Lokio/Segment;->pos:I
  :L4
  .line 8
    iget-wide v7, p0, Lokio/Buffer;->size:J
    cmp-long v9, v5, v7
    if-gez v9, :L10
  .line 9
    iget v7, v1, Lokio/Segment;->limit:I
    sub-int/2addr v7, v3
    iget v8, p1, Lokio/Segment;->limit:I
    sub-int/2addr v8, v4
    invoke-static { v7, v8 }, Ljava/lang/Math;->min(II)I
    move-result v7
    int-to-long v7, v7
    const/4 v9, 0
  :L5
    int-to-long v10, v9
    cmp-long v12, v10, v7
    if-gez v12, :L7
  .line 10
    iget-object v10, v1, Lokio/Segment;->data:[B
    add-int/lit8 v11, v3, 1
    aget-byte v3, v10, v3
    iget-object v10, p1, Lokio/Segment;->data:[B
    add-int/lit8 v12, v4, 1
    aget-byte v4, v10, v4
    if-eq v3, v4, :L6
    return v2
  :L6
    add-int/lit8 v9, v9, 1
    move v3, v11
    move v4, v12
    goto :L5
  :L7
  .line 11
    iget v9, v1, Lokio/Segment;->limit:I
    if-ne v3, v9, :L8
  .line 12
    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;
  .line 13
    iget v3, v1, Lokio/Segment;->pos:I
  :L8
  .line 14
    iget v9, p1, Lokio/Segment;->limit:I
    if-ne v4, v9, :L9
  .line 15
    iget-object p1, p1, Lokio/Segment;->next:Lokio/Segment;
  .line 16
    iget v4, p1, Lokio/Segment;->pos:I
  :L9
    add-long/2addr v5, v7
    goto :L4
  :L10
    return v0
.end method

.method public exhausted()Z
  .registers 6
  .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J
    const-wide/16 v2, 0
    cmp-long v4, v0, v2
    if-nez v4, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public flush()V
  .registers 1
    return-void
.end method

.method public final getByte(J)B
  .registers 9
  .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J
    const-wide/16 v4, 1
    move-wide v2, p1
    invoke-static/range { v0 .. v5 }, Lokio/Util;->checkOffsetAndCount(JJJ)V
  .line 2
    iget-wide v0, p0, Lokio/Buffer;->size:J
    sub-long v2, v0, p1
    cmp-long v4, v2, p1
    if-lez v4, :L2
  .line 3
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;
  :L0
  .line 4
    iget v1, v0, Lokio/Segment;->limit:I
    iget v2, v0, Lokio/Segment;->pos:I
    sub-int/2addr v1, v2
    int-to-long v3, v1
    cmp-long v1, p1, v3
    if-gez v1, :L1
  .line 5
    iget-object v0, v0, Lokio/Segment;->data:[B
    long-to-int p2, p1
    add-int/2addr v2, p2
    aget-byte p1, v0, v2
    return p1
  :L1
    sub-long/2addr p1, v3
  .line 6
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;
    goto :L0
  :L2
    sub-long/2addr p1, v0
  .line 7
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;
  :L3
    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;
  .line 8
    iget v1, v0, Lokio/Segment;->limit:I
    iget v2, v0, Lokio/Segment;->pos:I
    sub-int/2addr v1, v2
    int-to-long v3, v1
    add-long/2addr p1, v3
    const-wide/16 v3, 0
    cmp-long v1, p1, v3
    if-ltz v1, :L3
  .line 9
    iget-object v0, v0, Lokio/Segment;->data:[B
    long-to-int p2, p1
    add-int/2addr v2, p2
    aget-byte p1, v0, v2
    return p1
.end method

.method public hashCode()I
  .registers 6
  .line 1
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;
    if-nez v0, :L0
    const/4 v0, 0
    return v0
  :L0
    const/4 v1, 1
  :L1
  .line 2
    iget v2, v0, Lokio/Segment;->pos:I
    iget v3, v0, Lokio/Segment;->limit:I
  :L2
    if-ge v2, v3, :L3
    mul-int/lit8 v1, v1, 31
  .line 3
    iget-object v4, v0, Lokio/Segment;->data:[B
    aget-byte v4, v4, v2
    add-int/2addr v1, v4
    add-int/lit8 v2, v2, 1
    goto :L2
  :L3
  .line 4
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;
  .line 5
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;
    if-ne v0, v2, :L1
    return v1
.end method

.method public final hmacSha1(Lokio/ByteString;)Lokio/ByteString;
  .registers 3
    const-string v0, "HmacSHA1"
  .line 1
    invoke-direct { p0, v0, p1 }, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
    move-result-object p1
    return-object p1
.end method

.method public final hmacSha256(Lokio/ByteString;)Lokio/ByteString;
  .registers 3
    const-string v0, "HmacSHA256"
  .line 1
    invoke-direct { p0, v0, p1 }, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
    move-result-object p1
    return-object p1
.end method

.method public final hmacSha512(Lokio/ByteString;)Lokio/ByteString;
  .registers 3
    const-string v0, "HmacSHA512"
  .line 1
    invoke-direct { p0, v0, p1 }, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
    move-result-object p1
    return-object p1
.end method

.method public indexOf(B)J
  .registers 8
    const-wide/16 v2, 0
    const-wide v4, 9223372036854775807L
    move-object v0, p0
    move v1, p1
  .line 1
    invoke-virtual/range { v0 .. v5 }, Lokio/Buffer;->indexOf(BJJ)J
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
    invoke-virtual/range { v0 .. v5 }, Lokio/Buffer;->indexOf(BJJ)J
    move-result-wide p1
    return-wide p1
.end method

.method public indexOf(BJJ)J
  .registers 21
    move-object v0, p0
    const-wide/16 v1, 0
    cmp-long v3, p2, v1
    if-ltz v3, :L13
    cmp-long v3, p4, p2
    if-ltz v3, :L13
  .line 3
    iget-wide v3, v0, Lokio/Buffer;->size:J
    cmp-long v5, p4, v3
    if-lez v5, :L0
    goto :L1
  :L0
    move-wide/from16 v3, p4
  :L1
    const-wide/16 v5, -1
    cmp-long v7, p2, v3
    if-nez v7, :L2
    return-wide v5
  :L2
  .line 4
    iget-object v7, v0, Lokio/Buffer;->head:Lokio/Segment;
    if-nez v7, :L3
    return-wide v5
  :L3
  .line 5
    iget-wide v8, v0, Lokio/Buffer;->size:J
    sub-long v10, v8, p2
    cmp-long v12, v10, p2
    if-gez v12, :L5
  :L4
    cmp-long v1, v8, p2
    if-lez v1, :L7
  .line 6
    iget-object v7, v7, Lokio/Segment;->prev:Lokio/Segment;
  .line 7
    iget v1, v7, Lokio/Segment;->limit:I
    iget v2, v7, Lokio/Segment;->pos:I
    sub-int/2addr v1, v2
    int-to-long v1, v1
    sub-long/2addr v8, v1
    goto :L4
  :L5
  .line 8
    iget v8, v7, Lokio/Segment;->limit:I
    iget v9, v7, Lokio/Segment;->pos:I
    sub-int/2addr v8, v9
    int-to-long v8, v8
    add-long/2addr v8, v1
    cmp-long v10, v8, p2
    if-gez v10, :L6
  .line 9
    iget-object v7, v7, Lokio/Segment;->next:Lokio/Segment;
    move-wide v1, v8
    goto :L5
  :L6
    move-wide v8, v1
  :L7
    move-wide/from16 v1, p2
  :L8
    cmp-long v10, v8, v3
    if-gez v10, :L12
  .line 10
    iget-object v10, v7, Lokio/Segment;->data:[B
  .line 11
    iget v11, v7, Lokio/Segment;->limit:I
    int-to-long v11, v11
    iget v13, v7, Lokio/Segment;->pos:I
    int-to-long v13, v13
    add-long/2addr v13, v3
    sub-long/2addr v13, v8
    invoke-static { v11, v12, v13, v14 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v11
    long-to-int v12, v11
  .line 12
    iget v11, v7, Lokio/Segment;->pos:I
    int-to-long v13, v11
    add-long/2addr v13, v1
    sub-long/2addr v13, v8
    long-to-int v1, v13
  :L9
    if-ge v1, v12, :L11
  .line 13
    aget-byte v2, v10, v1
    move/from16 v11, p1
    if-ne v2, v11, :L10
  .line 14
    iget v2, v7, Lokio/Segment;->pos:I
    sub-int/2addr v1, v2
    int-to-long v1, v1
    add-long/2addr v1, v8
    return-wide v1
  :L10
    add-int/lit8 v1, v1, 1
    goto :L9
  :L11
    move/from16 v11, p1
  .line 15
    iget v1, v7, Lokio/Segment;->limit:I
    iget v2, v7, Lokio/Segment;->pos:I
    sub-int/2addr v1, v2
    int-to-long v1, v1
    add-long/2addr v8, v1
  .line 16
    iget-object v7, v7, Lokio/Segment;->next:Lokio/Segment;
    move-wide v1, v8
    goto :L8
  :L12
    return-wide v5
  :L13
  .line 17
    new-instance v1, Ljava/lang/IllegalArgumentException;
    const/4 v2, 3
    new-array v2, v2, [Ljava/lang/Object;
    const/4 v3, 0
    iget-wide v4, v0, Lokio/Buffer;->size:J
  .line 18
    invoke-static { v4, v5 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v4
    aput-object v4, v2, v3
    invoke-static/range { p2 .. p3 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v3
    const/4 v4, 1
    aput-object v3, v2, v4
    const/4 v3, 2
    invoke-static/range { p4 .. p5 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v4
    aput-object v4, v2, v3
    const-string v3, "size=%s fromIndex=%s toIndex=%s"
    invoke-static { v3, v2 }, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v2
    invoke-direct { v1, v2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    goto :L15
  :L14
    throw v1
  :L15
    goto :L14
.end method

.method public indexOf(Lokio/ByteString;)J
  .registers 4
    const-wide/16 v0, 0
  .line 19
    invoke-virtual { p0, p1, v0, v1 }, Lokio/Buffer;->indexOf(Lokio/ByteString;J)J
    move-result-wide v0
    return-wide v0
.end method

.method public indexOf(Lokio/ByteString;J)J
  .registers 22
    move-object/from16 v6, p0
  .line 20
    invoke-virtual/range { p1 .. p1 }, Lokio/ByteString;->size()I
    move-result v0
    if-eqz v0, :L12
    const-wide/16 v0, 0
    cmp-long v2, p2, v0
    if-ltz v2, :L11
  .line 21
    iget-object v2, v6, Lokio/Buffer;->head:Lokio/Segment;
    const-wide/16 v7, -1
    if-nez v2, :L0
    return-wide v7
  :L0
  .line 22
    iget-wide v3, v6, Lokio/Buffer;->size:J
    sub-long v9, v3, p2
    cmp-long v5, v9, p2
    if-gez v5, :L2
  :L1
    cmp-long v0, v3, p2
    if-lez v0, :L4
  .line 23
    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;
  .line 24
    iget v0, v2, Lokio/Segment;->limit:I
    iget v1, v2, Lokio/Segment;->pos:I
    sub-int/2addr v0, v1
    int-to-long v0, v0
    sub-long/2addr v3, v0
    goto :L1
  :L2
  .line 25
    iget v3, v2, Lokio/Segment;->limit:I
    iget v4, v2, Lokio/Segment;->pos:I
    sub-int/2addr v3, v4
    int-to-long v3, v3
    add-long/2addr v3, v0
    cmp-long v5, v3, p2
    if-gez v5, :L3
  .line 26
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;
    move-wide v0, v3
    goto :L2
  :L3
    move-wide v3, v0
  :L4
    const/4 v0, 0
    move-object/from16 v9, p1
  .line 27
    invoke-virtual { v9, v0 }, Lokio/ByteString;->getByte(I)B
    move-result v10
  .line 28
    invoke-virtual/range { p1 .. p1 }, Lokio/ByteString;->size()I
    move-result v11
  .line 29
    iget-wide v0, v6, Lokio/Buffer;->size:J
    int-to-long v12, v11
    sub-long/2addr v0, v12
    const-wide/16 v12, 1
    add-long/2addr v12, v0
    move-wide/from16 v0, p2
    move-object v14, v2
    move-wide v15, v3
  :L5
    cmp-long v2, v15, v12
    if-gez v2, :L10
  .line 30
    iget-object v5, v14, Lokio/Segment;->data:[B
  .line 31
    iget v2, v14, Lokio/Segment;->limit:I
    int-to-long v2, v2
    iget v4, v14, Lokio/Segment;->pos:I
    int-to-long v7, v4
    add-long/2addr v7, v12
    sub-long/2addr v7, v15
    invoke-static { v2, v3, v7, v8 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v2
    long-to-int v7, v2
  .line 32
    iget v2, v14, Lokio/Segment;->pos:I
    int-to-long v2, v2
    add-long/2addr v2, v0
    sub-long/2addr v2, v15
    long-to-int v0, v2
    move v8, v0
  :L6
    if-ge v8, v7, :L9
  .line 33
    aget-byte v0, v5, v8
    if-ne v0, v10, :L7
    add-int/lit8 v2, v8, 1
    const/4 v4, 1
    move-object/from16 v0, p0
    move-object v1, v14
    move-object/from16 v3, p1
    move-object/from16 v17, v5
    move v5, v11
    invoke-direct/range { v0 .. v5 }, Lokio/Buffer;->rangeEquals(Lokio/Segment;ILokio/ByteString;II)Z
    move-result v0
    if-eqz v0, :L8
  .line 34
    iget v0, v14, Lokio/Segment;->pos:I
    sub-int/2addr v8, v0
    int-to-long v0, v8
    add-long/2addr v0, v15
    return-wide v0
  :L7
    move-object/from16 v17, v5
  :L8
    add-int/lit8 v8, v8, 1
    move-object/from16 v5, v17
    goto :L6
  :L9
  .line 35
    iget v0, v14, Lokio/Segment;->limit:I
    iget v1, v14, Lokio/Segment;->pos:I
    sub-int/2addr v0, v1
    int-to-long v0, v0
    add-long/2addr v15, v0
  .line 36
    iget-object v14, v14, Lokio/Segment;->next:Lokio/Segment;
    move-wide v0, v15
    const-wide/16 v7, -1
    goto :L5
  :L10
    move-wide v0, v7
    return-wide v0
  :L11
  .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;
    const-string v1, "fromIndex < 0"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L12
  .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;
    const-string v1, "bytes is empty"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    goto :L14
  :L13
    throw v0
  :L14
    goto :L13
.end method

.method public indexOfElement(Lokio/ByteString;)J
  .registers 4
    const-wide/16 v0, 0
  .line 1
    invoke-virtual { p0, p1, v0, v1 }, Lokio/Buffer;->indexOfElement(Lokio/ByteString;J)J
    move-result-wide v0
    return-wide v0
.end method

.method public indexOfElement(Lokio/ByteString;J)J
  .registers 15
    const-wide/16 v0, 0
    cmp-long v2, p2, v0
    if-ltz v2, :L19
  .line 2
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;
    const-wide/16 v3, -1
    if-nez v2, :L0
    return-wide v3
  :L0
  .line 3
    iget-wide v5, p0, Lokio/Buffer;->size:J
    sub-long v7, v5, p2
    cmp-long v9, v7, p2
    if-gez v9, :L2
  :L1
    cmp-long v0, v5, p2
    if-lez v0, :L4
  .line 4
    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;
  .line 5
    iget v0, v2, Lokio/Segment;->limit:I
    iget v1, v2, Lokio/Segment;->pos:I
    sub-int/2addr v0, v1
    int-to-long v0, v0
    sub-long/2addr v5, v0
    goto :L1
  :L2
  .line 6
    iget v5, v2, Lokio/Segment;->limit:I
    iget v6, v2, Lokio/Segment;->pos:I
    sub-int/2addr v5, v6
    int-to-long v5, v5
    add-long/2addr v5, v0
    cmp-long v7, v5, p2
    if-gez v7, :L3
  .line 7
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;
    move-wide v0, v5
    goto :L2
  :L3
    move-wide v5, v0
  :L4
  .line 8
    invoke-virtual { p1 }, Lokio/ByteString;->size()I
    move-result v0
    const/4 v1, 2
    const/4 v7, 0
    if-ne v0, v1, :L11
  .line 9
    invoke-virtual { p1, v7 }, Lokio/ByteString;->getByte(I)B
    move-result v0
    const/4 v1, 1
  .line 10
    invoke-virtual { p1, v1 }, Lokio/ByteString;->getByte(I)B
    move-result p1
  :L5
  .line 11
    iget-wide v7, p0, Lokio/Buffer;->size:J
    cmp-long v1, v5, v7
    if-gez v1, :L18
  .line 12
    iget-object v1, v2, Lokio/Segment;->data:[B
  .line 13
    iget v7, v2, Lokio/Segment;->pos:I
    int-to-long v7, v7
    add-long/2addr v7, p2
    sub-long/2addr v7, v5
    long-to-int p2, v7
    iget p3, v2, Lokio/Segment;->limit:I
  :L6
    if-ge p2, p3, :L10
  .line 14
    aget-byte v7, v1, p2
    if-eq v7, v0, :L8
    if-ne v7, p1, :L7
    goto :L8
  :L7
    add-int/lit8 p2, p2, 1
    goto :L6
  :L8
  .line 15
    iget p1, v2, Lokio/Segment;->pos:I
  :L9
    sub-int/2addr p2, p1
    int-to-long p1, p2
    add-long/2addr p1, v5
    return-wide p1
  :L10
  .line 16
    iget p2, v2, Lokio/Segment;->limit:I
    iget p3, v2, Lokio/Segment;->pos:I
    sub-int/2addr p2, p3
    int-to-long p2, p2
    add-long/2addr v5, p2
  .line 17
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;
    move-wide p2, v5
    goto :L5
  :L11
  .line 18
    invoke-virtual { p1 }, Lokio/ByteString;->internalArray()[B
    move-result-object p1
  :L12
  .line 19
    iget-wide v0, p0, Lokio/Buffer;->size:J
    cmp-long v8, v5, v0
    if-gez v8, :L18
  .line 20
    iget-object v0, v2, Lokio/Segment;->data:[B
  .line 21
    iget v1, v2, Lokio/Segment;->pos:I
    int-to-long v8, v1
    add-long/2addr v8, p2
    sub-long/2addr v8, v5
    long-to-int p2, v8
    iget p3, v2, Lokio/Segment;->limit:I
  :L13
    if-ge p2, p3, :L17
  .line 22
    aget-byte v1, v0, p2
  .line 23
    array-length v8, p1
    const/4 v9, 0
  :L14
    if-ge v9, v8, :L16
    aget-byte v10, p1, v9
    if-ne v1, v10, :L15
  .line 24
    iget p1, v2, Lokio/Segment;->pos:I
    goto :L9
  :L15
    add-int/lit8 v9, v9, 1
    goto :L14
  :L16
    add-int/lit8 p2, p2, 1
    goto :L13
  :L17
  .line 25
    iget p2, v2, Lokio/Segment;->limit:I
    iget p3, v2, Lokio/Segment;->pos:I
    sub-int/2addr p2, p3
    int-to-long p2, p2
    add-long/2addr v5, p2
  .line 26
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;
    move-wide p2, v5
    goto :L12
  :L18
    return-wide v3
  :L19
  .line 27
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "fromIndex < 0"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    goto :L21
  :L20
    throw p1
  :L21
    goto :L20
.end method

.method public inputStream()Ljava/io/InputStream;
  .registers 2
  .line 1
    new-instance v0, Lokio/Buffer$2;
    invoke-direct { v0, p0 }, Lokio/Buffer$2;-><init>(Lokio/Buffer;)V
    return-object v0
.end method

.method public isOpen()Z
  .registers 2
    const/4 v0, 1
    return v0
.end method

.method public final md5()Lokio/ByteString;
  .registers 2
    const-string v0, "MD5"
  .line 1
    invoke-direct { p0, v0 }, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;
    move-result-object v0
    return-object v0
.end method

.method public outputStream()Ljava/io/OutputStream;
  .registers 2
  .line 1
    new-instance v0, Lokio/Buffer$1;
    invoke-direct { v0, p0 }, Lokio/Buffer$1;-><init>(Lokio/Buffer;)V
    return-object v0
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
    invoke-virtual/range { v0 .. v5 }, Lokio/Buffer;->rangeEquals(JLokio/ByteString;II)Z
    move-result p1
    return p1
.end method

.method public rangeEquals(JLokio/ByteString;II)Z
  .registers 12
    const/4 v0, 0
    const-wide/16 v1, 0
    cmp-long v3, p1, v1
    if-ltz v3, :L4
    if-ltz p4, :L4
    if-ltz p5, :L4
  .line 2
    iget-wide v1, p0, Lokio/Buffer;->size:J
    sub-long/2addr v1, p1
    int-to-long v3, p5
    cmp-long v5, v1, v3
    if-ltz v5, :L4
  .line 3
    invoke-virtual { p3 }, Lokio/ByteString;->size()I
    move-result v1
    sub-int/2addr v1, p4
    if-ge v1, p5, :L0
    goto :L4
  :L0
    const/4 v1, 0
  :L1
    if-ge v1, p5, :L3
    int-to-long v2, v1
    add-long/2addr v2, p1
  .line 4
    invoke-virtual { p0, v2, v3 }, Lokio/Buffer;->getByte(J)B
    move-result v2
    add-int v3, p4, v1
    invoke-virtual { p3, v3 }, Lokio/ByteString;->getByte(I)B
    move-result v3
    if-eq v2, v3, :L2
    return v0
  :L2
    add-int/lit8 v1, v1, 1
    goto :L1
  :L3
    const/4 p1, 1
    return p1
  :L4
    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
  .registers 8
  .line 11
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;
    if-nez v0, :L0
    const/4 p1, -1
    return p1
  :L0
  .line 12
    invoke-virtual { p1 }, Ljava/nio/ByteBuffer;->remaining()I
    move-result v1
    iget v2, v0, Lokio/Segment;->limit:I
    iget v3, v0, Lokio/Segment;->pos:I
    sub-int/2addr v2, v3
    invoke-static { v1, v2 }, Ljava/lang/Math;->min(II)I
    move-result v1
  .line 13
    iget-object v2, v0, Lokio/Segment;->data:[B
    iget v3, v0, Lokio/Segment;->pos:I
    invoke-virtual { p1, v2, v3, v1 }, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
  .line 14
    iget p1, v0, Lokio/Segment;->pos:I
    add-int/2addr p1, v1
    iput p1, v0, Lokio/Segment;->pos:I
  .line 15
    iget-wide v2, p0, Lokio/Buffer;->size:J
    int-to-long v4, v1
    sub-long/2addr v2, v4
    iput-wide v2, p0, Lokio/Buffer;->size:J
  .line 16
    iget v2, v0, Lokio/Segment;->limit:I
    if-ne p1, v2, :L1
  .line 17
    invoke-virtual { v0 }, Lokio/Segment;->pop()Lokio/Segment;
    move-result-object p1
    iput-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;
  .line 18
    invoke-static { v0 }, Lokio/SegmentPool;->recycle(Lokio/Segment;)V
  :L1
    return v1
.end method

.method public read([B)I
  .registers 4
  .line 1
    array-length v0, p1
    const/4 v1, 0
    invoke-virtual { p0, p1, v1, v0 }, Lokio/Buffer;->read([BII)I
    move-result p1
    return p1
.end method

.method public read([BII)I
  .registers 11
  .line 2
    array-length v0, p1
    int-to-long v1, v0
    int-to-long v3, p2
    int-to-long v5, p3
    invoke-static/range { v1 .. v6 }, Lokio/Util;->checkOffsetAndCount(JJJ)V
  .line 3
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;
    if-nez v0, :L0
    const/4 p1, -1
    return p1
  :L0
  .line 4
    iget v1, v0, Lokio/Segment;->limit:I
    iget v2, v0, Lokio/Segment;->pos:I
    sub-int/2addr v1, v2
    invoke-static { p3, v1 }, Ljava/lang/Math;->min(II)I
    move-result p3
  .line 5
    iget-object v1, v0, Lokio/Segment;->data:[B
    iget v2, v0, Lokio/Segment;->pos:I
    invoke-static { v1, v2, p1, p2, p3 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 6
    iget p1, v0, Lokio/Segment;->pos:I
    add-int/2addr p1, p3
    iput p1, v0, Lokio/Segment;->pos:I
  .line 7
    iget-wide v1, p0, Lokio/Buffer;->size:J
    int-to-long v3, p3
    sub-long/2addr v1, v3
    iput-wide v1, p0, Lokio/Buffer;->size:J
  .line 8
    iget p2, v0, Lokio/Segment;->limit:I
    if-ne p1, p2, :L1
  .line 9
    invoke-virtual { v0 }, Lokio/Segment;->pop()Lokio/Segment;
    move-result-object p1
    iput-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;
  .line 10
    invoke-static { v0 }, Lokio/SegmentPool;->recycle(Lokio/Segment;)V
  :L1
    return p3
.end method

.method public read(Lokio/Buffer;J)J
  .registers 9
    if-eqz p1, :L3
    const-wide/16 v0, 0
    cmp-long v2, p2, v0
    if-ltz v2, :L2
  .line 19
    iget-wide v2, p0, Lokio/Buffer;->size:J
    cmp-long v4, v2, v0
    if-nez v4, :L0
    const-wide/16 p1, -1
    return-wide p1
  :L0
    cmp-long v0, p2, v2
    if-lez v0, :L1
    move-wide p2, v2
  :L1
  .line 20
    invoke-virtual { p1, p0, p2, p3 }, Lokio/Buffer;->write(Lokio/Buffer;J)V
    return-wide p2
  :L2
  .line 21
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
  .line 22
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "sink == null"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public readAll(Lokio/Sink;)J
  .registers 7
  .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J
    const-wide/16 v2, 0
    cmp-long v4, v0, v2
    if-lez v4, :L0
  .line 2
    invoke-interface { p1, p0, v0, v1 }, Lokio/Sink;->write(Lokio/Buffer;J)V
  :L0
    return-wide v0
.end method

.method public final readAndWriteUnsafe()Lokio/Buffer$UnsafeCursor;
  .registers 2
  .line 1
    new-instance v0, Lokio/Buffer$UnsafeCursor;
    invoke-direct { v0 }, Lokio/Buffer$UnsafeCursor;-><init>()V
    invoke-virtual { p0, v0 }, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    move-result-object v0
    return-object v0
.end method

.method public final readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
  .registers 3
  .line 2
    iget-object v0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;
    if-nez v0, :L0
  .line 3
    iput-object p0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;
    const/4 v0, 1
  .line 4
    iput-boolean v0, p1, Lokio/Buffer$UnsafeCursor;->readWrite:Z
    return-object p1
  :L0
  .line 5
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "already attached to a buffer"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public readByte()B
  .registers 10
  .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J
    const-wide/16 v2, 0
    cmp-long v4, v0, v2
    if-eqz v4, :L2
  .line 2
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;
  .line 3
    iget v3, v2, Lokio/Segment;->pos:I
  .line 4
    iget v4, v2, Lokio/Segment;->limit:I
  .line 5
    iget-object v5, v2, Lokio/Segment;->data:[B
    add-int/lit8 v6, v3, 1
  .line 6
    aget-byte v3, v5, v3
    const-wide/16 v7, 1
    sub-long/2addr v0, v7
  .line 7
    iput-wide v0, p0, Lokio/Buffer;->size:J
    if-ne v6, v4, :L0
  .line 8
    invoke-virtual { v2 }, Lokio/Segment;->pop()Lokio/Segment;
    move-result-object v0
    iput-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;
  .line 9
    invoke-static { v2 }, Lokio/SegmentPool;->recycle(Lokio/Segment;)V
    goto :L1
  :L0
  .line 10
    iput v6, v2, Lokio/Segment;->pos:I
  :L1
    return v3
  :L2
  .line 11
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "size == 0"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public readByteArray()[B
  .catch Ljava/io/EOFException; { :L0 .. :L1 } :L2
  .registers 3
  :L0
  .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J
    invoke-virtual { p0, v0, v1 }, Lokio/Buffer;->readByteArray(J)[B
    move-result-object v0
  :L1
    return-object v0
  :L2
    move-exception v0
  .line 2
    new-instance v1, Ljava/lang/AssertionError;
    invoke-direct { v1, v0 }, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    throw v1
.end method

.method public readByteArray(J)[B
  .registers 9
  .line 3
    iget-wide v0, p0, Lokio/Buffer;->size:J
    const-wide/16 v2, 0
    move-wide v4, p1
    invoke-static/range { v0 .. v5 }, Lokio/Util;->checkOffsetAndCount(JJJ)V
    const-wide/32 v0, 2147483647
    cmp-long v2, p1, v0
    if-gtz v2, :L0
    long-to-int p2, p1
  .line 4
    new-array p1, p2, [B
  .line 5
    invoke-virtual { p0, p1 }, Lokio/Buffer;->readFully([B)V
    return-object p1
  :L0
  .line 6
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "byteCount > Integer.MAX_VALUE: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1, p2 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public readByteString()Lokio/ByteString;
  .registers 3
  .line 1
    new-instance v0, Lokio/ByteString;
    invoke-virtual { p0 }, Lokio/Buffer;->readByteArray()[B
    move-result-object v1
    invoke-direct { v0, v1 }, Lokio/ByteString;-><init>([B)V
    return-object v0
.end method

.method public readByteString(J)Lokio/ByteString;
  .registers 4
  .line 2
    new-instance v0, Lokio/ByteString;
    invoke-virtual { p0, p1, p2 }, Lokio/Buffer;->readByteArray(J)[B
    move-result-object p1
    invoke-direct { v0, p1 }, Lokio/ByteString;-><init>([B)V
    return-object v0
.end method

.method public readDecimalLong()J
  .registers 18
    move-object/from16 v0, p0
  .line 1
    iget-wide v1, v0, Lokio/Buffer;->size:J
    const-wide/16 v3, 0
    cmp-long v5, v1, v3
    if-eqz v5, :L16
    const-wide v1, -922337203685477580L
    const-wide/16 v5, -7
    const/4 v7, 0
    const/4 v8, 0
    const/4 v9, 0
  :L0
  .line 2
    iget-object v10, v0, Lokio/Buffer;->head:Lokio/Segment;
  .line 3
    iget-object v11, v10, Lokio/Segment;->data:[B
  .line 4
    iget v12, v10, Lokio/Segment;->pos:I
  .line 5
    iget v13, v10, Lokio/Segment;->limit:I
  :L1
    if-ge v12, v13, :L9
  .line 6
    aget-byte v15, v11, v12
    const/16 v14, 48
    if-lt v15, v14, :L5
    const/16 v14, 57
    if-gt v15, v14, :L5
    rsub-int/lit8 v14, v15, 48
    cmp-long v16, v3, v1
    if-ltz v16, :L3
    cmp-long v16, v3, v1
    if-nez v16, :L2
    int-to-long v1, v14
    cmp-long v16, v1, v5
    if-gez v16, :L2
    goto :L3
  :L2
    const-wide/16 v1, 10
    mul-long v3, v3, v1
    int-to-long v1, v14
    add-long/2addr v3, v1
    goto :L6
  :L3
  .line 7
    new-instance v1, Lokio/Buffer;
    invoke-direct { v1 }, Lokio/Buffer;-><init>()V
    invoke-virtual { v1, v3, v4 }, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;
    move-result-object v1
    invoke-virtual { v1, v15 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
    move-result-object v1
    if-nez v8, :L4
  .line 8
    invoke-virtual { v1 }, Lokio/Buffer;->readByte()B
  :L4
  .line 9
    new-instance v2, Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "Number too large: "
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Lokio/Buffer;->readUtf8()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v3, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v2, v1 }, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V
    throw v2
  :L5
    const/16 v1, 45
    if-ne v15, v1, :L7
    if-nez v7, :L7
    const-wide/16 v1, 1
    sub-long/2addr v5, v1
    const/4 v8, 1
  :L6
    add-int/lit8 v12, v12, 1
    add-int/lit8 v7, v7, 1
    const-wide v1, -922337203685477580L
    goto :L1
  :L7
    if-eqz v7, :L8
    const/4 v9, 1
    goto :L9
  :L8
  .line 10
    new-instance v1, Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Expected leading [0-9] or '-' character but was 0x"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 11
    invoke-static { v15 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-direct { v1, v2 }, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V
    throw v1
  :L9
    if-ne v12, v13, :L10
  .line 12
    invoke-virtual { v10 }, Lokio/Segment;->pop()Lokio/Segment;
    move-result-object v1
    iput-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;
  .line 13
    invoke-static { v10 }, Lokio/SegmentPool;->recycle(Lokio/Segment;)V
    goto :L11
  :L10
  .line 14
    iput v12, v10, Lokio/Segment;->pos:I
  :L11
    if-nez v9, :L13
  .line 15
    iget-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;
    if-nez v1, :L12
    goto :L13
  :L12
    const-wide v1, -922337203685477580L
    goto/16 :L0
  :L13
  .line 16
    iget-wide v1, v0, Lokio/Buffer;->size:J
    int-to-long v5, v7
    sub-long/2addr v1, v5
    iput-wide v1, v0, Lokio/Buffer;->size:J
    if-eqz v8, :L14
    goto :L15
  :L14
    neg-long v3, v3
  :L15
    return-wide v3
  :L16
  .line 17
    new-instance v1, Ljava/lang/IllegalStateException;
    const-string v2, "size == 0"
    invoke-direct { v1, v2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    goto :L18
  :L17
    throw v1
  :L18
    goto :L17
.end method

.method public final readFrom(Ljava/io/InputStream;)Lokio/Buffer;
  .registers 5
    const-wide v0, 9223372036854775807L
    const/4 v2, 1
  .line 1
    invoke-direct { p0, p1, v0, v1, v2 }, Lokio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V
    return-object p0
.end method

.method public final readFrom(Ljava/io/InputStream;J)Lokio/Buffer;
  .registers 7
    const-wide/16 v0, 0
    cmp-long v2, p2, v0
    if-ltz v2, :L0
    const/4 v0, 0
  .line 2
    invoke-direct { p0, p1, p2, p3, v0 }, Lokio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V
    return-object p0
  :L0
  .line 3
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

.method public readFully(Lokio/Buffer;J)V
  .registers 7
  .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J
    cmp-long v2, v0, p2
    if-ltz v2, :L0
  .line 2
    invoke-virtual { p1, p0, p2, p3 }, Lokio/Buffer;->write(Lokio/Buffer;J)V
    return-void
  :L0
  .line 3
    invoke-virtual { p1, p0, v0, v1 }, Lokio/Buffer;->write(Lokio/Buffer;J)V
  .line 4
    new-instance p1, Ljava/io/EOFException;
    invoke-direct { p1 }, Ljava/io/EOFException;-><init>()V
    throw p1
.end method

.method public readFully([B)V
  .registers 5
    const/4 v0, 0
  :L0
  .line 5
    array-length v1, p1
    if-ge v0, v1, :L2
  .line 6
    array-length v1, p1
    sub-int/2addr v1, v0
    invoke-virtual { p0, p1, v0, v1 }, Lokio/Buffer;->read([BII)I
    move-result v1
    const/4 v2, -1
    if-eq v1, v2, :L1
    add-int/2addr v0, v1
    goto :L0
  :L1
  .line 7
    new-instance p1, Ljava/io/EOFException;
    invoke-direct { p1 }, Ljava/io/EOFException;-><init>()V
    throw p1
  :L2
    return-void
.end method

.method public readHexadecimalUnsignedLong()J
  .registers 16
  .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J
    const-wide/16 v2, 0
    cmp-long v4, v0, v2
    if-eqz v4, :L13
    const/4 v0, 0
    move-wide v4, v2
    const/4 v1, 0
  :L0
  .line 2
    iget-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;
  .line 3
    iget-object v7, v6, Lokio/Segment;->data:[B
  .line 4
    iget v8, v6, Lokio/Segment;->pos:I
  .line 5
    iget v9, v6, Lokio/Segment;->limit:I
  :L1
    if-ge v8, v9, :L9
  .line 6
    aget-byte v10, v7, v8
    const/16 v11, 48
    if-lt v10, v11, :L2
    const/16 v11, 57
    if-gt v10, v11, :L2
    add-int/lit8 v11, v10, -48
    goto :L5
  :L2
    const/16 v11, 97
    if-lt v10, v11, :L4
    const/16 v11, 102
    if-gt v10, v11, :L4
    add-int/lit8 v11, v10, -97
  :L3
    add-int/lit8 v11, v11, 10
    goto :L5
  :L4
    const/16 v11, 65
    if-lt v10, v11, :L7
    const/16 v11, 70
    if-gt v10, v11, :L7
    add-int/lit8 v11, v10, -65
    goto :L3
  :L5
    const-wide/high16 v12, -4096
    and-long/2addr v12, v4
    cmp-long v14, v12, v2
    if-nez v14, :L6
    const/4 v10, 4
    shl-long/2addr v4, v10
    int-to-long v10, v11
    or-long/2addr v4, v10
    add-int/lit8 v8, v8, 1
    add-int/lit8 v0, v0, 1
    goto :L1
  :L6
  .line 7
    new-instance v0, Lokio/Buffer;
    invoke-direct { v0 }, Lokio/Buffer;-><init>()V
    invoke-virtual { v0, v4, v5 }, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;
    move-result-object v0
    invoke-virtual { v0, v10 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
    move-result-object v0
  .line 8
    new-instance v1, Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Number too large: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Lokio/Buffer;->readUtf8()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { v1, v0 }, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V
    throw v1
  :L7
    if-eqz v0, :L8
    const/4 v1, 1
    goto :L9
  :L8
  .line 9
    new-instance v0, Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 10
    invoke-static { v10 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V
    throw v0
  :L9
    if-ne v8, v9, :L10
  .line 11
    invoke-virtual { v6 }, Lokio/Segment;->pop()Lokio/Segment;
    move-result-object v7
    iput-object v7, p0, Lokio/Buffer;->head:Lokio/Segment;
  .line 12
    invoke-static { v6 }, Lokio/SegmentPool;->recycle(Lokio/Segment;)V
    goto :L11
  :L10
  .line 13
    iput v8, v6, Lokio/Segment;->pos:I
  :L11
    if-nez v1, :L12
  .line 14
    iget-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;
    if-nez v6, :L0
  :L12
  .line 15
    iget-wide v1, p0, Lokio/Buffer;->size:J
    int-to-long v6, v0
    sub-long/2addr v1, v6
    iput-wide v1, p0, Lokio/Buffer;->size:J
    return-wide v4
  :L13
  .line 16
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "size == 0"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    goto :L15
  :L14
    throw v0
  :L15
    goto :L14
.end method

.method public readInt()I
  .registers 11
  .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J
    const-wide/16 v2, 4
    cmp-long v4, v0, v2
    if-ltz v4, :L3
  .line 2
    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;
  .line 3
    iget v5, v4, Lokio/Segment;->pos:I
  .line 4
    iget v6, v4, Lokio/Segment;->limit:I
    sub-int v7, v6, v5
    const/4 v8, 4
    if-ge v7, v8, :L0
  .line 5
    invoke-virtual { p0 }, Lokio/Buffer;->readByte()B
    move-result v0
    and-int/lit16 v0, v0, 255
    shl-int/lit8 v0, v0, 24
  .line 6
    invoke-virtual { p0 }, Lokio/Buffer;->readByte()B
    move-result v1
    and-int/lit16 v1, v1, 255
    shl-int/lit8 v1, v1, 16
    or-int/2addr v0, v1
  .line 7
    invoke-virtual { p0 }, Lokio/Buffer;->readByte()B
    move-result v1
    and-int/lit16 v1, v1, 255
    shl-int/lit8 v1, v1, 8
    or-int/2addr v0, v1
  .line 8
    invoke-virtual { p0 }, Lokio/Buffer;->readByte()B
    move-result v1
    and-int/lit16 v1, v1, 255
    or-int/2addr v0, v1
    return v0
  :L0
  .line 9
    iget-object v7, v4, Lokio/Segment;->data:[B
    add-int/lit8 v8, v5, 1
  .line 10
    aget-byte v5, v7, v5
    and-int/lit16 v5, v5, 255
    shl-int/lit8 v5, v5, 24
    add-int/lit8 v9, v8, 1
    aget-byte v8, v7, v8
    and-int/lit16 v8, v8, 255
    shl-int/lit8 v8, v8, 16
    or-int/2addr v5, v8
    add-int/lit8 v8, v9, 1
    aget-byte v9, v7, v9
    and-int/lit16 v9, v9, 255
    shl-int/lit8 v9, v9, 8
    or-int/2addr v5, v9
    add-int/lit8 v9, v8, 1
    aget-byte v7, v7, v8
    and-int/lit16 v7, v7, 255
    or-int/2addr v5, v7
    sub-long/2addr v0, v2
  .line 11
    iput-wide v0, p0, Lokio/Buffer;->size:J
    if-ne v9, v6, :L1
  .line 12
    invoke-virtual { v4 }, Lokio/Segment;->pop()Lokio/Segment;
    move-result-object v0
    iput-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;
  .line 13
    invoke-static { v4 }, Lokio/SegmentPool;->recycle(Lokio/Segment;)V
    goto :L2
  :L1
  .line 14
    iput v9, v4, Lokio/Segment;->pos:I
  :L2
    return v5
  :L3
  .line 15
    new-instance v0, Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "size < 4: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-wide v2, p0, Lokio/Buffer;->size:J
    invoke-virtual { v1, v2, v3 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public readIntLe()I
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lokio/Buffer;->readInt()I
    move-result v0
    invoke-static { v0 }, Lokio/Util;->reverseBytesInt(I)I
    move-result v0
    return v0
.end method

.method public readLong()J
  .registers 17
    move-object/from16 v0, p0
  .line 1
    iget-wide v1, v0, Lokio/Buffer;->size:J
    const-wide/16 v3, 8
    cmp-long v5, v1, v3
    if-ltz v5, :L3
  .line 2
    iget-object v5, v0, Lokio/Buffer;->head:Lokio/Segment;
  .line 3
    iget v6, v5, Lokio/Segment;->pos:I
  .line 4
    iget v7, v5, Lokio/Segment;->limit:I
    sub-int v8, v7, v6
    const/16 v9, 32
    const/16 v10, 8
    if-ge v8, v10, :L0
  .line 5
    invoke-virtual/range { p0 .. p0 }, Lokio/Buffer;->readInt()I
    move-result v1
    int-to-long v1, v1
    const-wide v3, 4294967295L
    and-long/2addr v1, v3
    shl-long/2addr v1, v9
  .line 6
    invoke-virtual/range { p0 .. p0 }, Lokio/Buffer;->readInt()I
    move-result v5
    int-to-long v5, v5
    and-long/2addr v3, v5
    or-long/2addr v1, v3
    return-wide v1
  :L0
  .line 7
    iget-object v8, v5, Lokio/Segment;->data:[B
    add-int/lit8 v11, v6, 1
  .line 8
    aget-byte v6, v8, v6
    int-to-long v12, v6
    const-wide/16 v14, 255
    and-long/2addr v12, v14
    const/16 v6, 56
    shl-long/2addr v12, v6
    add-int/lit8 v6, v11, 1
    aget-byte v11, v8, v11
    int-to-long v3, v11
    and-long/2addr v3, v14
    const/16 v11, 48
    shl-long/2addr v3, v11
    or-long/2addr v3, v12
    add-int/lit8 v11, v6, 1
    aget-byte v6, v8, v6
    int-to-long v12, v6
    and-long/2addr v12, v14
    const/16 v6, 40
    shl-long/2addr v12, v6
    or-long/2addr v3, v12
    add-int/lit8 v6, v11, 1
    aget-byte v11, v8, v11
    int-to-long v11, v11
    and-long/2addr v11, v14
    shl-long/2addr v11, v9
    or-long/2addr v3, v11
    add-int/lit8 v9, v6, 1
    aget-byte v6, v8, v6
    int-to-long v11, v6
    and-long/2addr v11, v14
    const/16 v6, 24
    shl-long/2addr v11, v6
    or-long/2addr v3, v11
    add-int/lit8 v6, v9, 1
    aget-byte v9, v8, v9
    int-to-long v11, v9
    and-long/2addr v11, v14
    const/16 v9, 16
    shl-long/2addr v11, v9
    or-long/2addr v3, v11
    add-int/lit8 v9, v6, 1
    aget-byte v6, v8, v6
    int-to-long v11, v6
    and-long/2addr v11, v14
    shl-long v10, v11, v10
    or-long/2addr v3, v10
    add-int/lit8 v6, v9, 1
    aget-byte v8, v8, v9
    int-to-long v8, v8
    and-long/2addr v8, v14
    or-long/2addr v3, v8
    const-wide/16 v8, 8
    sub-long/2addr v1, v8
  .line 9
    iput-wide v1, v0, Lokio/Buffer;->size:J
    if-ne v6, v7, :L1
  .line 10
    invoke-virtual { v5 }, Lokio/Segment;->pop()Lokio/Segment;
    move-result-object v1
    iput-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;
  .line 11
    invoke-static { v5 }, Lokio/SegmentPool;->recycle(Lokio/Segment;)V
    goto :L2
  :L1
  .line 12
    iput v6, v5, Lokio/Segment;->pos:I
  :L2
    return-wide v3
  :L3
  .line 13
    new-instance v1, Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "size < 8: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-wide v3, v0, Lokio/Buffer;->size:J
    invoke-virtual { v2, v3, v4 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-direct { v1, v2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v1
.end method

.method public readLongLe()J
  .registers 3
  .line 1
    invoke-virtual { p0 }, Lokio/Buffer;->readLong()J
    move-result-wide v0
    invoke-static { v0, v1 }, Lokio/Util;->reverseBytesLong(J)J
    move-result-wide v0
    return-wide v0
.end method

.method public readShort()S
  .registers 11
  .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J
    const-wide/16 v2, 2
    cmp-long v4, v0, v2
    if-ltz v4, :L3
  .line 2
    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;
  .line 3
    iget v5, v4, Lokio/Segment;->pos:I
  .line 4
    iget v6, v4, Lokio/Segment;->limit:I
    sub-int v7, v6, v5
    const/4 v8, 2
    if-ge v7, v8, :L0
  .line 5
    invoke-virtual { p0 }, Lokio/Buffer;->readByte()B
    move-result v0
    and-int/lit16 v0, v0, 255
    shl-int/lit8 v0, v0, 8
  .line 6
    invoke-virtual { p0 }, Lokio/Buffer;->readByte()B
    move-result v1
    and-int/lit16 v1, v1, 255
    or-int/2addr v0, v1
    int-to-short v0, v0
    return v0
  :L0
  .line 7
    iget-object v7, v4, Lokio/Segment;->data:[B
    add-int/lit8 v8, v5, 1
  .line 8
    aget-byte v5, v7, v5
    and-int/lit16 v5, v5, 255
    shl-int/lit8 v5, v5, 8
    add-int/lit8 v9, v8, 1
    aget-byte v7, v7, v8
    and-int/lit16 v7, v7, 255
    or-int/2addr v5, v7
    sub-long/2addr v0, v2
  .line 9
    iput-wide v0, p0, Lokio/Buffer;->size:J
    if-ne v9, v6, :L1
  .line 10
    invoke-virtual { v4 }, Lokio/Segment;->pop()Lokio/Segment;
    move-result-object v0
    iput-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;
  .line 11
    invoke-static { v4 }, Lokio/SegmentPool;->recycle(Lokio/Segment;)V
    goto :L2
  :L1
  .line 12
    iput v9, v4, Lokio/Segment;->pos:I
  :L2
    int-to-short v0, v5
    return v0
  :L3
  .line 13
    new-instance v0, Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "size < 2: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-wide v2, p0, Lokio/Buffer;->size:J
    invoke-virtual { v1, v2, v3 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public readShortLe()S
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lokio/Buffer;->readShort()S
    move-result v0
    invoke-static { v0 }, Lokio/Util;->reverseBytesShort(S)S
    move-result v0
    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
  .registers 10
  .line 3
    iget-wide v0, p0, Lokio/Buffer;->size:J
    const-wide/16 v2, 0
    move-wide v4, p1
    invoke-static/range { v0 .. v5 }, Lokio/Util;->checkOffsetAndCount(JJJ)V
    if-eqz p3, :L4
    const-wide/32 v0, 2147483647
    cmp-long v2, p1, v0
    if-gtz v2, :L3
    const-wide/16 v0, 0
    cmp-long v2, p1, v0
    if-nez v2, :L0
    const-string p1, ""
    return-object p1
  :L0
  .line 4
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;
  .line 5
    iget v1, v0, Lokio/Segment;->pos:I
    int-to-long v1, v1
    add-long/2addr v1, p1
    iget v3, v0, Lokio/Segment;->limit:I
    int-to-long v3, v3
    cmp-long v5, v1, v3
    if-lez v5, :L1
  .line 6
    new-instance v0, Ljava/lang/String;
    invoke-virtual { p0, p1, p2 }, Lokio/Buffer;->readByteArray(J)[B
    move-result-object p1
    invoke-direct { v0, p1, p3 }, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    return-object v0
  :L1
  .line 7
    new-instance v1, Ljava/lang/String;
    iget-object v2, v0, Lokio/Segment;->data:[B
    iget v3, v0, Lokio/Segment;->pos:I
    long-to-int v4, p1
    invoke-direct { v1, v2, v3, v4, p3 }, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
  .line 8
    iget p3, v0, Lokio/Segment;->pos:I
    int-to-long v2, p3
    add-long/2addr v2, p1
    long-to-int p3, v2
    iput p3, v0, Lokio/Segment;->pos:I
  .line 9
    iget-wide v2, p0, Lokio/Buffer;->size:J
    sub-long/2addr v2, p1
    iput-wide v2, p0, Lokio/Buffer;->size:J
  .line 10
    iget p1, v0, Lokio/Segment;->limit:I
    if-ne p3, p1, :L2
  .line 11
    invoke-virtual { v0 }, Lokio/Segment;->pop()Lokio/Segment;
    move-result-object p1
    iput-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;
  .line 12
    invoke-static { v0 }, Lokio/SegmentPool;->recycle(Lokio/Segment;)V
  :L2
    return-object v1
  :L3
  .line 13
    new-instance p3, Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "byteCount > Integer.MAX_VALUE: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1, p2 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p3, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p3
  :L4
  .line 14
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "charset == null"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
  .catch Ljava/io/EOFException; { :L0 .. :L1 } :L2
  .registers 4
  :L0
  .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J
    invoke-virtual { p0, v0, v1, p1 }, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    move-result-object p1
  :L1
    return-object p1
  :L2
    move-exception p1
  .line 2
    new-instance v0, Ljava/lang/AssertionError;
    invoke-direct { v0, p1 }, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    throw v0
.end method

.method public final readUnsafe()Lokio/Buffer$UnsafeCursor;
  .registers 2
  .line 1
    new-instance v0, Lokio/Buffer$UnsafeCursor;
    invoke-direct { v0 }, Lokio/Buffer$UnsafeCursor;-><init>()V
    invoke-virtual { p0, v0 }, Lokio/Buffer;->readUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    move-result-object v0
    return-object v0
.end method

.method public final readUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
  .registers 3
  .line 2
    iget-object v0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;
    if-nez v0, :L0
  .line 3
    iput-object p0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;
    const/4 v0, 0
  .line 4
    iput-boolean v0, p1, Lokio/Buffer$UnsafeCursor;->readWrite:Z
    return-object p1
  :L0
  .line 5
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "already attached to a buffer"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public readUtf8()Ljava/lang/String;
  .catch Ljava/io/EOFException; { :L0 .. :L1 } :L2
  .registers 4
  :L0
  .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J
    sget-object v2, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;
    invoke-virtual { p0, v0, v1, v2 }, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    move-result-object v0
  :L1
    return-object v0
  :L2
    move-exception v0
  .line 2
    new-instance v1, Ljava/lang/AssertionError;
    invoke-direct { v1, v0 }, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    throw v1
.end method

.method public readUtf8(J)Ljava/lang/String;
  .registers 4
  .line 3
    sget-object v0, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;
    invoke-virtual { p0, p1, p2, v0 }, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    move-result-object p1
    return-object p1
.end method

.method public readUtf8CodePoint()I
  .registers 13
  .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J
    const-wide/16 v2, 0
    cmp-long v4, v0, v2
    if-eqz v4, :L12
  .line 2
    invoke-virtual { p0, v2, v3 }, Lokio/Buffer;->getByte(J)B
    move-result v0
    and-int/lit16 v1, v0, 128
    const/4 v2, 1
    const/16 v3, 128
    const v4, 65533
    if-nez v1, :L0
    and-int/lit8 v1, v0, 127
    const/4 v5, 0
    const/4 v5, 1
    const/4 v6, 0
    goto :L3
  :L0
    and-int/lit16 v1, v0, 224
    const/16 v5, 192
    if-ne v1, v5, :L1
    and-int/lit8 v1, v0, 31
    const/4 v5, 2
    const/16 v6, 128
    goto :L3
  :L1
    and-int/lit16 v1, v0, 240
    const/16 v5, 224
    if-ne v1, v5, :L2
    and-int/lit8 v1, v0, 15
    const/4 v5, 3
    const/16 v6, 2048
    goto :L3
  :L2
    and-int/lit16 v1, v0, 248
    const/16 v5, 240
    if-ne v1, v5, :L11
    and-int/lit8 v1, v0, 7
    const/4 v5, 4
    const/high16 v6, 1
  :L3
  .line 3
    iget-wide v7, p0, Lokio/Buffer;->size:J
    int-to-long v9, v5
    cmp-long v11, v7, v9
    if-ltz v11, :L10
  :L4
    if-ge v2, v5, :L6
    int-to-long v7, v2
  .line 4
    invoke-virtual { p0, v7, v8 }, Lokio/Buffer;->getByte(J)B
    move-result v0
    and-int/lit16 v11, v0, 192
    if-ne v11, v3, :L5
    shl-int/lit8 v1, v1, 6
    and-int/lit8 v0, v0, 63
    or-int/2addr v1, v0
    add-int/lit8 v2, v2, 1
    goto :L4
  :L5
  .line 5
    invoke-virtual { p0, v7, v8 }, Lokio/Buffer;->skip(J)V
    return v4
  :L6
  .line 6
    invoke-virtual { p0, v9, v10 }, Lokio/Buffer;->skip(J)V
    const v0, 1114111
    if-le v1, v0, :L7
    return v4
  :L7
    const v0, 55296
    if-lt v1, v0, :L8
    const v0, 57343
    if-gt v1, v0, :L8
    return v4
  :L8
    if-ge v1, v6, :L9
    return v4
  :L9
    return v1
  :L10
  .line 7
    new-instance v1, Ljava/io/EOFException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "size < "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v5 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, ": "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-wide v3, p0, Lokio/Buffer;->size:J
    invoke-virtual { v2, v3, v4 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v3, " (to read code point prefixed 0x"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 8
    invoke-static { v0 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, ")"
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { v1, v0 }, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V
    throw v1
  :L11
    const-wide/16 v0, 1
  .line 9
    invoke-virtual { p0, v0, v1 }, Lokio/Buffer;->skip(J)V
    return v4
  :L12
  .line 10
    new-instance v0, Ljava/io/EOFException;
    invoke-direct { v0 }, Ljava/io/EOFException;-><init>()V
    goto :L14
  :L13
    throw v0
  :L14
    goto :L13
.end method

.method public readUtf8Line()Ljava/lang/String;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 6
    const/16 v0, 10
  .line 1
    invoke-virtual { p0, v0 }, Lokio/Buffer;->indexOf(B)J
    move-result-wide v0
    const-wide/16 v2, -1
    cmp-long v4, v0, v2
    if-nez v4, :L2
  .line 2
    iget-wide v0, p0, Lokio/Buffer;->size:J
    const-wide/16 v2, 0
    cmp-long v4, v0, v2
    if-eqz v4, :L0
    invoke-virtual { p0, v0, v1 }, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
  :L2
  .line 3
    invoke-virtual { p0, v0, v1 }, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method readUtf8Line(J)Ljava/lang/String;
  .registers 9
    const-wide/16 v0, 1
    const-wide/16 v2, 0
    cmp-long v4, p1, v2
    if-lez v4, :L0
    sub-long v2, p1, v0
  .line 4
    invoke-virtual { p0, v2, v3 }, Lokio/Buffer;->getByte(J)B
    move-result v4
    const/16 v5, 13
    if-ne v4, v5, :L0
  .line 5
    invoke-virtual { p0, v2, v3 }, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;
    move-result-object p1
    const-wide/16 v0, 2
  .line 6
    invoke-virtual { p0, v0, v1 }, Lokio/Buffer;->skip(J)V
    return-object p1
  :L0
  .line 7
    invoke-virtual { p0, p1, p2 }, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;
    move-result-object p1
  .line 8
    invoke-virtual { p0, v0, v1 }, Lokio/Buffer;->skip(J)V
    return-object p1
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
  .registers 3
    const-wide v0, 9223372036854775807L
  .line 1
    invoke-virtual { p0, v0, v1 }, Lokio/Buffer;->readUtf8LineStrict(J)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public readUtf8LineStrict(J)Ljava/lang/String;
  .registers 13
    const-wide/16 v0, 0
    cmp-long v2, p1, v0
    if-ltz v2, :L4
    const-wide/16 v0, 1
    const-wide v2, 9223372036854775807L
    cmp-long v4, p1, v2
    if-nez v4, :L0
    goto :L1
  :L0
    add-long v2, p1, v0
  :L1
    const/16 v5, 10
    const-wide/16 v6, 0
    move-object v4, p0
    move-wide v8, v2
  .line 2
    invoke-virtual/range { v4 .. v9 }, Lokio/Buffer;->indexOf(BJJ)J
    move-result-wide v4
    const-wide/16 v6, -1
    cmp-long v8, v4, v6
    if-eqz v8, :L2
  .line 3
    invoke-virtual { p0, v4, v5 }, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;
    move-result-object p1
    return-object p1
  :L2
  .line 4
    invoke-virtual { p0 }, Lokio/Buffer;->size()J
    move-result-wide v4
    cmp-long v6, v2, v4
    if-gez v6, :L3
    sub-long v0, v2, v0
  .line 5
    invoke-virtual { p0, v0, v1 }, Lokio/Buffer;->getByte(J)B
    move-result v0
    const/16 v1, 13
    if-ne v0, v1, :L3
    invoke-virtual { p0, v2, v3 }, Lokio/Buffer;->getByte(J)B
    move-result v0
    const/16 v1, 10
    if-ne v0, v1, :L3
  .line 6
    invoke-virtual { p0, v2, v3 }, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;
    move-result-object p1
    return-object p1
  :L3
  .line 7
    new-instance v6, Lokio/Buffer;
    invoke-direct { v6 }, Lokio/Buffer;-><init>()V
    const-wide/16 v2, 0
    const-wide/16 v0, 32
  .line 8
    invoke-virtual { p0 }, Lokio/Buffer;->size()J
    move-result-wide v4
    invoke-static { v0, v1, v4, v5 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v4
    move-object v0, p0
    move-object v1, v6
    invoke-virtual/range { v0 .. v5 }, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;
  .line 9
    new-instance v0, Ljava/io/EOFException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "\\n not found: limit="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Lokio/Buffer;->size()J
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
  .registers 6
  .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J
    cmp-long v2, v0, p1
    if-ltz v2, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method public require(J)V
  .registers 6
  .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J
    cmp-long v2, v0, p1
    if-ltz v2, :L0
    return-void
  :L0
    new-instance p1, Ljava/io/EOFException;
    invoke-direct { p1 }, Ljava/io/EOFException;-><init>()V
    throw p1
.end method

.method segmentSizes()Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/List<",
      "Ljava/lang/Integer;",
      ">;"
    }
  .end annotation
  .registers 5
  .line 1
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;
    if-nez v0, :L0
    invoke-static { }, Ljava/util/Collections;->emptyList()Ljava/util/List;
    move-result-object v0
    return-object v0
  :L0
  .line 2
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
  .line 3
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;
    iget v2, v1, Lokio/Segment;->limit:I
    iget v1, v1, Lokio/Segment;->pos:I
    sub-int/2addr v2, v1
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 4
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;
  :L1
    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;
    if-eq v1, v2, :L2
  .line 5
    iget v2, v1, Lokio/Segment;->limit:I
    iget v3, v1, Lokio/Segment;->pos:I
    sub-int/2addr v2, v3
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-interface { v0, v2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    goto :L1
  :L2
    return-object v0
.end method

.method public select(Lokio/Options;)I
  .catch Ljava/io/EOFException; { :L1 .. :L2 } :L3
  .registers 5
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, p1, v0 }, Lokio/Buffer;->selectPrefix(Lokio/Options;Z)I
    move-result v0
    const/4 v1, -1
    if-ne v0, v1, :L0
    return v1
  :L0
  .line 2
    iget-object p1, p1, Lokio/Options;->byteStrings:[Lokio/ByteString;
    aget-object p1, p1, v0
    invoke-virtual { p1 }, Lokio/ByteString;->size()I
    move-result p1
    int-to-long v1, p1
  :L1
  .line 3
    invoke-virtual { p0, v1, v2 }, Lokio/Buffer;->skip(J)V
  :L2
    return v0
  :L3
  .line 4
    new-instance p1, Ljava/lang/AssertionError;
    invoke-direct { p1 }, Ljava/lang/AssertionError;-><init>()V
    throw p1
.end method

.method selectPrefix(Lokio/Options;Z)I
  .registers 20
    move-object/from16 v0, p1
    move-object/from16 v1, p0
  .line 1
    iget-object v2, v1, Lokio/Buffer;->head:Lokio/Segment;
    const/4 v3, -2
    if-nez v2, :L1
    if-eqz p2, :L0
    return v3
  :L0
  .line 2
    sget-object v2, Lokio/ByteString;->EMPTY:Lokio/ByteString;
    invoke-virtual { v0, v2 }, Ljava/util/AbstractList;->indexOf(Ljava/lang/Object;)I
    move-result v0
    return v0
  :L1
  .line 3
    iget-object v4, v2, Lokio/Segment;->data:[B
  .line 4
    iget v5, v2, Lokio/Segment;->pos:I
  .line 5
    iget v6, v2, Lokio/Segment;->limit:I
  .line 6
    iget-object v0, v0, Lokio/Options;->trie:[I
    const/4 v7, 0
    const/4 v8, -1
    move-object v10, v2
    const/4 v9, 0
    const/4 v11, -1
  :L2
    add-int/lit8 v12, v9, 1
  .line 7
    aget v9, v0, v9
    add-int/lit8 v13, v12, 1
  .line 8
    aget v12, v0, v12
    if-eq v12, v8, :L3
    move v11, v12
  :L3
    if-nez v10, :L4
    goto :L9
  :L4
    const/4 v12, 0
    if-gez v9, :L16
    mul-int/lit8 v9, v9, -1
    add-int v14, v13, v9
  :L5
    add-int/lit8 v9, v5, 1
  .line 9
    aget-byte v5, v4, v5
    and-int/lit16 v5, v5, 255
    add-int/lit8 v15, v13, 1
  .line 10
    aget v13, v0, v13
    if-eq v5, v13, :L6
    return v11
  :L6
    if-ne v15, v14, :L7
    const/4 v5, 1
    goto :L8
  :L7
    const/4 v5, 0
  :L8
    if-ne v9, v6, :L13
  .line 11
    iget-object v4, v10, Lokio/Segment;->next:Lokio/Segment;
  .line 12
    iget v6, v4, Lokio/Segment;->pos:I
  .line 13
    iget-object v9, v4, Lokio/Segment;->data:[B
  .line 14
    iget v10, v4, Lokio/Segment;->limit:I
    if-ne v4, v2, :L12
    if-nez v5, :L11
  :L9
    if-eqz p2, :L10
    return v3
  :L10
    return v11
  :L11
    move-object v4, v9
    move-object v9, v12
    goto :L14
  :L12
    move-object/from16 v16, v9
    move-object v9, v4
    move-object/from16 v4, v16
    goto :L14
  :L13
    move-object/from16 v16, v10
    move v10, v6
    move v6, v9
    move-object/from16 v9, v16
  :L14
    if-eqz v5, :L15
  .line 15
    aget v5, v0, v15
    move v3, v6
    move v6, v10
    move-object v10, v9
    goto :L20
  :L15
    move v5, v6
    move v6, v10
    move v13, v15
    move-object v10, v9
    goto :L5
  :L16
    add-int/lit8 v14, v5, 1
  .line 16
    aget-byte v5, v4, v5
    and-int/lit16 v5, v5, 255
    add-int v15, v13, v9
  :L17
    if-ne v13, v15, :L18
    return v11
  :L18
  .line 17
    aget v3, v0, v13
    if-ne v5, v3, :L22
    add-int/2addr v13, v9
  .line 18
    aget v5, v0, v13
    if-ne v14, v6, :L19
  .line 19
    iget-object v10, v10, Lokio/Segment;->next:Lokio/Segment;
  .line 20
    iget v3, v10, Lokio/Segment;->pos:I
  .line 21
    iget-object v4, v10, Lokio/Segment;->data:[B
  .line 22
    iget v6, v10, Lokio/Segment;->limit:I
    if-ne v10, v2, :L20
    move-object v10, v12
    goto :L20
  :L19
    move v3, v14
  :L20
    if-ltz v5, :L21
    return v5
  :L21
    neg-int v9, v5
    move v5, v3
    const/4 v3, -2
    goto :L2
  :L22
    add-int/lit8 v13, v13, 1
    const/4 v3, -2
    goto :L17
.end method

.method public final sha1()Lokio/ByteString;
  .registers 2
    const-string v0, "SHA-1"
  .line 1
    invoke-direct { p0, v0 }, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;
    move-result-object v0
    return-object v0
.end method

.method public final sha256()Lokio/ByteString;
  .registers 2
    const-string v0, "SHA-256"
  .line 1
    invoke-direct { p0, v0 }, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;
    move-result-object v0
    return-object v0
.end method

.method public final sha512()Lokio/ByteString;
  .registers 2
    const-string v0, "SHA-512"
  .line 1
    invoke-direct { p0, v0 }, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;
    move-result-object v0
    return-object v0
.end method

.method public final size()J
  .registers 3
  .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J
    return-wide v0
.end method

.method public skip(J)V
  .registers 9
  :L0
    const-wide/16 v0, 0
    cmp-long v2, p1, v0
    if-lez v2, :L2
  .line 1
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;
    if-eqz v0, :L1
  .line 2
    iget v1, v0, Lokio/Segment;->limit:I
    iget v0, v0, Lokio/Segment;->pos:I
    sub-int/2addr v1, v0
    int-to-long v0, v1
    invoke-static { p1, p2, v0, v1 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v0
    long-to-int v1, v0
  .line 3
    iget-wide v2, p0, Lokio/Buffer;->size:J
    int-to-long v4, v1
    sub-long/2addr v2, v4
    iput-wide v2, p0, Lokio/Buffer;->size:J
    sub-long/2addr p1, v4
  .line 4
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;
    iget v2, v0, Lokio/Segment;->pos:I
    add-int/2addr v2, v1
    iput v2, v0, Lokio/Segment;->pos:I
  .line 5
    iget v1, v0, Lokio/Segment;->limit:I
    if-ne v2, v1, :L0
  .line 6
    invoke-virtual { v0 }, Lokio/Segment;->pop()Lokio/Segment;
    move-result-object v1
    iput-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;
  .line 7
    invoke-static { v0 }, Lokio/SegmentPool;->recycle(Lokio/Segment;)V
    goto :L0
  :L1
  .line 8
    new-instance p1, Ljava/io/EOFException;
    invoke-direct { p1 }, Ljava/io/EOFException;-><init>()V
    throw p1
  :L2
    return-void
.end method

.method public final snapshot()Lokio/ByteString;
  .registers 6
  .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J
    const-wide/32 v2, 2147483647
    cmp-long v4, v0, v2
    if-gtz v4, :L0
    long-to-int v1, v0
  .line 2
    invoke-virtual { p0, v1 }, Lokio/Buffer;->snapshot(I)Lokio/ByteString;
    move-result-object v0
    return-object v0
  :L0
  .line 3
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "size > Integer.MAX_VALUE: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-wide v2, p0, Lokio/Buffer;->size:J
    invoke-virtual { v1, v2, v3 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public final snapshot(I)Lokio/ByteString;
  .registers 3
    if-nez p1, :L0
  .line 4
    sget-object p1, Lokio/ByteString;->EMPTY:Lokio/ByteString;
    return-object p1
  :L0
  .line 5
    new-instance v0, Lokio/SegmentedByteString;
    invoke-direct { v0, p0, p1 }, Lokio/SegmentedByteString;-><init>(Lokio/Buffer;I)V
    return-object v0
.end method

.method public timeout()Lokio/Timeout;
  .registers 2
  .line 1
    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lokio/Buffer;->snapshot()Lokio/ByteString;
    move-result-object v0
    invoke-virtual { v0 }, Lokio/ByteString;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method writableSegment(I)Lokio/Segment;
  .registers 5
    const/4 v0, 1
    if-lt p1, v0, :L3
    const/16 v0, 8192
    if-gt p1, v0, :L3
  .line 1
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;
    if-nez v1, :L0
  .line 2
    invoke-static { }, Lokio/SegmentPool;->take()Lokio/Segment;
    move-result-object p1
    iput-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;
  .line 3
    iput-object p1, p1, Lokio/Segment;->prev:Lokio/Segment;
    iput-object p1, p1, Lokio/Segment;->next:Lokio/Segment;
    return-object p1
  :L0
  .line 4
    iget-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;
  .line 5
    iget v2, v1, Lokio/Segment;->limit:I
    add-int/2addr v2, p1
    if-gt v2, v0, :L1
    iget-boolean p1, v1, Lokio/Segment;->owner:Z
    if-nez p1, :L2
  :L1
  .line 6
    invoke-static { }, Lokio/SegmentPool;->take()Lokio/Segment;
    move-result-object p1
    invoke-virtual { v1, p1 }, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;
    move-result-object v1
  :L2
    return-object v1
  :L3
  .line 7
    new-instance p1, Ljava/lang/IllegalArgumentException;
    invoke-direct { p1 }, Ljava/lang/IllegalArgumentException;-><init>()V
    throw p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
  .registers 8
    if-eqz p1, :L2
  .line 15
    invoke-virtual { p1 }, Ljava/nio/ByteBuffer;->remaining()I
    move-result v0
    move v1, v0
  :L0
    if-lez v1, :L1
    const/4 v2, 1
  .line 16
    invoke-virtual { p0, v2 }, Lokio/Buffer;->writableSegment(I)Lokio/Segment;
    move-result-object v2
  .line 17
    iget v3, v2, Lokio/Segment;->limit:I
    rsub-int v3, v3, 8192
    invoke-static { v1, v3 }, Ljava/lang/Math;->min(II)I
    move-result v3
  .line 18
    iget-object v4, v2, Lokio/Segment;->data:[B
    iget v5, v2, Lokio/Segment;->limit:I
    invoke-virtual { p1, v4, v5, v3 }, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    sub-int/2addr v1, v3
  .line 19
    iget v4, v2, Lokio/Segment;->limit:I
    add-int/2addr v4, v3
    iput v4, v2, Lokio/Segment;->limit:I
    goto :L0
  :L1
  .line 20
    iget-wide v1, p0, Lokio/Buffer;->size:J
    int-to-long v3, v0
    add-long/2addr v1, v3
    iput-wide v1, p0, Lokio/Buffer;->size:J
    return v0
  :L2
  .line 21
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "source == null"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    goto :L4
  :L3
    throw p1
  :L4
    goto :L3
.end method

.method public write(Lokio/ByteString;)Lokio/Buffer;
  .registers 3
    if-eqz p1, :L0
  .line 4
    invoke-virtual { p1, p0 }, Lokio/ByteString;->write(Lokio/Buffer;)V
    return-object p0
  :L0
  .line 5
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "byteString == null"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public write([B)Lokio/Buffer;
  .registers 4
    if-eqz p1, :L0
    const/4 v0, 0
  .line 6
    array-length v1, p1
    invoke-virtual { p0, p1, v0, v1 }, Lokio/Buffer;->write([BII)Lokio/Buffer;
    move-result-object p1
    return-object p1
  :L0
  .line 7
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "source == null"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public write([BII)Lokio/Buffer;
  .registers 13
    if-eqz p1, :L2
  .line 8
    array-length v0, p1
    int-to-long v1, v0
    int-to-long v3, p2
    int-to-long v7, p3
    move-wide v5, v7
    invoke-static/range { v1 .. v6 }, Lokio/Util;->checkOffsetAndCount(JJJ)V
    add-int/2addr p3, p2
  :L0
    if-ge p2, p3, :L1
    const/4 v0, 1
  .line 9
    invoke-virtual { p0, v0 }, Lokio/Buffer;->writableSegment(I)Lokio/Segment;
    move-result-object v0
    sub-int v1, p3, p2
  .line 10
    iget v2, v0, Lokio/Segment;->limit:I
    rsub-int v2, v2, 8192
    invoke-static { v1, v2 }, Ljava/lang/Math;->min(II)I
    move-result v1
  .line 11
    iget-object v2, v0, Lokio/Segment;->data:[B
    iget v3, v0, Lokio/Segment;->limit:I
    invoke-static { p1, p2, v2, v3, v1 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    add-int/2addr p2, v1
  .line 12
    iget v2, v0, Lokio/Segment;->limit:I
    add-int/2addr v2, v1
    iput v2, v0, Lokio/Segment;->limit:I
    goto :L0
  :L1
  .line 13
    iget-wide p1, p0, Lokio/Buffer;->size:J
    add-long/2addr p1, v7
    iput-wide p1, p0, Lokio/Buffer;->size:J
    return-object p0
  :L2
  .line 14
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "source == null"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    goto :L4
  :L3
    throw p1
  :L4
    goto :L3
.end method

.method public bridge synthetic write(Lokio/ByteString;)Lokio/BufferedSink;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;
    move-result-object p1
    return-object p1
.end method

.method public write(Lokio/Source;J)Lokio/BufferedSink;
  .registers 9
  :L0
    const-wide/16 v0, 0
    cmp-long v2, p2, v0
    if-lez v2, :L2
  .line 22
    invoke-interface { p1, p0, p2, p3 }, Lokio/Source;->read(Lokio/Buffer;J)J
    move-result-wide v0
    const-wide/16 v2, -1
    cmp-long v4, v0, v2
    if-eqz v4, :L1
    sub-long/2addr p2, v0
    goto :L0
  :L1
  .line 23
    new-instance p1, Ljava/io/EOFException;
    invoke-direct { p1 }, Ljava/io/EOFException;-><init>()V
    throw p1
  :L2
    return-object p0
.end method

.method public bridge synthetic write([B)Lokio/BufferedSink;
  .registers 2
  .line 2
    invoke-virtual { p0, p1 }, Lokio/Buffer;->write([B)Lokio/Buffer;
    move-result-object p1
    return-object p1
.end method

.method public bridge synthetic write([BII)Lokio/BufferedSink;
  .registers 4
  .line 3
    invoke-virtual { p0, p1, p2, p3 }, Lokio/Buffer;->write([BII)Lokio/Buffer;
    move-result-object p1
    return-object p1
.end method

.method public write(Lokio/Buffer;J)V
  .registers 10
    if-eqz p1, :L11
    if-eq p1, p0, :L10
  .line 24
    iget-wide v0, p1, Lokio/Buffer;->size:J
    const-wide/16 v2, 0
    move-wide v4, p2
    invoke-static/range { v0 .. v5 }, Lokio/Util;->checkOffsetAndCount(JJJ)V
  :L0
    const-wide/16 v0, 0
    cmp-long v2, p2, v0
    if-lez v2, :L9
  .line 25
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;
    iget v1, v0, Lokio/Segment;->limit:I
    iget v0, v0, Lokio/Segment;->pos:I
    sub-int/2addr v1, v0
    int-to-long v0, v1
    cmp-long v2, p2, v0
    if-gez v2, :L6
  .line 26
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;
    if-eqz v0, :L1
    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;
    goto :L2
  :L1
    const/4 v0, 0
  :L2
    if-eqz v0, :L5
  .line 27
    iget-boolean v1, v0, Lokio/Segment;->owner:Z
    if-eqz v1, :L5
    iget v1, v0, Lokio/Segment;->limit:I
    int-to-long v1, v1
    add-long/2addr v1, p2
    iget-boolean v3, v0, Lokio/Segment;->shared:Z
    if-eqz v3, :L3
    const/4 v3, 0
    goto :L4
  :L3
  .line 28
    iget v3, v0, Lokio/Segment;->pos:I
  :L4
    int-to-long v3, v3
    sub-long/2addr v1, v3
    const-wide/16 v3, 8192
    cmp-long v5, v1, v3
    if-gtz v5, :L5
  .line 29
    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;
    long-to-int v2, p2
    invoke-virtual { v1, v0, v2 }, Lokio/Segment;->writeTo(Lokio/Segment;I)V
  .line 30
    iget-wide v0, p1, Lokio/Buffer;->size:J
    sub-long/2addr v0, p2
    iput-wide v0, p1, Lokio/Buffer;->size:J
  .line 31
    iget-wide v0, p0, Lokio/Buffer;->size:J
    add-long/2addr v0, p2
    iput-wide v0, p0, Lokio/Buffer;->size:J
    return-void
  :L5
  .line 32
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;
    long-to-int v1, p2
    invoke-virtual { v0, v1 }, Lokio/Segment;->split(I)Lokio/Segment;
    move-result-object v0
    iput-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;
  :L6
  .line 33
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;
  .line 34
    iget v1, v0, Lokio/Segment;->limit:I
    iget v2, v0, Lokio/Segment;->pos:I
    sub-int/2addr v1, v2
    int-to-long v1, v1
  .line 35
    invoke-virtual { v0 }, Lokio/Segment;->pop()Lokio/Segment;
    move-result-object v3
    iput-object v3, p1, Lokio/Buffer;->head:Lokio/Segment;
  .line 36
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;
    if-nez v3, :L7
  .line 37
    iput-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;
  .line 38
    iput-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;
    iput-object v0, v0, Lokio/Segment;->next:Lokio/Segment;
    goto :L8
  :L7
  .line 39
    iget-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;
  .line 40
    invoke-virtual { v3, v0 }, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;
    move-result-object v0
  .line 41
    invoke-virtual { v0 }, Lokio/Segment;->compact()V
  :L8
  .line 42
    iget-wide v3, p1, Lokio/Buffer;->size:J
    sub-long/2addr v3, v1
    iput-wide v3, p1, Lokio/Buffer;->size:J
  .line 43
    iget-wide v3, p0, Lokio/Buffer;->size:J
    add-long/2addr v3, v1
    iput-wide v3, p0, Lokio/Buffer;->size:J
    sub-long/2addr p2, v1
    goto :L0
  :L9
    return-void
  :L10
  .line 44
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "source == this"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L11
  .line 45
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "source == null"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    goto :L13
  :L12
    throw p1
  :L13
    goto :L12
.end method

.method public writeAll(Lokio/Source;)J
  .registers 9
    if-eqz p1, :L2
    const-wide/16 v0, 0
  :L0
    const-wide/16 v2, 8192
  .line 1
    invoke-interface { p1, p0, v2, v3 }, Lokio/Source;->read(Lokio/Buffer;J)J
    move-result-wide v2
    const-wide/16 v4, -1
    cmp-long v6, v2, v4
    if-eqz v6, :L1
    add-long/2addr v0, v2
    goto :L0
  :L1
    return-wide v0
  :L2
  .line 2
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "source == null"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    goto :L4
  :L3
    throw p1
  :L4
    goto :L3
.end method

.method public writeByte(I)Lokio/Buffer;
  .registers 6
    const/4 v0, 1
  .line 2
    invoke-virtual { p0, v0 }, Lokio/Buffer;->writableSegment(I)Lokio/Segment;
    move-result-object v0
  .line 3
    iget-object v1, v0, Lokio/Segment;->data:[B
    iget v2, v0, Lokio/Segment;->limit:I
    add-int/lit8 v3, v2, 1
    iput v3, v0, Lokio/Segment;->limit:I
    int-to-byte p1, p1
    aput-byte p1, v1, v2
  .line 4
    iget-wide v0, p0, Lokio/Buffer;->size:J
    const-wide/16 v2, 1
    add-long/2addr v0, v2
    iput-wide v0, p0, Lokio/Buffer;->size:J
    return-object p0
.end method

.method public bridge synthetic writeByte(I)Lokio/BufferedSink;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
    move-result-object p1
    return-object p1
.end method

.method public writeDecimalLong(J)Lokio/Buffer;
  .registers 14
    const-wide/16 v0, 0
    cmp-long v2, p1, v0
    if-nez v2, :L0
    const/16 p1, 48
  .line 2
    invoke-virtual { p0, p1 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
    move-result-object p1
    return-object p1
  :L0
    const/4 v2, 0
    const/4 v3, 1
    cmp-long v4, p1, v0
    if-gez v4, :L2
    neg-long p1, p1
    cmp-long v2, p1, v0
    if-gez v2, :L1
    const-string p1, "-9223372036854775808"
  .line 3
    invoke-virtual { p0, p1 }, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;
    move-result-object p1
    return-object p1
  :L1
    const/4 v2, 1
  :L2
    const-wide/32 v4, 100000000
    const-wide/16 v6, 10
    cmp-long v8, p1, v4
    if-gez v8, :L10
    const-wide/16 v4, 10000
    cmp-long v8, p1, v4
    if-gez v8, :L6
    const-wide/16 v4, 100
    cmp-long v8, p1, v4
    if-gez v8, :L4
    cmp-long v4, p1, v6
    if-gez v4, :L3
    goto/16 :L21
  :L3
    const/4 v3, 2
    goto/16 :L21
  :L4
    const-wide/16 v3, 1000
    cmp-long v5, p1, v3
    if-gez v5, :L5
    const/4 v3, 3
    goto/16 :L21
  :L5
    const/4 v3, 4
    goto/16 :L21
  :L6
    const-wide/32 v3, 1000000
    cmp-long v5, p1, v3
    if-gez v5, :L8
    const-wide/32 v3, 100000
    cmp-long v5, p1, v3
    if-gez v5, :L7
    const/4 v3, 5
    goto/16 :L21
  :L7
    const/4 v3, 6
    goto/16 :L21
  :L8
    const-wide/32 v3, 10000000
    cmp-long v5, p1, v3
    if-gez v5, :L9
    const/4 v3, 7
    goto/16 :L21
  :L9
    const/16 v3, 8
    goto/16 :L21
  :L10
    const-wide v3, 1000000000000L
    cmp-long v5, p1, v3
    if-gez v5, :L14
    const-wide v3, 10000000000L
    cmp-long v5, p1, v3
    if-gez v5, :L12
    const-wide/32 v3, 1000000000
    cmp-long v5, p1, v3
    if-gez v5, :L11
    const/16 v3, 9
    goto :L21
  :L11
    const/16 v3, 10
    goto :L21
  :L12
    const-wide v3, 100000000000L
    cmp-long v5, p1, v3
    if-gez v5, :L13
    const/16 v3, 11
    goto :L21
  :L13
    const/16 v3, 12
    goto :L21
  :L14
    const-wide v3, 1000000000000000L
    cmp-long v5, p1, v3
    if-gez v5, :L17
    const-wide v3, 10000000000000L
    cmp-long v5, p1, v3
    if-gez v5, :L15
    const/16 v3, 13
    goto :L21
  :L15
    const-wide v3, 100000000000000L
    cmp-long v5, p1, v3
    if-gez v5, :L16
    const/16 v3, 14
    goto :L21
  :L16
    const/16 v3, 15
    goto :L21
  :L17
    const-wide v3, 100000000000000000L
    cmp-long v5, p1, v3
    if-gez v5, :L19
    const-wide v3, 10000000000000000L
    cmp-long v5, p1, v3
    if-gez v5, :L18
    const/16 v3, 16
    goto :L21
  :L18
    const/16 v3, 17
    goto :L21
  :L19
    const-wide v3, 1000000000000000000L
    cmp-long v5, p1, v3
    if-gez v5, :L20
    const/16 v3, 18
    goto :L21
  :L20
    const/16 v3, 19
  :L21
    if-eqz v2, :L22
    add-int/lit8 v3, v3, 1
  :L22
  .line 4
    invoke-virtual { p0, v3 }, Lokio/Buffer;->writableSegment(I)Lokio/Segment;
    move-result-object v4
  .line 5
    iget-object v5, v4, Lokio/Segment;->data:[B
  .line 6
    iget v8, v4, Lokio/Segment;->limit:I
    add-int/2addr v8, v3
  :L23
    cmp-long v9, p1, v0
    if-eqz v9, :L24
  .line 7
    rem-long v9, p1, v6
    long-to-int v10, v9
    add-int/lit8 v8, v8, -1
  .line 8
    sget-object v9, Lokio/Buffer;->DIGITS:[B
    aget-byte v9, v9, v10
    aput-byte v9, v5, v8
  .line 9
    div-long/2addr p1, v6
    goto :L23
  :L24
    if-eqz v2, :L25
    add-int/lit8 v8, v8, -1
    const/16 p1, 45
  .line 10
    aput-byte p1, v5, v8
  :L25
  .line 11
    iget p1, v4, Lokio/Segment;->limit:I
    add-int/2addr p1, v3
    iput p1, v4, Lokio/Segment;->limit:I
  .line 12
    iget-wide p1, p0, Lokio/Buffer;->size:J
    int-to-long v0, v3
    add-long/2addr p1, v0
    iput-wide p1, p0, Lokio/Buffer;->size:J
    return-object p0
.end method

.method public bridge synthetic writeDecimalLong(J)Lokio/BufferedSink;
  .registers 3
  .line 1
    invoke-virtual { p0, p1, p2 }, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;
    move-result-object p1
    return-object p1
.end method

.method public writeHexadecimalUnsignedLong(J)Lokio/Buffer;
  .registers 12
    const-wide/16 v0, 0
    cmp-long v2, p1, v0
    if-nez v2, :L0
    const/16 p1, 48
  .line 2
    invoke-virtual { p0, p1 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
    move-result-object p1
    return-object p1
  :L0
  .line 3
    invoke-static { p1, p2 }, Ljava/lang/Long;->highestOneBit(J)J
    move-result-wide v0
    invoke-static { v0, v1 }, Ljava/lang/Long;->numberOfTrailingZeros(J)I
    move-result v0
    const/4 v1, 4
    div-int/2addr v0, v1
    add-int/lit8 v0, v0, 1
  .line 4
    invoke-virtual { p0, v0 }, Lokio/Buffer;->writableSegment(I)Lokio/Segment;
    move-result-object v2
  .line 5
    iget-object v3, v2, Lokio/Segment;->data:[B
  .line 6
    iget v4, v2, Lokio/Segment;->limit:I
    add-int v5, v4, v0
    add-int/lit8 v5, v5, -1
  :L1
    if-lt v5, v4, :L2
  .line 7
    sget-object v6, Lokio/Buffer;->DIGITS:[B
    const-wide/16 v7, 15
    and-long/2addr v7, p1
    long-to-int v8, v7
    aget-byte v6, v6, v8
    aput-byte v6, v3, v5
    ushr-long/2addr p1, v1
    add-int/lit8 v5, v5, -1
    goto :L1
  :L2
  .line 8
    iget p1, v2, Lokio/Segment;->limit:I
    add-int/2addr p1, v0
    iput p1, v2, Lokio/Segment;->limit:I
  .line 9
    iget-wide p1, p0, Lokio/Buffer;->size:J
    int-to-long v0, v0
    add-long/2addr p1, v0
    iput-wide p1, p0, Lokio/Buffer;->size:J
    return-object p0
.end method

.method public bridge synthetic writeHexadecimalUnsignedLong(J)Lokio/BufferedSink;
  .registers 3
  .line 1
    invoke-virtual { p0, p1, p2 }, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;
    move-result-object p1
    return-object p1
.end method

.method public writeInt(I)Lokio/Buffer;
  .registers 7
    const/4 v0, 4
  .line 2
    invoke-virtual { p0, v0 }, Lokio/Buffer;->writableSegment(I)Lokio/Segment;
    move-result-object v0
  .line 3
    iget-object v1, v0, Lokio/Segment;->data:[B
  .line 4
    iget v2, v0, Lokio/Segment;->limit:I
    add-int/lit8 v3, v2, 1
    ushr-int/lit8 v4, p1, 24
    and-int/lit16 v4, v4, 255
    int-to-byte v4, v4
  .line 5
    aput-byte v4, v1, v2
    add-int/lit8 v2, v3, 1
    ushr-int/lit8 v4, p1, 16
    and-int/lit16 v4, v4, 255
    int-to-byte v4, v4
  .line 6
    aput-byte v4, v1, v3
    add-int/lit8 v3, v2, 1
    ushr-int/lit8 v4, p1, 8
    and-int/lit16 v4, v4, 255
    int-to-byte v4, v4
  .line 7
    aput-byte v4, v1, v2
    add-int/lit8 v2, v3, 1
    and-int/lit16 p1, p1, 255
    int-to-byte p1, p1
  .line 8
    aput-byte p1, v1, v3
  .line 9
    iput v2, v0, Lokio/Segment;->limit:I
  .line 10
    iget-wide v0, p0, Lokio/Buffer;->size:J
    const-wide/16 v2, 4
    add-long/2addr v0, v2
    iput-wide v0, p0, Lokio/Buffer;->size:J
    return-object p0
.end method

.method public bridge synthetic writeInt(I)Lokio/BufferedSink;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lokio/Buffer;->writeInt(I)Lokio/Buffer;
    move-result-object p1
    return-object p1
.end method

.method public writeIntLe(I)Lokio/Buffer;
  .registers 2
  .line 2
    invoke-static { p1 }, Lokio/Util;->reverseBytesInt(I)I
    move-result p1
    invoke-virtual { p0, p1 }, Lokio/Buffer;->writeInt(I)Lokio/Buffer;
    move-result-object p1
    return-object p1
.end method

.method public bridge synthetic writeIntLe(I)Lokio/BufferedSink;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lokio/Buffer;->writeIntLe(I)Lokio/Buffer;
    move-result-object p1
    return-object p1
.end method

.method public writeLong(J)Lokio/Buffer;
  .registers 12
    const/16 v0, 8
  .line 2
    invoke-virtual { p0, v0 }, Lokio/Buffer;->writableSegment(I)Lokio/Segment;
    move-result-object v1
  .line 3
    iget-object v2, v1, Lokio/Segment;->data:[B
  .line 4
    iget v3, v1, Lokio/Segment;->limit:I
    add-int/lit8 v4, v3, 1
    const/16 v5, 56
    ushr-long v5, p1, v5
    const-wide/16 v7, 255
    and-long/2addr v5, v7
    long-to-int v6, v5
    int-to-byte v5, v6
  .line 5
    aput-byte v5, v2, v3
    add-int/lit8 v3, v4, 1
    const/16 v5, 48
    ushr-long v5, p1, v5
    and-long/2addr v5, v7
    long-to-int v6, v5
    int-to-byte v5, v6
  .line 6
    aput-byte v5, v2, v4
    add-int/lit8 v4, v3, 1
    const/16 v5, 40
    ushr-long v5, p1, v5
    and-long/2addr v5, v7
    long-to-int v6, v5
    int-to-byte v5, v6
  .line 7
    aput-byte v5, v2, v3
    add-int/lit8 v3, v4, 1
    const/16 v5, 32
    ushr-long v5, p1, v5
    and-long/2addr v5, v7
    long-to-int v6, v5
    int-to-byte v5, v6
  .line 8
    aput-byte v5, v2, v4
    add-int/lit8 v4, v3, 1
    const/16 v5, 24
    ushr-long v5, p1, v5
    and-long/2addr v5, v7
    long-to-int v6, v5
    int-to-byte v5, v6
  .line 9
    aput-byte v5, v2, v3
    add-int/lit8 v3, v4, 1
    const/16 v5, 16
    ushr-long v5, p1, v5
    and-long/2addr v5, v7
    long-to-int v6, v5
    int-to-byte v5, v6
  .line 10
    aput-byte v5, v2, v4
    add-int/lit8 v4, v3, 1
    ushr-long v5, p1, v0
    and-long/2addr v5, v7
    long-to-int v0, v5
    int-to-byte v0, v0
  .line 11
    aput-byte v0, v2, v3
    add-int/lit8 v0, v4, 1
    and-long/2addr p1, v7
    long-to-int p2, p1
    int-to-byte p1, p2
  .line 12
    aput-byte p1, v2, v4
  .line 13
    iput v0, v1, Lokio/Segment;->limit:I
  .line 14
    iget-wide p1, p0, Lokio/Buffer;->size:J
    const-wide/16 v0, 8
    add-long/2addr p1, v0
    iput-wide p1, p0, Lokio/Buffer;->size:J
    return-object p0
.end method

.method public bridge synthetic writeLong(J)Lokio/BufferedSink;
  .registers 3
  .line 1
    invoke-virtual { p0, p1, p2 }, Lokio/Buffer;->writeLong(J)Lokio/Buffer;
    move-result-object p1
    return-object p1
.end method

.method public writeLongLe(J)Lokio/Buffer;
  .registers 3
  .line 2
    invoke-static { p1, p2 }, Lokio/Util;->reverseBytesLong(J)J
    move-result-wide p1
    invoke-virtual { p0, p1, p2 }, Lokio/Buffer;->writeLong(J)Lokio/Buffer;
    move-result-object p1
    return-object p1
.end method

.method public bridge synthetic writeLongLe(J)Lokio/BufferedSink;
  .registers 3
  .line 1
    invoke-virtual { p0, p1, p2 }, Lokio/Buffer;->writeLongLe(J)Lokio/Buffer;
    move-result-object p1
    return-object p1
.end method

.method public writeShort(I)Lokio/Buffer;
  .registers 7
    const/4 v0, 2
  .line 2
    invoke-virtual { p0, v0 }, Lokio/Buffer;->writableSegment(I)Lokio/Segment;
    move-result-object v0
  .line 3
    iget-object v1, v0, Lokio/Segment;->data:[B
  .line 4
    iget v2, v0, Lokio/Segment;->limit:I
    add-int/lit8 v3, v2, 1
    ushr-int/lit8 v4, p1, 8
    and-int/lit16 v4, v4, 255
    int-to-byte v4, v4
  .line 5
    aput-byte v4, v1, v2
    add-int/lit8 v2, v3, 1
    and-int/lit16 p1, p1, 255
    int-to-byte p1, p1
  .line 6
    aput-byte p1, v1, v3
  .line 7
    iput v2, v0, Lokio/Segment;->limit:I
  .line 8
    iget-wide v0, p0, Lokio/Buffer;->size:J
    const-wide/16 v2, 2
    add-long/2addr v0, v2
    iput-wide v0, p0, Lokio/Buffer;->size:J
    return-object p0
.end method

.method public bridge synthetic writeShort(I)Lokio/BufferedSink;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lokio/Buffer;->writeShort(I)Lokio/Buffer;
    move-result-object p1
    return-object p1
.end method

.method public writeShortLe(I)Lokio/Buffer;
  .registers 2
    int-to-short p1, p1
  .line 2
    invoke-static { p1 }, Lokio/Util;->reverseBytesShort(S)S
    move-result p1
    invoke-virtual { p0, p1 }, Lokio/Buffer;->writeShort(I)Lokio/Buffer;
    move-result-object p1
    return-object p1
.end method

.method public bridge synthetic writeShortLe(I)Lokio/BufferedSink;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lokio/Buffer;->writeShortLe(I)Lokio/Buffer;
    move-result-object p1
    return-object p1
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;
  .registers 6
    if-eqz p1, :L5
    if-ltz p2, :L4
    if-lt p3, p2, :L3
  .line 4
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result v0
    if-gt p3, v0, :L2
    if-eqz p4, :L1
  .line 5
    sget-object v0, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;
    invoke-virtual { p4, v0 }, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    invoke-virtual { p0, p1, p2, p3 }, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;
    move-result-object p1
    return-object p1
  :L0
  .line 6
    invoke-virtual { p1, p2, p3 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p1, p4 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object p1
    const/4 p2, 0
  .line 7
    array-length p3, p1
    invoke-virtual { p0, p1, p2, p3 }, Lokio/Buffer;->write([BII)Lokio/Buffer;
    move-result-object p1
    return-object p1
  :L1
  .line 8
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "charset == null"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L2
  .line 9
    new-instance p2, Ljava/lang/IllegalArgumentException;
    new-instance p4, Ljava/lang/StringBuilder;
    invoke-direct { p4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "endIndex > string.length: "
    invoke-virtual { p4, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p4, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p3, " > "
    invoke-virtual { p4, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 10
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result p1
    invoke-virtual { p4, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p2, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p2
  :L3
  .line 11
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance p4, Ljava/lang/StringBuilder;
    invoke-direct { p4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "endIndex < beginIndex: "
    invoke-virtual { p4, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p4, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p3, " < "
    invoke-virtual { p4, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p4, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L4
  .line 12
    new-instance p1, Ljava/lang/IllegalAccessError;
    new-instance p3, Ljava/lang/StringBuilder;
    invoke-direct { p3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p4, "beginIndex < 0: "
    invoke-virtual { p3, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V
    throw p1
  :L5
  .line 13
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "string == null"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;
  .registers 5
  .line 3
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result v0
    const/4 v1, 0
    invoke-virtual { p0, p1, v1, v0, p2 }, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;
    move-result-object p1
    return-object p1
.end method

.method public bridge synthetic writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/BufferedSink;
  .registers 5
  .line 1
    invoke-virtual { p0, p1, p2, p3, p4 }, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;
    move-result-object p1
    return-object p1
.end method

.method public bridge synthetic writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/BufferedSink;
  .registers 3
  .line 2
    invoke-virtual { p0, p1, p2 }, Lokio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;
    move-result-object p1
    return-object p1
.end method

.method public final writeTo(Ljava/io/OutputStream;)Lokio/Buffer;
  .registers 4
  .line 1
    iget-wide v0, p0, Lokio/Buffer;->size:J
    invoke-virtual { p0, p1, v0, v1 }, Lokio/Buffer;->writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;
    move-result-object p1
    return-object p1
.end method

.method public final writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;
  .registers 11
    if-eqz p1, :L2
  .line 2
    iget-wide v0, p0, Lokio/Buffer;->size:J
    const-wide/16 v2, 0
    move-wide v4, p2
    invoke-static/range { v0 .. v5 }, Lokio/Util;->checkOffsetAndCount(JJJ)V
  .line 3
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;
  :L0
    const-wide/16 v1, 0
    cmp-long v3, p2, v1
    if-lez v3, :L1
  .line 4
    iget v1, v0, Lokio/Segment;->limit:I
    iget v2, v0, Lokio/Segment;->pos:I
    sub-int/2addr v1, v2
    int-to-long v1, v1
    invoke-static { p2, p3, v1, v2 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v1
    long-to-int v2, v1
  .line 5
    iget-object v1, v0, Lokio/Segment;->data:[B
    iget v3, v0, Lokio/Segment;->pos:I
    invoke-virtual { p1, v1, v3, v2 }, Ljava/io/OutputStream;->write([BII)V
  .line 6
    iget v1, v0, Lokio/Segment;->pos:I
    add-int/2addr v1, v2
    iput v1, v0, Lokio/Segment;->pos:I
  .line 7
    iget-wide v3, p0, Lokio/Buffer;->size:J
    int-to-long v5, v2
    sub-long/2addr v3, v5
    iput-wide v3, p0, Lokio/Buffer;->size:J
    sub-long/2addr p2, v5
  .line 8
    iget v2, v0, Lokio/Segment;->limit:I
    if-ne v1, v2, :L0
  .line 9
    invoke-virtual { v0 }, Lokio/Segment;->pop()Lokio/Segment;
    move-result-object v1
    iput-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;
  .line 10
    invoke-static { v0 }, Lokio/SegmentPool;->recycle(Lokio/Segment;)V
    move-object v0, v1
    goto :L0
  :L1
    return-object p0
  :L2
  .line 11
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "out == null"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    goto :L4
  :L3
    throw p1
  :L4
    goto :L3
.end method

.method public writeUtf8(Ljava/lang/String;)Lokio/Buffer;
  .registers 4
  .line 3
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result v0
    const/4 v1, 0
    invoke-virtual { p0, p1, v1, v0 }, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;
    move-result-object p1
    return-object p1
.end method

.method public writeUtf8(Ljava/lang/String;II)Lokio/Buffer;
  .registers 11
    if-eqz p1, :L17
    if-ltz p2, :L16
    if-lt p3, p2, :L15
  .line 4
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result v0
    if-gt p3, v0, :L14
  :L0
    if-ge p2, p3, :L13
  .line 5
    invoke-virtual { p1, p2 }, Ljava/lang/String;->charAt(I)C
    move-result v0
    const/16 v1, 128
    if-ge v0, v1, :L4
    const/4 v2, 1
  .line 6
    invoke-virtual { p0, v2 }, Lokio/Buffer;->writableSegment(I)Lokio/Segment;
    move-result-object v2
  .line 7
    iget-object v3, v2, Lokio/Segment;->data:[B
  .line 8
    iget v4, v2, Lokio/Segment;->limit:I
    sub-int/2addr v4, p2
    rsub-int v5, v4, 8192
  .line 9
    invoke-static { p3, v5 }, Ljava/lang/Math;->min(II)I
    move-result v5
    add-int/lit8 v6, p2, 1
    add-int/2addr p2, v4
    int-to-byte v0, v0
  .line 10
    aput-byte v0, v3, p2
  :L1
    if-ge v6, v5, :L3
  .line 11
    invoke-virtual { p1, v6 }, Ljava/lang/String;->charAt(I)C
    move-result p2
    if-lt p2, v1, :L2
    goto :L3
  :L2
    add-int/lit8 v0, v6, 1
    add-int/2addr v6, v4
    int-to-byte p2, p2
  .line 12
    aput-byte p2, v3, v6
    move v6, v0
    goto :L1
  :L3
    add-int/2addr v4, v6
  .line 13
    iget p2, v2, Lokio/Segment;->limit:I
    sub-int/2addr v4, p2
    add-int/2addr p2, v4
  .line 14
    iput p2, v2, Lokio/Segment;->limit:I
  .line 15
    iget-wide v0, p0, Lokio/Buffer;->size:J
    int-to-long v2, v4
    add-long/2addr v0, v2
    iput-wide v0, p0, Lokio/Buffer;->size:J
    move p2, v6
    goto :L0
  :L4
    const/16 v2, 2048
    if-ge v0, v2, :L6
    shr-int/lit8 v2, v0, 6
    or-int/lit16 v2, v2, 192
  .line 16
    invoke-virtual { p0, v2 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
    and-int/lit8 v0, v0, 63
    or-int/2addr v0, v1
  .line 17
    invoke-virtual { p0, v0 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
  :L5
    add-int/lit8 p2, p2, 1
    goto :L0
  :L6
    const v2, 55296
    const/16 v3, 63
    if-lt v0, v2, :L12
    const v2, 57343
    if-le v0, v2, :L7
    goto :L12
  :L7
    add-int/lit8 v4, p2, 1
    if-ge v4, p3, :L8
  .line 18
    invoke-virtual { p1, v4 }, Ljava/lang/String;->charAt(I)C
    move-result v5
    goto :L9
  :L8
    const/4 v5, 0
  :L9
    const v6, 56319
    if-gt v0, v6, :L11
    const v6, 56320
    if-lt v5, v6, :L11
    if-le v5, v2, :L10
    goto :L11
  :L10
    const/high16 v2, 1
    const v4, -55297
    and-int/2addr v0, v4
    shl-int/lit8 v0, v0, 10
    const v4, -56321
    and-int/2addr v4, v5
    or-int/2addr v0, v4
    add-int/2addr v0, v2
    shr-int/lit8 v2, v0, 18
    or-int/lit16 v2, v2, 240
  .line 19
    invoke-virtual { p0, v2 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
    shr-int/lit8 v2, v0, 12
    and-int/2addr v2, v3
    or-int/2addr v2, v1
  .line 20
    invoke-virtual { p0, v2 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
    shr-int/lit8 v2, v0, 6
    and-int/2addr v2, v3
    or-int/2addr v2, v1
  .line 21
    invoke-virtual { p0, v2 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
    and-int/2addr v0, v3
    or-int/2addr v0, v1
  .line 22
    invoke-virtual { p0, v0 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
    add-int/lit8 p2, p2, 2
    goto/16 :L0
  :L11
  .line 23
    invoke-virtual { p0, v3 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
    move p2, v4
    goto/16 :L0
  :L12
    shr-int/lit8 v2, v0, 12
    or-int/lit16 v2, v2, 224
  .line 24
    invoke-virtual { p0, v2 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
    shr-int/lit8 v2, v0, 6
    and-int/2addr v2, v3
    or-int/2addr v2, v1
  .line 25
    invoke-virtual { p0, v2 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
    and-int/lit8 v0, v0, 63
    or-int/2addr v0, v1
  .line 26
    invoke-virtual { p0, v0 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
    goto :L5
  :L13
    return-object p0
  :L14
  .line 27
    new-instance p2, Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "endIndex > string.length: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p3, " > "
    invoke-virtual { v0, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 28
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result p1
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p2, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p2
  :L15
  .line 29
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "endIndex < beginIndex: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p3, " < "
    invoke-virtual { v0, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L16
  .line 30
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance p3, Ljava/lang/StringBuilder;
    invoke-direct { p3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "beginIndex < 0: "
    invoke-virtual { p3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L17
  .line 31
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "string == null"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    goto :L19
  :L18
    throw p1
  :L19
    goto :L18
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;
    move-result-object p1
    return-object p1
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;
  .registers 4
  .line 2
    invoke-virtual { p0, p1, p2, p3 }, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;
    move-result-object p1
    return-object p1
.end method

.method public writeUtf8CodePoint(I)Lokio/Buffer;
  .registers 5
    const/16 v0, 128
    if-ge p1, v0, :L0
  .line 2
    invoke-virtual { p0, p1 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
    goto :L4
  :L0
    const/16 v1, 2048
    const/16 v2, 63
    if-ge p1, v1, :L1
    shr-int/lit8 v1, p1, 6
    or-int/lit16 v1, v1, 192
  .line 3
    invoke-virtual { p0, v1 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
    and-int/2addr p1, v2
    or-int/2addr p1, v0
  .line 4
    invoke-virtual { p0, p1 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
    goto :L4
  :L1
    const/high16 v1, 1
    if-ge p1, v1, :L3
    const v1, 55296
    if-lt p1, v1, :L2
    const v1, 57343
    if-gt p1, v1, :L2
  .line 5
    invoke-virtual { p0, v2 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
    goto :L4
  :L2
    shr-int/lit8 v1, p1, 12
    or-int/lit16 v1, v1, 224
  .line 6
    invoke-virtual { p0, v1 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
    shr-int/lit8 v1, p1, 6
    and-int/2addr v1, v2
    or-int/2addr v1, v0
  .line 7
    invoke-virtual { p0, v1 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
    and-int/2addr p1, v2
    or-int/2addr p1, v0
  .line 8
    invoke-virtual { p0, p1 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
    goto :L4
  :L3
    const v1, 1114111
    if-gt p1, v1, :L5
    shr-int/lit8 v1, p1, 18
    or-int/lit16 v1, v1, 240
  .line 9
    invoke-virtual { p0, v1 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
    shr-int/lit8 v1, p1, 12
    and-int/2addr v1, v2
    or-int/2addr v1, v0
  .line 10
    invoke-virtual { p0, v1 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
    shr-int/lit8 v1, p1, 6
    and-int/2addr v1, v2
    or-int/2addr v1, v0
  .line 11
    invoke-virtual { p0, v1 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
    and-int/2addr p1, v2
    or-int/2addr p1, v0
  .line 12
    invoke-virtual { p0, p1 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
  :L4
    return-object p0
  :L5
  .line 13
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Unexpected code point: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 14
    invoke-static { p1 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public bridge synthetic writeUtf8CodePoint(I)Lokio/BufferedSink;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;
    move-result-object p1
    return-object p1
.end method
