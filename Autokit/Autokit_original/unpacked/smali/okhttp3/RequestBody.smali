.class public abstract Lokhttp3/RequestBody;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;
  .parameter # Lokhttp3/MediaType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 3
    if-eqz p1, :L0
  .line 12
    new-instance v0, Lokhttp3/RequestBody$3;
    invoke-direct { v0, p0, p1 }, Lokhttp3/RequestBody$3;-><init>(Lokhttp3/MediaType;Ljava/io/File;)V
    return-object v0
  :L0
  .line 13
    new-instance p0, Ljava/lang/NullPointerException;
    const-string p1, "file == null"
    invoke-direct { p0, p1 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p0
.end method

.method public static create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;
  .parameter # Lokhttp3/MediaType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 4
  .line 1
    sget-object v0, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;
    if-eqz p0, :L0
  .line 2
    invoke-virtual { p0 }, Lokhttp3/MediaType;->charset()Ljava/nio/charset/Charset;
    move-result-object v0
    if-nez v0, :L0
  .line 3
    sget-object v0, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;
  .line 4
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string p0, "; charset=utf-8"
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-static { p0 }, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;
    move-result-object p0
  :L0
  .line 5
    invoke-virtual { p1, v0 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object p1
  .line 6
    invoke-static { p0, p1 }, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;
    move-result-object p0
    return-object p0
.end method

.method public static create(Lokhttp3/MediaType;Lokio/ByteString;)Lokhttp3/RequestBody;
  .parameter # Lokhttp3/MediaType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 3
  .line 7
    new-instance v0, Lokhttp3/RequestBody$1;
    invoke-direct { v0, p0, p1 }, Lokhttp3/RequestBody$1;-><init>(Lokhttp3/MediaType;Lokio/ByteString;)V
    return-object v0
.end method

.method public static create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;
  .parameter # Lokhttp3/MediaType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 4
  .line 8
    array-length v0, p1
    const/4 v1, 0
    invoke-static { p0, p1, v1, v0 }, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[BII)Lokhttp3/RequestBody;
    move-result-object p0
    return-object p0
.end method

.method public static create(Lokhttp3/MediaType;[BII)Lokhttp3/RequestBody;
  .parameter # Lokhttp3/MediaType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 11
    if-eqz p1, :L0
  .line 9
    array-length v0, p1
    int-to-long v1, v0
    int-to-long v3, p2
    int-to-long v5, p3
    invoke-static/range { v1 .. v6 }, Lokhttp3/internal/Util;->checkOffsetAndCount(JJJ)V
  .line 10
    new-instance v0, Lokhttp3/RequestBody$2;
    invoke-direct { v0, p0, p3, p1, p2 }, Lokhttp3/RequestBody$2;-><init>(Lokhttp3/MediaType;I[BI)V
    return-object v0
  :L0
  .line 11
    new-instance p0, Ljava/lang/NullPointerException;
    const-string p1, "content == null"
    invoke-direct { p0, p1 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p0
.end method

.method public contentLength()J
  .registers 3
    const-wide/16 v0, -1
    return-wide v0
.end method

.method public abstract contentType()Lokhttp3/MediaType;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end method

.method public abstract writeTo(Lokio/BufferedSink;)V
.end method
