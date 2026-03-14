.class public final Ld/c/b/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static b(Ld/c/b/e/c/f;III)Ld/c/b/d/b;
  .registers 13
  .line 1
    invoke-virtual { p0 }, Ld/c/b/e/c/f;->a()Ld/c/b/e/c/b;
    move-result-object p0
    if-eqz p0, :L5
  .line 2
    invoke-virtual { p0 }, Ld/c/b/e/c/b;->e()I
    move-result v0
  .line 3
    invoke-virtual { p0 }, Ld/c/b/e/c/b;->d()I
    move-result v1
    const/4 v2, 1
    shl-int/2addr p3, v2
    add-int v3, v0, p3
    add-int/2addr p3, v1
  .line 4
    invoke-static { p1, v3 }, Ljava/lang/Math;->max(II)I
    move-result p1
  .line 5
    invoke-static { p2, p3 }, Ljava/lang/Math;->max(II)I
    move-result p2
  .line 6
    div-int v3, p1, v3
    div-int p3, p2, p3
    invoke-static { v3, p3 }, Ljava/lang/Math;->min(II)I
    move-result p3
    mul-int v3, v0, p3
    sub-int v3, p1, v3
  .line 7
    div-int/lit8 v3, v3, 2
    mul-int v4, v1, p3
    sub-int v4, p2, v4
  .line 8
    div-int/lit8 v4, v4, 2
  .line 9
    new-instance v5, Ld/c/b/d/b;
    invoke-direct { v5, p1, p2 }, Ld/c/b/d/b;-><init>(II)V
    const/4 p1, 0
    const/4 p2, 0
  :L0
    if-ge p2, v1, :L4
    move v7, v3
    const/4 v6, 0
  :L1
    if-ge v6, v0, :L3
  .line 10
    invoke-virtual { p0, v6, p2 }, Ld/c/b/e/c/b;->b(II)B
    move-result v8
    if-ne v8, v2, :L2
  .line 11
    invoke-virtual { v5, v7, v4, p3, p3 }, Ld/c/b/d/b;->d(IIII)V
  :L2
    add-int/lit8 v6, v6, 1
    add-int/2addr v7, p3
    goto :L1
  :L3
    add-int/lit8 p2, p2, 1
    add-int/2addr v4, p3
    goto :L0
  :L4
    return-object v5
  :L5
  .line 12
    new-instance p0, Ljava/lang/IllegalStateException;
    invoke-direct { p0 }, Ljava/lang/IllegalStateException;-><init>()V
    goto :L7
  :L6
    throw p0
  :L7
    goto :L6
.end method

.method public a(Ljava/lang/String;Ld/c/b/a;IILjava/util/Map;)Ld/c/b/d/b;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/String;",
      "Ld/c/b/a;",
      "II",
      "Ljava/util/Map<",
      "Ld/c/b/b;",
      "*>;)",
      "Ld/c/b/d/b;"
    }
  .end annotation
  .registers 8
  .line 1
    invoke-virtual { p1 }, Ljava/lang/String;->isEmpty()Z
    move-result v0
    if-nez v0, :L4
  .line 2
    sget-object v0, Ld/c/b/a;->m:Ld/c/b/a;
    if-ne p2, v0, :L3
    if-ltz p3, :L2
    if-ltz p4, :L2
  .line 3
    sget-object p2, Ld/c/b/e/b/a;->c:Ld/c/b/e/b/a;
    const/4 v0, 4
    if-eqz p5, :L1
  .line 4
    sget-object v1, Ld/c/b/b;->b:Ld/c/b/b;
    invoke-interface { p5, v1 }, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L0
  .line 5
    sget-object p2, Ld/c/b/b;->b:Ld/c/b/b;
    invoke-interface { p5, p2 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p2
    invoke-virtual { p2 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-static { p2 }, Ld/c/b/e/b/a;->valueOf(Ljava/lang/String;)Ld/c/b/e/b/a;
    move-result-object p2
  :L0
  .line 6
    sget-object v1, Ld/c/b/b;->g:Ld/c/b/b;
    invoke-interface { p5, v1 }, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L1
  .line 7
    sget-object v0, Ld/c/b/b;->g:Ld/c/b/b;
    invoke-interface { p5, v0 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v0
  :L1
  .line 8
    invoke-static { p1, p2, p5 }, Ld/c/b/e/c/c;->n(Ljava/lang/String;Ld/c/b/e/b/a;Ljava/util/Map;)Ld/c/b/e/c/f;
    move-result-object p1
  .line 9
    invoke-static { p1, p3, p4, v0 }, Ld/c/b/e/a;->b(Ld/c/b/e/c/f;III)Ld/c/b/d/b;
    move-result-object p1
    return-object p1
  :L2
  .line 10
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance p2, Ljava/lang/StringBuilder;
    const-string p5, "Requested dimensions are too small: "
    invoke-direct { p2, p5 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const/16 p3, 120
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L3
  .line 11
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance p3, Ljava/lang/StringBuilder;
    const-string p4, "Can only encode QR_CODE, but got "
    invoke-direct { p3, p4 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { p3, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L4
  .line 12
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "Found empty contents"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method
