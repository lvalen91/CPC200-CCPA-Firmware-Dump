.class public Lc/d/a;
.super Lc/d/g;
.implements Ljava/util/Map;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "<K:",
    "Ljava/lang/Object;",
    "V:",
    "Ljava/lang/Object;",
    ">",
    "Lc/d/g<",
    "TK;TV;>;",
    "Ljava/util/Map<",
    "TK;TV;>;"
  }
.end annotation

.field i:Lc/d/f;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/d/f<",
      "TK;TV;>;"
    }
  .end annotation
.end field

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lc/d/g;-><init>()V
    return-void
.end method

.method public constructor <init>(I)V
  .registers 2
  .line 2
    invoke-direct { p0, p1 }, Lc/d/g;-><init>(I)V
    return-void
.end method

.method public constructor <init>(Lc/d/g;)V
  .registers 2
  .line 3
    invoke-direct { p0, p1 }, Lc/d/g;-><init>(Lc/d/g;)V
    return-void
.end method

.method private n()Lc/d/f;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Lc/d/f<",
      "TK;TV;>;"
    }
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lc/d/a;->i:Lc/d/f;
    if-nez v0, :L0
  .line 2
    new-instance v0, Lc/d/a$a;
    invoke-direct { v0, p0 }, Lc/d/a$a;-><init>(Lc/d/a;)V
    iput-object v0, p0, Lc/d/a;->i:Lc/d/f;
  :L0
  .line 3
    iget-object v0, p0, Lc/d/a;->i:Lc/d/f;
    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
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
    invoke-direct { p0 }, Lc/d/a;->n()Lc/d/f;
    move-result-object v0
    invoke-virtual { v0 }, Lc/d/f;->l()Ljava/util/Set;
    move-result-object v0
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/Set<",
      "TK;>;"
    }
  .end annotation
  .registers 2
  .line 1
    invoke-direct { p0 }, Lc/d/a;->n()Lc/d/f;
    move-result-object v0
    invoke-virtual { v0 }, Lc/d/f;->m()Ljava/util/Set;
    move-result-object v0
    return-object v0
.end method

.method public o(Ljava/util/Collection;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/Collection<",
      "*>;)Z"
    }
  .end annotation
  .registers 2
  .line 1
    invoke-static { p0, p1 }, Lc/d/f;->p(Ljava/util/Map;Ljava/util/Collection;)Z
    move-result p1
    return p1
.end method

.method public putAll(Ljava/util/Map;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/Map<",
      "+TK;+TV;>;)V"
    }
  .end annotation
  .registers 4
  .line 1
    iget v0, p0, Lc/d/g;->d:I
    invoke-interface { p1 }, Ljava/util/Map;->size()I
    move-result v1
    add-int/2addr v0, v1
    invoke-virtual { p0, v0 }, Lc/d/g;->c(I)V
  .line 2
    invoke-interface { p1 }, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object p1
    invoke-interface { p1 }, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L0
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L1
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/Map$Entry;
  .line 3
    invoke-interface { v0 }, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v1
    invoke-interface { v0 }, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    move-result-object v0
    invoke-virtual { p0, v1, v0 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    goto :L0
  :L1
    return-void
.end method

.method public values()Ljava/util/Collection;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/Collection<",
      "TV;>;"
    }
  .end annotation
  .registers 2
  .line 1
    invoke-direct { p0 }, Lc/d/a;->n()Lc/d/f;
    move-result-object v0
    invoke-virtual { v0 }, Lc/d/f;->n()Ljava/util/Collection;
    move-result-object v0
    return-object v0
.end method
