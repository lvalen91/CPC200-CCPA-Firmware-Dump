.class final Lc/d/f$e;
.super Ljava/lang/Object;
.implements Ljava/util/Collection;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/d/f;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 16
  name = "e"
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Ljava/util/Collection<",
    "TV;>;"
  }
.end annotation

.field final synthetic b:Lc/d/f;

.method constructor <init>(Lc/d/f;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lc/d/f$e;->b:Lc/d/f;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TV;)Z"
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
      "+TV;>;)Z"
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
    iget-object v0, p0, Lc/d/f$e;->b:Lc/d/f;
    invoke-virtual { v0 }, Lc/d/f;->a()V
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Lc/d/f$e;->b:Lc/d/f;
    invoke-virtual { v0, p1 }, Lc/d/f;->f(Ljava/lang/Object;)I
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
    invoke-virtual { p0, v0 }, Lc/d/f$e;->contains(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L0
    const/4 p1, 0
    return p1
  :L1
    const/4 p1, 1
    return p1
.end method

.method public isEmpty()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lc/d/f$e;->b:Lc/d/f;
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
      "TV;>;"
    }
  .end annotation
  .registers 4
  .line 1
    new-instance v0, Lc/d/f$a;
    iget-object v1, p0, Lc/d/f$e;->b:Lc/d/f;
    const/4 v2, 1
    invoke-direct { v0, v1, v2 }, Lc/d/f$a;-><init>(Lc/d/f;I)V
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Lc/d/f$e;->b:Lc/d/f;
    invoke-virtual { v0, p1 }, Lc/d/f;->f(Ljava/lang/Object;)I
    move-result p1
    if-ltz p1, :L0
  .line 2
    iget-object v0, p0, Lc/d/f$e;->b:Lc/d/f;
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
  .registers 7
  .line 1
    iget-object v0, p0, Lc/d/f$e;->b:Lc/d/f;
    invoke-virtual { v0 }, Lc/d/f;->d()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v1, v0, :L2
  .line 2
    iget-object v3, p0, Lc/d/f$e;->b:Lc/d/f;
    const/4 v4, 1
    invoke-virtual { v3, v1, v4 }, Lc/d/f;->b(II)Ljava/lang/Object;
    move-result-object v3
  .line 3
    invoke-interface { p1, v3 }, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L1
  .line 4
    iget-object v2, p0, Lc/d/f$e;->b:Lc/d/f;
    invoke-virtual { v2, v1 }, Lc/d/f;->h(I)V
    add-int/lit8 v1, v1, -1
    add-int/lit8 v0, v0, -1
    const/4 v2, 1
  :L1
    add-int/2addr v1, v4
    goto :L0
  :L2
    return v2
.end method

.method public retainAll(Ljava/util/Collection;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/Collection<",
      "*>;)Z"
    }
  .end annotation
  .registers 7
  .line 1
    iget-object v0, p0, Lc/d/f$e;->b:Lc/d/f;
    invoke-virtual { v0 }, Lc/d/f;->d()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v1, v0, :L2
  .line 2
    iget-object v3, p0, Lc/d/f$e;->b:Lc/d/f;
    const/4 v4, 1
    invoke-virtual { v3, v1, v4 }, Lc/d/f;->b(II)Ljava/lang/Object;
    move-result-object v3
  .line 3
    invoke-interface { p1, v3 }, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    move-result v3
    if-nez v3, :L1
  .line 4
    iget-object v2, p0, Lc/d/f$e;->b:Lc/d/f;
    invoke-virtual { v2, v1 }, Lc/d/f;->h(I)V
    add-int/lit8 v1, v1, -1
    add-int/lit8 v0, v0, -1
    const/4 v2, 1
  :L1
    add-int/2addr v1, v4
    goto :L0
  :L2
    return v2
.end method

.method public size()I
  .registers 2
  .line 1
    iget-object v0, p0, Lc/d/f$e;->b:Lc/d/f;
    invoke-virtual { v0 }, Lc/d/f;->d()I
    move-result v0
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
  .registers 3
  .line 1
    iget-object v0, p0, Lc/d/f$e;->b:Lc/d/f;
    const/4 v1, 1
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
    iget-object v0, p0, Lc/d/f$e;->b:Lc/d/f;
    const/4 v1, 1
    invoke-virtual { v0, p1, v1 }, Lc/d/f;->r([Ljava/lang/Object;I)[Ljava/lang/Object;
    move-result-object p1
    return-object p1
.end method
