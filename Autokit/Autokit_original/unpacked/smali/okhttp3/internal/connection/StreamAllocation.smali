.class public final Lokhttp3/internal/connection/StreamAllocation;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lokhttp3/internal/connection/StreamAllocation$StreamAllocationReference;
  }
.end annotation

.field final static synthetic $assertionsDisabled:Z

.field public final address:Lokhttp3/Address;

.field public final call:Lokhttp3/Call;

.field private final callStackTrace:Ljava/lang/Object;

.field private canceled:Z

.field private codec:Lokhttp3/internal/http/HttpCodec;

.field private connection:Lokhttp3/internal/connection/RealConnection;

.field private final connectionPool:Lokhttp3/ConnectionPool;

.field public final eventListener:Lokhttp3/EventListener;

.field private refusedStreamCount:I

.field private released:Z

.field private reportedAcquired:Z

.field private route:Lokhttp3/Route;

.field private routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

.field private final routeSelector:Lokhttp3/internal/connection/RouteSelector;

.method static constructor <clinit>()V
  .registers 2
    return-void
.end method

.method public constructor <init>(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/Call;Lokhttp3/EventListener;Ljava/lang/Object;)V
  .registers 7
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;
  .line 3
    iput-object p2, p0, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;
  .line 4
    iput-object p3, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;
  .line 5
    iput-object p4, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;
  .line 6
    new-instance p1, Lokhttp3/internal/connection/RouteSelector;
    invoke-direct { p0 }, Lokhttp3/internal/connection/StreamAllocation;->routeDatabase()Lokhttp3/internal/connection/RouteDatabase;
    move-result-object v0
    invoke-direct { p1, p2, v0, p3, p4 }, Lokhttp3/internal/connection/RouteSelector;-><init>(Lokhttp3/Address;Lokhttp3/internal/connection/RouteDatabase;Lokhttp3/Call;Lokhttp3/EventListener;)V
    iput-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;
  .line 7
    iput-object p5, p0, Lokhttp3/internal/connection/StreamAllocation;->callStackTrace:Ljava/lang/Object;
    return-void
.end method

.method private deallocate(ZZZ)Ljava/net/Socket;
  .registers 5
    const/4 v0, 0
    if-eqz p3, :L0
  .line 1
    iput-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;
  :L0
    const/4 p3, 1
    if-eqz p2, :L1
  .line 2
    iput-boolean p3, p0, Lokhttp3/internal/connection/StreamAllocation;->released:Z
  :L1
  .line 3
    iget-object p2, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
    if-eqz p2, :L6
    if-eqz p1, :L2
  .line 4
    iput-boolean p3, p2, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z
  :L2
  .line 5
    iget-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;
    if-nez p1, :L6
    iget-boolean p1, p0, Lokhttp3/internal/connection/StreamAllocation;->released:Z
    if-nez p1, :L3
    iget-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
    iget-boolean p1, p1, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z
    if-eqz p1, :L6
  :L3
  .line 6
    iget-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
    invoke-direct { p0, p1 }, Lokhttp3/internal/connection/StreamAllocation;->release(Lokhttp3/internal/connection/RealConnection;)V
  .line 7
    iget-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
    iget-object p1, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;
    invoke-interface { p1 }, Ljava/util/List;->isEmpty()Z
    move-result p1
    if-eqz p1, :L4
  .line 8
    iget-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
    invoke-static { }, Ljava/lang/System;->nanoTime()J
    move-result-wide p2
    iput-wide p2, p1, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J
  .line 9
    sget-object p1, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;
    iget-object p2, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;
    iget-object p3, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
    invoke-virtual { p1, p2, p3 }, Lokhttp3/internal/Internal;->connectionBecameIdle(Lokhttp3/ConnectionPool;Lokhttp3/internal/connection/RealConnection;)Z
    move-result p1
    if-eqz p1, :L4
  .line 10
    iget-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
    invoke-virtual { p1 }, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;
    move-result-object p1
    goto :L5
  :L4
    move-object p1, v0
  :L5
  .line 11
    iput-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
    move-object v0, p1
  :L6
    return-object v0
