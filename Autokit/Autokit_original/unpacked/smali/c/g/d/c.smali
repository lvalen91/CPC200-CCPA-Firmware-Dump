.class public Lc/g/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lc/g/d/c$b;,
    Lc/g/d/c$a;
  }
.end annotation

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static a(Ljava/util/ArrayList;C[F)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/ArrayList<",
      "Lc/g/d/c$b;",
      ">;C[F)V"
    }
  .end annotation
  .registers 4
  .line 1
    new-instance v0, Lc/g/d/c$b;
    invoke-direct { v0, p1, p2 }, Lc/g/d/c$b;-><init>(C[F)V
    invoke-virtual { p0, v0 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    return-void
.end method

.method public static b([Lc/g/d/c$b;[Lc/g/d/c$b;)Z
  .registers 6
    const/4 v0, 0
    if-eqz p0, :L6
    if-nez p1, :L0
    goto :L6
  :L0
  .line 1
    array-length v1, p0
    array-length v2, p1
    if-eq v1, v2, :L1
    return v0
  :L1
    const/4 v1, 0
  :L2
  .line 2
    array-length v2, p0
    if-ge v1, v2, :L5
  .line 3
    aget-object v2, p0, v1
    iget-char v2, v2, Lc/g/d/c$b;->a:C
    aget-object v3, p1, v1
    iget-char v3, v3, Lc/g/d/c$b;->a:C
    if-ne v2, v3, :L4
    aget-object v2, p0, v1
    iget-object v2, v2, Lc/g/d/c$b;->b:[F
    array-length v2, v2
    aget-object v3, p1, v1
    iget-object v3, v3, Lc/g/d/c$b;->b:[F
    array-length v3, v3
    if-eq v2, v3, :L3
    goto :L4
  :L3
    add-int/lit8 v1, v1, 1
    goto :L2
  :L4
    return v0
  :L5
    const/4 p0, 1
    return p0
  :L6
    return v0
.end method

.method static c([FII)[F
  .registers 5
    if-gt p1, p2, :L1
  .line 1
    array-length v0, p0
    if-ltz p1, :L0
    if-gt p1, v0, :L0
    sub-int/2addr p2, p1
    sub-int/2addr v0, p1
  .line 2
    invoke-static { p2, v0 }, Ljava/lang/Math;->min(II)I
    move-result v0
  .line 3
    new-array p2, p2, [F
    const/4 v1, 0
  .line 4
    invoke-static { p0, p1, p2, v1, v0 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    return-object p2
  :L0
  .line 5
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-direct { p0 }, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V
    throw p0
  :L1
  .line 6
    new-instance p0, Ljava/lang/IllegalArgumentException;
    invoke-direct { p0 }, Ljava/lang/IllegalArgumentException;-><init>()V
    throw p0
.end method

.method public static d(Ljava/lang/String;)[Lc/g/d/c$b;
  .registers 8
    if-nez p0, :L0
    const/4 p0, 0
    return-object p0
  :L0
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    const/4 v1, 1
    const/4 v2, 0
    const/4 v3, 1
    const/4 v4, 0
  :L1
  .line 2
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v5
    if-ge v3, v5, :L3
  .line 3
    invoke-static { p0, v3 }, Lc/g/d/c;->i(Ljava/lang/String;I)I
    move-result v3
  .line 4
    invoke-virtual { p0, v4, v3 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v4
  .line 5
    invoke-virtual { v4 }, Ljava/lang/String;->length()I
    move-result v5
    if-lez v5, :L2
  .line 6
    invoke-static { v4 }, Lc/g/d/c;->h(Ljava/lang/String;)[F
    move-result-object v5
  .line 7
    invoke-virtual { v4, v2 }, Ljava/lang/String;->charAt(I)C
    move-result v4
    invoke-static { v0, v4, v5 }, Lc/g/d/c;->a(Ljava/util/ArrayList;C[F)V
  :L2
    add-int/lit8 v4, v3, 1
    move v6, v4
    move v4, v3
    move v3, v6
    goto :L1
  :L3
    sub-int/2addr v3, v4
    if-ne v3, v1, :L4
  .line 8
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v1
    if-ge v4, v1, :L4
  .line 9
    invoke-virtual { p0, v4 }, Ljava/lang/String;->charAt(I)C
    move-result p0
    new-array v1, v2, [F
    invoke-static { v0, p0, v1 }, Lc/g/d/c;->a(Ljava/util/ArrayList;C[F)V
  :L4
  .line 10
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result p0
    new-array p0, p0, [Lc/g/d/c$b;
    invoke-virtual { v0, p0 }, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    move-result-object p0
    check-cast p0, [Lc/g/d/c$b;
    return-object p0
.end method

.method public static e(Ljava/lang/String;)Landroid/graphics/Path;
  .catch Ljava/lang/RuntimeException; { :L0 .. :L1 } :L2
  .registers 5
  .line 1
    new-instance v0, Landroid/graphics/Path;
    invoke-direct { v0 }, Landroid/graphics/Path;-><init>()V
  .line 2
    invoke-static { p0 }, Lc/g/d/c;->d(Ljava/lang/String;)[Lc/g/d/c$b;
    move-result-object v1
    if-eqz v1, :L3
  :L0
  .line 3
    invoke-static { v1, v0 }, Lc/g/d/c$b;->e([Lc/g/d/c$b;Landroid/graphics/Path;)V
  :L1
    return-object v0
  :L2
    move-exception v0
  .line 4
    new-instance v1, Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Error in parsing "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-direct { v1, p0, v0 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw v1
  :L3
    const/4 p0, 0
    return-object p0
.end method

.method public static f([Lc/g/d/c$b;)[Lc/g/d/c$b;
  .registers 5
    if-nez p0, :L0
    const/4 p0, 0
    return-object p0
  :L0
  .line 1
    array-length v0, p0
    new-array v0, v0, [Lc/g/d/c$b;
    const/4 v1, 0
  :L1
  .line 2
    array-length v2, p0
    if-ge v1, v2, :L2
  .line 3
    new-instance v2, Lc/g/d/c$b;
    aget-object v3, p0, v1
    invoke-direct { v2, v3 }, Lc/g/d/c$b;-><init>(Lc/g/d/c$b;)V
    aput-object v2, v0, v1
    add-int/lit8 v1, v1, 1
    goto :L1
  :L2
    return-object v0
.end method

.method private static g(Ljava/lang/String;ILc/g/d/c$a;)V
  .registers 11
    const/4 v0, 0
  .line 1
    iput-boolean v0, p2, Lc/g/d/c$a;->b:Z
    move v1, p1
    const/4 v2, 0
    const/4 v3, 0
    const/4 v4, 0
  :L0
  .line 2
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v5
    if-ge v1, v5, :L9
  .line 3
    invoke-virtual { p0, v1 }, Ljava/lang/String;->charAt(I)C
    move-result v5
    const/16 v6, 32
    const/4 v7, 1
    if-eq v5, v6, :L6
    const/16 v6, 69
    if-eq v5, v6, :L5
    const/16 v6, 101
    if-eq v5, v6, :L5
    packed-switch v5, :L10
    goto :L4
  :L1
    if-nez v3, :L2
    const/4 v2, 0
    const/4 v3, 1
    goto :L7
  :L2
  .line 4
    iput-boolean v7, p2, Lc/g/d/c$a;->b:Z
    goto :L6
  :L3
    if-eq v1, p1, :L4
    if-nez v2, :L4
  .line 5
    iput-boolean v7, p2, Lc/g/d/c$a;->b:Z
    goto :L6
  :L4
    const/4 v2, 0
    goto :L7
  :L5
    const/4 v2, 1
    goto :L7
  :L6
    const/4 v2, 0
    const/4 v4, 1
  :L7
    if-eqz v4, :L8
    goto :L9
  :L8
    add-int/lit8 v1, v1, 1
    goto :L0
  :L9
  .line 6
    iput v1, p2, Lc/g/d/c$a;->a:I
    return-void
  :L10
  .packed-switch 44
    :L6
    :L3
    :L1
  .end packed-switch
.end method

.method private static h(Ljava/lang/String;)[F
  .catch Ljava/lang/NumberFormatException; { :L0 .. :L5 } :L6
  .registers 9
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, v0 }, Ljava/lang/String;->charAt(I)C
    move-result v1
    const/16 v2, 122
    if-eq v1, v2, :L7
    invoke-virtual { p0, v0 }, Ljava/lang/String;->charAt(I)C
    move-result v1
    const/16 v2, 90
    if-ne v1, v2, :L0
    goto :L7
  :L0
  .line 2
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v1
    new-array v1, v1, [F
  .line 3
    new-instance v2, Lc/g/d/c$a;
    invoke-direct { v2 }, Lc/g/d/c$a;-><init>()V
  .line 4
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v3
    const/4 v4, 1
    const/4 v5, 0
  :L1
    if-ge v4, v3, :L4
  .line 5
    invoke-static { p0, v4, v2 }, Lc/g/d/c;->g(Ljava/lang/String;ILc/g/d/c$a;)V
  .line 6
    iget v6, v2, Lc/g/d/c$a;->a:I
    if-ge v4, v6, :L2
    add-int/lit8 v7, v5, 1
  .line 7
    invoke-virtual { p0, v4, v6 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v4
  .line 8
    invoke-static { v4 }, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    move-result v4
    aput v4, v1, v5
    move v5, v7
  :L2
  .line 9
    iget-boolean v4, v2, Lc/g/d/c$a;->b:Z
    if-eqz v4, :L3
    move v4, v6
    goto :L1
  :L3
    add-int/lit8 v4, v6, 1
    goto :L1
  :L4
  .line 10
    invoke-static { v1, v0, v5 }, Lc/g/d/c;->c([FII)[F
    move-result-object p0
  :L5
    return-object p0
  :L6
    move-exception v0
  .line 11
    new-instance v1, Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "error in parsing \""
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p0, "\""
    invoke-virtual { v2, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-direct { v1, p0, v0 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw v1
  :L7
    new-array p0, v0, [F
    return-object p0
.end method

.method private static i(Ljava/lang/String;I)I
  .registers 5
  :L0
  .line 1
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v0
    if-ge p1, v0, :L3
  .line 2
    invoke-virtual { p0, p1 }, Ljava/lang/String;->charAt(I)C
    move-result v0
    add-int/lit8 v1, v0, -65
    add-int/lit8 v2, v0, -90
    mul-int v1, v1, v2
    if-lez v1, :L1
    add-int/lit8 v1, v0, -97
    add-int/lit8 v2, v0, -122
    mul-int v1, v1, v2
    if-gtz v1, :L2
  :L1
    const/16 v1, 101
    if-eq v0, v1, :L2
    const/16 v1, 69
    if-eq v0, v1, :L2
    return p1
  :L2
    add-int/lit8 p1, p1, 1
    goto :L0
  :L3
    return p1
.end method

.method public static j([Lc/g/d/c$b;[Lc/g/d/c$b;)V
  .registers 7
    const/4 v0, 0
    const/4 v1, 0
  :L0
  .line 1
    array-length v2, p1
    if-ge v1, v2, :L3
  .line 2
    aget-object v2, p0, v1
    aget-object v3, p1, v1
    iget-char v3, v3, Lc/g/d/c$b;->a:C
    iput-char v3, v2, Lc/g/d/c$b;->a:C
    const/4 v2, 0
  :L1
  .line 3
    aget-object v3, p1, v1
    iget-object v3, v3, Lc/g/d/c$b;->b:[F
    array-length v3, v3
    if-ge v2, v3, :L2
  .line 4
    aget-object v3, p0, v1
    iget-object v3, v3, Lc/g/d/c$b;->b:[F
    aget-object v4, p1, v1
    iget-object v4, v4, Lc/g/d/c$b;->b:[F
    aget v4, v4, v2
    aput v4, v3, v2
    add-int/lit8 v2, v2, 1
    goto :L1
  :L2
    add-int/lit8 v1, v1, 1
    goto :L0
  :L3
    return-void
.end method
