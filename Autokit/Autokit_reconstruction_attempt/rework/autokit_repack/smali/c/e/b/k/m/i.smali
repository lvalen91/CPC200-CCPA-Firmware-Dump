.class public Lc/e/b/k/m/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lc/e/b/k/e;ILjava/util/ArrayList;Lc/e/b/k/m/o;)Lc/e/b/k/m/o;
    .registers 10
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

    if-nez p1, :cond_5

    .line 1
    iget v0, p0, Lc/e/b/k/e;->m0:I

    goto :goto_7

    .line 2
    :cond_5
    iget v0, p0, Lc/e/b/k/e;->n0:I

    :goto_7
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_31

    if-eqz p3, :cond_11

    .line 3
    iget v3, p3, Lc/e/b/k/m/o;->b:I

    if-eq v0, v3, :cond_31

    :cond_11
    const/4 v3, 0x0

    .line 4
    :goto_12
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_34

    .line 5
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/e/b/k/m/o;

    .line 6
    invoke-virtual {v4}, Lc/e/b/k/m/o;->c()I

    move-result v5

    if-ne v5, v0, :cond_2e

    if-eqz p3, :cond_2c

    .line 7
    invoke-virtual {p3, p1, v4}, Lc/e/b/k/m/o;->g(ILc/e/b/k/m/o;)V

    .line 8
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2c
    move-object p3, v4

    goto :goto_34

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_31
    if-eq v0, v2, :cond_34

    return-object p3

    :cond_34
    :goto_34
    if-nez p3, :cond_65

    .line 9
    instance-of v0, p0, Lc/e/b/k/i;

    if-eqz v0, :cond_5b

    .line 10
    move-object v0, p0

    check-cast v0, Lc/e/b/k/i;

    .line 11
    invoke-virtual {v0, p1}, Lc/e/b/k/i;->b1(I)I

    move-result v0

    if-eq v0, v2, :cond_5b

    const/4 v2, 0x0

    .line 12
    :goto_44
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5b

    .line 13
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/e/b/k/m/o;

    .line 14
    invoke-virtual {v3}, Lc/e/b/k/m/o;->c()I

    move-result v4

    if-ne v4, v0, :cond_58

    move-object p3, v3

    goto :goto_5b

    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    :cond_5b
    :goto_5b
    if-nez p3, :cond_62

    .line 15
    new-instance p3, Lc/e/b/k/m/o;

    invoke-direct {p3, p1}, Lc/e/b/k/m/o;-><init>(I)V

    .line 16
    :cond_62
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_65
    invoke-virtual {p3, p0}, Lc/e/b/k/m/o;->a(Lc/e/b/k/e;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 18
    instance-of v0, p0, Lc/e/b/k/g;

    if-eqz v0, :cond_80

    .line 19
    move-object v0, p0

    check-cast v0, Lc/e/b/k/g;

    .line 20
    invoke-virtual {v0}, Lc/e/b/k/g;->a1()Lc/e/b/k/d;

    move-result-object v2

    invoke-virtual {v0}, Lc/e/b/k/g;->b1()I

    move-result v0

    if-nez v0, :cond_7d

    const/4 v1, 0x1

    :cond_7d
    invoke-virtual {v2, v1, p2, p3}, Lc/e/b/k/d;->b(ILjava/util/ArrayList;Lc/e/b/k/m/o;)V

    :cond_80
    if-nez p1, :cond_93

    .line 21
    invoke-virtual {p3}, Lc/e/b/k/m/o;->c()I

    move-result v0

    iput v0, p0, Lc/e/b/k/e;->m0:I

    .line 22
    iget-object v0, p0, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    invoke-virtual {v0, p1, p2, p3}, Lc/e/b/k/d;->b(ILjava/util/ArrayList;Lc/e/b/k/m/o;)V

    .line 23
    iget-object v0, p0, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    invoke-virtual {v0, p1, p2, p3}, Lc/e/b/k/d;->b(ILjava/util/ArrayList;Lc/e/b/k/m/o;)V

    goto :goto_a8

    .line 24
    :cond_93
    invoke-virtual {p3}, Lc/e/b/k/m/o;->c()I

    move-result v0

    iput v0, p0, Lc/e/b/k/e;->n0:I

    .line 25
    iget-object v0, p0, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    invoke-virtual {v0, p1, p2, p3}, Lc/e/b/k/d;->b(ILjava/util/ArrayList;Lc/e/b/k/m/o;)V

    .line 26
    iget-object v0, p0, Lc/e/b/k/e;->J:Lc/e/b/k/d;

    invoke-virtual {v0, p1, p2, p3}, Lc/e/b/k/d;->b(ILjava/util/ArrayList;Lc/e/b/k/m/o;)V

    .line 27
    iget-object v0, p0, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    invoke-virtual {v0, p1, p2, p3}, Lc/e/b/k/d;->b(ILjava/util/ArrayList;Lc/e/b/k/m/o;)V

    .line 28
    :goto_a8
    iget-object p0, p0, Lc/e/b/k/e;->M:Lc/e/b/k/d;

    invoke-virtual {p0, p1, p2, p3}, Lc/e/b/k/d;->b(ILjava/util/ArrayList;Lc/e/b/k/m/o;)V

    :cond_ad
    return-object p3
.end method

.method private static b(Ljava/util/ArrayList;I)Lc/e/b/k/m/o;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lc/e/b/k/m/o;",
            ">;I)",
            "Lc/e/b/k/m/o;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_15

    .line 2
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/b/k/m/o;

    .line 3
    iget v3, v2, Lc/e/b/k/m/o;->b:I

    if-ne p1, v3, :cond_12

    return-object v2

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Lc/e/b/k/f;Lc/e/b/k/m/b$b;)Z
    .registers 18

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/l;->a1()Ljava/util/ArrayList;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v2, :cond_2e

    .line 3
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/e/b/k/e;

    .line 4
    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;

    move-result-object v7

    .line 5
    invoke-virtual {v5}, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;

    move-result-object v8

    invoke-virtual {v5}, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;

    move-result-object v5

    .line 6
    invoke-static {v6, v7, v8, v5}, Lc/e/b/k/m/i;->d(Lc/e/b/k/e$b;Lc/e/b/k/e$b;Lc/e/b/k/e$b;Lc/e/b/k/e$b;)Z

    move-result v5

    if-nez v5, :cond_2b

    return v3

    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 7
    :cond_2e
    iget-object v4, v0, Lc/e/b/k/f;->u0:Lc/e/b/e;

    if-eqz v4, :cond_39

    .line 8
    iget-wide v5, v4, Lc/e/b/e;->A:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Lc/e/b/e;->A:J

    :cond_39
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_40
    const/4 v12, 0x1

    if-ge v5, v2, :cond_119

    .line 9
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lc/e/b/k/e;

    .line 10
    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;

    move-result-object v15

    .line 11
    invoke-virtual {v13}, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;

    move-result-object v3

    invoke-virtual {v13}, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;

    move-result-object v4

    .line 12
    invoke-static {v14, v15, v3, v4}, Lc/e/b/k/m/i;->d(Lc/e/b/k/e$b;Lc/e/b/k/e$b;Lc/e/b/k/e$b;Lc/e/b/k/e$b;)Z

    move-result v3

    if-nez v3, :cond_69

    .line 13
    iget-object v3, v0, Lc/e/b/k/f;->J0:Lc/e/b/k/m/b$a;

    sget v4, Lc/e/b/k/m/b$a;->k:I

    move-object/from16 v14, p1

    invoke-static {v13, v14, v3, v4}, Lc/e/b/k/f;->A1(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Lc/e/b/k/m/b$a;I)Z

    goto :goto_6b

    :cond_69
    move-object/from16 v14, p1

    .line 14
    :goto_6b
    instance-of v3, v13, Lc/e/b/k/g;

    if-eqz v3, :cond_92

    .line 15
    move-object v4, v13

    check-cast v4, Lc/e/b/k/g;

    .line 16
    invoke-virtual {v4}, Lc/e/b/k/g;->b1()I

    move-result v15

    if-nez v15, :cond_82

    if-nez v8, :cond_7f

    .line 17
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 18
    :cond_7f
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_82
    invoke-virtual {v4}, Lc/e/b/k/g;->b1()I

    move-result v15

    if-ne v15, v12, :cond_92

    if-nez v6, :cond_8f

    .line 20
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 21
    :cond_8f
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_92
    instance-of v4, v13, Lc/e/b/k/i;

    if-eqz v4, :cond_d5

    .line 23
    instance-of v4, v13, Lc/e/b/k/a;

    if-eqz v4, :cond_be

    .line 24
    move-object v4, v13

    check-cast v4, Lc/e/b/k/a;

    .line 25
    invoke-virtual {v4}, Lc/e/b/k/a;->g1()I

    move-result v15

    if-nez v15, :cond_ad

    if-nez v7, :cond_aa

    .line 26
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 27
    :cond_aa
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_ad
    invoke-virtual {v4}, Lc/e/b/k/a;->g1()I

    move-result v15

    if-ne v15, v12, :cond_d5

    if-nez v9, :cond_ba

    .line 29
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 30
    :cond_ba
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d5

    .line 31
    :cond_be
    move-object v4, v13

    check-cast v4, Lc/e/b/k/i;

    if-nez v7, :cond_c8

    .line 32
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 33
    :cond_c8
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v9, :cond_d2

    .line 34
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 35
    :cond_d2
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_d5
    :goto_d5
    iget-object v4, v13, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    iget-object v4, v4, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-nez v4, :cond_f1

    iget-object v4, v13, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    iget-object v4, v4, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-nez v4, :cond_f1

    if-nez v3, :cond_f1

    instance-of v4, v13, Lc/e/b/k/a;

    if-nez v4, :cond_f1

    if-nez v10, :cond_ee

    .line 37
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 38
    :cond_ee
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_f1
    iget-object v4, v13, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    iget-object v4, v4, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-nez v4, :cond_114

    iget-object v4, v13, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    iget-object v4, v4, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-nez v4, :cond_114

    iget-object v4, v13, Lc/e/b/k/e;->J:Lc/e/b/k/d;

    iget-object v4, v4, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-nez v4, :cond_114

    if-nez v3, :cond_114

    instance-of v3, v13, Lc/e/b/k/a;

    if-nez v3, :cond_114

    if-nez v11, :cond_111

    .line 40
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v3

    .line 41
    :cond_111
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_114
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    goto/16 :goto_40

    .line 42
    :cond_119
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_136

    .line 43
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_124
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_136

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/e/b/k/g;

    const/4 v6, 0x0

    const/4 v13, 0x0

    .line 44
    invoke-static {v5, v6, v3, v13}, Lc/e/b/k/m/i;->a(Lc/e/b/k/e;ILjava/util/ArrayList;Lc/e/b/k/m/o;)Lc/e/b/k/m/o;

    goto :goto_124

    :cond_136
    const/4 v6, 0x0

    const/4 v13, 0x0

    if-eqz v7, :cond_157

    .line 45
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_157

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/e/b/k/i;

    .line 46
    invoke-static {v5, v6, v3, v13}, Lc/e/b/k/m/i;->a(Lc/e/b/k/e;ILjava/util/ArrayList;Lc/e/b/k/m/o;)Lc/e/b/k/m/o;

    move-result-object v7

    .line 47
    invoke-virtual {v5, v3, v6, v7}, Lc/e/b/k/i;->a1(Ljava/util/ArrayList;ILc/e/b/k/m/o;)V

    .line 48
    invoke-virtual {v7, v3}, Lc/e/b/k/m/o;->b(Ljava/util/ArrayList;)V

    const/4 v6, 0x0

    const/4 v13, 0x0

    goto :goto_13e

    .line 49
    :cond_157
    sget-object v4, Lc/e/b/k/d$b;->c:Lc/e/b/k/d$b;

    invoke-virtual {v0, v4}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v4

    .line 50
    invoke-virtual {v4}, Lc/e/b/k/d;->c()Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_17f

    .line 51
    invoke-virtual {v4}, Lc/e/b/k/d;->c()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_16b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/e/b/k/d;

    .line 52
    iget-object v5, v5, Lc/e/b/k/d;->d:Lc/e/b/k/e;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v3, v7}, Lc/e/b/k/m/i;->a(Lc/e/b/k/e;ILjava/util/ArrayList;Lc/e/b/k/m/o;)Lc/e/b/k/m/o;

    goto :goto_16b

    .line 53
    :cond_17f
    sget-object v4, Lc/e/b/k/d$b;->e:Lc/e/b/k/d$b;

    invoke-virtual {v0, v4}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v4

    .line 54
    invoke-virtual {v4}, Lc/e/b/k/d;->c()Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_1a7

    .line 55
    invoke-virtual {v4}, Lc/e/b/k/d;->c()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_193
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/e/b/k/d;

    .line 56
    iget-object v5, v5, Lc/e/b/k/d;->d:Lc/e/b/k/e;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v3, v7}, Lc/e/b/k/m/i;->a(Lc/e/b/k/e;ILjava/util/ArrayList;Lc/e/b/k/m/o;)Lc/e/b/k/m/o;

    goto :goto_193

    .line 57
    :cond_1a7
    sget-object v4, Lc/e/b/k/d$b;->h:Lc/e/b/k/d$b;

    invoke-virtual {v0, v4}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v4

    .line 58
    invoke-virtual {v4}, Lc/e/b/k/d;->c()Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_1cf

    .line 59
    invoke-virtual {v4}, Lc/e/b/k/d;->c()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1bb
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1cf

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/e/b/k/d;

    .line 60
    iget-object v5, v5, Lc/e/b/k/d;->d:Lc/e/b/k/e;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v3, v7}, Lc/e/b/k/m/i;->a(Lc/e/b/k/e;ILjava/util/ArrayList;Lc/e/b/k/m/o;)Lc/e/b/k/m/o;

    goto :goto_1bb

    :cond_1cf
    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v10, :cond_1e7

    .line 61
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/e/b/k/e;

    .line 62
    invoke-static {v5, v6, v3, v7}, Lc/e/b/k/m/i;->a(Lc/e/b/k/e;ILjava/util/ArrayList;Lc/e/b/k/m/o;)Lc/e/b/k/m/o;

    goto :goto_1d7

    :cond_1e7
    if-eqz v8, :cond_1fd

    .line 63
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1ed
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1fd

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/e/b/k/g;

    .line 64
    invoke-static {v5, v12, v3, v7}, Lc/e/b/k/m/i;->a(Lc/e/b/k/e;ILjava/util/ArrayList;Lc/e/b/k/m/o;)Lc/e/b/k/m/o;

    goto :goto_1ed

    :cond_1fd
    if-eqz v9, :cond_21b

    .line 65
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_203
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/e/b/k/i;

    .line 66
    invoke-static {v5, v12, v3, v7}, Lc/e/b/k/m/i;->a(Lc/e/b/k/e;ILjava/util/ArrayList;Lc/e/b/k/m/o;)Lc/e/b/k/m/o;

    move-result-object v6

    .line 67
    invoke-virtual {v5, v3, v12, v6}, Lc/e/b/k/i;->a1(Ljava/util/ArrayList;ILc/e/b/k/m/o;)V

    .line 68
    invoke-virtual {v6, v3}, Lc/e/b/k/m/o;->b(Ljava/util/ArrayList;)V

    const/4 v7, 0x0

    goto :goto_203

    .line 69
    :cond_21b
    sget-object v4, Lc/e/b/k/d$b;->d:Lc/e/b/k/d$b;

    invoke-virtual {v0, v4}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v4

    .line 70
    invoke-virtual {v4}, Lc/e/b/k/d;->c()Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_242

    .line 71
    invoke-virtual {v4}, Lc/e/b/k/d;->c()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_22f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_242

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/e/b/k/d;

    .line 72
    iget-object v5, v5, Lc/e/b/k/d;->d:Lc/e/b/k/e;

    const/4 v6, 0x0

    invoke-static {v5, v12, v3, v6}, Lc/e/b/k/m/i;->a(Lc/e/b/k/e;ILjava/util/ArrayList;Lc/e/b/k/m/o;)Lc/e/b/k/m/o;

    goto :goto_22f

    .line 73
    :cond_242
    sget-object v4, Lc/e/b/k/d$b;->g:Lc/e/b/k/d$b;

    invoke-virtual {v0, v4}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v4

    .line 74
    invoke-virtual {v4}, Lc/e/b/k/d;->c()Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_269

    .line 75
    invoke-virtual {v4}, Lc/e/b/k/d;->c()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_256
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_269

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/e/b/k/d;

    .line 76
    iget-object v5, v5, Lc/e/b/k/d;->d:Lc/e/b/k/e;

    const/4 v6, 0x0

    invoke-static {v5, v12, v3, v6}, Lc/e/b/k/m/i;->a(Lc/e/b/k/e;ILjava/util/ArrayList;Lc/e/b/k/m/o;)Lc/e/b/k/m/o;

    goto :goto_256

    .line 77
    :cond_269
    sget-object v4, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;

    invoke-virtual {v0, v4}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v4

    .line 78
    invoke-virtual {v4}, Lc/e/b/k/d;->c()Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_290

    .line 79
    invoke-virtual {v4}, Lc/e/b/k/d;->c()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_27d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_290

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/e/b/k/d;

    .line 80
    iget-object v5, v5, Lc/e/b/k/d;->d:Lc/e/b/k/e;

    const/4 v6, 0x0

    invoke-static {v5, v12, v3, v6}, Lc/e/b/k/m/i;->a(Lc/e/b/k/e;ILjava/util/ArrayList;Lc/e/b/k/m/o;)Lc/e/b/k/m/o;

    goto :goto_27d

    .line 81
    :cond_290
    sget-object v4, Lc/e/b/k/d$b;->h:Lc/e/b/k/d$b;

    invoke-virtual {v0, v4}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v4

    .line 82
    invoke-virtual {v4}, Lc/e/b/k/d;->c()Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_2b7

    .line 83
    invoke-virtual {v4}, Lc/e/b/k/d;->c()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2a4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/e/b/k/d;

    .line 84
    iget-object v5, v5, Lc/e/b/k/d;->d:Lc/e/b/k/e;

    const/4 v13, 0x0

    invoke-static {v5, v12, v3, v13}, Lc/e/b/k/m/i;->a(Lc/e/b/k/e;ILjava/util/ArrayList;Lc/e/b/k/m/o;)Lc/e/b/k/m/o;

    goto :goto_2a4

    :cond_2b7
    const/4 v13, 0x0

    if-eqz v11, :cond_2ce

    .line 85
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2be
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2ce

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/e/b/k/e;

    .line 86
    invoke-static {v5, v12, v3, v13}, Lc/e/b/k/m/i;->a(Lc/e/b/k/e;ILjava/util/ArrayList;Lc/e/b/k/m/o;)Lc/e/b/k/m/o;

    goto :goto_2be

    :cond_2ce
    const/4 v4, 0x0

    :goto_2cf
    if-ge v4, v2, :cond_2fb

    .line 87
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/e/b/k/e;

    .line 88
    invoke-virtual {v5}, Lc/e/b/k/e;->g0()Z

    move-result v6

    if-eqz v6, :cond_2f8

    .line 89
    iget v6, v5, Lc/e/b/k/e;->m0:I

    invoke-static {v3, v6}, Lc/e/b/k/m/i;->b(Ljava/util/ArrayList;I)Lc/e/b/k/m/o;

    move-result-object v6

    .line 90
    iget v5, v5, Lc/e/b/k/e;->n0:I

    invoke-static {v3, v5}, Lc/e/b/k/m/i;->b(Ljava/util/ArrayList;I)Lc/e/b/k/m/o;

    move-result-object v5

    if-eqz v6, :cond_2f8

    if-eqz v5, :cond_2f8

    const/4 v7, 0x0

    .line 91
    invoke-virtual {v6, v7, v5}, Lc/e/b/k/m/o;->g(ILc/e/b/k/m/o;)V

    const/4 v7, 0x2

    .line 92
    invoke-virtual {v5, v7}, Lc/e/b/k/m/o;->i(I)V

    .line 93
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2f8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2cf

    .line 94
    :cond_2fb
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v12, :cond_303

    const/4 v1, 0x0

    return v1

    .line 95
    :cond_303
    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;

    move-result-object v1

    sget-object v2, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-ne v1, v2, :cond_343

    .line 96
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v13

    const/4 v6, 0x0

    :cond_311
    :goto_311
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_335

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/e/b/k/m/o;

    .line 97
    invoke-virtual {v4}, Lc/e/b/k/m/o;->d()I

    move-result v5

    if-ne v5, v12, :cond_324

    goto :goto_311

    :cond_324
    const/4 v5, 0x0

    .line 98
    invoke-virtual {v4, v5}, Lc/e/b/k/m/o;->h(Z)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/f;->t1()Lc/e/b/d;

    move-result-object v7

    invoke-virtual {v4, v7, v5}, Lc/e/b/k/m/o;->f(Lc/e/b/d;I)I

    move-result v7

    if-le v7, v6, :cond_311

    move-object v2, v4

    move v6, v7

    goto :goto_311

    :cond_335
    if-eqz v2, :cond_343

    .line 100
    sget-object v1, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    invoke-virtual {v0, v1}, Lc/e/b/k/e;->z0(Lc/e/b/k/e$b;)V

    .line 101
    invoke-virtual {v0, v6}, Lc/e/b/k/e;->U0(I)V

    .line 102
    invoke-virtual {v2, v12}, Lc/e/b/k/m/o;->h(Z)V

    goto :goto_344

    :cond_343
    move-object v2, v13

    .line 103
    :goto_344
    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;

    move-result-object v1

    sget-object v4, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-ne v1, v4, :cond_386

    .line 104
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v3, v13

    const/4 v6, 0x0

    :cond_352
    :goto_352
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_376

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/e/b/k/m/o;

    .line 105
    invoke-virtual {v4}, Lc/e/b/k/m/o;->d()I

    move-result v5

    if-nez v5, :cond_365

    goto :goto_352

    :cond_365
    const/4 v5, 0x0

    .line 106
    invoke-virtual {v4, v5}, Lc/e/b/k/m/o;->h(Z)V

    .line 107
    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/f;->t1()Lc/e/b/d;

    move-result-object v7

    invoke-virtual {v4, v7, v12}, Lc/e/b/k/m/o;->f(Lc/e/b/d;I)I

    move-result v7

    if-le v7, v6, :cond_352

    move-object v3, v4

    move v6, v7

    goto :goto_352

    :cond_376
    const/4 v5, 0x0

    if-eqz v3, :cond_387

    .line 108
    sget-object v1, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    invoke-virtual {v0, v1}, Lc/e/b/k/e;->Q0(Lc/e/b/k/e$b;)V

    .line 109
    invoke-virtual {v0, v6}, Lc/e/b/k/e;->v0(I)V

    .line 110
    invoke-virtual {v3, v12}, Lc/e/b/k/m/o;->h(Z)V

    move-object v4, v3

    goto :goto_388

    :cond_386
    const/4 v5, 0x0

    :cond_387
    move-object v4, v13

    :goto_388
    if-nez v2, :cond_38f

    if-eqz v4, :cond_38d

    goto :goto_38f

    :cond_38d
    const/4 v3, 0x0

    goto :goto_390

    :cond_38f
    :goto_38f
    const/4 v3, 0x1

    :goto_390
    return v3
.end method

.method public static d(Lc/e/b/k/e$b;Lc/e/b/k/e$b;Lc/e/b/k/e$b;Lc/e/b/k/e$b;)Z
    .registers 7

    .line 1
    sget-object v0, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_15

    sget-object v0, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-eq p2, v0, :cond_15

    sget-object v0, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;

    if-ne p2, v0, :cond_13

    sget-object p2, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-eq p0, p2, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    .line 2
    :goto_16
    sget-object p2, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    if-eq p3, p2, :cond_29

    sget-object p2, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-eq p3, p2, :cond_29

    sget-object p2, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;

    if-ne p3, p2, :cond_27

    sget-object p2, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-eq p1, p2, :cond_27

    goto :goto_29

    :cond_27
    const/4 p1, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 p1, 0x1

    :goto_2a
    if-nez p0, :cond_30

    if-eqz p1, :cond_2f

    goto :goto_30

    :cond_2f
    return v1

    :cond_30
    :goto_30
    return v2
.end method
