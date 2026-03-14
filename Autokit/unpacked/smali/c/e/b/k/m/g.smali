.class Lc/e/b/k/m/g;
.super Lc/e/b/k/m/f;
.source "SourceFile"

.field public m:I

.method public constructor <init>(Lc/e/b/k/m/p;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lc/e/b/k/m/f;-><init>(Lc/e/b/k/m/p;)V
  .line 2
    instance-of p1, p1, Lc/e/b/k/m/l;
    if-eqz p1, :L0
  .line 3
    sget-object p1, Lc/e/b/k/m/f$a;->c:Lc/e/b/k/m/f$a;
    iput-object p1, p0, Lc/e/b/k/m/f;->e:Lc/e/b/k/m/f$a;
    goto :L1
  :L0
  .line 4
    sget-object p1, Lc/e/b/k/m/f$a;->d:Lc/e/b/k/m/f$a;
    iput-object p1, p0, Lc/e/b/k/m/f;->e:Lc/e/b/k/m/f$a;
  :L1
    return-void
.end method

.method public d(I)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lc/e/b/k/m/f;->j:Z
    if-eqz v0, :L0
    return-void
  :L0
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Lc/e/b/k/m/f;->j:Z
  .line 3
    iput p1, p0, Lc/e/b/k/m/f;->g:I
  .line 4
    iget-object p1, p0, Lc/e/b/k/m/f;->k:Ljava/util/List;
    invoke-interface { p1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L1
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L2
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/e/b/k/m/d;
  .line 5
    invoke-interface { v0, v0 }, Lc/e/b/k/m/d;->a(Lc/e/b/k/m/d;)V
    goto :L1
  :L2
    return-void
.end method
