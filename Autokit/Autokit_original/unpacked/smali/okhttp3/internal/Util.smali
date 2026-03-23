.class public final Lokhttp3/internal/Util;
.super Ljava/lang/Object;
.source "SourceFile"

.field public final static EMPTY_BYTE_ARRAY:[B

.field public final static EMPTY_REQUEST:Lokhttp3/RequestBody;

.field public final static EMPTY_RESPONSE:Lokhttp3/ResponseBody;

.field public final static EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public final static ISO_8859_1:Ljava/nio/charset/Charset;

.field public final static NATURAL_ORDER:Ljava/util/Comparator;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Comparator<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field public final static UTC:Ljava/util/TimeZone;

.field private final static UTF_16_BE:Ljava/nio/charset/Charset;

.field private final static UTF_16_BE_BOM:Lokio/ByteString;

.field private final static UTF_16_LE:Ljava/nio/charset/Charset;

.field private final static UTF_16_LE_BOM:Lokio/ByteString;

.field private final static UTF_32_BE:Ljava/nio/charset/Charset;

.field private final static UTF_32_BE_BOM:Lokio/ByteString;

.field private final static UTF_32_LE:Ljava/nio/charset/Charset;

.field private final static UTF_32_LE_BOM:Lokio/ByteString;

.field public final static UTF_8:Ljava/nio/charset/Charset;

.field private final static UTF_8_BOM:Lokio/ByteString;

.field private final static VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

.field private final static addSuppressedExceptionMethod:Ljava/lang/reflect/Method;

.method static constructor <clinit>()V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L1
  .registers 8
    const/4 v0, 0
    new-array v1, v0, [B
  .line 1
    sput-object v1, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B
    new-array v2, v0, [Ljava/lang/String;
  .line 2
    sput-object v2, Lokhttp3/internal/Util;->EMPTY_STRING_ARRAY:[Ljava/lang/String;
    const/4 v2, 0
  .line 3
    invoke-static { v2, v1 }, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/ResponseBody;
    move-result-object v1
    sput-object v1, Lokhttp3/internal/Util;->EMPTY_RESPONSE:Lokhttp3/ResponseBody;
  .line 4
    sget-object v1, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B
    invoke-static { v2, v1 }, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;
    move-result-object v1
    sput-object v1, Lokhttp3/internal/Util;->EMPTY_REQUEST:Lokhttp3/RequestBody;
    const-string v1, "efbbbf"
  .line 5
    invoke-static { v1 }, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;
    move-result-object v1
    sput-object v1, Lokhttp3/internal/Util;->UTF_8_BOM:Lokio/ByteString;
    const-string v1, "feff"
  .line 6
    invoke-static { v1 }, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;
    move-result-object v1
    sput-object v1, Lokhttp3/internal/Util;->UTF_16_BE_BOM:Lokio/ByteString;
    const-string v1, "fffe"
  .line 7
    invoke-static { v1 }, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;
    move-result-object v1
    sput-object v1, Lokhttp3/internal/Util;->UTF_16_LE_BOM:Lokio/ByteString;
    const-string v1, "0000ffff"
  .line 8
    invoke-static { v1 }, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;
    move-result-object v1
    sput-object v1, Lokhttp3/internal/Util;->UTF_32_BE_BOM:Lokio/ByteString;
    const-string v1, "ffff0000"
  .line 9
    invoke-static { v1 }, Lokio/ByteString;->decodeHex(Ljava/lang/String;)Lokio/ByteString;
    move-result-object v1
    sput-object v1, Lokhttp3/internal/Util;->UTF_32_LE_BOM:Lokio/ByteString;
    const-string v1, "UTF-8"
  .line 10
    invoke-static { v1 }, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    move-result-object v1
    sput-object v1, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;
    const-string v1, "ISO-8859-1"
  .line 11
    invoke-static { v1 }, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    move-result-object v1
    sput-object v1, Lokhttp3/internal/Util;->ISO_8859_1:Ljava/nio/charset/Charset;
    const-string v1, "UTF-16BE"
  .line 12
    invoke-static { v1 }, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    move-result-object v1
    sput-object v1, Lokhttp3/internal/Util;->UTF_16_BE:Ljava/nio/charset/Charset;
    const-string v1, "UTF-16LE"
  .line 13
    invoke-static { v1 }, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    move-result-object v1
    sput-object v1, Lokhttp3/internal/Util;->UTF_16_LE:Ljava/nio/charset/Charset;
    const-string v1, "UTF-32BE"
  .line 14
    invoke-static { v1 }, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    move-result-object v1
    sput-object v1, Lokhttp3/internal/Util;->UTF_32_BE:Ljava/nio/charset/Charset;
    const-string v1, "UTF-32LE"
  .line 15
    invoke-static { v1 }, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    move-result-object v1
    sput-object v1, Lokhttp3/internal/Util;->UTF_32_LE:Ljava/nio/charset/Charset;
    const-string v1, "GMT"
  .line 16
    invoke-static { v1 }, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    move-result-object v1
    sput-object v1, Lokhttp3/internal/Util;->UTC:Ljava/util/TimeZone;
  .line 17
    new-instance v1, Lokhttp3/internal/Util$1;
    invoke-direct { v1 }, Lokhttp3/internal/Util$1;-><init>()V
    sput-object v1, Lokhttp3/internal/Util;->NATURAL_ORDER:Ljava/util/Comparator;
  :L0
  .line 18
    const-class v1, Ljava/lang/Throwable;
    const-string v3, "addSuppressed"
    const/4 v4, 1
    new-array v4, v4, [Ljava/lang/Class;
    const-class v5, Ljava/lang/Throwable;
    aput-object v5, v4, v0
    invoke-virtual { v1, v3, v4 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v2
  :L1
  .line 19
    sput-object v2, Lokhttp3/internal/Util;->addSuppressedExceptionMethod:Ljava/lang/reflect/Method;
    const-string v0, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"
  .line 20
    invoke-static { v0 }, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    move-result-object v0
    sput-object v0, Lokhttp3/internal/Util;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;
    return-void
.end method

.method private constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static addSuppressedIfPossible(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
  .catch Ljava/lang/reflect/InvocationTargetException; { :L0 .. :L1 } :L1
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L1
  .registers 5
  .line 1
    sget-object v0, Lokhttp3/internal/Util;->addSuppressedExceptionMethod:Ljava/lang/reflect/Method;
    if-eqz v0, :L1
    const/4 v1, 1
  :L0
    new-array v1, v1, [Ljava/lang/Object;
    const/4 v2, 0
    aput-object p1, v1, v2
  .line 2
    invoke-virtual { v0, p0, v1 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  :L1
    return-void
.end method

.method public static assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;
  .catch Ljava/lang/IllegalStateException; { :L0 .. :L1 } :L1
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/AssertionError;
    invoke-direct { v0, p0 }, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
  :L0
  .line 2
    invoke-virtual { v0, p1 }, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
  :L1
    return-object v0
.end method

.method public static bomAwareCharset(Lokio/BufferedSource;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
  .registers 5
  .line 1
    sget-object v0, Lokhttp3/internal/Util;->UTF_8_BOM:Lokio/ByteString;
    const-wide/16 v1, 0
    invoke-interface { p0, v1, v2, v0 }, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    sget-object p1, Lokhttp3/internal/Util;->UTF_8_BOM:Lokio/ByteString;
    invoke-virtual { p1 }, Lokio/ByteString;->size()I
    move-result p1
    int-to-long v0, p1
    invoke-interface { p0, v0, v1 }, Lokio/BufferedSource;->skip(J)V
  .line 3
    sget-object p0, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;
    return-object p0
  :L0
  .line 4
    sget-object v0, Lokhttp3/internal/Util;->UTF_16_BE_BOM:Lokio/ByteString;
    invoke-interface { p0, v1, v2, v0 }, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z
    move-result v0
    if-eqz v0, :L1
  .line 5
    sget-object p1, Lokhttp3/internal/Util;->UTF_16_BE_BOM:Lokio/ByteString;
    invoke-virtual { p1 }, Lokio/ByteString;->size()I
    move-result p1
    int-to-long v0, p1
    invoke-interface { p0, v0, v1 }, Lokio/BufferedSource;->skip(J)V
  .line 6
    sget-object p0, Lokhttp3/internal/Util;->UTF_16_BE:Ljava/nio/charset/Charset;
    return-object p0
  :L1
  .line 7
    sget-object v0, Lokhttp3/internal/Util;->UTF_16_LE_BOM:Lokio/ByteString;
    invoke-interface { p0, v1, v2, v0 }, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z
    move-result v0
    if-eqz v0, :L2
  .line 8
    sget-object p1, Lokhttp3/internal/Util;->UTF_16_LE_BOM:Lokio/ByteString;
    invoke-virtual { p1 }, Lokio/ByteString;->size()I
    move-result p1
    int-to-long v0, p1
    invoke-interface { p0, v0, v1 }, Lokio/BufferedSource;->skip(J)V
  .line 9
    sget-object p0, Lokhttp3/internal/Util;->UTF_16_LE:Ljava/nio/charset/Charset;
    return-object p0
  :L2
  .line 10
    sget-object v0, Lokhttp3/internal/Util;->UTF_32_BE_BOM:Lokio/ByteString;
    invoke-interface { p0, v1, v2, v0 }, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z
    move-result v0
    if-eqz v0, :L3
  .line 11
    sget-object p1, Lokhttp3/internal/Util;->UTF_32_BE_BOM:Lokio/ByteString;
    invoke-virtual { p1 }, Lokio/ByteString;->size()I
    move-result p1
    int-to-long v0, p1
    invoke-interface { p0, v0, v1 }, Lokio/BufferedSource;->skip(J)V
  .line 12
    sget-object p0, Lokhttp3/internal/Util;->UTF_32_BE:Ljava/nio/charset/Charset;
    return-object p0
  :L3
  .line 13
    sget-object v0, Lokhttp3/internal/Util;->UTF_32_LE_BOM:Lokio/ByteString;
    invoke-interface { p0, v1, v2, v0 }, Lokio/BufferedSource;->rangeEquals(JLokio/ByteString;)Z
    move-result v0
    if-eqz v0, :L4
  .line 14
    sget-object p1, Lokhttp3/internal/Util;->UTF_32_LE_BOM:Lokio/ByteString;
    invoke-virtual { p1 }, Lokio/ByteString;->size()I
    move-result p1
    int-to-long v0, p1
    invoke-interface { p0, v0, v1 }, Lokio/BufferedSource;->skip(J)V
  .line 15
    sget-object p0, Lokhttp3/internal/Util;->UTF_32_LE:Ljava/nio/charset/Charset;
    return-object p0
  :L4
    return-object p1
.end method

.method public static canonicalizeHost(Ljava/lang/String;)Ljava/lang/String;
  .catch Ljava/lang/IllegalArgumentException; { :L4 .. :L6 } :L8
  .registers 4
    const-string v0, ":"
  .line 1
    invoke-virtual { p0, v0 }, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L4
    const-string v0, "["
  .line 2
    invoke-virtual { p0, v0 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L0
    const-string v0, "]"
    invoke-virtual { p0, v0 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v0
    const/4 v2, 1
    sub-int/2addr v0, v2
    invoke-static { p0, v2, v0 }, Lokhttp3/internal/Util;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  .line 4
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v2
    invoke-static { p0, v0, v2 }, Lokhttp3/internal/Util;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;
    move-result-object v0
  :L1
    if-nez v0, :L2
    return-object v1
  :L2
  .line 5
    invoke-virtual { v0 }, Ljava/net/InetAddress;->getAddress()[B
    move-result-object v0
  .line 6
    array-length v1, v0
    const/16 v2, 16
    if-ne v1, v2, :L3
    invoke-static { v0 }, Lokhttp3/internal/Util;->inet6AddressToAscii([B)Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L3
  .line 7
    new-instance v0, Ljava/lang/AssertionError;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Invalid IPv6 address: '"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p0, "'"
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-direct { v0, p0 }, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    throw v0
  :L4
  .line 8
    invoke-static { p0 }, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-virtual { p0, v0 }, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object p0
  .line 9
    invoke-virtual { p0 }, Ljava/lang/String;->isEmpty()Z
    move-result v0
    if-eqz v0, :L5
    return-object v1
  :L5
  .line 10
    invoke-static { p0 }, Lokhttp3/internal/Util;->containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    move-result v0
  :L6
    if-eqz v0, :L7
    return-object v1
  :L7
    return-object p0
  :L8
    return-object v1
.end method

.method public static checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I
  .registers 10
    const-wide/16 v0, 0
    cmp-long v2, p1, v0
    if-ltz v2, :L4
    if-eqz p3, :L3
  .line 1
    invoke-virtual { p3, p1, p2 }, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
    move-result-wide v2
    const-wide/32 v4, 2147483647
    cmp-long p3, v2, v4
    if-gtz p3, :L2
    cmp-long p3, v2, v0
    if-nez p3, :L1
    cmp-long p3, p1, v0
    if-gtz p3, :L0
    goto :L1
  :L0
  .line 2
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p2, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p0, " too small."
    invoke-virtual { p2, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-direct { p1, p0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
    long-to-int p0, v2
    return p0
  :L2
  .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p2, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p0, " too large."
    invoke-virtual { p2, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-direct { p1, p0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L3
  .line 4
    new-instance p0, Ljava/lang/NullPointerException;
    const-string p1, "unit == null"
    invoke-direct { p0, p1 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p0
  :L4
  .line 5
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p2, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p0, " < 0"
    invoke-virtual { p2, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-direct { p1, p0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public static checkOffsetAndCount(JJJ)V
  .registers 11
    or-long v0, p2, p4
    const-wide/16 v2, 0
    cmp-long v4, v0, v2
    if-ltz v4, :L0
    cmp-long v0, p2, p0
    if-gtz v0, :L0
    sub-long/2addr p0, p2
    cmp-long p2, p0, p4
    if-ltz p2, :L0
    return-void
  :L0
  .line 1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-direct { p0 }, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V
    throw p0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
  .catch Ljava/lang/RuntimeException; { :L0 .. :L1 } :L2
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L3
  .registers 1
    if-eqz p0, :L3
  :L0
  .line 1
    invoke-interface { p0 }, Ljava/io/Closeable;->close()V
  :L1
    goto :L3
  :L2
    move-exception p0
  .line 2
    throw p0
  :L3
    return-void
.end method

.method public static closeQuietly(Ljava/net/ServerSocket;)V
  .catch Ljava/lang/RuntimeException; { :L0 .. :L1 } :L2
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L3
  .registers 1
    if-eqz p0, :L3
  :L0
  .line 6
    invoke-virtual { p0 }, Ljava/net/ServerSocket;->close()V
  :L1
    goto :L3
  :L2
    move-exception p0
  .line 7
    throw p0
  :L3
    return-void
.end method

.method public static closeQuietly(Ljava/net/Socket;)V
  .catch Ljava/lang/AssertionError; { :L0 .. :L1 } :L3
  .catch Ljava/lang/RuntimeException; { :L0 .. :L1 } :L2
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L5
  .registers 2
    if-eqz p0, :L5
  :L0
  .line 3
    invoke-virtual { p0 }, Ljava/net/Socket;->close()V
  :L1
    goto :L5
  :L2
    move-exception p0
  .line 4
    throw p0
  :L3
    move-exception p0
  .line 5
    invoke-static { p0 }, Lokhttp3/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    move-result v0
    if-eqz v0, :L4
    goto :L5
  :L4
    throw p0
  :L5
    return-void
.end method

.method public static concat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
  .registers 6
  .line 1
    array-length v0, p0
    add-int/lit8 v0, v0, 1
    new-array v1, v0, [Ljava/lang/String;
  .line 2
    array-length v2, p0
    const/4 v3, 0
    invoke-static { p0, v3, v1, v3, v2 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    add-int/lit8 v0, v0, -1
  .line 3
    aput-object p1, v1, v0
    return-object v1
.end method

.method private static containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
  .registers 6
    const/4 v0, 0
    const/4 v1, 0
  :L0
  .line 1
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v2
    if-ge v1, v2, :L4
  .line 2
    invoke-virtual { p0, v1 }, Ljava/lang/String;->charAt(I)C
    move-result v2
    const/16 v3, 31
    const/4 v4, 1
    if-le v2, v3, :L3
    const/16 v3, 127
    if-lt v2, v3, :L1
    goto :L3
  :L1
    const-string v3, " #%/:?@[\\]"
  .line 3
    invoke-virtual { v3, v2 }, Ljava/lang/String;->indexOf(I)I
    move-result v2
    const/4 v3, -1
    if-eq v2, v3, :L2
    return v4
  :L2
    add-int/lit8 v1, v1, 1
    goto :L0
  :L3
    return v4
  :L4
    return v0
.end method

.method public static decodeHexDigit(C)I
  .registers 3
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
    const/4 p0, -1
    return p0
.end method

.method private static decodeIpv4Suffix(Ljava/lang/String;II[BI)Z
  .registers 12
    move v0, p4
  :L0
    const/4 v1, 0
    if-ge p1, p2, :L10
  .line 1
    array-length v2, p3
    if-ne v0, v2, :L1
    return v1
  :L1
    if-eq v0, p4, :L3
  .line 2
    invoke-virtual { p0, p1 }, Ljava/lang/String;->charAt(I)C
    move-result v2
    const/16 v3, 46
    if-eq v2, v3, :L2
    return v1
  :L2
    add-int/lit8 p1, p1, 1
  :L3
    move v2, p1
    const/4 v3, 0
  :L4
    if-ge v2, p2, :L8
  .line 3
    invoke-virtual { p0, v2 }, Ljava/lang/String;->charAt(I)C
    move-result v4
    const/16 v5, 48
    if-lt v4, v5, :L8
    const/16 v6, 57
    if-le v4, v6, :L5
    goto :L8
  :L5
    if-nez v3, :L6
    if-eq p1, v2, :L6
    return v1
  :L6
    mul-int/lit8 v3, v3, 10
    add-int/2addr v3, v4
    sub-int/2addr v3, v5
    const/16 v4, 255
    if-le v3, v4, :L7
    return v1
  :L7
    add-int/lit8 v2, v2, 1
    goto :L4
  :L8
    sub-int p1, v2, p1
    if-nez p1, :L9
    return v1
  :L9
    add-int/lit8 p1, v0, 1
    int-to-byte v1, v3
  .line 4
    aput-byte v1, p3, v0
    move v0, p1
    move p1, v2
    goto :L0
  :L10
    add-int/lit8 p4, p4, 4
    if-eq v0, p4, :L11
    return v1
  :L11
    const/4 p0, 1
    return p0
.end method

.method private static decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .catch Ljava/net/UnknownHostException; { :L17 .. :L18 } :L19
  .registers 14
    const/16 v0, 16
    new-array v1, v0, [B
    const/4 v2, -1
    const/4 v3, 0
    const/4 v4, 0
    const/4 v5, -1
    const/4 v6, -1
  :L0
    const/4 v7, 0
    if-ge p1, p2, :L15
    if-ne v4, v0, :L1
    return-object v7
  :L1
    add-int/lit8 v8, p1, 2
    if-gt v8, p2, :L4
    const-string v9, "::"
    const/4 v10, 2
  .line 1
    invoke-virtual { p0, p1, v9, v3, v10 }, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z
    move-result v9
    if-eqz v9, :L4
    if-eq v5, v2, :L2
    return-object v7
  :L2
    add-int/lit8 v4, v4, 2
    move v5, v4
    if-ne v8, p2, :L3
    goto :L15
  :L3
    move v6, v8
    goto :L9
  :L4
    if-eqz v4, :L8
    const-string v8, ":"
    const/4 v9, 1
  .line 2
    invoke-virtual { p0, p1, v8, v3, v9 }, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z
    move-result v8
    if-eqz v8, :L5
    add-int/lit8 p1, p1, 1
    goto :L8
  :L5
    const-string v8, "."
  .line 3
    invoke-virtual { p0, p1, v8, v3, v9 }, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z
    move-result p1
    if-eqz p1, :L7
    add-int/lit8 p1, v4, -2
  .line 4
    invoke-static { p0, v6, p2, v1, p1 }, Lokhttp3/internal/Util;->decodeIpv4Suffix(Ljava/lang/String;II[BI)Z
    move-result p0
    if-nez p0, :L6
    return-object v7
  :L6
    add-int/lit8 v4, v4, 2
    goto :L15
  :L7
    return-object v7
  :L8
    move v6, p1
  :L9
    move p1, v6
    const/4 v8, 0
  :L10
    if-ge p1, p2, :L12
  .line 5
    invoke-virtual { p0, p1 }, Ljava/lang/String;->charAt(I)C
    move-result v9
  .line 6
    invoke-static { v9 }, Lokhttp3/internal/Util;->decodeHexDigit(C)I
    move-result v9
    if-ne v9, v2, :L11
    goto :L12
  :L11
    shl-int/lit8 v8, v8, 4
    add-int/2addr v8, v9
    add-int/lit8 p1, p1, 1
    goto :L10
  :L12
    sub-int v9, p1, v6
    if-eqz v9, :L14
    const/4 v10, 4
    if-le v9, v10, :L13
    goto :L14
  :L13
    add-int/lit8 v7, v4, 1
    ushr-int/lit8 v9, v8, 8
    and-int/lit16 v9, v9, 255
    int-to-byte v9, v9
  .line 7
    aput-byte v9, v1, v4
    add-int/lit8 v4, v7, 1
    and-int/lit16 v8, v8, 255
    int-to-byte v8, v8
  .line 8
    aput-byte v8, v1, v7
    goto :L0
  :L14
    return-object v7
  :L15
    if-eq v4, v0, :L17
    if-ne v5, v2, :L16
    return-object v7
  :L16
    sub-int p0, v4, v5
    rsub-int/lit8 p1, p0, 16
  .line 9
    invoke-static { v1, v5, v1, p1, p0 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    sub-int/2addr v0, v4
    add-int/2addr v0, v5
  .line 10
    invoke-static { v1, v5, v0, v3 }, Ljava/util/Arrays;->fill([BIIB)V
  :L17
  .line 11
    invoke-static { v1 }, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    move-result-object p0
  :L18
    return-object p0
  :L19
  .line 12
    new-instance p0, Ljava/lang/AssertionError;
    invoke-direct { p0 }, Ljava/lang/AssertionError;-><init>()V
    goto :L21
  :L20
    throw p0
  :L21
    goto :L20
.end method

.method public static delimiterOffset(Ljava/lang/String;IIC)I
  .registers 5
  :L0
    if-ge p1, p2, :L2
  .line 2
    invoke-virtual { p0, p1 }, Ljava/lang/String;->charAt(I)C
    move-result v0
    if-ne v0, p3, :L1
    return p1
  :L1
    add-int/lit8 p1, p1, 1
    goto :L0
  :L2
    return p2
.end method

.method public static delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
  .registers 6
  :L0
    if-ge p1, p2, :L2
  .line 1
    invoke-virtual { p0, p1 }, Ljava/lang/String;->charAt(I)C
    move-result v0
    invoke-virtual { p3, v0 }, Ljava/lang/String;->indexOf(I)I
    move-result v0
    const/4 v1, -1
    if-eq v0, v1, :L1
    return p1
  :L1
    add-int/lit8 p1, p1, 1
    goto :L0
  :L2
    return p2
.end method

.method public static discard(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L2
  .registers 3
  :L0
  .line 1
    invoke-static { p0, p1, p2 }, Lokhttp3/internal/Util;->skipAll(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z
    move-result p0
  :L1
    return p0
  :L2
    const/4 p0, 0
    return p0
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
  .registers 2
    if-eq p0, p1, :L1
    if-eqz p0, :L0
  .line 1
    invoke-virtual { p0, p1 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result p0
    if-eqz p0, :L0
    goto :L1
  :L0
    const/4 p0, 0
    goto :L2
  :L1
    const/4 p0, 1
  :L2
    return p0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
  .registers 3
  .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-static { v0, p0, p1 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method public static hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;
  .registers 5
  .line 1
    invoke-virtual { p0 }, Lokhttp3/HttpUrl;->host()Ljava/lang/String;
    move-result-object v0
    const-string v1, ":"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "["
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Lokhttp3/HttpUrl;->host()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, "]"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    goto :L1
  :L0
  .line 3
    invoke-virtual { p0 }, Lokhttp3/HttpUrl;->host()Ljava/lang/String;
    move-result-object v0
  :L1
    if-nez p1, :L2
  .line 4
    invoke-virtual { p0 }, Lokhttp3/HttpUrl;->port()I
    move-result p1
    invoke-virtual { p0 }, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I
    move-result v2
    if-eq p1, v2, :L3
  :L2
  .line 5
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Lokhttp3/HttpUrl;->port()I
    move-result p0
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  :L3
    return-object v0
.end method

.method public static immutableList(Ljava/util/List;)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Ljava/lang/Object;",
      ">(",
      "Ljava/util/List<",
      "TT;>;)",
      "Ljava/util/List<",
      "TT;>;"
    }
  .end annotation
  .registers 2
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0, p0 }, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    invoke-static { v0 }, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    move-result-object p0
    return-object p0
.end method

.method public static varargs immutableList([Ljava/lang/Object;)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Ljava/lang/Object;",
      ">([TT;)",
      "Ljava/util/List<",
      "TT;>;"
    }
  .end annotation
  .registers 1
  .line 2
    invoke-virtual { p0 }, [Ljava/lang/Object;->clone()Ljava/lang/Object;
    move-result-object p0
    check-cast p0, [Ljava/lang/Object;
    invoke-static { p0 }, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    move-result-object p0
    invoke-static { p0 }, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    move-result-object p0
    return-object p0
.end method

.method public static immutableMap(Ljava/util/Map;)Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<K:",
      "Ljava/lang/Object;",
      "V:",
      "Ljava/lang/Object;",
      ">(",
      "Ljava/util/Map<",
      "TK;TV;>;)",
      "Ljava/util/Map<",
      "TK;TV;>;"
    }
  .end annotation
  .registers 2
  .line 1
    invoke-interface { p0 }, Ljava/util/Map;->isEmpty()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-static { }, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
    move-result-object p0
    goto :L1
  :L0
  .line 3
    new-instance v0, Ljava/util/LinkedHashMap;
    invoke-direct { v0, p0 }, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    invoke-static { v0 }, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    move-result-object p0
  :L1
    return-object p0
.end method

.method public static indexOf(Ljava/util/Comparator;[Ljava/lang/String;Ljava/lang/String;)I
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/Comparator<",
      "Ljava/lang/String;",
      ">;[",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ")I"
    }
  .end annotation
  .registers 6
  .line 1
    array-length v0, p1
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L2
  .line 2
    aget-object v2, p1, v1
    invoke-interface { p0, v2, p2 }, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I
    move-result v2
    if-nez v2, :L1
    return v1
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    const/4 p0, -1
    return p0
.end method

.method public static indexOfControlOrNonAscii(Ljava/lang/String;)I
  .registers 5
  .line 1
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L3
  .line 2
    invoke-virtual { p0, v1 }, Ljava/lang/String;->charAt(I)C
    move-result v2
    const/16 v3, 31
    if-le v2, v3, :L2
    const/16 v3, 127
    if-lt v2, v3, :L1
    goto :L2
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    return v1
  :L3
    const/4 p0, -1
    return p0
.end method

.method private static inet6AddressToAscii([B)Ljava/lang/String;
  .registers 9
    const/4 v0, 0
    const/4 v1, -1
    const/4 v2, 0
    const/4 v3, 0
  :L0
  .line 1
    array-length v4, p0
    const/16 v5, 16
    if-ge v2, v4, :L4
    move v4, v2
  :L1
    if-ge v4, v5, :L2
  .line 2
    aget-byte v6, p0, v4
    if-nez v6, :L2
    add-int/lit8 v6, v4, 1
    aget-byte v6, p0, v6
    if-nez v6, :L2
    add-int/lit8 v4, v4, 2
    goto :L1
  :L2
    sub-int v5, v4, v2
    if-le v5, v3, :L3
    const/4 v6, 4
    if-lt v5, v6, :L3
    move v1, v2
    move v3, v5
  :L3
    add-int/lit8 v2, v4, 2
    goto :L0
  :L4
  .line 3
    new-instance v2, Lokio/Buffer;
    invoke-direct { v2 }, Lokio/Buffer;-><init>()V
  :L5
  .line 4
    array-length v4, p0
    if-ge v0, v4, :L8
    const/16 v4, 58
    if-ne v0, v1, :L6
  .line 5
    invoke-virtual { v2, v4 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
    add-int/2addr v0, v3
    if-ne v0, v5, :L5
  .line 6
    invoke-virtual { v2, v4 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
    goto :L5
  :L6
    if-lez v0, :L7
  .line 7
    invoke-virtual { v2, v4 }, Lokio/Buffer;->writeByte(I)Lokio/Buffer;
  :L7
  .line 8
    aget-byte v4, p0, v0
    and-int/lit16 v4, v4, 255
    shl-int/lit8 v4, v4, 8
    add-int/lit8 v6, v0, 1
    aget-byte v6, p0, v6
    and-int/lit16 v6, v6, 255
    or-int/2addr v4, v6
    int-to-long v6, v4
  .line 9
    invoke-virtual { v2, v6, v7 }, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;
    add-int/lit8 v0, v0, 2
    goto :L5
  :L8
  .line 10
    invoke-virtual { v2 }, Lokio/Buffer;->readUtf8()Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method public static intersect(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/Comparator<",
      "-",
      "Ljava/lang/String;",
      ">;[",
      "Ljava/lang/String;",
      "[",
      "Ljava/lang/String;",
      ")[",
      "Ljava/lang/String;"
    }
  .end annotation
  .registers 11
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
  .line 2
    array-length v1, p1
    const/4 v2, 0
    const/4 v3, 0
  :L0
    if-ge v3, v1, :L4
    aget-object v4, p1, v3
  .line 3
    array-length v5, p2
    const/4 v6, 0
  :L1
    if-ge v6, v5, :L3
    aget-object v7, p2, v6
  .line 4
    invoke-interface { p0, v4, v7 }, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I
    move-result v7
    if-nez v7, :L2
  .line 5
    invoke-interface { v0, v4 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    goto :L3
  :L2
    add-int/lit8 v6, v6, 1
    goto :L1
  :L3
    add-int/lit8 v3, v3, 1
    goto :L0
  :L4
  .line 6
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result p0
    new-array p0, p0, [Ljava/lang/String;
    invoke-interface { v0, p0 }, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    move-result-object p0
    check-cast p0, [Ljava/lang/String;
    return-object p0
.end method

.method public static isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
  .registers 2
  .line 1
    invoke-virtual { p0 }, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;
    move-result-object v0
    if-eqz v0, :L0
    invoke-virtual { p0 }, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p0 }, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;
    move-result-object p0
    const-string v0, "getsockname failed"
    invoke-virtual { p0, v0 }, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result p0
    if-eqz p0, :L0
    const/4 p0, 1
    goto :L1
  :L0
    const/4 p0, 0
  :L1
    return p0
.end method

.method public static nonEmptyIntersection(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/Comparator<",
      "Ljava/lang/String;",
      ">;[",
      "Ljava/lang/String;",
      "[",
      "Ljava/lang/String;",
      ")Z"
    }
  .end annotation
  .registers 10
    const/4 v0, 0
    if-eqz p1, :L5
    if-eqz p2, :L5
  .line 1
    array-length v1, p1
    if-eqz v1, :L5
    array-length v1, p2
    if-nez v1, :L0
    goto :L5
  :L0
  .line 2
    array-length v1, p1
    const/4 v2, 0
  :L1
    if-ge v2, v1, :L5
    aget-object v3, p1, v2
  .line 3
    array-length v4, p2
    const/4 v5, 0
  :L2
    if-ge v5, v4, :L4
    aget-object v6, p2, v5
  .line 4
    invoke-interface { p0, v3, v6 }, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I
    move-result v6
    if-nez v6, :L3
    const/4 p0, 1
    return p0
  :L3
    add-int/lit8 v5, v5, 1
    goto :L2
  :L4
    add-int/lit8 v2, v2, 1
    goto :L1
  :L5
    return v0
.end method

.method public static platformTrustManager()Ljavax/net/ssl/X509TrustManager;
  .catch Ljava/security/GeneralSecurityException; { :L0 .. :L2 } :L2
  .registers 4
  :L0
  .line 1
    invoke-static { }, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;
    move-result-object v0
  .line 2
    invoke-static { v0 }, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;
    move-result-object v0
    const/4 v1, 0
  .line 3
    invoke-virtual { v0, v1 }, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
  .line 4
    invoke-virtual { v0 }, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
    move-result-object v0
  .line 5
    array-length v1, v0
    const/4 v2, 1
    if-ne v1, v2, :L1
    const/4 v1, 0
    aget-object v2, v0, v1
    instance-of v2, v2, Ljavax/net/ssl/X509TrustManager;
    if-eqz v2, :L1
  .line 6
    aget-object v0, v0, v1
    check-cast v0, Ljavax/net/ssl/X509TrustManager;
    return-object v0
  :L1
  .line 7
    new-instance v1, Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Unexpected default trust managers:"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 8
    invoke-static { v0 }, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { v1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v1
  :L2
    move-exception v0
    const-string v1, "No System TLS"
  .line 9
    invoke-static { v1, v0 }, Lokhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;
    move-result-object v0
    throw v0
.end method

.method public static skipAll(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z
  .catch Ljava/io/InterruptedIOException; { :L2 .. :L4 } :L11
  .catchall { :L2 .. :L4 } :L8
  .registers 14
  .line 1
    invoke-static { }, Ljava/lang/System;->nanoTime()J
    move-result-wide v0
  .line 2
    invoke-interface { p0 }, Lokio/Source;->timeout()Lokio/Timeout;
    move-result-object v2
    invoke-virtual { v2 }, Lokio/Timeout;->hasDeadline()Z
    move-result v2
    const-wide v3, 9223372036854775807L
    if-eqz v2, :L0
  .line 3
    invoke-interface { p0 }, Lokio/Source;->timeout()Lokio/Timeout;
    move-result-object v2
    invoke-virtual { v2 }, Lokio/Timeout;->deadlineNanoTime()J
    move-result-wide v5
    sub-long/2addr v5, v0
    goto :L1
  :L0
    move-wide v5, v3
  :L1
  .line 4
    invoke-interface { p0 }, Lokio/Source;->timeout()Lokio/Timeout;
    move-result-object v2
    int-to-long v7, p1
    invoke-virtual { p2, v7, v8 }, Ljava/util/concurrent/TimeUnit;->toNanos(J)J
    move-result-wide p1
    invoke-static { v5, v6, p1, p2 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide p1
    add-long/2addr p1, v0
    invoke-virtual { v2, p1, p2 }, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;
  :L2
  .line 5
    new-instance p1, Lokio/Buffer;
    invoke-direct { p1 }, Lokio/Buffer;-><init>()V
  :L3
    const-wide/16 v7, 8192
  .line 6
    invoke-interface { p0, p1, v7, v8 }, Lokio/Source;->read(Lokio/Buffer;J)J
    move-result-wide v7
    const-wide/16 v9, -1
    cmp-long p2, v7, v9
    if-eqz p2, :L5
  .line 7
    invoke-virtual { p1 }, Lokio/Buffer;->clear()V
  :L4
    goto :L3
  :L5
    const/4 p1, 1
    cmp-long p2, v5, v3
    if-nez p2, :L6
  .line 8
    invoke-interface { p0 }, Lokio/Source;->timeout()Lokio/Timeout;
    move-result-object p0
    invoke-virtual { p0 }, Lokio/Timeout;->clearDeadline()Lokio/Timeout;
    goto :L7
  :L6
  .line 9
    invoke-interface { p0 }, Lokio/Source;->timeout()Lokio/Timeout;
    move-result-object p0
    add-long/2addr v0, v5
    invoke-virtual { p0, v0, v1 }, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;
  :L7
    return p1
  :L8
    move-exception p1
    cmp-long p2, v5, v3
    if-nez p2, :L9
  .line 10
    invoke-interface { p0 }, Lokio/Source;->timeout()Lokio/Timeout;
    move-result-object p0
    invoke-virtual { p0 }, Lokio/Timeout;->clearDeadline()Lokio/Timeout;
    goto :L10
  :L9
  .line 11
    invoke-interface { p0 }, Lokio/Source;->timeout()Lokio/Timeout;
    move-result-object p0
    add-long/2addr v0, v5
    invoke-virtual { p0, v0, v1 }, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;
  :L10
    throw p1
  :L11
    nop
    const/4 p1, 0
    cmp-long p2, v5, v3
    if-nez p2, :L12
  .line 12
    invoke-interface { p0 }, Lokio/Source;->timeout()Lokio/Timeout;
    move-result-object p0
    invoke-virtual { p0 }, Lokio/Timeout;->clearDeadline()Lokio/Timeout;
    goto :L13
  :L12
  .line 13
    invoke-interface { p0 }, Lokio/Source;->timeout()Lokio/Timeout;
    move-result-object p0
    add-long/2addr v0, v5
    invoke-virtual { p0, v0, v1 }, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;
  :L13
    return p1
.end method

.method public static skipLeadingAsciiWhitespace(Ljava/lang/String;II)I
  .registers 5
  :L0
    if-ge p1, p2, :L2
  .line 1
    invoke-virtual { p0, p1 }, Ljava/lang/String;->charAt(I)C
    move-result v0
    const/16 v1, 9
    if-eq v0, v1, :L1
    const/16 v1, 10
    if-eq v0, v1, :L1
    const/16 v1, 12
    if-eq v0, v1, :L1
    const/16 v1, 13
    if-eq v0, v1, :L1
    const/16 v1, 32
    if-eq v0, v1, :L1
    return p1
  :L1
    add-int/lit8 p1, p1, 1
    goto :L0
  :L2
    return p2
.end method

.method public static skipTrailingAsciiWhitespace(Ljava/lang/String;II)I
  .registers 5
    add-int/lit8 p2, p2, -1
  :L0
    if-lt p2, p1, :L2
  .line 1
    invoke-virtual { p0, p2 }, Ljava/lang/String;->charAt(I)C
    move-result v0
    const/16 v1, 9
    if-eq v0, v1, :L1
    const/16 v1, 10
    if-eq v0, v1, :L1
    const/16 v1, 12
    if-eq v0, v1, :L1
    const/16 v1, 13
    if-eq v0, v1, :L1
    const/16 v1, 32
    if-eq v0, v1, :L1
    add-int/lit8 p2, p2, 1
    return p2
  :L1
    add-int/lit8 p2, p2, -1
    goto :L0
  :L2
    return p1
.end method

.method public static threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
  .registers 3
  .line 1
    new-instance v0, Lokhttp3/internal/Util$2;
    invoke-direct { v0, p0, p1 }, Lokhttp3/internal/Util$2;-><init>(Ljava/lang/String;Z)V
    return-object v0
.end method

.method public static toHeaders(Ljava/util/List;)Lokhttp3/Headers;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Lokhttp3/internal/http2/Header;",
      ">;)",
      "Lokhttp3/Headers;"
    }
  .end annotation
  .registers 5
  .line 1
    new-instance v0, Lokhttp3/Headers$Builder;
    invoke-direct { v0 }, Lokhttp3/Headers$Builder;-><init>()V
  .line 2
    invoke-interface { p0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object p0
  :L0
    invoke-interface { p0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { p0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lokhttp3/internal/http2/Header;
  .line 3
    sget-object v2, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;
    iget-object v3, v1, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;
    invoke-virtual { v3 }, Lokio/ByteString;->utf8()Ljava/lang/String;
    move-result-object v3
    iget-object v1, v1, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;
    invoke-virtual { v1 }, Lokio/ByteString;->utf8()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v2, v0, v3, v1 }, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
    goto :L0
  :L1
  .line 4
    invoke-virtual { v0 }, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;
    move-result-object p0
    return-object p0
.end method

.method public static trimSubstring(Ljava/lang/String;II)Ljava/lang/String;
  .registers 3
  .line 1
    invoke-static { p0, p1, p2 }, Lokhttp3/internal/Util;->skipLeadingAsciiWhitespace(Ljava/lang/String;II)I
    move-result p1
  .line 2
    invoke-static { p0, p1, p2 }, Lokhttp3/internal/Util;->skipTrailingAsciiWhitespace(Ljava/lang/String;II)I
    move-result p2
  .line 3
    invoke-virtual { p0, p1, p2 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method public static verifyAsIpAddress(Ljava/lang/String;)Z
  .registers 2
  .line 1
    sget-object v0, Lokhttp3/internal/Util;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;
    invoke-virtual { v0, p0 }, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    move-result-object p0
    invoke-virtual { p0 }, Ljava/util/regex/Matcher;->matches()Z
    move-result p0
    return p0
.end method
