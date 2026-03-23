.class public Lc/e/b/k/m/c;
.super Lc/e/b/k/m/p;
.source "SourceFile"

.field k:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Lc/e/b/k/m/p;",
      ">;"
    }
  .end annotation
.end field

.field private l:I

.method public constructor <init>(Lc/e/b/k/e;I)V
  .registers 3
  .line 1
    invoke-direct { p0, p1 }, Lc/e/b/k/m/p;-><init>(Lc/e/b/k/e;)V
  .line 2
    new-instance p1, Ljava/util/ArrayList;
    invoke-direct { p1 }, Ljava/util/ArrayList;-><init>()V
    iput-object p1, p0, Lc/e/b/k/m/c;->k:Ljava/util/ArrayList;
  .line 3
    iput p2, p0, Lc/e/b/k/m/p;->f:I
  .line 4
    invoke-direct { p0 }, Lc/e/b/k/m/c;->q()V
    return-void
.end method

.method private q()V
  .registers 6
  .line 1
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
  .line 2
    iget v1, p0, Lc/e/b/k/m/p;->f:I
    invoke-virtual { v0, v1 }, Lc/e/b/k/e;->J(I)Lc/e/b/k/e;
    move-result-object v1
  :L0
    move-object v4, v1
    move-object v1, v0
    move-object v0, v4
    if-eqz v0, :L1
  .line 3
    iget v1, p0, Lc/e/b/k/m/p;->f:I
    invoke-virtual { v0, v1 }, Lc/e/b/k/e;->J(I)Lc/e/b/k/e;
    move-result-object v1
    goto :L0
  :L1
  .line 4
    iput-object v1, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
  .line 5
    iget-object v0, p0, Lc/e/b/k/m/c;->k:Ljava/util/ArrayList;
    iget v2, p0, Lc/e/b/k/m/p;->f:I
    invoke-virtual { v1, v2 }, Lc/e/b/k/e;->L(I)Lc/e/b/k/m/p;
    move-result-object v2
    invoke-virtual { v0, v2 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 6
    iget v0, p0, Lc/e/b/k/m/p;->f:I
    invoke-virtual { v1, v0 }, Lc/e/b/k/e;->H(I)Lc/e/b/k/e;
    move-result-object v0
  :L2
    if-eqz v0, :L3
  .line 7
    iget-object v1, p0, Lc/e/b/k/m/c;->k:Ljava/util/ArrayList;
    iget v2, p0, Lc/e/b/k/m/p;->f:I
    invoke-virtual { v0, v2 }, Lc/e/b/k/e;->L(I)Lc/e/b/k/m/p;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 8
    iget v1, p0, Lc/e/b/k/m/p;->f:I
    invoke-virtual { v0, v1 }, Lc/e/b/k/e;->H(I)Lc/e/b/k/e;
    move-result-object v0
    goto :L2
  :L3
  .line 9
    iget-object v0, p0, Lc/e/b/k/m/c;->k:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L4
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    const/4 v2, 1
    if-eqz v1, :L6
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lc/e/b/k/m/p;
  .line 10
    iget v3, p0, Lc/e/b/k/m/p;->f:I
    if-nez v3, :L5
  .line 11
    iget-object v1, v1, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iput-object p0, v1, Lc/e/b/k/e;->b:Lc/e/b/k/m/c;
    goto :L4
  :L5
    if-ne v3, v2, :L4
  .line 12
    iget-object v1, v1, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iput-object p0, v1, Lc/e/b/k/e;->c:Lc/e/b/k/m/c;
    goto :L4
  :L6
  .line 13
    iget v0, p0, Lc/e/b/k/m/p;->f:I
    if-nez v0, :L7
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    invoke-virtual { v0 }, Lc/e/b/k/e;->I()Lc/e/b/k/e;
    move-result-object v0
    check-cast v0, Lc/e/b/k/f;
    invoke-virtual { v0 }, Lc/e/b/k/f;->x1()Z
    move-result v0
    if-eqz v0, :L7
    const/4 v0, 1
    goto :L8
  :L7
    const/4 v0, 0
  :L8
    if-eqz v0, :L9
  .line 14
    iget-object v0, p0, Lc/e/b/k/m/c;->k:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    if-le v0, v2, :L9
  .line 15
    iget-object v0, p0, Lc/e/b/k/m/c;->k:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v1
    sub-int/2addr v1, v2
    invoke-virtual { v0, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/e/b/k/m/p;
    iget-object v0, v0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iput-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
  :L9
  .line 16
    iget v0, p0, Lc/e/b/k/m/p;->f:I
    if-nez v0, :L10
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    invoke-virtual { v0 }, Lc/e/b/k/e;->x()I
    move-result v0
    goto :L11
  :L10
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    invoke-virtual { v0 }, Lc/e/b/k/e;->N()I
    move-result v0
  :L11
    iput v0, p0, Lc/e/b/k/m/c;->l:I
    return-void
.end method

.method private r()Lc/e/b/k/e;
  .registers 5
    const/4 v0, 0
  :L0
  .line 1
    iget-object v1, p0, Lc/e/b/k/m/c;->k:Ljava/util/ArrayList;
    invoke-virtual { v1 }, Ljava/util/ArrayList;->size()I
    move-result v1
    if-ge v0, v1, :L2
  .line 2
    iget-object v1, p0, Lc/e/b/k/m/c;->k:Ljava/util/ArrayList;
    invoke-virtual { v1, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lc/e/b/k/m/p;
  .line 3
    iget-object v2, v1, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    invoke-virtual { v2 }, Lc/e/b/k/e;->Q()I
    move-result v2
    const/16 v3, 8
    if-eq v2, v3, :L1
  .line 4
    iget-object v0, v1, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    return-object v0
  :L1
    add-int/lit8 v0, v0, 1
    goto :L0
  :L2
    const/4 v0, 0
    return-object v0
.end method

.method private s()Lc/e/b/k/e;
  .registers 5
  .line 1
    iget-object v0, p0, Lc/e/b/k/m/c;->k:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    add-int/lit8 v0, v0, -1
  :L0
    if-ltz v0, :L2
  .line 2
    iget-object v1, p0, Lc/e/b/k/m/c;->k:Ljava/util/ArrayList;
    invoke-virtual { v1, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lc/e/b/k/m/p;
  .line 3
    iget-object v2, v1, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    invoke-virtual { v2 }, Lc/e/b/k/e;->Q()I
    move-result v2
    const/16 v3, 8
    if-eq v2, v3, :L1
  .line 4
    iget-object v0, v1, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    return-object v0
  :L1
    add-int/lit8 v0, v0, -1
    goto :L0
  :L2
    const/4 v0, 0
    return-object v0
.end method

.method public a(Lc/e/b/k/m/d;)V
  .registers 24
    move-object/from16 v0, p0
  .line 1
    iget-object v1, v0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-boolean v1, v1, Lc/e/b/k/m/f;->j:Z
    if-eqz v1, :L123
    iget-object v1, v0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-boolean v1, v1, Lc/e/b/k/m/f;->j:Z
    if-nez v1, :L0
    goto/16 :L123
  :L0
  .line 2
    iget-object v1, v0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    invoke-virtual { v1 }, Lc/e/b/k/e;->I()Lc/e/b/k/e;
    move-result-object v1
    if-eqz v1, :L1
  .line 3
    instance-of v3, v1, Lc/e/b/k/f;
    if-eqz v3, :L1
  .line 4
    check-cast v1, Lc/e/b/k/f;
    invoke-virtual { v1 }, Lc/e/b/k/f;->x1()Z
    move-result v1
    goto :L2
  :L1
    const/4 v1, 0
  :L2
  .line 5
    iget-object v3, v0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget v3, v3, Lc/e/b/k/m/f;->g:I
    iget-object v4, v0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget v4, v4, Lc/e/b/k/m/f;->g:I
    sub-int/2addr v3, v4
  .line 6
    iget-object v4, v0, Lc/e/b/k/m/c;->k:Ljava/util/ArrayList;
    invoke-virtual { v4 }, Ljava/util/ArrayList;->size()I
    move-result v4
    const/4 v5, 0
  :L3
    const/4 v6, -1
    const/16 v7, 8
    if-ge v5, v4, :L4
  .line 7
    iget-object v8, v0, Lc/e/b/k/m/c;->k:Ljava/util/ArrayList;
    invoke-virtual { v8, v5 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v8
    check-cast v8, Lc/e/b/k/m/p;
  .line 8
    iget-object v8, v8, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    invoke-virtual { v8 }, Lc/e/b/k/e;->Q()I
    move-result v8
    if-ne v8, v7, :L5
    add-int/lit8 v5, v5, 1
    goto :L3
  :L4
    const/4 v5, -1
  :L5
    add-int/lit8 v8, v4, -1
    move v9, v8
  :L6
    if-ltz v9, :L8
  .line 9
    iget-object v10, v0, Lc/e/b/k/m/c;->k:Ljava/util/ArrayList;
    invoke-virtual { v10, v9 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v10
    check-cast v10, Lc/e/b/k/m/p;
  .line 10
    iget-object v10, v10, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    invoke-virtual { v10 }, Lc/e/b/k/e;->Q()I
    move-result v10
    if-ne v10, v7, :L7
    add-int/lit8 v9, v9, -1
    goto :L6
  :L7
    move v6, v9
  :L8
    const/4 v9, 0
  :L9
    const/4 v11, 2
    const/4 v12, 1
    if-ge v9, v11, :L26
    const/4 v13, 0
    const/4 v14, 0
    const/4 v15, 0
    const/16 v16, 0
    const/16 v17, 0
  :L10
    if-ge v13, v4, :L23
  .line 11
    iget-object v2, v0, Lc/e/b/k/m/c;->k:Ljava/util/ArrayList;
    invoke-virtual { v2, v13 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lc/e/b/k/m/p;
  .line 12
    iget-object v11, v2, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    invoke-virtual { v11 }, Lc/e/b/k/e;->Q()I
    move-result v11
    if-ne v11, v7, :L11
    goto/16 :L22
  :L11
    add-int/lit8 v16, v16, 1
    if-lez v13, :L12
    if-lt v13, v5, :L12
  .line 13
    iget-object v11, v2, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget v11, v11, Lc/e/b/k/m/f;->f:I
    add-int/2addr v14, v11
  :L12
  .line 14
    iget-object v11, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget v11, v11, Lc/e/b/k/m/f;->g:I
  .line 15
    iget-object v7, v2, Lc/e/b/k/m/p;->d:Lc/e/b/k/e$b;
    sget-object v10, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-eq v7, v10, :L13
    const/4 v7, 1
    goto :L14
  :L13
    const/4 v7, 0
  :L14
    if-eqz v7, :L16
  .line 16
    iget v10, v0, Lc/e/b/k/m/p;->f:I
    if-nez v10, :L15
    iget-object v10, v2, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v10, v10, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v10, v10, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget-boolean v10, v10, Lc/e/b/k/m/f;->j:Z
    if-nez v10, :L15
    return-void
  :L15
  .line 17
    iget v10, v0, Lc/e/b/k/m/p;->f:I
    if-ne v10, v12, :L19
    iget-object v10, v2, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v10, v10, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v10, v10, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget-boolean v10, v10, Lc/e/b/k/m/f;->j:Z
    if-nez v10, :L19
    return-void
  :L16
  .line 18
    iget v10, v2, Lc/e/b/k/m/p;->a:I
    if-ne v10, v12, :L17
    if-nez v9, :L17
  .line 19
    iget-object v7, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget v11, v7, Lc/e/b/k/m/g;->m:I
    add-int/lit8 v15, v15, 1
    goto :L18
  :L17
  .line 20
    iget-object v10, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget-boolean v10, v10, Lc/e/b/k/m/f;->j:Z
    if-eqz v10, :L19
  :L18
    const/4 v7, 1
  :L19
    if-nez v7, :L20
    add-int/lit8 v15, v15, 1
  .line 21
    iget-object v7, v2, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v7, v7, Lc/e/b/k/e;->j0:[F
    iget v10, v0, Lc/e/b/k/m/p;->f:I
    aget v7, v7, v10
    const/4 v10, 0
    cmpl-float v11, v7, v10
    if-ltz v11, :L21
    add-float v17, v17, v7
    goto :L21
  :L20
    add-int/2addr v14, v11
  :L21
    if-ge v13, v8, :L22
    if-ge v13, v6, :L22
  .line 22
    iget-object v2, v2, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget v2, v2, Lc/e/b/k/m/f;->f:I
    neg-int v2, v2
    add-int/2addr v14, v2
  :L22
    add-int/lit8 v13, v13, 1
    const/16 v7, 8
    const/4 v11, 2
    goto/16 :L10
  :L23
    if-lt v14, v3, :L25
    if-nez v15, :L24
    goto :L25
  :L24
    add-int/lit8 v9, v9, 1
    const/16 v7, 8
    goto/16 :L9
  :L25
    move/from16 v2, v16
    goto :L27
  :L26
    const/4 v2, 0
    const/4 v14, 0
    const/4 v15, 0
    const/16 v17, 0
  :L27
  .line 23
    iget-object v7, v0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget v7, v7, Lc/e/b/k/m/f;->g:I
    if-eqz v1, :L28
  .line 24
    iget-object v7, v0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget v7, v7, Lc/e/b/k/m/f;->g:I
  :L28
    const/high16 v9, 16128
    if-le v14, v3, :L30
    const/high16 v10, 16384
    if-eqz v1, :L29
    sub-int v11, v14, v3
    int-to-float v11, v11
    div-float/2addr v11, v10
    add-float/2addr v11, v9
    float-to-int v10, v11
    add-int/2addr v7, v10
    goto :L30
  :L29
    sub-int v11, v14, v3
    int-to-float v11, v11
    div-float/2addr v11, v10
    add-float/2addr v11, v9
    float-to-int v10, v11
    sub-int/2addr v7, v10
  :L30
    if-lez v15, :L55
    sub-int v10, v3, v14
    int-to-float v10, v10
    int-to-float v11, v15
    div-float v11, v10, v11
    add-float/2addr v11, v9
    float-to-int v11, v11
    const/4 v13, 0
    const/16 v16, 0
  :L31
    if-ge v13, v4, :L46
  .line 25
    iget-object v12, v0, Lc/e/b/k/m/c;->k:Ljava/util/ArrayList;
    invoke-virtual { v12, v13 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v12
    check-cast v12, Lc/e/b/k/m/p;
  .line 26
    iget-object v9, v12, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    invoke-virtual { v9 }, Lc/e/b/k/e;->Q()I
    move-result v9
    move/from16 v18, v11
    const/16 v11, 8
    if-ne v9, v11, :L32
    goto/16 :L44
  :L32
  .line 27
    iget-object v9, v12, Lc/e/b/k/m/p;->d:Lc/e/b/k/e$b;
    sget-object v11, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v9, v11, :L44
    iget-object v9, v12, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget-boolean v9, v9, Lc/e/b/k/m/f;->j:Z
    if-nez v9, :L44
    const/4 v9, 0
    cmpl-float v11, v17, v9
    if-lez v11, :L33
  .line 28
    iget-object v11, v12, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v11, v11, Lc/e/b/k/e;->j0:[F
    iget v9, v0, Lc/e/b/k/m/p;->f:I
    aget v9, v11, v9
    mul-float v9, v9, v10
    div-float v9, v9, v17
    const/high16 v11, 16128
    add-float/2addr v9, v11
    float-to-int v9, v9
    goto :L34
  :L33
    move/from16 v9, v18
  :L34
  .line 29
    iget v11, v0, Lc/e/b/k/m/p;->f:I
    if-nez v11, :L38
  .line 30
    iget-object v11, v12, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    move/from16 v19, v10
    iget v10, v11, Lc/e/b/k/e;->r:I
  .line 31
    iget v11, v11, Lc/e/b/k/e;->q:I
    move/from16 v20, v14
  .line 32
    iget v14, v12, Lc/e/b/k/m/p;->a:I
    move/from16 v21, v7
    const/4 v7, 1
    if-ne v14, v7, :L35
  .line 33
    iget-object v7, v12, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget v7, v7, Lc/e/b/k/m/g;->m:I
    invoke-static { v9, v7 }, Ljava/lang/Math;->min(II)I
    move-result v7
    goto :L36
  :L35
    move v7, v9
  :L36
  .line 34
    invoke-static { v11, v7 }, Ljava/lang/Math;->max(II)I
    move-result v7
    if-lez v10, :L37
  .line 35
    invoke-static { v10, v7 }, Ljava/lang/Math;->min(II)I
    move-result v7
  :L37
    if-eq v7, v9, :L43
    goto :L42
  :L38
    move/from16 v21, v7
    move/from16 v19, v10
    move/from16 v20, v14
  .line 36
    iget-object v7, v12, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget v10, v7, Lc/e/b/k/e;->u:I
  .line 37
    iget v7, v7, Lc/e/b/k/e;->t:I
  .line 38
    iget v11, v12, Lc/e/b/k/m/p;->a:I
    const/4 v14, 1
    if-ne v11, v14, :L39
  .line 39
    iget-object v11, v12, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget v11, v11, Lc/e/b/k/m/g;->m:I
    invoke-static { v9, v11 }, Ljava/lang/Math;->min(II)I
    move-result v11
    goto :L40
  :L39
    move v11, v9
  :L40
  .line 40
    invoke-static { v7, v11 }, Ljava/lang/Math;->max(II)I
    move-result v7
    if-lez v10, :L41
  .line 41
    invoke-static { v10, v7 }, Ljava/lang/Math;->min(II)I
    move-result v7
  :L41
    if-eq v7, v9, :L43
  :L42
    add-int/lit8 v16, v16, 1
    move v9, v7
  :L43
  .line 42
    iget-object v7, v12, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v7, v9 }, Lc/e/b/k/m/g;->d(I)V
    goto :L45
  :L44
    move/from16 v21, v7
    move/from16 v19, v10
    move/from16 v20, v14
  :L45
    add-int/lit8 v13, v13, 1
    move/from16 v11, v18
    move/from16 v10, v19
    move/from16 v14, v20
    move/from16 v7, v21
    const/high16 v9, 16128
    const/4 v12, 1
    goto/16 :L31
  :L46
    move/from16 v21, v7
    move/from16 v20, v14
    if-lez v16, :L52
    sub-int v15, v15, v16
    const/4 v7, 0
    const/4 v9, 0
  :L47
    if-ge v7, v4, :L51
  .line 43
    iget-object v10, v0, Lc/e/b/k/m/c;->k:Ljava/util/ArrayList;
    invoke-virtual { v10, v7 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v10
    check-cast v10, Lc/e/b/k/m/p;
  .line 44
    iget-object v11, v10, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    invoke-virtual { v11 }, Lc/e/b/k/e;->Q()I
    move-result v11
    const/16 v12, 8
    if-ne v11, v12, :L48
    goto :L50
  :L48
    if-lez v7, :L49
    if-lt v7, v5, :L49
  .line 45
    iget-object v11, v10, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget v11, v11, Lc/e/b/k/m/f;->f:I
    add-int/2addr v9, v11
  :L49
  .line 46
    iget-object v11, v10, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget v11, v11, Lc/e/b/k/m/f;->g:I
    add-int/2addr v9, v11
    if-ge v7, v8, :L50
    if-ge v7, v6, :L50
  .line 47
    iget-object v10, v10, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget v10, v10, Lc/e/b/k/m/f;->f:I
    neg-int v10, v10
    add-int/2addr v9, v10
  :L50
    add-int/lit8 v7, v7, 1
    goto :L47
  :L51
    move v14, v9
    goto :L53
  :L52
    move/from16 v14, v20
  :L53
  .line 48
    iget v7, v0, Lc/e/b/k/m/c;->l:I
    const/4 v9, 2
    if-ne v7, v9, :L54
    if-nez v16, :L54
    const/4 v7, 0
  .line 49
    iput v7, v0, Lc/e/b/k/m/c;->l:I
    goto :L56
  :L54
    const/4 v7, 0
    goto :L56
  :L55
    move/from16 v21, v7
    move/from16 v20, v14
    const/4 v7, 0
    const/4 v9, 2
  :L56
    if-le v14, v3, :L57
  .line 50
    iput v9, v0, Lc/e/b/k/m/c;->l:I
  :L57
    if-lez v2, :L58
    if-nez v15, :L58
    if-ne v5, v6, :L58
  .line 51
    iput v9, v0, Lc/e/b/k/m/c;->l:I
  :L58
  .line 52
    iget v9, v0, Lc/e/b/k/m/c;->l:I
    const/4 v10, 1
    if-ne v9, v10, :L80
    if-le v2, v10, :L59
    sub-int/2addr v3, v14
    sub-int/2addr v2, v10
  .line 53
    div-int/2addr v3, v2
    goto :L61
  :L59
    if-ne v2, v10, :L60
    sub-int/2addr v3, v14
    const/4 v2, 2
  .line 54
    div-int/2addr v3, v2
    goto :L61
  :L60
    const/4 v3, 0
  :L61
    if-lez v15, :L62
    const/4 v3, 0
  :L62
    move/from16 v7, v21
    const/4 v2, 0
  :L63
    if-ge v2, v4, :L123
    if-eqz v1, :L64
    add-int/lit8 v9, v2, 1
    sub-int v9, v4, v9
    goto :L65
  :L64
    move v9, v2
  :L65
  .line 55
    iget-object v10, v0, Lc/e/b/k/m/c;->k:Ljava/util/ArrayList;
    invoke-virtual { v10, v9 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v9
    check-cast v9, Lc/e/b/k/m/p;
  .line 56
    iget-object v10, v9, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    invoke-virtual { v10 }, Lc/e/b/k/e;->Q()I
    move-result v10
    const/16 v11, 8
    if-ne v10, v11, :L66
  .line 57
    iget-object v10, v9, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    invoke-virtual { v10, v7 }, Lc/e/b/k/m/f;->d(I)V
  .line 58
    iget-object v9, v9, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    invoke-virtual { v9, v7 }, Lc/e/b/k/m/f;->d(I)V
    goto :L79
  :L66
    if-lez v2, :L68
    if-eqz v1, :L67
    sub-int/2addr v7, v3
    goto :L68
  :L67
    add-int/2addr v7, v3
  :L68
    if-lez v2, :L70
    if-lt v2, v5, :L70
    if-eqz v1, :L69
  .line 59
    iget-object v10, v9, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget v10, v10, Lc/e/b/k/m/f;->f:I
    sub-int/2addr v7, v10
    goto :L70
  :L69
  .line 60
    iget-object v10, v9, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget v10, v10, Lc/e/b/k/m/f;->f:I
    add-int/2addr v7, v10
  :L70
    if-eqz v1, :L71
  .line 61
    iget-object v10, v9, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    invoke-virtual { v10, v7 }, Lc/e/b/k/m/f;->d(I)V
    goto :L72
  :L71
  .line 62
    iget-object v10, v9, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    invoke-virtual { v10, v7 }, Lc/e/b/k/m/f;->d(I)V
  :L72
  .line 63
    iget-object v10, v9, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget v11, v10, Lc/e/b/k/m/f;->g:I
  .line 64
    iget-object v12, v9, Lc/e/b/k/m/p;->d:Lc/e/b/k/e$b;
    sget-object v13, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v12, v13, :L73
    iget v12, v9, Lc/e/b/k/m/p;->a:I
    const/4 v13, 1
    if-ne v12, v13, :L73
  .line 65
    iget v11, v10, Lc/e/b/k/m/g;->m:I
  :L73
    if-eqz v1, :L74
    sub-int/2addr v7, v11
    goto :L75
  :L74
    add-int/2addr v7, v11
  :L75
    if-eqz v1, :L76
  .line 66
    iget-object v10, v9, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    invoke-virtual { v10, v7 }, Lc/e/b/k/m/f;->d(I)V
    goto :L77
  :L76
  .line 67
    iget-object v10, v9, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    invoke-virtual { v10, v7 }, Lc/e/b/k/m/f;->d(I)V
  :L77
    const/4 v10, 1
  .line 68
    iput-boolean v10, v9, Lc/e/b/k/m/p;->g:Z
    if-ge v2, v8, :L79
    if-ge v2, v6, :L79
    if-eqz v1, :L78
  .line 69
    iget-object v9, v9, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget v9, v9, Lc/e/b/k/m/f;->f:I
    neg-int v9, v9
    sub-int/2addr v7, v9
    goto :L79
  :L78
  .line 70
    iget-object v9, v9, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget v9, v9, Lc/e/b/k/m/f;->f:I
    neg-int v9, v9
    add-int/2addr v7, v9
  :L79
    add-int/lit8 v2, v2, 1
    goto/16 :L63
  :L80
    if-nez v9, :L99
    sub-int/2addr v3, v14
    const/4 v9, 1
    add-int/2addr v2, v9
  .line 71
    div-int/2addr v3, v2
    if-lez v15, :L81
    const/4 v3, 0
  :L81
    move/from16 v7, v21
    const/4 v2, 0
  :L82
    if-ge v2, v4, :L123
    if-eqz v1, :L83
    add-int/lit8 v9, v2, 1
    sub-int v9, v4, v9
    goto :L84
  :L83
    move v9, v2
  :L84
  .line 72
    iget-object v10, v0, Lc/e/b/k/m/c;->k:Ljava/util/ArrayList;
    invoke-virtual { v10, v9 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v9
    check-cast v9, Lc/e/b/k/m/p;
  .line 73
    iget-object v10, v9, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    invoke-virtual { v10 }, Lc/e/b/k/e;->Q()I
    move-result v10
    const/16 v11, 8
    if-ne v10, v11, :L85
  .line 74
    iget-object v10, v9, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    invoke-virtual { v10, v7 }, Lc/e/b/k/m/f;->d(I)V
  .line 75
    iget-object v9, v9, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    invoke-virtual { v9, v7 }, Lc/e/b/k/m/f;->d(I)V
    goto :L98
  :L85
    if-eqz v1, :L86
    sub-int/2addr v7, v3
    goto :L87
  :L86
    add-int/2addr v7, v3
  :L87
    if-lez v2, :L89
    if-lt v2, v5, :L89
    if-eqz v1, :L88
  .line 76
    iget-object v10, v9, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget v10, v10, Lc/e/b/k/m/f;->f:I
    sub-int/2addr v7, v10
    goto :L89
  :L88
  .line 77
    iget-object v10, v9, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget v10, v10, Lc/e/b/k/m/f;->f:I
    add-int/2addr v7, v10
  :L89
    if-eqz v1, :L90
  .line 78
    iget-object v10, v9, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    invoke-virtual { v10, v7 }, Lc/e/b/k/m/f;->d(I)V
    goto :L91
  :L90
  .line 79
    iget-object v10, v9, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    invoke-virtual { v10, v7 }, Lc/e/b/k/m/f;->d(I)V
  :L91
  .line 80
    iget-object v10, v9, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget v11, v10, Lc/e/b/k/m/f;->g:I
  .line 81
    iget-object v12, v9, Lc/e/b/k/m/p;->d:Lc/e/b/k/e$b;
    sget-object v13, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v12, v13, :L92
    iget v12, v9, Lc/e/b/k/m/p;->a:I
    const/4 v13, 1
    if-ne v12, v13, :L92
  .line 82
    iget v10, v10, Lc/e/b/k/m/g;->m:I
    invoke-static { v11, v10 }, Ljava/lang/Math;->min(II)I
    move-result v11
  :L92
    if-eqz v1, :L93
    sub-int/2addr v7, v11
    goto :L94
  :L93
    add-int/2addr v7, v11
  :L94
    if-eqz v1, :L95
  .line 83
    iget-object v10, v9, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    invoke-virtual { v10, v7 }, Lc/e/b/k/m/f;->d(I)V
    goto :L96
  :L95
  .line 84
    iget-object v10, v9, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    invoke-virtual { v10, v7 }, Lc/e/b/k/m/f;->d(I)V
  :L96
    if-ge v2, v8, :L98
    if-ge v2, v6, :L98
    if-eqz v1, :L97
  .line 85
    iget-object v9, v9, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget v9, v9, Lc/e/b/k/m/f;->f:I
    neg-int v9, v9
    sub-int/2addr v7, v9
    goto :L98
  :L97
  .line 86
    iget-object v9, v9, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget v9, v9, Lc/e/b/k/m/f;->f:I
    neg-int v9, v9
    add-int/2addr v7, v9
  :L98
    add-int/lit8 v2, v2, 1
    goto/16 :L82
  :L99
    const/4 v2, 2
    if-ne v9, v2, :L123
  .line 87
    iget v2, v0, Lc/e/b/k/m/p;->f:I
    if-nez v2, :L100
    iget-object v2, v0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    invoke-virtual { v2 }, Lc/e/b/k/e;->w()F
    move-result v2
    goto :L101
  :L100
    iget-object v2, v0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
  .line 88
    invoke-virtual { v2 }, Lc/e/b/k/e;->M()F
    move-result v2
  :L101
    if-eqz v1, :L102
    const/high16 v9, 16256
    sub-float v2, v9, v2
  :L102
    sub-int/2addr v3, v14
    int-to-float v3, v3
    mul-float v3, v3, v2
    const/high16 v2, 16128
    add-float/2addr v3, v2
    float-to-int v2, v3
    if-ltz v2, :L103
    if-lez v15, :L104
  :L103
    const/4 v2, 0
  :L104
    if-eqz v1, :L105
    sub-int v2, v21, v2
    goto :L106
  :L105
    add-int v2, v21, v2
  :L106
    move v3, v2
    const/4 v2, 0
  :L107
    if-ge v2, v4, :L123
    if-eqz v1, :L108
    add-int/lit8 v7, v2, 1
    sub-int v7, v4, v7
    goto :L109
  :L108
    move v7, v2
  :L109
  .line 89
    iget-object v9, v0, Lc/e/b/k/m/c;->k:Ljava/util/ArrayList;
    invoke-virtual { v9, v7 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Lc/e/b/k/m/p;
  .line 90
    iget-object v9, v7, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    invoke-virtual { v9 }, Lc/e/b/k/e;->Q()I
    move-result v9
    const/16 v10, 8
    if-ne v9, v10, :L110
  .line 91
    iget-object v9, v7, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    invoke-virtual { v9, v3 }, Lc/e/b/k/m/f;->d(I)V
  .line 92
    iget-object v7, v7, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    invoke-virtual { v7, v3 }, Lc/e/b/k/m/f;->d(I)V
    const/4 v13, 1
    goto :L122
  :L110
    if-lez v2, :L112
    if-lt v2, v5, :L112
    if-eqz v1, :L111
  .line 93
    iget-object v9, v7, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget v9, v9, Lc/e/b/k/m/f;->f:I
    sub-int/2addr v3, v9
    goto :L112
  :L111
  .line 94
    iget-object v9, v7, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget v9, v9, Lc/e/b/k/m/f;->f:I
    add-int/2addr v3, v9
  :L112
    if-eqz v1, :L113
  .line 95
    iget-object v9, v7, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    invoke-virtual { v9, v3 }, Lc/e/b/k/m/f;->d(I)V
    goto :L114
  :L113
  .line 96
    iget-object v9, v7, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    invoke-virtual { v9, v3 }, Lc/e/b/k/m/f;->d(I)V
  :L114
  .line 97
    iget-object v9, v7, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget v11, v9, Lc/e/b/k/m/f;->g:I
  .line 98
    iget-object v12, v7, Lc/e/b/k/m/p;->d:Lc/e/b/k/e$b;
    sget-object v13, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v12, v13, :L115
    iget v12, v7, Lc/e/b/k/m/p;->a:I
    const/4 v13, 1
    if-ne v12, v13, :L116
  .line 99
    iget v11, v9, Lc/e/b/k/m/g;->m:I
    goto :L116
  :L115
    const/4 v13, 1
  :L116
    if-eqz v1, :L117
    sub-int/2addr v3, v11
    goto :L118
  :L117
    add-int/2addr v3, v11
  :L118
    if-eqz v1, :L119
  .line 100
    iget-object v9, v7, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    invoke-virtual { v9, v3 }, Lc/e/b/k/m/f;->d(I)V
    goto :L120
  :L119
  .line 101
    iget-object v9, v7, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    invoke-virtual { v9, v3 }, Lc/e/b/k/m/f;->d(I)V
  :L120
    if-ge v2, v8, :L122
    if-ge v2, v6, :L122
    if-eqz v1, :L121
  .line 102
    iget-object v7, v7, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget v7, v7, Lc/e/b/k/m/f;->f:I
    neg-int v7, v7
    sub-int/2addr v3, v7
    goto :L122
  :L121
  .line 103
    iget-object v7, v7, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget v7, v7, Lc/e/b/k/m/f;->f:I
    neg-int v7, v7
    add-int/2addr v3, v7
  :L122
    add-int/lit8 v2, v2, 1
    goto/16 :L107
  :L123
    return-void
.end method

.method d()V
  .registers 6
  .line 1
    iget-object v0, p0, Lc/e/b/k/m/c;->k:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lc/e/b/k/m/p;
  .line 2
    invoke-virtual { v1 }, Lc/e/b/k/m/p;->d()V
    goto :L0
  :L1
  .line 3
    iget-object v0, p0, Lc/e/b/k/m/c;->k:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 1
    if-ge v0, v1, :L2
    return-void
  :L2
  .line 4
    iget-object v2, p0, Lc/e/b/k/m/c;->k:Ljava/util/ArrayList;
    const/4 v3, 0
    invoke-virtual { v2, v3 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lc/e/b/k/m/p;
    iget-object v2, v2, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
  .line 5
    iget-object v4, p0, Lc/e/b/k/m/c;->k:Ljava/util/ArrayList;
    sub-int/2addr v0, v1
    invoke-virtual { v4, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/e/b/k/m/p;
    iget-object v0, v0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
  .line 6
    iget v4, p0, Lc/e/b/k/m/p;->f:I
    if-nez v4, :L6
  .line 7
    iget-object v1, v2, Lc/e/b/k/e;->F:Lc/e/b/k/d;
  .line 8
    iget-object v0, v0, Lc/e/b/k/e;->H:Lc/e/b/k/d;
  .line 9
    invoke-virtual { p0, v1, v3 }, Lc/e/b/k/m/p;->i(Lc/e/b/k/d;I)Lc/e/b/k/m/f;
    move-result-object v2
  .line 10
    invoke-virtual { v1 }, Lc/e/b/k/d;->e()I
    move-result v1
  .line 11
    invoke-direct { p0 }, Lc/e/b/k/m/c;->r()Lc/e/b/k/e;
    move-result-object v4
    if-eqz v4, :L3
  .line 12
    iget-object v1, v4, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    invoke-virtual { v1 }, Lc/e/b/k/d;->e()I
    move-result v1
  :L3
    if-eqz v2, :L4
  .line 13
    iget-object v4, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    invoke-virtual { p0, v4, v2, v1 }, Lc/e/b/k/m/p;->b(Lc/e/b/k/m/f;Lc/e/b/k/m/f;I)V
  :L4
  .line 14
    invoke-virtual { p0, v0, v3 }, Lc/e/b/k/m/p;->i(Lc/e/b/k/d;I)Lc/e/b/k/m/f;
    move-result-object v1
  .line 15
    invoke-virtual { v0 }, Lc/e/b/k/d;->e()I
    move-result v0
  .line 16
    invoke-direct { p0 }, Lc/e/b/k/m/c;->s()Lc/e/b/k/e;
    move-result-object v2
    if-eqz v2, :L5
  .line 17
    iget-object v0, v2, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    invoke-virtual { v0 }, Lc/e/b/k/d;->e()I
    move-result v0
  :L5
    if-eqz v1, :L10
  .line 18
    iget-object v2, p0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    neg-int v0, v0
    invoke-virtual { p0, v2, v1, v0 }, Lc/e/b/k/m/p;->b(Lc/e/b/k/m/f;Lc/e/b/k/m/f;I)V
    goto :L10
  :L6
  .line 19
    iget-object v2, v2, Lc/e/b/k/e;->G:Lc/e/b/k/d;
  .line 20
    iget-object v0, v0, Lc/e/b/k/e;->I:Lc/e/b/k/d;
  .line 21
    invoke-virtual { p0, v2, v1 }, Lc/e/b/k/m/p;->i(Lc/e/b/k/d;I)Lc/e/b/k/m/f;
    move-result-object v3
  .line 22
    invoke-virtual { v2 }, Lc/e/b/k/d;->e()I
    move-result v2
  .line 23
    invoke-direct { p0 }, Lc/e/b/k/m/c;->r()Lc/e/b/k/e;
    move-result-object v4
    if-eqz v4, :L7
  .line 24
    iget-object v2, v4, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    invoke-virtual { v2 }, Lc/e/b/k/d;->e()I
    move-result v2
  :L7
    if-eqz v3, :L8
  .line 25
    iget-object v4, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    invoke-virtual { p0, v4, v3, v2 }, Lc/e/b/k/m/p;->b(Lc/e/b/k/m/f;Lc/e/b/k/m/f;I)V
  :L8
  .line 26
    invoke-virtual { p0, v0, v1 }, Lc/e/b/k/m/p;->i(Lc/e/b/k/d;I)Lc/e/b/k/m/f;
    move-result-object v1
  .line 27
    invoke-virtual { v0 }, Lc/e/b/k/d;->e()I
    move-result v0
  .line 28
    invoke-direct { p0 }, Lc/e/b/k/m/c;->s()Lc/e/b/k/e;
    move-result-object v2
    if-eqz v2, :L9
  .line 29
    iget-object v0, v2, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    invoke-virtual { v0 }, Lc/e/b/k/d;->e()I
    move-result v0
  :L9
    if-eqz v1, :L10
  .line 30
    iget-object v2, p0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    neg-int v0, v0
    invoke-virtual { p0, v2, v1, v0 }, Lc/e/b/k/m/p;->b(Lc/e/b/k/m/f;Lc/e/b/k/m/f;I)V
  :L10
  .line 31
    iget-object v0, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iput-object p0, v0, Lc/e/b/k/m/f;->a:Lc/e/b/k/m/d;
  .line 32
    iget-object v0, p0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iput-object p0, v0, Lc/e/b/k/m/f;->a:Lc/e/b/k/m/d;
    return-void
.end method

.method public e()V
  .registers 3
    const/4 v0, 0
  :L0
  .line 1
    iget-object v1, p0, Lc/e/b/k/m/c;->k:Ljava/util/ArrayList;
    invoke-virtual { v1 }, Ljava/util/ArrayList;->size()I
    move-result v1
    if-ge v0, v1, :L1
  .line 2
    iget-object v1, p0, Lc/e/b/k/m/c;->k:Ljava/util/ArrayList;
    invoke-virtual { v1, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lc/e/b/k/m/p;
  .line 3
    invoke-virtual { v1 }, Lc/e/b/k/m/p;->e()V
    add-int/lit8 v0, v0, 1
    goto :L0
  :L1
    return-void
.end method

.method f()V
  .registers 3
    const/4 v0, 0
  .line 1
    iput-object v0, p0, Lc/e/b/k/m/p;->c:Lc/e/b/k/m/m;
  .line 2
    iget-object v0, p0, Lc/e/b/k/m/c;->k:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lc/e/b/k/m/p;
  .line 3
    invoke-virtual { v1 }, Lc/e/b/k/m/p;->f()V
    goto :L0
  :L1
    return-void
.end method

.method public j()J
  .registers 8
  .line 1
    iget-object v0, p0, Lc/e/b/k/m/c;->k:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const-wide/16 v1, 0
    const/4 v3, 0
  :L0
    if-ge v3, v0, :L1
  .line 2
    iget-object v4, p0, Lc/e/b/k/m/c;->k:Ljava/util/ArrayList;
    invoke-virtual { v4, v3 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lc/e/b/k/m/p;
  .line 3
    iget-object v5, v4, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget v5, v5, Lc/e/b/k/m/f;->f:I
    int-to-long v5, v5
    add-long/2addr v1, v5
  .line 4
    invoke-virtual { v4 }, Lc/e/b/k/m/p;->j()J
    move-result-wide v5
    add-long/2addr v1, v5
  .line 5
    iget-object v4, v4, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget v4, v4, Lc/e/b/k/m/f;->f:I
    int-to-long v4, v4
    add-long/2addr v1, v4
    add-int/lit8 v3, v3, 1
    goto :L0
  :L1
    return-wide v1
.end method

.method m()Z
  .registers 5
  .line 1
    iget-object v0, p0, Lc/e/b/k/m/c;->k:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L2
  .line 2
    iget-object v3, p0, Lc/e/b/k/m/c;->k:Ljava/util/ArrayList;
    invoke-virtual { v3, v2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lc/e/b/k/m/p;
  .line 3
    invoke-virtual { v3 }, Lc/e/b/k/m/p;->m()Z
    move-result v3
    if-nez v3, :L1
    return v1
  :L1
    add-int/lit8 v2, v2, 1
    goto :L0
  :L2
    const/4 v0, 1
    return v0
.end method

.method public toString()Ljava/lang/String;
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "ChainRun "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lc/e/b/k/m/p;->f:I
    if-nez v1, :L0
    const-string v1, "horizontal : "
    goto :L1
  :L0
    const-string v1, "vertical : "
  :L1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 2
    iget-object v1, p0, Lc/e/b/k/m/c;->k:Ljava/util/ArrayList;
    invoke-virtual { v1 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L2
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L3
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lc/e/b/k/m/p;
  .line 3
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "<"
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 4
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 5
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "> "
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    goto :L2
  :L3
    return-object v0
.end method
