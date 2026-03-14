.class Lokhttp3/internal/http2/Http2Connection$4;
.super Lokhttp3/internal/NamedRunnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lokhttp3/internal/http2/Http2Connection;->pushHeadersLater(ILjava/util/List;Z)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;

.field final synthetic val$inFinished:Z

.field final synthetic val$requestHeaders:Ljava/util/List;

.field final synthetic val$streamId:I

.method varargs constructor <init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V
  .registers 7
  .line 1
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$4;->this$0:Lokhttp3/internal/http2/Http2Connection;
    iput p4, p0, Lokhttp3/internal/http2/Http2Connection$4;->val$streamId:I
    iput-object p5, p0, Lokhttp3/internal/http2/Http2Connection$4;->val$requestHeaders:Ljava/util/List;
    iput-boolean p6, p0, Lokhttp3/internal/http2/Http2Connection$4;->val$inFinished:Z
    invoke-direct { p0, p2, p3 }, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V
    return-void
.end method

.method public execute()V
  .catch Ljava/io/IOException; { :L0 .. :L3 } :L6
  .catchall { :L3 .. :L5 } :L4
  .catch Ljava/io/IOException; { :L5 .. :L6 } :L6
  .registers 5
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$4;->this$0:Lokhttp3/internal/http2/Http2Connection;
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection;->pushObserver:Lokhttp3/internal/http2/PushObserver;
    iget v1, p0, Lokhttp3/internal/http2/Http2Connection$4;->val$streamId:I
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$4;->val$requestHeaders:Ljava/util/List;
    iget-boolean v3, p0, Lokhttp3/internal/http2/Http2Connection$4;->val$inFinished:Z
    invoke-interface { v0, v1, v2, v3 }, Lokhttp3/internal/http2/PushObserver;->onHeaders(ILjava/util/List;Z)Z
    move-result v0
    if-eqz v0, :L1
  :L0
  .line 2
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$4;->this$0:Lokhttp3/internal/http2/Http2Connection;
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;
    iget v2, p0, Lokhttp3/internal/http2/Http2Connection$4;->val$streamId:I
    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;
    invoke-virtual { v1, v2, v3 }, Lokhttp3/internal/http2/Http2Writer;->rstStream(ILokhttp3/internal/http2/ErrorCode;)V
  :L1
    if-nez v0, :L2
  .line 3
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection$4;->val$inFinished:Z
    if-eqz v0, :L6
  :L2
  .line 4
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$4;->this$0:Lokhttp3/internal/http2/Http2Connection;
    monitor-enter v0
  :L3
  .line 5
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$4;->this$0:Lokhttp3/internal/http2/Http2Connection;
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;
    iget v2, p0, Lokhttp3/internal/http2/Http2Connection$4;->val$streamId:I
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-interface { v1, v2 }, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
  .line 6
    monitor-exit v0
    goto :L6
  :L4
    move-exception v1
    monitor-exit v0
  :L5
    throw v1
  :L6
    return-void
.end method
