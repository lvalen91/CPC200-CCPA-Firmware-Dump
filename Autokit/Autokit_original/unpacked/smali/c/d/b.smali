.class public final Lc/d/b;
.super Ljava/lang/Object;
.implements Ljava/util/Collection;
.implements Ljava/util/Set;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "<E:",
    "Ljava/lang/Object;",
    ">",
    "Ljava/lang/Object;",
    "Ljava/util/Collection<",
    "TE;>;",
    "Ljava/util/Set<",
    "TE;>;"
  }
.end annotation

.field private final static f:[I

.field private final static g:[Ljava/lang/Object;

.field private static h:[Ljava/lang/Object;

.field private static i:I

.field private static j:[Ljava/lang/Object;

.field private static k:I

.field private b:[I

.field c:[Ljava/lang/Object;

.field d:I

.field private e:Lc/d/f;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/d/f<",
      "TE;TE;>;"
    }
  .end annotation
.end field

.method static constructor <clinit>()V
  .registers 3
    const/4 v0, 0
    new-array v1, v0, [I
  .line 1
    sput-object v1, Lc/d/b;->f:[I
    new-array v0, v0, [Ljava/lang/Object;
  .line 2
    sput-object v0, Lc/d/b;->g:[Ljava/lang/Object;
    return-void
.end method

.method public constructor <init>()V
  .registers 2
    const/4 v0, 0
  .line 1
    invoke-direct { p0, v0 }, Lc/d/b;-><init>(I)V
    return-void
.end method

.method public constructor <init>(I)V
  .registers 2
  .line 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    if-nez p1, :L0
  .line 3
    sget-object p1, Lc/d/b;->f:[I
    iput-object p1, p0, Lc/d/b;->b:[I
  .line 4
    sget-object p1, Lc/d/b;->g:[Ljava/lang/Object;
    iput-object p1, p0, Lc/d/b;->c:[Ljava/lang/Object;
    goto :L1
  :L0
  .line 5
    invoke-direct { p0, p1 }, Lc/d/b;->a(I)V
  :L1
    const/4 p1, 0
  .line 6
    iput p1, p0, Lc/d/b;->d:I
    return-void
.end method

.method private a(I)V
  .catchall { :L0 .. :L3 } :L2
  .catchall { :L5 .. :L8 } :L7
  .registers 7
    const/4 v0, 0
    const/4 v1, 0
    const/4 v2, 1
    const/16 v3, 8
    if-ne p1, v3, :L4
  .line 1
    const-class v3, Lc/d/b;
    monitor-enter v3
  :L0
  .line 2
    sget-object v4, Lc/d/b;->j:[Ljava/lang/Object;
    if-eqz v4, :L1
  .line 3
    sget-object p1, Lc/d/b;->j:[Ljava/lang/Object;
  .line 4
    iput-object p1, p0, Lc/d/b;->c:[Ljava/lang/Object;
  .line 5
    aget-object v4, p1, v1
    check-cast v4, [Ljava/lang/Object;
    sput-object v4, Lc/d/b;->j:[Ljava/lang/Object;
  .line 6
    aget-object v4, p1, v2
    check-cast v4, [I
    iput-object v4, p0, Lc/d/b;->b:[I
  .line 7
    aput-object v0, p1, v2
    aput-object v0, p1, v1
  .line 8
    sget p1, Lc/d/b;->k:I
    sub-int/2addr p1, v2
    sput p1, Lc/d/b;->k:I
  .line 9
    monitor-exit v3
    return-void
  :L1
  .line 10
    monitor-exit v3
    goto :L9
  :L2
    move-exception p1
    monitor-exit v3
  :L3
    throw p1
  :L4
    const/4 v3, 4
    if-ne p1, v3, :L9
  .line 11
    const-class v3, Lc/d/b;
    monitor-enter v3
  :L5
  .line 12
    sget-object v4, Lc/d/b;->h:[Ljava/lang/Object;
    if-eqz v4, :L6
  .line 13
    sget-object p1, Lc/d/b;->h:[Ljava/lang/Object;
  .line 14
    iput-object p1, p0, Lc/d/b;->c:[Ljava/lang/Object;
  .line 15
    aget-object v4, p1, v1
    check-cast v4, [Ljava/lang/Object;
    sput-object v4, Lc/d/b;->h:[Ljava/lang/Object;
  .line 16
    aget-object v4, p1, v2
    check-cast v4, [I
    iput-object v4, p0, Lc/d/b;->b:[I
  .line 17
    aput-object v0, p1, v2
    aput-object v0, p1, v1
  .line 18
    sget p1, Lc/d/b;->i:I
    sub-int/2addr p1, v2
    sput p1, Lc/d/b;->i:I
  .line 19
    monitor-exit v3
    return-void
  :L6
  .line 20
    monitor-exit v3
    goto :L9
  :L7
    move-exception p1
    monitor-exit v3
  :L8
    throw p1
  :L9
  .line 21
    new-array v0, p1, [I
    iput-object v0, p0, Lc/d/b;->b:[I
  .line 22
    new-array p1, p1, [Ljava/lang/Object;
    iput-object p1, p0, Lc/d/b;->c:[Ljava/lang/Object;
    return-void
.end method

.method private static c([I[Ljava/lang/Object;I)V
  .catchall { :L0 .. :L5 } :L4
  .catchall { :L7 .. :L12 } :L11
  .registers 10
  .line 1
    array-length v0, p0
    const/4 v1, 0
    const/4 v2, 2
    const/4 v3, 0
    const/16 v4, 10
    const/4 v5, 1
    const/16 v6, 8
    if-ne v0, v6, :L6
  .line 2
    const-class v0, Lc/d/b;
    monitor-enter v0
  :L0
  .line 3
    sget v6, Lc/d/b;->k:I
    if-ge v6, v4, :L3
  .line 4
    sget-object v4, Lc/d/b;->j:[Ljava/lang/Object;
    aput-object v4, p1, v3
  .line 5
    aput-object p0, p1, v5
    sub-int/2addr p2, v5
  :L1
    if-lt p2, v2, :L2
  .line 6
    aput-object v1, p1, p2
    add-int/lit8 p2, p2, -1
    goto :L1
  :L2
  .line 7
    sput-object p1, Lc/d/b;->j:[Ljava/lang/Object;
  .line 8
    sget p0, Lc/d/b;->k:I
    add-int/2addr p0, v5
    sput p0, Lc/d/b;->k:I
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
    array-length v0, p0
    const/4 v6, 4
    if-ne v0, v6, :L13
  .line 11
    const-class v0, Lc/d/b;
    monitor-enter v0
  :L7
  .line 12
    sget v6, Lc/d/b;->i:I
    if-ge v6, v4, :L10
  .line 13
    sget-object v4, Lc/d/b;->h:[Ljava/lang/Object;
    aput-object v4, p1, v3
  .line 14
    aput-object p0, p1, v5
    sub-int/2addr p2, v5
  :L8
    if-lt p2, v2, :L9
  .line 15
    aput-object v1, p1, p2
    add-int/lit8 p2, p2, -1
    goto :L8
  :L9
  .line 16
    sput-object p1, Lc/d/b;->h:[Ljava/lang/Object;
  .line 17
    sget p0, Lc/d/b;->i:I
    add-int/2addr p0, v5
    sput p0, Lc/d/b;->i:I
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

.method private d()Lc/d/f;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Lc/d/f<",
      "TE;TE;>;"
    }
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lc/d/b;->e:Lc/d/f;
    if-nez v0, :L0
  .line 2
    new-instance v0, Lc/d/b$a;
    invoke-direct { v0, p0 }, Lc/d/b$a;-><init>(Lc/d/b;)V
    iput-object v0, p0, Lc/d/b;->e:Lc/d/f;
  :L0
  .line 3
    iget-object v0, p0, Lc/d/b;->e:Lc/d/f;
    return-object v0
.end method

.method private e(Ljava/lang/Object;I)I
  .registers 8
  .line 1
    iget v0, p0, Lc/d/b;->d:I
    const/4 v1, -1
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    iget-object v2, p0, Lc/d/b;->b:[I
    invoke-static { v2, v0, p2 }, Lc/d/c;->a([III)I
    move-result v2
    if-gez v2, :L1
    return v2
  :L1
  .line 3
    iget-object v3, p0, Lc/d/b;->c:[Ljava/lang/Object;
    aget-object v3, v3, v2
    invoke-virtual { p1, v3 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L2
    return v2
  :L2
    add-int/lit8 v3, v2, 1
  :L3
    if-ge v3, v0, :L5
  .line 4
    iget-object v4, p0, Lc/d/b;->b:[I
    aget v4, v4, v3
    if-ne v4, p2, :L5
  .line 5
    iget-object v4, p0, Lc/d/b;->c:[Ljava/lang/Object;
    aget-object v4, v4, v3
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
    iget-object v0, p0, Lc/d/b;->b:[I
    aget v0, v0, v2
    if-ne v0, p2, :L8
  .line 7
    iget-object v0, p0, Lc/d/b;->c:[Ljava/lang/Object;
    aget-object v0, v0, v2
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

.method private f()I
  .registers 6
  .line 1
    iget v0, p0, Lc/d/b;->d:I
    const/4 v1, -1
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    iget-object v2, p0, Lc/d/b;->b:[I
    const/4 v3, 0
    invoke-static { v2, v0, v3 }, Lc/d/c;->a([III)I
    move-result v2
    if-gez v2, :L1
    return v2
  :L1
  .line 3
    iget-object v3, p0, Lc/d/b;->c:[Ljava/lang/Object;
    aget-object v3, v3, v2
    if-nez v3, :L2
    return v2
  :L2
    add-int/lit8 v3, v2, 1
  :L3
    if-ge v3, v0, :L5
  .line 4
    iget-object v4, p0, Lc/d/b;->b:[I
    aget v4, v4, v3
    if-nez v4, :L5
  .line 5
    iget-object v4, p0, Lc/d/b;->c:[Ljava/lang/Object;
    aget-object v4, v4, v3
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
    iget-object v0, p0, Lc/d/b;->b:[I
    aget v0, v0, v2
    if-nez v0, :L8
  .line 7
    iget-object v0, p0, Lc/d/b;->c:[Ljava/lang/Object;
    aget-object v0, v0, v2
    if-nez v0, :L7
    return v2
  :L7
    add-int/lit8 v2, v2, -1
    goto :L6
  :L8
    xor-int/lit8 v0, v3, -1
    return v0
.end method

.method public add(Ljava/lang/Object;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TE;)Z"
    }
  .end annotation
  .registers 10
    const/4 v0, 0
    if-nez p1, :L0
  .line 1
    invoke-direct { p0 }, Lc/d/b;->f()I
    move-result v1
    const/4 v2, 0
    goto :L1
  :L0
  .line 2
    invoke-virtual { p1 }, Ljava/lang/Object;->hashCode()I
    move-result v1
  .line 3
    invoke-direct { p0, p1, v1 }, Lc/d/b;->e(Ljava/lang/Object;I)I
    move-result v2
    move v7, v2
    move v2, v1
    move v1, v7
  :L1
    if-ltz v1, :L2
    return v0
  :L2
    xor-int/lit8 v1, v1, -1
  .line 4
    iget v3, p0, Lc/d/b;->d:I
    iget-object v4, p0, Lc/d/b;->b:[I
    array-length v4, v4
    if-lt v3, v4, :L6
    const/4 v4, 4
    const/16 v5, 8
    if-lt v3, v5, :L3
    shr-int/lit8 v4, v3, 1
    add-int/2addr v4, v3
    goto :L4
  :L3
    if-lt v3, v4, :L4
    const/16 v4, 8
  :L4
  .line 5
    iget-object v3, p0, Lc/d/b;->b:[I
  .line 6
    iget-object v5, p0, Lc/d/b;->c:[Ljava/lang/Object;
  .line 7
    invoke-direct { p0, v4 }, Lc/d/b;->a(I)V
  .line 8
    iget-object v4, p0, Lc/d/b;->b:[I
    array-length v6, v4
    if-lez v6, :L5
  .line 9
    array-length v6, v3
    invoke-static { v3, v0, v4, v0, v6 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 10
    iget-object v4, p0, Lc/d/b;->c:[Ljava/lang/Object;
    array-length v6, v5
    invoke-static { v5, v0, v4, v0, v6 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  :L5
  .line 11
    iget v0, p0, Lc/d/b;->d:I
    invoke-static { v3, v5, v0 }, Lc/d/b;->c([I[Ljava/lang/Object;I)V
  :L6
  .line 12
    iget v0, p0, Lc/d/b;->d:I
    if-ge v1, v0, :L7
  .line 13
    iget-object v3, p0, Lc/d/b;->b:[I
    add-int/lit8 v4, v1, 1
    sub-int/2addr v0, v1
    invoke-static { v3, v1, v3, v4, v0 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 14
    iget-object v0, p0, Lc/d/b;->c:[Ljava/lang/Object;
    iget v3, p0, Lc/d/b;->d:I
    sub-int/2addr v3, v1
    invoke-static { v0, v1, v0, v4, v3 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  :L7
  .line 15
    iget-object v0, p0, Lc/d/b;->b:[I
    aput v2, v0, v1
  .line 16
    iget-object v0, p0, Lc/d/b;->c:[Ljava/lang/Object;
    aput-object p1, v0, v1
  .line 17
    iget p1, p0, Lc/d/b;->d:I
    const/4 v0, 1
    add-int/2addr p1, v0
    iput p1, p0, Lc/d/b;->d:I
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/Collection<",
      "+TE;>;)Z"
    }
  .end annotation
  .registers 4
  .line 1
    iget v0, p0, Lc/d/b;->d:I
    invoke-interface { p1 }, Ljava/util/Collection;->size()I
    move-result v1
    add-int/2addr v0, v1
    invoke-virtual { p0, v0 }, Lc/d/b;->b(I)V
  .line 2
    invoke-interface { p1 }, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object p1
    const/4 v0, 0
  :L0
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
  .line 3
    invoke-virtual { p0, v1 }, Lc/d/b;->add(Ljava/lang/Object;)Z
    move-result v1
    or-int/2addr v0, v1
    goto :L0
  :L1
    return v0
.end method

.method public b(I)V
  .registers 6
  .line 1
    iget-object v0, p0, Lc/d/b;->b:[I
    array-length v1, v0
    if-ge v1, p1, :L1
  .line 2
    iget-object v1, p0, Lc/d/b;->c:[Ljava/lang/Object;
  .line 3
    invoke-direct { p0, p1 }, Lc/d/b;->a(I)V
  .line 4
    iget p1, p0, Lc/d/b;->d:I
    if-lez p1, :L0
  .line 5
    iget-object v2, p0, Lc/d/b;->b:[I
    const/4 v3, 0
    invoke-static { v0, v3, v2, v3, p1 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 6
    iget-object p1, p0, Lc/d/b;->c:[Ljava/lang/Object;
    iget v2, p0, Lc/d/b;->d:I
    invoke-static { v1, v3, p1, v3, v2 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  :L0
  .line 7
    iget p1, p0, Lc/d/b;->d:I
    invoke-static { v0, v1, p1 }, Lc/d/b;->c([I[Ljava/lang/Object;I)V
  :L1
    return-void
.end method

.method public clear()V
  .registers 4
  .line 1
    iget v0, p0, Lc/d/b;->d:I
    if-eqz v0, :L0
  .line 2
    iget-object v1, p0, Lc/d/b;->b:[I
    iget-object v2, p0, Lc/d/b;->c:[Ljava/lang/Object;
    invoke-static { v1, v2, v0 }, Lc/d/b;->c([I[Ljava/lang/Object;I)V
  .line 3
    sget-object v0, Lc/d/b;->f:[I
    iput-object v0, p0, Lc/d/b;->b:[I
  .line 4
    sget-object v0, Lc/d/b;->g:[Ljava/lang/Object;
    iput-object v0, p0, Lc/d/b;->c:[Ljava/lang/Object;
    const/4 v0, 0
  .line 5
    iput v0, p0, Lc/d/b;->d:I
  :L0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lc/d/b;->indexOf(Ljava/lang/Object;)I
    move-result p1
    if-ltz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/Collection<",
      "*>;)Z"
    }
  .end annotation
  .registers 3
  .line 1
    invoke-interface { p1 }, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L0
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L1
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
  .line 2
    invoke-virtual { p0, v0 }, Lc/d/b;->contains(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L0
    const/4 p1, 0
    return p1
  :L1
    const/4 p1, 1
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
  .catch Ljava/lang/NullPointerException; { :L2 .. :L3 } :L6
  .catch Ljava/lang/ClassCastException; { :L2 .. :L3 } :L6
  .registers 6
    const/4 v0, 1
    if-ne p0, p1, :L0
    return v0
  :L0
  .line 1
    instance-of v1, p1, Ljava/util/Set;
    const/4 v2, 0
    if-eqz v1, :L6
  .line 2
    check-cast p1, Ljava/util/Set;
  .line 3
    invoke-virtual { p0 }, Lc/d/b;->size()I
    move-result v1
    invoke-interface { p1 }, Ljava/util/Set;->size()I
    move-result v3
    if-eq v1, v3, :L1
    return v2
  :L1
    const/4 v1, 0
  :L2
  .line 4
    iget v3, p0, Lc/d/b;->d:I
    if-ge v1, v3, :L5
  .line 5
    invoke-virtual { p0, v1 }, Lc/d/b;->h(I)Ljava/lang/Object;
    move-result-object v3
  .line 6
    invoke-interface { p1, v3 }, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    move-result v3
  :L3
    if-nez v3, :L4
    return v2
  :L4
    add-int/lit8 v1, v1, 1
    goto :L2
  :L5
    return v0
  :L6
    return v2
.end method

.method public g(I)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(I)TE;"
    }
  .end annotation
  .registers 9
  .line 1
    iget-object v0, p0, Lc/d/b;->c:[Ljava/lang/Object;
    aget-object v1, v0, p1
  .line 2
    iget v2, p0, Lc/d/b;->d:I
    const/4 v3, 0
    const/4 v4, 1
    if-gt v2, v4, :L0
  .line 3
    iget-object p1, p0, Lc/d/b;->b:[I
    invoke-static { p1, v0, v2 }, Lc/d/b;->c([I[Ljava/lang/Object;I)V
  .line 4
    sget-object p1, Lc/d/b;->f:[I
    iput-object p1, p0, Lc/d/b;->b:[I
  .line 5
    sget-object p1, Lc/d/b;->g:[Ljava/lang/Object;
    iput-object p1, p0, Lc/d/b;->c:[Ljava/lang/Object;
  .line 6
    iput v3, p0, Lc/d/b;->d:I
    goto :L5
  :L0
  .line 7
    iget-object v0, p0, Lc/d/b;->b:[I
    array-length v5, v0
    const/16 v6, 8
    if-le v5, v6, :L3
    array-length v0, v0
    div-int/lit8 v0, v0, 3
    if-ge v2, v0, :L3
    if-le v2, v6, :L1
    shr-int/lit8 v0, v2, 1
    add-int v6, v2, v0
  :L1
  .line 8
    iget-object v0, p0, Lc/d/b;->b:[I
  .line 9
    iget-object v2, p0, Lc/d/b;->c:[Ljava/lang/Object;
  .line 10
    invoke-direct { p0, v6 }, Lc/d/b;->a(I)V
  .line 11
    iget v5, p0, Lc/d/b;->d:I
    sub-int/2addr v5, v4
    iput v5, p0, Lc/d/b;->d:I
    if-lez p1, :L2
  .line 12
    iget-object v4, p0, Lc/d/b;->b:[I
    invoke-static { v0, v3, v4, v3, p1 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 13
    iget-object v4, p0, Lc/d/b;->c:[Ljava/lang/Object;
    invoke-static { v2, v3, v4, v3, p1 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  :L2
  .line 14
    iget v3, p0, Lc/d/b;->d:I
    if-ge p1, v3, :L5
    add-int/lit8 v4, p1, 1
  .line 15
    iget-object v5, p0, Lc/d/b;->b:[I
    sub-int/2addr v3, p1
    invoke-static { v0, v4, v5, p1, v3 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 16
    iget-object v0, p0, Lc/d/b;->c:[Ljava/lang/Object;
    iget v3, p0, Lc/d/b;->d:I
    sub-int/2addr v3, p1
    invoke-static { v2, v4, v0, p1, v3 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    goto :L5
  :L3
  .line 17
    iget v0, p0, Lc/d/b;->d:I
    sub-int/2addr v0, v4
    iput v0, p0, Lc/d/b;->d:I
    if-ge p1, v0, :L4
  .line 18
    iget-object v2, p0, Lc/d/b;->b:[I
    add-int/lit8 v3, p1, 1
    sub-int/2addr v0, p1
    invoke-static { v2, v3, v2, p1, v0 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 19
    iget-object v0, p0, Lc/d/b;->c:[Ljava/lang/Object;
    iget v2, p0, Lc/d/b;->d:I
    sub-int/2addr v2, p1
    invoke-static { v0, v3, v0, p1, v2 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  :L4
  .line 20
    iget-object p1, p0, Lc/d/b;->c:[Ljava/lang/Object;
    iget v0, p0, Lc/d/b;->d:I
    const/4 v2, 0
    aput-object v2, p1, v0
  :L5
    return-object v1
.end method

.method public h(I)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(I)TE;"
    }
  .end annotation
  .registers 3
  .line 1
    iget-object v0, p0, Lc/d/b;->c:[Ljava/lang/Object;
    aget-object p1, v0, p1
    return-object p1
.end method

.method public hashCode()I
  .registers 6
  .line 1
    iget-object v0, p0, Lc/d/b;->b:[I
  .line 2
    iget v1, p0, Lc/d/b;->d:I
    const/4 v2, 0
    const/4 v3, 0
  :L0
    if-ge v2, v1, :L1
  .line 3
    aget v4, v0, v2
    add-int/2addr v3, v4
    add-int/lit8 v2, v2, 1
    goto :L0
  :L1
    return v3
.end method

.method public indexOf(Ljava/lang/Object;)I
  .registers 3
    if-nez p1, :L0
  .line 1
    invoke-direct { p0 }, Lc/d/b;->f()I
    move-result p1
    goto :L1
  :L0
    invoke-virtual { p1 }, Ljava/lang/Object;->hashCode()I
    move-result v0
    invoke-direct { p0, p1, v0 }, Lc/d/b;->e(Ljava/lang/Object;I)I
    move-result p1
  :L1
    return p1
.end method

.method public isEmpty()Z
  .registers 2
  .line 1
    iget v0, p0, Lc/d/b;->d:I
    if-gtz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/Iterator<",
      "TE;>;"
    }
  .end annotation
  .registers 2
  .line 1
    invoke-direct { p0 }, Lc/d/b;->d()Lc/d/f;
    move-result-object v0
    invoke-virtual { v0 }, Lc/d/f;->m()Ljava/util/Set;
    move-result-object v0
    invoke-interface { v0 }, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lc/d/b;->indexOf(Ljava/lang/Object;)I
    move-result p1
    if-ltz p1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Lc/d/b;->g(I)Ljava/lang/Object;
    const/4 p1, 1
    return p1
  :L0
    const/4 p1, 0
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/Collection<",
      "*>;)Z"
    }
  .end annotation
  .registers 4
  .line 1
    invoke-interface { p1 }, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object p1
    const/4 v0, 0
  :L0
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
  .line 2
    invoke-virtual { p0, v1 }, Lc/d/b;->remove(Ljava/lang/Object;)Z
    move-result v1
    or-int/2addr v0, v1
    goto :L0
  :L1
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/Collection<",
      "*>;)Z"
    }
  .end annotation
  .registers 6
  .line 1
    iget v0, p0, Lc/d/b;->d:I
    const/4 v1, 1
    sub-int/2addr v0, v1
    const/4 v2, 0
  :L0
    if-ltz v0, :L2
  .line 2
    iget-object v3, p0, Lc/d/b;->c:[Ljava/lang/Object;
    aget-object v3, v3, v0
    invoke-interface { p1, v3 }, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    move-result v3
    if-nez v3, :L1
  .line 3
    invoke-virtual { p0, v0 }, Lc/d/b;->g(I)Ljava/lang/Object;
    const/4 v2, 1
  :L1
    add-int/lit8 v0, v0, -1
    goto :L0
  :L2
    return v2
.end method

.method public size()I
  .registers 2
  .line 1
    iget v0, p0, Lc/d/b;->d:I
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
  .registers 5
  .line 1
    iget v0, p0, Lc/d/b;->d:I
    new-array v1, v0, [Ljava/lang/Object;
  .line 2
    iget-object v2, p0, Lc/d/b;->c:[Ljava/lang/Object;
    const/4 v3, 0
    invoke-static { v2, v3, v1, v3, v0 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Ljava/lang/Object;",
      ">([TT;)[TT;"
    }
  .end annotation
  .registers 5
  .line 3
    array-length v0, p1
    iget v1, p0, Lc/d/b;->d:I
    if-ge v0, v1, :L0
  .line 4
    invoke-virtual { p1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
    move-result-object p1
    iget v0, p0, Lc/d/b;->d:I
    invoke-static { p1, v0 }, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, [Ljava/lang/Object;
  :L0
  .line 5
    iget-object v0, p0, Lc/d/b;->c:[Ljava/lang/Object;
    iget v1, p0, Lc/d/b;->d:I
    const/4 v2, 0
    invoke-static { v0, v2, p1, v2, v1 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 6
    array-length v0, p1
    iget v1, p0, Lc/d/b;->d:I
    if-le v0, v1, :L1
    const/4 v0, 0
  .line 7
    aput-object v0, p1, v1
  :L1
    return-object p1
.end method

.method public toString()Ljava/lang/String;
  .registers 4
  .line 1
    invoke-virtual { p0 }, Lc/d/b;->isEmpty()Z
    move-result v0
    if-eqz v0, :L0
    const-string v0, "{}"
    return-object v0
  :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    iget v1, p0, Lc/d/b;->d:I
    mul-int/lit8 v1, v1, 14
    invoke-direct { v0, v1 }, Ljava/lang/StringBuilder;-><init>(I)V
    const/16 v1, 123
  .line 3
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    const/4 v1, 0
  :L1
  .line 4
    iget v2, p0, Lc/d/b;->d:I
    if-ge v1, v2, :L5
    if-lez v1, :L2
    const-string v2, ", "
  .line 5
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L2
  .line 6
    invoke-virtual { p0, v1 }, Lc/d/b;->h(I)Ljava/lang/Object;
    move-result-object v2
    if-eq v2, p0, :L3
  .line 7
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    goto :L4
  :L3
    const-string v2, "(this Set)"
  .line 8
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L4
    add-int/lit8 v1, v1, 1
    goto :L1
  :L5
    const/16 v1, 125
  .line 9
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  .line 10
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
