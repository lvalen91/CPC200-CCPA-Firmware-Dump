.class Lokhttp3/internal/cache/FaultHidingSink;
.super Lokio/ForwardingSink;
.source "SourceFile"

.field private hasErrors:Z

.method constructor <init>(Lokio/Sink;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V
    return-void
.end method

.method public close()V
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L2
  .registers 3
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/cache/FaultHidingSink;->hasErrors:Z
    if-eqz v0, :L0
    return-void
  :L0
  .line 2
    invoke-super { p0 }, Lokio/ForwardingSink;->close()V
  :L1
    goto :L3
  :L2
    move-exception v0
    const/4 v1, 1
  .line 3
    iput-boolean v1, p0, Lokhttp3/internal/cache/FaultHidingSink;->hasErrors:Z
  .line 4
    invoke-virtual { p0, v0 }, Lokhttp3/internal/cache/FaultHidingSink;->onException(Ljava/io/IOException;)V
  :L3
    return-void
.end method

.method public flush()V
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L2
  .registers 3
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/cache/FaultHidingSink;->hasErrors:Z
    if-eqz v0, :L0
    return-void
  :L0
  .line 2
    invoke-super { p0 }, Lokio/ForwardingSink;->flush()V
  :L1
    goto :L3
  :L2
    move-exception v0
    const/4 v1, 1
  .line 3
    iput-boolean v1, p0, Lokhttp3/internal/cache/FaultHidingSink;->hasErrors:Z
  .line 4
    invoke-virtual { p0, v0 }, Lokhttp3/internal/cache/FaultHidingSink;->onException(Ljava/io/IOException;)V
  :L3
    return-void
.end method

.method protected onException(Ljava/io/IOException;)V
  .registers 2
    return-void
.end method

.method public write(Lokio/Buffer;J)V
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L2
  .registers 5
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/cache/FaultHidingSink;->hasErrors:Z
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p1, p2, p3 }, Lokio/Buffer;->skip(J)V
    return-void
  :L0
  .line 3
    invoke-super { p0, p1, p2, p3 }, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V
  :L1
    goto :L3
  :L2
    move-exception p1
    const/4 p2, 1
  .line 4
    iput-boolean p2, p0, Lokhttp3/internal/cache/FaultHidingSink;->hasErrors:Z
  .line 5
    invoke-virtual { p0, p1 }, Lokhttp3/internal/cache/FaultHidingSink;->onException(Ljava/io/IOException;)V
  :L3
    return-void
.end method
