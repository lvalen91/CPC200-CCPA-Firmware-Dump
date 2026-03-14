.class public Lokio/ByteString;
.super Ljava/lang/Object;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Ljava/io/Serializable;",
    "Ljava/lang/Comparable<",
    "Lokio/ByteString;",
    ">;"
  }
.end annotation

.field public final static EMPTY:Lokio/ByteString;

.field final static HEX_DIGITS:[C

.field private final static serialVersionUID:J = 1L

.field final data:[B

.field transient hashCode:I

.field transient utf8:Ljava/lang/String;

.method static constructor <clinit>()V
  .registers 1
    const/16 v0, 16
    new-array v0, v0, [C
  .line 1
    fill-array-data v0, :L0
    sput-object v0, Lokio/ByteString;->HEX_DIGITS:[C
    const/4 v0, 0
    new-array v0, v0, [B
  .line 2
    invoke-static { v0 }, Lokio/ByteString;->of([B)Lokio/ByteString;
    move-result-object v0
    sput-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;
    return-void
  :L0
  .array-data 2
    48t 0t
    49t 0t
    50t 0t
    51t 0t
    52t 0t
    53t 0t
    54t 0t
    55t 0t
    56t 0t
    57t 0t
    97t 0t
    98t 0t
    99t 0t
    100t 0t
    101t 0t
    102t 0t
  .end array-data
.end method

.method constructor <init>([B)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Lokio/ByteString;->data:[B
    return-void
.end method

.method static codePointIndexToCharIndex(Ljava/lang/String;I)I
  .registers 7
  .line 1
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v1, v0, :L5
    if-ne v2, p1, :L1
    return v1
  :L1
  .line 2
    invoke-virtual { p0, v1 }, Ljava/lang/String;->codePointAt(I)I
    move-result v3
  .line 3
    invoke-static { v3 }, Ljava/lang/Character;->isISOControl(I)Z
    move-result v4
    if-eqz v4, :L2
    const/16 v4, 10
    if-eq v3, v4, :L2
    const/16 v4, 13
    if-ne v3, v4, :L3
  :L2
    const v4, 65533
    if-ne v3, v4, :L4
  :L3
    const/4 p0, -1
    return p0
  :L4
    add-int/lit8 v2, v2, 1
  .line 4
    invoke-static { v3 }, Ljava/lang/Character;->charCount(I)I
    move-result v3
    add-int/2addr v1, v3
    goto :L0
  :L5
  .line 5
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result p0
    return p0
.end method

.method public static decodeBase64(Ljava/lang/String;)Lokio/ByteString;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 2
    if-eqz p0, :L2
  .line 1
    invoke-static { p0 }, Lokio/Base64;->decode(Ljava/lang/String;)[B
    move-result-object p0
    if-eqz p0, :L0
  .line 2
    new-instance v0, Lokio/ByteString;
    invoke-direct { v0, p0 }, Lokio/ByteString;-><init>([B)V
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
  :L2
  .line 3
    new-instance p0, Ljava/lang/IllegalArgumentException;
    const-string v0, "base64 == null"
    invoke-direct { p0, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
.end method

.method public static decodeHex(Ljava/lang/String;)Lokio/ByteString;
  .registers 6
    if-eqz p0, :L3
  .line 1
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v0
    rem-int/lit8 v0, v0, 2
    if-nez v0, :L2
  .line 2
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v0
    div-int/lit8 v0, v0, 2
    new-array v1, v0, [B
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L1
    mul-int/lit8 v3, v2, 2
  .line 3
    invoke-virtual { p0, v3 }, Ljava/lang/String;->charAt(I)C
    move-result v4
    invoke-static { v4 }, Lokio/ByteString;->decodeHexDigit(C)I
    move-result v4
    shl-int/lit8 v4, v4, 4
    add-int/lit8 v3, v3, 1
  .line 4
    invoke-virtual { p0, v3 }, Ljava/lang/String;->charAt(I)C
    move-result v3
    invoke-static { v3 }, Lokio/ByteString;->decodeHexDigit(C)I
    move-result v3
    add-int/2addr v4, v3
    int-to-byte v3, v4
  .line 5
    aput-byte v3, v1, v2
    add-int/lit8 v2, v2, 1
    goto :L0
  :L1
  .line 6
    invoke-static { v1 }, Lokio/ByteString;->of([B)Lokio/ByteString;
    move-result-object p0
    return-object p0
  :L2
  .line 7
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Unexpected hex string: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-direct { v0, p0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L3
  .line 8
    new-instance p0, Ljava/lang/IllegalArgumentException;
    const-string v0, "hex == null"
    invoke-direct { p0, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    goto :L5
  :L4
    throw p0
  :L5
    goto :L4
.end method

.method private static decodeHexDigit(C)I
  .registers 4
    const/16 v0, 48
    if-lt p0, v0, :L0
    const/16 v1, 57
    if-gt p0, v1, :L0
    sub-int/2addr p0, v0
    return p0
  :L0
    const/16 v0, 97
    if-lt p0, v0, :L2
    const/16 v1, 102
    if-gt p0, v1, :L2
  :L1
    sub-int/2addr p0, v0
    add-int/lit8 p0, p0, 10
    return p0
  :L2
    const/16 v0, 65
    if-lt p0, v0, :L3
    const/16 v1, 70
    if-gt p0, v1, :L3
    goto :L1
  :L3
  .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Unexpected hex digit: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-direct { v0, p0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    goto :L5
  :L4
    throw v0
  :L5
    goto :L4
.end method

.method private digest(Ljava/lang/String;)Lokio/ByteString;
  .catch Ljava/security/NoSuchAlgorithmException; { :L0 .. :L1 } :L2
  .registers 3
  :L0
  .line 1
    invoke-static { p1 }, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    move-result-object p1
    iget-object v0, p0, Lokio/ByteString;->data:[B
    invoke-virtual { p1, v0 }, Ljava/security/MessageDigest;->digest([B)[B
    move-result-object p1
    invoke-static { p1 }, Lokio/ByteString;->of([B)Lokio/ByteString;
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

.method public static encodeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/ByteString;
  .registers 3
    if-eqz p0, :L1
    if-eqz p1, :L0
  .line 1
    new-instance v0, Lokio/ByteString;
    invoke-virtual { p0, p1 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object p0
    invoke-direct { v0, p0 }, Lokio/ByteString;-><init>([B)V
    return-object v0
  :L0
  .line 2
    new-instance p0, Ljava/lang/IllegalArgumentException;
    const-string p1, "charset == null"
    invoke-direct { p0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
  :L1
  .line 3
    new-instance p0, Ljava/lang/IllegalArgumentException;
    const-string p1, "s == null"
    invoke-direct { p0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
.end method

.method public static encodeUtf8(Ljava/lang/String;)Lokio/ByteString;
  .registers 3
    if-eqz p0, :L0
  .line 1
    new-instance v0, Lokio/ByteString;
    sget-object v1, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;
    invoke-virtual { p0, v1 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object v1
    invoke-direct { v0, v1 }, Lokio/ByteString;-><init>([B)V
  .line 2
    iput-object p0, v0, Lokio/ByteString;->utf8:Ljava/lang/String;
    return-object v0
  :L0
  .line 3
    new-instance p0, Ljava/lang/IllegalArgumentException;
    const-string v0, "s == null"
    invoke-direct { p0, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
.end method

.method private hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
  .catch Ljava/security/NoSuchAlgorithmException; { :L0 .. :L1 } :L3
  .catch Ljava/security/InvalidKeyException; { :L0 .. :L1 } :L2
  .registers 5
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
    iget-object p1, p0, Lokio/ByteString;->data:[B
    invoke-virtual { v0, p1 }, Ljavax/crypto/Mac;->doFinal([B)[B
    move-result-object p1
    invoke-static { p1 }, Lokio/ByteString;->of([B)Lokio/ByteString;
    move-result-object p1
  :L1
    return-object p1
  :L2
    move-exception p1
  .line 4
    new-instance p2, Ljava/lang/IllegalArgumentException;
    invoke-direct { p2, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V
    throw p2
  :L3
    move-exception p1
  .line 5
    new-instance p2, Ljava/lang/AssertionError;
    invoke-direct { p2, p1 }, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    throw p2
.end method

.method public static of(Ljava/nio/ByteBuffer;)Lokio/ByteString;
  .registers 2
    if-eqz p0, :L0
  .line 8
    invoke-virtual { p0 }, Ljava/nio/ByteBuffer;->remaining()I
    move-result v0
    new-array v0, v0, [B
  .line 9
    invoke-virtual { p0, v0 }, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
  .line 10
    new-instance p0, Lokio/ByteString;
    invoke-direct { p0, v0 }, Lokio/ByteString;-><init>([B)V
    return-object p0
  :L0
  .line 11
    new-instance p0, Ljava/lang/IllegalArgumentException;
    const-string v0, "data == null"
    invoke-direct { p0, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
.end method

.method public static varargs of([B)Lokio/ByteString;
  .registers 2
    if-eqz p0, :L0
  .line 1
    new-instance v0, Lokio/ByteString;
    invoke-virtual { p0 }, [B->clone()Ljava/lang/Object;
    move-result-object p0
    check-cast p0, [B
    invoke-direct { v0, p0 }, Lokio/ByteString;-><init>([B)V
    return-object v0
  :L0
  .line 2
    new-instance p0, Ljava/lang/IllegalArgumentException;
    const-string v0, "data == null"
    invoke-direct { p0, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
.end method

.method public static of([BII)Lokio/ByteString;
  .registers 10
    if-eqz p0, :L0
  .line 3
    array-length v0, p0
    int-to-long v1, v0
    int-to-long v3, p1
    int-to-long v5, p2
    invoke-static/range { v1 .. v6 }, Lokio/Util;->checkOffsetAndCount(JJJ)V
  .line 4
    new-array v0, p2, [B
    const/4 v1, 0
  .line 5
    invoke-static { p0, p1, v0, v1, p2 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 6
    new-instance p0, Lokio/ByteString;
    invoke-direct { p0, v0 }, Lokio/ByteString;-><init>([B)V
    return-object p0
  :L0
  .line 7
    new-instance p0, Ljava/lang/IllegalArgumentException;
    const-string p1, "data == null"
    invoke-direct { p0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
.end method

.method public static read(Ljava/io/InputStream;I)Lokio/ByteString;
  .registers 6
    if-eqz p0, :L4
    if-ltz p1, :L3
  .line 1
    new-array v0, p1, [B
    const/4 v1, 0
  :L0
    if-ge v1, p1, :L2
    sub-int v2, p1, v1
  .line 2
    invoke-virtual { p0, v0, v1, v2 }, Ljava/io/InputStream;->read([BII)I
    move-result v2
    const/4 v3, -1
    if-eq v2, v3, :L1
    add-int/2addr v1, v2
    goto :L0
  :L1
  .line 3
    new-instance p0, Ljava/io/EOFException;
    invoke-direct { p0 }, Ljava/io/EOFException;-><init>()V
    throw p0
  :L2
  .line 4
    new-instance p0, Lokio/ByteString;
    invoke-direct { p0, v0 }, Lokio/ByteString;-><init>([B)V
    return-object p0
  :L3
  .line 5
    new-instance p0, Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "byteCount < 0: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
  :L4
  .line 6
    new-instance p0, Ljava/lang/IllegalArgumentException;
    const-string p1, "in == null"
    invoke-direct { p0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    goto :L6
  :L5
    throw p0
  :L6
    goto :L5
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
  .catch Ljava/lang/NoSuchFieldException; { :L0 .. :L1 } :L3
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L2
  .registers 4
  .line 1
    invoke-virtual { p1 }, Ljava/io/ObjectInputStream;->readInt()I
    move-result v0
  .line 2
    invoke-static { p1, v0 }, Lokio/ByteString;->read(Ljava/io/InputStream;I)Lokio/ByteString;
    move-result-object p1
  :L0
  .line 3
    const-class v0, Lokio/ByteString;
    const-string v1, "data"
    invoke-virtual { v0, v1 }, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v0
    const/4 v1, 1
  .line 4
    invoke-virtual { v0, v1 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
  .line 5
    iget-object p1, p1, Lokio/ByteString;->data:[B
    invoke-virtual { v0, p0, p1 }, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
  :L1
    return-void
  :L2
  .line 6
    new-instance p1, Ljava/lang/AssertionError;
    invoke-direct { p1 }, Ljava/lang/AssertionError;-><init>()V
    throw p1
  :L3
  .line 7
    new-instance p1, Ljava/lang/AssertionError;
    invoke-direct { p1 }, Ljava/lang/AssertionError;-><init>()V
    throw p1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lokio/ByteString;->data:[B
    array-length v0, v0
    invoke-virtual { p1, v0 }, Ljava/io/ObjectOutputStream;->writeInt(I)V
  .line 2
    iget-object v0, p0, Lokio/ByteString;->data:[B
    invoke-virtual { p1, v0 }, Ljava/io/ObjectOutputStream;->write([B)V
    return-void
.end method

.method public asByteBuffer()Ljava/nio/ByteBuffer;
  .registers 2
  .line 1
    iget-object v0, p0, Lokio/ByteString;->data:[B
    invoke-static { v0 }, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    move-result-object v0
    return-object v0
.end method

.method public base64()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lokio/ByteString;->data:[B
    invoke-static { v0 }, Lokio/Base64;->encode([B)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lokio/ByteString;->data:[B
    invoke-static { v0 }, Lokio/Base64;->encodeUrl([B)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
  .registers 2
  .line 1
    check-cast p1, Lokio/ByteString;
    invoke-virtual { p0, p1 }, Lokio/ByteString;->compareTo(Lokio/ByteString;)I
    move-result p1
    return p1
.end method

.method public compareTo(Lokio/ByteString;)I
  .registers 11
  .line 2
    invoke-virtual { p0 }, Lokio/ByteString;->size()I
    move-result v0
  .line 3
    invoke-virtual { p1 }, Lokio/ByteString;->size()I
    move-result v1
  .line 4
    invoke-static { v0, v1 }, Ljava/lang/Math;->min(II)I
    move-result v2
    const/4 v3, 0
    const/4 v4, 0
  :L0
    const/4 v5, -1
    const/4 v6, 1
    if-ge v4, v2, :L4
  .line 5
    invoke-virtual { p0, v4 }, Lokio/ByteString;->getByte(I)B
    move-result v7
    and-int/lit16 v7, v7, 255
  .line 6
    invoke-virtual { p1, v4 }, Lokio/ByteString;->getByte(I)B
    move-result v8
    and-int/lit16 v8, v8, 255
    if-ne v7, v8, :L1
    add-int/lit8 v4, v4, 1
    goto :L0
  :L1
    if-ge v7, v8, :L2
    goto :L3
  :L2
    const/4 v5, 1
  :L3
    return v5
  :L4
    if-ne v0, v1, :L5
    return v3
  :L5
    if-ge v0, v1, :L6
    goto :L7
  :L6
    const/4 v5, 1
  :L7
    return v5
.end method

.method public final endsWith(Lokio/ByteString;)Z
  .registers 5
  .line 1
    invoke-virtual { p0 }, Lokio/ByteString;->size()I
    move-result v0
    invoke-virtual { p1 }, Lokio/ByteString;->size()I
    move-result v1
    sub-int/2addr v0, v1
    invoke-virtual { p1 }, Lokio/ByteString;->size()I
    move-result v1
    const/4 v2, 0
    invoke-virtual { p0, v0, p1, v2, v1 }, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z
    move-result p1
    return p1
.end method

.method public final endsWith([B)Z
  .registers 5
  .line 2
    invoke-virtual { p0 }, Lokio/ByteString;->size()I
    move-result v0
    array-length v1, p1
    sub-int/2addr v0, v1
    array-length v1, p1
    const/4 v2, 0
    invoke-virtual { p0, v0, p1, v2, v1 }, Lokio/ByteString;->rangeEquals(I[BII)Z
    move-result p1
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 7
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
    iget-object v3, p0, Lokio/ByteString;->data:[B
    array-length v4, v3
    if-ne v1, v4, :L1
    array-length v1, v3
  .line 3
    invoke-virtual { p1, v2, v3, v2, v1 }, Lokio/ByteString;->rangeEquals(I[BII)Z
    move-result p1
    if-eqz p1, :L1
    goto :L2
  :L1
    const/4 v0, 0
  :L2
    return v0
.end method

.method public getByte(I)B
  .registers 3
  .line 1
    iget-object v0, p0, Lokio/ByteString;->data:[B
    aget-byte p1, v0, p1
    return p1
.end method

.method public hashCode()I
  .registers 2
  .line 1
    iget v0, p0, Lokio/ByteString;->hashCode:I
    if-eqz v0, :L0
    goto :L1
  :L0
  .line 2
    iget-object v0, p0, Lokio/ByteString;->data:[B
    invoke-static { v0 }, Ljava/util/Arrays;->hashCode([B)I
    move-result v0
    iput v0, p0, Lokio/ByteString;->hashCode:I
  :L1
    return v0
.end method

.method public hex()Ljava/lang/String;
  .registers 10
  .line 1
    iget-object v0, p0, Lokio/ByteString;->data:[B
    array-length v1, v0
    mul-int/lit8 v1, v1, 2
    new-array v1, v1, [C
  .line 2
    array-length v2, v0
    const/4 v3, 0
    const/4 v4, 0
  :L0
    if-ge v3, v2, :L1
    aget-byte v5, v0, v3
    add-int/lit8 v6, v4, 1
  .line 3
    sget-object v7, Lokio/ByteString;->HEX_DIGITS:[C
    shr-int/lit8 v8, v5, 4
    and-int/lit8 v8, v8, 15
    aget-char v8, v7, v8
    aput-char v8, v1, v4
    add-int/lit8 v4, v6, 1
    and-int/lit8 v5, v5, 15
  .line 4
    aget-char v5, v7, v5
    aput-char v5, v1, v6
    add-int/lit8 v3, v3, 1
    goto :L0
  :L1
  .line 5
    new-instance v0, Ljava/lang/String;
    invoke-direct { v0, v1 }, Ljava/lang/String;-><init>([C)V
    return-object v0
.end method

.method public hmacSha1(Lokio/ByteString;)Lokio/ByteString;
  .registers 3
    const-string v0, "HmacSHA1"
  .line 1
    invoke-direct { p0, v0, p1 }, Lokio/ByteString;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
    move-result-object p1
    return-object p1
.end method

.method public hmacSha256(Lokio/ByteString;)Lokio/ByteString;
  .registers 3
    const-string v0, "HmacSHA256"
  .line 1
    invoke-direct { p0, v0, p1 }, Lokio/ByteString;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
    move-result-object p1
    return-object p1
.end method

.method public hmacSha512(Lokio/ByteString;)Lokio/ByteString;
  .registers 3
    const-string v0, "HmacSHA512"
  .line 1
    invoke-direct { p0, v0, p1 }, Lokio/ByteString;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
    move-result-object p1
    return-object p1
.end method

.method public final indexOf(Lokio/ByteString;)I
  .registers 3
  .line 1
    invoke-virtual { p1 }, Lokio/ByteString;->internalArray()[B
    move-result-object p1
    const/4 v0, 0
    invoke-virtual { p0, p1, v0 }, Lokio/ByteString;->indexOf([BI)I
    move-result p1
    return p1
.end method

.method public final indexOf(Lokio/ByteString;I)I
  .registers 3
  .line 2
    invoke-virtual { p1 }, Lokio/ByteString;->internalArray()[B
    move-result-object p1
    invoke-virtual { p0, p1, p2 }, Lokio/ByteString;->indexOf([BI)I
    move-result p1
    return p1
.end method

.method public final indexOf([B)I
  .registers 3
    const/4 v0, 0
  .line 3
    invoke-virtual { p0, p1, v0 }, Lokio/ByteString;->indexOf([BI)I
    move-result p1
    return p1
.end method

.method public indexOf([BI)I
  .registers 7
    const/4 v0, 0
  .line 4
    invoke-static { p2, v0 }, Ljava/lang/Math;->max(II)I
    move-result p2
  .line 5
    iget-object v1, p0, Lokio/ByteString;->data:[B
    array-length v1, v1
    array-length v2, p1
    sub-int/2addr v1, v2
  :L0
    if-gt p2, v1, :L2
  .line 6
    iget-object v2, p0, Lokio/ByteString;->data:[B
    array-length v3, p1
    invoke-static { v2, p2, p1, v0, v3 }, Lokio/Util;->arrayRangeEquals([BI[BII)Z
    move-result v2
    if-eqz v2, :L1
    return p2
  :L1
    add-int/lit8 p2, p2, 1
    goto :L0
  :L2
    const/4 p1, -1
    return p1
.end method

.method internalArray()[B
  .registers 2
  .line 1
    iget-object v0, p0, Lokio/ByteString;->data:[B
    return-object v0
.end method

.method public final lastIndexOf(Lokio/ByteString;)I
  .registers 3
  .line 1
    invoke-virtual { p1 }, Lokio/ByteString;->internalArray()[B
    move-result-object p1
    invoke-virtual { p0 }, Lokio/ByteString;->size()I
    move-result v0
    invoke-virtual { p0, p1, v0 }, Lokio/ByteString;->lastIndexOf([BI)I
    move-result p1
    return p1
.end method

.method public final lastIndexOf(Lokio/ByteString;I)I
  .registers 3
  .line 2
    invoke-virtual { p1 }, Lokio/ByteString;->internalArray()[B
    move-result-object p1
    invoke-virtual { p0, p1, p2 }, Lokio/ByteString;->lastIndexOf([BI)I
    move-result p1
    return p1
.end method

.method public final lastIndexOf([B)I
  .registers 3
  .line 3
    invoke-virtual { p0 }, Lokio/ByteString;->size()I
    move-result v0
    invoke-virtual { p0, p1, v0 }, Lokio/ByteString;->lastIndexOf([BI)I
    move-result p1
    return p1
.end method

.method public lastIndexOf([BI)I
  .registers 6
  .line 4
    iget-object v0, p0, Lokio/ByteString;->data:[B
    array-length v0, v0
    array-length v1, p1
    sub-int/2addr v0, v1
    invoke-static { p2, v0 }, Ljava/lang/Math;->min(II)I
    move-result p2
  :L0
    if-ltz p2, :L2
  .line 5
    iget-object v0, p0, Lokio/ByteString;->data:[B
    const/4 v1, 0
    array-length v2, p1
    invoke-static { v0, p2, p1, v1, v2 }, Lokio/Util;->arrayRangeEquals([BI[BII)Z
    move-result v0
    if-eqz v0, :L1
    return p2
  :L1
    add-int/lit8 p2, p2, -1
    goto :L0
  :L2
    const/4 p1, -1
    return p1
.end method

.method public md5()Lokio/ByteString;
  .registers 2
    const-string v0, "MD5"
  .line 1
    invoke-direct { p0, v0 }, Lokio/ByteString;->digest(Ljava/lang/String;)Lokio/ByteString;
    move-result-object v0
    return-object v0
.end method

.method public rangeEquals(ILokio/ByteString;II)Z
  .registers 6
  .line 1
    iget-object v0, p0, Lokio/ByteString;->data:[B
    invoke-virtual { p2, p3, v0, p1, p4 }, Lokio/ByteString;->rangeEquals(I[BII)Z
    move-result p1
    return p1
.end method

.method public rangeEquals(I[BII)Z
  .registers 7
    if-ltz p1, :L0
  .line 2
    iget-object v0, p0, Lokio/ByteString;->data:[B
    array-length v1, v0
    sub-int/2addr v1, p4
    if-gt p1, v1, :L0
    if-ltz p3, :L0
    array-length v1, p2
    sub-int/2addr v1, p4
    if-gt p3, v1, :L0
  .line 3
    invoke-static { v0, p1, p2, p3, p4 }, Lokio/Util;->arrayRangeEquals([BI[BII)Z
    move-result p1
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method public sha1()Lokio/ByteString;
  .registers 2
    const-string v0, "SHA-1"
  .line 1
    invoke-direct { p0, v0 }, Lokio/ByteString;->digest(Ljava/lang/String;)Lokio/ByteString;
    move-result-object v0
    return-object v0
.end method

.method public sha256()Lokio/ByteString;
  .registers 2
    const-string v0, "SHA-256"
  .line 1
    invoke-direct { p0, v0 }, Lokio/ByteString;->digest(Ljava/lang/String;)Lokio/ByteString;
    move-result-object v0
    return-object v0
.end method

.method public sha512()Lokio/ByteString;
  .registers 2
    const-string v0, "SHA-512"
  .line 1
    invoke-direct { p0, v0 }, Lokio/ByteString;->digest(Ljava/lang/String;)Lokio/ByteString;
    move-result-object v0
    return-object v0
.end method

.method public size()I
  .registers 2
  .line 1
    iget-object v0, p0, Lokio/ByteString;->data:[B
    array-length v0, v0
    return v0
.end method

.method public final startsWith(Lokio/ByteString;)Z
  .registers 4
  .line 1
    invoke-virtual { p1 }, Lokio/ByteString;->size()I
    move-result v0
    const/4 v1, 0
    invoke-virtual { p0, v1, p1, v1, v0 }, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z
    move-result p1
    return p1
.end method

.method public final startsWith([B)Z
  .registers 4
  .line 2
    array-length v0, p1
    const/4 v1, 0
    invoke-virtual { p0, v1, p1, v1, v0 }, Lokio/ByteString;->rangeEquals(I[BII)Z
    move-result p1
    return p1
.end method

.method public string(Ljava/nio/charset/Charset;)Ljava/lang/String;
  .registers 4
    if-eqz p1, :L0
  .line 1
    new-instance v0, Ljava/lang/String;
    iget-object v1, p0, Lokio/ByteString;->data:[B
    invoke-direct { v0, v1, p1 }, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    return-object v0
  :L0
  .line 2
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "charset == null"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public substring(I)Lokio/ByteString;
  .registers 3
  .line 1
    iget-object v0, p0, Lokio/ByteString;->data:[B
    array-length v0, v0
    invoke-virtual { p0, p1, v0 }, Lokio/ByteString;->substring(II)Lokio/ByteString;
    move-result-object p1
    return-object p1
.end method

.method public substring(II)Lokio/ByteString;
  .registers 6
    if-ltz p1, :L3
  .line 2
    iget-object v0, p0, Lokio/ByteString;->data:[B
    array-length v1, v0
    if-gt p2, v1, :L2
    sub-int v1, p2, p1
    if-ltz v1, :L1
    if-nez p1, :L0
  .line 3
    array-length v0, v0
    if-ne p2, v0, :L0
    return-object p0
  :L0
  .line 4
    new-array p2, v1, [B
  .line 5
    iget-object v0, p0, Lokio/ByteString;->data:[B
    const/4 v2, 0
    invoke-static { v0, p1, p2, v2, v1 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 6
    new-instance p1, Lokio/ByteString;
    invoke-direct { p1, p2 }, Lokio/ByteString;-><init>([B)V
    return-object p1
  :L1
  .line 7
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "endIndex < beginIndex"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L2
  .line 8
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "endIndex > length("
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v0, p0, Lokio/ByteString;->data:[B
    array-length v0, v0
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v0, ")"
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L3
  .line 9
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "beginIndex < 0"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public toAsciiLowercase()Lokio/ByteString;
  .registers 7
    const/4 v0, 0
  :L0
  .line 1
    iget-object v1, p0, Lokio/ByteString;->data:[B
    array-length v2, v1
    if-ge v0, v2, :L7
  .line 2
    aget-byte v2, v1, v0
    const/16 v3, 65
    if-lt v2, v3, :L6
    const/16 v4, 90
    if-le v2, v4, :L1
    goto :L6
  :L1
  .line 3
    invoke-virtual { v1 }, [B->clone()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, [B
    add-int/lit8 v5, v0, 1
    add-int/lit8 v2, v2, 32
    int-to-byte v2, v2
  .line 4
    aput-byte v2, v1, v0
  :L2
  .line 5
    array-length v0, v1
    if-ge v5, v0, :L5
  .line 6
    aget-byte v0, v1, v5
    if-lt v0, v3, :L4
    if-le v0, v4, :L3
    goto :L4
  :L3
    add-int/lit8 v0, v0, 32
    int-to-byte v0, v0
  .line 7
    aput-byte v0, v1, v5
  :L4
    add-int/lit8 v5, v5, 1
    goto :L2
  :L5
  .line 8
    new-instance v0, Lokio/ByteString;
    invoke-direct { v0, v1 }, Lokio/ByteString;-><init>([B)V
    return-object v0
  :L6
    add-int/lit8 v0, v0, 1
    goto :L0
  :L7
    return-object p0
.end method

.method public toAsciiUppercase()Lokio/ByteString;
  .registers 7
    const/4 v0, 0
  :L0
  .line 1
    iget-object v1, p0, Lokio/ByteString;->data:[B
    array-length v2, v1
    if-ge v0, v2, :L7
  .line 2
    aget-byte v2, v1, v0
    const/16 v3, 97
    if-lt v2, v3, :L6
    const/16 v4, 122
    if-le v2, v4, :L1
    goto :L6
  :L1
  .line 3
    invoke-virtual { v1 }, [B->clone()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, [B
    add-int/lit8 v5, v0, 1
    add-int/lit8 v2, v2, -32
    int-to-byte v2, v2
  .line 4
    aput-byte v2, v1, v0
  :L2
  .line 5
    array-length v0, v1
    if-ge v5, v0, :L5
  .line 6
    aget-byte v0, v1, v5
    if-lt v0, v3, :L4
    if-le v0, v4, :L3
    goto :L4
  :L3
    add-int/lit8 v0, v0, -32
    int-to-byte v0, v0
  .line 7
    aput-byte v0, v1, v5
  :L4
    add-int/lit8 v5, v5, 1
    goto :L2
  :L5
  .line 8
    new-instance v0, Lokio/ByteString;
    invoke-direct { v0, v1 }, Lokio/ByteString;-><init>([B)V
    return-object v0
  :L6
    add-int/lit8 v0, v0, 1
    goto :L0
  :L7
    return-object p0
.end method

.method public toByteArray()[B
  .registers 2
  .line 1
    iget-object v0, p0, Lokio/ByteString;->data:[B
    invoke-virtual { v0 }, [B->clone()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [B
    return-object v0
.end method

.method public toString()Ljava/lang/String;
  .registers 9
  .line 1
    iget-object v0, p0, Lokio/ByteString;->data:[B
    array-length v0, v0
    if-nez v0, :L0
    const-string v0, "[size=0]"
    return-object v0
  :L0
  .line 2
    invoke-virtual { p0 }, Lokio/ByteString;->utf8()Ljava/lang/String;
    move-result-object v0
    const/16 v1, 64
  .line 3
    invoke-static { v0, v1 }, Lokio/ByteString;->codePointIndexToCharIndex(Ljava/lang/String;I)I
    move-result v2
    const/4 v3, -1
    const-string v4, "\u2026]"
    const-string v5, "[size="
    const-string v6, "]"
    const/4 v7, 0
    if-ne v2, v3, :L3
  .line 4
    iget-object v0, p0, Lokio/ByteString;->data:[B
    array-length v0, v0
    if-gt v0, v1, :L1
  .line 5
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "[hex="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Lokio/ByteString;->hex()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    goto :L2
  :L1
  .line 6
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lokio/ByteString;->data:[B
    array-length v2, v2
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, " hex="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0, v7, v1 }, Lokio/ByteString;->substring(II)Lokio/ByteString;
    move-result-object v1
    invoke-virtual { v1 }, Lokio/ByteString;->hex()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  :L2
    return-object v0
  :L3
  .line 7
    invoke-virtual { v0, v7, v2 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v1
    const-string v3, "\\"
    const-string v7, "\\\\"
  .line 8
    invoke-virtual { v1, v3, v7 }, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v1
    const-string v3, "\n"
    const-string v7, "\\n"
  .line 9
    invoke-virtual { v1, v3, v7 }, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v1
    const-string v3, "\r"
    const-string v7, "\\r"
  .line 10
    invoke-virtual { v1, v3, v7 }, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v1
  .line 11
    invoke-virtual { v0 }, Ljava/lang/String;->length()I
    move-result v0
    if-ge v2, v0, :L4
  .line 12
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lokio/ByteString;->data:[B
    array-length v2, v2
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, " text="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    goto :L5
  :L4
  .line 13
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "[text="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  :L5
    return-object v0
.end method

.method public utf8()Ljava/lang/String;
  .registers 4
  .line 1
    iget-object v0, p0, Lokio/ByteString;->utf8:Ljava/lang/String;
    if-eqz v0, :L0
    goto :L1
  :L0
  .line 2
    new-instance v0, Ljava/lang/String;
    iget-object v1, p0, Lokio/ByteString;->data:[B
    sget-object v2, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;
    invoke-direct { v0, v1, v2 }, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    iput-object v0, p0, Lokio/ByteString;->utf8:Ljava/lang/String;
  :L1
    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
  .registers 3
    if-eqz p1, :L0
  .line 1
    iget-object v0, p0, Lokio/ByteString;->data:[B
    invoke-virtual { p1, v0 }, Ljava/io/OutputStream;->write([B)V
    return-void
  :L0
  .line 2
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "out == null"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method write(Lokio/Buffer;)V
  .registers 5
  .line 3
    iget-object v0, p0, Lokio/ByteString;->data:[B
    array-length v1, v0
    const/4 v2, 0
    invoke-virtual { p1, v0, v2, v1 }, Lokio/Buffer;->write([BII)Lokio/Buffer;
    return-void
.end method
