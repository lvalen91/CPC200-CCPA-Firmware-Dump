.class final Lokhttp3/RealCall;
.super Ljava/lang/Object;
.implements Lokhttp3/Call;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lokhttp3/RealCall$AsyncCall;
  }
.end annotation

.field final client:Lokhttp3/OkHttpClient;

.field private eventListener:Lokhttp3/EventListener;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.field private executed:Z

.field final forWebSocket:Z

.field final originalRequest:Lokhttp3/Request;

.field final retryAndFollowUpInterceptor:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

.field final timeout:Lokio/AsyncTimeout;

.method private constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V
  .registers 6
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;
  .line 3
    iput-object p2, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;
  .line 4
    iput-boolean p3, p0, Lokhttp3/RealCall;->forWebSocket:Z
  .line 5
    new-instance p2, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;
    invoke-direct { p2, p1, p3 }, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;-><init>(Lokhttp3/OkHttpClient;Z)V
    iput-object p2, p0, Lokhttp3/RealCall;->retryAndFollowUpInterceptor:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;
  .line 6
    new-instance p2, Lokhttp3/RealCall$1;
    invoke-direct { p2, p0 }, Lokhttp3/RealCall$1;-><init>(Lokhttp3/RealCall;)V
    iput-object p2, p0, Lokhttp3/RealCall;->timeout:Lokio/AsyncTimeout;
  .line 7
    invoke-virtual { p1 }, Lokhttp3/OkHttpClient;->callTimeoutMillis()I
    move-result p1
    int-to-long v0, p1
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-virtual { p2, v0, v1, p1 }, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
    return-void
.end method

.method static synthetic access$000(Lokhttp3/RealCall;)Lokhttp3/EventListener;
  .registers 1
  .line 1
    iget-object p0, p0, Lokhttp3/RealCall;->eventListener:Lokhttp3/EventListener;
    return-object p0
.end method

