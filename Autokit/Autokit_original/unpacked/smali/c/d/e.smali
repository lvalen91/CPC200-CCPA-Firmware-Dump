.class public Lc/d/e;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "<K:",
    "Ljava/lang/Object;",
    "V:",
    "Ljava/lang/Object;",
    ">",
    "Ljava/lang/Object;"
  }
.end annotation

.field private final a:Ljava/util/LinkedHashMap;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/LinkedHashMap<",
      "TK;TV;>;"
    }
  .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.method public constructor <init>(I)V
  .registers 5
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    if-lez p1, :L0
  .line 2
    iput p1, p0, Lc/d/e;->c:I
  .line 3
    new-instance p1, Ljava/util/LinkedHashMap;
    const/4 v0, 0
    const/high16 v1, 16192
    const/4 v2, 1
    invoke-direct { p1, v0, v1, v2 }, Ljava/util/LinkedHashMap;-><init>(IFZ)V
    iput-object p1, p0, Lc/d/e;->a:Ljava/util/LinkedHashMap;
    return-void
  :L0
  .line 4
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "maxSize <= 0"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method private e(Ljava/lang/Object;Ljava/lang/Object;)I
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TK;TV;)I"
    }
  .end annotation
  .registers 6
  .line 1
    invoke-virtual { p0, p1, p2 }, Lc/d/e;->f(Ljava/lang/Object;Ljava/lang/Object;)I
    move-result v0
    if-ltz v0, :L0
    return v0
  :L0
  .line 2
    new-instance v0, Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Negative size: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string p1, "="
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method protected a(Ljava/lang/Object;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TK;)TV;"
    }
  .end annotation
  .registers 2
    const/4 p1, 0
    return-object p1
.end method

