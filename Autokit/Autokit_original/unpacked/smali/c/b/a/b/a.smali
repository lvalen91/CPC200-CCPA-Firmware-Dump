.class public Lc/b/a/b/a;
.super Lc/b/a/b/b;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "<K:",
    "Ljava/lang/Object;",
    "V:",
    "Ljava/lang/Object;",
    ">",
    "Lc/b/a/b/b<",
    "TK;TV;>;"
  }
.end annotation

.field private f:Ljava/util/HashMap;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/HashMap<",
      "TK;",
      "Lc/b/a/b/b$c<",
      "TK;TV;>;>;"
    }
  .end annotation
.end field

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Lc/b/a/b/b;-><init>()V
  .line 2
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Lc/b/a/b/a;->f:Ljava/util/HashMap;
    return-void
.end method

.method protected c(Ljava/lang/Object;)Lc/b/a/b/b$c;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TK;)",
      "Lc/b/a/b/b$c<",
      "TK;TV;>;"
    }
  .end annotation
  .registers 3
  .line 1
    iget-object v0, p0, Lc/b/a/b/a;->f:Ljava/util/HashMap;
    invoke-virtual { v0, p1 }, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lc/b/a/b/b$c;
    return-object p1
.end method

.method public contains(Ljava/lang/Object;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TK;)Z"
    }
  .end annotation
  .registers 3
  .line 1
    iget-object v0, p0, Lc/b/a/b/a;->f:Ljava/util/HashMap;
    invoke-virtual { v0, p1 }, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    move-result p1
    return p1
.end method

.method public g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TK;TV;)TV;"
    }
  .end annotation
  .registers 4
  .line 1
    invoke-virtual { p0, p1 }, Lc/b/a/b/a;->c(Ljava/lang/Object;)Lc/b/a/b/b$c;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    iget-object p1, v0, Lc/b/a/b/b$c;->c:Ljava/lang/Object;
    return-object p1
  :L0
  .line 3
    iget-object v0, p0, Lc/b/a/b/a;->f:Ljava/util/HashMap;
    invoke-virtual { p0, p1, p2 }, Lc/b/a/b/b;->f(Ljava/lang/Object;Ljava/lang/Object;)Lc/b/a/b/b$c;
    move-result-object p2
    invoke-virtual { v0, p1, p2 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const/4 p1, 0
    return-object p1
.end method

.method public h(Ljava/lang/Object;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TK;)TV;"
    }
  .end annotation
  .registers 4
  .line 1
    invoke-super { p0, p1 }, Lc/b/a/b/b;->h(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
  .line 2
    iget-object v1, p0, Lc/b/a/b/a;->f:Ljava/util/HashMap;
    invoke-virtual { v1, p1 }, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    return-object v0
.end method

.method public i(Ljava/lang/Object;)Ljava/util/Map$Entry;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TK;)",
      "Ljava/util/Map$Entry<",
      "TK;TV;>;"
    }
  .end annotation
  .registers 3
  .line 1
    invoke-virtual { p0, p1 }, Lc/b/a/b/a;->contains(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lc/b/a/b/a;->f:Ljava/util/HashMap;
    invoke-virtual { v0, p1 }, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lc/b/a/b/b$c;
    iget-object p1, p1, Lc/b/a/b/b$c;->e:Lc/b/a/b/b$c;
    return-object p1
  :L0
    const/4 p1, 0
    return-object p1
.end method
