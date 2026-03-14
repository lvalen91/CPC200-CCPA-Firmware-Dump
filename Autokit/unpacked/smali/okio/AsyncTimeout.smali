.class public Lokio/AsyncTimeout;
.super Lokio/Timeout;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lokio/AsyncTimeout$Watchdog;
  }
.end annotation

.field private final static IDLE_TIMEOUT_MILLIS:J = 0L

.field private final static IDLE_TIMEOUT_NANOS:J = 0L

.field private final static TIMEOUT_WRITE_SIZE:I = 65536

.field static head:Lokio/AsyncTimeout;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.field private inQueue:Z

.field private next:Lokio/AsyncTimeout;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.field private timeoutAt:J

.method static constructor <clinit>()V
  .registers 5
  .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    const-wide/16 v1, 60
    invoke-virtual { v0, v1, v2 }, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
    move-result-wide v0
    sput-wide v0, Lokio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J
  .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    sget-wide v1, Lokio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J
    invoke-virtual { v0, v1, v2 }, Ljava/util/concurrent/TimeUnit;->toNanos(J)J
    move-result-wide v0
    sput-wide v0, Lokio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J
    return-void
.end method

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lokio/Timeout;-><init>()V
    return-void
.end method

.method static awaitTimeout()Lokio/AsyncTimeout;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 11
  .line 1
    const-class v0, Lokio/AsyncTimeout;
    sget-object v1, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;
    iget-object v1, v1, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    const/4 v2, 0
    if-nez v1, :L1
  .line 2
    invoke-static { }, Ljava/lang/System;->nanoTime()J
    move-result-wide v3
  .line 3
    sget-wide v5, Lokio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J
    invoke-virtual { v0, v5, v6 }, Ljava/lang/Object;->wait(J)V
  .line 4
    sget-object v0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;
    iget-object v0, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    if-nez v0, :L0
    invoke-static { }, Ljava/lang/System;->nanoTime()J
    move-result-wide v0
    sub-long/2addr v0, v3
    sget-wide v3, Lokio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J
    cmp-long v5, v0, v3
    if-ltz v5, :L0
  .line 5
    sget-object v2, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;
  :L0
    return-object v2
  :L1
  .line 6
    invoke-static { }, Ljava/lang/System;->nanoTime()J
    move-result-wide v3
    invoke-direct { v1, v3, v4 }, Lokio/AsyncTimeout;->remainingNanos(J)J
    move-result-wide v3
    const-wide/16 v5, 0
    cmp-long v7, v3, v5
    if-lez v7, :L2
    const-wide/32 v5, 1000000
  .line 7
    div-long v7, v3, v5
    mul-long v5, v5, v7
    sub-long/2addr v3, v5
    long-to-int v1, v3
  .line 8
    invoke-virtual { v0, v7, v8, v1 }, Ljava/lang/Object;->wait(JI)V
    return-object v2
  :L2
  .line 9
    sget-object v0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;
    iget-object v3, v1, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    iput-object v3, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
  .line 10
    iput-object v2, v1, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    return-object v1
.end method

.method private static declared-synchronized cancelScheduledTimeout(Lokio/AsyncTimeout;)Z
  .catchall { :L0 .. :L2 } :L6
  .catchall { :L3 .. :L4 } :L6
  .registers 4
    const-class v0, Lokio/AsyncTimeout;
    monitor-enter v0
  :L0
  .line 1
    sget-object v1, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;
  :L1
    if-eqz v1, :L5
  .line 2
    iget-object v2, v1, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    if-ne v2, p0, :L3
  .line 3
    iget-object v2, p0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    iput-object v2, v1, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    const/4 v1, 0
  .line 4
    iput-object v1, p0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
  :L2
    const/4 p0, 0
  .line 5
    monitor-exit v0
    return p0
  :L3
  .line 6
    iget-object v1, v1, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
  :L4
    goto :L1
  :L5
    const/4 p0, 1
  .line 7
    monitor-exit v0
    return p0
  :L6
    move-exception p0
    monitor-exit v0
    goto :L8
  :L7
    throw p0
  :L8
    goto :L7
.end method

.method private remainingNanos(J)J
  .registers 5
  .line 1
    iget-wide v0, p0, Lokio/AsyncTimeout;->timeoutAt:J
    sub-long/2addr v0, p1
    return-wide v0
.end method

