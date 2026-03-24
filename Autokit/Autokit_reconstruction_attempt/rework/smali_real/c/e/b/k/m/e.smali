.class public Lc/e/b/k/m/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lc/e/b/k/f;

.field private b:Z

.field private c:Z

.field private d:Lc/e/b/k/f;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/e/b/k/m/p;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lc/e/b/k/m/b$b;

.field private g:Lc/e/b/k/m/b$a;

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/e/b/k/m/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/e/b/k/f;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc/e/b/k/m/e;->b:Z

    .line 3
    iput-boolean v0, p0, Lc/e/b/k/m/e;->c:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/e/b/k/m/e;->e:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lc/e/b/k/m/e;->f:Lc/e/b/k/m/b$b;

    .line 7
    new-instance v0, Lc/e/b/k/m/b$a;

    invoke-direct {v0}, Lc/e/b/k/m/b$a;-><init>()V

    iput-object v0, p0, Lc/e/b/k/m/e;->g:Lc/e/b/k/m/b$a;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/e/b/k/m/e;->h:Ljava/util/ArrayList;

    .line 9
    iput-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    .line 10
    iput-object p1, p0, Lc/e/b/k/m/e;->d:Lc/e/b/k/f;

    return-void
.end method

.method private a(Lc/e/b/k/m/f;IILc/e/b/k/m/f;Ljava/util/ArrayList;Lc/e/b/k/m/m;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/b/k/m/f;",
            "II",
            "Lc/e/b/k/m/f;",
            "Ljava/util/ArrayList<",
            "Lc/e/b/k/m/m;",
            ">;",
            "Lc/e/b/k/m/m;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lc/e/b/k/m/f;->d:Lc/e/b/k/m/p;

    .line 2
    iget-object v0, p1, Lc/e/b/k/m/p;->c:Lc/e/b/k/m/m;

    if-nez v0, :cond_107

    iget-object v0, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    iget-object v1, v0, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    if-eq p1, v1, :cond_107

    iget-object v0, v0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    if-ne p1, v0, :cond_12

    goto/16 :goto_107

    :cond_12
    if-nez p6, :cond_1c

    .line 3
    new-instance p6, Lc/e/b/k/m/m;

    invoke-direct {p6, p1, p3}, Lc/e/b/k/m/m;-><init>(Lc/e/b/k/m/p;I)V

    .line 4
    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_1c
    iput-object p6, p1, Lc/e/b/k/m/p;->c:Lc/e/b/k/m/m;

    .line 6
    invoke-virtual {p6, p1}, Lc/e/b/k/m/m;->a(Lc/e/b/k/m/p;)V

    .line 7
    iget-object p3, p1, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;

    iget-object p3, p3, Lc/e/b/k/m/f;->k:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_29
    :goto_29
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/b/k/m/d;

    .line 8
    instance-of v1, v0, Lc/e/b/k/m/f;

    if-eqz v1, :cond_29

    .line 9
    move-object v1, v0

    check-cast v1, Lc/e/b/k/m/f;

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lc/e/b/k/m/e;->a(Lc/e/b/k/m/f;IILc/e/b/k/m/f;Ljava/util/ArrayList;Lc/e/b/k/m/m;)V

    goto :goto_29

    .line 10
    :cond_46
    iget-object p3, p1, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;

    iget-object p3, p3, Lc/e/b/k/m/f;->k:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4e
    :goto_4e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/b/k/m/d;

    .line 11
    instance-of v1, v0, Lc/e/b/k/m/f;

    if-eqz v1, :cond_4e

    .line 12
    move-object v1, v0

    check-cast v1, Lc/e/b/k/m/f;

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lc/e/b/k/m/e;->a(Lc/e/b/k/m/f;IILc/e/b/k/m/f;Ljava/util/ArrayList;Lc/e/b/k/m/m;)V

    goto :goto_4e

    :cond_6b
    const/4 p3, 0x1

    if-ne p2, p3, :cond_9a

    .line 13
    instance-of v0, p1, Lc/e/b/k/m/n;

    if-eqz v0, :cond_9a

    .line 14
    move-object v0, p1

    check-cast v0, Lc/e/b/k/m/n;

    iget-object v0, v0, Lc/e/b/k/m/n;->k:Lc/e/b/k/m/f;

    iget-object v0, v0, Lc/e/b/k/m/f;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7d
    :goto_7d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/b/k/m/d;

    .line 15
    instance-of v1, v0, Lc/e/b/k/m/f;

    if-eqz v1, :cond_7d

    .line 16
    move-object v1, v0

    check-cast v1, Lc/e/b/k/m/f;

    const/4 v3, 0x2

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lc/e/b/k/m/e;->a(Lc/e/b/k/m/f;IILc/e/b/k/m/f;Ljava/util/ArrayList;Lc/e/b/k/m/m;)V

    goto :goto_7d

    .line 17
    :cond_9a
    iget-object v0, p1, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;

    iget-object v0, v0, Lc/e/b/k/m/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lc/e/b/k/m/f;

    if-ne v1, p4, :cond_b3

    .line 18
    iput-boolean p3, p6, Lc/e/b/k/m/m;->a:Z

    :cond_b3
    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 19
    invoke-direct/range {v0 .. v6}, Lc/e/b/k/m/e;->a(Lc/e/b/k/m/f;IILc/e/b/k/m/f;Ljava/util/ArrayList;Lc/e/b/k/m/m;)V

    goto :goto_a2

    .line 20
    :cond_bd
    iget-object v0, p1, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;

    iget-object v0, v0, Lc/e/b/k/m/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_c5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lc/e/b/k/m/f;

    if-ne v1, p4, :cond_d6

    .line 21
    iput-boolean p3, p6, Lc/e/b/k/m/m;->a:Z

    :cond_d6
    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 22
    invoke-direct/range {v0 .. v6}, Lc/e/b/k/m/e;->a(Lc/e/b/k/m/f;IILc/e/b/k/m/f;Ljava/util/ArrayList;Lc/e/b/k/m/m;)V

    goto :goto_c5

    :cond_e0
    if-ne p2, p3, :cond_107

    .line 23
    instance-of p3, p1, Lc/e/b/k/m/n;

    if-eqz p3, :cond_107

    .line 24
    check-cast p1, Lc/e/b/k/m/n;

    iget-object p1, p1, Lc/e/b/k/m/n;->k:Lc/e/b/k/m/f;

    iget-object p1, p1, Lc/e/b/k/m/f;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_107

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lc/e/b/k/m/f;

    const/4 v3, 0x2

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 25
    :try_start_103
    invoke-direct/range {v0 .. v6}, Lc/e/b/k/m/e;->a(Lc/e/b/k/m/f;IILc/e/b/k/m/f;Ljava/util/ArrayList;Lc/e/b/k/m/m;)V
    :try_end_106
    .catchall {:try_start_103 .. :try_end_106} :catchall_108

    goto :goto_f0

    :cond_107
    :goto_107
    return-void

    :catchall_108
    move-exception p1

    goto :goto_10b

    :goto_10a
    throw p1

    :goto_10b
    goto :goto_10a
.end method

.method private b(Lc/e/b/k/f;)Z
    .registers 15

    .line 1
    iget-object v0, p1, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_35a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/b/k/e;

    .line 2
    iget-object v3, v1, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    aget-object v4, v3, v2

    const/4 v9, 0x1

    .line 3
    aget-object v3, v3, v9

    .line 4
    invoke-virtual {v1}, Lc/e/b/k/e;->Q()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_25

    .line 5
    iput-boolean v9, v1, Lc/e/b/k/e;->a:Z

    goto :goto_6

    .line 6
    :cond_25
    iget v5, v1, Lc/e/b/k/e;->s:F

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    cmpg-float v5, v5, v10

    if-gez v5, :cond_34

    sget-object v5, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v4, v5, :cond_34

    .line 7
    iput v6, v1, Lc/e/b/k/e;->n:I

    .line 8
    :cond_34
    iget v5, v1, Lc/e/b/k/e;->v:F

    cmpg-float v5, v5, v10

    if-gez v5, :cond_40

    sget-object v5, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v3, v5, :cond_40

    .line 9
    iput v6, v1, Lc/e/b/k/e;->o:I

    .line 10
    :cond_40
    invoke-virtual {v1}, Lc/e/b/k/e;->t()F

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x3

    cmpl-float v5, v5, v7

    if-lez v5, :cond_7a

    .line 11
    sget-object v5, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v4, v5, :cond_59

    sget-object v5, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-eq v3, v5, :cond_56

    sget-object v5, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    if-ne v3, v5, :cond_59

    .line 12
    :cond_56
    iput v8, v1, Lc/e/b/k/e;->n:I

    goto :goto_7a

    .line 13
    :cond_59
    sget-object v5, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v3, v5, :cond_68

    sget-object v5, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-eq v4, v5, :cond_65

    sget-object v5, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    if-ne v4, v5, :cond_68

    .line 14
    :cond_65
    iput v8, v1, Lc/e/b/k/e;->o:I

    goto :goto_7a

    .line 15
    :cond_68
    sget-object v5, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v4, v5, :cond_7a

    if-ne v3, v5, :cond_7a

    .line 16
    iget v5, v1, Lc/e/b/k/e;->n:I

    if-nez v5, :cond_74

    .line 17
    iput v8, v1, Lc/e/b/k/e;->n:I

    .line 18
    :cond_74
    iget v5, v1, Lc/e/b/k/e;->o:I

    if-nez v5, :cond_7a

    .line 19
    iput v8, v1, Lc/e/b/k/e;->o:I

    .line 20
    :cond_7a
    :goto_7a
    sget-object v5, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v4, v5, :cond_90

    iget v5, v1, Lc/e/b/k/e;->n:I

    if-ne v5, v9, :cond_90

    .line 21
    iget-object v5, v1, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    iget-object v5, v5, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v5, :cond_8e

    iget-object v5, v1, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    iget-object v5, v5, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-nez v5, :cond_90

    .line 22
    :cond_8e
    sget-object v4, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    :cond_90
    move-object v5, v4

    .line 23
    sget-object v4, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v3, v4, :cond_a7

    iget v4, v1, Lc/e/b/k/e;->o:I

    if-ne v4, v9, :cond_a7

    .line 24
    iget-object v4, v1, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    iget-object v4, v4, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v4, :cond_a5

    iget-object v4, v1, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    iget-object v4, v4, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-nez v4, :cond_a7

    .line 25
    :cond_a5
    sget-object v3, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    :cond_a7
    move-object v7, v3

    .line 26
    iget-object v3, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    iput-object v5, v3, Lc/e/b/k/m/p;->d:Lc/e/b/k/e$b;

    .line 27
    iget v4, v1, Lc/e/b/k/e;->n:I

    iput v4, v3, Lc/e/b/k/m/p;->a:I

    .line 28
    iget-object v3, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iput-object v7, v3, Lc/e/b/k/m/p;->d:Lc/e/b/k/e$b;

    .line 29
    iget v4, v1, Lc/e/b/k/e;->o:I

    iput v4, v3, Lc/e/b/k/m/p;->a:I

    .line 30
    sget-object v3, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;

    if-eq v5, v3, :cond_c4

    sget-object v3, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    if-eq v5, v3, :cond_c4

    sget-object v3, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-ne v5, v3, :cond_d2

    :cond_c4
    sget-object v3, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;

    if-eq v7, v3, :cond_303

    sget-object v3, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    if-eq v7, v3, :cond_303

    sget-object v3, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-ne v7, v3, :cond_d2

    goto/16 :goto_303

    .line 31
    :cond_d2
    sget-object v3, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    const/high16 v11, 0x3f000000    # 0.5f

    if-ne v5, v3, :cond_1a6

    sget-object v3, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-eq v7, v3, :cond_e0

    sget-object v3, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    if-ne v7, v3, :cond_1a6

    .line 32
    :cond_e0
    iget v3, v1, Lc/e/b/k/e;->n:I

    if-ne v3, v8, :cond_11e

    .line 33
    sget-object v2, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-ne v7, v2, :cond_f1

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    move-object v5, v2

    move-object v7, v2

    .line 34
    invoke-direct/range {v3 .. v8}, Lc/e/b/k/m/e;->l(Lc/e/b/k/e;Lc/e/b/k/e$b;ILc/e/b/k/e$b;I)V

    .line 35
    :cond_f1
    invoke-virtual {v1}, Lc/e/b/k/e;->v()I

    move-result v8

    int-to-float v2, v8

    .line 36
    iget v3, v1, Lc/e/b/k/e;->U:F

    mul-float v2, v2, v3

    add-float/2addr v2, v11

    float-to-int v6, v2

    .line 37
    sget-object v7, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    move-object v3, p0

    move-object v4, v1

    move-object v5, v7

    invoke-direct/range {v3 .. v8}, Lc/e/b/k/m/e;->l(Lc/e/b/k/e;Lc/e/b/k/e$b;ILc/e/b/k/e$b;I)V

    .line 38
    iget-object v2, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    invoke-virtual {v1}, Lc/e/b/k/e;->R()I

    move-result v3

    invoke-virtual {v2, v3}, Lc/e/b/k/m/g;->d(I)V

    .line 39
    iget-object v2, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    invoke-virtual {v1}, Lc/e/b/k/e;->v()I

    move-result v3

    invoke-virtual {v2, v3}, Lc/e/b/k/m/g;->d(I)V

    .line 40
    iput-boolean v9, v1, Lc/e/b/k/e;->a:Z

    goto/16 :goto_6

    :cond_11e
    if-ne v3, v9, :cond_135

    .line 41
    sget-object v5, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Lc/e/b/k/m/e;->l(Lc/e/b/k/e;Lc/e/b/k/e$b;ILc/e/b/k/e$b;I)V

    .line 42
    iget-object v2, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    invoke-virtual {v1}, Lc/e/b/k/e;->R()I

    move-result v1

    iput v1, v2, Lc/e/b/k/m/g;->m:I

    goto/16 :goto_6

    :cond_135
    if-ne v3, v6, :cond_175

    .line 43
    iget-object v3, p1, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    aget-object v4, v3, v2

    sget-object v12, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    if-eq v4, v12, :cond_145

    aget-object v3, v3, v2

    sget-object v4, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;

    if-ne v3, v4, :cond_1a6

    .line 44
    :cond_145
    iget v2, v1, Lc/e/b/k/e;->s:F

    .line 45
    invoke-virtual {p1}, Lc/e/b/k/e;->R()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    add-float/2addr v2, v11

    float-to-int v6, v2

    .line 46
    invoke-virtual {v1}, Lc/e/b/k/e;->v()I

    move-result v8

    .line 47
    sget-object v5, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Lc/e/b/k/m/e;->l(Lc/e/b/k/e;Lc/e/b/k/e$b;ILc/e/b/k/e$b;I)V

    .line 48
    iget-object v2, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    invoke-virtual {v1}, Lc/e/b/k/e;->R()I

    move-result v3

    invoke-virtual {v2, v3}, Lc/e/b/k/m/g;->d(I)V

    .line 49
    iget-object v2, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    invoke-virtual {v1}, Lc/e/b/k/e;->v()I

    move-result v3

    invoke-virtual {v2, v3}, Lc/e/b/k/m/g;->d(I)V

    .line 50
    iput-boolean v9, v1, Lc/e/b/k/e;->a:Z

    goto/16 :goto_6

    .line 51
    :cond_175
    iget-object v3, v1, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v4, v3, v2

    iget-object v4, v4, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v4, :cond_183

    aget-object v3, v3, v9

    iget-object v3, v3, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-nez v3, :cond_1a6

    .line 52
    :cond_183
    sget-object v5, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Lc/e/b/k/m/e;->l(Lc/e/b/k/e;Lc/e/b/k/e$b;ILc/e/b/k/e$b;I)V

    .line 53
    iget-object v2, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    invoke-virtual {v1}, Lc/e/b/k/e;->R()I

    move-result v3

    invoke-virtual {v2, v3}, Lc/e/b/k/m/g;->d(I)V

    .line 54
    iget-object v2, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    invoke-virtual {v1}, Lc/e/b/k/e;->v()I

    move-result v3

    invoke-virtual {v2, v3}, Lc/e/b/k/m/g;->d(I)V

    .line 55
    iput-boolean v9, v1, Lc/e/b/k/e;->a:Z

    goto/16 :goto_6

    .line 56
    :cond_1a6
    sget-object v3, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v7, v3, :cond_280

    sget-object v3, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-eq v5, v3, :cond_1b2

    sget-object v3, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    if-ne v5, v3, :cond_280

    .line 57
    :cond_1b2
    iget v3, v1, Lc/e/b/k/e;->o:I

    if-ne v3, v8, :cond_1f8

    .line 58
    sget-object v7, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-ne v5, v7, :cond_1c2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    move-object v5, v7

    .line 59
    invoke-direct/range {v3 .. v8}, Lc/e/b/k/m/e;->l(Lc/e/b/k/e;Lc/e/b/k/e$b;ILc/e/b/k/e$b;I)V

    .line 60
    :cond_1c2
    invoke-virtual {v1}, Lc/e/b/k/e;->R()I

    move-result v6

    .line 61
    iget v2, v1, Lc/e/b/k/e;->U:F

    .line 62
    invoke-virtual {v1}, Lc/e/b/k/e;->u()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1d1

    div-float v2, v10, v2

    :cond_1d1
    int-to-float v3, v6

    mul-float v3, v3, v2

    add-float/2addr v3, v11

    float-to-int v8, v3

    .line 63
    sget-object v7, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    move-object v3, p0

    move-object v4, v1

    move-object v5, v7

    invoke-direct/range {v3 .. v8}, Lc/e/b/k/m/e;->l(Lc/e/b/k/e;Lc/e/b/k/e$b;ILc/e/b/k/e$b;I)V

    .line 64
    iget-object v2, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    invoke-virtual {v1}, Lc/e/b/k/e;->R()I

    move-result v3

    invoke-virtual {v2, v3}, Lc/e/b/k/m/g;->d(I)V

    .line 65
    iget-object v2, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    invoke-virtual {v1}, Lc/e/b/k/e;->v()I

    move-result v3

    invoke-virtual {v2, v3}, Lc/e/b/k/m/g;->d(I)V

    .line 66
    iput-boolean v9, v1, Lc/e/b/k/e;->a:Z

    goto/16 :goto_6

    :cond_1f8
    if-ne v3, v9, :cond_20f

    const/4 v6, 0x0

    .line 67
    sget-object v7, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Lc/e/b/k/m/e;->l(Lc/e/b/k/e;Lc/e/b/k/e$b;ILc/e/b/k/e$b;I)V

    .line 68
    iget-object v2, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    invoke-virtual {v1}, Lc/e/b/k/e;->v()I

    move-result v1

    iput v1, v2, Lc/e/b/k/m/g;->m:I

    goto/16 :goto_6

    :cond_20f
    if-ne v3, v6, :cond_24f

    .line 69
    iget-object v3, p1, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    aget-object v4, v3, v9

    sget-object v8, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    if-eq v4, v8, :cond_21f

    aget-object v3, v3, v9

    sget-object v4, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;

    if-ne v3, v4, :cond_280

    .line 70
    :cond_21f
    iget v2, v1, Lc/e/b/k/e;->v:F

    .line 71
    invoke-virtual {v1}, Lc/e/b/k/e;->R()I

    move-result v6

    .line 72
    invoke-virtual {p1}, Lc/e/b/k/e;->v()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    add-float/2addr v2, v11

    float-to-int v8, v2

    .line 73
    sget-object v7, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Lc/e/b/k/m/e;->l(Lc/e/b/k/e;Lc/e/b/k/e$b;ILc/e/b/k/e$b;I)V

    .line 74
    iget-object v2, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    invoke-virtual {v1}, Lc/e/b/k/e;->R()I

    move-result v3

    invoke-virtual {v2, v3}, Lc/e/b/k/m/g;->d(I)V

    .line 75
    iget-object v2, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    invoke-virtual {v1}, Lc/e/b/k/e;->v()I

    move-result v3

    invoke-virtual {v2, v3}, Lc/e/b/k/m/g;->d(I)V

    .line 76
    iput-boolean v9, v1, Lc/e/b/k/e;->a:Z

    goto/16 :goto_6

    .line 77
    :cond_24f
    iget-object v3, v1, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v4, v3, v6

    iget-object v4, v4, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v4, :cond_25d

    aget-object v3, v3, v8

    iget-object v3, v3, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-nez v3, :cond_280

    .line 78
    :cond_25d
    sget-object v5, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Lc/e/b/k/m/e;->l(Lc/e/b/k/e;Lc/e/b/k/e$b;ILc/e/b/k/e$b;I)V

    .line 79
    iget-object v2, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    invoke-virtual {v1}, Lc/e/b/k/e;->R()I

    move-result v3

    invoke-virtual {v2, v3}, Lc/e/b/k/m/g;->d(I)V

    .line 80
    iget-object v2, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    invoke-virtual {v1}, Lc/e/b/k/e;->v()I

    move-result v3

    invoke-virtual {v2, v3}, Lc/e/b/k/m/g;->d(I)V

    .line 81
    iput-boolean v9, v1, Lc/e/b/k/e;->a:Z

    goto/16 :goto_6

    .line 82
    :cond_280
    sget-object v3, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v5, v3, :cond_6

    if-ne v7, v3, :cond_6

    .line 83
    iget v3, v1, Lc/e/b/k/e;->n:I

    if-eq v3, v9, :cond_2e3

    iget v4, v1, Lc/e/b/k/e;->o:I

    if-ne v4, v9, :cond_28f

    goto :goto_2e3

    :cond_28f
    if-ne v4, v6, :cond_6

    if-ne v3, v6, :cond_6

    .line 84
    iget-object v3, p1, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    aget-object v4, v3, v2

    sget-object v5, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    if-eq v4, v5, :cond_29f

    aget-object v2, v3, v2

    if-ne v2, v5, :cond_6

    :cond_29f
    iget-object v2, p1, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    aget-object v3, v2, v9

    sget-object v4, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    if-eq v3, v4, :cond_2ab

    aget-object v2, v2, v9

    if-ne v2, v4, :cond_6

    .line 85
    :cond_2ab
    iget v2, v1, Lc/e/b/k/e;->s:F

    .line 86
    iget v3, v1, Lc/e/b/k/e;->v:F

    .line 87
    invoke-virtual {p1}, Lc/e/b/k/e;->R()I

    move-result v4

    int-to-float v4, v4

    mul-float v2, v2, v4

    add-float/2addr v2, v11

    float-to-int v6, v2

    .line 88
    invoke-virtual {p1}, Lc/e/b/k/e;->v()I

    move-result v2

    int-to-float v2, v2

    mul-float v3, v3, v2

    add-float/2addr v3, v11

    float-to-int v8, v3

    .line 89
    sget-object v7, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    move-object v3, p0

    move-object v4, v1

    move-object v5, v7

    invoke-direct/range {v3 .. v8}, Lc/e/b/k/m/e;->l(Lc/e/b/k/e;Lc/e/b/k/e$b;ILc/e/b/k/e$b;I)V

    .line 90
    iget-object v2, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    invoke-virtual {v1}, Lc/e/b/k/e;->R()I

    move-result v3

    invoke-virtual {v2, v3}, Lc/e/b/k/m/g;->d(I)V

    .line 91
    iget-object v2, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    invoke-virtual {v1}, Lc/e/b/k/e;->v()I

    move-result v3

    invoke-virtual {v2, v3}, Lc/e/b/k/m/g;->d(I)V

    .line 92
    iput-boolean v9, v1, Lc/e/b/k/e;->a:Z

    goto/16 :goto_6

    .line 93
    :cond_2e3
    :goto_2e3
    sget-object v7, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    move-object v5, v7

    invoke-direct/range {v3 .. v8}, Lc/e/b/k/m/e;->l(Lc/e/b/k/e;Lc/e/b/k/e$b;ILc/e/b/k/e$b;I)V

    .line 94
    iget-object v2, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    invoke-virtual {v1}, Lc/e/b/k/e;->R()I

    move-result v3

    iput v3, v2, Lc/e/b/k/m/g;->m:I

    .line 95
    iget-object v2, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    invoke-virtual {v1}, Lc/e/b/k/e;->v()I

    move-result v1

    iput v1, v2, Lc/e/b/k/m/g;->m:I

    goto/16 :goto_6

    .line 96
    :cond_303
    :goto_303
    invoke-virtual {v1}, Lc/e/b/k/e;->R()I

    move-result v2

    .line 97
    sget-object v3, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;

    if-ne v5, v3, :cond_31e

    .line 98
    invoke-virtual {p1}, Lc/e/b/k/e;->R()I

    move-result v2

    iget-object v3, v1, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    iget v3, v3, Lc/e/b/k/d;->g:I

    sub-int/2addr v2, v3

    iget-object v3, v1, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    iget v3, v3, Lc/e/b/k/d;->g:I

    sub-int/2addr v2, v3

    .line 99
    sget-object v3, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    move v6, v2

    move-object v5, v3

    goto :goto_31f

    :cond_31e
    move v6, v2

    .line 100
    :goto_31f
    invoke-virtual {v1}, Lc/e/b/k/e;->v()I

    move-result v2

    .line 101
    sget-object v3, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;

    if-ne v7, v3, :cond_33a

    .line 102
    invoke-virtual {p1}, Lc/e/b/k/e;->v()I

    move-result v2

    iget-object v3, v1, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    iget v3, v3, Lc/e/b/k/d;->g:I

    sub-int/2addr v2, v3

    iget-object v3, v1, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    iget v3, v3, Lc/e/b/k/d;->g:I

    sub-int/2addr v2, v3

    .line 103
    sget-object v3, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    move v8, v2

    move-object v7, v3

    goto :goto_33b

    :cond_33a
    move v8, v2

    :goto_33b
    move-object v3, p0

    move-object v4, v1

    .line 104
    invoke-direct/range {v3 .. v8}, Lc/e/b/k/m/e;->l(Lc/e/b/k/e;Lc/e/b/k/e$b;ILc/e/b/k/e$b;I)V

    .line 105
    iget-object v2, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    invoke-virtual {v1}, Lc/e/b/k/e;->R()I

    move-result v3

    invoke-virtual {v2, v3}, Lc/e/b/k/m/g;->d(I)V

    .line 106
    iget-object v2, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    invoke-virtual {v1}, Lc/e/b/k/e;->v()I

    move-result v3

    invoke-virtual {v2, v3}, Lc/e/b/k/m/g;->d(I)V

    .line 107
    iput-boolean v9, v1, Lc/e/b/k/e;->a:Z

    goto/16 :goto_6

    :cond_35a
    return v2
.end method

.method private e(Lc/e/b/k/f;I)I
    .registers 9

    .line 1
    iget-object v0, p0, Lc/e/b/k/m/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_1e

    .line 2
    iget-object v4, p0, Lc/e/b/k/m/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/e/b/k/m/m;

    .line 3
    invoke-virtual {v4, p1, p2}, Lc/e/b/k/m/m;->b(Lc/e/b/k/f;I)J

    move-result-wide v4

    .line 4
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_1e
    long-to-int p1, v1

    return p1
.end method

.method private i(Lc/e/b/k/m/p;ILjava/util/ArrayList;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/b/k/m/p;",
            "I",
            "Ljava/util/ArrayList<",
            "Lc/e/b/k/m/m;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;

    iget-object v0, v0, Lc/e/b/k/m/f;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/b/k/m/d;

    .line 2
    instance-of v2, v1, Lc/e/b/k/m/f;

    if-eqz v2, :cond_26

    .line 3
    move-object v4, v1

    check-cast v4, Lc/e/b/k/m/f;

    const/4 v6, 0x0

    .line 4
    iget-object v7, p1, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;

    const/4 v9, 0x0

    move-object v3, p0

    move v5, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Lc/e/b/k/m/e;->a(Lc/e/b/k/m/f;IILc/e/b/k/m/f;Ljava/util/ArrayList;Lc/e/b/k/m/m;)V

    goto :goto_8

    .line 5
    :cond_26
    instance-of v2, v1, Lc/e/b/k/m/p;

    if-eqz v2, :cond_8

    .line 6
    check-cast v1, Lc/e/b/k/m/p;

    .line 7
    iget-object v3, v1, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;

    const/4 v5, 0x0

    iget-object v6, p1, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lc/e/b/k/m/e;->a(Lc/e/b/k/m/f;IILc/e/b/k/m/f;Ljava/util/ArrayList;Lc/e/b/k/m/m;)V

    goto :goto_8

    .line 8
    :cond_39
    iget-object v0, p1, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;

    iget-object v0, v0, Lc/e/b/k/m/f;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_41
    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/b/k/m/d;

    .line 9
    instance-of v2, v1, Lc/e/b/k/m/f;

    if-eqz v2, :cond_5f

    .line 10
    move-object v4, v1

    check-cast v4, Lc/e/b/k/m/f;

    const/4 v6, 0x1

    .line 11
    iget-object v7, p1, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;

    const/4 v9, 0x0

    move-object v3, p0

    move v5, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Lc/e/b/k/m/e;->a(Lc/e/b/k/m/f;IILc/e/b/k/m/f;Ljava/util/ArrayList;Lc/e/b/k/m/m;)V

    goto :goto_41

    .line 12
    :cond_5f
    instance-of v2, v1, Lc/e/b/k/m/p;

    if-eqz v2, :cond_41

    .line 13
    check-cast v1, Lc/e/b/k/m/p;

    .line 14
    iget-object v3, v1, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;

    const/4 v5, 0x1

    iget-object v6, p1, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lc/e/b/k/m/e;->a(Lc/e/b/k/m/f;IILc/e/b/k/m/f;Ljava/util/ArrayList;Lc/e/b/k/m/m;)V

    goto :goto_41

    :cond_72
    const/4 v0, 0x1

    if-ne p2, v0, :cond_9c

    .line 15
    check-cast p1, Lc/e/b/k/m/n;

    iget-object p1, p1, Lc/e/b/k/m/n;->k:Lc/e/b/k/m/f;

    iget-object p1, p1, Lc/e/b/k/m/f;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7f
    :goto_7f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/b/k/m/d;

    .line 16
    instance-of v1, v0, Lc/e/b/k/m/f;

    if-eqz v1, :cond_7f

    .line 17
    move-object v3, v0

    check-cast v3, Lc/e/b/k/m/f;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    .line 18
    invoke-direct/range {v2 .. v8}, Lc/e/b/k/m/e;->a(Lc/e/b/k/m/f;IILc/e/b/k/m/f;Ljava/util/ArrayList;Lc/e/b/k/m/m;)V

    goto :goto_7f

    :cond_9c
    return-void
.end method

.method private l(Lc/e/b/k/e;Lc/e/b/k/e$b;ILc/e/b/k/e$b;I)V
    .registers 7

    .line 1
    iget-object v0, p0, Lc/e/b/k/m/e;->g:Lc/e/b/k/m/b$a;

    iput-object p2, v0, Lc/e/b/k/m/b$a;->a:Lc/e/b/k/e$b;

    .line 2
    iput-object p4, v0, Lc/e/b/k/m/b$a;->b:Lc/e/b/k/e$b;

    .line 3
    iput p3, v0, Lc/e/b/k/m/b$a;->c:I

    .line 4
    iput p5, v0, Lc/e/b/k/m/b$a;->d:I

    .line 5
    iget-object p2, p0, Lc/e/b/k/m/e;->f:Lc/e/b/k/m/b$b;

    invoke-interface {p2, p1, v0}, Lc/e/b/k/m/b$b;->a(Lc/e/b/k/e;Lc/e/b/k/m/b$a;)V

    .line 6
    iget-object p2, p0, Lc/e/b/k/m/e;->g:Lc/e/b/k/m/b$a;

    iget p2, p2, Lc/e/b/k/m/b$a;->e:I

    invoke-virtual {p1, p2}, Lc/e/b/k/e;->U0(I)V

    .line 7
    iget-object p2, p0, Lc/e/b/k/m/e;->g:Lc/e/b/k/m/b$a;

    iget p2, p2, Lc/e/b/k/m/b$a;->f:I

    invoke-virtual {p1, p2}, Lc/e/b/k/e;->v0(I)V

    .line 8
    iget-object p2, p0, Lc/e/b/k/m/e;->g:Lc/e/b/k/m/b$a;

    iget-boolean p2, p2, Lc/e/b/k/m/b$a;->h:Z

    invoke-virtual {p1, p2}, Lc/e/b/k/e;->u0(Z)V

    .line 9
    iget-object p2, p0, Lc/e/b/k/m/e;->g:Lc/e/b/k/m/b$a;

    iget p2, p2, Lc/e/b/k/m/b$a;->g:I

    invoke-virtual {p1, p2}, Lc/e/b/k/e;->k0(I)V

    return-void
.end method


# virtual methods
.method public c()V
    .registers 5

    .line 1
    iget-object v0, p0, Lc/e/b/k/m/e;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lc/e/b/k/m/e;->d(Ljava/util/ArrayList;)V

    .line 2
    iget-object v0, p0, Lc/e/b/k/m/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 3
    sput v0, Lc/e/b/k/m/m;->d:I

    .line 4
    iget-object v1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    iget-object v1, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    iget-object v2, p0, Lc/e/b/k/m/e;->h:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0, v2}, Lc/e/b/k/m/e;->i(Lc/e/b/k/m/p;ILjava/util/ArrayList;)V

    .line 5
    iget-object v1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    iget-object v1, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iget-object v2, p0, Lc/e/b/k/m/e;->h:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v3, v2}, Lc/e/b/k/m/e;->i(Lc/e/b/k/m/p;ILjava/util/ArrayList;)V

    .line 6
    iput-boolean v0, p0, Lc/e/b/k/m/e;->b:Z

    return-void
