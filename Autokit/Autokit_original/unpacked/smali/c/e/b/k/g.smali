.class public Lc/e/b/k/g;
.super Lc/e/b/k/e;
.source "SourceFile"

.field protected p0:F

.field protected q0:I

.field protected r0:I

.field private s0:Lc/e/b/k/d;

.field private t0:I

.field private u0:Z

.method public constructor <init>()V
  .registers 5
  .line 1
    invoke-direct { p0 }, Lc/e/b/k/e;-><init>()V
    const/high16 v0, -16512
  .line 2
    iput v0, p0, Lc/e/b/k/g;->p0:F
    const/4 v0, -1
  .line 3
    iput v0, p0, Lc/e/b/k/g;->q0:I
  .line 4
    iput v0, p0, Lc/e/b/k/g;->r0:I
  .line 5
    iget-object v0, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    iput-object v0, p0, Lc/e/b/k/g;->s0:Lc/e/b/k/d;
    const/4 v0, 0
  .line 6
    iput v0, p0, Lc/e/b/k/g;->t0:I
  .line 7
    iget-object v1, p0, Lc/e/b/k/e;->O:Ljava/util/ArrayList;
    invoke-virtual { v1 }, Ljava/util/ArrayList;->clear()V
  .line 8
    iget-object v1, p0, Lc/e/b/k/e;->O:Ljava/util/ArrayList;
    iget-object v2, p0, Lc/e/b/k/g;->s0:Lc/e/b/k/d;
    invoke-virtual { v1, v2 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 9
    iget-object v1, p0, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    array-length v1, v1
  :L0
    if-ge v0, v1, :L1
  .line 10
    iget-object v2, p0, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    iget-object v3, p0, Lc/e/b/k/g;->s0:Lc/e/b/k/d;
    aput-object v3, v2, v0
    add-int/lit8 v0, v0, 1
    goto :L0
  :L1
    return-void
.end method

.method public Z0(Lc/e/b/d;Z)V
  .registers 5
  .line 1
    invoke-virtual { p0 }, Lc/e/b/k/e;->I()Lc/e/b/k/e;
    move-result-object p2
    if-nez p2, :L0
    return-void
  :L0
  .line 2
    iget-object p2, p0, Lc/e/b/k/g;->s0:Lc/e/b/k/d;
    invoke-virtual { p1, p2 }, Lc/e/b/d;->x(Ljava/lang/Object;)I
    move-result p1
  .line 3
    iget p2, p0, Lc/e/b/k/g;->t0:I
    const/4 v0, 1
    const/4 v1, 0
    if-ne p2, v0, :L1
  .line 4
    invoke-virtual { p0, p1 }, Lc/e/b/k/e;->V0(I)V
  .line 5
    invoke-virtual { p0, v1 }, Lc/e/b/k/e;->W0(I)V
  .line 6
    invoke-virtual { p0 }, Lc/e/b/k/e;->I()Lc/e/b/k/e;
    move-result-object p1
    invoke-virtual { p1 }, Lc/e/b/k/e;->v()I
    move-result p1
    invoke-virtual { p0, p1 }, Lc/e/b/k/e;->v0(I)V
  .line 7
    invoke-virtual { p0, v1 }, Lc/e/b/k/e;->U0(I)V
    goto :L2
  :L1
  .line 8
    invoke-virtual { p0, v1 }, Lc/e/b/k/e;->V0(I)V
  .line 9
    invoke-virtual { p0, p1 }, Lc/e/b/k/e;->W0(I)V
  .line 10
    invoke-virtual { p0 }, Lc/e/b/k/e;->I()Lc/e/b/k/e;
    move-result-object p1
    invoke-virtual { p1 }, Lc/e/b/k/e;->R()I
    move-result p1
    invoke-virtual { p0, p1 }, Lc/e/b/k/e;->U0(I)V
  .line 11
    invoke-virtual { p0, v1 }, Lc/e/b/k/e;->v0(I)V
  :L2
    return-void
.end method

.method public a1()Lc/e/b/k/d;
  .registers 2
  .line 1
    iget-object v0, p0, Lc/e/b/k/g;->s0:Lc/e/b/k/d;
    return-object v0
.end method

.method public b1()I
  .registers 2
  .line 1
    iget v0, p0, Lc/e/b/k/g;->t0:I
    return v0
.end method

.method public c1()I
  .registers 2
  .line 1
    iget v0, p0, Lc/e/b/k/g;->q0:I
    return v0
.end method

.method public d1()I
  .registers 2
  .line 1
    iget v0, p0, Lc/e/b/k/g;->r0:I
    return v0
.end method

.method public e0()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lc/e/b/k/g;->u0:Z
    return v0
.end method

.method public e1()F
  .registers 2
  .line 1
    iget v0, p0, Lc/e/b/k/g;->p0:F
    return v0
.end method

.method public f0()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lc/e/b/k/g;->u0:Z
    return v0
.end method

.method public f1(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/e/b/k/g;->s0:Lc/e/b/k/d;
    invoke-virtual { v0, p1 }, Lc/e/b/k/d;->s(I)V
    const/4 p1, 1
  .line 2
    iput-boolean p1, p0, Lc/e/b/k/g;->u0:Z
    return-void
.end method

.method public g(Lc/e/b/d;Z)V
  .registers 10
  .line 1
    invoke-virtual { p0 }, Lc/e/b/k/e;->I()Lc/e/b/k/e;
    move-result-object p2
    check-cast p2, Lc/e/b/k/f;
    if-nez p2, :L0
    return-void
  :L0
  .line 2
    sget-object v0, Lc/e/b/k/d$b;->c:Lc/e/b/k/d$b;
    invoke-virtual { p2, v0 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v0
  .line 3
    sget-object v1, Lc/e/b/k/d$b;->e:Lc/e/b/k/d$b;
    invoke-virtual { p2, v1 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v1
  .line 4
    iget-object v2, p0, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    const/4 v3, 1
    const/4 v4, 0
    if-eqz v2, :L1
    iget-object v2, v2, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    aget-object v2, v2, v4
    sget-object v5, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-ne v2, v5, :L1
    const/4 v2, 1
    goto :L2
  :L1
    const/4 v2, 0
  :L2
  .line 5
    iget v5, p0, Lc/e/b/k/g;->t0:I
    if-nez v5, :L5
  .line 6
    sget-object v0, Lc/e/b/k/d$b;->d:Lc/e/b/k/d$b;
    invoke-virtual { p2, v0 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v0
  .line 7
    sget-object v1, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;
    invoke-virtual { p2, v1 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v1
  .line 8
    iget-object p2, p0, Lc/e/b/k/e;->R:Lc/e/b/k/e;
    if-eqz p2, :L3
    iget-object p2, p2, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    aget-object p2, p2, v3
    sget-object v2, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-ne p2, v2, :L3
    goto :L4
  :L3
    const/4 v3, 0
  :L4
    move v2, v3
  :L5
  .line 9
    iget-boolean p2, p0, Lc/e/b/k/g;->u0:Z
    const/4 v3, -1
    const/4 v5, 5
    if-eqz p2, :L8
    iget-object p2, p0, Lc/e/b/k/g;->s0:Lc/e/b/k/d;
    invoke-virtual { p2 }, Lc/e/b/k/d;->m()Z
    move-result p2
    if-eqz p2, :L8
  .line 10
    iget-object p2, p0, Lc/e/b/k/g;->s0:Lc/e/b/k/d;
    invoke-virtual { p1, p2 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object p2
  .line 11
    iget-object v6, p0, Lc/e/b/k/g;->s0:Lc/e/b/k/d;
    invoke-virtual { v6 }, Lc/e/b/k/d;->d()I
    move-result v6
    invoke-virtual { p1, p2, v6 }, Lc/e/b/d;->f(Lc/e/b/i;I)V
  .line 12
    iget v6, p0, Lc/e/b/k/g;->q0:I
    if-eq v6, v3, :L6
    if-eqz v2, :L7
  .line 13
    invoke-virtual { p1, v1 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v0
    invoke-virtual { p1, v0, p2, v4, v5 }, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V
    goto :L7
  :L6
  .line 14
    iget v6, p0, Lc/e/b/k/g;->r0:I
    if-eq v6, v3, :L7
    if-eqz v2, :L7
  .line 15
    invoke-virtual { p1, v1 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v1
  .line 16
    invoke-virtual { p1, v0 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v0
    invoke-virtual { p1, p2, v0, v4, v5 }, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V
  .line 17
    invoke-virtual { p1, v1, p2, v4, v5 }, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V
  :L7
  .line 18
    iput-boolean v4, p0, Lc/e/b/k/g;->u0:Z
    return-void
  :L8
  .line 19
    iget p2, p0, Lc/e/b/k/g;->q0:I
    const/16 v6, 8
    if-eq p2, v3, :L9
  .line 20
    iget-object p2, p0, Lc/e/b/k/g;->s0:Lc/e/b/k/d;
    invoke-virtual { p1, p2 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object p2
  .line 21
    invoke-virtual { p1, v0 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v0
  .line 22
    iget v3, p0, Lc/e/b/k/g;->q0:I
    invoke-virtual { p1, p2, v0, v3, v6 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
    if-eqz v2, :L11
  .line 23
    invoke-virtual { p1, v1 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v0
    invoke-virtual { p1, v0, p2, v4, v5 }, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V
    goto :L11
  :L9
  .line 24
    iget p2, p0, Lc/e/b/k/g;->r0:I
    if-eq p2, v3, :L10
  .line 25
    iget-object p2, p0, Lc/e/b/k/g;->s0:Lc/e/b/k/d;
    invoke-virtual { p1, p2 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object p2
  .line 26
    invoke-virtual { p1, v1 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v1
  .line 27
    iget v3, p0, Lc/e/b/k/g;->r0:I
    neg-int v3, v3
    invoke-virtual { p1, p2, v1, v3, v6 }, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
    if-eqz v2, :L11
  .line 28
    invoke-virtual { p1, v0 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v0
    invoke-virtual { p1, p2, v0, v4, v5 }, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V
  .line 29
    invoke-virtual { p1, v1, p2, v4, v5 }, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V
    goto :L11
  :L10
  .line 30
    iget p2, p0, Lc/e/b/k/g;->p0:F
    const/high16 v0, -16512
    cmpl-float p2, p2, v0
    if-eqz p2, :L11
  .line 31
    iget-object p2, p0, Lc/e/b/k/g;->s0:Lc/e/b/k/d;
    invoke-virtual { p1, p2 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object p2
  .line 32
    invoke-virtual { p1, v1 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v0
  .line 33
    iget v1, p0, Lc/e/b/k/g;->p0:F
  .line 34
    invoke-static { p1, p2, v0, v1 }, Lc/e/b/d;->s(Lc/e/b/d;Lc/e/b/i;Lc/e/b/i;F)Lc/e/b/b;
    move-result-object p2
  .line 35
    invoke-virtual { p1, p2 }, Lc/e/b/d;->d(Lc/e/b/b;)V
  :L11
    return-void
.end method

.method public g1(I)V
  .registers 4
    const/4 v0, -1
    if-le p1, v0, :L0
    const/high16 v1, -16512
  .line 1
    iput v1, p0, Lc/e/b/k/g;->p0:F
  .line 2
    iput p1, p0, Lc/e/b/k/g;->q0:I
  .line 3
    iput v0, p0, Lc/e/b/k/g;->r0:I
  :L0
    return-void
.end method

.method public h()Z
  .registers 2
    const/4 v0, 1
    return v0
.end method

.method public h1(I)V
  .registers 4
    const/4 v0, -1
    if-le p1, v0, :L0
    const/high16 v1, -16512
  .line 1
    iput v1, p0, Lc/e/b/k/g;->p0:F
  .line 2
    iput v0, p0, Lc/e/b/k/g;->q0:I
  .line 3
    iput p1, p0, Lc/e/b/k/g;->r0:I
  :L0
    return-void
.end method

.method public i1(F)V
  .registers 3
    const/high16 v0, -16512
    cmpl-float v0, p1, v0
    if-lez v0, :L0
  .line 1
    iput p1, p0, Lc/e/b/k/g;->p0:F
    const/4 p1, -1
  .line 2
    iput p1, p0, Lc/e/b/k/g;->q0:I
  .line 3
    iput p1, p0, Lc/e/b/k/g;->r0:I
  :L0
    return-void
.end method

.method public j1(I)V
  .registers 5
  .line 1
    iget v0, p0, Lc/e/b/k/g;->t0:I
    if-ne v0, p1, :L0
    return-void
  :L0
  .line 2
    iput p1, p0, Lc/e/b/k/g;->t0:I
  .line 3
    iget-object p1, p0, Lc/e/b/k/e;->O:Ljava/util/ArrayList;
    invoke-virtual { p1 }, Ljava/util/ArrayList;->clear()V
  .line 4
    iget p1, p0, Lc/e/b/k/g;->t0:I
    const/4 v0, 1
    if-ne p1, v0, :L1
  .line 5
    iget-object p1, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    iput-object p1, p0, Lc/e/b/k/g;->s0:Lc/e/b/k/d;
    goto :L2
  :L1
  .line 6
    iget-object p1, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    iput-object p1, p0, Lc/e/b/k/g;->s0:Lc/e/b/k/d;
  :L2
  .line 7
    iget-object p1, p0, Lc/e/b/k/e;->O:Ljava/util/ArrayList;
    iget-object v0, p0, Lc/e/b/k/g;->s0:Lc/e/b/k/d;
    invoke-virtual { p1, v0 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 8
    iget-object p1, p0, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    array-length p1, p1
    const/4 v0, 0
  :L3
    if-ge v0, p1, :L4
  .line 9
    iget-object v1, p0, Lc/e/b/k/e;->N:[Lc/e/b/k/d;
    iget-object v2, p0, Lc/e/b/k/g;->s0:Lc/e/b/k/d;
    aput-object v2, v1, v0
    add-int/lit8 v0, v0, 1
    goto :L3
  :L4
    return-void
.end method

.method public m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
  .registers 4
  .line 1
    sget-object v0, Lc/e/b/k/g$a;->a:[I
    invoke-virtual { p1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    aget v0, v0, v1
    packed-switch v0, :L4
    goto :L3
  :L0
    const/4 p1, 0
    return-object p1
  :L1
  .line 2
    iget v0, p0, Lc/e/b/k/g;->t0:I
    if-nez v0, :L3
  .line 3
    iget-object p1, p0, Lc/e/b/k/g;->s0:Lc/e/b/k/d;
    return-object p1
  :L2
  .line 4
    iget v0, p0, Lc/e/b/k/g;->t0:I
    const/4 v1, 1
    if-ne v0, v1, :L3
  .line 5
    iget-object p1, p0, Lc/e/b/k/g;->s0:Lc/e/b/k/d;
    return-object p1
  :L3
  .line 6
    new-instance v0, Ljava/lang/AssertionError;
    invoke-virtual { p1 }, Ljava/lang/Enum;->name()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    throw v0
  :L4
  .packed-switch 1
    :L2
    :L2
    :L1
    :L1
    :L0
    :L0
    :L0
    :L0
    :L0
  .end packed-switch
.end method
