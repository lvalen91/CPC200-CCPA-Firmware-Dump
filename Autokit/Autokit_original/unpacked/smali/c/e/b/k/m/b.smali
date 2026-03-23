.class public Lc/e/b/k/m/b;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lc/e/b/k/m/b$a;,
    Lc/e/b/k/m/b$b;
  }
.end annotation

.field private final a:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Lc/e/b/k/e;",
      ">;"
    }
  .end annotation
.end field

.field private b:Lc/e/b/k/m/b$a;

.field private c:Lc/e/b/k/f;

.method public constructor <init>(Lc/e/b/k/f;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lc/e/b/k/m/b;->a:Ljava/util/ArrayList;
  .line 3
    new-instance v0, Lc/e/b/k/m/b$a;
    invoke-direct { v0 }, Lc/e/b/k/m/b$a;-><init>()V
    iput-object v0, p0, Lc/e/b/k/m/b;->b:Lc/e/b/k/m/b$a;
  .line 4
    iput-object p1, p0, Lc/e/b/k/m/b;->c:Lc/e/b/k/f;
    return-void
.end method

.method private a(Lc/e/b/k/m/b$b;Lc/e/b/k/e;I)Z
  .registers 8
  .line 1
    iget-object v0, p0, Lc/e/b/k/m/b;->b:Lc/e/b/k/m/b$a;
    invoke-virtual { p2 }, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;
    move-result-object v1
    iput-object v1, v0, Lc/e/b/k/m/b$a;->a:Lc/e/b/k/e$b;
  .line 2
    iget-object v0, p0, Lc/e/b/k/m/b;->b:Lc/e/b/k/m/b$a;
    invoke-virtual { p2 }, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;
    move-result-object v1
    iput-object v1, v0, Lc/e/b/k/m/b$a;->b:Lc/e/b/k/e$b;
  .line 3
    iget-object v0, p0, Lc/e/b/k/m/b;->b:Lc/e/b/k/m/b$a;
    invoke-virtual { p2 }, Lc/e/b/k/e;->R()I
    move-result v1
    iput v1, v0, Lc/e/b/k/m/b$a;->c:I
  .line 4
    iget-object v0, p0, Lc/e/b/k/m/b;->b:Lc/e/b/k/m/b$a;
    invoke-virtual { p2 }, Lc/e/b/k/e;->v()I
    move-result v1
    iput v1, v0, Lc/e/b/k/m/b$a;->d:I
  .line 5
    iget-object v0, p0, Lc/e/b/k/m/b;->b:Lc/e/b/k/m/b$a;
    const/4 v1, 0
    iput-boolean v1, v0, Lc/e/b/k/m/b$a;->i:Z
  .line 6
    iput p3, v0, Lc/e/b/k/m/b$a;->j:I
  .line 7
    iget-object p3, v0, Lc/e/b/k/m/b$a;->a:Lc/e/b/k/e$b;
    sget-object v0, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    const/4 v2, 1
    if-ne p3, v0, :L0
    const/4 p3, 1
    goto :L1
  :L0
    const/4 p3, 0
  :L1
  .line 8
    iget-object v0, p0, Lc/e/b/k/m/b;->b:Lc/e/b/k/m/b$a;
    iget-object v0, v0, Lc/e/b/k/m/b$a;->b:Lc/e/b/k/e$b;
    sget-object v3, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v0, v3, :L2
    const/4 v0, 1
    goto :L3
  :L2
    const/4 v0, 0
  :L3
    const/4 v3, 0
    if-eqz p3, :L4
  .line 9
    iget p3, p2, Lc/e/b/k/e;->U:F
    cmpl-float p3, p3, v3
    if-lez p3, :L4
    const/4 p3, 1
    goto :L5
  :L4
    const/4 p3, 0
  :L5
    if-eqz v0, :L6
  .line 10
    iget v0, p2, Lc/e/b/k/e;->U:F
    cmpl-float v0, v0, v3
    if-lez v0, :L6
    const/4 v0, 1
    goto :L7
  :L6
    const/4 v0, 0
  :L7
    const/4 v3, 4
    if-eqz p3, :L8
  .line 11
    iget-object p3, p2, Lc/e/b/k/e;->p:[I
    aget p3, p3, v1
    if-ne p3, v3, :L8
  .line 12
    iget-object p3, p0, Lc/e/b/k/m/b;->b:Lc/e/b/k/m/b$a;
    sget-object v1, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    iput-object v1, p3, Lc/e/b/k/m/b$a;->a:Lc/e/b/k/e$b;
  :L8
    if-eqz v0, :L9
  .line 13
    iget-object p3, p2, Lc/e/b/k/e;->p:[I
    aget p3, p3, v2
    if-ne p3, v3, :L9
  .line 14
    iget-object p3, p0, Lc/e/b/k/m/b;->b:Lc/e/b/k/m/b$a;
    sget-object v0, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    iput-object v0, p3, Lc/e/b/k/m/b$a;->b:Lc/e/b/k/e$b;
  :L9
  .line 15
    iget-object p3, p0, Lc/e/b/k/m/b;->b:Lc/e/b/k/m/b$a;
    invoke-interface { p1, p2, p3 }, Lc/e/b/k/m/b$b;->a(Lc/e/b/k/e;Lc/e/b/k/m/b$a;)V
  .line 16
    iget-object p1, p0, Lc/e/b/k/m/b;->b:Lc/e/b/k/m/b$a;
    iget p1, p1, Lc/e/b/k/m/b$a;->e:I
    invoke-virtual { p2, p1 }, Lc/e/b/k/e;->U0(I)V
  .line 17
    iget-object p1, p0, Lc/e/b/k/m/b;->b:Lc/e/b/k/m/b$a;
    iget p1, p1, Lc/e/b/k/m/b$a;->f:I
    invoke-virtual { p2, p1 }, Lc/e/b/k/e;->v0(I)V
  .line 18
    iget-object p1, p0, Lc/e/b/k/m/b;->b:Lc/e/b/k/m/b$a;
    iget-boolean p1, p1, Lc/e/b/k/m/b$a;->h:Z
    invoke-virtual { p2, p1 }, Lc/e/b/k/e;->u0(Z)V
  .line 19
    iget-object p1, p0, Lc/e/b/k/m/b;->b:Lc/e/b/k/m/b$a;
    iget p1, p1, Lc/e/b/k/m/b$a;->g:I
    invoke-virtual { p2, p1 }, Lc/e/b/k/e;->k0(I)V
  .line 20
    iget-object p1, p0, Lc/e/b/k/m/b;->b:Lc/e/b/k/m/b$a;
    sget p2, Lc/e/b/k/m/b$a;->k:I
    iput p2, p1, Lc/e/b/k/m/b$a;->j:I
  .line 21
    iget-boolean p1, p1, Lc/e/b/k/m/b$a;->i:Z
    return p1
.end method

.method private b(Lc/e/b/k/f;)V
  .registers 14
  .line 1
    iget-object v0, p1, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/16 v1, 64
  .line 2
    invoke-virtual { p1, v1 }, Lc/e/b/k/f;->B1(I)Z
    move-result v1
  .line 3
    invoke-virtual { p1 }, Lc/e/b/k/f;->r1()Lc/e/b/k/m/b$b;
    move-result-object v2
    const/4 v3, 0
    const/4 v4, 0
  :L0
    if-ge v4, v0, :L14
  .line 4
    iget-object v5, p1, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;
    invoke-virtual { v5, v4 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lc/e/b/k/e;
  .line 5
    instance-of v6, v5, Lc/e/b/k/g;
    if-eqz v6, :L1
    goto/16 :L13
  :L1
  .line 6
    instance-of v6, v5, Lc/e/b/k/a;
    if-eqz v6, :L2
    goto/16 :L13
  :L2
  .line 7
    invoke-virtual { v5 }, Lc/e/b/k/e;->c0()Z
    move-result v6
    if-eqz v6, :L3
    goto/16 :L13
  :L3
    if-eqz v1, :L4
  .line 8
    iget-object v6, v5, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    if-eqz v6, :L4
    iget-object v7, v5, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    if-eqz v7, :L4
    iget-object v6, v6, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget-boolean v6, v6, Lc/e/b/k/m/f;->j:Z
    if-eqz v6, :L4
    iget-object v6, v7, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget-boolean v6, v6, Lc/e/b/k/m/f;->j:Z
    if-eqz v6, :L4
    goto/16 :L13
  :L4
  .line 9
    invoke-virtual { v5, v3 }, Lc/e/b/k/e;->s(I)Lc/e/b/k/e$b;
    move-result-object v6
    const/4 v7, 1
  .line 10
    invoke-virtual { v5, v7 }, Lc/e/b/k/e;->s(I)Lc/e/b/k/e$b;
    move-result-object v8
  .line 11
    sget-object v9, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v6, v9, :L5
    iget v10, v5, Lc/e/b/k/e;->n:I
    if-eq v10, v7, :L5
    if-ne v8, v9, :L5
    iget v9, v5, Lc/e/b/k/e;->o:I
    if-eq v9, v7, :L5
    const/4 v9, 1
    goto :L6
  :L5
    const/4 v9, 0
  :L6
    if-nez v9, :L10
  .line 12
    invoke-virtual { p1, v7 }, Lc/e/b/k/f;->B1(I)Z
    move-result v10
    if-eqz v10, :L10
    instance-of v10, v5, Lc/e/b/k/k;
    if-nez v10, :L10
  .line 13
    sget-object v10, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v6, v10, :L7
    iget v11, v5, Lc/e/b/k/e;->n:I
    if-nez v11, :L7
    if-eq v8, v10, :L7
  .line 14
    invoke-virtual { v5 }, Lc/e/b/k/e;->Z()Z
    move-result v10
    if-nez v10, :L7
    const/4 v9, 1
  :L7
  .line 15
    sget-object v10, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v8, v10, :L8
    iget v11, v5, Lc/e/b/k/e;->o:I
    if-nez v11, :L8
    if-eq v6, v10, :L8
  .line 16
    invoke-virtual { v5 }, Lc/e/b/k/e;->Z()Z
    move-result v10
    if-nez v10, :L8
    const/4 v9, 1
  :L8
  .line 17
    sget-object v10, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-eq v6, v10, :L9
    if-ne v8, v10, :L10
  :L9
    iget v6, v5, Lc/e/b/k/e;->U:F
    const/4 v8, 0
    cmpl-float v6, v6, v8
    if-lez v6, :L10
    goto :L11
  :L10
    move v7, v9
  :L11
    if-eqz v7, :L12
    goto :L13
  :L12
  .line 18
    sget v6, Lc/e/b/k/m/b$a;->k:I
    invoke-direct { p0, v2, v5, v6 }, Lc/e/b/k/m/b;->a(Lc/e/b/k/m/b$b;Lc/e/b/k/e;I)Z
  .line 19
    iget-object v5, p1, Lc/e/b/k/f;->u0:Lc/e/b/e;
    if-eqz v5, :L13
  .line 20
    iget-wide v6, v5, Lc/e/b/e;->a:J
    const-wide/16 v8, 1
    add-long/2addr v6, v8
    iput-wide v6, v5, Lc/e/b/e;->a:J
  :L13
    add-int/lit8 v4, v4, 1
    goto/16 :L0
  :L14
  .line 21
    invoke-interface { v2 }, Lc/e/b/k/m/b$b;->b()V
    return-void
.end method

.method private c(Lc/e/b/k/f;Ljava/lang/String;II)V
  .registers 7
  .line 1
    invoke-virtual { p1 }, Lc/e/b/k/e;->G()I
    move-result p2
  .line 2
    invoke-virtual { p1 }, Lc/e/b/k/e;->F()I
    move-result v0
    const/4 v1, 0
  .line 3
    invoke-virtual { p1, v1 }, Lc/e/b/k/e;->K0(I)V
  .line 4
    invoke-virtual { p1, v1 }, Lc/e/b/k/e;->J0(I)V
  .line 5
    invoke-virtual { p1, p3 }, Lc/e/b/k/e;->U0(I)V
  .line 6
    invoke-virtual { p1, p4 }, Lc/e/b/k/e;->v0(I)V
  .line 7
    invoke-virtual { p1, p2 }, Lc/e/b/k/e;->K0(I)V
  .line 8
    invoke-virtual { p1, v0 }, Lc/e/b/k/e;->J0(I)V
  .line 9
    iget-object p1, p0, Lc/e/b/k/m/b;->c:Lc/e/b/k/f;
    invoke-virtual { p1 }, Lc/e/b/k/f;->b1()V
    return-void
.end method

.method public d(Lc/e/b/k/f;IIIIIIIII)J
  .registers 33
    move-object/from16 v0, p0
    move-object/from16 v1, p1
    move/from16 v2, p2
    move/from16 v3, p5
    move/from16 v4, p7
  .line 1
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/f;->r1()Lc/e/b/k/m/b$b;
    move-result-object v5
  .line 2
    iget-object v6, v1, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;
    invoke-virtual { v6 }, Ljava/util/ArrayList;->size()I
    move-result v6
  .line 3
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->R()I
    move-result v7
  .line 4
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->v()I
    move-result v8
    const/16 v9, 128
  .line 5
    invoke-static { v2, v9 }, Lc/e/b/k/j;->b(II)Z
    move-result v9
    const/4 v10, 0
    if-nez v9, :L1
    const/16 v12, 64
  .line 6
    invoke-static { v2, v12 }, Lc/e/b/k/j;->b(II)Z
    move-result v2
    if-eqz v2, :L0
    goto :L1
  :L0
    const/4 v2, 0
    goto :L2
  :L1
    const/4 v2, 1
  :L2
    if-eqz v2, :L15
    const/4 v12, 0
  :L3
    if-ge v12, v6, :L15
  .line 7
    iget-object v13, v1, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;
    invoke-virtual { v13, v12 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v13
    check-cast v13, Lc/e/b/k/e;
  .line 8
    invoke-virtual { v13 }, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;
    move-result-object v14
    sget-object v15, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v14, v15, :L4
    const/4 v14, 1
    goto :L5
  :L4
    const/4 v14, 0
  :L5
  .line 9
    invoke-virtual { v13 }, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;
    move-result-object v15
    sget-object v11, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v15, v11, :L6
    const/4 v11, 1
    goto :L7
  :L6
    const/4 v11, 0
  :L7
    if-eqz v14, :L8
    if-eqz v11, :L8
  .line 10
    invoke-virtual { v13 }, Lc/e/b/k/e;->t()F
    move-result v11
    const/4 v14, 0
    cmpl-float v11, v11, v14
    if-lez v11, :L8
    const/4 v11, 1
    goto :L9
  :L8
    const/4 v11, 0
  :L9
  .line 11
    invoke-virtual { v13 }, Lc/e/b/k/e;->Z()Z
    move-result v14
    if-eqz v14, :L11
    if-eqz v11, :L11
  :L10
    const/4 v2, 0
    goto :L15
  :L11
  .line 12
    invoke-virtual { v13 }, Lc/e/b/k/e;->b0()Z
    move-result v14
    if-eqz v14, :L12
    if-eqz v11, :L12
    goto :L10
  :L12
  .line 13
    instance-of v11, v13, Lc/e/b/k/k;
    if-eqz v11, :L13
    goto :L10
  :L13
  .line 14
    invoke-virtual { v13 }, Lc/e/b/k/e;->Z()Z
    move-result v11
    if-nez v11, :L10
  .line 15
    invoke-virtual { v13 }, Lc/e/b/k/e;->b0()Z
    move-result v11
    if-eqz v11, :L14
    goto :L10
  :L14
    add-int/lit8 v12, v12, 1
    goto :L3
  :L15
    const-wide/16 v11, 1
    if-eqz v2, :L16
  .line 16
    sget-object v13, Lc/e/b/d;->x:Lc/e/b/e;
    if-eqz v13, :L16
  .line 17
    iget-wide v14, v13, Lc/e/b/e;->c:J
    add-long/2addr v14, v11
    iput-wide v14, v13, Lc/e/b/e;->c:J
  :L16
    const/high16 v13, 16384
    if-ne v3, v13, :L17
    if-eq v4, v13, :L18
  :L17
    if-eqz v9, :L19
  :L18
    const/4 v14, 1
    goto :L20
  :L19
    const/4 v14, 0
  :L20
    and-int/2addr v2, v14
    const/4 v14, 2
    if-eqz v2, :L32
  .line 18
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->E()I
    move-result v15
    move/from16 v11, p6
    invoke-static { v15, v11 }, Ljava/lang/Math;->min(II)I
    move-result v11
  .line 19
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->D()I
    move-result v12
    move/from16 v15, p8
    invoke-static { v12, v15 }, Ljava/lang/Math;->min(II)I
    move-result v12
    if-ne v3, v13, :L21
  .line 20
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->R()I
    move-result v15
    if-eq v15, v11, :L21
  .line 21
    invoke-virtual { v1, v11 }, Lc/e/b/k/e;->U0(I)V
  .line 22
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/f;->u1()V
  :L21
    if-ne v4, v13, :L22
  .line 23
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->v()I
    move-result v11
    if-eq v11, v12, :L22
  .line 24
    invoke-virtual { v1, v12 }, Lc/e/b/k/e;->v0(I)V
  .line 25
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/f;->u1()V
  :L22
    if-ne v3, v13, :L23
    if-ne v4, v13, :L23
  .line 26
    invoke-virtual { v1, v9 }, Lc/e/b/k/f;->o1(Z)Z
    move-result v9
    const/4 v12, 2
    goto :L27
  :L23
  .line 27
    invoke-virtual { v1, v9 }, Lc/e/b/k/f;->p1(Z)Z
    move-result v11
    if-ne v3, v13, :L24
  .line 28
    invoke-virtual { v1, v9, v10 }, Lc/e/b/k/f;->q1(ZI)Z
    move-result v12
    and-int/2addr v11, v12
    const/4 v12, 1
    goto :L25
  :L24
    const/4 v12, 0
  :L25
    if-ne v4, v13, :L26
    const/4 v15, 1
  .line 29
    invoke-virtual { v1, v9, v15 }, Lc/e/b/k/f;->q1(ZI)Z
    move-result v9
    and-int/2addr v9, v11
    add-int/lit8 v12, v12, 1
    goto :L27
  :L26
    move v9, v11
  :L27
    if-eqz v9, :L33
    if-ne v3, v13, :L28
    const/4 v15, 1
    goto :L29
  :L28
    const/4 v15, 0
  :L29
    if-ne v4, v13, :L30
    const/4 v3, 1
    goto :L31
  :L30
    const/4 v3, 0
  :L31
  .line 30
    invoke-virtual { v1, v15, v3 }, Lc/e/b/k/f;->Y0(ZZ)V
    goto :L33
  :L32
    const/4 v9, 0
    const/4 v12, 0
  :L33
    if-eqz v9, :L34
    if-eq v12, v14, :L77
  :L34
  .line 31
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/f;->s1()I
    move-result v3
    if-lez v6, :L35
  .line 32
    invoke-direct/range { p0 .. p1 }, Lc/e/b/k/m/b;->b(Lc/e/b/k/f;)V
  :L35
  .line 33
    invoke-virtual/range { p0 .. p1 }, Lc/e/b/k/m/b;->e(Lc/e/b/k/f;)V
  .line 34
    iget-object v4, v0, Lc/e/b/k/m/b;->a:Ljava/util/ArrayList;
    invoke-virtual { v4 }, Ljava/util/ArrayList;->size()I
    move-result v4
    if-lez v6, :L36
    const-string v6, "First pass"
  .line 35
    invoke-direct { v0, v1, v6, v7, v8 }, Lc/e/b/k/m/b;->c(Lc/e/b/k/f;Ljava/lang/String;II)V
  :L36
    if-lez v4, :L75
  .line 36
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;
    move-result-object v6
    sget-object v9, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-ne v6, v9, :L37
    const/4 v15, 1
    goto :L38
  :L37
    const/4 v15, 0
  :L38
  .line 37
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;
    move-result-object v6
    sget-object v9, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-ne v6, v9, :L39
    const/4 v6, 1
    goto :L40
  :L39
    const/4 v6, 0
  :L40
  .line 38
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->R()I
    move-result v9
    iget-object v11, v0, Lc/e/b/k/m/b;->c:Lc/e/b/k/f;
    invoke-virtual { v11 }, Lc/e/b/k/e;->G()I
    move-result v11
    invoke-static { v9, v11 }, Ljava/lang/Math;->max(II)I
    move-result v9
  .line 39
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->v()I
    move-result v11
    iget-object v12, v0, Lc/e/b/k/m/b;->c:Lc/e/b/k/f;
    invoke-virtual { v12 }, Lc/e/b/k/e;->F()I
    move-result v12
    invoke-static { v11, v12 }, Ljava/lang/Math;->max(II)I
    move-result v11
    const/4 v12, 0
    const/4 v13, 0
  :L41
    if-ge v12, v4, :L50
  .line 40
    iget-object v10, v0, Lc/e/b/k/m/b;->a:Ljava/util/ArrayList;
    invoke-virtual { v10, v12 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v10
    check-cast v10, Lc/e/b/k/e;
  .line 41
    instance-of v14, v10, Lc/e/b/k/k;
    if-nez v14, :L42
    move/from16 p5, v3
    move/from16 v16, v7
    move/from16 v17, v8
    goto/16 :L49
  :L42
  .line 42
    invoke-virtual { v10 }, Lc/e/b/k/e;->R()I
    move-result v14
    move/from16 p5, v3
  .line 43
    invoke-virtual { v10 }, Lc/e/b/k/e;->v()I
    move-result v3
    move/from16 v16, v7
  .line 44
    sget v7, Lc/e/b/k/m/b$a;->l:I
    invoke-direct { v0, v5, v10, v7 }, Lc/e/b/k/m/b;->a(Lc/e/b/k/m/b$b;Lc/e/b/k/e;I)Z
    move-result v7
    or-int/2addr v7, v13
  .line 45
    iget-object v13, v1, Lc/e/b/k/f;->u0:Lc/e/b/e;
    move/from16 p6, v7
    move/from16 v17, v8
    if-eqz v13, :L43
  .line 46
    iget-wide v7, v13, Lc/e/b/e;->b:J
    const-wide/16 v18, 1
    add-long v7, v7, v18
    iput-wide v7, v13, Lc/e/b/e;->b:J
  :L43
  .line 47
    invoke-virtual { v10 }, Lc/e/b/k/e;->R()I
    move-result v7
  .line 48
    invoke-virtual { v10 }, Lc/e/b/k/e;->v()I
    move-result v8
    if-eq v7, v14, :L45
  .line 49
    invoke-virtual { v10, v7 }, Lc/e/b/k/e;->U0(I)V
    if-eqz v15, :L44
  .line 50
    invoke-virtual { v10 }, Lc/e/b/k/e;->K()I
    move-result v7
    if-le v7, v9, :L44
  .line 51
    invoke-virtual { v10 }, Lc/e/b/k/e;->K()I
    move-result v7
    sget-object v13, Lc/e/b/k/d$b;->e:Lc/e/b/k/d$b;
  .line 52
    invoke-virtual { v10, v13 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v13
    invoke-virtual { v13 }, Lc/e/b/k/d;->e()I
    move-result v13
    add-int/2addr v7, v13
  .line 53
    invoke-static { v9, v7 }, Ljava/lang/Math;->max(II)I
    move-result v7
    move v9, v7
  :L44
    const/4 v7, 1
    goto :L46
  :L45
    move/from16 v7, p6
  :L46
    if-eq v8, v3, :L48
  .line 54
    invoke-virtual { v10, v8 }, Lc/e/b/k/e;->v0(I)V
    if-eqz v6, :L47
  .line 55
    invoke-virtual { v10 }, Lc/e/b/k/e;->p()I
    move-result v3
    if-le v3, v11, :L47
  .line 56
    invoke-virtual { v10 }, Lc/e/b/k/e;->p()I
    move-result v3
    sget-object v7, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;
  .line 57
    invoke-virtual { v10, v7 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v7
    invoke-virtual { v7 }, Lc/e/b/k/d;->e()I
    move-result v7
    add-int/2addr v3, v7
  .line 58
    invoke-static { v11, v3 }, Ljava/lang/Math;->max(II)I
    move-result v3
    move v11, v3
  :L47
    const/4 v7, 1
  :L48
  .line 59
    check-cast v10, Lc/e/b/k/k;
  .line 60
    invoke-virtual { v10 }, Lc/e/b/k/k;->d1()Z
    move-result v3
    or-int v13, v7, v3
  :L49
    add-int/lit8 v12, v12, 1
    move/from16 v3, p5
    move/from16 v7, v16
    move/from16 v8, v17
    const/4 v10, 0
    const/4 v14, 2
    goto/16 :L41
  :L50
    move/from16 p5, v3
    move/from16 v16, v7
    move/from16 v17, v8
    const/4 v3, 0
    const/4 v7, 2
  :L51
    if-ge v3, v7, :L69
    const/4 v8, 0
  :L52
    if-ge v8, v4, :L68
  .line 61
    iget-object v10, v0, Lc/e/b/k/m/b;->a:Ljava/util/ArrayList;
    invoke-virtual { v10, v8 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v10
    check-cast v10, Lc/e/b/k/e;
  .line 62
    instance-of v12, v10, Lc/e/b/k/h;
    if-eqz v12, :L53
    instance-of v12, v10, Lc/e/b/k/k;
    if-eqz v12, :L57
  :L53
    instance-of v12, v10, Lc/e/b/k/g;
    if-eqz v12, :L54
    goto :L57
  :L54
  .line 63
    invoke-virtual { v10 }, Lc/e/b/k/e;->Q()I
    move-result v12
    const/16 v14, 8
    if-ne v12, v14, :L55
    goto :L57
  :L55
    if-eqz v2, :L56
  .line 64
    iget-object v12, v10, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;
    iget-object v12, v12, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget-boolean v12, v12, Lc/e/b/k/m/f;->j:Z
    if-eqz v12, :L56
    iget-object v12, v10, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;
    iget-object v12, v12, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;
    iget-boolean v12, v12, Lc/e/b/k/m/f;->j:Z
    if-eqz v12, :L56
    goto :L57
  :L56
  .line 65
    instance-of v12, v10, Lc/e/b/k/k;
    if-eqz v12, :L58
  :L57
    move/from16 v19, v2
    move/from16 p6, v4
    move-object/from16 v18, v5
    const-wide/16 v20, 1
    goto/16 :L67
  :L58
  .line 66
    invoke-virtual { v10 }, Lc/e/b/k/e;->R()I
    move-result v12
  .line 67
    invoke-virtual { v10 }, Lc/e/b/k/e;->v()I
    move-result v14
  .line 68
    invoke-virtual { v10 }, Lc/e/b/k/e;->n()I
    move-result v7
  .line 69
    sget v18, Lc/e/b/k/m/b$a;->l:I
    move/from16 v19, v2
    const/4 v2, 1
    if-ne v3, v2, :L59
  .line 70
    sget v18, Lc/e/b/k/m/b$a;->m:I
  :L59
    move/from16 v2, v18
  .line 71
    invoke-direct { v0, v5, v10, v2 }, Lc/e/b/k/m/b;->a(Lc/e/b/k/m/b$b;Lc/e/b/k/e;I)Z
    move-result v2
    or-int/2addr v2, v13
  .line 72
    iget-object v13, v1, Lc/e/b/k/f;->u0:Lc/e/b/e;
    move/from16 p6, v4
    move-object/from16 v18, v5
    if-eqz v13, :L60
  .line 73
    iget-wide v4, v13, Lc/e/b/e;->b:J
    const-wide/16 v20, 1
    add-long v4, v4, v20
    iput-wide v4, v13, Lc/e/b/e;->b:J
    goto :L61
  :L60
    const-wide/16 v20, 1
  :L61
  .line 74
    invoke-virtual { v10 }, Lc/e/b/k/e;->R()I
    move-result v4
  .line 75
    invoke-virtual { v10 }, Lc/e/b/k/e;->v()I
    move-result v5
    if-eq v4, v12, :L63
  .line 76
    invoke-virtual { v10, v4 }, Lc/e/b/k/e;->U0(I)V
    if-eqz v15, :L62
  .line 77
    invoke-virtual { v10 }, Lc/e/b/k/e;->K()I
    move-result v2
    if-le v2, v9, :L62
  .line 78
    invoke-virtual { v10 }, Lc/e/b/k/e;->K()I
    move-result v2
    sget-object v4, Lc/e/b/k/d$b;->e:Lc/e/b/k/d$b;
  .line 79
    invoke-virtual { v10, v4 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v4
    invoke-virtual { v4 }, Lc/e/b/k/d;->e()I
    move-result v4
    add-int/2addr v2, v4
  .line 80
    invoke-static { v9, v2 }, Ljava/lang/Math;->max(II)I
    move-result v9
  :L62
    const/4 v2, 1
  :L63
    if-eq v5, v14, :L65
  .line 81
    invoke-virtual { v10, v5 }, Lc/e/b/k/e;->v0(I)V
    if-eqz v6, :L64
  .line 82
    invoke-virtual { v10 }, Lc/e/b/k/e;->p()I
    move-result v2
    if-le v2, v11, :L64
  .line 83
    invoke-virtual { v10 }, Lc/e/b/k/e;->p()I
    move-result v2
    sget-object v4, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;
  .line 84
    invoke-virtual { v10, v4 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v4
    invoke-virtual { v4 }, Lc/e/b/k/d;->e()I
    move-result v4
    add-int/2addr v2, v4
  .line 85
    invoke-static { v11, v2 }, Ljava/lang/Math;->max(II)I
    move-result v2
    move v11, v2
  :L64
    const/4 v2, 1
  :L65
  .line 86
    invoke-virtual { v10 }, Lc/e/b/k/e;->U()Z
    move-result v4
    if-eqz v4, :L66
    invoke-virtual { v10 }, Lc/e/b/k/e;->n()I
    move-result v4
    if-eq v7, v4, :L66
    const/4 v13, 1
    goto :L67
  :L66
    move v13, v2
  :L67
    add-int/lit8 v8, v8, 1
    move/from16 v4, p6
    move-object/from16 v5, v18
    move/from16 v2, v19
    const/4 v7, 2
    goto/16 :L52
  :L68
    move/from16 v19, v2
    move/from16 p6, v4
    move-object/from16 v18, v5
    const-wide/16 v20, 1
    if-eqz v13, :L69
    const-string v2, "intermediate pass"
    move/from16 v4, v16
    move/from16 v5, v17
  .line 87
    invoke-direct { v0, v1, v2, v4, v5 }, Lc/e/b/k/m/b;->c(Lc/e/b/k/f;Ljava/lang/String;II)V
    add-int/lit8 v3, v3, 1
    move-object/from16 v5, v18
    move/from16 v2, v19
    const/4 v7, 2
    const/4 v13, 0
    move/from16 v4, p6
    goto/16 :L51
  :L69
    move/from16 v4, v16
    move/from16 v5, v17
    if-eqz v13, :L74
    const-string v2, "2nd pass"
  .line 88
    invoke-direct { v0, v1, v2, v4, v5 }, Lc/e/b/k/m/b;->c(Lc/e/b/k/f;Ljava/lang/String;II)V
  .line 89
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->R()I
    move-result v2
    if-ge v2, v9, :L70
  .line 90
    invoke-virtual { v1, v9 }, Lc/e/b/k/e;->U0(I)V
    const/4 v10, 1
    goto :L71
  :L70
    const/4 v10, 0
  :L71
  .line 91
    invoke-virtual/range { p1 .. p1 }, Lc/e/b/k/e;->v()I
    move-result v2
    if-ge v2, v11, :L72
  .line 92
    invoke-virtual { v1, v11 }, Lc/e/b/k/e;->v0(I)V
    const/4 v11, 1
    goto :L73
  :L72
    move v11, v10
  :L73
    if-eqz v11, :L74
    const-string v2, "3rd pass"
  .line 93
    invoke-direct { v0, v1, v2, v4, v5 }, Lc/e/b/k/m/b;->c(Lc/e/b/k/f;Ljava/lang/String;II)V
  :L74
    move/from16 v2, p5
    goto :L76
  :L75
    move v2, v3
  :L76
  .line 94
    invoke-virtual { v1, v2 }, Lc/e/b/k/f;->E1(I)V
  :L77
    const-wide/16 v1, 0
    return-wide v1
.end method

.method public e(Lc/e/b/k/f;)V
  .registers 7
  .line 1
    iget-object v0, p0, Lc/e/b/k/m/b;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->clear()V
  .line 2
    iget-object v0, p1, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L3
  .line 3
    iget-object v2, p1, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;
    invoke-virtual { v2, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lc/e/b/k/e;
  .line 4
    invoke-virtual { v2 }, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;
    move-result-object v3
    sget-object v4, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-eq v3, v4, :L1
  .line 5
    invoke-virtual { v2 }, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;
    move-result-object v3
    sget-object v4, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v3, v4, :L2
  :L1
  .line 6
    iget-object v3, p0, Lc/e/b/k/m/b;->a:Ljava/util/ArrayList;
    invoke-virtual { v3, v2 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L2
    add-int/lit8 v1, v1, 1
    goto :L0
  :L3
  .line 7
    invoke-virtual { p1 }, Lc/e/b/k/f;->u1()V
    return-void
.end method
