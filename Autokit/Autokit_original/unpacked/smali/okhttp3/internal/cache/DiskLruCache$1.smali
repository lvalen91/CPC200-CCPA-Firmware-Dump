.class Lokhttp3/internal/cache/DiskLruCache$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/internal/cache/DiskLruCache;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lokhttp3/internal/cache/DiskLruCache;

.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catchall { :L0 .. :L3 } :L11
  .catch Ljava/io/IOException; { :L4 .. :L5 } :L6
  .catchall { :L4 .. :L5 } :L11
  .catchall { :L6 .. :L7 } :L11
  .catch Ljava/io/IOException; { :L7 .. :L8 } :L9
  .catchall { :L7 .. :L8 } :L11
  .catchall { :L9 .. :L12 } :L11
  .registers 6
  .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    monitor-enter v0
  :L0
  .line 2
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    iget-boolean v1, v1, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z
    const/4 v2, 0
    const/4 v3, 1
    if-nez v1, :L1
    const/4 v1, 1
    goto :L2
  :L1
    const/4 v1, 0
  :L2
    iget-object v4, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    iget-boolean v4, v4, Lokhttp3/internal/cache/DiskLruCache;->closed:Z
    or-int/2addr v1, v4
    if-eqz v1, :L4
  .line 3
    monitor-exit v0
  :L3
    return-void
  :L4
  .line 4
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    invoke-virtual { v1 }, Lokhttp3/internal/cache/DiskLruCache;->trimToSize()V
  :L5
    goto :L7
  :L6
  .line 5
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    iput-boolean v3, v1, Lokhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z
  :L7
  .line 6
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    invoke-virtual { v1 }, Lokhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z
    move-result v1
    if-eqz v1, :L10
  .line 7
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    invoke-virtual { v1 }, Lokhttp3/internal/cache/DiskLruCache;->rebuildJournal()V
  .line 8
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    iput v2, v1, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I
  :L8
    goto :L10
  :L9
  .line 9
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    iput-boolean v3, v1, Lokhttp3/internal/cache/DiskLruCache;->mostRecentRebuildFailed:Z
  .line 10
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    invoke-static { }, Lokio/Okio;->blackhole()Lokio/Sink;
    move-result-object v2
    invoke-static { v2 }, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;
    move-result-object v2
    iput-object v2, v1, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;
  :L10
  .line 11
    monitor-exit v0
    return-void
  :L11
    move-exception v1
    monitor-exit v0
  :L12
    throw v1
.end method
