.class public final Ld/c/b/d/a;
.super Ljava/lang/Object;
.implements Ljava/lang/Cloneable;
.source "SourceFile"

.field private b:[I

.field private c:I

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput v0, p0, Ld/c/b/d/a;->c:I
    const/4 v0, 1
    new-array v0, v0, [I
  .line 3
    iput-object v0, p0, Ld/c/b/d/a;->b:[I
    return-void
.end method

.method constructor <init>([II)V
  .registers 3
  .line 4
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 5
    iput-object p1, p0, Ld/c/b/d/a;->b:[I
  .line 6
    iput p2, p0, Ld/c/b/d/a;->c:I
    return-void
.end method

.method private e(I)V
  .registers 5
  .line 1
    iget-object v0, p0, Ld/c/b/d/a;->b:[I
    array-length v0, v0
    shl-int/lit8 v0, v0, 5
    if-le p1, v0, :L0
  .line 2
    invoke-static { p1 }, Ld/c/b/d/a;->i(I)[I
    move-result-object p1
  .line 3
    iget-object v0, p0, Ld/c/b/d/a;->b:[I
    array-length v1, v0
    const/4 v2, 0
    invoke-static { v0, v2, p1, v2, v1 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 4
    iput-object p1, p0, Ld/c/b/d/a;->b:[I
  :L0
    return-void
.end method

.method private static i(I)[I
  .registers 1
    add-int/lit8 p0, p0, 31
  .line 1
    div-int/lit8 p0, p0, 32
    new-array p0, p0, [I
    return-object p0
.end method

.method public a(Z)V
  .registers 6
  .line 1
    iget v0, p0, Ld/c/b/d/a;->c:I
    const/4 v1, 1
    add-int/2addr v0, v1
    invoke-direct { p0, v0 }, Ld/c/b/d/a;->e(I)V
    if-eqz p1, :L0
  .line 2
    iget-object p1, p0, Ld/c/b/d/a;->b:[I
    iget v0, p0, Ld/c/b/d/a;->c:I
    div-int/lit8 v2, v0, 32
    aget v3, p1, v2
    and-int/lit8 v0, v0, 31
    shl-int v0, v1, v0
    or-int/2addr v0, v3
    aput v0, p1, v2
  :L0
  .line 3
    iget p1, p0, Ld/c/b/d/a;->c:I
    add-int/2addr p1, v1
    iput p1, p0, Ld/c/b/d/a;->c:I
    return-void
.end method

.method public b(Ld/c/b/d/a;)V
  .registers 5
  .line 1
    iget v0, p1, Ld/c/b/d/a;->c:I
  .line 2
    iget v1, p0, Ld/c/b/d/a;->c:I
    add-int/2addr v1, v0
    invoke-direct { p0, v1 }, Ld/c/b/d/a;->e(I)V
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L1
  .line 3
    invoke-virtual { p1, v1 }, Ld/c/b/d/a;->f(I)Z
    move-result v2
    invoke-virtual { p0, v2 }, Ld/c/b/d/a;->a(Z)V
    add-int/lit8 v1, v1, 1
    goto :L0
  :L1
    return-void
.end method

.method public c(II)V
  .registers 5
    if-ltz p2, :L4
    const/16 v0, 32
    if-gt p2, v0, :L4
  .line 1
    iget v0, p0, Ld/c/b/d/a;->c:I
    add-int/2addr v0, p2
    invoke-direct { p0, v0 }, Ld/c/b/d/a;->e(I)V
  :L0
    if-lez p2, :L3
    add-int/lit8 v0, p2, -1
    shr-int v0, p1, v0
    const/4 v1, 1
    and-int/2addr v0, v1
    if-ne v0, v1, :L1
    goto :L2
  :L1
    const/4 v1, 0
  :L2
  .line 2
    invoke-virtual { p0, v1 }, Ld/c/b/d/a;->a(Z)V
    add-int/lit8 p2, p2, -1
    goto :L0
  :L3
    return-void
  :L4
  .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "Num bits must be between 0 and 32"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    goto :L6
  :L5
    throw p1
  :L6
    goto :L5
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Ld/c/b/d/a;->d()Ld/c/b/d/a;
    move-result-object v0
    return-object v0
.end method

.method public d()Ld/c/b/d/a;
  .registers 4
  .line 1
    new-instance v0, Ld/c/b/d/a;
    iget-object v1, p0, Ld/c/b/d/a;->b:[I
    invoke-virtual { v1 }, [I->clone()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, [I
    iget v2, p0, Ld/c/b/d/a;->c:I
    invoke-direct { v0, v1, v2 }, Ld/c/b/d/a;-><init>([II)V
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 5
  .line 1
    instance-of v0, p1, Ld/c/b/d/a;
    const/4 v1, 0
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    check-cast p1, Ld/c/b/d/a;
  .line 3
    iget v0, p0, Ld/c/b/d/a;->c:I
    iget v2, p1, Ld/c/b/d/a;->c:I
    if-ne v0, v2, :L1
    iget-object v0, p0, Ld/c/b/d/a;->b:[I
    iget-object p1, p1, Ld/c/b/d/a;->b:[I
    invoke-static { v0, p1 }, Ljava/util/Arrays;->equals([I[I)Z
    move-result p1
    if-eqz p1, :L1
    const/4 p1, 1
    return p1
  :L1
    return v1
.end method

.method public f(I)Z
  .registers 4
  .line 1
    iget-object v0, p0, Ld/c/b/d/a;->b:[I
    div-int/lit8 v1, p1, 32
    aget v0, v0, v1
    and-int/lit8 p1, p1, 31
    const/4 v1, 1
    shl-int p1, v1, p1
    and-int/2addr p1, v0
    if-eqz p1, :L0
    return v1
  :L0
    const/4 p1, 0
    return p1
.end method

.method public g()I
  .registers 2
  .line 1
    iget v0, p0, Ld/c/b/d/a;->c:I
    return v0
.end method

.method public h()I
  .registers 2
  .line 1
    iget v0, p0, Ld/c/b/d/a;->c:I
    add-int/lit8 v0, v0, 7
    div-int/lit8 v0, v0, 8
    return v0
.end method

.method public hashCode()I
  .registers 3
  .line 1
    iget v0, p0, Ld/c/b/d/a;->c:I
    mul-int/lit8 v0, v0, 31
    iget-object v1, p0, Ld/c/b/d/a;->b:[I
    invoke-static { v1 }, Ljava/util/Arrays;->hashCode([I)I
    move-result v1
    add-int/2addr v0, v1
    return v0
.end method

.method public j(I[BII)V
  .registers 11
    const/4 v0, 0
    const/4 v1, 0
  :L0
    if-ge v1, p4, :L4
    const/4 v2, 0
    const/4 v3, 0
  :L1
    const/16 v4, 8
    if-ge v2, v4, :L3
  .line 1
    invoke-virtual { p0, p1 }, Ld/c/b/d/a;->f(I)Z
    move-result v4
    if-eqz v4, :L2
    rsub-int/lit8 v4, v2, 7
    const/4 v5, 1
    shl-int v4, v5, v4
    or-int/2addr v3, v4
  :L2
    add-int/lit8 p1, p1, 1
    add-int/lit8 v2, v2, 1
    goto :L1
  :L3
    add-int v2, p3, v1
    int-to-byte v3, v3
  .line 2
    aput-byte v3, p2, v2
    add-int/lit8 v1, v1, 1
    goto :L0
  :L4
    return-void
.end method

.method public k(Ld/c/b/d/a;)V
  .registers 6
  .line 1
    iget v0, p0, Ld/c/b/d/a;->c:I
    iget v1, p1, Ld/c/b/d/a;->c:I
    if-ne v0, v1, :L2
    const/4 v0, 0
  :L0
  .line 2
    iget-object v1, p0, Ld/c/b/d/a;->b:[I
    array-length v2, v1
    if-ge v0, v2, :L1
  .line 3
    aget v2, v1, v0
    iget-object v3, p1, Ld/c/b/d/a;->b:[I
    aget v3, v3, v0
    xor-int/2addr v2, v3
    aput v2, v1, v0
    add-int/lit8 v0, v0, 1
    goto :L0
  :L1
    return-void
  :L2
  .line 4
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "Sizes don't match"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    goto :L4
  :L3
    throw p1
  :L4
    goto :L3
.end method

.method public toString()Ljava/lang/String;
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    iget v1, p0, Ld/c/b/d/a;->c:I
    invoke-direct { v0, v1 }, Ljava/lang/StringBuilder;-><init>(I)V
    const/4 v1, 0
  :L0
  .line 2
    iget v2, p0, Ld/c/b/d/a;->c:I
    if-ge v1, v2, :L4
    and-int/lit8 v2, v1, 7
    if-nez v2, :L1
    const/16 v2, 32
  .line 3
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  :L1
  .line 4
    invoke-virtual { p0, v1 }, Ld/c/b/d/a;->f(I)Z
    move-result v2
    if-eqz v2, :L2
    const/16 v2, 88
    goto :L3
  :L2
    const/16 v2, 46
  :L3
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    add-int/lit8 v1, v1, 1
    goto :L0
  :L4
  .line 5
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
