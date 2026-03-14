.class public final Lokhttp3/internal/cache/CacheStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lokhttp3/internal/cache/CacheStrategy$Factory;
  }
.end annotation

.field public final cacheResponse:Lokhttp3/Response;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.field public final networkRequest:Lokhttp3/Request;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.method constructor <init>(Lokhttp3/Request;Lokhttp3/Response;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Lokhttp3/internal/cache/CacheStrategy;->networkRequest:Lokhttp3/Request;
  .line 3
    iput-object p2, p0, Lokhttp3/internal/cache/CacheStrategy;->cacheResponse:Lokhttp3/Response;
    return-void
.end method

.method public static isCacheable(Lokhttp3/Response;Lokhttp3/Request;)Z
  .registers 5
  .line 1
    invoke-virtual { p0 }, Lokhttp3/Response;->code()I
    move-result v0
    const/16 v1, 200
    const/4 v2, 0
    if-eq v0, v1, :L2
    const/16 v1, 410
    if-eq v0, v1, :L2
    const/16 v1, 414
    if-eq v0, v1, :L2
    const/16 v1, 501
    if-eq v0, v1, :L2
    const/16 v1, 203
    if-eq v0, v1, :L2
    const/16 v1, 204
    if-eq v0, v1, :L2
    const/16 v1, 307
    if-eq v0, v1, :L0
    const/16 v1, 308
    if-eq v0, v1, :L2
    const/16 v1, 404
    if-eq v0, v1, :L2
    const/16 v1, 405
    if-eq v0, v1, :L2
    packed-switch v0, :L4
    goto :L1
  :L0
    const-string v0, "Expires"
  .line 2
    invoke-virtual { p0, v0 }, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    if-nez v0, :L2
  .line 3
    invoke-virtual { p0 }, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/CacheControl;->maxAgeSeconds()I
    move-result v0
    const/4 v1, -1
    if-ne v0, v1, :L2
  .line 4
    invoke-virtual { p0 }, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/CacheControl;->isPublic()Z
    move-result v0
    if-nez v0, :L2
  .line 5
    invoke-virtual { p0 }, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/CacheControl;->isPrivate()Z
    move-result v0
    if-eqz v0, :L1
    goto :L2
  :L1
    return v2
  :L2
  .line 6
    invoke-virtual { p0 }, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;
    move-result-object p0
    invoke-virtual { p0 }, Lokhttp3/CacheControl;->noStore()Z
    move-result p0
    if-nez p0, :L3
    invoke-virtual { p1 }, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;
    move-result-object p0
    invoke-virtual { p0 }, Lokhttp3/CacheControl;->noStore()Z
    move-result p0
    if-nez p0, :L3
    const/4 v2, 1
  :L3
    return v2
  :L4
  .packed-switch 300
    :L2
    :L2
    :L0
  .end packed-switch
.end method
