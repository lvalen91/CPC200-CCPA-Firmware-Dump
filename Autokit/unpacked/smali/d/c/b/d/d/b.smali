.class final Ld/c/b/d/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final a:Ld/c/b/d/d/a;

.field private final b:[I

.method constructor <init>(Ld/c/b/d/d/a;[I)V
  .registers 7
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    array-length v0, p2
    if-eqz v0, :L4
  .line 3
    iput-object p1, p0, Ld/c/b/d/d/b;->a:Ld/c/b/d/d/a;
  .line 4
    array-length p1, p2
    const/4 v0, 1
    if-le p1, v0, :L3
    const/4 v1, 0
  .line 5
    aget v2, p2, v1
    if-nez v2, :L3
    const/4 v2, 1
  :L0
    if-ge v2, p1, :L1
  .line 6
    aget v3, p2, v2
    if-nez v3, :L1
    add-int/lit8 v2, v2, 1
    goto :L0
  :L1
    if-ne v2, p1, :L2
    new-array p1, v0, [I
    aput v1, p1, v1
  .line 7
    iput-object p1, p0, Ld/c/b/d/d/b;->b:[I
    return-void
  :L2
    sub-int/2addr p1, v2
  .line 8
    new-array p1, p1, [I
    iput-object p1, p0, Ld/c/b/d/d/b;->b:[I
  .line 9
    array-length v0, p1
    invoke-static { p2, v2, p1, v1, v0 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    return-void
  :L3
  .line 10
    iput-object p2, p0, Ld/c/b/d/d/b;->b:[I
    return-void
  :L4
  .line 11
    new-instance p1, Ljava/lang/IllegalArgumentException;
    invoke-direct { p1 }, Ljava/lang/IllegalArgumentException;-><init>()V
    goto :L6
  :L5
    throw p1
  :L6
    goto :L5
.end method

.method a(Ld/c/b/d/d/b;)Ld/c/b/d/d/b;
  .registers 9
  .line 1
    iget-object v0, p0, Ld/c/b/d/d/b;->a:Ld/c/b/d/d/a;
    iget-object v1, p1, Ld/c/b/d/d/b;->a:Ld/c/b/d/d/a;
    invoke-virtual { v0, v1 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L6
  .line 2
    invoke-virtual { p0 }, Ld/c/b/d/d/b;->f()Z
    move-result v0
    if-eqz v0, :L0
    return-object p1
  :L0
  .line 3
    invoke-virtual { p1 }, Ld/c/b/d/d/b;->f()Z
    move-result v0
    if-eqz v0, :L1
    return-object p0
  :L1
  .line 4
    iget-object v0, p0, Ld/c/b/d/d/b;->b:[I
  .line 5
    iget-object p1, p1, Ld/c/b/d/d/b;->b:[I
  .line 6
    array-length v1, v0
    array-length v2, p1
    if-le v1, v2, :L2
    goto :L3
  :L2
    move-object v6, v0
    move-object v0, p1
    move-object p1, v6
  :L3
  .line 7
    array-length v1, v0
    new-array v1, v1, [I
  .line 8
    array-length v2, v0
    array-length v3, p1
    sub-int/2addr v2, v3
    const/4 v3, 0
  .line 9
    invoke-static { v0, v3, v1, v3, v2 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    move v3, v2
  :L4
  .line 10
    array-length v4, v0
    if-ge v3, v4, :L5
    sub-int v4, v3, v2
  .line 11
    aget v4, p1, v4
    aget v5, v0, v3
    invoke-static { v4, v5 }, Ld/c/b/d/d/a;->a(II)I
    move-result v4
    aput v4, v1, v3
    add-int/lit8 v3, v3, 1
    goto :L4
  :L5
  .line 12
    new-instance p1, Ld/c/b/d/d/b;
    iget-object v0, p0, Ld/c/b/d/d/b;->a:Ld/c/b/d/d/a;
    invoke-direct { p1, v0, v1 }, Ld/c/b/d/d/b;-><init>(Ld/c/b/d/d/a;[I)V
    return-object p1
  :L6
  .line 13
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "GenericGFPolys do not have same GenericGF field"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    goto :L8
  :L7
    throw p1
  :L8
    goto :L7
.end method

.method b(Ld/c/b/d/d/b;)[Ld/c/b/d/d/b;
  .registers 9
  .line 1
    iget-object v0, p0, Ld/c/b/d/d/b;->a:Ld/c/b/d/d/a;
    iget-object v1, p1, Ld/c/b/d/d/b;->a:Ld/c/b/d/d/a;
    invoke-virtual { v0, v1 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L3
  .line 2
    invoke-virtual { p1 }, Ld/c/b/d/d/b;->f()Z
    move-result v0
    if-nez v0, :L2
  .line 3
    iget-object v0, p0, Ld/c/b/d/d/b;->a:Ld/c/b/d/d/a;
    invoke-virtual { v0 }, Ld/c/b/d/d/a;->e()Ld/c/b/d/d/b;
    move-result-object v0
  .line 4
    invoke-virtual { p1 }, Ld/c/b/d/d/b;->e()I
    move-result v1
    invoke-virtual { p1, v1 }, Ld/c/b/d/d/b;->c(I)I
    move-result v1
  .line 5
    iget-object v2, p0, Ld/c/b/d/d/b;->a:Ld/c/b/d/d/a;
    invoke-virtual { v2, v1 }, Ld/c/b/d/d/a;->f(I)I
    move-result v1
    move-object v2, p0
  :L0
  .line 6
    invoke-virtual { v2 }, Ld/c/b/d/d/b;->e()I
    move-result v3
    invoke-virtual { p1 }, Ld/c/b/d/d/b;->e()I
    move-result v4
    if-lt v3, v4, :L1
    invoke-virtual { v2 }, Ld/c/b/d/d/b;->f()Z
    move-result v3
    if-nez v3, :L1
  .line 7
    invoke-virtual { v2 }, Ld/c/b/d/d/b;->e()I
    move-result v3
    invoke-virtual { p1 }, Ld/c/b/d/d/b;->e()I
    move-result v4
    sub-int/2addr v3, v4
  .line 8
    iget-object v4, p0, Ld/c/b/d/d/b;->a:Ld/c/b/d/d/a;
    invoke-virtual { v2 }, Ld/c/b/d/d/b;->e()I
    move-result v5
    invoke-virtual { v2, v5 }, Ld/c/b/d/d/b;->c(I)I
    move-result v5
    invoke-virtual { v4, v5, v1 }, Ld/c/b/d/d/a;->h(II)I
    move-result v4
  .line 9
    invoke-virtual { p1, v3, v4 }, Ld/c/b/d/d/b;->h(II)Ld/c/b/d/d/b;
    move-result-object v5
  .line 10
    iget-object v6, p0, Ld/c/b/d/d/b;->a:Ld/c/b/d/d/a;
    invoke-virtual { v6, v3, v4 }, Ld/c/b/d/d/a;->b(II)Ld/c/b/d/d/b;
    move-result-object v3
  .line 11
    invoke-virtual { v0, v3 }, Ld/c/b/d/d/b;->a(Ld/c/b/d/d/b;)Ld/c/b/d/d/b;
    move-result-object v0
  .line 12
    invoke-virtual { v2, v5 }, Ld/c/b/d/d/b;->a(Ld/c/b/d/d/b;)Ld/c/b/d/d/b;
    move-result-object v2
    goto :L0
  :L1
    const/4 p1, 2
    new-array p1, p1, [Ld/c/b/d/d/b;
    const/4 v1, 0
    aput-object v0, p1, v1
    const/4 v0, 1
    aput-object v2, p1, v0
    return-object p1
  :L2
  .line 13
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "Divide by 0"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L3
  .line 14
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "GenericGFPolys do not have same GenericGF field"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    goto :L5
  :L4
    throw p1
  :L5
    goto :L4
.end method

.method c(I)I
  .registers 4
  .line 1
    iget-object v0, p0, Ld/c/b/d/d/b;->b:[I
    array-length v1, v0
    add-int/lit8 v1, v1, -1
    sub-int/2addr v1, p1
    aget p1, v0, v1
    return p1
.end method

.method d()[I
  .registers 2
  .line 1
    iget-object v0, p0, Ld/c/b/d/d/b;->b:[I
    return-object v0
.end method

.method e()I
  .registers 2
  .line 1
    iget-object v0, p0, Ld/c/b/d/d/b;->b:[I
    array-length v0, v0
    add-int/lit8 v0, v0, -1
    return v0
.end method

.method f()Z
  .registers 3
  .line 1
    iget-object v0, p0, Ld/c/b/d/d/b;->b:[I
    const/4 v1, 0
    aget v0, v0, v1
    if-nez v0, :L0
    const/4 v0, 1
    return v0
  :L0
    return v1
.end method

.method g(Ld/c/b/d/d/b;)Ld/c/b/d/d/b;
  .registers 14
  .line 1
    iget-object v0, p0, Ld/c/b/d/d/b;->a:Ld/c/b/d/d/a;
    iget-object v1, p1, Ld/c/b/d/d/b;->a:Ld/c/b/d/d/a;
    invoke-virtual { v0, v1 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L6
  .line 2
    invoke-virtual { p0 }, Ld/c/b/d/d/b;->f()Z
    move-result v0
    if-nez v0, :L5
    invoke-virtual { p1 }, Ld/c/b/d/d/b;->f()Z
    move-result v0
    if-eqz v0, :L0
    goto :L5
  :L0
  .line 3
    iget-object v0, p0, Ld/c/b/d/d/b;->b:[I
  .line 4
    array-length v1, v0
  .line 5
    iget-object p1, p1, Ld/c/b/d/d/b;->b:[I
  .line 6
    array-length v2, p1
    add-int v3, v1, v2
    add-int/lit8 v3, v3, -1
  .line 7
    new-array v3, v3, [I
    const/4 v4, 0
    const/4 v5, 0
  :L1
    if-ge v5, v1, :L4
  .line 8
    aget v6, v0, v5
    const/4 v7, 0
  :L2
    if-ge v7, v2, :L3
    add-int v8, v5, v7
  .line 9
    aget v9, v3, v8
    iget-object v10, p0, Ld/c/b/d/d/b;->a:Ld/c/b/d/d/a;
    aget v11, p1, v7
  .line 10
    invoke-virtual { v10, v6, v11 }, Ld/c/b/d/d/a;->h(II)I
    move-result v10
  .line 11
    invoke-static { v9, v10 }, Ld/c/b/d/d/a;->a(II)I
    move-result v9
    aput v9, v3, v8
    add-int/lit8 v7, v7, 1
    goto :L2
  :L3
    add-int/lit8 v5, v5, 1
    goto :L1
  :L4
  .line 12
    new-instance p1, Ld/c/b/d/d/b;
    iget-object v0, p0, Ld/c/b/d/d/b;->a:Ld/c/b/d/d/a;
    invoke-direct { p1, v0, v3 }, Ld/c/b/d/d/b;-><init>(Ld/c/b/d/d/a;[I)V
    return-object p1
  :L5
  .line 13
    iget-object p1, p0, Ld/c/b/d/d/b;->a:Ld/c/b/d/d/a;
    invoke-virtual { p1 }, Ld/c/b/d/d/a;->e()Ld/c/b/d/d/b;
    move-result-object p1
    return-object p1
  :L6
  .line 14
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "GenericGFPolys do not have same GenericGF field"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    goto :L8
  :L7
    throw p1
  :L8
    goto :L7
.end method

.method h(II)Ld/c/b/d/d/b;
  .registers 7
    if-ltz p1, :L3
    if-nez p2, :L0
  .line 1
    iget-object p1, p0, Ld/c/b/d/d/b;->a:Ld/c/b/d/d/a;
    invoke-virtual { p1 }, Ld/c/b/d/d/a;->e()Ld/c/b/d/d/b;
    move-result-object p1
    return-object p1
  :L0
  .line 2
    iget-object v0, p0, Ld/c/b/d/d/b;->b:[I
    array-length v0, v0
    add-int/2addr p1, v0
  .line 3
    new-array p1, p1, [I
    const/4 v1, 0
  :L1
    if-ge v1, v0, :L2
  .line 4
    iget-object v2, p0, Ld/c/b/d/d/b;->a:Ld/c/b/d/d/a;
    iget-object v3, p0, Ld/c/b/d/d/b;->b:[I
    aget v3, v3, v1
    invoke-virtual { v2, v3, p2 }, Ld/c/b/d/d/a;->h(II)I
    move-result v2
    aput v2, p1, v1
    add-int/lit8 v1, v1, 1
    goto :L1
  :L2
  .line 5
    new-instance p2, Ld/c/b/d/d/b;
    iget-object v0, p0, Ld/c/b/d/d/b;->a:Ld/c/b/d/d/a;
    invoke-direct { p2, v0, p1 }, Ld/c/b/d/d/b;-><init>(Ld/c/b/d/d/a;[I)V
    return-object p2
  :L3
  .line 6
    new-instance p1, Ljava/lang/IllegalArgumentException;
    invoke-direct { p1 }, Ljava/lang/IllegalArgumentException;-><init>()V
    goto :L5
  :L4
    throw p1
  :L5
    goto :L4
.end method

.method public toString()Ljava/lang/String;
  .registers 6
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ld/c/b/d/d/b;->e()I
    move-result v1
    mul-int/lit8 v1, v1, 8
    invoke-direct { v0, v1 }, Ljava/lang/StringBuilder;-><init>(I)V
  .line 2
    invoke-virtual { p0 }, Ld/c/b/d/d/b;->e()I
    move-result v1
  :L0
    if-ltz v1, :L9
  .line 3
    invoke-virtual { p0, v1 }, Ld/c/b/d/d/b;->c(I)I
    move-result v2
    if-eqz v2, :L8
    if-gez v2, :L1
    const-string v3, " - "
  .line 4
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    neg-int v2, v2
    goto :L2
  :L1
  .line 5
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->length()I
    move-result v3
    if-lez v3, :L2
    const-string v3, " + "
  .line 6
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L2
    const/4 v3, 1
    if-eqz v1, :L3
    if-eq v2, v3, :L6
  :L3
  .line 7
    iget-object v4, p0, Ld/c/b/d/d/b;->a:Ld/c/b/d/d/a;
    invoke-virtual { v4, v2 }, Ld/c/b/d/d/a;->g(I)I
    move-result v2
    if-nez v2, :L4
    const/16 v2, 49
  .line 8
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    goto :L6
  :L4
    if-ne v2, v3, :L5
    const/16 v2, 97
  .line 9
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    goto :L6
  :L5
    const-string v4, "a^"
  .line 10
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 11
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
  :L6
    if-eqz v1, :L8
    if-ne v1, v3, :L7
    const/16 v2, 120
  .line 12
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    goto :L8
  :L7
    const-string v2, "x^"
  .line 13
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 14
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
  :L8
    add-int/lit8 v1, v1, -1
    goto :L0
  :L9
  .line 15
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
