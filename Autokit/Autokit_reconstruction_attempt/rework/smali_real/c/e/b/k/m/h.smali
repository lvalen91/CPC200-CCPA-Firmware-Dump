.class public Lc/e/b/k/m/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lc/e/b/k/m/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lc/e/b/k/m/b$a;

    invoke-direct {v0}, Lc/e/b/k/m/b$a;-><init>()V

    sput-object v0, Lc/e/b/k/m/h;->a:Lc/e/b/k/m/b$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lc/e/b/k/e;)Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lc/e/b/k/e;->I()Lc/e/b/k/e;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {p0}, Lc/e/b/k/e;->I()Lc/e/b/k/e;

    move-result-object v2

    check-cast v2, Lc/e/b/k/f;

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    if-eqz v2, :cond_1e

    .line 4
    invoke-virtual {v2}, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;

    move-result-object v3

    sget-object v4, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    :cond_1e
    if-eqz v2, :cond_26

    .line 5
    invoke-virtual {v2}, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;

    move-result-object v2

    sget-object v3, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    .line 6
    :cond_26
    sget-object v2, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v2, :cond_4e

    sget-object v2, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-eq v0, v2, :cond_4e

    sget-object v2, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v0, v2, :cond_45

    iget v0, p0, Lc/e/b/k/e;->n:I

    if-nez v0, :cond_45

    iget v0, p0, Lc/e/b/k/e;->U:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_45

    .line 7
    invoke-virtual {p0, v4}, Lc/e/b/k/e;->V(I)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 8
    :cond_45
    invoke-virtual {p0}, Lc/e/b/k/e;->e0()Z

    move-result v0

    if-eqz v0, :cond_4c

    goto :goto_4e

    :cond_4c
    const/4 v0, 0x0

    goto :goto_4f

    :cond_4e
    :goto_4e
    const/4 v0, 0x1

    .line 9
    :goto_4f
    sget-object v2, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    if-eq v1, v2, :cond_74

    sget-object v2, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-eq v1, v2, :cond_74

    sget-object v2, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v1, v2, :cond_6b

    iget v1, p0, Lc/e/b/k/e;->o:I

    if-nez v1, :cond_6b

    iget v1, p0, Lc/e/b/k/e;->U:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_6b

    .line 10
    invoke-virtual {p0, v5}, Lc/e/b/k/e;->V(I)Z

    move-result v1

    if-nez v1, :cond_74

    .line 11
    :cond_6b
    invoke-virtual {p0}, Lc/e/b/k/e;->f0()Z

    move-result v1

    if-eqz v1, :cond_72

    goto :goto_74

    :cond_72
    const/4 v1, 0x0

    goto :goto_75

    :cond_74
    :goto_74
    const/4 v1, 0x1

    .line 12
    :goto_75
    iget p0, p0, Lc/e/b/k/e;->U:F

    cmpl-float p0, p0, v3

    if-lez p0, :cond_80

    if-nez v0, :cond_7f

    if-eqz v1, :cond_80

    :cond_7f
    return v5

    :cond_80
    if-eqz v0, :cond_85

    if-eqz v1, :cond_85

    const/4 v4, 0x1

    :cond_85
    return v4
.end method

