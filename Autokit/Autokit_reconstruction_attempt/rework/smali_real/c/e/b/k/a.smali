.class public Lc/e/b/k/a;
.super Lc/e/b/k/i;
.source "SourceFile"


# instance fields
.field private r0:I

.field private s0:Z

.field private t0:I

.field u0:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lc/e/b/k/i;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lc/e/b/k/a;->r0:I

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lc/e/b/k/a;->s0:Z

    .line 4
    iput v0, p0, Lc/e/b/k/a;->t0:I

    .line 5
    iput-boolean v0, p0, Lc/e/b/k/a;->u0:Z

    return-void
.end method


# virtual methods
.method public c1()Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1
    :goto_4
    iget v4, p0, Lc/e/b/k/i;->q0:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-ge v2, v4, :cond_37

    .line 2
    iget-object v4, p0, Lc/e/b/k/i;->p0:[Lc/e/b/k/e;

    aget-object v4, v4, v2

    .line 3
    iget-boolean v7, p0, Lc/e/b/k/a;->s0:Z

    if-nez v7, :cond_19

    invoke-virtual {v4}, Lc/e/b/k/e;->h()Z

    move-result v7

    if-nez v7, :cond_19

    goto :goto_34

    .line 4
    :cond_19
    iget v7, p0, Lc/e/b/k/a;->r0:I

    if-eqz v7, :cond_1f

    if-ne v7, v1, :cond_27

    :cond_1f
    invoke-virtual {v4}, Lc/e/b/k/e;->e0()Z

    move-result v7

    if-nez v7, :cond_27

    :goto_25
    const/4 v3, 0x0

    goto :goto_34

    .line 5
    :cond_27
    iget v7, p0, Lc/e/b/k/a;->r0:I

    if-eq v7, v6, :cond_2d

    if-ne v7, v5, :cond_34

    :cond_2d
    invoke-virtual {v4}, Lc/e/b/k/e;->f0()Z

    move-result v4

    if-nez v4, :cond_34

    goto :goto_25

    :cond_34
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_37
    if-eqz v3, :cond_e6

    if-lez v4, :cond_e6

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 6
    :goto_3d
    iget v4, p0, Lc/e/b/k/i;->q0:I

    if-ge v0, v4, :cond_d2

    .line 7
    iget-object v4, p0, Lc/e/b/k/i;->p0:[Lc/e/b/k/e;

    aget-object v4, v4, v0

    .line 8
    iget-boolean v7, p0, Lc/e/b/k/a;->s0:Z

    if-nez v7, :cond_51

    invoke-virtual {v4}, Lc/e/b/k/e;->h()Z

    move-result v7

    if-nez v7, :cond_51

    goto/16 :goto_ce

    :cond_51
    if-nez v3, :cond_89

    .line 9
    iget v3, p0, Lc/e/b/k/a;->r0:I

    if-nez v3, :cond_62

    .line 10
    sget-object v2, Lc/e/b/k/d$b;->c:Lc/e/b/k/d$b;

    invoke-virtual {v4, v2}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/b/k/d;->d()I

    move-result v2

    goto :goto_88

    :cond_62
    if-ne v3, v1, :cond_6f

    .line 11
    sget-object v2, Lc/e/b/k/d$b;->e:Lc/e/b/k/d$b;

    invoke-virtual {v4, v2}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/b/k/d;->d()I

    move-result v2

    goto :goto_88

    :cond_6f
    if-ne v3, v6, :cond_7c

    .line 12
    sget-object v2, Lc/e/b/k/d$b;->d:Lc/e/b/k/d$b;

    invoke-virtual {v4, v2}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/b/k/d;->d()I

    move-result v2

    goto :goto_88

    :cond_7c
    if-ne v3, v5, :cond_88

    .line 13
    sget-object v2, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;

    invoke-virtual {v4, v2}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/b/k/d;->d()I

    move-result v2

    :cond_88
    :goto_88
    const/4 v3, 0x1

    .line 14
    :cond_89
    iget v7, p0, Lc/e/b/k/a;->r0:I

    if-nez v7, :cond_9c

    .line 15
    sget-object v7, Lc/e/b/k/d$b;->c:Lc/e/b/k/d$b;

    invoke-virtual {v4, v7}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v4

    invoke-virtual {v4}, Lc/e/b/k/d;->d()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_ce

    :cond_9c
    if-ne v7, v1, :cond_ad

    .line 16
    sget-object v7, Lc/e/b/k/d$b;->e:Lc/e/b/k/d$b;

    invoke-virtual {v4, v7}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v4

    invoke-virtual {v4}, Lc/e/b/k/d;->d()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_ce

    :cond_ad
    if-ne v7, v6, :cond_be

    .line 17
    sget-object v7, Lc/e/b/k/d$b;->d:Lc/e/b/k/d$b;

    invoke-virtual {v4, v7}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v4

    invoke-virtual {v4}, Lc/e/b/k/d;->d()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_ce

    :cond_be
    if-ne v7, v5, :cond_ce

    .line 18
    sget-object v7, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;

    invoke-virtual {v4, v7}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v4

    invoke-virtual {v4}, Lc/e/b/k/d;->d()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_ce
    :goto_ce
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3d

    .line 19
    :cond_d2
    iget v0, p0, Lc/e/b/k/a;->t0:I

    add-int/2addr v2, v0

    .line 20
    iget v0, p0, Lc/e/b/k/a;->r0:I

    if-eqz v0, :cond_e0

    if-ne v0, v1, :cond_dc

    goto :goto_e0

    .line 21
    :cond_dc
    invoke-virtual {p0, v2, v2}, Lc/e/b/k/e;->s0(II)V

    goto :goto_e3

    .line 22
    :cond_e0
    :goto_e0
    invoke-virtual {p0, v2, v2}, Lc/e/b/k/e;->p0(II)V

    .line 23
    :goto_e3
    iput-boolean v1, p0, Lc/e/b/k/a;->u0:Z

    return v1

    :cond_e6
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

    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 2
    iget-object v0, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    const/4 v2, 0x2

    aput-object v0, p2, v2

    .line 3
    iget-object v0, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    const/4 v3, 0x1

    aput-object v0, p2, v3

    .line 4
    iget-object v0, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    const/4 v4, 0x3

    aput-object v0, p2, v4

    const/4 p2, 0x0

    .line 5
    :goto_17
    iget-object v0, p0, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    array-length v5, v0

    if-ge p2, v5, :cond_29

    .line 6
    aget-object v5, v0, p2

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v0

    iput-object v0, v5, Lc/e/b/k/d;->i:Lc/e/b/i;

    add-int/lit8 p2, p2, 0x1

    goto :goto_17

    .line 7
    :cond_29
    iget p2, p0, Lc/e/b/k/a;->r0:I

    if-ltz p2, :cond_20a

    const/4 v5, 0x4

    if-ge p2, v5, :cond_20a

    .line 8
    aget-object p2, v0, p2

    .line 9
    iget-boolean v0, p0, Lc/e/b/k/a;->u0:Z

    if-nez v0, :cond_39

    .line 10
    invoke-virtual {p0}, Lc/e/b/k/a;->c1()Z

    .line 11
    :cond_39
    iget-boolean v0, p0, Lc/e/b/k/a;->u0:Z

    if-eqz v0, :cond_70

    .line 12
    iput-boolean v1, p0, Lc/e/b/k/a;->u0:Z

    .line 13
    iget p2, p0, Lc/e/b/k/a;->r0:I

    if-eqz p2, :cond_5d

    if-ne p2, v3, :cond_46

    goto :goto_5d

    :cond_46
    if-eq p2, v2, :cond_4a

    if-ne p2, v4, :cond_6f

    .line 14
    :cond_4a
    iget-object p2, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    iget-object p2, p2, Lc/e/b/k/d;->i:Lc/e/b/i;

    iget v0, p0, Lc/e/b/k/e;->X:I

    invoke-virtual {p1, p2, v0}, Lc/e/b/d;->f(Lc/e/b/i;I)V

    .line 15
    iget-object p2, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    iget-object p2, p2, Lc/e/b/k/d;->i:Lc/e/b/i;

    iget v0, p0, Lc/e/b/k/e;->X:I

    invoke-virtual {p1, p2, v0}, Lc/e/b/d;->f(Lc/e/b/i;I)V

    goto :goto_6f

    .line 16
    :cond_5d
    :goto_5d
    iget-object p2, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    iget-object p2, p2, Lc/e/b/k/d;->i:Lc/e/b/i;

    iget v0, p0, Lc/e/b/k/e;->W:I

    invoke-virtual {p1, p2, v0}, Lc/e/b/d;->f(Lc/e/b/i;I)V

    .line 17
    iget-object p2, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    iget-object p2, p2, Lc/e/b/k/d;->i:Lc/e/b/i;

    iget v0, p0, Lc/e/b/k/e;->W:I

    invoke-virtual {p1, p2, v0}, Lc/e/b/d;->f(Lc/e/b/i;I)V

    :cond_6f
    :goto_6f
    return-void

    :cond_70
    const/4 v0, 0x0

    .line 18
    :goto_71
    iget v6, p0, Lc/e/b/k/i;->q0:I

    if-ge v0, v6, :cond_be

    .line 19
    iget-object v6, p0, Lc/e/b/k/i;->p0:[Lc/e/b/k/e;

    aget-object v6, v6, v0

    .line 20
    iget-boolean v7, p0, Lc/e/b/k/a;->s0:Z

    if-nez v7, :cond_84

    invoke-virtual {v6}, Lc/e/b/k/e;->h()Z

    move-result v7

    if-nez v7, :cond_84

    goto :goto_bb

    .line 21
    :cond_84
    iget v7, p0, Lc/e/b/k/a;->r0:I

    if-eqz v7, :cond_8a

    if-ne v7, v3, :cond_a0

    .line 22
    :cond_8a
    invoke-virtual {v6}, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;

    move-result-object v7

    sget-object v8, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v7, v8, :cond_a0

    iget-object v7, v6, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    iget-object v7, v7, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v7, :cond_a0

    iget-object v7, v6, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    iget-object v7, v7, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v7, :cond_a0

    :goto_9e
    const/4 v0, 0x1

    goto :goto_bf

    .line 23
    :cond_a0
    iget v7, p0, Lc/e/b/k/a;->r0:I

    if-eq v7, v2, :cond_a6

    if-ne v7, v4, :cond_bb

    .line 24
    :cond_a6
    invoke-virtual {v6}, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;

    move-result-object v7

    sget-object v8, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v7, v8, :cond_bb

    iget-object v7, v6, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    iget-object v7, v7, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v7, :cond_bb

    iget-object v6, v6, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    iget-object v6, v6, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v6, :cond_bb

    goto :goto_9e

    :cond_bb
    :goto_bb
    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    :cond_be
    const/4 v0, 0x0

    .line 25
    :goto_bf
    iget-object v6, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    invoke-virtual {v6}, Lc/e/b/k/d;->k()Z

    move-result v6

    if-nez v6, :cond_d2

    iget-object v6, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    invoke-virtual {v6}, Lc/e/b/k/d;->k()Z

    move-result v6

    if-eqz v6, :cond_d0

    goto :goto_d2

    :cond_d0
    const/4 v6, 0x0

    goto :goto_d3

    :cond_d2
    :goto_d2
    const/4 v6, 0x1

    .line 26
    :goto_d3
    iget-object v7, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    invoke-virtual {v7}, Lc/e/b/k/d;->k()Z

    move-result v7

    if-nez v7, :cond_e6

    iget-object v7, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    invoke-virtual {v7}, Lc/e/b/k/d;->k()Z

    move-result v7

    if-eqz v7, :cond_e4

    goto :goto_e6

    :cond_e4
    const/4 v7, 0x0

    goto :goto_e7

    :cond_e6
    :goto_e6
    const/4 v7, 0x1

    :goto_e7
    if-nez v0, :cond_103

    .line 27
    iget v8, p0, Lc/e/b/k/a;->r0:I

    if-nez v8, :cond_ef

    if-nez v6, :cond_101

    :cond_ef
    iget v8, p0, Lc/e/b/k/a;->r0:I

    if-ne v8, v2, :cond_f5

    if-nez v7, :cond_101

    :cond_f5
    iget v8, p0, Lc/e/b/k/a;->r0:I

    if-ne v8, v3, :cond_fb

    if-nez v6, :cond_101

    :cond_fb
    iget v6, p0, Lc/e/b/k/a;->r0:I

    if-ne v6, v4, :cond_103

    if-eqz v7, :cond_103

    :cond_101
    const/4 v6, 0x1

    goto :goto_104

    :cond_103
    const/4 v6, 0x0

    :goto_104
    const/4 v7, 0x5

    if-nez v6, :cond_108

    const/4 v7, 0x4

    :cond_108
    const/4 v6, 0x0

    .line 28
    :goto_109
    iget v8, p0, Lc/e/b/k/i;->q0:I

    if-ge v6, v8, :cond_166

    .line 29
    iget-object v8, p0, Lc/e/b/k/i;->p0:[Lc/e/b/k/e;

    aget-object v8, v8, v6

    .line 30
    iget-boolean v9, p0, Lc/e/b/k/a;->s0:Z

    if-nez v9, :cond_11c

    invoke-virtual {v8}, Lc/e/b/k/e;->h()Z

    move-result v9

    if-nez v9, :cond_11c

    goto :goto_163

    .line 31
    :cond_11c
    iget-object v9, v8, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    iget v10, p0, Lc/e/b/k/a;->r0:I

    aget-object v9, v9, v10

    invoke-virtual {p1, v9}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v9

    .line 32
    iget-object v8, v8, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    iget v10, p0, Lc/e/b/k/a;->r0:I

    aget-object v11, v8, v10

    iput-object v9, v11, Lc/e/b/k/d;->i:Lc/e/b/i;

    .line 33
    aget-object v11, v8, v10

    iget-object v11, v11, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v11, :cond_142

    aget-object v11, v8, v10

    iget-object v11, v11, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    iget-object v11, v11, Lc/e/b/k/d;->d:Lc/e/b/k/e;

    if-ne v11, p0, :cond_142

    .line 34
    aget-object v8, v8, v10

    iget v8, v8, Lc/e/b/k/d;->g:I

    add-int/2addr v8, v1

    goto :goto_143

    :cond_142
    const/4 v8, 0x0

    .line 35
    :goto_143
    iget v10, p0, Lc/e/b/k/a;->r0:I

    if-eqz v10, :cond_153

    if-ne v10, v2, :cond_14a

    goto :goto_153

    .line 36
    :cond_14a
    iget-object v10, p2, Lc/e/b/k/d;->i:Lc/e/b/i;

    iget v11, p0, Lc/e/b/k/a;->t0:I

    add-int/2addr v11, v8

    invoke-virtual {p1, v10, v9, v11, v0}, Lc/e/b/d;->g(Lc/e/b/i;Lc/e/b/i;IZ)V

    goto :goto_15b

    .line 37
    :cond_153
    :goto_153
    iget-object v10, p2, Lc/e/b/k/d;->i:Lc/e/b/i;

    iget v11, p0, Lc/e/b/k/a;->t0:I

    sub-int/2addr v11, v8

    invoke-virtual {p1, v10, v9, v11, v0}, Lc/e/b/d;->i(Lc/e/b/i;Lc/e/b/i;IZ)V

    .line 38
    :goto_15b
    iget-object v10, p2, Lc/e/b/k/d;->i:Lc/e/b/i;

    iget v11, p0, Lc/e/b/k/a;->t0:I

    add-int/2addr v11, v8

    invoke-virtual {p1, v10, v9, v11, v7}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    :goto_163
    add-int/lit8 v6, v6, 0x1

    goto :goto_109

    .line 39
    :cond_166
    iget p2, p0, Lc/e/b/k/a;->r0:I

    const/16 v0, 0x8

    if-nez p2, :cond_193

    .line 40
    iget-object p2, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    iget-object p2, p2, Lc/e/b/k/d;->i:Lc/e/b/i;

    iget-object v2, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    iget-object v2, v2, Lc/e/b/k/d;->i:Lc/e/b/i;

    invoke-virtual {p1, p2, v2, v1, v0}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    .line 41
    iget-object p2, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    iget-object p2, p2, Lc/e/b/k/d;->i:Lc/e/b/i;

    iget-object v0, p0, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    iget-object v0, v0, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    iget-object v0, v0, Lc/e/b/k/d;->i:Lc/e/b/i;

    invoke-virtual {p1, p2, v0, v1, v5}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    .line 42
    iget-object p2, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    iget-object p2, p2, Lc/e/b/k/d;->i:Lc/e/b/i;

    iget-object v0, p0, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    iget-object v0, v0, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    iget-object v0, v0, Lc/e/b/k/d;->i:Lc/e/b/i;

    invoke-virtual {p1, p2, v0, v1, v1}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    goto/16 :goto_20a

    :cond_193
    if-ne p2, v3, :cond_1bb

    .line 43
    iget-object p2, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    iget-object p2, p2, Lc/e/b/k/d;->i:Lc/e/b/i;

    iget-object v2, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    iget-object v2, v2, Lc/e/b/k/d;->i:Lc/e/b/i;

    invoke-virtual {p1, p2, v2, v1, v0}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    .line 44
    iget-object p2, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    iget-object p2, p2, Lc/e/b/k/d;->i:Lc/e/b/i;

    iget-object v0, p0, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    iget-object v0, v0, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    iget-object v0, v0, Lc/e/b/k/d;->i:Lc/e/b/i;

    invoke-virtual {p1, p2, v0, v1, v5}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    .line 45
    iget-object p2, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    iget-object p2, p2, Lc/e/b/k/d;->i:Lc/e/b/i;

    iget-object v0, p0, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    iget-object v0, v0, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    iget-object v0, v0, Lc/e/b/k/d;->i:Lc/e/b/i;

    invoke-virtual {p1, p2, v0, v1, v1}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    goto :goto_20a

    :cond_1bb
    if-ne p2, v2, :cond_1e3

    .line 46
    iget-object p2, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    iget-object p2, p2, Lc/e/b/k/d;->i:Lc/e/b/i;

    iget-object v2, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    iget-object v2, v2, Lc/e/b/k/d;->i:Lc/e/b/i;

    invoke-virtual {p1, p2, v2, v1, v0}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    .line 47
    iget-object p2, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    iget-object p2, p2, Lc/e/b/k/d;->i:Lc/e/b/i;

    iget-object v0, p0, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    iget-object v0, v0, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    iget-object v0, v0, Lc/e/b/k/d;->i:Lc/e/b/i;

    invoke-virtual {p1, p2, v0, v1, v5}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    .line 48
    iget-object p2, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    iget-object p2, p2, Lc/e/b/k/d;->i:Lc/e/b/i;

    iget-object v0, p0, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    iget-object v0, v0, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    iget-object v0, v0, Lc/e/b/k/d;->i:Lc/e/b/i;

    invoke-virtual {p1, p2, v0, v1, v1}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    goto :goto_20a

    :cond_1e3
    if-ne p2, v4, :cond_20a

    .line 49
    iget-object p2, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    iget-object p2, p2, Lc/e/b/k/d;->i:Lc/e/b/i;

    iget-object v2, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    iget-object v2, v2, Lc/e/b/k/d;->i:Lc/e/b/i;

    invoke-virtual {p1, p2, v2, v1, v0}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    .line 50
    iget-object p2, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    iget-object p2, p2, Lc/e/b/k/d;->i:Lc/e/b/i;

    iget-object v0, p0, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    iget-object v0, v0, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    iget-object v0, v0, Lc/e/b/k/d;->i:Lc/e/b/i;

    invoke-virtual {p1, p2, v0, v1, v5}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    .line 51
    iget-object p2, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    iget-object p2, p2, Lc/e/b/k/d;->i:Lc/e/b/i;

    iget-object v0, p0, Lc/e/b/k/e;->R:Lc/e/b/k/e;

    iget-object v0, v0, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    iget-object v0, v0, Lc/e/b/k/d;->i:Lc/e/b/i;

    invoke-virtual {p1, p2, v0, v1, v1}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    :cond_20a
    :goto_20a
    return-void
.end method

.method public g1()I
    .registers 4

    .line 1
    iget v0, p0, Lc/e/b/k/a;->r0:I

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v2, 0x2

    if-eq v0, v2, :cond_f

    const/4 v2, 0x3

    if-eq v0, v2, :cond_f

    const/4 v0, -0x1

    return v0

    :cond_f
    return v1

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected h1()V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    iget v2, p0, Lc/e/b/k/i;->q0:I

    if-ge v1, v2, :cond_22

    .line 2
    iget-object v2, p0, Lc/e/b/k/i;->p0:[Lc/e/b/k/e;

    aget-object v2, v2, v1

    .line 3
    iget v3, p0, Lc/e/b/k/a;->r0:I

    const/4 v4, 0x1

    if-eqz v3, :cond_1c

    if-ne v3, v4, :cond_12

    goto :goto_1c

    :cond_12
    const/4 v5, 0x2

    if-eq v3, v5, :cond_18

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1f

    .line 4
    :cond_18
    invoke-virtual {v2, v4, v4}, Lc/e/b/k/e;->C0(IZ)V

    goto :goto_1f

    .line 5
    :cond_1c
    :goto_1c
    invoke-virtual {v2, v0, v4}, Lc/e/b/k/e;->C0(IZ)V

    :cond_1f
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_22
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

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Barrier] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/e/b/k/e;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_1b
    iget v2, p0, Lc/e/b/k/i;->q0:I

    if-ge v1, v2, :cond_4c

    .line 3
    iget-object v2, p0, Lc/e/b/k/i;->p0:[Lc/e/b/k/e;

    aget-object v2, v2, v1

    if-lez v1, :cond_36

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lc/e/b/k/e;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 6
    :cond_4c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
