.class Lokhttp3/internal/cache/DiskLruCache$3;
.super Ljava/lang/Object;
.implements Ljava/util/Iterator;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lokhttp3/internal/cache/DiskLruCache;->snapshots()Ljava/util/Iterator;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Ljava/util/Iterator<",
    "Lokhttp3/internal/cache/DiskLruCache$Snapshot;",
    ">;"
  }
.end annotation

.field final delegate:Ljava/util/Iterator;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Iterator<",
      "Lokhttp3/internal/cache/DiskLruCache$Entry;",
      ">;"
    }
  .end annotation
.end field

.field nextSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

.field removeSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

.field final synthetic this$0:Lokhttp3/internal/cache/DiskLruCache;

.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$3;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance p1, Ljava/util/ArrayList;
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$3;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    iget-object v0, v0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;
    invoke-virtual { v0 }, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;
    move-result-object v0
    invoke-direct { p1, v0 }, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    invoke-virtual { p1 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object p1
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$3;->delegate:Ljava/util/Iterator;
    return-void
.end method

.method public hasNext()Z
  .catchall { :L1 .. :L6 } :L5
  .registers 5
  .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$3;->nextSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    const/4 v1, 1
    if-eqz v0, :L0
    return v1
  :L0
  .line 2
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$3;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    monitor-enter v0
  :L1
  .line 3
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$3;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    iget-boolean v2, v2, Lokhttp3/internal/cache/DiskLruCache;->closed:Z
    const/4 v3, 0
    if-eqz v2, :L2
    monitor-exit v0
    return v3
  :L2
  .line 4
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$3;->delegate:Ljava/util/Iterator;
    invoke-interface { v2 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L4
  .line 5
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$3;->delegate:Ljava/util/Iterator;
    invoke-interface { v2 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lokhttp3/internal/cache/DiskLruCache$Entry;
  .line 6
    invoke-virtual { v2 }, Lokhttp3/internal/cache/DiskLruCache$Entry;->snapshot()Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    move-result-object v2
    if-nez v2, :L3
    goto :L2
  :L3
  .line 7
    iput-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$3;->nextSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;
  .line 8
    monitor-exit v0
    return v1
  :L4
  .line 9
    monitor-exit v0
    return v3
  :L5
    move-exception v1
    monitor-exit v0
  :L6
    goto :L8
  :L7
    throw v1
  :L8
    goto :L7
.end method

.method public bridge synthetic next()Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lokhttp3/internal/cache/DiskLruCache$3;->next()Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    move-result-object v0
    return-object v0
.end method

.method public next()Lokhttp3/internal/cache/DiskLruCache$Snapshot;
  .registers 3
  .line 2
    invoke-virtual { p0 }, Lokhttp3/internal/cache/DiskLruCache$3;->hasNext()Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$3;->nextSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    const/4 v1, 0
  .line 4
    iput-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$3;->nextSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    return-object v0
  :L0
  .line 5
    new-instance v0, Ljava/util/NoSuchElementException;
    invoke-direct { v0 }, Ljava/util/NoSuchElementException;-><init>()V
    throw v0
.end method

.method public remove()V
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L3
  .catchall { :L0 .. :L1 } :L2
  .registers 4
  .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    if-eqz v0, :L4
    const/4 v1, 0
  :L0
  .line 2
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$3;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    invoke-static { v0 }, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->access$000(Lokhttp3/internal/cache/DiskLruCache$Snapshot;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v2, v0 }, Lokhttp3/internal/cache/DiskLruCache;->remove(Ljava/lang/String;)Z
  :L1
    goto :L3
  :L2
    move-exception v0
  .line 3
    iput-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    throw v0
  :L3
    iput-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    return-void
  :L4
  .line 4
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "remove() before next()"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method