.method private static b(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Z)V
    .registers 16

    .line 1
    instance-of v0, p0, Lc/e/b/k/f;

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lc/e/b/k/e;->d0()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p0}, Lc/e/b/k/m/h;->a(Lc/e/b/k/e;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2
    new-instance v0, Lc/e/b/k/m/b$a;

    invoke-direct {v0}, Lc/e/b/k/m/b$a;-><init>()V

    .line 3
    sget v1, Lc/e/b/k/m/b$a;->k:I

    invoke-static {p0, p1, v0, v1}, Lc/e/b/k/f;->A1(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Lc/e/b/k/m/b$a;I)Z

    .line 4
    :cond_1a
    sget-object v0, Lc/e/b/k/d$b;->c:Lc/e/b/k/d$b;

    invoke-virtual {p0, v0}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v0

    .line 5
    sget-object v1, Lc/e/b/k/d$b;->e:Lc/e/b/k/d$b;

    invoke-virtual {p0, v1}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lc/e/b/k/d;->d()I

    move-result v2

    .line 7
    invoke-virtual {v1}, Lc/e/b/k/d;->d()I

    move-result v3

    .line 8
    invoke-virtual {v0}, Lc/e/b/k/d;->c()Ljava/util/HashSet;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_131

    invoke-virtual {v0}, Lc/e/b/k/d;->m()Z

    move-result v4

    if-eqz v4, :cond_131

    .line 9
    invoke-virtual {v0}, Lc/e/b/k/d;->c()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_47
    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_131

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/e/b/k/d;

    .line 10
    iget-object v9, v4, Lc/e/b/k/d;->d:Lc/e/b/k/e;

    .line 11
    invoke-static {v9}, Lc/e/b/k/m/h;->a(Lc/e/b/k/e;)Z

    move-result v10

    .line 12
    invoke-virtual {v9}, Lc/e/b/k/e;->d0()Z

    move-result v11

    if-eqz v11, :cond_6b

    if-eqz v10, :cond_6b

    .line 13
    new-instance v11, Lc/e/b/k/m/b$a;

    invoke-direct {v11}, Lc/e/b/k/m/b$a;-><init>()V

    .line 14
    sget v12, Lc/e/b/k/m/b$a;->k:I

    invoke-static {v9, p1, v11, v12}, Lc/e/b/k/f;->A1(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Lc/e/b/k/m/b$a;I)Z

    .line 15
    :cond_6b
    invoke-virtual {v9}, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;

    move-result-object v11

    sget-object v12, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v11, v12, :cond_d4

    if-eqz v10, :cond_76

    goto :goto_d4

    .line 16
    :cond_76
    invoke-virtual {v9}, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;

    move-result-object v10

    sget-object v11, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v10, v11, :cond_47

    iget v10, v9, Lc/e/b/k/e;->r:I

    if-ltz v10, :cond_47

    iget v10, v9, Lc/e/b/k/e;->q:I

    if-ltz v10, :cond_47

    .line 17
    invoke-virtual {v9}, Lc/e/b/k/e;->Q()I

    move-result v10

    if-eq v10, v6, :cond_98

    iget v10, v9, Lc/e/b/k/e;->n:I

    if-nez v10, :cond_47

    invoke-virtual {v9}, Lc/e/b/k/e;->t()F

    move-result v10

    cmpl-float v10, v10, v5

    if-nez v10, :cond_47

    .line 18
    :cond_98
    invoke-virtual {v9}, Lc/e/b/k/e;->Z()Z

    move-result v10

    if-nez v10, :cond_47

    invoke-virtual {v9}, Lc/e/b/k/e;->c0()Z

    move-result v10

    if-nez v10, :cond_47

    .line 19
    iget-object v10, v9, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    if-ne v4, v10, :cond_b4

    iget-object v10, v9, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    iget-object v10, v10, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v10, :cond_b4

    invoke-virtual {v10}, Lc/e/b/k/d;->m()Z

    move-result v10

    if-nez v10, :cond_c4

    :cond_b4
    iget-object v10, v9, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    if-ne v4, v10, :cond_c6

    iget-object v4, v9, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    iget-object v4, v4, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v4, :cond_c6

    .line 20
    invoke-virtual {v4}, Lc/e/b/k/d;->m()Z

    move-result v4

    if-eqz v4, :cond_c6

    :cond_c4
    const/4 v4, 0x1

    goto :goto_c7

    :cond_c6
    const/4 v4, 0x0

    :goto_c7
    if-eqz v4, :cond_47

    .line 21
    invoke-virtual {v9}, Lc/e/b/k/e;->Z()Z

    move-result v4

    if-nez v4, :cond_47

    .line 22
    invoke-static {p0, p1, v9, p2}, Lc/e/b/k/m/h;->e(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Lc/e/b/k/e;Z)V

    goto/16 :goto_47

    .line 23
    :cond_d4
    :goto_d4
    invoke-virtual {v9}, Lc/e/b/k/e;->d0()Z

    move-result v10

    if-eqz v10, :cond_dc

    goto/16 :goto_47

    .line 24
    :cond_dc
    iget-object v10, v9, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    if-ne v4, v10, :cond_f8

    iget-object v11, v9, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    iget-object v11, v11, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-nez v11, :cond_f8

    .line 25
    invoke-virtual {v10}, Lc/e/b/k/d;->e()I

    move-result v4

    add-int/2addr v4, v2

    .line 26
    invoke-virtual {v9}, Lc/e/b/k/e;->R()I

    move-result v10

    add-int/2addr v10, v4

    .line 27
    invoke-virtual {v9, v4, v10}, Lc/e/b/k/e;->p0(II)V

    .line 28
    invoke-static {v9, p1, p2}, Lc/e/b/k/m/h;->b(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Z)V

    goto/16 :goto_47

    .line 29
    :cond_f8
    iget-object v10, v9, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    if-ne v4, v10, :cond_116

    iget-object v11, v9, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    iget-object v11, v11, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-nez v11, :cond_116

    .line 30
    invoke-virtual {v10}, Lc/e/b/k/d;->e()I

    move-result v4

    sub-int v4, v2, v4

    .line 31
    invoke-virtual {v9}, Lc/e/b/k/e;->R()I

    move-result v10

    sub-int v10, v4, v10

    .line 32
    invoke-virtual {v9, v10, v4}, Lc/e/b/k/e;->p0(II)V

    .line 33
    invoke-static {v9, p1, p2}, Lc/e/b/k/m/h;->b(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Z)V

    goto/16 :goto_47

    .line 34
    :cond_116
    iget-object v10, v9, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    if-ne v4, v10, :cond_47

    iget-object v4, v9, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    iget-object v4, v4, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v4, :cond_47

    .line 35
    invoke-virtual {v4}, Lc/e/b/k/d;->m()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-virtual {v9}, Lc/e/b/k/e;->Z()Z

    move-result v4

    if-nez v4, :cond_47

    .line 36
    invoke-static {p1, v9, p2}, Lc/e/b/k/m/h;->d(Lc/e/b/k/m/b$b;Lc/e/b/k/e;Z)V

    goto/16 :goto_47

    .line 37
    :cond_131
    instance-of v0, p0, Lc/e/b/k/g;

    if-eqz v0, :cond_136

    return-void

    .line 38
    :cond_136
    invoke-virtual {v1}, Lc/e/b/k/d;->c()Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_226

    invoke-virtual {v1}, Lc/e/b/k/d;->m()Z

    move-result v0

    if-eqz v0, :cond_226

    .line 39
    invoke-virtual {v1}, Lc/e/b/k/d;->c()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14a
    :goto_14a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_226

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/b/k/d;

    .line 40
    iget-object v2, v1, Lc/e/b/k/d;->d:Lc/e/b/k/e;

    .line 41
    invoke-static {v2}, Lc/e/b/k/m/h;->a(Lc/e/b/k/e;)Z

    move-result v4

    .line 42
    invoke-virtual {v2}, Lc/e/b/k/e;->d0()Z

    move-result v9

    if-eqz v9, :cond_16e

    if-eqz v4, :cond_16e

    .line 43
    new-instance v9, Lc/e/b/k/m/b$a;

    invoke-direct {v9}, Lc/e/b/k/m/b$a;-><init>()V

    .line 44
    sget v10, Lc/e/b/k/m/b$a;->k:I

    invoke-static {v2, p1, v9, v10}, Lc/e/b/k/f;->A1(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Lc/e/b/k/m/b$a;I)Z

    .line 45
    :cond_16e
    iget-object v9, v2, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    if-ne v1, v9, :cond_17e

    iget-object v9, v2, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    iget-object v9, v9, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v9, :cond_17e

    invoke-virtual {v9}, Lc/e/b/k/d;->m()Z

    move-result v9

    if-nez v9, :cond_18e

    :cond_17e
    iget-object v9, v2, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    if-ne v1, v9, :cond_190

    iget-object v9, v2, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    iget-object v9, v9, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v9, :cond_190

    .line 46
    invoke-virtual {v9}, Lc/e/b/k/d;->m()Z

    move-result v9

    if-eqz v9, :cond_190

    :cond_18e
    const/4 v9, 0x1

    goto :goto_191

    :cond_190
    const/4 v9, 0x0

    .line 47
    :goto_191
    invoke-virtual {v2}, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;

    move-result-object v10

    sget-object v11, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v10, v11, :cond_1d7

    if-eqz v4, :cond_19c

    goto :goto_1d7

    .line 48
    :cond_19c
    invoke-virtual {v2}, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;

    move-result-object v1

    sget-object v4, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v1, v4, :cond_14a

    iget v1, v2, Lc/e/b/k/e;->r:I

    if-ltz v1, :cond_14a

    iget v1, v2, Lc/e/b/k/e;->q:I

    if-ltz v1, :cond_14a

    .line 49
    invoke-virtual {v2}, Lc/e/b/k/e;->Q()I

    move-result v1

    if-eq v1, v6, :cond_1be

    iget v1, v2, Lc/e/b/k/e;->n:I

    if-nez v1, :cond_14a

    invoke-virtual {v2}, Lc/e/b/k/e;->t()F

    move-result v1

    cmpl-float v1, v1, v5

    if-nez v1, :cond_14a

    .line 50
    :cond_1be
    invoke-virtual {v2}, Lc/e/b/k/e;->Z()Z

    move-result v1

    if-nez v1, :cond_14a

    invoke-virtual {v2}, Lc/e/b/k/e;->c0()Z

    move-result v1

    if-nez v1, :cond_14a

    if-eqz v9, :cond_14a

    .line 51
    invoke-virtual {v2}, Lc/e/b/k/e;->Z()Z

    move-result v1

    if-nez v1, :cond_14a

    .line 52
    invoke-static {p0, p1, v2, p2}, Lc/e/b/k/m/h;->e(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Lc/e/b/k/e;Z)V

    goto/16 :goto_14a

    .line 53
    :cond_1d7
    :goto_1d7
    invoke-virtual {v2}, Lc/e/b/k/e;->d0()Z

    move-result v4

    if-eqz v4, :cond_1df

    goto/16 :goto_14a

    .line 54
    :cond_1df
    iget-object v4, v2, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    if-ne v1, v4, :cond_1fb

    iget-object v10, v2, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    iget-object v10, v10, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-nez v10, :cond_1fb

    .line 55
    invoke-virtual {v4}, Lc/e/b/k/d;->e()I

    move-result v1

    add-int/2addr v1, v3

    .line 56
    invoke-virtual {v2}, Lc/e/b/k/e;->R()I

    move-result v4

    add-int/2addr v4, v1

    .line 57
    invoke-virtual {v2, v1, v4}, Lc/e/b/k/e;->p0(II)V

    .line 58
    invoke-static {v2, p1, p2}, Lc/e/b/k/m/h;->b(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Z)V

    goto/16 :goto_14a

    .line 59
    :cond_1fb
    iget-object v4, v2, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    if-ne v1, v4, :cond_219

    iget-object v1, v2, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-nez v1, :cond_219

    .line 60
    invoke-virtual {v4}, Lc/e/b/k/d;->e()I

    move-result v1

    sub-int v1, v3, v1

    .line 61
    invoke-virtual {v2}, Lc/e/b/k/e;->R()I

    move-result v4

    sub-int v4, v1, v4

    .line 62
    invoke-virtual {v2, v4, v1}, Lc/e/b/k/e;->p0(II)V

    .line 63
    invoke-static {v2, p1, p2}, Lc/e/b/k/m/h;->b(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Z)V

    goto/16 :goto_14a

    :cond_219
    if-eqz v9, :cond_14a

    .line 64
    invoke-virtual {v2}, Lc/e/b/k/e;->Z()Z

    move-result v1

    if-nez v1, :cond_14a

    .line 65
    invoke-static {p1, v2, p2}, Lc/e/b/k/m/h;->d(Lc/e/b/k/m/b$b;Lc/e/b/k/e;Z)V

    goto/16 :goto_14a

    :cond_226
    return-void
.end method

.method private static c(Lc/e/b/k/a;Lc/e/b/k/m/b$b;IZ)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lc/e/b/k/a;->c1()Z

    move-result v0

    if-eqz v0, :cond_f

    if-nez p2, :cond_c

    .line 2
    invoke-static {p0, p1, p3}, Lc/e/b/k/m/h;->b(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Z)V

    goto :goto_f

    .line 3
    :cond_c
    invoke-static {p0, p1}, Lc/e/b/k/m/h;->i(Lc/e/b/k/e;Lc/e/b/k/m/b$b;)V

    :cond_f
    :goto_f
    return-void
.end method

.method private static d(Lc/e/b/k/m/b$b;Lc/e/b/k/e;Z)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Lc/e/b/k/e;->w()F

    move-result v0

    .line 2
    iget-object v1, p1, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    invoke-virtual {v1}, Lc/e/b/k/d;->d()I

    move-result v1

    .line 3
    iget-object v2, p1, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    iget-object v2, v2, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    invoke-virtual {v2}, Lc/e/b/k/d;->d()I

    move-result v2

    .line 4
    iget-object v3, p1, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    invoke-virtual {v3}, Lc/e/b/k/d;->e()I

    move-result v3

    add-int/2addr v3, v1

    .line 5
    iget-object v4, p1, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    invoke-virtual {v4}, Lc/e/b/k/d;->e()I

    move-result v4

    sub-int v4, v2, v4

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v1, v2, :cond_2a

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_2c

    :cond_2a
    move v1, v3

    move v2, v4

    .line 6
    :goto_2c
    invoke-virtual {p1}, Lc/e/b/k/e;->R()I

    move-result v3

    sub-int v4, v2, v1

    sub-int/2addr v4, v3

    if-le v1, v2, :cond_38

    sub-int v4, v1, v2

    sub-int/2addr v4, v3

    :cond_38
    int-to-float v4, v4

    mul-float v0, v0, v4

    add-float/2addr v0, v5

    float-to-int v0, v0

    add-int/2addr v0, v1

    add-int v4, v0, v3

    if-le v1, v2, :cond_44

    sub-int v4, v0, v3

    .line 7
    :cond_44
    invoke-virtual {p1, v0, v4}, Lc/e/b/k/e;->p0(II)V

    .line 8
    invoke-static {p1, p0, p2}, Lc/e/b/k/m/h;->b(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Z)V

    return-void
.end method

.method private static e(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Lc/e/b/k/e;Z)V
    .registers 11

    .line 1
    invoke-virtual {p2}, Lc/e/b/k/e;->w()F

    move-result v0

    .line 2
    iget-object v1, p2, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    invoke-virtual {v1}, Lc/e/b/k/d;->d()I

    move-result v1

    iget-object v2, p2, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    invoke-virtual {v2}, Lc/e/b/k/d;->e()I

    move-result v2

    add-int/2addr v1, v2

    .line 3
    iget-object v2, p2, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    iget-object v2, v2, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    invoke-virtual {v2}, Lc/e/b/k/d;->d()I

    move-result v2

    iget-object v3, p2, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    invoke-virtual {v3}, Lc/e/b/k/d;->e()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt v2, v1, :cond_74

    .line 4
    invoke-virtual {p2}, Lc/e/b/k/e;->R()I

    move-result v3

    .line 5
    invoke-virtual {p2}, Lc/e/b/k/e;->Q()I

    move-result v4

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_65

    .line 6
    iget v4, p2, Lc/e/b/k/e;->n:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_53

    .line 7
    instance-of v3, p0, Lc/e/b/k/f;

    if-eqz v3, :cond_40

    .line 8
    invoke-virtual {p0}, Lc/e/b/k/e;->R()I

    move-result p0

    goto :goto_48

    .line 9
    :cond_40
    invoke-virtual {p0}, Lc/e/b/k/e;->I()Lc/e/b/k/e;

    move-result-object p0

    invoke-virtual {p0}, Lc/e/b/k/e;->R()I

    move-result p0

    .line 10
    :goto_48
    invoke-virtual {p2}, Lc/e/b/k/e;->w()F

    move-result v3

    mul-float v3, v3, v6

    int-to-float p0, p0

    mul-float v3, v3, p0

    float-to-int v3, v3

    goto :goto_57

    :cond_53
    if-nez v4, :cond_57

    sub-int v3, v2, v1

    .line 11
    :cond_57
    :goto_57
    iget p0, p2, Lc/e/b/k/e;->q:I

    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 12
    iget p0, p2, Lc/e/b/k/e;->r:I

    if-lez p0, :cond_65

    .line 13
    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_65
    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    int-to-float p0, v2

    mul-float v0, v0, p0

    add-float/2addr v0, v6

    float-to-int p0, v0

    add-int/2addr v1, p0

    add-int/2addr v3, v1

    .line 14
    invoke-virtual {p2, v1, v3}, Lc/e/b/k/e;->p0(II)V

    .line 15
    invoke-static {p2, p1, p3}, Lc/e/b/k/m/h;->b(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Z)V

    :cond_74
    return-void
.end method

.method private static f(Lc/e/b/k/m/b$b;Lc/e/b/k/e;)V
    .registers 8

    .line 1
    invoke-virtual {p1}, Lc/e/b/k/e;->M()F

    move-result v0

    .line 2
    iget-object v1, p1, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    invoke-virtual {v1}, Lc/e/b/k/d;->d()I

    move-result v1

    .line 3
    iget-object v2, p1, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    iget-object v2, v2, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    invoke-virtual {v2}, Lc/e/b/k/d;->d()I

    move-result v2

    .line 4
    iget-object v3, p1, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    invoke-virtual {v3}, Lc/e/b/k/d;->e()I

    move-result v3

    add-int/2addr v3, v1

    .line 5
    iget-object v4, p1, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    invoke-virtual {v4}, Lc/e/b/k/d;->e()I

    move-result v4

    sub-int v4, v2, v4

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v1, v2, :cond_2a

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_2c

    :cond_2a
    move v1, v3

    move v2, v4

    .line 6
    :goto_2c
    invoke-virtual {p1}, Lc/e/b/k/e;->v()I

    move-result v3

    sub-int v4, v2, v1

    sub-int/2addr v4, v3

    if-le v1, v2, :cond_38

    sub-int v4, v1, v2

    sub-int/2addr v4, v3

    :cond_38
    int-to-float v4, v4

    mul-float v0, v0, v4

    add-float/2addr v0, v5

    float-to-int v0, v0

    add-int v4, v1, v0

    add-int v5, v4, v3

    if-le v1, v2, :cond_47

    sub-int v4, v1, v0

    sub-int v5, v4, v3

    .line 7
    :cond_47
    invoke-virtual {p1, v4, v5}, Lc/e/b/k/e;->s0(II)V

    .line 8
    invoke-static {p1, p0}, Lc/e/b/k/m/h;->i(Lc/e/b/k/e;Lc/e/b/k/m/b$b;)V

    return-void
.end method

.method private static g(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Lc/e/b/k/e;)V
    .registers 10

    .line 1
    invoke-virtual {p2}, Lc/e/b/k/e;->M()F

    move-result v0

    .line 2
    iget-object v1, p2, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    invoke-virtual {v1}, Lc/e/b/k/d;->d()I

    move-result v1

    iget-object v2, p2, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    invoke-virtual {v2}, Lc/e/b/k/d;->e()I

    move-result v2

    add-int/2addr v1, v2

    .line 3
    iget-object v2, p2, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    iget-object v2, v2, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    invoke-virtual {v2}, Lc/e/b/k/d;->d()I

    move-result v2

    iget-object v3, p2, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    invoke-virtual {v3}, Lc/e/b/k/d;->e()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt v2, v1, :cond_70

    .line 4
    invoke-virtual {p2}, Lc/e/b/k/e;->v()I

    move-result v3

    .line 5
    invoke-virtual {p2}, Lc/e/b/k/e;->Q()I

    move-result v4

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_61

    .line 6
    iget v4, p2, Lc/e/b/k/e;->o:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4f

    .line 7
    instance-of v3, p0, Lc/e/b/k/f;

    if-eqz v3, :cond_40

    .line 8
    invoke-virtual {p0}, Lc/e/b/k/e;->v()I

    move-result p0

    goto :goto_48

    .line 9
    :cond_40
    invoke-virtual {p0}, Lc/e/b/k/e;->I()Lc/e/b/k/e;

    move-result-object p0

    invoke-virtual {p0}, Lc/e/b/k/e;->v()I

    move-result p0

    :goto_48
    mul-float v3, v0, v6

    int-to-float p0, p0

    mul-float v3, v3, p0

    float-to-int v3, v3

    goto :goto_53

    :cond_4f
    if-nez v4, :cond_53

    sub-int v3, v2, v1

    .line 10
    :cond_53
    :goto_53
    iget p0, p2, Lc/e/b/k/e;->t:I

    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 11
    iget p0, p2, Lc/e/b/k/e;->u:I

    if-lez p0, :cond_61

    .line 12
    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_61
    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    int-to-float p0, v2

    mul-float v0, v0, p0

    add-float/2addr v0, v6

    float-to-int p0, v0

    add-int/2addr v1, p0

    add-int/2addr v3, v1

    .line 13
    invoke-virtual {p2, v1, v3}, Lc/e/b/k/e;->s0(II)V

    .line 14
    invoke-static {p2, p1}, Lc/e/b/k/m/h;->i(Lc/e/b/k/e;Lc/e/b/k/m/b$b;)V

    :cond_70
    return-void
.end method

.method public static h(Lc/e/b/k/f;Lc/e/b/k/m/b$b;)V
    .registers 15

    .line 1
    invoke-virtual {p0}, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lc/e/b/k/e;->i0()V

    .line 4
    invoke-virtual {p0}, Lc/e/b/k/l;->a1()Ljava/util/ArrayList;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v3, :cond_23

    .line 6
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/e/b/k/e;

    .line 7
    invoke-virtual {v6}, Lc/e/b/k/e;->i0()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 8
    :cond_23
    invoke-virtual {p0}, Lc/e/b/k/f;->x1()Z

    move-result v5

    .line 9
    sget-object v6, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    if-ne v0, v6, :cond_33

    .line 10
    invoke-virtual {p0}, Lc/e/b/k/e;->R()I

    move-result v0

    invoke-virtual {p0, v4, v0}, Lc/e/b/k/e;->p0(II)V

    goto :goto_36

    .line 11
    :cond_33
    invoke-virtual {p0, v4}, Lc/e/b/k/e;->q0(I)V

    :goto_36
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_39
    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-ge v0, v3, :cond_a0

    .line 12
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lc/e/b/k/e;

    .line 13
    instance-of v12, v11, Lc/e/b/k/g;

    if-eqz v12, :cond_90

    .line 14
    check-cast v11, Lc/e/b/k/g;

    .line 15
    invoke-virtual {v11}, Lc/e/b/k/g;->b1()I

    move-result v12

    if-ne v12, v10, :cond_9d

    .line 16
    invoke-virtual {v11}, Lc/e/b/k/g;->c1()I

    move-result v6

    if-eq v6, v9, :cond_5f

    .line 17
    invoke-virtual {v11}, Lc/e/b/k/g;->c1()I

    move-result v6

    invoke-virtual {v11, v6}, Lc/e/b/k/g;->f1(I)V

    goto :goto_8e

    .line 18
    :cond_5f
    invoke-virtual {v11}, Lc/e/b/k/g;->d1()I

    move-result v6

    if-eq v6, v9, :cond_78

    invoke-virtual {p0}, Lc/e/b/k/e;->e0()Z

    move-result v6

    if-eqz v6, :cond_78

    .line 19
    invoke-virtual {p0}, Lc/e/b/k/e;->R()I

    move-result v6

    invoke-virtual {v11}, Lc/e/b/k/g;->d1()I

    move-result v8

    sub-int/2addr v6, v8

    invoke-virtual {v11, v6}, Lc/e/b/k/g;->f1(I)V

    goto :goto_8e

    .line 20
    :cond_78
    invoke-virtual {p0}, Lc/e/b/k/e;->e0()Z

    move-result v6

    if-eqz v6, :cond_8e

    .line 21
    invoke-virtual {v11}, Lc/e/b/k/g;->e1()F

    move-result v6

    invoke-virtual {p0}, Lc/e/b/k/e;->R()I

    move-result v9

    int-to-float v9, v9

    mul-float v6, v6, v9

    add-float/2addr v6, v8

    float-to-int v6, v6

    .line 22
    invoke-virtual {v11, v6}, Lc/e/b/k/g;->f1(I)V

    :cond_8e
    :goto_8e
    const/4 v6, 0x1

    goto :goto_9d

    .line 23
    :cond_90
    instance-of v8, v11, Lc/e/b/k/a;

    if-eqz v8, :cond_9d

    .line 24
    check-cast v11, Lc/e/b/k/a;

    .line 25
    invoke-virtual {v11}, Lc/e/b/k/a;->g1()I

    move-result v8

    if-nez v8, :cond_9d

    const/4 v7, 0x1

    :cond_9d
    :goto_9d
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_a0
    if-eqz v6, :cond_bd

    const/4 v0, 0x0

    :goto_a3
    if-ge v0, v3, :cond_bd

    .line 26
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/e/b/k/e;

    .line 27
    instance-of v11, v6, Lc/e/b/k/g;

    if-eqz v11, :cond_ba

    .line 28
    check-cast v6, Lc/e/b/k/g;

    .line 29
    invoke-virtual {v6}, Lc/e/b/k/g;->b1()I

    move-result v11

    if-ne v11, v10, :cond_ba

    .line 30
    invoke-static {v6, p1, v5}, Lc/e/b/k/m/h;->b(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Z)V

    :cond_ba
    add-int/lit8 v0, v0, 0x1

    goto :goto_a3

    .line 31
    :cond_bd
    invoke-static {p0, p1, v5}, Lc/e/b/k/m/h;->b(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Z)V

    if-eqz v7, :cond_dd

    const/4 v0, 0x0

    :goto_c3
    if-ge v0, v3, :cond_dd

    .line 32
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/e/b/k/e;

    .line 33
    instance-of v7, v6, Lc/e/b/k/a;

    if-eqz v7, :cond_da

    .line 34
    check-cast v6, Lc/e/b/k/a;

    .line 35
    invoke-virtual {v6}, Lc/e/b/k/a;->g1()I

    move-result v7

    if-nez v7, :cond_da

    .line 36
    invoke-static {v6, p1, v4, v5}, Lc/e/b/k/m/h;->c(Lc/e/b/k/a;Lc/e/b/k/m/b$b;IZ)V

    :cond_da
    add-int/lit8 v0, v0, 0x1

    goto :goto_c3

    .line 37
    :cond_dd
    sget-object v0, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    if-ne v1, v0, :cond_e9

    .line 38
    invoke-virtual {p0}, Lc/e/b/k/e;->v()I

    move-result v0

    invoke-virtual {p0, v4, v0}, Lc/e/b/k/e;->s0(II)V

    goto :goto_ec

    .line 39
    :cond_e9
    invoke-virtual {p0, v4}, Lc/e/b/k/e;->r0(I)V

    :goto_ec
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_ef
    if-ge v0, v3, :cond_152

    .line 40
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/e/b/k/e;

    .line 41
    instance-of v11, v7, Lc/e/b/k/g;

    if-eqz v11, :cond_142

    .line 42
    check-cast v7, Lc/e/b/k/g;

    .line 43
    invoke-virtual {v7}, Lc/e/b/k/g;->b1()I

    move-result v11

    if-nez v11, :cond_14f

    .line 44
    invoke-virtual {v7}, Lc/e/b/k/g;->c1()I

    move-result v1

    if-eq v1, v9, :cond_111

    .line 45
    invoke-virtual {v7}, Lc/e/b/k/g;->c1()I

    move-result v1

    invoke-virtual {v7, v1}, Lc/e/b/k/g;->f1(I)V

    goto :goto_140

    .line 46
    :cond_111
    invoke-virtual {v7}, Lc/e/b/k/g;->d1()I

    move-result v1

    if-eq v1, v9, :cond_12a

    invoke-virtual {p0}, Lc/e/b/k/e;->f0()Z

    move-result v1

    if-eqz v1, :cond_12a

    .line 47
    invoke-virtual {p0}, Lc/e/b/k/e;->v()I

    move-result v1

    invoke-virtual {v7}, Lc/e/b/k/g;->d1()I

    move-result v11

    sub-int/2addr v1, v11

    invoke-virtual {v7, v1}, Lc/e/b/k/g;->f1(I)V

    goto :goto_140

    .line 48
    :cond_12a
    invoke-virtual {p0}, Lc/e/b/k/e;->f0()Z

    move-result v1

    if-eqz v1, :cond_140

    .line 49
    invoke-virtual {v7}, Lc/e/b/k/g;->e1()F

    move-result v1

    invoke-virtual {p0}, Lc/e/b/k/e;->v()I

    move-result v11

    int-to-float v11, v11

    mul-float v1, v1, v11

    add-float/2addr v1, v8

    float-to-int v1, v1

    .line 50
    invoke-virtual {v7, v1}, Lc/e/b/k/g;->f1(I)V

    :cond_140
    :goto_140
    const/4 v1, 0x1

    goto :goto_14f

    .line 51
    :cond_142
    instance-of v11, v7, Lc/e/b/k/a;

    if-eqz v11, :cond_14f

    .line 52
    check-cast v7, Lc/e/b/k/a;

    .line 53
    invoke-virtual {v7}, Lc/e/b/k/a;->g1()I

    move-result v7

    if-ne v7, v10, :cond_14f

    const/4 v6, 0x1

    :cond_14f
    :goto_14f
    add-int/lit8 v0, v0, 0x1

    goto :goto_ef

    :cond_152
    if-eqz v1, :cond_16f

    const/4 v0, 0x0

    :goto_155
    if-ge v0, v3, :cond_16f

    .line 54
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/b/k/e;

    .line 55
    instance-of v7, v1, Lc/e/b/k/g;

    if-eqz v7, :cond_16c

    .line 56
    check-cast v1, Lc/e/b/k/g;

    .line 57
    invoke-virtual {v1}, Lc/e/b/k/g;->b1()I

    move-result v7

    if-nez v7, :cond_16c

    .line 58
    invoke-static {v1, p1}, Lc/e/b/k/m/h;->i(Lc/e/b/k/e;Lc/e/b/k/m/b$b;)V

    :cond_16c
    add-int/lit8 v0, v0, 0x1

    goto :goto_155

    .line 59
    :cond_16f
    invoke-static {p0, p1}, Lc/e/b/k/m/h;->i(Lc/e/b/k/e;Lc/e/b/k/m/b$b;)V

    if-eqz v6, :cond_18f

    const/4 p0, 0x0

    :goto_175
    if-ge p0, v3, :cond_18f

    .line 60
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/b/k/e;

    .line 61
    instance-of v1, v0, Lc/e/b/k/a;

    if-eqz v1, :cond_18c

    .line 62
    check-cast v0, Lc/e/b/k/a;

    .line 63
    invoke-virtual {v0}, Lc/e/b/k/a;->g1()I

    move-result v1

    if-ne v1, v10, :cond_18c

    .line 64
    invoke-static {v0, p1, v10, v5}, Lc/e/b/k/m/h;->c(Lc/e/b/k/a;Lc/e/b/k/m/b$b;IZ)V

    :cond_18c
    add-int/lit8 p0, p0, 0x1

    goto :goto_175

    :cond_18f
    :goto_18f
    if-ge v4, v3, :cond_1b3

    .line 65
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/e/b/k/e;

    .line 66
    invoke-virtual {p0}, Lc/e/b/k/e;->d0()Z

    move-result v0

    if-eqz v0, :cond_1b0

    invoke-static {p0}, Lc/e/b/k/m/h;->a(Lc/e/b/k/e;)Z

    move-result v0

    if-eqz v0, :cond_1b0

    .line 67
    sget-object v0, Lc/e/b/k/m/h;->a:Lc/e/b/k/m/b$a;

    sget v1, Lc/e/b/k/m/b$a;->k:I

    invoke-static {p0, p1, v0, v1}, Lc/e/b/k/f;->A1(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Lc/e/b/k/m/b$a;I)Z

    .line 68
    invoke-static {p0, p1, v5}, Lc/e/b/k/m/h;->b(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Z)V

    .line 69
    invoke-static {p0, p1}, Lc/e/b/k/m/h;->i(Lc/e/b/k/e;Lc/e/b/k/m/b$b;)V

    :cond_1b0
    add-int/lit8 v4, v4, 0x1

    goto :goto_18f

    :cond_1b3
    return-void
.end method

.method private static i(Lc/e/b/k/e;Lc/e/b/k/m/b$b;)V
    .registers 15

    .line 1
    instance-of v0, p0, Lc/e/b/k/f;

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lc/e/b/k/e;->d0()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p0}, Lc/e/b/k/m/h;->a(Lc/e/b/k/e;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2
    new-instance v0, Lc/e/b/k/m/b$a;

    invoke-direct {v0}, Lc/e/b/k/m/b$a;-><init>()V

    .line 3
    sget v1, Lc/e/b/k/m/b$a;->k:I

    invoke-static {p0, p1, v0, v1}, Lc/e/b/k/f;->A1(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Lc/e/b/k/m/b$a;I)Z

    .line 4
    :cond_1a
    sget-object v0, Lc/e/b/k/d$b;->d:Lc/e/b/k/d$b;

    invoke-virtual {p0, v0}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v0

    .line 5
    sget-object v1, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;

    invoke-virtual {p0, v1}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lc/e/b/k/d;->d()I

    move-result v2

    .line 7
    invoke-virtual {v1}, Lc/e/b/k/d;->d()I

    move-result v3

    .line 8
    invoke-virtual {v0}, Lc/e/b/k/d;->c()Ljava/util/HashSet;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_129

    invoke-virtual {v0}, Lc/e/b/k/d;->m()Z

    move-result v4

    if-eqz v4, :cond_129

    .line 9
    invoke-virtual {v0}, Lc/e/b/k/d;->c()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_47
    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_129

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/e/b/k/d;

    .line 10
    iget-object v9, v4, Lc/e/b/k/d;->d:Lc/e/b/k/e;

    .line 11
    invoke-static {v9}, Lc/e/b/k/m/h;->a(Lc/e/b/k/e;)Z

    move-result v10

    .line 12
    invoke-virtual {v9}, Lc/e/b/k/e;->d0()Z

    move-result v11

    if-eqz v11, :cond_6b

    if-eqz v10, :cond_6b

    .line 13
    new-instance v11, Lc/e/b/k/m/b$a;

    invoke-direct {v11}, Lc/e/b/k/m/b$a;-><init>()V

    .line 14
    sget v12, Lc/e/b/k/m/b$a;->k:I

    invoke-static {v9, p1, v11, v12}, Lc/e/b/k/f;->A1(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Lc/e/b/k/m/b$a;I)Z

    .line 15
    :cond_6b
    invoke-virtual {v9}, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;

    move-result-object v11

    sget-object v12, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v11, v12, :cond_d4

    if-eqz v10, :cond_76

    goto :goto_d4

    .line 16
    :cond_76
    invoke-virtual {v9}, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;

    move-result-object v10

    sget-object v11, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v10, v11, :cond_47

    iget v10, v9, Lc/e/b/k/e;->u:I

    if-ltz v10, :cond_47

    iget v10, v9, Lc/e/b/k/e;->t:I

    if-ltz v10, :cond_47

    .line 17
    invoke-virtual {v9}, Lc/e/b/k/e;->Q()I

    move-result v10

    if-eq v10, v6, :cond_98

    iget v10, v9, Lc/e/b/k/e;->o:I

    if-nez v10, :cond_47

    invoke-virtual {v9}, Lc/e/b/k/e;->t()F

    move-result v10

    cmpl-float v10, v10, v5

    if-nez v10, :cond_47

    .line 18
    :cond_98
    invoke-virtual {v9}, Lc/e/b/k/e;->b0()Z

    move-result v10

    if-nez v10, :cond_47

    invoke-virtual {v9}, Lc/e/b/k/e;->c0()Z

    move-result v10

    if-nez v10, :cond_47

    .line 19
    iget-object v10, v9, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    if-ne v4, v10, :cond_b4

    iget-object v10, v9, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    iget-object v10, v10, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v10, :cond_b4

    invoke-virtual {v10}, Lc/e/b/k/d;->m()Z

    move-result v10

    if-nez v10, :cond_c4

    :cond_b4
    iget-object v10, v9, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    if-ne v4, v10, :cond_c6

    iget-object v4, v9, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    iget-object v4, v4, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v4, :cond_c6

    .line 20
    invoke-virtual {v4}, Lc/e/b/k/d;->m()Z

    move-result v4

    if-eqz v4, :cond_c6

    :cond_c4
    const/4 v4, 0x1

    goto :goto_c7

    :cond_c6
    const/4 v4, 0x0

    :goto_c7
    if-eqz v4, :cond_47

    .line 21
    invoke-virtual {v9}, Lc/e/b/k/e;->b0()Z

    move-result v4

    if-nez v4, :cond_47

    .line 22
    invoke-static {p0, p1, v9}, Lc/e/b/k/m/h;->g(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Lc/e/b/k/e;)V

    goto/16 :goto_47

    .line 23
    :cond_d4
    :goto_d4
    invoke-virtual {v9}, Lc/e/b/k/e;->d0()Z

    move-result v10

    if-eqz v10, :cond_dc

    goto/16 :goto_47

    .line 24
    :cond_dc
    iget-object v10, v9, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    if-ne v4, v10, :cond_f8

    iget-object v11, v9, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    iget-object v11, v11, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-nez v11, :cond_f8

    .line 25
    invoke-virtual {v10}, Lc/e/b/k/d;->e()I

    move-result v4

    add-int/2addr v4, v2

    .line 26
    invoke-virtual {v9}, Lc/e/b/k/e;->v()I

    move-result v10

    add-int/2addr v10, v4

    .line 27
    invoke-virtual {v9, v4, v10}, Lc/e/b/k/e;->s0(II)V

    .line 28
    invoke-static {v9, p1}, Lc/e/b/k/m/h;->i(Lc/e/b/k/e;Lc/e/b/k/m/b$b;)V

    goto/16 :goto_47

    .line 29
    :cond_f8
    iget-object v10, v9, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    if-ne v4, v10, :cond_114

    iget-object v11, v10, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-nez v11, :cond_114

    .line 30
    invoke-virtual {v10}, Lc/e/b/k/d;->e()I

    move-result v4

    sub-int v4, v2, v4

    .line 31
    invoke-virtual {v9}, Lc/e/b/k/e;->v()I

    move-result v10

    sub-int v10, v4, v10

    .line 32
    invoke-virtual {v9, v10, v4}, Lc/e/b/k/e;->s0(II)V

    .line 33
    invoke-static {v9, p1}, Lc/e/b/k/m/h;->i(Lc/e/b/k/e;Lc/e/b/k/m/b$b;)V

    goto/16 :goto_47

    .line 34
    :cond_114
    iget-object v10, v9, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    if-ne v4, v10, :cond_47

    iget-object v4, v9, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    iget-object v4, v4, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v4, :cond_47

    .line 35
    invoke-virtual {v4}, Lc/e/b/k/d;->m()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 36
    invoke-static {p1, v9}, Lc/e/b/k/m/h;->f(Lc/e/b/k/m/b$b;Lc/e/b/k/e;)V

    goto/16 :goto_47

    .line 37
    :cond_129
    instance-of v0, p0, Lc/e/b/k/g;

    if-eqz v0, :cond_12e

    return-void

    .line 38
    :cond_12e
    invoke-virtual {v1}, Lc/e/b/k/d;->c()Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_21e

    invoke-virtual {v1}, Lc/e/b/k/d;->m()Z

    move-result v0

    if-eqz v0, :cond_21e

    .line 39
    invoke-virtual {v1}, Lc/e/b/k/d;->c()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_142
    :goto_142
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/b/k/d;

    .line 40
    iget-object v2, v1, Lc/e/b/k/d;->d:Lc/e/b/k/e;

    .line 41
    invoke-static {v2}, Lc/e/b/k/m/h;->a(Lc/e/b/k/e;)Z

    move-result v4

    .line 42
    invoke-virtual {v2}, Lc/e/b/k/e;->d0()Z

    move-result v9

    if-eqz v9, :cond_166

    if-eqz v4, :cond_166

    .line 43
    new-instance v9, Lc/e/b/k/m/b$a;

    invoke-direct {v9}, Lc/e/b/k/m/b$a;-><init>()V

    .line 44
    sget v10, Lc/e/b/k/m/b$a;->k:I

    invoke-static {v2, p1, v9, v10}, Lc/e/b/k/f;->A1(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Lc/e/b/k/m/b$a;I)Z

    .line 45
    :cond_166
    iget-object v9, v2, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    if-ne v1, v9, :cond_176

    iget-object v9, v2, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    iget-object v9, v9, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v9, :cond_176

    invoke-virtual {v9}, Lc/e/b/k/d;->m()Z

    move-result v9

    if-nez v9, :cond_186

    :cond_176
    iget-object v9, v2, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    if-ne v1, v9, :cond_188

    iget-object v9, v2, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    iget-object v9, v9, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v9, :cond_188

    .line 46
    invoke-virtual {v9}, Lc/e/b/k/d;->m()Z

    move-result v9

    if-eqz v9, :cond_188

    :cond_186
    const/4 v9, 0x1

    goto :goto_189

    :cond_188
    const/4 v9, 0x0

    .line 47
    :goto_189
    invoke-virtual {v2}, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;

    move-result-object v10

    sget-object v11, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v10, v11, :cond_1cf

    if-eqz v4, :cond_194

    goto :goto_1cf

    .line 48
    :cond_194
    invoke-virtual {v2}, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;

    move-result-object v1

    sget-object v4, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v1, v4, :cond_142

    iget v1, v2, Lc/e/b/k/e;->u:I

    if-ltz v1, :cond_142

    iget v1, v2, Lc/e/b/k/e;->t:I

    if-ltz v1, :cond_142

    .line 49
    invoke-virtual {v2}, Lc/e/b/k/e;->Q()I

    move-result v1

    if-eq v1, v6, :cond_1b6

    iget v1, v2, Lc/e/b/k/e;->o:I

    if-nez v1, :cond_142

    invoke-virtual {v2}, Lc/e/b/k/e;->t()F

    move-result v1

    cmpl-float v1, v1, v5

    if-nez v1, :cond_142

    .line 50
    :cond_1b6
    invoke-virtual {v2}, Lc/e/b/k/e;->b0()Z

    move-result v1

    if-nez v1, :cond_142

    invoke-virtual {v2}, Lc/e/b/k/e;->c0()Z

    move-result v1

    if-nez v1, :cond_142

    if-eqz v9, :cond_142

    .line 51
    invoke-virtual {v2}, Lc/e/b/k/e;->b0()Z

    move-result v1

    if-nez v1, :cond_142

    .line 52
    invoke-static {p0, p1, v2}, Lc/e/b/k/m/h;->g(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Lc/e/b/k/e;)V

    goto/16 :goto_142

    .line 53
    :cond_1cf
    :goto_1cf
    invoke-virtual {v2}, Lc/e/b/k/e;->d0()Z

    move-result v4

    if-eqz v4, :cond_1d7

    goto/16 :goto_142

    .line 54
    :cond_1d7
    iget-object v4, v2, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    if-ne v1, v4, :cond_1f3

    iget-object v10, v2, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    iget-object v10, v10, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-nez v10, :cond_1f3

    .line 55
    invoke-virtual {v4}, Lc/e/b/k/d;->e()I

    move-result v1

    add-int/2addr v1, v3

    .line 56
    invoke-virtual {v2}, Lc/e/b/k/e;->v()I

    move-result v4

    add-int/2addr v4, v1

    .line 57
    invoke-virtual {v2, v1, v4}, Lc/e/b/k/e;->s0(II)V

    .line 58
    invoke-static {v2, p1}, Lc/e/b/k/m/h;->i(Lc/e/b/k/e;Lc/e/b/k/m/b$b;)V

    goto/16 :goto_142

    .line 59
    :cond_1f3
    iget-object v4, v2, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    if-ne v1, v4, :cond_211

    iget-object v1, v2, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-nez v1, :cond_211

    .line 60
    invoke-virtual {v4}, Lc/e/b/k/d;->e()I

    move-result v1

    sub-int v1, v3, v1

    .line 61
    invoke-virtual {v2}, Lc/e/b/k/e;->v()I

    move-result v4

    sub-int v4, v1, v4

    .line 62
    invoke-virtual {v2, v4, v1}, Lc/e/b/k/e;->s0(II)V

    .line 63
    invoke-static {v2, p1}, Lc/e/b/k/m/h;->i(Lc/e/b/k/e;Lc/e/b/k/m/b$b;)V

    goto/16 :goto_142

    :cond_211
    if-eqz v9, :cond_142

    .line 64
    invoke-virtual {v2}, Lc/e/b/k/e;->b0()Z

    move-result v1

    if-nez v1, :cond_142

    .line 65
    invoke-static {p1, v2}, Lc/e/b/k/m/h;->f(Lc/e/b/k/m/b$b;Lc/e/b/k/e;)V

    goto/16 :goto_142

    .line 66
    :cond_21e
    sget-object v0, Lc/e/b/k/d$b;->g:Lc/e/b/k/d$b;

    invoke-virtual {p0, v0}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object p0

    .line 67
    invoke-virtual {p0}, Lc/e/b/k/d;->c()Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_27c

    invoke-virtual {p0}, Lc/e/b/k/d;->m()Z

    move-result v0

    if-eqz v0, :cond_27c

    .line 68
    invoke-virtual {p0}, Lc/e/b/k/d;->d()I

    move-result v0

    .line 69
    invoke-virtual {p0}, Lc/e/b/k/d;->c()Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_23c
    :goto_23c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/b/k/d;

    .line 70
    iget-object v2, v1, Lc/e/b/k/d;->d:Lc/e/b/k/e;

    .line 71
    invoke-static {v2}, Lc/e/b/k/m/h;->a(Lc/e/b/k/e;)Z

    move-result v3

    .line 72
    invoke-virtual {v2}, Lc/e/b/k/e;->d0()Z

    move-result v4

    if-eqz v4, :cond_260

    if-eqz v3, :cond_260

    .line 73
    new-instance v4, Lc/e/b/k/m/b$a;

    invoke-direct {v4}, Lc/e/b/k/m/b$a;-><init>()V

    .line 74
    sget v5, Lc/e/b/k/m/b$a;->k:I

    invoke-static {v2, p1, v4, v5}, Lc/e/b/k/f;->A1(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Lc/e/b/k/m/b$a;I)Z

    .line 75
    :cond_260
    invoke-virtual {v2}, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;

    move-result-object v4

    sget-object v5, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v4, v5, :cond_26a

    if-eqz v3, :cond_23c

    .line 76
    :cond_26a
    invoke-virtual {v2}, Lc/e/b/k/e;->d0()Z

    move-result v3

    if-eqz v3, :cond_271

    goto :goto_23c

    .line 77
    :cond_271
    iget-object v3, v2, Lc/e/b/k/e;->J:Lc/e/b/k/d;

    if-ne v1, v3, :cond_23c

    .line 78
    invoke-virtual {v2, v0}, Lc/e/b/k/e;->o0(I)V

    .line 79
    :try_start_278
    invoke-static {v2, p1}, Lc/e/b/k/m/h;->i(Lc/e/b/k/e;Lc/e/b/k/m/b$b;)V
    :try_end_27b
    .catchall {:try_start_278 .. :try_end_27b} :catchall_27d

    goto :goto_23c

    :cond_27c
    return-void

    :catchall_27d
    move-exception p0

    goto :goto_280

    :goto_27f
    throw p0

    :goto_280
    goto :goto_27f
.end method
