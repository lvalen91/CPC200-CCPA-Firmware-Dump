.class public Lc/e/b/k/m/h;
.super Ljava/lang/Object;
.source "SourceFile"

.field private static a:Lc/e/b/k/m/b$a;

.method static constructor <clinit>()V
  .registers 2
  .line 1
    new-instance v0, Lc/e/b/k/m/b$a;
    invoke-direct { v0 }, Lc/e/b/k/m/b$a;-><init>()V
    sput-object v0, Lc/e/b/k/m/h;->a:Lc/e/b/k/m/b$a;
    return-void
.end method

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static a(Lc/e/b/k/e;)Z
  .registers 7
  .line 1
    invoke-virtual { p0 }, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;
    move-result-object v0
  .line 2
    invoke-virtual { p0 }, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;
    move-result-object v1
  .line 3
    invoke-virtual { p0 }, Lc/e/b/k/e;->I()Lc/e/b/k/e;
    move-result-object v2
    if-eqz v2, :L0
    invoke-virtual { p0 }, Lc/e/b/k/e;->I()Lc/e/b/k/e;
    move-result-object v2
    check-cast v2, Lc/e/b/k/f;
    goto :L1
  :L0
    const/4 v2, 0
  :L1
    if-eqz v2, :L2
  .line 4
    invoke-virtual { v2 }, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;
    move-result-object v3
    sget-object v4, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
  :L2
    if-eqz v2, :L3
  .line 5
    invoke-virtual { v2 }, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;
    move-result-object v2
    sget-object v3, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
  :L3
  .line 6
    sget-object v2, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    const/4 v3, 0
    const/4 v4, 0
    const/4 v5, 1
    if-eq v0, v2, :L6
    sget-object v2, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-eq v0, v2, :L6
    sget-object v2, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v0, v2, :L4
    iget v0, p0, Lc/e/b/k/e;->n:I
    if-nez v0, :L4
    iget v0, p0, Lc/e/b/k/e;->U:F
    cmpl-float v0, v0, v3
    if-nez v0, :L4
  .line 7
    invoke-virtual { p0, v4 }, Lc/e/b/k/e;->V(I)Z
    move-result v0
    if-nez v0, :L6
  :L4
  .line 8
    invoke-virtual { p0 }, Lc/e/b/k/e;->e0()Z
    move-result v0
    if-eqz v0, :L5
    goto :L6
  :L5
    const/4 v0, 0
    goto :L7
  :L6
    const/4 v0, 1
  :L7
  .line 9
    sget-object v2, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    if-eq v1, v2, :L10
    sget-object v2, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-eq v1, v2, :L10
    sget-object v2, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v1, v2, :L8
    iget v1, p0, Lc/e/b/k/e;->o:I
    if-nez v1, :L8
    iget v1, p0, Lc/e/b/k/e;->U:F
    cmpl-float v1, v1, v3
    if-nez v1, :L8
  .line 10
    invoke-virtual { p0, v5 }, Lc/e/b/k/e;->V(I)Z
    move-result v1
    if-nez v1, :L10
  :L8
  .line 11
    invoke-virtual { p0 }, Lc/e/b/k/e;->f0()Z
    move-result v1
    if-eqz v1, :L9
    goto :L10
  :L9
    const/4 v1, 0
    goto :L11
  :L10
    const/4 v1, 1
  :L11
  .line 12
    iget p0, p0, Lc/e/b/k/e;->U:F
    cmpl-float p0, p0, v3
    if-lez p0, :L13
    if-nez v0, :L12
    if-eqz v1, :L13
  :L12
    return v5
  :L13
    if-eqz v0, :L14
    if-eqz v1, :L14
    const/4 v4, 1
  :L14
    return v4
.end method

