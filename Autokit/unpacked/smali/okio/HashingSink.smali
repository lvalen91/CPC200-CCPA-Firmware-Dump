.class public final Lokio/HashingSink;
.super Lokio/ForwardingSink;
.source "SourceFile"

.field private final mac:Ljavax/crypto/Mac;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.field private final messageDigest:Ljava/security/MessageDigest;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.method private constructor <init>(Lokio/Sink;Ljava/lang/String;)V
  .catch Ljava/security/NoSuchAlgorithmException; { :L0 .. :L1 } :L2
  .registers 3
  .line 1
    invoke-direct { p0, p1 }, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V
  :L0
  .line 2
    invoke-static { p2 }, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    move-result-object p1
    iput-object p1, p0, Lokio/HashingSink;->messageDigest:Ljava/security/MessageDigest;
    const/4 p1, 0
  .line 3
    iput-object p1, p0, Lokio/HashingSink;->mac:Ljavax/crypto/Mac;
  :L1
    return-void
  :L2
  .line 4
    new-instance p1, Ljava/lang/AssertionError;
    invoke-direct { p1 }, Ljava/lang/AssertionError;-><init>()V
    throw p1
.end method

.method private constructor <init>(Lokio/Sink;Lokio/ByteString;Ljava/lang/String;)V
  .catch Ljava/security/NoSuchAlgorithmException; { :L0 .. :L1 } :L3
  .catch Ljava/security/InvalidKeyException; { :L0 .. :L1 } :L2
  .registers 5
  .line 5
    invoke-direct { p0, p1 }, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V
  :L0
  .line 6
    invoke-static { p3 }, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
    move-result-object p1
    iput-object p1, p0, Lokio/HashingSink;->mac:Ljavax/crypto/Mac;
  .line 7
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual { p2 }, Lokio/ByteString;->toByteArray()[B
    move-result-object p2
    invoke-direct { v0, p2, p3 }, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    invoke-virtual { p1, v0 }, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    const/4 p1, 0
  .line 8
    iput-object p1, p0, Lokio/HashingSink;->messageDigest:Ljava/security/MessageDigest;
  :L1
    return-void
  :L2
    move-exception p1
  .line 9
    new-instance p2, Ljava/lang/IllegalArgumentException;
    invoke-direct { p2, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V
    throw p2
  :L3
  .line 10
    new-instance p1, Ljava/lang/AssertionError;
    invoke-direct { p1 }, Ljava/lang/AssertionError;-><init>()V
    throw p1
.end method

.method public static hmacSha1(Lokio/Sink;Lokio/ByteString;)Lokio/HashingSink;
  .registers 4
  .line 1
    new-instance v0, Lokio/HashingSink;
    const-string v1, "HmacSHA1"
    invoke-direct { v0, p0, p1, v1 }, Lokio/HashingSink;-><init>(Lokio/Sink;Lokio/ByteString;Ljava/lang/String;)V
    return-object v0
.end method

.method public static hmacSha256(Lokio/Sink;Lokio/ByteString;)Lokio/HashingSink;
  .registers 4
  .line 1
    new-instance v0, Lokio/HashingSink;
    const-string v1, "HmacSHA256"
    invoke-direct { v0, p0, p1, v1 }, Lokio/HashingSink;-><init>(Lokio/Sink;Lokio/ByteString;Ljava/lang/String;)V
    return-object v0
.end method

.method public static hmacSha512(Lokio/Sink;Lokio/ByteString;)Lokio/HashingSink;
  .registers 4
  .line 1
    new-instance v0, Lokio/HashingSink;
    const-string v1, "HmacSHA512"
    invoke-direct { v0, p0, p1, v1 }, Lokio/HashingSink;-><init>(Lokio/Sink;Lokio/ByteString;Ljava/lang/String;)V
    return-object v0
.end method

.method public static md5(Lokio/Sink;)Lokio/HashingSink;
  .registers 3
  .line 1
    new-instance v0, Lokio/HashingSink;
    const-string v1, "MD5"
    invoke-direct { v0, p0, v1 }, Lokio/HashingSink;-><init>(Lokio/Sink;Ljava/lang/String;)V
    return-object v0
.end method

.method public static sha1(Lokio/Sink;)Lokio/HashingSink;
  .registers 3
  .line 1
    new-instance v0, Lokio/HashingSink;
    const-string v1, "SHA-1"
    invoke-direct { v0, p0, v1 }, Lokio/HashingSink;-><init>(Lokio/Sink;Ljava/lang/String;)V
    return-object v0
.end method

.method public static sha256(Lokio/Sink;)Lokio/HashingSink;
  .registers 3
  .line 1
    new-instance v0, Lokio/HashingSink;
    const-string v1, "SHA-256"
    invoke-direct { v0, p0, v1 }, Lokio/HashingSink;-><init>(Lokio/Sink;Ljava/lang/String;)V
    return-object v0
.end method

.method public static sha512(Lokio/Sink;)Lokio/HashingSink;
  .registers 3
  .line 1
    new-instance v0, Lokio/HashingSink;
    const-string v1, "SHA-512"
    invoke-direct { v0, p0, v1 }, Lokio/HashingSink;-><init>(Lokio/Sink;Ljava/lang/String;)V
    return-object v0
.end method

.method public final hash()Lokio/ByteString;
  .registers 2
  .line 1
    iget-object v0, p0, Lokio/HashingSink;->messageDigest:Ljava/security/MessageDigest;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Ljava/security/MessageDigest;->digest()[B
    move-result-object v0
    goto :L1
  :L0
    iget-object v0, p0, Lokio/HashingSink;->mac:Ljavax/crypto/Mac;
    invoke-virtual { v0 }, Ljavax/crypto/Mac;->doFinal()[B
    move-result-object v0
  :L1
  .line 2
    invoke-static { v0 }, Lokio/ByteString;->of([B)Lokio/ByteString;
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
  .line 2
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;
    const-wide/16 v1, 0
  :L0
    cmp-long v3, v1, p2
    if-gez v3, :L3
    sub-long v3, p2, v1
  .line 3
    iget v5, v0, Lokio/Segment;->limit:I
    iget v6, v0, Lokio/Segment;->pos:I
    sub-int/2addr v5, v6
    int-to-long v5, v5
    invoke-static { v3, v4, v5, v6 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v3
    long-to-int v4, v3
  .line 4
    iget-object v3, p0, Lokio/HashingSink;->messageDigest:Ljava/security/MessageDigest;
    if-eqz v3, :L1
  .line 5
    iget-object v5, v0, Lokio/Segment;->data:[B
    iget v6, v0, Lokio/Segment;->pos:I
    invoke-virtual { v3, v5, v6, v4 }, Ljava/security/MessageDigest;->update([BII)V
    goto :L2
  :L1
  .line 6
    iget-object v3, p0, Lokio/HashingSink;->mac:Ljavax/crypto/Mac;
    iget-object v5, v0, Lokio/Segment;->data:[B
    iget v6, v0, Lokio/Segment;->pos:I
    invoke-virtual { v3, v5, v6, v4 }, Ljavax/crypto/Mac;->update([BII)V
  :L2
    int-to-long v3, v4
    add-long/2addr v1, v3
  .line 7
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;
    goto :L0
  :L3
  .line 8
    invoke-super { p0, p1, p2, p3 }, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V
    return-void
.end method