.end method

.method public d(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lc/e/b/k/m/p;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lc/e/b/k/m/e;->d:Lc/e/b/k/f;

    iget-object v0, v0, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    invoke-virtual {v0}, Lc/e/b/k/m/l;->f()V

    .line 3
    iget-object v0, p0, Lc/e/b/k/m/e;->d:Lc/e/b/k/f;

    iget-object v0, v0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    invoke-virtual {v0}, Lc/e/b/k/m/n;->f()V

    .line 4
    iget-object v0, p0, Lc/e/b/k/m/e;->d:Lc/e/b/k/f;

    iget-object v0, v0, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lc/e/b/k/m/e;->d:Lc/e/b/k/f;

    iget-object v0, v0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lc/e/b/k/m/e;->d:Lc/e/b/k/f;

    iget-object v0, v0, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_28
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_96

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/b/k/e;

    .line 7
    instance-of v3, v2, Lc/e/b/k/g;

    if-eqz v3, :cond_41

    .line 8
    new-instance v3, Lc/e/b/k/m/j;

    invoke-direct {v3, v2}, Lc/e/b/k/m/j;-><init>(Lc/e/b/k/e;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 9
    :cond_41
    invoke-virtual {v2}, Lc/e/b/k/e;->Z()Z

    move-result v3

    if-eqz v3, :cond_60

    .line 10
    iget-object v3, v2, Lc/e/b/k/e;->b:Lc/e/b/k/m/c;

    if-nez v3, :cond_53

    .line 11
    new-instance v3, Lc/e/b/k/m/c;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lc/e/b/k/m/c;-><init>(Lc/e/b/k/e;I)V

    .line 12
    iput-object v3, v2, Lc/e/b/k/e;->b:Lc/e/b/k/m/c;

    :cond_53
    if-nez v1, :cond_5a

    .line 13
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 14
    :cond_5a
    iget-object v3, v2, Lc/e/b/k/e;->b:Lc/e/b/k/m/c;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_65

    .line 15
    :cond_60
    iget-object v3, v2, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :goto_65
    invoke-virtual {v2}, Lc/e/b/k/e;->b0()Z

    move-result v3

    if-eqz v3, :cond_84

    .line 17
    iget-object v3, v2, Lc/e/b/k/e;->c:Lc/e/b/k/m/c;

    if-nez v3, :cond_77

    .line 18
    new-instance v3, Lc/e/b/k/m/c;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lc/e/b/k/m/c;-><init>(Lc/e/b/k/e;I)V

    .line 19
    iput-object v3, v2, Lc/e/b/k/e;->c:Lc/e/b/k/m/c;

    :cond_77
    if-nez v1, :cond_7e

    .line 20
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 21
    :cond_7e
    iget-object v3, v2, Lc/e/b/k/e;->c:Lc/e/b/k/m/c;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_89

    .line 22
    :cond_84
    iget-object v3, v2, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    :goto_89
    instance-of v3, v2, Lc/e/b/k/i;

    if-eqz v3, :cond_28

    .line 24
    new-instance v3, Lc/e/b/k/m/k;

    invoke-direct {v3, v2}, Lc/e/b/k/m/k;-><init>(Lc/e/b/k/e;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_96
    if-eqz v1, :cond_9b

    .line 25
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 26
    :cond_9b
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_af

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/b/k/m/p;

    .line 27
    invoke-virtual {v1}, Lc/e/b/k/m/p;->f()V

    goto :goto_9f

    .line 28
    :cond_af
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ca

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/b/k/m/p;

    .line 29
    iget-object v1, v0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;

    iget-object v2, p0, Lc/e/b/k/m/e;->d:Lc/e/b/k/f;

    if-ne v1, v2, :cond_c6

    goto :goto_b3

    .line 30
    :cond_c6
    invoke-virtual {v0}, Lc/e/b/k/m/p;->d()V

    goto :goto_b3

    :cond_ca
    return-void
.end method

.method public f(Z)Z
    .registers 10

    const/4 v0, 0x1

    and-int/2addr p1, v0

    .line 1
    iget-boolean v1, p0, Lc/e/b/k/m/e;->b:Z

    const/4 v2, 0x0

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lc/e/b/k/m/e;->c:Z

    if-eqz v1, :cond_46

    .line 2
    :cond_b
    iget-object v1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    iget-object v1, v1, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/e/b/k/e;

    .line 3
    invoke-virtual {v3}, Lc/e/b/k/e;->l()V

    .line 4
    iput-boolean v2, v3, Lc/e/b/k/e;->a:Z

    .line 5
    iget-object v4, v3, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    invoke-virtual {v4}, Lc/e/b/k/m/l;->r()V

    .line 6
    iget-object v3, v3, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    invoke-virtual {v3}, Lc/e/b/k/m/n;->q()V

    goto :goto_13

    .line 7
    :cond_2f
    iget-object v1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    invoke-virtual {v1}, Lc/e/b/k/e;->l()V

    .line 8
    iget-object v1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    iput-boolean v2, v1, Lc/e/b/k/e;->a:Z

    .line 9
    iget-object v1, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    invoke-virtual {v1}, Lc/e/b/k/m/l;->r()V

    .line 10
    iget-object v1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    iget-object v1, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    invoke-virtual {v1}, Lc/e/b/k/m/n;->q()V

    .line 11
    iput-boolean v2, p0, Lc/e/b/k/m/e;->c:Z

    .line 12
    :cond_46
    iget-object v1, p0, Lc/e/b/k/m/e;->d:Lc/e/b/k/f;

    invoke-direct {p0, v1}, Lc/e/b/k/m/e;->b(Lc/e/b/k/f;)Z

    move-result v1

    if-eqz v1, :cond_4f

    return v2

    .line 13
    :cond_4f
    iget-object v1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    invoke-virtual {v1, v2}, Lc/e/b/k/e;->V0(I)V

    .line 14
    iget-object v1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    invoke-virtual {v1, v2}, Lc/e/b/k/e;->W0(I)V

    .line 15
    iget-object v1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    invoke-virtual {v1, v2}, Lc/e/b/k/e;->s(I)Lc/e/b/k/e$b;

    move-result-object v1

    .line 16
    iget-object v3, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    invoke-virtual {v3, v0}, Lc/e/b/k/e;->s(I)Lc/e/b/k/e$b;

    move-result-object v3

    .line 17
    iget-boolean v4, p0, Lc/e/b/k/m/e;->b:Z

    if-eqz v4, :cond_6c

    .line 18
    invoke-virtual {p0}, Lc/e/b/k/m/e;->c()V

    .line 19
    :cond_6c
    iget-object v4, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    invoke-virtual {v4}, Lc/e/b/k/e;->S()I

    move-result v4

    .line 20
    iget-object v5, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    invoke-virtual {v5}, Lc/e/b/k/e;->T()I

    move-result v5

    .line 21
    iget-object v6, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    iget-object v6, v6, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    iget-object v6, v6, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;

    invoke-virtual {v6, v4}, Lc/e/b/k/m/f;->d(I)V

    .line 22
    iget-object v6, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    iget-object v6, v6, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iget-object v6, v6, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;

    invoke-virtual {v6, v5}, Lc/e/b/k/m/f;->d(I)V

    .line 23
    invoke-virtual {p0}, Lc/e/b/k/m/e;->m()V

    .line 24
    sget-object v6, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-eq v1, v6, :cond_93

    if-ne v3, v6, :cond_f4

    :cond_93
    if-eqz p1, :cond_ae

    .line 25
    iget-object v6, p0, Lc/e/b/k/m/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ae

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/e/b/k/m/p;

    .line 26
    invoke-virtual {v7}, Lc/e/b/k/m/p;->m()Z

    move-result v7

    if-nez v7, :cond_9b

    const/4 p1, 0x0

    :cond_ae
    if-eqz p1, :cond_d1

    .line 27
    sget-object v6, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-ne v1, v6, :cond_d1

    .line 28
    iget-object v6, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    sget-object v7, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    invoke-virtual {v6, v7}, Lc/e/b/k/e;->z0(Lc/e/b/k/e$b;)V

    .line 29
    iget-object v6, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    invoke-direct {p0, v6, v2}, Lc/e/b/k/m/e;->e(Lc/e/b/k/f;I)I

    move-result v7

    invoke-virtual {v6, v7}, Lc/e/b/k/e;->U0(I)V

    .line 30
    iget-object v6, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    iget-object v7, v6, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    iget-object v7, v7, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    invoke-virtual {v6}, Lc/e/b/k/e;->R()I

    move-result v6

    invoke-virtual {v7, v6}, Lc/e/b/k/m/g;->d(I)V

    :cond_d1
    if-eqz p1, :cond_f4

    .line 31
    sget-object p1, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-ne v3, p1, :cond_f4

    .line 32
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    sget-object v6, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    invoke-virtual {p1, v6}, Lc/e/b/k/e;->Q0(Lc/e/b/k/e$b;)V

    .line 33
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    invoke-direct {p0, p1, v0}, Lc/e/b/k/m/e;->e(Lc/e/b/k/f;I)I

    move-result v6

    invoke-virtual {p1, v6}, Lc/e/b/k/e;->v0(I)V

    .line 34
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    iget-object v6, p1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iget-object v6, v6, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    invoke-virtual {p1}, Lc/e/b/k/e;->v()I

    move-result p1

    invoke-virtual {v6, p1}, Lc/e/b/k/m/g;->d(I)V

    .line 35
    :cond_f4
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    iget-object p1, p1, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    aget-object v6, p1, v2

    sget-object v7, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    if-eq v6, v7, :cond_107

    aget-object p1, p1, v2

    sget-object v6, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;

    if-ne p1, v6, :cond_105

    goto :goto_107

    :cond_105
    const/4 p1, 0x0

    goto :goto_152

    .line 36
    :cond_107
    :goto_107
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    invoke-virtual {p1}, Lc/e/b/k/e;->R()I

    move-result p1

    add-int/2addr p1, v4

    .line 37
    iget-object v6, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    iget-object v6, v6, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    iget-object v6, v6, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;

    invoke-virtual {v6, p1}, Lc/e/b/k/m/f;->d(I)V

    .line 38
    iget-object v6, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    iget-object v6, v6, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    iget-object v6, v6, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    sub-int/2addr p1, v4

    invoke-virtual {v6, p1}, Lc/e/b/k/m/g;->d(I)V

    .line 39
    invoke-virtual {p0}, Lc/e/b/k/m/e;->m()V

    .line 40
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    iget-object p1, p1, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    aget-object v4, p1, v0

    sget-object v6, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    if-eq v4, v6, :cond_134

    aget-object p1, p1, v0

    sget-object v4, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;

    if-ne p1, v4, :cond_14e

    .line 41
    :cond_134
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    invoke-virtual {p1}, Lc/e/b/k/e;->v()I

    move-result p1

    add-int/2addr p1, v5

    .line 42
    iget-object v4, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    iget-object v4, v4, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iget-object v4, v4, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;

    invoke-virtual {v4, p1}, Lc/e/b/k/m/f;->d(I)V

    .line 43
    iget-object v4, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    iget-object v4, v4, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iget-object v4, v4, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    sub-int/2addr p1, v5

    invoke-virtual {v4, p1}, Lc/e/b/k/m/g;->d(I)V

    .line 44
    :cond_14e
    invoke-virtual {p0}, Lc/e/b/k/m/e;->m()V

    const/4 p1, 0x1

    .line 45
    :goto_152
    iget-object v4, p0, Lc/e/b/k/m/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_158
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_173

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/e/b/k/m/p;

    .line 46
    iget-object v6, v5, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;

    iget-object v7, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    if-ne v6, v7, :cond_16f

    iget-boolean v6, v5, Lc/e/b/k/m/p;->g:Z

    if-nez v6, :cond_16f

    goto :goto_158

    .line 47
    :cond_16f
    invoke-virtual {v5}, Lc/e/b/k/m/p;->e()V

    goto :goto_158

    .line 48
    :cond_173
    iget-object v4, p0, Lc/e/b/k/m/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_179
    :goto_179
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/e/b/k/m/p;

    if-nez p1, :cond_18e

    .line 49
    iget-object v6, v5, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;

    iget-object v7, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    if-ne v6, v7, :cond_18e

    goto :goto_179

    .line 50
    :cond_18e
    iget-object v6, v5, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;

    iget-boolean v6, v6, Lc/e/b/k/m/f;->j:Z

    if-nez v6, :cond_196

    :goto_194
    const/4 v0, 0x0

    goto :goto_1b0

    .line 51
    :cond_196
    iget-object v6, v5, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;

    iget-boolean v6, v6, Lc/e/b/k/m/f;->j:Z

    if-nez v6, :cond_1a1

    instance-of v6, v5, Lc/e/b/k/m/j;

    if-nez v6, :cond_1a1

    goto :goto_194

    .line 52
    :cond_1a1
    iget-object v6, v5, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    iget-boolean v6, v6, Lc/e/b/k/m/f;->j:Z

    if-nez v6, :cond_179

    instance-of v6, v5, Lc/e/b/k/m/c;

    if-nez v6, :cond_179

    instance-of v5, v5, Lc/e/b/k/m/j;

    if-nez v5, :cond_179

    goto :goto_194

    .line 53
    :cond_1b0
    :goto_1b0
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    invoke-virtual {p1, v1}, Lc/e/b/k/e;->z0(Lc/e/b/k/e$b;)V

    .line 54
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    invoke-virtual {p1, v3}, Lc/e/b/k/e;->Q0(Lc/e/b/k/e$b;)V

    return v0
.end method

.method public g(Z)Z
    .registers 6

    .line 1
    iget-boolean p1, p0, Lc/e/b/k/m/e;->b:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_59

    .line 2
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    iget-object p1, p1, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/b/k/e;

    .line 3
    invoke-virtual {v1}, Lc/e/b/k/e;->l()V

    .line 4
    iput-boolean v0, v1, Lc/e/b/k/e;->a:Z

    .line 5
    iget-object v2, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    iget-object v3, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    iput-boolean v0, v3, Lc/e/b/k/m/f;->j:Z

    .line 6
    iput-boolean v0, v2, Lc/e/b/k/m/p;->g:Z

    .line 7
    invoke-virtual {v2}, Lc/e/b/k/m/l;->r()V

    .line 8
    iget-object v1, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iget-object v2, v1, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    iput-boolean v0, v2, Lc/e/b/k/m/f;->j:Z

    .line 9
    iput-boolean v0, v1, Lc/e/b/k/m/p;->g:Z

    .line 10
    invoke-virtual {v1}, Lc/e/b/k/m/n;->q()V

    goto :goto_d

    .line 11
    :cond_35
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    invoke-virtual {p1}, Lc/e/b/k/e;->l()V

    .line 12
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    iput-boolean v0, p1, Lc/e/b/k/e;->a:Z

    .line 13
    iget-object p1, p1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    iget-object v1, p1, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    iput-boolean v0, v1, Lc/e/b/k/m/f;->j:Z

    .line 14
    iput-boolean v0, p1, Lc/e/b/k/m/p;->g:Z

    .line 15
    invoke-virtual {p1}, Lc/e/b/k/m/l;->r()V

    .line 16
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    iget-object p1, p1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iget-object v1, p1, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    iput-boolean v0, v1, Lc/e/b/k/m/f;->j:Z

    .line 17
    iput-boolean v0, p1, Lc/e/b/k/m/p;->g:Z

    .line 18
    invoke-virtual {p1}, Lc/e/b/k/m/n;->q()V

    .line 19
    invoke-virtual {p0}, Lc/e/b/k/m/e;->c()V

    .line 20
    :cond_59
    iget-object p1, p0, Lc/e/b/k/m/e;->d:Lc/e/b/k/f;

    invoke-direct {p0, p1}, Lc/e/b/k/m/e;->b(Lc/e/b/k/f;)Z

    move-result p1

    if-eqz p1, :cond_62

    return v0

    .line 21
    :cond_62
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    invoke-virtual {p1, v0}, Lc/e/b/k/e;->V0(I)V

    .line 22
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    invoke-virtual {p1, v0}, Lc/e/b/k/e;->W0(I)V

    .line 23
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    iget-object p1, p1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    iget-object p1, p1, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;

    invoke-virtual {p1, v0}, Lc/e/b/k/m/f;->d(I)V

    .line 24
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    iget-object p1, p1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iget-object p1, p1, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;

    invoke-virtual {p1, v0}, Lc/e/b/k/m/f;->d(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public h(ZI)Z
    .registers 12

    const/4 v0, 0x1

    and-int/2addr p1, v0

    .line 1
    iget-object v1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lc/e/b/k/e;->s(I)Lc/e/b/k/e$b;

    move-result-object v1

    .line 2
    iget-object v3, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    invoke-virtual {v3, v0}, Lc/e/b/k/e;->s(I)Lc/e/b/k/e$b;

    move-result-object v3

    .line 3
    iget-object v4, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    invoke-virtual {v4}, Lc/e/b/k/e;->S()I

    move-result v4

    .line 4
    iget-object v5, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    invoke-virtual {v5}, Lc/e/b/k/e;->T()I

    move-result v5

    if-eqz p1, :cond_89

    .line 5
    sget-object v6, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-eq v1, v6, :cond_23

    if-ne v3, v6, :cond_89

    .line 6
    :cond_23
    iget-object v6, p0, Lc/e/b/k/m/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_29
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_40

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/e/b/k/m/p;

    .line 7
    iget v8, v7, Lc/e/b/k/m/p;->f:I

    if-ne v8, p2, :cond_29

    .line 8
    invoke-virtual {v7}, Lc/e/b/k/m/p;->m()Z

    move-result v7

    if-nez v7, :cond_29

    const/4 p1, 0x0

    :cond_40
    if-nez p2, :cond_66

    if-eqz p1, :cond_89

    .line 9
    sget-object p1, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-ne v1, p1, :cond_89

    .line 10
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    sget-object v6, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    invoke-virtual {p1, v6}, Lc/e/b/k/e;->z0(Lc/e/b/k/e$b;)V

    .line 11
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    invoke-direct {p0, p1, v2}, Lc/e/b/k/m/e;->e(Lc/e/b/k/f;I)I

    move-result v6

    invoke-virtual {p1, v6}, Lc/e/b/k/e;->U0(I)V

    .line 12
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    iget-object v6, p1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    iget-object v6, v6, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    invoke-virtual {p1}, Lc/e/b/k/e;->R()I

    move-result p1

    invoke-virtual {v6, p1}, Lc/e/b/k/m/g;->d(I)V

    goto :goto_89

    :cond_66
    if-eqz p1, :cond_89

    .line 13
    sget-object p1, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-ne v3, p1, :cond_89

    .line 14
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    sget-object v6, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    invoke-virtual {p1, v6}, Lc/e/b/k/e;->Q0(Lc/e/b/k/e$b;)V

    .line 15
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    invoke-direct {p0, p1, v0}, Lc/e/b/k/m/e;->e(Lc/e/b/k/f;I)I

    move-result v6

    invoke-virtual {p1, v6}, Lc/e/b/k/e;->v0(I)V

    .line 16
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    iget-object v6, p1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iget-object v6, v6, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    invoke-virtual {p1}, Lc/e/b/k/e;->v()I

    move-result p1

    invoke-virtual {v6, p1}, Lc/e/b/k/m/g;->d(I)V

    :cond_89
    :goto_89
    if-nez p2, :cond_b6

    .line 17
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    iget-object p1, p1, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    aget-object v5, p1, v2

    sget-object v6, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    if-eq v5, v6, :cond_9b

    aget-object p1, p1, v2

    sget-object v5, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;

    if-ne p1, v5, :cond_c7

    .line 18
    :cond_9b
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    invoke-virtual {p1}, Lc/e/b/k/e;->R()I

    move-result p1

    add-int/2addr p1, v4

    .line 19
    iget-object v5, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    iget-object v5, v5, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    iget-object v5, v5, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;

    invoke-virtual {v5, p1}, Lc/e/b/k/m/f;->d(I)V

    .line 20
    iget-object v5, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    iget-object v5, v5, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    iget-object v5, v5, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    sub-int/2addr p1, v4

    invoke-virtual {v5, p1}, Lc/e/b/k/m/g;->d(I)V

    goto :goto_e3

    .line 21
    :cond_b6
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    iget-object p1, p1, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    aget-object v4, p1, v0

    sget-object v6, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    if-eq v4, v6, :cond_c9

    aget-object p1, p1, v0

    sget-object v4, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;

    if-ne p1, v4, :cond_c7

    goto :goto_c9

    :cond_c7
    const/4 p1, 0x0

    goto :goto_e4

    .line 22
    :cond_c9
    :goto_c9
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    invoke-virtual {p1}, Lc/e/b/k/e;->v()I

    move-result p1

    add-int/2addr p1, v5

    .line 23
    iget-object v4, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    iget-object v4, v4, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iget-object v4, v4, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;

    invoke-virtual {v4, p1}, Lc/e/b/k/m/f;->d(I)V

    .line 24
    iget-object v4, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    iget-object v4, v4, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iget-object v4, v4, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    sub-int/2addr p1, v5

    invoke-virtual {v4, p1}, Lc/e/b/k/m/g;->d(I)V

    :goto_e3
    const/4 p1, 0x1

    .line 25
    :goto_e4
    invoke-virtual {p0}, Lc/e/b/k/m/e;->m()V

    .line 26
    iget-object v4, p0, Lc/e/b/k/m/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_ed
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/e/b/k/m/p;

    .line 27
    iget v6, v5, Lc/e/b/k/m/p;->f:I

    if-eq v6, p2, :cond_fe

    goto :goto_ed

    .line 28
    :cond_fe
    iget-object v6, v5, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;

    iget-object v7, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    if-ne v6, v7, :cond_109

    iget-boolean v6, v5, Lc/e/b/k/m/p;->g:Z

    if-nez v6, :cond_109

    goto :goto_ed

    .line 29
    :cond_109
    invoke-virtual {v5}, Lc/e/b/k/m/p;->e()V

    goto :goto_ed

    .line 30
    :cond_10d
    iget-object v4, p0, Lc/e/b/k/m/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_113
    :goto_113
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_147

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/e/b/k/m/p;

    .line 31
    iget v6, v5, Lc/e/b/k/m/p;->f:I

    if-eq v6, p2, :cond_124

    goto :goto_113

    :cond_124
    if-nez p1, :cond_12d

    .line 32
    iget-object v6, v5, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;

    iget-object v7, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    if-ne v6, v7, :cond_12d

    goto :goto_113

    .line 33
    :cond_12d
    iget-object v6, v5, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;

    iget-boolean v6, v6, Lc/e/b/k/m/f;->j:Z

    if-nez v6, :cond_135

    :goto_133
    const/4 v0, 0x0

    goto :goto_147

    .line 34
    :cond_135
    iget-object v6, v5, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;

    iget-boolean v6, v6, Lc/e/b/k/m/f;->j:Z

    if-nez v6, :cond_13c

    goto :goto_133

    .line 35
    :cond_13c
    instance-of v6, v5, Lc/e/b/k/m/c;

    if-nez v6, :cond_113

    iget-object v5, v5, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    iget-boolean v5, v5, Lc/e/b/k/m/f;->j:Z

    if-nez v5, :cond_113

    goto :goto_133

    .line 36
    :cond_147
    :goto_147
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    invoke-virtual {p1, v1}, Lc/e/b/k/e;->z0(Lc/e/b/k/e$b;)V

    .line 37
    iget-object p1, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    invoke-virtual {p1, v3}, Lc/e/b/k/e;->Q0(Lc/e/b/k/e$b;)V

    return v0
.end method

.method public j()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/e/b/k/m/e;->b:Z

    return-void
.end method

.method public k()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/e/b/k/m/e;->c:Z

    return-void
.end method

.method public m()V
    .registers 12

    .line 1
    iget-object v0, p0, Lc/e/b/k/m/e;->a:Lc/e/b/k/f;

    iget-object v0, v0, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_de

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/b/k/e;

    .line 2
    iget-boolean v2, v1, Lc/e/b/k/e;->a:Z

    if-eqz v2, :cond_19

    goto :goto_8

    .line 3
    :cond_19
    iget-object v2, v1, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    const/4 v3, 0x0

    aget-object v8, v2, v3

    const/4 v9, 0x1

    .line 4
    aget-object v10, v2, v9

    .line 5
    iget v2, v1, Lc/e/b/k/e;->n:I

    .line 6
    iget v4, v1, Lc/e/b/k/e;->o:I

    .line 7
    sget-object v5, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-eq v8, v5, :cond_32

    sget-object v5, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v8, v5, :cond_30

    if-ne v2, v9, :cond_30

    goto :goto_32

    :cond_30
    const/4 v2, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v2, 0x1

    .line 8
    :goto_33
    sget-object v5, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-eq v10, v5, :cond_3d

    sget-object v5, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v10, v5, :cond_3e

    if-ne v4, v9, :cond_3e

    :cond_3d
    const/4 v3, 0x1

    .line 9
    :cond_3e
    iget-object v4, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    iget-object v4, v4, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    iget-boolean v5, v4, Lc/e/b/k/m/f;->j:Z

    .line 10
    iget-object v6, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iget-object v6, v6, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    iget-boolean v7, v6, Lc/e/b/k/m/f;->j:Z

    if-eqz v5, :cond_60

    if-eqz v7, :cond_60

    .line 11
    sget-object v7, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    iget v5, v4, Lc/e/b/k/m/f;->g:I

    iget v8, v6, Lc/e/b/k/m/f;->g:I

    move-object v2, p0

    move-object v3, v1

    move-object v4, v7

    move-object v6, v7

    move v7, v8

    invoke-direct/range {v2 .. v7}, Lc/e/b/k/m/e;->l(Lc/e/b/k/e;Lc/e/b/k/e$b;ILc/e/b/k/e$b;I)V

    .line 12
    iput-boolean v9, v1, Lc/e/b/k/e;->a:Z

    goto/16 :goto_cb

    :cond_60
    if-eqz v5, :cond_96

    if-eqz v3, :cond_96

    .line 13
    sget-object v4, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    iget-object v2, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    iget v5, v2, Lc/e/b/k/m/f;->g:I

    sget-object v6, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    iget-object v2, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    iget v7, v2, Lc/e/b/k/m/f;->g:I

    move-object v2, p0

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Lc/e/b/k/m/e;->l(Lc/e/b/k/e;Lc/e/b/k/e$b;ILc/e/b/k/e$b;I)V

    .line 14
    sget-object v2, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v10, v2, :cond_88

    .line 15
    iget-object v2, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    invoke-virtual {v1}, Lc/e/b/k/e;->v()I

    move-result v3

    iput v3, v2, Lc/e/b/k/m/g;->m:I

    goto :goto_cb

    .line 16
    :cond_88
    iget-object v2, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    invoke-virtual {v1}, Lc/e/b/k/e;->v()I

    move-result v3

    invoke-virtual {v2, v3}, Lc/e/b/k/m/g;->d(I)V

    .line 17
    iput-boolean v9, v1, Lc/e/b/k/e;->a:Z

    goto :goto_cb

    :cond_96
    if-eqz v7, :cond_cb

    if-eqz v2, :cond_cb

    .line 18
    sget-object v4, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    iget-object v2, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    iget v5, v2, Lc/e/b/k/m/f;->g:I

    sget-object v6, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    iget-object v2, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    iget v7, v2, Lc/e/b/k/m/f;->g:I

    move-object v2, p0

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Lc/e/b/k/m/e;->l(Lc/e/b/k/e;Lc/e/b/k/e$b;ILc/e/b/k/e$b;I)V

    .line 19
    sget-object v2, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v8, v2, :cond_be

    .line 20
    iget-object v2, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    invoke-virtual {v1}, Lc/e/b/k/e;->R()I

    move-result v3

    iput v3, v2, Lc/e/b/k/m/g;->m:I

    goto :goto_cb

    .line 21
    :cond_be
    iget-object v2, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    iget-object v2, v2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    invoke-virtual {v1}, Lc/e/b/k/e;->R()I

    move-result v3

    invoke-virtual {v2, v3}, Lc/e/b/k/m/g;->d(I)V

    .line 22
    iput-boolean v9, v1, Lc/e/b/k/e;->a:Z

    .line 23
    :cond_cb
    :goto_cb
    iget-boolean v2, v1, Lc/e/b/k/e;->a:Z

    if-eqz v2, :cond_8

    iget-object v2, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iget-object v2, v2, Lc/e/b/k/m/n;->l:Lc/e/b/k/m/g;

    if-eqz v2, :cond_8

    .line 24
    invoke-virtual {v1}, Lc/e/b/k/e;->n()I

    move-result v1

    invoke-virtual {v2, v1}, Lc/e/b/k/m/g;->d(I)V

    goto/16 :goto_8

    :cond_de
    return-void
.end method

.method public n(Lc/e/b/k/m/b$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lc/e/b/k/m/e;->f:Lc/e/b/k/m/b$b;

    return-void
.end method
