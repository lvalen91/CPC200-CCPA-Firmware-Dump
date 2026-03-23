.class public final Lokhttp3/internal/http2/Http2Connection;
.super Ljava/lang/Object;
.implements Ljava/io/Closeable;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lokhttp3/internal/http2/Http2Connection$Listener;,
    Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;,
    Lokhttp3/internal/http2/Http2Connection$Builder;,
    Lokhttp3/internal/http2/Http2Connection$PingRunnable;
  }
.end annotation

.field final static synthetic $assertionsDisabled:Z = false

.field final static OKHTTP_CLIENT_WINDOW_SIZE:I = 16777216

.field private final static listenerExecutor:Ljava/util/concurrent/ExecutorService;

.field private awaitingPong:Z

.field bytesLeftInWriteWindow:J

.field final client:Z

.field final currentPushRequests:Ljava/util/Set;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Set<",
      "Ljava/lang/Integer;",
      ">;"
    }
  .end annotation
.end field

.field final hostname:Ljava/lang/String;

.field lastGoodStreamId:I

.field final listener:Lokhttp3/internal/http2/Http2Connection$Listener;

.field nextStreamId:I

.field okHttpSettings:Lokhttp3/internal/http2/Settings;

.field final peerSettings:Lokhttp3/internal/http2/Settings;

.field private final pushExecutor:Ljava/util/concurrent/ExecutorService;

.field final pushObserver:Lokhttp3/internal/http2/PushObserver;

.field final readerRunnable:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

.field receivedInitialPeerSettings:Z

.field shutdown:Z

.field final socket:Ljava/net/Socket;

.field final streams:Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Map<",
      "Ljava/lang/Integer;",
      "Lokhttp3/internal/http2/Http2Stream;",
      ">;"
    }
  .end annotation
.end field

.field unacknowledgedBytesRead:J

.field final writer:Lokhttp3/internal/http2/Http2Writer;

.field private final writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.method static constructor <clinit>()V
  .registers 10
  .line 1
    const-class v0, Lokhttp3/internal/http2/Http2Connection;
  .line 2
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;
    const/4 v2, 0
    const v3, 2147483647
    const-wide/16 v4, 60
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    new-instance v7, Ljava/util/concurrent/SynchronousQueue;
    invoke-direct { v7 }, Ljava/util/concurrent/SynchronousQueue;-><init>()V
    const/4 v1, 1
    const-string v8, "OkHttp Http2Connection"
  .line 3
    invoke-static { v8, v1 }, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    move-result-object v8
    move-object v1, v0
    invoke-direct/range { v1 .. v8 }, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    sput-object v0, Lokhttp3/internal/http2/Http2Connection;->listenerExecutor:Ljava/util/concurrent/ExecutorService;
    return-void
.end method

