.class public Lc/e/b/k/m/l;
.super Lc/e/b/k/m/p;
.source "SourceFile"

.field private static k:[I

.method static constructor <clinit>()V
  .registers 2
    const/4 v0, 2
    new-array v0, v0, [I
  .line 1
    sput-object v0, Lc/e/b/k/m/l;->k:[I
    return-void
.end method

.method public constructor <init>(Lc/e/b/k/e;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1 }, Lc/e/b/k/m/p;-><init>(Lc/e/b/k/e;)V
  .line 2
    iget-object p1, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    sget-object v0, Lc/e/b/k/m/f$a;->e:Lc/e/b/k/m/f$a;
    iput-object v0, p1, Lc/e/b/k/m/f;->e:Lc/e/b/k/m/f$a;
  .line 3
    iget-object p1, p0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    sget-object v0, Lc/e/b/k/m/f$a;->f:Lc/e/b/k/m/f$a;
    iput-object v0, p1, Lc/e/b/k/m/f;->e:Lc/e/b/k/m/f$a;
    const/4 p1, 0
  .line 4
    iput p1, p0, Lc/e/b/k/m/p;->f:I
    return-void
.end method

.method private q([IIIIIFI)V
  .registers 10
    sub-int/2addr p3, p2
    sub-int/2addr p5, p4
    const/4 p2, -1
    const/4 p4, 0
    const/high16 v0, 16128
    const/4 v1, 1
    if-eq p7, p2, :L2
    if-eqz p7, :L1
    if-eq p7, v1, :L0
    goto :L4
  :L0
    int-to-float p2, p3
    mul-float p2, p2, p6
    add-float/2addr p2, v0
    float-to-int p2, p2
  .line 1
    aput p3, p1, p4
  .line 2
    aput p2, p1, v1
    goto :L4
  :L1
    int-to-float p2, p5
    mul-float p2, p2, p6
    add-float/2addr p2, v0
    float-to-int p2, p2
  .line 3
    aput p2, p1, p4
  .line 4
    aput p5, p1, v1
    goto :L4
  :L2
    int-to-float p2, p5
    mul-float p2, p2, p6
    add-float/2addr p2, v0
    float-to-int p2, p2
    int-to-float p7, p3
    div-float/2addr p7, p6
    add-float/2addr p7, v0
    float-to-int p6, p7
    if-gt p2, p3, :L3
  .line 5
    aput p2, p1, p4
  .line 6
    aput p5, p1, v1
    goto :L4
  :L3
    if-gt p6, p5, :L4
  .line 7
    aput p3, p1, p4
  .line 8
    aput p6, p1, v1
  :L4
    return-void
.end method

.method public a(Lc/e/b/k/m/d;)V
  .registers 18
    move-object/from16 v8, p0
  .line 1
    sget-object v0, Lc/e/b/k/m/l$a;->a:[I
    iget-object v1, v8, Lc/e/b/k/m/p;->j:Lc/e/b/k/m/p$b;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    aget v0, v0, v1
    const/4 v1, 2
    const/4 v2, 3
    const/4 v9, 1
    const/4 v10, 0
    if-eq v0, v9, :L2
    if-eq v0, v1, :L1
    if-eq v0, v2, :L0
    goto :L3
  :L0
  .line 2
    iget-object v0, v8, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v1, v0, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    iget-object v0, v0, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    move-object/from16 v3, p1
    invoke-virtual { v8, v3, v1, v0, v10 }, Lc/e/b/k/m/p;->n(Lc/e/b/k/m/d;Lc/e/b/k/d;Lc/e/b/k/d;I)V
    return-void
  :L1
    move-object/from16 v3, p1
  .line 3
    invoke-virtual/range { p0 .. p1 }, Lc/e/b/k/m/p;->o(Lc/e/b/k/m/d;)V
    goto :L3
  :L2
    move-object/from16 v3, p1
  .line 4
    invoke-virtual/range { p0 .. p1 }, Lc/e/b/k/m/p;->p(Lc/e/b/k/m/d;)V
  :L3
  .line 5
    iget-object v0, v8, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget-boolean v0, v0, Lc/e/b/k/m/f;->j:Z
    const/high16 v11, 16128
    if-nez v0, :L44
  .line 6
    iget-object v0, v8, Lc/e/b/k/m/p;->d:Lc/e/b/k/e$b;
    sget-object v3, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v0, v3, :L44
  .line 7
    iget-object v0, v8, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget v3, v0, Lc/e/b/k/e;->n:I
    if-eq v3, v1, :L43
    if-eq v3, v2, :L4
    goto/16 :L44
  :L4
  .line 8
    iget v1, v0, Lc/e/b/k/e;->o:I
    const/4 v3, -1
    if-eqz v1, :L12
    if-ne v1, v2, :L5
    goto :L12
  :L5
  .line 9
    invoke-virtual { v0 }, Lc/e/b/k/e;->u()I
    move-result v0
    if-eq v0, v3, :L8
    if-eqz v0, :L7
    if-eq v0, v9, :L6
    const/4 v0, 0
    goto :L11
  :L6
  .line 10
    iget-object v0, v8, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v1, v0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v1, v1, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget v1, v1, Lc/e/b/k/m/f;->g:I
    int-to-float v1, v1
    invoke-virtual { v0 }, Lc/e/b/k/e;->t()F
    move-result v0
    goto :L9
  :L7
  .line 11
    iget-object v0, v8, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v1, v0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v1, v1, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget v1, v1, Lc/e/b/k/m/f;->g:I
    int-to-float v1, v1
    invoke-virtual { v0 }, Lc/e/b/k/e;->t()F
    move-result v0
    div-float/2addr v1, v0
    goto :L10
  :L8
  .line 12
    iget-object v0, v8, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v1, v0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v1, v1, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget v1, v1, Lc/e/b/k/m/f;->g:I
    int-to-float v1, v1
    invoke-virtual { v0 }, Lc/e/b/k/e;->t()F
    move-result v0
  :L9
    mul-float v1, v1, v0
  :L10
    add-float/2addr v1, v11
    float-to-int v0, v1
  :L11
  .line 13
    iget-object v1, v8, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v1, v0 }, Lc/e/b/k/m/g;->d(I)V
    goto/16 :L44
  :L12
  .line 14
    iget-object v0, v8, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v1, v0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v12, v1, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
  .line 15
    iget-object v13, v1, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
  .line 16
    iget-object v0, v0, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    iget-object v0, v0, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v0, :L13
    const/4 v0, 1
    goto :L14
  :L13
    const/4 v0, 0
  :L14
  .line 17
    iget-object v1, v8, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v1, v1, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v1, :L15
    const/4 v1, 1
    goto :L16
  :L15
    const/4 v1, 0
  :L16
  .line 18
    iget-object v2, v8, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v2, v2, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    iget-object v2, v2, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v2, :L17
    const/4 v2, 1
    goto :L18
  :L17
    const/4 v2, 0
  :L18
  .line 19
    iget-object v4, v8, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v4, v4, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    iget-object v4, v4, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v4, :L19
    const/4 v4, 1
    goto :L20
  :L19
    const/4 v4, 0
  :L20
  .line 20
    iget-object v5, v8, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    invoke-virtual { v5 }, Lc/e/b/k/e;->u()I
    move-result v14
    if-eqz v0, :L29
    if-eqz v1, :L29
    if-eqz v2, :L29
    if-eqz v4, :L29
  .line 21
    iget-object v0, v8, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    invoke-virtual { v0 }, Lc/e/b/k/e;->t()F
    move-result v15
  .line 22
    iget-boolean v0, v12, Lc/e/b/k/m/f;->j:Z
    if-eqz v0, :L23
    iget-boolean v0, v13, Lc/e/b/k/m/f;->j:Z
    if-eqz v0, :L23
  .line 23
    iget-object v0, v8, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-boolean v1, v0, Lc/e/b/k/m/f;->c:Z
    if-eqz v1, :L22
    iget-object v1, v8, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-boolean v1, v1, Lc/e/b/k/m/f;->c:Z
    if-nez v1, :L21
    goto :L22
  :L21
  .line 24
    iget-object v0, v0, Lc/e/b/k/m/f;->l:Ljava/util/List;
    invoke-interface { v0, v10 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/e/b/k/m/f;
    iget v0, v0, Lc/e/b/k/m/f;->g:I
    iget-object v1, v8, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget v1, v1, Lc/e/b/k/m/f;->f:I
    add-int v2, v0, v1
  .line 25
    iget-object v0, v8, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-object v0, v0, Lc/e/b/k/m/f;->l:Ljava/util/List;
    invoke-interface { v0, v10 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/e/b/k/m/f;
    iget v0, v0, Lc/e/b/k/m/f;->g:I
    iget-object v1, v8, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget v1, v1, Lc/e/b/k/m/f;->f:I
    sub-int v3, v0, v1
  .line 26
    iget v0, v12, Lc/e/b/k/m/f;->g:I
    iget v1, v12, Lc/e/b/k/m/f;->f:I
    add-int v4, v0, v1
  .line 27
    iget v0, v13, Lc/e/b/k/m/f;->g:I
    iget v1, v13, Lc/e/b/k/m/f;->f:I
    sub-int v5, v0, v1
  .line 28
    sget-object v1, Lc/e/b/k/m/l;->k:[I
    move-object/from16 v0, p0
    move v6, v15
    move v7, v14
    invoke-direct/range { v0 .. v7 }, Lc/e/b/k/m/l;->q([IIIIIFI)V
  .line 29
    iget-object v0, v8, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    sget-object v1, Lc/e/b/k/m/l;->k:[I
    aget v1, v1, v10
    invoke-virtual { v0, v1 }, Lc/e/b/k/m/g;->d(I)V
  .line 30
    iget-object v0, v8, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v0, v0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    sget-object v1, Lc/e/b/k/m/l;->k:[I
    aget v1, v1, v9
    invoke-virtual { v0, v1 }, Lc/e/b/k/m/g;->d(I)V
  :L22
    return-void
  :L23
  .line 31
    iget-object v0, v8, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-boolean v1, v0, Lc/e/b/k/m/f;->j:Z
    if-eqz v1, :L26
    iget-object v1, v8, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-boolean v2, v1, Lc/e/b/k/m/f;->j:Z
    if-eqz v2, :L26
  .line 32
    iget-boolean v2, v12, Lc/e/b/k/m/f;->c:Z
    if-eqz v2, :L25
    iget-boolean v2, v13, Lc/e/b/k/m/f;->c:Z
    if-nez v2, :L24
    goto :L25
  :L24
  .line 33
    iget v2, v0, Lc/e/b/k/m/f;->g:I
    iget v0, v0, Lc/e/b/k/m/f;->f:I
    add-int/2addr v2, v0
  .line 34
    iget v0, v1, Lc/e/b/k/m/f;->g:I
    iget v1, v1, Lc/e/b/k/m/f;->f:I
    sub-int v3, v0, v1
  .line 35
    iget-object v0, v12, Lc/e/b/k/m/f;->l:Ljava/util/List;
    invoke-interface { v0, v10 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/e/b/k/m/f;
    iget v0, v0, Lc/e/b/k/m/f;->g:I
    iget v1, v12, Lc/e/b/k/m/f;->f:I
    add-int v4, v0, v1
  .line 36
    iget-object v0, v13, Lc/e/b/k/m/f;->l:Ljava/util/List;
    invoke-interface { v0, v10 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/e/b/k/m/f;
    iget v0, v0, Lc/e/b/k/m/f;->g:I
    iget v1, v13, Lc/e/b/k/m/f;->f:I
    sub-int v5, v0, v1
  .line 37
    sget-object v1, Lc/e/b/k/m/l;->k:[I
    move-object/from16 v0, p0
    move v6, v15
    move v7, v14
    invoke-direct/range { v0 .. v7 }, Lc/e/b/k/m/l;->q([IIIIIFI)V
  .line 38
    iget-object v0, v8, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    sget-object v1, Lc/e/b/k/m/l;->k:[I
    aget v1, v1, v10
    invoke-virtual { v0, v1 }, Lc/e/b/k/m/g;->d(I)V
  .line 39
    iget-object v0, v8, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v0, v0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    sget-object v1, Lc/e/b/k/m/l;->k:[I
    aget v1, v1, v9
    invoke-virtual { v0, v1 }, Lc/e/b/k/m/g;->d(I)V
    goto :L26
  :L25
    return-void
  :L26
  .line 40
    iget-object v0, v8, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-boolean v1, v0, Lc/e/b/k/m/f;->c:Z
    if-eqz v1, :L28
    iget-object v1, v8, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-boolean v1, v1, Lc/e/b/k/m/f;->c:Z
    if-eqz v1, :L28
    iget-boolean v1, v12, Lc/e/b/k/m/f;->c:Z
    if-eqz v1, :L28
    iget-boolean v1, v13, Lc/e/b/k/m/f;->c:Z
    if-nez v1, :L27
    goto :L28
  :L27
  .line 41
    iget-object v0, v0, Lc/e/b/k/m/f;->l:Ljava/util/List;
    invoke-interface { v0, v10 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/e/b/k/m/f;
    iget v0, v0, Lc/e/b/k/m/f;->g:I
    iget-object v1, v8, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget v1, v1, Lc/e/b/k/m/f;->f:I
    add-int v2, v0, v1
  .line 42
    iget-object v0, v8, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-object v0, v0, Lc/e/b/k/m/f;->l:Ljava/util/List;
    invoke-interface { v0, v10 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/e/b/k/m/f;
    iget v0, v0, Lc/e/b/k/m/f;->g:I
    iget-object v1, v8, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget v1, v1, Lc/e/b/k/m/f;->f:I
    sub-int v3, v0, v1
  .line 43
    iget-object v0, v12, Lc/e/b/k/m/f;->l:Ljava/util/List;
    invoke-interface { v0, v10 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/e/b/k/m/f;
    iget v0, v0, Lc/e/b/k/m/f;->g:I
    iget v1, v12, Lc/e/b/k/m/f;->f:I
    add-int v4, v0, v1
  .line 44
    iget-object v0, v13, Lc/e/b/k/m/f;->l:Ljava/util/List;
    invoke-interface { v0, v10 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/e/b/k/m/f;
    iget v0, v0, Lc/e/b/k/m/f;->g:I
    iget v1, v13, Lc/e/b/k/m/f;->f:I
    sub-int v5, v0, v1
  .line 45
    sget-object v1, Lc/e/b/k/m/l;->k:[I
    move-object/from16 v0, p0
    move v6, v15
    move v7, v14
    invoke-direct/range { v0 .. v7 }, Lc/e/b/k/m/l;->q([IIIIIFI)V
  .line 46
    iget-object v0, v8, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    sget-object v1, Lc/e/b/k/m/l;->k:[I
    aget v1, v1, v10
    invoke-virtual { v0, v1 }, Lc/e/b/k/m/g;->d(I)V
  .line 47
    iget-object v0, v8, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v0, v0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    sget-object v1, Lc/e/b/k/m/l;->k:[I
    aget v1, v1, v9
    invoke-virtual { v0, v1 }, Lc/e/b/k/m/g;->d(I)V
    goto/16 :L44
  :L28
    return-void
  :L29
    if-eqz v0, :L36
    if-eqz v2, :L36
  .line 48
    iget-object v0, v8, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-boolean v0, v0, Lc/e/b/k/m/f;->c:Z
    if-eqz v0, :L35
    iget-object v0, v8, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-boolean v0, v0, Lc/e/b/k/m/f;->c:Z
    if-nez v0, :L30
    goto/16 :L35
  :L30
  .line 49
    iget-object v0, v8, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    invoke-virtual { v0 }, Lc/e/b/k/e;->t()F
    move-result v0
  .line 50
    iget-object v1, v8, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object v1, v1, Lc/e/b/k/m/f;->l:Ljava/util/List;
    invoke-interface { v1, v10 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lc/e/b/k/m/f;
    iget v1, v1, Lc/e/b/k/m/f;->g:I
    iget-object v2, v8, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget v2, v2, Lc/e/b/k/m/f;->f:I
    add-int/2addr v1, v2
  .line 51
    iget-object v2, v8, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-object v2, v2, Lc/e/b/k/m/f;->l:Ljava/util/List;
    invoke-interface { v2, v10 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lc/e/b/k/m/f;
    iget v2, v2, Lc/e/b/k/m/f;->g:I
    iget-object v4, v8, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget v4, v4, Lc/e/b/k/m/f;->f:I
    sub-int/2addr v2, v4
    if-eq v14, v3, :L33
    if-eqz v14, :L33
    if-eq v14, v9, :L31
    goto/16 :L44
  :L31
    sub-int/2addr v2, v1
  .line 52
    invoke-virtual { v8, v2, v10 }, Lc/e/b/k/m/p;->g(II)I
    move-result v1
    int-to-float v2, v1
    div-float/2addr v2, v0
    add-float/2addr v2, v11
    float-to-int v2, v2
  .line 53
    invoke-virtual { v8, v2, v9 }, Lc/e/b/k/m/p;->g(II)I
    move-result v3
    if-eq v2, v3, :L32
    int-to-float v1, v3
    mul-float v1, v1, v0
    add-float/2addr v1, v11
    float-to-int v1, v1
  :L32
  .line 54
    iget-object v0, v8, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v0, v1 }, Lc/e/b/k/m/g;->d(I)V
  .line 55
    iget-object v0, v8, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v0, v0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v0, v3 }, Lc/e/b/k/m/g;->d(I)V
    goto/16 :L44
  :L33
    sub-int/2addr v2, v1
  .line 56
    invoke-virtual { v8, v2, v10 }, Lc/e/b/k/m/p;->g(II)I
    move-result v1
    int-to-float v2, v1
    mul-float v2, v2, v0
    add-float/2addr v2, v11
    float-to-int v2, v2
  .line 57
    invoke-virtual { v8, v2, v9 }, Lc/e/b/k/m/p;->g(II)I
    move-result v3
    if-eq v2, v3, :L34
    int-to-float v1, v3
    div-float/2addr v1, v0
    add-float/2addr v1, v11
    float-to-int v1, v1
  :L34
  .line 58
    iget-object v0, v8, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v0, v1 }, Lc/e/b/k/m/g;->d(I)V
  .line 59
    iget-object v0, v8, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v0, v0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v0, v3 }, Lc/e/b/k/m/g;->d(I)V
    goto/16 :L44
  :L35
    return-void
  :L36
    if-eqz v1, :L44
    if-eqz v4, :L44
  .line 60
    iget-boolean v0, v12, Lc/e/b/k/m/f;->c:Z
    if-eqz v0, :L42
    iget-boolean v0, v13, Lc/e/b/k/m/f;->c:Z
    if-nez v0, :L37
    goto :L42
  :L37
  .line 61
    iget-object v0, v8, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    invoke-virtual { v0 }, Lc/e/b/k/e;->t()F
    move-result v0
  .line 62
    iget-object v1, v12, Lc/e/b/k/m/f;->l:Ljava/util/List;
    invoke-interface { v1, v10 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lc/e/b/k/m/f;
    iget v1, v1, Lc/e/b/k/m/f;->g:I
    iget v2, v12, Lc/e/b/k/m/f;->f:I
    add-int/2addr v1, v2
  .line 63
    iget-object v2, v13, Lc/e/b/k/m/f;->l:Ljava/util/List;
    invoke-interface { v2, v10 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lc/e/b/k/m/f;
    iget v2, v2, Lc/e/b/k/m/f;->g:I
    iget v4, v13, Lc/e/b/k/m/f;->f:I
    sub-int/2addr v2, v4
    if-eq v14, v3, :L40
    if-eqz v14, :L38
    if-eq v14, v9, :L40
    goto :L44
  :L38
    sub-int/2addr v2, v1
  .line 64
    invoke-virtual { v8, v2, v9 }, Lc/e/b/k/m/p;->g(II)I
    move-result v1
    int-to-float v2, v1
    mul-float v2, v2, v0
    add-float/2addr v2, v11
    float-to-int v2, v2
  .line 65
    invoke-virtual { v8, v2, v10 }, Lc/e/b/k/m/p;->g(II)I
    move-result v3
    if-eq v2, v3, :L39
    int-to-float v1, v3
    div-float/2addr v1, v0
    add-float/2addr v1, v11
    float-to-int v1, v1
  :L39
  .line 66
    iget-object v0, v8, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v0, v3 }, Lc/e/b/k/m/g;->d(I)V
  .line 67
    iget-object v0, v8, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v0, v0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v0, v1 }, Lc/e/b/k/m/g;->d(I)V
    goto :L44
  :L40
    sub-int/2addr v2, v1
  .line 68
    invoke-virtual { v8, v2, v9 }, Lc/e/b/k/m/p;->g(II)I
    move-result v1
    int-to-float v2, v1
    div-float/2addr v2, v0
    add-float/2addr v2, v11
    float-to-int v2, v2
  .line 69
    invoke-virtual { v8, v2, v10 }, Lc/e/b/k/m/p;->g(II)I
    move-result v3
    if-eq v2, v3, :L41
    int-to-float v1, v3
    mul-float v1, v1, v0
    add-float/2addr v1, v11
    float-to-int v1, v1
  :L41
  .line 70
    iget-object v0, v8, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v0, v3 }, Lc/e/b/k/m/g;->d(I)V
  .line 71
    iget-object v0, v8, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v0, v0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v0, v1 }, Lc/e/b/k/m/g;->d(I)V
    goto :L44
  :L42
    return-void
  :L43
  .line 72
    invoke-virtual { v0 }, Lc/e/b/k/e;->I()Lc/e/b/k/e;
    move-result-object v0
    if-eqz v0, :L44
  .line 73
    iget-object v0, v0, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v0, v0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget-boolean v1, v0, Lc/e/b/k/m/f;->j:Z
    if-eqz v1, :L44
  .line 74
    iget-object v1, v8, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget v1, v1, Lc/e/b/k/e;->s:F
  .line 75
    iget v0, v0, Lc/e/b/k/m/f;->g:I
    int-to-float v0, v0
    mul-float v0, v0, v1
    add-float/2addr v0, v11
    float-to-int v0, v0
  .line 76
    iget-object v1, v8, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v1, v0 }, Lc/e/b/k/m/g;->d(I)V
  :L44
  .line 77
    iget-object v0, v8, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-boolean v1, v0, Lc/e/b/k/m/f;->c:Z
    if-eqz v1, :L52
    iget-object v1, v8, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-boolean v2, v1, Lc/e/b/k/m/f;->c:Z
    if-nez v2, :L45
    goto/16 :L52
  :L45
  .line 78
    iget-boolean v0, v0, Lc/e/b/k/m/f;->j:Z
    if-eqz v0, :L46
    iget-boolean v0, v1, Lc/e/b/k/m/f;->j:Z
    if-eqz v0, :L46
    iget-object v0, v8, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget-boolean v0, v0, Lc/e/b/k/m/f;->j:Z
    if-eqz v0, :L46
    return-void
  :L46
  .line 79
    iget-object v0, v8, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget-boolean v0, v0, Lc/e/b/k/m/f;->j:Z
    if-nez v0, :L47
    iget-object v0, v8, Lc/e/b/k/m/p;->d:Lc/e/b/k/e$b;
    sget-object v1, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v0, v1, :L47
    iget-object v0, v8, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget v1, v0, Lc/e/b/k/e;->n:I
    if-nez v1, :L47
  .line 80
    invoke-virtual { v0 }, Lc/e/b/k/e;->Z()Z
    move-result v0
    if-nez v0, :L47
  .line 81
    iget-object v0, v8, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object v0, v0, Lc/e/b/k/m/f;->l:Ljava/util/List;
    invoke-interface { v0, v10 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/e/b/k/m/f;
  .line 82
    iget-object v1, v8, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-object v1, v1, Lc/e/b/k/m/f;->l:Ljava/util/List;
    invoke-interface { v1, v10 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lc/e/b/k/m/f;
  .line 83
    iget v0, v0, Lc/e/b/k/m/f;->g:I
    iget-object v2, v8, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget v3, v2, Lc/e/b/k/m/f;->f:I
    add-int/2addr v0, v3
  .line 84
    iget v1, v1, Lc/e/b/k/m/f;->g:I
    iget-object v3, v8, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget v3, v3, Lc/e/b/k/m/f;->f:I
    add-int/2addr v1, v3
    sub-int v3, v1, v0
  .line 85
    invoke-virtual { v2, v0 }, Lc/e/b/k/m/f;->d(I)V
  .line 86
    iget-object v0, v8, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    invoke-virtual { v0, v1 }, Lc/e/b/k/m/f;->d(I)V
  .line 87
    iget-object v0, v8, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v0, v3 }, Lc/e/b/k/m/g;->d(I)V
    return-void
  :L47
  .line 88
    iget-object v0, v8, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget-boolean v0, v0, Lc/e/b/k/m/f;->j:Z
    if-nez v0, :L49
    iget-object v0, v8, Lc/e/b/k/m/p;->d:Lc/e/b/k/e$b;
    sget-object v1, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v0, v1, :L49
    iget v0, v8, Lc/e/b/k/m/p;->a:I
    if-ne v0, v9, :L49
  .line 89
    iget-object v0, v8, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object v0, v0, Lc/e/b/k/m/f;->l:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    if-lez v0, :L49
    iget-object v0, v8, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-object v0, v0, Lc/e/b/k/m/f;->l:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    if-lez v0, :L49
  .line 90
    iget-object v0, v8, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object v0, v0, Lc/e/b/k/m/f;->l:Ljava/util/List;
    invoke-interface { v0, v10 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/e/b/k/m/f;
  .line 91
    iget-object v1, v8, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-object v1, v1, Lc/e/b/k/m/f;->l:Ljava/util/List;
    invoke-interface { v1, v10 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lc/e/b/k/m/f;
  .line 92
    iget v0, v0, Lc/e/b/k/m/f;->g:I
    iget-object v2, v8, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget v2, v2, Lc/e/b/k/m/f;->f:I
    add-int/2addr v0, v2
  .line 93
    iget v1, v1, Lc/e/b/k/m/f;->g:I
    iget-object v2, v8, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget v2, v2, Lc/e/b/k/m/f;->f:I
    add-int/2addr v1, v2
    sub-int/2addr v1, v0
  .line 94
    iget-object v0, v8, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget v0, v0, Lc/e/b/k/m/g;->m:I
    invoke-static { v1, v0 }, Ljava/lang/Math;->min(II)I
    move-result v0
  .line 95
    iget-object v1, v8, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget v2, v1, Lc/e/b/k/e;->r:I
  .line 96
    iget v1, v1, Lc/e/b/k/e;->q:I
  .line 97
    invoke-static { v1, v0 }, Ljava/lang/Math;->max(II)I
    move-result v0
    if-lez v2, :L48
  .line 98
    invoke-static { v2, v0 }, Ljava/lang/Math;->min(II)I
    move-result v0
  :L48
  .line 99
    iget-object v1, v8, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v1, v0 }, Lc/e/b/k/m/g;->d(I)V
  :L49
  .line 100
    iget-object v0, v8, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget-boolean v0, v0, Lc/e/b/k/m/f;->j:Z
    if-nez v0, :L50
    return-void
  :L50
  .line 101
    iget-object v0, v8, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object v0, v0, Lc/e/b/k/m/f;->l:Ljava/util/List;
    invoke-interface { v0, v10 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/e/b/k/m/f;
  .line 102
    iget-object v1, v8, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-object v1, v1, Lc/e/b/k/m/f;->l:Ljava/util/List;
    invoke-interface { v1, v10 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lc/e/b/k/m/f;
  .line 103
    iget v2, v0, Lc/e/b/k/m/f;->g:I
    iget-object v3, v8, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget v3, v3, Lc/e/b/k/m/f;->f:I
    add-int/2addr v2, v3
  .line 104
    iget v3, v1, Lc/e/b/k/m/f;->g:I
    iget-object v4, v8, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget v4, v4, Lc/e/b/k/m/f;->f:I
    add-int/2addr v3, v4
  .line 105
    iget-object v4, v8, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    invoke-virtual { v4 }, Lc/e/b/k/e;->w()F
    move-result v4
    if-ne v0, v1, :L51
  .line 106
    iget v2, v0, Lc/e/b/k/m/f;->g:I
  .line 107
    iget v3, v1, Lc/e/b/k/m/f;->g:I
    const/high16 v4, 16128
  :L51
    sub-int/2addr v3, v2
  .line 108
    iget-object v0, v8, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget v0, v0, Lc/e/b/k/m/f;->g:I
    sub-int/2addr v3, v0
  .line 109
    iget-object v0, v8, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    int-to-float v1, v2
    add-float/2addr v1, v11
    int-to-float v2, v3
    mul-float v2, v2, v4
    add-float/2addr v1, v2
    float-to-int v1, v1
    invoke-virtual { v0, v1 }, Lc/e/b/k/m/f;->d(I)V
  .line 110
    iget-object v0, v8, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-object v1, v8, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget v1, v1, Lc/e/b/k/m/f;->g:I
    iget-object v2, v8, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget v2, v2, Lc/e/b/k/m/f;->g:I
    add-int/2addr v1, v2
    invoke-virtual { v0, v1 }, Lc/e/b/k/m/f;->d(I)V
  :L52
    return-void
.end method

.method d()V
  .registers 6
  .line 1
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-boolean v1, v0, Lc/e/b/k/e;->a:Z
    if-eqz v1, :L0
  .line 2
    iget-object v1, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v0 }, Lc/e/b/k/e;->R()I
    move-result v0
    invoke-virtual { v1, v0 }, Lc/e/b/k/m/g;->d(I)V
  :L0
  .line 3
    iget-object v0, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget-boolean v0, v0, Lc/e/b/k/m/f;->j:Z
    if-nez v0, :L4
  .line 4
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    invoke-virtual { v0 }, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;
    move-result-object v0
    iput-object v0, p0, Lc/e/b/k/m/p;->d:Lc/e/b/k/e$b;
  .line 5
    sget-object v1, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-eq v0, v1, :L7
  .line 6
    sget-object v1, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;
    if-ne v0, v1, :L3
  .line 7
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    invoke-virtual { v0 }, Lc/e/b/k/e;->I()Lc/e/b/k/e;
    move-result-object v0
    if-eqz v0, :L1
  .line 8
    invoke-virtual { v0 }, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;
    move-result-object v1
    sget-object v2, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    if-eq v1, v2, :L2
  :L1
  .line 9
    invoke-virtual { v0 }, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;
    move-result-object v1
    sget-object v2, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;
    if-ne v1, v2, :L3
  :L2
  .line 10
    invoke-virtual { v0 }, Lc/e/b/k/e;->R()I
    move-result v1
    iget-object v2, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v2, v2, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    invoke-virtual { v2 }, Lc/e/b/k/d;->e()I
    move-result v2
    sub-int/2addr v1, v2
    iget-object v2, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v2, v2, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    invoke-virtual { v2 }, Lc/e/b/k/d;->e()I
    move-result v2
    sub-int/2addr v1, v2
  .line 11
    iget-object v2, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object v3, v0, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v3, v3, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object v4, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v4, v4, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    invoke-virtual { v4 }, Lc/e/b/k/d;->e()I
    move-result v4
    invoke-virtual { p0, v2, v3, v4 }, Lc/e/b/k/m/p;->b(Lc/e/b/k/m/f;Lc/e/b/k/m/f;I)V
  .line 12
    iget-object v2, p0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-object v0, v0, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v0, v0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-object v3, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v3, v3, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    invoke-virtual { v3 }, Lc/e/b/k/d;->e()I
    move-result v3
    neg-int v3, v3
    invoke-virtual { p0, v2, v0, v3 }, Lc/e/b/k/m/p;->b(Lc/e/b/k/m/f;Lc/e/b/k/m/f;I)V
  .line 13
    iget-object v0, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v0, v1 }, Lc/e/b/k/m/g;->d(I)V
    return-void
  :L3
  .line 14
    iget-object v0, p0, Lc/e/b/k/m/p;->d:Lc/e/b/k/e$b;
    sget-object v1, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    if-ne v0, v1, :L7
  .line 15
    iget-object v0, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget-object v1, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    invoke-virtual { v1 }, Lc/e/b/k/e;->R()I
    move-result v1
    invoke-virtual { v0, v1 }, Lc/e/b/k/m/g;->d(I)V
    goto :L7
  :L4
  .line 16
    iget-object v0, p0, Lc/e/b/k/m/p;->d:Lc/e/b/k/e$b;
    sget-object v1, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;
    if-ne v0, v1, :L7
  .line 17
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    invoke-virtual { v0 }, Lc/e/b/k/e;->I()Lc/e/b/k/e;
    move-result-object v0
    if-eqz v0, :L5
  .line 18
    invoke-virtual { v0 }, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;
    move-result-object v1
    sget-object v2, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    if-eq v1, v2, :L6
  :L5
  .line 19
    invoke-virtual { v0 }, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;
    move-result-object v1
    sget-object v2, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;
    if-ne v1, v2, :L7
  :L6
  .line 20
    iget-object v1, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object v2, v0, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v2, v2, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object v3, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v3, v3, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    invoke-virtual { v3 }, Lc/e/b/k/d;->e()I
    move-result v3
    invoke-virtual { p0, v1, v2, v3 }, Lc/e/b/k/m/p;->b(Lc/e/b/k/m/f;Lc/e/b/k/m/f;I)V
  .line 21
    iget-object v1, p0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-object v0, v0, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v0, v0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-object v2, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v2, v2, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    invoke-virtual { v2 }, Lc/e/b/k/d;->e()I
    move-result v2
    neg-int v2, v2
    invoke-virtual { p0, v1, v0, v2 }, Lc/e/b/k/m/p;->b(Lc/e/b/k/m/f;Lc/e/b/k/m/f;I)V
    return-void
  :L7
  .line 22
    iget-object v0, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget-boolean v0, v0, Lc/e/b/k/m/f;->j:Z
    const/4 v1, 0
    const/4 v2, 1
    if-eqz v0, :L14
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-boolean v3, v0, Lc/e/b/k/e;->a:Z
    if-eqz v3, :L14
  .line 23
    iget-object v3, v0, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v4, v3, v1
    iget-object v4, v4, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v4, :L11
    aget-object v3, v3, v2
    iget-object v3, v3, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v3, :L11
  .line 24
    invoke-virtual { v0 }, Lc/e/b/k/e;->Z()Z
    move-result v0
    if-eqz v0, :L8
  .line 25
    iget-object v0, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object v3, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v3, v3, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v1, v3, v1
    invoke-virtual { v1 }, Lc/e/b/k/d;->e()I
    move-result v1
    iput v1, v0, Lc/e/b/k/m/f;->f:I
  .line 26
    iget-object v0, p0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-object v1, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v1, v1, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v1, v1, v2
    invoke-virtual { v1 }, Lc/e/b/k/d;->e()I
    move-result v1
    neg-int v1, v1
    iput v1, v0, Lc/e/b/k/m/f;->f:I
    goto/16 :L26
  :L8
  .line 27
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v0, v0, v1
    invoke-virtual { p0, v0 }, Lc/e/b/k/m/p;->h(Lc/e/b/k/d;)Lc/e/b/k/m/f;
    move-result-object v0
    if-eqz v0, :L9
  .line 28
    iget-object v3, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object v4, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v4, v4, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v1, v4, v1
    invoke-virtual { v1 }, Lc/e/b/k/d;->e()I
    move-result v1
    invoke-virtual { p0, v3, v0, v1 }, Lc/e/b/k/m/p;->b(Lc/e/b/k/m/f;Lc/e/b/k/m/f;I)V
  :L9
  .line 29
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v0, v0, v2
    invoke-virtual { p0, v0 }, Lc/e/b/k/m/p;->h(Lc/e/b/k/d;)Lc/e/b/k/m/f;
    move-result-object v0
    if-eqz v0, :L10
  .line 30
    iget-object v1, p0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-object v3, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v3, v3, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v3, v3, v2
    invoke-virtual { v3 }, Lc/e/b/k/d;->e()I
    move-result v3
    neg-int v3, v3
    invoke-virtual { p0, v1, v0, v3 }, Lc/e/b/k/m/p;->b(Lc/e/b/k/m/f;Lc/e/b/k/m/f;I)V
  :L10
  .line 31
    iget-object v0, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iput-boolean v2, v0, Lc/e/b/k/m/f;->b:Z
  .line 32
    iget-object v0, p0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iput-boolean v2, v0, Lc/e/b/k/m/f;->b:Z
    goto/16 :L26
  :L11
  .line 33
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v3, v0, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v4, v3, v1
    iget-object v4, v4, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v4, :L12
  .line 34
    aget-object v0, v3, v1
    invoke-virtual { p0, v0 }, Lc/e/b/k/m/p;->h(Lc/e/b/k/d;)Lc/e/b/k/m/f;
    move-result-object v0
    if-eqz v0, :L26
  .line 35
    iget-object v2, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object v3, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v3, v3, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v1, v3, v1
    invoke-virtual { v1 }, Lc/e/b/k/d;->e()I
    move-result v1
    invoke-virtual { p0, v2, v0, v1 }, Lc/e/b/k/m/p;->b(Lc/e/b/k/m/f;Lc/e/b/k/m/f;I)V
  .line 36
    iget-object v0, p0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-object v1, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object v2, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget v2, v2, Lc/e/b/k/m/f;->g:I
    invoke-virtual { p0, v0, v1, v2 }, Lc/e/b/k/m/p;->b(Lc/e/b/k/m/f;Lc/e/b/k/m/f;I)V
    goto/16 :L26
  :L12
  .line 37
    aget-object v1, v3, v2
    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v1, :L13
  .line 38
    aget-object v0, v3, v2
    invoke-virtual { p0, v0 }, Lc/e/b/k/m/p;->h(Lc/e/b/k/d;)Lc/e/b/k/m/f;
    move-result-object v0
    if-eqz v0, :L26
  .line 39
    iget-object v1, p0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-object v3, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v3, v3, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v2, v3, v2
    invoke-virtual { v2 }, Lc/e/b/k/d;->e()I
    move-result v2
    neg-int v2, v2
    invoke-virtual { p0, v1, v0, v2 }, Lc/e/b/k/m/p;->b(Lc/e/b/k/m/f;Lc/e/b/k/m/f;I)V
  .line 40
    iget-object v0, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object v1, p0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-object v2, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget v2, v2, Lc/e/b/k/m/f;->g:I
    neg-int v2, v2
    invoke-virtual { p0, v0, v1, v2 }, Lc/e/b/k/m/p;->b(Lc/e/b/k/m/f;Lc/e/b/k/m/f;I)V
    goto/16 :L26
  :L13
  .line 41
    instance-of v1, v0, Lc/e/b/k/h;
    if-nez v1, :L26
    invoke-virtual { v0 }, Lc/e/b/k/e;->I()Lc/e/b/k/e;
    move-result-object v0
    if-eqz v0, :L26
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    sget-object v1, Lc/e/b/k/d$b;->h:Lc/e/b/k/d$b;
  .line 42
    invoke-virtual { v0, v1 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v0
    iget-object v0, v0, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-nez v0, :L26
  .line 43
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    invoke-virtual { v0 }, Lc/e/b/k/e;->I()Lc/e/b/k/e;
    move-result-object v0
    iget-object v0, v0, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v0, v0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
  .line 44
    iget-object v1, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object v2, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    invoke-virtual { v2 }, Lc/e/b/k/e;->S()I
    move-result v2
    invoke-virtual { p0, v1, v0, v2 }, Lc/e/b/k/m/p;->b(Lc/e/b/k/m/f;Lc/e/b/k/m/f;I)V
  .line 45
    iget-object v0, p0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-object v1, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object v2, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget v2, v2, Lc/e/b/k/m/f;->g:I
    invoke-virtual { p0, v0, v1, v2 }, Lc/e/b/k/m/p;->b(Lc/e/b/k/m/f;Lc/e/b/k/m/f;I)V
    goto/16 :L26
  :L14
  .line 46
    iget-object v0, p0, Lc/e/b/k/m/p;->d:Lc/e/b/k/e$b;
    sget-object v3, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v0, v3, :L21
  .line 47
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget v3, v0, Lc/e/b/k/e;->n:I
    const/4 v4, 2
    if-eq v3, v4, :L19
    const/4 v4, 3
    if-eq v3, v4, :L15
    goto/16 :L21
  :L15
  .line 48
    iget v3, v0, Lc/e/b/k/e;->o:I
    if-ne v3, v4, :L18
  .line 49
    iget-object v3, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iput-object p0, v3, Lc/e/b/k/m/f;->a:Lc/e/b/k/m/d;
  .line 50
    iget-object v3, p0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iput-object p0, v3, Lc/e/b/k/m/f;->a:Lc/e/b/k/m/d;
  .line 51
    iget-object v3, v0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v4, v3, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iput-object p0, v4, Lc/e/b/k/m/f;->a:Lc/e/b/k/m/d;
  .line 52
    iget-object v3, v3, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iput-object p0, v3, Lc/e/b/k/m/f;->a:Lc/e/b/k/m/d;
  .line 53
    iget-object v3, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iput-object p0, v3, Lc/e/b/k/m/f;->a:Lc/e/b/k/m/d;
  .line 54
    invoke-virtual { v0 }, Lc/e/b/k/e;->b0()Z
    move-result v0
    if-eqz v0, :L16
  .line 55
    iget-object v0, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget-object v0, v0, Lc/e/b/k/m/f;->l:Ljava/util/List;
    iget-object v3, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v3, v3, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v3, v3, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-interface { v0, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 56
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v0, v0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget-object v0, v0, Lc/e/b/k/m/f;->k:Ljava/util/List;
    iget-object v3, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-interface { v0, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 57
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v3, v0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iput-object p0, v3, Lc/e/b/k/m/f;->a:Lc/e/b/k/m/d;
  .line 58
    iget-object v3, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget-object v3, v3, Lc/e/b/k/m/f;->l:Ljava/util/List;
    iget-object v0, v0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    invoke-interface { v3, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 59
    iget-object v0, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget-object v0, v0, Lc/e/b/k/m/f;->l:Ljava/util/List;
    iget-object v3, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v3, v3, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v3, v3, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    invoke-interface { v0, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 60
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v0, v0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object v0, v0, Lc/e/b/k/m/f;->k:Ljava/util/List;
    iget-object v3, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-interface { v0, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 61
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v0, v0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-object v0, v0, Lc/e/b/k/m/f;->k:Ljava/util/List;
    iget-object v3, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-interface { v0, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    goto/16 :L21
  :L16
  .line 62
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    invoke-virtual { v0 }, Lc/e/b/k/e;->Z()Z
    move-result v0
    if-eqz v0, :L17
  .line 63
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v0, v0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget-object v0, v0, Lc/e/b/k/m/f;->l:Ljava/util/List;
    iget-object v3, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-interface { v0, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 64
    iget-object v0, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget-object v0, v0, Lc/e/b/k/m/f;->k:Ljava/util/List;
    iget-object v3, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v3, v3, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v3, v3, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-interface { v0, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    goto/16 :L21
  :L17
  .line 65
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v0, v0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget-object v0, v0, Lc/e/b/k/m/f;->l:Ljava/util/List;
    iget-object v3, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-interface { v0, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    goto/16 :L21
  :L18
  .line 66
    iget-object v0, v0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v0, v0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
  .line 67
    iget-object v3, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget-object v3, v3, Lc/e/b/k/m/f;->l:Ljava/util/List;
    invoke-interface { v3, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 68
    iget-object v0, v0, Lc/e/b/k/m/f;->k:Ljava/util/List;
    iget-object v3, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-interface { v0, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 69
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v0, v0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object v0, v0, Lc/e/b/k/m/f;->k:Ljava/util/List;
    iget-object v3, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-interface { v0, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 70
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v0, v0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-object v0, v0, Lc/e/b/k/m/f;->k:Ljava/util/List;
    iget-object v3, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-interface { v0, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 71
    iget-object v0, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iput-boolean v2, v0, Lc/e/b/k/m/f;->b:Z
  .line 72
    iget-object v0, v0, Lc/e/b/k/m/f;->k:Ljava/util/List;
    iget-object v3, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    invoke-interface { v0, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 73
    iget-object v0, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget-object v0, v0, Lc/e/b/k/m/f;->k:Ljava/util/List;
    iget-object v3, p0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    invoke-interface { v0, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 74
    iget-object v0, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object v0, v0, Lc/e/b/k/m/f;->l:Ljava/util/List;
    iget-object v3, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-interface { v0, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 75
    iget-object v0, p0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-object v0, v0, Lc/e/b/k/m/f;->l:Ljava/util/List;
    iget-object v3, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-interface { v0, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    goto :L21
  :L19
  .line 76
    invoke-virtual { v0 }, Lc/e/b/k/e;->I()Lc/e/b/k/e;
    move-result-object v0
    if-nez v0, :L20
    goto :L21
  :L20
  .line 77
    iget-object v0, v0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v0, v0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
  .line 78
    iget-object v3, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget-object v3, v3, Lc/e/b/k/m/f;->l:Ljava/util/List;
    invoke-interface { v3, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 79
    iget-object v0, v0, Lc/e/b/k/m/f;->k:Ljava/util/List;
    iget-object v3, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-interface { v0, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 80
    iget-object v0, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iput-boolean v2, v0, Lc/e/b/k/m/f;->b:Z
  .line 81
    iget-object v0, v0, Lc/e/b/k/m/f;->k:Ljava/util/List;
    iget-object v3, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    invoke-interface { v0, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 82
    iget-object v0, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget-object v0, v0, Lc/e/b/k/m/f;->k:Ljava/util/List;
    iget-object v3, p0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    invoke-interface { v0, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L21
  .line 83
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v3, v0, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v4, v3, v1
    iget-object v4, v4, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v4, :L23
    aget-object v3, v3, v2
    iget-object v3, v3, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v3, :L23
  .line 84
    invoke-virtual { v0 }, Lc/e/b/k/e;->Z()Z
    move-result v0
    if-eqz v0, :L22
  .line 85
    iget-object v0, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object v3, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v3, v3, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v1, v3, v1
    invoke-virtual { v1 }, Lc/e/b/k/d;->e()I
    move-result v1
    iput v1, v0, Lc/e/b/k/m/f;->f:I
  .line 86
    iget-object v0, p0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-object v1, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v1, v1, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v1, v1, v2
    invoke-virtual { v1 }, Lc/e/b/k/d;->e()I
    move-result v1
    neg-int v1, v1
    iput v1, v0, Lc/e/b/k/m/f;->f:I
    goto/16 :L26
  :L22
  .line 87
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v0, v0, v1
    invoke-virtual { p0, v0 }, Lc/e/b/k/m/p;->h(Lc/e/b/k/d;)Lc/e/b/k/m/f;
    move-result-object v0
  .line 88
    iget-object v1, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v1, v1, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v1, v1, v2
    invoke-virtual { p0, v1 }, Lc/e/b/k/m/p;->h(Lc/e/b/k/d;)Lc/e/b/k/m/f;
    move-result-object v1
  .line 89
    invoke-virtual { v0, p0 }, Lc/e/b/k/m/f;->b(Lc/e/b/k/m/d;)V
  .line 90
    invoke-virtual { v1, p0 }, Lc/e/b/k/m/f;->b(Lc/e/b/k/m/d;)V
  .line 91
    sget-object v0, Lc/e/b/k/m/p$b;->e:Lc/e/b/k/m/p$b;
    iput-object v0, p0, Lc/e/b/k/m/p;->j:Lc/e/b/k/m/p$b;
    goto/16 :L26
  :L23
  .line 92
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v3, v0, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v4, v3, v1
    iget-object v4, v4, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v4, :L24
  .line 93
    aget-object v0, v3, v1
    invoke-virtual { p0, v0 }, Lc/e/b/k/m/p;->h(Lc/e/b/k/d;)Lc/e/b/k/m/f;
    move-result-object v0
    if-eqz v0, :L26
  .line 94
    iget-object v3, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object v4, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v4, v4, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v1, v4, v1
    invoke-virtual { v1 }, Lc/e/b/k/d;->e()I
    move-result v1
    invoke-virtual { p0, v3, v0, v1 }, Lc/e/b/k/m/p;->b(Lc/e/b/k/m/f;Lc/e/b/k/m/f;I)V
  .line 95
    iget-object v0, p0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-object v1, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object v3, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { p0, v0, v1, v2, v3 }, Lc/e/b/k/m/p;->c(Lc/e/b/k/m/f;Lc/e/b/k/m/f;ILc/e/b/k/m/g;)V
    goto :L26
  :L24
  .line 96
    aget-object v1, v3, v2
    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v1, :L25
  .line 97
    aget-object v0, v3, v2
    invoke-virtual { p0, v0 }, Lc/e/b/k/m/p;->h(Lc/e/b/k/d;)Lc/e/b/k/m/f;
    move-result-object v0
    if-eqz v0, :L26
  .line 98
    iget-object v1, p0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-object v3, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget-object v3, v3, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    aget-object v2, v3, v2
    invoke-virtual { v2 }, Lc/e/b/k/d;->e()I
    move-result v2
    neg-int v2, v2
    invoke-virtual { p0, v1, v0, v2 }, Lc/e/b/k/m/p;->b(Lc/e/b/k/m/f;Lc/e/b/k/m/f;I)V
  .line 99
    iget-object v0, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object v1, p0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    const/4 v2, -1
    iget-object v3, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { p0, v0, v1, v2, v3 }, Lc/e/b/k/m/p;->c(Lc/e/b/k/m/f;Lc/e/b/k/m/f;ILc/e/b/k/m/g;)V
    goto :L26
  :L25
  .line 100
    instance-of v1, v0, Lc/e/b/k/h;
    if-nez v1, :L26
    invoke-virtual { v0 }, Lc/e/b/k/e;->I()Lc/e/b/k/e;
    move-result-object v0
    if-eqz v0, :L26
  .line 101
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    invoke-virtual { v0 }, Lc/e/b/k/e;->I()Lc/e/b/k/e;
    move-result-object v0
    iget-object v0, v0, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v0, v0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
  .line 102
    iget-object v1, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object v3, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    invoke-virtual { v3 }, Lc/e/b/k/e;->S()I
    move-result v3
    invoke-virtual { p0, v1, v0, v3 }, Lc/e/b/k/m/p;->b(Lc/e/b/k/m/f;Lc/e/b/k/m/f;I)V
  .line 103
    iget-object v0, p0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iget-object v1, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-object v3, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { p0, v0, v1, v2, v3 }, Lc/e/b/k/m/p;->c(Lc/e/b/k/m/f;Lc/e/b/k/m/f;ILc/e/b/k/m/g;)V
  :L26
    return-void
.end method

.method public e()V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iget-boolean v1, v0, Lc/e/b/k/m/f;->j:Z
    if-eqz v1, :L0
  .line 2
    iget-object v1, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget v0, v0, Lc/e/b/k/m/f;->g:I
    invoke-virtual { v1, v0 }, Lc/e/b/k/e;->V0(I)V
  :L0
    return-void
.end method

.method f()V
  .registers 2
    const/4 v0, 0
  .line 1
    iput-object v0, p0, Lc/e/b/k/m/p;->c:Lc/e/b/k/m/m;
  .line 2
    iget-object v0, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    invoke-virtual { v0 }, Lc/e/b/k/m/f;->c()V
  .line 3
    iget-object v0, p0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    invoke-virtual { v0 }, Lc/e/b/k/m/f;->c()V
  .line 4
    iget-object v0, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    invoke-virtual { v0 }, Lc/e/b/k/m/f;->c()V
    const/4 v0, 0
  .line 5
    iput-boolean v0, p0, Lc/e/b/k/m/p;->g:Z
    return-void
.end method

.method m()Z
  .registers 4
  .line 1
    iget-object v0, p0, Lc/e/b/k/m/p;->d:Lc/e/b/k/e$b;
    sget-object v1, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    const/4 v2, 1
    if-ne v0, v1, :L1
  .line 2
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    iget v0, v0, Lc/e/b/k/e;->n:I
    if-nez v0, :L0
    return v2
  :L0
    const/4 v0, 0
    return v0
  :L1
    return v2
.end method

.method r()V
  .registers 3
    const/4 v0, 0
  .line 1
    iput-boolean v0, p0, Lc/e/b/k/m/p;->g:Z
  .line 2
    iget-object v1, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    invoke-virtual { v1 }, Lc/e/b/k/m/f;->c()V
  .line 3
    iget-object v1, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;
    iput-boolean v0, v1, Lc/e/b/k/m/f;->j:Z
  .line 4
    iget-object v1, p0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    invoke-virtual { v1 }, Lc/e/b/k/m/f;->c()V
  .line 5
    iget-object v1, p0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;
    iput-boolean v0, v1, Lc/e/b/k/m/f;->j:Z
  .line 6
    iget-object v1, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iput-boolean v0, v1, Lc/e/b/k/m/f;->j:Z
    return-void
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "HorizontalRun "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    invoke-virtual { v1 }, Lc/e/b/k/e;->r()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
