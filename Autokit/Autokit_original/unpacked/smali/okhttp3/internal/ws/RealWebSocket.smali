.class public final Lokhttp3/internal/ws/RealWebSocket;
.super Ljava/lang/Object;
.implements Lokhttp3/WebSocket;
.implements Lokhttp3/internal/ws/WebSocketReader$FrameCallback;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lokhttp3/internal/ws/RealWebSocket$CancelRunnable;,
    Lokhttp3/internal/ws/RealWebSocket$Streams;,
    Lokhttp3/internal/ws/RealWebSocket$Close;,
    Lokhttp3/internal/ws/RealWebSocket$Message;,
    Lokhttp3/internal/ws/RealWebSocket$PingRunnable;
  }
.end annotation

.field final static synthetic $assertionsDisabled:Z = false

.field private final static CANCEL_AFTER_CLOSE_MILLIS:J = 60000L

.field private final static MAX_QUEUE_SIZE:J = 16777216L

.field private final static ONLY_HTTP1:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Lokhttp3/Protocol;",
      ">;"
    }
  .end annotation
.end field

.field private awaitingPong:Z

.field private call:Lokhttp3/Call;

.field private cancelFuture:Ljava/util/concurrent/ScheduledFuture;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/concurrent/ScheduledFuture<",
      "*>;"
    }
  .end annotation
.end field

.field private enqueuedClose:Z

.field private executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private failed:Z

.field private final key:Ljava/lang/String;

.field final listener:Lokhttp3/WebSocketListener;

.field private final messageAndCloseQueue:Ljava/util/ArrayDeque;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayDeque<",
      "Ljava/lang/Object;",
      ">;"
    }
  .end annotation
.end field

.field private final originalRequest:Lokhttp3/Request;

.field private final pingIntervalMillis:J

.field private final pongQueue:Ljava/util/ArrayDeque;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayDeque<",
      "Lokio/ByteString;",
      ">;"
    }
  .end annotation
.end field

.field private queueSize:J

.field private final random:Ljava/util/Random;

.field private reader:Lokhttp3/internal/ws/WebSocketReader;

.field private receivedCloseCode:I

.field private receivedCloseReason:Ljava/lang/String;

.field private receivedPingCount:I

.field private receivedPongCount:I

.field private sentPingCount:I

.field private streams:Lokhttp3/internal/ws/RealWebSocket$Streams;

.field private writer:Lokhttp3/internal/ws/WebSocketWriter;

.field private final writerRunnable:Ljava/lang/Runnable;

.method static constructor <clinit>()V
  .registers 1
  .line 1
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;
    invoke-static { v0 }, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;
    move-result-object v0
    sput-object v0, Lokhttp3/internal/ws/RealWebSocket;->ONLY_HTTP1:Ljava/util/List;
    return-void
.end method

