.class public final Lokhttp3/Dispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

.field final static synthetic $assertionsDisabled:Z

.field private executorService:Ljava/util/concurrent/ExecutorService;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.field private idleCallback:Ljava/lang/Runnable;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.field private maxRequests:I

.field private maxRequestsPerHost:I

.field private final readyAsyncCalls:Ljava/util/Deque;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Deque<",
      "Lokhttp3/RealCall$AsyncCall;",
      ">;"
    }
  .end annotation
.end field

.field private final runningAsyncCalls:Ljava/util/Deque;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Deque<",
      "Lokhttp3/RealCall$AsyncCall;",
      ">;"
    }
  .end annotation
.end field

.field private final runningSyncCalls:Ljava/util/Deque;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Deque<",
      "Lokhttp3/RealCall;",
      ">;"
    }
  .end annotation
.end field

.method static constructor <clinit>()V
  .registers 2
    return-void
.end method

.method public constructor <init>()V
  .registers 2
  .line 8
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/16 v0, 64
  .line 9
    iput v0, p0, Lokhttp3/Dispatcher;->maxRequests:I
    const/4 v0, 5
  .line 10
    iput v0, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I
  .line 11
    new-instance v0, Ljava/util/ArrayDeque;
    invoke-direct { v0 }, Ljava/util/ArrayDeque;-><init>()V
    iput-object v0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;
  .line 12
    new-instance v0, Ljava/util/ArrayDeque;
    invoke-direct { v0 }, Ljava/util/ArrayDeque;-><init>()V
    iput-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;
  .line 13
    new-instance v0, Ljava/util/ArrayDeque;
    invoke-direct { v0 }, Ljava/util/ArrayDeque;-><init>()V
    iput-object v0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/Deque;
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/16 v0, 64
  .line 2
    iput v0, p0, Lokhttp3/Dispatcher;->maxRequests:I
    const/4 v0, 5
  .line 3
    iput v0, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I
  .line 4
    new-instance v0, Ljava/util/ArrayDeque;
    invoke-direct { v0 }, Ljava/util/ArrayDeque;-><init>()V
    iput-object v0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;
  .line 5
    new-instance v0, Ljava/util/ArrayDeque;
    invoke-direct { v0 }, Ljava/util/ArrayDeque;-><init>()V
    iput-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;
  .line 6
    new-instance v0, Ljava/util/ArrayDeque;
    invoke-direct { v0 }, Ljava/util/ArrayDeque;-><init>()V
    iput-object v0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/Deque;
  .line 7
    iput-object p1, p0, Lokhttp3/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;
    return-void
.end method

.method private finished(Ljava/util/Deque;Ljava/lang/Object;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Ljava/lang/Object;",
      ">(",
      "Ljava/util/Deque<",
      "TT;>;TT;)V"
    }
  .end annotation
  .catchall { :L0 .. :L1 } :L4
  .catchall { :L3 .. :L5 } :L4
  .registers 3
  .line 3
    monitor-enter p0
  :L0
  .line 4
    invoke-interface { p1, p2 }, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L3
  .line 5
    iget-object p1, p0, Lokhttp3/Dispatcher;->idleCallback:Ljava/lang/Runnable;
  .line 6
    monitor-exit p0
  :L1
  .line 7
    invoke-direct { p0 }, Lokhttp3/Dispatcher;->promoteAndExecute()Z
    move-result p2
    if-nez p2, :L2
    if-eqz p1, :L2
  .line 8
    invoke-interface { p1 }, Ljava/lang/Runnable;->run()V
  :L2
    return-void
  :L3
  .line 9
    new-instance p1, Ljava/lang/AssertionError;
    const-string p2, "Call wasn't in-flight!"
    invoke-direct { p1, p2 }, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    throw p1
  :L4
    move-exception p1
  .line 10
    monitor-exit p0
  :L5
    throw p1
.end method

