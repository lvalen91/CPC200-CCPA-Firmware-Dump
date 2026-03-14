.class public final Lokhttp3/Response;
.super Ljava/lang/Object;
.implements Ljava/io/Closeable;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lokhttp3/Response$Builder;
  }
.end annotation

.field final body:Lokhttp3/ResponseBody;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.field private volatile cacheControl:Lokhttp3/CacheControl;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.field final cacheResponse:Lokhttp3/Response;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.field final code:I

.field final handshake:Lokhttp3/Handshake;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.field final headers:Lokhttp3/Headers;

.field final message:Ljava/lang/String;

.field final networkResponse:Lokhttp3/Response;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.field final priorResponse:Lokhttp3/Response;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.field final protocol:Lokhttp3/Protocol;

.field final receivedResponseAtMillis:J

.field final request:Lokhttp3/Request;

.field final sentRequestAtMillis:J

.method constructor <init>(Lokhttp3/Response$Builder;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iget-object v0, p1, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;
    iput-object v0, p0, Lokhttp3/Response;->request:Lokhttp3/Request;
  .line 3
    iget-object v0, p1, Lokhttp3/Response$Builder;->protocol:Lokhttp3/Protocol;
    iput-object v0, p0, Lokhttp3/Response;->protocol:Lokhttp3/Protocol;
  .line 4
    iget v0, p1, Lokhttp3/Response$Builder;->code:I
    iput v0, p0, Lokhttp3/Response;->code:I
  .line 5
    iget-object v0, p1, Lokhttp3/Response$Builder;->message:Ljava/lang/String;
    iput-object v0, p0, Lokhttp3/Response;->message:Ljava/lang/String;
  .line 6
    iget-object v0, p1, Lokhttp3/Response$Builder;->handshake:Lokhttp3/Handshake;
    iput-object v0, p0, Lokhttp3/Response;->handshake:Lokhttp3/Handshake;
  .line 7
    iget-object v0, p1, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;
    invoke-virtual { v0 }, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;
    move-result-object v0
    iput-object v0, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;
  .line 8
    iget-object v0, p1, Lokhttp3/Response$Builder;->body:Lokhttp3/ResponseBody;
    iput-object v0, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;
  .line 9
    iget-object v0, p1, Lokhttp3/Response$Builder;->networkResponse:Lokhttp3/Response;
    iput-object v0, p0, Lokhttp3/Response;->networkResponse:Lokhttp3/Response;
  .line 10
    iget-object v0, p1, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;
    iput-object v0, p0, Lokhttp3/Response;->cacheResponse:Lokhttp3/Response;
  .line 11
    iget-object v0, p1, Lokhttp3/Response$Builder;->priorResponse:Lokhttp3/Response;
    iput-object v0, p0, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;
  .line 12
    iget-wide v0, p1, Lokhttp3/Response$Builder;->sentRequestAtMillis:J
    iput-wide v0, p0, Lokhttp3/Response;->sentRequestAtMillis:J
  .line 13
    iget-wide v0, p1, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J
    iput-wide v0, p0, Lokhttp3/Response;->receivedResponseAtMillis:J
    return-void
.end method

.method public body()Lokhttp3/ResponseBody;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;
    return-object v0
.end method

.method public cacheControl()Lokhttp3/CacheControl;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Response;->cacheControl:Lokhttp3/CacheControl;
    if-eqz v0, :L0
    goto :L1
  :L0
  .line 2
    iget-object v0, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;
    invoke-static { v0 }, Lokhttp3/CacheControl;->parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;
    move-result-object v0
    iput-object v0, p0, Lokhttp3/Response;->cacheControl:Lokhttp3/CacheControl;
  :L1
    return-object v0
.end method

.method public cacheResponse()Lokhttp3/Response;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Response;->cacheResponse:Lokhttp3/Response;
    return-object v0
.end method

.method public challenges()Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/List<",
      "Lokhttp3/Challenge;",
      ">;"
    }
  .end annotation
  .registers 3
  .line 1
    iget v0, p0, Lokhttp3/Response;->code:I
    const/16 v1, 401
    if-ne v0, v1, :L0
    const-string v0, "WWW-Authenticate"
    goto :L1
  :L0
    const/16 v1, 407
    if-ne v0, v1, :L2
    const-string v0, "Proxy-Authenticate"
  :L1
  .line 2
    invoke-virtual { p0 }, Lokhttp3/Response;->headers()Lokhttp3/Headers;
    move-result-object v1
    invoke-static { v1, v0 }, Lokhttp3/internal/http/HttpHeaders;->parseChallenges(Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/List;
    move-result-object v0
    return-object v0
  :L2
  .line 3
    invoke-static { }, Ljava/util/Collections;->emptyList()Ljava/util/List;
    move-result-object v0
    return-object v0
.end method

.method public close()V
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Lokhttp3/ResponseBody;->close()V
    return-void
  :L0
  .line 3
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "response is not eligible for a body and must not be closed"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public code()I
  .registers 2
  .line 1
    iget v0, p0, Lokhttp3/Response;->code:I
    return v0
.end method

.method public handshake()Lokhttp3/Handshake;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Response;->handshake:Lokhttp3/Handshake;
    return-object v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, p1, v0 }, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    return-object p1
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .parameter # Ljava/lang/String;
  .parameter # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 4
  .line 2
    iget-object v0, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;
    invoke-virtual { v0, p1 }, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    if-eqz p1, :L0
    move-object p2, p1
  :L0
    return-object p2
