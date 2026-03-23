.class Lokhttp3/Cache$CacheResponseBody;
.super Lokhttp3/ResponseBody;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/Cache;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "CacheResponseBody"
.end annotation

.field private final bodySource:Lokio/BufferedSource;

.field private final contentLength:Ljava/lang/String;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.field private final contentType:Ljava/lang/String;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.field final snapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Lokhttp3/ResponseBody;-><init>()V
  .line 2
    iput-object p1, p0, Lokhttp3/Cache$CacheResponseBody;->snapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;
  .line 3
    iput-object p2, p0, Lokhttp3/Cache$CacheResponseBody;->contentType:Ljava/lang/String;
  .line 4
    iput-object p3, p0, Lokhttp3/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;
    const/4 p2, 1
  .line 5
    invoke-virtual { p1, p2 }, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->getSource(I)Lokio/Source;
    move-result-object p2
  .line 6
    new-instance p3, Lokhttp3/Cache$CacheResponseBody$1;
    invoke-direct { p3, p0, p2, p1 }, Lokhttp3/Cache$CacheResponseBody$1;-><init>(Lokhttp3/Cache$CacheResponseBody;Lokio/Source;Lokhttp3/internal/cache/DiskLruCache$Snapshot;)V
    invoke-static { p3 }, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;
    move-result-object p1
    iput-object p1, p0, Lokhttp3/Cache$CacheResponseBody;->bodySource:Lokio/BufferedSource;
    return-void
.end method

.method public contentLength()J
  .catch Ljava/lang/NumberFormatException; { :L0 .. :L1 } :L1
  .registers 4
    const-wide/16 v0, -1
  :L0
  .line 1
    iget-object v2, p0, Lokhttp3/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;
    if-eqz v2, :L1
    iget-object v2, p0, Lokhttp3/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;
    invoke-static { v2 }, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    move-result-wide v0
  :L1
    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Cache$CacheResponseBody;->contentType:Ljava/lang/String;
    if-eqz v0, :L0
    invoke-static { v0 }, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public source()Lokio/BufferedSource;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Cache$CacheResponseBody;->bodySource:Lokio/BufferedSource;
    return-object v0
.end method