.method private promoteAndExecute()Z
  .catchall { :L0 .. :L7 } :L10
  .catchall { :L11 .. :L12 } :L10
  .registers 7
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
  .line 2
    monitor-enter p0
  :L0
  .line 3
    iget-object v1, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;
    invoke-interface { v1 }, Ljava/util/Deque;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L1
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L4
  .line 4
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lokhttp3/RealCall$AsyncCall;
  .line 5
    iget-object v3, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;
    invoke-interface { v3 }, Ljava/util/Deque;->size()I
    move-result v3
    iget v4, p0, Lokhttp3/Dispatcher;->maxRequests:I
    if-lt v3, v4, :L2
    goto :L4
  :L2
  .line 6
    invoke-direct { p0, v2 }, Lokhttp3/Dispatcher;->runningCallsForHost(Lokhttp3/RealCall$AsyncCall;)I
    move-result v3
    iget v4, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I
    if-lt v3, v4, :L3
    goto :L1
  :L3
  .line 7
    invoke-interface { v1 }, Ljava/util/Iterator;->remove()V
  .line 8
    invoke-interface { v0, v2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 9
    iget-object v3, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;
    invoke-interface { v3, v2 }, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    goto :L1
  :L4
  .line 10
    invoke-virtual { p0 }, Lokhttp3/Dispatcher;->runningCallsCount()I
    move-result v1
    const/4 v2, 0
    if-lez v1, :L5
    const/4 v1, 1
    goto :L6
  :L5
    const/4 v1, 0
  :L6
  .line 11
    monitor-exit p0
  :L7
  .line 12
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v3
  :L8
    if-ge v2, v3, :L9
  .line 13
    invoke-interface { v0, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lokhttp3/RealCall$AsyncCall;
  .line 14
    invoke-virtual { p0 }, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;
    move-result-object v5
    invoke-virtual { v4, v5 }, Lokhttp3/RealCall$AsyncCall;->executeOn(Ljava/util/concurrent/ExecutorService;)V
    add-int/lit8 v2, v2, 1
    goto :L8
  :L9
    return v1
  :L10
    move-exception v0
  :L11
  .line 15
    monitor-exit p0
  :L12
    goto :L14
  :L13
    throw v0
  :L14
    goto :L13
.end method

.method private runningCallsForHost(Lokhttp3/RealCall$AsyncCall;)I
  .registers 6
  .line 1
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;
    invoke-interface { v0 }, Ljava/util/Deque;->iterator()Ljava/util/Iterator;
    move-result-object v0
    const/4 v1, 0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L2
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lokhttp3/RealCall$AsyncCall;
  .line 2
    invoke-virtual { v2 }, Lokhttp3/RealCall$AsyncCall;->get()Lokhttp3/RealCall;
    move-result-object v3
    iget-boolean v3, v3, Lokhttp3/RealCall;->forWebSocket:Z
    if-eqz v3, :L1
    goto :L0
  :L1
  .line 3
    invoke-virtual { v2 }, Lokhttp3/RealCall$AsyncCall;->host()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { p1 }, Lokhttp3/RealCall$AsyncCall;->host()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v2, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :L0
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    return v1
.end method

.method public declared-synchronized cancelAll()V
  .catchall { :L0 .. :L6 } :L8
  .registers 3
    monitor-enter p0
  :L0
  .line 1
    iget-object v0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;
    invoke-interface { v0 }, Ljava/util/Deque;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L2
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lokhttp3/RealCall$AsyncCall;
  .line 2
    invoke-virtual { v1 }, Lokhttp3/RealCall$AsyncCall;->get()Lokhttp3/RealCall;
    move-result-object v1
    invoke-virtual { v1 }, Lokhttp3/RealCall;->cancel()V
    goto :L1
  :L2
  .line 3
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;
    invoke-interface { v0 }, Ljava/util/Deque;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L4
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lokhttp3/RealCall$AsyncCall;
  .line 4
    invoke-virtual { v1 }, Lokhttp3/RealCall$AsyncCall;->get()Lokhttp3/RealCall;
    move-result-object v1
    invoke-virtual { v1 }, Lokhttp3/RealCall;->cancel()V
    goto :L3
  :L4
  .line 5
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/Deque;
    invoke-interface { v0 }, Ljava/util/Deque;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L5
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L7
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lokhttp3/RealCall;
  .line 6
    invoke-virtual { v1 }, Lokhttp3/RealCall;->cancel()V
  :L6
    goto :L5
  :L7
  .line 7
    monitor-exit p0
    return-void
  :L8
    move-exception v0
    monitor-exit p0
    goto :L10
  :L9
    throw v0
  :L10
    goto :L9
.end method

.method enqueue(Lokhttp3/RealCall$AsyncCall;)V
  .catchall { :L0 .. :L1 } :L2
  .catchall { :L3 .. :L4 } :L2
  .registers 3
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iget-object v0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;
    invoke-interface { v0, p1 }, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
  .line 3
    monitor-exit p0
  :L1
  .line 4
    invoke-direct { p0 }, Lokhttp3/Dispatcher;->promoteAndExecute()Z
    return-void
  :L2
    move-exception p1
  :L3
  .line 5
    monitor-exit p0
  :L4
    throw p1
.end method

.method declared-synchronized executed(Lokhttp3/RealCall;)V
  .catchall { :L0 .. :L1 } :L2
  .registers 3
    monitor-enter p0
  :L0
  .line 1
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/Deque;
    invoke-interface { v0, p1 }, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
  :L1
  .line 2
    monitor-exit p0
    return-void
  :L2
    move-exception p1
    monitor-exit p0
    throw p1
.end method

.method public declared-synchronized executorService()Ljava/util/concurrent/ExecutorService;
  .catchall { :L0 .. :L2 } :L3
  .registers 10
    monitor-enter p0
  :L0
  .line 1
    iget-object v0, p0, Lokhttp3/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;
    if-nez v0, :L1
  .line 2
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;
    const/4 v2, 0
    const v3, 2147483647
    const-wide/16 v4, 60
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    new-instance v7, Ljava/util/concurrent/SynchronousQueue;
    invoke-direct { v7 }, Ljava/util/concurrent/SynchronousQueue;-><init>()V
    const-string v1, "OkHttp Dispatcher"
    const/4 v8, 0
  .line 3
    invoke-static { v1, v8 }, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    move-result-object v8
    move-object v1, v0
    invoke-direct/range { v1 .. v8 }, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    iput-object v0, p0, Lokhttp3/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;
  :L1
  .line 4
    iget-object v0, p0, Lokhttp3/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;
  :L2
    monitor-exit p0
    return-object v0
  :L3
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method finished(Lokhttp3/RealCall$AsyncCall;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;
    invoke-direct { p0, v0, p1 }, Lokhttp3/Dispatcher;->finished(Ljava/util/Deque;Ljava/lang/Object;)V
    return-void
.end method

.method finished(Lokhttp3/RealCall;)V
  .registers 3
  .line 2
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/Deque;
    invoke-direct { p0, v0, p1 }, Lokhttp3/Dispatcher;->finished(Ljava/util/Deque;Ljava/lang/Object;)V
    return-void
.end method

.method public declared-synchronized getMaxRequests()I
  .catchall { :L0 .. :L1 } :L2
  .registers 2
    monitor-enter p0
  :L0
  .line 1
    iget v0, p0, Lokhttp3/Dispatcher;->maxRequests:I
  :L1
    monitor-exit p0
    return v0
  :L2
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method public declared-synchronized getMaxRequestsPerHost()I
  .catchall { :L0 .. :L1 } :L2
  .registers 2
    monitor-enter p0
  :L0
  .line 1
    iget v0, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I
  :L1
    monitor-exit p0
    return v0
  :L2
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method public declared-synchronized queuedCalls()Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/List<",
      "Lokhttp3/Call;",
      ">;"
    }
  .end annotation
  .catchall { :L0 .. :L3 } :L4
  .registers 4
    monitor-enter p0
  :L0
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
  .line 2
    iget-object v1, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;
    invoke-interface { v1 }, Ljava/util/Deque;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L1
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L2
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lokhttp3/RealCall$AsyncCall;
  .line 3
    invoke-virtual { v2 }, Lokhttp3/RealCall$AsyncCall;->get()Lokhttp3/RealCall;
    move-result-object v2
    invoke-interface { v0, v2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    goto :L1
  :L2
  .line 4
    invoke-static { v0 }, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    move-result-object v0
  :L3
    monitor-exit p0
    return-object v0
  :L4
    move-exception v0
    monitor-exit p0
    goto :L6
  :L5
    throw v0
  :L6
    goto :L5
.end method

.method public declared-synchronized queuedCallsCount()I
  .catchall { :L0 .. :L1 } :L2
  .registers 2
    monitor-enter p0
  :L0
  .line 1
    iget-object v0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;
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

.method public declared-synchronized runningCalls()Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/List<",
      "Lokhttp3/Call;",
      ">;"
    }
  .end annotation
  .catchall { :L0 .. :L3 } :L4
  .registers 4
    monitor-enter p0
  :L0
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
  .line 2
    iget-object v1, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/Deque;
    invoke-interface { v0, v1 }, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
  .line 3
    iget-object v1, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;
    invoke-interface { v1 }, Ljava/util/Deque;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L1
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L2
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lokhttp3/RealCall$AsyncCall;
  .line 4
    invoke-virtual { v2 }, Lokhttp3/RealCall$AsyncCall;->get()Lokhttp3/RealCall;
    move-result-object v2
    invoke-interface { v0, v2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    goto :L1
  :L2
  .line 5
    invoke-static { v0 }, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    move-result-object v0
  :L3
    monitor-exit p0
    return-object v0
  :L4
    move-exception v0
    monitor-exit p0
    goto :L6
  :L5
    throw v0
  :L6
    goto :L5
.end method

.method public declared-synchronized runningCallsCount()I
  .catchall { :L0 .. :L1 } :L2
  .registers 3
    monitor-enter p0
  :L0
  .line 1
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;
    invoke-interface { v0 }, Ljava/util/Deque;->size()I
    move-result v0
    iget-object v1, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/Deque;
    invoke-interface { v1 }, Ljava/util/Deque;->size()I
    move-result v1
  :L1
    add-int/2addr v0, v1
    monitor-exit p0
    return v0
  :L2
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method public declared-synchronized setIdleCallback(Ljava/lang/Runnable;)V
  .parameter # Ljava/lang/Runnable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .catchall { :L0 .. :L1 } :L2
  .registers 2
    monitor-enter p0
  :L0
  .line 1
    iput-object p1, p0, Lokhttp3/Dispatcher;->idleCallback:Ljava/lang/Runnable;
  :L1
  .line 2
    monitor-exit p0
    return-void
  :L2
    move-exception p1
    monitor-exit p0
    throw p1
.end method

.method public setMaxRequests(I)V
  .catchall { :L0 .. :L1 } :L2
  .catchall { :L3 .. :L4 } :L2
  .registers 5
    const/4 v0, 1
    if-lt p1, v0, :L5
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iput p1, p0, Lokhttp3/Dispatcher;->maxRequests:I
  .line 3
    monitor-exit p0
  :L1
  .line 4
    invoke-direct { p0 }, Lokhttp3/Dispatcher;->promoteAndExecute()Z
    return-void
  :L2
    move-exception p1
  :L3
  .line 5
    monitor-exit p0
  :L4
    throw p1
  :L5
  .line 6
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "max < 1: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public setMaxRequestsPerHost(I)V
  .catchall { :L0 .. :L1 } :L2
  .catchall { :L3 .. :L4 } :L2
  .registers 5
    const/4 v0, 1
    if-lt p1, v0, :L5
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iput p1, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I
  .line 3
    monitor-exit p0
  :L1
  .line 4
    invoke-direct { p0 }, Lokhttp3/Dispatcher;->promoteAndExecute()Z
    return-void
  :L2
    move-exception p1
  :L3
  .line 5
    monitor-exit p0
  :L4
    throw p1
  :L5
  .line 6
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "max < 1: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
.end method
