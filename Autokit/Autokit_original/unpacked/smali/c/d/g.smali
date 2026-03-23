.class public Lc/d/g;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "<K:",
    "Ljava/lang/Object;",
    "V:",
    "Ljava/lang/Object;",
    ">",
    "Ljava/lang/Object;"
  }
.end annotation

.field static e:[Ljava/lang/Object;

.field static f:I

.field static g:[Ljava/lang/Object;

.field static h:I

.field b:[I

.field c:[Ljava/lang/Object;

.field d:I

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    sget-object v0, Lc/d/c;->a:[I
    iput-object v0, p0, Lc/d/g;->b:[I
  .line 3
    sget-object v0, Lc/d/c;->c:[Ljava/lang/Object;
    iput-object v0, p0, Lc/d/g;->c:[Ljava/lang/Object;
    const/4 v0, 0
  .line 4
    iput v0, p0, Lc/d/g;->d:I
    return-void
.end method

.method public constructor <init>(I)V
  .registers 2
  .line 5
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    if-nez p1, :L0
  .line 6
    sget-object p1, Lc/d/c;->a:[I
    iput-object p1, p0, Lc/d/g;->b:[I
  .line 7
    sget-object p1, Lc/d/c;->c:[Ljava/lang/Object;
    iput-object p1, p0, Lc/d/g;->c:[Ljava/lang/Object;
    goto :L1
  :L0
  .line 8
    invoke-direct { p0, p1 }, Lc/d/g;->a(I)V
  :L1
    const/4 p1, 0
  .line 9
    iput p1, p0, Lc/d/g;->d:I
    return-void
.end method

.method public constructor <init>(Lc/d/g;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lc/d/g<",
      "TK;TV;>;)V"
    }
  .end annotation
  .registers 2
  .line 10
    invoke-direct { p0 }, Lc/d/g;-><init>()V
    if-eqz p1, :L0
  .line 11
    invoke-virtual { p0, p1 }, Lc/d/g;->j(Lc/d/g;)V
  :L0
    return-void
.end method

.method private a(I)V
  .catchall { :L0 .. :L3 } :L2
  .catchall { :L5 .. :L8 } :L7
  .registers 7
  .line 1
    const-class v0, Lc/d/g;
    const/4 v1, 0
    const/4 v2, 0
    const/4 v3, 1
    const/16 v4, 8
    if-ne p1, v4, :L4
  .line 2
    monitor-enter v0
  :L0
  .line 3
    sget-object v4, Lc/d/g;->g:[Ljava/lang/Object;
    if-eqz v4, :L1
  .line 4
    sget-object p1, Lc/d/g;->g:[Ljava/lang/Object;
  .line 5
    iput-object p1, p0, Lc/d/g;->c:[Ljava/lang/Object;
  .line 6
    aget-object v4, p1, v2
    check-cast v4, [Ljava/lang/Object;
    sput-object v4, Lc/d/g;->g:[Ljava/lang/Object;
  .line 7
    aget-object v4, p1, v3
    check-cast v4, [I
    iput-object v4, p0, Lc/d/g;->b:[I
  .line 8
    aput-object v1, p1, v3
    aput-object v1, p1, v2
  .line 9
    sget p1, Lc/d/g;->h:I
    sub-int/2addr p1, v3
    sput p1, Lc/d/g;->h:I
  .line 10
    monitor-exit v0
    return-void
  :L1
  .line 11
    monitor-exit v0
    goto :L9
  :L2
    move-exception p1
    monitor-exit v0
  :L3
    throw p1
  :L4
    const/4 v4, 4
    if-ne p1, v4, :L9
  .line 12
    monitor-enter v0
  :L5
  .line 13
    sget-object v4, Lc/d/g;->e:[Ljava/lang/Object;
    if-eqz v4, :L6
  .line 14
    sget-object p1, Lc/d/g;->e:[Ljava/lang/Object;
  .line 15
    iput-object p1, p0, Lc/d/g;->c:[Ljava/lang/Object;
  .line 16
    aget-object v4, p1, v2
    check-cast v4, [Ljava/lang/Object;
    sput-object v4, Lc/d/g;->e:[Ljava/lang/Object;
  .line 17
    aget-object v4, p1, v3
    check-cast v4, [I
    iput-object v4, p0, Lc/d/g;->b:[I
  .line 18
    aput-object v1, p1, v3
    aput-object v1, p1, v2
  .line 19
    sget p1, Lc/d/g;->f:I
    sub-int/2addr p1, v3
    sput p1, Lc/d/g;->f:I
  .line 20
    monitor-exit v0
    return-void
  :L6
  .line 21
    monitor-exit v0
    goto :L9
  :L7
    move-exception p1
    monitor-exit v0
  :L8
    throw p1
  :L9
  .line 22
    new-array v0, p1, [I
    iput-object v0, p0, Lc/d/g;->b:[I
    shl-int/2addr p1, v3
  .line 23
    new-array p1, p1, [Ljava/lang/Object;
    iput-object p1, p0, Lc/d/g;->c:[Ljava/lang/Object;
    return-void
.end method

.method private static b([III)I
  .catch Ljava/lang/ArrayIndexOutOfBoundsException; { :L0 .. :L1 } :L2
  .registers 3
  :L0
  .line 1
    invoke-static { p0, p1, p2 }, Lc/d/c;->a([III)I
    move-result p0
  :L1
    return p0
  :L2
  .line 2
    new-instance p0, Ljava/util/ConcurrentModificationException;
    invoke-direct { p0 }, Ljava/util/ConcurrentModificationException;-><init>()V
    throw p0
.end method

.method private static d([I[Ljava/lang/Object;I)V
  .catchall { :L0 .. :L5 } :L4
  .catchall { :L7 .. :L12 } :L11
  .registers 11
  .line 1
    const-class v0, Lc/d/g;
    array-length v1, p0
    const/4 v2, 0
    const/4 v3, 2
    const/4 v4, 0
    const/16 v5, 10
    const/4 v6, 1
    const/16 v7, 8
    if-ne v1, v7, :L6
  .line 2
    monitor-enter v0
  :L0
  .line 3
    sget v1, Lc/d/g;->h:I
    if-ge v1, v5, :L3
  .line 4
    sget-object v1, Lc/d/g;->g:[Ljava/lang/Object;
    aput-object v1, p1, v4
  .line 5
    aput-object p0, p1, v6
    shl-int/lit8 p0, p2, 1
    sub-int/2addr p0, v6
  :L1
    if-lt p0, v3, :L2
  .line 6
    aput-object v2, p1, p0
    add-int/lit8 p0, p0, -1
    goto :L1
  :L2
  .line 7
    sput-object p1, Lc/d/g;->g:[Ljava/lang/Object;
  .line 8
    sget p0, Lc/d/g;->h:I
    add-int/2addr p0, v6
    sput p0, Lc/d/g;->h:I
  :L3
  .line 9
    monitor-exit v0
    goto :L13
  :L4
    move-exception p0
    monitor-exit v0
  :L5
    throw p0
  :L6
  .line 10
    array-length v1, p0
    const/4 v7, 4
    if-ne v1, v7, :L13
  .line 11
    monitor-enter v0
  :L7
  .line 12
    sget v1, Lc/d/g;->f:I
    if-ge v1, v5, :L10
  .line 13
    sget-object v1, Lc/d/g;->e:[Ljava/lang/Object;
    aput-object v1, p1, v4
  .line 14
    aput-object p0, p1, v6
    shl-int/lit8 p0, p2, 1
    sub-int/2addr p0, v6
  :L8
    if-lt p0, v3, :L9
  .line 15
    aput-object v2, p1, p0
    add-int/lit8 p0, p0, -1
    goto :L8
  :L9
  .line 16
    sput-object p1, Lc/d/g;->e:[Ljava/lang/Object;
  .line 17
    sget p0, Lc/d/g;->f:I
    add-int/2addr p0, v6
    sput p0, Lc/d/g;->f:I
  :L10
  .line 18
    monitor-exit v0
    goto :L13
  :L11
    move-exception p0
    monitor-exit v0
  :L12
    throw p0
  :L13
    return-void
.end method

.method public c(I)V
  .registers 7
  .line 1
    iget v0, p0, Lc/d/g;->d:I
  .line 2
    iget-object v1, p0, Lc/d/g;->b:[I
    array-length v2, v1
    if-ge v2, p1, :L1
  .line 3
    iget-object v2, p0, Lc/d/g;->c:[Ljava/lang/Object;
  .line 4
    invoke-direct { p0, p1 }, Lc/d/g;->a(I)V
  .line 5
    iget p1, p0, Lc/d/g;->d:I
    if-lez p1, :L0
  .line 6
    iget-object p1, p0, Lc/d/g;->b:[I
    const/4 v3, 0
    invoke-static { v1, v3, p1, v3, v0 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 7
    iget-object p1, p0, Lc/d/g;->c:[Ljava/lang/Object;
    shl-int/lit8 v4, v0, 1
    invoke-static { v2, v3, p1, v3, v4 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  :L0
  .line 8
    invoke-static { v1, v2, v0 }, Lc/d/g;->d([I[Ljava/lang/Object;I)V
  :L1
  .line 9
    iget p1, p0, Lc/d/g;->d:I
    if-ne p1, v0, :L2
    return-void
  :L2
  .line 10
    new-instance p1, Ljava/util/ConcurrentModificationException;
    invoke-direct { p1 }, Ljava/util/ConcurrentModificationException;-><init>()V
    throw p1
.end method

.method public clear()V
  .registers 5
  .line 1
    iget v0, p0, Lc/d/g;->d:I
    if-lez v0, :L0
  .line 2
    iget-object v1, p0, Lc/d/g;->b:[I
  .line 3
    iget-object v2, p0, Lc/d/g;->c:[Ljava/lang/Object;
  .line 4
    sget-object v3, Lc/d/c;->a:[I
    iput-object v3, p0, Lc/d/g;->b:[I
  .line 5
    sget-object v3, Lc/d/c;->c:[Ljava/lang/Object;
    iput-object v3, p0, Lc/d/g;->c:[Ljava/lang/Object;
    const/4 v3, 0
  .line 6
    iput v3, p0, Lc/d/g;->d:I
  .line 7
    invoke-static { v1, v2, v0 }, Lc/d/g;->d([I[Ljava/lang/Object;I)V
  :L0
  .line 8
    iget v0, p0, Lc/d/g;->d:I
    if-gtz v0, :L1
    return-void
  :L1
  .line 9
    new-instance v0, Ljava/util/ConcurrentModificationException;
    invoke-direct { v0 }, Ljava/util/ConcurrentModificationException;-><init>()V
    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lc/d/g;->f(Ljava/lang/Object;)I
    move-result p1
    if-ltz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lc/d/g;->h(Ljava/lang/Object;)I
    move-result p1
    if-ltz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method e(Ljava/lang/Object;I)I
  .registers 9
  .line 1
    iget v0, p0, Lc/d/g;->d:I
    const/4 v1, -1
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    iget-object v2, p0, Lc/d/g;->b:[I
    invoke-static { v2, v0, p2 }, Lc/d/g;->b([III)I
    move-result v2
    if-gez v2, :L1
    return v2
  :L1
  .line 3
    iget-object v3, p0, Lc/d/g;->c:[Ljava/lang/Object;
    shl-int/lit8 v4, v2, 1
    aget-object v3, v3, v4
    invoke-virtual { p1, v3 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L2
    return v2
  :L2
    add-int/lit8 v3, v2, 1
  :L3
    if-ge v3, v0, :L5
  .line 4
    iget-object v4, p0, Lc/d/g;->b:[I
    aget v4, v4, v3
    if-ne v4, p2, :L5
  .line 5
    iget-object v4, p0, Lc/d/g;->c:[Ljava/lang/Object;
    shl-int/lit8 v5, v3, 1
    aget-object v4, v4, v5
    invoke-virtual { p1, v4 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :L4
    return v3
  :L4
    add-int/lit8 v3, v3, 1
    goto :L3
  :L5
    add-int/lit8 v2, v2, -1
  :L6
    if-ltz v2, :L8
  .line 6
    iget-object v0, p0, Lc/d/g;->b:[I
    aget v0, v0, v2
    if-ne v0, p2, :L8
  .line 7
    iget-object v0, p0, Lc/d/g;->c:[Ljava/lang/Object;
    shl-int/lit8 v4, v2, 1
    aget-object v0, v0, v4
    invoke-virtual { p1, v0 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L7
    return v2
  :L7
    add-int/lit8 v2, v2, -1
    goto :L6
  :L8
    xor-int/lit8 p1, v3, -1
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
  .catch Ljava/lang/NullPointerException; { :L2 .. :L5 } :L8
  .catch Ljava/lang/ClassCastException; { :L2 .. :L5 } :L8
  .catch Ljava/lang/NullPointerException; { :L11 .. :L14 } :L17
  .catch Ljava/lang/ClassCastException; { :L11 .. :L14 } :L17
  .registers 8
    const/4 v0, 1
    if-ne p0, p1, :L0
    return v0
  :L0
  .line 1
    instance-of v1, p1, Lc/d/g;
    const/4 v2, 0
    if-eqz v1, :L9
  .line 2
    check-cast p1, Lc/d/g;
  .line 3
    invoke-virtual { p0 }, Lc/d/g;->size()I
    move-result v1
    invoke-virtual { p1 }, Lc/d/g;->size()I
    move-result v3
    if-eq v1, v3, :L1
    return v2
  :L1
    const/4 v1, 0
  :L2
  .line 4
    iget v3, p0, Lc/d/g;->d:I
    if-ge v1, v3, :L7
  .line 5
    invoke-virtual { p0, v1 }, Lc/d/g;->i(I)Ljava/lang/Object;
    move-result-object v3
  .line 6
    invoke-virtual { p0, v1 }, Lc/d/g;->m(I)Ljava/lang/Object;
    move-result-object v4
  .line 7
    invoke-virtual { p1, v3 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    if-nez v4, :L4
    if-nez v5, :L3
  .line 8
    invoke-virtual { p1, v3 }, Lc/d/g;->containsKey(Ljava/lang/Object;)Z
    move-result v3
    if-nez v3, :L6
  :L3
    return v2
  :L4
  .line 9
    invoke-virtual { v4, v5 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v3
  :L5
    if-nez v3, :L6
    return v2
  :L6
    add-int/lit8 v1, v1, 1
    goto :L2
  :L7
    return v0
  :L8
    return v2
  :L9
  .line 10
    instance-of v1, p1, Ljava/util/Map;
    if-eqz v1, :L17
  .line 11
    check-cast p1, Ljava/util/Map;
  .line 12
    invoke-virtual { p0 }, Lc/d/g;->size()I
    move-result v1
    invoke-interface { p1 }, Ljava/util/Map;->size()I
    move-result v3
    if-eq v1, v3, :L10
    return v2
  :L10
    const/4 v1, 0
  :L11
  .line 13
    iget v3, p0, Lc/d/g;->d:I
    if-ge v1, v3, :L16
  .line 14
    invoke-virtual { p0, v1 }, Lc/d/g;->i(I)Ljava/lang/Object;
    move-result-object v3
  .line 15
    invoke-virtual { p0, v1 }, Lc/d/g;->m(I)Ljava/lang/Object;
    move-result-object v4
  .line 16
    invoke-interface { p1, v3 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    if-nez v4, :L13
    if-nez v5, :L12
  .line 17
    invoke-interface { p1, v3 }, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    move-result v3
    if-nez v3, :L15
  :L12
    return v2
  :L13
  .line 18
    invoke-virtual { v4, v5 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v3
  :L14
    if-nez v3, :L15
    return v2
  :L15
    add-int/lit8 v1, v1, 1
    goto :L11
  :L16
    return v0
  :L17
    return v2
.end method

.method public f(Ljava/lang/Object;)I
  .registers 3
    if-nez p1, :L0
  .line 1
    invoke-virtual { p0 }, Lc/d/g;->g()I
    move-result p1
    goto :L1
  :L0
    invoke-virtual { p1 }, Ljava/lang/Object;->hashCode()I
    move-result v0
    invoke-virtual { p0, p1, v0 }, Lc/d/g;->e(Ljava/lang/Object;I)I
    move-result p1
  :L1
    return p1
.end method

.method g()I
  .registers 7
  .line 1
    iget v0, p0, Lc/d/g;->d:I
    const/4 v1, -1
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    iget-object v2, p0, Lc/d/g;->b:[I
    const/4 v3, 0
    invoke-static { v2, v0, v3 }, Lc/d/g;->b([III)I
    move-result v2
    if-gez v2, :L1
    return v2
  :L1
  .line 3
    iget-object v3, p0, Lc/d/g;->c:[Ljava/lang/Object;
    shl-int/lit8 v4, v2, 1
    aget-object v3, v3, v4
    if-nez v3, :L2
    return v2
  :L2
    add-int/lit8 v3, v2, 1
  :L3
    if-ge v3, v0, :L5
  .line 4
    iget-object v4, p0, Lc/d/g;->b:[I
    aget v4, v4, v3
    if-nez v4, :L5
  .line 5
    iget-object v4, p0, Lc/d/g;->c:[Ljava/lang/Object;
    shl-int/lit8 v5, v3, 1
    aget-object v4, v4, v5
    if-nez v4, :L4
    return v3
  :L4
    add-int/lit8 v3, v3, 1
    goto :L3
  :L5
    add-int/lit8 v2, v2, -1
  :L6
    if-ltz v2, :L8
  .line 6
    iget-object v0, p0, Lc/d/g;->b:[I
    aget v0, v0, v2
    if-nez v0, :L8
  .line 7
    iget-object v0, p0, Lc/d/g;->c:[Ljava/lang/Object;
    shl-int/lit8 v4, v2, 1
    aget-object v0, v0, v4
    if-nez v0, :L7
    return v2
  :L7
    add-int/lit8 v2, v2, -1
    goto :L6
  :L8
    xor-int/lit8 v0, v3, -1
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Object;",
      ")TV;"
    }
  .end annotation
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, p1, v0 }, Lc/d/g;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    return-object p1
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Object;",
      "TV;)TV;"
    }
  .end annotation
  .registers 3
  .line 1
    invoke-virtual { p0, p1 }, Lc/d/g;->f(Ljava/lang/Object;)I
    move-result p1
    if-ltz p1, :L0
  .line 2
    iget-object p2, p0, Lc/d/g;->c:[Ljava/lang/Object;
    shl-int/lit8 p1, p1, 1
    add-int/lit8 p1, p1, 1
    aget-object p2, p2, p1
  :L0
    return-object p2
.end method

.method h(Ljava/lang/Object;)I
  .registers 7
  .line 1
    iget v0, p0, Lc/d/g;->d:I
    mul-int/lit8 v0, v0, 2
  .line 2
    iget-object v1, p0, Lc/d/g;->c:[Ljava/lang/Object;
    const/4 v2, 1
    if-nez p1, :L2
    const/4 p1, 1
  :L0
    if-ge p1, v0, :L5
  .line 3
    aget-object v3, v1, p1
    if-nez v3, :L1
    shr-int/2addr p1, v2
    return p1
  :L1
    add-int/lit8 p1, p1, 2
    goto :L0
  :L2
    const/4 v3, 1
  :L3
    if-ge v3, v0, :L5
  .line 4
    aget-object v4, v1, v3
    invoke-virtual { p1, v4 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :L4
    shr-int/lit8 p1, v3, 1
    return p1
  :L4
    add-int/lit8 v3, v3, 2
    goto :L3
  :L5
    const/4 p1, -1
    return p1
.end method

.method public hashCode()I
  .registers 10
  .line 1
    iget-object v0, p0, Lc/d/g;->b:[I
  .line 2
    iget-object v1, p0, Lc/d/g;->c:[Ljava/lang/Object;
  .line 3
    iget v2, p0, Lc/d/g;->d:I
    const/4 v3, 1
    const/4 v4, 0
    const/4 v5, 0
    const/4 v6, 0
  :L0
    if-ge v5, v2, :L3
  .line 4
    aget-object v7, v1, v3
  .line 5
    aget v8, v0, v5
    if-nez v7, :L1
    const/4 v7, 0
    goto :L2
  :L1
    invoke-virtual { v7 }, Ljava/lang/Object;->hashCode()I
    move-result v7
  :L2
    xor-int/2addr v7, v8
    add-int/2addr v6, v7
    add-int/lit8 v5, v5, 1
    add-int/lit8 v3, v3, 2
    goto :L0
  :L3
    return v6
.end method

.method public i(I)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(I)TK;"
    }
  .end annotation
  .registers 3
  .line 1
    iget-object v0, p0, Lc/d/g;->c:[Ljava/lang/Object;
    shl-int/lit8 p1, p1, 1
    aget-object p1, v0, p1
    return-object p1
.end method

.method public isEmpty()Z
  .registers 2
  .line 1
    iget v0, p0, Lc/d/g;->d:I
    if-gtz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public j(Lc/d/g;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lc/d/g<",
      "+TK;+TV;>;)V"
    }
  .end annotation
  .registers 6
  .line 1
    iget v0, p1, Lc/d/g;->d:I
  .line 2
    iget v1, p0, Lc/d/g;->d:I
    add-int/2addr v1, v0
    invoke-virtual { p0, v1 }, Lc/d/g;->c(I)V
  .line 3
    iget v1, p0, Lc/d/g;->d:I
    const/4 v2, 0
    if-nez v1, :L0
    if-lez v0, :L1
  .line 4
    iget-object v1, p1, Lc/d/g;->b:[I
    iget-object v3, p0, Lc/d/g;->b:[I
    invoke-static { v1, v2, v3, v2, v0 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 5
    iget-object p1, p1, Lc/d/g;->c:[Ljava/lang/Object;
    iget-object v1, p0, Lc/d/g;->c:[Ljava/lang/Object;
    shl-int/lit8 v3, v0, 1
    invoke-static { p1, v2, v1, v2, v3 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 6
    iput v0, p0, Lc/d/g;->d:I
    goto :L1
  :L0
    if-ge v2, v0, :L1
  .line 7
    invoke-virtual { p1, v2 }, Lc/d/g;->i(I)Ljava/lang/Object;
    move-result-object v1
    invoke-virtual { p1, v2 }, Lc/d/g;->m(I)Ljava/lang/Object;
    move-result-object v3
    invoke-virtual { p0, v1, v3 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    add-int/lit8 v2, v2, 1
    goto :L0
  :L1
    return-void
.end method

.method public k(I)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(I)TV;"
    }
  .end annotation
  .registers 12
  .line 1
    iget-object v0, p0, Lc/d/g;->c:[Ljava/lang/Object;
    shl-int/lit8 v1, p1, 1
    add-int/lit8 v2, v1, 1
    aget-object v2, v0, v2
  .line 2
    iget v3, p0, Lc/d/g;->d:I
    const/4 v4, 0
    const/4 v5, 1
    if-gt v3, v5, :L0
  .line 3
    iget-object p1, p0, Lc/d/g;->b:[I
    invoke-static { p1, v0, v3 }, Lc/d/g;->d([I[Ljava/lang/Object;I)V
  .line 4
    sget-object p1, Lc/d/c;->a:[I
    iput-object p1, p0, Lc/d/g;->b:[I
  .line 5
    sget-object p1, Lc/d/c;->c:[Ljava/lang/Object;
    iput-object p1, p0, Lc/d/g;->c:[Ljava/lang/Object;
    goto :L7
  :L0
    add-int/lit8 v0, v3, -1
  .line 6
    iget-object v6, p0, Lc/d/g;->b:[I
    array-length v7, v6
    const/16 v8, 8
    if-le v7, v8, :L4
    array-length v6, v6
    div-int/lit8 v6, v6, 3
    if-ge v3, v6, :L4
    if-le v3, v8, :L1
    shr-int/lit8 v6, v3, 1
    add-int v8, v3, v6
  :L1
  .line 7
    iget-object v6, p0, Lc/d/g;->b:[I
  .line 8
    iget-object v7, p0, Lc/d/g;->c:[Ljava/lang/Object;
  .line 9
    invoke-direct { p0, v8 }, Lc/d/g;->a(I)V
  .line 10
    iget v8, p0, Lc/d/g;->d:I
    if-ne v3, v8, :L3
    if-lez p1, :L2
  .line 11
    iget-object v8, p0, Lc/d/g;->b:[I
    invoke-static { v6, v4, v8, v4, p1 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 12
    iget-object v8, p0, Lc/d/g;->c:[Ljava/lang/Object;
    invoke-static { v7, v4, v8, v4, v1 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  :L2
    if-ge p1, v0, :L6
    add-int/lit8 v4, p1, 1
  .line 13
    iget-object v8, p0, Lc/d/g;->b:[I
    sub-int v9, v0, p1
    invoke-static { v6, v4, v8, p1, v9 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    shl-int/lit8 p1, v4, 1
  .line 14
    iget-object v4, p0, Lc/d/g;->c:[Ljava/lang/Object;
    shl-int/lit8 v5, v9, 1
    invoke-static { v7, p1, v4, v1, v5 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    goto :L6
  :L3
  .line 15
    new-instance p1, Ljava/util/ConcurrentModificationException;
    invoke-direct { p1 }, Ljava/util/ConcurrentModificationException;-><init>()V
    throw p1
  :L4
    if-ge p1, v0, :L5
  .line 16
    iget-object v4, p0, Lc/d/g;->b:[I
    add-int/lit8 v6, p1, 1
    sub-int v7, v0, p1
    invoke-static { v4, v6, v4, p1, v7 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 17
    iget-object p1, p0, Lc/d/g;->c:[Ljava/lang/Object;
    shl-int/lit8 v4, v6, 1
    shl-int/lit8 v6, v7, 1
    invoke-static { p1, v4, p1, v1, v6 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  :L5
  .line 18
    iget-object p1, p0, Lc/d/g;->c:[Ljava/lang/Object;
    shl-int/lit8 v1, v0, 1
    const/4 v4, 0
    aput-object v4, p1, v1
    add-int/2addr v1, v5
  .line 19
    aput-object v4, p1, v1
  :L6
    move v4, v0
  :L7
  .line 20
    iget p1, p0, Lc/d/g;->d:I
    if-ne v3, p1, :L8
  .line 21
    iput v4, p0, Lc/d/g;->d:I
    return-object v2
  :L8
  .line 22
    new-instance p1, Ljava/util/ConcurrentModificationException;
    invoke-direct { p1 }, Ljava/util/ConcurrentModificationException;-><init>()V
    throw p1
.end method

.method public l(ILjava/lang/Object;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(ITV;)TV;"
    }
  .end annotation
  .registers 5
    shl-int/lit8 p1, p1, 1
    add-int/lit8 p1, p1, 1
  .line 1
    iget-object v0, p0, Lc/d/g;->c:[Ljava/lang/Object;
    aget-object v1, v0, p1
  .line 2
    aput-object p2, v0, p1
    return-object v1
.end method

.method public m(I)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(I)TV;"
    }
  .end annotation
  .registers 3
  .line 1
    iget-object v0, p0, Lc/d/g;->c:[Ljava/lang/Object;
    shl-int/lit8 p1, p1, 1
    add-int/lit8 p1, p1, 1
    aget-object p1, v0, p1
    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TK;TV;)TV;"
    }
  .end annotation
  .registers 12
  .line 1
    iget v0, p0, Lc/d/g;->d:I
    const/4 v1, 0
    if-nez p1, :L0
  .line 2
    invoke-virtual { p0 }, Lc/d/g;->g()I
    move-result v2
    const/4 v3, 0
    goto :L1
  :L0
  .line 3
    invoke-virtual { p1 }, Ljava/lang/Object;->hashCode()I
    move-result v2
  .line 4
    invoke-virtual { p0, p1, v2 }, Lc/d/g;->e(Ljava/lang/Object;I)I
    move-result v3
    move v8, v3
    move v3, v2
    move v2, v8
  :L1
    if-ltz v2, :L2
    shl-int/lit8 p1, v2, 1
    add-int/lit8 p1, p1, 1
  .line 5
    iget-object v0, p0, Lc/d/g;->c:[Ljava/lang/Object;
    aget-object v1, v0, p1
  .line 6
    aput-object p2, v0, p1
    return-object v1
  :L2
    xor-int/lit8 v2, v2, -1
  .line 7
    iget-object v4, p0, Lc/d/g;->b:[I
    array-length v4, v4
    if-lt v0, v4, :L7
    const/4 v4, 4
    const/16 v5, 8
    if-lt v0, v5, :L3
    shr-int/lit8 v4, v0, 1
    add-int/2addr v4, v0
    goto :L4
  :L3
    if-lt v0, v4, :L4
    const/16 v4, 8
  :L4
  .line 8
    iget-object v5, p0, Lc/d/g;->b:[I
  .line 9
    iget-object v6, p0, Lc/d/g;->c:[Ljava/lang/Object;
  .line 10
    invoke-direct { p0, v4 }, Lc/d/g;->a(I)V
  .line 11
    iget v4, p0, Lc/d/g;->d:I
    if-ne v0, v4, :L6
  .line 12
    iget-object v4, p0, Lc/d/g;->b:[I
    array-length v7, v4
    if-lez v7, :L5
  .line 13
    array-length v7, v5
    invoke-static { v5, v1, v4, v1, v7 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 14
    iget-object v4, p0, Lc/d/g;->c:[Ljava/lang/Object;
    array-length v7, v6
    invoke-static { v6, v1, v4, v1, v7 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  :L5
  .line 15
    invoke-static { v5, v6, v0 }, Lc/d/g;->d([I[Ljava/lang/Object;I)V
    goto :L7
  :L6
  .line 16
    new-instance p1, Ljava/util/ConcurrentModificationException;
    invoke-direct { p1 }, Ljava/util/ConcurrentModificationException;-><init>()V
    throw p1
  :L7
    if-ge v2, v0, :L8
  .line 17
    iget-object v1, p0, Lc/d/g;->b:[I
    add-int/lit8 v4, v2, 1
    sub-int v5, v0, v2
    invoke-static { v1, v2, v1, v4, v5 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 18
    iget-object v1, p0, Lc/d/g;->c:[Ljava/lang/Object;
    shl-int/lit8 v5, v2, 1
    shl-int/lit8 v4, v4, 1
    iget v6, p0, Lc/d/g;->d:I
    sub-int/2addr v6, v2
    shl-int/lit8 v6, v6, 1
    invoke-static { v1, v5, v1, v4, v6 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  :L8
  .line 19
    iget v1, p0, Lc/d/g;->d:I
    if-ne v0, v1, :L9
    iget-object v0, p0, Lc/d/g;->b:[I
    array-length v4, v0
    if-ge v2, v4, :L9
  .line 20
    aput v3, v0, v2
  .line 21
    iget-object v0, p0, Lc/d/g;->c:[Ljava/lang/Object;
    shl-int/lit8 v2, v2, 1
    aput-object p1, v0, v2
    add-int/lit8 v2, v2, 1
  .line 22
    aput-object p2, v0, v2
    add-int/lit8 v1, v1, 1
  .line 23
    iput v1, p0, Lc/d/g;->d:I
    const/4 p1, 0
    return-object p1
  :L9
  .line 24
    new-instance p1, Ljava/util/ConcurrentModificationException;
    invoke-direct { p1 }, Ljava/util/ConcurrentModificationException;-><init>()V
    throw p1
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TK;TV;)TV;"
    }
  .end annotation
  .registers 4
  .line 1
    invoke-virtual { p0, p1 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    if-nez v0, :L0
  .line 2
    invoke-virtual { p0, p1, p2 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
  :L0
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Object;",
      ")TV;"
    }
  .end annotation
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lc/d/g;->f(Ljava/lang/Object;)I
    move-result p1
    if-ltz p1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Lc/d/g;->k(I)Ljava/lang/Object;
    move-result-object p1
    return-object p1
  :L0
    const/4 p1, 0
    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
  .registers 4
  .line 3
    invoke-virtual { p0, p1 }, Lc/d/g;->f(Ljava/lang/Object;)I
    move-result p1
    if-ltz p1, :L1
  .line 4
    invoke-virtual { p0, p1 }, Lc/d/g;->m(I)Ljava/lang/Object;
    move-result-object v0
    if-eq p2, v0, :L0
    if-eqz p2, :L1
  .line 5
    invoke-virtual { p2, v0 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result p2
    if-eqz p2, :L1
  :L0
  .line 6
    invoke-virtual { p0, p1 }, Lc/d/g;->k(I)Ljava/lang/Object;
    const/4 p1, 1
    return p1
  :L1
    const/4 p1, 0
    return p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TK;TV;)TV;"
    }
  .end annotation
  .registers 3
  .line 1
    invoke-virtual { p0, p1 }, Lc/d/g;->f(Ljava/lang/Object;)I
    move-result p1
    if-ltz p1, :L0
  .line 2
    invoke-virtual { p0, p1, p2 }, Lc/d/g;->l(ILjava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    return-object p1
  :L0
    const/4 p1, 0
    return-object p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TK;TV;TV;)Z"
    }
  .end annotation
  .registers 5
  .line 3
    invoke-virtual { p0, p1 }, Lc/d/g;->f(Ljava/lang/Object;)I
    move-result p1
    if-ltz p1, :L1
  .line 4
    invoke-virtual { p0, p1 }, Lc/d/g;->m(I)Ljava/lang/Object;
    move-result-object v0
    if-eq v0, p2, :L0
    if-eqz p2, :L1
  .line 5
    invoke-virtual { p2, v0 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result p2
    if-eqz p2, :L1
  :L0
  .line 6
    invoke-virtual { p0, p1, p3 }, Lc/d/g;->l(ILjava/lang/Object;)Ljava/lang/Object;
    const/4 p1, 1
    return p1
  :L1
    const/4 p1, 0
    return p1
.end method

.method public size()I
  .registers 2
  .line 1
    iget v0, p0, Lc/d/g;->d:I
    return v0
.end method

.method public toString()Ljava/lang/String;
  .registers 5
  .line 1
    invoke-virtual { p0 }, Lc/d/g;->isEmpty()Z
    move-result v0
    if-eqz v0, :L0
    const-string v0, "{}"
    return-object v0
  :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    iget v1, p0, Lc/d/g;->d:I
    mul-int/lit8 v1, v1, 28
    invoke-direct { v0, v1 }, Ljava/lang/StringBuilder;-><init>(I)V
    const/16 v1, 123
  .line 3
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    const/4 v1, 0
  :L1
  .line 4
    iget v2, p0, Lc/d/g;->d:I
    if-ge v1, v2, :L7
    if-lez v1, :L2
    const-string v2, ", "
  .line 5
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L2
  .line 6
    invoke-virtual { p0, v1 }, Lc/d/g;->i(I)Ljava/lang/Object;
    move-result-object v2
    const-string v3, "(this Map)"
    if-eq v2, p0, :L3
  .line 7
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    goto :L4
  :L3
  .line 8
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L4
    const/16 v2, 61
  .line 9
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  .line 10
    invoke-virtual { p0, v1 }, Lc/d/g;->m(I)Ljava/lang/Object;
    move-result-object v2
    if-eq v2, p0, :L5
  .line 11
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    goto :L6
  :L5
  .line 12
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L6
    add-int/lit8 v1, v1, 1
    goto :L1
  :L7
    const/16 v1, 125
  .line 13
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  .line 14
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
