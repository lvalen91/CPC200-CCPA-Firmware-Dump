.class abstract Lc/d/f;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lc/d/f$e;,
    Lc/d/f$c;,
    Lc/d/f$b;,
    Lc/d/f$d;,
    Lc/d/f$a;
  }
.end annotation
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

.field a:Lc/d/f$b;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/d/f<",
      "TK;TV;>.b;"
    }
  .end annotation
.end field

.field b:Lc/d/f$c;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/d/f<",
      "TK;TV;>.c;"
    }
  .end annotation
.end field

.field c:Lc/d/f$e;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/d/f<",
      "TK;TV;>.e;"
    }
  .end annotation
.end field

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static j(Ljava/util/Map;Ljava/util/Collection;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<K:",
      "Ljava/lang/Object;",
      "V:",
      "Ljava/lang/Object;",
      ">(",
      "Ljava/util/Map<",
      "TK;TV;>;",
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
    invoke-interface { p0, v0 }, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L0
    const/4 p0, 0
    return p0
  :L1
    const/4 p0, 1
    return p0
.end method

.method public static k(Ljava/util/Set;Ljava/lang/Object;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Ljava/lang/Object;",
      ">(",
      "Ljava/util/Set<",
      "TT;>;",
      "Ljava/lang/Object;",
      ")Z"
    }
  .end annotation
  .catch Ljava/lang/NullPointerException; { :L1 .. :L2 } :L5
  .catch Ljava/lang/ClassCastException; { :L1 .. :L2 } :L5
  .registers 6
    const/4 v0, 1
    if-ne p0, p1, :L0
    return v0
  :L0
  .line 1
    instance-of v1, p1, Ljava/util/Set;
    const/4 v2, 0
    if-eqz v1, :L5
  .line 2
    check-cast p1, Ljava/util/Set;
  :L1
  .line 3
    invoke-interface { p0 }, Ljava/util/Set;->size()I
    move-result v1
    invoke-interface { p1 }, Ljava/util/Set;->size()I
    move-result v3
    if-ne v1, v3, :L3
    invoke-interface { p0, p1 }, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z
    move-result p0
  :L2
    if-eqz p0, :L3
    goto :L4
  :L3
    const/4 v0, 0
  :L4
    return v0
  :L5
    return v2
.end method

.method public static o(Ljava/util/Map;Ljava/util/Collection;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<K:",
      "Ljava/lang/Object;",
      "V:",
      "Ljava/lang/Object;",
      ">(",
      "Ljava/util/Map<",
      "TK;TV;>;",
      "Ljava/util/Collection<",
      "*>;)Z"
    }
  .end annotation
  .registers 4
  .line 1
    invoke-interface { p0 }, Ljava/util/Map;->size()I
    move-result v0
  .line 2
    invoke-interface { p1 }, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L0
  .line 3
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
  .line 4
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    invoke-interface { p0, v1 }, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    goto :L0
  :L1
  .line 5
    invoke-interface { p0 }, Ljava/util/Map;->size()I
    move-result p0
    if-eq v0, p0, :L2
    const/4 p0, 1
    goto :L3
  :L2
    const/4 p0, 0
  :L3
    return p0
.end method

.method public static p(Ljava/util/Map;Ljava/util/Collection;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<K:",
      "Ljava/lang/Object;",
      "V:",
      "Ljava/lang/Object;",
      ">(",
      "Ljava/util/Map<",
      "TK;TV;>;",
      "Ljava/util/Collection<",
      "*>;)Z"
    }
  .end annotation
  .registers 5
  .line 1
    invoke-interface { p0 }, Ljava/util/Map;->size()I
    move-result v0
  .line 2
    invoke-interface { p0 }, Ljava/util/Map;->keySet()Ljava/util/Set;
    move-result-object v1
    invoke-interface { v1 }, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L0
  .line 3
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L1
  .line 4
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    invoke-interface { p1, v2 }, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    move-result v2
    if-nez v2, :L0
  .line 5
    invoke-interface { v1 }, Ljava/util/Iterator;->remove()V
    goto :L0
  :L1
  .line 6
    invoke-interface { p0 }, Ljava/util/Map;->size()I
    move-result p0
    if-eq v0, p0, :L2
    const/4 p0, 1
    goto :L3
  :L2
    const/4 p0, 0
  :L3
    return p0
.end method

.method protected abstract a()V
.end method

.method protected abstract b(II)Ljava/lang/Object;
.end method

.method protected abstract c()Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/Map<",
      "TK;TV;>;"
    }
  .end annotation