.method private captureCallStackTrace()V
  .registers 3
  .line 1
    invoke-static { }, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;
    move-result-object v0
    const-string v1, "response.body().close()"
    invoke-virtual { v0, v1 }, Lokhttp3/internal/platform/Platform;->getStackTraceForCloseable(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
  .line 2
    iget-object v1, p0, Lokhttp3/RealCall;->retryAndFollowUpInterceptor:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;
    invoke-virtual { v1, v0 }, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->setCallStackTrace(Ljava/lang/Object;)V
    return-void
.end method

.method static newRealCall(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/RealCall;
  .registers 4
  .line 1
    new-instance v0, Lokhttp3/RealCall;
    invoke-direct { v0, p0, p1, p2 }, Lokhttp3/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V
  .line 2
    invoke-virtual { p0 }, Lokhttp3/OkHttpClient;->eventListenerFactory()Lokhttp3/EventListener$Factory;
    move-result-object p0
    invoke-interface { p0, v0 }, Lokhttp3/EventListener$Factory;->create(Lokhttp3/Call;)Lokhttp3/EventListener;
    move-result-object p0
    iput-object p0, v0, Lokhttp3/RealCall;->eventListener:Lokhttp3/EventListener;
    return-object v0
.end method

.method public cancel()V
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/RealCall;->retryAndFollowUpInterceptor:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;
    invoke-virtual { v0 }, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->cancel()V
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lokhttp3/RealCall;->clone()Lokhttp3/RealCall;
    move-result-object v0
    return-object v0
.end method

.method public bridge synthetic clone()Lokhttp3/Call;
  .registers 2
  .line 2
    invoke-virtual { p0 }, Lokhttp3/RealCall;->clone()Lokhttp3/RealCall;
    move-result-object v0
    return-object v0
.end method

.method public clone()Lokhttp3/RealCall;
  .registers 4
  .line 3
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;
    iget-object v1, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;
    iget-boolean v2, p0, Lokhttp3/RealCall;->forWebSocket:Z
    invoke-static { v0, v1, v2 }, Lokhttp3/RealCall;->newRealCall(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/RealCall;
    move-result-object v0
    return-object v0
.end method

.method public enqueue(Lokhttp3/Callback;)V
  .catchall { :L0 .. :L1 } :L3
  .catchall { :L2 .. :L4 } :L3
  .registers 4
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iget-boolean v0, p0, Lokhttp3/RealCall;->executed:Z
    if-nez v0, :L2
    const/4 v0, 1
  .line 3
    iput-boolean v0, p0, Lokhttp3/RealCall;->executed:Z
  .line 4
    monitor-exit p0
  :L1
  .line 5
    invoke-direct { p0 }, Lokhttp3/RealCall;->captureCallStackTrace()V
  .line 6
    iget-object v0, p0, Lokhttp3/RealCall;->eventListener:Lokhttp3/EventListener;
    invoke-virtual { v0, p0 }, Lokhttp3/EventListener;->callStart(Lokhttp3/Call;)V
  .line 7
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;
    invoke-virtual { v0 }, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;
    move-result-object v0
    new-instance v1, Lokhttp3/RealCall$AsyncCall;
    invoke-direct { v1, p0, p1 }, Lokhttp3/RealCall$AsyncCall;-><init>(Lokhttp3/RealCall;Lokhttp3/Callback;)V
    invoke-virtual { v0, v1 }, Lokhttp3/Dispatcher;->enqueue(Lokhttp3/RealCall$AsyncCall;)V
    return-void
  :L2
  .line 8
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "Already Executed"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L3
    move-exception p1
  .line 9
    monitor-exit p0
  :L4
    throw p1
.end method

.method public execute()Lokhttp3/Response;
  .catchall { :L0 .. :L1 } :L10
  .catch Ljava/io/IOException; { :L2 .. :L3 } :L6
  .catchall { :L2 .. :L3 } :L5
  .catch Ljava/io/IOException; { :L4 .. :L5 } :L6
  .catchall { :L4 .. :L5 } :L5
  .catchall { :L7 .. :L8 } :L5
  .catchall { :L9 .. :L11 } :L10
  .registers 3
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iget-boolean v0, p0, Lokhttp3/RealCall;->executed:Z
    if-nez v0, :L9
    const/4 v0, 1
  .line 3
    iput-boolean v0, p0, Lokhttp3/RealCall;->executed:Z
  .line 4
    monitor-exit p0
  :L1
  .line 5
    invoke-direct { p0 }, Lokhttp3/RealCall;->captureCallStackTrace()V
  .line 6
    iget-object v0, p0, Lokhttp3/RealCall;->timeout:Lokio/AsyncTimeout;
    invoke-virtual { v0 }, Lokio/AsyncTimeout;->enter()V
  .line 7
    iget-object v0, p0, Lokhttp3/RealCall;->eventListener:Lokhttp3/EventListener;
    invoke-virtual { v0, p0 }, Lokhttp3/EventListener;->callStart(Lokhttp3/Call;)V
  :L2
  .line 8
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;
    invoke-virtual { v0 }, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;
    move-result-object v0
    invoke-virtual { v0, p0 }, Lokhttp3/Dispatcher;->executed(Lokhttp3/RealCall;)V
  .line 9
    invoke-virtual { p0 }, Lokhttp3/RealCall;->getResponseWithInterceptorChain()Lokhttp3/Response;
    move-result-object v0
  :L3
    if-eqz v0, :L4
  .line 10
    iget-object v1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;
    invoke-virtual { v1 }, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;
    move-result-object v1
    invoke-virtual { v1, p0 }, Lokhttp3/Dispatcher;->finished(Lokhttp3/RealCall;)V
    return-object v0
  :L4
  .line 11
    new-instance v0, Ljava/io/IOException;
    const-string v1, "Canceled"
    invoke-direct { v0, v1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L5
    move-exception v0
    goto :L8
  :L6
    move-exception v0
  :L7
  .line 12
    invoke-virtual { p0, v0 }, Lokhttp3/RealCall;->timeoutExit(Ljava/io/IOException;)Ljava/io/IOException;
    move-result-object v0
  .line 13
    iget-object v1, p0, Lokhttp3/RealCall;->eventListener:Lokhttp3/EventListener;
    invoke-virtual { v1, p0, v0 }, Lokhttp3/EventListener;->callFailed(Lokhttp3/Call;Ljava/io/IOException;)V
  .line 14
    throw v0
  :L8
  .line 15
    iget-object v1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;
    invoke-virtual { v1 }, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;
    move-result-object v1
    invoke-virtual { v1, p0 }, Lokhttp3/Dispatcher;->finished(Lokhttp3/RealCall;)V
    throw v0
  :L9
  .line 16
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "Already Executed"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
  :L10
    move-exception v0
  .line 17
    monitor-exit p0
  :L11
    throw v0
.end method

.method getResponseWithInterceptorChain()Lokhttp3/Response;
  .registers 14
  .line 1
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct { v1 }, Ljava/util/ArrayList;-><init>()V
  .line 2
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;
    invoke-virtual { v0 }, Lokhttp3/OkHttpClient;->interceptors()Ljava/util/List;
    move-result-object v0
    invoke-interface { v1, v0 }, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
  .line 3
    iget-object v0, p0, Lokhttp3/RealCall;->retryAndFollowUpInterceptor:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;
    invoke-interface { v1, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 4
    new-instance v0, Lokhttp3/internal/http/BridgeInterceptor;
    iget-object v2, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;
    invoke-virtual { v2 }, Lokhttp3/OkHttpClient;->cookieJar()Lokhttp3/CookieJar;
    move-result-object v2
    invoke-direct { v0, v2 }, Lokhttp3/internal/http/BridgeInterceptor;-><init>(Lokhttp3/CookieJar;)V
    invoke-interface { v1, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 5
    new-instance v0, Lokhttp3/internal/cache/CacheInterceptor;
    iget-object v2, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;
    invoke-virtual { v2 }, Lokhttp3/OkHttpClient;->internalCache()Lokhttp3/internal/cache/InternalCache;
    move-result-object v2
    invoke-direct { v0, v2 }, Lokhttp3/internal/cache/CacheInterceptor;-><init>(Lokhttp3/internal/cache/InternalCache;)V
    invoke-interface { v1, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 6
    new-instance v0, Lokhttp3/internal/connection/ConnectInterceptor;
    iget-object v2, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;
    invoke-direct { v0, v2 }, Lokhttp3/internal/connection/ConnectInterceptor;-><init>(Lokhttp3/OkHttpClient;)V
    invoke-interface { v1, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 7
    iget-boolean v0, p0, Lokhttp3/RealCall;->forWebSocket:Z
    if-nez v0, :L0
  .line 8
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;
    invoke-virtual { v0 }, Lokhttp3/OkHttpClient;->networkInterceptors()Ljava/util/List;
    move-result-object v0
    invoke-interface { v1, v0 }, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
  :L0
  .line 9
    new-instance v0, Lokhttp3/internal/http/CallServerInterceptor;
    iget-boolean v2, p0, Lokhttp3/RealCall;->forWebSocket:Z
    invoke-direct { v0, v2 }, Lokhttp3/internal/http/CallServerInterceptor;-><init>(Z)V
    invoke-interface { v1, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 10
    new-instance v12, Lokhttp3/internal/http/RealInterceptorChain;
    const/4 v2, 0
    const/4 v3, 0
    const/4 v4, 0
    const/4 v5, 0
    iget-object v6, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;
    iget-object v8, p0, Lokhttp3/RealCall;->eventListener:Lokhttp3/EventListener;
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;
  .line 11
    invoke-virtual { v0 }, Lokhttp3/OkHttpClient;->connectTimeoutMillis()I
    move-result v9
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;
  .line 12
    invoke-virtual { v0 }, Lokhttp3/OkHttpClient;->readTimeoutMillis()I
    move-result v10
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;
    invoke-virtual { v0 }, Lokhttp3/OkHttpClient;->writeTimeoutMillis()I
    move-result v11
    move-object v0, v12
    move-object v7, p0
    invoke-direct/range { v0 .. v11 }, Lokhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/http/HttpCodec;Lokhttp3/internal/connection/RealConnection;ILokhttp3/Request;Lokhttp3/Call;Lokhttp3/EventListener;III)V
  .line 13
    iget-object v0, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;
    invoke-interface { v12, v0 }, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;
    move-result-object v0
    return-object v0
.end method

.method public isCanceled()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/RealCall;->retryAndFollowUpInterceptor:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;
    invoke-virtual { v0 }, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->isCanceled()Z
    move-result v0
    return v0
.end method

.method public declared-synchronized isExecuted()Z
  .catchall { :L0 .. :L1 } :L2
  .registers 2
    monitor-enter p0
  :L0
  .line 1
    iget-boolean v0, p0, Lokhttp3/RealCall;->executed:Z
  :L1
    monitor-exit p0
    return v0
  :L2
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method redactedUrl()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;
    invoke-virtual { v0 }, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/HttpUrl;->redact()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public request()Lokhttp3/Request;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;
    return-object v0
.end method

.method streamAllocation()Lokhttp3/internal/connection/StreamAllocation;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/RealCall;->retryAndFollowUpInterceptor:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;
    invoke-virtual { v0 }, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation()Lokhttp3/internal/connection/StreamAllocation;
    move-result-object v0
    return-object v0
.end method

.method public timeout()Lokio/Timeout;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/RealCall;->timeout:Lokio/AsyncTimeout;
    return-object v0
.end method

.method timeoutExit(Ljava/io/IOException;)Ljava/io/IOException;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .parameter # Ljava/io/IOException;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 4
  .line 1
    iget-object v0, p0, Lokhttp3/RealCall;->timeout:Lokio/AsyncTimeout;
    invoke-virtual { v0 }, Lokio/AsyncTimeout;->exit()Z
    move-result v0
    if-nez v0, :L0
    return-object p1
  :L0
  .line 2
    new-instance v0, Ljava/io/InterruptedIOException;
    const-string v1, "timeout"
    invoke-direct { v0, v1 }, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V
    if-eqz p1, :L1
  .line 3
    invoke-virtual { v0, p1 }, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
  :L1
    return-object v0
.end method

.method toLoggableString()Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p0 }, Lokhttp3/RealCall;->isCanceled()Z
    move-result v1
    if-eqz v1, :L0
    const-string v1, "canceled "
    goto :L1
  :L0
    const-string v1, ""
  :L1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 2
    iget-boolean v1, p0, Lokhttp3/RealCall;->forWebSocket:Z
    if-eqz v1, :L2
    const-string v1, "web socket"
    goto :L3
  :L2
    const-string v1, "call"
  :L3
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, " to "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 3
    invoke-virtual { p0 }, Lokhttp3/RealCall;->redactedUrl()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
