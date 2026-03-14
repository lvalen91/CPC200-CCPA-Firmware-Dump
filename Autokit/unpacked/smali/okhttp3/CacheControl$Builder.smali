.class public final Lokhttp3/CacheControl$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/CacheControl;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 25
  name = "Builder"
.end annotation

.field immutable:Z

.field maxAgeSeconds:I

.field maxStaleSeconds:I

.field minFreshSeconds:I

.field noCache:Z

.field noStore:Z

.field noTransform:Z

.field onlyIfCached:Z

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, -1
  .line 2
    iput v0, p0, Lokhttp3/CacheControl$Builder;->maxAgeSeconds:I
  .line 3
    iput v0, p0, Lokhttp3/CacheControl$Builder;->maxStaleSeconds:I
  .line 4
    iput v0, p0, Lokhttp3/CacheControl$Builder;->minFreshSeconds:I
    return-void
.end method

.method public build()Lokhttp3/CacheControl;
  .registers 2
  .line 1
    new-instance v0, Lokhttp3/CacheControl;
    invoke-direct { v0, p0 }, Lokhttp3/CacheControl;-><init>(Lokhttp3/CacheControl$Builder;)V
    return-object v0
.end method

.method public immutable()Lokhttp3/CacheControl$Builder;
  .registers 2
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Lokhttp3/CacheControl$Builder;->immutable:Z
    return-object p0
.end method

.method public maxAge(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;
  .registers 6
    if-ltz p1, :L2
    int-to-long v0, p1
  .line 1
    invoke-virtual { p2, v0, v1 }, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J
    move-result-wide p1
    const-wide/32 v0, 2147483647
    cmp-long v2, p1, v0
    if-lez v2, :L0
    const p1, 2147483647
    goto :L1
  :L0
    long-to-int p1, p1
  :L1
  .line 2
    iput p1, p0, Lokhttp3/CacheControl$Builder;->maxAgeSeconds:I
    return-object p0
  :L2
  .line 3
    new-instance p2, Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "maxAge < 0: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p2, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p2
.end method

.method public maxStale(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;
  .registers 6
    if-ltz p1, :L2
    int-to-long v0, p1
  .line 1
    invoke-virtual { p2, v0, v1 }, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J
    move-result-wide p1
    const-wide/32 v0, 2147483647
    cmp-long v2, p1, v0
    if-lez v2, :L0
    const p1, 2147483647
    goto :L1
  :L0
    long-to-int p1, p1
  :L1
  .line 2
    iput p1, p0, Lokhttp3/CacheControl$Builder;->maxStaleSeconds:I
    return-object p0
  :L2
  .line 3
    new-instance p2, Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "maxStale < 0: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p2, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p2
.end method

.method public minFresh(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;
  .registers 6
    if-ltz p1, :L2
    int-to-long v0, p1
  .line 1
    invoke-virtual { p2, v0, v1 }, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J
    move-result-wide p1
    const-wide/32 v0, 2147483647
    cmp-long v2, p1, v0
    if-lez v2, :L0
    const p1, 2147483647
    goto :L1
  :L0
    long-to-int p1, p1
  :L1
  .line 2
    iput p1, p0, Lokhttp3/CacheControl$Builder;->minFreshSeconds:I
    return-object p0
  :L2
  .line 3
    new-instance p2, Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "minFresh < 0: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p2, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p2
.end method

.method public noCache()Lokhttp3/CacheControl$Builder;
  .registers 2
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Lokhttp3/CacheControl$Builder;->noCache:Z
    return-object p0
.end method

.method public noStore()Lokhttp3/CacheControl$Builder;
  .registers 2
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Lokhttp3/CacheControl$Builder;->noStore:Z
    return-object p0
.end method

.method public noTransform()Lokhttp3/CacheControl$Builder;
  .registers 2
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Lokhttp3/CacheControl$Builder;->noTransform:Z
    return-object p0
.end method

.method public onlyIfCached()Lokhttp3/CacheControl$Builder;
  .registers 2
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Lokhttp3/CacheControl$Builder;->onlyIfCached:Z
    return-object p0
.end method
