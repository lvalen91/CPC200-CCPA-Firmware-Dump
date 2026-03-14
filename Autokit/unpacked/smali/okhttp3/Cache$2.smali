.class Lokhttp3/Cache$2;
.super Ljava/lang/Object;
.implements Ljava/util/Iterator;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lokhttp3/Cache;->urls()Ljava/util/Iterator;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Ljava/util/Iterator<",
    "Ljava/lang/String;",
    ">;"
  }
.end annotation

.field canRemove:Z

.field final delegate:Ljava/util/Iterator;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Iterator<",
      "Lokhttp3/internal/cache/DiskLruCache$Snapshot;",
      ">;"
    }
  .end annotation
.end field

.field nextUrl:Ljava/lang/String;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.field final synthetic this$0:Lokhttp3/Cache;

.method constructor <init>(Lokhttp3/Cache;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lokhttp3/Cache$2;->this$0:Lokhttp3/Cache;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iget-object p1, p0, Lokhttp3/Cache$2;->this$0:Lokhttp3/Cache;
    iget-object p1, p1, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;
    invoke-virtual { p1 }, Lokhttp3/internal/cache/DiskLruCache;->snapshots()Ljava/util/Iterator;
    move-result-object p1
    iput-object p1, p0, Lokhttp3/Cache$2;->delegate:Ljava/util/Iterator;
    return-void
.end method

.method public hasNext()Z
  .catch Ljava/io/IOException; { :L2 .. :L3 } :L5
  .catchall { :L2 .. :L3 } :L4
  .registers 5
  .line 1
    iget-object v0, p0, Lokhttp3/Cache$2;->nextUrl:Ljava/lang/String;
    const/4 v1, 1
    if-eqz v0, :L0
    return v1
  :L0
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Lokhttp3/Cache$2;->canRemove:Z
  :L1
  .line 3
    iget-object v2, p0, Lokhttp3/Cache$2;->delegate:Ljava/util/Iterator;
    invoke-interface { v2 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L6
  .line 4
    iget-object v2, p0, Lokhttp3/Cache$2;->delegate:Ljava/util/Iterator;
    invoke-interface { v2 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lokhttp3/internal/cache/DiskLruCache$Snapshot;
  :L2
  .line 5
    invoke-virtual { v2, v0 }, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->getSource(I)Lokio/Source;
    move-result-object v3
    invoke-static { v3 }, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;
    move-result-object v3
  .line 6
    invoke-interface { v3 }, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;
    move-result-object v3
    iput-object v3, p0, Lokhttp3/Cache$2;->nextUrl:Ljava/lang/String;
  :L3
  .line 7
    invoke-virtual { v2 }, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->close()V
    return v1
  :L4
    move-exception v0
    invoke-virtual { v2 }, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->close()V
    throw v0
  :L5
    invoke-virtual { v2 }, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->close()V
    goto :L1
  :L6
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lokhttp3/Cache$2;->next()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public next()Ljava/lang/String;
  .registers 3
  .line 2
    invoke-virtual { p0 }, Lokhttp3/Cache$2;->hasNext()Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    iget-object v0, p0, Lokhttp3/Cache$2;->nextUrl:Ljava/lang/String;
    const/4 v1, 0
  .line 4
    iput-object v1, p0, Lokhttp3/Cache$2;->nextUrl:Ljava/lang/String;
    const/4 v1, 1
  .line 5
    iput-boolean v1, p0, Lokhttp3/Cache$2;->canRemove:Z
    return-object v0
  :L0
  .line 6
    new-instance v0, Ljava/util/NoSuchElementException;
    invoke-direct { v0 }, Ljava/util/NoSuchElementException;-><init>()V
    throw v0
.end method

.method public remove()V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lokhttp3/Cache$2;->canRemove:Z
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lokhttp3/Cache$2;->delegate:Ljava/util/Iterator;
    invoke-interface { v0 }, Ljava/util/Iterator;->remove()V
    return-void
  :L0
  .line 3
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "remove() before next()"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method
