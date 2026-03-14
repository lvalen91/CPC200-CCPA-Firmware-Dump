.class public Lc/e/b/k/a;
.super Lc/e/b/k/i;
.source "SourceFile"

.field private r0:I

.field private s0:Z

.field private t0:I

.field u0:Z

.method public constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lc/e/b/k/i;-><init>()V
    const/4 v0, 0
  .line 2
    iput v0, p0, Lc/e/b/k/a;->r0:I
    const/4 v1, 1
  .line 3
    iput-boolean v1, p0, Lc/e/b/k/a;->s0:Z
  .line 4
    iput v0, p0, Lc/e/b/k/a;->t0:I
  .line 5
    iput-boolean v0, p0, Lc/e/b/k/a;->u0:Z
    return-void
.end method

.method public c1()Z
  .registers 9
    const/4 v0, 0
    const/4 v1, 1
    const/4 v2, 0
    const/4 v3, 1
  :L0
  .line 1
    iget v4, p0, Lc/e/b/k/i;->q0:I
    const/4 v5, 3
    const/4 v6, 2
    if-ge v2, v4, :L7
  .line 2
    iget-object v4, p0, Lc/e/b/k/i;->p0:[Lc/e/b/k/e;
    aget-object v4, v4, v2
  .line 3
    iget-boolean v7, p0, Lc/e/b/k/a;->s0:Z
    if-nez v7, :L1
    invoke-virtual { v4 }, Lc/e/b/k/e;->h()Z
    move-result v7
    if-nez v7, :L1
    goto :L6
  :L1
  .line 4
    iget v7, p0, Lc/e/b/k/a;->r0:I
    if-eqz v7, :L2
    if-ne v7, v1, :L4
  :L2
    invoke-virtual { v4 }, Lc/e/b/k/e;->e0()Z
    move-result v7
    if-nez v7, :L4
  :L3
    const/4 v3, 0
    goto :L6
  :L4
  .line 5
    iget v7, p0, Lc/e/b/k/a;->r0:I
    if-eq v7, v6, :L5
    if-ne v7, v5, :L6
  :L5
    invoke-virtual { v4 }, Lc/e/b/k/e;->f0()Z
    move-result v4
    if-nez v4, :L6
    goto :L3
  :L6
    add-int/lit8 v2, v2, 1
    goto :L0
  :L7
    if-eqz v3, :L23
    if-lez v4, :L23
    const/4 v2, 0
    const/4 v3, 0
  :L8
  .line 6
    iget v4, p0, Lc/e/b/k/i;->q0:I
    if-ge v0, v4, :L19
  .line 7
    iget-object v4, p0, Lc/e/b/k/i;->p0:[Lc/e/b/k/e;
    aget-object v4, v4, v0
  .line 8
    iget-boolean v7, p0, Lc/e/b/k/a;->s0:Z
    if-nez v7, :L9
    invoke-virtual { v4 }, Lc/e/b/k/e;->h()Z
    move-result v7
    if-nez v7, :L9
    goto/16 :L18
  :L9
    if-nez v3, :L14
  .line 9
    iget v3, p0, Lc/e/b/k/a;->r0:I
    if-nez v3, :L10
  .line 10
    sget-object v2, Lc/e/b/k/d$b;->c:Lc/e/b/k/d$b;
    invoke-virtual { v4, v2 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v2
    invoke-virtual { v2 }, Lc/e/b/k/d;->d()I
    move-result v2
    goto :L13
  :L10
    if-ne v3, v1, :L11
  .line 11
    sget-object v2, Lc/e/b/k/d$b;->e:Lc/e/b/k/d$b;
    invoke-virtual { v4, v2 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v2
    invoke-virtual { v2 }, Lc/e/b/k/d;->d()I
    move-result v2
    goto :L13
  :L11
    if-ne v3, v6, :L12
  .line 12
    sget-object v2, Lc/e/b/k/d$b;->d:Lc/e/b/k/d$b;
    invoke-virtual { v4, v2 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v2
    invoke-virtual { v2 }, Lc/e/b/k/d;->d()I
    move-result v2
    goto :L13
  :L12
    if-ne v3, v5, :L13
  .line 13
    sget-object v2, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;
    invoke-virtual { v4, v2 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v2
    invoke-virtual { v2 }, Lc/e/b/k/d;->d()I
    move-result v2
  :L13
    const/4 v3, 1
  :L14
  .line 14
    iget v7, p0, Lc/e/b/k/a;->r0:I
    if-nez v7, :L15
  .line 15
    sget-object v7, Lc/e/b/k/d$b;->c:Lc/e/b/k/d$b;
    invoke-virtual { v4, v7 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v4
    invoke-virtual { v4 }, Lc/e/b/k/d;->d()I
    move-result v4
    invoke-static { v2, v4 }, Ljava/lang/Math;->min(II)I
    move-result v2
    goto :L18
  :L15
    if-ne v7, v1, :L16
  .line 16
    sget-object v7, Lc/e/b/k/d$b;->e:Lc/e/b/k/d$b;
    invoke-virtual { v4, v7 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v4
    invoke-virtual { v4 }, Lc/e/b/k/d;->d()I
    move-result v4
    invoke-static { v2, v4 }, Ljava/lang/Math;->max(II)I
    move-result v2
    goto :L18
  :L16
    if-ne v7, v6, :L17
  .line 17
    sget-object v7, Lc/e/b/k/d$b;->d:Lc/e/b/k/d$b;
    invoke-virtual { v4, v7 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v4
    invoke-virtual { v4 }, Lc/e/b/k/d;->d()I
    move-result v4
    invoke-static { v2, v4 }, Ljava/lang/Math;->min(II)I
    move-result v2
    goto :L18
  :L17
    if-ne v7, v5, :L18
  .line 18
    sget-object v7, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;
    invoke-virtual { v4, v7 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v4
    invoke-virtual { v4 }, Lc/e/b/k/d;->d()I
    move-result v4
    invoke-static { v2, v4 }, Ljava/lang/Math;->max(II)I
    move-result v2
  :L18
    add-int/lit8 v0, v0, 1
    goto/16 :L8
  :L19
  .line 19
    iget v0, p0, Lc/e/b/k/a;->t0:I
    add-int/2addr v2, v0
  .line 20
    iget v0, p0, Lc/e/b/k/a;->r0:I
    if-eqz v0, :L21
    if-ne v0, v1, :L20
    goto :L21
  :L20
  .line 21
    invoke-virtual { p0, v2, v2 }, Lc/e/b/k/e;->s0(II)V
    goto :L22
  :L21
  .line 22
    invoke-virtual { p0, v2, v2 }, Lc/e/b/k/e;->p0(II)V
  :L22
  .line 23
    iput-boolean v1, p0, Lc/e/b/k/a;->u0:Z
    return v1
  :L23
    return v0
.end method

.method public d1()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lc/e/b/k/a;->s0:Z
    return v0
.end method

.method public e0()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lc/e/b/k/a;->u0:Z
    return v0
.end method

.method public e1()I
  .registers 2
  .line 1
    iget v0, p0, Lc/e/b/k/a;->r0:I
    return v0
.end method

.method public f0()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lc/e/b/k/a;->u0:Z
    return v0
.end method

.method public f1()I
  .registers 2
  .line 1
    iget v0, p0, Lc/e/b/k/a;->t0:I
    return v0
.end method

.method public g(Lc/e/b/d;Z)V
  .registers 15
  .line 1
    iget-object p2, p0, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    iget-object v0, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    const/4 v1, 0
    aput-object v0, p2, v1
  .line 2
    iget-object v0, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    const/4 v2, 2
    aput-object v0, p2, v2
  .line 3
    iget-object v0, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    const/4 v3, 1
    aput-object v0, p2, v3
  .line 4
    iget-object v0, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    const/4 v4, 3
    aput-object v0, p2, v4
    const/4 p2, 0
  :L0
  .line 5
    iget-object v0, p0, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    array-length v5, v0
    if-ge p2, v5, :L1
  .line 6
    aget-object v5, v0, p2
    aget-object v0, v0, p2
    invoke-virtual { p1, v0 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v0
    iput-object v0, v5, Lc/e/b/k/d;->i:Lc/e/b/i;
    add-int/lit8 p2, p2, 1
    goto :L0
  :L1
  .line 7
    iget p2, p0, Lc/e/b/k/a;->r0:I
    if-ltz p2, :L42
    const/4 v5, 4
    if-ge p2, v5, :L42
  .line 8
    aget-object p2, v0, p2
  .line 9
    iget-boolean v0, p0, Lc/e/b/k/a;->u0:Z
    if-nez v0, :L2
  .line 10
    invoke-virtual { p0 }, Lc/e/b/k/a;->c1()Z
  :L2
  .line 11
    iget-boolean v0, p0, Lc/e/b/k/a;->u0:Z
    if-eqz v0, :L7
  .line 12
    iput-boolean v1, p0, Lc/e/b/k/a;->u0:Z
  .line 13
    iget p2, p0, Lc/e/b/k/a;->r0:I
    if-eqz p2, :L5
    if-ne p2, v3, :L3
    goto :L5
  :L3
    if-eq p2, v2, :L4
    if-ne p2, v4, :L6
  :L4
  .line 14
    iget-object p2, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    iget-object p2, p2, Lc/e/b/k/d;->i:Lc/e/b/i;
    iget v0, p0, Lc/e/b/k/e;->X:I
    invoke-virtual { p1, p2, v0 }, Lc/e/b/d;->f(Lc/e/b/i;I)V
  .line 15
    iget-object p2, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    iget-object p2, p2, Lc/e/b/k/d;->i:Lc/e/b/i;
    iget v0, p0, Lc/e/b/k/e;->X:I
    invoke-virtual { p1, p2, v0 }, Lc/e/b/d;->f(Lc/e/b/i;I)V
    goto :L6
  :L5
  .line 16
    iget-object p2, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    iget-object p2, p2, Lc/e/b/k/d;->i:Lc/e/b/i;
    iget v0, p0, Lc/e/b/k/e;->W:I
    invoke-virtual { p1, p2, v0 }, Lc/e/b/d;->f(Lc/e/b/i;I)V
  .line 17
    iget-object p2, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    iget-object p2, p2, Lc/e/b/k/d;->i:Lc/e/b/i;
    iget v0, p0, Lc/e/b/k/e;->W:I
    invoke-virtual { p1, p2, v0 }, Lc/e/b/d;->f(Lc/e/b/i;I)V
  :L6
    return-void
  :L7
    const/4 v0, 0
  :L8
  .line 18
    iget v6, p0, Lc/e/b/k/i;->q0:I
    if-ge v0, v6, :L15
  .line 19
    iget-object v6, p0, Lc/e/b/k/i;->p0:[Lc/e/b/k/e;
    aget-object v6, v6, v0
  .line 20
    iget-boolean v7, p0, Lc/e/b/k/a;->s0:Z
    if-nez v7, :L9
    invoke-virtual { v6 }, Lc/e/b/k/e;->h()Z
    move-result v7
    if-nez v7, :L9
    goto :L14
  :L9
  .line 21
    iget v7, p0, Lc/e/b/k/a;->r0:I
    if-eqz v7, :L10
    if-ne v7, v3, :L12
  :L10
  .line 22
    invoke-virtual { v6 }, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;
    move-result-object v7
    sget-object v8, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v7, v8, :L12
    iget-object v7, v6, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    iget-object v7, v7, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v7, :L12
    iget-object v7, v6, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    iget-object v7, v7, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v7, :L12
  :L11
    const/4 v0, 1
    goto :L16
  :L12
  .line 23
    iget v7, p0, Lc/e/b/k/a;->r0:I
    if-eq v7, v2, :L13
    if-ne v7, v4, :L14
  :L13
  .line 24
    invoke-virtual { v6 }, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;
    move-result-object v7
    sget-object v8, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    if-ne v7, v8, :L14
    iget-object v7, v6, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    iget-object v7, v7, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v7, :L14
    iget-object v6, v6, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    iget-object v6, v6, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v6, :L14
    goto :L11
  :L14
    add-int/lit8 v0, v0, 1
    goto :L8
  :L15
    const/4 v0, 0
  :L16
  .line 25
    iget-object v6, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    invoke-virtual { v6 }, Lc/e/b/k/d;->k()Z
    move-result v6
    if-nez v6, :L18
    iget-object v6, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    invoke-virtual { v6 }, Lc/e/b/k/d;->k()Z
    move-result v6
    if-eqz v6, :L17
    goto :L18
  :L17
    const/4 v6, 0
    goto :L19
  :L18
    const/4 v6, 1
  :L19
  .line 26
    iget-object v7, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    invoke-virtual { v7 }, Lc/e/b/k/d;->k()Z
    move-result v7
    if-nez v7, :L21
    iget-object v7, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    invoke-virtual { v7 }, Lc/e/b/k/d;->k()Z
    move-result v7
    if-eqz v7, :L20
    goto :L21
  :L20
    const/4 v7, 0
    goto :L22
  :L21
    const/4 v7, 1
  :L22
    if-nez v0, :L27
  .line 27
    iget v8, p0, Lc/e/b/k/a;->r0:I
    if-nez v8, :L23
    if-nez v6, :L26
  :L23
    iget v8, p0, Lc/e/b/k/a;->r0:I
    if-ne v8, v2, :L24
    if-nez v7, :L26
  :L24
    iget v8, p0, Lc/e/b/k/a;->r0:I
    if-ne v8, v3, :L25
    if-nez v6, :L26
  :L25
    iget v6, p0, Lc/e/b/k/a;->r0:I
    if-ne v6, v4, :L27
    if-eqz v7, :L27
  :L26
    const/4 v6, 1
    goto :L28
  :L27
    const/4 v6, 0
  :L28
    const/4 v7, 5
    if-nez v6, :L29
    const/4 v7, 4
  :L29
    const/4 v6, 0
  :L30
  .line 28
    iget v8, p0, Lc/e/b/k/i;->q0:I
    if-ge v6, v8, :L38
  .line 29
    iget-object v8, p0, Lc/e/b/k/i;->p0:[Lc/e/b/k/e;
    aget-object v8, v8, v6
  .line 30
    iget-boolean v9, p0, Lc/e/b/k/a;->s0:Z
    if-nez v9, :L31
    invoke-virtual { v8 }, Lc/e/b/k/e;->h()Z
    move-result v9
    if-nez v9, :L31
    goto :L37
  :L31
  .line 31
    iget-object v9, v8, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    iget v10, p0, Lc/e/b/k/a;->r0:I
    aget-object v9, v9, v10
    invoke-virtual { p1, v9 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v9
  .line 32
    iget-object v8, v8, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    iget v10, p0, Lc/e/b/k/a;->r0:I
    aget-object v11, v8, v10
    iput-object v9, v11, Lc/e/b/k/d;->i:Lc/e/b/i;
  .line 33
    aget-object v11, v8, v10
    iget-object v11, v11, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    if-eqz v11, :L32
    aget-object v11, v8, v10
    iget-object v11, v11, Lc/e/b/k/d;->f:Lc/e/b/k/d;
    iget-object v11, v11, Lc/e/b/k/d;->d:Lc/e/b/k/e;
    if-ne v11, p0, :L32
  .line 34
    aget-object v8, v8, v10
    iget v8, v8, Lc/e/b/k/d;->g:I
    add-int/2addr v8, v1
    goto :L33
  :L32
    const/4 v8, 0
  :L33
  .line 35
    iget v10, p0, Lc/e/b/k/a;->r0:I
    if-eqz v10, :L35
    if-ne v10, v2, :L34
    goto :L35
  :L34
  .line 36
    iget-object v10, p2, Lc/e/b/k/d;->i:Lc/e/b/i;
    iget v11, p0, Lc/e/b/k/a;->t0:I
    add-int/2addr v11, v8
    invoke-virtual { p1, v10, v9, v11, v0 }, Lc/e/b/d;->g(Lc/e/b/i;Lc/e/b/i;IZ)V
    goto :L36
  :L35
  .line 37
    iget-object v10, p2, Lc/e/b/k/d;->i:Lc/e/b/i;
    iget v11, p0, Lc/e/b/k/a;->t0:I
    sub-int/2addr v11, v8
    invoke-virtual { p1, v10, v9, v11, v0 }, Lc/e/b/d;->i(Lc/e/b/i;Lc/e/b/i;IZ)V
  :L36
  .line 38
    iget-object v10, p2, Lc/e/b/k/d;->i:Lc/e/b/i;
    iget v11, p0, Lc/e/b/k/a;->t0:I
    add-int/2addr v11, v8
    invoke-virtual { p1, v10, v9, v11, v7 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
  :L37
    add-int/lit8 v6, v6, 1
    goto :L30
  :L38
  .line 39
    iget p2, p0, Lc/e/b/k/a;->r0:I
    const/16 v0, 8
    if-nez p2, :L39
  .line 40
    iget-object p2, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    iget-object p2, p2, Lc/e/b/k/d;->i:Lc/e/b/i;
    iget-object v2, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    iget-object v2, v2, Lc/e/b/k/d;->i:Lc/e/b/i;
    invoke-virtual { p1, p2, v2, v1, v0 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
  .line 41
    iget-object p2, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    iget-object p2, p2, Lc/e/b/k/d;->i:Lc/e/b/i;
    iget-object v0, p0, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    iget-object v0, v0, Lc/e/b/k/d;->i:Lc/e/b/i;
    invoke-virtual { p1, p2, v0, v1, v5 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
  .line 42
    iget-object p2, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    iget-object p2, p2, Lc/e/b/k/d;->i:Lc/e/b/i;
    iget-object v0, p0, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    iget-object v0, v0, Lc/e/b/k/d;->i:Lc/e/b/i;
    invoke-virtual { p1, p2, v0, v1, v1 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
    goto/16 :L42
  :L39
    if-ne p2, v3, :L40
  .line 43
    iget-object p2, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    iget-object p2, p2, Lc/e/b/k/d;->i:Lc/e/b/i;
    iget-object v2, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    iget-object v2, v2, Lc/e/b/k/d;->i:Lc/e/b/i;
    invoke-virtual { p1, p2, v2, v1, v0 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
  .line 44
    iget-object p2, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    iget-object p2, p2, Lc/e/b/k/d;->i:Lc/e/b/i;
    iget-object v0, p0, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    iget-object v0, v0, Lc/e/b/k/d;->i:Lc/e/b/i;
    invoke-virtual { p1, p2, v0, v1, v5 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
  .line 45
    iget-object p2, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    iget-object p2, p2, Lc/e/b/k/d;->i:Lc/e/b/i;
    iget-object v0, p0, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    iget-object v0, v0, Lc/e/b/k/d;->i:Lc/e/b/i;
    invoke-virtual { p1, p2, v0, v1, v1 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
    goto :L42
  :L40
    if-ne p2, v2, :L41
  .line 46
    iget-object p2, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    iget-object p2, p2, Lc/e/b/k/d;->i:Lc/e/b/i;
    iget-object v2, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    iget-object v2, v2, Lc/e/b/k/d;->i:Lc/e/b/i;
    invoke-virtual { p1, p2, v2, v1, v0 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
  .line 47
    iget-object p2, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    iget-object p2, p2, Lc/e/b/k/d;->i:Lc/e/b/i;
    iget-object v0, p0, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    iget-object v0, v0, Lc/e/b/k/d;->i:Lc/e/b/i;
    invoke-virtual { p1, p2, v0, v1, v5 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
  .line 48
    iget-object p2, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    iget-object p2, p2, Lc/e/b/k/d;->i:Lc/e/b/i;
    iget-object v0, p0, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    iget-object v0, v0, Lc/e/b/k/d;->i:Lc/e/b/i;
    invoke-virtual { p1, p2, v0, v1, v1 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
    goto :L42
  :L41
    if-ne p2, v4, :L42
  .line 49
    iget-object p2, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    iget-object p2, p2, Lc/e/b/k/d;->i:Lc/e/b/i;
    iget-object v2, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    iget-object v2, v2, Lc/e/b/k/d;->i:Lc/e/b/i;
    invoke-virtual { p1, p2, v2, v1, v0 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
  .line 50
    iget-object p2, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    iget-object p2, p2, Lc/e/b/k/d;->i:Lc/e/b/i;
    iget-object v0, p0, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    iget-object v0, v0, Lc/e/b/k/d;->i:Lc/e/b/i;
    invoke-virtual { p1, p2, v0, v1, v5 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
  .line 51
    iget-object p2, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    iget-object p2, p2, Lc/e/b/k/d;->i:Lc/e/b/i;
    iget-object v0, p0, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    iget-object v0, v0, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    iget-object v0, v0, Lc/e/b/k/d;->i:Lc/e/b/i;
    invoke-virtual { p1, p2, v0, v1, v1 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
  :L42
    return-void
.end method

.method public g1()I
  .registers 4
  .line 1
    iget v0, p0, Lc/e/b/k/a;->r0:I
    if-eqz v0, :L1
    const/4 v1, 1
    if-eq v0, v1, :L1
    const/4 v2, 2
    if-eq v0, v2, :L0
    const/4 v2, 3
    if-eq v0, v2, :L0
    const/4 v0, -1
    return v0
  :L0
    return v1
  :L1
    const/4 v0, 0
    return v0
.end method

.method public h()Z
  .registers 2
    const/4 v0, 1
    return v0
.end method

.method protected h1()V
  .registers 7
    const/4 v0, 0
    const/4 v1, 0
  :L0
  .line 1
    iget v2, p0, Lc/e/b/k/i;->q0:I
    if-ge v1, v2, :L5
  .line 2
    iget-object v2, p0, Lc/e/b/k/i;->p0:[Lc/e/b/k/e;
    aget-object v2, v2, v1
  .line 3
    iget v3, p0, Lc/e/b/k/a;->r0:I
    const/4 v4, 1
    if-eqz v3, :L3
    if-ne v3, v4, :L1
    goto :L3
  :L1
    const/4 v5, 2
    if-eq v3, v5, :L2
    const/4 v5, 3
    if-ne v3, v5, :L4
  :L2
  .line 4
    invoke-virtual { v2, v4, v4 }, Lc/e/b/k/e;->C0(IZ)V
    goto :L4
  :L3
  .line 5
    invoke-virtual { v2, v0, v4 }, Lc/e/b/k/e;->C0(IZ)V
  :L4
    add-int/lit8 v1, v1, 1
    goto :L0
  :L5
    return-void
.end method

.method public i1(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Lc/e/b/k/a;->s0:Z
    return-void
.end method

.method public j1(I)V
  .registers 2
  .line 1
    iput p1, p0, Lc/e/b/k/a;->r0:I
    return-void
.end method

.method public k1(I)V
  .registers 2
  .line 1
    iput p1, p0, Lc/e/b/k/a;->t0:I
    return-void
.end method

.method public toString()Ljava/lang/String;
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "[Barrier] "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Lc/e/b/k/e;->r()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, " {"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const/4 v1, 0
  :L0
  .line 2
    iget v2, p0, Lc/e/b/k/i;->q0:I
    if-ge v1, v2, :L2
  .line 3
    iget-object v2, p0, Lc/e/b/k/i;->p0:[Lc/e/b/k/e;
    aget-object v2, v2, v1
    if-lez v1, :L1
  .line 4
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, ", "
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  :L1
  .line 5
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Lc/e/b/k/e;->r()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
  .line 6
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "}"
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
