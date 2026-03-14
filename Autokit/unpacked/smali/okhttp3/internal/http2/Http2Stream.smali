.class public final Lokhttp3/internal/http2/Http2Stream;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lokhttp3/internal/http2/Http2Stream$StreamTimeout;,
    Lokhttp3/internal/http2/Http2Stream$FramingSink;,
    Lokhttp3/internal/http2/Http2Stream$FramingSource;
  }
.end annotation

.field final static synthetic $assertionsDisabled:Z

.field bytesLeftInWriteWindow:J

.field final connection:Lokhttp3/internal/http2/Http2Connection;

.field errorCode:Lokhttp3/internal/http2/ErrorCode;

.field private hasResponseHeaders:Z

.field private headersListener:Lokhttp3/internal/http2/Header$Listener;

.field private final headersQueue:Ljava/util/Deque;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Deque<",
      "Lokhttp3/Headers;",
      ">;"
    }
  .end annotation
.end field

.field final id:I

.field final readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

.field final sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

.field private final source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

.field unacknowledgedBytesRead:J

.field final writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

.method static constructor <clinit>()V
  .registers 1
    return-void
.end method

.method constructor <init>(ILokhttp3/internal/http2/Http2Connection;ZZLokhttp3/Headers;)V
  .parameter # I
  .parameter # Lokhttp3/internal/http2/Http2Connection;
  .parameter # Z
  .parameter # Z
  .parameter # Lokhttp3/Headers;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 8
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const-wide/16 v0, 0
  .line 2
    iput-wide v0, p0, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J
  .line 3
    new-instance v0, Ljava/util/ArrayDeque;
    invoke-direct { v0 }, Ljava/util/ArrayDeque;-><init>()V
    iput-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;
  .line 4
    new-instance v0, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;
    invoke-direct { v0, p0 }, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;-><init>(Lokhttp3/internal/http2/Http2Stream;)V
    iput-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;
  .line 5
    new-instance v0, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;
    invoke-direct { v0, p0 }, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;-><init>(Lokhttp3/internal/http2/Http2Stream;)V
    iput-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;
    const/4 v0, 0
  .line 6
    iput-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;
    if-eqz p2, :L5
  .line 7
    iput p1, p0, Lokhttp3/internal/http2/Http2Stream;->id:I
  .line 8
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;
  .line 9
    iget-object p1, p2, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;
  .line 10
    invoke-virtual { p1 }, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I
    move-result p1
    int-to-long v0, p1
    iput-wide v0, p0, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J
  .line 11
    new-instance p1, Lokhttp3/internal/http2/Http2Stream$FramingSource;
    iget-object p2, p2, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;
    invoke-virtual { p2 }, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I
    move-result p2
    int-to-long v0, p2
    invoke-direct { p1, p0, v0, v1 }, Lokhttp3/internal/http2/Http2Stream$FramingSource;-><init>(Lokhttp3/internal/http2/Http2Stream;J)V
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;
  .line 12
    new-instance p1, Lokhttp3/internal/http2/Http2Stream$FramingSink;
    invoke-direct { p1, p0 }, Lokhttp3/internal/http2/Http2Stream$FramingSink;-><init>(Lokhttp3/internal/http2/Http2Stream;)V
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;
  .line 13
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;
    iput-boolean p4, p2, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z
  .line 14
    iput-boolean p3, p1, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z
    if-eqz p5, :L0
  .line 15
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;
    invoke-interface { p1, p5 }, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
  :L0
  .line 16
    invoke-virtual { p0 }, Lokhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z
    move-result p1
    if-eqz p1, :L2
    if-nez p5, :L1
    goto :L2
  :L1
  .line 17
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "locally-initiated streams shouldn't have headers yet"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L2
  .line 18
    invoke-virtual { p0 }, Lokhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z
    move-result p1
    if-nez p1, :L4
    if-eqz p5, :L3
    goto :L4
  :L3
  .line 19
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "remotely-initiated streams should have headers"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L4
    return-void
  :L5
  .line 20
    new-instance p1, Ljava/lang/NullPointerException;
    const-string p2, "connection == null"
    invoke-direct { p1, p2 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method static synthetic access$000(Lokhttp3/internal/http2/Http2Stream;)Ljava/util/Deque;
  .registers 1
  .line 1
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;
    return-object p0
.end method

.method static synthetic access$100(Lokhttp3/internal/http2/Http2Stream;)Lokhttp3/internal/http2/Header$Listener;
  .registers 1
  .line 1
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream;->headersListener:Lokhttp3/internal/http2/Header$Listener;
    return-object p0
.end method

.method private closeInternal(Lokhttp3/internal/http2/ErrorCode;)Z
  .catchall { :L0 .. :L3 } :L4
  .catchall { :L5 .. :L6 } :L4
  .registers 4
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;
    const/4 v1, 0
    if-eqz v0, :L1
  .line 3
    monitor-exit p0
    return v1
  :L1
  .line 4
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;
    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z
    if-eqz v0, :L2
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;
    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z
    if-eqz v0, :L2
  .line 5
    monitor-exit p0
    return v1
  :L2
  .line 6
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;
  .line 7
    invoke-virtual { p0 }, Ljava/lang/Object;->notifyAll()V
  .line 8
    monitor-exit p0
  :L3
  .line 9
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;
    iget v0, p0, Lokhttp3/internal/http2/Http2Stream;->id:I
    invoke-virtual { p1, v0 }, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;
    const/4 p1, 1
    return p1
  :L4
    move-exception p1
  :L5
  .line 10
    monitor-exit p0
  :L6
    throw p1
.end method

.method addBytesToWriteWindow(J)V
  .registers 6
  .line 1
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J
    add-long/2addr v0, p1
    iput-wide v0, p0, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J
    const-wide/16 v0, 0
    cmp-long v2, p1, v0
    if-lez v2, :L0
  .line 2
    invoke-virtual { p0 }, Ljava/lang/Object;->notifyAll()V
  :L0
    return-void
.end method

.method cancelStreamIfNecessary()V
  .catchall { :L0 .. :L4 } :L7
  .catchall { :L8 .. :L9 } :L7
  .registers 3
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;
    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z
    if-nez v0, :L2
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;
    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z
    if-eqz v0, :L2
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;
    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z
    if-nez v0, :L1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;
    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z
    if-eqz v0, :L2
  :L1
    const/4 v0, 1
    goto :L3
  :L2
    const/4 v0, 0
  :L3
  .line 3
    invoke-virtual { p0 }, Lokhttp3/internal/http2/Http2Stream;->isOpen()Z
    move-result v1
  .line 4
    monitor-exit p0
  :L4
    if-eqz v0, :L5
  .line 5
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;
    invoke-virtual { p0, v0 }, Lokhttp3/internal/http2/Http2Stream;->close(Lokhttp3/internal/http2/ErrorCode;)V
    goto :L6
  :L5
    if-nez v1, :L6
  .line 6
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;
    iget v1, p0, Lokhttp3/internal/http2/Http2Stream;->id:I
    invoke-virtual { v0, v1 }, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;
  :L6
    return-void
  :L7
    move-exception v0
  :L8
  .line 7
    monitor-exit p0
  :L9
    throw v0
.end method

.method checkOutNotClosed()V
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;
    iget-boolean v1, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z
    if-nez v1, :L2
  .line 2
    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z
    if-nez v0, :L1
  .line 3
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;
    if-nez v0, :L0
    return-void
  :L0
  .line 4
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;
    invoke-direct { v0, v1 }, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V
    throw v0
  :L1
  .line 5
    new-instance v0, Ljava/io/IOException;
    const-string v1, "stream finished"
    invoke-direct { v0, v1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L2
  .line 6
    new-instance v0, Ljava/io/IOException;
    const-string v1, "stream closed"
    invoke-direct { v0, v1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public close(Lokhttp3/internal/http2/ErrorCode;)V
  .registers 4
  .line 1
    invoke-direct { p0, p1 }, Lokhttp3/internal/http2/Http2Stream;->closeInternal(Lokhttp3/internal/http2/ErrorCode;)Z
    move-result v0
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;
    iget v1, p0, Lokhttp3/internal/http2/Http2Stream;->id:I
    invoke-virtual { v0, v1, p1 }, Lokhttp3/internal/http2/Http2Connection;->writeSynReset(ILokhttp3/internal/http2/ErrorCode;)V
    return-void
.end method

.method public closeLater(Lokhttp3/internal/http2/ErrorCode;)V
  .registers 4
  .line 1
    invoke-direct { p0, p1 }, Lokhttp3/internal/http2/Http2Stream;->closeInternal(Lokhttp3/internal/http2/ErrorCode;)Z
    move-result v0
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;
    iget v1, p0, Lokhttp3/internal/http2/Http2Stream;->id:I
    invoke-virtual { v0, v1, p1 }, Lokhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILokhttp3/internal/http2/ErrorCode;)V
    return-void
.end method

.method public getConnection()Lokhttp3/internal/http2/Http2Connection;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;
    return-object v0
.end method

.method public declared-synchronized getErrorCode()Lokhttp3/internal/http2/ErrorCode;
  .catchall { :L0 .. :L1 } :L2
  .registers 2
    monitor-enter p0
  :L0
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;
  :L1
    monitor-exit p0
    return-object v0
  :L2
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method public getId()I
  .registers 2
  .line 1
    iget v0, p0, Lokhttp3/internal/http2/Http2Stream;->id:I
    return v0
.end method

.method public getSink()Lokio/Sink;
  .catchall { :L0 .. :L3 } :L4
  .catchall { :L5 .. :L6 } :L4
  .registers 3
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z
    if-nez v0, :L2
    invoke-virtual { p0 }, Lokhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z
    move-result v0
    if-eqz v0, :L1
    goto :L2
  :L1
  .line 3
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "reply before requesting the sink"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
  :L2
  .line 4
    monitor-exit p0
  :L3
  .line 5
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;
    return-object v0
  :L4
    move-exception v0
  :L5
  .line 6
    monitor-exit p0
  :L6
    throw v0
.end method

.method public getSource()Lokio/Source;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;
    return-object v0
.end method

.method public isLocallyInitiated()Z
  .registers 5
  .line 1
    iget v0, p0, Lokhttp3/internal/http2/Http2Stream;->id:I
    const/4 v1, 1
    and-int/2addr v0, v1
    const/4 v2, 0
    if-ne v0, v1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
  .line 2
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;
    iget-boolean v3, v3, Lokhttp3/internal/http2/Http2Connection;->client:Z
    if-ne v3, v0, :L2
    goto :L3
  :L2
    const/4 v1, 0
  :L3
    return v1
.end method

.method public declared-synchronized isOpen()Z
  .catchall { :L0 .. :L1 } :L7
  .catchall { :L2 .. :L5 } :L7
  .registers 3
    monitor-enter p0
  :L0
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;
  :L1
    const/4 v1, 0
    if-eqz v0, :L2
  .line 2
    monitor-exit p0
    return v1
  :L2
  .line 3
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;
    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z
    if-nez v0, :L3
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;
    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z
    if-eqz v0, :L6
  :L3
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;
    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z
    if-nez v0, :L4
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;
    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z
    if-eqz v0, :L6
  :L4
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z
  :L5
    if-eqz v0, :L6
  .line 4
    monitor-exit p0
    return v1
  :L6
    const/4 v0, 1
  .line 5
    monitor-exit p0
    return v0
  :L7
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method public readTimeout()Lokio/Timeout;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;
    return-object v0
.end method

.method receiveData(Lokio/BufferedSource;I)V
  .registers 6
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;
    int-to-long v1, p2
    invoke-virtual { v0, p1, v1, v2 }, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receive(Lokio/BufferedSource;J)V
    return-void
.end method

.method receiveFin()V
  .catchall { :L0 .. :L1 } :L3
  .catchall { :L4 .. :L5 } :L3
  .registers 3
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;
    const/4 v1, 1
    iput-boolean v1, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z
  .line 3
    invoke-virtual { p0 }, Lokhttp3/internal/http2/Http2Stream;->isOpen()Z
    move-result v0
  .line 4
    invoke-virtual { p0 }, Ljava/lang/Object;->notifyAll()V
  .line 5
    monitor-exit p0
  :L1
    if-nez v0, :L2
  .line 6
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;
    iget v1, p0, Lokhttp3/internal/http2/Http2Stream;->id:I
    invoke-virtual { v0, v1 }, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;
  :L2
    return-void
  :L3
    move-exception v0
  :L4
  .line 7
    monitor-exit p0
  :L5
    throw v0
.end method

.method receiveHeaders(Ljava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Lokhttp3/internal/http2/Header;",
      ">;)V"
    }
  .end annotation
  .catchall { :L0 .. :L1 } :L3
  .catchall { :L4 .. :L5 } :L3
  .registers 3
  .line 1
    monitor-enter p0
    const/4 v0, 1
  :L0
  .line 2
    iput-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z
  .line 3
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;
    invoke-static { p1 }, Lokhttp3/internal/Util;->toHeaders(Ljava/util/List;)Lokhttp3/Headers;
    move-result-object p1
    invoke-interface { v0, p1 }, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
  .line 4
    invoke-virtual { p0 }, Lokhttp3/internal/http2/Http2Stream;->isOpen()Z
    move-result p1
  .line 5
    invoke-virtual { p0 }, Ljava/lang/Object;->notifyAll()V
  .line 6
    monitor-exit p0
  :L1
    if-nez p1, :L2
  .line 7
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;
    iget v0, p0, Lokhttp3/internal/http2/Http2Stream;->id:I
    invoke-virtual { p1, v0 }, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;
  :L2
    return-void
  :L3
    move-exception p1
  :L4
  .line 8
    monitor-exit p0
  :L5
    throw p1
.end method

.method declared-synchronized receiveRstStream(Lokhttp3/internal/http2/ErrorCode;)V
  .catchall { :L0 .. :L1 } :L2
  .registers 3
    monitor-enter p0
  :L0
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;
    if-nez v0, :L1
  .line 2
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;
  .line 3
    invoke-virtual { p0 }, Ljava/lang/Object;->notifyAll()V
  :L1
  .line 4
    monitor-exit p0
    return-void
  :L2
    move-exception p1
    monitor-exit p0
    throw p1
.end method

.method public declared-synchronized setHeadersListener(Lokhttp3/internal/http2/Header$Listener;)V
  .catchall { :L0 .. :L1 } :L2
  .registers 3
    monitor-enter p0
  :L0
  .line 1
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->headersListener:Lokhttp3/internal/http2/Header$Listener;
  .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;
    invoke-interface { v0 }, Ljava/util/Deque;->isEmpty()Z
    move-result v0
    if-nez v0, :L1
    if-eqz p1, :L1
  .line 3
    invoke-virtual { p0 }, Ljava/lang/Object;->notifyAll()V
  :L1
  .line 4
    monitor-exit p0
    return-void
  :L2
    move-exception p1
    monitor-exit p0
    throw p1
.end method

.method public declared-synchronized takeHeaders()Lokhttp3/Headers;
  .catchall { :L0 .. :L1 } :L7
  .catchall { :L1 .. :L2 } :L6
  .catchall { :L3 .. :L4 } :L7
  .catchall { :L5 .. :L7 } :L7
  .registers 3
    monitor-enter p0
  :L0
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;
    invoke-virtual { v0 }, Lokio/AsyncTimeout;->enter()V
  :L1
  .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;
    invoke-interface { v0 }, Ljava/util/Deque;->isEmpty()Z
    move-result v0
    if-eqz v0, :L3
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;
    if-nez v0, :L3
  .line 3
    invoke-virtual { p0 }, Lokhttp3/internal/http2/Http2Stream;->waitForIo()V
  :L2
    goto :L1
  :L3
  .line 4
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;
    invoke-virtual { v0 }, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V
  .line 5
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;
    invoke-interface { v0 }, Ljava/util/Deque;->isEmpty()Z
    move-result v0
    if-nez v0, :L5
  .line 6
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;
    invoke-interface { v0 }, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lokhttp3/Headers;
  :L4
    monitor-exit p0
    return-object v0
  :L5
  .line 7
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;
    invoke-direct { v0, v1 }, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V
    throw v0
  :L6
    move-exception v0
  .line 8
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;
    invoke-virtual { v1 }, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V
    throw v0
  :L7
    move-exception v0
    monitor-exit p0
    goto :L9
  :L8
    throw v0
  :L9
    goto :L8
.end method

.method waitForIo()V
  .catch Ljava/lang/InterruptedException; { :L0 .. :L1 } :L2
  .registers 2
  :L0
  .line 1
    invoke-virtual { p0 }, Ljava/lang/Object;->wait()V
  :L1
    return-void
  :L2
  .line 2
    invoke-static { }, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/Thread;->interrupt()V
  .line 3
    new-instance v0, Ljava/io/InterruptedIOException;
    invoke-direct { v0 }, Ljava/io/InterruptedIOException;-><init>()V
    throw v0
.end method

.method public writeHeaders(Ljava/util/List;Z)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Lokhttp3/internal/http2/Header;",
      ">;Z)V"
    }
  .end annotation
  .catchall { :L0 .. :L3 } :L11
  .catchall { :L4 .. :L8 } :L7
  .catchall { :L12 .. :L13 } :L11
  .registers 11
    if-eqz p1, :L14
  .line 1
    monitor-enter p0
    const/4 v0, 1
  :L0
  .line 2
    iput-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z
    const/4 v1, 0
    if-nez p2, :L1
  .line 3
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;
    iput-boolean v0, p2, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z
    const/4 p2, 1
    const/4 v2, 1
    goto :L2
  :L1
    const/4 p2, 0
    const/4 v2, 0
  :L2
  .line 4
    monitor-exit p0
  :L3
    if-nez p2, :L9
  .line 5
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;
    monitor-enter v3
  :L4
  .line 6
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;
    iget-wide v4, p2, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J
    const-wide/16 v6, 0
    cmp-long p2, v4, v6
    if-nez p2, :L5
    goto :L6
  :L5
    const/4 v0, 0
  :L6
  .line 7
    monitor-exit v3
    move p2, v0
    goto :L9
  :L7
    move-exception p1
    monitor-exit v3
  :L8
    throw p1
  :L9
  .line 8
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;
    iget v1, p0, Lokhttp3/internal/http2/Http2Stream;->id:I
    invoke-virtual { v0, v1, v2, p1 }, Lokhttp3/internal/http2/Http2Connection;->writeSynReply(IZLjava/util/List;)V
    if-eqz p2, :L10
  .line 9
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;
    invoke-virtual { p1 }, Lokhttp3/internal/http2/Http2Connection;->flush()V
  :L10
    return-void
  :L11
    move-exception p1
  :L12
  .line 10
    monitor-exit p0
  :L13
    throw p1
  :L14
  .line 11
    new-instance p1, Ljava/lang/NullPointerException;
    const-string p2, "headers == null"
    invoke-direct { p1, p2 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public writeTimeout()Lokio/Timeout;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;
    return-object v0
.end method