.method protected b(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(ZTK;TV;TV;)V"
    }
  .end annotation
  .registers 5
    return-void
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TK;)TV;"
    }
  .end annotation
  .catchall { :L0 .. :L2 } :L12
  .catchall { :L4 .. :L7 } :L9
  .catchall { :L10 .. :L11 } :L9
  .catchall { :L13 .. :L14 } :L12
  .registers 6
    if-eqz p1, :L15
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iget-object v0, p0, Lc/d/e;->a:Ljava/util/LinkedHashMap;
    invoke-virtual { v0, p1 }, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    if-eqz v0, :L1
  .line 3
    iget p1, p0, Lc/d/e;->g:I
    add-int/lit8 p1, p1, 1
    iput p1, p0, Lc/d/e;->g:I
  .line 4
    monitor-exit p0
    return-object v0
  :L1
  .line 5
    iget v0, p0, Lc/d/e;->h:I
    add-int/lit8 v0, v0, 1
    iput v0, p0, Lc/d/e;->h:I
  .line 6
    monitor-exit p0
  :L2
  .line 7
    invoke-virtual { p0, p1 }, Lc/d/e;->a(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    if-nez v0, :L3
    const/4 p1, 0
    return-object p1
  :L3
  .line 8
    monitor-enter p0
  :L4
  .line 9
    iget v1, p0, Lc/d/e;->e:I
    add-int/lit8 v1, v1, 1
    iput v1, p0, Lc/d/e;->e:I
  .line 10
    iget-object v1, p0, Lc/d/e;->a:Ljava/util/LinkedHashMap;
    invoke-virtual { v1, p1, v0 }, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    if-eqz v1, :L5
  .line 11
    iget-object v2, p0, Lc/d/e;->a:Ljava/util/LinkedHashMap;
    invoke-virtual { v2, p1, v1 }, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    goto :L6
  :L5
  .line 12
    iget v2, p0, Lc/d/e;->b:I
    invoke-direct { p0, p1, v0 }, Lc/d/e;->e(Ljava/lang/Object;Ljava/lang/Object;)I
    move-result v3
    add-int/2addr v2, v3
    iput v2, p0, Lc/d/e;->b:I
  :L6
  .line 13
    monitor-exit p0
  :L7
    if-eqz v1, :L8
    const/4 v2, 0
  .line 14
    invoke-virtual { p0, v2, p1, v0, v1 }, Lc/d/e;->b(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    return-object v1
  :L8
  .line 15
    iget p1, p0, Lc/d/e;->c:I
    invoke-virtual { p0, p1 }, Lc/d/e;->g(I)V
    return-object v0
  :L9
    move-exception p1
  :L10
  .line 16
    monitor-exit p0
  :L11
    throw p1
  :L12
    move-exception p1
  :L13
  .line 17
    monitor-exit p0
  :L14
    throw p1
  :L15
  .line 18
    new-instance p1, Ljava/lang/NullPointerException;
    const-string v0, "key == null"
    invoke-direct { p1, v0 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TK;TV;)TV;"
    }
  .end annotation
  .catchall { :L0 .. :L2 } :L4
  .catchall { :L5 .. :L6 } :L4
  .registers 6
    if-eqz p1, :L7
    if-eqz p2, :L7
  .line 1
    monitor-enter p0
  :L0
  .line 2
    iget v0, p0, Lc/d/e;->d:I
    add-int/lit8 v0, v0, 1
    iput v0, p0, Lc/d/e;->d:I
  .line 3
    iget v0, p0, Lc/d/e;->b:I
    invoke-direct { p0, p1, p2 }, Lc/d/e;->e(Ljava/lang/Object;Ljava/lang/Object;)I
    move-result v1
    add-int/2addr v0, v1
    iput v0, p0, Lc/d/e;->b:I
  .line 4
    iget-object v0, p0, Lc/d/e;->a:Ljava/util/LinkedHashMap;
    invoke-virtual { v0, p1, p2 }, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    if-eqz v0, :L1
  .line 5
    iget v1, p0, Lc/d/e;->b:I
    invoke-direct { p0, p1, v0 }, Lc/d/e;->e(Ljava/lang/Object;Ljava/lang/Object;)I
    move-result v2
    sub-int/2addr v1, v2
    iput v1, p0, Lc/d/e;->b:I
  :L1
  .line 6
    monitor-exit p0
  :L2
    if-eqz v0, :L3
    const/4 v1, 0
  .line 7
    invoke-virtual { p0, v1, p1, v0, p2 }, Lc/d/e;->b(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
  :L3
  .line 8
    iget p1, p0, Lc/d/e;->c:I
    invoke-virtual { p0, p1 }, Lc/d/e;->g(I)V
    return-object v0
  :L4
    move-exception p1
  :L5
  .line 9
    monitor-exit p0
  :L6
    throw p1
  :L7
  .line 10
    new-instance p1, Ljava/lang/NullPointerException;
    const-string p2, "key == null || value == null"
    invoke-direct { p1, p2 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method protected f(Ljava/lang/Object;Ljava/lang/Object;)I
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TK;TV;)I"
    }
  .end annotation
  .registers 3
    const/4 p1, 1
    return p1
.end method

.method public g(I)V
  .catchall { :L1 .. :L4 } :L7
  .catchall { :L5 .. :L8 } :L7
  .registers 6
  :L0
  .line 1
    monitor-enter p0
  :L1
  .line 2
    iget v0, p0, Lc/d/e;->b:I
    if-ltz v0, :L6
    iget-object v0, p0, Lc/d/e;->a:Ljava/util/LinkedHashMap;
    invoke-virtual { v0 }, Ljava/util/LinkedHashMap;->isEmpty()Z
    move-result v0
    if-eqz v0, :L2
    iget v0, p0, Lc/d/e;->b:I
    if-nez v0, :L6
  :L2
  .line 3
    iget v0, p0, Lc/d/e;->b:I
    if-le v0, p1, :L5
    iget-object v0, p0, Lc/d/e;->a:Ljava/util/LinkedHashMap;
    invoke-virtual { v0 }, Ljava/util/LinkedHashMap;->isEmpty()Z
    move-result v0
    if-eqz v0, :L3
    goto :L5
  :L3
  .line 4
    iget-object v0, p0, Lc/d/e;->a:Ljava/util/LinkedHashMap;
    invoke-virtual { v0 }, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;
    move-result-object v0
    invoke-interface { v0 }, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/Map$Entry;
  .line 5
    invoke-interface { v0 }, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v1
  .line 6
    invoke-interface { v0 }, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    move-result-object v0
  .line 7
    iget-object v2, p0, Lc/d/e;->a:Ljava/util/LinkedHashMap;
    invoke-virtual { v2, v1 }, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
  .line 8
    iget v2, p0, Lc/d/e;->b:I
    invoke-direct { p0, v1, v0 }, Lc/d/e;->e(Ljava/lang/Object;Ljava/lang/Object;)I
    move-result v3
    sub-int/2addr v2, v3
    iput v2, p0, Lc/d/e;->b:I
  .line 9
    iget v2, p0, Lc/d/e;->f:I
    const/4 v3, 1
    add-int/2addr v2, v3
    iput v2, p0, Lc/d/e;->f:I
  .line 10
    monitor-exit p0
  :L4
    const/4 v2, 0
  .line 11
    invoke-virtual { p0, v3, v1, v0, v2 }, Lc/d/e;->b(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    goto :L0
  :L5
  .line 12
    monitor-exit p0
    return-void
  :L6
  .line 13
    new-instance p1, Ljava/lang/IllegalStateException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, ".sizeOf() is reporting inconsistent results!"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L7
    move-exception p1
  .line 14
    monitor-exit p0
  :L8
    goto :L10
  :L9
    throw p1
  :L10
    goto :L9
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
  .catchall { :L0 .. :L3 } :L4
  .registers 7
    monitor-enter p0
  :L0
  .line 1
    iget v0, p0, Lc/d/e;->g:I
    iget v1, p0, Lc/d/e;->h:I
    add-int/2addr v0, v1
    const/4 v1, 0
    if-eqz v0, :L1
  .line 2
    iget v2, p0, Lc/d/e;->g:I
    mul-int/lit8 v2, v2, 100
    div-int/2addr v2, v0
    goto :L2
  :L1
    const/4 v2, 0
  :L2
  .line 3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
    const-string v3, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"
    const/4 v4, 4
    new-array v4, v4, [Ljava/lang/Object;
    iget v5, p0, Lc/d/e;->c:I
  .line 4
    invoke-static { v5 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    aput-object v5, v4, v1
    const/4 v1, 1
    iget v5, p0, Lc/d/e;->g:I
    invoke-static { v5 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    aput-object v5, v4, v1
    const/4 v1, 2
    iget v5, p0, Lc/d/e;->h:I
    invoke-static { v5 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    aput-object v5, v4, v1
    const/4 v1, 3
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    aput-object v2, v4, v1
  .line 5
    invoke-static { v0, v3, v4 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
  :L3
    monitor-exit p0
    return-object v0
  :L4
    move-exception v0
    monitor-exit p0
    throw v0
.end method
