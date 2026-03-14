.class final Lc/d/f$b;
.super Ljava/lang/Object;
.implements Ljava/util/Set;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/d/f;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 16
  name = "b"
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Ljava/util/Set<",
    "Ljava/util/Map$Entry<",
    "TK;TV;>;>;"
  }
.end annotation

.field final synthetic b:Lc/d/f;

.method constructor <init>(Lc/d/f;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lc/d/f$b;->b:Lc/d/f;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Ljava/util/Map$Entry;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/Map$Entry<",
      "TK;TV;>;)Z"
    }
  .end annotation
  .registers 2
  .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    invoke-direct { p1 }, Ljava/lang/UnsupportedOperationException;-><init>()V
    throw p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
  .registers 2
  .line 1
    check-cast p1, Ljava/util/Map$Entry;
    invoke-virtual { p0, p1 }, Lc/d/f$b;->a(Ljava/util/Map$Entry;)Z
    const/4 p1, 0
    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/Collection<",
      "+",
      "Ljava/util/Map$Entry<",
      "TK;TV;>;>;)Z"
    }
  .end annotation
  .registers 6
  .line 1
    iget-object v0, p0, Lc/d/f$b;->b:Lc/d/f;
    invoke-virtual { v0 }, Lc/d/f;->d()I
    move-result v0
  .line 2
    invoke-interface { p1 }, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L0
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/util/Map$Entry;
  .line 3
    iget-object v2, p0, Lc/d/f$b;->b:Lc/d/f;
    invoke-interface { v1 }, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v3
    invoke-interface { v1 }, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    move-result-object v1
    invoke-virtual { v2, v3, v1 }, Lc/d/f;->g(Ljava/lang/Object;Ljava/lang/Object;)V
    goto :L0
  :L1
  .line 4
    iget-object p1, p0, Lc/d/f$b;->b:Lc/d/f;
    invoke-virtual { p1 }, Lc/d/f;->d()I
    move-result p1
    if-eq v0, p1, :L2
    const/4 p1, 1
    goto :L3
  :L2
    const/4 p1, 0
  :L3
    return p1
.end method

.method public clear()V
  .registers 2
  .line 1
    iget-object v0, p0, Lc/d/f$b;->b:Lc/d/f;
    invoke-virtual { v0 }, Lc/d/f;->a()V
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
  .registers 5
  .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;
    const/4 v1, 0
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    check-cast p1, Ljava/util/Map$Entry;
  .line 3
    iget-object v0, p0, Lc/d/f$b;->b:Lc/d/f;
    invoke-interface { p1 }, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v2
    invoke-virtual { v0, v2 }, Lc/d/f;->e(Ljava/lang/Object;)I
    move-result v0
    if-gez v0, :L1
    return v1
  :L1
  .line 4
    iget-object v1, p0, Lc/d/f$b;->b:Lc/d/f;
    const/4 v2, 1
    invoke-virtual { v1, v0, v2 }, Lc/d/f;->b(II)Ljava/lang/Object;
    move-result-object v0
  .line 5
    invoke-interface { p1 }, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    move-result-object p1
    invoke-static { v0, p1 }, Lc/d/c;->c(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result p1
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/Collection<",
      "*>;)Z"
    }
  .end annotation
  .registers 3
  .line 1
    invoke-interface { p1 }, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L0
  .line 2
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L1
  .line 3
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    invoke-virtual { p0, v0 }, Lc/d/f$b;->contains(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L0
    const/4 p1, 0
    return p1
  :L1
    const/4 p1, 1
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 2
  .line 1
    invoke-static { p0, p1 }, Lc/d/f;->k(Ljava/util/Set;Ljava/lang/Object;)Z
    move-result p1
    return p1
.end method

.method public hashCode()I
  .registers 7
  .line 1
    iget-object v0, p0, Lc/d/f$b;->b:Lc/d/f;
    invoke-virtual { v0 }, Lc/d/f;->d()I
    move-result v0
    const/4 v1, 1
    sub-int/2addr v0, v1
    const/4 v2, 0
    const/4 v3, 0
  :L0
    if-ltz v0, :L5
  .line 2
    iget-object v4, p0, Lc/d/f$b;->b:Lc/d/f;
    invoke-virtual { v4, v0, v2 }, Lc/d/f;->b(II)Ljava/lang/Object;
    move-result-object v4
  .line 3
    iget-object v5, p0, Lc/d/f$b;->b:Lc/d/f;
    invoke-virtual { v5, v0, v1 }, Lc/d/f;->b(II)Ljava/lang/Object;
    move-result-object v5
    if-nez v4, :L1
    const/4 v4, 0
    goto :L2
  :L1
  .line 4
    invoke-virtual { v4 }, Ljava/lang/Object;->hashCode()I
    move-result v4
  :L2
    if-nez v5, :L3
    const/4 v5, 0
    goto :L4
  :L3
  .line 5
    invoke-virtual { v5 }, Ljava/lang/Object;->hashCode()I
    move-result v5
  :L4
    xor-int/2addr v4, v5
    add-int/2addr v3, v4
    add-int/lit8 v0, v0, -1
    goto :L0
  :L5
    return v3
.end method

.method public isEmpty()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lc/d/f$b;->b:Lc/d/f;
    invoke-virtual { v0 }, Lc/d/f;->d()I
    move-result v0
    if-nez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/Iterator<",
      "Ljava/util/Map$Entry<",
      "TK;TV;>;>;"
    }
  .end annotation
  .registers 3
  .line 1
    new-instance v0, Lc/d/f$d;
    iget-object v1, p0, Lc/d/f$b;->b:Lc/d/f;
    invoke-direct { v0, v1 }, Lc/d/f$d;-><init>(Lc/d/f;)V
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
  .registers 2
  .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    invoke-direct { p1 }, Ljava/lang/UnsupportedOperationException;-><init>()V
    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/Collection<",
      "*>;)Z"
    }
  .end annotation
  .registers 2
  .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    invoke-direct { p1 }, Ljava/lang/UnsupportedOperationException;-><init>()V
    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/Collection<",
      "*>;)Z"
    }
  .end annotation
  .registers 2
  .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    invoke-direct { p1 }, Ljava/lang/UnsupportedOperationException;-><init>()V
    throw p1
.end method

.method public size()I
  .registers 2
  .line 1
    iget-object v0, p0, Lc/d/f$b;->b:Lc/d/f;
    invoke-virtual { v0 }, Lc/d/f;->d()I
    move-result v0
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
  .registers 2
  .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;
    invoke-direct { v0 }, Ljava/lang/UnsupportedOperationException;-><init>()V
    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Ljava/lang/Object;",
      ">([TT;)[TT;"
    }
  .end annotation
  .registers 2
  .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    invoke-direct { p1 }, Ljava/lang/UnsupportedOperationException;-><init>()V
    throw p1
.end method
