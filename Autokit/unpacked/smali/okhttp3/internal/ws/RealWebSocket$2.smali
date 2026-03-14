.class Lokhttp3/internal/ws/RealWebSocket$2;
.super Ljava/lang/Object;
.implements Lokhttp3/Callback;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lokhttp3/internal/ws/RealWebSocket;->connect(Lokhttp3/OkHttpClient;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lokhttp3/internal/ws/RealWebSocket;

.field final synthetic val$request:Lokhttp3/Request;

.method constructor <init>(Lokhttp3/internal/ws/RealWebSocket;Lokhttp3/Request;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lokhttp3/internal/ws/RealWebSocket$2;->this$0:Lokhttp3/internal/ws/RealWebSocket;
    iput-object p2, p0, Lokhttp3/internal/ws/RealWebSocket$2;->val$request:Lokhttp3/Request;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
  .registers 4
  .line 1
    iget-object p1, p0, Lokhttp3/internal/ws/RealWebSocket$2;->this$0:Lokhttp3/internal/ws/RealWebSocket;
    const/4 v0, 0
    invoke-virtual { p1, p2, v0 }, Lokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lokhttp3/Response;)V
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
  .catch Ljava/net/ProtocolException; { :L0 .. :L1 } :L6
  .catch Ljava/lang/Exception; { :L2 .. :L3 } :L4
  .registers 6
  :L0
  .line 1
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket$2;->this$0:Lokhttp3/internal/ws/RealWebSocket;
    invoke-virtual { v0, p2 }, Lokhttp3/internal/ws/RealWebSocket;->checkResponse(Lokhttp3/Response;)V
  :L1
  .line 2
    sget-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;
    invoke-virtual { v0, p1 }, Lokhttp3/internal/Internal;->streamAllocation(Lokhttp3/Call;)Lokhttp3/internal/connection/StreamAllocation;
    move-result-object p1
  .line 3
    invoke-virtual { p1 }, Lokhttp3/internal/connection/StreamAllocation;->noNewStreams()V
  .line 4
    invoke-virtual { p1 }, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;
    move-result-object v0
    invoke-virtual { v0, p1 }, Lokhttp3/internal/connection/RealConnection;->newWebSocketStreams(Lokhttp3/internal/connection/StreamAllocation;)Lokhttp3/internal/ws/RealWebSocket$Streams;
    move-result-object v0
  :L2
  .line 5
    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket$2;->this$0:Lokhttp3/internal/ws/RealWebSocket;
    iget-object v1, v1, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;
    iget-object v2, p0, Lokhttp3/internal/ws/RealWebSocket$2;->this$0:Lokhttp3/internal/ws/RealWebSocket;
    invoke-virtual { v1, v2, p2 }, Lokhttp3/WebSocketListener;->onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V
  .line 6
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "OkHttp WebSocket "
    invoke-virtual { p2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket$2;->val$request:Lokhttp3/Request;
    invoke-virtual { v1 }, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    move-result-object v1
    invoke-virtual { v1 }, Lokhttp3/HttpUrl;->redact()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { p2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
  .line 7
    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket$2;->this$0:Lokhttp3/internal/ws/RealWebSocket;
    invoke-virtual { v1, p2, v0 }, Lokhttp3/internal/ws/RealWebSocket;->initReaderAndWriter(Ljava/lang/String;Lokhttp3/internal/ws/RealWebSocket$Streams;)V
  .line 8
    invoke-virtual { p1 }, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;
    move-result-object p1
    invoke-virtual { p1 }, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;
    move-result-object p1
    const/4 p2, 0
    invoke-virtual { p1, p2 }, Ljava/net/Socket;->setSoTimeout(I)V
  .line 9
    iget-object p1, p0, Lokhttp3/internal/ws/RealWebSocket$2;->this$0:Lokhttp3/internal/ws/RealWebSocket;
    invoke-virtual { p1 }, Lokhttp3/internal/ws/RealWebSocket;->loopReader()V
  :L3
    goto :L5
  :L4
    move-exception p1
  .line 10
    iget-object p2, p0, Lokhttp3/internal/ws/RealWebSocket$2;->this$0:Lokhttp3/internal/ws/RealWebSocket;
    const/4 v0, 0
    invoke-virtual { p2, p1, v0 }, Lokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lokhttp3/Response;)V
  :L5
    return-void
  :L6
    move-exception p1
  .line 11
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket$2;->this$0:Lokhttp3/internal/ws/RealWebSocket;
    invoke-virtual { v0, p1, p2 }, Lokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lokhttp3/Response;)V
  .line 12
    invoke-static { p2 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V
    return-void
.end method