.method private static b(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Z)V
  .registers 16
  .line 1
    instance-of v0, p0, Lc/e/b/k/f;
    if-nez v0, :L0
    invoke-virtual { p0 }, Lc/e/b/k/e;->d0()Z
    move-result v0
    if-eqz v0, :L0
    invoke-static { p0 }, Lc/e/b/k/m/h;->a(Lc/e/b/k/e;)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    new-instance v0, Lc/e/b/k/m/b$a;
    invoke-direct { v0 }, Lc/e/b/k/m/b$a;-><init>()V
  .line 3
    sget v1, Lc/e/b/k/m/b$a;->k:I
    invoke-static { p0, p1, v0, v1 }, Lc/e/b/k/f;->A1(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Lc/e/b/k/m/b$a;I)Z
  :L0
  .line 4
    sget-object v0, Lc/e/b/k/d$b;->c:Lc/e/b/k/d$b;
    invoke-virtual { p0, v0 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v0
  .line 5
    sget-object v1, Lc/e/b/k/d$b;->e:Lc/e/b/k/d$b;
    invoke-virtual { p0, v1 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v1
  .line 6
    invoke-virtual { v0 }, Lc/e/b/k/d;->d()I
    move-result v2
  .line 7
    invoke-virtual { v1 }, Lc/e/b/k/d;->d()I
    move-result v3
  .line 8
    invoke-virtual { v0 }, Lc/e/b/k/d;->c()Ljava/util/HashSet;
    move-result-object v4
    const/4 v5, 0
    const/16 v6, 8
    const/4 v7, 1
    const/4 v8, 0
    if-eqz v4, :L13
    invoke-virtual { v0 }, Lc/e/b/k/d;->m()Z
    move-result v4
    if-eqz v4, :L13
  .line 9
    invoke-virtual { v0 }, Lc/e/b/k/d;->c()Ljava/util/HashSet;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v4
    if-eqz v4, :L13
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lc/e/b/k/d;
  .line 10
    iget-object v9, v4, Lc/e/b/k/d;->d:Lc/e/b/k/e;
  .line 11
    invoke-static { v9 }, Lc/e/b/k/m/h;->a(Lc/e/b/k/e;)Z
    move-result v10
  .line 12
    invoke-virtual { v9 }, Lc/e/b/k/e;->d0()Z
    move-result v11
    if-eqz v11, :L2
    if-eqz v10, :L2
  .line 13
    new-instance v11, Lc/e/b/k/m/b$a;
    invoke-direct { v11 }, Lc/e/b/k/m/b$a;-><init>()V
  .line 14
    sget v12, Lc/e/b/k/m/b$a;->k:I
    invoke-static { v9, p1, v11, v12 }, Lc/e/b/k/f;->A1(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Lc/e/b/k/m/b$a;I)Z
  :L2
  .line 15
    invoke-virtual { v9 }, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;
    move-result-object v11
    sget-object v12, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v11, v12, :L9
    if-eqz v10, :L3
    goto :L9
  :L3
  .line 16
    invoke-virtual { v9 }, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;
    move-result-object v10
    sget-object v11, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v10, v11, :L1
    iget v10, v9, Lc/e/b/k/e;->r:I
    if-ltz v10, :L1
    iget v10, v9, Lc/e/b/k/e;->q:I
    if-ltz v10, :L1
  .line 17
    invoke-virtual { v9 }, Lc/e/b/k/e;->Q()I
    move-result v10
    if-eq v10, v6, :L4
    iget v10, v9, Lc/e/b/k/e;->n:I
    if-nez v10, :L1
    invoke-virtual { v9 }, Lc/e/b/k/e;->t()F
    move-result v10
    cmpl-float v10, v10, v5
    if-nez v10, :L1
  :L4
  .line 18
    invoke-virtual { v9 }, Lc/e/b/k/e;->Z()Z
    move-result v10
    if-nez v10, :L1
    invoke-virtual { v9 }, Lc/e/b/k/e;->c0()Z
    move-result v10
    if-nez v10, :L1
  .line 19
    iget-object v10, v9, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    if-ne v4, v10, :L5
    iget-object v10, v9, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    iget-object v10, v10, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v10, :L5
    invoke-virtual { v10 }, Lc/e/b/k/d;->m()Z
    move-result v10
    if-nez v10, :L6
  :L5
    iget-object v10, v9, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    if-ne v4, v10, :L7
    iget-object v4, v9, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    iget-object v4, v4, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v4, :L7
  .line 20
    invoke-virtual { v4 }, Lc/e/b/k/d;->m()Z
    move-result v4
    if-eqz v4, :L7
  :L6
    const/4 v4, 1
    goto :L8
  :L7
    const/4 v4, 0
  :L8
    if-eqz v4, :L1
  .line 21
    invoke-virtual { v9 }, Lc/e/b/k/e;->Z()Z
    move-result v4
    if-nez v4, :L1
  .line 22
    invoke-static { p0, p1, v9, p2 }, Lc/e/b/k/m/h;->e(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Lc/e/b/k/e;Z)V
    goto/16 :L1
  :L9
  .line 23
    invoke-virtual { v9 }, Lc/e/b/k/e;->d0()Z
    move-result v10
    if-eqz v10, :L10
    goto/16 :L1
  :L10
  .line 24
    iget-object v10, v9, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    if-ne v4, v10, :L11
    iget-object v11, v9, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    iget-object v11, v11, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-nez v11, :L11
  .line 25
    invoke-virtual { v10 }, Lc/e/b/k/d;->e()I
    move-result v4
    add-int/2addr v4, v2
  .line 26
    invoke-virtual { v9 }, Lc/e/b/k/e;->R()I
    move-result v10
    add-int/2addr v10, v4
  .line 27
    invoke-virtual { v9, v4, v10 }, Lc/e/b/k/e;->p0(II)V
  .line 28
    invoke-static { v9, p1, p2 }, Lc/e/b/k/m/h;->b(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Z)V
    goto/16 :L1
  :L11
  .line 29
    iget-object v10, v9, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    if-ne v4, v10, :L12
    iget-object v11, v9, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    iget-object v11, v11, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-nez v11, :L12
  .line 30
    invoke-virtual { v10 }, Lc/e/b/k/d;->e()I
    move-result v4
    sub-int v4, v2, v4
  .line 31
    invoke-virtual { v9 }, Lc/e/b/k/e;->R()I
    move-result v10
    sub-int v10, v4, v10
  .line 32
    invoke-virtual { v9, v10, v4 }, Lc/e/b/k/e;->p0(II)V
  .line 33
    invoke-static { v9, p1, p2 }, Lc/e/b/k/m/h;->b(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Z)V
    goto/16 :L1
  :L12
  .line 34
    iget-object v10, v9, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    if-ne v4, v10, :L1
    iget-object v4, v9, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    iget-object v4, v4, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v4, :L1
  .line 35
    invoke-virtual { v4 }, Lc/e/b/k/d;->m()Z
    move-result v4
    if-eqz v4, :L1
    invoke-virtual { v9 }, Lc/e/b/k/e;->Z()Z
    move-result v4
    if-nez v4, :L1
  .line 36
    invoke-static { p1, v9, p2 }, Lc/e/b/k/m/h;->d(Lc/e/b/k/m/b$b;Lc/e/b/k/e;Z)V
    goto/16 :L1
  :L13
  .line 37
    instance-of v0, p0, Lc/e/b/k/g;
    if-eqz v0, :L14
    return-void
  :L14
  .line 38
    invoke-virtual { v1 }, Lc/e/b/k/d;->c()Ljava/util/HashSet;
    move-result-object v0
    if-eqz v0, :L27
    invoke-virtual { v1 }, Lc/e/b/k/d;->m()Z
    move-result v0
    if-eqz v0, :L27
  .line 39
    invoke-virtual { v1 }, Lc/e/b/k/d;->c()Ljava/util/HashSet;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L15
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L27
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lc/e/b/k/d;
  .line 40
    iget-object v2, v1, Lc/e/b/k/d;->d:Lc/e/b/k/e;
  .line 41
    invoke-static { v2 }, Lc/e/b/k/m/h;->a(Lc/e/b/k/e;)Z
    move-result v4
  .line 42
    invoke-virtual { v2 }, Lc/e/b/k/e;->d0()Z
    move-result v9
    if-eqz v9, :L16
    if-eqz v4, :L16
  .line 43
    new-instance v9, Lc/e/b/k/m/b$a;
    invoke-direct { v9 }, Lc/e/b/k/m/b$a;-><init>()V
  .line 44
    sget v10, Lc/e/b/k/m/b$a;->k:I
    invoke-static { v2, p1, v9, v10 }, Lc/e/b/k/f;->A1(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Lc/e/b/k/m/b$a;I)Z
  :L16
  .line 45
    iget-object v9, v2, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    if-ne v1, v9, :L17
    iget-object v9, v2, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    iget-object v9, v9, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v9, :L17
    invoke-virtual { v9 }, Lc/e/b/k/d;->m()Z
    move-result v9
    if-nez v9, :L18
  :L17
    iget-object v9, v2, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    if-ne v1, v9, :L19
    iget-object v9, v2, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    iget-object v9, v9, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v9, :L19
  .line 46
    invoke-virtual { v9 }, Lc/e/b/k/d;->m()Z
    move-result v9
    if-eqz v9, :L19
  :L18
    const/4 v9, 1
    goto :L20
  :L19
    const/4 v9, 0
  :L20
  .line 47
    invoke-virtual { v2 }, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;
    move-result-object v10
    sget-object v11, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v10, v11, :L23
    if-eqz v4, :L21
    goto :L23
  :L21
  .line 48
    invoke-virtual { v2 }, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;
    move-result-object v1
    sget-object v4, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v1, v4, :L15
    iget v1, v2, Lc/e/b/k/e;->r:I
    if-ltz v1, :L15
    iget v1, v2, Lc/e/b/k/e;->q:I
    if-ltz v1, :L15
  .line 49
    invoke-virtual { v2 }, Lc/e/b/k/e;->Q()I
    move-result v1
    if-eq v1, v6, :L22
    iget v1, v2, Lc/e/b/k/e;->n:I
    if-nez v1, :L15
    invoke-virtual { v2 }, Lc/e/b/k/e;->t()F
    move-result v1
    cmpl-float v1, v1, v5
    if-nez v1, :L15
  :L22
  .line 50
    invoke-virtual { v2 }, Lc/e/b/k/e;->Z()Z
    move-result v1
    if-nez v1, :L15
    invoke-virtual { v2 }, Lc/e/b/k/e;->c0()Z
    move-result v1
    if-nez v1, :L15
    if-eqz v9, :L15
  .line 51
    invoke-virtual { v2 }, Lc/e/b/k/e;->Z()Z
    move-result v1
    if-nez v1, :L15
  .line 52
    invoke-static { p0, p1, v2, p2 }, Lc/e/b/k/m/h;->e(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Lc/e/b/k/e;Z)V
    goto/16 :L15
  :L23
  .line 53
    invoke-virtual { v2 }, Lc/e/b/k/e;->d0()Z
    move-result v4
    if-eqz v4, :L24
    goto/16 :L15
  :L24
  .line 54
    iget-object v4, v2, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    if-ne v1, v4, :L25
    iget-object v10, v2, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    iget-object v10, v10, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-nez v10, :L25
  .line 55
    invoke-virtual { v4 }, Lc/e/b/k/d;->e()I
    move-result v1
    add-int/2addr v1, v3
  .line 56
    invoke-virtual { v2 }, Lc/e/b/k/e;->R()I
    move-result v4
    add-int/2addr v4, v1
  .line 57
    invoke-virtual { v2, v1, v4 }, Lc/e/b/k/e;->p0(II)V
  .line 58
    invoke-static { v2, p1, p2 }, Lc/e/b/k/m/h;->b(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Z)V
    goto/16 :L15
  :L25
  .line 59
    iget-object v4, v2, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    if-ne v1, v4, :L26
    iget-object v1, v2, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-nez v1, :L26
  .line 60
    invoke-virtual { v4 }, Lc/e/b/k/d;->e()I
    move-result v1
    sub-int v1, v3, v1
  .line 61
    invoke-virtual { v2 }, Lc/e/b/k/e;->R()I
    move-result v4
    sub-int v4, v1, v4
  .line 62
    invoke-virtual { v2, v4, v1 }, Lc/e/b/k/e;->p0(II)V
  .line 63
    invoke-static { v2, p1, p2 }, Lc/e/b/k/m/h;->b(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Z)V
    goto/16 :L15
  :L26
    if-eqz v9, :L15
  .line 64
    invoke-virtual { v2 }, Lc/e/b/k/e;->Z()Z
    move-result v1
    if-nez v1, :L15
  .line 65
    invoke-static { p1, v2, p2 }, Lc/e/b/k/m/h;->d(Lc/e/b/k/m/b$b;Lc/e/b/k/e;Z)V
    goto/16 :L15
  :L27
    return-void
.end method

.method private static c(Lc/e/b/k/a;Lc/e/b/k/m/b$b;IZ)V
  .registers 5
  .line 1
    invoke-virtual { p0 }, Lc/e/b/k/a;->c1()Z
    move-result v0
    if-eqz v0, :L1
    if-nez p2, :L0
  .line 2
    invoke-static { p0, p1, p3 }, Lc/e/b/k/m/h;->b(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Z)V
    goto :L1
  :L0
  .line 3
    invoke-static { p0, p1 }, Lc/e/b/k/m/h;->i(Lc/e/b/k/e;Lc/e/b/k/m/b$b;)V
  :L1
    return-void
.end method

.method private static d(Lc/e/b/k/m/b$b;Lc/e/b/k/e;Z)V
  .registers 9
  .line 1
    invoke-virtual { p1 }, Lc/e/b/k/e;->w()F
    move-result v0
  .line 2
    iget-object v1, p1, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    invoke-virtual { v1 }, Lc/e/b/k/d;->d()I
    move-result v1
  .line 3
    iget-object v2, p1, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    iget-object v2, v2, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    invoke-virtual { v2 }, Lc/e/b/k/d;->d()I
    move-result v2
  .line 4
    iget-object v3, p1, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    invoke-virtual { v3 }, Lc/e/b/k/d;->e()I
    move-result v3
    add-int/2addr v3, v1
  .line 5
    iget-object v4, p1, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    invoke-virtual { v4 }, Lc/e/b/k/d;->e()I
    move-result v4
    sub-int v4, v2, v4
    const/high16 v5, 16128
    if-ne v1, v2, :L0
    const/high16 v0, 16128
    goto :L1
  :L0
    move v1, v3
    move v2, v4
  :L1
  .line 6
    invoke-virtual { p1 }, Lc/e/b/k/e;->R()I
    move-result v3
    sub-int v4, v2, v1
    sub-int/2addr v4, v3
    if-le v1, v2, :L2
    sub-int v4, v1, v2
    sub-int/2addr v4, v3
  :L2
    int-to-float v4, v4
    mul-float v0, v0, v4
    add-float/2addr v0, v5
    float-to-int v0, v0
    add-int/2addr v0, v1
    add-int v4, v0, v3
    if-le v1, v2, :L3
    sub-int v4, v0, v3
  :L3
  .line 7
    invoke-virtual { p1, v0, v4 }, Lc/e/b/k/e;->p0(II)V
  .line 8
    invoke-static { p1, p0, p2 }, Lc/e/b/k/m/h;->b(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Z)V
    return-void
.end method

.method private static e(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Lc/e/b/k/e;Z)V
  .registers 11
  .line 1
    invoke-virtual { p2 }, Lc/e/b/k/e;->w()F
    move-result v0
  .line 2
    iget-object v1, p2, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    invoke-virtual { v1 }, Lc/e/b/k/d;->d()I
    move-result v1
    iget-object v2, p2, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    invoke-virtual { v2 }, Lc/e/b/k/d;->e()I
    move-result v2
    add-int/2addr v1, v2
  .line 3
    iget-object v2, p2, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    iget-object v2, v2, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    invoke-virtual { v2 }, Lc/e/b/k/d;->d()I
    move-result v2
    iget-object v3, p2, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    invoke-virtual { v3 }, Lc/e/b/k/d;->e()I
    move-result v3
    sub-int/2addr v2, v3
    if-lt v2, v1, :L5
  .line 4
    invoke-virtual { p2 }, Lc/e/b/k/e;->R()I
    move-result v3
  .line 5
    invoke-virtual { p2 }, Lc/e/b/k/e;->Q()I
    move-result v4
    const/16 v5, 8
    const/high16 v6, 16128
    if-eq v4, v5, :L4
  .line 6
    iget v4, p2, Lc/e/b/k/e;->n:I
    const/4 v5, 2
    if-ne v4, v5, :L2
  .line 7
    instance-of v3, p0, Lc/e/b/k/f;
    if-eqz v3, :L0
  .line 8
    invoke-virtual { p0 }, Lc/e/b/k/e;->R()I
    move-result p0
    goto :L1
  :L0
  .line 9
    invoke-virtual { p0 }, Lc/e/b/k/e;->I()Lc/e/b/k/e;
    move-result-object p0
    invoke-virtual { p0 }, Lc/e/b/k/e;->R()I
    move-result p0
  :L1
  .line 10
    invoke-virtual { p2 }, Lc/e/b/k/e;->w()F
    move-result v3
    mul-float v3, v3, v6
    int-to-float p0, p0
    mul-float v3, v3, p0
    float-to-int v3, v3
    goto :L3
  :L2
    if-nez v4, :L3
    sub-int v3, v2, v1
  :L3
  .line 11
    iget p0, p2, Lc/e/b/k/e;->q:I
    invoke-static { p0, v3 }, Ljava/lang/Math;->max(II)I
    move-result v3
  .line 12
    iget p0, p2, Lc/e/b/k/e;->r:I
    if-lez p0, :L4
  .line 13
    invoke-static { p0, v3 }, Ljava/lang/Math;->min(II)I
    move-result v3
  :L4
    sub-int/2addr v2, v1
    sub-int/2addr v2, v3
    int-to-float p0, v2
    mul-float v0, v0, p0
    add-float/2addr v0, v6
    float-to-int p0, v0
    add-int/2addr v1, p0
    add-int/2addr v3, v1
  .line 14
    invoke-virtual { p2, v1, v3 }, Lc/e/b/k/e;->p0(II)V
  .line 15
    invoke-static { p2, p1, p3 }, Lc/e/b/k/m/h;->b(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Z)V
  :L5
    return-void
.end method

.method private static f(Lc/e/b/k/m/b$b;Lc/e/b/k/e;)V
  .registers 8
  .line 1
    invoke-virtual { p1 }, Lc/e/b/k/e;->M()F
    move-result v0
  .line 2
    iget-object v1, p1, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    invoke-virtual { v1 }, Lc/e/b/k/d;->d()I
    move-result v1
  .line 3
    iget-object v2, p1, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    iget-object v2, v2, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    invoke-virtual { v2 }, Lc/e/b/k/d;->d()I
    move-result v2
  .line 4
    iget-object v3, p1, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    invoke-virtual { v3 }, Lc/e/b/k/d;->e()I
    move-result v3
    add-int/2addr v3, v1
  .line 5
    iget-object v4, p1, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    invoke-virtual { v4 }, Lc/e/b/k/d;->e()I
    move-result v4
    sub-int v4, v2, v4
    const/high16 v5, 16128
    if-ne v1, v2, :L0
    const/high16 v0, 16128
    goto :L1
  :L0
    move v1, v3
    move v2, v4
  :L1
  .line 6
    invoke-virtual { p1 }, Lc/e/b/k/e;->v()I
    move-result v3
    sub-int v4, v2, v1
    sub-int/2addr v4, v3
    if-le v1, v2, :L2
    sub-int v4, v1, v2
    sub-int/2addr v4, v3
  :L2
    int-to-float v4, v4
    mul-float v0, v0, v4
    add-float/2addr v0, v5
    float-to-int v0, v0
    add-int v4, v1, v0
    add-int v5, v4, v3
    if-le v1, v2, :L3
    sub-int v4, v1, v0
    sub-int v5, v4, v3
  :L3
  .line 7
    invoke-virtual { p1, v4, v5 }, Lc/e/b/k/e;->s0(II)V
  .line 8
    invoke-static { p1, p0 }, Lc/e/b/k/m/h;->i(Lc/e/b/k/e;Lc/e/b/k/m/b$b;)V
    return-void
.end method

.method private static g(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Lc/e/b/k/e;)V
  .registers 10
  .line 1
    invoke-virtual { p2 }, Lc/e/b/k/e;->M()F
    move-result v0
  .line 2
    iget-object v1, p2, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    invoke-virtual { v1 }, Lc/e/b/k/d;->d()I
    move-result v1
    iget-object v2, p2, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    invoke-virtual { v2 }, Lc/e/b/k/d;->e()I
    move-result v2
    add-int/2addr v1, v2
  .line 3
    iget-object v2, p2, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    iget-object v2, v2, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    invoke-virtual { v2 }, Lc/e/b/k/d;->d()I
    move-result v2
    iget-object v3, p2, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    invoke-virtual { v3 }, Lc/e/b/k/d;->e()I
    move-result v3
    sub-int/2addr v2, v3
    if-lt v2, v1, :L5
  .line 4
    invoke-virtual { p2 }, Lc/e/b/k/e;->v()I
    move-result v3
  .line 5
    invoke-virtual { p2 }, Lc/e/b/k/e;->Q()I
    move-result v4
    const/16 v5, 8
    const/high16 v6, 16128
    if-eq v4, v5, :L4
  .line 6
    iget v4, p2, Lc/e/b/k/e;->o:I
    const/4 v5, 2
    if-ne v4, v5, :L2
  .line 7
    instance-of v3, p0, Lc/e/b/k/f;
    if-eqz v3, :L0
  .line 8
    invoke-virtual { p0 }, Lc/e/b/k/e;->v()I
    move-result p0
    goto :L1
  :L0
  .line 9
    invoke-virtual { p0 }, Lc/e/b/k/e;->I()Lc/e/b/k/e;
    move-result-object p0
    invoke-virtual { p0 }, Lc/e/b/k/e;->v()I
    move-result p0
  :L1
    mul-float v3, v0, v6
    int-to-float p0, p0
    mul-float v3, v3, p0
    float-to-int v3, v3
    goto :L3
  :L2
    if-nez v4, :L3
    sub-int v3, v2, v1
  :L3
  .line 10
    iget p0, p2, Lc/e/b/k/e;->t:I
    invoke-static { p0, v3 }, Ljava/lang/Math;->max(II)I
    move-result v3
  .line 11
    iget p0, p2, Lc/e/b/k/e;->u:I
    if-lez p0, :L4
  .line 12
    invoke-static { p0, v3 }, Ljava/lang/Math;->min(II)I
    move-result v3
  :L4
    sub-int/2addr v2, v1
    sub-int/2addr v2, v3
    int-to-float p0, v2
    mul-float v0, v0, p0
    add-float/2addr v0, v6
    float-to-int p0, v0
    add-int/2addr v1, p0
    add-int/2addr v3, v1
  .line 13
    invoke-virtual { p2, v1, v3 }, Lc/e/b/k/e;->s0(II)V
  .line 14
    invoke-static { p2, p1 }, Lc/e/b/k/m/h;->i(Lc/e/b/k/e;Lc/e/b/k/m/b$b;)V
  :L5
    return-void
.end method

.method public static h(Lc/e/b/k/f;Lc/e/b/k/m/b$b;)V
  .registers 15
  .line 1
    invoke-virtual { p0 }, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;
    move-result-object v0
  .line 2
    invoke-virtual { p0 }, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;
    move-result-object v1
  .line 3
    invoke-virtual { p0 }, Lc/e/b/k/e;->i0()V
  .line 4
    invoke-virtual { p0 }, Lc/e/b/k/l;->a1()Ljava/util/ArrayList;
    move-result-object v2
  .line 5
    invoke-virtual { v2 }, Ljava/util/ArrayList;->size()I
    move-result v3
    const/4 v4, 0
    const/4 v5, 0
  :L0
    if-ge v5, v3, :L1
  .line 6
    invoke-virtual { v2, v5 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Lc/e/b/k/e;
  .line 7
    invoke-virtual { v6 }, Lc/e/b/k/e;->i0()V
    add-int/lit8 v5, v5, 1
    goto :L0
  :L1
  .line 8
    invoke-virtual { p0 }, Lc/e/b/k/f;->x1()Z
    move-result v5
  .line 9
    sget-object v6, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    if-ne v0, v6, :L2
  .line 10
    invoke-virtual { p0 }, Lc/e/b/k/e;->R()I
    move-result v0
    invoke-virtual { p0, v4, v0 }, Lc/e/b/k/e;->p0(II)V
    goto :L3
  :L2
  .line 11
    invoke-virtual { p0, v4 }, Lc/e/b/k/e;->q0(I)V
  :L3
    const/4 v0, 0
    const/4 v6, 0
    const/4 v7, 0
  :L4
    const/high16 v8, 16128
    const/4 v9, -1
    const/4 v10, 1
    if-ge v0, v3, :L10
  .line 12
    invoke-virtual { v2, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v11
    check-cast v11, Lc/e/b/k/e;
  .line 13
    instance-of v12, v11, Lc/e/b/k/g;
    if-eqz v12, :L8
  .line 14
    check-cast v11, Lc/e/b/k/g;
  .line 15
    invoke-virtual { v11 }, Lc/e/b/k/g;->b1()I
    move-result v12
    if-ne v12, v10, :L9
  .line 16
    invoke-virtual { v11 }, Lc/e/b/k/g;->c1()I
    move-result v6
    if-eq v6, v9, :L5
  .line 17
    invoke-virtual { v11 }, Lc/e/b/k/g;->c1()I
    move-result v6
    invoke-virtual { v11, v6 }, Lc/e/b/k/g;->f1(I)V
    goto :L7
  :L5
  .line 18
    invoke-virtual { v11 }, Lc/e/b/k/g;->d1()I
    move-result v6
    if-eq v6, v9, :L6
    invoke-virtual { p0 }, Lc/e/b/k/e;->e0()Z
    move-result v6
    if-eqz v6, :L6
  .line 19
    invoke-virtual { p0 }, Lc/e/b/k/e;->R()I
    move-result v6
    invoke-virtual { v11 }, Lc/e/b/k/g;->d1()I
    move-result v8
    sub-int/2addr v6, v8
    invoke-virtual { v11, v6 }, Lc/e/b/k/g;->f1(I)V
    goto :L7
  :L6
  .line 20
    invoke-virtual { p0 }, Lc/e/b/k/e;->e0()Z
    move-result v6
    if-eqz v6, :L7
  .line 21
    invoke-virtual { v11 }, Lc/e/b/k/g;->e1()F
    move-result v6
    invoke-virtual { p0 }, Lc/e/b/k/e;->R()I
    move-result v9
    int-to-float v9, v9
    mul-float v6, v6, v9
    add-float/2addr v6, v8
    float-to-int v6, v6
  .line 22
    invoke-virtual { v11, v6 }, Lc/e/b/k/g;->f1(I)V
  :L7
    const/4 v6, 1
    goto :L9
  :L8
  .line 23
    instance-of v8, v11, Lc/e/b/k/a;
    if-eqz v8, :L9
  .line 24
    check-cast v11, Lc/e/b/k/a;
  .line 25
    invoke-virtual { v11 }, Lc/e/b/k/a;->g1()I
    move-result v8
    if-nez v8, :L9
    const/4 v7, 1
  :L9
    add-int/lit8 v0, v0, 1
    goto :L4
  :L10
    if-eqz v6, :L13
    const/4 v0, 0
  :L11
    if-ge v0, v3, :L13
  .line 26
    invoke-virtual { v2, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Lc/e/b/k/e;
  .line 27
    instance-of v11, v6, Lc/e/b/k/g;
    if-eqz v11, :L12
  .line 28
    check-cast v6, Lc/e/b/k/g;
  .line 29
    invoke-virtual { v6 }, Lc/e/b/k/g;->b1()I
    move-result v11
    if-ne v11, v10, :L12
  .line 30
    invoke-static { v6, p1, v5 }, Lc/e/b/k/m/h;->b(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Z)V
  :L12
    add-int/lit8 v0, v0, 1
    goto :L11
  :L13
  .line 31
    invoke-static { p0, p1, v5 }, Lc/e/b/k/m/h;->b(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Z)V
    if-eqz v7, :L16
    const/4 v0, 0
  :L14
    if-ge v0, v3, :L16
  .line 32
    invoke-virtual { v2, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Lc/e/b/k/e;
  .line 33
    instance-of v7, v6, Lc/e/b/k/a;
    if-eqz v7, :L15
  .line 34
    check-cast v6, Lc/e/b/k/a;
  .line 35
    invoke-virtual { v6 }, Lc/e/b/k/a;->g1()I
    move-result v7
    if-nez v7, :L15
  .line 36
    invoke-static { v6, p1, v4, v5 }, Lc/e/b/k/m/h;->c(Lc/e/b/k/a;Lc/e/b/k/m/b$b;IZ)V
  :L15
    add-int/lit8 v0, v0, 1
    goto :L14
  :L16
  .line 37
    sget-object v0, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    if-ne v1, v0, :L17
  .line 38
    invoke-virtual { p0 }, Lc/e/b/k/e;->v()I
    move-result v0
    invoke-virtual { p0, v4, v0 }, Lc/e/b/k/e;->s0(II)V
    goto :L18
  :L17
  .line 39
    invoke-virtual { p0, v4 }, Lc/e/b/k/e;->r0(I)V
  :L18
    const/4 v0, 0
    const/4 v1, 0
    const/4 v6, 0
  :L19
    if-ge v0, v3, :L25
  .line 40
    invoke-virtual { v2, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Lc/e/b/k/e;
  .line 41
    instance-of v11, v7, Lc/e/b/k/g;
    if-eqz v11, :L23
  .line 42
    check-cast v7, Lc/e/b/k/g;
  .line 43
    invoke-virtual { v7 }, Lc/e/b/k/g;->b1()I
    move-result v11
    if-nez v11, :L24
  .line 44
    invoke-virtual { v7 }, Lc/e/b/k/g;->c1()I
    move-result v1
    if-eq v1, v9, :L20
  .line 45
    invoke-virtual { v7 }, Lc/e/b/k/g;->c1()I
    move-result v1
    invoke-virtual { v7, v1 }, Lc/e/b/k/g;->f1(I)V
    goto :L22
  :L20
  .line 46
    invoke-virtual { v7 }, Lc/e/b/k/g;->d1()I
    move-result v1
    if-eq v1, v9, :L21
    invoke-virtual { p0 }, Lc/e/b/k/e;->f0()Z
    move-result v1
    if-eqz v1, :L21
  .line 47
    invoke-virtual { p0 }, Lc/e/b/k/e;->v()I
    move-result v1
    invoke-virtual { v7 }, Lc/e/b/k/g;->d1()I
    move-result v11
    sub-int/2addr v1, v11
    invoke-virtual { v7, v1 }, Lc/e/b/k/g;->f1(I)V
    goto :L22
  :L21
  .line 48
    invoke-virtual { p0 }, Lc/e/b/k/e;->f0()Z
    move-result v1
    if-eqz v1, :L22
  .line 49
    invoke-virtual { v7 }, Lc/e/b/k/g;->e1()F
    move-result v1
    invoke-virtual { p0 }, Lc/e/b/k/e;->v()I
    move-result v11
    int-to-float v11, v11
    mul-float v1, v1, v11
    add-float/2addr v1, v8
    float-to-int v1, v1
  .line 50
    invoke-virtual { v7, v1 }, Lc/e/b/k/g;->f1(I)V
  :L22
    const/4 v1, 1
    goto :L24
  :L23
  .line 51
    instance-of v11, v7, Lc/e/b/k/a;
    if-eqz v11, :L24
  .line 52
    check-cast v7, Lc/e/b/k/a;
  .line 53
    invoke-virtual { v7 }, Lc/e/b/k/a;->g1()I
    move-result v7
    if-ne v7, v10, :L24
    const/4 v6, 1
  :L24
    add-int/lit8 v0, v0, 1
    goto :L19
  :L25
    if-eqz v1, :L28
    const/4 v0, 0
  :L26
    if-ge v0, v3, :L28
  .line 54
    invoke-virtual { v2, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lc/e/b/k/e;
  .line 55
    instance-of v7, v1, Lc/e/b/k/g;
    if-eqz v7, :L27
  .line 56
    check-cast v1, Lc/e/b/k/g;
  .line 57
    invoke-virtual { v1 }, Lc/e/b/k/g;->b1()I
    move-result v7
    if-nez v7, :L27
  .line 58
    invoke-static { v1, p1 }, Lc/e/b/k/m/h;->i(Lc/e/b/k/e;Lc/e/b/k/m/b$b;)V
  :L27
    add-int/lit8 v0, v0, 1
    goto :L26
  :L28
  .line 59
    invoke-static { p0, p1 }, Lc/e/b/k/m/h;->i(Lc/e/b/k/e;Lc/e/b/k/m/b$b;)V
    if-eqz v6, :L31
    const/4 p0, 0
  :L29
    if-ge p0, v3, :L31
  .line 60
    invoke-virtual { v2, p0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/e/b/k/e;
  .line 61
    instance-of v1, v0, Lc/e/b/k/a;
    if-eqz v1, :L30
  .line 62
    check-cast v0, Lc/e/b/k/a;
  .line 63
    invoke-virtual { v0 }, Lc/e/b/k/a;->g1()I
    move-result v1
    if-ne v1, v10, :L30
  .line 64
    invoke-static { v0, p1, v10, v5 }, Lc/e/b/k/m/h;->c(Lc/e/b/k/a;Lc/e/b/k/m/b$b;IZ)V
  :L30
    add-int/lit8 p0, p0, 1
    goto :L29
  :L31
    if-ge v4, v3, :L33
  .line 65
    invoke-virtual { v2, v4 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Lc/e/b/k/e;
  .line 66
    invoke-virtual { p0 }, Lc/e/b/k/e;->d0()Z
    move-result v0
    if-eqz v0, :L32
    invoke-static { p0 }, Lc/e/b/k/m/h;->a(Lc/e/b/k/e;)Z
    move-result v0
    if-eqz v0, :L32
  .line 67
    sget-object v0, Lc/e/b/k/m/h;->a:Lc/e/b/k/m/b$a;
    sget v1, Lc/e/b/k/m/b$a;->k:I
    invoke-static { p0, p1, v0, v1 }, Lc/e/b/k/f;->A1(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Lc/e/b/k/m/b$a;I)Z
  .line 68
    invoke-static { p0, p1, v5 }, Lc/e/b/k/m/h;->b(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Z)V
  .line 69
    invoke-static { p0, p1 }, Lc/e/b/k/m/h;->i(Lc/e/b/k/e;Lc/e/b/k/m/b$b;)V
  :L32
    add-int/lit8 v4, v4, 1
    goto :L31
  :L33
    return-void
.end method

.method private static i(Lc/e/b/k/e;Lc/e/b/k/m/b$b;)V
  .catchall { :L32 .. :L33 } :L35
  .registers 15
  .line 1
    instance-of v0, p0, Lc/e/b/k/f;
    if-nez v0, :L0
    invoke-virtual { p0 }, Lc/e/b/k/e;->d0()Z
    move-result v0
    if-eqz v0, :L0
    invoke-static { p0 }, Lc/e/b/k/m/h;->a(Lc/e/b/k/e;)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    new-instance v0, Lc/e/b/k/m/b$a;
    invoke-direct { v0 }, Lc/e/b/k/m/b$a;-><init>()V
  .line 3
    sget v1, Lc/e/b/k/m/b$a;->k:I
    invoke-static { p0, p1, v0, v1 }, Lc/e/b/k/f;->A1(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Lc/e/b/k/m/b$a;I)Z
  :L0
  .line 4
    sget-object v0, Lc/e/b/k/d$b;->d:Lc/e/b/k/d$b;
    invoke-virtual { p0, v0 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v0
  .line 5
    sget-object v1, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;
    invoke-virtual { p0, v1 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v1
  .line 6
    invoke-virtual { v0 }, Lc/e/b/k/d;->d()I
    move-result v2
  .line 7
    invoke-virtual { v1 }, Lc/e/b/k/d;->d()I
    move-result v3
  .line 8
    invoke-virtual { v0 }, Lc/e/b/k/d;->c()Ljava/util/HashSet;
    move-result-object v4
    const/4 v5, 0
    const/16 v6, 8
    const/4 v7, 1
    const/4 v8, 0
    if-eqz v4, :L13
    invoke-virtual { v0 }, Lc/e/b/k/d;->m()Z
    move-result v4
    if-eqz v4, :L13
  .line 9
    invoke-virtual { v0 }, Lc/e/b/k/d;->c()Ljava/util/HashSet;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v4
    if-eqz v4, :L13
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lc/e/b/k/d;
  .line 10
    iget-object v9, v4, Lc/e/b/k/d;->d:Lc/e/b/k/e;
  .line 11
    invoke-static { v9 }, Lc/e/b/k/m/h;->a(Lc/e/b/k/e;)Z
    move-result v10
  .line 12
    invoke-virtual { v9 }, Lc/e/b/k/e;->d0()Z
    move-result v11
    if-eqz v11, :L2
    if-eqz v10, :L2
  .line 13
    new-instance v11, Lc/e/b/k/m/b$a;
    invoke-direct { v11 }, Lc/e/b/k/m/b$a;-><init>()V
  .line 14
    sget v12, Lc/e/b/k/m/b$a;->k:I
    invoke-static { v9, p1, v11, v12 }, Lc/e/b/k/f;->A1(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Lc/e/b/k/m/b$a;I)Z
  :L2
  .line 15
    invoke-virtual { v9 }, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;
    move-result-object v11
    sget-object v12, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v11, v12, :L9
    if-eqz v10, :L3
    goto :L9
  :L3
  .line 16
    invoke-virtual { v9 }, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;
    move-result-object v10
    sget-object v11, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v10, v11, :L1
    iget v10, v9, Lc/e/b/k/e;->u:I
    if-ltz v10, :L1
    iget v10, v9, Lc/e/b/k/e;->t:I
    if-ltz v10, :L1
  .line 17
    invoke-virtual { v9 }, Lc/e/b/k/e;->Q()I
    move-result v10
    if-eq v10, v6, :L4
    iget v10, v9, Lc/e/b/k/e;->o:I
    if-nez v10, :L1
    invoke-virtual { v9 }, Lc/e/b/k/e;->t()F
    move-result v10
    cmpl-float v10, v10, v5
    if-nez v10, :L1
  :L4
  .line 18
    invoke-virtual { v9 }, Lc/e/b/k/e;->b0()Z
    move-result v10
    if-nez v10, :L1
    invoke-virtual { v9 }, Lc/e/b/k/e;->c0()Z
    move-result v10
    if-nez v10, :L1
  .line 19
    iget-object v10, v9, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    if-ne v4, v10, :L5
    iget-object v10, v9, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    iget-object v10, v10, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v10, :L5
    invoke-virtual { v10 }, Lc/e/b/k/d;->m()Z
    move-result v10
    if-nez v10, :L6
  :L5
    iget-object v10, v9, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    if-ne v4, v10, :L7
    iget-object v4, v9, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    iget-object v4, v4, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v4, :L7
  .line 20
    invoke-virtual { v4 }, Lc/e/b/k/d;->m()Z
    move-result v4
    if-eqz v4, :L7
  :L6
    const/4 v4, 1
    goto :L8
  :L7
    const/4 v4, 0
  :L8
    if-eqz v4, :L1
  .line 21
    invoke-virtual { v9 }, Lc/e/b/k/e;->b0()Z
    move-result v4
    if-nez v4, :L1
  .line 22
    invoke-static { p0, p1, v9 }, Lc/e/b/k/m/h;->g(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Lc/e/b/k/e;)V
    goto/16 :L1
  :L9
  .line 23
    invoke-virtual { v9 }, Lc/e/b/k/e;->d0()Z
    move-result v10
    if-eqz v10, :L10
    goto/16 :L1
  :L10
  .line 24
    iget-object v10, v9, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    if-ne v4, v10, :L11
    iget-object v11, v9, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    iget-object v11, v11, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-nez v11, :L11
  .line 25
    invoke-virtual { v10 }, Lc/e/b/k/d;->e()I
    move-result v4
    add-int/2addr v4, v2
  .line 26
    invoke-virtual { v9 }, Lc/e/b/k/e;->v()I
    move-result v10
    add-int/2addr v10, v4
  .line 27
    invoke-virtual { v9, v4, v10 }, Lc/e/b/k/e;->s0(II)V
  .line 28
    invoke-static { v9, p1 }, Lc/e/b/k/m/h;->i(Lc/e/b/k/e;Lc/e/b/k/m/b$b;)V
    goto/16 :L1
  :L11
  .line 29
    iget-object v10, v9, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    if-ne v4, v10, :L12
    iget-object v11, v10, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-nez v11, :L12
  .line 30
    invoke-virtual { v10 }, Lc/e/b/k/d;->e()I
    move-result v4
    sub-int v4, v2, v4
  .line 31
    invoke-virtual { v9 }, Lc/e/b/k/e;->v()I
    move-result v10
    sub-int v10, v4, v10
  .line 32
    invoke-virtual { v9, v10, v4 }, Lc/e/b/k/e;->s0(II)V
  .line 33
    invoke-static { v9, p1 }, Lc/e/b/k/m/h;->i(Lc/e/b/k/e;Lc/e/b/k/m/b$b;)V
    goto/16 :L1
  :L12
  .line 34
    iget-object v10, v9, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    if-ne v4, v10, :L1
    iget-object v4, v9, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    iget-object v4, v4, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v4, :L1
  .line 35
    invoke-virtual { v4 }, Lc/e/b/k/d;->m()Z
    move-result v4
    if-eqz v4, :L1
  .line 36
    invoke-static { p1, v9 }, Lc/e/b/k/m/h;->f(Lc/e/b/k/m/b$b;Lc/e/b/k/e;)V
    goto/16 :L1
  :L13
  .line 37
    instance-of v0, p0, Lc/e/b/k/g;
    if-eqz v0, :L14
    return-void
  :L14
  .line 38
    invoke-virtual { v1 }, Lc/e/b/k/d;->c()Ljava/util/HashSet;
    move-result-object v0
    if-eqz v0, :L27
    invoke-virtual { v1 }, Lc/e/b/k/d;->m()Z
    move-result v0
    if-eqz v0, :L27
  .line 39
    invoke-virtual { v1 }, Lc/e/b/k/d;->c()Ljava/util/HashSet;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L15
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L27
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lc/e/b/k/d;
  .line 40
    iget-object v2, v1, Lc/e/b/k/d;->d:Lc/e/b/k/e;
  .line 41
    invoke-static { v2 }, Lc/e/b/k/m/h;->a(Lc/e/b/k/e;)Z
    move-result v4
  .line 42
    invoke-virtual { v2 }, Lc/e/b/k/e;->d0()Z
    move-result v9
    if-eqz v9, :L16
    if-eqz v4, :L16
  .line 43
    new-instance v9, Lc/e/b/k/m/b$a;
    invoke-direct { v9 }, Lc/e/b/k/m/b$a;-><init>()V
  .line 44
    sget v10, Lc/e/b/k/m/b$a;->k:I
    invoke-static { v2, p1, v9, v10 }, Lc/e/b/k/f;->A1(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Lc/e/b/k/m/b$a;I)Z
  :L16
  .line 45
    iget-object v9, v2, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    if-ne v1, v9, :L17
    iget-object v9, v2, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    iget-object v9, v9, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v9, :L17
    invoke-virtual { v9 }, Lc/e/b/k/d;->m()Z
    move-result v9
    if-nez v9, :L18
  :L17
    iget-object v9, v2, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    if-ne v1, v9, :L19
    iget-object v9, v2, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    iget-object v9, v9, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v9, :L19
  .line 46
    invoke-virtual { v9 }, Lc/e/b/k/d;->m()Z
    move-result v9
    if-eqz v9, :L19
  :L18
    const/4 v9, 1
    goto :L20
  :L19
    const/4 v9, 0
  :L20
  .line 47
    invoke-virtual { v2 }, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;
    move-result-object v10
    sget-object v11, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v10, v11, :L23
    if-eqz v4, :L21
    goto :L23
  :L21
  .line 48
    invoke-virtual { v2 }, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;
    move-result-object v1
    sget-object v4, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v1, v4, :L15
    iget v1, v2, Lc/e/b/k/e;->u:I
    if-ltz v1, :L15
    iget v1, v2, Lc/e/b/k/e;->t:I
    if-ltz v1, :L15
  .line 49
    invoke-virtual { v2 }, Lc/e/b/k/e;->Q()I
    move-result v1
    if-eq v1, v6, :L22
    iget v1, v2, Lc/e/b/k/e;->o:I
    if-nez v1, :L15
    invoke-virtual { v2 }, Lc/e/b/k/e;->t()F
    move-result v1
    cmpl-float v1, v1, v5
    if-nez v1, :L15
  :L22
  .line 50
    invoke-virtual { v2 }, Lc/e/b/k/e;->b0()Z
    move-result v1
    if-nez v1, :L15
    invoke-virtual { v2 }, Lc/e/b/k/e;->c0()Z
    move-result v1
    if-nez v1, :L15
    if-eqz v9, :L15
  .line 51
    invoke-virtual { v2 }, Lc/e/b/k/e;->b0()Z
    move-result v1
    if-nez v1, :L15
  .line 52
    invoke-static { p0, p1, v2 }, Lc/e/b/k/m/h;->g(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Lc/e/b/k/e;)V
    goto/16 :L15
  :L23
  .line 53
    invoke-virtual { v2 }, Lc/e/b/k/e;->d0()Z
    move-result v4
    if-eqz v4, :L24
    goto/16 :L15
  :L24
  .line 54
    iget-object v4, v2, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    if-ne v1, v4, :L25
    iget-object v10, v2, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    iget-object v10, v10, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-nez v10, :L25
  .line 55
    invoke-virtual { v4 }, Lc/e/b/k/d;->e()I
    move-result v1
    add-int/2addr v1, v3
  .line 56
    invoke-virtual { v2 }, Lc/e/b/k/e;->v()I
    move-result v4
    add-int/2addr v4, v1
  .line 57
    invoke-virtual { v2, v1, v4 }, Lc/e/b/k/e;->s0(II)V
  .line 58
    invoke-static { v2, p1 }, Lc/e/b/k/m/h;->i(Lc/e/b/k/e;Lc/e/b/k/m/b$b;)V
    goto/16 :L15
  :L25
  .line 59
    iget-object v4, v2, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    if-ne v1, v4, :L26
    iget-object v1, v2, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-nez v1, :L26
  .line 60
    invoke-virtual { v4 }, Lc/e/b/k/d;->e()I
    move-result v1
    sub-int v1, v3, v1
  .line 61
    invoke-virtual { v2 }, Lc/e/b/k/e;->v()I
    move-result v4
    sub-int v4, v1, v4
  .line 62
    invoke-virtual { v2, v4, v1 }, Lc/e/b/k/e;->s0(II)V
  .line 63
    invoke-static { v2, p1 }, Lc/e/b/k/m/h;->i(Lc/e/b/k/e;Lc/e/b/k/m/b$b;)V
    goto/16 :L15
  :L26
    if-eqz v9, :L15
  .line 64
    invoke-virtual { v2 }, Lc/e/b/k/e;->b0()Z
    move-result v1
    if-nez v1, :L15
  .line 65
    invoke-static { p1, v2 }, Lc/e/b/k/m/h;->f(Lc/e/b/k/m/b$b;Lc/e/b/k/e;)V
    goto/16 :L15
  :L27
  .line 66
    sget-object v0, Lc/e/b/k/d$b;->g:Lc/e/b/k/d$b;
    invoke-virtual { p0, v0 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object p0
  .line 67
    invoke-virtual { p0 }, Lc/e/b/k/d;->c()Ljava/util/HashSet;
    move-result-object v0
    if-eqz v0, :L34
    invoke-virtual { p0 }, Lc/e/b/k/d;->m()Z
    move-result v0
    if-eqz v0, :L34
  .line 68
    invoke-virtual { p0 }, Lc/e/b/k/d;->d()I
    move-result v0
  .line 69
    invoke-virtual { p0 }, Lc/e/b/k/d;->c()Ljava/util/HashSet;
    move-result-object p0
    invoke-virtual { p0 }, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
    move-result-object p0
  :L28
    invoke-interface { p0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L34
    invoke-interface { p0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lc/e/b/k/d;
  .line 70
    iget-object v2, v1, Lc/e/b/k/d;->d:Lc/e/b/k/e;
  .line 71
    invoke-static { v2 }, Lc/e/b/k/m/h;->a(Lc/e/b/k/e;)Z
    move-result v3
  .line 72
    invoke-virtual { v2 }, Lc/e/b/k/e;->d0()Z
    move-result v4
    if-eqz v4, :L29
    if-eqz v3, :L29
  .line 73
    new-instance v4, Lc/e/b/k/m/b$a;
    invoke-direct { v4 }, Lc/e/b/k/m/b$a;-><init>()V
  .line 74
    sget v5, Lc/e/b/k/m/b$a;->k:I
    invoke-static { v2, p1, v4, v5 }, Lc/e/b/k/f;->A1(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Lc/e/b/k/m/b$a;I)Z
  :L29
  .line 75
    invoke-virtual { v2 }, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;
    move-result-object v4
    sget-object v5, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v4, v5, :L30
    if-eqz v3, :L28
  :L30
  .line 76
    invoke-virtual { v2 }, Lc/e/b/k/e;->d0()Z
    move-result v3
    if-eqz v3, :L31
    goto :L28
  :L31
  .line 77
    iget-object v3, v2, Lc/e/b/k/e;->J:Lc/e/b/k/d;
    if-ne v1, v3, :L28
  .line 78
    invoke-virtual { v2, v0 }, Lc/e/b/k/e;->o0(I)V
  :L32
  .line 79
    invoke-static { v2, p1 }, Lc/e/b/k/m/h;->i(Lc/e/b/k/e;Lc/e/b/k/m/b$b;)V
  :L33
    goto :L28
  :L34
    return-void
  :L35
    move-exception p0
    goto :L37
  :L36
    throw p0
  :L37
    goto :L36
.end method
