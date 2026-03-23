.class public Lc/e/b/k/b;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static a(Lc/e/b/k/f;Lc/e/b/d;IILc/e/b/k/c;)V
  .registers 41
    move-object/from16 v0, p0
    move-object/from16 v9, p1
    move-object/from16 v1, p4
  .line 1
    iget-object v10, v1, Lc/e/b/k/c;->a:Lc/e/b/k/e;
  .line 2
    iget-object v11, v1, Lc/e/b/k/c;->c:Lc/e/b/k/e;
  .line 3
    iget-object v12, v1, Lc/e/b/k/c;->b:Lc/e/b/k/e;
  .line 4
    iget-object v13, v1, Lc/e/b/k/c;->d:Lc/e/b/k/e;
  .line 5
    iget-object v2, v1, Lc/e/b/k/c;->e:Lc/e/b/k/e;
  .line 6
    iget v3, v1, Lc/e/b/k/c;->k:F
  .line 7
    iget-object v4, v1, Lc/e/b/k/c;->f:Lc/e/b/k/e;
  .line 8
    iget-object v4, v1, Lc/e/b/k/c;->g:Lc/e/b/k/e;
  .line 9
    iget-object v4, v0, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    aget-object v4, v4, p2
    sget-object v5, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    const/4 v7, 1
    if-ne v4, v5, :L0
    const/4 v4, 1
    goto :L1
  :L0
    const/4 v4, 0
  :L1
    const/4 v5, 2
    if-nez p2, :L6
  .line 10
    iget v8, v2, Lc/e/b/k/e;->h0:I
    if-nez v8, :L2
    const/4 v8, 1
    goto :L3
  :L2
    const/4 v8, 0
  :L3
  .line 11
    iget v14, v2, Lc/e/b/k/e;->h0:I
    if-ne v14, v7, :L4
    const/4 v14, 1
    goto :L5
  :L4
    const/4 v14, 0
  :L5
  .line 12
    iget v15, v2, Lc/e/b/k/e;->h0:I
    if-ne v15, v5, :L12
    goto :L11
  :L6
  .line 13
    iget v8, v2, Lc/e/b/k/e;->i0:I
    if-nez v8, :L7
    const/4 v8, 1
    goto :L8
  :L7
    const/4 v8, 0
  :L8
  .line 14
    iget v14, v2, Lc/e/b/k/e;->i0:I
    if-ne v14, v7, :L9
    const/4 v14, 1
    goto :L10
  :L9
    const/4 v14, 0
  :L10
  .line 15
    iget v15, v2, Lc/e/b/k/e;->i0:I
    if-ne v15, v5, :L12
  :L11
    const/4 v5, 1
    goto :L13
  :L12
    const/4 v5, 0
  :L13
    move-object v7, v10
    move v15, v14
    move v14, v8
    const/4 v8, 0
  :L14
    const/16 v21, 0
    if-nez v8, :L35
  .line 16
    iget-object v6, v7, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v6, v6, p3
    if-eqz v5, :L15
    const/16 v19, 1
    goto :L16
  :L15
    const/16 v19, 4
  :L16
  .line 17
    invoke-virtual { v6 }, Lc/e/b/k/d;->e()I
    move-result v22
    move/from16 v23, v3
  .line 18
    iget-object v3, v7, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    aget-object v3, v3, p2
    move/from16 v24, v8
    sget-object v8, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v3, v8, :L17
    iget-object v3, v7, Lc/e/b/k/e;->p:[I
    aget v3, v3, p2
    if-nez v3, :L17
    const/4 v3, 1
    goto :L18
  :L17
    const/4 v3, 0
  :L18
  .line 19
    iget-object v8, v6, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v8, :L19
    if-eq v7, v10, :L19
  .line 20
    invoke-virtual { v8 }, Lc/e/b/k/d;->e()I
    move-result v8
    add-int v22, v22, v8
  :L19
    move/from16 v8, v22
    if-eqz v5, :L20
    if-eq v7, v10, :L20
    if-eq v7, v12, :L20
    move/from16 v22, v15
    const/16 v19, 8
    goto :L21
  :L20
    move/from16 v22, v15
  :L21
  .line 21
    iget-object v15, v6, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v15, :L26
    if-ne v7, v12, :L22
    move/from16 v25, v14
  .line 22
    iget-object v14, v6, Lc/e/b/k/d;->i:Lc/e/b/i;
    iget-object v15, v15, Lc/e/b/k/d;->i:Lc/e/b/i;
    move-object/from16 v26, v2
    const/4 v2, 6
    invoke-virtual { v9, v14, v15, v8, v2 }, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V
    goto :L23
  :L22
    move-object/from16 v26, v2
    move/from16 v25, v14
  .line 23
    iget-object v2, v6, Lc/e/b/k/d;->i:Lc/e/b/i;
    iget-object v14, v15, Lc/e/b/k/d;->i:Lc/e/b/i;
    const/16 v15, 8
    invoke-virtual { v9, v2, v14, v8, v15 }, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V
  :L23
    if-eqz v3, :L24
    if-nez v5, :L24
    const/4 v2, 5
    goto :L25
  :L24
    move/from16 v2, v19
  :L25
  .line 24
    iget-object v3, v6, Lc/e/b/k/d;->i:Lc/e/b/i;
    iget-object v6, v6, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    iget-object v6, v6, Lc/e/b/k/d;->i:Lc/e/b/i;
    invoke-virtual { v9, v3, v6, v8, v2 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
    goto :L27
  :L26
    move-object/from16 v26, v2
    move/from16 v25, v14
  :L27
    if-eqz v4, :L30
  .line 25
    invoke-virtual { v7 }, Lc/e/b/k/e;->Q()I
    move-result v2
    const/16 v3, 8
    if-eq v2, v3, :L28
    iget-object v2, v7, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    aget-object v2, v2, p2
    sget-object v3, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v2, v3, :L28
  .line 26
    iget-object v2, v7, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    add-int/lit8 v3, p3, 1
    aget-object v3, v2, v3
    iget-object v3, v3, Lc/e/b/k/d;->i:Lc/e/b/i;
    aget-object v2, v2, p3
    iget-object v2, v2, Lc/e/b/k/d;->i:Lc/e/b/i;
    const/4 v6, 5
    const/4 v8, 0
    invoke-virtual { v9, v3, v2, v8, v6 }, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V
    goto :L29
  :L28
    const/4 v8, 0
  :L29
  .line 27
    iget-object v2, v7, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v2, v2, p3
    iget-object v2, v2, Lc/e/b/k/d;->i:Lc/e/b/i;
    iget-object v3, v0, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v3, v3, p3
    iget-object v3, v3, Lc/e/b/k/d;->i:Lc/e/b/i;
    const/16 v6, 8
    invoke-virtual { v9, v2, v3, v8, v6 }, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V
  :L30
  .line 28
    iget-object v2, v7, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    add-int/lit8 v3, p3, 1
    aget-object v2, v2, v3
    iget-object v2, v2, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v2, :L32
  .line 29
    iget-object v2, v2, Lc/e/b/k/d;->d:Lc/e/b/k/e;
  .line 30
    iget-object v3, v2, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v6, v3, p3
    iget-object v6, v6, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v6, :L32
    aget-object v3, v3, p3
    iget-object v3, v3, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    iget-object v3, v3, Lc/e/b/k/d;->d:Lc/e/b/k/e;
    if-eq v3, v7, :L31
    goto :L32
  :L31
    move-object/from16 v21, v2
  :L32
    if-eqz v21, :L33
    move-object/from16 v7, v21
    move/from16 v8, v24
    goto :L34
  :L33
    const/4 v8, 1
  :L34
    move/from16 v15, v22
    move/from16 v3, v23
    move/from16 v14, v25
    move-object/from16 v2, v26
    goto/16 :L14
  :L35
    move-object/from16 v26, v2
    move/from16 v23, v3
    move/from16 v25, v14
    move/from16 v22, v15
    if-eqz v13, :L40
  .line 31
    iget-object v2, v11, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    add-int/lit8 v3, p3, 1
    aget-object v2, v2, v3
    iget-object v2, v2, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v2, :L40
  .line 32
    iget-object v2, v13, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v2, v2, v3
  .line 33
    iget-object v6, v13, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    aget-object v6, v6, p2
    sget-object v7, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v6, v7, :L36
    iget-object v6, v13, Lc/e/b/k/e;->p:[I
    aget v6, v6, p2
    if-nez v6, :L36
    const/4 v6, 1
    goto :L37
  :L36
    const/4 v6, 0
  :L37
    if-eqz v6, :L38
    if-nez v5, :L38
  .line 34
    iget-object v6, v2, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    iget-object v7, v6, Lc/e/b/k/d;->d:Lc/e/b/k/e;
    if-ne v7, v0, :L38
  .line 35
    iget-object v7, v2, Lc/e/b/k/d;->i:Lc/e/b/i;
    iget-object v6, v6, Lc/e/b/k/d;->i:Lc/e/b/i;
    invoke-virtual { v2 }, Lc/e/b/k/d;->e()I
    move-result v8
    neg-int v8, v8
    const/4 v14, 5
    invoke-virtual { v9, v7, v6, v8, v14 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
    goto :L39
  :L38
    const/4 v14, 5
    if-eqz v5, :L39
  .line 36
    iget-object v6, v2, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    iget-object v7, v6, Lc/e/b/k/d;->d:Lc/e/b/k/e;
    if-ne v7, v0, :L39
  .line 37
    iget-object v7, v2, Lc/e/b/k/d;->i:Lc/e/b/i;
    iget-object v6, v6, Lc/e/b/k/d;->i:Lc/e/b/i;
    invoke-virtual { v2 }, Lc/e/b/k/d;->e()I
    move-result v8
    neg-int v8, v8
    const/4 v15, 4
    invoke-virtual { v9, v7, v6, v8, v15 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
  :L39
  .line 38
    iget-object v6, v2, Lc/e/b/k/d;->i:Lc/e/b/i;
    iget-object v7, v11, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v3, v7, v3
    iget-object v3, v3, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    iget-object v3, v3, Lc/e/b/k/d;->i:Lc/e/b/i;
  .line 39
    invoke-virtual { v2 }, Lc/e/b/k/d;->e()I
    move-result v2
    neg-int v2, v2
    const/4 v7, 6
  .line 40
    invoke-virtual { v9, v6, v3, v2, v7 }, Lc/e/b/d;->j(Lc/e/b/i;Lc/e/b/i;II)V
    goto :L41
  :L40
    const/4 v14, 5
  :L41
    if-eqz v4, :L42
  .line 41
    iget-object v0, v0, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    add-int/lit8 v2, p3, 1
    aget-object v0, v0, v2
    iget-object v0, v0, Lc/e/b/k/d;->i:Lc/e/b/i;
    iget-object v3, v11, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v4, v3, v2
    iget-object v4, v4, Lc/e/b/k/d;->i:Lc/e/b/i;
    aget-object v2, v3, v2
  .line 42
    invoke-virtual { v2 }, Lc/e/b/k/d;->e()I
    move-result v2
    const/16 v3, 8
  .line 43
    invoke-virtual { v9, v0, v4, v2, v3 }, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V
  :L42
  .line 44
    iget-object v0, v1, Lc/e/b/k/c;->h:Ljava/util/ArrayList;
    if-eqz v0, :L54
  .line 45
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v2
    const/4 v3, 1
    if-le v2, v3, :L54
  .line 46
    iget-boolean v4, v1, Lc/e/b/k/c;->q:Z
    if-eqz v4, :L43
    iget-boolean v4, v1, Lc/e/b/k/c;->s:Z
    if-nez v4, :L43
  .line 47
    iget v4, v1, Lc/e/b/k/c;->j:I
    int-to-float v4, v4
    goto :L44
  :L43
    move/from16 v4, v23
  :L44
    const/4 v6, 0
    move-object/from16 v7, v21
    const/4 v8, 0
    const/16 v28, 0
  :L45
    if-ge v8, v2, :L54
  .line 48
    invoke-virtual { v0, v8 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v15
    check-cast v15, Lc/e/b/k/e;
  .line 49
    iget-object v3, v15, Lc/e/b/k/e;->j0:[F
    aget v3, v3, p2
    cmpg-float v18, v3, v6
    if-gez v18, :L47
  .line 50
    iget-boolean v3, v1, Lc/e/b/k/c;->s:Z
    if-eqz v3, :L46
  .line 51
    iget-object v3, v15, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    add-int/lit8 v15, p3, 1
    aget-object v15, v3, v15
    iget-object v15, v15, Lc/e/b/k/d;->i:Lc/e/b/i;
    aget-object v3, v3, p3
    iget-object v3, v3, Lc/e/b/k/d;->i:Lc/e/b/i;
    const/4 v6, 0
    const/4 v14, 4
    invoke-virtual { v9, v15, v3, v6, v14 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
    const/4 v14, 0
    goto :L49
  :L46
    const/4 v14, 4
    const/high16 v3, 16256
    const/4 v6, 0
    goto :L48
  :L47
    const/4 v14, 4
  :L48
    cmpl-float v18, v3, v6
    if-nez v18, :L50
  .line 52
    iget-object v3, v15, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    add-int/lit8 v15, p3, 1
    aget-object v15, v3, v15
    iget-object v15, v15, Lc/e/b/k/d;->i:Lc/e/b/i;
    aget-object v3, v3, p3
    iget-object v3, v3, Lc/e/b/k/d;->i:Lc/e/b/i;
    const/16 v6, 8
    const/4 v14, 0
    invoke-virtual { v9, v15, v3, v14, v6 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
  :L49
    move-object/from16 v23, v0
    move/from16 v17, v2
    goto :L53
  :L50
    const/4 v14, 0
    if-eqz v7, :L51
  .line 53
    iget-object v6, v7, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v7, v6, p3
    iget-object v7, v7, Lc/e/b/k/d;->i:Lc/e/b/i;
    add-int/lit8 v17, p3, 1
  .line 54
    aget-object v6, v6, v17
    iget-object v6, v6, Lc/e/b/k/d;->i:Lc/e/b/i;
  .line 55
    iget-object v14, v15, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    move-object/from16 v23, v0
    aget-object v0, v14, p3
    iget-object v0, v0, Lc/e/b/k/d;->i:Lc/e/b/i;
  .line 56
    aget-object v14, v14, v17
    iget-object v14, v14, Lc/e/b/k/d;->i:Lc/e/b/i;
    move/from16 v17, v2
  .line 57
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/d;->r()Lc/e/b/b;
    move-result-object v2
    move-object/from16 v27, v2
    move/from16 v29, v4
    move/from16 v30, v3
    move-object/from16 v31, v7
    move-object/from16 v32, v6
    move-object/from16 v33, v0
    move-object/from16 v34, v14
  .line 58
    invoke-virtual/range { v27 .. v34 }, Lc/e/b/b;->l(FFFLc/e/b/i;Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;)Lc/e/b/b;
  .line 59
    invoke-virtual { v9, v2 }, Lc/e/b/d;->d(Lc/e/b/b;)V
    goto :L52
  :L51
    move-object/from16 v23, v0
    move/from16 v17, v2
  :L52
    move/from16 v28, v3
    move-object v7, v15
  :L53
    add-int/lit8 v8, v8, 1
    move/from16 v2, v17
    move-object/from16 v0, v23
    const/4 v3, 1
    const/4 v6, 0
    const/4 v14, 5
    goto/16 :L45
  :L54
    if-eqz v12, :L62
    if-eq v12, v13, :L55
    if-eqz v5, :L62
  :L55
  .line 60
    iget-object v0, v10, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v0, v0, p3
  .line 61
    iget-object v1, v11, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    add-int/lit8 v2, p3, 1
    aget-object v1, v1, v2
  .line 62
    iget-object v0, v0, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v0, :L56
    iget-object v0, v0, Lc/e/b/k/d;->i:Lc/e/b/i;
    move-object v3, v0
    goto :L57
  :L56
    move-object/from16 v3, v21
  :L57
  .line 63
    iget-object v0, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v0, :L58
    iget-object v0, v0, Lc/e/b/k/d;->i:Lc/e/b/i;
    move-object v5, v0
    goto :L59
  :L58
    move-object/from16 v5, v21
  :L59
  .line 64
    iget-object v0, v12, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v0, v0, p3
  .line 65
    iget-object v1, v13, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v1, v1, v2
    if-eqz v3, :L117
    if-eqz v5, :L117
    if-nez p2, :L60
    move-object/from16 v2, v26
  .line 66
    iget v2, v2, Lc/e/b/k/e;->b0:F
    goto :L61
  :L60
    move-object/from16 v2, v26
  .line 67
    iget v2, v2, Lc/e/b/k/e;->c0:F
  :L61
    move v4, v2
  .line 68
    invoke-virtual { v0 }, Lc/e/b/k/d;->e()I
    move-result v6
  .line 69
    invoke-virtual { v1 }, Lc/e/b/k/d;->e()I
    move-result v7
  .line 70
    iget-object v2, v0, Lc/e/b/k/d;->i:Lc/e/b/i;
    iget-object v8, v1, Lc/e/b/k/d;->i:Lc/e/b/i;
    const/4 v10, 7
    move-object/from16 v0, p1
    move-object v1, v2
    move-object v2, v3
    move v3, v6
    move-object v6, v8
    move v8, v10
    invoke-virtual/range { v0 .. v8 }, Lc/e/b/d;->c(Lc/e/b/i;Lc/e/b/i;IFLc/e/b/i;Lc/e/b/i;II)V
    goto/16 :L117
  :L62
    if-eqz v25, :L89
    if-eqz v12, :L89
  .line 71
    iget v0, v1, Lc/e/b/k/c;->j:I
    if-lez v0, :L63
    iget v1, v1, Lc/e/b/k/c;->i:I
    if-ne v1, v0, :L63
    const/16 v16, 1
    goto :L64
  :L63
    const/16 v16, 0
  :L64
    move-object v14, v12
    move-object v15, v14
  :L65
    if-eqz v14, :L117
  .line 72
    iget-object v0, v14, Lc/e/b/k/e;->l0:[Lc/e/b/k/e;
    aget-object v0, v0, p2
    move-object v8, v0
  :L66
    if-eqz v8, :L67
  .line 73
    invoke-virtual { v8 }, Lc/e/b/k/e;->Q()I
    move-result v0
    const/16 v6, 8
    if-ne v0, v6, :L68
  .line 74
    iget-object v0, v8, Lc/e/b/k/e;->l0:[Lc/e/b/k/e;
    aget-object v8, v0, p2
    goto :L66
  :L67
    const/16 v6, 8
  :L68
    if-nez v8, :L70
    if-ne v14, v13, :L69
    goto :L70
  :L69
    move-object/from16 v17, v8
    goto/16 :L87
  :L70
  .line 75
    iget-object v0, v14, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v0, v0, p3
  .line 76
    iget-object v1, v0, Lc/e/b/k/d;->i:Lc/e/b/i;
  .line 77
    iget-object v2, v0, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v2, :L71
    iget-object v2, v2, Lc/e/b/k/d;->i:Lc/e/b/i;
    goto :L72
  :L71
    move-object/from16 v2, v21
  :L72
    if-eq v15, v14, :L73
  .line 78
    iget-object v2, v15, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    add-int/lit8 v3, p3, 1
    aget-object v2, v2, v3
    iget-object v2, v2, Lc/e/b/k/d;->i:Lc/e/b/i;
    goto :L75
  :L73
    if-ne v14, v12, :L75
    if-ne v15, v14, :L75
  .line 79
    iget-object v2, v10, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v3, v2, p3
    iget-object v3, v3, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v3, :L74
    aget-object v2, v2, p3
    iget-object v2, v2, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    iget-object v2, v2, Lc/e/b/k/d;->i:Lc/e/b/i;
    goto :L75
  :L74
    move-object/from16 v2, v21
  :L75
  .line 80
    invoke-virtual { v0 }, Lc/e/b/k/d;->e()I
    move-result v0
  .line 81
    iget-object v3, v14, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    add-int/lit8 v4, p3, 1
    aget-object v3, v3, v4
    invoke-virtual { v3 }, Lc/e/b/k/d;->e()I
    move-result v3
    if-eqz v8, :L76
  .line 82
    iget-object v5, v8, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v5, v5, p3
  .line 83
    iget-object v7, v5, Lc/e/b/k/d;->i:Lc/e/b/i;
  .line 84
    iget-object v6, v14, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v6, v6, v4
    iget-object v6, v6, Lc/e/b/k/d;->i:Lc/e/b/i;
    move-object/from16 v35, v7
    move-object v7, v6
    move-object/from16 v6, v35
    goto :L79
  :L76
  .line 85
    iget-object v5, v11, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v5, v5, v4
    iget-object v5, v5, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v5, :L77
  .line 86
    iget-object v6, v5, Lc/e/b/k/d;->i:Lc/e/b/i;
    goto :L78
  :L77
    move-object/from16 v6, v21
  :L78
  .line 87
    iget-object v7, v14, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v7, v7, v4
    iget-object v7, v7, Lc/e/b/k/d;->i:Lc/e/b/i;
  :L79
    if-eqz v5, :L80
  .line 88
    invoke-virtual { v5 }, Lc/e/b/k/d;->e()I
    move-result v5
    add-int/2addr v3, v5
  :L80
    if-eqz v15, :L81
  .line 89
    iget-object v5, v15, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v5, v5, v4
    invoke-virtual { v5 }, Lc/e/b/k/d;->e()I
    move-result v5
    add-int/2addr v0, v5
  :L81
    if-eqz v1, :L69
    if-eqz v2, :L69
    if-eqz v6, :L69
    if-eqz v7, :L69
    if-ne v14, v12, :L82
  .line 90
    iget-object v0, v12, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v0, v0, p3
    invoke-virtual { v0 }, Lc/e/b/k/d;->e()I
    move-result v0
  :L82
    move v5, v0
    if-ne v14, v13, :L83
  .line 91
    iget-object v0, v13, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v0, v0, v4
    invoke-virtual { v0 }, Lc/e/b/k/d;->e()I
    move-result v0
    move/from16 v17, v0
    goto :L84
  :L83
    move/from16 v17, v3
  :L84
    if-eqz v16, :L85
    const/16 v18, 8
    goto :L86
  :L85
    const/16 v18, 5
  :L86
    const/high16 v4, 16128
    move-object/from16 v0, p1
    move v3, v5
    move-object v5, v6
    move-object v6, v7
    move/from16 v7, v17
    move-object/from16 v17, v8
    move/from16 v8, v18
  .line 92
    invoke-virtual/range { v0 .. v8 }, Lc/e/b/d;->c(Lc/e/b/i;Lc/e/b/i;IFLc/e/b/i;Lc/e/b/i;II)V
  :L87
  .line 93
    invoke-virtual { v14 }, Lc/e/b/k/e;->Q()I
    move-result v0
    const/16 v8, 8
    if-eq v0, v8, :L88
    move-object v15, v14
  :L88
    move-object/from16 v14, v17
    goto/16 :L65
  :L89
    const/16 v8, 8
    if-eqz v22, :L117
    if-eqz v12, :L117
  .line 94
    iget v0, v1, Lc/e/b/k/c;->j:I
    if-lez v0, :L90
    iget v1, v1, Lc/e/b/k/c;->i:I
    if-ne v1, v0, :L90
    const/16 v16, 1
    goto :L91
  :L90
    const/16 v16, 0
  :L91
    move-object v14, v12
    move-object v15, v14
  :L92
    if-eqz v14, :L113
  .line 95
    iget-object v0, v14, Lc/e/b/k/e;->l0:[Lc/e/b/k/e;
    aget-object v0, v0, p2
  :L93
    if-eqz v0, :L94
  .line 96
    invoke-virtual { v0 }, Lc/e/b/k/e;->Q()I
    move-result v1
    if-ne v1, v8, :L94
  .line 97
    iget-object v0, v0, Lc/e/b/k/e;->l0:[Lc/e/b/k/e;
    aget-object v0, v0, p2
    goto :L93
  :L94
    if-eq v14, v12, :L109
    if-eq v14, v13, :L109
    if-eqz v0, :L109
    if-ne v0, v13, :L95
    move-object/from16 v7, v21
    goto :L96
  :L95
    move-object v7, v0
  :L96
  .line 98
    iget-object v0, v14, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v0, v0, p3
  .line 99
    iget-object v1, v0, Lc/e/b/k/d;->i:Lc/e/b/i;
  .line 100
    iget-object v2, v0, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v2, :L97
    iget-object v2, v2, Lc/e/b/k/d;->i:Lc/e/b/i;
  :L97
  .line 101
    iget-object v2, v15, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    add-int/lit8 v3, p3, 1
    aget-object v2, v2, v3
    iget-object v2, v2, Lc/e/b/k/d;->i:Lc/e/b/i;
  .line 102
    invoke-virtual { v0 }, Lc/e/b/k/d;->e()I
    move-result v0
  .line 103
    iget-object v4, v14, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v4, v4, v3
    invoke-virtual { v4 }, Lc/e/b/k/d;->e()I
    move-result v4
    if-eqz v7, :L99
  .line 104
    iget-object v5, v7, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v5, v5, p3
  .line 105
    iget-object v6, v5, Lc/e/b/k/d;->i:Lc/e/b/i;
  .line 106
    iget-object v8, v5, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v8, :L98
    iget-object v8, v8, Lc/e/b/k/d;->i:Lc/e/b/i;
    goto :L102
  :L98
    move-object/from16 v8, v21
    goto :L102
  :L99
  .line 107
    iget-object v5, v13, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v5, v5, p3
    if-eqz v5, :L100
  .line 108
    iget-object v6, v5, Lc/e/b/k/d;->i:Lc/e/b/i;
    goto :L101
  :L100
    move-object/from16 v6, v21
  :L101
  .line 109
    iget-object v8, v14, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v8, v8, v3
    iget-object v8, v8, Lc/e/b/k/d;->i:Lc/e/b/i;
  :L102
    if-eqz v5, :L103
  .line 110
    invoke-virtual { v5 }, Lc/e/b/k/d;->e()I
    move-result v5
    add-int/2addr v4, v5
  :L103
    move/from16 v17, v4
    if-eqz v15, :L104
  .line 111
    iget-object v4, v15, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v3, v4, v3
    invoke-virtual { v3 }, Lc/e/b/k/d;->e()I
    move-result v3
    add-int/2addr v0, v3
  :L104
    move v3, v0
    if-eqz v16, :L105
    const/16 v18, 8
    goto :L106
  :L105
    const/16 v18, 4
  :L106
    if-eqz v1, :L107
    if-eqz v2, :L107
    if-eqz v6, :L107
    if-eqz v8, :L107
    const/high16 v4, 16128
    move-object/from16 v0, p1
    move-object v5, v6
    const/16 v19, 4
    move-object v6, v8
    move-object/from16 v20, v7
    move/from16 v7, v17
    move-object/from16 v17, v15
    const/16 v15, 8
    move/from16 v8, v18
  .line 112
    invoke-virtual/range { v0 .. v8 }, Lc/e/b/d;->c(Lc/e/b/i;Lc/e/b/i;IFLc/e/b/i;Lc/e/b/i;II)V
    goto :L108
  :L107
    move-object/from16 v20, v7
    move-object/from16 v17, v15
    const/16 v15, 8
    const/16 v19, 4
  :L108
    move-object/from16 v0, v20
    goto :L110
  :L109
    move-object/from16 v17, v15
    const/16 v15, 8
    const/16 v19, 4
  :L110
  .line 113
    invoke-virtual { v14 }, Lc/e/b/k/e;->Q()I
    move-result v1
    if-eq v1, v15, :L111
    goto :L112
  :L111
    move-object/from16 v14, v17
  :L112
    move-object v15, v14
    const/16 v8, 8
    move-object v14, v0
    goto/16 :L92
  :L113
  .line 114
    iget-object v0, v12, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v0, v0, p3
  .line 115
    iget-object v1, v10, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v1, v1, p3
    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;
  .line 116
    iget-object v2, v13, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    add-int/lit8 v3, p3, 1
    aget-object v10, v2, v3
  .line 117
    iget-object v2, v11, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v2, v2, v3
    iget-object v14, v2, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v1, :L115
    if-eq v12, v13, :L114
  .line 118
    iget-object v2, v0, Lc/e/b/k/d;->i:Lc/e/b/i;
    iget-object v1, v1, Lc/e/b/k/d;->i:Lc/e/b/i;
    invoke-virtual { v0 }, Lc/e/b/k/d;->e()I
    move-result v0
    const/4 v15, 5
    invoke-virtual { v9, v2, v1, v0, v15 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
    goto :L116
  :L114
    const/4 v15, 5
    if-eqz v14, :L116
  .line 119
    iget-object v2, v0, Lc/e/b/k/d;->i:Lc/e/b/i;
    iget-object v3, v1, Lc/e/b/k/d;->i:Lc/e/b/i;
    invoke-virtual { v0 }, Lc/e/b/k/d;->e()I
    move-result v4
    const/high16 v5, 16128
    iget-object v6, v10, Lc/e/b/k/d;->i:Lc/e/b/i;
    iget-object v7, v14, Lc/e/b/k/d;->i:Lc/e/b/i;
  .line 120
    invoke-virtual { v10 }, Lc/e/b/k/d;->e()I
    move-result v8
    const/16 v16, 5
    move-object/from16 v0, p1
    move-object v1, v2
    move-object v2, v3
    move v3, v4
    move v4, v5
    move-object v5, v6
    move-object v6, v7
    move v7, v8
    move/from16 v8, v16
  .line 121
    invoke-virtual/range { v0 .. v8 }, Lc/e/b/d;->c(Lc/e/b/i;Lc/e/b/i;IFLc/e/b/i;Lc/e/b/i;II)V
    goto :L116
  :L115
    const/4 v15, 5
  :L116
    if-eqz v14, :L117
    if-eq v12, v13, :L117
  .line 122
    iget-object v0, v10, Lc/e/b/k/d;->i:Lc/e/b/i;
    iget-object v1, v14, Lc/e/b/k/d;->i:Lc/e/b/i;
    invoke-virtual { v10 }, Lc/e/b/k/d;->e()I
    move-result v2
    neg-int v2, v2
    invoke-virtual { v9, v0, v1, v2, v15 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
  :L117
    if-nez v25, :L118
    if-eqz v22, :L129
  :L118
    if-eqz v12, :L129
    if-eq v12, v13, :L129
  .line 123
    iget-object v0, v12, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v0, v0, p3
  .line 124
    iget-object v1, v13, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    add-int/lit8 v2, p3, 1
    aget-object v1, v1, v2
  .line 125
    iget-object v3, v0, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v3, :L119
    iget-object v3, v3, Lc/e/b/k/d;->i:Lc/e/b/i;
    goto :L120
  :L119
    move-object/from16 v3, v21
  :L120
  .line 126
    iget-object v4, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v4, :L121
    iget-object v4, v4, Lc/e/b/k/d;->i:Lc/e/b/i;
    goto :L122
  :L121
    move-object/from16 v4, v21
  :L122
    if-eq v11, v13, :L124
  .line 127
    iget-object v4, v11, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v4, v4, v2
  .line 128
    iget-object v4, v4, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v4, :L123
    iget-object v4, v4, Lc/e/b/k/d;->i:Lc/e/b/i;
    move-object/from16 v21, v4
  :L123
    move-object/from16 v5, v21
    goto :L125
  :L124
    move-object v5, v4
  :L125
    if-ne v12, v13, :L126
  .line 129
    iget-object v0, v12, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v1, v0, p3
  .line 130
    aget-object v0, v0, v2
    move-object/from16 v35, v1
    move-object v1, v0
    move-object/from16 v0, v35
  :L126
    if-eqz v3, :L129
    if-eqz v5, :L129
    const/high16 v4, 16128
  .line 131
    invoke-virtual { v0 }, Lc/e/b/k/d;->e()I
    move-result v6
    if-nez v13, :L127
    goto :L128
  :L127
    move-object v11, v13
  :L128
  .line 132
    iget-object v7, v11, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v2, v7, v2
    invoke-virtual { v2 }, Lc/e/b/k/d;->e()I
    move-result v7
  .line 133
    iget-object v2, v0, Lc/e/b/k/d;->i:Lc/e/b/i;
    iget-object v8, v1, Lc/e/b/k/d;->i:Lc/e/b/i;
    const/4 v10, 5
    move-object/from16 v0, p1
    move-object v1, v2
    move-object v2, v3
    move v3, v6
    move-object v6, v8
    move v8, v10
    invoke-virtual/range { v0 .. v8 }, Lc/e/b/d;->c(Lc/e/b/i;Lc/e/b/i;IFLc/e/b/i;Lc/e/b/i;II)V
  :L129
    return-void
.end method

.method public static b(Lc/e/b/k/f;Lc/e/b/d;Ljava/util/ArrayList;I)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lc/e/b/k/f;",
      "Lc/e/b/d;",
      "Ljava/util/ArrayList<",
      "Lc/e/b/k/e;",
      ">;I)V"
    }
  .end annotation
  .registers 10
    const/4 v0, 0
    if-nez p3, :L0
  .line 1
    iget v1, p0, Lc/e/b/k/f;->y0:I
  .line 2
    iget-object v2, p0, Lc/e/b/k/f;->B0:[Lc/e/b/k/c;
    move-object v3, v2
    const/4 v2, 0
    goto :L1
  :L0
    const/4 v1, 2
  .line 3
    iget v2, p0, Lc/e/b/k/f;->z0:I
  .line 4
    iget-object v3, p0, Lc/e/b/k/f;->A0:[Lc/e/b/k/c;
    move v1, v2
    const/4 v2, 2
  :L1
    if-ge v0, v1, :L4
  .line 5
    aget-object v4, v3, v0
  .line 6
    invoke-virtual { v4 }, Lc/e/b/k/c;->a()V
    if-eqz p2, :L2
    if-eqz p2, :L3
  .line 7
    iget-object v5, v4, Lc/e/b/k/c;->a:Lc/e/b/k/e;
    invoke-virtual { p2, v5 }, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v5
    if-eqz v5, :L3
  :L2
  .line 8
    invoke-static { p0, p1, p3, v2, v4 }, Lc/e/b/k/b;->a(Lc/e/b/k/f;Lc/e/b/d;IILc/e/b/k/c;)V
  :L3
    add-int/lit8 v0, v0, 1
    goto :L1
  :L4
    return-void
.end method
