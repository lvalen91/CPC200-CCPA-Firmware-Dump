.class final Lokhttp3/RealCall$AsyncCall;
.super Lokhttp3/internal/NamedRunnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/RealCall;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 16
  name = "AsyncCall"
.end annotation

.field final static synthetic $assertionsDisabled:Z

.field private final responseCallback:Lokhttp3/Callback;

.field final synthetic this$0:Lokhttp3/RealCall;

.method static constructor <clinit>()V
  .registers 1
  .line 1
    const-class v0, Lokhttp3/RealCall;
    return-void
.end method

.method constructor <init>(Lokhttp3/RealCall;Lokhttp3/Callback;)V
  .registers 5
  .line 1
    iput-object p1, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;
    const/4 v0, 1
    new-array v0, v0, [Ljava/lang/Object;
  .line 2
    invoke-virtual { p1 }, Lokhttp3/RealCall;->redactedUrl()Ljava/lang/String;
    move-result-object p1
    const/4 v1, 0
    aput-object p1, v0, v1
    const-string p1, "OkHttp %s"
    invoke-direct { p0, p1, v0 }, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V
  .line 3
    iput-object p2, p0, Lokhttp3/RealCall$AsyncCall;->responseCallback:Lokhttp3/Callback;
    return-void
.end method

.method protected execute()V
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L7
  .catchall { :L0 .. :L1 } :L6
  .catch Ljava/io/IOException; { :L2 .. :L4 } :L5
  .catchall { :L2 .. :L4 } :L6
  .catchall { :L8 .. :L10 } :L6
  .registers 6
  .line 1
    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;
    iget-object v0, v0, Lokhttp3/RealCall;->timeout:Lokio/AsyncTimeout;
    invoke-virtual { v0 }, Lokio/AsyncTimeout;->enter()V
    const/4 v0, 1
    const/4 v1, 0
  :L0
  .line 2
    iget-object v2, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;
    invoke-virtual { v2 }, Lokhttp3/RealCall;->getResponseWithInterceptorChain()Lokhttp3/Response;
    move-result-object v2
  .line 3
    iget-object v3, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;
    iget-object v3, v3, Lokhttp3/RealCall;->retryAndFollowUpInterceptor:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;
    invoke-virtual { v3 }, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->isCanceled()Z
    move-result v1
  :L1
    if-eqz v1, :L3
  :L2
  .line 4
    iget-object v1, p0, Lokhttp3/RealCall$AsyncCall;->responseCallback:Lokhttp3/Callback;
    iget-object v2, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;
    new-instance v3, Ljava/io/IOException;
    const-string v4, "Canceled"
    invoke-direct { v3, v4 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    invoke-interface { v1, v2, v3 }, Lokhttp3/Callback;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    goto :L4
  :L3
  .line 5
    iget-object v1, p0, Lokhttp3/RealCall$AsyncCall;->responseCallback:Lokhttp3/Callback;
    iget-object v3, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;
    invoke-interface { v1, v3, v2 }, Lokhttp3/Callback;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
  :L4
  .line 6
    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;
    iget-object v0, v0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;
    invoke-virtual { v0 }, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;
    move-result-object v0
    invoke-virtual { v0, p0 }, Lokhttp3/Dispatcher;->finished(Lokhttp3/RealCall$AsyncCall;)V
    goto :L11
  :L5
    move-exception v1
    goto :L8
  :L6
    move-exception v0
    goto :L12
  :L7
    move-exception v0
    move-object v1, v0
    const/4 v0, 0
  :L8
  .line 7
    iget-object v2, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;
    invoke-virtual { v2, v1 }, Lokhttp3/RealCall;->timeoutExit(Ljava/io/IOException;)Ljava/io/IOException;
    move-result-object v1
    if-eqz v0, :L9
  .line 8
    invoke-static { }, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;
    move-result-object v0
    const/4 v2, 4
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "Callback failure for "
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v4, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;
    invoke-virtual { v4 }, Lokhttp3/RealCall;->toLoggableString()Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v0, v2, v3, v1 }, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    goto :L4
  :L9
  .line 9
    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;
    invoke-static { v0 }, Lokhttp3/RealCall;->access$000(Lokhttp3/RealCall;)Lokhttp3/EventListener;
    move-result-object v0
    iget-object v2, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;
    invoke-virtual { v0, v2, v1 }, Lokhttp3/EventListener;->callFailed(Lokhttp3/Call;Ljava/io/IOException;)V
  .line 10
    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->responseCallback:Lokhttp3/Callback;
    iget-object v2, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;
    invoke-interface { v0, v2, v1 }, Lokhttp3/Callback;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
  :L10
    goto :L4
  :L11
    return-void
  :L12
  .line 11
    iget-object v1, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;
    iget-object v1, v1, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;
    invoke-virtual { v1 }, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;
    move-result-object v1
    invoke-virtual { v1, p0 }, Lokhttp3/Dispatcher;->finished(Lokhttp3/RealCall$AsyncCall;)V
    goto :L14
  :L13
    throw v0
  :L14
    goto :L13
.end method

.method executeOn(Ljava/util/concurrent/ExecutorService;)V
  .catch Ljava/util/concurrent/RejectedExecutionException; { :L0 .. :L1 } :L3
  .catchall { :L0 .. :L1 } :L2
  .catchall { :L4 .. :L5 } :L2
  .registers 4
  :L0
  .line 1
    invoke-interface { p1, p0 }, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
  :L1
    goto :L6
  :L2
    move-exception p1
    goto :L7
  :L3
    move-exception p1
  :L4
  .line 2
    new-instance v0, Ljava/io/InterruptedIOException;
    const-string v1, "executor rejected"
    invoke-direct { v0, v1 }, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V
  .line 3
    invoke-virtual { v0, p1 }, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
  .line 4
    iget-object p1, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;
    invoke-static { p1 }, Lokhttp3/RealCall;->access$000(Lokhttp3/RealCall;)Lokhttp3/EventListener;
    move-result-object p1
    iget-object v1, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;
    invoke-virtual { p1, v1, v0 }, Lokhttp3/EventListener;->callFailed(Lokhttp3/Call;Ljava/io/IOException;)V
  .line 5
    iget-object p1, p0, Lokhttp3/RealCall$AsyncCall;->responseCallback:Lokhttp3/Callback;
    iget-object v1, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;
    invoke-interface { p1, v1, v0 }, Lokhttp3/Callback;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
  :L5
  .line 6
    iget-object p1, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;
    iget-object p1, p1, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;
    invoke-virtual { p1 }, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;
    move-result-object p1
    invoke-virtual { p1, p0 }, Lokhttp3/Dispatcher;->finished(Lokhttp3/RealCall$AsyncCall;)V
  :L6
    return-void
  :L7
    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;
    iget-object v0, v0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;
    invoke-virtual { v0 }, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;
    move-result-object v0
    invoke-virtual { v0, p0 }, Lokhttp3/Dispatcher;->finished(Lokhttp3/RealCall$AsyncCall;)V
    throw p1
.end method

.method get()Lokhttp3/RealCall;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;
    return-object v0
.end method

.method host()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;
    iget-object v0, v0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;
    invoke-virtual { v0 }, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/HttpUrl;->host()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method request()Lokhttp3/Request;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;
    iget-object v0, v0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;
    return-object v0
.end method