.method public constructor <init>(Lokhttp3/Request;Lokhttp3/WebSocketListener;Ljava/util/Random;J)V
  .registers 8
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/util/ArrayDeque;
    invoke-direct { v0 }, Ljava/util/ArrayDeque;-><init>()V
    iput-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;
  .line 3
    new-instance v0, Ljava/util/ArrayDeque;
    invoke-direct { v0 }, Ljava/util/ArrayDeque;-><init>()V
    iput-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;
    const/4 v0, -1
  .line 4
    iput v0, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I
  .line 5
    invoke-virtual { p1 }, Lokhttp3/Request;->method()Ljava/lang/String;
    move-result-object v0
    const-string v1, "GET"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
  .line 6
    iput-object p1, p0, Lokhttp3/internal/ws/RealWebSocket;->originalRequest:Lokhttp3/Request;
  .line 7
    iput-object p2, p0, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;
  .line 8
    iput-object p3, p0, Lokhttp3/internal/ws/RealWebSocket;->random:Ljava/util/Random;
  .line 9
    iput-wide p4, p0, Lokhttp3/internal/ws/RealWebSocket;->pingIntervalMillis:J
    const/16 p1, 16
    new-array p1, p1, [B
  .line 10
    invoke-virtual { p3, p1 }, Ljava/util/Random;->nextBytes([B)V
  .line 11
    invoke-static { p1 }, Lokio/ByteString;->of([B)Lokio/ByteString;
    move-result-object p1
    invoke-virtual { p1 }, Lokio/ByteString;->base64()Ljava/lang/String;
    move-result-object p1
    iput-object p1, p0, Lokhttp3/internal/ws/RealWebSocket;->key:Ljava/lang/String;
  .line 12
    new-instance p1, Lokhttp3/internal/ws/RealWebSocket$1;
    invoke-direct { p1, p0 }, Lokhttp3/internal/ws/RealWebSocket$1;-><init>(Lokhttp3/internal/ws/RealWebSocket;)V
    iput-object p1, p0, Lokhttp3/internal/ws/RealWebSocket;->writerRunnable:Ljava/lang/Runnable;
    return-void
  :L0
  .line 13
    new-instance p2, Ljava/lang/IllegalArgumentException;
    new-instance p3, Ljava/lang/StringBuilder;
    invoke-direct { p3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p4, "Request must be GET: "
    invoke-virtual { p3, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Lokhttp3/Request;->method()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p2, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p2
.end method

.method private runWriter()V
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;
    if-eqz v0, :L0
  .line 2
    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket;->writerRunnable:Ljava/lang/Runnable;
    invoke-interface { v0, v1 }, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
  :L0
    return-void
.end method

.method private declared-synchronized send(Lokio/ByteString;I)Z
  .catchall { :L0 .. :L2 } :L6
  .catchall { :L3 .. :L4 } :L6
  .registers 9
    monitor-enter p0
  :L0
  .line 5
    iget-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->failed:Z
    const/4 v1, 0
    if-nez v0, :L5
    iget-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z
    if-eqz v0, :L1
    goto :L5
  :L1
  .line 6
    iget-wide v2, p0, Lokhttp3/internal/ws/RealWebSocket;->queueSize:J
    invoke-virtual { p1 }, Lokio/ByteString;->size()I
    move-result v0
    int-to-long v4, v0
    add-long/2addr v2, v4
    const-wide/32 v4, 16777216
    cmp-long v0, v2, v4
    if-lez v0, :L3
    const/16 p1, 1001
    const/4 p2, 0
  .line 7
    invoke-virtual { p0, p1, p2 }, Lokhttp3/internal/ws/RealWebSocket;->close(ILjava/lang/String;)Z
  :L2
  .line 8
    monitor-exit p0
    return v1
  :L3
  .line 9
    iget-wide v0, p0, Lokhttp3/internal/ws/RealWebSocket;->queueSize:J
    invoke-virtual { p1 }, Lokio/ByteString;->size()I
    move-result v2
    int-to-long v2, v2
    add-long/2addr v0, v2
    iput-wide v0, p0, Lokhttp3/internal/ws/RealWebSocket;->queueSize:J
  .line 10
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;
    new-instance v1, Lokhttp3/internal/ws/RealWebSocket$Message;
    invoke-direct { v1, p2, p1 }, Lokhttp3/internal/ws/RealWebSocket$Message;-><init>(ILokio/ByteString;)V
    invoke-virtual { v0, v1 }, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
  .line 11
    invoke-direct { p0 }, Lokhttp3/internal/ws/RealWebSocket;->runWriter()V
  :L4
    const/4 p1, 1
  .line 12
    monitor-exit p0
    return p1
  :L5
  .line 13
    monitor-exit p0
    return v1
  :L6
    move-exception p1
    monitor-exit p0
    throw p1
.end method

.method awaitTermination(ILjava/util/concurrent/TimeUnit;)V
  .registers 6
  .line 1
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;
    int-to-long v1, p1
    invoke-interface { v0, v1, v2, p2 }, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    return-void
.end method

.method public cancel()V
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->call:Lokhttp3/Call;
    invoke-interface { v0 }, Lokhttp3/Call;->cancel()V
    return-void
.end method

.method checkResponse(Lokhttp3/Response;)V
  .registers 7
  .line 1
    invoke-virtual { p1 }, Lokhttp3/Response;->code()I
    move-result v0
    const-string v1, "'"
    const/16 v2, 101
    if-ne v0, v2, :L3
    const-string v0, "Connection"
  .line 2
    invoke-virtual { p1, v0 }, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    const-string v2, "Upgrade"
  .line 3
    invoke-virtual { v2, v0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :L2
  .line 4
    invoke-virtual { p1, v2 }, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    const-string v2, "websocket"
  .line 5
    invoke-virtual { v2, v0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :L1
    const-string v0, "Sec-WebSocket-Accept"
  .line 6
    invoke-virtual { p1, v0 }, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
  .line 7
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    iget-object v2, p0, Lokhttp3/internal/ws/RealWebSocket;->key:Ljava/lang/String;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    move-result-object v0
  .line 8
    invoke-virtual { v0 }, Lokio/ByteString;->sha1()Lokio/ByteString;
    move-result-object v0
    invoke-virtual { v0 }, Lokio/ByteString;->base64()Ljava/lang/String;
    move-result-object v0
  .line 9
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :L0
    return-void
  :L0
  .line 10
    new-instance v2, Ljava/net/ProtocolException;
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "Expected 'Sec-WebSocket-Accept' header value '"
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "' but was '"
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v2, p1 }, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
    throw v2
  :L1
  .line 11
    new-instance p1, Ljava/net/ProtocolException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Expected 'Upgrade' header value 'websocket' but was '"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p1, v0 }, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
    throw p1
  :L2
  .line 12
    new-instance p1, Ljava/net/ProtocolException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Expected 'Connection' header value 'Upgrade' but was '"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p1, v0 }, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
    throw p1
  :L3
  .line 13
    new-instance v0, Ljava/net/ProtocolException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Expected HTTP 101 response but was '"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 14
    invoke-virtual { p1 }, Lokhttp3/Response;->code()I
    move-result v3
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, " "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Lokhttp3/Response;->message()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public close(ILjava/lang/String;)Z
  .registers 5
    const-wide/32 v0, 60000
  .line 1
    invoke-virtual { p0, p1, p2, v0, v1 }, Lokhttp3/internal/ws/RealWebSocket;->close(ILjava/lang/String;J)Z
    move-result p1
    return p1
.end method

.method declared-synchronized close(ILjava/lang/String;J)Z
  .catchall { :L0 .. :L4 } :L6
  .registers 11
    monitor-enter p0
  :L0
  .line 2
    invoke-static { p1 }, Lokhttp3/internal/ws/WebSocketProtocol;->validateCloseCode(I)V
    const/4 v0, 0
    if-eqz p2, :L2
  .line 3
    invoke-static { p2 }, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    move-result-object v0
  .line 4
    invoke-virtual { v0 }, Lokio/ByteString;->size()I
    move-result v1
    int-to-long v1, v1
    const-wide/16 v3, 123
    cmp-long v5, v1, v3
    if-gtz v5, :L1
    goto :L2
  :L1
  .line 5
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance p3, Ljava/lang/StringBuilder;
    invoke-direct { p3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p4, "reason.size() > 123: "
    invoke-virtual { p3, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L2
  .line 6
    iget-boolean p2, p0, Lokhttp3/internal/ws/RealWebSocket;->failed:Z
    if-nez p2, :L5
    iget-boolean p2, p0, Lokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z
    if-eqz p2, :L3
    goto :L5
  :L3
    const/4 p2, 1
  .line 7
    iput-boolean p2, p0, Lokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z
  .line 8
    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;
    new-instance v2, Lokhttp3/internal/ws/RealWebSocket$Close;
    invoke-direct { v2, p1, v0, p3, p4 }, Lokhttp3/internal/ws/RealWebSocket$Close;-><init>(ILokio/ByteString;J)V
    invoke-virtual { v1, v2 }, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
  .line 9
    invoke-direct { p0 }, Lokhttp3/internal/ws/RealWebSocket;->runWriter()V
  :L4
  .line 10
    monitor-exit p0
    return p2
  :L5
    const/4 p1, 0
  .line 11
    monitor-exit p0
    return p1
  :L6
    move-exception p1
    monitor-exit p0
    throw p1
.end method

.method public connect(Lokhttp3/OkHttpClient;)V
  .registers 5
  .line 1
    invoke-virtual { p1 }, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;
    move-result-object p1
    sget-object v0, Lokhttp3/EventListener;->NONE:Lokhttp3/EventListener;
  .line 2
    invoke-virtual { p1, v0 }, Lokhttp3/OkHttpClient$Builder;->eventListener(Lokhttp3/EventListener;)Lokhttp3/OkHttpClient$Builder;
    move-result-object p1
    sget-object v0, Lokhttp3/internal/ws/RealWebSocket;->ONLY_HTTP1:Ljava/util/List;
  .line 3
    invoke-virtual { p1, v0 }, Lokhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;
    move-result-object p1
  .line 4
    invoke-virtual { p1 }, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;
    move-result-object p1
  .line 5
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->originalRequest:Lokhttp3/Request;
    invoke-virtual { v0 }, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;
    move-result-object v0
    const-string v1, "Upgrade"
    const-string v2, "websocket"
  .line 6
    invoke-virtual { v0, v1, v2 }, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    move-result-object v0
    const-string v2, "Connection"
  .line 7
    invoke-virtual { v0, v2, v1 }, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    move-result-object v0
    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket;->key:Ljava/lang/String;
    const-string v2, "Sec-WebSocket-Key"
  .line 8
    invoke-virtual { v0, v2, v1 }, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    move-result-object v0
    const-string v1, "Sec-WebSocket-Version"
    const-string v2, "13"
  .line 9
    invoke-virtual { v0, v1, v2 }, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    move-result-object v0
  .line 10
    invoke-virtual { v0 }, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;
    move-result-object v0
  .line 11
    sget-object v1, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;
    invoke-virtual { v1, p1, v0 }, Lokhttp3/internal/Internal;->newWebSocketCall(Lokhttp3/OkHttpClient;Lokhttp3/Request;)Lokhttp3/Call;
    move-result-object p1
    iput-object p1, p0, Lokhttp3/internal/ws/RealWebSocket;->call:Lokhttp3/Call;
  .line 12
    invoke-interface { p1 }, Lokhttp3/Call;->timeout()Lokio/Timeout;
    move-result-object p1
    invoke-virtual { p1 }, Lokio/Timeout;->clearTimeout()Lokio/Timeout;
  .line 13
    iget-object p1, p0, Lokhttp3/internal/ws/RealWebSocket;->call:Lokhttp3/Call;
    new-instance v1, Lokhttp3/internal/ws/RealWebSocket$2;
    invoke-direct { v1, p0, v0 }, Lokhttp3/internal/ws/RealWebSocket$2;-><init>(Lokhttp3/internal/ws/RealWebSocket;Lokhttp3/Request;)V
    invoke-interface { p1, v1 }, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    return-void
.end method

.method public failWebSocket(Ljava/lang/Exception;Lokhttp3/Response;)V
  .parameter # Ljava/lang/Exception;
  .parameter # Lokhttp3/Response;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .catchall { :L0 .. :L4 } :L7
  .catchall { :L4 .. :L5 } :L6
  .catchall { :L8 .. :L9 } :L7
  .registers 6
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iget-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->failed:Z
    if-eqz v0, :L1
    monitor-exit p0
    return-void
  :L1
    const/4 v0, 1
  .line 3
    iput-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->failed:Z
  .line 4
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->streams:Lokhttp3/internal/ws/RealWebSocket$Streams;
    const/4 v1, 0
  .line 5
    iput-object v1, p0, Lokhttp3/internal/ws/RealWebSocket;->streams:Lokhttp3/internal/ws/RealWebSocket$Streams;
  .line 6
    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;
    if-eqz v1, :L2
    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;
    const/4 v2, 0
    invoke-interface { v1, v2 }, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
  :L2
  .line 7
    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;
    if-eqz v1, :L3
    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-interface { v1 }, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
  :L3
  .line 8
    monitor-exit p0
  :L4
  .line 9
    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;
    invoke-virtual { v1, p0, p1, p2 }, Lokhttp3/WebSocketListener;->onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
  :L5
  .line 10
    invoke-static { v0 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V
    return-void
  :L6
    move-exception p1
    invoke-static { v0 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V
    throw p1
  :L7
    move-exception p1
  :L8
  .line 11
    monitor-exit p0
  :L9
    throw p1
.end method

.method public initReaderAndWriter(Ljava/lang/String;Lokhttp3/internal/ws/RealWebSocket$Streams;)V
  .catchall { :L0 .. :L3 } :L4
  .catchall { :L5 .. :L6 } :L4
  .registers 14
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iput-object p2, p0, Lokhttp3/internal/ws/RealWebSocket;->streams:Lokhttp3/internal/ws/RealWebSocket$Streams;
  .line 3
    new-instance v0, Lokhttp3/internal/ws/WebSocketWriter;
    iget-boolean v1, p2, Lokhttp3/internal/ws/RealWebSocket$Streams;->client:Z
    iget-object v2, p2, Lokhttp3/internal/ws/RealWebSocket$Streams;->sink:Lokio/BufferedSink;
    iget-object v3, p0, Lokhttp3/internal/ws/RealWebSocket;->random:Ljava/util/Random;
    invoke-direct { v0, v1, v2, v3 }, Lokhttp3/internal/ws/WebSocketWriter;-><init>(ZLokio/BufferedSink;Ljava/util/Random;)V
    iput-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->writer:Lokhttp3/internal/ws/WebSocketWriter;
  .line 4
    new-instance v4, Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    const/4 v0, 1
    const/4 v1, 0
    invoke-static { p1, v1 }, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    move-result-object p1
    invoke-direct { v4, v0, p1 }, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V
    iput-object v4, p0, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;
  .line 5
    iget-wide v0, p0, Lokhttp3/internal/ws/RealWebSocket;->pingIntervalMillis:J
    const-wide/16 v2, 0
    cmp-long p1, v0, v2
    if-eqz p1, :L1
  .line 6
    new-instance v5, Lokhttp3/internal/ws/RealWebSocket$PingRunnable;
    invoke-direct { v5, p0 }, Lokhttp3/internal/ws/RealWebSocket$PingRunnable;-><init>(Lokhttp3/internal/ws/RealWebSocket;)V
    iget-wide v6, p0, Lokhttp3/internal/ws/RealWebSocket;->pingIntervalMillis:J
    iget-wide v8, p0, Lokhttp3/internal/ws/RealWebSocket;->pingIntervalMillis:J
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-interface/range { v4 .. v10 }, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
  :L1
  .line 7
    iget-object p1, p0, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;
    invoke-virtual { p1 }, Ljava/util/ArrayDeque;->isEmpty()Z
    move-result p1
    if-nez p1, :L2
  .line 8
    invoke-direct { p0 }, Lokhttp3/internal/ws/RealWebSocket;->runWriter()V
  :L2
  .line 9
    monitor-exit p0
  :L3
  .line 10
    new-instance p1, Lokhttp3/internal/ws/WebSocketReader;
    iget-boolean v0, p2, Lokhttp3/internal/ws/RealWebSocket$Streams;->client:Z
    iget-object p2, p2, Lokhttp3/internal/ws/RealWebSocket$Streams;->source:Lokio/BufferedSource;
    invoke-direct { p1, v0, p2, p0 }, Lokhttp3/internal/ws/WebSocketReader;-><init>(ZLokio/BufferedSource;Lokhttp3/internal/ws/WebSocketReader$FrameCallback;)V
    iput-object p1, p0, Lokhttp3/internal/ws/RealWebSocket;->reader:Lokhttp3/internal/ws/WebSocketReader;
    return-void
  :L4
    move-exception p1
  :L5
  .line 11
    monitor-exit p0
  :L6
    throw p1
.end method

.method public loopReader()V
  .registers 3
  :L0
  .line 1
    iget v0, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I
    const/4 v1, -1
    if-ne v0, v1, :L1
  .line 2
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->reader:Lokhttp3/internal/ws/WebSocketReader;
    invoke-virtual { v0 }, Lokhttp3/internal/ws/WebSocketReader;->processNextFrame()V
    goto :L0
  :L1
    return-void
.end method

.method public onReadClose(ILjava/lang/String;)V
  .catchall { :L0 .. :L3 } :L7
  .catchall { :L3 .. :L4 } :L5
  .catchall { :L6 .. :L8 } :L7
  .registers 6
    const/4 v0, -1
    if-eq p1, v0, :L9
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iget v1, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I
    if-ne v1, v0, :L6
  .line 3
    iput p1, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I
  .line 4
    iput-object p2, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseReason:Ljava/lang/String;
  .line 5
    iget-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z
    const/4 v1, 0
    if-eqz v0, :L2
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;
    invoke-virtual { v0 }, Ljava/util/ArrayDeque;->isEmpty()Z
    move-result v0
    if-eqz v0, :L2
  .line 6
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->streams:Lokhttp3/internal/ws/RealWebSocket$Streams;
  .line 7
    iput-object v1, p0, Lokhttp3/internal/ws/RealWebSocket;->streams:Lokhttp3/internal/ws/RealWebSocket$Streams;
  .line 8
    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;
    if-eqz v1, :L1
    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;
    const/4 v2, 0
    invoke-interface { v1, v2 }, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
  :L1
  .line 9
    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-interface { v1 }, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
    move-object v1, v0
  :L2
  .line 10
    monitor-exit p0
  :L3
  .line 11
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;
    invoke-virtual { v0, p0, p1, p2 }, Lokhttp3/WebSocketListener;->onClosing(Lokhttp3/WebSocket;ILjava/lang/String;)V
    if-eqz v1, :L4
  .line 12
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;
    invoke-virtual { v0, p0, p1, p2 }, Lokhttp3/WebSocketListener;->onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
  :L4
  .line 13
    invoke-static { v1 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V
    return-void
  :L5
    move-exception p1
    invoke-static { v1 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V
    throw p1
  :L6
  .line 14
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "already closed"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L7
    move-exception p1
  .line 15
    monitor-exit p0
  :L8
    throw p1
  :L9
  .line 16
    new-instance p1, Ljava/lang/IllegalArgumentException;
    invoke-direct { p1 }, Ljava/lang/IllegalArgumentException;-><init>()V
    throw p1
.end method

.method public onReadMessage(Ljava/lang/String;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;
    invoke-virtual { v0, p0, p1 }, Lokhttp3/WebSocketListener;->onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V
    return-void
.end method

.method public onReadMessage(Lokio/ByteString;)V
  .registers 3
  .line 2
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;
    invoke-virtual { v0, p0, p1 }, Lokhttp3/WebSocketListener;->onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V
    return-void
.end method

.method public declared-synchronized onReadPing(Lokio/ByteString;)V
  .catchall { :L0 .. :L2 } :L4
  .registers 3
    monitor-enter p0
  :L0
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->failed:Z
    if-nez v0, :L3
    iget-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z
    if-eqz v0, :L1
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;
    invoke-virtual { v0 }, Ljava/util/ArrayDeque;->isEmpty()Z
    move-result v0
    if-eqz v0, :L1
    goto :L3
  :L1
  .line 2
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
  .line 3
    invoke-direct { p0 }, Lokhttp3/internal/ws/RealWebSocket;->runWriter()V
  .line 4
    iget p1, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedPingCount:I
    add-int/lit8 p1, p1, 1
    iput p1, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedPingCount:I
  :L2
  .line 5
    monitor-exit p0
    return-void
  :L3
  .line 6
    monitor-exit p0
    return-void
  :L4
    move-exception p1
    monitor-exit p0
    throw p1
.end method

.method public declared-synchronized onReadPong(Lokio/ByteString;)V
  .catchall { :L0 .. :L1 } :L2
  .registers 2
    monitor-enter p0
  :L0
  .line 1
    iget p1, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedPongCount:I
    add-int/lit8 p1, p1, 1
    iput p1, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedPongCount:I
    const/4 p1, 0
  .line 2
    iput-boolean p1, p0, Lokhttp3/internal/ws/RealWebSocket;->awaitingPong:Z
  :L1
  .line 3
    monitor-exit p0
    return-void
  :L2
    move-exception p1
    monitor-exit p0
    throw p1
.end method

.method declared-synchronized pong(Lokio/ByteString;)Z
  .catchall { :L0 .. :L2 } :L4
  .registers 3
    monitor-enter p0
  :L0
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->failed:Z
    if-nez v0, :L3
    iget-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z
    if-eqz v0, :L1
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;
    invoke-virtual { v0 }, Ljava/util/ArrayDeque;->isEmpty()Z
    move-result v0
    if-eqz v0, :L1
    goto :L3
  :L1
  .line 2
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
  .line 3
    invoke-direct { p0 }, Lokhttp3/internal/ws/RealWebSocket;->runWriter()V
  :L2
    const/4 p1, 1
  .line 4
    monitor-exit p0
    return p1
  :L3
    const/4 p1, 0
  .line 5
    monitor-exit p0
    return p1
  :L4
    move-exception p1
    monitor-exit p0
    throw p1
.end method

.method processNextFrame()Z
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L3
  .registers 4
    const/4 v0, 0
  :L0
  .line 1
    iget-object v1, p0, Lokhttp3/internal/ws/RealWebSocket;->reader:Lokhttp3/internal/ws/WebSocketReader;
    invoke-virtual { v1 }, Lokhttp3/internal/ws/WebSocketReader;->processNextFrame()V
  .line 2
    iget v1, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I
  :L1
    const/4 v2, -1
    if-ne v1, v2, :L2
    const/4 v0, 1
  :L2
    return v0
  :L3
    move-exception v1
    const/4 v2, 0
  .line 3
    invoke-virtual { p0, v1, v2 }, Lokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lokhttp3/Response;)V
    return v0
.end method

.method public declared-synchronized queueSize()J
  .catchall { :L0 .. :L1 } :L2
  .registers 3
    monitor-enter p0
  :L0
  .line 1
    iget-wide v0, p0, Lokhttp3/internal/ws/RealWebSocket;->queueSize:J
  :L1
    monitor-exit p0
    return-wide v0
  :L2
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method declared-synchronized receivedPingCount()I
  .catchall { :L0 .. :L1 } :L2
  .registers 2
    monitor-enter p0
  :L0
  .line 1
    iget v0, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedPingCount:I
  :L1
    monitor-exit p0
    return v0
  :L2
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method declared-synchronized receivedPongCount()I
  .catchall { :L0 .. :L1 } :L2
  .registers 2
    monitor-enter p0
  :L0
  .line 1
    iget v0, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedPongCount:I
  :L1
    monitor-exit p0
    return v0
  :L2
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method public request()Lokhttp3/Request;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->originalRequest:Lokhttp3/Request;
    return-object v0
.end method

.method public send(Ljava/lang/String;)Z
  .registers 3
    if-eqz p1, :L0
  .line 1
    invoke-static { p1 }, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    move-result-object p1
    const/4 v0, 1
    invoke-direct { p0, p1, v0 }, Lokhttp3/internal/ws/RealWebSocket;->send(Lokio/ByteString;I)Z
    move-result p1
    return p1
  :L0
  .line 2
    new-instance p1, Ljava/lang/NullPointerException;
    const-string v0, "text == null"
    invoke-direct { p1, v0 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public send(Lokio/ByteString;)Z
  .registers 3
    if-eqz p1, :L0
    const/4 v0, 2
  .line 3
    invoke-direct { p0, p1, v0 }, Lokhttp3/internal/ws/RealWebSocket;->send(Lokio/ByteString;I)Z
    move-result p1
    return p1
  :L0
  .line 4
    new-instance p1, Ljava/lang/NullPointerException;
    const-string v0, "bytes == null"
    invoke-direct { p1, v0 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method declared-synchronized sentPingCount()I
  .catchall { :L0 .. :L1 } :L2
  .registers 2
    monitor-enter p0
  :L0
  .line 1
    iget v0, p0, Lokhttp3/internal/ws/RealWebSocket;->sentPingCount:I
  :L1
    monitor-exit p0
    return v0
  :L2
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method tearDown()V
  .registers 5
  .line 1
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;
    if-eqz v0, :L0
    const/4 v1, 0
  .line 2
    invoke-interface { v0, v1 }, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
  :L0
  .line 3
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-interface { v0 }, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
  .line 4
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;
    const-wide/16 v1, 10
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-interface { v0, v1, v2, v3 }, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    return-void
.end method

.method writeOneFrame()Z
  .catchall { :L0 .. :L8 } :L18
  .catchall { :L9 .. :L11 } :L17
  .catchall { :L11 .. :L13 } :L12
  .catchall { :L13 .. :L15 } :L17
  .catchall { :L16 .. :L17 } :L17
  .catchall { :L19 .. :L20 } :L18
  .registers 13
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iget-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->failed:Z
    const/4 v1, 0
    if-eqz v0, :L1
  .line 3
    monitor-exit p0
    return v1
  :L1
  .line 4
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->writer:Lokhttp3/internal/ws/WebSocketWriter;
  .line 5
    iget-object v2, p0, Lokhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;
    invoke-virtual { v2 }, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lokio/ByteString;
    const/4 v3, -1
    const/4 v4, 0
    if-nez v2, :L6
  .line 6
    iget-object v5, p0, Lokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;
    invoke-virtual { v5 }, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;
    move-result-object v5
  .line 7
    instance-of v6, v5, Lokhttp3/internal/ws/RealWebSocket$Close;
    if-eqz v6, :L3
  .line 8
    iget v1, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I
  .line 9
    iget-object v6, p0, Lokhttp3/internal/ws/RealWebSocket;->receivedCloseReason:Ljava/lang/String;
    if-eq v1, v3, :L2
  .line 10
    iget-object v3, p0, Lokhttp3/internal/ws/RealWebSocket;->streams:Lokhttp3/internal/ws/RealWebSocket$Streams;
  .line 11
    iput-object v4, p0, Lokhttp3/internal/ws/RealWebSocket;->streams:Lokhttp3/internal/ws/RealWebSocket$Streams;
  .line 12
    iget-object v4, p0, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-interface { v4 }, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
    move-object v4, v5
    move-object v11, v3
    move v3, v1
    move-object v1, v11
    goto :L7
  :L2
  .line 13
    iget-object v3, p0, Lokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v7, Lokhttp3/internal/ws/RealWebSocket$CancelRunnable;
    invoke-direct { v7, p0 }, Lokhttp3/internal/ws/RealWebSocket$CancelRunnable;-><init>(Lokhttp3/internal/ws/RealWebSocket;)V
    move-object v8, v5
    check-cast v8, Lokhttp3/internal/ws/RealWebSocket$Close;
    iget-wide v8, v8, Lokhttp3/internal/ws/RealWebSocket$Close;->cancelAfterCloseMillis:J
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-interface { v3, v7, v8, v9, v10 }, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    move-result-object v3
    iput-object v3, p0, Lokhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;
    move v3, v1
    move-object v1, v4
    goto :L5
  :L3
    if-nez v5, :L4
  .line 14
    monitor-exit p0
    return v1
  :L4
    move-object v1, v4
    move-object v6, v1
  :L5
    move-object v4, v5
    goto :L7
  :L6
    move-object v1, v4
    move-object v6, v1
  :L7
  .line 15
    monitor-exit p0
  :L8
    if-eqz v2, :L10
  :L9
  .line 16
    invoke-virtual { v0, v2 }, Lokhttp3/internal/ws/WebSocketWriter;->writePong(Lokio/ByteString;)V
    goto :L15
  :L10
  .line 17
    instance-of v2, v4, Lokhttp3/internal/ws/RealWebSocket$Message;
    if-eqz v2, :L14
  .line 18
    move-object v2, v4
    check-cast v2, Lokhttp3/internal/ws/RealWebSocket$Message;
    iget-object v2, v2, Lokhttp3/internal/ws/RealWebSocket$Message;->data:Lokio/ByteString;
  .line 19
    check-cast v4, Lokhttp3/internal/ws/RealWebSocket$Message;
    iget v3, v4, Lokhttp3/internal/ws/RealWebSocket$Message;->formatOpcode:I
  .line 20
    invoke-virtual { v2 }, Lokio/ByteString;->size()I
    move-result v4
    int-to-long v4, v4
  .line 21
    invoke-virtual { v0, v3, v4, v5 }, Lokhttp3/internal/ws/WebSocketWriter;->newMessageSink(IJ)Lokio/Sink;
    move-result-object v0
    invoke-static { v0 }, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;
    move-result-object v0
  .line 22
    invoke-interface { v0, v2 }, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;
  .line 23
    invoke-interface { v0 }, Lokio/Sink;->close()V
  .line 24
    monitor-enter p0
  :L11
  .line 25
    iget-wide v3, p0, Lokhttp3/internal/ws/RealWebSocket;->queueSize:J
    invoke-virtual { v2 }, Lokio/ByteString;->size()I
    move-result v0
    int-to-long v5, v0
    sub-long/2addr v3, v5
    iput-wide v3, p0, Lokhttp3/internal/ws/RealWebSocket;->queueSize:J
  .line 26
    monitor-exit p0
    goto :L15
  :L12
    move-exception v0
    monitor-exit p0
  :L13
    throw v0
  :L14
  .line 27
    instance-of v2, v4, Lokhttp3/internal/ws/RealWebSocket$Close;
    if-eqz v2, :L16
  .line 28
    check-cast v4, Lokhttp3/internal/ws/RealWebSocket$Close;
  .line 29
    iget v2, v4, Lokhttp3/internal/ws/RealWebSocket$Close;->code:I
    iget-object v4, v4, Lokhttp3/internal/ws/RealWebSocket$Close;->reason:Lokio/ByteString;
    invoke-virtual { v0, v2, v4 }, Lokhttp3/internal/ws/WebSocketWriter;->writeClose(ILokio/ByteString;)V
    if-eqz v1, :L15
  .line 30
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->listener:Lokhttp3/WebSocketListener;
    invoke-virtual { v0, p0, v3, v6 }, Lokhttp3/WebSocketListener;->onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
  :L15
    const/4 v0, 1
  .line 31
    invoke-static { v1 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V
    return v0
  :L16
  .line 32
    new-instance v0, Ljava/lang/AssertionError;
    invoke-direct { v0 }, Ljava/lang/AssertionError;-><init>()V
    throw v0
  :L17
    move-exception v0
  .line 33
    invoke-static { v1 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V
    throw v0
  :L18
    move-exception v0
  :L19
  .line 34
    monitor-exit p0
  :L20
    throw v0
.end method

.method writePingFrame()V
  .catchall { :L0 .. :L4 } :L9
  .catch Ljava/io/IOException; { :L5 .. :L6 } :L7
  .catchall { :L10 .. :L11 } :L9
  .registers 8
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iget-boolean v0, p0, Lokhttp3/internal/ws/RealWebSocket;->failed:Z
    if-eqz v0, :L1
    monitor-exit p0
    return-void
  :L1
  .line 3
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket;->writer:Lokhttp3/internal/ws/WebSocketWriter;
  .line 4
    iget-boolean v1, p0, Lokhttp3/internal/ws/RealWebSocket;->awaitingPong:Z
    const/4 v2, -1
    if-eqz v1, :L2
    iget v1, p0, Lokhttp3/internal/ws/RealWebSocket;->sentPingCount:I
    goto :L3
  :L2
    const/4 v1, -1
  :L3
  .line 5
    iget v3, p0, Lokhttp3/internal/ws/RealWebSocket;->sentPingCount:I
    const/4 v4, 1
    add-int/2addr v3, v4
    iput v3, p0, Lokhttp3/internal/ws/RealWebSocket;->sentPingCount:I
  .line 6
    iput-boolean v4, p0, Lokhttp3/internal/ws/RealWebSocket;->awaitingPong:Z
  .line 7
    monitor-exit p0
  :L4
    const/4 v3, 0
    if-eq v1, v2, :L5
  .line 8
    new-instance v0, Ljava/net/SocketTimeoutException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "sent ping but didn't receive pong within "
    invoke-virtual { v2, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-wide v5, p0, Lokhttp3/internal/ws/RealWebSocket;->pingIntervalMillis:J
    invoke-virtual { v2, v5, v6 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v5, "ms (after "
    invoke-virtual { v2, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sub-int/2addr v1, v4
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, " successful ping/pongs)"
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V
    invoke-virtual { p0, v0, v3 }, Lokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lokhttp3/Response;)V
    return-void
  :L5
  .line 9
    sget-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;
    invoke-virtual { v0, v1 }, Lokhttp3/internal/ws/WebSocketWriter;->writePing(Lokio/ByteString;)V
  :L6
    goto :L8
  :L7
    move-exception v0
  .line 10
    invoke-virtual { p0, v0, v3 }, Lokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lokhttp3/Response;)V
  :L8
    return-void
  :L9
    move-exception v0
  :L10
  .line 11
    monitor-exit p0
  :L11
    throw v0
.end method
