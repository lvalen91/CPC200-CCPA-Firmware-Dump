.class abstract Lc/b/a/b/b$e;
.super Ljava/lang/Object;
.implements Ljava/util/Iterator;
.implements Lc/b/a/b/b$f;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/b/a/b/b;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 1034
  name = "e"
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "<K:",
    "Ljava/lang/Object;",
    "V:",
    "Ljava/lang/Object;",
    ">",
    "Ljava/lang/Object;",
    "Ljava/util/Iterator<",
    "Ljava/util/Map$Entry<",
    "TK;TV;>;>;",
    "Lc/b/a/b/b$f<",
    "TK;TV;>;"
  }
.end annotation

.field b:Lc/b/a/b/b$c;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/b/a/b/b$c<",
      "TK;TV;>;"
    }
  .end annotation
.end field

.field c:Lc/b/a/b/b$c;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/b/a/b/b$c<",
      "TK;TV;>;"
    }
  .end annotation
.end field

.method constructor <init>(Lc/b/a/b/b$c;Lc/b/a/b/b$c;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lc/b/a/b/b$c<",
      "TK;TV;>;",
      "Lc/b/a/b/b$c<",
      "TK;TV;>;)V"
    }
  .end annotation
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p2, p0, Lc/b/a/b/b$e;->b:Lc/b/a/b/b$c;
  .line 3
    iput-object p1, p0, Lc/b/a/b/b$e;->c:Lc/b/a/b/b$c;
    return-void
.end method

.method private e()Lc/b/a/b/b$c;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Lc/b/a/b/b$c<",
      "TK;TV;>;"
    }
  .end annotation
  .registers 3
  .line 1
    iget-object v0, p0, Lc/b/a/b/b$e;->c:Lc/b/a/b/b$c;
    iget-object v1, p0, Lc/b/a/b/b$e;->b:Lc/b/a/b/b$c;
    if-eq v0, v1, :L1
    if-nez v1, :L0
    goto :L1
  :L0
  .line 2
    invoke-virtual { p0, v0 }, Lc/b/a/b/b$e;->c(Lc/b/a/b/b$c;)Lc/b/a/b/b$c;
    move-result-object v0
    return-object v0
  :L1
    const/4 v0, 0
    return-object v0
.end method

.method public a(Lc/b/a/b/b$c;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lc/b/a/b/b$c<",
      "TK;TV;>;)V"
    }
  .end annotation
  .registers 3
  .line 1
    iget-object v0, p0, Lc/b/a/b/b$e;->b:Lc/b/a/b/b$c;
    if-ne v0, p1, :L0
    iget-object v0, p0, Lc/b/a/b/b$e;->c:Lc/b/a/b/b$c;
    if-ne p1, v0, :L0
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Lc/b/a/b/b$e;->c:Lc/b/a/b/b$c;
  .line 3
    iput-object v0, p0, Lc/b/a/b/b$e;->b:Lc/b/a/b/b$c;
  :L0
  .line 4
    iget-object v0, p0, Lc/b/a/b/b$e;->b:Lc/b/a/b/b$c;
    if-ne v0, p1, :L1
  .line 5
    invoke-virtual { p0, v0 }, Lc/b/a/b/b$e;->b(Lc/b/a/b/b$c;)Lc/b/a/b/b$c;
    move-result-object v0
    iput-object v0, p0, Lc/b/a/b/b$e;->b:Lc/b/a/b/b$c;
  :L1
  .line 6
    iget-object v0, p0, Lc/b/a/b/b$e;->c:Lc/b/a/b/b$c;
    if-ne v0, p1, :L2
  .line 7
    invoke-direct { p0 }, Lc/b/a/b/b$e;->e()Lc/b/a/b/b$c;
    move-result-object p1
    iput-object p1, p0, Lc/b/a/b/b$e;->c:Lc/b/a/b/b$c;
  :L2
    return-void
.end method

.method abstract b(Lc/b/a/b/b$c;)Lc/b/a/b/b$c;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lc/b/a/b/b$c<",
      "TK;TV;>;)",
      "Lc/b/a/b/b$c<",
      "TK;TV;>;"
    }
  .end annotation
.end method

.method abstract c(Lc/b/a/b/b$c;)Lc/b/a/b/b$c;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lc/b/a/b/b$c<",
      "TK;TV;>;)",
      "Lc/b/a/b/b$c<",
      "TK;TV;>;"
    }
  .end annotation
.end method

.method public d()Ljava/util/Map$Entry;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/Map$Entry<",
      "TK;TV;>;"
    }
  .end annotation
  .registers 3
  .line 1
    iget-object v0, p0, Lc/b/a/b/b$e;->c:Lc/b/a/b/b$c;
  .line 2
    invoke-direct { p0 }, Lc/b/a/b/b$e;->e()Lc/b/a/b/b$c;
    move-result-object v1
    iput-object v1, p0, Lc/b/a/b/b$e;->c:Lc/b/a/b/b$c;
    return-object v0
.end method

.method public hasNext()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lc/b/a/b/b$e;->c:Lc/b/a/b/b$c;
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lc/b/a/b/b$e;->d()Ljava/util/Map$Entry;
    move-result-object v0
    return-object v0
.end method
