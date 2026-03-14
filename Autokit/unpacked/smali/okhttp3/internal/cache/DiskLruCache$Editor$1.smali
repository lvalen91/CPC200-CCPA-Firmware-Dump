.class Lokhttp3/internal/cache/DiskLruCache$Editor$1;
.super Lokhttp3/internal/cache/FaultHidingSink;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lokhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Lokio/Sink;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$1:Lokhttp3/internal/cache/DiskLruCache$Editor;

.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache$Editor;Lokio/Sink;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor$1;->this$1:Lokhttp3/internal/cache/DiskLruCache$Editor;
    invoke-direct { p0, p2 }, Lokhttp3/internal/cache/FaultHidingSink;-><init>(Lokio/Sink;)V
    return-void
.end method

.method protected onException(Ljava/io/IOException;)V
  .catchall { :L0 .. :L2 } :L1
  .registers 3
  .line 1
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor$1;->this$1:Lokhttp3/internal/cache/DiskLruCache$Editor;
    iget-object p1, p1, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    monitor-enter p1
  :L0
  .line 2
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor$1;->this$1:Lokhttp3/internal/cache/DiskLruCache$Editor;
    invoke-virtual { v0 }, Lokhttp3/internal/cache/DiskLruCache$Editor;->detach()V
  .line 3
    monitor-exit p1
    return-void
  :L1
    move-exception v0
    monitor-exit p1
  :L2
    throw v0
.end method
