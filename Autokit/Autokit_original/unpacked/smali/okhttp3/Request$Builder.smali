.class public Lokhttp3/Request$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/Request;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "Builder"
.end annotation

.field body:Lokhttp3/RequestBody;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.field headers:Lokhttp3/Headers$Builder;

.field method:Ljava/lang/String;

.field tags:Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Map<",
      "Ljava/lang/Class<",
      "*>;",
      "Ljava/lang/Object;",
      ">;"
    }
  .end annotation
.end field

.field url:Lokhttp3/HttpUrl;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    invoke-static { }, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
    move-result-object v0
    iput-object v0, p0, Lokhttp3/Request$Builder;->tags:Ljava/util/Map;
    const-string v0, "GET"
  .line 3
    iput-object v0, p0, Lokhttp3/Request$Builder;->method:Ljava/lang/String;
  .line 4
    new-instance v0, Lokhttp3/Headers$Builder;
    invoke-direct { v0 }, Lokhttp3/Headers$Builder;-><init>()V
    iput-object v0, p0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;
    return-void
.end method

.method constructor <init>(Lokhttp3/Request;)V
  .registers 4
  .line 5
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 6
    invoke-static { }, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
    move-result-object v0
    iput-object v0, p0, Lokhttp3/Request$Builder;->tags:Ljava/util/Map;
  .line 7
    iget-object v0, p1, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;
    iput-object v0, p0, Lokhttp3/Request$Builder;->url:Lokhttp3/HttpUrl;
  .line 8
    iget-object v0, p1, Lokhttp3/Request;->method:Ljava/lang/String;
    iput-object v0, p0, Lokhttp3/Request$Builder;->method:Ljava/lang/String;
  .line 9
    iget-object v0, p1, Lokhttp3/Request;->body:Lokhttp3/RequestBody;
    iput-object v0, p0, Lokhttp3/Request$Builder;->body:Lokhttp3/RequestBody;
  .line 10
    iget-object v0, p1, Lokhttp3/Request;->tags:Ljava/util/Map;
    invoke-interface { v0 }, Ljava/util/Map;->isEmpty()Z
    move-result v0
    if-eqz v0, :L0
  .line 11
    invoke-static { }, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
    move-result-object v0
    goto :L1
  :L0
  .line 12
    new-instance v0, Ljava/util/LinkedHashMap;
    iget-object v1, p1, Lokhttp3/Request;->tags:Ljava/util/Map;
    invoke-direct { v0, v1 }, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
  :L1
    iput-object v0, p0, Lokhttp3/Request$Builder;->tags:Ljava/util/Map;
  .line 13
    iget-object p1, p1, Lokhttp3/Request;->headers:Lokhttp3/Headers;
    invoke-virtual { p1 }, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;
    move-result-object p1
    iput-object p1, p0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
  .registers 4
  .line 1
    iget-object v0, p0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;
    invoke-virtual { v0, p1, p2 }, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;
    return-object p0
.end method

.method public build()Lokhttp3/Request;
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/Request$Builder;->url:Lokhttp3/HttpUrl;
    if-eqz v0, :L0
  .line 2
    new-instance v0, Lokhttp3/Request;
    invoke-direct { v0, p0 }, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V
    return-object v0
  :L0
  .line 3
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "url == null"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;
  .registers 4
  .line 1
    invoke-virtual { p1 }, Lokhttp3/CacheControl;->toString()Ljava/lang/String;
    move-result-object p1
  .line 2
    invoke-virtual { p1 }, Ljava/lang/String;->isEmpty()Z
    move-result v0
    const-string v1, "Cache-Control"
    if-eqz v0, :L0
    invoke-virtual { p0, v1 }, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;
    move-result-object p1
    return-object p1
  :L0
  .line 3
    invoke-virtual { p0, v1, p1 }, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    move-result-object p1
    return-object p1
.end method

