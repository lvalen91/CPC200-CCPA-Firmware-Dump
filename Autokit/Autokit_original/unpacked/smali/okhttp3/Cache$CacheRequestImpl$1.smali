.class Lokhttp3/Cache$CacheRequestImpl$1;
.super Lokio/ForwardingSink;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lokhttp3/Cache$CacheRequestImpl;-><init>(Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$1:Lokhttp3/Cache$CacheRequestImpl;

.field final synthetic val$editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

.field final synthetic val$this$0:Lokhttp3/Cache;

.method constructor <init>(Lokhttp3/Cache$CacheRequestImpl;Lokio/Sink;Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V
  .registers 5
  .line 1
    iput-object p1, p0, Lokhttp3/Cache$CacheRequestImpl$1;->this$1:Lokhttp3/Cache$CacheRequestImpl;
    iput-object p3, p0, Lokhttp3/Cache$CacheRequestImpl$1;->val$this$0:Lokhttp3/Cache;
    iput-object p4, p0, Lokhttp3/Cache$CacheRequestImpl$1;->val$editor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    invoke-direct { p0, p2 }, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V
    return-void
.end method

.method public close()V
  .catchall { :L0 .. :L2 } :L3
  .catchall { :L4 .. :L5 } :L3
  .registers 5
  .line 1
    iget-object v0, p0, Lokhttp3/Cache$CacheRequestImpl$1;->this$1:Lokhttp3/Cache$CacheRequestImpl;
    iget-object v0, v0, Lokhttp3/Cache$CacheRequestImpl;->this$0:Lokhttp3/Cache;
    monitor-enter v0
  :L0
  .line 2
    iget-object v1, p0, Lokhttp3/Cache$CacheRequestImpl$1;->this$1:Lokhttp3/Cache$CacheRequestImpl;
    iget-boolean v1, v1, Lokhttp3/Cache$CacheRequestImpl;->done:Z
    if-eqz v1, :L1
  .line 3
    monitor-exit v0
    return-void
  :L1
  .line 4
    iget-object v1, p0, Lokhttp3/Cache$CacheRequestImpl$1;->this$1:Lokhttp3/Cache$CacheRequestImpl;
    const/4 v2, 1
    iput-boolean v2, v1, Lokhttp3/Cache$CacheRequestImpl;->done:Z
  .line 5
    iget-object v1, p0, Lokhttp3/Cache$CacheRequestImpl$1;->this$1:Lokhttp3/Cache$CacheRequestImpl;
    iget-object v1, v1, Lokhttp3/Cache$CacheRequestImpl;->this$0:Lokhttp3/Cache;
    iget v3, v1, Lokhttp3/Cache;->writeSuccessCount:I
    add-int/2addr v3, v2
    iput v3, v1, Lokhttp3/Cache;->writeSuccessCount:I
  .line 6
    monitor-exit v0
  :L2
  .line 7
    invoke-super { p0 }, Lokio/ForwardingSink;->close()V
  .line 8
    iget-object v0, p0, Lokhttp3/Cache$CacheRequestImpl$1;->val$editor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    invoke-virtual { v0 }, Lokhttp3/internal/cache/DiskLruCache$Editor;->commit()V
    return-void
  :L3
    move-exception v1
  :L4
  .line 9
    monitor-exit v0
  :L5
    throw v1
.end method
