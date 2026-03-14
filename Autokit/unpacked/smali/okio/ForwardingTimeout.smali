.class public Lokio/ForwardingTimeout;
.super Lokio/Timeout;
.source "SourceFile"

.field private delegate:Lokio/Timeout;

.method public constructor <init>(Lokio/Timeout;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lokio/Timeout;-><init>()V
    if-eqz p1, :L0
  .line 2
    iput-object p1, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;
    return-void
  :L0
  .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "delegate == null"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public clearDeadline()Lokio/Timeout;
  .registers 2
  .line 1
    iget-object v0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;
    invoke-virtual { v0 }, Lokio/Timeout;->clearDeadline()Lokio/Timeout;
    move-result-object v0
    return-object v0
.end method

.method public clearTimeout()Lokio/Timeout;
  .registers 2
  .line 1
    iget-object v0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;
    invoke-virtual { v0 }, Lokio/Timeout;->clearTimeout()Lokio/Timeout;
    move-result-object v0
    return-object v0
.end method

.method public deadlineNanoTime()J
  .registers 3
  .line 1
    iget-object v0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;
    invoke-virtual { v0 }, Lokio/Timeout;->deadlineNanoTime()J
    move-result-wide v0
    return-wide v0
.end method

.method public deadlineNanoTime(J)Lokio/Timeout;
  .registers 4
  .line 2
    iget-object v0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;
    invoke-virtual { v0, p1, p2 }, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;
    move-result-object p1
    return-object p1
.end method

.method public final delegate()Lokio/Timeout;
  .registers 2
  .line 1
    iget-object v0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;
    return-object v0
.end method

.method public hasDeadline()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;
    invoke-virtual { v0 }, Lokio/Timeout;->hasDeadline()Z
    move-result v0
    return v0
.end method

.method public final setDelegate(Lokio/Timeout;)Lokio/ForwardingTimeout;
  .registers 3
    if-eqz p1, :L0
  .line 1
    iput-object p1, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;
    return-object p0
  :L0
  .line 2
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "delegate == null"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public throwIfReached()V
  .registers 2
  .line 1
    iget-object v0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;
    invoke-virtual { v0 }, Lokio/Timeout;->throwIfReached()V
    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
  .registers 5
  .line 1
    iget-object v0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;
    invoke-virtual { v0, p1, p2, p3 }, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
    move-result-object p1
    return-object p1
.end method

.method public timeoutNanos()J
  .registers 3
  .line 1
    iget-object v0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;
    invoke-virtual { v0 }, Lokio/Timeout;->timeoutNanos()J
    move-result-wide v0
    return-wide v0
.end method
