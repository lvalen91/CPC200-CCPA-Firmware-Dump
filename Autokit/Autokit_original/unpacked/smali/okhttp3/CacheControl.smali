.class public final Lokhttp3/CacheControl;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lokhttp3/CacheControl$Builder;
  }
.end annotation

.field public final static FORCE_CACHE:Lokhttp3/CacheControl;

.field public final static FORCE_NETWORK:Lokhttp3/CacheControl;

.field headerValue:Ljava/lang/String;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.field private final immutable:Z

.field private final isPrivate:Z

.field private final isPublic:Z

.field private final maxAgeSeconds:I

.field private final maxStaleSeconds:I

.field private final minFreshSeconds:I

.field private final mustRevalidate:Z

.field private final noCache:Z

.field private final noStore:Z

.field private final noTransform:Z

.field private final onlyIfCached:Z

.field private final sMaxAgeSeconds:I

.method static constructor <clinit>()V
  .registers 4
  .line 1
    new-instance v0, Lokhttp3/CacheControl$Builder;
    invoke-direct { v0 }, Lokhttp3/CacheControl$Builder;-><init>()V
    invoke-virtual { v0 }, Lokhttp3/CacheControl$Builder;->noCache()Lokhttp3/CacheControl$Builder;
    move-result-object v0
    invoke-virtual { v0 }, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;
    move-result-object v0
    sput-object v0, Lokhttp3/CacheControl;->FORCE_NETWORK:Lokhttp3/CacheControl;
  .line 2
    new-instance v0, Lokhttp3/CacheControl$Builder;
    invoke-direct { v0 }, Lokhttp3/CacheControl$Builder;-><init>()V
  .line 3
    invoke-virtual { v0 }, Lokhttp3/CacheControl$Builder;->onlyIfCached()Lokhttp3/CacheControl$Builder;
    move-result-object v0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    const v2, 2147483647
  .line 4
    invoke-virtual { v0, v2, v1 }, Lokhttp3/CacheControl$Builder;->maxStale(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;
    move-result-object v0
  .line 5
    invoke-virtual { v0 }, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;
    move-result-object v0
    sput-object v0, Lokhttp3/CacheControl;->FORCE_CACHE:Lokhttp3/CacheControl;
    return-void
.end method

.method constructor <init>(Lokhttp3/CacheControl$Builder;)V
  .registers 3
  .line 15
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 16
    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->noCache:Z
    iput-boolean v0, p0, Lokhttp3/CacheControl;->noCache:Z
  .line 17
    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->noStore:Z
    iput-boolean v0, p0, Lokhttp3/CacheControl;->noStore:Z
  .line 18
    iget v0, p1, Lokhttp3/CacheControl$Builder;->maxAgeSeconds:I
    iput v0, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I
    const/4 v0, -1
  .line 19
    iput v0, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I
    const/4 v0, 0
  .line 20
    iput-boolean v0, p0, Lokhttp3/CacheControl;->isPrivate:Z
  .line 21
    iput-boolean v0, p0, Lokhttp3/CacheControl;->isPublic:Z
  .line 22
    iput-boolean v0, p0, Lokhttp3/CacheControl;->mustRevalidate:Z
  .line 23
    iget v0, p1, Lokhttp3/CacheControl$Builder;->maxStaleSeconds:I
    iput v0, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I
  .line 24
    iget v0, p1, Lokhttp3/CacheControl$Builder;->minFreshSeconds:I
    iput v0, p0, Lokhttp3/CacheControl;->minFreshSeconds:I
  .line 25
    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->onlyIfCached:Z
    iput-boolean v0, p0, Lokhttp3/CacheControl;->onlyIfCached:Z
  .line 26
    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->noTransform:Z
    iput-boolean v0, p0, Lokhttp3/CacheControl;->noTransform:Z
  .line 27
    iget-boolean p1, p1, Lokhttp3/CacheControl$Builder;->immutable:Z
    iput-boolean p1, p0, Lokhttp3/CacheControl;->immutable:Z
    return-void
.end method

.method private constructor <init>(ZZIIZZZIIZZZLjava/lang/String;)V
  .parameter # Z
  .parameter # Z
  .parameter # I
  .parameter # I
  .parameter # Z
  .parameter # Z
  .parameter # Z
  .parameter # I
  .parameter # I
  .parameter # Z
  .parameter # Z
  .parameter # Z
  .parameter # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 14
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-boolean p1, p0, Lokhttp3/CacheControl;->noCache:Z
  .line 3
    iput-boolean p2, p0, Lokhttp3/CacheControl;->noStore:Z
  .line 4
    iput p3, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I
  .line 5
    iput p4, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I
  .line 6
    iput-boolean p5, p0, Lokhttp3/CacheControl;->isPrivate:Z
  .line 7
    iput-boolean p6, p0, Lokhttp3/CacheControl;->isPublic:Z
  .line 8
    iput-boolean p7, p0, Lokhttp3/CacheControl;->mustRevalidate:Z
  .line 9
    iput p8, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I
  .line 10
    iput p9, p0, Lokhttp3/CacheControl;->minFreshSeconds:I
  .line 11
    iput-boolean p10, p0, Lokhttp3/CacheControl;->onlyIfCached:Z
  .line 12
    iput-boolean p11, p0, Lokhttp3/CacheControl;->noTransform:Z
  .line 13
    iput-boolean p12, p0, Lokhttp3/CacheControl;->immutable:Z
  .line 14
    iput-object p13, p0, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;
    return-void
.end method

.method private headerValue()Ljava/lang/String;
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
  .line 2
    iget-boolean v1, p0, Lokhttp3/CacheControl;->noCache:Z
    if-eqz v1, :L0
    const-string v1, "no-cache, "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L0
  .line 3
    iget-boolean v1, p0, Lokhttp3/CacheControl;->noStore:Z
    if-eqz v1, :L1
    const-string v1, "no-store, "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L1
  .line 4
    iget v1, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I
    const-string v2, ", "
    const/4 v3, -1
    if-eq v1, v3, :L2
    const-string v1, "max-age="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L2
  .line 5
    iget v1, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I
    if-eq v1, v3, :L3
    const-string v1, "s-maxage="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L3
  .line 6
    iget-boolean v1, p0, Lokhttp3/CacheControl;->isPrivate:Z
    if-eqz v1, :L4
    const-string v1, "private, "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L4
  .line 7
    iget-boolean v1, p0, Lokhttp3/CacheControl;->isPublic:Z
    if-eqz v1, :L5
    const-string v1, "public, "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L5
  .line 8
    iget-boolean v1, p0, Lokhttp3/CacheControl;->mustRevalidate:Z
    if-eqz v1, :L6
    const-string v1, "must-revalidate, "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L6
  .line 9
    iget v1, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I
    if-eq v1, v3, :L7
    const-string v1, "max-stale="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L7
  .line 10
    iget v1, p0, Lokhttp3/CacheControl;->minFreshSeconds:I
    if-eq v1, v3, :L8
    const-string v1, "min-fresh="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lokhttp3/CacheControl;->minFreshSeconds:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L8
  .line 11
    iget-boolean v1, p0, Lokhttp3/CacheControl;->onlyIfCached:Z
    if-eqz v1, :L9
    const-string v1, "only-if-cached, "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L9
  .line 12
    iget-boolean v1, p0, Lokhttp3/CacheControl;->noTransform:Z
    if-eqz v1, :L10
    const-string v1, "no-transform, "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L10
  .line 13
    iget-boolean v1, p0, Lokhttp3/CacheControl;->immutable:Z
    if-eqz v1, :L11
    const-string v1, "immutable, "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L11
  .line 14
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->length()I
    move-result v1
    if-nez v1, :L12
    const-string v0, ""
    return-object v0
  :L12
  .line 15
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->length()I
    move-result v1
    add-int/lit8 v1, v1, -2
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->length()I
    move-result v2
    invoke-virtual { v0, v1, v2 }, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
  .line 16
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public static parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;
  .registers 23
    move-object/from16 v0, p0
  .line 1
    invoke-virtual/range { p0 .. p0 }, Lokhttp3/Headers;->size()I
    move-result v1
    const/4 v6, 0
    const/4 v7, 1
    const/4 v8, 0
    const/4 v9, 0
    const/4 v10, 0
    const/4 v11, -1
    const/4 v12, -1
    const/4 v13, 0
    const/4 v14, 0
    const/4 v15, 0
    const/16 v16, -1
    const/16 v17, -1
    const/16 v18, 0
    const/16 v19, 0
    const/16 v20, 0
  :L0
    if-ge v6, v1, :L23
  .line 2
    invoke-virtual { v0, v6 }, Lokhttp3/Headers;->name(I)Ljava/lang/String;
    move-result-object v2
  .line 3
    invoke-virtual { v0, v6 }, Lokhttp3/Headers;->value(I)Ljava/lang/String;
    move-result-object v4
    const-string v3, "Cache-Control"
  .line 4
    invoke-virtual { v2, v3 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :L2
    if-eqz v8, :L1
    goto :L3
  :L1
    move-object v8, v4
    goto :L4
  :L2
    const-string v3, "Pragma"
  .line 5
    invoke-virtual { v2, v3 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :L22
  :L3
    const/4 v7, 0
  :L4
    const/4 v2, 0
  :L5
  .line 6
    invoke-virtual { v4 }, Ljava/lang/String;->length()I
    move-result v3
    if-ge v2, v3, :L22
    const-string v3, "=,;"
  .line 7
    invoke-static { v4, v2, v3 }, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I
    move-result v3
  .line 8
    invoke-virtual { v4, v2, v3 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v2
  .line 9
    invoke-virtual { v4 }, Ljava/lang/String;->length()I
    move-result v5
    if-eq v3, v5, :L8
    invoke-virtual { v4, v3 }, Ljava/lang/String;->charAt(I)C
    move-result v5
    const/16 v0, 44
    if-eq v5, v0, :L8
    invoke-virtual { v4, v3 }, Ljava/lang/String;->charAt(I)C
    move-result v0
    const/16 v5, 59
    if-ne v0, v5, :L6
    goto :L8
  :L6
    add-int/lit8 v3, v3, 1
  .line 10
    invoke-static { v4, v3 }, Lokhttp3/internal/http/HttpHeaders;->skipWhitespace(Ljava/lang/String;I)I
    move-result v0
  .line 11
    invoke-virtual { v4 }, Ljava/lang/String;->length()I
    move-result v3
    if-ge v0, v3, :L7
    invoke-virtual { v4, v0 }, Ljava/lang/String;->charAt(I)C
    move-result v3
    const/16 v5, 34
    if-ne v3, v5, :L7
    add-int/lit8 v0, v0, 1
    const-string v3, "\""
  .line 12
    invoke-static { v4, v0, v3 }, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I
    move-result v3
  .line 13
    invoke-virtual { v4, v0, v3 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v0
    const/4 v5, 1
    add-int/2addr v3, v5
    goto :L9
  :L7
    const/4 v5, 1
    const-string v3, ",;"
  .line 14
    invoke-static { v4, v0, v3 }, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I
    move-result v3
  .line 15
    invoke-virtual { v4, v0, v3 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v0
    goto :L9
  :L8
    const/4 v5, 1
    add-int/lit8 v3, v3, 1
    const/4 v0, 0
  :L9
    const-string v5, "no-cache"
  .line 16
    invoke-virtual { v5, v2 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :L10
    const/4 v5, -1
    const/4 v9, 1
    goto/16 :L21
  :L10
    const-string v5, "no-store"
  .line 17
    invoke-virtual { v5, v2 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :L11
    const/4 v5, -1
    const/4 v10, 1
    goto/16 :L21
  :L11
    const-string v5, "max-age"
  .line 18
    invoke-virtual { v5, v2 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :L12
    const/4 v5, -1
  .line 19
    invoke-static { v0, v5 }, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I
    move-result v11
    goto/16 :L21
  :L12
    const-string v5, "s-maxage"
  .line 20
    invoke-virtual { v5, v2 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :L13
    const/4 v5, -1
  .line 21
    invoke-static { v0, v5 }, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I
    move-result v12
    goto :L21
  :L13
    const-string v5, "private"
  .line 22
    invoke-virtual { v5, v2 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :L14
    const/4 v5, -1
    const/4 v13, 1
    goto :L21
  :L14
    const-string v5, "public"
  .line 23
    invoke-virtual { v5, v2 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :L15
    const/4 v5, -1
    const/4 v14, 1
    goto :L21
  :L15
    const-string v5, "must-revalidate"
  .line 24
    invoke-virtual { v5, v2 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :L16
    const/4 v5, -1
    const/4 v15, 1
    goto :L21
  :L16
    const-string v5, "max-stale"
  .line 25
    invoke-virtual { v5, v2 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :L17
    const v2, 2147483647
  .line 26
    invoke-static { v0, v2 }, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I
    move-result v16
    const/4 v5, -1
    goto :L21
  :L17
    const-string v5, "min-fresh"
  .line 27
    invoke-virtual { v5, v2 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :L18
    const/4 v5, -1
  .line 28
    invoke-static { v0, v5 }, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I
    move-result v17
    goto :L21
  :L18
    const/4 v5, -1
    const-string v0, "only-if-cached"
  .line 29
    invoke-virtual { v0, v2 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L19
    const/16 v18, 1
    goto :L21
  :L19
    const-string v0, "no-transform"
  .line 30
    invoke-virtual { v0, v2 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L20
    const/16 v19, 1
    goto :L21
  :L20
    const-string v0, "immutable"
  .line 31
    invoke-virtual { v0, v2 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L21
    const/16 v20, 1
  :L21
    move-object/from16 v0, p0
    move v2, v3
    goto/16 :L5
  :L22
    const/4 v5, -1
    add-int/lit8 v6, v6, 1
    move-object/from16 v0, p0
    goto/16 :L0
  :L23
    if-nez v7, :L24
    const/16 v21, 0
    goto :L25
  :L24
    move-object/from16 v21, v8
  :L25
  .line 32
    new-instance v0, Lokhttp3/CacheControl;
    move-object v8, v0
    invoke-direct/range { v8 .. v21 }, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V
    return-object v0
.end method

.method public immutable()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lokhttp3/CacheControl;->immutable:Z
    return v0
.end method

.method public isPrivate()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lokhttp3/CacheControl;->isPrivate:Z
    return v0
.end method

.method public isPublic()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lokhttp3/CacheControl;->isPublic:Z
    return v0
.end method

.method public maxAgeSeconds()I
  .registers 2
  .line 1
    iget v0, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I
    return v0
.end method

.method public maxStaleSeconds()I
  .registers 2
  .line 1
    iget v0, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I
    return v0
.end method

.method public minFreshSeconds()I
  .registers 2
  .line 1
    iget v0, p0, Lokhttp3/CacheControl;->minFreshSeconds:I
    return v0
.end method

.method public mustRevalidate()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lokhttp3/CacheControl;->mustRevalidate:Z
    return v0
.end method

.method public noCache()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lokhttp3/CacheControl;->noCache:Z
    return v0
.end method

.method public noStore()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lokhttp3/CacheControl;->noStore:Z
    return v0
.end method

.method public noTransform()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lokhttp3/CacheControl;->noTransform:Z
    return v0
.end method

.method public onlyIfCached()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lokhttp3/CacheControl;->onlyIfCached:Z
    return v0
.end method

.method public sMaxAgeSeconds()I
  .registers 2
  .line 1
    iget v0, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I
    return v0
.end method

.method public toString()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;
    if-eqz v0, :L0
    goto :L1
  :L0
  .line 2
    invoke-direct { p0 }, Lokhttp3/CacheControl;->headerValue()Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;
  :L1
    return-object v0
.end method