.end method

.method protected abstract d()I
.end method

.method protected abstract e(Ljava/lang/Object;)I
.end method

.method protected abstract f(Ljava/lang/Object;)I
.end method

.method protected abstract g(Ljava/lang/Object;Ljava/lang/Object;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TK;TV;)V"
    }
  .end annotation
.end method

.method protected abstract h(I)V
.end method

.method protected abstract i(ILjava/lang/Object;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(ITV;)TV;"
    }
  .end annotation
.end method

.method public l()Ljava/util/Set;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/Set<",
      "Ljava/util/Map$Entry<",
      "TK;TV;>;>;"
    }
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lc/d/f;->a:Lc/d/f$b;
    if-nez v0, :L0
  .line 2
    new-instance v0, Lc/d/f$b;
    invoke-direct { v0, p0 }, Lc/d/f$b;-><init>(Lc/d/f;)V
    iput-object v0, p0, Lc/d/f;->a:Lc/d/f$b;
  :L0
  .line 3
    iget-object v0, p0, Lc/d/f;->a:Lc/d/f$b;
    return-object v0
.end method

.method public m()Ljava/util/Set;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/Set<",
      "TK;>;"
    }
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lc/d/f;->b:Lc/d/f$c;
    if-nez v0, :L0
  .line 2
    new-instance v0, Lc/d/f$c;
    invoke-direct { v0, p0 }, Lc/d/f$c;-><init>(Lc/d/f;)V
    iput-object v0, p0, Lc/d/f;->b:Lc/d/f$c;
  :L0
  .line 3
    iget-object v0, p0, Lc/d/f;->b:Lc/d/f$c;
    return-object v0
.end method

.method public n()Ljava/util/Collection;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/Collection<",
      "TV;>;"
    }
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lc/d/f;->c:Lc/d/f$e;
    if-nez v0, :L0
  .line 2
    new-instance v0, Lc/d/f$e;
    invoke-direct { v0, p0 }, Lc/d/f$e;-><init>(Lc/d/f;)V
    iput-object v0, p0, Lc/d/f;->c:Lc/d/f$e;
  :L0
  .line 3
    iget-object v0, p0, Lc/d/f;->c:Lc/d/f$e;
    return-object v0
.end method

.method public q(I)[Ljava/lang/Object;
  .registers 6
  .line 1
    invoke-virtual { p0 }, Lc/d/f;->d()I
    move-result v0
  .line 2
    new-array v1, v0, [Ljava/lang/Object;
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L1
  .line 3
    invoke-virtual { p0, v2, p1 }, Lc/d/f;->b(II)Ljava/lang/Object;
    move-result-object v3
    aput-object v3, v1, v2
    add-int/lit8 v2, v2, 1
    goto :L0
  :L1
    return-object v1
.end method

.method public r([Ljava/lang/Object;I)[Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Ljava/lang/Object;",
      ">([TT;I)[TT;"
    }
  .end annotation
  .registers 6
  .line 1
    invoke-virtual { p0 }, Lc/d/f;->d()I
    move-result v0
  .line 2
    array-length v1, p1
    if-ge v1, v0, :L0
  .line 3
    invoke-virtual { p1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
    move-result-object p1
    invoke-static { p1, v0 }, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, [Ljava/lang/Object;
  :L0
    const/4 v1, 0
  :L1
    if-ge v1, v0, :L2
  .line 4
    invoke-virtual { p0, v1, p2 }, Lc/d/f;->b(II)Ljava/lang/Object;
    move-result-object v2
    aput-object v2, p1, v1
    add-int/lit8 v1, v1, 1
    goto :L1
  :L2
  .line 5
    array-length p2, p1
    if-le p2, v0, :L3
    const/4 p2, 0
  .line 6
    aput-object p2, p1, v0
  :L3
    return-object p1
.end method
