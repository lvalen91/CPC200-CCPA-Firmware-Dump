.class public final Lokhttp3/internal/http/RetryAndFollowUpInterceptor;
.super Ljava/lang/Object;
.implements Lokhttp3/Interceptor;
.source "SourceFile"

.field private final static MAX_FOLLOW_UPS:I = 20

.field private callStackTrace:Ljava/lang/Object;

.field private volatile canceled:Z

.field private final client:Lokhttp3/OkHttpClient;

.field private final forWebSocket:Z

.field private volatile streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

.method public constructor <init>(Lokhttp3/OkHttpClient;Z)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;
  .line 3
    iput-boolean p2, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->forWebSocket:Z
    return-void
.end method

.method private createAddress(Lokhttp3/HttpUrl;)Lokhttp3/Address;
  .registers 19
    move-object/from16 v0, p0
  .line 1
    invoke-virtual/range { p1 .. p1 }, Lokhttp3/HttpUrl;->isHttps()Z
    move-result v1
    const/4 v2, 0
    if-eqz v1, :L0
  .line 2
    iget-object v1, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;
    invoke-virtual { v1 }, Lokhttp3/OkHttpClient;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    move-result-object v2
  .line 3
    iget-object v1, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;
    invoke-virtual { v1 }, Lokhttp3/OkHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    move-result-object v1
  .line 4
    iget-object v3, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;
    invoke-virtual { v3 }, Lokhttp3/OkHttpClient;->certificatePinner()Lokhttp3/CertificatePinner;
    move-result-object v3
    move-object v10, v1
    move-object v9, v2
    move-object v11, v3
    goto :L1
  :L0
    move-object v9, v2
    move-object v10, v9
    move-object v11, v10
  :L1
  .line 5
    new-instance v1, Lokhttp3/Address;
    invoke-virtual/range { p1 .. p1 }, Lokhttp3/HttpUrl;->host()Ljava/lang/String;
    move-result-object v5
    invoke-virtual/range { p1 .. p1 }, Lokhttp3/HttpUrl;->port()I
    move-result v6
    iget-object v2, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;
    invoke-virtual { v2 }, Lokhttp3/OkHttpClient;->dns()Lokhttp3/Dns;
    move-result-object v7
    iget-object v2, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;
    invoke-virtual { v2 }, Lokhttp3/OkHttpClient;->socketFactory()Ljavax/net/SocketFactory;
    move-result-object v8
    iget-object v2, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;
  .line 6
    invoke-virtual { v2 }, Lokhttp3/OkHttpClient;->proxyAuthenticator()Lokhttp3/Authenticator;
    move-result-object v12
    iget-object v2, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;
  .line 7
    invoke-virtual { v2 }, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;
    move-result-object v13
    iget-object v2, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;
    invoke-virtual { v2 }, Lokhttp3/OkHttpClient;->protocols()Ljava/util/List;
    move-result-object v14
    iget-object v2, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;
    invoke-virtual { v2 }, Lokhttp3/OkHttpClient;->connectionSpecs()Ljava/util/List;
    move-result-object v15
    iget-object v2, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;
    invoke-virtual { v2 }, Lokhttp3/OkHttpClient;->proxySelector()Ljava/net/ProxySelector;
    move-result-object v16
    move-object v4, v1
    invoke-direct/range { v4 .. v16 }, Lokhttp3/Address;-><init>(Ljava/lang/String;ILokhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/CertificatePinner;Lokhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    return-object v1
.end method

.method private followUpRequest(Lokhttp3/Response;Lokhttp3/Route;)Lokhttp3/Request;
  .registers 9
    if-eqz p1, :L24
  .line 1
    invoke-virtual { p1 }, Lokhttp3/Response;->code()I
    move-result v0
  .line 2
    invoke-virtual { p1 }, Lokhttp3/Response;->request()Lokhttp3/Request;
    move-result-object v1
    invoke-virtual { v1 }, Lokhttp3/Request;->method()Ljava/lang/String;
    move-result-object v1
    const/16 v2, 307
    const-string v3, "GET"
    const/4 v4, 0
    if-eq v0, v2, :L13
    const/16 v2, 308
    if-eq v0, v2, :L13
    const/16 v2, 401
    if-eq v0, v2, :L12
    const/16 v2, 503
    if-eq v0, v2, :L9
    const/16 v2, 407
    if-eq v0, v2, :L5
    const/16 p2, 408
    if-eq v0, p2, :L0
    packed-switch v0, :L25
    return-object v4
  :L0
  .line 3
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;
    invoke-virtual { v0 }, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z
    move-result v0
    if-nez v0, :L1
    return-object v4
  :L1
  .line 4
    invoke-virtual { p1 }, Lokhttp3/Response;->request()Lokhttp3/Request;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/Request;->body()Lokhttp3/RequestBody;
    move-result-object v0
    instance-of v0, v0, Lokhttp3/internal/http/UnrepeatableRequestBody;
    if-eqz v0, :L2
    return-object v4
  :L2
  .line 5
    invoke-virtual { p1 }, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;
    move-result-object v0
    if-eqz v0, :L3
  .line 6
    invoke-virtual { p1 }, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/Response;->code()I
    move-result v0
    if-ne v0, p2, :L3
    return-object v4
  :L3
    const/4 p2, 0
  .line 7
    invoke-direct { p0, p1, p2 }, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->retryAfter(Lokhttp3/Response;I)I
    move-result p2
    if-lez p2, :L4
    return-object v4
  :L4
  .line 8
    invoke-virtual { p1 }, Lokhttp3/Response;->request()Lokhttp3/Request;
    move-result-object p1
    return-object p1
  :L5
    if-eqz p2, :L6
  .line 9
    invoke-virtual { p2 }, Lokhttp3/Route;->proxy()Ljava/net/Proxy;
    move-result-object v0
    goto :L7
  :L6
  .line 10
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;
    invoke-virtual { v0 }, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;
    move-result-object v0
  :L7
  .line 11
    invoke-virtual { v0 }, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;
    move-result-object v0
    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;
    if-ne v0, v1, :L8
  .line 12
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;
    invoke-virtual { v0 }, Lokhttp3/OkHttpClient;->proxyAuthenticator()Lokhttp3/Authenticator;
    move-result-object v0
    invoke-interface { v0, p2, p1 }, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    move-result-object p1
    return-object p1
  :L8
  .line 13
    new-instance p1, Ljava/net/ProtocolException;
    const-string p2, "Received HTTP_PROXY_AUTH (407) code while not using proxy"
    invoke-direct { p1, p2 }, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
    throw p1
  :L9
  .line 14
    invoke-virtual { p1 }, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;
    move-result-object p2
    if-eqz p2, :L10
  .line 15
    invoke-virtual { p1 }, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;
    move-result-object p2
    invoke-virtual { p2 }, Lokhttp3/Response;->code()I
    move-result p2
    if-ne p2, v2, :L10
    return-object v4
  :L10
    const p2, 2147483647
  .line 16
    invoke-direct { p0, p1, p2 }, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->retryAfter(Lokhttp3/Response;I)I
    move-result p2
    if-nez p2, :L11
  .line 17
    invoke-virtual { p1 }, Lokhttp3/Response;->request()Lokhttp3/Request;
    move-result-object p1
    return-object p1
  :L11
    return-object v4
  :L12
  .line 18
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;
    invoke-virtual { v0 }, Lokhttp3/OkHttpClient;->authenticator()Lokhttp3/Authenticator;
    move-result-object v0
    invoke-interface { v0, p2, p1 }, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    move-result-object p1
    return-object p1
  :L13
  .line 19
    invoke-virtual { v1, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p2
    if-nez p2, :L14
    const-string p2, "HEAD"
    invoke-virtual { v1, p2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p2
    if-nez p2, :L14
    return-object v4
  :L14
  .line 20
    iget-object p2, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;
    invoke-virtual { p2 }, Lokhttp3/OkHttpClient;->followRedirects()Z
    move-result p2
    if-nez p2, :L15
    return-object v4
  :L15
    const-string p2, "Location"
  .line 21
    invoke-virtual { p1, p2 }, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p2
    if-nez p2, :L16
    return-object v4
  :L16
  .line 22
    invoke-virtual { p1 }, Lokhttp3/Response;->request()Lokhttp3/Request;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    move-result-object v0
    invoke-virtual { v0, p2 }, Lokhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lokhttp3/HttpUrl;
    move-result-object p2
    if-nez p2, :L17
    return-object v4
  :L17
  .line 23
    invoke-virtual { p2 }, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1 }, Lokhttp3/Response;->request()Lokhttp3/Request;
    move-result-object v2
    invoke-virtual { v2 }, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    move-result-object v2
    invoke-virtual { v2 }, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v0, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L18
  .line 24
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;
    invoke-virtual { v0 }, Lokhttp3/OkHttpClient;->followSslRedirects()Z
    move-result v0
    if-nez v0, :L18
    return-object v4
  :L18
  .line 25
    invoke-virtual { p1 }, Lokhttp3/Response;->request()Lokhttp3/Request;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;
    move-result-object v0
  .line 26
    invoke-static { v1 }, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :L22
  .line 27
    invoke-static { v1 }, Lokhttp3/internal/http/HttpMethod;->redirectsWithBody(Ljava/lang/String;)Z
    move-result v2
  .line 28
    invoke-static { v1 }, Lokhttp3/internal/http/HttpMethod;->redirectsToGet(Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :L19
  .line 29
    invoke-virtual { v0, v3, v4 }, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    goto :L21
  :L19
    if-eqz v2, :L20
  .line 30
    invoke-virtual { p1 }, Lokhttp3/Response;->request()Lokhttp3/Request;
    move-result-object v3
    invoke-virtual { v3 }, Lokhttp3/Request;->body()Lokhttp3/RequestBody;
    move-result-object v4
  :L20
  .line 31
    invoke-virtual { v0, v1, v4 }, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
  :L21
    if-nez v2, :L22
    const-string v1, "Transfer-Encoding"
  .line 32
    invoke-virtual { v0, v1 }, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;
    const-string v1, "Content-Length"
  .line 33
    invoke-virtual { v0, v1 }, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;
    const-string v1, "Content-Type"
  .line 34
    invoke-virtual { v0, v1 }, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;
  :L22
  .line 35
    invoke-direct { p0, p1, p2 }, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lokhttp3/Response;Lokhttp3/HttpUrl;)Z
    move-result p1
    if-nez p1, :L23
    const-string p1, "Authorization"
  .line 36
    invoke-virtual { v0, p1 }, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;
  :L23
  .line 37
    invoke-virtual { v0, p2 }, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;
    move-result-object p1
    invoke-virtual { p1 }, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;
    move-result-object p1
    return-object p1
  :L24
  .line 38
    new-instance p1, Ljava/lang/IllegalStateException;
    invoke-direct { p1 }, Ljava/lang/IllegalStateException;-><init>()V
    throw p1
  :L25
  .packed-switch 300
    :L14
    :L14
    :L14
    :L14
  .end packed-switch
.end method

.method private isRecoverable(Ljava/io/IOException;Z)Z
  .registers 6
  .line 1
    instance-of v0, p1, Ljava/net/ProtocolException;
    const/4 v1, 0
    if-eqz v0, :L0
    return v1
  :L0
  .line 2
    instance-of v0, p1, Ljava/io/InterruptedIOException;
    const/4 v2, 1
    if-eqz v0, :L2
  .line 3
    instance-of p1, p1, Ljava/net/SocketTimeoutException;
    if-eqz p1, :L1
    if-nez p2, :L1
    const/4 v1, 1
  :L1
    return v1
  :L2
  .line 4
    instance-of p2, p1, Ljavax/net/ssl/SSLHandshakeException;
    if-eqz p2, :L3
  .line 5
    invoke-virtual { p1 }, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;
    move-result-object p2
    instance-of p2, p2, Ljava/security/cert/CertificateException;
    if-eqz p2, :L3
    return v1
  :L3
  .line 6
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;
    if-eqz p1, :L4
    return v1
  :L4
    return v2
.end method

.method private recover(Ljava/io/IOException;Lokhttp3/internal/connection/StreamAllocation;ZLokhttp3/Request;)Z
  .registers 7
  .line 1
    invoke-virtual { p2, p1 }, Lokhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V
  .line 2
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;
    invoke-virtual { v0 }, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z
    move-result v0
    const/4 v1, 0
    if-nez v0, :L0
    return v1
  :L0
    if-eqz p3, :L1
  .line 3
    invoke-virtual { p4 }, Lokhttp3/Request;->body()Lokhttp3/RequestBody;
    move-result-object p4
    instance-of p4, p4, Lokhttp3/internal/http/UnrepeatableRequestBody;
    if-eqz p4, :L1
    return v1
  :L1
  .line 4
    invoke-direct { p0, p1, p3 }, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->isRecoverable(Ljava/io/IOException;Z)Z
    move-result p1
    if-nez p1, :L2
    return v1
  :L2
  .line 5
    invoke-virtual { p2 }, Lokhttp3/internal/connection/StreamAllocation;->hasMoreRoutes()Z
    move-result p1
    if-nez p1, :L3
    return v1
  :L3
    const/4 p1, 1
    return p1
.end method

.method private retryAfter(Lokhttp3/Response;I)I
  .registers 4
    const-string v0, "Retry-After"
  .line 1
    invoke-virtual { p1, v0 }, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    if-nez p1, :L0
    return p2
  :L0
    const-string p2, "\\d+"
  .line 2
    invoke-virtual { p1, p2 }, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    move-result p2
    if-eqz p2, :L1
  .line 3
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/lang/Integer;->intValue()I
    move-result p1
    return p1
  :L1
    const p1, 2147483647
    return p1
.end method

.method private sameConnection(Lokhttp3/Response;Lokhttp3/HttpUrl;)Z
  .registers 5
  .line 1
    invoke-virtual { p1 }, Lokhttp3/Response;->request()Lokhttp3/Request;
    move-result-object p1
    invoke-virtual { p1 }, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    move-result-object p1
  .line 2
    invoke-virtual { p1 }, Lokhttp3/HttpUrl;->host()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p2 }, Lokhttp3/HttpUrl;->host()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    invoke-virtual { p1 }, Lokhttp3/HttpUrl;->port()I
    move-result v0
    invoke-virtual { p2 }, Lokhttp3/HttpUrl;->port()I
    move-result v1
    if-ne v0, v1, :L0
  .line 4
    invoke-virtual { p1 }, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p2 }, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;
    move-result-object p2
    invoke-virtual { p1, p2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method public cancel()V
  .registers 2
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z
  .line 2
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0 }, Lokhttp3/internal/connection/StreamAllocation;->cancel()V
  :L0
    return-void
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
  .catch Lokhttp3/internal/connection/RouteException; { :L1 .. :L2 } :L18
  .catch Ljava/io/IOException; { :L1 .. :L2 } :L13
  .catchall { :L1 .. :L2 } :L12
  .catch Ljava/io/IOException; { :L3 .. :L4 } :L11
  .catchall { :L14 .. :L20 } :L12
  .registers 16
  .line 1
    invoke-interface { p1 }, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;
    move-result-object v0
  .line 2
    check-cast p1, Lokhttp3/internal/http/RealInterceptorChain;
  .line 3
    invoke-virtual { p1 }, Lokhttp3/internal/http/RealInterceptorChain;->call()Lokhttp3/Call;
    move-result-object v7
  .line 4
    invoke-virtual { p1 }, Lokhttp3/internal/http/RealInterceptorChain;->eventListener()Lokhttp3/EventListener;
    move-result-object v8
  .line 5
    new-instance v9, Lokhttp3/internal/connection/StreamAllocation;
    iget-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;
    invoke-virtual { v1 }, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;
    move-result-object v2
  .line 6
    invoke-virtual { v0 }, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    move-result-object v1
    invoke-direct { p0, v1 }, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->createAddress(Lokhttp3/HttpUrl;)Lokhttp3/Address;
    move-result-object v3
    iget-object v6, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;
    move-object v1, v9
    move-object v4, v7
    move-object v5, v8
    invoke-direct/range { v1 .. v6 }, Lokhttp3/internal/connection/StreamAllocation;-><init>(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/Call;Lokhttp3/EventListener;Ljava/lang/Object;)V
  .line 7
    iput-object v9, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;
    const/4 v10, 0
    const/4 v11, 0
    move-object v1, v11
    const/4 v2, 0
  :L0
  .line 8
    iget-boolean v3, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z
    if-nez v3, :L21
  :L1
  .line 9
    invoke-virtual { p1, v0, v9, v11, v11 }, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/http/HttpCodec;Lokhttp3/internal/connection/RealConnection;)Lokhttp3/Response;
    move-result-object v0
  :L2
    if-eqz v1, :L3
  .line 10
    invoke-virtual { v0 }, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;
    move-result-object v0
  .line 11
    invoke-virtual { v1 }, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;
    move-result-object v1
  .line 12
    invoke-virtual { v1, v11 }, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;
    move-result-object v1
  .line 13
    invoke-virtual { v1 }, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;
    move-result-object v1
  .line 14
    invoke-virtual { v0, v1 }, Lokhttp3/Response$Builder;->priorResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;
    move-result-object v0
  .line 15
    invoke-virtual { v0 }, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;
    move-result-object v0
  :L3
  .line 16
    invoke-virtual { v9 }, Lokhttp3/internal/connection/StreamAllocation;->route()Lokhttp3/Route;
    move-result-object v1
    invoke-direct { p0, v0, v1 }, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->followUpRequest(Lokhttp3/Response;Lokhttp3/Route;)Lokhttp3/Request;
    move-result-object v12
  :L4
    if-nez v12, :L5
  .line 17
    invoke-virtual { v9 }, Lokhttp3/internal/connection/StreamAllocation;->release()V
    return-object v0
  :L5
  .line 18
    invoke-virtual { v0 }, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;
    move-result-object v1
    invoke-static { v1 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V
    add-int/lit8 v13, v2, 1
    const/16 v1, 20
    if-gt v13, v1, :L10
  .line 19
    invoke-virtual { v12 }, Lokhttp3/Request;->body()Lokhttp3/RequestBody;
    move-result-object v1
    instance-of v1, v1, Lokhttp3/internal/http/UnrepeatableRequestBody;
    if-nez v1, :L9
  .line 20
    invoke-virtual { v12 }, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    move-result-object v1
    invoke-direct { p0, v0, v1 }, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lokhttp3/Response;Lokhttp3/HttpUrl;)Z
    move-result v1
    if-nez v1, :L6
  .line 21
    invoke-virtual { v9 }, Lokhttp3/internal/connection/StreamAllocation;->release()V
  .line 22
    new-instance v9, Lokhttp3/internal/connection/StreamAllocation;
    iget-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;
    invoke-virtual { v1 }, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;
    move-result-object v2
  .line 23
    invoke-virtual { v12 }, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    move-result-object v1
    invoke-direct { p0, v1 }, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->createAddress(Lokhttp3/HttpUrl;)Lokhttp3/Address;
    move-result-object v3
    iget-object v6, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;
    move-object v1, v9
    move-object v4, v7
    move-object v5, v8
    invoke-direct/range { v1 .. v6 }, Lokhttp3/internal/connection/StreamAllocation;-><init>(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/Call;Lokhttp3/EventListener;Ljava/lang/Object;)V
  .line 24
    iput-object v9, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;
    goto :L7
  :L6
  .line 25
    invoke-virtual { v9 }, Lokhttp3/internal/connection/StreamAllocation;->codec()Lokhttp3/internal/http/HttpCodec;
    move-result-object v1
    if-nez v1, :L8
  :L7
    move-object v1, v0
    move-object v0, v12
    move v2, v13
    goto :L0
  :L8
  .line 26
    new-instance p1, Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Closing the body of "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v0, " didn't close its backing stream. Bad interceptor?"
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L9
  .line 27
    invoke-virtual { v9 }, Lokhttp3/internal/connection/StreamAllocation;->release()V
  .line 28
    new-instance p1, Ljava/net/HttpRetryException;
    invoke-virtual { v0 }, Lokhttp3/Response;->code()I
    move-result v0
    const-string v1, "Cannot retry streamed HTTP body"
    invoke-direct { p1, v1, v0 }, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V
    throw p1
  :L10
  .line 29
    invoke-virtual { v9 }, Lokhttp3/internal/connection/StreamAllocation;->release()V
  .line 30
    new-instance p1, Ljava/net/ProtocolException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Too many follow-up requests: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v13 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p1, v0 }, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
    throw p1
  :L11
    move-exception p1
  .line 31
    invoke-virtual { v9 }, Lokhttp3/internal/connection/StreamAllocation;->release()V
  .line 32
    throw p1
  :L12
    move-exception p1
    goto :L20
  :L13
    move-exception v3
  :L14
  .line 33
    instance-of v4, v3, Lokhttp3/internal/http2/ConnectionShutdownException;
    if-nez v4, :L15
    const/4 v4, 1
    goto :L16
  :L15
    const/4 v4, 0
  :L16
  .line 34
    invoke-direct { p0, v3, v9, v4, v0 }, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Lokhttp3/internal/connection/StreamAllocation;ZLokhttp3/Request;)Z
    move-result v4
    if-eqz v4, :L17
    goto/16 :L0
  :L17
    throw v3
  :L18
    move-exception v3
  .line 35
    invoke-virtual { v3 }, Lokhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;
    move-result-object v4
    invoke-direct { p0, v4, v9, v10, v0 }, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Lokhttp3/internal/connection/StreamAllocation;ZLokhttp3/Request;)Z
    move-result v4
    if-eqz v4, :L19
    goto/16 :L0
  :L19
  .line 36
    invoke-virtual { v3 }, Lokhttp3/internal/connection/RouteException;->getFirstConnectException()Ljava/io/IOException;
    move-result-object p1
    throw p1
  :L20
  .line 37
    invoke-virtual { v9, v11 }, Lokhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V
  .line 38
    invoke-virtual { v9 }, Lokhttp3/internal/connection/StreamAllocation;->release()V
    throw p1
  :L21
  .line 39
    invoke-virtual { v9 }, Lokhttp3/internal/connection/StreamAllocation;->release()V
  .line 40
    new-instance p1, Ljava/io/IOException;
    const-string v0, "Canceled"
    invoke-direct { p1, v0 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    goto :L23
  :L22
    throw p1
  :L23
    goto :L22
.end method

.method public isCanceled()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z
    return v0
.end method

.method public setCallStackTrace(Ljava/lang/Object;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;
    return-void
.end method

.method public streamAllocation()Lokhttp3/internal/connection/StreamAllocation;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;
    return-object v0
.end method
