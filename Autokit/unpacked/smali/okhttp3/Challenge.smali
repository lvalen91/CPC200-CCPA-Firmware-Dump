.class public final Lokhttp3/Challenge;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final authParams:Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Map<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field private final scheme:Ljava/lang/String;

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
  .registers 3
  .line 10
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    if-eqz p1, :L1
    if-eqz p2, :L0
  .line 11
    iput-object p1, p0, Lokhttp3/Challenge;->scheme:Ljava/lang/String;
    const-string p1, "realm"
  .line 12
    invoke-static { p1, p2 }, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    move-result-object p1
    iput-object p1, p0, Lokhttp3/Challenge;->authParams:Ljava/util/Map;
    return-void
  :L0
  .line 13
    new-instance p1, Ljava/lang/NullPointerException;
    const-string p2, "realm == null"
    invoke-direct { p1, p2 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 14
    new-instance p1, Ljava/lang/NullPointerException;
    const-string p2, "scheme == null"
    invoke-direct { p1, p2 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/String;",
      "Ljava/util/Map<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;)V"
    }
  .end annotation
  .registers 6
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    if-eqz p1, :L5
    if-eqz p2, :L4
  .line 2
    iput-object p1, p0, Lokhttp3/Challenge;->scheme:Ljava/lang/String;
  .line 3
    new-instance p1, Ljava/util/LinkedHashMap;
    invoke-direct { p1 }, Ljava/util/LinkedHashMap;-><init>()V
  .line 4
    invoke-interface { p2 }, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object p2
    invoke-interface { p2 }, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object p2
  :L0
    invoke-interface { p2 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L3
    invoke-interface { p2 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/Map$Entry;
  .line 5
    invoke-interface { v0 }, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v1
    if-nez v1, :L1
    const/4 v1, 0
    goto :L2
  :L1
    invoke-interface { v0 }, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-virtual { v1, v2 }, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object v1
  :L2
  .line 6
    invoke-interface { v0 }, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    move-result-object v0
    invoke-interface { p1, v1, v0 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    goto :L0
  :L3
  .line 7
    invoke-static { p1 }, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    move-result-object p1
    iput-object p1, p0, Lokhttp3/Challenge;->authParams:Ljava/util/Map;
    return-void
  :L4
  .line 8
    new-instance p1, Ljava/lang/NullPointerException;
    const-string p2, "authParams == null"
    invoke-direct { p1, p2 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
  :L5
  .line 9
    new-instance p1, Ljava/lang/NullPointerException;
    const-string p2, "scheme == null"
    invoke-direct { p1, p2 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    goto :L7
  :L6
    throw p1
  :L7
    goto :L6
.end method

.method public authParams()Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/Map<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Challenge;->authParams:Ljava/util/Map;
    return-object v0
.end method

.method public charset()Ljava/nio/charset/Charset;
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/Challenge;->authParams:Ljava/util/Map;
    const-string v1, "charset"
    invoke-interface { v0, v1 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
    if-eqz v0, :L2
  :L0
  .line 2
    invoke-static { v0 }, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    move-result-object v0
  :L1
    return-object v0
  :L2
  .line 3
    sget-object v0, Lokhttp3/internal/Util;->ISO_8859_1:Ljava/nio/charset/Charset;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
  .parameter # Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 4
  .line 1
    instance-of v0, p1, Lokhttp3/Challenge;
    if-eqz v0, :L0
    check-cast p1, Lokhttp3/Challenge;
    iget-object v0, p1, Lokhttp3/Challenge;->scheme:Ljava/lang/String;
    iget-object v1, p0, Lokhttp3/Challenge;->scheme:Ljava/lang/String;
  .line 2
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    iget-object p1, p1, Lokhttp3/Challenge;->authParams:Ljava/util/Map;
    iget-object v0, p0, Lokhttp3/Challenge;->authParams:Ljava/util/Map;
  .line 3
    invoke-interface { p1, v0 }, Ljava/util/Map;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method public hashCode()I
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/Challenge;->scheme:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->hashCode()I
    move-result v0
    const/16 v1, 899
    add-int/2addr v1, v0
    mul-int/lit8 v1, v1, 31
  .line 2
    iget-object v0, p0, Lokhttp3/Challenge;->authParams:Ljava/util/Map;
    invoke-interface { v0 }, Ljava/util/Map;->hashCode()I
    move-result v0
    add-int/2addr v1, v0
    return v1
.end method

.method public realm()Ljava/lang/String;
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/Challenge;->authParams:Ljava/util/Map;
    const-string v1, "realm"
    invoke-interface { v0, v1 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
    return-object v0
.end method

.method public scheme()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Challenge;->scheme:Ljava/lang/String;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    iget-object v1, p0, Lokhttp3/Challenge;->scheme:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, " authParams="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lokhttp3/Challenge;->authParams:Ljava/util/Map;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public withCharset(Ljava/nio/charset/Charset;)Lokhttp3/Challenge;
  .registers 4
    if-eqz p1, :L0
  .line 1
    new-instance v0, Ljava/util/LinkedHashMap;
    iget-object v1, p0, Lokhttp3/Challenge;->authParams:Ljava/util/Map;
    invoke-direct { v0, v1 }, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
  .line 2
    invoke-virtual { p1 }, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    move-result-object p1
    const-string v1, "charset"
    invoke-interface { v0, v1, p1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 3
    new-instance p1, Lokhttp3/Challenge;
    iget-object v1, p0, Lokhttp3/Challenge;->scheme:Ljava/lang/String;
    invoke-direct { p1, v1, v0 }, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/util/Map;)V
    return-object p1
  :L0
  .line 4
    new-instance p1, Ljava/lang/NullPointerException;
    const-string v0, "charset == null"
    invoke-direct { p1, v0 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method
