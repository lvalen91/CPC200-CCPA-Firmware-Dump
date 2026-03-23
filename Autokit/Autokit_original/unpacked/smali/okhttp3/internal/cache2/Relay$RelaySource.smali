.class Lokhttp3/internal/cache2/Relay$RelaySource;
.super Ljava/lang/Object;
.implements Lokio/Source;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/internal/cache2/Relay;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = "RelaySource"
.end annotation

.field private fileOperator:Lokhttp3/internal/cache2/FileOperator;

.field private sourcePos:J

.field final synthetic this$0:Lokhttp3/internal/cache2/Relay;

.field private final timeout:Lokio/Timeout;

.method constructor <init>(Lokhttp3/internal/cache2/Relay;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance p1, Lokio/Timeout;
    invoke-direct { p1 }, Lokio/Timeout;-><init>()V
    iput-object p1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->timeout:Lokio/Timeout;
  .line 3
    new-instance p1, Lokhttp3/internal/cache2/FileOperator;
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;
    invoke-virtual { v0 }, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    move-result-object v0
    invoke-direct { p1, v0 }, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V
    iput-object p1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;
    return-void
.end method

.method public close()V
  .catchall { :L1 .. :L3 } :L5
  .catchall { :L6 .. :L7 } :L5
  .registers 5
  .line 1
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;
    if-nez v0, :L0
    return-void
  :L0
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;
  .line 3
    iget-object v1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    monitor-enter v1
  :L1
  .line 4
    iget-object v2, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    iget v3, v2, Lokhttp3/internal/cache2/Relay;->sourceCount:I
    add-int/lit8 v3, v3, -1
    iput v3, v2, Lokhttp3/internal/cache2/Relay;->sourceCount:I
  .line 5
    iget-object v2, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    iget v2, v2, Lokhttp3/internal/cache2/Relay;->sourceCount:I
    if-nez v2, :L2
  .line 6
    iget-object v2, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    iget-object v2, v2, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;
  .line 7
    iget-object v3, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    iput-object v0, v3, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;
    move-object v0, v2
  :L2
  .line 8
    monitor-exit v1
  :L3
    if-eqz v0, :L4
  .line 9
    invoke-static { v0 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V
  :L4
    return-void
  :L5
    move-exception v0
  :L6
  .line 10
    monitor-exit v1
  :L7
    throw v0
.end method

.method public read(Lokio/Buffer;J)J
  .catchall { :L0 .. :L4 } :L29
  .catchall { :L7 .. :L8 } :L22
  .catchall { :L9 .. :L11 } :L10
  .catchall { :L12 .. :L13 } :L22
  .catchall { :L13 .. :L15 } :L19
  .catchall { :L16 .. :L18 } :L17
  .catchall { :L20 .. :L21 } :L19
  .catchall { :L21 .. :L22 } :L22
  .catchall { :L23 .. :L24 } :L25
  .catchall { :L26 .. :L27 } :L25
  .catchall { :L28 .. :L30 } :L29
  .registers 25
    move-object/from16 v1, p0
    move-wide/from16 v2, p2
  .line 1
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;
    if-eqz v0, :L31
  .line 2
    iget-object v4, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    monitor-enter v4
  :L0
  .line 3
    iget-wide v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    iget-wide v7, v0, Lokhttp3/internal/cache2/Relay;->upstreamPos:J
    const/4 v0, 2
    const-wide/16 v9, -1
    cmp-long v11, v5, v7
    if-nez v11, :L3
  .line 4
    iget-object v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    iget-boolean v5, v5, Lokhttp3/internal/cache2/Relay;->complete:Z
    if-eqz v5, :L1
    monitor-exit v4
    return-wide v9
  :L1
  .line 5
    iget-object v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    iget-object v5, v5, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;
    if-eqz v5, :L2
  .line 6
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->timeout:Lokio/Timeout;
    iget-object v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    invoke-virtual { v0, v5 }, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V
    goto :L0
  :L2
  .line 7
    iget-object v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    invoke-static { }, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v6
    iput-object v6, v5, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;
    const/4 v5, 1
  .line 8
    monitor-exit v4
    goto :L5
  :L3
  .line 9
    iget-object v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    iget-object v5, v5, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;
    invoke-virtual { v5 }, Lokio/Buffer;->size()J
    move-result-wide v5
    sub-long v5, v7, v5
  .line 10
    iget-wide v11, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J
    cmp-long v13, v11, v5
    if-gez v13, :L28
  .line 11
    monitor-exit v4
  :L4
    const/4 v5, 2
  :L5
    const-wide/16 v11, 32
    if-ne v5, v0, :L6
  .line 12
    iget-wide v4, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J
    sub-long/2addr v7, v4
    invoke-static { v2, v3, v7, v8 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v2
  .line 13
    iget-object v13, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;
    iget-wide v4, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J
    add-long v14, v4, v11
    move-object/from16 v16, p1
    move-wide/from16 v17, v2
    invoke-virtual/range { v13 .. v18 }, Lokhttp3/internal/cache2/FileOperator;->read(JLokio/Buffer;J)V
  .line 14
    iget-wide v4, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J
    add-long/2addr v4, v2
    iput-wide v4, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J
    return-wide v2
  :L6
    const/4 v4, 0
  :L7
  .line 15
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->upstream:Lokio/Source;
    iget-object v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    iget-object v5, v5, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;
    iget-object v6, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    iget-wide v13, v6, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J
    invoke-interface { v0, v5, v13, v14 }, Lokio/Source;->read(Lokio/Buffer;J)J
    move-result-wide v5
    cmp-long v0, v5, v9
    if-nez v0, :L12
  .line 16
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    invoke-virtual { v0, v7, v8 }, Lokhttp3/internal/cache2/Relay;->commit(J)V
  :L8
  .line 17
    iget-object v2, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    monitor-enter v2
  :L9
  .line 18
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    iput-object v4, v0, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;
  .line 19
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    invoke-virtual { v0 }, Ljava/lang/Object;->notifyAll()V
  .line 20
    monitor-exit v2
    return-wide v9
  :L10
    move-exception v0
    monitor-exit v2
  :L11
    throw v0
  :L12
  .line 21
    invoke-static { v5, v6, v2, v3 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v2
  .line 22
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    iget-object v13, v0, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;
    const-wide/16 v15, 0
    move-object/from16 v14, p1
    move-wide/from16 v17, v2
    invoke-virtual/range { v13 .. v18 }, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;
  .line 23
    iget-wide v9, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J
    add-long/2addr v9, v2
    iput-wide v9, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J
  .line 24
    iget-object v15, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;
    add-long v16, v7, v11
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;
  .line 25
    invoke-virtual { v0 }, Lokio/Buffer;->clone()Lokio/Buffer;
    move-result-object v18
    move-wide/from16 v19, v5
  .line 26
    invoke-virtual/range { v15 .. v20 }, Lokhttp3/internal/cache2/FileOperator;->write(JLokio/Buffer;J)V
  .line 27
    iget-object v7, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    monitor-enter v7
  :L13
  .line 28
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;
    iget-object v8, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    iget-object v8, v8, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;
    invoke-virtual { v0, v8, v5, v6 }, Lokio/Buffer;->write(Lokio/Buffer;J)V
  .line 29
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;
    invoke-virtual { v0 }, Lokio/Buffer;->size()J
    move-result-wide v8
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    iget-wide v10, v0, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J
    cmp-long v0, v8, v10
    if-lez v0, :L14
  .line 30
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;
    iget-object v8, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    iget-object v8, v8, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;
    invoke-virtual { v8 }, Lokio/Buffer;->size()J
    move-result-wide v8
    iget-object v10, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    iget-wide v10, v10, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J
    sub-long/2addr v8, v10
    invoke-virtual { v0, v8, v9 }, Lokio/Buffer;->skip(J)V
  :L14
  .line 31
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    iget-wide v8, v0, Lokhttp3/internal/cache2/Relay;->upstreamPos:J
    add-long/2addr v8, v5
    iput-wide v8, v0, Lokhttp3/internal/cache2/Relay;->upstreamPos:J
  .line 32
    monitor-exit v7
  :L15
  .line 33
    iget-object v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    monitor-enter v5
  :L16
  .line 34
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    iput-object v4, v0, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;
  .line 35
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    invoke-virtual { v0 }, Ljava/lang/Object;->notifyAll()V
  .line 36
    monitor-exit v5
    return-wide v2
  :L17
    move-exception v0
    monitor-exit v5
  :L18
    throw v0
  :L19
    move-exception v0
  :L20
  .line 37
    monitor-exit v7
  :L21
    throw v0
  :L22
    move-exception v0
  .line 38
    iget-object v2, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    monitor-enter v2
  :L23
  .line 39
    iget-object v3, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    iput-object v4, v3, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;
  .line 40
    iget-object v3, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    invoke-virtual { v3 }, Ljava/lang/Object;->notifyAll()V
  .line 41
    monitor-exit v2
  :L24
    throw v0
  :L25
    move-exception v0
  :L26
    monitor-exit v2
  :L27
    throw v0
  :L28
  .line 42
    iget-wide v9, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J
    sub-long/2addr v7, v9
    invoke-static { v2, v3, v7, v8 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v2
  .line 43
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    iget-object v9, v0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;
    iget-wide v7, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J
    sub-long v11, v7, v5
    move-object/from16 v10, p1
    move-wide v13, v2
    invoke-virtual/range { v9 .. v14 }, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;
  .line 44
    iget-wide v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J
    add-long/2addr v5, v2
    iput-wide v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J
  .line 45
    monitor-exit v4
    return-wide v2
  :L29
    move-exception v0
  .line 46
    monitor-exit v4
  :L30
    throw v0
  :L31
  .line 47
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v2, "closed"
    invoke-direct { v0, v2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    goto :L33
  :L32
    throw v0
  :L33
    goto :L32
.end method

.method public timeout()Lokio/Timeout;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->timeout:Lokio/Timeout;
    return-object v0
.end method
