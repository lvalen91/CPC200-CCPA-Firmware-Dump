.class final Lc/d/f$c;
.super Ljava/lang/Object;
.implements Ljava/util/Set;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/d/f;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 16
  name = "c"
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Ljava/util/Set<",
    "TK;>;"
  }
.end annotation

.field final synthetic b:Lc/d/f;

.method constructor <init>(Lc/d/f;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lc/d/f$c;->b:Lc/d/f;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TK;)Z"
    }
  .end annotation
  .registers 2
  .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    invoke-direct { p1 }, Ljava/lang/UnsupportedOperationException;-><init>()V
    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/Collection<",
      "+TK;>;)Z"
    }
  .end annotation
  .registers 2
  .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    invoke-direct { p1 }, Ljava/lang/UnsupportedOperationException;-><init>()V
    throw p1
.end method

.method public clear()V
  .registers 2
  .line 1
    iget-object v0, p0, Lc/d/f$c;->b:Lc/d/f;
    invoke-virtual { v0 }, Lc/d/f;->a()V
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Lc/d/f$c;->b:Lc/d/f;
    invoke-virtual { v0, p1 }, Lc/d/f;->e(Ljava/lang/Object;)I
    move-result p1
    if-ltz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
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
    iget-object v0, p0, Lc/d/f$c;->b:Lc/d/f;
    invoke-virtual { v0 }, Lc/d/f;->c()Ljava/util/Map;
    move-result-object v0
    invoke-static { v0, p1 }, Lc/d/f;->j(Ljava/util/Map;Ljava/util/Collection;)Z
    move-result p1
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
  .registers 5
  .line 1
    iget-object v0, p0, Lc/d/f$c;->b:Lc/d/f;
    invoke-virtual { v0 }, Lc/d/f;->d()I
    move-result v0
    add-int/lit8 v0, v0, -1
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ltz v0, :L3
  .line 2
    iget-object v3, p0, Lc/d/f$c;->b:Lc/d/f;
    invoke-virtual { v3, v0, v1 }, Lc/d/f;->b(II)Ljava/lang/Object;
    move-result-object v3
    if-nez v3, :L1
    const/4 v3, 0
    goto :L2
  :L1
  .line 3
    invoke-virtual { v3 }, Ljava/lang/Object;->hashCode()I
    move-result v3
  :L2
    add-int/2addr v2, v3
    add-int/lit8 v0, v0, -1
    goto :L0
  :L3
    return v2
.end method

.method public isEmpty()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lc/d/f$c;->b:Lc/d/f;
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
      "TK;>;"
    }
  .end annotation
  .registers 4
  .line 1
    new-instance v0, Lc/d/f$a;
    iget-object v1, p0, Lc/d/f$c;->b:Lc/d/f;
    const/4 v2, 0
    invoke-direct { v0, v1, v2 }, Lc/d/f$a;-><init>(Lc/d/f;I)V
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Lc/d/f$c;->b:Lc/d/f;
    invoke-virtual { v0, p1 }, Lc/d/f;->e(Ljava/lang/Object;)I
    move-result p1
    if-ltz p1, :L0
  .line 2
    iget-object v0, p0, Lc/d/f$c;->b:Lc/d/f;
    invoke-virtual { v0, p1 }, Lc/d/f;->h(I)V
    const/4 p1, 1
    return p1
  :L0
    const/4 p1, 0
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/Collection<",
      "*>;)Z"
    }
  .end annotation
  .registers 3
  .line 1
    iget-object v0, p0, Lc/d/f$c;->b:Lc/d/f;
    invoke-virtual { v0 }, Lc/d/f;->c()Ljava/util/Map;
    move-result-object v0
    invoke-static { v0, p1 }, Lc/d/f;->o(Ljava/util/Map;Ljava/util/Collection;)Z
    move-result p1
    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/Collection<",
      "*>;)Z"
    }
  .end annotation
  .registers 3
  .line 1
    iget-object v0, p0, Lc/d/f$c;->b:Lc/d/f;
    invoke-virtual { v0 }, Lc/d/f;->c()Ljava/util/Map;
    move-result-object v0
    invoke-static { v0, p1 }, Lc/d/f;->p(Ljava/util/Map;Ljava/util/Collection;)Z
    move-result p1
    return p1
.end method

.method public size()I
  .registers 2
  .line 1
    iget-object v0, p0, Lc/d/f$c;->b:Lc/d/f;
    invoke-virtual { v0 }, Lc/d/f;->d()I
    move-result v0
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
  .registers 3
  .line 1
    iget-object v0, p0, Lc/d/f$c;->b:Lc/d/f;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Lc/d/f;->q(I)[Ljava/lang/Object;
    move-result-object v0
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Ljava/lang/Object;",
      ">([TT;)[TT;"
    }
  .end annotation
  .registers 4
  .line 2
    iget-object v0, p0, Lc/d/f$c;->b:Lc/d/f;
    const/4 v1, 0
    invoke-virtual { v0, p1, v1 }, Lc/d/f;->r([Ljava/lang/Object;I)[Ljava/lang/Object;
    move-result-object p1
    return-object p1
.end method