.method public delete()Lokhttp3/Request$Builder;
  .registers 2
  .line 2
    sget-object v0, Lokhttp3/internal/Util;->EMPTY_REQUEST:Lokhttp3/RequestBody;
    invoke-virtual { p0, v0 }, Lokhttp3/Request$Builder;->delete(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    move-result-object v0
    return-object v0
.end method

.method public delete(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
  .parameter # Lokhttp3/RequestBody;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 3
    const-string v0, "DELETE"
  .line 1
    invoke-virtual { p0, v0, p1 }, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    move-result-object p1
    return-object p1
.end method

.method public get()Lokhttp3/Request$Builder;
  .registers 3
    const-string v0, "GET"
    const/4 v1, 0
  .line 1
    invoke-virtual { p0, v0, v1 }, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    move-result-object v0
    return-object v0
.end method

.method public head()Lokhttp3/Request$Builder;
  .registers 3
    const-string v0, "HEAD"
    const/4 v1, 0
  .line 1
    invoke-virtual { p0, v0, v1 }, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    move-result-object v0
    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
  .registers 4
  .line 1
    iget-object v0, p0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;
    invoke-virtual { v0, p1, p2 }, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;
    return-object p0
.end method

.method public headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;
  .registers 2
  .line 1
    invoke-virtual { p1 }, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;
    move-result-object p1
    iput-object p1, p0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;
    return-object p0
.end method

.method public method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
  .parameter # Ljava/lang/String;
  .parameter # Lokhttp3/RequestBody;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 5
    if-eqz p1, :L5
  .line 1
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result v0
    if-eqz v0, :L4
    const-string v0, "method "
    if-eqz p2, :L1
  .line 2
    invoke-static { p1 }, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L0
    goto :L1
  :L0
  .line 3
    new-instance p2, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, " must not have a request body."
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p2, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p2
  :L1
    if-nez p2, :L3
  .line 4
    invoke-static { p1 }, Lokhttp3/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L2
    goto :L3
  :L2
  .line 5
    new-instance p2, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, " must have a request body."
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p2, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p2
  :L3
  .line 6
    iput-object p1, p0, Lokhttp3/Request$Builder;->method:Ljava/lang/String;
  .line 7
    iput-object p2, p0, Lokhttp3/Request$Builder;->body:Lokhttp3/RequestBody;
    return-object p0
  :L4
  .line 8
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "method.length() == 0"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L5
  .line 9
    new-instance p1, Ljava/lang/NullPointerException;
    const-string p2, "method == null"
    invoke-direct { p1, p2 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public patch(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
  .registers 3
    const-string v0, "PATCH"
  .line 1
    invoke-virtual { p0, v0, p1 }, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    move-result-object p1
    return-object p1
.end method

.method public post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
  .registers 3
    const-string v0, "POST"
  .line 1
    invoke-virtual { p0, v0, p1 }, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    move-result-object p1
    return-object p1
.end method

.method public put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
  .registers 3
    const-string v0, "PUT"
  .line 1
    invoke-virtual { p0, v0, p1 }, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    move-result-object p1
    return-object p1
.end method

.method public removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;
    invoke-virtual { v0, p1 }, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;
    return-object p0
.end method

.method public tag(Ljava/lang/Class;Ljava/lang/Object;)Lokhttp3/Request$Builder;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Ljava/lang/Object;",
      ">(",
      "Ljava/lang/Class<",
      "-TT;>;TT;)",
      "Lokhttp3/Request$Builder;"
    }
  .end annotation
  .parameter # Ljava/lang/Class;
  .parameter # Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 4
    if-eqz p1, :L3
    if-nez p2, :L0
  .line 2
    iget-object p2, p0, Lokhttp3/Request$Builder;->tags:Ljava/util/Map;
    invoke-interface { p2, p1 }, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    goto :L2
  :L0
  .line 3
    iget-object v0, p0, Lokhttp3/Request$Builder;->tags:Ljava/util/Map;
    invoke-interface { v0 }, Ljava/util/Map;->isEmpty()Z
    move-result v0
    if-eqz v0, :L1
    new-instance v0, Ljava/util/LinkedHashMap;
    invoke-direct { v0 }, Ljava/util/LinkedHashMap;-><init>()V
    iput-object v0, p0, Lokhttp3/Request$Builder;->tags:Ljava/util/Map;
  :L1
  .line 4
    iget-object v0, p0, Lokhttp3/Request$Builder;->tags:Ljava/util/Map;
    invoke-virtual { p1, p2 }, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p2
    invoke-interface { v0, p1, p2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L2
    return-object p0
  :L3
  .line 5
    new-instance p1, Ljava/lang/NullPointerException;
    const-string p2, "type == null"
    invoke-direct { p1, p2 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;
  .parameter # Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 3
  .line 1
    const-class v0, Ljava/lang/Object;
    invoke-virtual { p0, v0, p1 }, Lokhttp3/Request$Builder;->tag(Ljava/lang/Class;Ljava/lang/Object;)Lokhttp3/Request$Builder;
    move-result-object p1
    return-object p1
.end method

.method public url(Ljava/lang/String;)Lokhttp3/Request$Builder;
  .registers 8
    if-eqz p1, :L2
    const/4 v1, 1
    const/4 v2, 0
    const/4 v4, 0
    const/4 v5, 3
    const-string v3, "ws:"
    move-object v0, p1
  .line 3
    invoke-virtual/range { v0 .. v5 }, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z
    move-result v0
    if-eqz v0, :L0
  .line 4
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "http:"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v1, 3
    invoke-virtual { p1, v1 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    goto :L1
  :L0
    const/4 v1, 1
    const/4 v2, 0
    const/4 v4, 0
    const/4 v5, 4
    const-string v3, "wss:"
    move-object v0, p1
  .line 5
    invoke-virtual/range { v0 .. v5 }, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z
    move-result v0
    if-eqz v0, :L1
  .line 6
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "https:"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v1, 4
    invoke-virtual { p1, v1 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
  :L1
  .line 7
    invoke-static { p1 }, Lokhttp3/HttpUrl;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;
    move-result-object p1
    invoke-virtual { p0, p1 }, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;
    move-result-object p1
    return-object p1
  :L2
  .line 8
    new-instance p1, Ljava/lang/NullPointerException;
    const-string v0, "url == null"
    invoke-direct { p1, v0 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public url(Ljava/net/URL;)Lokhttp3/Request$Builder;
  .registers 3
    if-eqz p1, :L0
  .line 9
    invoke-virtual { p1 }, Ljava/net/URL;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lokhttp3/HttpUrl;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;
    move-result-object p1
    invoke-virtual { p0, p1 }, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;
    move-result-object p1
    return-object p1
  :L0
  .line 10
    new-instance p1, Ljava/lang/NullPointerException;
    const-string v0, "url == null"
    invoke-direct { p1, v0 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;
  .registers 3
    if-eqz p1, :L0
  .line 1
    iput-object p1, p0, Lokhttp3/Request$Builder;->url:Lokhttp3/HttpUrl;
    return-object p0
  :L0
  .line 2
    new-instance p1, Ljava/lang/NullPointerException;
    const-string v0, "url == null"
    invoke-direct { p1, v0 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method
