.class public final Lokhttp3/Cache;
.super Ljava/lang/Object;
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lokhttp3/Cache$CacheResponseBody;,
    Lokhttp3/Cache$Entry;,
    Lokhttp3/Cache$CacheRequestImpl;
  }
.end annotation

.field private final static ENTRY_BODY:I = 1

.field private final static ENTRY_COUNT:I = 2

.field private final static ENTRY_METADATA:I = 0

.field private final static VERSION:I = 201105

.field final cache:Lokhttp3/internal/cache/DiskLruCache;

.field private hitCount:I

.field final internalCache:Lokhttp3/internal/cache/InternalCache;

.field private networkCount:I

.field private requestCount:I

.field writeAbortCount:I

.field writeSuccessCount:I

.method public constructor <init>(Ljava/io/File;J)V
  .registers 5
  .line 1
    sget-object v0, Lokhttp3/internal/io/FileSystem;->SYSTEM:Lokhttp3/internal/io/FileSystem;
    invoke-direct { p0, p1, p2, p3, v0 }, Lokhttp3/Cache;-><init>(Ljava/io/File;JLokhttp3/internal/io/FileSystem;)V
    return-void
.end method

.method constructor <init>(Ljava/io/File;JLokhttp3/internal/io/FileSystem;)V
  .registers 12
  .line 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 3
    new-instance v0, Lokhttp3/Cache$1;
    invoke-direct { v0, p0 }, Lokhttp3/Cache$1;-><init>(Lokhttp3/Cache;)V
    iput-object v0, p0, Lokhttp3/Cache;->internalCache:Lokhttp3/internal/cache/InternalCache;
    const v3, 201105
    const/4 v4, 2
    move-object v1, p4
    move-object v2, p1
    move-wide v5, p2
  .line 4
    invoke-static/range { v1 .. v6 }, Lokhttp3/internal/cache/DiskLruCache;->create(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJ)Lokhttp3/internal/cache/DiskLruCache;
    move-result-object p1
    iput-object p1, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;
    return-void
.end method

.method private abortQuietly(Lokhttp3/internal/cache/DiskLruCache$Editor;)V
  .parameter # Lokhttp3/internal/cache/DiskLruCache$Editor;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L1
  .registers 2
    if-eqz p1, :L1
  :L0
  .line 1
    invoke-virtual { p1 }, Lokhttp3/internal/cache/DiskLruCache$Editor;->abort()V
  :L1
    return-void
.end method

