.class public final Lokhttp3/internal/http/BridgeInterceptor;
.super Ljava/lang/Object;
.implements Lokhttp3/Interceptor;
.source "SourceFile"

.field private final cookieJar:Lokhttp3/CookieJar;

.method public constructor <init>(Lokhttp3/CookieJar;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Lokhttp3/CookieJar;
    return-void
.end method

.method private cookieHeader(Ljava/util/List;)Ljava/lang/String;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Lokhttp3/Cookie;",
      ">;)",
      "Ljava/lang/String;"
    }
  .end annotation
  .registers 7
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
  .line 2
    invoke-interface { p1 }, Ljava/util/List;->size()I
    move-result v1
    const/4 v2, 0
  :L0
    if-ge v2, v1, :L2
    if-lez v2, :L1
    const-string v3, "; "
  .line 3
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L1
  .line 4
    invoke-interface { p1, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lokhttp3/Cookie;
  .line 5
    invoke-virtual { v3 }, Lokhttp3/Cookie;->name()Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/16 v4, 61
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Lokhttp3/Cookie;->value()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    add-int/lit8 v2, v2, 1
    goto :L0
  :L2
  .line 6
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    return-object p1
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
  .registers 12
  .line 1
    invoke-interface { p1 }, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;
    move-result-object v0
  .line 2
    invoke-virtual { v0 }, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;
    move-result-object v1
  .line 3
    invoke-virtual { v0 }, Lokhttp3/Request;->body()Lokhttp3/RequestBody;
    move-result-object v2
    const-string v3, "Content-Type"
    const-wide/16 v4, -1
    const-string v6, "Content-Length"
    if-eqz v2, :L2
  .line 4
    invoke-virtual { v2 }, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;
    move-result-object v7
    if-eqz v7, :L0
  .line 5
    invoke-virtual { v7 }, Lokhttp3/MediaType;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-virtual { v1, v3, v7 }, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
  :L0
  .line 6
    invoke-virtual { v2 }, Lokhttp3/RequestBody;->contentLength()J
    move-result-wide v7
    const-string v2, "Transfer-Encoding"
    cmp-long v9, v7, v4
    if-eqz v9, :L1
  .line 7
    invoke-static { v7, v8 }, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v7
    invoke-virtual { v1, v6, v7 }, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
  .line 8
    invoke-virtual { v1, v2 }, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;
    goto :L2
  :L1
    const-string v7, "chunked"
  .line 9
    invoke-virtual { v1, v2, v7 }, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
  .line 10
    invoke-virtual { v1, v6 }, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;
  :L2
    const-string v2, "Host"
  .line 11
    invoke-virtual { v0, v2 }, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    const/4 v8, 0
    if-nez v7, :L3
  .line 12
    invoke-virtual { v0 }, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    move-result-object v7
    invoke-static { v7, v8 }, Lokhttp3/internal/Util;->hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;
    move-result-object v7
    invoke-virtual { v1, v2, v7 }, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
  :L3
    const-string v2, "Connection"
  .line 13
    invoke-virtual { v0, v2 }, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    if-nez v7, :L4
    const-string v7, "Keep-Alive"
  .line 14
    invoke-virtual { v1, v2, v7 }, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
  :L4
    const-string v2, "Accept-Encoding"
  .line 15
    invoke-virtual { v0, v2 }, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    const-string v9, "gzip"
    if-nez v7, :L5
    const-string v7, "Range"
    invoke-virtual { v0, v7 }, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    if-nez v7, :L5
    const/4 v8, 1
  .line 16
    invoke-virtual { v1, v2, v9 }, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
  :L5
  .line 17
    iget-object v2, p0, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Lokhttp3/CookieJar;
    invoke-virtual { v0 }, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    move-result-object v7
    invoke-interface { v2, v7 }, Lokhttp3/CookieJar;->loadForRequest(Lokhttp3/HttpUrl;)Ljava/util/List;
    move-result-object v2
  .line 18
    invoke-interface { v2 }, Ljava/util/List;->isEmpty()Z
    move-result v7
    if-nez v7, :L6
  .line 19
    invoke-direct { p0, v2 }, Lokhttp3/internal/http/BridgeInterceptor;->cookieHeader(Ljava/util/List;)Ljava/lang/String;
    move-result-object v2
    const-string v7, "Cookie"
    invoke-virtual { v1, v7, v2 }, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
  :L6
    const-string v2, "User-Agent"
  .line 20
    invoke-virtual { v0, v2 }, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    if-nez v7, :L7
  .line 21
    invoke-static { }, Lokhttp3/internal/Version;->userAgent()Ljava/lang/String;
    move-result-object v7
    invoke-virtual { v1, v2, v7 }, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
  :L7
  .line 22
    invoke-virtual { v1 }, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;
    move-result-object v1
    invoke-interface { p1, v1 }, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;
    move-result-object p1
  .line 23
    iget-object v1, p0, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Lokhttp3/CookieJar;
    invoke-virtual { v0 }, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    move-result-object v2
    invoke-virtual { p1 }, Lokhttp3/Response;->headers()Lokhttp3/Headers;
    move-result-object v7
    invoke-static { v1, v2, v7 }, Lokhttp3/internal/http/HttpHeaders;->receiveHeaders(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V
  .line 24
    invoke-virtual { p1 }, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;
    move-result-object v1
  .line 25
    invoke-virtual { v1, v0 }, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;
    move-result-object v0
    if-eqz v8, :L8
    const-string v1, "Content-Encoding"
  .line 26
    invoke-virtual { p1, v1 }, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v9, v2 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :L8
  .line 27
    invoke-static { p1 }, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z
    move-result v2
    if-eqz v2, :L8
  .line 28
    new-instance v2, Lokio/GzipSource;
    invoke-virtual { p1 }, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;
    move-result-object v7
    invoke-virtual { v7 }, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;
    move-result-object v7
    invoke-direct { v2, v7 }, Lokio/GzipSource;-><init>(Lokio/Source;)V
  .line 29
    invoke-virtual { p1 }, Lokhttp3/Response;->headers()Lokhttp3/Headers;
    move-result-object v7
    invoke-virtual { v7 }, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;
    move-result-object v7
  .line 30
    invoke-virtual { v7, v1 }, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;
    move-result-object v1
  .line 31
    invoke-virtual { v1, v6 }, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;
    move-result-object v1
  .line 32
    invoke-virtual { v1 }, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;
    move-result-object v1
  .line 33
    invoke-virtual { v0, v1 }, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;
  .line 34
    invoke-virtual { p1, v3 }, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
  .line 35
    new-instance v1, Lokhttp3/internal/http/RealResponseBody;
    invoke-static { v2 }, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;
    move-result-object v2
    invoke-direct { v1, p1, v4, v5, v2 }, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V
    invoke-virtual { v0, v1 }, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;
  :L8
  .line 36
    invoke-virtual { v0 }, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;
    move-result-object p1
    return-object p1
.end method
