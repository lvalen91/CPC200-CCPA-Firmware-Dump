.class final Ld/c/b/e/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static a(Ld/c/b/e/c/b;)I
  .registers 3
    const/4 v0, 1
  .line 1
    invoke-static { p0, v0 }, Ld/c/b/e/c/d;->b(Ld/c/b/e/c/b;Z)I
    move-result v0
    const/4 v1, 0
    invoke-static { p0, v1 }, Ld/c/b/e/c/d;->b(Ld/c/b/e/c/b;Z)I
    move-result p0
    add-int/2addr v0, p0
    return v0
.end method

.method private static b(Ld/c/b/e/c/b;Z)I
  .registers 12
    if-eqz p1, :L0
  .line 1
    invoke-virtual { p0 }, Ld/c/b/e/c/b;->d()I
    move-result v0
    goto :L1
  :L0
    invoke-virtual { p0 }, Ld/c/b/e/c/b;->e()I
    move-result v0
  :L1
    if-eqz p1, :L2
  .line 2
    invoke-virtual { p0 }, Ld/c/b/e/c/b;->e()I
    move-result v1
    goto :L3
  :L2
    invoke-virtual { p0 }, Ld/c/b/e/c/b;->d()I
    move-result v1
  :L3
  .line 3
    invoke-virtual { p0 }, Ld/c/b/e/c/b;->c()[[B
    move-result-object p0
    const/4 v2, 0
    const/4 v3, 0
    const/4 v4, 0
  :L4
    if-ge v3, v0, :L13
    const/4 v5, -1
    const/4 v6, 0
    const/4 v7, 0
  :L5
    const/4 v8, 5
    if-ge v6, v1, :L11
    if-eqz p1, :L6
  .line 4
    aget-object v9, p0, v3
    aget-byte v9, v9, v6
    goto :L7
  :L6
    aget-object v9, p0, v6
    aget-byte v9, v9, v3
  :L7
    if-ne v9, v5, :L8
    add-int/lit8 v7, v7, 1
    goto :L10
  :L8
    if-lt v7, v8, :L9
    add-int/lit8 v7, v7, -5
    add-int/lit8 v7, v7, 3
    add-int/2addr v4, v7
  :L9
    const/4 v5, 1
    move v5, v9
    const/4 v7, 1
  :L10
    add-int/lit8 v6, v6, 1
    goto :L5
  :L11
    if-lt v7, v8, :L12
    add-int/lit8 v7, v7, -5
    add-int/lit8 v7, v7, 3
    add-int/2addr v4, v7
  :L12
    add-int/lit8 v3, v3, 1
    goto :L4
  :L13
    return v4
.end method

.method static c(Ld/c/b/e/c/b;)I
  .registers 11
  .line 1
    invoke-virtual { p0 }, Ld/c/b/e/c/b;->c()[[B
    move-result-object v0
  .line 2
    invoke-virtual { p0 }, Ld/c/b/e/c/b;->e()I
    move-result v1
  .line 3
    invoke-virtual { p0 }, Ld/c/b/e/c/b;->d()I
    move-result p0
    const/4 v2, 0
    const/4 v3, 0
    const/4 v4, 0
  :L0
    add-int/lit8 v5, p0, -1
    if-ge v3, v5, :L4
    const/4 v5, 0
  :L1
    add-int/lit8 v6, v1, -1
    if-ge v5, v6, :L3
  .line 4
    aget-object v6, v0, v3
    aget-byte v6, v6, v5
  .line 5
    aget-object v7, v0, v3
    add-int/lit8 v8, v5, 1
    aget-byte v7, v7, v8
    if-ne v6, v7, :L2
    add-int/lit8 v7, v3, 1
    aget-object v9, v0, v7
    aget-byte v5, v9, v5
    if-ne v6, v5, :L2
    aget-object v5, v0, v7
    aget-byte v5, v5, v8
    if-ne v6, v5, :L2
    add-int/lit8 v4, v4, 1
  :L2
    move v5, v8
    goto :L1
  :L3
    add-int/lit8 v3, v3, 1
    goto :L0
  :L4
    mul-int/lit8 v4, v4, 3
    return v4
.end method

.method static d(Ld/c/b/e/c/b;)I
  .registers 11
  .line 1
    invoke-virtual { p0 }, Ld/c/b/e/c/b;->c()[[B
    move-result-object v0
  .line 2
    invoke-virtual { p0 }, Ld/c/b/e/c/b;->e()I
    move-result v1
  .line 3
    invoke-virtual { p0 }, Ld/c/b/e/c/b;->d()I
    move-result p0
    const/4 v2, 0
    const/4 v3, 0
    const/4 v4, 0
  :L0
    if-ge v3, p0, :L7
    const/4 v5, 0
  :L1
    if-ge v5, v1, :L6
  .line 4
    aget-object v6, v0, v3
    add-int/lit8 v7, v5, 6
    const/4 v8, 1
    if-ge v7, v1, :L3
  .line 5
    aget-byte v9, v6, v5
    if-ne v9, v8, :L3
    add-int/lit8 v9, v5, 1
    aget-byte v9, v6, v9
    if-nez v9, :L3
    add-int/lit8 v9, v5, 2
    aget-byte v9, v6, v9
    if-ne v9, v8, :L3
    add-int/lit8 v9, v5, 3
    aget-byte v9, v6, v9
    if-ne v9, v8, :L3
    add-int/lit8 v9, v5, 4
    aget-byte v9, v6, v9
    if-ne v9, v8, :L3
    add-int/lit8 v9, v5, 5
    aget-byte v9, v6, v9
    if-nez v9, :L3
    aget-byte v7, v6, v7
    if-ne v7, v8, :L3
    add-int/lit8 v7, v5, -4
  .line 6
    invoke-static { v6, v7, v5 }, Ld/c/b/e/c/d;->g([BII)Z
    move-result v7
    if-nez v7, :L2
    add-int/lit8 v7, v5, 7
    add-int/lit8 v9, v5, 11
    invoke-static { v6, v7, v9 }, Ld/c/b/e/c/d;->g([BII)Z
    move-result v6
    if-eqz v6, :L3
  :L2
    add-int/lit8 v4, v4, 1
  :L3
    add-int/lit8 v6, v3, 6
    if-ge v6, p0, :L5
  .line 7
    aget-object v7, v0, v3
    aget-byte v7, v7, v5
    if-ne v7, v8, :L5
    add-int/lit8 v7, v3, 1
    aget-object v7, v0, v7
    aget-byte v7, v7, v5
    if-nez v7, :L5
    add-int/lit8 v7, v3, 2
    aget-object v7, v0, v7
    aget-byte v7, v7, v5
    if-ne v7, v8, :L5
    add-int/lit8 v7, v3, 3
    aget-object v7, v0, v7
    aget-byte v7, v7, v5
    if-ne v7, v8, :L5
    add-int/lit8 v7, v3, 4
    aget-object v7, v0, v7
    aget-byte v7, v7, v5
    if-ne v7, v8, :L5
    add-int/lit8 v7, v3, 5
    aget-object v7, v0, v7
    aget-byte v7, v7, v5
    if-nez v7, :L5
    aget-object v6, v0, v6
    aget-byte v6, v6, v5
    if-ne v6, v8, :L5
    add-int/lit8 v6, v3, -4
  .line 8
    invoke-static { v0, v5, v6, v3 }, Ld/c/b/e/c/d;->h([[BIII)Z
    move-result v6
    if-nez v6, :L4
    add-int/lit8 v6, v3, 7
    add-int/lit8 v7, v3, 11
    invoke-static { v0, v5, v6, v7 }, Ld/c/b/e/c/d;->h([[BIII)Z
    move-result v6
    if-eqz v6, :L5
  :L4
    add-int/lit8 v4, v4, 1
  :L5
    add-int/lit8 v5, v5, 1
    goto/16 :L1
  :L6
    add-int/lit8 v3, v3, 1
    goto/16 :L0
  :L7
    mul-int/lit8 v4, v4, 40
    return v4
.end method

.method static e(Ld/c/b/e/c/b;)I
  .registers 11
  .line 1
    invoke-virtual { p0 }, Ld/c/b/e/c/b;->c()[[B
    move-result-object v0
  .line 2
    invoke-virtual { p0 }, Ld/c/b/e/c/b;->e()I
    move-result v1
  .line 3
    invoke-virtual { p0 }, Ld/c/b/e/c/b;->d()I
    move-result v2
    const/4 v3, 0
    const/4 v4, 0
    const/4 v5, 0
  :L0
    const/4 v6, 1
    if-ge v4, v2, :L4
  .line 4
    aget-object v7, v0, v4
    const/4 v8, 0
  :L1
    if-ge v8, v1, :L3
  .line 5
    aget-byte v9, v7, v8
    if-ne v9, v6, :L2
    add-int/lit8 v5, v5, 1
  :L2
    add-int/lit8 v8, v8, 1
    goto :L1
  :L3
    add-int/lit8 v4, v4, 1
    goto :L0
  :L4
  .line 6
    invoke-virtual { p0 }, Ld/c/b/e/c/b;->d()I
    move-result v0
    invoke-virtual { p0 }, Ld/c/b/e/c/b;->e()I
    move-result p0
    mul-int v0, v0, p0
    shl-int/lit8 p0, v5, 1
    sub-int/2addr p0, v0
  .line 7
    invoke-static { p0 }, Ljava/lang/Math;->abs(I)I
    move-result p0
    mul-int/lit8 p0, p0, 10
    div-int/2addr p0, v0
    mul-int/lit8 p0, p0, 10
    return p0
.end method

.method static f(III)Z
  .registers 4
    const/4 v0, 1
    packed-switch p0, :L11
  .line 1
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance p2, Ljava/lang/StringBuilder;
    const-string v0, "Invalid mask pattern: "
    invoke-direct { p2, v0 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { p2, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-direct { p1, p0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L0
    mul-int p0, p2, p1
  .line 2
    rem-int/lit8 p0, p0, 3
    add-int/2addr p2, p1
    and-int/lit8 p1, p2, 1
    add-int/2addr p0, p1
    goto :L2
  :L1
    mul-int p2, p2, p1
    and-int/lit8 p0, p2, 1
  .line 3
    rem-int/lit8 p2, p2, 3
    add-int/2addr p0, p2
  :L2
    and-int/2addr p0, v0
    goto :L9
  :L3
    mul-int p2, p2, p1
    and-int/lit8 p0, p2, 1
  .line 4
    rem-int/lit8 p2, p2, 3
    add-int/2addr p0, p2
    goto :L9
  :L4
  .line 5
    div-int/lit8 p2, p2, 2
    div-int/lit8 p1, p1, 3
    goto :L7
  :L5
    add-int/2addr p2, p1
  .line 6
    rem-int/lit8 p0, p2, 3
    goto :L9
  :L6
  .line 7
    rem-int/lit8 p0, p1, 3
    goto :L9
  :L7
    add-int/2addr p2, p1
  :L8
    and-int/lit8 p0, p2, 1
  :L9
    if-nez p0, :L10
    return v0
  :L10
    const/4 p0, 0
    return p0
  :L11
  .packed-switch 0
    :L7
    :L8
    :L6
    :L5
    :L4
    :L3
    :L1
    :L0
  .end packed-switch
.end method

.method private static g([BII)Z
  .registers 6
    const/4 v0, 0
  .line 1
    invoke-static { p1, v0 }, Ljava/lang/Math;->max(II)I
    move-result p1
  .line 2
    array-length v1, p0
    invoke-static { p2, v1 }, Ljava/lang/Math;->min(II)I
    move-result p2
  :L0
    const/4 v1, 1
    if-ge p1, p2, :L2
  .line 3
    aget-byte v2, p0, p1
    if-ne v2, v1, :L1
    return v0
  :L1
    add-int/lit8 p1, p1, 1
    goto :L0
  :L2
    return v1
.end method

.method private static h([[BIII)Z
  .registers 7
    const/4 v0, 0
  .line 1
    invoke-static { p2, v0 }, Ljava/lang/Math;->max(II)I
    move-result p2
  .line 2
    array-length v1, p0
    invoke-static { p3, v1 }, Ljava/lang/Math;->min(II)I
    move-result p3
  :L0
    const/4 v1, 1
    if-ge p2, p3, :L2
  .line 3
    aget-object v2, p0, p2
    aget-byte v2, v2, p1
    if-ne v2, v1, :L1
    return v0
  :L1
    add-int/lit8 p2, p2, 1
    goto :L0
  :L2
    return v1
.end method