.method public static key(Lokhttp3/HttpUrl;)Ljava/lang/String;
  .registers 1
  .line 1
    invoke-virtual { p0 }, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-static { p0 }, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    move-result-object p0
    invoke-virtual { p0 }, Lokio/ByteString;->md5()Lokio/ByteString;
    move-result-object p0
    invoke-virtual { p0 }, Lokio/ByteString;->hex()Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method static readInt(Lokio/BufferedSource;)I
  .catch Ljava/lang/NumberFormatException; { :L0 .. :L2 } :L2
  .registers 6
  :L0
  .line 1
    invoke-interface { p0 }, Lokio/BufferedSource;->readDecimalLong()J
    move-result-wide v0
  .line 2
    invoke-interface { p0 }, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;
    move-result-object p0
    const-wide/16 v2, 0
    cmp-long v4, v0, v2
    if-ltz v4, :L1
    const-wide/32 v2, 2147483647
    cmp-long v4, v0, v2
    if-gtz v4, :L1
  .line 3
    invoke-virtual { p0 }, Ljava/lang/String;->isEmpty()Z
    move-result v2
    if-eqz v2, :L1
    long-to-int p0, v0
    return p0
  :L1
  .line 4
    new-instance v2, Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "expected an int but was \""
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v0, v1 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v3, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p0, "\""
    invoke-virtual { v3, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-direct { v2, p0 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v2
  :L2
    move-exception p0
  .line 5
    new-instance v0, Ljava/io/IOException;
    invoke-virtual { p0 }, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;
    move-result-object p0
    invoke-direct { v0, p0 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public close()V
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;
    invoke-virtual { v0 }, Lokhttp3/internal/cache/DiskLruCache;->close()V
    return-void
.end method

.method public delete()V
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;
    invoke-virtual { v0 }, Lokhttp3/internal/cache/DiskLruCache;->delete()V
    return-void
.end method

.method public directory()Ljava/io/File;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;
    invoke-virtual { v0 }, Lokhttp3/internal/cache/DiskLruCache;->getDirectory()Ljava/io/File;
    move-result-object v0
    return-object v0
.end method

.method public evictAll()V
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;
    invoke-virtual { v0 }, Lokhttp3/internal/cache/DiskLruCache;->evictAll()V
    return-void
.end method

.method public flush()V
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;
    invoke-virtual { v0 }, Lokhttp3/internal/cache/DiskLruCache;->flush()V
    return-void
.end method

.method get(Lokhttp3/Request;)Lokhttp3/Response;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L6
  .catch Ljava/io/IOException; { :L2 .. :L3 } :L5
  .registers 6
  .line 1
    invoke-virtual { p1 }, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    move-result-object v0
    invoke-static { v0 }, Lokhttp3/Cache;->key(Lokhttp3/HttpUrl;)Ljava/lang/String;
    move-result-object v0
    const/4 v1, 0
  :L0
  .line 2
    iget-object v2, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;
    invoke-virtual { v2, v0 }, Lokhttp3/internal/cache/DiskLruCache;->get(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    move-result-object v0
  :L1
    if-nez v0, :L2
    return-object v1
  :L2
  .line 3
    new-instance v2, Lokhttp3/Cache$Entry;
    const/4 v3, 0
    invoke-virtual { v0, v3 }, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->getSource(I)Lokio/Source;
    move-result-object v3
    invoke-direct { v2, v3 }, Lokhttp3/Cache$Entry;-><init>(Lokio/Source;)V
  :L3
  .line 4
    invoke-virtual { v2, v0 }, Lokhttp3/Cache$Entry;->response(Lokhttp3/internal/cache/DiskLruCache$Snapshot;)Lokhttp3/Response;
    move-result-object v0
  .line 5
    invoke-virtual { v2, p1, v0 }, Lokhttp3/Cache$Entry;->matches(Lokhttp3/Request;Lokhttp3/Response;)Z
    move-result p1
    if-nez p1, :L4
  .line 6
    invoke-virtual { v0 }, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;
    move-result-object p1
    invoke-static { p1 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V
    return-object v1
  :L4
    return-object v0
  :L5
  .line 7
    invoke-static { v0 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V
  :L6
    return-object v1
.end method

.method public declared-synchronized hitCount()I
  .catchall { :L0 .. :L1 } :L2
  .registers 2
    monitor-enter p0
  :L0
  .line 1
    iget v0, p0, Lokhttp3/Cache;->hitCount:I
  :L1
    monitor-exit p0
    return v0
  :L2
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method public initialize()V
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;
    invoke-virtual { v0 }, Lokhttp3/internal/cache/DiskLruCache;->initialize()V
    return-void
.end method

.method public isClosed()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;
    invoke-virtual { v0 }, Lokhttp3/internal/cache/DiskLruCache;->isClosed()Z
    move-result v0
    return v0
.end method

.method public maxSize()J
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;
    invoke-virtual { v0 }, Lokhttp3/internal/cache/DiskLruCache;->getMaxSize()J
    move-result-wide v0
    return-wide v0
.end method

.method public declared-synchronized networkCount()I
  .catchall { :L0 .. :L1 } :L2
  .registers 2
    monitor-enter p0
  :L0
  .line 1
    iget v0, p0, Lokhttp3/Cache;->networkCount:I
  :L1
    monitor-exit p0
    return v0
  :L2
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method put(Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L1
  .catch Ljava/io/IOException; { :L5 .. :L6 } :L9
  .catch Ljava/io/IOException; { :L7 .. :L8 } :L10
  .registers 5
  .line 1
    invoke-virtual { p1 }, Lokhttp3/Response;->request()Lokhttp3/Request;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/Request;->method()Ljava/lang/String;
    move-result-object v0
  .line 2
    invoke-virtual { p1 }, Lokhttp3/Response;->request()Lokhttp3/Request;
    move-result-object v1
    invoke-virtual { v1 }, Lokhttp3/Request;->method()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lokhttp3/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z
    move-result v1
    const/4 v2, 0
    if-eqz v1, :L2
  :L0
  .line 3
    invoke-virtual { p1 }, Lokhttp3/Response;->request()Lokhttp3/Request;
    move-result-object p1
    invoke-virtual { p0, p1 }, Lokhttp3/Cache;->remove(Lokhttp3/Request;)V
  :L1
    return-object v2
  :L2
    const-string v1, "GET"
  .line 4
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L3
    return-object v2
  :L3
  .line 5
    invoke-static { p1 }, Lokhttp3/internal/http/HttpHeaders;->hasVaryAll(Lokhttp3/Response;)Z
    move-result v0
    if-eqz v0, :L4
    return-object v2
  :L4
  .line 6
    new-instance v0, Lokhttp3/Cache$Entry;
    invoke-direct { v0, p1 }, Lokhttp3/Cache$Entry;-><init>(Lokhttp3/Response;)V
  :L5
  .line 7
    iget-object v1, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;
    invoke-virtual { p1 }, Lokhttp3/Response;->request()Lokhttp3/Request;
    move-result-object p1
    invoke-virtual { p1 }, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    move-result-object p1
    invoke-static { p1 }, Lokhttp3/Cache;->key(Lokhttp3/HttpUrl;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v1, p1 }, Lokhttp3/internal/cache/DiskLruCache;->edit(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Editor;
    move-result-object p1
  :L6
    if-nez p1, :L7
    return-object v2
  :L7
  .line 8
    invoke-virtual { v0, p1 }, Lokhttp3/Cache$Entry;->writeTo(Lokhttp3/internal/cache/DiskLruCache$Editor;)V
  .line 9
    new-instance v0, Lokhttp3/Cache$CacheRequestImpl;
    invoke-direct { v0, p0, p1 }, Lokhttp3/Cache$CacheRequestImpl;-><init>(Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V
  :L8
    return-object v0
  :L9
    move-object p1, v2
  :L10
  .line 10
    invoke-direct { p0, p1 }, Lokhttp3/Cache;->abortQuietly(Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    return-object v2
.end method

.method remove(Lokhttp3/Request;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;
    invoke-virtual { p1 }, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    move-result-object p1
    invoke-static { p1 }, Lokhttp3/Cache;->key(Lokhttp3/HttpUrl;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Lokhttp3/internal/cache/DiskLruCache;->remove(Ljava/lang/String;)Z
    return-void
.end method

.method public declared-synchronized requestCount()I
  .catchall { :L0 .. :L1 } :L2
  .registers 2
    monitor-enter p0
  :L0
  .line 1
    iget v0, p0, Lokhttp3/Cache;->requestCount:I
  :L1
    monitor-exit p0
    return v0
  :L2
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method public size()J
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;
    invoke-virtual { v0 }, Lokhttp3/internal/cache/DiskLruCache;->size()J
    move-result-wide v0
    return-wide v0
.end method

.method declared-synchronized trackConditionalCacheHit()V
  .catchall { :L0 .. :L1 } :L2
  .registers 2
    monitor-enter p0
  :L0
  .line 1
    iget v0, p0, Lokhttp3/Cache;->hitCount:I
    add-int/lit8 v0, v0, 1
    iput v0, p0, Lokhttp3/Cache;->hitCount:I
  :L1
  .line 2
    monitor-exit p0
    return-void
  :L2
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method declared-synchronized trackResponse(Lokhttp3/internal/cache/CacheStrategy;)V
  .catchall { :L0 .. :L2 } :L3
  .registers 3
    monitor-enter p0
  :L0
  .line 1
    iget v0, p0, Lokhttp3/Cache;->requestCount:I
    add-int/lit8 v0, v0, 1
    iput v0, p0, Lokhttp3/Cache;->requestCount:I
  .line 2
    iget-object v0, p1, Lokhttp3/internal/cache/CacheStrategy;->networkRequest:Lokhttp3/Request;
    if-eqz v0, :L1
  .line 3
    iget p1, p0, Lokhttp3/Cache;->networkCount:I
    add-int/lit8 p1, p1, 1
    iput p1, p0, Lokhttp3/Cache;->networkCount:I
    goto :L2
  :L1
  .line 4
    iget-object p1, p1, Lokhttp3/internal/cache/CacheStrategy;->cacheResponse:Lokhttp3/Response;
    if-eqz p1, :L2
  .line 5
    iget p1, p0, Lokhttp3/Cache;->hitCount:I
    add-int/lit8 p1, p1, 1
    iput p1, p0, Lokhttp3/Cache;->hitCount:I
  :L2
  .line 6
    monitor-exit p0
    return-void
  :L3
    move-exception p1
    monitor-exit p0
    throw p1
.end method

.method update(Lokhttp3/Response;Lokhttp3/Response;)V
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L4
  .catch Ljava/io/IOException; { :L2 .. :L3 } :L5
  .registers 4
  .line 1
    new-instance v0, Lokhttp3/Cache$Entry;
    invoke-direct { v0, p2 }, Lokhttp3/Cache$Entry;-><init>(Lokhttp3/Response;)V
  .line 2
    invoke-virtual { p1 }, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;
    move-result-object p1
    check-cast p1, Lokhttp3/Cache$CacheResponseBody;
    iget-object p1, p1, Lokhttp3/Cache$CacheResponseBody;->snapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;
  :L0
  .line 3
    invoke-virtual { p1 }, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->edit()Lokhttp3/internal/cache/DiskLruCache$Editor;
    move-result-object p1
  :L1
    if-eqz p1, :L6
  :L2
  .line 4
    invoke-virtual { v0, p1 }, Lokhttp3/Cache$Entry;->writeTo(Lokhttp3/internal/cache/DiskLruCache$Editor;)V
  .line 5
    invoke-virtual { p1 }, Lokhttp3/internal/cache/DiskLruCache$Editor;->commit()V
  :L3
    goto :L6
  :L4
    const/4 p1, 0
  :L5
  .line 6
    invoke-direct { p0, p1 }, Lokhttp3/Cache;->abortQuietly(Lokhttp3/internal/cache/DiskLruCache$Editor;)V
  :L6
    return-void
.end method

.method public urls()Ljava/util/Iterator;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/Iterator<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
  .registers 2
  .line 1
    new-instance v0, Lokhttp3/Cache$2;
    invoke-direct { v0, p0 }, Lokhttp3/Cache$2;-><init>(Lokhttp3/Cache;)V
    return-object v0
.end method

.method public declared-synchronized writeAbortCount()I
  .catchall { :L0 .. :L1 } :L2
  .registers 2
    monitor-enter p0
  :L0
  .line 1
    iget v0, p0, Lokhttp3/Cache;->writeAbortCount:I
  :L1
    monitor-exit p0
    return v0
  :L2
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method public declared-synchronized writeSuccessCount()I
  .catchall { :L0 .. :L1 } :L2
  .registers 2
    monitor-enter p0
  :L0
  .line 1
    iget v0, p0, Lokhttp3/Cache;->writeSuccessCount:I
  :L1
    monitor-exit p0
    return v0
  :L2
    move-exception v0
    monitor-exit p0
    throw v0
.end method
