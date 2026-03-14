.class Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;
.super Lokhttp3/internal/NamedRunnable;
.implements Lokhttp3/internal/http2/Http2Reader$Handler;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/internal/http2/Http2Connection;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = "ReaderRunnable"
.end annotation

.field final reader:Lokhttp3/internal/http2/Http2Reader;

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;

.method constructor <init>(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Reader;)V
  .registers 5
  .line 1
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    const/4 v0, 1
    new-array v0, v0, [Ljava/lang/Object;
  .line 2
    iget-object p1, p1, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;
    const/4 v1, 0
    aput-object p1, v0, v1
    const-string p1, "OkHttp %s"
    invoke-direct { p0, p1, v0 }, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V
  .line 3
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;
    return-void
.end method

.method private applyAndAckSettings(Lokhttp3/internal/http2/Settings;)V
  .catch Ljava/util/concurrent/RejectedExecutionException; { :L0 .. :L1 } :L1
  .registers 8
  :L0
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    invoke-static { v0 }, Lokhttp3/internal/http2/Http2Connection;->access$200(Lokhttp3/internal/http2/Http2Connection;)Ljava/util/concurrent/ScheduledExecutorService;
    move-result-object v0
    new-instance v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$3;
    const-string v2, "OkHttp %s ACK Settings"
    const/4 v3, 1
    new-array v3, v3, [Ljava/lang/Object;
    const/4 v4, 0
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    iget-object v5, v5, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;
    aput-object v5, v3, v4
    invoke-direct { v1, p0, v2, v3, p1 }, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$3;-><init>(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/http2/Settings;)V
    invoke-interface { v0, v1 }, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
  :L1
    return-void
.end method

.method public ackSettings()V
  .registers 1
    return-void
.end method

.method public alternateService(ILjava/lang/String;Lokio/ByteString;Ljava/lang/String;IJ)V
  .registers 8
    return-void
.end method

.method public data(ZILokio/BufferedSource;I)V
  .registers 7
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    invoke-virtual { v0, p2 }, Lokhttp3/internal/http2/Http2Connection;->pushedStream(I)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    invoke-virtual { v0, p2, p3, p4, p1 }, Lokhttp3/internal/http2/Http2Connection;->pushDataLater(ILokio/BufferedSource;IZ)V
    return-void
  :L0
  .line 3
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    invoke-virtual { v0, p2 }, Lokhttp3/internal/http2/Http2Connection;->getStream(I)Lokhttp3/internal/http2/Http2Stream;
    move-result-object v0
    if-nez v0, :L1
  .line 4
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;
    invoke-virtual { p1, p2, v0 }, Lokhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILokhttp3/internal/http2/ErrorCode;)V
  .line 5
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    int-to-long v0, p4
    invoke-virtual { p1, v0, v1 }, Lokhttp3/internal/http2/Http2Connection;->updateConnectionFlowControl(J)V
  .line 6
    invoke-interface { p3, v0, v1 }, Lokio/BufferedSource;->skip(J)V
    return-void
  :L1
  .line 7
    invoke-virtual { v0, p3, p4 }, Lokhttp3/internal/http2/Http2Stream;->receiveData(Lokio/BufferedSource;I)V
    if-eqz p1, :L2
  .line 8
    invoke-virtual { v0 }, Lokhttp3/internal/http2/Http2Stream;->receiveFin()V
  :L2
    return-void
.end method

.method protected execute()V
  .catch Ljava/io/IOException; { :L0 .. :L3 } :L7
  .catchall { :L0 .. :L3 } :L6
  .catch Ljava/io/IOException; { :L3 .. :L4 } :L8
  .catchall { :L3 .. :L4 } :L12
  .catch Ljava/io/IOException; { :L4 .. :L5 } :L11
  .catchall { :L8 .. :L9 } :L12
  .catch Ljava/io/IOException; { :L9 .. :L11 } :L11
  .catch Ljava/io/IOException; { :L13 .. :L14 } :L14
  .registers 5
  .line 1
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;
  :L0
  .line 2
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;
    invoke-virtual { v1, p0 }, Lokhttp3/internal/http2/Http2Reader;->readConnectionPreface(Lokhttp3/internal/http2/Http2Reader$Handler;)V
  :L1
  .line 3
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;
    const/4 v2, 0
    invoke-virtual { v1, v2, p0 }, Lokhttp3/internal/http2/Http2Reader;->nextFrame(ZLokhttp3/internal/http2/Http2Reader$Handler;)Z
    move-result v1
    if-eqz v1, :L2
    goto :L1
  :L2
  .line 4
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;
  :L3
  .line 5
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;
  :L4
  .line 6
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
  :L5
    goto :L10
  :L6
    move-exception v2
    move-object v1, v0
    goto :L13
  :L7
    move-object v1, v0
  :L8
  .line 7
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;
  .line 8
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;
  :L9
  .line 9
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
  :L10
    invoke-virtual { v2, v1, v0 }, Lokhttp3/internal/http2/Http2Connection;->close(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
  :L11
  .line 10
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;
    invoke-static { v0 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V
    return-void
  :L12
    move-exception v2
  :L13
  .line 11
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    invoke-virtual { v3, v1, v0 }, Lokhttp3/internal/http2/Http2Connection;->close(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
  :L14
  .line 12
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp3/internal/http2/Http2Reader;
    invoke-static { v0 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V
    goto :L16
  :L15
    throw v2
  :L16
    goto :L15
.end method

.method public goAway(ILokhttp3/internal/http2/ErrorCode;Lokio/ByteString;)V
  .catchall { :L0 .. :L1 } :L5
  .catchall { :L6 .. :L7 } :L5
  .registers 7
  .line 1
    invoke-virtual { p3 }, Lokio/ByteString;->size()I
  .line 2
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    monitor-enter p2
  :L0
  .line 3
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    iget-object p3, p3, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;
    invoke-interface { p3 }, Ljava/util/Map;->values()Ljava/util/Collection;
    move-result-object p3
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;
    invoke-interface { v0 }, Ljava/util/Map;->size()I
    move-result v0
    new-array v0, v0, [Lokhttp3/internal/http2/Http2Stream;
    invoke-interface { p3, v0 }, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    move-result-object p3
    check-cast p3, [Lokhttp3/internal/http2/Http2Stream;
  .line 4
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    const/4 v1, 1
    iput-boolean v1, v0, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z
  .line 5
    monitor-exit p2
  :L1
  .line 6
    array-length p2, p3
    const/4 v0, 0
  :L2
    if-ge v0, p2, :L4
    aget-object v1, p3, v0
  .line 7
    invoke-virtual { v1 }, Lokhttp3/internal/http2/Http2Stream;->getId()I
    move-result v2
    if-le v2, p1, :L3
    invoke-virtual { v1 }, Lokhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z
    move-result v2
    if-eqz v2, :L3
  .line 8
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;
    invoke-virtual { v1, v2 }, Lokhttp3/internal/http2/Http2Stream;->receiveRstStream(Lokhttp3/internal/http2/ErrorCode;)V
  .line 9
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    invoke-virtual { v1 }, Lokhttp3/internal/http2/Http2Stream;->getId()I
    move-result v1
    invoke-virtual { v2, v1 }, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;
  :L3
    add-int/lit8 v0, v0, 1
    goto :L2
  :L4
    return-void
  :L5
    move-exception p1
  :L6
  .line 10
    monitor-exit p2
  :L7
    goto :L9
  :L8
    throw p1
  :L9
    goto :L8
.end method

.method public headers(ZIILjava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(ZII",
      "Ljava/util/List<",
      "Lokhttp3/internal/http2/Header;",
      ">;)V"
    }
  .end annotation
  .catchall { :L1 .. :L6 } :L8
  .catchall { :L9 .. :L10 } :L8
  .registers 14
  .line 1
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    invoke-virtual { p3, p2 }, Lokhttp3/internal/http2/Http2Connection;->pushedStream(I)Z
    move-result p3
    if-eqz p3, :L0
  .line 2
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    invoke-virtual { p3, p2, p4, p1 }, Lokhttp3/internal/http2/Http2Connection;->pushHeadersLater(ILjava/util/List;Z)V
    return-void
  :L0
  .line 3
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    monitor-enter p3
  :L1
  .line 4
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    invoke-virtual { v0, p2 }, Lokhttp3/internal/http2/Http2Connection;->getStream(I)Lokhttp3/internal/http2/Http2Stream;
    move-result-object v0
    if-nez v0, :L5
  .line 5
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z
    if-eqz v0, :L2
    monitor-exit p3
    return-void
  :L2
  .line 6
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    iget v0, v0, Lokhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I
    if-gt p2, v0, :L3
    monitor-exit p3
    return-void
  :L3
  .line 7
    rem-int/lit8 v0, p2, 2
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    iget v1, v1, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I
    const/4 v2, 2
    rem-int/2addr v1, v2
    if-ne v0, v1, :L4
    monitor-exit p3
    return-void
  :L4
  .line 8
    invoke-static { p4 }, Lokhttp3/internal/Util;->toHeaders(Ljava/util/List;)Lokhttp3/Headers;
    move-result-object v8
  .line 9
    new-instance p4, Lokhttp3/internal/http2/Http2Stream;
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    const/4 v6, 0
    move-object v3, p4
    move v4, p2
    move v7, p1
    invoke-direct/range { v3 .. v8 }, Lokhttp3/internal/http2/Http2Stream;-><init>(ILokhttp3/internal/http2/Http2Connection;ZZLokhttp3/Headers;)V
  .line 10
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    iput p2, p1, Lokhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I
  .line 11
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    iget-object p1, p1, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;
    invoke-static { p2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-interface { p1, v0, p4 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 12
    invoke-static { }, Lokhttp3/internal/http2/Http2Connection;->access$100()Ljava/util/concurrent/ExecutorService;
    move-result-object p1
    new-instance v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$1;
    const-string v1, "OkHttp %s stream %d"
    new-array v2, v2, [Ljava/lang/Object;
    const/4 v3, 0
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    iget-object v4, v4, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;
    aput-object v4, v2, v3
    const/4 v3, 1
    invoke-static { p2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p2
    aput-object p2, v2, v3
    invoke-direct { v0, p0, v1, v2, p4 }, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$1;-><init>(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/http2/Http2Stream;)V
    invoke-interface { p1, v0 }, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
  .line 13
    monitor-exit p3
    return-void
  :L5
  .line 14
    monitor-exit p3
  :L6
  .line 15
    invoke-virtual { v0, p4 }, Lokhttp3/internal/http2/Http2Stream;->receiveHeaders(Ljava/util/List;)V
    if-eqz p1, :L7
  .line 16
    invoke-virtual { v0 }, Lokhttp3/internal/http2/Http2Stream;->receiveFin()V
  :L7
    return-void
  :L8
    move-exception p1
  :L9
  .line 17
    monitor-exit p3
  :L10
    throw p1
.end method

.method public ping(ZII)V
  .catchall { :L0 .. :L2 } :L1
  .catch Ljava/util/concurrent/RejectedExecutionException; { :L3 .. :L4 } :L4
  .registers 7
    if-eqz p1, :L3
  .line 1
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    monitor-enter p1
  :L0
  .line 2
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    const/4 p3, 0
    invoke-static { p2, p3 }, Lokhttp3/internal/http2/Http2Connection;->access$302(Lokhttp3/internal/http2/Http2Connection;Z)Z
  .line 3
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    invoke-virtual { p2 }, Ljava/lang/Object;->notifyAll()V
  .line 4
    monitor-exit p1
    goto :L4
  :L1
    move-exception p2
    monitor-exit p1
  :L2
    throw p2
  :L3
  .line 5
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    invoke-static { p1 }, Lokhttp3/internal/http2/Http2Connection;->access$200(Lokhttp3/internal/http2/Http2Connection;)Ljava/util/concurrent/ScheduledExecutorService;
    move-result-object p1
    new-instance v0, Lokhttp3/internal/http2/Http2Connection$PingRunnable;
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    const/4 v2, 1
    invoke-direct { v0, v1, v2, p2, p3 }, Lokhttp3/internal/http2/Http2Connection$PingRunnable;-><init>(Lokhttp3/internal/http2/Http2Connection;ZII)V
    invoke-interface { p1, v0 }, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
  :L4
    return-void
.end method

.method public priority(IIIZ)V
  .registers 5
    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(II",
      "Ljava/util/List<",
      "Lokhttp3/internal/http2/Header;",
      ">;)V"
    }
  .end annotation
  .registers 4
  .line 1
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    invoke-virtual { p1, p2, p3 }, Lokhttp3/internal/http2/Http2Connection;->pushRequestLater(ILjava/util/List;)V
    return-void
.end method

.method public rstStream(ILokhttp3/internal/http2/ErrorCode;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    invoke-virtual { v0, p1 }, Lokhttp3/internal/http2/Http2Connection;->pushedStream(I)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    invoke-virtual { v0, p1, p2 }, Lokhttp3/internal/http2/Http2Connection;->pushResetLater(ILokhttp3/internal/http2/ErrorCode;)V
    return-void
  :L0
  .line 3
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    invoke-virtual { v0, p1 }, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;
    move-result-object p1
    if-eqz p1, :L1
  .line 4
    invoke-virtual { p1, p2 }, Lokhttp3/internal/http2/Http2Stream;->receiveRstStream(Lokhttp3/internal/http2/ErrorCode;)V
  :L1
    return-void
.end method

.method public settings(ZLokhttp3/internal/http2/Settings;)V
  .catchall { :L0 .. :L5 } :L11
  .catchall { :L7 .. :L9 } :L8
  .catchall { :L12 .. :L13 } :L11
  .registers 13
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    monitor-enter v0
  :L0
  .line 2
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;
    invoke-virtual { v1 }, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I
    move-result v1
    if-eqz p1, :L1
  .line 3
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    iget-object p1, p1, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;
    invoke-virtual { p1 }, Lokhttp3/internal/http2/Settings;->clear()V
  :L1
  .line 4
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    iget-object p1, p1, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;
    invoke-virtual { p1, p2 }, Lokhttp3/internal/http2/Settings;->merge(Lokhttp3/internal/http2/Settings;)V
  .line 5
    invoke-direct { p0, p2 }, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->applyAndAckSettings(Lokhttp3/internal/http2/Settings;)V
  .line 6
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    iget-object p1, p1, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;
    invoke-virtual { p1 }, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I
    move-result p1
    const/4 p2, -1
    const-wide/16 v2, 0
    const/4 v4, 1
    const/4 v5, 0
    if-eq p1, p2, :L3
    if-eq p1, v1, :L3
    sub-int/2addr p1, v1
    int-to-long p1, p1
  .line 7
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    iget-boolean v1, v1, Lokhttp3/internal/http2/Http2Connection;->receivedInitialPeerSettings:Z
    if-nez v1, :L2
  .line 8
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    iput-boolean v4, v1, Lokhttp3/internal/http2/Http2Connection;->receivedInitialPeerSettings:Z
  :L2
  .line 9
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;
    invoke-interface { v1 }, Ljava/util/Map;->isEmpty()Z
    move-result v1
    if-nez v1, :L4
  .line 10
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;
    invoke-interface { v1 }, Ljava/util/Map;->values()Ljava/util/Collection;
    move-result-object v1
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    iget-object v5, v5, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;
    invoke-interface { v5 }, Ljava/util/Map;->size()I
    move-result v5
    new-array v5, v5, [Lokhttp3/internal/http2/Http2Stream;
    invoke-interface { v1, v5 }, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    move-result-object v1
    move-object v5, v1
    check-cast v5, [Lokhttp3/internal/http2/Http2Stream;
    goto :L4
  :L3
    move-wide p1, v2
  :L4
  .line 11
    invoke-static { }, Lokhttp3/internal/http2/Http2Connection;->access$100()Ljava/util/concurrent/ExecutorService;
    move-result-object v1
    new-instance v6, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$2;
    const-string v7, "OkHttp %s settings"
    new-array v4, v4, [Ljava/lang/Object;
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    iget-object v8, v8, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;
    const/4 v9, 0
    aput-object v8, v4, v9
    invoke-direct { v6, p0, v7, v4 }, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$2;-><init>(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-interface { v1, v6 }, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
  .line 12
    monitor-exit v0
  :L5
    if-eqz v5, :L10
    cmp-long v0, p1, v2
    if-eqz v0, :L10
  .line 13
    array-length v0, v5
  :L6
    if-ge v9, v0, :L10
    aget-object v1, v5, v9
  .line 14
    monitor-enter v1
  :L7
  .line 15
    invoke-virtual { v1, p1, p2 }, Lokhttp3/internal/http2/Http2Stream;->addBytesToWriteWindow(J)V
  .line 16
    monitor-exit v1
    add-int/lit8 v9, v9, 1
    goto :L6
  :L8
    move-exception p1
    monitor-exit v1
  :L9
    throw p1
  :L10
    return-void
  :L11
    move-exception p1
  :L12
  .line 17
    monitor-exit v0
  :L13
    goto :L15
  :L14
    throw p1
  :L15
    goto :L14
.end method

.method public windowUpdate(IJ)V
  .catchall { :L0 .. :L2 } :L1
  .catchall { :L4 .. :L6 } :L5
  .registers 7
    if-nez p1, :L3
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    monitor-enter v0
  :L0
  .line 2
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    iget-wide v1, p1, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J
    add-long/2addr v1, p2
    iput-wide v1, p1, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J
  .line 3
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    invoke-virtual { p1 }, Ljava/lang/Object;->notifyAll()V
  .line 4
    monitor-exit v0
    goto :L7
  :L1
    move-exception p1
    monitor-exit v0
  :L2
    throw p1
  :L3
  .line 5
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;
    invoke-virtual { v0, p1 }, Lokhttp3/internal/http2/Http2Connection;->getStream(I)Lokhttp3/internal/http2/Http2Stream;
    move-result-object p1
    if-eqz p1, :L7
  .line 6
    monitor-enter p1
  :L4
  .line 7
    invoke-virtual { p1, p2, p3 }, Lokhttp3/internal/http2/Http2Stream;->addBytesToWriteWindow(J)V
  .line 8
    monitor-exit p1
    goto :L7
  :L5
    move-exception p2
    monitor-exit p1
  :L6
    throw p2
  :L7
    return-void
.end method
