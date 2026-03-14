.class public final Lokhttp3/internal/cache/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/internal/cache/DiskLruCache;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 17
  name = "Editor"
.end annotation

.field private done:Z

.field final entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

.field final synthetic this$0:Lokhttp3/internal/cache/DiskLruCache;

.field final written:[Z

.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;
  .line 3
    iget-boolean p2, p2, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z
    if-eqz p2, :L0
    const/4 p1, 0
    goto :L1
  :L0
    iget p1, p1, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I
    new-array p1, p1, [Z
  :L1
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->written:[Z
    return-void
.end method

.method public abort()V
  .catchall { :L0 .. :L4 } :L3
  .registers 4
  .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    monitor-enter v0
  :L0
  .line 2
    iget-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z
    if-nez v1, :L2
  .line 3
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;
    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    if-ne v1, p0, :L1
  .line 4
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    const/4 v2, 0
    invoke-virtual { v1, p0, v2 }, Lokhttp3/internal/cache/DiskLruCache;->completeEdit(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V
  :L1
    const/4 v1, 1
  .line 5
    iput-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z
  .line 6
    monitor-exit v0
    return-void
  :L2
  .line 7
    new-instance v1, Ljava/lang/IllegalStateException;
    invoke-direct { v1 }, Ljava/lang/IllegalStateException;-><init>()V
    throw v1
  :L3
    move-exception v1
  .line 8
    monitor-exit v0
  :L4
    throw v1
.end method

.method public abortUnlessCommitted()V
  .catchall { :L0 .. :L1 } :L4
  .catch Ljava/io/IOException; { :L2 .. :L3 } :L3
  .catchall { :L2 .. :L3 } :L4
  .catchall { :L3 .. :L5 } :L4
  .registers 4
  .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    monitor-enter v0
  :L0
  .line 2
    iget-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z
    if-nez v1, :L3
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;
    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
  :L1
    if-ne v1, p0, :L3
  :L2
  .line 3
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    const/4 v2, 0
    invoke-virtual { v1, p0, v2 }, Lokhttp3/internal/cache/DiskLruCache;->completeEdit(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V
  :L3
  .line 4
    monitor-exit v0
    return-void
  :L4
    move-exception v1
    monitor-exit v0
  :L5
    throw v1
.end method

.method public commit()V
  .catchall { :L0 .. :L4 } :L3
  .registers 4
  .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    monitor-enter v0
  :L0
  .line 2
    iget-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z
    if-nez v1, :L2
  .line 3
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;
    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    const/4 v2, 1
    if-ne v1, p0, :L1
  .line 4
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    invoke-virtual { v1, p0, v2 }, Lokhttp3/internal/cache/DiskLruCache;->completeEdit(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V
  :L1
  .line 5
    iput-boolean v2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z
  .line 6
    monitor-exit v0
    return-void
  :L2
  .line 7
    new-instance v1, Ljava/lang/IllegalStateException;
    invoke-direct { v1 }, Ljava/lang/IllegalStateException;-><init>()V
    throw v1
  :L3
    move-exception v1
  .line 8
    monitor-exit v0
  :L4
    throw v1
.end method

.method detach()V
  .catch Ljava/io/IOException; { :L1 .. :L2 } :L2
  .registers 4
  .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;
    iget-object v0, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    if-ne v0, p0, :L4
    const/4 v0, 0
  :L0
  .line 2
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    iget v2, v1, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I
    if-ge v0, v2, :L3
  :L1
  .line 3
    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;
    iget-object v2, v2, Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;
    aget-object v2, v2, v0
    invoke-interface { v1, v2 }, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V
  :L2
    add-int/lit8 v0, v0, 1
    goto :L0
  :L3
  .line 4
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;
    const/4 v1, 0
    iput-object v1, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
  :L4
    return-void
.end method

.method public newSink(I)Lokio/Sink;
  .catchall { :L0 .. :L3 } :L7
  .catch Ljava/io/FileNotFoundException; { :L3 .. :L4 } :L5
  .catchall { :L3 .. :L4 } :L7
  .catchall { :L4 .. :L8 } :L7
  .registers 5
  .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    monitor-enter v0
  :L0
  .line 2
    iget-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z
    if-nez v1, :L6
  .line 3
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;
    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    if-eq v1, p0, :L1
  .line 4
    invoke-static { }, Lokio/Okio;->blackhole()Lokio/Sink;
    move-result-object p1
    monitor-exit v0
    return-object p1
  :L1
  .line 5
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;
    iget-boolean v1, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z
    if-nez v1, :L2
  .line 6
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->written:[Z
    const/4 v2, 1
    aput-boolean v2, v1, p1
  :L2
  .line 7
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;
    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;
    aget-object p1, v1, p1
  :L3
  .line 8
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;
    invoke-interface { v1, p1 }, Lokhttp3/internal/io/FileSystem;->sink(Ljava/io/File;)Lokio/Sink;
    move-result-object p1
  :L4
  .line 9
    new-instance v1, Lokhttp3/internal/cache/DiskLruCache$Editor$1;
    invoke-direct { v1, p0, p1 }, Lokhttp3/internal/cache/DiskLruCache$Editor$1;-><init>(Lokhttp3/internal/cache/DiskLruCache$Editor;Lokio/Sink;)V
    monitor-exit v0
    return-object v1
  :L5
  .line 10
    invoke-static { }, Lokio/Okio;->blackhole()Lokio/Sink;
    move-result-object p1
    monitor-exit v0
    return-object p1
  :L6
  .line 11
    new-instance p1, Ljava/lang/IllegalStateException;
    invoke-direct { p1 }, Ljava/lang/IllegalStateException;-><init>()V
    throw p1
  :L7
    move-exception p1
  .line 12
    monitor-exit v0
  :L8
    throw p1
.end method

.method public newSource(I)Lokio/Source;
  .catchall { :L0 .. :L1 } :L7
  .catch Ljava/io/FileNotFoundException; { :L2 .. :L3 } :L4
  .catchall { :L2 .. :L3 } :L7
  .catchall { :L3 .. :L8 } :L7
  .registers 6
  .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    monitor-enter v0
  :L0
  .line 2
    iget-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z
    if-nez v1, :L6
  .line 3
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;
    iget-boolean v1, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z
    const/4 v2, 0
    if-eqz v1, :L5
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;
    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
  :L1
    if-eq v1, p0, :L2
    goto :L5
  :L2
  .line 4
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;
    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;
    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;
    aget-object p1, v3, p1
    invoke-interface { v1, p1 }, Lokhttp3/internal/io/FileSystem;->source(Ljava/io/File;)Lokio/Source;
    move-result-object p1
  :L3
    monitor-exit v0
    return-object p1
  :L4
  .line 5
    monitor-exit v0
    return-object v2
  :L5
  .line 6
    monitor-exit v0
    return-object v2
  :L6
  .line 7
    new-instance p1, Ljava/lang/IllegalStateException;
    invoke-direct { p1 }, Ljava/lang/IllegalStateException;-><init>()V
    throw p1
  :L7
    move-exception p1
  .line 8
    monitor-exit v0
  :L8
    throw p1
.end method