.method private static declared-synchronized scheduleTimeout(Lokio/AsyncTimeout;JZ)V
  .catchall { :L0 .. :L8 } :L10
  .catchall { :L9 .. :L10 } :L10
  .registers 10
    const-class v0, Lokio/AsyncTimeout;
    monitor-enter v0
  :L0
  .line 1
    sget-object v1, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;
    if-nez v1, :L1
  .line 2
    new-instance v1, Lokio/AsyncTimeout;
    invoke-direct { v1 }, Lokio/AsyncTimeout;-><init>()V
    sput-object v1, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;
  .line 3
    new-instance v1, Lokio/AsyncTimeout$Watchdog;
    invoke-direct { v1 }, Lokio/AsyncTimeout$Watchdog;-><init>()V
    invoke-virtual { v1 }, Ljava/lang/Thread;->start()V
  :L1
  .line 4
    invoke-static { }, Ljava/lang/System;->nanoTime()J
    move-result-wide v1
    const-wide/16 v3, 0
    cmp-long v5, p1, v3
    if-eqz v5, :L2
    if-eqz p3, :L2
  .line 5
    invoke-virtual { p0 }, Lokio/Timeout;->deadlineNanoTime()J
    move-result-wide v3
    sub-long/2addr v3, v1
    invoke-static { p1, p2, v3, v4 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide p1
    add-long/2addr p1, v1
    iput-wide p1, p0, Lokio/AsyncTimeout;->timeoutAt:J
    goto :L4
  :L2
    cmp-long v5, p1, v3
    if-eqz v5, :L3
    add-long/2addr p1, v1
  .line 6
    iput-wide p1, p0, Lokio/AsyncTimeout;->timeoutAt:J
    goto :L4
  :L3
    if-eqz p3, :L9
  .line 7
    invoke-virtual { p0 }, Lokio/Timeout;->deadlineNanoTime()J
    move-result-wide p1
    iput-wide p1, p0, Lokio/AsyncTimeout;->timeoutAt:J
  :L4
  .line 8
    invoke-direct { p0, v1, v2 }, Lokio/AsyncTimeout;->remainingNanos(J)J
    move-result-wide p1
  .line 9
    sget-object p3, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;
  :L5
  .line 10
    iget-object v3, p3, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    if-eqz v3, :L7
    iget-object v3, p3, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    invoke-direct { v3, v1, v2 }, Lokio/AsyncTimeout;->remainingNanos(J)J
    move-result-wide v3
    cmp-long v5, p1, v3
    if-gez v5, :L6
    goto :L7
  :L6
  .line 11
    iget-object p3, p3, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    goto :L5
  :L7
  .line 12
    iget-object p1, p3, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    iput-object p1, p0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
  .line 13
    iput-object p0, p3, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
  .line 14
    sget-object p0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;
    if-ne p3, p0, :L8
  .line 15
    invoke-virtual { v0 }, Ljava/lang/Object;->notify()V
  :L8
  .line 16
    monitor-exit v0
    return-void
  :L9
  .line 17
    new-instance p0, Ljava/lang/AssertionError;
    invoke-direct { p0 }, Ljava/lang/AssertionError;-><init>()V
    throw p0
  :L10
    move-exception p0
    monitor-exit v0
    goto :L12
  :L11
    throw p0
  :L12
    goto :L11
.end method

.method public final enter()V
  .registers 7
  .line 1
    iget-boolean v0, p0, Lokio/AsyncTimeout;->inQueue:Z
    if-nez v0, :L1
  .line 2
    invoke-virtual { p0 }, Lokio/Timeout;->timeoutNanos()J
    move-result-wide v0
  .line 3
    invoke-virtual { p0 }, Lokio/Timeout;->hasDeadline()Z
    move-result v2
    const-wide/16 v3, 0
    cmp-long v5, v0, v3
    if-nez v5, :L0
    if-nez v2, :L0
    return-void
  :L0
    const/4 v3, 1
  .line 4
    iput-boolean v3, p0, Lokio/AsyncTimeout;->inQueue:Z
  .line 5
    invoke-static { p0, v0, v1, v2 }, Lokio/AsyncTimeout;->scheduleTimeout(Lokio/AsyncTimeout;JZ)V
    return-void
  :L1
  .line 6
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "Unbalanced enter/exit"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method final exit(Ljava/io/IOException;)Ljava/io/IOException;
  .registers 3
  .line 6
    invoke-virtual { p0 }, Lokio/AsyncTimeout;->exit()Z
    move-result v0
    if-nez v0, :L0
    return-object p1
  :L0
  .line 7
    invoke-virtual { p0, p1 }, Lokio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    move-result-object p1
    return-object p1
.end method

.method final exit(Z)V
  .registers 3
  .line 4
    invoke-virtual { p0 }, Lokio/AsyncTimeout;->exit()Z
    move-result v0
    if-eqz v0, :L1
    if-nez p1, :L0
    goto :L1
  :L0
    const/4 p1, 0
  .line 5
    invoke-virtual { p0, p1 }, Lokio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    move-result-object p1
    throw p1
  :L1
    return-void
.end method

.method public final exit()Z
  .registers 3
  .line 1
    iget-boolean v0, p0, Lokio/AsyncTimeout;->inQueue:Z
    const/4 v1, 0
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    iput-boolean v1, p0, Lokio/AsyncTimeout;->inQueue:Z
  .line 3
    invoke-static { p0 }, Lokio/AsyncTimeout;->cancelScheduledTimeout(Lokio/AsyncTimeout;)Z
    move-result v0
    return v0
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
  .parameter # Ljava/io/IOException;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 4
  .line 1
    new-instance v0, Ljava/io/InterruptedIOException;
    const-string v1, "timeout"
    invoke-direct { v0, v1 }, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V
    if-eqz p1, :L0
  .line 2
    invoke-virtual { v0, p1 }, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
  :L0
    return-object v0
.end method

.method public final sink(Lokio/Sink;)Lokio/Sink;
  .registers 3
  .line 1
    new-instance v0, Lokio/AsyncTimeout$1;
    invoke-direct { v0, p0, p1 }, Lokio/AsyncTimeout$1;-><init>(Lokio/AsyncTimeout;Lokio/Sink;)V
    return-object v0
.end method

.method public final source(Lokio/Source;)Lokio/Source;
  .registers 3
  .line 1
    new-instance v0, Lokio/AsyncTimeout$2;
    invoke-direct { v0, p0, p1 }, Lokio/AsyncTimeout$2;-><init>(Lokio/AsyncTimeout;Lokio/Source;)V
    return-object v0
.end method

.method protected timedOut()V
  .registers 1
    return-void
.end method
