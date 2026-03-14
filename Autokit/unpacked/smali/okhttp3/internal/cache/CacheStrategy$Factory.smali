.class public Lokhttp3/internal/cache/CacheStrategy$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/internal/cache/CacheStrategy;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "Factory"
.end annotation

.field private ageSeconds:I

.field final cacheResponse:Lokhttp3/Response;

.field private etag:Ljava/lang/String;

.field private expires:Ljava/util/Date;

.field private lastModified:Ljava/util/Date;

.field private lastModifiedString:Ljava/lang/String;

.field final nowMillis:J

.field private receivedResponseMillis:J

.field final request:Lokhttp3/Request;

.field private sentRequestMillis:J

.field private servedDate:Ljava/util/Date;

.field private servedDateString:Ljava/lang/String;

.method public constructor <init>(JLokhttp3/Request;Lokhttp3/Response;)V
  .registers 8
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, -1
  .line 2
    iput v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I
  .line 3
    iput-wide p1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->nowMillis:J
  .line 4
    iput-object p3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;
  .line 5
    iput-object p4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;
    if-eqz p4, :L6
  .line 6
    invoke-virtual { p4 }, Lokhttp3/Response;->sentRequestAtMillis()J
    move-result-wide p1
    iput-wide p1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J
  .line 7
    invoke-virtual { p4 }, Lokhttp3/Response;->receivedResponseAtMillis()J
    move-result-wide p1
    iput-wide p1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J
  .line 8
    invoke-virtual { p4 }, Lokhttp3/Response;->headers()Lokhttp3/Headers;
    move-result-object p1
    const/4 p2, 0
  .line 9
    invoke-virtual { p1 }, Lokhttp3/Headers;->size()I
    move-result p3
  :L0
    if-ge p2, p3, :L6
  .line 10
    invoke-virtual { p1, p2 }, Lokhttp3/Headers;->name(I)Ljava/lang/String;
    move-result-object p4
  .line 11
    invoke-virtual { p1, p2 }, Lokhttp3/Headers;->value(I)Ljava/lang/String;
    move-result-object v1
    const-string v2, "Date"
  .line 12
    invoke-virtual { v2, p4 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :L1
  .line 13
    invoke-static { v1 }, Lokhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;
    move-result-object p4
    iput-object p4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;
  .line 14
    iput-object v1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;
    goto :L5
  :L1
    const-string v2, "Expires"
  .line 15
    invoke-virtual { v2, p4 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :L2
  .line 16
    invoke-static { v1 }, Lokhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;
    move-result-object p4
    iput-object p4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;
    goto :L5
  :L2
    const-string v2, "Last-Modified"
  .line 17
    invoke-virtual { v2, p4 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :L3
  .line 18
    invoke-static { v1 }, Lokhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;
    move-result-object p4
    iput-object p4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;
  .line 19
    iput-object v1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;
    goto :L5
  :L3
    const-string v2, "ETag"
  .line 20
    invoke-virtual { v2, p4 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :L4
  .line 21
    iput-object v1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;
    goto :L5
  :L4
    const-string v2, "Age"
  .line 22
    invoke-virtual { v2, p4 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result p4
    if-eqz p4, :L5
  .line 23
    invoke-static { v1, v0 }, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I
    move-result p4
    iput p4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I
  :L5
    add-int/lit8 p2, p2, 1
    goto :L0
  :L6
    return-void
.end method

.method private cacheResponseAge()J
  .registers 10
  .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;
    const-wide/16 v1, 0
    if-eqz v0, :L0
  .line 2
    iget-wide v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J
    invoke-virtual { v0 }, Ljava/util/Date;->getTime()J
    move-result-wide v5
    sub-long/2addr v3, v5
    invoke-static { v1, v2, v3, v4 }, Ljava/lang/Math;->max(JJ)J
    move-result-wide v1
  :L0
  .line 3
    iget v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I
    const/4 v3, -1
    if-eq v0, v3, :L1
  .line 4
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    int-to-long v4, v0
    invoke-virtual { v3, v4, v5 }, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
    move-result-wide v3
    invoke-static { v1, v2, v3, v4 }, Ljava/lang/Math;->max(JJ)J
    move-result-wide v1
  :L1
  .line 5
    iget-wide v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J
    iget-wide v5, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J
    sub-long v5, v3, v5
  .line 6
    iget-wide v7, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->nowMillis:J
    sub-long/2addr v7, v3
    add-long/2addr v1, v5
    add-long/2addr v1, v7
    return-wide v1
.end method

.method private computeFreshnessLifetime()J
  .registers 8
  .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;
    invoke-virtual { v0 }, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;
    move-result-object v0
  .line 2
    invoke-virtual { v0 }, Lokhttp3/CacheControl;->maxAgeSeconds()I
    move-result v1
    const/4 v2, -1
    if-eq v1, v2, :L0
  .line 3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-virtual { v0 }, Lokhttp3/CacheControl;->maxAgeSeconds()I
    move-result v0
    int-to-long v2, v0
    invoke-virtual { v1, v2, v3 }, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
    move-result-wide v0
    return-wide v0
  :L0
  .line 4
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;
    const-wide/16 v1, 0
    if-eqz v0, :L4
  .line 5
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;
    if-eqz v0, :L1
  .line 6
    invoke-virtual { v0 }, Ljava/util/Date;->getTime()J
    move-result-wide v3
    goto :L2
  :L1
  .line 7
    iget-wide v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J
  :L2
  .line 8
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;
    invoke-virtual { v0 }, Ljava/util/Date;->getTime()J
    move-result-wide v5
    sub-long/2addr v5, v3
    cmp-long v0, v5, v1
    if-lez v0, :L3
    move-wide v1, v5
  :L3
    return-wide v1
  :L4
  .line 9
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;
    if-eqz v0, :L7
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;
  .line 10
    invoke-virtual { v0 }, Lokhttp3/Response;->request()Lokhttp3/Request;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/HttpUrl;->query()Ljava/lang/String;
    move-result-object v0
    if-nez v0, :L7
  .line 11
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;
    if-eqz v0, :L5
  .line 12
    invoke-virtual { v0 }, Ljava/util/Date;->getTime()J
    move-result-wide v3
    goto :L6
  :L5
  .line 13
    iget-wide v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J
  :L6
  .line 14
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;
    invoke-virtual { v0 }, Ljava/util/Date;->getTime()J
    move-result-wide v5
    sub-long/2addr v3, v5
    cmp-long v0, v3, v1
    if-lez v0, :L7
    const-wide/16 v0, 10
  .line 15
    div-long v1, v3, v0
  :L7
    return-wide v1
.end method

.method private getCandidate()Lokhttp3/internal/cache/CacheStrategy;
  .registers 14
  .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;
    const/4 v1, 0
    if-nez v0, :L0
  .line 2
    new-instance v0, Lokhttp3/internal/cache/CacheStrategy;
    iget-object v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;
    invoke-direct { v0, v2, v1 }, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V
    return-object v0
  :L0
  .line 3
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;
    invoke-virtual { v0 }, Lokhttp3/Request;->isHttps()Z
    move-result v0
    if-eqz v0, :L1
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;
    invoke-virtual { v0 }, Lokhttp3/Response;->handshake()Lokhttp3/Handshake;
    move-result-object v0
    if-nez v0, :L1
  .line 4
    new-instance v0, Lokhttp3/internal/cache/CacheStrategy;
    iget-object v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;
    invoke-direct { v0, v2, v1 }, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V
    return-object v0
  :L1
  .line 5
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;
    iget-object v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;
    invoke-static { v0, v2 }, Lokhttp3/internal/cache/CacheStrategy;->isCacheable(Lokhttp3/Response;Lokhttp3/Request;)Z
    move-result v0
    if-nez v0, :L2
  .line 6
    new-instance v0, Lokhttp3/internal/cache/CacheStrategy;
    iget-object v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;
    invoke-direct { v0, v2, v1 }, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V
    return-object v0
  :L2
  .line 7
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;
    invoke-virtual { v0 }, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;
    move-result-object v0
  .line 8
    invoke-virtual { v0 }, Lokhttp3/CacheControl;->noCache()Z
    move-result v2
    if-nez v2, :L15
    iget-object v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;
    invoke-static { v2 }, Lokhttp3/internal/cache/CacheStrategy$Factory;->hasConditions(Lokhttp3/Request;)Z
    move-result v2
    if-eqz v2, :L3
    goto/16 :L15
  :L3
  .line 9
    iget-object v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;
    invoke-virtual { v2 }, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;
    move-result-object v2
  .line 10
    invoke-direct { p0 }, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponseAge()J
    move-result-wide v3
  .line 11
    invoke-direct { p0 }, Lokhttp3/internal/cache/CacheStrategy$Factory;->computeFreshnessLifetime()J
    move-result-wide v5
  .line 12
    invoke-virtual { v0 }, Lokhttp3/CacheControl;->maxAgeSeconds()I
    move-result v7
    const/4 v8, -1
    if-eq v7, v8, :L4
  .line 13
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-virtual { v0 }, Lokhttp3/CacheControl;->maxAgeSeconds()I
    move-result v9
    int-to-long v9, v9
    invoke-virtual { v7, v9, v10 }, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
    move-result-wide v9
    invoke-static { v5, v6, v9, v10 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v5
  :L4
  .line 14
    invoke-virtual { v0 }, Lokhttp3/CacheControl;->minFreshSeconds()I
    move-result v7
    const-wide/16 v9, 0
    if-eq v7, v8, :L5
  .line 15
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-virtual { v0 }, Lokhttp3/CacheControl;->minFreshSeconds()I
    move-result v11
    int-to-long v11, v11
    invoke-virtual { v7, v11, v12 }, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
    move-result-wide v11
    goto :L6
  :L5
    move-wide v11, v9
  :L6
  .line 16
    invoke-virtual { v2 }, Lokhttp3/CacheControl;->mustRevalidate()Z
    move-result v7
    if-nez v7, :L7
    invoke-virtual { v0 }, Lokhttp3/CacheControl;->maxStaleSeconds()I
    move-result v7
    if-eq v7, v8, :L7
  .line 17
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-virtual { v0 }, Lokhttp3/CacheControl;->maxStaleSeconds()I
    move-result v0
    int-to-long v8, v0
    invoke-virtual { v7, v8, v9 }, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
    move-result-wide v9
  :L7
  .line 18
    invoke-virtual { v2 }, Lokhttp3/CacheControl;->noCache()Z
    move-result v0
    if-nez v0, :L10
    add-long/2addr v11, v3
    add-long/2addr v9, v5
    cmp-long v0, v11, v9
    if-gez v0, :L10
  .line 19
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;
    invoke-virtual { v0 }, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;
    move-result-object v0
    const-string v2, "Warning"
    cmp-long v7, v11, v5
    if-ltz v7, :L8
    const-string v5, "110 HttpURLConnection \"Response is stale\""
  .line 20
    invoke-virtual { v0, v2, v5 }, Lokhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;
  :L8
    const-wide/32 v5, 86400000
    cmp-long v7, v3, v5
    if-lez v7, :L9
  .line 21
    invoke-direct { p0 }, Lokhttp3/internal/cache/CacheStrategy$Factory;->isFreshnessLifetimeHeuristic()Z
    move-result v3
    if-eqz v3, :L9
    const-string v3, "113 HttpURLConnection \"Heuristic expiration\""
  .line 22
    invoke-virtual { v0, v2, v3 }, Lokhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;
  :L9
  .line 23
    new-instance v2, Lokhttp3/internal/cache/CacheStrategy;
    invoke-virtual { v0 }, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;
    move-result-object v0
    invoke-direct { v2, v1, v0 }, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V
    return-object v2
  :L10
  .line 24
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;
    const-string v2, "If-Modified-Since"
    if-eqz v0, :L11
    const-string v2, "If-None-Match"
    goto :L13
  :L11
  .line 25
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;
    if-eqz v0, :L12
  .line 26
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;
    goto :L13
  :L12
  .line 27
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;
    if-eqz v0, :L14
  .line 28
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;
  :L13
  .line 29
    iget-object v1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;
    invoke-virtual { v1 }, Lokhttp3/Request;->headers()Lokhttp3/Headers;
    move-result-object v1
    invoke-virtual { v1 }, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;
    move-result-object v1
  .line 30
    sget-object v3, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;
    invoke-virtual { v3, v1, v2, v0 }, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
  .line 31
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;
    invoke-virtual { v0 }, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;
    move-result-object v0
  .line 32
    invoke-virtual { v1 }, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;
    move-result-object v0
  .line 33
    invoke-virtual { v0 }, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;
    move-result-object v0
  .line 34
    new-instance v1, Lokhttp3/internal/cache/CacheStrategy;
    iget-object v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;
    invoke-direct { v1, v0, v2 }, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V
    return-object v1
  :L14
  .line 35
    new-instance v0, Lokhttp3/internal/cache/CacheStrategy;
    iget-object v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;
    invoke-direct { v0, v2, v1 }, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V
    return-object v0
  :L15
  .line 36
    new-instance v0, Lokhttp3/internal/cache/CacheStrategy;
    iget-object v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;
    invoke-direct { v0, v2, v1 }, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V
    return-object v0
.end method

.method private static hasConditions(Lokhttp3/Request;)Z
  .registers 2
    const-string v0, "If-Modified-Since"
  .line 1
    invoke-virtual { p0, v0 }, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    if-nez v0, :L1
    const-string v0, "If-None-Match"
    invoke-virtual { p0, v0 }, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p0
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

.method private isFreshnessLifetimeHeuristic()Z
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;
    invoke-virtual { v0 }, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/CacheControl;->maxAgeSeconds()I
    move-result v0
    const/4 v1, -1
    if-ne v0, v1, :L0
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;
    if-nez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public get()Lokhttp3/internal/cache/CacheStrategy;
  .registers 3
  .line 1
    invoke-direct { p0 }, Lokhttp3/internal/cache/CacheStrategy$Factory;->getCandidate()Lokhttp3/internal/cache/CacheStrategy;
    move-result-object v0
  .line 2
    iget-object v1, v0, Lokhttp3/internal/cache/CacheStrategy;->networkRequest:Lokhttp3/Request;
    if-eqz v1, :L0
    iget-object v1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;
    invoke-virtual { v1 }, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;
    move-result-object v1
    invoke-virtual { v1 }, Lokhttp3/CacheControl;->onlyIfCached()Z
    move-result v1
    if-eqz v1, :L0
  .line 3
    new-instance v0, Lokhttp3/internal/cache/CacheStrategy;
    const/4 v1, 0
    invoke-direct { v0, v1, v1 }, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V
  :L0
    return-object v0
.end method
