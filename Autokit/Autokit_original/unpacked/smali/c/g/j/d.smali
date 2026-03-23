.class public Lc/g/j/d;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "<F:",
    "Ljava/lang/Object;",
    "S:",
    "Ljava/lang/Object;",
    ">",
    "Ljava/lang/Object;"
  }
.end annotation

.field public final a:Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "TF;"
    }
  .end annotation
.end field

.field public final b:Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "TS;"
    }
  .end annotation
.end field

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 5
  .line 1
    instance-of v0, p1, Lc/g/j/d;
    const/4 v1, 0
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    check-cast p1, Lc/g/j/d;
  .line 3
    iget-object v0, p1, Lc/g/j/d;->a:Ljava/lang/Object;
    iget-object v2, p0, Lc/g/j/d;->a:Ljava/lang/Object;
    invoke-static { v0, v2 }, Lc/g/j/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
    iget-object p1, p1, Lc/g/j/d;->b:Ljava/lang/Object;
    iget-object v0, p0, Lc/g/j/d;->b:Ljava/lang/Object;
    invoke-static { p1, v0 }, Lc/g/j/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L1
    const/4 v1, 1
  :L1
    return v1
.end method

.method public hashCode()I
  .registers 4
  .line 1
    iget-object v0, p0, Lc/g/j/d;->a:Ljava/lang/Object;
    const/4 v1, 0
    if-nez v0, :L0
    const/4 v0, 0
    goto :L1
  :L0
    invoke-virtual { v0 }, Ljava/lang/Object;->hashCode()I
    move-result v0
  :L1
    iget-object v2, p0, Lc/g/j/d;->b:Ljava/lang/Object;
    if-nez v2, :L2
    goto :L3
  :L2
    invoke-virtual { v2 }, Ljava/lang/Object;->hashCode()I
    move-result v1
  :L3
    xor-int/2addr v0, v1
    return v0
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Pair{"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lc/g/j/d;->a:Ljava/lang/Object;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, " "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lc/g/j/d;->b:Ljava/lang/Object;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, "}"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
