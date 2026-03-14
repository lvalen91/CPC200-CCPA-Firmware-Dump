.class public final Lokhttp3/ConnectionPool;
.super Ljava/lang/Object;
.source "SourceFile"

.field final static synthetic $assertionsDisabled:Z

.field private final static executor:Ljava/util/concurrent/Executor;

.field private final cleanupRunnable:Ljava/lang/Runnable;

.field cleanupRunning:Z

.field private final connections:Ljava/util/Deque;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Deque<",
      "Lokhttp3/internal/connection/RealConnection;",
      ">;"
    }
  .end annotation
.end field

.field private final keepAliveDurationNs:J

.field private final maxIdleConnections:I

.field final routeDatabase:Lokhttp3/internal/connection/RouteDatabase;

.method static constructor <clinit>()V
  .registers 9
  .line 1
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;
    const/4 v1, 0
    const v2, 2147483647
    const-wide/16 v3, 60
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    new-instance v6, Ljava/util/concurrent/SynchronousQueue;
    invoke-direct { v6 }, Ljava/util/concurrent/SynchronousQueue;-><init>()V
    const/4 v0, 1
    const-string v7, "OkHttp ConnectionPool"
  .line 2
    invoke-static { v7, v0 }, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    move-result-object v7
    move-object v0, v8
    invoke-direct/range { v0 .. v7 }, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    sput-object v8, Lokhttp3/ConnectionPool;->executor:Ljava/util/concurrent/Executor;
    return-void
.end method

