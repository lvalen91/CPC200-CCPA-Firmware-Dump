.class Lokhttp3/internal/http2/Http2Connection$3;
.super Lokhttp3/internal/NamedRunnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lokhttp3/internal/http2/Http2Connection;->pushRequestLater(ILjava/util/List;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;

.field final synthetic val$requestHeaders:Ljava/util/List;

.field final synthetic val$streamId:I

.method varargs constructor <init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V
  .registers 6
  .line 1
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$3;->this$0:Lokhttp3/internal/http2/Http2Connection;
    iput p4, p0, Lokhttp3/internal/http2/Http2Connection$3;->val$streamId:I
    iput-object p5, p0, Lokhttp3/internal/http2/Http2Connection$3;->val$requestHeaders:Ljava/util/List;
    invoke-direct { p0, p2, p3 }, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V
    return-void
.end method

.method public execute()V
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L4
  .catchall { :L1 .. :L3 } :L2
  .catch Ljava/io/IOException; { :L3 .. :L4 } :L4
  .registers 4
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$3;->this$0:Lokhttp3/internal/http2/Http2Connection;
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection;->pushObserver:Lokhttp3/internal/http2/PushObserver;
    iget v1, p0, Lokhttp3/internal/http2/Http2Connection$3;->val$streamId:I
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$3;->val$requestHeaders:Ljava/util/List;
    invoke-interface { v0, v1, v2 }, Lokhttp3/internal/http2/PushObserver;->onRequest(ILjava/util/List;)Z
    move-result v0
    if-eqz v0, :L4
  :L0
  .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$3;->this$0:Lokhttp3/internal/http2/Http2Connection;
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;
    iget v1, p0, Lokhttp3/internal/http2/Http2Connection$3;->val$streamId:I
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;
    invoke-virtual { v0, v1, v2 }, Lokhttp3/internal/http2/Http2Writer;->rstStream(ILokhttp3/internal/http2/ErrorCode;)V
  .line 3
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$3;->this$0:Lokhttp3/internal/http2/Http2Connection;
    monitor-enter v0
  :L1
  .line 4
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$3;->this$0:Lokhttp3/internal/http2/Http2Connection;
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;
    iget v2, p0, Lokhttp3/internal/http2/Http2Connection$3;->val$streamId:I
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-interface { v1, v2 }, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
  .line 5
    monitor-exit v0
    goto :L4
  :L2
    move-exception v1
    monitor-exit v0
  :L3
    throw v1
  :L4
    return-void
.end method
