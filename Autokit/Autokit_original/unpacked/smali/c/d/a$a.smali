.class Lc/d/a$a;
.super Lc/d/f;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lc/d/a;->n()Lc/d/f;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Lc/d/f<",
    "TK;TV;>;"
  }
.end annotation

.field final synthetic d:Lc/d/a;

.method constructor <init>(Lc/d/a;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lc/d/a$a;->d:Lc/d/a;
    invoke-direct { p0 }, Lc/d/f;-><init>()V
    return-void
.end method

.method protected a()V
  .registers 2
  .line 1
    iget-object v0, p0, Lc/d/a$a;->d:Lc/d/a;
    invoke-virtual { v0 }, Lc/d/g;->clear()V
    return-void
.end method

.method protected b(II)Ljava/lang/Object;
  .registers 4
  .line 1
    iget-object v0, p0, Lc/d/a$a;->d:Lc/d/a;
    iget-object v0, v0, Lc/d/g;->c:[Ljava/lang/Object;
    shl-int/lit8 p1, p1, 1
    add-int/2addr p1, p2
    aget-object p1, v0, p1
    return-object p1
.end method

.method protected c()Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/Map<",
      "TK;TV;>;"
    }
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lc/d/a$a;->d:Lc/d/a;
    return-object v0
.end method

.method protected d()I
  .registers 2
  .line 1
    iget-object v0, p0, Lc/d/a$a;->d:Lc/d/a;
    iget v0, v0, Lc/d/g;->d:I
    return v0
.end method

.method protected e(Ljava/lang/Object;)I
  .registers 3
  .line 1
    iget-object v0, p0, Lc/d/a$a;->d:Lc/d/a;
    invoke-virtual { v0, p1 }, Lc/d/g;->f(Ljava/lang/Object;)I
    move-result p1
    return p1
.end method

.method protected f(Ljava/lang/Object;)I
  .registers 3
  .line 1
    iget-object v0, p0, Lc/d/a$a;->d:Lc/d/a;
    invoke-virtual { v0, p1 }, Lc/d/g;->h(Ljava/lang/Object;)I
    move-result p1
    return p1
.end method

.method protected g(Ljava/lang/Object;Ljava/lang/Object;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TK;TV;)V"
    }
  .end annotation
  .registers 4
  .line 1
    iget-object v0, p0, Lc/d/a$a;->d:Lc/d/a;
    invoke-virtual { v0, p1, p2 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    return-void
.end method

.method protected h(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/d/a$a;->d:Lc/d/a;
    invoke-virtual { v0, p1 }, Lc/d/g;->k(I)Ljava/lang/Object;
    return-void
.end method

.method protected i(ILjava/lang/Object;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(ITV;)TV;"
    }
  .end annotation
  .registers 4
  .line 1
    iget-object v0, p0, Lc/d/a$a;->d:Lc/d/a;
    invoke-virtual { v0, p1, p2 }, Lc/d/g;->l(ILjava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    return-object p1
.end method
