.class public Lokio/Timeout;
.super Ljava/lang/Object;
.source "SourceFile"

.field public final static NONE:Lokio/Timeout;

.field private deadlineNanoTime:J

.field private hasDeadline:Z

.field private timeoutNanos:J

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Lokio/Timeout$1;
    invoke-direct { v0 }, Lokio/Timeout$1;-><init>()V
    sput-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;
    return-void
.end method

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public clearDeadline()Lokio/Timeout;
  .registers 2
    const/4 v0, 0
  .line 1
    iput-boolean v0, p0, Lokio/Timeout;->hasDeadline:Z
    return-object p0
.end method

.method public clearTimeout()Lokio/Timeout;
  .registers 3
    const-wide/16 v0, 0
  .line 1
    iput-wide v0, p0, Lokio/Timeout;->timeoutNanos:J
    return-object p0
.end method

.method public final deadline(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
  .registers 7
    const-wide/16 v0, 0
    cmp-long v2, p1, v0
    if-lez v2, :L1
    if-eqz p3, :L0
  .line 1
    invoke-static { }, Ljava/lang/System;->nanoTime()J
    move-result-wide v0
    invoke-virtual { p3, p1, p2 }, Ljava/util/concurrent/TimeUnit;->toNanos(J)J
    move-result-wide p1
    add-long/2addr v0, p1
    invoke-virtual { p0, v0, v1 }, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;
    move-result-object p1
    return-object p1
  :L0
  .line 2
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "unit == null"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 3
    new-instance p3, Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "duration <= 0: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1, p2 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p3, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p3
.end method

.method public deadlineNanoTime()J
  .registers 3
  .line 1
    iget-boolean v0, p0, Lokio/Timeout;->hasDeadline:Z
    if-eqz v0, :L0
  .line 2
    iget-wide v0, p0, Lokio/Timeout;->deadlineNanoTime:J
    return-wide v0
  :L0
  .line 3
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "No deadline"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public deadlineNanoTime(J)Lokio/Timeout;
  .registers 4
    const/4 v0, 1
  .line 4
    iput-boolean v0, p0, Lokio/Timeout;->hasDeadline:Z
  .line 5
    iput-wide p1, p0, Lokio/Timeout;->deadlineNanoTime:J
    return-object p0
.end method

.method public hasDeadline()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lokio/Timeout;->hasDeadline:Z
    return v0
.end method

.method public throwIfReached()V
  .registers 6
  .line 1
    invoke-static { }, Ljava/lang/Thread;->interrupted()Z
    move-result v0
    if-nez v0, :L2
  .line 2
    iget-boolean v0, p0, Lokio/Timeout;->hasDeadline:Z
    if-eqz v0, :L1
    iget-wide v0, p0, Lokio/Timeout;->deadlineNanoTime:J
    invoke-static { }, Ljava/lang/System;->nanoTime()J
    move-result-wide v2
    sub-long/2addr v0, v2
    const-wide/16 v2, 0
    cmp-long v4, v0, v2
    if-lez v4, :L0
    goto :L1
  :L0
  .line 3
    new-instance v0, Ljava/io/InterruptedIOException;
    const-string v1, "deadline reached"
    invoke-direct { v0, v1 }, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
    return-void
  :L2
  .line 4
    invoke-static { }, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/Thread;->interrupt()V
  .line 5
    new-instance v0, Ljava/io/InterruptedIOException;
    const-string v1, "interrupted"
    invoke-direct { v0, v1 }, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
  .registers 7
    const-wide/16 v0, 0
    cmp-long v2, p1, v0
    if-ltz v2, :L1
    if-eqz p3, :L0
  .line 1
    invoke-virtual { p3, p1, p2 }, Ljava/util/concurrent/TimeUnit;->toNanos(J)J
    move-result-wide p1
    iput-wide p1, p0, Lokio/Timeout;->timeoutNanos:J
    return-object p0
  :L0
  .line 2
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "unit == null"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 3
    new-instance p3, Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "timeout < 0: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1, p2 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p3, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p3
.end method

.method public timeoutNanos()J
  .registers 3
  .line 1
    iget-wide v0, p0, Lokio/Timeout;->timeoutNanos:J
    return-wide v0
.end method

.method public final waitUntilNotified(Ljava/lang/Object;)V
  .catch Ljava/lang/InterruptedException; { :L0 .. :L4 } :L8
  .catch Ljava/lang/InterruptedException; { :L5 .. :L8 } :L8
  .registers 11
  :L0
  .line 1
    invoke-virtual { p0 }, Lokio/Timeout;->hasDeadline()Z
    move-result v0
  .line 2
    invoke-virtual { p0 }, Lokio/Timeout;->timeoutNanos()J
    move-result-wide v1
    const-wide/16 v3, 0
    if-nez v0, :L1
    cmp-long v5, v1, v3
    if-nez v5, :L1
  .line 3
    invoke-virtual { p1 }, Ljava/lang/Object;->wait()V
    return-void
  :L1
  .line 4
    invoke-static { }, Ljava/lang/System;->nanoTime()J
    move-result-wide v5
    if-eqz v0, :L2
    cmp-long v7, v1, v3
    if-eqz v7, :L2
  .line 5
    invoke-virtual { p0 }, Lokio/Timeout;->deadlineNanoTime()J
    move-result-wide v7
    sub-long/2addr v7, v5
  .line 6
    invoke-static { v1, v2, v7, v8 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v1
    goto :L3
  :L2
    if-eqz v0, :L3
  .line 7
    invoke-virtual { p0 }, Lokio/Timeout;->deadlineNanoTime()J
    move-result-wide v0
    sub-long/2addr v0, v5
    move-wide v1, v0
  :L3
    cmp-long v0, v1, v3
    if-lez v0, :L6
    const-wide/32 v3, 1000000
  .line 8
    div-long v7, v1, v3
  :L4
  .line 9
    invoke-static { v7, v8 }, Ljava/lang/Long;->signum(J)I
    mul-long v3, v3, v7
    sub-long v3, v1, v3
    long-to-int v0, v3
  :L5
    invoke-virtual { p1, v7, v8, v0 }, Ljava/lang/Object;->wait(JI)V
  .line 10
    invoke-static { }, Ljava/lang/System;->nanoTime()J
    move-result-wide v3
    sub-long/2addr v3, v5
  :L6
    cmp-long p1, v3, v1
    if-gez p1, :L7
    return-void
  :L7
  .line 11
    new-instance p1, Ljava/io/InterruptedIOException;
    const-string v0, "timeout"
    invoke-direct { p1, v0 }, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V
    throw p1
  :L8
  .line 12
    invoke-static { }, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/lang/Thread;->interrupt()V
  .line 13
    new-instance p1, Ljava/io/InterruptedIOException;
    const-string v0, "interrupted"
    invoke-direct { p1, v0 }, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V
    throw p1
.end method
