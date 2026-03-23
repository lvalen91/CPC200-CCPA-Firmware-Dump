.class public final Ld/c/b/d/b;
.super Ljava/lang/Object;
.implements Ljava/lang/Cloneable;
.source "SourceFile"

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:[I

.method public constructor <init>(II)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    if-lez p1, :L0
    if-lez p2, :L0
  .line 2
    iput p1, p0, Ld/c/b/d/b;->b:I
  .line 3
    iput p2, p0, Ld/c/b/d/b;->c:I
    add-int/lit8 p1, p1, 31
  .line 4
    div-int/lit8 p1, p1, 32
    iput p1, p0, Ld/c/b/d/b;->d:I
    mul-int p1, p1, p2
  .line 5
    new-array p1, p1, [I
    iput-object p1, p0, Ld/c/b/d/b;->e:[I
    return-void
  :L0
  .line 6
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "Both dimensions must be greater than 0"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method private constructor <init>(III[I)V
  .registers 5
  .line 7
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 8
    iput p1, p0, Ld/c/b/d/b;->b:I
  .line 9
    iput p2, p0, Ld/c/b/d/b;->c:I
  .line 10
    iput p3, p0, Ld/c/b/d/b;->d:I
  .line 11
    iput-object p4, p0, Ld/c/b/d/b;->e:[I
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  .registers 9
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    iget v1, p0, Ld/c/b/d/b;->c:I
    iget v2, p0, Ld/c/b/d/b;->b:I
    add-int/lit8 v2, v2, 1
    mul-int v1, v1, v2
    invoke-direct { v0, v1 }, Ljava/lang/StringBuilder;-><init>(I)V
    const/4 v1, 0
    const/4 v2, 0
  :L0
  .line 2
    iget v3, p0, Ld/c/b/d/b;->c:I
    if-ge v2, v3, :L5
    const/4 v3, 0
  :L1
  .line 3
    iget v4, p0, Ld/c/b/d/b;->b:I
    if-ge v3, v4, :L4
  .line 4
    invoke-virtual { p0, v3, v2 }, Ld/c/b/d/b;->c(II)Z
    move-result v4
    if-eqz v4, :L2
    move-object v4, p1
    goto :L3
  :L2
    move-object v4, p2
  :L3
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    add-int/lit8 v3, v3, 1
    goto :L1
  :L4
  .line 5
    invoke-virtual { v0, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    add-int/lit8 v2, v2, 1
    goto :L0
  :L5
  .line 6
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    return-object p1
.end method

.method public b()Ld/c/b/d/b;
  .registers 6
  .line 1
    new-instance v0, Ld/c/b/d/b;
    iget v1, p0, Ld/c/b/d/b;->b:I
    iget v2, p0, Ld/c/b/d/b;->c:I
    iget v3, p0, Ld/c/b/d/b;->d:I
    iget-object v4, p0, Ld/c/b/d/b;->e:[I
    invoke-virtual { v4 }, [I->clone()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, [I
    invoke-direct { v0, v1, v2, v3, v4 }, Ld/c/b/d/b;-><init>(III[I)V
    return-object v0
.end method

.method public c(II)Z
  .registers 4
  .line 1
    iget v0, p0, Ld/c/b/d/b;->d:I
    mul-int p2, p2, v0
    div-int/lit8 v0, p1, 32
    add-int/2addr p2, v0
  .line 2
    iget-object v0, p0, Ld/c/b/d/b;->e:[I
    aget p2, v0, p2
    and-int/lit8 p1, p1, 31
    ushr-int p1, p2, p1
    const/4 p2, 1
    and-int/2addr p1, p2
    if-eqz p1, :L0
    return p2
  :L0
    const/4 p1, 0
    return p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Ld/c/b/d/b;->b()Ld/c/b/d/b;
    move-result-object v0
    return-object v0
.end method

.method public d(IIII)V
  .registers 12
    if-ltz p2, :L6
    if-ltz p1, :L6
    if-lez p4, :L5
    if-lez p3, :L5
    add-int/2addr p3, p1
    add-int/2addr p4, p2
  .line 1
    iget v0, p0, Ld/c/b/d/b;->c:I
    if-gt p4, v0, :L4
    iget v0, p0, Ld/c/b/d/b;->b:I
    if-gt p3, v0, :L4
  :L0
    if-ge p2, p4, :L3
  .line 2
    iget v0, p0, Ld/c/b/d/b;->d:I
    mul-int v0, v0, p2
    move v1, p1
  :L1
    if-ge v1, p3, :L2
  .line 3
    iget-object v2, p0, Ld/c/b/d/b;->e:[I
    div-int/lit8 v3, v1, 32
    add-int/2addr v3, v0
    aget v4, v2, v3
    and-int/lit8 v5, v1, 31
    const/4 v6, 1
    shl-int v5, v6, v5
    or-int/2addr v4, v5
    aput v4, v2, v3
    add-int/lit8 v1, v1, 1
    goto :L1
  :L2
    add-int/lit8 p2, p2, 1
    goto :L0
  :L3
    return-void
  :L4
  .line 4
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "The region must fit inside the matrix"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L5
  .line 5
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "Height and width must be at least 1"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L6
  .line 6
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "Left and top must be nonnegative"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    goto :L8
  :L7
    throw p1
  :L8
    goto :L7
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  .registers 4
    const-string v0, "\n"
  .line 1
    invoke-direct { p0, p1, p2, v0 }, Ld/c/b/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 5
  .line 1
    instance-of v0, p1, Ld/c/b/d/b;
    const/4 v1, 0
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    check-cast p1, Ld/c/b/d/b;
  .line 3
    iget v0, p0, Ld/c/b/d/b;->b:I
    iget v2, p1, Ld/c/b/d/b;->b:I
    if-ne v0, v2, :L1
    iget v0, p0, Ld/c/b/d/b;->c:I
    iget v2, p1, Ld/c/b/d/b;->c:I
    if-ne v0, v2, :L1
    iget v0, p0, Ld/c/b/d/b;->d:I
    iget v2, p1, Ld/c/b/d/b;->d:I
    if-ne v0, v2, :L1
    iget-object v0, p0, Ld/c/b/d/b;->e:[I
    iget-object p1, p1, Ld/c/b/d/b;->e:[I
  .line 4
    invoke-static { v0, p1 }, Ljava/util/Arrays;->equals([I[I)Z
    move-result p1
    if-eqz p1, :L1
    const/4 p1, 1
    return p1
  :L1
    return v1
.end method

.method public hashCode()I
  .registers 3
  .line 1
    iget v0, p0, Ld/c/b/d/b;->b:I
    mul-int/lit8 v1, v0, 31
    add-int/2addr v1, v0
    mul-int/lit8 v1, v1, 31
  .line 2
    iget v0, p0, Ld/c/b/d/b;->c:I
    add-int/2addr v1, v0
    mul-int/lit8 v1, v1, 31
  .line 3
    iget v0, p0, Ld/c/b/d/b;->d:I
    add-int/2addr v1, v0
    mul-int/lit8 v1, v1, 31
  .line 4
    iget-object v0, p0, Ld/c/b/d/b;->e:[I
    invoke-static { v0 }, Ljava/util/Arrays;->hashCode([I)I
    move-result v0
    add-int/2addr v1, v0
    return v1
.end method

.method public toString()Ljava/lang/String;
  .registers 3
    const-string v0, "X "
    const-string v1, "  "
  .line 1
    invoke-virtual { p0, v0, v1 }, Ld/c/b/d/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
