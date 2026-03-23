.class public final Lokhttp3/Headers;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lokhttp3/Headers$Builder;
  }
.end annotation

.field private final namesAndValues:[Ljava/lang/String;

.method constructor <init>(Lokhttp3/Headers$Builder;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iget-object p1, p1, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;
    invoke-interface { p1 }, Ljava/util/List;->size()I
    move-result v0
    new-array v0, v0, [Ljava/lang/String;
    invoke-interface { p1, v0 }, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    move-result-object p1
    check-cast p1, [Ljava/lang/String;
    iput-object p1, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;
    return-void
.end method

.method private constructor <init>([Ljava/lang/String;)V
  .registers 2
  .line 3
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 4
    iput-object p1, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;
    return-void
.end method

.method static checkName(Ljava/lang/String;)V
  .registers 6
    if-eqz p0, :L4
  .line 1
    invoke-virtual { p0 }, Ljava/lang/String;->isEmpty()Z
    move-result v0
    if-nez v0, :L3
  .line 2
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L2
  .line 3
    invoke-virtual { p0, v2 }, Ljava/lang/String;->charAt(I)C
    move-result v3
    const/16 v4, 32
    if-le v3, v4, :L1
    const/16 v4, 127
    if-ge v3, v4, :L1
    add-int/lit8 v2, v2, 1
    goto :L0
  :L1
  .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;
    const/4 v4, 3
    new-array v4, v4, [Ljava/lang/Object;
  .line 5
    invoke-static { v3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    aput-object v3, v4, v1
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    const/4 v2, 1
    aput-object v1, v4, v2
    const/4 v1, 2
    aput-object p0, v4, v1
    const-string p0, "Unexpected char %#04x at %d in header name: %s"
  .line 6
    invoke-static { p0, v4 }, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object p0
    invoke-direct { v0, p0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L2
    return-void
  :L3
  .line 7
    new-instance p0, Ljava/lang/IllegalArgumentException;
    const-string v0, "name is empty"
    invoke-direct { p0, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
  :L4
  .line 8
    new-instance p0, Ljava/lang/NullPointerException;
    const-string v0, "name == null"
    invoke-direct { p0, v0 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    goto :L6
  :L5
    throw p0
  :L6
    goto :L5
.end method

.method static checkValue(Ljava/lang/String;Ljava/lang/String;)V
  .registers 7
    if-eqz p0, :L4
  .line 1
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L3
  .line 2
    invoke-virtual { p0, v2 }, Ljava/lang/String;->charAt(I)C
    move-result v3
    const/16 v4, 31
    if-gt v3, v4, :L1
    const/16 v4, 9
    if-ne v3, v4, :L2
  :L1
    const/16 v4, 127
    if-ge v3, v4, :L2
    add-int/lit8 v2, v2, 1
    goto :L0
  :L2
  .line 3
    new-instance v0, Ljava/lang/IllegalArgumentException;
    const/4 v4, 4
    new-array v4, v4, [Ljava/lang/Object;
  .line 4
    invoke-static { v3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    aput-object v3, v4, v1
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    const/4 v2, 1
    aput-object v1, v4, v2
    const/4 v1, 2
    aput-object p1, v4, v1
    const/4 p1, 3
    aput-object p0, v4, p1
    const-string p0, "Unexpected char %#04x at %d in %s value: %s"
  .line 5
    invoke-static { p0, v4 }, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object p0
    invoke-direct { v0, p0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L3
    return-void
  :L4
  .line 6
    new-instance p0, Ljava/lang/NullPointerException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "value for name "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, " == null"
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p0, p1 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    goto :L6
  :L5
    throw p0
  :L6
    goto :L5
.end method

.method private static get([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  .registers 4
  .line 2
    array-length v0, p0
    add-int/lit8 v0, v0, -2
  :L0
    if-ltz v0, :L2
  .line 3
    aget-object v1, p0, v0
    invoke-virtual { p1, v1 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L1
    add-int/lit8 v0, v0, 1
  .line 4
    aget-object p0, p0, v0
    return-object p0
  :L1
    add-int/lit8 v0, v0, -2
    goto :L0
  :L2
    const/4 p0, 0
    return-object p0
.end method

.method public static of(Ljava/util/Map;)Lokhttp3/Headers;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/Map<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;)",
      "Lokhttp3/Headers;"
    }
  .end annotation
  .registers 5
    if-eqz p0, :L3
  .line 15
    invoke-interface { p0 }, Ljava/util/Map;->size()I
    move-result v0
    mul-int/lit8 v0, v0, 2
    new-array v0, v0, [Ljava/lang/String;
    const/4 v1, 0
  .line 16
    invoke-interface { p0 }, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object p0
    invoke-interface { p0 }, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object p0
  :L0
    invoke-interface { p0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L2
    invoke-interface { p0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/util/Map$Entry;
  .line 17
    invoke-interface { v2 }, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v3
    if-eqz v3, :L1
    invoke-interface { v2 }, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    move-result-object v3
    if-eqz v3, :L1
  .line 18
    invoke-interface { v2 }, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/String;
    invoke-virtual { v3 }, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v3
  .line 19
    invoke-interface { v2 }, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/String;
    invoke-virtual { v2 }, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v2
  .line 20
    invoke-static { v3 }, Lokhttp3/Headers;->checkName(Ljava/lang/String;)V
  .line 21
    invoke-static { v2, v3 }, Lokhttp3/Headers;->checkValue(Ljava/lang/String;Ljava/lang/String;)V
  .line 22
    aput-object v3, v0, v1
    add-int/lit8 v3, v1, 1
  .line 23
    aput-object v2, v0, v3
    add-int/lit8 v1, v1, 2
    goto :L0
  :L1
  .line 24
    new-instance p0, Ljava/lang/IllegalArgumentException;
    const-string v0, "Headers cannot be null"
    invoke-direct { p0, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
  :L2
  .line 25
    new-instance p0, Lokhttp3/Headers;
    invoke-direct { p0, v0 }, Lokhttp3/Headers;-><init>([Ljava/lang/String;)V
    return-object p0
  :L3
  .line 26
    new-instance p0, Ljava/lang/NullPointerException;
    const-string v0, "headers == null"
    invoke-direct { p0, v0 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    goto :L5
  :L4
    throw p0
  :L5
    goto :L4
.end method

.method public static varargs of([Ljava/lang/String;)Lokhttp3/Headers;
  .registers 4
    if-eqz p0, :L5
  .line 1
    array-length v0, p0
    rem-int/lit8 v0, v0, 2
    if-nez v0, :L4
  .line 2
    invoke-virtual { p0 }, [Ljava/lang/String;->clone()Ljava/lang/Object;
    move-result-object p0
    check-cast p0, [Ljava/lang/String;
    const/4 v0, 0
    const/4 v1, 0
  :L0
  .line 3
    array-length v2, p0
    if-ge v1, v2, :L2
  .line 4
    aget-object v2, p0, v1
    if-eqz v2, :L1
  .line 5
    aget-object v2, p0, v1
    invoke-virtual { v2 }, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v2
    aput-object v2, p0, v1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L1
  .line 6
    new-instance p0, Ljava/lang/IllegalArgumentException;
    const-string v0, "Headers cannot be null"
    invoke-direct { p0, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
  :L2
  .line 7
    array-length v1, p0
    if-ge v0, v1, :L3
  .line 8
    aget-object v1, p0, v0
    add-int/lit8 v2, v0, 1
  .line 9
    aget-object v2, p0, v2
  .line 10
    invoke-static { v1 }, Lokhttp3/Headers;->checkName(Ljava/lang/String;)V
  .line 11
    invoke-static { v2, v1 }, Lokhttp3/Headers;->checkValue(Ljava/lang/String;Ljava/lang/String;)V
    add-int/lit8 v0, v0, 2
    goto :L2
  :L3
  .line 12
    new-instance v0, Lokhttp3/Headers;
    invoke-direct { v0, p0 }, Lokhttp3/Headers;-><init>([Ljava/lang/String;)V
    return-object v0
  :L4
  .line 13
    new-instance p0, Ljava/lang/IllegalArgumentException;
    const-string v0, "Expected alternating header names and values"
    invoke-direct { p0, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
  :L5
  .line 14
    new-instance p0, Ljava/lang/NullPointerException;
    const-string v0, "namesAndValues == null"
    invoke-direct { p0, v0 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    goto :L7
  :L6
    throw p0
  :L7
    goto :L6
.end method

.method public byteCount()J
  .registers 7
  .line 1
    iget-object v0, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;
    array-length v1, v0
    mul-int/lit8 v1, v1, 2
    int-to-long v1, v1
  .line 2
    array-length v0, v0
    const/4 v3, 0
  :L0
    if-ge v3, v0, :L1
  .line 3
    iget-object v4, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;
    aget-object v4, v4, v3
    invoke-virtual { v4 }, Ljava/lang/String;->length()I
    move-result v4
    int-to-long v4, v4
    add-long/2addr v1, v4
    add-int/lit8 v3, v3, 1
    goto :L0
  :L1
    return-wide v1
.end method

.method public equals(Ljava/lang/Object;)Z
  .parameter # Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
  .registers 3
  .line 1
    instance-of v0, p1, Lokhttp3/Headers;
    if-eqz v0, :L0
    check-cast p1, Lokhttp3/Headers;
    iget-object p1, p1, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;
    iget-object v0, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;
  .line 2
    invoke-static { p1, v0 }, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;
    invoke-static { v0, p1 }, Lokhttp3/Headers;->get([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    return-object p1
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    if-eqz p1, :L0
  .line 2
    invoke-static { p1 }, Lokhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;
    move-result-object p1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return-object p1
.end method

.method public hashCode()I
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;
    invoke-static { v0 }, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
    move-result v0
    return v0
.end method

.method public name(I)Ljava/lang/String;
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;
    mul-int/lit8 p1, p1, 2
    aget-object p1, v0, p1
    return-object p1
.end method

.method public names()Ljava/util/Set;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/Set<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
  .registers 5
  .line 1
    new-instance v0, Ljava/util/TreeSet;
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;
    invoke-direct { v0, v1 }, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V
  .line 2
    invoke-virtual { p0 }, Lokhttp3/Headers;->size()I
    move-result v1
    const/4 v2, 0
  :L0
    if-ge v2, v1, :L1
  .line 3
    invoke-virtual { p0, v2 }, Lokhttp3/Headers;->name(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v0, v3 }, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    add-int/lit8 v2, v2, 1
    goto :L0
  :L1
  .line 4
    invoke-static { v0 }, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    move-result-object v0
    return-object v0
.end method

.method public newBuilder()Lokhttp3/Headers$Builder;
  .registers 4
  .line 1
    new-instance v0, Lokhttp3/Headers$Builder;
    invoke-direct { v0 }, Lokhttp3/Headers$Builder;-><init>()V
  .line 2
    iget-object v1, v0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;
    iget-object v2, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;
    invoke-static { v1, v2 }, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    return-object v0
.end method

.method public size()I
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;
    array-length v0, v0
    div-int/lit8 v0, v0, 2
    return v0
.end method

.method public toMultimap()Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/Map<",
      "Ljava/lang/String;",
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;>;"
    }
  .end annotation
  .registers 7
  .line 1
    new-instance v0, Ljava/util/TreeMap;
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;
    invoke-direct { v0, v1 }, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V
  .line 2
    invoke-virtual { p0 }, Lokhttp3/Headers;->size()I
    move-result v1
    const/4 v2, 0
  :L0
    if-ge v2, v1, :L2
  .line 3
    invoke-virtual { p0, v2 }, Lokhttp3/Headers;->name(I)Ljava/lang/String;
    move-result-object v3
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-virtual { v3, v4 }, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object v3
  .line 4
    invoke-interface { v0, v3 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/util/List;
    if-nez v4, :L1
  .line 5
    new-instance v4, Ljava/util/ArrayList;
    const/4 v5, 2
    invoke-direct { v4, v5 }, Ljava/util/ArrayList;-><init>(I)V
  .line 6
    invoke-interface { v0, v3, v4 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L1
  .line 7
    invoke-virtual { p0, v2 }, Lokhttp3/Headers;->value(I)Ljava/lang/String;
    move-result-object v3
    invoke-interface { v4, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    add-int/lit8 v2, v2, 1
    goto :L0
  :L2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
  .line 2
    invoke-virtual { p0 }, Lokhttp3/Headers;->size()I
    move-result v1
    const/4 v2, 0
  :L0
    if-ge v2, v1, :L1
  .line 3
    invoke-virtual { p0, v2 }, Lokhttp3/Headers;->name(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, ": "
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0, v2 }, Lokhttp3/Headers;->value(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, "\n"
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    add-int/lit8 v2, v2, 1
    goto :L0
  :L1
  .line 4
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public value(I)Ljava/lang/String;
  .registers 3
  .line 1
    iget-object v0, p0, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;
    mul-int/lit8 p1, p1, 2
    add-int/lit8 p1, p1, 1
    aget-object p1, v0, p1
    return-object p1
.end method

.method public values(Ljava/lang/String;)Ljava/util/List;
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
  .registers 6
  .line 1
    invoke-virtual { p0 }, Lokhttp3/Headers;->size()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L3
  .line 2
    invoke-virtual { p0, v2 }, Lokhttp3/Headers;->name(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { p1, v3 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :L2
    if-nez v1, :L1
  .line 3
    new-instance v1, Ljava/util/ArrayList;
    const/4 v3, 2
    invoke-direct { v1, v3 }, Ljava/util/ArrayList;-><init>(I)V
  :L1
  .line 4
    invoke-virtual { p0, v2 }, Lokhttp3/Headers;->value(I)Ljava/lang/String;
    move-result-object v3
    invoke-interface { v1, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L2
    add-int/lit8 v2, v2, 1
    goto :L0
  :L3
    if-eqz v1, :L4
  .line 5
    invoke-static { v1 }, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    move-result-object p1
    goto :L5
  :L4
  .line 6
    invoke-static { }, Ljava/util/Collections;->emptyList()Ljava/util/List;
    move-result-object p1
  :L5
    return-object p1
.end method