.method constructor <init>(Lokhttp3/internal/http2/Http2Connection$Builder;)V
  .registers 23
    move-object/from16 v0, p0
    move-object/from16 v1, p1
  .line 1
    invoke-direct/range { p0 .. p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v2, Ljava/util/LinkedHashMap;
    invoke-direct { v2 }, Ljava/util/LinkedHashMap;-><init>()V
    iput-object v2, v0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;
    const-wide/16 v2, 0
  .line 3
    iput-wide v2, v0, Lokhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J
  .line 4
    new-instance v2, Lokhttp3/internal/http2/Settings;
    invoke-direct { v2 }, Lokhttp3/internal/http2/Settings;-><init>()V
    iput-object v2, v0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;
  .line 5
    new-instance v2, Lokhttp3/internal/http2/Settings;
    invoke-direct { v2 }, Lokhttp3/internal/http2/Settings;-><init>()V
    iput-object v2, v0, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;
    const/4 v2, 0
  .line 6
    iput-boolean v2, v0, Lokhttp3/internal/http2/Http2Connection;->receivedInitialPeerSettings:Z
  .line 7
    new-instance v3, Ljava/util/LinkedHashSet;
    invoke-direct { v3 }, Ljava/util/LinkedHashSet;-><init>()V
    iput-object v3, v0, Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;
  .line 8
    iget-object v3, v1, Lokhttp3/internal/http2/Http2Connection$Builder;->pushObserver:Lokhttp3/internal/http2/PushObserver;
    iput-object v3, v0, Lokhttp3/internal/http2/Http2Connection;->pushObserver:Lokhttp3/internal/http2/PushObserver;
  .line 9
    iget-boolean v3, v1, Lokhttp3/internal/http2/Http2Connection$Builder;->client:Z
    iput-boolean v3, v0, Lokhttp3/internal/http2/Http2Connection;->client:Z
  .line 10
    iget-object v4, v1, Lokhttp3/internal/http2/Http2Connection$Builder;->listener:Lokhttp3/internal/http2/Http2Connection$Listener;
    iput-object v4, v0, Lokhttp3/internal/http2/Http2Connection;->listener:Lokhttp3/internal/http2/Http2Connection$Listener;
    const/4 v4, 2
    const/4 v5, 1
    if-eqz v3, :L0
    const/4 v3, 1
    goto :L1
  :L0
    const/4 v3, 2
  :L1
  .line 11
    iput v3, v0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I
  .line 12
    iget-boolean v6, v1, Lokhttp3/internal/http2/Http2Connection$Builder;->client:Z
    if-eqz v6, :L2
    add-int/2addr v3, v4
  .line 13
    iput v3, v0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I
  :L2
  .line 14
    iget-boolean v3, v1, Lokhttp3/internal/http2/Http2Connection$Builder;->client:Z
    const/4 v4, 7
    if-eqz v3, :L3
  .line 15
    iget-object v3, v0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;
    const/high16 v6, 256
    invoke-virtual { v3, v4, v6 }, Lokhttp3/internal/http2/Settings;->set(II)Lokhttp3/internal/http2/Settings;
  :L3
  .line 16
    iget-object v3, v1, Lokhttp3/internal/http2/Http2Connection$Builder;->hostname:Ljava/lang/String;
    iput-object v3, v0, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;
  .line 17
    new-instance v6, Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    new-array v3, v5, [Ljava/lang/Object;
    iget-object v7, v0, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;
    aput-object v7, v3, v2
    const-string v7, "OkHttp %s Writer"
  .line 18
    invoke-static { v7, v3 }, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v3
    invoke-static { v3, v2 }, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    move-result-object v3
    invoke-direct { v6, v5, v3 }, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V
    iput-object v6, v0, Lokhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;
  .line 19
    iget v3, v1, Lokhttp3/internal/http2/Http2Connection$Builder;->pingIntervalMillis:I
    if-eqz v3, :L4
  .line 20
    new-instance v7, Lokhttp3/internal/http2/Http2Connection$PingRunnable;
    invoke-direct { v7, v0, v2, v2, v2 }, Lokhttp3/internal/http2/Http2Connection$PingRunnable;-><init>(Lokhttp3/internal/http2/Http2Connection;ZII)V
    iget v3, v1, Lokhttp3/internal/http2/Http2Connection$Builder;->pingIntervalMillis:I
    int-to-long v8, v3
    int-to-long v10, v3
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-interface/range { v6 .. v12 }, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
  :L4
  .line 21
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;
    const/4 v14, 0
    const/4 v15, 1
    const-wide/16 v16, 60
    sget-object v18, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    new-instance v19, Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-direct/range { v19 .. v19 }, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V
    new-array v6, v5, [Ljava/lang/Object;
    iget-object v7, v0, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;
    aput-object v7, v6, v2
    const-string v2, "OkHttp %s Push Observer"
  .line 22
    invoke-static { v2, v6 }, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v2
    invoke-static { v2, v5 }, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    move-result-object v20
    move-object v13, v3
    invoke-direct/range { v13 .. v20 }, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    iput-object v3, v0, Lokhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;
  .line 23
    iget-object v2, v0, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;
    const v3, 65535
    invoke-virtual { v2, v4, v3 }, Lokhttp3/internal/http2/Settings;->set(II)Lokhttp3/internal/http2/Settings;
  .line 24
    iget-object v2, v0, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;
    const/4 v3, 5
    const/16 v4, 16384
    invoke-virtual { v2, v3, v4 }, Lokhttp3/internal/http2/Settings;->set(II)Lokhttp3/internal/http2/Settings;
  .line 25
    iget-object v2, v0, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;
    invoke-virtual { v2 }, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I
    move-result v2
    int-to-long v2, v2
    iput-wide v2, v0, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J
  .line 26
    iget-object v2, v1, Lokhttp3/internal/http2/Http2Connection$Builder;->socket:Ljava/net/Socket;
    iput-object v2, v0, Lokhttp3/internal/http2/Http2Connection;->socket:Ljava/net/Socket;
  .line 27
    new-instance v2, Lokhttp3/internal/http2/Http2Writer;
    iget-object v3, v1, Lokhttp3/internal/http2/Http2Connection$Builder;->sink:Lokio/BufferedSink;
    iget-boolean v4, v0, Lokhttp3/internal/http2/Http2Connection;->client:Z
    invoke-direct { v2, v3, v4 }, Lokhttp3/internal/http2/Http2Writer;-><init>(Lokio/BufferedSink;Z)V
    iput-object v2, v0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;
  .line 28
    new-instance v2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;
    new-instance v3, Lokhttp3/internal/http2/Http2Reader;
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection$Builder;->source:Lokio/BufferedSource;
    iget-boolean v4, v0, Lokhttp3/internal/http2/Http2Connection;->client:Z
    invoke-direct { v3, v1, v4 }, Lokhttp3/internal/http2/Http2Reader;-><init>(Lokio/BufferedSource;Z)V
    invoke-direct { v2, v0, v3 }, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Reader;)V
    iput-object v2, v0, Lokhttp3/internal/http2/Http2Connection;->readerRunnable:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;
    return-void
.end method

.method static synthetic access$000(Lokhttp3/internal/http2/Http2Connection;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lokhttp3/internal/http2/Http2Connection;->failConnection()V
    return-void
.end method

.method static synthetic access$100()Ljava/util/concurrent/ExecutorService;
  .registers 3
  .line 1
    sget-object v0, Lokhttp3/internal/http2/Http2Connection;->listenerExecutor:Ljava/util/concurrent/ExecutorService;
    return-object v0
.end method

.method static synthetic access$200(Lokhttp3/internal/http2/Http2Connection;)Ljava/util/concurrent/ScheduledExecutorService;
  .registers 1
  .line 1
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;
    return-object p0
.end method

.method static synthetic access$302(Lokhttp3/internal/http2/Http2Connection;Z)Z
  .registers 2
  .line 1
    iput-boolean p1, p0, Lokhttp3/internal/http2/Http2Connection;->awaitingPong:Z
    return p1
.end method

.method private failConnection()V
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L1
  .registers 3
  :L0
  .line 1
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;
    invoke-virtual { p0, v0, v1 }, Lokhttp3/internal/http2/Http2Connection;->close(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
  :L1
    return-void
.end method

.method private newStream(ILjava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(I",
      "Ljava/util/List<",
      "Lokhttp3/internal/http2/Header;",
      ">;Z)",
      "Lokhttp3/internal/http2/Http2Stream;"
    }
  .end annotation
  .catchall { :L0 .. :L1 } :L17
  .catchall { :L1 .. :L7 } :L15
  .catchall { :L8 .. :L11 } :L17
  .catchall { :L13 .. :L14 } :L17
  .catchall { :L14 .. :L16 } :L15
  .catchall { :L16 .. :L18 } :L17
  .registers 14
    xor-int/lit8 v6, p3, 1
    const/4 v4, 0
  .line 2
    iget-object v7, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;
    monitor-enter v7
  :L0
  .line 3
    monitor-enter p0
  :L1
  .line 4
    iget v0, p0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I
    const v1, 1073741823
    if-le v0, v1, :L2
  .line 5
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;
    invoke-virtual { p0, v0 }, Lokhttp3/internal/http2/Http2Connection;->shutdown(Lokhttp3/internal/http2/ErrorCode;)V
  :L2
  .line 6
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z
    if-nez v0, :L14
  .line 7
    iget v8, p0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I
  .line 8
    iget v0, p0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I
    add-int/lit8 v0, v0, 2
    iput v0, p0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I
  .line 9
    new-instance v9, Lokhttp3/internal/http2/Http2Stream;
    const/4 v5, 0
    move-object v0, v9
    move v1, v8
    move-object v2, p0
    move v3, v6
    invoke-direct/range { v0 .. v5 }, Lokhttp3/internal/http2/Http2Stream;-><init>(ILokhttp3/internal/http2/Http2Connection;ZZLokhttp3/Headers;)V
    if-eqz p3, :L4
  .line 10
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J
    const-wide/16 v2, 0
    cmp-long p3, v0, v2
    if-eqz p3, :L4
    iget-wide v0, v9, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J
    cmp-long p3, v0, v2
    if-nez p3, :L3
    goto :L4
  :L3
    const/4 p3, 0
    goto :L5
  :L4
    const/4 p3, 1
  :L5
  .line 11
    invoke-virtual { v9 }, Lokhttp3/internal/http2/Http2Stream;->isOpen()Z
    move-result v0
    if-eqz v0, :L6
  .line 12
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;
    invoke-static { v8 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface { v0, v1, v9 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L6
  .line 13
    monitor-exit p0
  :L7
    if-nez p1, :L9
  :L8
  .line 14
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;
    invoke-virtual { v0, v6, v8, p1, p2 }, Lokhttp3/internal/http2/Http2Writer;->synStream(ZIILjava/util/List;)V
    goto :L10
  :L9
  .line 15
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->client:Z
    if-nez v0, :L13
  .line 16
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;
    invoke-virtual { v0, p1, v8, p2 }, Lokhttp3/internal/http2/Http2Writer;->pushPromise(IILjava/util/List;)V
  :L10
  .line 17
    monitor-exit v7
  :L11
    if-eqz p3, :L12
  .line 18
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;
    invoke-virtual { p1 }, Lokhttp3/internal/http2/Http2Writer;->flush()V
  :L12
    return-object v9
  :L13
  .line 19
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "client streams shouldn't have associated stream IDs"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L14
  .line 20
    new-instance p1, Lokhttp3/internal/http2/ConnectionShutdownException;
    invoke-direct { p1 }, Lokhttp3/internal/http2/ConnectionShutdownException;-><init>()V
    throw p1
  :L15
    move-exception p1
  .line 21
    monitor-exit p0
  :L16
    throw p1
  :L17
    move-exception p1
  .line 22
    monitor-exit v7
  :L18
    throw p1
.end method

.method private declared-synchronized pushExecutorExecute(Lokhttp3/internal/NamedRunnable;)V
  .catchall { :L0 .. :L1 } :L2
  .registers 3
    monitor-enter p0
  :L0
  .line 1
    invoke-virtual { p0 }, Lokhttp3/internal/http2/Http2Connection;->isShutdown()Z
    move-result v0
    if-nez v0, :L1
  .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-interface { v0, p1 }, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
  :L1
  .line 3
    monitor-exit p0
    return-void
  :L2
    move-exception p1
    monitor-exit p0
    throw p1
.end method

.method declared-synchronized awaitPong()V
  .catchall { :L0 .. :L1 } :L3
  .registers 2
    monitor-enter p0
  :L0
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->awaitingPong:Z
    if-eqz v0, :L2
  .line 2
    invoke-virtual { p0 }, Ljava/lang/Object;->wait()V
  :L1
    goto :L0
  :L2
  .line 3
    monitor-exit p0
    return-void
  :L3
    move-exception v0
    monitor-exit p0
    goto :L5
  :L4
    throw v0
  :L5
    goto :L4
.end method

.method public close()V
  .registers 3
  .line 1
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;
    invoke-virtual { p0, v0, v1 }, Lokhttp3/internal/http2/Http2Connection;->close(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
    return-void
.end method

.method close(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L2
  .catchall { :L4 .. :L6 } :L20
  .catch Ljava/io/IOException; { :L8 .. :L9 } :L10
  .catch Ljava/io/IOException; { :L12 .. :L13 } :L14
  .catch Ljava/io/IOException; { :L15 .. :L16 } :L17
  .catchall { :L21 .. :L22 } :L20
  .registers 7
    const/4 v0, 0
  :L0
  .line 2
    invoke-virtual { p0, p1 }, Lokhttp3/internal/http2/Http2Connection;->shutdown(Lokhttp3/internal/http2/ErrorCode;)V
  :L1
    move-object p1, v0
    goto :L3
  :L2
    move-exception p1
  :L3
  .line 3
    monitor-enter p0
  :L4
  .line 4
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;
    invoke-interface { v1 }, Ljava/util/Map;->isEmpty()Z
    move-result v1
    if-nez v1, :L5
  .line 5
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;
    invoke-interface { v0 }, Ljava/util/Map;->values()Ljava/util/Collection;
    move-result-object v0
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;
    invoke-interface { v1 }, Ljava/util/Map;->size()I
    move-result v1
    new-array v1, v1, [Lokhttp3/internal/http2/Http2Stream;
    invoke-interface { v0, v1 }, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Lokhttp3/internal/http2/Http2Stream;
  .line 6
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;
    invoke-interface { v1 }, Ljava/util/Map;->clear()V
  :L5
  .line 7
    monitor-exit p0
  :L6
    if-eqz v0, :L12
  .line 8
    array-length v1, v0
    const/4 v2, 0
  :L7
    if-ge v2, v1, :L12
    aget-object v3, v0, v2
  :L8
  .line 9
    invoke-virtual { v3, p2 }, Lokhttp3/internal/http2/Http2Stream;->close(Lokhttp3/internal/http2/ErrorCode;)V
  :L9
    goto :L11
  :L10
    move-exception v3
    if-eqz p1, :L11
    move-object p1, v3
  :L11
    add-int/lit8 v2, v2, 1
    goto :L7
  :L12
  .line 10
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;
    invoke-virtual { p2 }, Lokhttp3/internal/http2/Http2Writer;->close()V
  :L13
    goto :L15
  :L14
    move-exception p2
    if-nez p1, :L15
    move-object p1, p2
  :L15
  .line 11
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Connection;->socket:Ljava/net/Socket;
    invoke-virtual { p2 }, Ljava/net/Socket;->close()V
  :L16
    goto :L18
  :L17
    move-exception p1
  :L18
  .line 12
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-interface { p2 }, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
  .line 13
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-interface { p2 }, Ljava/util/concurrent/ExecutorService;->shutdown()V
    if-nez p1, :L19
    return-void
  :L19
  .line 14
    throw p1
  :L20
    move-exception p1
  :L21
  .line 15
    monitor-exit p0
  :L22
    goto :L24
  :L23
    throw p1
  :L24
    goto :L23
.end method

.method public flush()V
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;
    invoke-virtual { v0 }, Lokhttp3/internal/http2/Http2Writer;->flush()V
    return-void
.end method

.method public getProtocol()Lokhttp3/Protocol;
  .registers 2
  .line 1
    sget-object v0, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;
    return-object v0
.end method

.method declared-synchronized getStream(I)Lokhttp3/internal/http2/Http2Stream;
  .catchall { :L0 .. :L1 } :L2
  .registers 3
    monitor-enter p0
  :L0
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    invoke-interface { v0, p1 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lokhttp3/internal/http2/Http2Stream;
  :L1
    monitor-exit p0
    return-object p1
  :L2
    move-exception p1
    monitor-exit p0
    throw p1
.end method

.method public declared-synchronized isShutdown()Z
  .catchall { :L0 .. :L1 } :L2
  .registers 2
    monitor-enter p0
  :L0
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z
  :L1
    monitor-exit p0
    return v0
  :L2
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method public declared-synchronized maxConcurrentStreams()I
  .catchall { :L0 .. :L1 } :L2
  .registers 3
    monitor-enter p0
  :L0
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;
    const v1, 2147483647
    invoke-virtual { v0, v1 }, Lokhttp3/internal/http2/Settings;->getMaxConcurrentStreams(I)I
    move-result v0
  :L1
    monitor-exit p0
    return v0
  :L2
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method public newStream(Ljava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Lokhttp3/internal/http2/Header;",
      ">;Z)",
      "Lokhttp3/internal/http2/Http2Stream;"
    }
  .end annotation
  .registers 4
    const/4 v0, 0
  .line 1
    invoke-direct { p0, v0, p1, p2 }, Lokhttp3/internal/http2/Http2Connection;->newStream(ILjava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;
    move-result-object p1
    return-object p1
.end method

.method public declared-synchronized openStreamCount()I
  .catchall { :L0 .. :L1 } :L2
  .registers 2
    monitor-enter p0
  :L0
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;
    invoke-interface { v0 }, Ljava/util/Map;->size()I
    move-result v0
  :L1
    monitor-exit p0
    return v0
  :L2
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method pushDataLater(ILokio/BufferedSource;IZ)V
  .registers 13
  .line 1
    new-instance v5, Lokio/Buffer;
    invoke-direct { v5 }, Lokio/Buffer;-><init>()V
    int-to-long v0, p3
  .line 2
    invoke-interface { p2, v0, v1 }, Lokio/BufferedSource;->require(J)V
  .line 3
    invoke-interface { p2, v5, v0, v1 }, Lokio/Source;->read(Lokio/Buffer;J)J
  .line 4
    invoke-virtual { v5 }, Lokio/Buffer;->size()J
    move-result-wide v2
    cmp-long p2, v2, v0
    if-nez p2, :L0
  .line 5
    new-instance p2, Lokhttp3/internal/http2/Http2Connection$5;
    const/4 v0, 2
    new-array v3, v0, [Ljava/lang/Object;
    const/4 v0, 0
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;
    aput-object v1, v3, v0
    const/4 v0, 1
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    aput-object v1, v3, v0
    const-string v2, "OkHttp %s Push Data[%s]"
    move-object v0, p2
    move-object v1, p0
    move v4, p1
    move v6, p3
    move v7, p4
    invoke-direct/range { v0 .. v7 }, Lokhttp3/internal/http2/Http2Connection$5;-><init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILokio/Buffer;IZ)V
    invoke-direct { p0, p2 }, Lokhttp3/internal/http2/Http2Connection;->pushExecutorExecute(Lokhttp3/internal/NamedRunnable;)V
    return-void
  :L0
  .line 6
    new-instance p1, Ljava/io/IOException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v5 }, Lokio/Buffer;->size()J
    move-result-wide v0
    invoke-virtual { p2, v0, v1 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string p4, " != "
    invoke-virtual { p2, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method pushHeadersLater(ILjava/util/List;Z)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(I",
      "Ljava/util/List<",
      "Lokhttp3/internal/http2/Header;",
      ">;Z)V"
    }
  .end annotation
  .catch Ljava/util/concurrent/RejectedExecutionException; { :L0 .. :L1 } :L1
  .registers 12
  :L0
  .line 1
    new-instance v7, Lokhttp3/internal/http2/Http2Connection$4;
    const-string v2, "OkHttp %s Push Headers[%s]"
    const/4 v0, 2
    new-array v3, v0, [Ljava/lang/Object;
    const/4 v0, 0
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;
    aput-object v1, v3, v0
    const/4 v0, 1
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    aput-object v1, v3, v0
    move-object v0, v7
    move-object v1, p0
    move v4, p1
    move-object v5, p2
    move v6, p3
    invoke-direct/range { v0 .. v6 }, Lokhttp3/internal/http2/Http2Connection$4;-><init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V
    invoke-direct { p0, v7 }, Lokhttp3/internal/http2/Http2Connection;->pushExecutorExecute(Lokhttp3/internal/NamedRunnable;)V
  :L1
    return-void
.end method

.method pushRequestLater(ILjava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(I",
      "Ljava/util/List<",
      "Lokhttp3/internal/http2/Header;",
      ">;)V"
    }
  .end annotation
  .catchall { :L0 .. :L2 } :L4
  .catch Ljava/util/concurrent/RejectedExecutionException; { :L2 .. :L3 } :L3
  .catchall { :L5 .. :L6 } :L4
  .registers 11
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface { v0, v1 }, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
  .line 3
    sget-object p2, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;
    invoke-virtual { p0, p1, p2 }, Lokhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILokhttp3/internal/http2/ErrorCode;)V
  .line 4
    monitor-exit p0
    return-void
  :L1
  .line 5
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface { v0, v1 }, Ljava/util/Set;->add(Ljava/lang/Object;)Z
  .line 6
    monitor-exit p0
  :L2
  .line 7
    new-instance v0, Lokhttp3/internal/http2/Http2Connection$3;
    const-string v4, "OkHttp %s Push Request[%s]"
    const/4 v1, 2
    new-array v5, v1, [Ljava/lang/Object;
    const/4 v1, 0
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;
    aput-object v2, v5, v1
    const/4 v1, 1
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    aput-object v2, v5, v1
    move-object v2, v0
    move-object v3, p0
    move v6, p1
    move-object v7, p2
    invoke-direct/range { v2 .. v7 }, Lokhttp3/internal/http2/Http2Connection$3;-><init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V
    invoke-direct { p0, v0 }, Lokhttp3/internal/http2/Http2Connection;->pushExecutorExecute(Lokhttp3/internal/NamedRunnable;)V
  :L3
    return-void
  :L4
    move-exception p1
  :L5
  .line 8
    monitor-exit p0
  :L6
    throw p1
.end method

.method pushResetLater(ILokhttp3/internal/http2/ErrorCode;)V
  .registers 10
  .line 1
    new-instance v6, Lokhttp3/internal/http2/Http2Connection$6;
    const/4 v0, 2
    new-array v3, v0, [Ljava/lang/Object;
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;
    const/4 v1, 0
    aput-object v0, v3, v1
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    const/4 v1, 1
    aput-object v0, v3, v1
    const-string v2, "OkHttp %s Push Reset[%s]"
    move-object v0, v6
    move-object v1, p0
    move v4, p1
    move-object v5, p2
    invoke-direct/range { v0 .. v5 }, Lokhttp3/internal/http2/Http2Connection$6;-><init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/http2/ErrorCode;)V
    invoke-direct { p0, v6 }, Lokhttp3/internal/http2/Http2Connection;->pushExecutorExecute(Lokhttp3/internal/NamedRunnable;)V
    return-void
.end method

.method public pushStream(ILjava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(I",
      "Ljava/util/List<",
      "Lokhttp3/internal/http2/Header;",
      ">;Z)",
      "Lokhttp3/internal/http2/Http2Stream;"
    }
  .end annotation
  .registers 5
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->client:Z
    if-nez v0, :L0
  .line 2
    invoke-direct { p0, p1, p2, p3 }, Lokhttp3/internal/http2/Http2Connection;->newStream(ILjava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;
    move-result-object p1
    return-object p1
  :L0
  .line 3
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "Client cannot push requests."
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method pushedStream(I)Z
  .registers 3
    const/4 v0, 1
    if-eqz p1, :L0
    and-int/2addr p1, v0
    if-nez p1, :L0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method declared-synchronized removeStream(I)Lokhttp3/internal/http2/Http2Stream;
  .catchall { :L0 .. :L1 } :L2
  .registers 3
    monitor-enter p0
  :L0
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    invoke-interface { v0, p1 }, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lokhttp3/internal/http2/Http2Stream;
  .line 2
    invoke-virtual { p0 }, Ljava/lang/Object;->notifyAll()V
  :L1
  .line 3
    monitor-exit p0
    return-object p1
  :L2
    move-exception p1
    monitor-exit p0
    throw p1
.end method

.method public setSettings(Lokhttp3/internal/http2/Settings;)V
  .catchall { :L0 .. :L1 } :L7
  .catchall { :L1 .. :L2 } :L5
  .catchall { :L2 .. :L3 } :L7
  .catchall { :L4 .. :L6 } :L5
  .catchall { :L6 .. :L8 } :L7
  .registers 4
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;
    monitor-enter v0
  :L0
  .line 2
    monitor-enter p0
  :L1
  .line 3
    iget-boolean v1, p0, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z
    if-nez v1, :L4
  .line 4
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;
    invoke-virtual { v1, p1 }, Lokhttp3/internal/http2/Settings;->merge(Lokhttp3/internal/http2/Settings;)V
  .line 5
    monitor-exit p0
  :L2
  .line 6
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;
    invoke-virtual { v1, p1 }, Lokhttp3/internal/http2/Http2Writer;->settings(Lokhttp3/internal/http2/Settings;)V
  .line 7
    monitor-exit v0
  :L3
    return-void
  :L4
  .line 8
    new-instance p1, Lokhttp3/internal/http2/ConnectionShutdownException;
    invoke-direct { p1 }, Lokhttp3/internal/http2/ConnectionShutdownException;-><init>()V
    throw p1
  :L5
    move-exception p1
  .line 9
    monitor-exit p0
  :L6
    throw p1
  :L7
    move-exception p1
  .line 10
    monitor-exit v0
  :L8
    throw p1
.end method

.method public shutdown(Lokhttp3/internal/http2/ErrorCode;)V
  .catchall { :L0 .. :L1 } :L11
  .catchall { :L1 .. :L2 } :L8
  .catchall { :L2 .. :L3 } :L11
  .catchall { :L5 .. :L6 } :L8
  .catchall { :L6 .. :L7 } :L11
  .catchall { :L9 .. :L10 } :L8
  .catchall { :L10 .. :L12 } :L11
  .registers 6
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;
    monitor-enter v0
  :L0
  .line 2
    monitor-enter p0
  :L1
  .line 3
    iget-boolean v1, p0, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z
    if-eqz v1, :L4
  .line 4
    monitor-exit p0
  :L2
    monitor-exit v0
  :L3
    return-void
  :L4
    const/4 v1, 1
  :L5
  .line 5
    iput-boolean v1, p0, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z
  .line 6
    iget v1, p0, Lokhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I
  .line 7
    monitor-exit p0
  :L6
  .line 8
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;
    sget-object v3, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B
    invoke-virtual { v2, v1, p1, v3 }, Lokhttp3/internal/http2/Http2Writer;->goAway(ILokhttp3/internal/http2/ErrorCode;[B)V
  .line 9
    monitor-exit v0
  :L7
    return-void
  :L8
    move-exception p1
  :L9
  .line 10
    monitor-exit p0
  :L10
    throw p1
  :L11
    move-exception p1
  .line 11
    monitor-exit v0
  :L12
    throw p1
.end method

.method public start()V
  .registers 2
    const/4 v0, 1
  .line 1
    invoke-virtual { p0, v0 }, Lokhttp3/internal/http2/Http2Connection;->start(Z)V
    return-void
.end method

.method start(Z)V
  .registers 7
    if-eqz p1, :L0
  .line 2
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;
    invoke-virtual { p1 }, Lokhttp3/internal/http2/Http2Writer;->connectionPreface()V
  .line 3
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;
    invoke-virtual { p1, v0 }, Lokhttp3/internal/http2/Http2Writer;->settings(Lokhttp3/internal/http2/Settings;)V
  .line 4
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;
    invoke-virtual { p1 }, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I
    move-result p1
    const v0, 65535
    if-eq p1, v0, :L0
  .line 5
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;
    const/4 v2, 0
    sub-int/2addr p1, v0
    int-to-long v3, p1
    invoke-virtual { v1, v2, v3, v4 }, Lokhttp3/internal/http2/Http2Writer;->windowUpdate(IJ)V
  :L0
  .line 6
    new-instance p1, Ljava/lang/Thread;
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->readerRunnable:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;
    invoke-direct { p1, v0 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    invoke-virtual { p1 }, Ljava/lang/Thread;->start()V
    return-void
.end method

.method declared-synchronized updateConnectionFlowControl(J)V
  .catchall { :L0 .. :L1 } :L2
  .registers 6
    monitor-enter p0
  :L0
  .line 1
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J
    add-long/2addr v0, p1
    iput-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J
  .line 2
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;
    invoke-virtual { p1 }, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I
    move-result p1
    div-int/lit8 p1, p1, 2
    int-to-long p1, p1
    cmp-long v2, v0, p1
    if-ltz v2, :L1
    const/4 p1, 0
  .line 3
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J
    invoke-virtual { p0, p1, v0, v1 }, Lokhttp3/internal/http2/Http2Connection;->writeWindowUpdateLater(IJ)V
    const-wide/16 p1, 0
  .line 4
    iput-wide p1, p0, Lokhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J
  :L1
  .line 5
    monitor-exit p0
    return-void
  :L2
    move-exception p1
    monitor-exit p0
    throw p1
.end method

.method public writeData(IZLokio/Buffer;J)V
  .catch Ljava/lang/InterruptedException; { :L1 .. :L3 } :L8
  .catchall { :L1 .. :L3 } :L7
  .catchall { :L3 .. :L4 } :L7
  .catchall { :L8 .. :L10 } :L7
  .registers 14
    const/4 v0, 0
    const-wide/16 v1, 0
    cmp-long v3, p4, v1
    if-nez v3, :L0
  .line 1
    iget-object p4, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;
    invoke-virtual { p4, p2, p1, p3, v0 }, Lokhttp3/internal/http2/Http2Writer;->data(ZILokio/Buffer;I)V
    return-void
  :L0
    cmp-long v3, p4, v1
    if-lez v3, :L11
  .line 2
    monitor-enter p0
  :L1
  .line 3
    iget-wide v3, p0, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J
    cmp-long v5, v3, v1
    if-gtz v5, :L3
  .line 4
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    invoke-interface { v3, v4 }, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L2
  .line 5
    invoke-virtual { p0 }, Ljava/lang/Object;->wait()V
    goto :L1
  :L2
  .line 6
    new-instance p1, Ljava/io/IOException;
    const-string p2, "stream closed"
    invoke-direct { p1, p2 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
  :L3
  .line 7
    iget-wide v3, p0, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J
    invoke-static { p4, p5, v3, v4 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v3
    long-to-int v4, v3
  .line 8
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;
    invoke-virtual { v3 }, Lokhttp3/internal/http2/Http2Writer;->maxDataLength()I
    move-result v3
    invoke-static { v4, v3 }, Ljava/lang/Math;->min(II)I
    move-result v3
  .line 9
    iget-wide v4, p0, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J
    int-to-long v6, v3
    sub-long/2addr v4, v6
    iput-wide v4, p0, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J
  .line 10
    monitor-exit p0
  :L4
    sub-long/2addr p4, v6
  .line 11
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;
    if-eqz p2, :L5
    cmp-long v5, p4, v1
    if-nez v5, :L5
    const/4 v5, 1
    goto :L6
  :L5
    const/4 v5, 0
  :L6
    invoke-virtual { v4, v5, p1, p3, v3 }, Lokhttp3/internal/http2/Http2Writer;->data(ZILokio/Buffer;I)V
    goto :L0
  :L7
    move-exception p1
    goto :L9
  :L8
  .line 12
    invoke-static { }, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/lang/Thread;->interrupt()V
  .line 13
    new-instance p1, Ljava/io/InterruptedIOException;
    invoke-direct { p1 }, Ljava/io/InterruptedIOException;-><init>()V
    throw p1
  :L9
  .line 14
    monitor-exit p0
  :L10
    throw p1
  :L11
    return-void
.end method

.method writePing(ZII)V
  .catchall { :L0 .. :L1 } :L2
  .catchall { :L3 .. :L4 } :L2
  .catch Ljava/io/IOException; { :L5 .. :L6 } :L7
  .registers 6
    if-nez p1, :L5
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->awaitingPong:Z
    const/4 v1, 1
  .line 3
    iput-boolean v1, p0, Lokhttp3/internal/http2/Http2Connection;->awaitingPong:Z
  .line 4
    monitor-exit p0
  :L1
    if-eqz v0, :L5
  .line 5
    invoke-direct { p0 }, Lokhttp3/internal/http2/Http2Connection;->failConnection()V
    return-void
  :L2
    move-exception p1
  :L3
  .line 6
    monitor-exit p0
  :L4
    throw p1
  :L5
  .line 7
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;
    invoke-virtual { v0, p1, p2, p3 }, Lokhttp3/internal/http2/Http2Writer;->ping(ZII)V
  :L6
    goto :L8
  :L7
  .line 8
    invoke-direct { p0 }, Lokhttp3/internal/http2/Http2Connection;->failConnection()V
  :L8
    return-void
.end method

.method writePingAndAwaitPong()V
  .registers 4
    const/4 v0, 0
    const v1, 1330343787
    const v2, -257978967
  .line 1
    invoke-virtual { p0, v0, v1, v2 }, Lokhttp3/internal/http2/Http2Connection;->writePing(ZII)V
  .line 2
    invoke-virtual { p0 }, Lokhttp3/internal/http2/Http2Connection;->awaitPong()V
    return-void
.end method

.method writeSynReply(IZLjava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(IZ",
      "Ljava/util/List<",
      "Lokhttp3/internal/http2/Header;",
      ">;)V"
    }
  .end annotation
  .registers 5
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;
    invoke-virtual { v0, p2, p1, p3 }, Lokhttp3/internal/http2/Http2Writer;->synReply(ZILjava/util/List;)V
    return-void
.end method

.method writeSynReset(ILokhttp3/internal/http2/ErrorCode;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;
    invoke-virtual { v0, p1, p2 }, Lokhttp3/internal/http2/Http2Writer;->rstStream(ILokhttp3/internal/http2/ErrorCode;)V
    return-void
.end method

.method writeSynResetLater(ILokhttp3/internal/http2/ErrorCode;)V
  .catch Ljava/util/concurrent/RejectedExecutionException; { :L0 .. :L1 } :L1
  .registers 11
  :L0
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v7, Lokhttp3/internal/http2/Http2Connection$1;
    const-string v3, "OkHttp %s stream %d"
    const/4 v1, 2
    new-array v4, v1, [Ljava/lang/Object;
    const/4 v1, 0
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;
    aput-object v2, v4, v1
    const/4 v1, 1
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    aput-object v2, v4, v1
    move-object v1, v7
    move-object v2, p0
    move v5, p1
    move-object v6, p2
    invoke-direct/range { v1 .. v6 }, Lokhttp3/internal/http2/Http2Connection$1;-><init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/http2/ErrorCode;)V
    invoke-interface { v0, v7 }, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
  :L1
    return-void
.end method

.method writeWindowUpdateLater(IJ)V
  .catch Ljava/util/concurrent/RejectedExecutionException; { :L0 .. :L1 } :L1
  .registers 13
  :L0
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v8, Lokhttp3/internal/http2/Http2Connection$2;
    const-string v3, "OkHttp Window Update %s stream %d"
    const/4 v1, 2
    new-array v4, v1, [Ljava/lang/Object;
    const/4 v1, 0
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;
    aput-object v2, v4, v1
    const/4 v1, 1
  .line 2
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    aput-object v2, v4, v1
    move-object v1, v8
    move-object v2, p0
    move v5, p1
    move-wide v6, p2
    invoke-direct/range { v1 .. v7 }, Lokhttp3/internal/http2/Http2Connection$2;-><init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;IJ)V
  .line 3
    invoke-interface { v0, v8 }, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
  :L1
    return-void
.end method
