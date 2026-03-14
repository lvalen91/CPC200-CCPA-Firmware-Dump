.class Lc/b/a/b/b$d;
.super Ljava/lang/Object;
.implements Ljava/util/Iterator;
.implements Lc/b/a/b/b$f;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/b/a/b/b;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "d"
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Ljava/util/Iterator<",
    "Ljava/util/Map$Entry<",
    "TK;TV;>;>;",
    "Lc/b/a/b/b$f<",
    "TK;TV;>;"
  }
.end annotation

.field private b:Lc/b/a/b/b$c;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/b/a/b/b$c<",
      "TK;TV;>;"
    }
  .end annotation
.end field

.field private c:Z

.field final synthetic d:Lc/b/a/b/b;

.method constructor <init>(Lc/b/a/b/b;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lc/b/a/b/b$d;->d:Lc/b/a/b/b;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 p1, 1
  .line 2
    iput-boolean p1, p0, Lc/b/a/b/b$d;->c:Z
    return-void
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
    iget-object v0, p0, Lc/b/a/b/b$d;->b:Lc/b/a/b/b$c;
    if-ne p1, v0, :L2
  .line 2
    iget-object p1, v0, Lc/b/a/b/b$c;->e:Lc/b/a/b/b$c;
    iput-object p1, p0, Lc/b/a/b/b$d;->b:Lc/b/a/b/b$c;
    if-nez p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
  .line 3
    iput-boolean p1, p0, Lc/b/a/b/b$d;->c:Z
  :L2
    return-void
.end method

.method public b()Ljava/util/Map$Entry;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/Map$Entry<",
      "TK;TV;>;"
    }
  .end annotation
  .registers 2
  .line 1
    iget-boolean v0, p0, Lc/b/a/b/b$d;->c:Z
    if-eqz v0, :L0
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Lc/b/a/b/b$d;->c:Z
  .line 3
    iget-object v0, p0, Lc/b/a/b/b$d;->d:Lc/b/a/b/b;
    iget-object v0, v0, Lc/b/a/b/b;->b:Lc/b/a/b/b$c;
    iput-object v0, p0, Lc/b/a/b/b$d;->b:Lc/b/a/b/b$c;
    goto :L3
  :L0
  .line 4
    iget-object v0, p0, Lc/b/a/b/b$d;->b:Lc/b/a/b/b$c;
    if-eqz v0, :L1
    iget-object v0, v0, Lc/b/a/b/b$c;->d:Lc/b/a/b/b$c;
    goto :L2
  :L1
    const/4 v0, 0
  :L2
    iput-object v0, p0, Lc/b/a/b/b$d;->b:Lc/b/a/b/b$c;
  :L3
  .line 5
    iget-object v0, p0, Lc/b/a/b/b$d;->b:Lc/b/a/b/b$c;
    return-object v0
.end method

.method public hasNext()Z
  .registers 4
  .line 1
    iget-boolean v0, p0, Lc/b/a/b/b$d;->c:Z
    const/4 v1, 1
    const/4 v2, 0
    if-eqz v0, :L2
  .line 2
    iget-object v0, p0, Lc/b/a/b/b$d;->d:Lc/b/a/b/b;
    iget-object v0, v0, Lc/b/a/b/b;->b:Lc/b/a/b/b$c;
    if-eqz v0, :L0
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    return v1
  :L2
  .line 3
    iget-object v0, p0, Lc/b/a/b/b$d;->b:Lc/b/a/b/b$c;
    if-eqz v0, :L3
    iget-object v0, v0, Lc/b/a/b/b$c;->d:Lc/b/a/b/b$c;
    if-eqz v0, :L3
    goto :L4
  :L3
    const/4 v1, 0
  :L4
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lc/b/a/b/b$d;->b()Ljava/util/Map$Entry;
    move-result-object v0
    return-object v0
.end method
