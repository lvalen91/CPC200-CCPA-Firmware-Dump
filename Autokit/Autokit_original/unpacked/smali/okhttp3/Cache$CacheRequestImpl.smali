.class final Lokhttp3/Cache$CacheRequestImpl;
.super Ljava/lang/Object;
.implements Lokhttp3/internal/cache/CacheRequest;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/Cache;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 18
  name = "CacheRequestImpl"
.end annotation

.field private body:Lokio/Sink;

.field private cacheOut:Lokio/Sink;

.field done:Z

.field private final editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

.field final synthetic this$0:Lokhttp3/Cache;

.method constructor <init>(Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V
  .registers 5
  .line 1
    iput-object p1, p0, Lokhttp3/Cache$CacheRequestImpl;->this$0:Lokhttp3/Cache;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p2, p0, Lokhttp3/Cache$CacheRequestImpl;->editor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    const/4 v0, 1
  .line 3
    invoke-virtual { p2, v0 }, Lokhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Lokio/Sink;
    move-result-object v0
    iput-object v0, p0, Lokhttp3/Cache$CacheRequestImpl;->cacheOut:Lokio/Sink;
  .line 4
    new-instance v1, Lokhttp3/Cache$CacheRequestImpl$1;
    invoke-direct { v1, p0, v0, p1, p2 }, Lokhttp3/Cache$CacheRequestImpl$1;-><init>(Lokhttp3/Cache$CacheRequestImpl;Lokio/Sink;Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    iput-object v1, p0, Lokhttp3/Cache$CacheRequestImpl;->body:Lokio/Sink;
    return-void
.end method

.method public abort()V
  .catchall { :L0 .. :L2 } :L5
  .catch Ljava/io/IOException; { :L3 .. :L4 } :L4
  .catchall { :L6 .. :L7 } :L5
  .registers 5
  .line 1
    iget-object v0, p0, Lokhttp3/Cache$CacheRequestImpl;->this$0:Lokhttp3/Cache;
    monitor-enter v0
  :L0
  .line 2
    iget-boolean v1, p0, Lokhttp3/Cache$CacheRequestImpl;->done:Z
    if-eqz v1, :L1
  .line 3
    monitor-exit v0
    return-void
  :L1
    const/4 v1, 1
  .line 4
    iput-boolean v1, p0, Lokhttp3/Cache$CacheRequestImpl;->done:Z
  .line 5
    iget-object v2, p0, Lokhttp3/Cache$CacheRequestImpl;->this$0:Lokhttp3/Cache;
    iget v3, v2, Lokhttp3/Cache;->writeAbortCount:I
    add-int/2addr v3, v1
    iput v3, v2, Lokhttp3/Cache;->writeAbortCount:I
  .line 6
    monitor-exit v0
  :L2
  .line 7
    iget-object v0, p0, Lokhttp3/Cache$CacheRequestImpl;->cacheOut:Lokio/Sink;
    invoke-static { v0 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V
  :L3
  .line 8
    iget-object v0, p0, Lokhttp3/Cache$CacheRequestImpl;->editor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    invoke-virtual { v0 }, Lokhttp3/internal/cache/DiskLruCache$Editor;->abort()V
  :L4
    return-void
  :L5
    move-exception v1
  :L6
  .line 9
    monitor-exit v0
  :L7
    throw v1
.end method

.method public body()Lokio/Sink;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Cache$CacheRequestImpl;->body:Lokio/Sink;
    return-object v0
.end method