.end method

.method public headers(Ljava/lang/String;)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/String;",
      ")",
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;
    invoke-virtual { v0, p1 }, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;
    move-result-object p1
    return-object p1
.end method

.method public headers()Lokhttp3/Headers;
  .registers 2
  .line 2
    iget-object v0, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;
    return-object v0
.end method

.method public isRedirect()Z
  .registers 3
  .line 1
    iget v0, p0, Lokhttp3/Response;->code:I
    const/16 v1, 307
    if-eq v0, v1, :L0
    const/16 v1, 308
    if-eq v0, v1, :L0
    packed-switch v0, :L1
    const/4 v0, 0
    return v0
  :L0
    const/4 v0, 1
    return v0
  :L1
  .packed-switch 300
    :L0
    :L0
    :L0
    :L0
  .end packed-switch
.end method

.method public isSuccessful()Z
  .registers 3
  .line 1
    iget v0, p0, Lokhttp3/Response;->code:I
    const/16 v1, 200
    if-lt v0, v1, :L0
    const/16 v1, 300
    if-ge v0, v1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public message()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Response;->message:Ljava/lang/String;
    return-object v0
.end method

.method public networkResponse()Lokhttp3/Response;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Response;->networkResponse:Lokhttp3/Response;
    return-object v0
.end method

.method public newBuilder()Lokhttp3/Response$Builder;
  .registers 2
  .line 1
    new-instance v0, Lokhttp3/Response$Builder;
    invoke-direct { v0, p0 }, Lokhttp3/Response$Builder;-><init>(Lokhttp3/Response;)V
    return-object v0
.end method

.method public peekBody(J)Lokhttp3/ResponseBody;
  .registers 7
  .line 1
    iget-object v0, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;
    invoke-virtual { v0 }, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;
    move-result-object v0
  .line 2
    invoke-interface { v0, p1, p2 }, Lokio/BufferedSource;->request(J)Z
  .line 3
    invoke-interface { v0 }, Lokio/BufferedSource;->buffer()Lokio/Buffer;
    move-result-object v0
    invoke-virtual { v0 }, Lokio/Buffer;->clone()Lokio/Buffer;
    move-result-object v0
  .line 4
    invoke-virtual { v0 }, Lokio/Buffer;->size()J
    move-result-wide v1
    cmp-long v3, v1, p1
    if-lez v3, :L0
  .line 5
    new-instance v1, Lokio/Buffer;
    invoke-direct { v1 }, Lokio/Buffer;-><init>()V
  .line 6
    invoke-virtual { v1, v0, p1, p2 }, Lokio/Buffer;->write(Lokio/Buffer;J)V
  .line 7
    invoke-virtual { v0 }, Lokio/Buffer;->clear()V
    move-object v0, v1
  :L0
  .line 8
    iget-object p1, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;
    invoke-virtual { p1 }, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;
    move-result-object p1
    invoke-virtual { v0 }, Lokio/Buffer;->size()J
    move-result-wide v1
    invoke-static { p1, v1, v2, v0 }, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;JLokio/BufferedSource;)Lokhttp3/ResponseBody;
    move-result-object p1
    return-object p1
.end method

.method public priorResponse()Lokhttp3/Response;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;
    return-object v0
.end method

.method public protocol()Lokhttp3/Protocol;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Response;->protocol:Lokhttp3/Protocol;
    return-object v0
.end method

.method public receivedResponseAtMillis()J
  .registers 3
  .line 1
    iget-wide v0, p0, Lokhttp3/Response;->receivedResponseAtMillis:J
    return-wide v0
.end method

.method public request()Lokhttp3/Request;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Response;->request:Lokhttp3/Request;
    return-object v0
.end method

.method public sentRequestAtMillis()J
  .registers 3
  .line 1
    iget-wide v0, p0, Lokhttp3/Response;->sentRequestAtMillis:J
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Response{protocol="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lokhttp3/Response;->protocol:Lokhttp3/Protocol;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, ", code="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lokhttp3/Response;->code:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", message="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lokhttp3/Response;->message:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, ", url="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lokhttp3/Response;->request:Lokhttp3/Request;
  .line 2
    invoke-virtual { v1 }, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const/16 v1, 125
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
