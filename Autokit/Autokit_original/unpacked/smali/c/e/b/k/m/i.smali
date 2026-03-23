.class public Lc/e/b/k/m/i;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static a(Lc/e/b/k/e;ILjava/util/ArrayList;Lc/e/b/k/m/o;)Lc/e/b/k/m/o;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lc/e/b/k/e;",
      "I",
      "Ljava/util/ArrayList<",
      "Lc/e/b/k/m/o;",
      ">;",
      "Lc/e/b/k/m/o;",
      ")",
      "Lc/e/b/k/m/o;"
    }
  .end annotation
  .registers 10
    if-nez p1, :L0
  .line 1
    iget v0, p0, Lc/e/b/k/e;->m0:I
    goto :L1
  :L0
  .line 2
    iget v0, p0, Lc/e/b/k/e;->n0:I
  :L1
    const/4 v1, 0
    const/4 v2, -1
    if-eq v0, v2, :L6
    if-eqz p3, :L2
  .line 3
    iget v3, p3, Lc/e/b/k/m/o;->b:I
    if-eq v0, v3, :L6
  :L2
    const/4 v3, 0
  :L3
  .line 4
    invoke-virtual { p2 }, Ljava/util/ArrayList;->size()I
    move-result v4
    if-ge v3, v4, :L7
  .line 5
    invoke-virtual { p2, v3 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lc/e/b/k/m/o;
  .line 6
    invoke-virtual { v4 }, Lc/e/b/k/m/o;->c()I
    move-result v5
    if-ne v5, v0, :L5
    if-eqz p3, :L4
  .line 7
    invoke-virtual { p3, p1, v4 }, Lc/e/b/k/m/o;->g(ILc/e/b/k/m/o;)V
  .line 8
    invoke-virtual { p2, p3 }, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
  :L4
    move-object p3, v4
    goto :L7
  :L5
    add-int/lit8 v3, v3, 1
    goto :L3
  :L6
    if-eq v0, v2, :L7
    return-object p3
  :L7
    if-nez p3, :L12
  .line 9
    instance-of v0, p0, Lc/e/b/k/i;
    if-eqz v0, :L10
  .line 10
    move-object v0, p0
    check-cast v0, Lc/e/b/k/i;
  .line 11
    invoke-virtual { v0, p1 }, Lc/e/b/k/i;->b1(I)I
    move-result v0
    if-eq v0, v2, :L10
    const/4 v2, 0
  :L8
  .line 12
    invoke-virtual { p2 }, Ljava/util/ArrayList;->size()I
    move-result v3
    if-ge v2, v3, :L10
  .line 13
    invoke-virtual { p2, v2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lc/e/b/k/m/o;
  .line 14
    invoke-virtual { v3 }, Lc/e/b/k/m/o;->c()I
    move-result v4
    if-ne v4, v0, :L9
    move-object p3, v3
    goto :L10
  :L9
    add-int/lit8 v2, v2, 1
    goto :L8
  :L10
    if-nez p3, :L11
  .line 15
    new-instance p3, Lc/e/b/k/m/o;
    invoke-direct { p3, p1 }, Lc/e/b/k/m/o;-><init>(I)V
  :L11
  .line 16
    invoke-virtual { p2, p3 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L12
  .line 17
    invoke-virtual { p3, p0 }, Lc/e/b/k/m/o;->a(Lc/e/b/k/e;)Z
    move-result v0
    if-eqz v0, :L17
  .line 18
    instance-of v0, p0, Lc/e/b/k/g;
    if-eqz v0, :L14
  .line 19
    move-object v0, p0
    check-cast v0, Lc/e/b/k/g;
  .line 20
    invoke-virtual { v0 }, Lc/e/b/k/g;->a1()Lc/e/b/k/d;
    move-result-object v2
    invoke-virtual { v0 }, Lc/e/b/k/g;->b1()I
    move-result v0
    if-nez v0, :L13
    const/4 v1, 1
  :L13
    invoke-virtual { v2, v1, p2, p3 }, Lc/e/b/k/d;->b(ILjava/util/ArrayList;Lc/e/b/k/m/o;)V
  :L14
    if-nez p1, :L15
  .line 21
    invoke-virtual { p3 }, Lc/e/b/k/m/o;->c()I
    move-result v0
    iput v0, p0, Lc/e/b/k/e;->m0:I
  .line 22
    iget-object v0, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    invoke-virtual { v0, p1, p2, p3 }, Lc/e/b/k/d;->b(ILjava/util/ArrayList;Lc/e/b/k/m/o;)V
  .line 23
    iget-object v0, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    invoke-virtual { v0, p1, p2, p3 }, Lc/e/b/k/d;->b(ILjava/util/ArrayList;Lc/e/b/k/m/o;)V
    goto :L16
  :L15
  .line 24
    invoke-virtual { p3 }, Lc/e/b/k/m/o;->c()I
    move-result v0
    iput v0, p0, Lc/e/b/k/e;->n0:I
  .line 25
    iget-object v0, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    invoke-virtual { v0, p1, p2, p3 }, Lc/e/b/k/d;->b(ILjava/util/ArrayList;Lc/e/b/k/m/o;)V
  .line 26
    iget-object v0, p0, Lc/e/b/k/e;->J:Lc/e/b/k/d;
    invoke-virtual { v0, p1, p2, p3 }, Lc/e/b/k/d;->b(ILjava/util/ArrayList;Lc/e/b/k/m/o;)V
  .line 27
    iget-object v0, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    invoke-virtual { v0, p1, p2, p3 }, Lc/e/b/k/d;->b(ILjava/util/ArrayList;Lc/e/b/k/m/o;)V
  :L16
  .line 28
    iget-object p0, p0, Lc/e/b/k/e;->M:Lc/e/b/k/d;
    invoke-virtual { p0, p1, p2, p3 }, Lc/e/b/k/d;->b(ILjava/util/ArrayList;Lc/e/b/k/m/o;)V
  :L17
    return-object p3
.end method

.method private static b(Ljava/util/ArrayList;I)Lc/e/b/k/m/o;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/ArrayList<",
      "Lc/e/b/k/m/o;",
      ">;I)",
      "Lc/e/b/k/m/o;"
    }
  .end annotation
  .registers 6
  .line 1
    invoke-virtual { p0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L2
  .line 2
    invoke-virtual { p0, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lc/e/b/k/m/o;
  .line 3
    iget v3, v2, Lc/e/b/k/m/o;->b:I
    if-ne p1, v3, :L1
    return-object v2
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    const/4 p0, 0
    return-object p0
.end method

.method public static c(Lc/e/b/k/f;Lc/e/b/k/m/b$b;)Z
  .registers 18
    move-object/from16 v0, p0
  .line 1
    invoke-virtual/range { p0 .. p0 }, Lc/e/b/k/l;->a1()Ljava/util/ArrayList;
    move-result-object v1
  .line 2
    invoke-virtual { v1 }, Ljava/util/ArrayList;->size()I
    move-result v2
    const/4 v3, 0
    const/4 v4, 0
  :L0
    if-ge v4, v2, :L2
  .line 3
    invoke-virtual { v1, v4 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lc/e/b/k/e;
  .line 4
    invoke-virtual/range { p0 .. p0 }, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;
    move-result-object v6
    invoke-virtual/range { p0 .. p0 }, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;
    move-result-object v7
  .line 5
    invoke-virtual { v5 }, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;
    move-result-object v8
    invoke-virtual { v5 }, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;
    move-result-object v5
  .line 6
    invoke-static { v6, v7, v8, v5 }, Lc/e/b/k/m/i;->d(Lc/e/b/k/e$b;Lc/e/b/k/e$b;Lc/e/b/k/e$b;Lc/e/b/k/e$b;)Z
    move-result v5
    if-nez v5, :L1
    return v3
  :L1
    add-int/lit8 v4, v4, 1
    goto :L0
  :L2
  .line 7
    iget-object v4, v0, Lc/e/b/k/f;->u0:Lc/e/b/e;
    if-eqz v4, :L3
  .line 8
    iget-wide v5, v4, Lc/e/b/e;->A:J
    const-wide/16 v7, 1
    add-long/2addr v5, v7
    iput-wide v5, v4, Lc/e/b/e;->A:J
  :L3
    const/4 v5, 0
    const/4 v6, 0
    const/4 v7, 0
    const/4 v8, 0
    const/4 v9, 0
    const/4 v10, 0
    const/4 v11, 0
  :L4
    const/4 v12, 1
    if-ge v5, v2, :L22
  .line 9
    invoke-virtual { v1, v5 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v13
    check-cast v13, Lc/e/b/k/e;
  .line 10
    invoke-virtual/range { p0 .. p0 }, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;
    move-result-object v14
    invoke-virtual/range { p0 .. p0 }, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;
    move-result-object v15
  .line 11
    invoke-virtual { v13 }, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;
    move-result-object v3
    invoke-virtual { v13 }, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;
    move-result-object v4
  .line 12
    invoke-static { v14, v15, v3, v4 }, Lc/e/b/k/m/i;->d(Lc/e/b/k/e$b;Lc/e/b/k/e$b;Lc/e/b/k/e$b;Lc/e/b/k/e$b;)Z
    move-result v3
    if-nez v3, :L5
  .line 13
    iget-object v3, v0, Lc/e/b/k/f;->J0:Lc/e/b/k/m/b$a;
    sget v4, Lc/e/b/k/m/b$a;->k:I
    move-object/from16 v14, p1
    invoke-static { v13, v14, v3, v4 }, Lc/e/b/k/f;->A1(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Lc/e/b/k/m/b$a;I)Z
    goto :L6
  :L5
    move-object/from16 v14, p1
  :L6
  .line 14
    instance-of v3, v13, Lc/e/b/k/g;
    if-eqz v3, :L10
  .line 15
    move-object v4, v13
    check-cast v4, Lc/e/b/k/g;
  .line 16
    invoke-virtual { v4 }, Lc/e/b/k/g;->b1()I
    move-result v15
    if-nez v15, :L8
    if-nez v8, :L7
  .line 17
    new-instance v8, Ljava/util/ArrayList;
    invoke-direct { v8 }, Ljava/util/ArrayList;-><init>()V
  :L7
  .line 18
    invoke-virtual { v8, v4 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L8
  .line 19
    invoke-virtual { v4 }, Lc/e/b/k/g;->b1()I
    move-result v15
    if-ne v15, v12, :L10
    if-nez v6, :L9
  .line 20
    new-instance v6, Ljava/util/ArrayList;
    invoke-direct { v6 }, Ljava/util/ArrayList;-><init>()V
  :L9
  .line 21
    invoke-virtual { v6, v4 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L10
  .line 22
    instance-of v4, v13, Lc/e/b/k/i;
    if-eqz v4, :L17
  .line 23
    instance-of v4, v13, Lc/e/b/k/a;
    if-eqz v4, :L14
  .line 24
    move-object v4, v13
    check-cast v4, Lc/e/b/k/a;
  .line 25
    invoke-virtual { v4 }, Lc/e/b/k/a;->g1()I
    move-result v15
    if-nez v15, :L12
    if-nez v7, :L11
  .line 26
    new-instance v7, Ljava/util/ArrayList;
    invoke-direct { v7 }, Ljava/util/ArrayList;-><init>()V
  :L11
  .line 27
    invoke-virtual { v7, v4 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L12
  .line 28
    invoke-virtual { v4 }, Lc/e/b/k/a;->g1()I
    move-result v15
    if-ne v15, v12, :L17
    if-nez v9, :L13
  .line 29
    new-instance v9, Ljava/util/ArrayList;
    invoke-direct { v9 }, Ljava/util/ArrayList;-><init>()V
  :L13
  .line 30
    invoke-virtual { v9, v4 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :L17
  :L14
  .line 31
    move-object v4, v13
    check-cast v4, Lc/e/b/k/i;
    if-nez v7, :L15
  .line 32
    new-instance v7, Ljava/util/ArrayList;
    invoke-direct { v7 }, Ljava/util/ArrayList;-><init>()V
  :L15
  .line 33
    invoke-virtual { v7, v4 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    if-nez v9, :L16
  .line 34
    new-instance v9, Ljava/util/ArrayList;
    invoke-direct { v9 }, Ljava/util/ArrayList;-><init>()V
  :L16
  .line 35
    invoke-virtual { v9, v4 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L17
  .line 36
    iget-object v4, v13, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    iget-object v4, v4, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-nez v4, :L19
    iget-object v4, v13, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    iget-object v4, v4, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-nez v4, :L19
    if-nez v3, :L19
    instance-of v4, v13, Lc/e/b/k/a;
    if-nez v4, :L19
    if-nez v10, :L18
  .line 37
    new-instance v10, Ljava/util/ArrayList;
    invoke-direct { v10 }, Ljava/util/ArrayList;-><init>()V
  :L18
  .line 38
    invoke-virtual { v10, v13 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L19
  .line 39
    iget-object v4, v13, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    iget-object v4, v4, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-nez v4, :L21
    iget-object v4, v13, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    iget-object v4, v4, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-nez v4, :L21
    iget-object v4, v13, Lc/e/b/k/e;->J:Lc/e/b/k/d;
    iget-object v4, v4, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-nez v4, :L21
    if-nez v3, :L21
    instance-of v3, v13, Lc/e/b/k/a;
    if-nez v3, :L21
    if-nez v11, :L20
  .line 40
    new-instance v3, Ljava/util/ArrayList;
    invoke-direct { v3 }, Ljava/util/ArrayList;-><init>()V
    move-object v11, v3
  :L20
  .line 41
    invoke-virtual { v11, v13 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L21
    add-int/lit8 v5, v5, 1
    const/4 v3, 0
    goto/16 :L4
  :L22
  .line 42
    new-instance v3, Ljava/util/ArrayList;
    invoke-direct { v3 }, Ljava/util/ArrayList;-><init>()V
    if-eqz v6, :L24
  .line 43
    invoke-virtual { v6 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v4
  :L23
    invoke-interface { v4 }, Ljava/util/Iterator;->hasNext()Z
    move-result v5
    if-eqz v5, :L24
    invoke-interface { v4 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lc/e/b/k/g;
    const/4 v6, 0
    const/4 v13, 0
  .line 44
    invoke-static { v5, v6, v3, v13 }, Lc/e/b/k/m/i;->a(Lc/e/b/k/e;ILjava/util/ArrayList;Lc/e/b/k/m/o;)Lc/e/b/k/m/o;
    goto :L23
  :L24
    const/4 v6, 0
    const/4 v13, 0
    if-eqz v7, :L26
  .line 45
    invoke-virtual { v7 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v4
  :L25
    invoke-interface { v4 }, Ljava/util/Iterator;->hasNext()Z
    move-result v5
    if-eqz v5, :L26
    invoke-interface { v4 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lc/e/b/k/i;
  .line 46
    invoke-static { v5, v6, v3, v13 }, Lc/e/b/k/m/i;->a(Lc/e/b/k/e;ILjava/util/ArrayList;Lc/e/b/k/m/o;)Lc/e/b/k/m/o;
    move-result-object v7
  .line 47
    invoke-virtual { v5, v3, v6, v7 }, Lc/e/b/k/i;->a1(Ljava/util/ArrayList;ILc/e/b/k/m/o;)V
  .line 48
    invoke-virtual { v7, v3 }, Lc/e/b/k/m/o;->b(Ljava/util/ArrayList;)V
    const/4 v6, 0
    const/4 v13, 0
    goto :L25
  :L26
  .line 49
    sget-object v4, Lc/e/b/k/d$b;->c:Lc/e/b/k/d$b;
    invoke-virtual { v0, v4 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v4
  .line 50
    invoke-virtual { v4 }, Lc/e/b/k/d;->c()Ljava/util/HashSet;
    move-result-object v5
    if-eqz v5, :L28
  .line 51
    invoke-virtual { v4 }, Lc/e/b/k/d;->c()Ljava/util/HashSet;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
    move-result-object v4
  :L27
    invoke-interface { v4 }, Ljava/util/Iterator;->hasNext()Z
    move-result v5
    if-eqz v5, :L28
    invoke-interface { v4 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lc/e/b/k/d;
  .line 52
    iget-object v5, v5, Lc/e/b/k/d;->d:Lc/e/b/k/e;
    const/4 v6, 0
    const/4 v7, 0
    invoke-static { v5, v6, v3, v7 }, Lc/e/b/k/m/i;->a(Lc/e/b/k/e;ILjava/util/ArrayList;Lc/e/b/k/m/o;)Lc/e/b/k/m/o;
    goto :L27
  :L28
  .line 53
    sget-object v4, Lc/e/b/k/d$b;->e:Lc/e/b/k/d$b;
    invoke-virtual { v0, v4 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v4
  .line 54
    invoke-virtual { v4 }, Lc/e/b/k/d;->c()Ljava/util/HashSet;
    move-result-object v5
    if-eqz v5, :L30
  .line 55
    invoke-virtual { v4 }, Lc/e/b/k/d;->c()Ljava/util/HashSet;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
    move-result-object v4
  :L29
    invoke-interface { v4 }, Ljava/util/Iterator;->hasNext()Z
    move-result v5
    if-eqz v5, :L30
    invoke-interface { v4 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lc/e/b/k/d;
  .line 56
    iget-object v5, v5, Lc/e/b/k/d;->d:Lc/e/b/k/e;
    const/4 v6, 0
    const/4 v7, 0
    invoke-static { v5, v6, v3, v7 }, Lc/e/b/k/m/i;->a(Lc/e/b/k/e;ILjava/util/ArrayList;Lc/e/b/k/m/o;)Lc/e/b/k/m/o;
    goto :L29
  :L30
  .line 57
    sget-object v4, Lc/e/b/k/d$b;->h:Lc/e/b/k/d$b;
    invoke-virtual { v0, v4 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v4
  .line 58
    invoke-virtual { v4 }, Lc/e/b/k/d;->c()Ljava/util/HashSet;
    move-result-object v5
    if-eqz v5, :L32
  .line 59
    invoke-virtual { v4 }, Lc/e/b/k/d;->c()Ljava/util/HashSet;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
    move-result-object v4
  :L31
    invoke-interface { v4 }, Ljava/util/Iterator;->hasNext()Z
    move-result v5
    if-eqz v5, :L32
    invoke-interface { v4 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lc/e/b/k/d;
  .line 60
    iget-object v5, v5, Lc/e/b/k/d;->d:Lc/e/b/k/e;
    const/4 v6, 0
    const/4 v7, 0
    invoke-static { v5, v6, v3, v7 }, Lc/e/b/k/m/i;->a(Lc/e/b/k/e;ILjava/util/ArrayList;Lc/e/b/k/m/o;)Lc/e/b/k/m/o;
    goto :L31
  :L32
    const/4 v6, 0
    const/4 v7, 0
    if-eqz v10, :L34
  .line 61
    invoke-virtual { v10 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v4
  :L33
    invoke-interface { v4 }, Ljava/util/Iterator;->hasNext()Z
    move-result v5
    if-eqz v5, :L34
    invoke-interface { v4 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lc/e/b/k/e;
  .line 62
    invoke-static { v5, v6, v3, v7 }, Lc/e/b/k/m/i;->a(Lc/e/b/k/e;ILjava/util/ArrayList;Lc/e/b/k/m/o;)Lc/e/b/k/m/o;
    goto :L33
  :L34
    if-eqz v8, :L36
  .line 63
    invoke-virtual { v8 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v4
  :L35
    invoke-interface { v4 }, Ljava/util/Iterator;->hasNext()Z
    move-result v5
    if-eqz v5, :L36
    invoke-interface { v4 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lc/e/b/k/g;
  .line 64
    invoke-static { v5, v12, v3, v7 }, Lc/e/b/k/m/i;->a(Lc/e/b/k/e;ILjava/util/ArrayList;Lc/e/b/k/m/o;)Lc/e/b/k/m/o;
    goto :L35
  :L36
    if-eqz v9, :L38
  .line 65
    invoke-virtual { v9 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v4
  :L37
    invoke-interface { v4 }, Ljava/util/Iterator;->hasNext()Z
    move-result v5
    if-eqz v5, :L38
    invoke-interface { v4 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lc/e/b/k/i;
  .line 66
    invoke-static { v5, v12, v3, v7 }, Lc/e/b/k/m/i;->a(Lc/e/b/k/e;ILjava/util/ArrayList;Lc/e/b/k/m/o;)Lc/e/b/k/m/o;
    move-result-object v6
  .line 67
    invoke-virtual { v5, v3, v12, v6 }, Lc/e/b/k/i;->a1(Ljava/util/ArrayList;ILc/e/b/k/m/o;)V
  .line 68
    invoke-virtual { v6, v3 }, Lc/e/b/k/m/o;->b(Ljava/util/ArrayList;)V
    const/4 v7, 0
    goto :L37
  :L38
  .line 69
    sget-object v4, Lc/e/b/k/d$b;->d:Lc/e/b/k/d$b;
    invoke-virtual { v0, v4 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v4
  .line 70
    invoke-virtual { v4 }, Lc/e/b/k/d;->c()Ljava/util/HashSet;
    move-result-object v5
    if-eqz v5, :L40
  .line 71
    invoke-virtual { v4 }, Lc/e/b/k/d;->c()Ljava/util/HashSet;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
    move-result-object v4
  :L39
    invoke-interface { v4 }, Ljava/util/Iterator;->hasNext()Z
    move-result v5
    if-eqz v5, :L40
    invoke-interface { v4 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lc/e/b/k/d;
  .line 72
    iget-object v5, v5, Lc/e/b/k/d;->d:Lc/e/b/k/e;
    const/4 v6, 0
    invoke-static { v5, v12, v3, v6 }, Lc/e/b/k/m/i;->a(Lc/e/b/k/e;ILjava/util/ArrayList;Lc/e/b/k/m/o;)Lc/e/b/k/m/o;
    goto :L39
  :L40
  .line 73
    sget-object v4, Lc/e/b/k/d$b;->g:Lc/e/b/k/d$b;
    invoke-virtual { v0, v4 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v4
  .line 74
    invoke-virtual { v4 }, Lc/e/b/k/d;->c()Ljava/util/HashSet;
    move-result-object v5
    if-eqz v5, :L42
  .line 75
    invoke-virtual { v4 }, Lc/e/b/k/d;->c()Ljava/util/HashSet;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
    move-result-object v4
  :L41
    invoke-interface { v4 }, Ljava/util/Iterator;->hasNext()Z
    move-result v5
    if-eqz v5, :L42
    invoke-interface { v4 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lc/e/b/k/d;
  .line 76
    iget-object v5, v5, Lc/e/b/k/d;->d:Lc/e/b/k/e;
    const/4 v6, 0
    invoke-static { v5, v12, v3, v6 }, Lc/e/b/k/m/i;->a(Lc/e/b/k/e;ILjava/util/ArrayList;Lc/e/b/k/m/o;)Lc/e/b/k/m/o;
    goto :L41
  :L42
  .line 77
    sget-object v4, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;
    invoke-virtual { v0, v4 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v4
  .line 78
    invoke-virtual { v4 }, Lc/e/b/k/d;->c()Ljava/util/HashSet;
    move-result-object v5
    if-eqz v5, :L44
  .line 79
    invoke-virtual { v4 }, Lc/e/b/k/d;->c()Ljava/util/HashSet;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
    move-result-object v4
  :L43
    invoke-interface { v4 }, Ljava/util/Iterator;->hasNext()Z
    move-result v5
    if-eqz v5, :L44
    invoke-interface { v4 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lc/e/b/k/d;
  .line 80
    iget-object v5, v5, Lc/e/b/k/d;->d:Lc/e/b/k/e;
    const/4 v6, 0
    invoke-static { v5, v12, v3, v6 }, Lc/e/b/k/m/i;->a(Lc/e/b/k/e;ILjava/util/ArrayList;Lc/e/b/k/m/o;)Lc/e/b/k/m/o;
    goto :L43
  :L44
  .line 81
    sget-object v4, Lc/e/b/k/d$b;->h:Lc/e/b/k/d$b;
    invoke-virtual { v0, v4 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v4
  .line 82
    invoke-virtual { v4 }, Lc/e/b/k/d;->c()Ljava/util/HashSet;
    move-result-object v5
    if-eqz v5, :L46
  .line 83
    invoke-virtual { v4 }, Lc/e/b/k/d;->c()Ljava/util/HashSet;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
    move-result-object v4
  :L45
    invoke-interface { v4 }, Ljava/util/Iterator;->hasNext()Z
    move-result v5
    if-eqz v5, :L46
    invoke-interface { v4 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lc/e/b/k/d;
  .line 84
    iget-object v5, v5, Lc/e/b/k/d;->d:Lc/e/b/k/e;
    const/4 v13, 0
    invoke-static { v5, v12, v3, v13 }, Lc/e/b/k/m/i;->a(Lc/e/b/k/e;ILjava/util/ArrayList;Lc/e/b/k/m/o;)Lc/e/b/k/m/o;
    goto :L45
  :L46
    const/4 v13, 0
    if-eqz v11, :L48
  .line 85
    invoke-virtual { v11 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v4
  :L47
    invoke-interface { v4 }, Ljava/util/Iterator;->hasNext()Z
    move-result v5
    if-eqz v5, :L48
    invoke-interface { v4 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lc/e/b/k/e;
  .line 86
    invoke-static { v5, v12, v3, v13 }, Lc/e/b/k/m/i;->a(Lc/e/b/k/e;ILjava/util/ArrayList;Lc/e/b/k/m/o;)Lc/e/b/k/m/o;
    goto :L47
  :L48
    const/4 v4, 0
  :L49
    if-ge v4, v2, :L51
  .line 87
    invoke-virtual { v1, v4 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lc/e/b/k/e;
  .line 88
    invoke-virtual { v5 }, Lc/e/b/k/e;->g0()Z
    move-result v6
    if-eqz v6, :L50
  .line 89
    iget v6, v5, Lc/e/b/k/e;->m0:I
    invoke-static { v3, v6 }, Lc/e/b/k/m/i;->b(Ljava/util/ArrayList;I)Lc/e/b/k/m/o;
    move-result-object v6
  .line 90
    iget v5, v5, Lc/e/b/k/e;->n0:I
    invoke-static { v3, v5 }, Lc/e/b/k/m/i;->b(Ljava/util/ArrayList;I)Lc/e/b/k/m/o;
    move-result-object v5
    if-eqz v6, :L50
    if-eqz v5, :L50
    const/4 v7, 0
  .line 91
    invoke-virtual { v6, v7, v5 }, Lc/e/b/k/m/o;->g(ILc/e/b/k/m/o;)V
    const/4 v7, 2
  .line 92
    invoke-virtual { v5, v7 }, Lc/e/b/k/m/o;->i(I)V
  .line 93
    invoke-virtual { v3, v6 }, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
  :L50
    add-int/lit8 v4, v4, 1
    goto :L49
  :L51
  .line 94
    invoke-virtual { v3 }, Ljava/util/ArrayList;->size()I
    move-result v1
    if-gt v1, v12, :L52
    const/4 v1, 0
    return v1
  :L52
  .line 95
    invoke-virtual/range { p0 .. p0 }, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;
    move-result-object v1
    sget-object v2, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-ne v1, v2, :L56
  .line 96
    invoke-virtual { v3 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v1
    move-object v2, v13
    const/4 v6, 0
  :L53
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v4
    if-eqz v4, :L55
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lc/e/b/k/m/o;
  .line 97
    invoke-virtual { v4 }, Lc/e/b/k/m/o;->d()I
    move-result v5
    if-ne v5, v12, :L54
    goto :L53
  :L54
    const/4 v5, 0
  .line 98
    invoke-virtual { v4, v5 }, Lc/e/b/k/m/o;->h(Z)V
  .line 99
    invoke-virtual/range { p0 .. p0 }, Lc/e/b/k/f;->t1()Lc/e/b/d;
    move-result-object v7
    invoke-virtual { v4, v7, v5 }, Lc/e/b/k/m/o;->f(Lc/e/b/d;I)I
    move-result v7
    if-le v7, v6, :L53
    move-object v2, v4
    move v6, v7
    goto :L53
  :L55
    if-eqz v2, :L56
  .line 100
    sget-object v1, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    invoke-virtual { v0, v1 }, Lc/e/b/k/e;->z0(Lc/e/b/k/e$b;)V
  .line 101
    invoke-virtual { v0, v6 }, Lc/e/b/k/e;->U0(I)V
  .line 102
    invoke-virtual { v2, v12 }, Lc/e/b/k/m/o;->h(Z)V
    goto :L57
  :L56
    move-object v2, v13
  :L57
  .line 103
    invoke-virtual/range { p0 .. p0 }, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;
    move-result-object v1
    sget-object v4, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-ne v1, v4, :L61
  .line 104
    invoke-virtual { v3 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v1
    move-object v3, v13
    const/4 v6, 0
  :L58
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v4
    if-eqz v4, :L60
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lc/e/b/k/m/o;
  .line 105
    invoke-virtual { v4 }, Lc/e/b/k/m/o;->d()I
    move-result v5
    if-nez v5, :L59
    goto :L58
  :L59
    const/4 v5, 0
  .line 106
    invoke-virtual { v4, v5 }, Lc/e/b/k/m/o;->h(Z)V
  .line 107
    invoke-virtual/range { p0 .. p0 }, Lc/e/b/k/f;->t1()Lc/e/b/d;
    move-result-object v7
    invoke-virtual { v4, v7, v12 }, Lc/e/b/k/m/o;->f(Lc/e/b/d;I)I
    move-result v7
    if-le v7, v6, :L58
    move-object v3, v4
    move v6, v7
    goto :L58
  :L60
    const/4 v5, 0
    if-eqz v3, :L62
  .line 108
    sget-object v1, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    invoke-virtual { v0, v1 }, Lc/e/b/k/e;->Q0(Lc/e/b/k/e$b;)V
  .line 109
    invoke-virtual { v0, v6 }, Lc/e/b/k/e;->v0(I)V
  .line 110
    invoke-virtual { v3, v12 }, Lc/e/b/k/m/o;->h(Z)V
    move-object v4, v3
    goto :L63
  :L61
    const/4 v5, 0
  :L62
    move-object v4, v13
  :L63
    if-nez v2, :L65
    if-eqz v4, :L64
    goto :L65
  :L64
    const/4 v3, 0
    goto :L66
  :L65
    const/4 v3, 1
  :L66
    return v3
.end method

.method public static d(Lc/e/b/k/e$b;Lc/e/b/k/e$b;Lc/e/b/k/e$b;Lc/e/b/k/e$b;)Z
  .registers 7
  .line 1
    sget-object v0, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    const/4 v1, 0
    const/4 v2, 1
    if-eq p2, v0, :L1
    sget-object v0, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-eq p2, v0, :L1
    sget-object v0, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;
    if-ne p2, v0, :L0
    sget-object p2, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-eq p0, p2, :L0
    goto :L1
  :L0
    const/4 p0, 0
    goto :L2
  :L1
    const/4 p0, 1
  :L2
  .line 2
    sget-object p2, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    if-eq p3, p2, :L4
    sget-object p2, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-eq p3, p2, :L4
    sget-object p2, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;
    if-ne p3, p2, :L3
    sget-object p2, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-eq p1, p2, :L3
    goto :L4
  :L3
    const/4 p1, 0
    goto :L5
  :L4
    const/4 p1, 1
  :L5
    if-nez p0, :L7
    if-eqz p1, :L6
    goto :L7
  :L6
    return v1
  :L7
    return v2
.end method
