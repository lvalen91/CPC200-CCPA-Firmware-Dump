.class public final Lokhttp3/internal/http2/Http2;
.super Ljava/lang/Object;
.source "SourceFile"

.field final static BINARY:[Ljava/lang/String;

.field final static CONNECTION_PREFACE:Lokio/ByteString;

.field final static FLAGS:[Ljava/lang/String;

.field final static FLAG_ACK:B = 1t

.field final static FLAG_COMPRESSED:B = 32t

.field final static FLAG_END_HEADERS:B = 4t

.field final static FLAG_END_PUSH_PROMISE:B = 4t

.field final static FLAG_END_STREAM:B = 1t

.field final static FLAG_NONE:B = 0t

.field final static FLAG_PADDED:B = 8t

.field final static FLAG_PRIORITY:B = 32t

.field private final static FRAME_NAMES:[Ljava/lang/String;

.field final static INITIAL_MAX_FRAME_SIZE:I = 16384

.field final static TYPE_CONTINUATION:B = 9t

.field final static TYPE_DATA:B = 0t

.field final static TYPE_GOAWAY:B = 7t

.field final static TYPE_HEADERS:B = 1t

.field final static TYPE_PING:B = 6t

.field final static TYPE_PRIORITY:B = 2t

.field final static TYPE_PUSH_PROMISE:B = 5t

.field final static TYPE_RST_STREAM:B = 3t

.field final static TYPE_SETTINGS:B = 4t

.field final static TYPE_WINDOW_UPDATE:B = 8t

.method static constructor <clinit>()V
  .registers 16
    const-string v0, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"
  .line 1
    invoke-static { v0 }, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    move-result-object v0
    sput-object v0, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lokio/ByteString;
    const/16 v0, 10
    new-array v0, v0, [Ljava/lang/String;
    const-string v1, "DATA"
    const/4 v2, 0
    aput-object v1, v0, v2
    const-string v1, "HEADERS"
    const/4 v3, 1
    aput-object v1, v0, v3
    const/4 v1, 2
    const-string v4, "PRIORITY"
    aput-object v4, v0, v1
    const-string v1, "RST_STREAM"
    const/4 v5, 3
    aput-object v1, v0, v5
    const-string v1, "SETTINGS"
    const/4 v6, 4
    aput-object v1, v0, v6
    const/4 v1, 5
    const-string v7, "PUSH_PROMISE"
    aput-object v7, v0, v1
    const/4 v1, 6
    const-string v7, "PING"
    aput-object v7, v0, v1
    const/4 v1, 7
    const-string v7, "GOAWAY"
    aput-object v7, v0, v1
    const-string v1, "WINDOW_UPDATE"
    const/16 v7, 8
    aput-object v1, v0, v7
    const/16 v1, 9
    const-string v8, "CONTINUATION"
    aput-object v8, v0, v1
  .line 2
    sput-object v0, Lokhttp3/internal/http2/Http2;->FRAME_NAMES:[Ljava/lang/String;
    const/16 v0, 64
    new-array v0, v0, [Ljava/lang/String;
  .line 3
    sput-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;
    const/16 v0, 256
    new-array v0, v0, [Ljava/lang/String;
  .line 4
    sput-object v0, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;
    const/4 v0, 0
  :L0
  .line 5
    sget-object v1, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;
    array-length v8, v1
    const/16 v9, 32
    if-ge v0, v8, :L1
    new-array v8, v3, [Ljava/lang/Object;
  .line 6
    invoke-static { v0 }, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;
    move-result-object v10
    aput-object v10, v8, v2
    const-string v10, "%8s"
    invoke-static { v10, v8 }, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v8
    const/16 v10, 48
    invoke-virtual { v8, v9, v10 }, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    move-result-object v8
    aput-object v8, v1, v0
    add-int/lit8 v0, v0, 1
    goto :L0
  :L1
  .line 7
    sget-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;
    const-string v1, ""
    aput-object v1, v0, v2
    const-string v1, "END_STREAM"
  .line 8
    aput-object v1, v0, v3
    new-array v1, v3, [I
    aput v3, v1, v2
    const-string v8, "PADDED"
  .line 9
    aput-object v8, v0, v7
    const/4 v0, 0
  :L2
    const-string v8, "|PADDED"
    if-ge v0, v3, :L3
  .line 10
    aget v10, v1, v0
  .line 11
    sget-object v11, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;
    or-int/lit8 v12, v10, 8
    new-instance v13, Ljava/lang/StringBuilder;
    invoke-direct { v13 }, Ljava/lang/StringBuilder;-><init>()V
    sget-object v14, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;
    aget-object v10, v14, v10
    invoke-virtual { v13, v10 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v13, v8 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v13 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
    aput-object v8, v11, v12
    add-int/lit8 v0, v0, 1
    goto :L2
  :L3
  .line 12
    sget-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;
    const-string v10, "END_HEADERS"
    aput-object v10, v0, v6
  .line 13
    aput-object v4, v0, v9
    const/16 v4, 36
    const-string v6, "END_HEADERS|PRIORITY"
  .line 14
    aput-object v6, v0, v4
    new-array v0, v5, [I
  .line 15
    fill-array-data v0, :L10
    const/4 v4, 0
  :L4
    if-ge v4, v5, :L7
  .line 16
    aget v6, v0, v4
    const/4 v9, 0
  :L5
    if-ge v9, v3, :L6
  .line 17
    aget v10, v1, v9
  .line 18
    sget-object v11, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;
    or-int v12, v10, v6
    new-instance v13, Ljava/lang/StringBuilder;
    invoke-direct { v13 }, Ljava/lang/StringBuilder;-><init>()V
    sget-object v14, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;
    aget-object v14, v14, v10
    invoke-virtual { v13, v14 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/16 v14, 124
    invoke-virtual { v13, v14 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    sget-object v15, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;
    aget-object v15, v15, v6
    invoke-virtual { v13, v15 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v13 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v13
    aput-object v13, v11, v12
  .line 19
    sget-object v11, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;
    or-int/2addr v12, v7
    new-instance v13, Ljava/lang/StringBuilder;
    invoke-direct { v13 }, Ljava/lang/StringBuilder;-><init>()V
    sget-object v15, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;
    aget-object v10, v15, v10
    invoke-virtual { v13, v10 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v13, v14 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    sget-object v10, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;
    aget-object v10, v10, v6
    invoke-virtual { v13, v10 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v13, v8 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v13 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v10
    aput-object v10, v11, v12
    add-int/lit8 v9, v9, 1
    goto :L5
  :L6
    add-int/lit8 v4, v4, 1
    goto :L4
  :L7
  .line 20
    sget-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;
    array-length v1, v0
    if-ge v2, v1, :L9
  .line 21
    aget-object v1, v0, v2
    if-nez v1, :L8
    sget-object v1, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;
    aget-object v1, v1, v2
    aput-object v1, v0, v2
  :L8
    add-int/lit8 v2, v2, 1
    goto :L7
  :L9
    return-void
  :L10
  .array-data 4
    4t 0t 0t 0t
    32t 0t 0t 0t
    36t 0t 0t 0t
  .end array-data
.end method

.method private constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static formatFlags(BB)Ljava/lang/String;
  .registers 4
    if-nez p1, :L0
    const-string p0, ""
    return-object p0
  :L0
    const/4 v0, 2
    if-eq p0, v0, :L8
    const/4 v0, 3
    if-eq p0, v0, :L8
    const/4 v0, 4
    if-eq p0, v0, :L5
    const/4 v0, 6
    if-eq p0, v0, :L5
    const/4 v0, 7
    if-eq p0, v0, :L8
    const/16 v0, 8
    if-eq p0, v0, :L8
  .line 1
    sget-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;
    array-length v1, v0
    if-ge p1, v1, :L1
    aget-object v0, v0, p1
    goto :L2
  :L1
    sget-object v0, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;
    aget-object v0, v0, p1
  :L2
    const/4 v1, 5
    if-ne p0, v1, :L3
    and-int/lit8 v1, p1, 4
    if-eqz v1, :L3
    const-string p0, "HEADERS"
    const-string p1, "PUSH_PROMISE"
  .line 2
    invoke-virtual { v0, p0, p1 }, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L3
    if-nez p0, :L4
    and-int/lit8 p0, p1, 32
    if-eqz p0, :L4
    const-string p0, "PRIORITY"
    const-string p1, "COMPRESSED"
  .line 3
    invoke-virtual { v0, p0, p1 }, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L4
    return-object v0
  :L5
    const/4 p0, 1
    if-ne p1, p0, :L6
    const-string p0, "ACK"
    goto :L7
  :L6
  .line 4
    sget-object p0, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;
    aget-object p0, p0, p1
  :L7
    return-object p0
  :L8
  .line 5
    sget-object p0, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;
    aget-object p0, p0, p1
    return-object p0
.end method

.method static frameLog(ZIIBB)Ljava/lang/String;
  .registers 9
  .line 1
    sget-object v0, Lokhttp3/internal/http2/Http2;->FRAME_NAMES:[Ljava/lang/String;
    array-length v1, v0
    const/4 v2, 0
    const/4 v3, 1
    if-ge p3, v1, :L0
    aget-object v0, v0, p3
    goto :L1
  :L0
    new-array v0, v3, [Ljava/lang/Object;
    invoke-static { p3 }, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
    move-result-object v1
    aput-object v1, v0, v2
    const-string v1, "0x%02x"
    invoke-static { v1, v0 }, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
  :L1
  .line 2
    invoke-static { p3, p4 }, Lokhttp3/internal/http2/Http2;->formatFlags(BB)Ljava/lang/String;
    move-result-object p3
    const/4 p4, 5
    new-array p4, p4, [Ljava/lang/Object;
    if-eqz p0, :L2
    const-string p0, "<<"
    goto :L3
  :L2
    const-string p0, ">>"
  :L3
    aput-object p0, p4, v2
  .line 3
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p0
    aput-object p0, p4, v3
    const/4 p0, 2
    invoke-static { p2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    aput-object p1, p4, p0
    const/4 p0, 3
    aput-object v0, p4, p0
    const/4 p0, 4
    aput-object p3, p4, p0
    const-string p0, "%s 0x%08x %5d %-13s %s"
    invoke-static { p0, p4 }, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method static varargs illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;
    invoke-static { p0, p1 }, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object p0
    invoke-direct { v0, p0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method static varargs ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
  .registers 3
  .line 1
    new-instance v0, Ljava/io/IOException;
    invoke-static { p0, p1 }, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object p0
    invoke-direct { v0, p0 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
.end method