.method public constructor <init>()V
  .registers 5
  .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;
    const/4 v1, 5
    const-wide/16 v2, 5
    invoke-direct { p0, v1, v2, v3, v0 }, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V
    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
  .registers 7
  .line 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 3
    new-instance v0, Lokhttp3/ConnectionPool$1;
    invoke-direct { v0, p0 }, Lokhttp3/ConnectionPool$1;-><init>(Lokhttp3/ConnectionPool;)V
    iput-object v0, p0, Lokhttp3/ConnectionPool;->cleanupRunnable:Ljava/lang/Runnable;
  .line 4
    new-instance v0, Ljava/util/ArrayDeque;
    invoke-direct { v0 }, Ljava/util/ArrayDeque;-><init>()V
    iput-object v0, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;
  .line 5
    new-instance v0, Lokhttp3/internal/connection/RouteDatabase;
    invoke-direct { v0 }, Lokhttp3/internal/connection/RouteDatabase;-><init>()V
    iput-object v0, p0, Lokhttp3/ConnectionPool;->routeDatabase:Lokhttp3/internal/connection/RouteDatabase;
  .line 6
    iput p1, p0, Lokhttp3/ConnectionPool;->maxIdleConnections:I
  .line 7
    invoke-virtual { p4, p2, p3 }, Ljava/util/concurrent/TimeUnit;->toNanos(J)J
    move-result-wide v0
    iput-wide v0, p0, Lokhttp3/ConnectionPool;->keepAliveDurationNs:J
    const-wide/16 v0, 0
    cmp-long p1, p2, v0
    if-lez p1, :L0
    return-void
  :L0
  .line 8
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance p4, Ljava/lang/StringBuilder;
    invoke-direct { p4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "keepAliveDuration <= 0: "
    invoke-virtual { p4, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p4, p2, p3 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { p4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method private pruneAndGetAllocationCount(Lokhttp3/internal/connection/RealConnection;J)I
  .registers 10
  .line 1
    iget-object v0, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;
    const/4 v1, 0
    const/4 v2, 0
  :L0
  .line 2
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v3
    if-ge v2, v3, :L2
  .line 3
    invoke-interface { v0, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/ref/Reference;
  .line 4
    invoke-virtual { v3 }, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;
    move-result-object v4
    if-eqz v4, :L1
    add-int/lit8 v2, v2, 1
    goto :L0
  :L1
  .line 5
    check-cast v3, Lokhttp3/internal/connection/StreamAllocation$StreamAllocationReference;
  .line 6
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "A connection to "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;
    move-result-object v5
    invoke-virtual { v5 }, Lokhttp3/Route;->address()Lokhttp3/Address;
    move-result-object v5
    invoke-virtual { v5 }, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;
    move-result-object v5
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v5, " was leaked. Did you forget to close a response body?"
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
  .line 7
    invoke-static { }, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;
    move-result-object v5
    iget-object v3, v3, Lokhttp3/internal/connection/StreamAllocation$StreamAllocationReference;->callStackTrace:Ljava/lang/Object;
    invoke-virtual { v5, v4, v3 }, Lokhttp3/internal/platform/Platform;->logCloseableLeak(Ljava/lang/String;Ljava/lang/Object;)V
  .line 8
    invoke-interface { v0, v2 }, Ljava/util/List;->remove(I)Ljava/lang/Object;
    const/4 v3, 1
  .line 9
    iput-boolean v3, p1, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z
  .line 10
    invoke-interface { v0 }, Ljava/util/List;->isEmpty()Z
    move-result v3
    if-eqz v3, :L0
  .line 11
    iget-wide v2, p0, Lokhttp3/ConnectionPool;->keepAliveDurationNs:J
    sub-long/2addr p2, v2
    iput-wide p2, p1, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J
    return v1
  :L2
  .line 12
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result p1
    return p1
.end method

.method cleanup(J)J
  .catchall { :L0 .. :L8 } :L9
  .catchall { :L10 .. :L11 } :L9
  .registers 14
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iget-object v0, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;
    invoke-interface { v0 }, Ljava/util/Deque;->iterator()Ljava/util/Iterator;
    move-result-object v0
    const/4 v1, 0
    const/4 v2, 0
    const-wide/high16 v3, -32768
    const/4 v5, 0
    const/4 v6, 0
  :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v7
    if-eqz v7, :L3
  .line 3
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Lokhttp3/internal/connection/RealConnection;
  .line 4
    invoke-direct { p0, v7, p1, p2 }, Lokhttp3/ConnectionPool;->pruneAndGetAllocationCount(Lokhttp3/internal/connection/RealConnection;J)I
    move-result v8
    if-lez v8, :L2
    add-int/lit8 v6, v6, 1
    goto :L1
  :L2
    add-int/lit8 v5, v5, 1
  .line 5
    iget-wide v8, v7, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J
    sub-long v8, p1, v8
    cmp-long v10, v8, v3
    if-lez v10, :L1
    move-object v2, v7
    move-wide v3, v8
    goto :L1
  :L3
  .line 6
    iget-wide p1, p0, Lokhttp3/ConnectionPool;->keepAliveDurationNs:J
    cmp-long v0, v3, p1
    if-gez v0, :L7
    iget p1, p0, Lokhttp3/ConnectionPool;->maxIdleConnections:I
    if-le v5, p1, :L4
    goto :L7
  :L4
    if-lez v5, :L5
  .line 7
    iget-wide p1, p0, Lokhttp3/ConnectionPool;->keepAliveDurationNs:J
    sub-long/2addr p1, v3
    monitor-exit p0
    return-wide p1
  :L5
    if-lez v6, :L6
  .line 8
    iget-wide p1, p0, Lokhttp3/ConnectionPool;->keepAliveDurationNs:J
    monitor-exit p0
    return-wide p1
  :L6
  .line 9
    iput-boolean v1, p0, Lokhttp3/ConnectionPool;->cleanupRunning:Z
    const-wide/16 p1, -1
  .line 10
    monitor-exit p0
    return-wide p1
  :L7
  .line 11
    iget-object p1, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;
    invoke-interface { p1, v2 }, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z
  .line 12
    monitor-exit p0
  :L8
  .line 13
    invoke-virtual { v2 }, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;
    move-result-object p1
    invoke-static { p1 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V
    const-wide/16 p1, 0
    return-wide p1
  :L9
    move-exception p1
  :L10
  .line 14
    monitor-exit p0
  :L11
    goto :L13
  :L12
    throw p1
  :L13
    goto :L12
.end method

.method connectionBecameIdle(Lokhttp3/internal/connection/RealConnection;)Z
  .registers 3
  .line 1
    iget-boolean v0, p1, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z
    if-nez v0, :L1
    iget v0, p0, Lokhttp3/ConnectionPool;->maxIdleConnections:I
    if-nez v0, :L0
    goto :L1
  :L0
  .line 2
    invoke-virtual { p0 }, Ljava/lang/Object;->notifyAll()V
    const/4 p1, 0
    return p1
  :L1
  .line 3
    iget-object v0, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;
    invoke-interface { v0, p1 }, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z
    const/4 p1, 1
    return p1
.end method

.method public declared-synchronized connectionCount()I
  .catchall { :L0 .. :L1 } :L2
  .registers 2
    monitor-enter p0
  :L0
  .line 1
    iget-object v0, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;
    invoke-interface { v0 }, Ljava/util/Deque;->size()I
    move-result v0
  :L1
    monitor-exit p0
    return v0
  :L2
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method deduplicate(Lokhttp3/Address;Lokhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 6
  .line 1
    iget-object v0, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;
    invoke-interface { v0 }, Ljava/util/Deque;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    const/4 v2, 0
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lokhttp3/internal/connection/RealConnection;
  .line 2
    invoke-virtual { v1, p1, v2 }, Lokhttp3/internal/connection/RealConnection;->isEligible(Lokhttp3/Address;Lokhttp3/Route;)Z
    move-result v2
    if-eqz v2, :L0
  .line 3
    invoke-virtual { v1 }, Lokhttp3/internal/connection/RealConnection;->isMultiplexed()Z
    move-result v2
    if-eqz v2, :L0
  .line 4
    invoke-virtual { p2 }, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;
    move-result-object v2
    if-eq v1, v2, :L0
  .line 5
    invoke-virtual { p2, v1 }, Lokhttp3/internal/connection/StreamAllocation;->releaseAndAcquire(Lokhttp3/internal/connection/RealConnection;)Ljava/net/Socket;
    move-result-object p1
    return-object p1
  :L1
    return-object v2
.end method

.method public evictAll()V
  .catchall { :L0 .. :L3 } :L6
  .catchall { :L7 .. :L8 } :L6
  .registers 5
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
  .line 2
    monitor-enter p0
  :L0
  .line 3
    iget-object v1, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;
    invoke-interface { v1 }, Ljava/util/Deque;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L1
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L2
  .line 4
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lokhttp3/internal/connection/RealConnection;
  .line 5
    iget-object v3, v2, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;
    invoke-interface { v3 }, Ljava/util/List;->isEmpty()Z
    move-result v3
    if-eqz v3, :L1
    const/4 v3, 1
  .line 6
    iput-boolean v3, v2, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z
  .line 7
    invoke-interface { v0, v2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 8
    invoke-interface { v1 }, Ljava/util/Iterator;->remove()V
    goto :L1
  :L2
  .line 9
    monitor-exit p0
  :L3
  .line 10
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L4
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L5
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lokhttp3/internal/connection/RealConnection;
  .line 11
    invoke-virtual { v1 }, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;
    move-result-object v1
    invoke-static { v1 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V
    goto :L4
  :L5
    return-void
  :L6
    move-exception v0
  :L7
  .line 12
    monitor-exit p0
  :L8
    goto :L10
  :L9
    throw v0
  :L10
    goto :L9
.end method

.method get(Lokhttp3/Address;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/Route;)Lokhttp3/internal/connection/RealConnection;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 7
  .line 1
    iget-object v0, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;
    invoke-interface { v0 }, Ljava/util/Deque;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lokhttp3/internal/connection/RealConnection;
  .line 2
    invoke-virtual { v1, p1, p3 }, Lokhttp3/internal/connection/RealConnection;->isEligible(Lokhttp3/Address;Lokhttp3/Route;)Z
    move-result v2
    if-eqz v2, :L0
    const/4 p1, 1
  .line 3
    invoke-virtual { p2, v1, p1 }, Lokhttp3/internal/connection/StreamAllocation;->acquire(Lokhttp3/internal/connection/RealConnection;Z)V
    return-object v1
  :L1
    const/4 p1, 0
    return-object p1
.end method

.method public declared-synchronized idleConnectionCount()I
  .catchall { :L0 .. :L2 } :L4
  .registers 4
    monitor-enter p0
    const/4 v0, 0
  :L0
  .line 1
    iget-object v1, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;
    invoke-interface { v1 }, Ljava/util/Deque;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L1
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L3
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lokhttp3/internal/connection/RealConnection;
  .line 2
    iget-object v2, v2, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;
    invoke-interface { v2 }, Ljava/util/List;->isEmpty()Z
    move-result v2
  :L2
    if-eqz v2, :L1
    add-int/lit8 v0, v0, 1
    goto :L1
  :L3
  .line 3
    monitor-exit p0
    return v0
  :L4
    move-exception v0
    monitor-exit p0
    goto :L6
  :L5
    throw v0
  :L6
    goto :L5
.end method

.method put(Lokhttp3/internal/connection/RealConnection;)V
  .registers 4
  .line 1
    iget-boolean v0, p0, Lokhttp3/ConnectionPool;->cleanupRunning:Z
    if-nez v0, :L0
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Lokhttp3/ConnectionPool;->cleanupRunning:Z
  .line 3
    sget-object v0, Lokhttp3/ConnectionPool;->executor:Ljava/util/concurrent/Executor;
    iget-object v1, p0, Lokhttp3/ConnectionPool;->cleanupRunnable:Ljava/lang/Runnable;
    invoke-interface { v0, v1 }, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
  :L0
  .line 4
    iget-object v0, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;
    invoke-interface { v0, p1 }, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    return-void
.end method
