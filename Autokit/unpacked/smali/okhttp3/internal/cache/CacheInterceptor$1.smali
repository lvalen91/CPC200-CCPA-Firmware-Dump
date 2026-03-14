.class Lokhttp3/internal/cache/CacheInterceptor$1;
.super Ljava/lang/Object;
.implements Lokio/Source;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lokhttp3/internal/cache/CacheInterceptor;->cacheWritingResponse(Lokhttp3/internal/cache/CacheRequest;Lokhttp3/Response;)Lokhttp3/Response;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field cacheRequestClosed:Z

.field final synthetic this$0:Lokhttp3/internal/cache/CacheInterceptor;

.field final synthetic val$cacheBody:Lokio/BufferedSink;

.field final synthetic val$cacheRequest:Lokhttp3/internal/cache/CacheRequest;

.field final synthetic val$source:Lokio/BufferedSource;

.method constructor <init>(Lokhttp3/internal/cache/CacheInterceptor;Lokio/BufferedSource;Lokhttp3/internal/cache/CacheRequest;Lokio/BufferedSink;)V
  .registers 5
  .line 1
    iput-object p1, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->this$0:Lokhttp3/internal/cache/CacheInterceptor;
    iput-object p2, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->val$source:Lokio/BufferedSource;
    iput-object p3, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lokhttp3/internal/cache/CacheRequest;
    iput-object p4, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lokio/BufferedSink;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public close()V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z
    if-nez v0, :L0
    const/16 v0, 100
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
  .line 2
    invoke-static { p0, v0, v1 }, Lokhttp3/internal/Util;->discard(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z
    move-result v0
    if-nez v0, :L0
    const/4 v0, 1
  .line 3
    iput-boolean v0, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z
  .line 4
    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lokhttp3/internal/cache/CacheRequest;
    invoke-interface { v0 }, Lokhttp3/internal/cache/CacheRequest;->abort()V
  :L0
  .line 5
    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->val$source:Lokio/BufferedSource;
    invoke-interface { v0 }, Lokio/Source;->close()V
    return-void
.end method

.method public read(Lokio/Buffer;J)J
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L4
  .registers 12
    const/4 v0, 1
  :L0
  .line 1
    iget-object v1, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->val$source:Lokio/BufferedSource;
    invoke-interface { v1, p1, p2, p3 }, Lokio/Source;->read(Lokio/Buffer;J)J
    move-result-wide p2
  :L1
    const-wide/16 v1, -1
    cmp-long v3, p2, v1
    if-nez v3, :L3
  .line 2
    iget-boolean p1, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z
    if-nez p1, :L2
  .line 3
    iput-boolean v0, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z
  .line 4
    iget-object p1, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lokio/BufferedSink;
    invoke-interface { p1 }, Lokio/Sink;->close()V
  :L2
    return-wide v1
  :L3
  .line 5
    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lokio/BufferedSink;
    invoke-interface { v0 }, Lokio/BufferedSink;->buffer()Lokio/Buffer;
    move-result-object v3
    invoke-virtual { p1 }, Lokio/Buffer;->size()J
    move-result-wide v0
    sub-long v4, v0, p2
    move-object v2, p1
    move-wide v6, p2
    invoke-virtual/range { v2 .. v7 }, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;
  .line 6
    iget-object p1, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lokio/BufferedSink;
    invoke-interface { p1 }, Lokio/BufferedSink;->emitCompleteSegments()Lokio/BufferedSink;
    return-wide p2
  :L4
    move-exception p1
  .line 7
    iget-boolean p2, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z
    if-nez p2, :L5
  .line 8
    iput-boolean v0, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z
  .line 9
    iget-object p2, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lokhttp3/internal/cache/CacheRequest;
    invoke-interface { p2 }, Lokhttp3/internal/cache/CacheRequest;->abort()V
  :L5
  .line 10
    throw p1
.end method

.method public timeout()Lokio/Timeout;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor$1;->val$source:Lokio/BufferedSource;
    invoke-interface { v0 }, Lokio/Source;->timeout()Lokio/Timeout;
    move-result-object v0
    return-object v0
.end method
