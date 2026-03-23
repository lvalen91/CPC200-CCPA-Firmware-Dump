.class public final Lokhttp3/MultipartBody;
.super Lokhttp3/RequestBody;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lokhttp3/MultipartBody$Builder;,
    Lokhttp3/MultipartBody$Part;
  }
.end annotation

.field public final static ALTERNATIVE:Lokhttp3/MediaType;

.field private final static COLONSPACE:[B

.field private final static CRLF:[B

.field private final static DASHDASH:[B

.field public final static DIGEST:Lokhttp3/MediaType;

.field public final static FORM:Lokhttp3/MediaType;

.field public final static MIXED:Lokhttp3/MediaType;

.field public final static PARALLEL:Lokhttp3/MediaType;

.field private final boundary:Lokio/ByteString;

.field private contentLength:J

.field private final contentType:Lokhttp3/MediaType;

.field private final originalType:Lokhttp3/MediaType;

.field private final parts:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Lokhttp3/MultipartBody$Part;",
      ">;"
    }
  .end annotation
.end field

.method static constructor <clinit>()V
  .registers 2
    const-string v0, "multipart/mixed"
  .line 1
    invoke-static { v0 }, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;
    move-result-object v0
    sput-object v0, Lokhttp3/MultipartBody;->MIXED:Lokhttp3/MediaType;
    const-string v0, "multipart/alternative"
  .line 2
    invoke-static { v0 }, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;
    move-result-object v0
    sput-object v0, Lokhttp3/MultipartBody;->ALTERNATIVE:Lokhttp3/MediaType;
    const-string v0, "multipart/digest"
  .line 3
    invoke-static { v0 }, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;
    move-result-object v0
    sput-object v0, Lokhttp3/MultipartBody;->DIGEST:Lokhttp3/MediaType;
    const-string v0, "multipart/parallel"
  .line 4
    invoke-static { v0 }, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;
    move-result-object v0
    sput-object v0, Lokhttp3/MultipartBody;->PARALLEL:Lokhttp3/MediaType;
    const-string v0, "multipart/form-data"
  .line 5
    invoke-static { v0 }, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;
    move-result-object v0
    sput-object v0, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;
    const/4 v0, 2
    new-array v1, v0, [B
  .line 6
    fill-array-data v1, :L0
    sput-object v1, Lokhttp3/MultipartBody;->COLONSPACE:[B
    new-array v1, v0, [B
  .line 7
    fill-array-data v1, :L1
    sput-object v1, Lokhttp3/MultipartBody;->CRLF:[B
    new-array v0, v0, [B
  .line 8
    fill-array-data v0, :L2
    sput-object v0, Lokhttp3/MultipartBody;->DASHDASH:[B
    return-void
  :L0
  .array-data 1
    58t
    32t
  .end array-data
  :L1
  .array-data 1
    13t
    10t
  .end array-data
  :L2
  .array-data 1
    45t
    45t
  .end array-data
.end method

.method constructor <init>(Lokio/ByteString;Lokhttp3/MediaType;Ljava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lokio/ByteString;",
      "Lokhttp3/MediaType;",
      "Ljava/util/List<",
      "Lokhttp3/MultipartBody$Part;",
      ">;)V"
    }
  .end annotation
  .registers 6
  .line 1
    invoke-direct { p0 }, Lokhttp3/RequestBody;-><init>()V
    const-wide/16 v0, -1
  .line 2
    iput-wide v0, p0, Lokhttp3/MultipartBody;->contentLength:J
  .line 3
    iput-object p1, p0, Lokhttp3/MultipartBody;->boundary:Lokio/ByteString;
  .line 4
    iput-object p2, p0, Lokhttp3/MultipartBody;->originalType:Lokhttp3/MediaType;
  .line 5
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string p2, "; boundary="
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Lokio/ByteString;->utf8()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;
    move-result-object p1
    iput-object p1, p0, Lokhttp3/MultipartBody;->contentType:Lokhttp3/MediaType;
  .line 6
    invoke-static { p3 }, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;
    move-result-object p1
    iput-object p1, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;
    return-void
.end method

.method static appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
  .registers 7
    const/16 v0, 34
  .line 1
    invoke-virtual { p0, v0 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  .line 2
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result v1
    const/4 v2, 0
  :L0
    if-ge v2, v1, :L5
  .line 3
    invoke-virtual { p1, v2 }, Ljava/lang/String;->charAt(I)C
    move-result v3
    const/16 v4, 10
    if-eq v3, v4, :L3
    const/16 v4, 13
    if-eq v3, v4, :L2
    if-eq v3, v0, :L1
  .line 4
    invoke-virtual { p0, v3 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    goto :L4
  :L1
    const-string v3, "%22"
  .line 5
    invoke-virtual { p0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    goto :L4
  :L2
    const-string v3, "%0D"
  .line 6
    invoke-virtual { p0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    goto :L4
  :L3
    const-string v3, "%0A"
  .line 7
    invoke-virtual { p0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L4
    add-int/lit8 v2, v2, 1
    goto :L0
  :L5
  .line 8
    invoke-virtual { p0, v0 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    return-object p0
.end method

.method private writeOrCountBytes(Lokio/BufferedSink;Z)J
  .parameter # Lokio/BufferedSink;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 15
    if-eqz p2, :L0
  .line 1
    new-instance p1, Lokio/Buffer;
    invoke-direct { p1 }, Lokio/Buffer;-><init>()V
    move-object v0, p1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
  .line 2
    iget-object v1, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;
    invoke-interface { v1 }, Ljava/util/List;->size()I
    move-result v1
    const/4 v2, 0
    const-wide/16 v3, 0
    const/4 v5, 0
  :L2
    if-ge v5, v1, :L10
  .line 3
    iget-object v6, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;
    invoke-interface { v6, v5 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Lokhttp3/MultipartBody$Part;
  .line 4
    iget-object v7, v6, Lokhttp3/MultipartBody$Part;->headers:Lokhttp3/Headers;
  .line 5
    iget-object v6, v6, Lokhttp3/MultipartBody$Part;->body:Lokhttp3/RequestBody;
  .line 6
    sget-object v8, Lokhttp3/MultipartBody;->DASHDASH:[B
    invoke-interface { p1, v8 }, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;
  .line 7
    iget-object v8, p0, Lokhttp3/MultipartBody;->boundary:Lokio/ByteString;
    invoke-interface { p1, v8 }, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;
  .line 8
    sget-object v8, Lokhttp3/MultipartBody;->CRLF:[B
    invoke-interface { p1, v8 }, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;
    if-eqz v7, :L4
  .line 9
    invoke-virtual { v7 }, Lokhttp3/Headers;->size()I
    move-result v8
    const/4 v9, 0
  :L3
    if-ge v9, v8, :L4
  .line 10
    invoke-virtual { v7, v9 }, Lokhttp3/Headers;->name(I)Ljava/lang/String;
    move-result-object v10
    invoke-interface { p1, v10 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object v10
    sget-object v11, Lokhttp3/MultipartBody;->COLONSPACE:[B
  .line 11
    invoke-interface { v10, v11 }, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;
    move-result-object v10
  .line 12
    invoke-virtual { v7, v9 }, Lokhttp3/Headers;->value(I)Ljava/lang/String;
    move-result-object v11
    invoke-interface { v10, v11 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object v10
    sget-object v11, Lokhttp3/MultipartBody;->CRLF:[B
  .line 13
    invoke-interface { v10, v11 }, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;
    add-int/lit8 v9, v9, 1
    goto :L3
  :L4
  .line 14
    invoke-virtual { v6 }, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;
    move-result-object v7
    if-eqz v7, :L5
    const-string v8, "Content-Type: "
  .line 15
    invoke-interface { p1, v8 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object v8
  .line 16
    invoke-virtual { v7 }, Lokhttp3/MediaType;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-interface { v8, v7 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object v7
    sget-object v8, Lokhttp3/MultipartBody;->CRLF:[B
  .line 17
    invoke-interface { v7, v8 }, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;
  :L5
  .line 18
    invoke-virtual { v6 }, Lokhttp3/RequestBody;->contentLength()J
    move-result-wide v7
    const-wide/16 v9, -1
    cmp-long v11, v7, v9
    if-eqz v11, :L6
    const-string v9, "Content-Length: "
  .line 19
    invoke-interface { p1, v9 }, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    move-result-object v9
  .line 20
    invoke-interface { v9, v7, v8 }, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;
    move-result-object v9
    sget-object v10, Lokhttp3/MultipartBody;->CRLF:[B
  .line 21
    invoke-interface { v9, v10 }, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;
    goto :L7
  :L6
    if-eqz p2, :L7
  .line 22
    invoke-virtual { v0 }, Lokio/Buffer;->clear()V
    return-wide v9
  :L7
  .line 23
    sget-object v9, Lokhttp3/MultipartBody;->CRLF:[B
    invoke-interface { p1, v9 }, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;
    if-eqz p2, :L8
    add-long/2addr v3, v7
    goto :L9
  :L8
  .line 24
    invoke-virtual { v6, p1 }, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V
  :L9
  .line 25
    sget-object v6, Lokhttp3/MultipartBody;->CRLF:[B
    invoke-interface { p1, v6 }, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;
    add-int/lit8 v5, v5, 1
    goto/16 :L2
  :L10
  .line 26
    sget-object v1, Lokhttp3/MultipartBody;->DASHDASH:[B
    invoke-interface { p1, v1 }, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;
  .line 27
    iget-object v1, p0, Lokhttp3/MultipartBody;->boundary:Lokio/ByteString;
    invoke-interface { p1, v1 }, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;
  .line 28
    sget-object v1, Lokhttp3/MultipartBody;->DASHDASH:[B
    invoke-interface { p1, v1 }, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;
  .line 29
    sget-object v1, Lokhttp3/MultipartBody;->CRLF:[B
    invoke-interface { p1, v1 }, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;
    if-eqz p2, :L11
  .line 30
    invoke-virtual { v0 }, Lokio/Buffer;->size()J
    move-result-wide p1
    add-long/2addr v3, p1
  .line 31
    invoke-virtual { v0 }, Lokio/Buffer;->clear()V
  :L11
    return-wide v3
.end method

.method public boundary()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/MultipartBody;->boundary:Lokio/ByteString;
    invoke-virtual { v0 }, Lokio/ByteString;->utf8()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public contentLength()J
  .registers 6
  .line 1
    iget-wide v0, p0, Lokhttp3/MultipartBody;->contentLength:J
    const-wide/16 v2, -1
    cmp-long v4, v0, v2
    if-eqz v4, :L0
    return-wide v0
  :L0
    const/4 v0, 0
    const/4 v1, 1
  .line 2
    invoke-direct { p0, v0, v1 }, Lokhttp3/MultipartBody;->writeOrCountBytes(Lokio/BufferedSink;Z)J
    move-result-wide v0
    iput-wide v0, p0, Lokhttp3/MultipartBody;->contentLength:J
    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/MultipartBody;->contentType:Lokhttp3/MediaType;
    return-object v0
.end method

.method public part(I)Lokhttp3/MultipartBody$Part;
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;
    invoke-interface { v0, p1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lokhttp3/MultipartBody$Part;
    return-object p1
.end method

.method public parts()Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/List<",
      "Lokhttp3/MultipartBody$Part;",
      ">;"
    }
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;
    return-object v0
.end method

.method public size()I
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    return v0
.end method

.method public type()Lokhttp3/MediaType;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/MultipartBody;->originalType:Lokhttp3/MediaType;
    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-direct { p0, p1, v0 }, Lokhttp3/MultipartBody;->writeOrCountBytes(Lokio/BufferedSink;Z)J
    return-void
.end method
