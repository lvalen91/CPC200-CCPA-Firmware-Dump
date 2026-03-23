.class public final Lokhttp3/internal/cache/CacheInterceptor;
.super Ljava/lang/Object;
.implements Lokhttp3/Interceptor;
.source "SourceFile"

.field final cache:Lokhttp3/internal/cache/InternalCache;

.method public constructor <init>(Lokhttp3/internal/cache/InternalCache;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;
    return-void
.end method

.method private cacheWritingResponse(Lokhttp3/internal/cache/CacheRequest;Lokhttp3/Response;)Lokhttp3/Response;
  .registers 7
    if-nez p1, :L0
    return-object p2
  :L0
  .line 1
    invoke-interface { p1 }, Lokhttp3/internal/cache/CacheRequest;->body()Lokio/Sink;
    move-result-object v0
    if-nez v0, :L1
    return-object p2
  :L1
  .line 2
    invoke-virtual { p2 }, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;
    move-result-object v1
    invoke-virtual { v1 }, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;
    move-result-object v1
  .line 3
    invoke-static { v0 }, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;
    move-result-object v0
  .line 4
    new-instance v2, Lokhttp3/internal/cache/CacheInterceptor$1;
    invoke-direct { v2, p0, v1, p1, v0 }, Lokhttp3/internal/cache/CacheInterceptor$1;-><init>(Lokhttp3/internal/cache/CacheInterceptor;Lokio/BufferedSource;Lokhttp3/internal/cache/CacheRequest;Lokio/BufferedSink;)V
    const-string p1, "Content-Type"
  .line 5
    invoke-virtual { p2, p1 }, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
  .line 6
    invoke-virtual { p2 }, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/ResponseBody;->contentLength()J
    move-result-wide v0
  .line 7
    invoke-virtual { p2 }, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;
    move-result-object p2
    new-instance v3, Lokhttp3/internal/http/RealResponseBody;
  .line 8
    invoke-static { v2 }, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;
    move-result-object v2
    invoke-direct { v3, p1, v0, v1, v2 }, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V
    invoke-virtual { p2, v3 }, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;
    move-result-object p1
  .line 9
    invoke-virtual { p1 }, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;
    move-result-object p1
    return-object p1
.end method

.method private static combine(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;
  .registers 9
  .line 1
    new-instance v0, Lokhttp3/Headers$Builder;
    invoke-direct { v0 }, Lokhttp3/Headers$Builder;-><init>()V
  .line 2
    invoke-virtual { p0 }, Lokhttp3/Headers;->size()I
    move-result v1
    const/4 v2, 0
    const/4 v3, 0
  :L0
    if-ge v3, v1, :L4
  .line 3
    invoke-virtual { p0, v3 }, Lokhttp3/Headers;->name(I)Ljava/lang/String;
    move-result-object v4
  .line 4
    invoke-virtual { p0, v3 }, Lokhttp3/Headers;->value(I)Ljava/lang/String;
    move-result-object v5
    const-string v6, "Warning"
  .line 5
    invoke-virtual { v6, v4 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v6
    if-eqz v6, :L1
    const-string v6, "1"
    invoke-virtual { v5, v6 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v6
    if-eqz v6, :L1
    goto :L3
  :L1
  .line 6
    invoke-static { v4 }, Lokhttp3/internal/cache/CacheInterceptor;->isContentSpecificHeader(Ljava/lang/String;)Z
    move-result v6
    if-nez v6, :L2
    invoke-static { v4 }, Lokhttp3/internal/cache/CacheInterceptor;->isEndToEnd(Ljava/lang/String;)Z
    move-result v6
    if-eqz v6, :L2
  .line 7
    invoke-virtual { p1, v4 }, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v6
    if-nez v6, :L3
  :L2
  .line 8
    sget-object v6, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;
    invoke-virtual { v6, v0, v4, v5 }, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
  :L3
    add-int/lit8 v3, v3, 1
    goto :L0
  :L4
  .line 9
    invoke-virtual { p1 }, Lokhttp3/Headers;->size()I
    move-result p0
  :L5
    if-ge v2, p0, :L7
  .line 10
    invoke-virtual { p1, v2 }, Lokhttp3/Headers;->name(I)Ljava/lang/String;
    move-result-object v1
  .line 11
    invoke-static { v1 }, Lokhttp3/internal/cache/CacheInterceptor;->isContentSpecificHeader(Ljava/lang/String;)Z
    move-result v3
    if-nez v3, :L6
    invoke-static { v1 }, Lokhttp3/internal/cache/CacheInterceptor;->isEndToEnd(Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :L6
  .line 12
    sget-object v3, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;
    invoke-virtual { p1, v2 }, Lokhttp3/Headers;->value(I)Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v3, v0, v1, v4 }, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
  :L6
    add-int/lit8 v2, v2, 1
    goto :L5
  :L7
  .line 13
    invoke-virtual { v0 }, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;
    move-result-object p0
    return-object p0
.end method

.method static isContentSpecificHeader(Ljava/lang/String;)Z
  .registers 2
    const-string v0, "Content-Length"
  .line 1
    invoke-virtual { v0, p0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L1
    const-string v0, "Content-Encoding"
  .line 2
    invoke-virtual { v0, p0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L1
    const-string v0, "Content-Type"
  .line 3
    invoke-virtual { v0, p0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result p0
    if-eqz p0, :L0
    goto :L1
  :L0
    const/4 p0, 0
    goto :L2
  :L1
    const/4 p0, 1
  :L2
    return p0
.end method

.method static isEndToEnd(Ljava/lang/String;)Z
  .registers 2
    const-string v0, "Connection"
  .line 1
    invoke-virtual { v0, p0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L0
    const-string v0, "Keep-Alive"
  .line 2
    invoke-virtual { v0, p0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L0
    const-string v0, "Proxy-Authenticate"
  .line 3
    invoke-virtual { v0, p0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L0
    const-string v0, "Proxy-Authorization"
  .line 4
    invoke-virtual { v0, p0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L0
    const-string v0, "TE"
  .line 5
    invoke-virtual { v0, p0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L0
    const-string v0, "Trailers"
  .line 6
    invoke-virtual { v0, p0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L0
    const-string v0, "Transfer-Encoding"
  .line 7
    invoke-virtual { v0, p0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L0
    const-string v0, "Upgrade"
  .line 8
    invoke-virtual { v0, p0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result p0
    if-nez p0, :L0
    const/4 p0, 1
    goto :L1
  :L0
    const/4 p0, 0
  :L1
    return p0
.end method

.method private static stripBody(Lokhttp3/Response;)Lokhttp3/Response;
  .registers 2
    if-eqz p0, :L0
  .line 1
    invoke-virtual { p0 }, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p0 }, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;
    move-result-object p0
    const/4 v0, 0
    invoke-virtual { p0, v0 }, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;
    move-result-object p0
    invoke-virtual { p0 }, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;
    move-result-object p0
  :L0
    return-object p0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
  .catchall { :L5 .. :L6 } :L13
  .catch Ljava/io/IOException; { :L11 .. :L12 } :L12
  .registers 7
  .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;
    if-eqz v0, :L0
  .line 2
    invoke-interface { p1 }, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;
    move-result-object v1
    invoke-interface { v0, v1 }, Lokhttp3/internal/cache/InternalCache;->get(Lokhttp3/Request;)Lokhttp3/Response;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
  .line 3
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v1
  .line 4
    new-instance v3, Lokhttp3/internal/cache/CacheStrategy$Factory;
    invoke-interface { p1 }, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;
    move-result-object v4
    invoke-direct { v3, v1, v2, v4, v0 }, Lokhttp3/internal/cache/CacheStrategy$Factory;-><init>(JLokhttp3/Request;Lokhttp3/Response;)V
    invoke-virtual { v3 }, Lokhttp3/internal/cache/CacheStrategy$Factory;->get()Lokhttp3/internal/cache/CacheStrategy;
    move-result-object v1
  .line 5
    iget-object v2, v1, Lokhttp3/internal/cache/CacheStrategy;->networkRequest:Lokhttp3/Request;
  .line 6
    iget-object v3, v1, Lokhttp3/internal/cache/CacheStrategy;->cacheResponse:Lokhttp3/Response;
  .line 7
    iget-object v4, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;
    if-eqz v4, :L2
  .line 8
    invoke-interface { v4, v1 }, Lokhttp3/internal/cache/InternalCache;->trackResponse(Lokhttp3/internal/cache/CacheStrategy;)V
  :L2
    if-eqz v0, :L3
    if-nez v3, :L3
  .line 9
    invoke-virtual { v0 }, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;
    move-result-object v1
    invoke-static { v1 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V
  :L3
    if-nez v2, :L4
    if-nez v3, :L4
  .line 10
    new-instance v0, Lokhttp3/Response$Builder;
    invoke-direct { v0 }, Lokhttp3/Response$Builder;-><init>()V
  .line 11
    invoke-interface { p1 }, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;
    move-result-object p1
    invoke-virtual { v0, p1 }, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;
    move-result-object p1
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;
  .line 12
    invoke-virtual { p1, v0 }, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;
    move-result-object p1
    const/16 v0, 504
  .line 13
    invoke-virtual { p1, v0 }, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;
    move-result-object p1
    const-string v0, "Unsatisfiable Request (only-if-cached)"
  .line 14
    invoke-virtual { p1, v0 }, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;
    move-result-object p1
    sget-object v0, Lokhttp3/internal/Util;->EMPTY_RESPONSE:Lokhttp3/ResponseBody;
  .line 15
    invoke-virtual { p1, v0 }, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;
    move-result-object p1
    const-wide/16 v0, -1
  .line 16
    invoke-virtual { p1, v0, v1 }, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;
    move-result-object p1
  .line 17
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    invoke-virtual { p1, v0, v1 }, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;
    move-result-object p1
  .line 18
    invoke-virtual { p1 }, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;
    move-result-object p1
    return-object p1
  :L4
    if-nez v2, :L5
  .line 19
    invoke-virtual { v3 }, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;
    move-result-object p1
  .line 20
    invoke-static { v3 }, Lokhttp3/internal/cache/CacheInterceptor;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;
    move-result-object v0
    invoke-virtual { p1, v0 }, Lokhttp3/Response$Builder;->cacheResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;
    move-result-object p1
  .line 21
    invoke-virtual { p1 }, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;
    move-result-object p1
    return-object p1
  :L5
  .line 22
    invoke-interface { p1, v2 }, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;
    move-result-object p1
  :L6
    if-nez p1, :L7
    if-eqz v0, :L7
  .line 23
    invoke-virtual { v0 }, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;
    move-result-object v0
    invoke-static { v0 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V
  :L7
    if-eqz v3, :L9
  .line 24
    invoke-virtual { p1 }, Lokhttp3/Response;->code()I
    move-result v0
    const/16 v1, 304
    if-ne v0, v1, :L8
  .line 25
    invoke-virtual { v3 }, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;
    move-result-object v0
  .line 26
    invoke-virtual { v3 }, Lokhttp3/Response;->headers()Lokhttp3/Headers;
    move-result-object v1
    invoke-virtual { p1 }, Lokhttp3/Response;->headers()Lokhttp3/Headers;
    move-result-object v2
    invoke-static { v1, v2 }, Lokhttp3/internal/cache/CacheInterceptor;->combine(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;
    move-result-object v0
  .line 27
    invoke-virtual { p1 }, Lokhttp3/Response;->sentRequestAtMillis()J
    move-result-wide v1
    invoke-virtual { v0, v1, v2 }, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;
    move-result-object v0
  .line 28
    invoke-virtual { p1 }, Lokhttp3/Response;->receivedResponseAtMillis()J
    move-result-wide v1
    invoke-virtual { v0, v1, v2 }, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;
    move-result-object v0
  .line 29
    invoke-static { v3 }, Lokhttp3/internal/cache/CacheInterceptor;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lokhttp3/Response$Builder;->cacheResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;
    move-result-object v0
  .line 30
    invoke-static { p1 }, Lokhttp3/internal/cache/CacheInterceptor;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lokhttp3/Response$Builder;->networkResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;
    move-result-object v0
  .line 31
    invoke-virtual { v0 }, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;
    move-result-object v0
  .line 32
    invoke-virtual { p1 }, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;
    move-result-object p1
    invoke-virtual { p1 }, Lokhttp3/ResponseBody;->close()V
  .line 33
    iget-object p1, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;
    invoke-interface { p1 }, Lokhttp3/internal/cache/InternalCache;->trackConditionalCacheHit()V
  .line 34
    iget-object p1, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;
    invoke-interface { p1, v3, v0 }, Lokhttp3/internal/cache/InternalCache;->update(Lokhttp3/Response;Lokhttp3/Response;)V
    return-object v0
  :L8
  .line 35
    invoke-virtual { v3 }, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;
    move-result-object v0
    invoke-static { v0 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V
  :L9
  .line 36
    invoke-virtual { p1 }, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;
    move-result-object v0
  .line 37
    invoke-static { v3 }, Lokhttp3/internal/cache/CacheInterceptor;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lokhttp3/Response$Builder;->cacheResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;
    move-result-object v0
  .line 38
    invoke-static { p1 }, Lokhttp3/internal/cache/CacheInterceptor;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;
    move-result-object p1
    invoke-virtual { v0, p1 }, Lokhttp3/Response$Builder;->networkResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;
    move-result-object p1
  .line 39
    invoke-virtual { p1 }, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;
    move-result-object p1
  .line 40
    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;
    if-eqz v0, :L12
  .line 41
    invoke-static { p1 }, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z
    move-result v0
    if-eqz v0, :L10
    invoke-static { p1, v2 }, Lokhttp3/internal/cache/CacheStrategy;->isCacheable(Lokhttp3/Response;Lokhttp3/Request;)Z
    move-result v0
    if-eqz v0, :L10
  .line 42
    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;
    invoke-interface { v0, p1 }, Lokhttp3/internal/cache/InternalCache;->put(Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;
    move-result-object v0
  .line 43
    invoke-direct { p0, v0, p1 }, Lokhttp3/internal/cache/CacheInterceptor;->cacheWritingResponse(Lokhttp3/internal/cache/CacheRequest;Lokhttp3/Response;)Lokhttp3/Response;
    move-result-object p1
    return-object p1
  :L10
  .line 44
    invoke-virtual { v2 }, Lokhttp3/Request;->method()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lokhttp3/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L12
  :L11
  .line 45
    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;
    invoke-interface { v0, v2 }, Lokhttp3/internal/cache/InternalCache;->remove(Lokhttp3/Request;)V
  :L12
    return-object p1
  :L13
    move-exception p1
    if-eqz v0, :L14
  .line 46
    invoke-virtual { v0 }, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;
    move-result-object v0
    invoke-static { v0 }, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V
  :L14
    throw p1
.end method
