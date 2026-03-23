.class Lokhttp3/internal/http2/Http2Stream$StreamTimeout;
.super Lokio/AsyncTimeout;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/internal/http2/Http2Stream;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = "StreamTimeout"
.end annotation

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Stream;

.method constructor <init>(Lokhttp3/internal/http2/Http2Stream;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->this$0:Lokhttp3/internal/http2/Http2Stream;
    invoke-direct { p0 }, Lokio/AsyncTimeout;-><init>()V
    return-void
.end method

.method public exitAndThrowIfTimedOut()V
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lokio/AsyncTimeout;->exit()Z
    move-result v0
    if-nez v0, :L0
    return-void
  :L0
    const/4 v0, 0
    invoke-virtual { p0, v0 }, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    move-result-object v0
    throw v0
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
  .registers 4
  .line 1
    new-instance v0, Ljava/net/SocketTimeoutException;
    const-string v1, "timeout"
    invoke-direct { v0, v1 }, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V
    if-eqz p1, :L0
  .line 2
    invoke-virtual { v0, p1 }, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
  :L0
    return-object v0
.end method

.method protected timedOut()V
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->this$0:Lokhttp3/internal/http2/Http2Stream;
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;
    invoke-virtual { v0, v1 }, Lokhttp3/internal/http2/Http2Stream;->closeLater(Lokhttp3/internal/http2/ErrorCode;)V
    return-void
.end method
