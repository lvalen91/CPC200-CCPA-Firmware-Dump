.class final Lokio/Timeout$1;
.super Lokio/Timeout;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokio/Timeout;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lokio/Timeout;-><init>()V
    return-void
.end method

.method public deadlineNanoTime(J)Lokio/Timeout;
  .registers 3
    return-object p0
.end method

.method public throwIfReached()V
  .registers 1
    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
  .registers 4
    return-object p0
.end method
