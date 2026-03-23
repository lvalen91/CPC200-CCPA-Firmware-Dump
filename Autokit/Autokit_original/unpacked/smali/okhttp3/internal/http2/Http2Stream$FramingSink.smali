.class final Lokhttp3/internal/http2/Http2Stream$FramingSink;
.super Ljava/lang/Object;
.implements Lokio/Sink;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/internal/http2/Http2Stream;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 16
  name = "FramingSink"
.end annotation

.field final static synthetic $assertionsDisabled:Z = false

.field private final static EMIT_BUFFER_SIZE:J = 16384L

.field closed:Z

.field finished:Z

.field private final sendBuffer:Lokio/Buffer;

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Stream;

.method static constructor <clinit>()V
  .registers 0
    return-void
.end method

.method constructor <init>(Lokhttp3/internal/http2/Http2Stream;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance p1, Lokio/Buffer;
    invoke-direct { p1 }, Lokio/Buffer;-><init>()V
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lokio/Buffer;
    return-void
.end method

.method private emitFrame(Z)V
  .catchall { :L0 .. :L1 } :L12
  .catchall { :L1 .. :L2 } :L10
  .catchall { :L3 .. :L4 } :L12
  .catchall { :L5 .. :L8 } :L9
  .catchall { :L11 .. :L13 } :L12
  .registers 13
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;
    monitor-enter v0
  :L0
  .line 2
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;
    invoke-virtual { v1 }, Lokio/AsyncTimeout;->enter()V
  :L1
  .line 3
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;
    iget-wide v1, v1, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J
    const-wide/16 v3, 0
    cmp-long v5, v1, v3
    if-gtz v5, :L3
    iget-boolean v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z
    if-nez v1, :L3
    iget-boolean v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z
    if-nez v1, :L3
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;
    if-nez v1, :L3
  .line 4
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;
    invoke-virtual { v1 }, Lokhttp3/internal/http2/Http2Stream;->waitForIo()V
  :L2
    goto :L1
  :L3
  .line 5
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;
    invoke-virtual { v1 }, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V
  .line 6
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;
    invoke-virtual { v1 }, Lokhttp3/internal/http2/Http2Stream;->checkOutNotClosed()V
  .line 7
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;
    iget-wide v1, v1, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lokio/Buffer;
    invoke-virtual { v3 }, Lokio/Buffer;->size()J
    move-result-wide v3
    invoke-static { v1, v2, v3, v4 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v9
  .line 8
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;
    iget-wide v2, v1, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J
    sub-long/2addr v2, v9
    iput-wide v2, v1, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J
  .line 9
    monitor-exit v0
  :L4
  .line 10
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;
    invoke-virtual { v0 }, Lokio/AsyncTimeout;->enter()V
  :L5
  .line 11
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;
    iget-object v5, v0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;
    iget v6, v0, Lokhttp3/internal/http2/Http2Stream;->id:I
    if-eqz p1, :L6
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lokio/Buffer;
    invoke-virtual { p1 }, Lokio/Buffer;->size()J
    move-result-wide v0
    cmp-long p1, v9, v0
    if-nez p1, :L6
    const/4 p1, 1
    const/4 v7, 1
    goto :L7
  :L6
    const/4 p1, 0
    const/4 v7, 0
  :L7
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lokio/Buffer;
    invoke-virtual/range { v5 .. v10 }, Lokhttp3/internal/http2/Http2Connection;->writeData(IZLokio/Buffer;J)V
  :L8
  .line 12
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;
    iget-object p1, p1, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;
    invoke-virtual { p1 }, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V
    return-void
  :L9
    move-exception p1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;
    invoke-virtual { v0 }, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V
    throw p1
  :L10
    move-exception p1
  :L11
  .line 13
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;
    invoke-virtual { v1 }, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V
    throw p1
  :L12
    move-exception p1
  .line 14
    monitor-exit v0
  :L13
    goto :L15
  :L14
    throw p1
  :L15
    goto :L14
.end method

.method public close()V
  .catchall { :L0 .. :L2 } :L11
  .catchall { :L6 .. :L7 } :L8
  .catchall { :L9 .. :L10 } :L8
  .catchall { :L12 .. :L13 } :L11
  .registers 9
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;
    monitor-enter v0
  :L0
  .line 2
    iget-boolean v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z
    if-eqz v1, :L1
    monitor-exit v0
    return-void
  :L1
  .line 3
    monitor-exit v0
  :L2
  .line 4
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;
    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z
    const/4 v1, 1
    if-nez v0, :L5
  .line 5
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lokio/Buffer;
    invoke-virtual { v0 }, Lokio/Buffer;->size()J
    move-result-wide v2
    const-wide/16 v4, 0
    cmp-long v0, v2, v4
    if-lez v0, :L4
  :L3
  .line 6
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lokio/Buffer;
    invoke-virtual { v0 }, Lokio/Buffer;->size()J
    move-result-wide v2
    cmp-long v0, v2, v4
    if-lez v0, :L5
  .line 7
    invoke-direct { p0, v1 }, Lokhttp3/internal/http2/Http2Stream$FramingSink;->emitFrame(Z)V
    goto :L3
  :L4
  .line 8
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;
    iget-object v2, v0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;
    iget v3, v0, Lokhttp3/internal/http2/Http2Stream;->id:I
    const/4 v4, 1
    const/4 v5, 0
    const-wide/16 v6, 0
    invoke-virtual/range { v2 .. v7 }, Lokhttp3/internal/http2/Http2Connection;->writeData(IZLokio/Buffer;J)V
  :L5
  .line 9
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;
    monitor-enter v2
  :L6
  .line 10
    iput-boolean v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z
  .line 11
    monitor-exit v2
  :L7
  .line 12
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;
    invoke-virtual { v0 }, Lokhttp3/internal/http2/Http2Connection;->flush()V
  .line 13
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;
    invoke-virtual { v0 }, Lokhttp3/internal/http2/Http2Stream;->cancelStreamIfNecessary()V
    return-void
  :L8
    move-exception v0
  :L9
  .line 14
    monitor-exit v2
  :L10
    throw v0
  :L11
    move-exception v1
  :L12
  .line 15
    monitor-exit v0
  :L13
    goto :L15
  :L14
    throw v1
  :L15
    goto :L14
.end method

.method public flush()V
  .catchall { :L0 .. :L1 } :L3
  .catchall { :L4 .. :L5 } :L3
  .registers 6
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;
    monitor-enter v0
  :L0
  .line 2
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;
    invoke-virtual { v1 }, Lokhttp3/internal/http2/Http2Stream;->checkOutNotClosed()V
  .line 3
    monitor-exit v0
  :L1
  .line 4
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lokio/Buffer;
    invoke-virtual { v0 }, Lokio/Buffer;->size()J
    move-result-wide v0
    const-wide/16 v2, 0
    cmp-long v4, v0, v2
    if-lez v4, :L2
    const/4 v0, 0
  .line 5
    invoke-direct { p0, v0 }, Lokhttp3/internal/http2/Http2Stream$FramingSink;->emitFrame(Z)V
  .line 6
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;
    invoke-virtual { v0 }, Lokhttp3/internal/http2/Http2Connection;->flush()V
    goto :L1
  :L2
    return-void
  :L3
    move-exception v1
  :L4
  .line 7
    monitor-exit v0
  :L5
    goto :L7
  :L6
    throw v1
  :L7
    goto :L6
.end method

.method public timeout()Lokio/Timeout;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp3/internal/http2/Http2Stream;
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;
    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
  .registers 6
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lokio/Buffer;
    invoke-virtual { v0, p1, p2, p3 }, Lokio/Buffer;->write(Lokio/Buffer;J)V
  :L0
  .line 2
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lokio/Buffer;
    invoke-virtual { p1 }, Lokio/Buffer;->size()J
    move-result-wide p1
    const-wide/16 v0, 16384
    cmp-long p3, p1, v0
    if-ltz p3, :L1
    const/4 p1, 0
  .line 3
    invoke-direct { p0, p1 }, Lokhttp3/internal/http2/Http2Stream$FramingSink;->emitFrame(Z)V
    goto :L0
  :L1
    return-void
.end method
