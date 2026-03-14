.class public final Lokhttp3/internal/http/HttpMethod;
.super Ljava/lang/Object;
.source "SourceFile"

.method private constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static invalidatesCache(Ljava/lang/String;)Z
  .registers 2
    const-string v0, "POST"
  .line 1
    invoke-virtual { p0, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L1
    const-string v0, "PATCH"
  .line 2
    invoke-virtual { p0, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L1
    const-string v0, "PUT"
  .line 3
    invoke-virtual { p0, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L1
    const-string v0, "DELETE"
  .line 4
    invoke-virtual { p0, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L1
    const-string v0, "MOVE"
  .line 5
    invoke-virtual { p0, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
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

.method public static permitsRequestBody(Ljava/lang/String;)Z
  .registers 2
    const-string v0, "GET"
  .line 1
    invoke-virtual { p0, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L0
    const-string v0, "HEAD"
    invoke-virtual { p0, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p0
    if-nez p0, :L0
    const/4 p0, 1
    goto :L1
  :L0
    const/4 p0, 0
  :L1
    return p0
.end method

.method public static redirectsToGet(Ljava/lang/String;)Z
  .registers 2
    const-string v0, "PROPFIND"
  .line 1
    invoke-virtual { p0, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p0
    xor-int/lit8 p0, p0, 1
    return p0
.end method

.method public static redirectsWithBody(Ljava/lang/String;)Z
  .registers 2
    const-string v0, "PROPFIND"
  .line 1
    invoke-virtual { p0, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p0
    return p0
.end method

.method public static requiresRequestBody(Ljava/lang/String;)Z
  .registers 2
    const-string v0, "POST"
  .line 1
    invoke-virtual { p0, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L1
    const-string v0, "PUT"
  .line 2
    invoke-virtual { p0, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L1
    const-string v0, "PATCH"
  .line 3
    invoke-virtual { p0, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L1
    const-string v0, "PROPPATCH"
  .line 4
    invoke-virtual { p0, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L1
    const-string v0, "REPORT"
  .line 5
    invoke-virtual { p0, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
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