.end method

.method private findConnection(IIIIZ)Lokhttp3/internal/connection/RealConnection;
  .catchall { :L0 .. :L8 } :L35
  .catchall { :L15 .. :L21 } :L30
  .catchall { :L23 .. :L25 } :L26
  .catchall { :L27 .. :L28 } :L26
  .catchall { :L29 .. :L31 } :L30
  .catchall { :L32 .. :L36 } :L35
  .registers 24
    move-object/from16 v1, p0
  .line 1
    iget-object v2, v1, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;
    monitor-enter v2
  :L0
  .line 2
    iget-boolean v0, v1, Lokhttp3/internal/connection/StreamAllocation;->released:Z
    if-nez v0, :L34
  .line 3
    iget-object v0, v1, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;
    if-nez v0, :L33
  .line 4
    iget-boolean v0, v1, Lokhttp3/internal/connection/StreamAllocation;->canceled:Z
    if-nez v0, :L32
  .line 5
    iget-object v0, v1, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
  .line 6
    invoke-direct/range { p0 .. p0 }, Lokhttp3/internal/connection/StreamAllocation;->releaseIfNoNewStreams()Ljava/net/Socket;
    move-result-object v3
  .line 7
    iget-object v4, v1, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
    const/4 v5, 0
    if-eqz v4, :L1
  .line 8
    iget-object v0, v1, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
    move-object v4, v5
    goto :L2
  :L1
    move-object v4, v0
    move-object v0, v5
  :L2
  .line 9
    iget-boolean v6, v1, Lokhttp3/internal/connection/StreamAllocation;->reportedAcquired:Z
    if-nez v6, :L3
    move-object v4, v5
  :L3
    const/4 v6, 1
    const/4 v7, 0
    if-nez v0, :L5
  .line 10
    sget-object v8, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;
    iget-object v9, v1, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;
    iget-object v10, v1, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;
    invoke-virtual { v8, v9, v10, v1, v5 }, Lokhttp3/internal/Internal;->get(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/Route;)Lokhttp3/internal/connection/RealConnection;
  .line 11
    iget-object v8, v1, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
    if-eqz v8, :L4
  .line 12
    iget-object v0, v1, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
    move-object v8, v5
    const/4 v9, 1
    goto :L7
  :L4
  .line 13
    iget-object v8, v1, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;
    goto :L6
  :L5
    move-object v8, v5
  :L6
    const/4 v9, 0
  :L7
  .line 14
    monitor-exit v2
  :L8
  .line 15
    invoke-static { v3 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V
    if-eqz v4, :L9
  .line 16
    iget-object v2, v1, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;
    iget-object v3, v1, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;
    invoke-virtual { v2, v3, v4 }, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V
  :L9
    if-eqz v9, :L10
  .line 17
    iget-object v2, v1, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;
    iget-object v3, v1, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;
    invoke-virtual { v2, v3, v0 }, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V
  :L10
    if-eqz v0, :L11
    return-object v0
  :L11
    if-nez v8, :L13
  .line 18
    iget-object v2, v1, Lokhttp3/internal/connection/StreamAllocation;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;
    if-eqz v2, :L12
    invoke-virtual { v2 }, Lokhttp3/internal/connection/RouteSelector$Selection;->hasNext()Z
    move-result v2
    if-nez v2, :L13
  :L12
  .line 19
    iget-object v2, v1, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;
    invoke-virtual { v2 }, Lokhttp3/internal/connection/RouteSelector;->next()Lokhttp3/internal/connection/RouteSelector$Selection;
    move-result-object v2
    iput-object v2, v1, Lokhttp3/internal/connection/StreamAllocation;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;
    const/4 v2, 1
    goto :L14
  :L13
    const/4 v2, 0
  :L14
  .line 20
    iget-object v3, v1, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;
    monitor-enter v3
  :L15
  .line 21
    iget-boolean v4, v1, Lokhttp3/internal/connection/StreamAllocation;->canceled:Z
    if-nez v4, :L29
    if-eqz v2, :L18
  .line 22
    iget-object v2, v1, Lokhttp3/internal/connection/StreamAllocation;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;
    invoke-virtual { v2 }, Lokhttp3/internal/connection/RouteSelector$Selection;->getAll()Ljava/util/List;
    move-result-object v2
  .line 23
    invoke-interface { v2 }, Ljava/util/List;->size()I
    move-result v4
    const/4 v10, 0
  :L16
    if-ge v10, v4, :L18
  .line 24
    invoke-interface { v2, v10 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v11
    check-cast v11, Lokhttp3/Route;
  .line 25
    sget-object v12, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;
    iget-object v13, v1, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;
    iget-object v14, v1, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;
    invoke-virtual { v12, v13, v14, v1, v11 }, Lokhttp3/internal/Internal;->get(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/Route;)Lokhttp3/internal/connection/RealConnection;
  .line 26
    iget-object v12, v1, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
    if-eqz v12, :L17
  .line 27
    iget-object v0, v1, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
  .line 28
    iput-object v11, v1, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;
    const/4 v9, 1
    goto :L18
  :L17
    add-int/lit8 v10, v10, 1
    goto :L16
  :L18
    if-nez v9, :L20
    if-nez v8, :L19
  .line 29
    iget-object v0, v1, Lokhttp3/internal/connection/StreamAllocation;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;
    invoke-virtual { v0 }, Lokhttp3/internal/connection/RouteSelector$Selection;->next()Lokhttp3/Route;
    move-result-object v8
  :L19
  .line 30
    iput-object v8, v1, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;
  .line 31
    iput v7, v1, Lokhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I
  .line 32
    new-instance v0, Lokhttp3/internal/connection/RealConnection;
    iget-object v2, v1, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;
    invoke-direct { v0, v2, v8 }, Lokhttp3/internal/connection/RealConnection;-><init>(Lokhttp3/ConnectionPool;Lokhttp3/Route;)V
  .line 33
    invoke-virtual { v1, v0, v7 }, Lokhttp3/internal/connection/StreamAllocation;->acquire(Lokhttp3/internal/connection/RealConnection;Z)V
  :L20
  .line 34
    monitor-exit v3
  :L21
    if-eqz v9, :L22
  .line 35
    iget-object v2, v1, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;
    iget-object v3, v1, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;
    invoke-virtual { v2, v3, v0 }, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V
    return-object v0
  :L22
  .line 36
    iget-object v2, v1, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;
    iget-object v3, v1, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;
    move-object v10, v0
    move/from16 v11, p1
    move/from16 v12, p2
    move/from16 v13, p3
    move/from16 v14, p4
    move/from16 v15, p5
    move-object/from16 v16, v2
    move-object/from16 v17, v3
    invoke-virtual/range { v10 .. v17 }, Lokhttp3/internal/connection/RealConnection;->connect(IIIIZLokhttp3/Call;Lokhttp3/EventListener;)V
  .line 37
    invoke-direct/range { p0 .. p0 }, Lokhttp3/internal/connection/StreamAllocation;->routeDatabase()Lokhttp3/internal/connection/RouteDatabase;
    move-result-object v2
    invoke-virtual { v0 }, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;
    move-result-object v3
    invoke-virtual { v2, v3 }, Lokhttp3/internal/connection/RouteDatabase;->connected(Lokhttp3/Route;)V
  .line 38
    iget-object v2, v1, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;
    monitor-enter v2
  :L23
  .line 39
    iput-boolean v6, v1, Lokhttp3/internal/connection/StreamAllocation;->reportedAcquired:Z
  .line 40
    sget-object v3, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;
    iget-object v4, v1, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;
    invoke-virtual { v3, v4, v0 }, Lokhttp3/internal/Internal;->put(Lokhttp3/ConnectionPool;Lokhttp3/internal/connection/RealConnection;)V
  .line 41
    invoke-virtual { v0 }, Lokhttp3/internal/connection/RealConnection;->isMultiplexed()Z
    move-result v3
    if-eqz v3, :L24
  .line 42
    sget-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;
    iget-object v3, v1, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;
    iget-object v4, v1, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;
    invoke-virtual { v0, v3, v4, v1 }, Lokhttp3/internal/Internal;->deduplicate(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;
    move-result-object v5
  .line 43
    iget-object v0, v1, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
  :L24
  .line 44
    monitor-exit v2
  :L25
  .line 45
    invoke-static { v5 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V
  .line 46
    iget-object v2, v1, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;
    iget-object v3, v1, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;
    invoke-virtual { v2, v3, v0 }, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V
    return-object v0
  :L26
    move-exception v0
  :L27
  .line 47
    monitor-exit v2
  :L28
    throw v0
  :L29
  .line 48
    new-instance v0, Ljava/io/IOException;
    const-string v2, "Canceled"
    invoke-direct { v0, v2 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L30
    move-exception v0
  .line 49
    monitor-exit v3
  :L31
    throw v0
  :L32
  .line 50
    new-instance v0, Ljava/io/IOException;
    const-string v3, "Canceled"
    invoke-direct { v0, v3 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L33
  .line 51
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v3, "codec != null"
    invoke-direct { v0, v3 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
  :L34
  .line 52
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v3, "released"
    invoke-direct { v0, v3 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
  :L35
    move-exception v0
  .line 53
    monitor-exit v2
  :L36
    goto :L38
  :L37
    throw v0
  :L38
    goto :L37
.end method

.method private findHealthyConnection(IIIIZZ)Lokhttp3/internal/connection/RealConnection;
  .catchall { :L1 .. :L3 } :L5
  .catchall { :L6 .. :L7 } :L5
  .registers 10
  :L0
  .line 1
    invoke-direct/range { p0 .. p5 }, Lokhttp3/internal/connection/StreamAllocation;->findConnection(IIIIZ)Lokhttp3/internal/connection/RealConnection;
    move-result-object v0
  .line 2
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;
    monitor-enter v1
  :L1
  .line 3
    iget v2, v0, Lokhttp3/internal/connection/RealConnection;->successCount:I
    if-nez v2, :L2
  .line 4
    monitor-exit v1
    return-object v0
  :L2
  .line 5
    monitor-exit v1
  :L3
  .line 6
    invoke-virtual { v0, p6 }, Lokhttp3/internal/connection/RealConnection;->isHealthy(Z)Z
    move-result v1
    if-nez v1, :L4
  .line 7
    invoke-virtual { p0 }, Lokhttp3/internal/connection/StreamAllocation;->noNewStreams()V
    goto :L0
  :L4
    return-object v0
  :L5
    move-exception p1
  :L6
  .line 8
    monitor-exit v1
  :L7
    goto :L9
  :L8
    throw p1
  :L9
    goto :L8
.end method

.method private release(Lokhttp3/internal/connection/RealConnection;)V
  .registers 5
  .line 11
    iget-object v0, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L2
  .line 12
    iget-object v2, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;
    invoke-interface { v2, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/ref/Reference;
  .line 13
    invoke-virtual { v2 }, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;
    move-result-object v2
    if-ne v2, p0, :L1
  .line 14
    iget-object p1, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;
    invoke-interface { p1, v1 }, Ljava/util/List;->remove(I)Ljava/lang/Object;
    return-void
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
  .line 15
    new-instance p1, Ljava/lang/IllegalStateException;
    invoke-direct { p1 }, Ljava/lang/IllegalStateException;-><init>()V
    goto :L4
  :L3
    throw p1
  :L4
    goto :L3
.end method

.method private releaseIfNoNewStreams()Ljava/net/Socket;
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
    if-eqz v0, :L0
  .line 2
    iget-boolean v0, v0, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z
    if-eqz v0, :L0
    const/4 v0, 1
    const/4 v1, 0
  .line 3
    invoke-direct { p0, v1, v1, v0 }, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;
    move-result-object v0
    return-object v0
  :L0
    const/4 v0, 0
    return-object v0
.end method

.method private routeDatabase()Lokhttp3/internal/connection/RouteDatabase;
  .registers 3
  .line 1
    sget-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;
    invoke-virtual { v0, v1 }, Lokhttp3/internal/Internal;->routeDatabase(Lokhttp3/ConnectionPool;)Lokhttp3/internal/connection/RouteDatabase;
    move-result-object v0
    return-object v0
.end method

.method public acquire(Lokhttp3/internal/connection/RealConnection;Z)V
  .registers 4
  .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
    if-nez v0, :L0
  .line 2
    iput-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
  .line 3
    iput-boolean p2, p0, Lokhttp3/internal/connection/StreamAllocation;->reportedAcquired:Z
  .line 4
    iget-object p1, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;
    new-instance p2, Lokhttp3/internal/connection/StreamAllocation$StreamAllocationReference;
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->callStackTrace:Ljava/lang/Object;
    invoke-direct { p2, p0, v0 }, Lokhttp3/internal/connection/StreamAllocation$StreamAllocationReference;-><init>(Lokhttp3/internal/connection/StreamAllocation;Ljava/lang/Object;)V
    invoke-interface { p1, p2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    return-void
  :L0
  .line 5
    new-instance p1, Ljava/lang/IllegalStateException;
    invoke-direct { p1 }, Ljava/lang/IllegalStateException;-><init>()V
    throw p1
.end method

.method public cancel()V
  .catchall { :L0 .. :L1 } :L4
  .catchall { :L5 .. :L6 } :L4
  .registers 4
  .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;
    monitor-enter v0
    const/4 v1, 1
  :L0
  .line 2
    iput-boolean v1, p0, Lokhttp3/internal/connection/StreamAllocation;->canceled:Z
  .line 3
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;
  .line 4
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
  .line 5
    monitor-exit v0
  :L1
    if-eqz v1, :L2
  .line 6
    invoke-interface { v1 }, Lokhttp3/internal/http/HttpCodec;->cancel()V
    goto :L3
  :L2
    if-eqz v2, :L3
  .line 7
    invoke-virtual { v2 }, Lokhttp3/internal/connection/RealConnection;->cancel()V
  :L3
    return-void
  :L4
    move-exception v1
  :L5
  .line 8
    monitor-exit v0
  :L6
    throw v1
.end method

.method public codec()Lokhttp3/internal/http/HttpCodec;
  .catchall { :L0 .. :L2 } :L1
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;
    monitor-enter v0
  :L0
  .line 2
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;
    monitor-exit v0
    return-object v1
  :L1
    move-exception v1
  .line 3
    monitor-exit v0
  :L2
    throw v1
.end method

.method public declared-synchronized connection()Lokhttp3/internal/connection/RealConnection;
  .catchall { :L0 .. :L1 } :L2
  .registers 2
    monitor-enter p0
  :L0
  .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
  :L1
    monitor-exit p0
    return-object v0
  :L2
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method public hasMoreRoutes()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;
    if-nez v0, :L2
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Lokhttp3/internal/connection/RouteSelector$Selection;->hasNext()Z
    move-result v0
    if-nez v0, :L2
  :L0
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;
  .line 3
    invoke-virtual { v0 }, Lokhttp3/internal/connection/RouteSelector;->hasNext()Z
    move-result v0
    if-eqz v0, :L1
    goto :L2
  :L1
    const/4 v0, 0
    goto :L3
  :L2
    const/4 v0, 1
  :L3
    return v0
.end method

.method public newStream(Lokhttp3/OkHttpClient;Lokhttp3/Interceptor$Chain;Z)Lokhttp3/internal/http/HttpCodec;
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L4
  .catchall { :L1 .. :L3 } :L2
  .catch Ljava/io/IOException; { :L3 .. :L4 } :L4
  .registers 11
  .line 1
    invoke-interface { p2 }, Lokhttp3/Interceptor$Chain;->connectTimeoutMillis()I
    move-result v1
  .line 2
    invoke-interface { p2 }, Lokhttp3/Interceptor$Chain;->readTimeoutMillis()I
    move-result v2
  .line 3
    invoke-interface { p2 }, Lokhttp3/Interceptor$Chain;->writeTimeoutMillis()I
    move-result v3
  .line 4
    invoke-virtual { p1 }, Lokhttp3/OkHttpClient;->pingIntervalMillis()I
    move-result v4
  .line 5
    invoke-virtual { p1 }, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z
    move-result v5
    move-object v0, p0
    move v6, p3
  :L0
  .line 6
    invoke-direct/range { v0 .. v6 }, Lokhttp3/internal/connection/StreamAllocation;->findHealthyConnection(IIIIZZ)Lokhttp3/internal/connection/RealConnection;
    move-result-object p3
  .line 7
    invoke-virtual { p3, p1, p2, p0 }, Lokhttp3/internal/connection/RealConnection;->newCodec(Lokhttp3/OkHttpClient;Lokhttp3/Interceptor$Chain;Lokhttp3/internal/connection/StreamAllocation;)Lokhttp3/internal/http/HttpCodec;
    move-result-object p1
  .line 8
    iget-object p2, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;
    monitor-enter p2
  :L1
  .line 9
    iput-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;
  .line 10
    monitor-exit p2
    return-object p1
  :L2
    move-exception p1
  .line 11
    monitor-exit p2
  :L3
    throw p1
  :L4
    move-exception p1
  .line 12
    new-instance p2, Lokhttp3/internal/connection/RouteException;
    invoke-direct { p2, p1 }, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V
    throw p2
.end method

.method public noNewStreams()V
  .catchall { :L0 .. :L2 } :L4
  .catchall { :L5 .. :L6 } :L4
  .registers 5
  .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;
    monitor-enter v0
  :L0
  .line 2
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
    const/4 v2, 1
    const/4 v3, 0
  .line 3
    invoke-direct { p0, v2, v3, v3 }, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;
    move-result-object v2
  .line 4
    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
    if-eqz v3, :L1
    const/4 v1, 0
  :L1
  .line 5
    monitor-exit v0
  :L2
  .line 6
    invoke-static { v2 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V
    if-eqz v1, :L3
  .line 7
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;
    invoke-virtual { v0, v2, v1 }, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V
  :L3
    return-void
  :L4
    move-exception v1
  :L5
  .line 8
    monitor-exit v0
  :L6
    throw v1
.end method

.method public release()V
  .catchall { :L0 .. :L2 } :L4
  .catchall { :L5 .. :L6 } :L4
  .registers 6
  .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;
    monitor-enter v0
  :L0
  .line 2
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
    const/4 v2, 1
    const/4 v3, 0
  .line 3
    invoke-direct { p0, v3, v2, v3 }, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;
    move-result-object v2
  .line 4
    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
    const/4 v4, 0
    if-eqz v3, :L1
    move-object v1, v4
  :L1
  .line 5
    monitor-exit v0
  :L2
  .line 6
    invoke-static { v2 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V
    if-eqz v1, :L3
  .line 7
    sget-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;
    invoke-virtual { v0, v2, v4 }, Lokhttp3/internal/Internal;->timeoutExit(Lokhttp3/Call;Ljava/io/IOException;)Ljava/io/IOException;
  .line 8
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;
    invoke-virtual { v0, v2, v1 }, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V
  .line 9
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;
    invoke-virtual { v0, v1 }, Lokhttp3/EventListener;->callEnd(Lokhttp3/Call;)V
  :L3
    return-void
  :L4
    move-exception v1
  :L5
  .line 10
    monitor-exit v0
  :L6
    throw v1
.end method

.method public releaseAndAcquire(Lokhttp3/internal/connection/RealConnection;)Ljava/net/Socket;
  .registers 5
  .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;
    if-nez v0, :L0
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
    iget-object v0, v0, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    const/4 v1, 1
    if-ne v0, v1, :L0
  .line 2
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
    iget-object v0, v0, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;
    const/4 v2, 0
    invoke-interface { v0, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/ref/Reference;
  .line 3
    invoke-direct { p0, v1, v2, v2 }, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;
    move-result-object v1
  .line 4
    iput-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
  .line 5
    iget-object p1, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;
    invoke-interface { p1, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    return-object v1
  :L0
  .line 6
    new-instance p1, Ljava/lang/IllegalStateException;
    invoke-direct { p1 }, Ljava/lang/IllegalStateException;-><init>()V
    throw p1
.end method

.method public route()Lokhttp3/Route;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;
    return-object v0
.end method

.method public streamFailed(Ljava/io/IOException;)V
  .catchall { :L0 .. :L10 } :L12
  .catchall { :L13 .. :L14 } :L12
  .registers 8
  .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;
    monitor-enter v0
  :L0
  .line 2
    instance-of v1, p1, Lokhttp3/internal/http2/StreamResetException;
    const/4 v2, 0
    const/4 v3, 0
    const/4 v4, 1
    if-eqz v1, :L2
  .line 3
    check-cast p1, Lokhttp3/internal/http2/StreamResetException;
    iget-object p1, p1, Lokhttp3/internal/http2/StreamResetException;->errorCode:Lokhttp3/internal/http2/ErrorCode;
  .line 4
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;
    if-ne p1, v1, :L1
  .line 5
    iget p1, p0, Lokhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I
    add-int/2addr p1, v4
    iput p1, p0, Lokhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I
    if-le p1, v4, :L6
  .line 6
    iput-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;
    goto :L5
  :L1
  .line 7
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;
    if-eq p1, v1, :L6
  .line 8
    iput-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;
    goto :L5
  :L2
  .line 9
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
    if-eqz v1, :L6
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
  .line 10
    invoke-virtual { v1 }, Lokhttp3/internal/connection/RealConnection;->isMultiplexed()Z
    move-result v1
    if-eqz v1, :L3
    instance-of v1, p1, Lokhttp3/internal/http2/ConnectionShutdownException;
    if-eqz v1, :L6
  :L3
  .line 11
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
    iget v1, v1, Lokhttp3/internal/connection/RealConnection;->successCount:I
    if-nez v1, :L5
  .line 12
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;
    if-eqz v1, :L4
    if-eqz p1, :L4
  .line 13
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;
    iget-object v5, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;
    invoke-virtual { v1, v5, p1 }, Lokhttp3/internal/connection/RouteSelector;->connectFailed(Lokhttp3/Route;Ljava/io/IOException;)V
  :L4
  .line 14
    iput-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;
  :L5
    const/4 p1, 1
    goto :L7
  :L6
    const/4 p1, 0
  :L7
  .line 15
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
  .line 16
    invoke-direct { p0, p1, v2, v4 }, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;
    move-result-object p1
  .line 17
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
    if-nez v2, :L9
    iget-boolean v2, p0, Lokhttp3/internal/connection/StreamAllocation;->reportedAcquired:Z
    if-nez v2, :L8
    goto :L9
  :L8
    move-object v3, v1
  :L9
  .line 18
    monitor-exit v0
  :L10
  .line 19
    invoke-static { p1 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V
    if-eqz v3, :L11
  .line 20
    iget-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;
    invoke-virtual { p1, v0, v3 }, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V
  :L11
    return-void
  :L12
    move-exception p1
  :L13
  .line 21
    monitor-exit v0
  :L14
    throw p1
.end method

.method public streamFinished(ZLokhttp3/internal/http/HttpCodec;JLjava/io/IOException;)V
  .catchall { :L0 .. :L3 } :L8
  .catchall { :L7 .. :L9 } :L8
  .registers 8
  .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;
    invoke-virtual { v0, v1, p3, p4 }, Lokhttp3/EventListener;->responseBodyEnd(Lokhttp3/Call;J)V
  .line 2
    iget-object p3, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;
    monitor-enter p3
    if-eqz p2, :L7
  :L0
  .line 3
    iget-object p4, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;
    if-ne p2, p4, :L7
    const/4 p2, 1
    if-nez p1, :L1
  .line 4
    iget-object p4, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
    iget v0, p4, Lokhttp3/internal/connection/RealConnection;->successCount:I
    add-int/2addr v0, p2
    iput v0, p4, Lokhttp3/internal/connection/RealConnection;->successCount:I
  :L1
  .line 5
    iget-object p4, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
    const/4 v0, 0
  .line 6
    invoke-direct { p0, p1, v0, p2 }, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;
    move-result-object p1
  .line 7
    iget-object p2, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
    const/4 v0, 0
    if-eqz p2, :L2
    move-object p4, v0
  :L2
  .line 8
    iget-boolean p2, p0, Lokhttp3/internal/connection/StreamAllocation;->released:Z
  .line 9
    monitor-exit p3
  :L3
  .line 10
    invoke-static { p1 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V
    if-eqz p4, :L4
  .line 11
    iget-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;
    iget-object p3, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;
    invoke-virtual { p1, p3, p4 }, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V
  :L4
    if-eqz p5, :L5
  .line 12
    sget-object p1, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;
    iget-object p2, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;
    invoke-virtual { p1, p2, p5 }, Lokhttp3/internal/Internal;->timeoutExit(Lokhttp3/Call;Ljava/io/IOException;)Ljava/io/IOException;
    move-result-object p1
  .line 13
    iget-object p2, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;
    iget-object p3, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;
    invoke-virtual { p2, p3, p1 }, Lokhttp3/EventListener;->callFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    goto :L6
  :L5
    if-eqz p2, :L6
  .line 14
    sget-object p1, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;
    iget-object p2, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;
    invoke-virtual { p1, p2, v0 }, Lokhttp3/internal/Internal;->timeoutExit(Lokhttp3/Call;Ljava/io/IOException;)Ljava/io/IOException;
  .line 15
    iget-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;
    iget-object p2, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;
    invoke-virtual { p1, p2 }, Lokhttp3/EventListener;->callEnd(Lokhttp3/Call;)V
  :L6
    return-void
  :L7
  .line 16
    new-instance p1, Ljava/lang/IllegalStateException;
    new-instance p4, Ljava/lang/StringBuilder;
    invoke-direct { p4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p5, "expected "
    invoke-virtual { p4, p5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object p5, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;
    invoke-virtual { p4, p5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string p5, " but was "
    invoke-virtual { p4, p5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p4, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L8
    move-exception p1
  .line 17
    monitor-exit p3
  :L9
    throw p1
.end method

.method public toString()Ljava/lang/String;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Lokhttp3/internal/connection/RealConnection;->toString()Ljava/lang/String;
    move-result-object v0
    goto :L1
  :L0
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;
    invoke-virtual { v0 }, Lokhttp3/Address;->toString()Ljava/lang/String;
    move-result-object v0
  :L1
    return-object v0
.end method
