.class Lc/e/b/h$b;
.super Ljava/lang/Object;
.implements Ljava/lang/Comparable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/e/b/h;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = "b"
.end annotation

.field b:Lc/e/b/i;

.field final synthetic c:Lc/e/b/h;

.method public constructor <init>(Lc/e/b/h;Lc/e/b/h;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lc/e/b/h$b;->c:Lc/e/b/h;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Lc/e/b/i;F)Z
  .registers 12
  .line 1
    iget-object v0, p0, Lc/e/b/h$b;->b:Lc/e/b/i;
    iget-boolean v0, v0, Lc/e/b/i;->a:Z
    const v1, 953267991
    const/16 v2, 9
    const/4 v3, 0
    const/4 v4, 1
    const/4 v5, 0
    if-eqz v0, :L5
    const/4 v0, 0
  :L0
    if-ge v0, v2, :L3
  .line 2
    iget-object v6, p0, Lc/e/b/h$b;->b:Lc/e/b/i;
    iget-object v6, v6, Lc/e/b/i;->i:[F
    aget v7, v6, v0
    iget-object v8, p1, Lc/e/b/i;->i:[F
    aget v8, v8, v0
    mul-float v8, v8, p2
    add-float/2addr v7, v8
    aput v7, v6, v0
  .line 3
    aget v6, v6, v0
  .line 4
    invoke-static { v6 }, Ljava/lang/Math;->abs(F)F
    move-result v6
    cmpg-float v6, v6, v1
    if-gez v6, :L1
  .line 5
    iget-object v6, p0, Lc/e/b/h$b;->b:Lc/e/b/i;
    iget-object v6, v6, Lc/e/b/i;->i:[F
    aput v3, v6, v0
    goto :L2
  :L1
    const/4 v4, 0
  :L2
    add-int/lit8 v0, v0, 1
    goto :L0
  :L3
    if-eqz v4, :L4
  .line 6
    iget-object p1, p0, Lc/e/b/h$b;->c:Lc/e/b/h;
    iget-object p2, p0, Lc/e/b/h$b;->b:Lc/e/b/i;
    invoke-static { p1, p2 }, Lc/e/b/h;->E(Lc/e/b/h;Lc/e/b/i;)V
  :L4
    return v5
  :L5
    if-ge v5, v2, :L9
  .line 7
    iget-object v0, p1, Lc/e/b/i;->i:[F
    aget v0, v0, v5
    cmpl-float v6, v0, v3
    if-eqz v6, :L7
    mul-float v0, v0, p2
  .line 8
    invoke-static { v0 }, Ljava/lang/Math;->abs(F)F
    move-result v6
    cmpg-float v6, v6, v1
    if-gez v6, :L6
    const/4 v0, 0
  :L6
  .line 9
    iget-object v6, p0, Lc/e/b/h$b;->b:Lc/e/b/i;
    iget-object v6, v6, Lc/e/b/i;->i:[F
    aput v0, v6, v5
    goto :L8
  :L7
  .line 10
    iget-object v0, p0, Lc/e/b/h$b;->b:Lc/e/b/i;
    iget-object v0, v0, Lc/e/b/i;->i:[F
    aput v3, v0, v5
  :L8
    add-int/lit8 v5, v5, 1
    goto :L5
  :L9
    return v4
.end method

.method public b(Lc/e/b/i;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lc/e/b/h$b;->b:Lc/e/b/i;
    return-void
.end method

.method public final c()Z
  .registers 6
    const/16 v0, 8
  :L0
    const/4 v1, 0
    if-ltz v0, :L3
  .line 1
    iget-object v2, p0, Lc/e/b/h$b;->b:Lc/e/b/i;
    iget-object v2, v2, Lc/e/b/i;->i:[F
    aget v2, v2, v0
    const/4 v3, 0
    cmpl-float v4, v2, v3
    if-lez v4, :L1
    return v1
  :L1
    cmpg-float v1, v2, v3
    if-gez v1, :L2
    const/4 v0, 1
    return v0
  :L2
    add-int/lit8 v0, v0, -1
    goto :L0
  :L3
    return v1
.end method

.method public compareTo(Ljava/lang/Object;)I
  .registers 3
  .line 1
    check-cast p1, Lc/e/b/i;
  .line 2
    iget-object v0, p0, Lc/e/b/h$b;->b:Lc/e/b/i;
    iget v0, v0, Lc/e/b/i;->c:I
    iget p1, p1, Lc/e/b/i;->c:I
    sub-int/2addr v0, p1
    return v0
.end method

.method public final d(Lc/e/b/i;)Z
  .registers 7
    const/16 v0, 8
  :L0
    const/4 v1, 0
    if-ltz v0, :L2
  .line 1
    iget-object v2, p1, Lc/e/b/i;->i:[F
    aget v2, v2, v0
  .line 2
    iget-object v3, p0, Lc/e/b/h$b;->b:Lc/e/b/i;
    iget-object v3, v3, Lc/e/b/i;->i:[F
    aget v3, v3, v0
    cmpl-float v4, v3, v2
    if-nez v4, :L1
    add-int/lit8 v0, v0, -1
    goto :L0
  :L1
    cmpg-float p1, v3, v2
    if-gez p1, :L2
    const/4 p1, 1
    return p1
  :L2
    return v1
.end method

.method public e()V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/e/b/h$b;->b:Lc/e/b/i;
    iget-object v0, v0, Lc/e/b/i;->i:[F
    const/4 v1, 0
    invoke-static { v0, v1 }, Ljava/util/Arrays;->fill([FF)V
    return-void
.end method

.method public toString()Ljava/lang/String;
  .registers 4
  .line 1
    iget-object v0, p0, Lc/e/b/h$b;->b:Lc/e/b/i;
    const-string v1, "[ "
    if-eqz v0, :L1
    const/4 v0, 0
  :L0
    const/16 v2, 9
    if-ge v0, v2, :L1
  .line 2
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lc/e/b/h$b;->b:Lc/e/b/i;
    iget-object v1, v1, Lc/e/b/i;->i:[F
    aget v1, v1, v0
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    const-string v1, " "
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    add-int/lit8 v0, v0, 1
    goto :L0
  :L1
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "] "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lc/e/b/h$b;->b:Lc/e/b/i;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
